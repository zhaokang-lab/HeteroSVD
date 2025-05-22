import numpy as np

class GraphInfo:
  def __init__(self, id, start_col, start_row, start_direction):
    self.id = id
    self.start_col = start_col
    self.start_row = start_row
    self.start_direction = start_direction

  def keys(self):
    return ('id', 'start_col','start_row','start_direction')

  def __getitem__(self, item):
    return getattr(self, item)
  

class SVD_AIE:
    VCK190_COL = 50
    VCK190_ROW = 8
    VCK190_PLIO_128 = 78

    def __init__(self, col, row, direction, BLOCK_SIZE):
        self.gragh_list = []
        self.col = col
        self.row = row
        self.direction = direction
        self.BLOCK_SIZE = BLOCK_SIZE
        self.usedAIE = np.zeros((self.VCK190_COL, self.VCK190_ROW), dtype=int)
        self.graph_num = 0
        self.plio_num = 0

    def tryAIEPlacement(self):
        tempAIE = self.usedAIE.copy()

        valid = True
        temp_col, temp_row, temp_dir = self.col, self.row, self.direction

        # First Stage: try
        # try AIE
        for i in range(2*self.BLOCK_SIZE-1):
            valid = self.check(temp_col, temp_row, self.BLOCK_SIZE, tempAIE)
            if not valid:
                break
            self.placement(temp_col, temp_row, self.BLOCK_SIZE, tempAIE)
            temp_col, temp_row, temp_dir = self.next(temp_col, temp_row, temp_dir)
        if self.row != self.VCK190_ROW-1 and self.row != 0:
            valid = self.check(temp_col, temp_row, self.BLOCK_SIZE, tempAIE)

        # try PLIO sweep-2 + norm-1
        if self.plio_num + 3 > self.VCK190_PLIO_128:
            return False

        if not valid:
            return False

        # Second Stage: placement
        for i in range(2*self.BLOCK_SIZE-1):
            self.placement(self.col, self.row, self.BLOCK_SIZE, self.usedAIE)
            self.col, self.row, self.direction = self.next(self.col, self.row, self.direction)
        if self.row != self.VCK190_ROW-1 and self.row != 0:
            self.col, self.row, self.direction = self.next(self.col, self.row, self.direction)  ## ignore memory AIE

        self.plio_num += 3
        self.graph_num += 1
        return True

    def getAIEPosition(self):
      graphInfo = GraphInfo(self.graph_num+1, self.col, self.row, self.direction)
      return dict(graphInfo)

    def getGraphNum(self):
        return self.graph_num

    def getPLIONum(self):
        return self.plio_num

    def getAIENum(self):
        num = 0
        for j in range(self.VCK190_COL):
            for i in range(self.VCK190_ROW):
                if self.usedAIE[j][i] > 0:
                    num += 1

        return num

    def next(self, col, row, direction):
        row += direction
        if row == self.VCK190_ROW-1 and direction == 1:
            row = self.VCK190_ROW-1
            col += self.BLOCK_SIZE+1
            direction *= -1
        elif row == 0 and direction == -1:
            row = 0
            col += self.BLOCK_SIZE+1
            direction *= -1
        return col, row, direction

    def check(self, col, row, BLOCK_SIZE, usedAIE):
        for j in range(col, col + BLOCK_SIZE):
            if j-1 < 0 or j+1 >= self.VCK190_COL or usedAIE[j][row] == 1:
                return False
        return True

    def placement(self, col, row, BLOCK_SIZE, usedAIE):
        for j in range(col, col + BLOCK_SIZE):
            usedAIE[j][row] = 1
            if row+self.direction >= 0 and row + self.direction < self.VCK190_ROW:
                usedAIE[j][row+self.direction] = 2
        usedAIE[col-1][row] = 2
        usedAIE[col + BLOCK_SIZE][row] = 2

