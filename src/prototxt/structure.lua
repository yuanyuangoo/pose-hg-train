layer	1
nn.Identity
layer	2
cudnn.SpatialConvolution(3 -> 64, 7x7, 2,2, 3,3)
layer	3
nn.SpatialBatchNormalization (4D) (64)
layer	4
cudnn.ReLU
layer	5
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (64)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(64 -> 64, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (64)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(64 -> 64, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (64)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(64 -> 128, 1x1)
      |    }
       `-> (2): nn.Sequential {
             [input -> (1) -> output]
             (1): cudnn.SpatialConvolution(64 -> 128, 1x1)
           }
       ... -> output
  }
  (2): nn.CAddTable
}
layer	6
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	7
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (128)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(128 -> 64, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (64)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(64 -> 64, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (64)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(64 -> 128, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	8
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (128)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(128 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Sequential {
             [input -> (1) -> output]
             (1): cudnn.SpatialConvolution(128 -> 256, 1x1)
           }
       ... -> output
  }
  (2): nn.CAddTable
}
layer	9
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	10
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	11
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	12
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	13
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	14
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	15
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	16
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	17
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	18
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	19
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	20
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	21
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	22
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	23
nn.SpatialUpSamplingNearest
layer	24
nn.CAddTable
layer	25
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	26
nn.SpatialUpSamplingNearest
layer	27
nn.CAddTable
layer	28
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	29
nn.SpatialUpSamplingNearest
layer	30
nn.CAddTable
layer	31
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	32
nn.SpatialUpSamplingNearest
layer	33
nn.CAddTable
layer	34
cudnn.SpatialConvolution(256 -> 256, 1x1)
layer	35
nn.SpatialBatchNormalization (4D) (256)
layer	36
cudnn.ReLU
layer	37
cudnn.SpatialConvolution(256 -> 16, 1x1)
layer	38
cudnn.SpatialConvolution(256 -> 256, 1x1)
layer	39
cudnn.SpatialConvolution(16 -> 256, 1x1)
layer	40
nn.CAddTable
layer	41
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	42
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	43
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	44
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	45
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	46
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	47
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	48
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	49
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	50
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	51
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	52
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	53
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	54
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	55
nn.SpatialUpSamplingNearest
layer	56
nn.CAddTable
layer	57
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	58
nn.SpatialUpSamplingNearest
layer	59
nn.CAddTable
layer	60
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	61
nn.SpatialUpSamplingNearest
layer	62
nn.CAddTable
layer	63
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	64
nn.SpatialUpSamplingNearest
layer	65
nn.CAddTable
layer	66
cudnn.SpatialConvolution(256 -> 256, 1x1)
layer	67
nn.SpatialBatchNormalization (4D) (256)
layer	68
cudnn.ReLU
layer	69
cudnn.SpatialConvolution(256 -> 16, 1x1)
layer	70
cudnn.SpatialConvolution(256 -> 256, 1x1)
layer	71
cudnn.SpatialConvolution(16 -> 256, 1x1)
layer	72
nn.CAddTable
layer	73
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	74
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	75
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	76
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	77
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	78
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	79
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	80
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	81
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	82
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	83
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	84
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	85
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	86
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	87
nn.SpatialUpSamplingNearest
layer	88
nn.CAddTable
layer	89
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	90
nn.SpatialUpSamplingNearest
layer	91
nn.CAddTable
layer	92
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	93
nn.SpatialUpSamplingNearest
layer	94
nn.CAddTable
layer	95
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	96
nn.SpatialUpSamplingNearest
layer	97
nn.CAddTable
layer	98
cudnn.SpatialConvolution(256 -> 256, 1x1)
layer	99
nn.SpatialBatchNormalization (4D) (256)
layer	100
cudnn.ReLU
layer	101
cudnn.SpatialConvolution(256 -> 16, 1x1)
layer	102
cudnn.SpatialConvolution(256 -> 256, 1x1)
layer	103
cudnn.SpatialConvolution(16 -> 256, 1x1)
layer	104
nn.CAddTable
layer	105
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	106
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	107
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	108
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	109
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	110
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	111
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	112
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	113
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	114
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	115
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	116
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	117
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	118
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	119
nn.SpatialUpSamplingNearest
layer	120
nn.CAddTable
layer	121
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	122
nn.SpatialUpSamplingNearest
layer	123
nn.CAddTable
layer	124
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	125
nn.SpatialUpSamplingNearest
layer	126
nn.CAddTable
layer	127
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	128
nn.SpatialUpSamplingNearest
layer	129
nn.CAddTable
layer	130
cudnn.SpatialConvolution(256 -> 256, 1x1)
layer	131
nn.SpatialBatchNormalization (4D) (256)
layer	132
cudnn.ReLU
layer	133
cudnn.SpatialConvolution(256 -> 16, 1x1)
layer	134
cudnn.SpatialConvolution(256 -> 256, 1x1)
layer	135
cudnn.SpatialConvolution(16 -> 256, 1x1)
layer	136
nn.CAddTable
layer	137
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	138
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	139
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	140
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	141
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	142
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	143
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	144
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	145
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	146
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	147
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	148
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	149
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	150
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	151
nn.SpatialUpSamplingNearest
layer	152
nn.CAddTable
layer	153
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	154
nn.SpatialUpSamplingNearest
layer	155
nn.CAddTable
layer	156
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	157
nn.SpatialUpSamplingNearest
layer	158
nn.CAddTable
layer	159
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	160
nn.SpatialUpSamplingNearest
layer	161
nn.CAddTable
layer	162
cudnn.SpatialConvolution(256 -> 256, 1x1)
layer	163
nn.SpatialBatchNormalization (4D) (256)
layer	164
cudnn.ReLU
layer	165
cudnn.SpatialConvolution(256 -> 16, 1x1)
layer	166
cudnn.SpatialConvolution(256 -> 256, 1x1)
layer	167
cudnn.SpatialConvolution(16 -> 256, 1x1)
layer	168
nn.CAddTable
layer	169
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	170
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	171
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	172
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	173
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	174
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	175
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	176
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	177
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	178
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	179
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	180
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	181
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	182
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	183
nn.SpatialUpSamplingNearest
layer	184
nn.CAddTable
layer	185
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	186
nn.SpatialUpSamplingNearest
layer	187
nn.CAddTable
layer	188
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	189
nn.SpatialUpSamplingNearest
layer	190
nn.CAddTable
layer	191
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	192
nn.SpatialUpSamplingNearest
layer	193
nn.CAddTable
layer	194
cudnn.SpatialConvolution(256 -> 256, 1x1)
layer	195
nn.SpatialBatchNormalization (4D) (256)
layer	196
cudnn.ReLU
layer	197
cudnn.SpatialConvolution(256 -> 16, 1x1)
layer	198
cudnn.SpatialConvolution(256 -> 256, 1x1)
layer	199
cudnn.SpatialConvolution(16 -> 256, 1x1)
layer	200
nn.CAddTable
layer	201
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	202
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	203
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	204
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	205
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	206
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	207
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	208
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	209
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	210
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	211
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	212
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	213
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	214
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	215
nn.SpatialUpSamplingNearest
layer	216
nn.CAddTable
layer	217
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	218
nn.SpatialUpSamplingNearest
layer	219
nn.CAddTable
layer	220
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	221
nn.SpatialUpSamplingNearest
layer	222
nn.CAddTable
layer	223
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	224
nn.SpatialUpSamplingNearest
layer	225
nn.CAddTable
layer	226
cudnn.SpatialConvolution(256 -> 256, 1x1)
layer	227
nn.SpatialBatchNormalization (4D) (256)
layer	228
cudnn.ReLU
layer	229
cudnn.SpatialConvolution(256 -> 16, 1x1)
layer	230
cudnn.SpatialConvolution(256 -> 256, 1x1)
layer	231
cudnn.SpatialConvolution(16 -> 256, 1x1)
layer	232
nn.CAddTable
layer	233
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	234
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	235
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	236
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	237
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	238
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	239
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	240
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	241
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	242
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	243
cudnn.SpatialMaxPooling(2x2, 2,2)
layer	244
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	245
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	246
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	247
nn.SpatialUpSamplingNearest
layer	248
nn.CAddTable
layer	249
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |    }
       `-> (2): nn.Identity
       ... -> output
  }
  (2): nn.CAddTable
}
layer	250
nn.SpatialUpSamplingNearest
layer	251
nn.CAddTable
layer	252
nn.Sequential {
  [input -> (1) -> (2) -> output]
  (1): nn.ConcatTable {
    input
      |`-> (1): nn.Sequential {
      |      [input -> (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> output]
      |      (1): nn.SpatialBatchNormalization (4D) (256)
      |      (2): cudnn.ReLU
      |      (3): cudnn.SpatialConvolution(256 -> 128, 1x1)
      |      (4): nn.SpatialBatchNormalization (4D) (128)
      |      (5): cudnn.ReLU
      |      (6): cudnn.SpatialConvolution(128 -> 128, 3x3, 1,1, 1,1)
      |      (7): nn.SpatialBatchNormalization (4D) (128)
      |      (8): cudnn.ReLU
      |      (9): cudnn.SpatialConvolution(128 -> 256, 1x1)
      |   