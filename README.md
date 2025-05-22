# Team
Principal Investigators: Prof. Kang zhao (Beijing University of Posts and Telecommunications), https://zhaokang-lab.github.io//, Prof. Zhe Lin (Sun Yat-sen University), https://zlinaf.github.io/, Prof. Jianwang Zhai (Beijing University of Posts and Telecommunications), https://zhaijw18.github.io/

Ph.D. Students: Xinya Luan

Master Students: Kai Shi


# HeteroSVD

## Usage
Before running the code, please ensure that the environment is set up correctly. This project is based on the Vitis 2023.2 tool chain and you should configure the environment variables according to the [Vitis Core Development Kit](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2023_2/ug1393-vitis-getting-started.pdf), [Embedded Platform](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vitis/archive-vitis.html) and [Versal Common Image](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/embedded-platforms/archive-vitis-embedded.html)
After the environment is set up, users should first update the corresponding parameters in the `template/Makefile` file.
```Makefile
#environment
ROOTFS=${EDGE_COMMON_SW_PATH}/rootfs.ext4
IMAGE=${EDGE_COMMON_SW_PATH}/Image
SYSROOT = ${SYSROOT_PATH}/sysroots/cortexa72-cortexa53-xilinx-linux
SDKTARGETSYSROOT = ${SYSROOT}
BASE_PLATFORM ?= ${PLATFORM_REPO_PATHS}/xilinx_vck190_base_202320_1/xilinx_vck190_base_202320_1.xpfm
```

Then users can generate the project by executing the following command:
```bash
python3 main.py --PATH="./project" --COL=512 --ROW=512 --BATCH=1 --ITER=1 --optimize=1 --BLOCK_SIZE=2 --Frequency=208.3
```
The parameters are as follows:
- `PATH`: the path to the generated project
- `COL`: the number of columns of the input matrix
- `ROW`: the number of rows of the input matrix
- `BATCH`: the batch size
- `ITER`: the maximum number of iterations
- `optimize`: whether to automatically find the project parameters with the best performance
- `BLOCK_SIZE`: manually set the block size
- `Frequency`: manually set the frequency of the PL

To compile the project, users can run the following command:
```bash
cd project
make all TARGET=hw
```




