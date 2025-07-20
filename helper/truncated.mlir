#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1, 0)>
#map3 = affine_map<(d0, d1, d2) -> (d2)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map5 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map6 = affine_map<(d0, d1, d2, d3) -> ()>
#map7 = affine_map<() -> ()>
#map8 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map9 = affine_map<(d0, d1, d2, d3) -> (d0, 0, d2, d3)>
module {
  func.func @BertWrapper(%arg0: tensor<1x512xi64>, %arg1: tensor<1x512xi64>, %arg2: tensor<1x7xi64>, %arg3: tensor<1x7xi64>) -> tensor<1x7x768xf32> {
    %cst = arith.constant dense_resource<torch_tensor_30522_768_torch.float32> : tensor<30522x768xf32>
    %c0_i64 = arith.constant 0 : i64
    %c512 = arith.constant 512 : index
    %c30522 = arith.constant 30522 : index
    %c2 = arith.constant 2 : index
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 5.000000e-01 : f32
    %cst_2 = arith.constant 9.9999999999999998E-13 : f64
    %cst_3 = arith.constant 7.680000e+02 : f32
    %cst_4 = arith.constant 1.41421354 : f32
    %cst_5 = arith.constant dense_resource<torch_tensor_2_768_torch.float32> : tensor<2x768xf32>
    %cst_6 = arith.constant dense_resource<torch_tensor_512_768_torch.float32> : tensor<512x768xf32>
    %cst_7 = arith.constant dense_resource<torch_tensor_768_torch.float32> : tensor<768xf32>
    %cst_8 = arith.constant dense_resource<torch_tensor_768_torch.float32_1> : tensor<768xf32>
    %cst_9 = arith.constant dense<1.000000e+00> : tensor<f32>
    %cst_10 = arith.constant dense_resource<torch_tensor_768_768_torch.float32> : tensor<768x768xf32>
    %cst_11 = arith.constant dense_resource<torch_tensor_768_torch.float32_2> : tensor<768xf32>
    %cst_12 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_1> : tensor<768x768xf32>
    %cst_13 = arith.constant dense_resource<torch_tensor_768_torch.float32_3> : tensor<768xf32>
    %cst_14 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_2> : tensor<768x768xf32>
    %cst_15 = arith.constant dense_resource<torch_tensor_768_torch.float32_4> : tensor<768xf32>
    %cst_16 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_3> : tensor<768x768xf32>
    %cst_17 = arith.constant dense_resource<torch_tensor_768_torch.float32_5> : tensor<768xf32>
    %cst_18 = arith.constant dense_resource<torch_tensor_768_torch.float32_6> : tensor<768xf32>
    %cst_19 = arith.constant dense_resource<torch_tensor_768_torch.float32_7> : tensor<768xf32>
    %cst_20 = arith.constant dense_resource<torch_tensor_3072_768_torch.float32> : tensor<3072x768xf32>
    %cst_21 = arith.constant dense_resource<torch_tensor_3072_torch.float32> : tensor<3072xf32>
    %cst_22 = arith.constant dense_resource<torch_tensor_768_3072_torch.float32> : tensor<768x3072xf32>
    %cst_23 = arith.constant dense_resource<torch_tensor_768_torch.float32_8> : tensor<768xf32>
    %cst_24 = arith.constant dense_resource<torch_tensor_768_torch.float32_9> : tensor<768xf32>
    %cst_25 = arith.constant dense_resource<torch_tensor_768_torch.float32_10> : tensor<768xf32>
    %cst_26 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_4> : tensor<768x768xf32>
    %cst_27 = arith.constant dense_resource<torch_tensor_768_torch.float32_11> : tensor<768xf32>
    %cst_28 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_5> : tensor<768x768xf32>
    %cst_29 = arith.constant dense_resource<torch_tensor_768_torch.float32_12> : tensor<768xf32>
    %cst_30 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_6> : tensor<768x768xf32>
    %cst_31 = arith.constant dense_resource<torch_tensor_768_torch.float32_13> : tensor<768xf32>
    %cst_32 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_7> : tensor<768x768xf32>
    %cst_33 = arith.constant dense_resource<torch_tensor_768_torch.float32_14> : tensor<768xf32>
    %cst_34 = arith.constant dense_resource<torch_tensor_768_torch.float32_15> : tensor<768xf32>
    %cst_35 = arith.constant dense_resource<torch_tensor_768_torch.float32_16> : tensor<768xf32>
    %cst_36 = arith.constant dense_resource<torch_tensor_3072_768_torch.float32_1> : tensor<3072x768xf32>
    %cst_37 = arith.constant dense_resource<torch_tensor_3072_torch.float32_1> : tensor<3072xf32>
    %cst_38 = arith.constant dense_resource<torch_tensor_768_3072_torch.float32_1> : tensor<768x3072xf32>
    %cst_39 = arith.constant dense_resource<torch_tensor_768_torch.float32_17> : tensor<768xf32>
    %cst_40 = arith.constant dense_resource<torch_tensor_768_torch.float32_18> : tensor<768xf32>
    %cst_41 = arith.constant dense_resource<torch_tensor_768_torch.float32_19> : tensor<768xf32>
    %cst_42 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_8> : tensor<768x768xf32>
    %cst_43 = arith.constant dense_resource<torch_tensor_768_torch.float32_20> : tensor<768xf32>
    %cst_44 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_9> : tensor<768x768xf32>
    %cst_45 = arith.constant dense_resource<torch_tensor_768_torch.float32_21> : tensor<768xf32>
    %cst_46 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_10> : tensor<768x768xf32>
    %cst_47 = arith.constant dense_resource<torch_tensor_768_torch.float32_22> : tensor<768xf32>
    %cst_48 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_11> : tensor<768x768xf32>
    %cst_49 = arith.constant dense_resource<torch_tensor_768_torch.float32_23> : tensor<768xf32>
    %cst_50 = arith.constant dense_resource<torch_tensor_768_torch.float32_24> : tensor<768xf32>
    %cst_51 = arith.constant dense_resource<torch_tensor_768_torch.float32_25> : tensor<768xf32>
    %cst_52 = arith.constant dense_resource<torch_tensor_3072_768_torch.float32_2> : tensor<3072x768xf32>
    %cst_53 = arith.constant dense_resource<torch_tensor_3072_torch.float32_2> : tensor<3072xf32>
    %cst_54 = arith.constant dense_resource<torch_tensor_768_3072_torch.float32_2> : tensor<768x3072xf32>
    %cst_55 = arith.constant dense_resource<torch_tensor_768_torch.float32_26> : tensor<768xf32>
    %cst_56 = arith.constant dense_resource<torch_tensor_768_torch.float32_27> : tensor<768xf32>
    %cst_57 = arith.constant dense_resource<torch_tensor_768_torch.float32_28> : tensor<768xf32>
    %cst_58 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_12> : tensor<768x768xf32>
    %cst_59 = arith.constant dense_resource<torch_tensor_768_torch.float32_29> : tensor<768xf32>
    %cst_60 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_13> : tensor<768x768xf32>
    %cst_61 = arith.constant dense_resource<torch_tensor_768_torch.float32_30> : tensor<768xf32>
    %cst_62 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_14> : tensor<768x768xf32>
    %cst_63 = arith.constant dense_resource<torch_tensor_768_torch.float32_31> : tensor<768xf32>
    %cst_64 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_15> : tensor<768x768xf32>
    %cst_65 = arith.constant dense_resource<torch_tensor_768_torch.float32_32> : tensor<768xf32>
    %cst_66 = arith.constant dense_resource<torch_tensor_768_torch.float32_33> : tensor<768xf32>
    %cst_67 = arith.constant dense_resource<torch_tensor_768_torch.float32_34> : tensor<768xf32>
    %cst_68 = arith.constant dense_resource<torch_tensor_3072_768_torch.float32_3> : tensor<3072x768xf32>
    %cst_69 = arith.constant dense_resource<torch_tensor_3072_torch.float32_3> : tensor<3072xf32>
    %cst_70 = arith.constant dense_resource<torch_tensor_768_3072_torch.float32_3> : tensor<768x3072xf32>
    %cst_71 = arith.constant dense_resource<torch_tensor_768_torch.float32_35> : tensor<768xf32>
    %cst_72 = arith.constant dense_resource<torch_tensor_768_torch.float32_36> : tensor<768xf32>
    %cst_73 = arith.constant dense_resource<torch_tensor_768_torch.float32_37> : tensor<768xf32>
    %cst_74 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_16> : tensor<768x768xf32>
    %cst_75 = arith.constant dense_resource<torch_tensor_768_torch.float32_38> : tensor<768xf32>
    %cst_76 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_17> : tensor<768x768xf32>
    %cst_77 = arith.constant dense_resource<torch_tensor_768_torch.float32_39> : tensor<768xf32>
    %cst_78 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_18> : tensor<768x768xf32>
    %cst_79 = arith.constant dense_resource<torch_tensor_768_torch.float32_40> : tensor<768xf32>
    %cst_80 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_19> : tensor<768x768xf32>
    %cst_81 = arith.constant dense_resource<torch_tensor_768_torch.float32_41> : tensor<768xf32>
    %cst_82 = arith.constant dense_resource<torch_tensor_768_torch.float32_42> : tensor<768xf32>
    %cst_83 = arith.constant dense_resource<torch_tensor_768_torch.float32_43> : tensor<768xf32>
    %cst_84 = arith.constant dense_resource<torch_tensor_3072_768_torch.float32_4> : tensor<3072x768xf32>
    %cst_85 = arith.constant dense_resource<torch_tensor_3072_torch.float32_4> : tensor<3072xf32>
    %cst_86 = arith.constant dense_resource<torch_tensor_768_3072_torch.float32_4> : tensor<768x3072xf32>
    %cst_87 = arith.constant dense_resource<torch_tensor_768_torch.float32_44> : tensor<768xf32>
    %cst_88 = arith.constant dense_resource<torch_tensor_768_torch.float32_45> : tensor<768xf32>
    %cst_89 = arith.constant dense_resource<torch_tensor_768_torch.float32_46> : tensor<768xf32>
    %cst_90 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_20> : tensor<768x768xf32>
    %cst_91 = arith.constant dense_resource<torch_tensor_768_torch.float32_47> : tensor<768xf32>
    %cst_92 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_21> : tensor<768x768xf32>
    %cst_93 = arith.constant dense_resource<torch_tensor_768_torch.float32_48> : tensor<768xf32>
    %cst_94 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_22> : tensor<768x768xf32>
    %cst_95 = arith.constant dense_resource<torch_tensor_768_torch.float32_49> : tensor<768xf32>
    %cst_96 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_23> : tensor<768x768xf32>
    %cst_97 = arith.constant dense_resource<torch_tensor_768_torch.float32_50> : tensor<768xf32>
    %cst_98 = arith.constant dense_resource<torch_tensor_768_torch.float32_51> : tensor<768xf32>
    %cst_99 = arith.constant dense_resource<torch_tensor_768_torch.float32_52> : tensor<768xf32>
    %cst_100 = arith.constant dense_resource<torch_tensor_3072_768_torch.float32_5> : tensor<3072x768xf32>
    %cst_101 = arith.constant dense_resource<torch_tensor_3072_torch.float32_5> : tensor<3072xf32>
    %cst_102 = arith.constant dense_resource<torch_tensor_768_3072_torch.float32_5> : tensor<768x3072xf32>
    %cst_103 = arith.constant dense_resource<torch_tensor_768_torch.float32_53> : tensor<768xf32>
    %cst_104 = arith.constant dense_resource<torch_tensor_768_torch.float32_54> : tensor<768xf32>
    %cst_105 = arith.constant dense_resource<torch_tensor_768_torch.float32_55> : tensor<768xf32>
    %cst_106 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_24> : tensor<768x768xf32>
    %cst_107 = arith.constant dense_resource<torch_tensor_768_torch.float32_56> : tensor<768xf32>
    %cst_108 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_25> : tensor<768x768xf32>
    %cst_109 = arith.constant dense_resource<torch_tensor_768_torch.float32_57> : tensor<768xf32>
    %cst_110 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_26> : tensor<768x768xf32>
    %cst_111 = arith.constant dense_resource<torch_tensor_768_torch.float32_58> : tensor<768xf32>
    %cst_112 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_27> : tensor<768x768xf32>
    %cst_113 = arith.constant dense_resource<torch_tensor_768_torch.float32_59> : tensor<768xf32>
    %cst_114 = arith.constant dense_resource<torch_tensor_768_torch.float32_60> : tensor<768xf32>
    %cst_115 = arith.constant dense_resource<torch_tensor_768_torch.float32_61> : tensor<768xf32>
    %cst_116 = arith.constant dense_resource<torch_tensor_3072_768_torch.float32_6> : tensor<3072x768xf32>
    %cst_117 = arith.constant dense_resource<torch_tensor_3072_torch.float32_6> : tensor<3072xf32>
    %cst_118 = arith.constant dense_resource<torch_tensor_768_3072_torch.float32_6> : tensor<768x3072xf32>
    %cst_119 = arith.constant dense_resource<torch_tensor_768_torch.float32_62> : tensor<768xf32>
    %cst_120 = arith.constant dense_resource<torch_tensor_768_torch.float32_63> : tensor<768xf32>
    %cst_121 = arith.constant dense_resource<torch_tensor_768_torch.float32_64> : tensor<768xf32>
    %cst_122 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_28> : tensor<768x768xf32>
    %cst_123 = arith.constant dense_resource<torch_tensor_768_torch.float32_65> : tensor<768xf32>
    %cst_124 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_29> : tensor<768x768xf32>
    %cst_125 = arith.constant dense_resource<torch_tensor_768_torch.float32_66> : tensor<768xf32>
    %cst_126 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_30> : tensor<768x768xf32>
    %cst_127 = arith.constant dense_resource<torch_tensor_768_torch.float32_67> : tensor<768xf32>
    %cst_128 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_31> : tensor<768x768xf32>
    %cst_129 = arith.constant dense_resource<torch_tensor_768_torch.float32_68> : tensor<768xf32>
    %cst_130 = arith.constant dense_resource<torch_tensor_768_torch.float32_69> : tensor<768xf32>
    %cst_131 = arith.constant dense_resource<torch_tensor_768_torch.float32_70> : tensor<768xf32>
    %cst_132 = arith.constant dense_resource<torch_tensor_3072_768_torch.float32_7> : tensor<3072x768xf32>
    %cst_133 = arith.constant dense_resource<torch_tensor_3072_torch.float32_7> : tensor<3072xf32>
    %cst_134 = arith.constant dense_resource<torch_tensor_768_3072_torch.float32_7> : tensor<768x3072xf32>
    %cst_135 = arith.constant dense_resource<torch_tensor_768_torch.float32_71> : tensor<768xf32>
    %cst_136 = arith.constant dense_resource<torch_tensor_768_torch.float32_72> : tensor<768xf32>
    %cst_137 = arith.constant dense_resource<torch_tensor_768_torch.float32_73> : tensor<768xf32>
    %cst_138 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_32> : tensor<768x768xf32>
    %cst_139 = arith.constant dense_resource<torch_tensor_768_torch.float32_74> : tensor<768xf32>
    %cst_140 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_33> : tensor<768x768xf32>
    %cst_141 = arith.constant dense_resource<torch_tensor_768_torch.float32_75> : tensor<768xf32>
    %cst_142 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_34> : tensor<768x768xf32>
    %cst_143 = arith.constant dense_resource<torch_tensor_768_torch.float32_76> : tensor<768xf32>
    %cst_144 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_35> : tensor<768x768xf32>
    %cst_145 = arith.constant dense_resource<torch_tensor_768_torch.float32_77> : tensor<768xf32>
    %cst_146 = arith.constant dense_resource<torch_tensor_768_torch.float32_78> : tensor<768xf32>
    %cst_147 = arith.constant dense_resource<torch_tensor_768_torch.float32_79> : tensor<768xf32>
    %cst_148 = arith.constant dense_resource<torch_tensor_3072_768_torch.float32_8> : tensor<3072x768xf32>
    %cst_149 = arith.constant dense_resource<torch_tensor_3072_torch.float32_8> : tensor<3072xf32>
    %cst_150 = arith.constant dense_resource<torch_tensor_768_3072_torch.float32_8> : tensor<768x3072xf32>
    %cst_151 = arith.constant dense_resource<torch_tensor_768_torch.float32_80> : tensor<768xf32>
    %cst_152 = arith.constant dense_resource<torch_tensor_768_torch.float32_81> : tensor<768xf32>
    %cst_153 = arith.constant dense_resource<torch_tensor_768_torch.float32_82> : tensor<768xf32>
    %cst_154 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_36> : tensor<768x768xf32>
    %cst_155 = arith.constant dense_resource<torch_tensor_768_torch.float32_83> : tensor<768xf32>
    %cst_156 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_37> : tensor<768x768xf32>
    %cst_157 = arith.constant dense_resource<torch_tensor_768_torch.float32_84> : tensor<768xf32>
    %cst_158 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_38> : tensor<768x768xf32>
    %cst_159 = arith.constant dense_resource<torch_tensor_768_torch.float32_85> : tensor<768xf32>
    %cst_160 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_39> : tensor<768x768xf32>
    %cst_161 = arith.constant dense_resource<torch_tensor_768_torch.float32_86> : tensor<768xf32>
    %cst_162 = arith.constant dense_resource<torch_tensor_768_torch.float32_87> : tensor<768xf32>
    %cst_163 = arith.constant dense_resource<torch_tensor_768_torch.float32_88> : tensor<768xf32>
    %cst_164 = arith.constant dense_resource<torch_tensor_3072_768_torch.float32_9> : tensor<3072x768xf32>
    %cst_165 = arith.constant dense_resource<torch_tensor_3072_torch.float32_9> : tensor<3072xf32>
    %cst_166 = arith.constant dense_resource<torch_tensor_768_3072_torch.float32_9> : tensor<768x3072xf32>
    %cst_167 = arith.constant dense_resource<torch_tensor_768_torch.float32_89> : tensor<768xf32>
    %cst_168 = arith.constant dense_resource<torch_tensor_768_torch.float32_90> : tensor<768xf32>
    %cst_169 = arith.constant dense_resource<torch_tensor_768_torch.float32_91> : tensor<768xf32>
    %cst_170 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_40> : tensor<768x768xf32>
    %cst_171 = arith.constant dense_resource<torch_tensor_768_torch.float32_92> : tensor<768xf32>
    %cst_172 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_41> : tensor<768x768xf32>
    %cst_173 = arith.constant dense_resource<torch_tensor_768_torch.float32_93> : tensor<768xf32>
    %cst_174 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_42> : tensor<768x768xf32>
    %cst_175 = arith.constant dense_resource<torch_tensor_768_torch.float32_94> : tensor<768xf32>
    %cst_176 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_43> : tensor<768x768xf32>
    %cst_177 = arith.constant dense_resource<torch_tensor_768_torch.float32_95> : tensor<768xf32>
    %cst_178 = arith.constant dense_resource<torch_tensor_768_torch.float32_96> : tensor<768xf32>
    %cst_179 = arith.constant dense_resource<torch_tensor_768_torch.float32_97> : tensor<768xf32>
    %cst_180 = arith.constant dense_resource<torch_tensor_3072_768_torch.float32_10> : tensor<3072x768xf32>
    %cst_181 = arith.constant dense_resource<torch_tensor_3072_torch.float32_10> : tensor<3072xf32>
    %cst_182 = arith.constant dense_resource<torch_tensor_768_3072_torch.float32_10> : tensor<768x3072xf32>
    %cst_183 = arith.constant dense_resource<torch_tensor_768_torch.float32_98> : tensor<768xf32>
    %cst_184 = arith.constant dense_resource<torch_tensor_768_torch.float32_99> : tensor<768xf32>
    %cst_185 = arith.constant dense_resource<torch_tensor_768_torch.float32_100> : tensor<768xf32>
    %cst_186 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_44> : tensor<768x768xf32>
    %cst_187 = arith.constant dense_resource<torch_tensor_768_torch.float32_101> : tensor<768xf32>
    %cst_188 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_45> : tensor<768x768xf32>
    %cst_189 = arith.constant dense_resource<torch_tensor_768_torch.float32_102> : tensor<768xf32>
    %cst_190 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_46> : tensor<768x768xf32>
    %cst_191 = arith.constant dense_resource<torch_tensor_768_torch.float32_103> : tensor<768xf32>
    %cst_192 = arith.constant dense_resource<torch_tensor_768_768_torch.float32_47> : tensor<768x768xf32>
    %cst_193 = arith.constant dense_resource<torch_tensor_768_torch.float32_104> : tensor<768xf32>
    %cst_194 = arith.constant dense_resource<torch_tensor_768_torch.float32_105> : tensor<768xf32>
    %cst_195 = arith.constant dense_resource<torch_tensor_768_torch.float32_106> : tensor<768xf32>
    %cst_196 = arith.constant dense_resource<torch_tensor_3072_768_torch.float32_11> : tensor<3072x768xf32>
    %cst_197 = arith.constant dense_resource<torch_tensor_3072_torch.float32_11> : tensor<3072xf32>
    %cst_198 = arith.constant dense_resource<torch_tensor_768_3072_torch.float32_11> : tensor<768x3072xf32>
    %cst_199 = arith.constant dense_resource<torch_tensor_768_torch.float32_107> : tensor<768xf32>
    %cst_200 = arith.constant dense_resource<torch_tensor_768_torch.float32_108> : tensor<768xf32>
    %cst_201 = arith.constant dense_resource<torch_tensor_768_torch.float32_109> : tensor<768xf32>
    %cst_202 = arith.constant dense<-3.4028234663852886E+38> : tensor<f64>
    %cst_203 = arith.constant 0.000000e+00 : f32
    %extracted_slice = tensor.extract_slice %arg1[0, 0] [1, 7] [1, 1] : tensor<1x512xi64> to tensor<1x7xi64>
    %extracted_slice_204 = tensor.extract_slice %arg0[0, 0] [1, 7] [1, 1] : tensor<1x512xi64> to tensor<1x7xi64>
    %0 = tensor.empty() : tensor<1x7x768xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%arg2 : tensor<1x7xi64>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: i64, %out: f32):
      %670 = arith.index_cast %in : i64 to index
      %671 = linalg.index 2 : index
      %672 = arith.cmpi slt, %670, %c30522 : index
      cf.assert %672, "index must be smaller than dim size"
      %673 = arith.cmpi sge, %in, %c0_i64 : i64
      cf.assert %673, "index must be larger or equal to 0"
      %extracted = tensor.extract %cst[%670, %671] : tensor<30522x768xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x7x768xf32>
    %2 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%extracted_slice : tensor<1x7xi64>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: i64, %out: f32):
      %670 = arith.index_cast %in : i64 to index
      %671 = linalg.index 2 : index
      %672 = arith.cmpi slt, %670, %c2 : index
      cf.assert %672, "index must be smaller than dim size"
      %673 = arith.cmpi sge, %in, %c0_i64 : i64
      cf.assert %673, "index must be larger or equal to 0"
      %extracted = tensor.extract %cst_5[%670, %671] : tensor<2x768xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x7x768xf32>
    %3 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1, %2 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%extracted_slice_204 : tensor<1x7xi64>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: i64, %out: f32):
      %670 = arith.index_cast %in : i64 to index
      %671 = linalg.index 2 : index
      %672 = arith.cmpi slt, %670, %c512 : index
      cf.assert %672, "index must be smaller than dim size"
      %673 = arith.cmpi sge, %in, %c0_i64 : i64
      cf.assert %673, "index must be larger or equal to 0"
      %extracted = tensor.extract %cst_6[%670, %671] : tensor<512x768xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x7x768xf32>
    %5 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3, %4 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %6 = tensor.empty() : tensor<1x7x1xf32>
    %7 = linalg.fill ins(%cst_203 : f32) outs(%6 : tensor<1x7x1xf32>) -> tensor<1x7x1xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%5 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%8 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed = tensor.collapse_shape %9 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %10 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %11 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%5, %10 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %12 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%11, %11 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %13 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%12 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %14 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%13 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %15 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%14 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %16 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%15 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_205 = tensor.collapse_shape %16 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %17 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_205 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %18 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%11, %17 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %19 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%18, %cst_7 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %20 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%19, %cst_8 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %21 = tensor.empty() : tensor<1x1x7x7xi64>
    %expanded = tensor.expand_shape %arg3 [[0], [1, 2]] output_shape [1, 1, 7] : tensor<1x7xi64> into tensor<1x1x7xi64>
    %22 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded : tensor<1x1x7xi64>) outs(%21 : tensor<1x1x7x7xi64>) {
    ^bb0(%in: i64, %out: i64):
      linalg.yield %in : i64
    } -> tensor<1x1x7x7xi64>
    %23 = tensor.empty() : tensor<1x1x7x7xf32>
    %24 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x1x7x7xi64>) outs(%23 : tensor<1x1x7x7xf32>) {
    ^bb0(%in: i64, %out: f32):
      %670 = arith.sitofp %in : i64 to f32
      linalg.yield %670 : f32
    } -> tensor<1x1x7x7xf32>
    %25 = linalg.generic {indexing_maps = [#map6, #map5, #map5], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_9, %24 : tensor<f32>, tensor<1x1x7x7xf32>) outs(%23 : tensor<1x1x7x7xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x1x7x7xf32>
    %26 = tensor.empty() : tensor<1x1x7x7xi1>
    %27 = linalg.generic {indexing_maps = [#map5, #map5], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25 : tensor<1x1x7x7xf32>) outs(%26 : tensor<1x1x7x7xi1>) {
    ^bb0(%in: f32, %out: i1):
      %670 = arith.cmpf une, %in, %cst_203 : f32
      linalg.yield %670 : i1
    } -> tensor<1x1x7x7xi1>
    %28 = tensor.empty() : tensor<f32>
    %29 = linalg.generic {indexing_maps = [#map7, #map7], iterator_types = []} ins(%cst_202 : tensor<f64>) outs(%28 : tensor<f32>) {
    ^bb0(%in: f64, %out: f32):
      %670 = arith.truncf %in : f64 to f32
      linalg.yield %670 : f32
    } -> tensor<f32>
    %30 = linalg.generic {indexing_maps = [#map5, #map6, #map5, #map5], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %29, %25 : tensor<1x1x7x7xi1>, tensor<f32>, tensor<1x1x7x7xf32>) outs(%23 : tensor<1x1x7x7xf32>) {
    ^bb0(%in: i1, %in_506: f32, %in_507: f32, %out: f32):
      %670 = arith.select %in, %in_506, %in_507 : f32
      linalg.yield %670 : f32
    } -> tensor<1x1x7x7xf32>
    %31 = tensor.empty() : tensor<768x768xf32>
    %transposed = linalg.transpose ins(%cst_10 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_206 = tensor.collapse_shape %20 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %32 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_206 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %33 = tensor.empty() : tensor<1x768x768xf32>
    %34 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %35 = linalg.fill ins(%cst_203 : f32) outs(%0 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %36 = linalg.batch_matmul ins(%32, %34 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %37 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%36, %cst_11 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_207 = tensor.expand_shape %37 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %38 = tensor.empty() : tensor<1x12x7x64xf32>
    %transposed_208 = linalg.transpose ins(%expanded_207 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_209 = linalg.transpose ins(%cst_12 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %39 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_209 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %40 = linalg.batch_matmul ins(%32, %39 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %41 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%40, %cst_13 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_210 = tensor.expand_shape %41 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_211 = linalg.transpose ins(%expanded_210 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_212 = linalg.transpose ins(%cst_14 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %42 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_212 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %43 = linalg.batch_matmul ins(%32, %42 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %44 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%43, %cst_15 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_213 = tensor.expand_shape %44 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_214 = linalg.transpose ins(%expanded_213 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %45 = tensor.empty() : tensor<1x12x7x7xf32>
    %46 = linalg.generic {indexing_maps = [#map9, #map5], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x1x7x7xf32>) outs(%45 : tensor<1x12x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x7x7xf32>
    %collapsed_215 = tensor.collapse_shape %transposed_208 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_216 = tensor.collapse_shape %transposed_211 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_217 = tensor.collapse_shape %transposed_214 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_218 = tensor.collapse_shape %46 [[0, 1], [2], [3]] : tensor<1x12x7x7xf32> into tensor<12x7x7xf32>
    %47 = tensor.empty() : tensor<12x7x64xf32>
    %48 = linalg.fill ins(%cst_203 : f32) outs(%47 : tensor<12x7x64xf32>) -> tensor<12x7x64xf32>
    %49 = tm_tensor.attention ins(%collapsed_215, %collapsed_216, %collapsed_217, %collapsed_218 : tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x7xf32>) outs(%48 : tensor<12x7x64xf32>) -> tensor<12x7x64xf32>
    %expanded_219 = tensor.expand_shape %49 [[0, 1], [2], [3]] output_shape [1, 12, 7, 64] : tensor<12x7x64xf32> into tensor<1x12x7x64xf32>
    %50 = tensor.empty() : tensor<1x7x12x64xf32>
    %transposed_220 = linalg.transpose ins(%expanded_219 : tensor<1x12x7x64xf32>) outs(%50 : tensor<1x7x12x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_221 = linalg.transpose ins(%cst_16 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_222 = tensor.collapse_shape %transposed_220 [[0, 1], [2, 3]] : tensor<1x7x12x64xf32> into tensor<7x768xf32>
    %51 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_222 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %52 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_221 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %53 = linalg.batch_matmul ins(%51, %52 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %54 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%53, %cst_17 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %55 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%54, %20 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %56 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%55 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %57 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%56 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_223 = tensor.collapse_shape %57 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %58 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_223 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %59 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%55, %58 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %60 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%59, %59 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %61 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%60 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %62 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%61 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %63 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%62 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %64 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%63 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_224 = tensor.collapse_shape %64 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %65 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_224 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %66 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%59, %65 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %67 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%66, %cst_18 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %68 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%67, %cst_19 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %69 = tensor.empty() : tensor<768x3072xf32>
    %transposed_225 = linalg.transpose ins(%cst_20 : tensor<3072x768xf32>) outs(%69 : tensor<768x3072xf32>) permutation = [1, 0] 
    %collapsed_226 = tensor.collapse_shape %68 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %70 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_226 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %71 = tensor.empty() : tensor<1x768x3072xf32>
    %72 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_225 : tensor<768x3072xf32>) outs(%71 : tensor<1x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x3072xf32>
    %73 = tensor.empty() : tensor<1x7x3072xf32>
    %74 = linalg.fill ins(%cst_203 : f32) outs(%73 : tensor<1x7x3072xf32>) -> tensor<1x7x3072xf32>
    %75 = linalg.batch_matmul ins(%70, %72 : tensor<1x7x768xf32>, tensor<1x768x3072xf32>) outs(%74 : tensor<1x7x3072xf32>) -> tensor<1x7x3072xf32>
    %76 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%75, %cst_21 : tensor<1x7x3072xf32>, tensor<3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x3072xf32>
    %77 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%76 : tensor<1x7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_4 : f32
      %671 = math.erf %670 : f32
      %672 = arith.addf %671, %cst_0 : f32
      %673 = arith.mulf %672, %cst_1 : f32
      %674 = arith.mulf %in, %673 : f32
      linalg.yield %674 : f32
    } -> tensor<1x7x3072xf32>
    %78 = tensor.empty() : tensor<3072x768xf32>
    %transposed_227 = linalg.transpose ins(%cst_22 : tensor<768x3072xf32>) outs(%78 : tensor<3072x768xf32>) permutation = [1, 0] 
    %collapsed_228 = tensor.collapse_shape %77 [[0, 1], [2]] : tensor<1x7x3072xf32> into tensor<7x3072xf32>
    %79 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_228 : tensor<7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x3072xf32>
    %80 = tensor.empty() : tensor<1x3072x768xf32>
    %81 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_227 : tensor<3072x768xf32>) outs(%80 : tensor<1x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3072x768xf32>
    %82 = linalg.batch_matmul ins(%79, %81 : tensor<1x7x3072xf32>, tensor<1x3072x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %83 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%82, %cst_23 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %84 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%83, %68 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %85 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%84 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %86 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%85 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_229 = tensor.collapse_shape %86 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %87 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_229 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %88 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%84, %87 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %89 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%88, %88 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%89 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %91 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%90 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %92 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%91 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %93 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%92 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_230 = tensor.collapse_shape %93 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %94 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_230 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %95 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%88, %94 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %96 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%95, %cst_24 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %97 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%96, %cst_25 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_231 = linalg.transpose ins(%cst_26 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_232 = tensor.collapse_shape %97 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %98 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_232 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %99 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_231 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %100 = linalg.batch_matmul ins(%98, %99 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %101 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%100, %cst_27 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_233 = tensor.expand_shape %101 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_234 = linalg.transpose ins(%expanded_233 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_235 = linalg.transpose ins(%cst_28 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %102 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_235 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %103 = linalg.batch_matmul ins(%98, %102 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %104 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%103, %cst_29 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_236 = tensor.expand_shape %104 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_237 = linalg.transpose ins(%expanded_236 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_238 = linalg.transpose ins(%cst_30 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %105 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_238 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %106 = linalg.batch_matmul ins(%98, %105 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %107 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%106, %cst_31 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_239 = tensor.expand_shape %107 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_240 = linalg.transpose ins(%expanded_239 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %collapsed_241 = tensor.collapse_shape %transposed_234 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_242 = tensor.collapse_shape %transposed_237 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_243 = tensor.collapse_shape %transposed_240 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %108 = tm_tensor.attention ins(%collapsed_241, %collapsed_242, %collapsed_243, %collapsed_218 : tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x7xf32>) outs(%48 : tensor<12x7x64xf32>) -> tensor<12x7x64xf32>
    %expanded_244 = tensor.expand_shape %108 [[0, 1], [2], [3]] output_shape [1, 12, 7, 64] : tensor<12x7x64xf32> into tensor<1x12x7x64xf32>
    %transposed_245 = linalg.transpose ins(%expanded_244 : tensor<1x12x7x64xf32>) outs(%50 : tensor<1x7x12x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_246 = linalg.transpose ins(%cst_32 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_247 = tensor.collapse_shape %transposed_245 [[0, 1], [2, 3]] : tensor<1x7x12x64xf32> into tensor<7x768xf32>
    %109 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_247 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %110 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_246 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %111 = linalg.batch_matmul ins(%109, %110 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %112 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%111, %cst_33 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %113 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%112, %97 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %114 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%113 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %115 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%114 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_248 = tensor.collapse_shape %115 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %116 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_248 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %117 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%113, %116 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %118 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%117, %117 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %119 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%118 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %120 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%119 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %121 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%120 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %122 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%121 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_249 = tensor.collapse_shape %122 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %123 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_249 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %124 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%117, %123 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %125 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%124, %cst_34 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %126 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%125, %cst_35 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_250 = linalg.transpose ins(%cst_36 : tensor<3072x768xf32>) outs(%69 : tensor<768x3072xf32>) permutation = [1, 0] 
    %collapsed_251 = tensor.collapse_shape %126 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %127 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_251 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %128 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_250 : tensor<768x3072xf32>) outs(%71 : tensor<1x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x3072xf32>
    %129 = linalg.batch_matmul ins(%127, %128 : tensor<1x7x768xf32>, tensor<1x768x3072xf32>) outs(%74 : tensor<1x7x3072xf32>) -> tensor<1x7x3072xf32>
    %130 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%129, %cst_37 : tensor<1x7x3072xf32>, tensor<3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x3072xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%130 : tensor<1x7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_4 : f32
      %671 = math.erf %670 : f32
      %672 = arith.addf %671, %cst_0 : f32
      %673 = arith.mulf %672, %cst_1 : f32
      %674 = arith.mulf %in, %673 : f32
      linalg.yield %674 : f32
    } -> tensor<1x7x3072xf32>
    %transposed_252 = linalg.transpose ins(%cst_38 : tensor<768x3072xf32>) outs(%78 : tensor<3072x768xf32>) permutation = [1, 0] 
    %collapsed_253 = tensor.collapse_shape %131 [[0, 1], [2]] : tensor<1x7x3072xf32> into tensor<7x3072xf32>
    %132 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_253 : tensor<7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x3072xf32>
    %133 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_252 : tensor<3072x768xf32>) outs(%80 : tensor<1x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3072x768xf32>
    %134 = linalg.batch_matmul ins(%132, %133 : tensor<1x7x3072xf32>, tensor<1x3072x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %135 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%134, %cst_39 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %136 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%135, %126 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %137 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%136 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %138 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%137 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_254 = tensor.collapse_shape %138 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %139 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_254 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %140 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%136, %139 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %141 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%140, %140 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %142 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%141 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %143 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%142 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %144 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%143 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %145 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%144 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_255 = tensor.collapse_shape %145 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %146 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_255 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %147 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%140, %146 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %148 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%147, %cst_40 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %149 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%148, %cst_41 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_256 = linalg.transpose ins(%cst_42 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_257 = tensor.collapse_shape %149 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %150 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_257 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %151 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_256 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %152 = linalg.batch_matmul ins(%150, %151 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %153 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%152, %cst_43 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_258 = tensor.expand_shape %153 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_259 = linalg.transpose ins(%expanded_258 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_260 = linalg.transpose ins(%cst_44 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %154 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_260 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %155 = linalg.batch_matmul ins(%150, %154 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %156 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%155, %cst_45 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_261 = tensor.expand_shape %156 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_262 = linalg.transpose ins(%expanded_261 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_263 = linalg.transpose ins(%cst_46 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %157 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_263 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %158 = linalg.batch_matmul ins(%150, %157 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %159 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%158, %cst_47 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_264 = tensor.expand_shape %159 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_265 = linalg.transpose ins(%expanded_264 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %collapsed_266 = tensor.collapse_shape %transposed_259 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_267 = tensor.collapse_shape %transposed_262 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_268 = tensor.collapse_shape %transposed_265 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %160 = tm_tensor.attention ins(%collapsed_266, %collapsed_267, %collapsed_268, %collapsed_218 : tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x7xf32>) outs(%48 : tensor<12x7x64xf32>) -> tensor<12x7x64xf32>
    %expanded_269 = tensor.expand_shape %160 [[0, 1], [2], [3]] output_shape [1, 12, 7, 64] : tensor<12x7x64xf32> into tensor<1x12x7x64xf32>
    %transposed_270 = linalg.transpose ins(%expanded_269 : tensor<1x12x7x64xf32>) outs(%50 : tensor<1x7x12x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_271 = linalg.transpose ins(%cst_48 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_272 = tensor.collapse_shape %transposed_270 [[0, 1], [2, 3]] : tensor<1x7x12x64xf32> into tensor<7x768xf32>
    %161 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_272 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %162 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_271 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %163 = linalg.batch_matmul ins(%161, %162 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %164 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%163, %cst_49 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %165 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%164, %149 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %166 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%165 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %167 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%166 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_273 = tensor.collapse_shape %167 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %168 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_273 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %169 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%165, %168 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %170 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%169, %169 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %171 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%170 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %172 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%171 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %173 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%172 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %174 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%173 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_274 = tensor.collapse_shape %174 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %175 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_274 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %176 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%169, %175 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %177 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%176, %cst_50 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %178 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%177, %cst_51 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_275 = linalg.transpose ins(%cst_52 : tensor<3072x768xf32>) outs(%69 : tensor<768x3072xf32>) permutation = [1, 0] 
    %collapsed_276 = tensor.collapse_shape %178 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %179 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_276 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %180 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_275 : tensor<768x3072xf32>) outs(%71 : tensor<1x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x3072xf32>
    %181 = linalg.batch_matmul ins(%179, %180 : tensor<1x7x768xf32>, tensor<1x768x3072xf32>) outs(%74 : tensor<1x7x3072xf32>) -> tensor<1x7x3072xf32>
    %182 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%181, %cst_53 : tensor<1x7x3072xf32>, tensor<3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x3072xf32>
    %183 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%182 : tensor<1x7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_4 : f32
      %671 = math.erf %670 : f32
      %672 = arith.addf %671, %cst_0 : f32
      %673 = arith.mulf %672, %cst_1 : f32
      %674 = arith.mulf %in, %673 : f32
      linalg.yield %674 : f32
    } -> tensor<1x7x3072xf32>
    %transposed_277 = linalg.transpose ins(%cst_54 : tensor<768x3072xf32>) outs(%78 : tensor<3072x768xf32>) permutation = [1, 0] 
    %collapsed_278 = tensor.collapse_shape %183 [[0, 1], [2]] : tensor<1x7x3072xf32> into tensor<7x3072xf32>
    %184 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_278 : tensor<7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x3072xf32>
    %185 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_277 : tensor<3072x768xf32>) outs(%80 : tensor<1x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3072x768xf32>
    %186 = linalg.batch_matmul ins(%184, %185 : tensor<1x7x3072xf32>, tensor<1x3072x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %187 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%186, %cst_55 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%187, %178 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %189 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%188 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %190 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%189 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_279 = tensor.collapse_shape %190 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %191 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_279 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %192 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%188, %191 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %193 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%192, %192 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %194 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%193 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %195 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%194 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %196 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%195 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %197 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%196 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_280 = tensor.collapse_shape %197 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %198 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_280 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %199 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%192, %198 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %200 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%199, %cst_56 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %201 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%200, %cst_57 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_281 = linalg.transpose ins(%cst_58 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_282 = tensor.collapse_shape %201 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %202 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_282 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %203 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_281 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %204 = linalg.batch_matmul ins(%202, %203 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %205 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%204, %cst_59 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_283 = tensor.expand_shape %205 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_284 = linalg.transpose ins(%expanded_283 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_285 = linalg.transpose ins(%cst_60 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %206 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_285 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %207 = linalg.batch_matmul ins(%202, %206 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %208 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%207, %cst_61 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_286 = tensor.expand_shape %208 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_287 = linalg.transpose ins(%expanded_286 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_288 = linalg.transpose ins(%cst_62 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %209 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_288 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %210 = linalg.batch_matmul ins(%202, %209 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %211 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%210, %cst_63 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_289 = tensor.expand_shape %211 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_290 = linalg.transpose ins(%expanded_289 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %collapsed_291 = tensor.collapse_shape %transposed_284 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_292 = tensor.collapse_shape %transposed_287 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_293 = tensor.collapse_shape %transposed_290 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %212 = tm_tensor.attention ins(%collapsed_291, %collapsed_292, %collapsed_293, %collapsed_218 : tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x7xf32>) outs(%48 : tensor<12x7x64xf32>) -> tensor<12x7x64xf32>
    %expanded_294 = tensor.expand_shape %212 [[0, 1], [2], [3]] output_shape [1, 12, 7, 64] : tensor<12x7x64xf32> into tensor<1x12x7x64xf32>
    %transposed_295 = linalg.transpose ins(%expanded_294 : tensor<1x12x7x64xf32>) outs(%50 : tensor<1x7x12x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_296 = linalg.transpose ins(%cst_64 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_297 = tensor.collapse_shape %transposed_295 [[0, 1], [2, 3]] : tensor<1x7x12x64xf32> into tensor<7x768xf32>
    %213 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_297 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %214 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_296 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %215 = linalg.batch_matmul ins(%213, %214 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %216 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%215, %cst_65 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %217 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%216, %201 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %218 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%217 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %219 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%218 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_298 = tensor.collapse_shape %219 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %220 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_298 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %221 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%217, %220 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %222 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%221, %221 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %223 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%222 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %224 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%223 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %225 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%224 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %226 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%225 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_299 = tensor.collapse_shape %226 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %227 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_299 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %228 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%221, %227 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %229 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%228, %cst_66 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %230 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%229, %cst_67 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_300 = linalg.transpose ins(%cst_68 : tensor<3072x768xf32>) outs(%69 : tensor<768x3072xf32>) permutation = [1, 0] 
    %collapsed_301 = tensor.collapse_shape %230 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %231 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_301 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %232 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_300 : tensor<768x3072xf32>) outs(%71 : tensor<1x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x3072xf32>
    %233 = linalg.batch_matmul ins(%231, %232 : tensor<1x7x768xf32>, tensor<1x768x3072xf32>) outs(%74 : tensor<1x7x3072xf32>) -> tensor<1x7x3072xf32>
    %234 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%233, %cst_69 : tensor<1x7x3072xf32>, tensor<3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x3072xf32>
    %235 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%234 : tensor<1x7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_4 : f32
      %671 = math.erf %670 : f32
      %672 = arith.addf %671, %cst_0 : f32
      %673 = arith.mulf %672, %cst_1 : f32
      %674 = arith.mulf %in, %673 : f32
      linalg.yield %674 : f32
    } -> tensor<1x7x3072xf32>
    %transposed_302 = linalg.transpose ins(%cst_70 : tensor<768x3072xf32>) outs(%78 : tensor<3072x768xf32>) permutation = [1, 0] 
    %collapsed_303 = tensor.collapse_shape %235 [[0, 1], [2]] : tensor<1x7x3072xf32> into tensor<7x3072xf32>
    %236 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_303 : tensor<7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x3072xf32>
    %237 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_302 : tensor<3072x768xf32>) outs(%80 : tensor<1x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3072x768xf32>
    %238 = linalg.batch_matmul ins(%236, %237 : tensor<1x7x3072xf32>, tensor<1x3072x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %239 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%238, %cst_71 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %240 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%239, %230 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %241 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%240 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %242 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%241 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_304 = tensor.collapse_shape %242 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %243 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_304 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %244 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%240, %243 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %245 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%244, %244 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %246 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%245 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %247 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%246 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %248 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%247 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %249 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%248 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_305 = tensor.collapse_shape %249 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %250 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_305 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %251 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%244, %250 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %252 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%251, %cst_72 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %253 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%252, %cst_73 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_306 = linalg.transpose ins(%cst_74 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_307 = tensor.collapse_shape %253 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %254 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_307 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %255 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_306 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %256 = linalg.batch_matmul ins(%254, %255 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %257 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%256, %cst_75 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_308 = tensor.expand_shape %257 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_309 = linalg.transpose ins(%expanded_308 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_310 = linalg.transpose ins(%cst_76 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %258 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_310 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %259 = linalg.batch_matmul ins(%254, %258 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %260 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%259, %cst_77 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_311 = tensor.expand_shape %260 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_312 = linalg.transpose ins(%expanded_311 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_313 = linalg.transpose ins(%cst_78 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %261 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_313 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %262 = linalg.batch_matmul ins(%254, %261 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %263 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%262, %cst_79 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_314 = tensor.expand_shape %263 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_315 = linalg.transpose ins(%expanded_314 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %collapsed_316 = tensor.collapse_shape %transposed_309 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_317 = tensor.collapse_shape %transposed_312 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_318 = tensor.collapse_shape %transposed_315 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %264 = tm_tensor.attention ins(%collapsed_316, %collapsed_317, %collapsed_318, %collapsed_218 : tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x7xf32>) outs(%48 : tensor<12x7x64xf32>) -> tensor<12x7x64xf32>
    %expanded_319 = tensor.expand_shape %264 [[0, 1], [2], [3]] output_shape [1, 12, 7, 64] : tensor<12x7x64xf32> into tensor<1x12x7x64xf32>
    %transposed_320 = linalg.transpose ins(%expanded_319 : tensor<1x12x7x64xf32>) outs(%50 : tensor<1x7x12x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_321 = linalg.transpose ins(%cst_80 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_322 = tensor.collapse_shape %transposed_320 [[0, 1], [2, 3]] : tensor<1x7x12x64xf32> into tensor<7x768xf32>
    %265 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_322 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %266 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_321 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %267 = linalg.batch_matmul ins(%265, %266 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %268 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%267, %cst_81 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %269 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%268, %253 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %270 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%269 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %271 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%270 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_323 = tensor.collapse_shape %271 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %272 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_323 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %273 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%269, %272 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %274 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%273, %273 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %275 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%274 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %276 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%275 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %277 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%276 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %278 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%277 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_324 = tensor.collapse_shape %278 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %279 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_324 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %280 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%273, %279 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %281 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%280, %cst_82 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %282 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%281, %cst_83 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_325 = linalg.transpose ins(%cst_84 : tensor<3072x768xf32>) outs(%69 : tensor<768x3072xf32>) permutation = [1, 0] 
    %collapsed_326 = tensor.collapse_shape %282 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %283 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_326 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %284 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_325 : tensor<768x3072xf32>) outs(%71 : tensor<1x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x3072xf32>
    %285 = linalg.batch_matmul ins(%283, %284 : tensor<1x7x768xf32>, tensor<1x768x3072xf32>) outs(%74 : tensor<1x7x3072xf32>) -> tensor<1x7x3072xf32>
    %286 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%285, %cst_85 : tensor<1x7x3072xf32>, tensor<3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x3072xf32>
    %287 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%286 : tensor<1x7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_4 : f32
      %671 = math.erf %670 : f32
      %672 = arith.addf %671, %cst_0 : f32
      %673 = arith.mulf %672, %cst_1 : f32
      %674 = arith.mulf %in, %673 : f32
      linalg.yield %674 : f32
    } -> tensor<1x7x3072xf32>
    %transposed_327 = linalg.transpose ins(%cst_86 : tensor<768x3072xf32>) outs(%78 : tensor<3072x768xf32>) permutation = [1, 0] 
    %collapsed_328 = tensor.collapse_shape %287 [[0, 1], [2]] : tensor<1x7x3072xf32> into tensor<7x3072xf32>
    %288 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_328 : tensor<7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x3072xf32>
    %289 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_327 : tensor<3072x768xf32>) outs(%80 : tensor<1x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3072x768xf32>
    %290 = linalg.batch_matmul ins(%288, %289 : tensor<1x7x3072xf32>, tensor<1x3072x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %291 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%290, %cst_87 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %292 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%291, %282 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %293 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%292 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %294 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%293 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_329 = tensor.collapse_shape %294 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %295 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_329 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %296 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%292, %295 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %297 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%296, %296 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %298 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%297 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %299 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%298 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %300 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%299 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %301 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%300 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_330 = tensor.collapse_shape %301 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %302 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_330 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %303 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%296, %302 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %304 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%303, %cst_88 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %305 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%304, %cst_89 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_331 = linalg.transpose ins(%cst_90 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_332 = tensor.collapse_shape %305 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %306 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_332 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %307 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_331 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %308 = linalg.batch_matmul ins(%306, %307 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %309 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%308, %cst_91 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_333 = tensor.expand_shape %309 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_334 = linalg.transpose ins(%expanded_333 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_335 = linalg.transpose ins(%cst_92 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %310 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_335 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %311 = linalg.batch_matmul ins(%306, %310 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %312 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%311, %cst_93 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_336 = tensor.expand_shape %312 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_337 = linalg.transpose ins(%expanded_336 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_338 = linalg.transpose ins(%cst_94 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %313 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_338 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %314 = linalg.batch_matmul ins(%306, %313 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %315 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%314, %cst_95 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_339 = tensor.expand_shape %315 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_340 = linalg.transpose ins(%expanded_339 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %collapsed_341 = tensor.collapse_shape %transposed_334 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_342 = tensor.collapse_shape %transposed_337 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_343 = tensor.collapse_shape %transposed_340 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %316 = tm_tensor.attention ins(%collapsed_341, %collapsed_342, %collapsed_343, %collapsed_218 : tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x7xf32>) outs(%48 : tensor<12x7x64xf32>) -> tensor<12x7x64xf32>
    %expanded_344 = tensor.expand_shape %316 [[0, 1], [2], [3]] output_shape [1, 12, 7, 64] : tensor<12x7x64xf32> into tensor<1x12x7x64xf32>
    %transposed_345 = linalg.transpose ins(%expanded_344 : tensor<1x12x7x64xf32>) outs(%50 : tensor<1x7x12x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_346 = linalg.transpose ins(%cst_96 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_347 = tensor.collapse_shape %transposed_345 [[0, 1], [2, 3]] : tensor<1x7x12x64xf32> into tensor<7x768xf32>
    %317 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_347 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %318 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_346 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %319 = linalg.batch_matmul ins(%317, %318 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %320 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%319, %cst_97 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %321 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%320, %305 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %322 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%321 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %323 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%322 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_348 = tensor.collapse_shape %323 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %324 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_348 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %325 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%321, %324 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %326 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%325, %325 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %327 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%326 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %328 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%327 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %329 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%328 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %330 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%329 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_349 = tensor.collapse_shape %330 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %331 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_349 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %332 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%325, %331 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %333 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%332, %cst_98 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %334 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%333, %cst_99 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_350 = linalg.transpose ins(%cst_100 : tensor<3072x768xf32>) outs(%69 : tensor<768x3072xf32>) permutation = [1, 0] 
    %collapsed_351 = tensor.collapse_shape %334 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %335 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_351 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %336 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_350 : tensor<768x3072xf32>) outs(%71 : tensor<1x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x3072xf32>
    %337 = linalg.batch_matmul ins(%335, %336 : tensor<1x7x768xf32>, tensor<1x768x3072xf32>) outs(%74 : tensor<1x7x3072xf32>) -> tensor<1x7x3072xf32>
    %338 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%337, %cst_101 : tensor<1x7x3072xf32>, tensor<3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x3072xf32>
    %339 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%338 : tensor<1x7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_4 : f32
      %671 = math.erf %670 : f32
      %672 = arith.addf %671, %cst_0 : f32
      %673 = arith.mulf %672, %cst_1 : f32
      %674 = arith.mulf %in, %673 : f32
      linalg.yield %674 : f32
    } -> tensor<1x7x3072xf32>
    %transposed_352 = linalg.transpose ins(%cst_102 : tensor<768x3072xf32>) outs(%78 : tensor<3072x768xf32>) permutation = [1, 0] 
    %collapsed_353 = tensor.collapse_shape %339 [[0, 1], [2]] : tensor<1x7x3072xf32> into tensor<7x3072xf32>
    %340 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_353 : tensor<7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x3072xf32>
    %341 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_352 : tensor<3072x768xf32>) outs(%80 : tensor<1x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3072x768xf32>
    %342 = linalg.batch_matmul ins(%340, %341 : tensor<1x7x3072xf32>, tensor<1x3072x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %343 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%342, %cst_103 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %344 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%343, %334 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %345 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%344 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %346 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%345 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_354 = tensor.collapse_shape %346 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %347 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_354 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %348 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%344, %347 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %349 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%348, %348 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %350 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%349 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %351 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%350 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %352 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%351 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %353 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%352 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_355 = tensor.collapse_shape %353 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %354 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_355 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %355 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%348, %354 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %356 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%355, %cst_104 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %357 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%356, %cst_105 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_356 = linalg.transpose ins(%cst_106 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_357 = tensor.collapse_shape %357 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %358 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_357 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %359 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_356 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %360 = linalg.batch_matmul ins(%358, %359 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %361 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%360, %cst_107 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_358 = tensor.expand_shape %361 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_359 = linalg.transpose ins(%expanded_358 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_360 = linalg.transpose ins(%cst_108 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %362 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_360 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %363 = linalg.batch_matmul ins(%358, %362 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %364 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%363, %cst_109 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_361 = tensor.expand_shape %364 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_362 = linalg.transpose ins(%expanded_361 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_363 = linalg.transpose ins(%cst_110 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %365 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_363 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %366 = linalg.batch_matmul ins(%358, %365 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %367 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%366, %cst_111 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_364 = tensor.expand_shape %367 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_365 = linalg.transpose ins(%expanded_364 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %collapsed_366 = tensor.collapse_shape %transposed_359 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_367 = tensor.collapse_shape %transposed_362 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_368 = tensor.collapse_shape %transposed_365 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %368 = tm_tensor.attention ins(%collapsed_366, %collapsed_367, %collapsed_368, %collapsed_218 : tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x7xf32>) outs(%48 : tensor<12x7x64xf32>) -> tensor<12x7x64xf32>
    %expanded_369 = tensor.expand_shape %368 [[0, 1], [2], [3]] output_shape [1, 12, 7, 64] : tensor<12x7x64xf32> into tensor<1x12x7x64xf32>
    %transposed_370 = linalg.transpose ins(%expanded_369 : tensor<1x12x7x64xf32>) outs(%50 : tensor<1x7x12x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_371 = linalg.transpose ins(%cst_112 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_372 = tensor.collapse_shape %transposed_370 [[0, 1], [2, 3]] : tensor<1x7x12x64xf32> into tensor<7x768xf32>
    %369 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_372 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %370 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_371 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %371 = linalg.batch_matmul ins(%369, %370 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %372 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%371, %cst_113 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %373 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%372, %357 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %374 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%373 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %375 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%374 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_373 = tensor.collapse_shape %375 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %376 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_373 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %377 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%373, %376 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %378 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%377, %377 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %379 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%378 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %380 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%379 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %381 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%380 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %382 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%381 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_374 = tensor.collapse_shape %382 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %383 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_374 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %384 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%377, %383 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %385 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%384, %cst_114 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %386 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%385, %cst_115 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_375 = linalg.transpose ins(%cst_116 : tensor<3072x768xf32>) outs(%69 : tensor<768x3072xf32>) permutation = [1, 0] 
    %collapsed_376 = tensor.collapse_shape %386 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %387 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_376 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %388 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_375 : tensor<768x3072xf32>) outs(%71 : tensor<1x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x3072xf32>
    %389 = linalg.batch_matmul ins(%387, %388 : tensor<1x7x768xf32>, tensor<1x768x3072xf32>) outs(%74 : tensor<1x7x3072xf32>) -> tensor<1x7x3072xf32>
    %390 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%389, %cst_117 : tensor<1x7x3072xf32>, tensor<3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x3072xf32>
    %391 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%390 : tensor<1x7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_4 : f32
      %671 = math.erf %670 : f32
      %672 = arith.addf %671, %cst_0 : f32
      %673 = arith.mulf %672, %cst_1 : f32
      %674 = arith.mulf %in, %673 : f32
      linalg.yield %674 : f32
    } -> tensor<1x7x3072xf32>
    %transposed_377 = linalg.transpose ins(%cst_118 : tensor<768x3072xf32>) outs(%78 : tensor<3072x768xf32>) permutation = [1, 0] 
    %collapsed_378 = tensor.collapse_shape %391 [[0, 1], [2]] : tensor<1x7x3072xf32> into tensor<7x3072xf32>
    %392 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_378 : tensor<7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x3072xf32>
    %393 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_377 : tensor<3072x768xf32>) outs(%80 : tensor<1x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3072x768xf32>
    %394 = linalg.batch_matmul ins(%392, %393 : tensor<1x7x3072xf32>, tensor<1x3072x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %395 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%394, %cst_119 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %396 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%395, %386 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %397 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%396 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %398 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%397 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_379 = tensor.collapse_shape %398 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %399 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_379 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %400 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%396, %399 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %401 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%400, %400 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %402 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%401 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %403 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%402 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %404 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%403 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %405 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%404 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_380 = tensor.collapse_shape %405 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %406 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_380 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %407 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%400, %406 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %408 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%407, %cst_120 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %409 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%408, %cst_121 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_381 = linalg.transpose ins(%cst_122 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_382 = tensor.collapse_shape %409 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %410 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_382 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %411 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_381 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %412 = linalg.batch_matmul ins(%410, %411 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %413 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%412, %cst_123 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_383 = tensor.expand_shape %413 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_384 = linalg.transpose ins(%expanded_383 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_385 = linalg.transpose ins(%cst_124 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %414 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_385 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %415 = linalg.batch_matmul ins(%410, %414 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %416 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%415, %cst_125 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_386 = tensor.expand_shape %416 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_387 = linalg.transpose ins(%expanded_386 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_388 = linalg.transpose ins(%cst_126 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %417 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_388 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %418 = linalg.batch_matmul ins(%410, %417 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %419 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%418, %cst_127 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_389 = tensor.expand_shape %419 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_390 = linalg.transpose ins(%expanded_389 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %collapsed_391 = tensor.collapse_shape %transposed_384 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_392 = tensor.collapse_shape %transposed_387 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_393 = tensor.collapse_shape %transposed_390 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %420 = tm_tensor.attention ins(%collapsed_391, %collapsed_392, %collapsed_393, %collapsed_218 : tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x7xf32>) outs(%48 : tensor<12x7x64xf32>) -> tensor<12x7x64xf32>
    %expanded_394 = tensor.expand_shape %420 [[0, 1], [2], [3]] output_shape [1, 12, 7, 64] : tensor<12x7x64xf32> into tensor<1x12x7x64xf32>
    %transposed_395 = linalg.transpose ins(%expanded_394 : tensor<1x12x7x64xf32>) outs(%50 : tensor<1x7x12x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_396 = linalg.transpose ins(%cst_128 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_397 = tensor.collapse_shape %transposed_395 [[0, 1], [2, 3]] : tensor<1x7x12x64xf32> into tensor<7x768xf32>
    %421 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_397 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %422 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_396 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %423 = linalg.batch_matmul ins(%421, %422 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %424 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%423, %cst_129 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %425 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%424, %409 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %426 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%425 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %427 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%426 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_398 = tensor.collapse_shape %427 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %428 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_398 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %429 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%425, %428 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %430 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%429, %429 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %431 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%430 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %432 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%431 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %433 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%432 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %434 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%433 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_399 = tensor.collapse_shape %434 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %435 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_399 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %436 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%429, %435 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %437 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%436, %cst_130 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %438 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%437, %cst_131 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_400 = linalg.transpose ins(%cst_132 : tensor<3072x768xf32>) outs(%69 : tensor<768x3072xf32>) permutation = [1, 0] 
    %collapsed_401 = tensor.collapse_shape %438 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %439 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_401 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %440 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_400 : tensor<768x3072xf32>) outs(%71 : tensor<1x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x3072xf32>
    %441 = linalg.batch_matmul ins(%439, %440 : tensor<1x7x768xf32>, tensor<1x768x3072xf32>) outs(%74 : tensor<1x7x3072xf32>) -> tensor<1x7x3072xf32>
    %442 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%441, %cst_133 : tensor<1x7x3072xf32>, tensor<3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x3072xf32>
    %443 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%442 : tensor<1x7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_4 : f32
      %671 = math.erf %670 : f32
      %672 = arith.addf %671, %cst_0 : f32
      %673 = arith.mulf %672, %cst_1 : f32
      %674 = arith.mulf %in, %673 : f32
      linalg.yield %674 : f32
    } -> tensor<1x7x3072xf32>
    %transposed_402 = linalg.transpose ins(%cst_134 : tensor<768x3072xf32>) outs(%78 : tensor<3072x768xf32>) permutation = [1, 0] 
    %collapsed_403 = tensor.collapse_shape %443 [[0, 1], [2]] : tensor<1x7x3072xf32> into tensor<7x3072xf32>
    %444 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_403 : tensor<7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x3072xf32>
    %445 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_402 : tensor<3072x768xf32>) outs(%80 : tensor<1x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3072x768xf32>
    %446 = linalg.batch_matmul ins(%444, %445 : tensor<1x7x3072xf32>, tensor<1x3072x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %447 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%446, %cst_135 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %448 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%447, %438 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %449 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%448 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %450 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%449 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_404 = tensor.collapse_shape %450 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %451 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_404 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %452 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%448, %451 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %453 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%452, %452 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %454 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%453 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %455 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%454 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %456 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%455 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %457 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%456 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_405 = tensor.collapse_shape %457 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %458 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_405 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %459 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%452, %458 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %460 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%459, %cst_136 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %461 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%460, %cst_137 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_406 = linalg.transpose ins(%cst_138 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_407 = tensor.collapse_shape %461 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %462 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_407 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %463 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_406 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %464 = linalg.batch_matmul ins(%462, %463 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %465 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%464, %cst_139 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_408 = tensor.expand_shape %465 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_409 = linalg.transpose ins(%expanded_408 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_410 = linalg.transpose ins(%cst_140 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %466 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_410 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %467 = linalg.batch_matmul ins(%462, %466 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %468 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%467, %cst_141 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_411 = tensor.expand_shape %468 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_412 = linalg.transpose ins(%expanded_411 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_413 = linalg.transpose ins(%cst_142 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %469 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_413 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %470 = linalg.batch_matmul ins(%462, %469 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %471 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%470, %cst_143 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_414 = tensor.expand_shape %471 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_415 = linalg.transpose ins(%expanded_414 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %collapsed_416 = tensor.collapse_shape %transposed_409 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_417 = tensor.collapse_shape %transposed_412 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_418 = tensor.collapse_shape %transposed_415 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %472 = tm_tensor.attention ins(%collapsed_416, %collapsed_417, %collapsed_418, %collapsed_218 : tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x7xf32>) outs(%48 : tensor<12x7x64xf32>) -> tensor<12x7x64xf32>
    %expanded_419 = tensor.expand_shape %472 [[0, 1], [2], [3]] output_shape [1, 12, 7, 64] : tensor<12x7x64xf32> into tensor<1x12x7x64xf32>
    %transposed_420 = linalg.transpose ins(%expanded_419 : tensor<1x12x7x64xf32>) outs(%50 : tensor<1x7x12x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_421 = linalg.transpose ins(%cst_144 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_422 = tensor.collapse_shape %transposed_420 [[0, 1], [2, 3]] : tensor<1x7x12x64xf32> into tensor<7x768xf32>
    %473 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_422 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %474 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_421 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %475 = linalg.batch_matmul ins(%473, %474 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %476 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%475, %cst_145 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %477 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%476, %461 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %478 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%477 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %479 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%478 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_423 = tensor.collapse_shape %479 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %480 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_423 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %481 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%477, %480 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %482 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%481, %481 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %483 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%482 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %484 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%483 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %485 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%484 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %486 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%485 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_424 = tensor.collapse_shape %486 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %487 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_424 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %488 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%481, %487 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %489 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%488, %cst_146 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %490 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%489, %cst_147 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_425 = linalg.transpose ins(%cst_148 : tensor<3072x768xf32>) outs(%69 : tensor<768x3072xf32>) permutation = [1, 0] 
    %collapsed_426 = tensor.collapse_shape %490 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %491 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_426 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %492 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_425 : tensor<768x3072xf32>) outs(%71 : tensor<1x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x3072xf32>
    %493 = linalg.batch_matmul ins(%491, %492 : tensor<1x7x768xf32>, tensor<1x768x3072xf32>) outs(%74 : tensor<1x7x3072xf32>) -> tensor<1x7x3072xf32>
    %494 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%493, %cst_149 : tensor<1x7x3072xf32>, tensor<3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x3072xf32>
    %495 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%494 : tensor<1x7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_4 : f32
      %671 = math.erf %670 : f32
      %672 = arith.addf %671, %cst_0 : f32
      %673 = arith.mulf %672, %cst_1 : f32
      %674 = arith.mulf %in, %673 : f32
      linalg.yield %674 : f32
    } -> tensor<1x7x3072xf32>
    %transposed_427 = linalg.transpose ins(%cst_150 : tensor<768x3072xf32>) outs(%78 : tensor<3072x768xf32>) permutation = [1, 0] 
    %collapsed_428 = tensor.collapse_shape %495 [[0, 1], [2]] : tensor<1x7x3072xf32> into tensor<7x3072xf32>
    %496 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_428 : tensor<7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x3072xf32>
    %497 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_427 : tensor<3072x768xf32>) outs(%80 : tensor<1x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3072x768xf32>
    %498 = linalg.batch_matmul ins(%496, %497 : tensor<1x7x3072xf32>, tensor<1x3072x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %499 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%498, %cst_151 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %500 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%499, %490 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %501 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%500 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %502 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%501 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_429 = tensor.collapse_shape %502 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %503 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_429 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %504 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%500, %503 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %505 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%504, %504 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %506 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%505 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %507 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%506 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %508 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%507 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %509 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%508 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_430 = tensor.collapse_shape %509 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %510 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_430 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %511 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%504, %510 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %512 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%511, %cst_152 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %513 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%512, %cst_153 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_431 = linalg.transpose ins(%cst_154 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_432 = tensor.collapse_shape %513 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %514 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_432 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %515 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_431 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %516 = linalg.batch_matmul ins(%514, %515 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %517 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%516, %cst_155 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_433 = tensor.expand_shape %517 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_434 = linalg.transpose ins(%expanded_433 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_435 = linalg.transpose ins(%cst_156 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %518 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_435 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %519 = linalg.batch_matmul ins(%514, %518 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %520 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%519, %cst_157 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_436 = tensor.expand_shape %520 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_437 = linalg.transpose ins(%expanded_436 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_438 = linalg.transpose ins(%cst_158 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %521 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_438 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %522 = linalg.batch_matmul ins(%514, %521 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %523 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%522, %cst_159 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_439 = tensor.expand_shape %523 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_440 = linalg.transpose ins(%expanded_439 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %collapsed_441 = tensor.collapse_shape %transposed_434 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_442 = tensor.collapse_shape %transposed_437 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_443 = tensor.collapse_shape %transposed_440 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %524 = tm_tensor.attention ins(%collapsed_441, %collapsed_442, %collapsed_443, %collapsed_218 : tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x7xf32>) outs(%48 : tensor<12x7x64xf32>) -> tensor<12x7x64xf32>
    %expanded_444 = tensor.expand_shape %524 [[0, 1], [2], [3]] output_shape [1, 12, 7, 64] : tensor<12x7x64xf32> into tensor<1x12x7x64xf32>
    %transposed_445 = linalg.transpose ins(%expanded_444 : tensor<1x12x7x64xf32>) outs(%50 : tensor<1x7x12x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_446 = linalg.transpose ins(%cst_160 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_447 = tensor.collapse_shape %transposed_445 [[0, 1], [2, 3]] : tensor<1x7x12x64xf32> into tensor<7x768xf32>
    %525 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_447 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %526 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_446 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %527 = linalg.batch_matmul ins(%525, %526 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %528 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%527, %cst_161 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %529 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%528, %513 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %530 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%529 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %531 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%530 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_448 = tensor.collapse_shape %531 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %532 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_448 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %533 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%529, %532 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %534 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%533, %533 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %535 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%534 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %536 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%535 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %537 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%536 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %538 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%537 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_449 = tensor.collapse_shape %538 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %539 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_449 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %540 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%533, %539 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %541 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%540, %cst_162 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %542 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%541, %cst_163 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_450 = linalg.transpose ins(%cst_164 : tensor<3072x768xf32>) outs(%69 : tensor<768x3072xf32>) permutation = [1, 0] 
    %collapsed_451 = tensor.collapse_shape %542 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %543 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_451 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %544 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_450 : tensor<768x3072xf32>) outs(%71 : tensor<1x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x3072xf32>
    %545 = linalg.batch_matmul ins(%543, %544 : tensor<1x7x768xf32>, tensor<1x768x3072xf32>) outs(%74 : tensor<1x7x3072xf32>) -> tensor<1x7x3072xf32>
    %546 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%545, %cst_165 : tensor<1x7x3072xf32>, tensor<3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x3072xf32>
    %547 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%546 : tensor<1x7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_4 : f32
      %671 = math.erf %670 : f32
      %672 = arith.addf %671, %cst_0 : f32
      %673 = arith.mulf %672, %cst_1 : f32
      %674 = arith.mulf %in, %673 : f32
      linalg.yield %674 : f32
    } -> tensor<1x7x3072xf32>
    %transposed_452 = linalg.transpose ins(%cst_166 : tensor<768x3072xf32>) outs(%78 : tensor<3072x768xf32>) permutation = [1, 0] 
    %collapsed_453 = tensor.collapse_shape %547 [[0, 1], [2]] : tensor<1x7x3072xf32> into tensor<7x3072xf32>
    %548 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_453 : tensor<7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x3072xf32>
    %549 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_452 : tensor<3072x768xf32>) outs(%80 : tensor<1x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3072x768xf32>
    %550 = linalg.batch_matmul ins(%548, %549 : tensor<1x7x3072xf32>, tensor<1x3072x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %551 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%550, %cst_167 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %552 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%551, %542 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %553 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%552 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %554 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%553 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_454 = tensor.collapse_shape %554 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %555 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_454 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %556 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%552, %555 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %557 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%556, %556 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %558 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%557 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %559 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%558 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %560 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%559 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %561 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%560 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_455 = tensor.collapse_shape %561 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %562 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_455 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %563 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%556, %562 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %564 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%563, %cst_168 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %565 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%564, %cst_169 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_456 = linalg.transpose ins(%cst_170 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_457 = tensor.collapse_shape %565 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %566 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_457 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %567 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_456 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %568 = linalg.batch_matmul ins(%566, %567 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %569 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%568, %cst_171 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_458 = tensor.expand_shape %569 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_459 = linalg.transpose ins(%expanded_458 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_460 = linalg.transpose ins(%cst_172 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %570 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_460 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %571 = linalg.batch_matmul ins(%566, %570 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %572 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%571, %cst_173 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_461 = tensor.expand_shape %572 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_462 = linalg.transpose ins(%expanded_461 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_463 = linalg.transpose ins(%cst_174 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %573 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_463 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %574 = linalg.batch_matmul ins(%566, %573 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %575 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%574, %cst_175 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_464 = tensor.expand_shape %575 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_465 = linalg.transpose ins(%expanded_464 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %collapsed_466 = tensor.collapse_shape %transposed_459 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_467 = tensor.collapse_shape %transposed_462 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_468 = tensor.collapse_shape %transposed_465 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %576 = tm_tensor.attention ins(%collapsed_466, %collapsed_467, %collapsed_468, %collapsed_218 : tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x7xf32>) outs(%48 : tensor<12x7x64xf32>) -> tensor<12x7x64xf32>
    %expanded_469 = tensor.expand_shape %576 [[0, 1], [2], [3]] output_shape [1, 12, 7, 64] : tensor<12x7x64xf32> into tensor<1x12x7x64xf32>
    %transposed_470 = linalg.transpose ins(%expanded_469 : tensor<1x12x7x64xf32>) outs(%50 : tensor<1x7x12x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_471 = linalg.transpose ins(%cst_176 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_472 = tensor.collapse_shape %transposed_470 [[0, 1], [2, 3]] : tensor<1x7x12x64xf32> into tensor<7x768xf32>
    %577 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_472 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %578 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_471 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %579 = linalg.batch_matmul ins(%577, %578 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %580 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%579, %cst_177 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %581 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%580, %565 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %582 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%581 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %583 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%582 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_473 = tensor.collapse_shape %583 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %584 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_473 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %585 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%581, %584 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %586 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%585, %585 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %587 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%586 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %588 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%587 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %589 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%588 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %590 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%589 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_474 = tensor.collapse_shape %590 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %591 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_474 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %592 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%585, %591 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %593 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%592, %cst_178 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %594 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%593, %cst_179 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_475 = linalg.transpose ins(%cst_180 : tensor<3072x768xf32>) outs(%69 : tensor<768x3072xf32>) permutation = [1, 0] 
    %collapsed_476 = tensor.collapse_shape %594 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %595 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_476 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %596 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_475 : tensor<768x3072xf32>) outs(%71 : tensor<1x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x3072xf32>
    %597 = linalg.batch_matmul ins(%595, %596 : tensor<1x7x768xf32>, tensor<1x768x3072xf32>) outs(%74 : tensor<1x7x3072xf32>) -> tensor<1x7x3072xf32>
    %598 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%597, %cst_181 : tensor<1x7x3072xf32>, tensor<3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x3072xf32>
    %599 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%598 : tensor<1x7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_4 : f32
      %671 = math.erf %670 : f32
      %672 = arith.addf %671, %cst_0 : f32
      %673 = arith.mulf %672, %cst_1 : f32
      %674 = arith.mulf %in, %673 : f32
      linalg.yield %674 : f32
    } -> tensor<1x7x3072xf32>
    %transposed_477 = linalg.transpose ins(%cst_182 : tensor<768x3072xf32>) outs(%78 : tensor<3072x768xf32>) permutation = [1, 0] 
    %collapsed_478 = tensor.collapse_shape %599 [[0, 1], [2]] : tensor<1x7x3072xf32> into tensor<7x3072xf32>
    %600 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_478 : tensor<7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x3072xf32>
    %601 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_477 : tensor<3072x768xf32>) outs(%80 : tensor<1x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3072x768xf32>
    %602 = linalg.batch_matmul ins(%600, %601 : tensor<1x7x3072xf32>, tensor<1x3072x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %603 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%602, %cst_183 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %604 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%603, %594 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %605 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%604 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %606 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%605 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_479 = tensor.collapse_shape %606 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %607 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_479 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %608 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%604, %607 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %609 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%608, %608 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %610 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%609 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %611 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%610 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %612 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%611 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %613 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%612 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_480 = tensor.collapse_shape %613 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %614 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_480 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %615 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%608, %614 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %616 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%615, %cst_184 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %617 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%616, %cst_185 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_481 = linalg.transpose ins(%cst_186 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_482 = tensor.collapse_shape %617 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %618 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_482 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %619 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_481 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %620 = linalg.batch_matmul ins(%618, %619 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %621 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%620, %cst_187 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_483 = tensor.expand_shape %621 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_484 = linalg.transpose ins(%expanded_483 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_485 = linalg.transpose ins(%cst_188 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %622 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_485 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %623 = linalg.batch_matmul ins(%618, %622 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %624 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%623, %cst_189 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_486 = tensor.expand_shape %624 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_487 = linalg.transpose ins(%expanded_486 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_488 = linalg.transpose ins(%cst_190 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %625 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_488 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %626 = linalg.batch_matmul ins(%618, %625 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %627 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%626, %cst_191 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %expanded_489 = tensor.expand_shape %627 [[0], [1], [2, 3]] output_shape [1, 7, 12, 64] : tensor<1x7x768xf32> into tensor<1x7x12x64xf32>
    %transposed_490 = linalg.transpose ins(%expanded_489 : tensor<1x7x12x64xf32>) outs(%38 : tensor<1x12x7x64xf32>) permutation = [0, 2, 1, 3] 
    %collapsed_491 = tensor.collapse_shape %transposed_484 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_492 = tensor.collapse_shape %transposed_487 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %collapsed_493 = tensor.collapse_shape %transposed_490 [[0, 1], [2], [3]] : tensor<1x12x7x64xf32> into tensor<12x7x64xf32>
    %628 = tm_tensor.attention ins(%collapsed_491, %collapsed_492, %collapsed_493, %collapsed_218 : tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x64xf32>, tensor<12x7x7xf32>) outs(%48 : tensor<12x7x64xf32>) -> tensor<12x7x64xf32>
    %expanded_494 = tensor.expand_shape %628 [[0, 1], [2], [3]] output_shape [1, 12, 7, 64] : tensor<12x7x64xf32> into tensor<1x12x7x64xf32>
    %transposed_495 = linalg.transpose ins(%expanded_494 : tensor<1x12x7x64xf32>) outs(%50 : tensor<1x7x12x64xf32>) permutation = [0, 2, 1, 3] 
    %transposed_496 = linalg.transpose ins(%cst_192 : tensor<768x768xf32>) outs(%31 : tensor<768x768xf32>) permutation = [1, 0] 
    %collapsed_497 = tensor.collapse_shape %transposed_495 [[0, 1], [2, 3]] : tensor<1x7x12x64xf32> into tensor<7x768xf32>
    %629 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_497 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %630 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_496 : tensor<768x768xf32>) outs(%33 : tensor<1x768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x768xf32>
    %631 = linalg.batch_matmul ins(%629, %630 : tensor<1x7x768xf32>, tensor<1x768x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %632 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%631, %cst_193 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %633 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%632, %617 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %634 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%633 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %635 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%634 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_498 = tensor.collapse_shape %635 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %636 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_498 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %637 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%633, %636 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %638 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%637, %637 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %639 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%638 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %640 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%639 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %641 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%640 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %642 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%641 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_499 = tensor.collapse_shape %642 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %643 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_499 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %644 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%637, %643 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %645 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%644, %cst_194 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %646 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%645, %cst_195 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %transposed_500 = linalg.transpose ins(%cst_196 : tensor<3072x768xf32>) outs(%69 : tensor<768x3072xf32>) permutation = [1, 0] 
    %collapsed_501 = tensor.collapse_shape %646 [[0, 1], [2]] : tensor<1x7x768xf32> into tensor<7x768xf32>
    %647 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_501 : tensor<7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %648 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_500 : tensor<768x3072xf32>) outs(%71 : tensor<1x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x3072xf32>
    %649 = linalg.batch_matmul ins(%647, %648 : tensor<1x7x768xf32>, tensor<1x768x3072xf32>) outs(%74 : tensor<1x7x3072xf32>) -> tensor<1x7x3072xf32>
    %650 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%649, %cst_197 : tensor<1x7x3072xf32>, tensor<3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x3072xf32>
    %651 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%650 : tensor<1x7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_4 : f32
      %671 = math.erf %670 : f32
      %672 = arith.addf %671, %cst_0 : f32
      %673 = arith.mulf %672, %cst_1 : f32
      %674 = arith.mulf %in, %673 : f32
      linalg.yield %674 : f32
    } -> tensor<1x7x3072xf32>
    %transposed_502 = linalg.transpose ins(%cst_198 : tensor<768x3072xf32>) outs(%78 : tensor<3072x768xf32>) permutation = [1, 0] 
    %collapsed_503 = tensor.collapse_shape %651 [[0, 1], [2]] : tensor<1x7x3072xf32> into tensor<7x3072xf32>
    %652 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_503 : tensor<7x3072xf32>) outs(%73 : tensor<1x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x3072xf32>
    %653 = linalg.generic {indexing_maps = [#map8, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_502 : tensor<3072x768xf32>) outs(%80 : tensor<1x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3072x768xf32>
    %654 = linalg.batch_matmul ins(%652, %653 : tensor<1x7x3072xf32>, tensor<1x3072x768xf32>) outs(%35 : tensor<1x7x768xf32>) -> tensor<1x7x768xf32>
    %655 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%654, %cst_199 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %656 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%655, %646 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %657 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%656 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %658 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%657 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_504 = tensor.collapse_shape %658 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %659 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_504 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %660 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%656, %659 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.subf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %661 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%660, %660 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %662 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%661 : tensor<1x7x768xf32>) outs(%7 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.addf %in, %out : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %663 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%662 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.divf %in, %cst_3 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %664 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%663 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = arith.truncf %cst_2 : f64 to f32
      %671 = arith.addf %in, %670 : f32
      linalg.yield %671 : f32
    } -> tensor<1x7x1xf32>
    %665 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%664 : tensor<1x7x1xf32>) outs(%6 : tensor<1x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %670 = math.rsqrt %in : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x1xf32>
    %collapsed_505 = tensor.collapse_shape %665 [[0], [1, 2]] : tensor<1x7x1xf32> into tensor<1x7xf32>
    %666 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_505 : tensor<1x7xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768xf32>
    %667 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%660, %666 : tensor<1x7x768xf32>, tensor<1x7x768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %668 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%667, %cst_200 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.mulf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    %669 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%668, %cst_201 : tensor<1x7x768xf32>, tensor<768xf32>) outs(%0 : tensor<1x7x768xf32>) {
    ^bb0(%in: f32, %in_506: f32, %out: f32):
      %670 = arith.addf %in, %in_506 : f32
      linalg.yield %670 : f32
    } -> tensor<1x7x768xf32>
    return %669 : tensor<1x7x768xf32>
  }
}
