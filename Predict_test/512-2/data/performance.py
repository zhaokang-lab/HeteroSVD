import numpy as np

def read_U(file_name):
  with open(file_name, 'r') as file:
      matrix_lines = file.readlines()
      matrix = np.array([np.array([float(number) for number in line.split()]) for line in matrix_lines])
  return matrix

def read_sigma(file_name):
    with open(file_name, 'r') as file:
        values = [float(line.strip()) for line in file.readlines()]
    sorted_values = np.sort(values)  # Sort the values
    return sorted_values

def orthogonality_measure(matrix):
    inner_product_matrix = np.abs(matrix.conj().T @ matrix)

    norms_squared = np.diagonal(inner_product_matrix)

    accumulated_measure = 0  # 初始化累计结果

    for i in range(matrix.shape[1]):
      for j in range(i + 1, matrix.shape[1]):  # 确保 j > i
        if norms_squared[i] != 0 and norms_squared[j] != 0:
          #print(np.abs(inner_product_matrix[i, j]) / (inner_product_matrix[i, i]*inner_product_matrix[j, j]))
          accumulated_measure += np.abs(inner_product_matrix[i, j]) / (inner_product_matrix[i, i]*inner_product_matrix[j, j])
          #accumulated_measure += inner_product_matrix[i, j] / np.sqrt(norms_squared[i] * norms_squared[j])

    return accumulated_measure

matrix = read_U('./test/U.txt')
accumulated_measure = orthogonality_measure(matrix)
print("orth rate: ", accumulated_measure)

sigma = read_sigma('./test/Sigma.txt')
standard_sigma = read_sigma('./gold/Sigma.txt')
print("sigma:\n", sigma)
print("standard_sigma:\n", standard_sigma)
print(sigma - standard_sigma)

error_rate = np.abs(sigma - standard_sigma) / np.abs(standard_sigma)
total_error_rate = np.sum(error_rate)
print("sigma error rate: ", total_error_rate)

