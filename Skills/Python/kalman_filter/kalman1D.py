import numpy as np
from sim.sim1d import sim_run

# Simulator options.
options = {}
options['FIG_SIZE'] = [8,8]
options['CONSTANT_SPEED'] = False

class KalmanFilter:
    def __init__(self):
        self.v = 0
        self.prev_time = 0
        self.x_predict = np.array([[0.],
                                   [0.]])
        
        # Initial State (will be updated over time)
        self.x = np.array([[0.],
                           [0.]])
                            
        # Predict next state Matrix, knowing current state
        self.A = np.array([[1, 0.],        #[0,1] should be dt, because x_k+1 = x_k + v_k*dt
                           [0., 1]])

        # Stering Value - no stering value
        self.u = np.array([[0.],
                           [0.]])
                            
        # Stering Matrix - no stering value
        self.B = np.array([[0., 0.],
                           [0., 0.]])
                            
        # Bias Matrix (for example if we had acceleration we could write g = 9.81)
        self.W = np.array([[0.],
                           [0.]])
                            
        # Initial uncertainity State Matrix (will be updated over time)
        self.P = np.array([[0.01, 0.],
                           [0., 1]])
                            
        # Proces Noise Matrix
        self.Q = np.array([[0.01, 0.],
                           [0., 0.01]])

        # Measurement Function - we measure only x value
        self.H = np.array([[1., 0.]])

        # Measurement Uncertainty
        self.R = np.array([[0.01]])

        # Identity Matrix
        self.I = np.eye(2)
                            
    def predict(self,t):
    
        # Fix A matrix
        dt = t - self.prev_time
        self.A[0,1] = dt
        
        # Calculate prediction with certainty
        self.x_predict = self.A@self.x + self.B@self.u + self.W
        self.P = self.A @ self.P @ self.A.T + self.Q

        return self.x_predict[0,0]
        
    def measure_and_update(self,measurements,t):
            
        # Calculate Kalman Gain
        S = self.H @ self.P @ self.H.T + self.R
        K = self.P @ self.H.T @ np.linalg.inv(S)
        
        # Calculate new state with certainty
        Z = np.matrix(measurements)
        y = Z.T - self.H @ self.x_predict
        self.x = self.x_predict + K@y 
        self.P = (self.I - K@self.H)@self.P

        self.v = self.x[1,0]
        self.prev_time = t
        return


sim_run(options,KalmanFilter)
