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
require("csvigo")

--caffeNet = transTorch.loadCaffe('./prototxt/all.prototxt')
--transTorch.toCaffe(l, caffeNet, "cnv1_")

--net = torch.load('./prototxt/umich-stacked-hourglass.t7')

layers = csvigo.load({path = "./prototxt/layers.csv", mode = "large"})

for i, v in ipairs(layers) do
    if v[3] == "" then
        transTorch.toCaffe(net:get(tonumber(v[2])), caffeNet, v[1])
    elseif v[3] == "2" then
        transTorch.toCaffe(net:get(tonumber(v[2])):get(2), caffeNet, v[1])
    else
        transTorch.toCaffe(net:get(tonumber(v[2])):get(1):get(tonumber(v[4])):get(tonumber(v[5])), caffeNet, v[1])
    end
end
