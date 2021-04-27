import numpy as np
from sim.sim2d import sim_run

# Simulator options.
options = {}
options['FIG_SIZE'] = [8,8]

options['DRIVE_IN_CIRCLE'] = False
# If False, measurements will be x,y.
# If True, measurements will be x,y, and current angle of the car.
# Required if you want to pass the driving in circle.
options['MEASURE_ANGLE'] = True
options['RECIEVE_INPUTS'] = True

class KalmanFilter:
    def __init__(self):
        # Initial State
        self.x_predict = np.array([[0.],
                                   [0.],
                                   [0.],
                                   [0.],
                                   [0.],
                                   [0.]])
        self.x_prev = self.x_predict;

        # Initial State (will be updated over time)
        self.x = np.array([[0.],
                           [0.],
                           [0.],
                           [0.],
                           [0.],
                           [0.]])

        # Predict next state Matrix, know current state
        self.A = np.array([[1., 0., 0., 0., 0., 0.],
                           [0., 1., 0., 0., 0., 0.],
                           [0., 0., 1., 0., 0., 0.],
                           [0., 0., 0., 1., 0., 0.],
                           [0., 0., 0., 0., 1., 0.],
                           [0., 0., 0., 0., 0., 1.]])

        # Stering Value - no stering value
        self.u = np.array([[1.],
                           [1.],
                           [0.],
                           [0.],
                           [1.],
                           [0.]])

        # Stering Matrix
        self.B = np.array([[0., 0., 0., 0., 0., 0.],
                           [0., 0., 0., 0., 0., 0.],
                           [0., 0., 0., 0., 0., 0.],
                           [0., 0., 0., 0., 0., 0.],
                           [0., 0., 0., 0., 0., 0.],
                           [0., 0., 0., 0., 0., 0.]])

        # Bias Matrix (for example if we had acceleration we could write g = 9.81)
        self.W = np.array([[0.],
                           [0.],
                           [0.],
                           [0.],
                           [0.],
                           [0.]])

        # Initial uncertainity State Matrix (will be updated over time)
        self.P = np.array([[100., 0., 0., 0., 0., 0.],
                           [0., 100., 0., 0., 0., 0.],
                           [0., 0., 1000., 0., 0., 0.],
                           [0., 0., 0., 1., 0., 0.],
                           [0., 0., 0., 0., 1., 0.],
                           [0., 0., 0., 0., 0., 1.]])

        # Proces Noise Matrix
        self.Q = np.array([[0.01, 0., 0., 0., 0., 0.],
                           [0., 0.01, 0., 0., 0., 0.],
                           [0., 0., 0.1, 0., 0., 0.],
                           [0., 0., 0., 0.1, 0., 0.],
                           [0., 0., 0., 0., 0.1, 0.],
                           [0., 0., 0., 0., 0., 0.1]])

        # Measurement Function - we measure only x&y value
        self.H = np.array([[1., 0., 0., 0., 0., 0.],
                           [0., 1., 0., 0., 0., 0.],
                           [0., 0., 0., 0., 1., 0.]])

        # Measurement Uncertainty
        self.R = np.array([[3., 0., 0.],
                           [0., 3., 0.],
                           [0., 0., 3.]])

        # Identity Matrix
        self.I = np.eye(6)

    def predict(self, dt):
        
        # Fix A matrix
        self.A[0, 2] = dt
        self.A[1, 3] = dt
        self.A[4, 5] = dt
        self.u[2] = dt
        self.u[3] = dt
        self.u[5] = dt

        # Calculate prediction with certainty
        self.x_predict = self.A @ self.x + self.B @ self.u + self.W
        self.P = self.A * self.P * self.A.T + self.Q

        return

    def measure_and_update(self, measurements, dt):
        
        # Calculate Kalman Gain
        S = self.H @ self.P @ self.H.T + self.R
        K = self.P @ self.H.T @ np.linalg.inv(S)
        
        # Calculate new state with certainty
        Z = np.matrix(measurements)
        y = Z.T - self.H @ self.x_predict
        self.x = self.x_predict + K@y 
        self.P = (self.I - K@self.H)@self.P
        self.P += 0.01*np.eye(6)

        return [self.x[0], self.x[1]]

    def recieve_inputs(self, u_steer, u_pedal):
        # Should be B[5,5], B[3,3], B[4,4] & self.u, but i have to change A matrix
        self.B[4,4] += u_steer/10
        self.B[0,0] = u_pedal*np.cos(self.B[4,4])/10
        self.B[1,1] = u_pedal*np.sin(self.B[4,4])/10
        return 

sim_run(options,KalmanFilter)
