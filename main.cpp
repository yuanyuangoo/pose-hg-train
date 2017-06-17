#include "caffe/caffe.hpp"
#include <vector>
#include <string>
using namespace caffe;
int main(int argc, char** argv)
{
	char* hg_proto = "D:/happynear/caffe-windows-ms/windows/pose-hg-train/src/prototxt/all.prototxt";
	Phase phase=TRAIN;
	Caffe::set_mode(Caffe::CPU);
	boost::shared_ptr<Net<float>>net(new caffe::Net<float>(hg_proto, phase));
	return 1;
}