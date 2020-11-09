import numpy as np

class GPSFilter:
    #Filter for ground truth gps data interpolation
    def __init__(self, initial_estimate):
        self.err_est = [0, 0]
        self.err_mea = [0, 0]
        self.est = [initial_estimate, None]
        self.KG = .5
        self.system = np.array([]
        
    def update(self, mea = None):
        pass
    
    def calc_estimate(self):
        pass
        
    def calc_kal_gain(self):
        return self.err_est/(self.err_est + self.err_mea)
    
    def calc_err(self):
        pass
        