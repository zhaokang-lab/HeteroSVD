#include <bits/stdc++.h>
using namespace std;

struct Data {
  int COL, ROW;
  double Freq;
  int BLOCK_SIZE;
  double time[6];
};

map<string, double>single_aie, total_aie;


void predict(Data data) {
  int COL = data.COL;
  int ROW = data.ROW;
  double Freq = data.Freq;
  int BLOCK_SIZE = data.BLOCK_SIZE;

  int BLOCK_NUM = COL/BLOCK_SIZE;
  double predict_time[6];
  double Tx_row = 1.0/Freq*(ROW*32/128 + 2);

  string id = to_string(ROW) + "_" + to_string(BLOCK_SIZE);
  double orth_single_aie = single_aie[id];
  double orth_total_aie = total_aie[id];

  double CTC_wait = max(orth_single_aie - BLOCK_SIZE*Tx_row, 0.0);
  double Tx = 1.0/Freq*(ROW*32/128 + 2)*BLOCK_SIZE + CTC_wait;
  double Rx = 1.0/Freq*(ROW*32/128 + 2)*BLOCK_SIZE + CTC_wait;
  
  double round_wait = max(orth_total_aie + Rx - BLOCK_NUM/2*Tx, 0.0);
  double round_robin_wait = Tx + Tx; //second Tx -> algorithm latency

  double one_round = BLOCK_NUM/2*Tx + round_wait + round_robin_wait;
  double one_sweep = (BLOCK_NUM-1)*one_round + orth_total_aie + Tx;

  double actual_one_sweep = (data.time[1] - data.time[0])*1000000;
  double diff = abs(one_sweep - actual_one_sweep)/actual_one_sweep * 100;

  cout << "----------------------------\n";
  cout << ROW << " " << BLOCK_SIZE << endl;
  cout << "single_aie: " << orth_single_aie << " " << Tx_row << endl;
  cout << "Tx: " << Tx << " CTC_wait: " << CTC_wait << " round_wait:" << round_wait << " one_sweep:" << one_sweep << endl;
  cout << one_sweep << " " << actual_one_sweep << " " << diff <<"%\n";

  
  double norm_aie = 0.0003 * ROW + 0.1126;
  double norm_stage = BLOCK_NUM*Tx;

  double sweep_stage[6];

  for(int i = 0;i < 6;i ++) {
    double DDR_Latency = Tx*BLOCK_NUM + 200;
    sweep_stage[i] = (i+1)*one_sweep;
    double sys_predict_time = DDR_Latency + sweep_stage[i] + norm_stage;
    double sys_actual_time = data.time[i]*1000000;
    double diff = abs(sys_predict_time - sys_actual_time)/sys_actual_time * 100;
    cout << sys_predict_time/1000000 << " ";
    //cout << i << " " << sys_predict_time << " " << sys_actual_time << " " << diff << "%\n";
  }
  
  cout << "\n----------------------------\n";


}

int main() {
  vector<Data> vec;
  vec.emplace_back((Data){512, 512, 208.3, 8, {0.0119849, 0.0229741, 0.0339541, 0.0449289, 0.0559114, 0.0669023}});
  vec.emplace_back((Data){512, 512, 208.3, 4, {0.0226068, 0.0442078, 0.0658162, 0.087416, 0.10901, 0.130615}});
  vec.emplace_back((Data){512, 512, 208.3, 2, {0.0843151, 0.167734, 0.251151, 0.334566, 0.417982, 0.501375}});
  vec.emplace_back((Data){256, 256, 208.3, 8, {0.00187753, 0.00336336, 0.0048559, 0.00634591, 0.00784115, 0.00933279}});
  vec.emplace_back((Data){256, 256, 208.3, 4, {0.00355153, 0.00672259, 0.00988335, 0.0130532, 0.0162146, 0.01938}});
  vec.emplace_back((Data){256, 256, 208.3, 2, {0.0128172, 0.0252757, 0.0377308, 0.050203, 0.0626483, 0.0750997}});
  vec.emplace_back((Data){128, 128, 208.3, 8, {0.00054859, 0.00085351, 0.00115672, 0.00144919, 0.00175902, 0.00206442}});
  vec.emplace_back((Data){128, 128, 208.3, 4, {0.00074613, 0.00126252, 0.00177658, 0.00229112, 0.00281124, 0.00332561}});
  vec.emplace_back((Data){128, 128, 208.3, 2, {0.00226457, 0.00431696, 0.00637443, 0.00842996, 0.0104807, 0.0125516}});
  vec.emplace_back((Data){64, 64, 208.3, 8, {0.00029982, 0.00039997, 0.0004969, 0.0005999, 0.0006963, 0.00080237}});

  single_aie["128_2"] = 0.899;
  single_aie["128_4"] = 0.899;
  single_aie["128_8"] = 0.899;
  single_aie["256_2"] = 1.415;
  single_aie["256_4"] = 1.415;
  single_aie["256_8"] = 1.415;
  single_aie["512_2"] = 2.551;
  single_aie["512_4"] = 2.551;
  single_aie["512_8"] = 2.551;

  total_aie["128_2"] = 2.995;
  total_aie["128_4"] = 6.462;
  total_aie["128_8"] = 13.926;
  total_aie["256_2"] = 4.545;
  total_aie["256_4"] = 10.671;
  total_aie["256_8"] = 23.076;
  total_aie["512_2"] = 8.150;
  total_aie["512_4"] = 19.218;
  total_aie["512_8"] = 41.248;
  

  for(int i = 0;i < 9;i ++) {
    predict(vec[i]);
  }
  
  /* for(auto v: vec) {
    predict(v);
  } */

}