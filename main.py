import sys
import shutil
import os
import time
import argparse

from model.model import SVD_Model
from model.model import SysConfig
from jinja2 import Template, FileSystemLoader, Environment

def write2File(path, file,  content):
  if not os.path.exists(path):
    os.makedirs(path)
  
  with open(os.path.join(path, file), "w" ) as fp:
    fp.write(content)


def gen4Template(storePath, template_dir, template_file, config):
  loader = FileSystemLoader(template_dir)
  env = Environment(loader=loader)
  template = env.get_template(template_file)
  generate_file = template.render(config)
  write2File(storePath, template_file, generate_file)
    
# generate file
def generate(storePath, config):

  template_list = [
            ("data", "svd.py"), 
            ("data", "performance.py"), 
            ("data/gold", "U.txt"),
            ("data/gold", "Sigma.txt"),
            ("data/test", "U.txt"),
            ("data/test", "Sigma.txt"),

            ("aie/ProcessGraph", "RingGraph.hpp"), 
            ("aie/ProcessUnit", "Normalize.cpp"),
            ("aie/ProcessUnit", "Normalize.h"),
            ("aie/ProcessUnit", "Orthogonalize.cpp"),
            ("aie/ProcessUnit", "Orthogonalize.h"),
            ("aie", "TopGraph.cpp"),
            ("aie", "TopGraph.h"),
            ("aie", "Config.h"),

            ("pl", "TopPL.cpp"),
            ("pl", "TopPL.cfg"),
            ("pl", "config.h"),

            ("ps", "host.cpp"),
            ("ps", "svd.hpp"),
            
            ("", "conn.cfg"),
            ("", "Makefile"),
            ("", "run.sh"),
            ("", "SystemConfig.h")]
  for template in template_list:
    template_dir = os.getcwd() + "/templates/" + template[0]
    template_file = template[1]
    dst_path = os.path.join(storePath, template[0])
    gen4Template(dst_path, template_dir, template_file, config)

if __name__ == '__main__':
  time_start = time.time()

  parser = argparse.ArgumentParser()
  parser.add_argument("--PATH", type=str)
  parser.add_argument("--COL", type=int)
  parser.add_argument("--ROW", type=int)
  parser.add_argument("--BATCH", type=int)
  parser.add_argument("--ITER", type=int, default=1)
  parser.add_argument("--optimize", type=int, default=1)
  parser.add_argument("--BLOCK_SIZE", type=int)
  parser.add_argument("--Frequency", type=float)
  #parser.add_argument("--MaxSweep", type=int, default=20)
  args = parser.parse_args()
  
  svd_model = SVD_Model(args.COL, args.ROW, args.BATCH, args.ITER)
  if args.optimize == 1:
    svd_model.optimize()
    config = svd_model.getBestConfig()
  elif args.optimize == 0:
    config = svd_model.resourceCheck(args.BLOCK_SIZE)
    config = svd_model.generateConfig(args.Frequency, config)
  
  generate(args.PATH, config)

  time_end = time.time()  # 记录结束时间
  time_sum = time_end - time_start  # 计算的时间差为程序的执行时间，单位为秒/s
  print(f"代码执行时间：{time_sum} 秒")



  

  
  
