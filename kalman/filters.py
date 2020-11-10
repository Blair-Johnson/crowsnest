import numpy as np

class GPSFilter:
    #Filter for ground truth gps data interpolation
    def __init__(self, initial_estimate, motion_coeff_path, rate = 25):
        self.dt = 1/rate
        self.ABC = np.genfromtxt(motion_coeff_path, delimiter=',')
        self.err_est = [0, 0]
        self.err_mea = [0, 0]
        self.est = [initial_estimate, None]
        self.KG = .5
        self.system = self.ABC*np.array([[self.dt**3],[self.dt**3],[-self.dt**2],[1]]
        
    def update(self, mea = None):
        pass
    
    def calc_estimate(self):
        pass
        
    def calc_kal_gain(self):
        return self.err_est/(self.err_est + self.err_mea)
    
    def calc_err(self):
        pass
        