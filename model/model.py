import math
import copy
import numpy as np
from model.AIE import SVD_AIE
from model.AIE import GraphInfo
from model.PL import SVD_PL
from model.AIE_sim import single_aie, total_aie

VCK190_COL = 50
VCK190_ROW = 8

class SysConfig:
    def __init__(self, COL, ROW, ITER, BATCH):
        self.valid = False
        self.COL = COL
        self.ROW = ROW
        self.BATCH = BATCH
        self.ITER = ITER
        self.BLOCK_SIZE = 0
        self.Frequency = 0
        self.aie_num = 0
        self.graph_num = 0
        self.graph_list = [] #row, col, direction

        self.plio_num = 0
        self.usedAIE = np.zeros((VCK190_COL, VCK190_ROW), dtype=int)  # 0 - not used 1 - orth 2 - norm

        self.uram = 0
        self.estimated_time = 0.0
    
    """ def __eq__(self, other):
        if self.estimated_time == other.estimated_time and self.BLOCK_SIZE == other.BLOCK_SIZE:
            return True
        return False
    
    def __hash__(self):
        return hash(self.estimated_time + self.BLOCK_SIZE) """
        
    def __lt__(self, other): 
        if self.estimated_time < other.estimated_time:
            return True
        elif self.estimated_time == other.estimated_time:
            if self.Frequency < other.Frequency:
                return True
            else:
                return False
        else:
            return False

        
    def keys(self):
        return ('COL', 'ROW', 'BATCH', 'BLOCK_SIZE', 'graph_num', 'graph_list', 'Frequency')

    def __getitem__(self, item):
        return getattr(self, item)

