#include "hls_signal_handler.h"
#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_sweep_tx0_0_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sweep_tx0_0_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_sweep_tx0_0_V_data_V.dat");
unsigned int ap_apatb_sweep_tx0_0_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sweep_tx0_0_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_sweep_tx0_0_V_keep_V.dat");
unsigned int ap_apatb_sweep_tx0_0_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sweep_tx0_0_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_sweep_tx0_0_V_strb_V.dat");
unsigned int ap_apatb_sweep_tx0_0_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sweep_tx0_0_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_sweep_tx0_0_V_last_V.dat");
unsigned int ap_apatb_sweep_rx0_0_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sweep_rx0_0_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_sweep_rx0_0_V_data_V.dat");
unsigned int ap_apatb_sweep_rx0_0_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sweep_rx0_0_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_sweep_rx0_0_V_keep_V.dat");
unsigned int ap_apatb_sweep_rx0_0_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sweep_rx0_0_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_sweep_rx0_0_V_strb_V.dat");
unsigned int ap_apatb_sweep_rx0_0_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sweep_rx0_0_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_sweep_rx0_0_V_last_V.dat");
unsigned int ap_apatb_sweep_tx0_1_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sweep_tx0_1_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_sweep_tx0_1_V_data_V.dat");
unsigned int ap_apatb_sweep_tx0_1_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sweep_tx0_1_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_sweep_tx0_1_V_keep_V.dat");
unsigned int ap_apatb_sweep_tx0_1_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sweep_tx0_1_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_sweep_tx0_1_V_strb_V.dat");
unsigned int ap_apatb_sweep_tx0_1_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sweep_tx0_1_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_sweep_tx0_1_V_last_V.dat");
unsigned int ap_apatb_sweep_rx0_1_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sweep_rx0_1_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_sweep_rx0_1_V_data_V.dat");
unsigned int ap_apatb_sweep_rx0_1_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sweep_rx0_1_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_sweep_rx0_1_V_keep_V.dat");
unsigned int ap_apatb_sweep_rx0_1_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sweep_rx0_1_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_sweep_rx0_1_V_strb_V.dat");
unsigned int ap_apatb_sweep_rx0_1_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_sweep_rx0_1_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_sweep_rx0_1_V_last_V.dat");
unsigned int ap_apatb_norm_tx0_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_norm_tx0_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_norm_tx0_V_data_V.dat");
unsigned int ap_apatb_norm_tx0_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_norm_tx0_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_norm_tx0_V_keep_V.dat");
unsigned int ap_apatb_norm_tx0_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_norm_tx0_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_norm_tx0_V_strb_V.dat");
unsigned int ap_apatb_norm_tx0_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_norm_tx0_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_norm_tx0_V_last_V.dat");
unsigned int ap_apatb_norm_rx0_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_norm_rx0_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_norm_rx0_V_data_V.dat");
unsigned int ap_apatb_norm_rx0_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_norm_rx0_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_norm_rx0_V_keep_V.dat");
unsigned int ap_apatb_norm_rx0_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_norm_rx0_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_norm_rx0_V_strb_V.dat");
unsigned int ap_apatb_norm_rx0_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_norm_rx0_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_norm_rx0_V_last_V.dat");
using hls::sim::Byte;
struct __cosim_s16__ { char data[16]; };
struct __cosim_s64__ { char data[64]; };
extern "C" void TopPL(Byte<64>*, Byte<64>*, Byte<64>*, Byte<4>*, int, int, int, int, int, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_TopPL_hw(volatile void * __xlx_apatb_param_dataIn, volatile void * __xlx_apatb_param_U, volatile void * __xlx_apatb_param_S, volatile void * __xlx_apatb_param_ConvArray, int __xlx_apatb_param_ITER, volatile void * __xlx_apatb_param_sweep_tx0_0_V_data_V, volatile void * __xlx_apatb_param_sweep_tx0_0_V_keep_V, volatile void * __xlx_apatb_param_sweep_tx0_0_V_strb_V, volatile void * __xlx_apatb_param_sweep_tx0_0_V_last_V, volatile void * __xlx_apatb_param_sweep_rx0_0_V_data_V, volatile void * __xlx_apatb_param_sweep_rx0_0_V_keep_V, volatile void * __xlx_apatb_param_sweep_rx0_0_V_strb_V, volatile void * __xlx_apatb_param_sweep_rx0_0_V_last_V, volatile void * __xlx_apatb_param_sweep_tx0_1_V_data_V, volatile void * __xlx_apatb_param_sweep_tx0_1_V_keep_V, volatile void * __xlx_apatb_param_sweep_tx0_1_V_strb_V, volatile void * __xlx_apatb_param_sweep_tx0_1_V_last_V, volatile void * __xlx_apatb_param_sweep_rx0_1_V_data_V, volatile void * __xlx_apatb_param_sweep_rx0_1_V_keep_V, volatile void * __xlx_apatb_param_sweep_rx0_1_V_strb_V, volatile void * __xlx_apatb_param_sweep_rx0_1_V_last_V, volatile void * __xlx_apatb_param_norm_tx0_V_data_V, volatile void * __xlx_apatb_param_norm_tx0_V_keep_V, volatile void * __xlx_apatb_param_norm_tx0_V_strb_V, volatile void * __xlx_apatb_param_norm_tx0_V_last_V, volatile void * __xlx_apatb_param_norm_rx0_V_data_V, volatile void * __xlx_apatb_param_norm_rx0_V_keep_V, volatile void * __xlx_apatb_param_norm_rx0_V_strb_V, volatile void * __xlx_apatb_param_norm_rx0_V_last_V) {
using hls::sim::createStream;
  // Collect __xlx_dataIn__tmp_vec
std::vector<Byte<64>> __xlx_dataIn__tmp_vec;
for (size_t i = 0; i < 2048; ++i){
__xlx_dataIn__tmp_vec.push_back(((Byte<64>*)__xlx_apatb_param_dataIn)[i]);
}
  int __xlx_size_param_dataIn = 2048;
  int __xlx_offset_param_dataIn = 0;
  int __xlx_offset_byte_param_dataIn = 0*64;
  // Collect __xlx_U__tmp_vec
std::vector<Byte<64>> __xlx_U__tmp_vec;
for (size_t i = 0; i < 2048; ++i){
__xlx_U__tmp_vec.push_back(((Byte<64>*)__xlx_apatb_param_U)[i]);
}
  int __xlx_size_param_U = 2048;
  int __xlx_offset_param_U = 0;
  int __xlx_offset_byte_param_U = 0*64;
  // Collect __xlx_S__tmp_vec
std::vector<Byte<64>> __xlx_S__tmp_vec;
for (size_t i = 0; i < 512; ++i){
__xlx_S__tmp_vec.push_back(((Byte<64>*)__xlx_apatb_param_S)[i]);
}
  int __xlx_size_param_S = 512;
  int __xlx_offset_param_S = 0;
  int __xlx_offset_byte_param_S = 0*64;
  // Collect __xlx_ConvArray__tmp_vec
std::vector<Byte<4>> __xlx_ConvArray__tmp_vec;
for (size_t i = 0; i < 8192; ++i){
__xlx_ConvArray__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_ConvArray)[i]);
}
  int __xlx_size_param_ConvArray = 8192;
  int __xlx_offset_param_ConvArray = 0;
  int __xlx_offset_byte_param_ConvArray = 0*4;
  //Create input buffer for sweep_tx0_0_V_data_V
  ap_apatb_sweep_tx0_0_V_data_V_cap_bc = __xlx_sweep_tx0_0_V_data_V_V_size_Reader.read_size();
  __cosim_s16__* __xlx_sweep_tx0_0_V_data_V_input_buffer= new __cosim_s16__[ap_apatb_sweep_tx0_0_V_data_V_cap_bc];
