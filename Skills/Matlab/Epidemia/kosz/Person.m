classdef Person
    % q2:
    % 1-healthy, 2-quarantine, 3-infected, 4-sick, 5-infected&sick,
    % 6-recovered, 7-in hospital, 8-dead
    
    properties  
        alive {mustBeInteger}
        q1 {mustBeInteger}
        q2 {mustBeInteger}
    end
    
    methods
        function obj = Person(obj)
            obj.alive = 0;
            obj.q1 = 0;
            obj.q2 = 0;
        end
        function obj = setAlive(obj)
            obj.alive = 1;
            obj.q1 = randi([1,5]);
            obj.q2 = 1;
        end
        function obj = setSick(obj)
            obj.q2 = 4;
        end
    end
end