class SVD_Model:
    def __init__(self, COL, ROW, BATCH, ITER):
        self.COL = COL
        self.ROW = ROW
        self.ITER = ITER
        self.BATCH = BATCH

        self.config_blocksize = []
        self.config_list = []
        self.best_config = SysConfig(COL, ROW, ITER, BATCH)

    def config4BlockSize(self):
        for i in range(1, self.COL):
            if (i & 1) and (i != 1):
                continue
            if self.COL % i != 0:
                continue
            BLOCK_SIZE = i
            config = self.resourceCheck(BLOCK_SIZE)
            
            if not config.valid:
                continue
            
            self.config_blocksize.append(config)
            #self.print(config)

    def config4Freq(self):
        #step 1. for freq & block_size, predict the config time then select the best config in the freq
        config_dict = dict()
        for i in range(1, 12):
            config_dict[str(i)] = []

        best_config_list = []
        MIN_FREQ = 248
        MAX_FREQ = 268
        FREQ_INTER = 10
        for freq in range(MIN_FREQ, MAX_FREQ, FREQ_INTER):
            #bestConfig4freq = SysConfig(self.COL, self.ROW, self.ITER, self.BATCH)
            #bestConfig4freq.estimated_time = math.inf
            for config in self.config_blocksize:
                config.Frequency = freq
                config.estimated_time = round(self.predict(config), 7)
                config_dict[str(config.BLOCK_SIZE)].append(copy.deepcopy(config))
            
        
        #step 2. sort according time
        for i in range(1, 12):
            config_dict[str(i)] = sorted(config_dict[str(i)]) 

        #step 3. merge similar time, remain the lower freq
        EPS = 1e-6
        for j in config_dict:
            #print(i)
            tmp_config = SysConfig(self.COL, self.ROW, self.ITER, self.BATCH)
            if len(config_dict[j]) > 0:
                tmp_config = copy.deepcopy(config_dict[j][0])
            for i in range(0, len(config_dict[j])):
                #self.print(config)
                config = config_dict[j][i]
                if abs(tmp_config.estimated_time - config.estimated_time) < EPS and tmp_config.Frequency >= config.Frequency:
                    tmp_config = copy.deepcopy(config)
                    #self.print(tmp_config)
                    if i == len(config_dict[j])-1:
                        self.config_list.append(config)
                else:
                    self.config_list.append(copy.deepcopy(config))
                    tmp_config = copy.deepcopy(config)
        
        self.config_list = sorted(self.config_list)
        
         
               

    def optimize(self):
        #step 1. find different block_size
        #step 2. for freq to find the best_config in different freq
        #step 3. get the best config rank
        self.config4BlockSize()
        self.config4Freq()
        for config in self.config_list:
            self.print(config)
        self.best_config = self.config_list[0]
        


    def generateConfig(self, freq, config):
        svd_pl = SVD_PL(self.COL, self.ROW)
        config.uram = svd_pl.getRAM(config.graph_num)
        config.Frequency = freq
        config.estimated_time = self.predict(config)
        print("Current Config!")
        self.print(config)
        return dict(config)

    def getBestConfig(self):
        print("Best Config!")
        self.print(self.best_config)
        return dict(self.best_config)

    def print(self, config):
        print("----------------------------------")
        print(f"COL: {self.COL} ROW: {self.ROW} BATCH: {self.BATCH}")
        print(f"Freq: {config.Frequency}")
        print(f"BLOCK_SIZE: {config.BLOCK_SIZE} aie_num: {config.aie_num} graph_num: {config.graph_num}")
        print(f"URAM: {config.uram}")
        print(f"estimated_time: {config.estimated_time}")
        print("----------------------------------")

    def resourceCheck(self, BLOCK_SIZE):
        config = SysConfig(self.COL, self.ROW, self.ITER, self.BATCH)
        config.BLOCK_SIZE = BLOCK_SIZE

        ## AIE Check
        svd_aie = SVD_AIE(1, 0, 1, BLOCK_SIZE)
        aiePosition = svd_aie.getAIEPosition()
        #print(config.graph_list)
        ## PL Uram Check
        svd_pl = SVD_PL(self.COL, self.ROW)

        while svd_pl.checkRAM(svd_aie.getGraphNum()+1) and svd_aie.tryAIEPlacement():
            config.valid = True
            config.graph_list.append(aiePosition)

            if svd_aie.getGraphNum() >= self.BATCH or (not config.valid):
                break
            
            aiePosition = svd_aie.getAIEPosition()
            
            
        
        config.aie_num = svd_aie.getAIENum()
        config.graph_num = min(svd_aie.getGraphNum(), self.BATCH)
        config.uram = svd_pl.getRAM(config.graph_num)
        config.Frequency = 320
        return config

    def predict(self, config):
        COL = self.COL
        ROW = self.ROW
        BATCH = self.BATCH
        Frequency = config.Frequency
        ITER = self.ITER
        BLOCK_SIZE = config.BLOCK_SIZE
        GRAPH_NUM = config.graph_num

        BLOCK_NUM = COL/BLOCK_SIZE

        Tx_row = 1.0/Frequency*(ROW*32/128 + 4)
        if Frequency >= 350:
            Tx_row = 1.0/Frequency*(ROW*32/128 + 4 + 8)

        id = str(ROW) + "_" + str(BLOCK_SIZE)
        orth_single_aie = single_aie[str(ROW)]
        orth_total_aie = total_aie[id]

        CTC_wait = max(orth_single_aie - BLOCK_SIZE*Tx_row - ROW*32/128/1250, 0.0)
        
        Tx = Tx_row*BLOCK_SIZE + CTC_wait
        Rx = Tx_row*BLOCK_SIZE

        round_wait = max(orth_total_aie - BLOCK_NUM/2*Tx, 0.0)
        round_robin_wait = Tx+Tx#second Tx -> algorithm latency

        one_round = BLOCK_NUM/2*Tx + round_wait + round_robin_wait
        one_sweep = (BLOCK_NUM-1)*one_round + orth_total_aie + Tx
        
        norm_aie = 0.0003 * ROW + 0.1126
        norm_stage = BLOCK_NUM*Tx

        DDR_Latency = Tx*BLOCK_NUM + 200
        
        sys_predict_time = DDR_Latency + ITER*one_sweep + norm_stage

        batch_predict_time = (BATCH//GRAPH_NUM*sys_predict_time + (BATCH > GRAPH_NUM)*sys_predict_time + (GRAPH_NUM-1)*50)/1000000
    

        #Tx = Tx_row*BLOCK_SIZE + CTC_wait
        #   = Tx_row*BLOCK_SIZE + max(orth_single_aie - BLOCK_SIZE*Tx_row, 0.0)
        #   when orth_single_aie > BLOCK_SIZE*Tx_row
        #        orth_single_aie*Frequency > BLOCK_SIZE*(ROW/4 + 4) 
        #        假设 orth_single_aie = a*ROW + b            
        #   = Tx_row*BLOCK_SIZE + orth_single_aie - BLOCK_SIZE*Tx_row
        #   = orth_single_aie
        #print(f'round_wait: {round_wait}, one-round: {one_round}')
        #print(f'orth_single_aie: {orth_single_aie}, Tx-block:  {BLOCK_SIZE*Tx_row}')
        #print(f'Tx-row: {Tx_row}, Tx:  {Tx} CTC_wait: {CTC_wait}')
        #print(f'DDR_Latency: {DDR_Latency/1000000}, one_sweep: {one_sweep/1000000}, batch_predict_time: {batch_predict_time}')
        return batch_predict_time
    
    


