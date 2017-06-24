cmake_minimum_required(VERSION 3.1.0)
set(CMAKE_CXX_STANDARD 14)
project( train )
find_package(Caffe)
find_package(CUDA QUIET REQUIRED)
find_package(OpenCV)
set(Boost_USE_STATIC_LIBS OFF) 
set(Boost_USE_MULTITHREADED ON)  
set(Boost_USE_STATIC_RUNTIME OFF) 
find_package( Boost COMPONENTS thread system filesystem REQUIRED ) #whatever libs you need


include_directories(
    ${Caffe_INCLUDE_DIRS}
    ~/Downloads/convolutional-pose-machines-release/caffe/include
    ~/Downloads/convolutional-pose-machines-release/caffe/build/src
    /usr/local/cuda-8.0/include
${Boost_INCLUDE_DIRS}
)

link_directories(/usr/local/cuda-8.0/lib64/)
set(Caffe_LIBRARIES "/home/a/Downloads/convolutional-pose-machines-release/caffe/release/lib/libcaffe.so")

add_definitions(${Caffe_DEFINITIONS})
add_executable( train caffe.cpp)
target_link_libraries( train ${OpenCV_LIBS} ${Caffe_LIBRARIES} ${Boost_LIBRARIES} ${CUDA_LIBRARY} cuda)