auto* ssweep_tx0_0_V_data_V = createStream((hls::stream<__cosim_s16__>*)__xlx_apatb_param_sweep_tx0_0_V_data_V);
  //Create input buffer for sweep_tx0_0_V_keep_V
  ap_apatb_sweep_tx0_0_V_keep_V_cap_bc = __xlx_sweep_tx0_0_V_keep_V_V_size_Reader.read_size();
  short* __xlx_sweep_tx0_0_V_keep_V_input_buffer= new short[ap_apatb_sweep_tx0_0_V_keep_V_cap_bc];
auto* ssweep_tx0_0_V_keep_V = createStream((hls::stream<short>*)__xlx_apatb_param_sweep_tx0_0_V_keep_V);
  //Create input buffer for sweep_tx0_0_V_strb_V
  ap_apatb_sweep_tx0_0_V_strb_V_cap_bc = __xlx_sweep_tx0_0_V_strb_V_V_size_Reader.read_size();
  short* __xlx_sweep_tx0_0_V_strb_V_input_buffer= new short[ap_apatb_sweep_tx0_0_V_strb_V_cap_bc];
auto* ssweep_tx0_0_V_strb_V = createStream((hls::stream<short>*)__xlx_apatb_param_sweep_tx0_0_V_strb_V);
  //Create input buffer for sweep_tx0_0_V_last_V
  ap_apatb_sweep_tx0_0_V_last_V_cap_bc = __xlx_sweep_tx0_0_V_last_V_V_size_Reader.read_size();
  char* __xlx_sweep_tx0_0_V_last_V_input_buffer= new char[ap_apatb_sweep_tx0_0_V_last_V_cap_bc];
