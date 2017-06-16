require("nn")
require("nngraph")
require 'torch'
require 'xlua'
require 'nnx'
require 'nngraph'
require 'image'
require 'hdf5'
require 'sys'
require 'cunn'
require 'cutorch'
require 'cudnn'
require('transtorch')

caffeNet = transTorch.loadCaffe('./all.prototxt')
--transTorch.toCaffe(l, caffeNet, "cnv1_")

net = torch.load('umich-stacked-hourglass.t7')
for i = 1, 280 do
    print("layer", tostring(i))
    print(net:get(i))
end
