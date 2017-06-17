#include "caffe/caffe.hpp"
#include <string>
#include <vector>
using namespace caffe;
int main(int argc, char **argv) {
  char *proto = "../prototxt/all.prototxt"; /* 加载CaffeNet的配置 */
  Phase phase = TRAIN;                      /* or TRAIN */
                                            // Caffe::set_mode(Caffe::GPU);
  Caffe::set_mode(Caffe::GPU);
  Caffe::SetDevice(0);

  //! Note: 后文所有提到的net，都是这个net
  boost::shared_ptr<Net<float>> net(new caffe::Net<float>(proto, phase));
  return 0;
}