auto* ssweep_tx0_0_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_sweep_tx0_0_V_last_V);
auto* ssweep_rx0_0_V_data_V = createStream((hls::stream<__cosim_s16__>*)__xlx_apatb_param_sweep_rx0_0_V_data_V);
auto* ssweep_rx0_0_V_keep_V = createStream((hls::stream<short>*)__xlx_apatb_param_sweep_rx0_0_V_keep_V);
auto* ssweep_rx0_0_V_strb_V = createStream((hls::stream<short>*)__xlx_apatb_param_sweep_rx0_0_V_strb_V);
auto* ssweep_rx0_0_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_sweep_rx0_0_V_last_V);
  //Create input buffer for sweep_tx0_1_V_data_V
  ap_apatb_sweep_tx0_1_V_data_V_cap_bc = __xlx_sweep_tx0_1_V_data_V_V_size_Reader.read_size();
  __cosim_s16__* __xlx_sweep_tx0_1_V_data_V_input_buffer= new __cosim_s16__[ap_apatb_sweep_tx0_1_V_data_V_cap_bc];
auto* ssweep_tx0_1_V_data_V = createStream((hls::stream<__cosim_s16__>*)__xlx_apatb_param_sweep_tx0_1_V_data_V);
  //Create input buffer for sweep_tx0_1_V_keep_V
  ap_apatb_sweep_tx0_1_V_keep_V_cap_bc = __xlx_sweep_tx0_1_V_keep_V_V_size_Reader.read_size();
  short* __xlx_sweep_tx0_1_V_keep_V_input_buffer= new short[ap_apatb_sweep_tx0_1_V_keep_V_cap_bc];
auto* ssweep_tx0_1_V_keep_V = createStream((hls::stream<short>*)__xlx_apatb_param_sweep_tx0_1_V_keep_V);
  //Create input buffer for sweep_tx0_1_V_strb_V
  ap_apatb_sweep_tx0_1_V_strb_V_cap_bc = __xlx_sweep_tx0_1_V_strb_V_V_size_Reader.read_size();
  short* __xlx_sweep_tx0_1_V_strb_V_input_buffer= new short[ap_apatb_sweep_tx0_1_V_strb_V_cap_bc];
auto* ssweep_tx0_1_V_strb_V = createStream((hls::stream<short>*)__xlx_apatb_param_sweep_tx0_1_V_strb_V);
  //Create input buffer for sweep_tx0_1_V_last_V
  ap_apatb_sweep_tx0_1_V_last_V_cap_bc = __xlx_sweep_tx0_1_V_last_V_V_size_Reader.read_size();
  char* __xlx_sweep_tx0_1_V_last_V_input_buffer= new char[ap_apatb_sweep_tx0_1_V_last_V_cap_bc];
auto* ssweep_tx0_1_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_sweep_tx0_1_V_last_V);
auto* ssweep_rx0_1_V_data_V = createStream((hls::stream<__cosim_s16__>*)__xlx_apatb_param_sweep_rx0_1_V_data_V);
auto* ssweep_rx0_1_V_keep_V = createStream((hls::stream<short>*)__xlx_apatb_param_sweep_rx0_1_V_keep_V);
auto* ssweep_rx0_1_V_strb_V = createStream((hls::stream<short>*)__xlx_apatb_param_sweep_rx0_1_V_strb_V);
auto* ssweep_rx0_1_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_sweep_rx0_1_V_last_V);
  //Create input buffer for norm_tx0_V_data_V
  ap_apatb_norm_tx0_V_data_V_cap_bc = __xlx_norm_tx0_V_data_V_V_size_Reader.read_size();
  __cosim_s16__* __xlx_norm_tx0_V_data_V_input_buffer= new __cosim_s16__[ap_apatb_norm_tx0_V_data_V_cap_bc];
