import numpy as np

def generate_matrix(rows, cols, filename):
    real_min, real_max = -50, 50  # 实部的最小值和最大值


    real_part = np.random.uniform(real_min, real_max, size=(rows, cols))
    matrix = real_part
    with open(filename, 'w') as file:
        for row in matrix:
            file.write(' '.join(f'{z:+.6f}' for z in row) + '\n')

    return matrix

def load_matrix_txt(filename):
    with open(filename, 'r') as file:
        matrix = np.array([float(z) for line in file for z in line.split()])
    size = int(np.sqrt(matrix.size))  
    return matrix.reshape((size, size))

def compute_svd(matrix):
    U, Sigma, Vt = np.linalg.svd(matrix, full_matrices=False)
    sorted_indices = np.argsort(Sigma)[::-1]
    Sigma_sorted = Sigma[sorted_indices]
    U_sorted = U[:, sorted_indices]
    return U_sorted, Sigma_sorted

def save_results(matrix, filename):
    if np.iscomplexobj(matrix):
        with open(filename, 'w') as file:
            for row in matrix:
                file.write(' '.join(f'{z:.6f}' for z in row) + '\n')
    else:  # Sigma是实数
        np.savetxt(filename, matrix, fmt='%.6f')

matrix_file = './matrix.txt'
u_file = './gold/U.txt'
sigma_file = './gold/Sigma.txt'

generate_matrix(128, 128, matrix_file)
matrix = load_matrix_txt(matrix_file)
U, Sigma = compute_svd(matrix)
save_results(U, u_file)
save_results(Sigma, sigma_file)