auto* snorm_tx0_V_data_V = createStream((hls::stream<__cosim_s16__>*)__xlx_apatb_param_norm_tx0_V_data_V);
  //Create input buffer for norm_tx0_V_keep_V
  ap_apatb_norm_tx0_V_keep_V_cap_bc = __xlx_norm_tx0_V_keep_V_V_size_Reader.read_size();
  short* __xlx_norm_tx0_V_keep_V_input_buffer= new short[ap_apatb_norm_tx0_V_keep_V_cap_bc];
auto* snorm_tx0_V_keep_V = createStream((hls::stream<short>*)__xlx_apatb_param_norm_tx0_V_keep_V);
  //Create input buffer for norm_tx0_V_strb_V
  ap_apatb_norm_tx0_V_strb_V_cap_bc = __xlx_norm_tx0_V_strb_V_V_size_Reader.read_size();
  short* __xlx_norm_tx0_V_strb_V_input_buffer= new short[ap_apatb_norm_tx0_V_strb_V_cap_bc];
auto* snorm_tx0_V_strb_V = createStream((hls::stream<short>*)__xlx_apatb_param_norm_tx0_V_strb_V);
  //Create input buffer for norm_tx0_V_last_V
  ap_apatb_norm_tx0_V_last_V_cap_bc = __xlx_norm_tx0_V_last_V_V_size_Reader.read_size();
  char* __xlx_norm_tx0_V_last_V_input_buffer= new char[ap_apatb_norm_tx0_V_last_V_cap_bc];
auto* snorm_tx0_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_norm_tx0_V_last_V);
auto* snorm_rx0_V_data_V = createStream((hls::stream<__cosim_s16__>*)__xlx_apatb_param_norm_rx0_V_data_V);
auto* snorm_rx0_V_keep_V = createStream((hls::stream<short>*)__xlx_apatb_param_norm_rx0_V_keep_V);
auto* snorm_rx0_V_strb_V = createStream((hls::stream<short>*)__xlx_apatb_param_norm_rx0_V_strb_V);
auto* snorm_rx0_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_norm_rx0_V_last_V);
  // DUT call
  TopPL(__xlx_dataIn__tmp_vec.data(), __xlx_U__tmp_vec.data(), __xlx_S__tmp_vec.data(), __xlx_ConvArray__tmp_vec.data(), __xlx_offset_byte_param_dataIn, __xlx_offset_byte_param_U, __xlx_offset_byte_param_S, __xlx_offset_byte_param_ConvArray, __xlx_apatb_param_ITER, ssweep_tx0_0_V_data_V->data<__cosim_s16__>(), ssweep_tx0_0_V_keep_V->data<short>(), ssweep_tx0_0_V_strb_V->data<short>(), ssweep_tx0_0_V_last_V->data<char>(), ssweep_rx0_0_V_data_V->data<__cosim_s16__>(), ssweep_rx0_0_V_keep_V->data<short>(), ssweep_rx0_0_V_strb_V->data<short>(), ssweep_rx0_0_V_last_V->data<char>(), ssweep_tx0_1_V_data_V->data<__cosim_s16__>(), ssweep_tx0_1_V_keep_V->data<short>(), ssweep_tx0_1_V_strb_V->data<short>(), ssweep_tx0_1_V_last_V->data<char>(), ssweep_rx0_1_V_data_V->data<__cosim_s16__>(), ssweep_rx0_1_V_keep_V->data<short>(), ssweep_rx0_1_V_strb_V->data<short>(), ssweep_rx0_1_V_last_V->data<char>(), snorm_tx0_V_data_V->data<__cosim_s16__>(), snorm_tx0_V_keep_V->data<short>(), snorm_tx0_V_strb_V->data<short>(), snorm_tx0_V_last_V->data<char>(), snorm_rx0_V_data_V->data<__cosim_s16__>(), snorm_rx0_V_keep_V->data<short>(), snorm_rx0_V_strb_V->data<short>(), snorm_rx0_V_last_V->data<char>());
// print __xlx_apatb_param_dataIn
for (size_t i = 0; i < __xlx_size_param_dataIn; ++i) {
((Byte<64>*)__xlx_apatb_param_dataIn)[i] = __xlx_dataIn__tmp_vec[__xlx_offset_param_dataIn+i];
}
// print __xlx_apatb_param_U
for (size_t i = 0; i < __xlx_size_param_U; ++i) {
((Byte<64>*)__xlx_apatb_param_U)[i] = __xlx_U__tmp_vec[__xlx_offset_param_U+i];
}
// print __xlx_apatb_param_S
for (size_t i = 0; i < __xlx_size_param_S; ++i) {
((Byte<64>*)__xlx_apatb_param_S)[i] = __xlx_S__tmp_vec[__xlx_offset_param_S+i];
}
// print __xlx_apatb_param_ConvArray
for (size_t i = 0; i < __xlx_size_param_ConvArray; ++i) {
((Byte<4>*)__xlx_apatb_param_ConvArray)[i] = __xlx_ConvArray__tmp_vec[__xlx_offset_param_ConvArray+i];
}
ssweep_tx0_0_V_data_V->transfer((hls::stream<__cosim_s16__>*)__xlx_apatb_param_sweep_tx0_0_V_data_V);
ssweep_tx0_0_V_keep_V->transfer((hls::stream<short>*)__xlx_apatb_param_sweep_tx0_0_V_keep_V);
ssweep_tx0_0_V_strb_V->transfer((hls::stream<short>*)__xlx_apatb_param_sweep_tx0_0_V_strb_V);
ssweep_tx0_0_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_sweep_tx0_0_V_last_V);
ssweep_rx0_0_V_data_V->transfer((hls::stream<__cosim_s16__>*)__xlx_apatb_param_sweep_rx0_0_V_data_V);
ssweep_rx0_0_V_keep_V->transfer((hls::stream<short>*)__xlx_apatb_param_sweep_rx0_0_V_keep_V);
ssweep_rx0_0_V_strb_V->transfer((hls::stream<short>*)__xlx_apatb_param_sweep_rx0_0_V_strb_V);
ssweep_rx0_0_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_sweep_rx0_0_V_last_V);
ssweep_tx0_1_V_data_V->transfer((hls::stream<__cosim_s16__>*)__xlx_apatb_param_sweep_tx0_1_V_data_V);
ssweep_tx0_1_V_keep_V->transfer((hls::stream<short>*)__xlx_apatb_param_sweep_tx0_1_V_keep_V);
ssweep_tx0_1_V_strb_V->transfer((hls::stream<short>*)__xlx_apatb_param_sweep_tx0_1_V_strb_V);
ssweep_tx0_1_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_sweep_tx0_1_V_last_V);
ssweep_rx0_1_V_data_V->transfer((hls::stream<__cosim_s16__>*)__xlx_apatb_param_sweep_rx0_1_V_data_V);
ssweep_rx0_1_V_keep_V->transfer((hls::stream<short>*)__xlx_apatb_param_sweep_rx0_1_V_keep_V);
ssweep_rx0_1_V_strb_V->transfer((hls::stream<short>*)__xlx_apatb_param_sweep_rx0_1_V_strb_V);
ssweep_rx0_1_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_sweep_rx0_1_V_last_V);
snorm_tx0_V_data_V->transfer((hls::stream<__cosim_s16__>*)__xlx_apatb_param_norm_tx0_V_data_V);
snorm_tx0_V_keep_V->transfer((hls::stream<short>*)__xlx_apatb_param_norm_tx0_V_keep_V);
snorm_tx0_V_strb_V->transfer((hls::stream<short>*)__xlx_apatb_param_norm_tx0_V_strb_V);
snorm_tx0_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_norm_tx0_V_last_V);
snorm_rx0_V_data_V->transfer((hls::stream<__cosim_s16__>*)__xlx_apatb_param_norm_rx0_V_data_V);
snorm_rx0_V_keep_V->transfer((hls::stream<short>*)__xlx_apatb_param_norm_rx0_V_keep_V);
snorm_rx0_V_strb_V->transfer((hls::stream<short>*)__xlx_apatb_param_norm_rx0_V_strb_V);
snorm_rx0_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_norm_rx0_V_last_V);
}
