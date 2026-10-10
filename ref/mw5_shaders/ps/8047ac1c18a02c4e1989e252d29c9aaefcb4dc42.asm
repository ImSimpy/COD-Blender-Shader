;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: a48accacee201bdef7d5fdc7db8cd664
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=1
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; COLOR                    0                 linear       
; TEXCOORDS                0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
;
; Buffer Definitions:
;
; cbuffer 
; {
;
;   [11728 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [128 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   sampler      NA          NA      S5             s4     1
;                                   sampler      NA          NA      S6             s5     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture    byte         r/o      T6      t3,space1     1
;                                   texture    byte         r/o      T7      t4,space1     1
;                                   texture    byte         r/o      T8      t5,space1     1
;                                   texture    byte         r/o      T9      t6,space1     1
;                                   texture     f32          2d     T10     t69,space2     1
;                                   texture    byte         r/o     T11     t49,space1     1
;                                   texture    byte         r/o     T12     t50,space1     1
;                                   texture    byte         r/o     T13     t51,space1     1
;                                   texture    byte         r/o     T14     t52,space1     1
;                                   texture    byte         r/o     T15     t16,space1     1
;                                   texture    byte         r/o     T16     t17,space1     1
;                                   texture     f32          2d     T17     t37,space2     1
;                                   texture     f32          2d     T18             t0     1
;                                   texture     f32          2d     T19     t58,space2     1
;                                   texture     f32          2d     T20     t59,space2     1
;                                   texture     f32          2d     T21     t60,space2     1
;                                   texture    byte         r/o     T22     t45,space1     1
;                                   texture    byte         r/o     T23     t46,space1     1
;                                   texture    byte         r/o     T24     t47,space1     1
;                                   texture    byte         r/o     T25     t48,space1     1
;                                   texture     f32          2d     T26     t57,space2     1
;                                   texture    byte         r/o     T27     t69,space1     1
;                                   texture     u32          2d     T28     t56,space2     1
;                                   texture     f32     2darray     T29     t35,space2     1
;                                   texture     f32          2d     T30     t34,space2     1
;                                   texture     f32          3d     T31     t31,space2     1
;                                   texture    byte         r/o     T32     t10,space1     1
;                                   texture    byte         r/o     T33      t1,space1     1
;                                   texture     f32          1d     T34     t32,space2     1
;                                   texture     f32     2darray     T35      t8,space2     1
;                                   texture     f32          2d     T36      t2,space2     1
;                                   texture     f32          2d     T37      t3,space2     1
;                                   texture     f32          2d     T38      t4,space2     1
;                                   textureunorm_f32     2darray     T39     t80,space2     1
;                                   texture    byte         r/o     T40     t67,space1     1
;                                   texture     f32          2d     T41      t7,space2     1
;                                   texture     f32          2d     T42      t6,space2     1
;                                   texture     f32          2d     T43      t5,space2     1
;                                   texture     f32          2d     T44     t38,space2     1
;                                   texture    byte         r/o     T45     t12,space1     1
;                                   texture    byte         r/o     T46     t13,space1     1
;                                   texture     f32          1d     T47     t30,space2     1
;                                   texture     f32          3d     T48     t44,space2     1
;                                   texture     f32          3d     T49     t45,space2     1
;                                   texture     f32     2darray     T50     t47,space2     1
;                                   textureunorm_f32     2darray     T51     t85,space2     1
;                                   texture     f32          2d     T52     t83,space2     1
;                                   texture     f32          2d     T53     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = alloca [4 x i32], align 4
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = alloca [12 x float], align 4
  %94 = alloca [12 x float], align 4
  %95 = alloca [4 x float], align 4
  %96 = alloca [4 x float], align 4
  %97 = alloca [4 x float], align 4
  %98 = alloca [3 x float], align 4
  %99 = alloca [3 x float], align 4
  %100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = fmul fast float %103, %89
  %105 = fmul fast float %103, %90
  %106 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %107 = bitcast float %106 to i32
  %108 = ashr i32 %107, 1
  %109 = sub nsw i32 1597250115, %108
  %110 = bitcast i32 %109 to float
  %111 = fmul fast float %110, %80
  %112 = fmul fast float %110, %81
  %113 = fmul fast float %110, %82
  %114 = fmul fast float %81, %78
  %115 = fmul fast float %82, %77
  %116 = fsub fast float %114, %115
  %117 = fmul fast float %82, %76
  %118 = fmul fast float %80, %78
  %119 = fsub fast float %117, %118
  %120 = fmul fast float %80, %77
  %121 = fmul fast float %81, %76
  %122 = fsub fast float %120, %121
  %123 = fmul fast float %116, %79
  %124 = fmul fast float %119, %79
  %125 = fmul fast float %122, %79
  %126 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %127 = bitcast float %126 to i32
  %128 = ashr i32 %127, 1
  %129 = sub nsw i32 1597250115, %128
  %130 = bitcast i32 %129 to float
  %131 = fmul fast float %130, %69
  %132 = fmul fast float %130, %70
  %133 = fmul fast float %130, %71
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %104, 2.000000e+00
  %138 = fmul fast float %137, %135
  %139 = fmul fast float %105, 2.000000e+00
  %140 = fmul fast float %139, %136
  %141 = fsub fast float 1.000000e+00, %138
  %142 = fsub fast float 1.000000e+00, %140
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = fmul fast float %141, %144
  %148 = fmul fast float %141, %145
  %149 = fmul fast float %141, %146
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = fmul fast float %142, %151
  %155 = fmul fast float %142, %152
  %156 = fmul fast float %142, %153
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = fadd fast float %154, %158
  %162 = fadd fast float %161, %147
  %163 = fadd fast float %155, %159
  %164 = fadd fast float %163, %148
  %165 = fadd fast float %156, %160
  %166 = fadd fast float %165, %149
  %167 = fmul fast float %162, %92
  %168 = fmul fast float %164, %92
  %169 = fmul fast float %166, %92
  %170 = add i32 %60, 360
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %170, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = extractvalue %dx.types.ResRet.i32 %171, 1
  %174 = extractvalue %dx.types.ResRet.i32 %171, 2
  %175 = extractvalue %dx.types.ResRet.i32 %171, 3
  %176 = bitcast i32 %172 to float
  %177 = bitcast i32 %173 to float
  %178 = bitcast i32 %174 to float
  %179 = bitcast i32 %175 to float
  %180 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %181 = call float @dx.op.unary.f32(i32 25, float %180)  ; Rsqrt(value)
  %182 = fmul fast float %181, %111
  %183 = fmul fast float %181, %112
  %184 = fmul fast float %181, %113
  %185 = call float @dx.op.dot3.f32(i32 55, float %167, float %168, float %169, float %167, float %168, float %169)  ; Dot3(ax,ay,az,bx,by,bz)
  %186 = call float @dx.op.unary.f32(i32 25, float %185)  ; Rsqrt(value)
  %187 = fmul fast float %186, %167
  %188 = fmul fast float %186, %168
  %189 = fmul fast float %186, %169
  %190 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %182, float %183, float %184)  ; Dot3(ax,ay,az,bx,by,bz)
  %191 = fmul fast float %190, %190
  %192 = fmul fast float %191, %178
  %193 = fadd fast float %192, %179
  %194 = call float @dx.op.unary.f32(i32 7, float %193)  ; Saturate(value)
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 3
  %197 = fmul fast float %196, %185
  %198 = fsub fast float %176, %197
  %199 = fmul fast float %198, %177
  %200 = call float @dx.op.unary.f32(i32 7, float %199)  ; Saturate(value)
  %201 = fmul fast float %200, %194
  %202 = fmul fast float %104, 5.000000e-01
  %203 = fmul fast float %105, 5.000000e-01
  %204 = fptosi float %202 to i32
  %205 = fptosi float %203 to i32
  %206 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %204, i32 %205, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = lshr i32 %207, 18
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %209, 0x3F4C00EBA0000000
  %211 = call float @dx.op.unary.f32(i32 21, float %210)  ; Exp(value)
  %212 = fadd fast float %211, -1.000000e+00
  %213 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %214 = extractvalue %dx.types.Dimensions %213, 0
  %215 = sitofp i32 %214 to float
  %216 = extractvalue %dx.types.Dimensions %213, 1
  %217 = sitofp i32 %216 to float
  %218 = fcmp fast oge float %202, %215
  %219 = fcmp fast oge float %203, %217
  %220 = or i1 %218, %219
  %221 = select i1 %220, float 0x4197782600000000, float %212
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 2
  %224 = extractvalue %dx.types.CBufRet.f32 %222, 3
  %225 = fmul fast float %223, %104
  %226 = fmul fast float %224, %105
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 114688
  %230 = icmp ne i32 %229, 0
  %231 = select i1 %230, float %225, float 0.000000e+00
  %232 = select i1 %230, float %226, float 0.000000e+00
  %233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %55, float %231, float %232, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = fmul fast float %234, 2.550000e+02
  %236 = fptoui float %235 to i32
  %237 = select i1 %230, i32 %236, i32 0
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.i32 %239, 3
  %241 = and i32 %240, 3
  %242 = icmp ne i32 %241, 0
  %243 = and i32 %240, 4
  %244 = icmp ne i32 %243, 0
  %245 = and i1 %242, %244
  br i1 %245, label %246, label %257

; <label>:246                                     ; preds = %0
  %247 = extractvalue %dx.types.CBufRet.f32 %238, 3
  %248 = fmul fast float %247, %105
  %249 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %250 = fmul fast float %249, %104
  %251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %54, float %250, float %248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = fsub fast float 1.000000e+00, %252
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = fcmp fast olt float %253, %255
  br label %260

; <label>:257                                     ; preds = %0
  %258 = icmp eq i32 %243, 0
  %259 = and i1 %242, %258
  br label %260

; <label>:260                                     ; preds = %257, %246
  %261 = phi i1 [ %256, %246 ], [ %259, %257 ]
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %264 = fmul fast float %263, 0x3FE3C6EF40000000
  %265 = frem fast float %104, 2.560000e+02
  %266 = frem fast float %105, 2.560000e+02
  %267 = fptoui float %265 to i32
  %268 = fptoui float %266 to i32
  %269 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %267, i32 %268, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = fadd fast float %270, %264
  %272 = call float @dx.op.unary.f32(i32 22, float %271)  ; Frc(value)
  %273 = add i32 %60, 156
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = shl i32 %275, 4
  %277 = and i32 %276, 32752
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %275, 7
  %280 = and i32 %279, 32752
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %275, 22
  %283 = shl nuw nsw i32 %282, 5
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = add i32 %60, 216
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = lshr i32 %287, 8
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %287, 16
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = add i32 %60, 36
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 65535
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %301, 16
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = add i32 %60, 288
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = fmul fast float %310, 0x3F50624DE0000000
  %314 = fmul fast float %312, 0x3F50624DE0000000
  %315 = add i32 %60, 172
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = shl i32 %317, 4
  %319 = and i32 %318, 32752
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %317, 7
  %322 = and i32 %321, 32752
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %317, 22
  %325 = shl nuw nsw i32 %324, 5
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = add i32 %60, 232
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = lshr i32 %329, 8
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = lshr i32 %329, 16
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = add i32 %60, 52
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 65535
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %343, 16
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = add i32 %60, 304
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 65535
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %350, 16
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = fmul fast float %352, 0x3F50624DE0000000
  %356 = fmul fast float %354, 0x3F50624DE0000000
  %357 = add i32 %60, 188
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = shl i32 %359, 4
  %361 = and i32 %360, 32752
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %359, 7
  %364 = and i32 %363, 32752
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %359, 22
  %367 = shl nuw nsw i32 %366, 5
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = add i32 %60, 248
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 255
  %373 = uitofp i32 %372 to float
  %374 = fmul fast float %373, 0x3F70101020000000
  %375 = lshr i32 %371, 8
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = lshr i32 %371, 16
  %380 = and i32 %379, 255
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F70101020000000
  %383 = add i32 %60, 68
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 65535
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = lshr i32 %385, 16
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = add i32 %60, 320
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 65535
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = lshr i32 %392, 16
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = fmul fast float %394, 0x3F50624DE0000000
  %398 = fmul fast float %396, 0x3F50624DE0000000
  %399 = add i32 %60, 204
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = shl i32 %401, 4
  %403 = and i32 %402, 32752
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = lshr i32 %401, 7
  %406 = and i32 %405, 32752
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = lshr i32 %401, 22
  %409 = shl nuw nsw i32 %408, 5
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = add i32 %60, 264
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 255
  %415 = uitofp i32 %414 to float
  %416 = fmul fast float %415, 0x3F70101020000000
  %417 = lshr i32 %413, 8
  %418 = and i32 %417, 255
  %419 = uitofp i32 %418 to float
  %420 = fmul fast float %419, 0x3F70101020000000
  %421 = lshr i32 %413, 16
  %422 = and i32 %421, 255
  %423 = uitofp i32 %422 to float
  %424 = fmul fast float %423, 0x3F70101020000000
  %425 = add i32 %60, 84
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %427, 65535
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = lshr i32 %427, 16
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = add i32 %60, 336
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 65535
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = lshr i32 %434, 16
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = fmul fast float %436, 0x3F50624DE0000000
  %440 = fmul fast float %438, 0x3F50624DE0000000
  %441 = add i32 %60, 348
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 32
  %445 = icmp eq i32 %444, 0
  %446 = and i32 %443, 64
  %447 = icmp eq i32 %446, 0
  %448 = and i32 %443, 128
  %449 = icmp eq i32 %448, 0
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 2
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %469, label %454

; <label>:454                                     ; preds = %260
  %455 = add i32 %60, 520
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = add i32 %457, 0
  %459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %458, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %460 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %459, %dx.types.Handle %101, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = extractvalue %dx.types.ResRet.f32 %460, 2
  %464 = extractvalue %dx.types.ResRet.f32 %460, 3
  %465 = fmul fast float %464, %85
  %466 = fmul fast float %461, %86
  %467 = fmul fast float %462, %87
  %468 = fmul fast float %463, %88
  br label %469

; <label>:469                                     ; preds = %454, %260
  %470 = phi float [ %88, %260 ], [ %468, %454 ]
  %471 = phi float [ %87, %260 ], [ %467, %454 ]
  %472 = phi float [ %86, %260 ], [ %466, %454 ]
  %473 = phi float [ %85, %260 ], [ %465, %454 ]
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 2
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %497, label %478

; <label>:478                                     ; preds = %469
  %479 = add i32 %60, 44
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = and i32 %481, 1
  %483 = icmp ne i32 %482, 0
  %484 = select i1 %483, float %472, float 1.000000e+00
  %485 = add i32 %60, 60
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = and i32 %487, 1
  %489 = icmp ne i32 %488, 0
  %490 = select i1 %489, float %471, float 1.000000e+00
  %491 = add i32 %60, 76
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = and i32 %493, 1
  %495 = icmp ne i32 %494, 0
  %496 = select i1 %495, float %470, float 1.000000e+00
  br label %497

; <label>:497                                     ; preds = %478, %469
  %498 = phi float [ %470, %469 ], [ %496, %478 ]
  %499 = phi float [ %471, %469 ], [ %490, %478 ]
  %500 = phi float [ %472, %469 ], [ %484, %478 ]
  %501 = lshr i32 %475, 20
  %502 = and i32 %501, 3
  %503 = add nuw nsw i32 %502, 1
  %504 = add i32 %60, 24
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = add i32 %60, 28
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = or i32 %509, %506
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %1161, label %512

; <label>:512                                     ; preds = %497
  %513 = and i32 %506, 262144
  %514 = icmp ne i32 %513, 0
  %515 = select i1 %514, float %63, float 1.000000e+00
  %516 = select i1 %514, float %64, float 0.000000e+00
  %517 = select i1 %514, float %65, float 0.000000e+00
  %518 = select i1 %514, float %66, float 1.000000e+00
  %519 = select i1 %514, float %67, float %83
  %520 = select i1 %514, float %68, float %84
  %521 = add i32 %60, 284
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = lshr i32 %523, 16
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = fmul fast float %525, 0x3F50624DE0000000
  %527 = add i32 %60, 88
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = lshr i32 %529, 16
  %531 = and i32 %530, 255
  %532 = lshr i32 %529, 24
  %533 = add i32 %60, 292
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = and i32 %535, 65535
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = lshr i32 %535, 16
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = add i32 %60, 32
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = lshr i32 %542, 22
  %544 = shl nuw nsw i32 %543, 5
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = shl i32 %542, 4
  %547 = and i32 %546, 32752
  %548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %547)  ; LegacyF16ToF32(value)
  %549 = lshr i32 %542, 7
  %550 = and i32 %549, 32752
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 3
  %554 = fmul fast float %553, 1.000000e+03
  %555 = fmul fast float %313, %554
  %556 = call float @dx.op.unary.f32(i32 22, float %555)  ; Frc(value)
  %557 = fadd fast float %556, %303
  %558 = fmul fast float %314, %554
  %559 = call float @dx.op.unary.f32(i32 22, float %558)  ; Frc(value)
  %560 = fadd fast float %559, %305
  %561 = fmul fast float %526, %554
  %562 = call float @dx.op.unary.f32(i32 22, float %561)  ; Frc(value)
  %563 = fmul fast float %562, 0x401921FB60000000
  %564 = fadd fast float %563, %545
  %565 = call float @dx.op.unary.f32(i32 13, float %564)  ; Sin(value)
  %566 = call float @dx.op.unary.f32(i32 12, float %564)  ; Cos(value)
  %567 = fsub fast float -0.000000e+00, %565
  %568 = fadd fast float %519, -5.000000e-01
  %569 = fadd fast float %520, -5.000000e-01
  %570 = fmul fast float %537, %568
  %571 = fmul fast float %539, %569
  %572 = fadd fast float %570, 5.000000e-01
  %573 = fadd fast float %571, 5.000000e-01
  %574 = fmul fast float %548, %572
  %575 = fmul fast float %551, %573
  %576 = fmul fast float %566, %574
  %577 = call float @dx.op.tertiary.f32(i32 46, float %567, float %575, float %576)  ; FMad(a,b,c)
  %578 = fmul fast float %565, %574
  %579 = call float @dx.op.tertiary.f32(i32 46, float %566, float %575, float %578)  ; FMad(a,b,c)
  %580 = fadd fast float %557, %577
  %581 = fadd fast float %560, %579
  %582 = icmp ugt i32 %531, 1
  %583 = icmp ugt i32 %529, 33554431
  %584 = or i1 %583, %582
  br i1 %584, label %585, label %610

; <label>:585                                     ; preds = %512
  %586 = add i32 %60, 228
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = lshr i32 %588, 16
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = fmul fast float %553, %590
  %592 = call float @dx.op.unary.f32(i32 22, float %591)  ; Frc(value)
  %593 = mul nuw nsw i32 %531, %532
  %594 = uitofp i32 %593 to float
  %595 = fmul fast float %592, %594
  %596 = call float @dx.op.unary.f32(i32 27, float %595)  ; Round_ni(value)
  %597 = fptoui float %596 to i32
  %598 = urem i32 %597, %531
  %599 = udiv i32 %597, %532
  %600 = call float @dx.op.unary.f32(i32 22, float %580)  ; Frc(value)
  %601 = call float @dx.op.unary.f32(i32 22, float %581)  ; Frc(value)
  %602 = uitofp i32 %598 to float
  %603 = uitofp i32 %599 to float
  %604 = fadd fast float %600, %602
  %605 = fadd fast float %601, %603
  %606 = uitofp i32 %531 to float
  %607 = uitofp i32 %532 to float
  %608 = fdiv fast float %604, %606
  %609 = fdiv fast float %605, %607
  br label %610

; <label>:610                                     ; preds = %585, %512
  %611 = phi float [ %608, %585 ], [ %580, %512 ]
  %612 = phi float [ %609, %585 ], [ %581, %512 ]
  %613 = and i32 %506, 16777216
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %724, label %615

; <label>:615                                     ; preds = %610
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 0
  %618 = extractvalue %dx.types.CBufRet.f32 %616, 1
  %619 = extractvalue %dx.types.CBufRet.f32 %616, 2
  %620 = fadd fast float %617, %167
  %621 = fadd fast float %618, %168
  %622 = fadd fast float %619, %169
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %625 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %626 = icmp eq i32 %61, 65535
  br i1 %626, label %721, label %627

; <label>:627                                     ; preds = %615
  %628 = lshr i32 %61, 1
  %629 = shl i32 %628, 2
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = and i32 %61, 1
  %633 = icmp ne i32 %632, 0
  %634 = lshr i32 %631, 16
  %635 = and i32 %631, 65535
  %636 = select i1 %633, i32 %634, i32 %635
  %637 = icmp eq i32 %636, 65535
  br i1 %637, label %717, label %638

; <label>:638                                     ; preds = %627
  %639 = mul nuw nsw i32 %636, 40
  %640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.f32 %640, 0
  %642 = extractvalue %dx.types.ResRet.f32 %640, 1
  %643 = extractvalue %dx.types.ResRet.f32 %640, 2
  %644 = add nuw nsw i32 %639, 12
  %645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.f32 %645, 0
  %647 = extractvalue %dx.types.ResRet.f32 %645, 1
  %648 = extractvalue %dx.types.ResRet.f32 %645, 2
  %649 = add nuw nsw i32 %639, 24
  %650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = extractvalue %dx.types.ResRet.f32 %650, 1
  %653 = extractvalue %dx.types.ResRet.f32 %650, 2
  %654 = add nuw nsw i32 %639, 36
  %655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.f32 %655, 0
  %657 = fsub fast float %620, %641
  %658 = fsub fast float %621, %642
  %659 = fsub fast float %622, %643
  %660 = fmul fast float %656, %657
  %661 = fmul fast float %656, %658
  %662 = fmul fast float %656, %659
  %663 = call float @dx.op.unary.f32(i32 27, float %660)  ; Round_ni(value)
  %664 = call float @dx.op.unary.f32(i32 27, float %661)  ; Round_ni(value)
  %665 = call float @dx.op.unary.f32(i32 27, float %662)  ; Round_ni(value)
  %666 = fadd fast float %663, 5.000000e-01
  %667 = fadd fast float %664, 5.000000e-01
  %668 = fadd fast float %665, 5.000000e-01
  %669 = fmul fast float %666, %646
  %670 = fmul fast float %667, %647
  %671 = fmul fast float %668, %648
  %672 = shl i32 %61, 2
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = add i32 %674, 0
  %676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %677 = call float @dx.op.unary.f32(i32 22, float %669)  ; Frc(value)
  %678 = call float @dx.op.unary.f32(i32 22, float %670)  ; Frc(value)
  %679 = call float @dx.op.unary.f32(i32 22, float %671)  ; Frc(value)
  %680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %676, %dx.types.Handle %55, float %677, float %678, float %679, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  %682 = extractvalue %dx.types.ResRet.f32 %680, 1
  %683 = extractvalue %dx.types.ResRet.f32 %680, 2
  %684 = fmul fast float %681, 1.023000e+03
  %685 = fmul fast float %682, 1.023000e+03
  %686 = fmul fast float %683, 1.023000e+03
  %687 = fadd fast float %684, 5.000000e-01
  %688 = fadd fast float %685, 5.000000e-01
  %689 = fadd fast float %686, 5.000000e-01
  %690 = call float @dx.op.unary.f32(i32 27, float %687)  ; Round_ni(value)
  %691 = call float @dx.op.unary.f32(i32 27, float %688)  ; Round_ni(value)
  %692 = call float @dx.op.unary.f32(i32 27, float %689)  ; Round_ni(value)
  %693 = fsub fast float %660, %663
  %694 = fsub fast float %661, %664
  %695 = fsub fast float %662, %665
  %696 = fmul fast float %693, 7.500000e-01
  %697 = fmul fast float %694, 7.500000e-01
  %698 = fmul fast float %695, 7.500000e-01
  %699 = fadd fast float %663, 1.250000e-01
  %700 = fadd fast float %699, %696
  %701 = fadd fast float %700, %690
  %702 = fadd fast float %664, 1.250000e-01
  %703 = fadd fast float %702, %697
  %704 = fadd fast float %703, %691
  %705 = fadd fast float %665, 1.250000e-01
  %706 = fadd fast float %705, %698
  %707 = fadd fast float %706, %692
  %708 = fmul fast float %701, %651
  %709 = fmul fast float %704, %652
  %710 = fmul fast float %707, %653
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = add i32 %712, 0
  %714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %714, %dx.types.Handle %53, float %708, float %709, float %710, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  br label %717

; <label>:717                                     ; preds = %638, %627
  %718 = phi float [ %716, %638 ], [ -1.000000e+00, %627 ]
  %719 = fadd fast float %718, %625
  %720 = call float @dx.op.unary.f32(i32 7, float %719)  ; Saturate(value)
  br label %721

; <label>:721                                     ; preds = %717, %615
  %722 = phi float [ %720, %717 ], [ %625, %615 ]
  %723 = fmul fast float %722, %473
  br label %724

; <label>:724                                     ; preds = %721, %610
  %725 = phi float [ %723, %721 ], [ %473, %610 ]
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 256
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %776, label %730

; <label>:730                                     ; preds = %724
  %731 = add i32 %60, 472
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = add i32 %733, 0
  %735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %735, %dx.types.Handle %101, float %611, float %612, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = add i32 %60, 100
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = shl i32 %740, 4
  %742 = and i32 %741, 32752
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = lshr i32 %740, 7
  %745 = and i32 %744, 32752
  %746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %745)  ; LegacyF16ToF32(value)
  %747 = fsub fast float 1.000000e+00, %725
  %748 = call float @dx.op.binary.f32(i32 35, float %747, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %749 = bitcast float %725 to i32
  %750 = sitofp i32 %749 to float
  %751 = fadd fast float %750, 0xC1CFBF8940000000
  %752 = fmul fast float %746, %751
  %753 = fadd fast float %752, 0x41CFBF8940000000
  %754 = fptosi float %753 to i32
  %755 = bitcast i32 %754 to float
  %756 = bitcast float %748 to i32
  %757 = sitofp i32 %756 to float
  %758 = fadd fast float %757, 0xC1CFBF8940000000
  %759 = fmul fast float %758, %746
  %760 = fadd fast float %759, 0x41CFBF8940000000
  %761 = fptosi float %760 to i32
  %762 = bitcast i32 %761 to float
  %763 = fmul fast float %755, %743
  %764 = fmul fast float %762, %743
  %765 = fsub fast float %748, %763
  %766 = fadd fast float %764, %748
  %767 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  %768 = call float @dx.op.unary.f32(i32 7, float %766)  ; Saturate(value)
  %769 = fsub fast float %737, %767
  %770 = fsub fast float %768, %767
  %771 = bitcast float %770 to i32
  %772 = sub nsw i32 2129859010, %771
  %773 = bitcast i32 %772 to float
  %774 = fmul fast float %773, %769
  %775 = call float @dx.op.unary.f32(i32 7, float %774)  ; Saturate(value)
  br label %776

; <label>:776                                     ; preds = %730, %724
  %777 = phi float [ %775, %730 ], [ %725, %724 ]
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = and i32 %779, 128
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %798, label %782

; <label>:782                                     ; preds = %776
  %783 = add i32 %60, 456
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = add i32 %785, 0
  %787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %788 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %787, %dx.types.Handle %101, float %611, float %612, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %789 = extractvalue %dx.types.ResRet.f32 %788, 0
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = and i32 %791, 524288
  %793 = icmp ne i32 %792, 0
  %794 = fcmp fast ogt float %789, 0x3FE0101020000000
  %795 = select i1 %794, float 1.000000e+00, float 0.000000e+00
  %796 = select i1 %793, float %795, float %789
  %797 = fmul fast float %796, %777
  br label %798

; <label>:798                                     ; preds = %782, %776
  %799 = phi float [ %797, %782 ], [ %777, %776 ]
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = and i32 %801, 16
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %1002, label %804

; <label>:804                                     ; preds = %798
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = add i32 %60, 408
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = add i32 %809, 0
  %811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %810, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %812 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %811, %dx.types.Handle %100, float %611, float %612, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %813 = extractvalue %dx.types.ResRet.f32 %812, 0
  %814 = extractvalue %dx.types.ResRet.f32 %812, 1
  %815 = extractvalue %dx.types.ResRet.f32 %812, 2
  %816 = extractvalue %dx.types.ResRet.f32 %812, 3
  %817 = and i32 %806, 255
  %818 = uitofp i32 %817 to float
  %819 = lshr i32 %806, 8
  %820 = and i32 %819, 255
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %816, %818
  %823 = fadd fast float %822, %821
  %824 = fmul fast float %823, 0x3F70101000000000
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = and i32 %826, 512
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %837, label %829

; <label>:829                                     ; preds = %804
  %830 = add i32 %60, 488
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = add i32 %832, 0
  %834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %833, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %835 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %834, %dx.types.Handle %101, float %611, float %612, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %836 = extractvalue %dx.types.ResRet.f32 %835, 0
  br label %837

; <label>:837                                     ; preds = %829, %804
  %838 = phi float [ %836, %829 ], [ 1.000000e+00, %804 ]
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = and i32 %840, 33554432
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %949, label %843

; <label>:843                                     ; preds = %837
  %844 = add i32 %60, 224
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = and i32 %846, 65535
  %848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %847)  ; LegacyF16ToF32(value)
  %849 = lshr i32 %846, 16
  %850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %849)  ; LegacyF16ToF32(value)
  %851 = add i32 %60, 228
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %851, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = and i32 %853, 65535
  %855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %854)  ; LegacyF16ToF32(value)
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = lshr i32 %857, 24
  %859 = uitofp i32 %858 to float
  %860 = fmul fast float %859, 0x3F70101020000000
  %861 = and i32 %857, 255
  %862 = uitofp i32 %861 to float
  %863 = fmul fast float %862, 0x3F70101020000000
  %864 = lshr i32 %857, 8
  %865 = and i32 %864, 255
  %866 = uitofp i32 %865 to float
  %867 = fmul fast float %866, 0x3F70101020000000
  %868 = lshr i32 %857, 16
  %869 = and i32 %868, 255
  %870 = uitofp i32 %869 to float
  %871 = fmul fast float %870, 0x3F70101020000000
  %872 = add i32 %60, 220
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = lshr i32 %874, 24
  %876 = uitofp i32 %875 to float
  %877 = fmul fast float %876, 0x3F70101020000000
  %878 = and i32 %874, 255
  %879 = uitofp i32 %878 to float
  %880 = fmul fast float %879, 0x3F70101020000000
  %881 = lshr i32 %874, 8
  %882 = and i32 %881, 255
  %883 = uitofp i32 %882 to float
  %884 = fmul fast float %883, 0x3F70101020000000
  %885 = lshr i32 %874, 16
  %886 = and i32 %885, 255
  %887 = uitofp i32 %886 to float
  %888 = fmul fast float %887, 0x3F70101020000000
  %889 = bitcast float %813 to i32
  %890 = ashr i32 %889, 1
  %891 = sub nsw i32 1597463174, %890
  %892 = bitcast i32 %891 to float
  %893 = fmul fast float %813, 5.000000e-01
  %894 = fmul fast float %892, %892
  %895 = fmul fast float %894, %893
  %896 = fsub fast float 1.500000e+00, %895
  %897 = fmul fast float %892, %813
  %898 = fmul fast float %897, %896
  %899 = bitcast float %814 to i32
  %900 = ashr i32 %899, 1
  %901 = sub nsw i32 1597463174, %900
  %902 = bitcast i32 %901 to float
  %903 = fmul fast float %814, 5.000000e-01
  %904 = fmul fast float %902, %902
  %905 = fmul fast float %904, %903
  %906 = fsub fast float 1.500000e+00, %905
  %907 = fmul fast float %902, %814
  %908 = fmul fast float %907, %906
  %909 = bitcast float %815 to i32
  %910 = ashr i32 %909, 1
  %911 = sub nsw i32 1597463174, %910
  %912 = bitcast i32 %911 to float
  %913 = fmul fast float %815, 5.000000e-01
  %914 = fmul fast float %912, %912
  %915 = fmul fast float %914, %913
  %916 = fsub fast float 1.500000e+00, %915
  %917 = fmul fast float %912, %815
  %918 = fmul fast float %917, %916
  %919 = fsub fast float %898, %880
  %920 = fsub fast float %908, %884
  %921 = fsub fast float %918, %888
  %922 = fmul fast float %919, %848
  %923 = fmul fast float %920, %850
  %924 = fmul fast float %921, %855
  %925 = fadd fast float %922, %863
  %926 = fadd fast float %923, %867
  %927 = fadd fast float %924, %871
  %928 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  %929 = call float @dx.op.unary.f32(i32 7, float %926)  ; Saturate(value)
  %930 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %931 = fmul fast float %928, %928
  %932 = fmul fast float %929, %929
  %933 = fmul fast float %930, %930
  %934 = fsub fast float %931, %813
  %935 = fsub fast float %932, %814
  %936 = fsub fast float %933, %815
  %937 = fmul fast float %934, %838
  %938 = fmul fast float %935, %838
  %939 = fmul fast float %936, %838
  %940 = fadd fast float %937, %813
  %941 = fadd fast float %938, %814
  %942 = fadd fast float %939, %815
  %943 = fadd fast float %860, %824
  %944 = fsub fast float %943, %877
  %945 = call float @dx.op.unary.f32(i32 7, float %944)  ; Saturate(value)
  %946 = fsub fast float %945, %824
  %947 = fmul fast float %946, %838
  %948 = fadd fast float %947, %824
  br label %1002

; <label>:949                                     ; preds = %837
  %950 = and i32 %840, 134217728
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %986, label %952

; <label>:952                                     ; preds = %949
  %953 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %954 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %955 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %956 = fadd fast float %953, -5.000000e-01
  %957 = fadd fast float %954, -5.000000e-01
  %958 = fadd fast float %955, -5.000000e-01
  %959 = fmul fast float %956, %838
  %960 = fmul fast float %957, %838
  %961 = fmul fast float %958, %838
  %962 = fadd fast float %959, 5.000000e-01
  %963 = fadd fast float %960, 5.000000e-01
  %964 = fadd fast float %961, 5.000000e-01
  %965 = call float @dx.op.unary.f32(i32 24, float %813)  ; Sqrt(value)
  %966 = call float @dx.op.unary.f32(i32 24, float %814)  ; Sqrt(value)
  %967 = call float @dx.op.unary.f32(i32 24, float %815)  ; Sqrt(value)
  %968 = fmul fast float %962, 2.000000e+00
  %969 = fsub fast float 1.000000e+00, %968
  %970 = fmul fast float %969, %965
  %971 = fadd fast float %970, %968
  %972 = fmul fast float %971, %965
  %973 = fmul fast float %963, 2.000000e+00
  %974 = fsub fast float 1.000000e+00, %973
  %975 = fmul fast float %974, %966
  %976 = fadd fast float %975, %973
  %977 = fmul fast float %976, %966
  %978 = fmul fast float %964, 2.000000e+00
  %979 = fsub fast float 1.000000e+00, %978
  %980 = fmul fast float %979, %967
  %981 = fadd fast float %980, %978
  %982 = fmul fast float %981, %967
  %983 = fmul fast float %972, %972
  %984 = fmul fast float %977, %977
  %985 = fmul fast float %982, %982
  br label %1002

; <label>:986                                     ; preds = %949
  %987 = fmul fast float %290, %290
  %988 = fmul fast float %294, %294
  %989 = fmul fast float %298, %298
  %990 = fadd fast float %987, -1.000000e+00
  %991 = fadd fast float %988, -1.000000e+00
  %992 = fadd fast float %989, -1.000000e+00
  %993 = fmul fast float %838, %990
  %994 = fmul fast float %838, %991
  %995 = fmul fast float %838, %992
  %996 = fadd fast float %993, 1.000000e+00
  %997 = fadd fast float %994, 1.000000e+00
  %998 = fadd fast float %995, 1.000000e+00
  %999 = fmul fast float %996, %813
  %1000 = fmul fast float %997, %814
  %1001 = fmul fast float %998, %815
  br label %1002

; <label>:1002                                    ; preds = %986, %952, %843, %798
  %1003 = phi float [ %948, %843 ], [ %824, %952 ], [ %824, %986 ], [ 0x3FA23C0BE0000000, %798 ]
  %1004 = phi float [ %940, %843 ], [ %983, %952 ], [ %999, %986 ], [ 1.000000e+00, %798 ]
  %1005 = phi float [ %941, %843 ], [ %984, %952 ], [ %1000, %986 ], [ 1.000000e+00, %798 ]
  %1006 = phi float [ %942, %843 ], [ %985, %952 ], [ %1001, %986 ], [ 1.000000e+00, %798 ]
  %1007 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.i32 %1007, 1
  %1009 = and i32 %1008, 1
  %1010 = icmp ne i32 %1009, 0
  %1011 = add i32 %60, 356
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = and i32 %1013, 32
  %1015 = icmp ne i32 %1014, 0
  %1016 = and i1 %1010, %1015
  %1017 = select i1 %1016, float 1.000000e+00, float %1004
  %1018 = select i1 %1016, float 0x3FD3333340000000, float %1005
  %1019 = select i1 %1016, float 0x3FD3333340000000, float %1006
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = and i32 %1021, 32
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1096, label %1024

; <label>:1024                                    ; preds = %1002
  %1025 = add i32 %60, 92
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = add i32 %60, 424
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = add i32 %1030, 0
  %1032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1033 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1032, %dx.types.Handle %100, float %611, float %612, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1037 = extractvalue %dx.types.ResRet.f32 %1033, 3
  %1038 = and i32 %1027, 255
  %1039 = uitofp i32 %1038 to float
  %1040 = lshr i32 %1027, 8
  %1041 = and i32 %1040, 255
  %1042 = uitofp i32 %1041 to float
  %1043 = lshr i32 %1027, 16
  %1044 = and i32 %1043, 255
  %1045 = uitofp i32 %1044 to float
  %1046 = fmul fast float %1045, 0x3F70101000000000
  %1047 = fmul fast float %1034, %1039
  %1048 = fadd fast float %1047, %1042
  %1049 = fmul fast float %1048, 0x3F70101000000000
  %1050 = fadd fast float %1035, -5.000000e-01
  %1051 = fadd fast float %1037, -5.000000e-01
  %1052 = fmul fast float %1050, %1046
  %1053 = fmul fast float %1051, %1046
  %1054 = fadd fast float %1052, 5.000000e-01
  %1055 = fadd fast float %1053, 5.000000e-01
  %1056 = fmul fast float %1054, 2.000000e+00
  %1057 = fadd fast float %1056, -1.000000e+00
  %1058 = fmul fast float %1055, 2.000000e+00
  %1059 = fadd fast float %1058, -1.000000e+00
  %1060 = fadd fast float %1057, %1059
  %1061 = fmul fast float %1060, 5.000000e-01
  %1062 = fsub fast float %1057, %1059
  %1063 = fmul fast float %1062, 5.000000e-01
  %1064 = call float @dx.op.unary.f32(i32 6, float %1061)  ; FAbs(value)
  %1065 = fsub fast float 1.000000e+00, %1064
  %1066 = call float @dx.op.unary.f32(i32 6, float %1063)  ; FAbs(value)
  %1067 = fsub fast float %1065, %1066
  %1068 = call float @dx.op.dot3.f32(i32 55, float %1061, float %1063, float %1067, float %1061, float %1063, float %1067)  ; Dot3(ax,ay,az,bx,by,bz)
  %1069 = call float @dx.op.unary.f32(i32 25, float %1068)  ; Rsqrt(value)
  %1070 = fmul fast float %1061, %1069
  %1071 = fmul fast float %1063, %1069
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = and i32 %1073, 67108864
  %1075 = icmp eq i32 %1074, 0
  br i1 %1075, label %1092, label %1076

; <label>:1076                                    ; preds = %1024
  %1077 = add i32 %60, 280
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = and i32 %1079, 65535
  %1081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1080)  ; LegacyF16ToF32(value)
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = and i32 %1083, 65535
  %1085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1084)  ; LegacyF16ToF32(value)
  %1086 = lshr i32 %1079, 16
  %1087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1086)  ; LegacyF16ToF32(value)
  %1088 = fsub fast float %1049, %1087
  %1089 = fmul fast float %1088, %1081
  %1090 = fadd fast float %1089, %1085
  %1091 = call float @dx.op.unary.f32(i32 7, float %1090)  ; Saturate(value)
  br label %1092

; <label>:1092                                    ; preds = %1076, %1024
  %1093 = phi float [ %1091, %1076 ], [ %1049, %1024 ]
  %1094 = call float @dx.op.dot2.f32(i32 54, float %1070, float %1071, float %515, float %516)  ; Dot2(ax,ay,bx,by)
  %1095 = call float @dx.op.dot2.f32(i32 54, float %1070, float %1071, float %517, float %518)  ; Dot2(ax,ay,bx,by)
  br label %1096

; <label>:1096                                    ; preds = %1092, %1002
  %1097 = phi float [ %1093, %1092 ], [ 0x3FD6666660000000, %1002 ]
  %1098 = phi float [ %1094, %1092 ], [ 0.000000e+00, %1002 ]
  %1099 = phi float [ %1095, %1092 ], [ 0.000000e+00, %1002 ]
  %1100 = phi float [ %1036, %1092 ], [ 1.000000e+00, %1002 ]
  %1101 = add i32 %60, 160
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = lshr i32 %1103, 22
  %1105 = shl nuw nsw i32 %1104, 5
  %1106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1105)  ; LegacyF16ToF32(value)
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 64
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1144, label %1111

; <label>:1111                                    ; preds = %1096
  %1112 = add i32 %60, 440
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = add i32 %1114, 0
  %1116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = and i32 %1118, 131072
  %1120 = icmp eq i32 %1119, 0
  %1121 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1116, %dx.types.Handle %100, float %611, float %612, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1122 = extractvalue %dx.types.ResRet.f32 %1121, 0
  %1123 = extractvalue %dx.types.ResRet.f32 %1121, 1
  %1124 = extractvalue %dx.types.ResRet.f32 %1121, 2
  %1125 = fmul fast float %1122, %278
  %1126 = fmul fast float %1123, %281
  %1127 = fmul fast float %1124, %284
  br i1 %1120, label %1134, label %1128

; <label>:1128                                    ; preds = %1111
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 0
  %1131 = fmul fast float %1130, %1125
  %1132 = fmul fast float %1130, %1126
  %1133 = fmul fast float %1130, %1127
  br label %1134

; <label>:1134                                    ; preds = %1128, %1111
  %1135 = phi float [ %1131, %1128 ], [ %1125, %1111 ]
  %1136 = phi float [ %1132, %1128 ], [ %1126, %1111 ]
  %1137 = phi float [ %1133, %1128 ], [ %1127, %1111 ]
  %1138 = fmul fast float %1135, %1106
  %1139 = select i1 %261, float %1138, float %1135
  %1140 = call float @dx.op.dot3.f32(i32 55, float %1139, float %1136, float %1137, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1141 = select i1 %261, float 0.000000e+00, float %1135
  %1142 = select i1 %261, float %1140, float %1136
  %1143 = select i1 %261, float 0.000000e+00, float %1137
  br label %1144

; <label>:1144                                    ; preds = %1134, %1096
  %1145 = phi float [ %1141, %1134 ], [ 0.000000e+00, %1096 ]
  %1146 = phi float [ %1142, %1134 ], [ 0.000000e+00, %1096 ]
  %1147 = phi float [ %1143, %1134 ], [ 0.000000e+00, %1096 ]
  %1148 = add i32 %60, 96
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = and i32 %1150, 255
  %1152 = uitofp i32 %1151 to float
  %1153 = lshr i32 %1150, 8
  %1154 = and i32 %1153, 255
  %1155 = uitofp i32 %1154 to float
  %1156 = call float @dx.op.dot3.f32(i32 55, float %1017, float %1018, float %1019, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1157 = fmul fast float %1155, %1156
  %1158 = fadd fast float %1157, %1152
  %1159 = fmul fast float %1158, 0x3F70101020000000
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  br label %1161

; <label>:1161                                    ; preds = %1144, %497
  %1162 = phi float [ 0.000000e+00, %497 ], [ %1098, %1144 ]
  %1163 = phi float [ 0.000000e+00, %497 ], [ %1099, %1144 ]
  %1164 = phi float [ 0.000000e+00, %497 ], [ %1017, %1144 ]
  %1165 = phi float [ 0.000000e+00, %497 ], [ %1018, %1144 ]
  %1166 = phi float [ 0.000000e+00, %497 ], [ %1019, %1144 ]
  %1167 = phi float [ 0.000000e+00, %497 ], [ %1145, %1144 ]
  %1168 = phi float [ 0.000000e+00, %497 ], [ %1146, %1144 ]
  %1169 = phi float [ 0.000000e+00, %497 ], [ %1147, %1144 ]
  %1170 = phi float [ 0.000000e+00, %497 ], [ %1003, %1144 ]
  %1171 = phi float [ 0.000000e+00, %497 ], [ %799, %1144 ]
  %1172 = phi float [ 0.000000e+00, %497 ], [ %1097, %1144 ]
  %1173 = phi float [ 0.000000e+00, %497 ], [ %1100, %1144 ]
  %1174 = phi float [ 0.000000e+00, %497 ], [ %1160, %1144 ]
  br i1 %445, label %2016, label %1175

; <label>:1175                                    ; preds = %1161
  %1176 = icmp ult i32 %503, 2
  %1177 = add i32 %60, 40
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = add i32 %60, 44
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = or i32 %1182, %1179
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %2016, label %1185

; <label>:1185                                    ; preds = %1175
  %1186 = and i32 %1179, 262144
  %1187 = icmp ne i32 %1186, 0
  %1188 = select i1 %1187, float %63, float 1.000000e+00
  %1189 = select i1 %1187, float %64, float 0.000000e+00
  %1190 = select i1 %1187, float %65, float 0.000000e+00
  %1191 = select i1 %1187, float %66, float 1.000000e+00
  %1192 = select i1 %1187, float %67, float %83
  %1193 = select i1 %1187, float %68, float %84
  %1194 = add i32 %60, 300
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = lshr i32 %1196, 16
  %1198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1197)  ; LegacyF16ToF32(value)
  %1199 = fmul fast float %1198, 0x3F50624DE0000000
  %1200 = add i32 %60, 104
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = lshr i32 %1202, 16
  %1204 = and i32 %1203, 255
  %1205 = lshr i32 %1202, 24
  %1206 = add i32 %60, 308
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = and i32 %1208, 65535
  %1210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1209)  ; LegacyF16ToF32(value)
  %1211 = lshr i32 %1208, 16
  %1212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1211)  ; LegacyF16ToF32(value)
  %1213 = add i32 %60, 48
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = lshr i32 %1215, 22
  %1217 = shl nuw nsw i32 %1216, 5
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = shl i32 %1215, 4
  %1220 = and i32 %1219, 32752
  %1221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1220)  ; LegacyF16ToF32(value)
  %1222 = lshr i32 %1215, 7
  %1223 = and i32 %1222, 32752
  %1224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1223)  ; LegacyF16ToF32(value)
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 3
  %1227 = fmul fast float %1226, 1.000000e+03
  %1228 = fmul fast float %355, %1227
  %1229 = call float @dx.op.unary.f32(i32 22, float %1228)  ; Frc(value)
  %1230 = fadd fast float %1229, %345
  %1231 = fmul fast float %356, %1227
  %1232 = call float @dx.op.unary.f32(i32 22, float %1231)  ; Frc(value)
  %1233 = fadd fast float %1232, %347
  %1234 = fmul fast float %1199, %1227
  %1235 = call float @dx.op.unary.f32(i32 22, float %1234)  ; Frc(value)
  %1236 = fmul fast float %1235, 0x401921FB60000000
  %1237 = fadd fast float %1236, %1218
  %1238 = call float @dx.op.unary.f32(i32 13, float %1237)  ; Sin(value)
  %1239 = call float @dx.op.unary.f32(i32 12, float %1237)  ; Cos(value)
  %1240 = fsub fast float -0.000000e+00, %1238
  %1241 = fadd fast float %1192, -5.000000e-01
  %1242 = fadd fast float %1193, -5.000000e-01
  %1243 = fmul fast float %1210, %1241
  %1244 = fmul fast float %1212, %1242
  %1245 = fadd fast float %1243, 5.000000e-01
  %1246 = fadd fast float %1244, 5.000000e-01
  %1247 = fmul fast float %1221, %1245
  %1248 = fmul fast float %1224, %1246
  %1249 = fmul fast float %1239, %1247
  %1250 = call float @dx.op.tertiary.f32(i32 46, float %1240, float %1248, float %1249)  ; FMad(a,b,c)
  %1251 = fmul fast float %1238, %1247
  %1252 = call float @dx.op.tertiary.f32(i32 46, float %1239, float %1248, float %1251)  ; FMad(a,b,c)
  %1253 = fadd fast float %1230, %1250
  %1254 = fadd fast float %1233, %1252
  %1255 = icmp ugt i32 %1204, 1
  %1256 = icmp ugt i32 %1202, 33554431
  %1257 = or i1 %1256, %1255
  br i1 %1257, label %1258, label %1283

; <label>:1258                                    ; preds = %1185
  %1259 = add i32 %60, 244
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = lshr i32 %1261, 16
  %1263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1262)  ; LegacyF16ToF32(value)
  %1264 = fmul fast float %1226, %1263
  %1265 = call float @dx.op.unary.f32(i32 22, float %1264)  ; Frc(value)
  %1266 = mul nuw nsw i32 %1204, %1205
  %1267 = uitofp i32 %1266 to float
  %1268 = fmul fast float %1265, %1267
  %1269 = call float @dx.op.unary.f32(i32 27, float %1268)  ; Round_ni(value)
  %1270 = fptoui float %1269 to i32
  %1271 = urem i32 %1270, %1204
  %1272 = udiv i32 %1270, %1205
  %1273 = call float @dx.op.unary.f32(i32 22, float %1253)  ; Frc(value)
  %1274 = call float @dx.op.unary.f32(i32 22, float %1254)  ; Frc(value)
  %1275 = uitofp i32 %1271 to float
  %1276 = uitofp i32 %1272 to float
  %1277 = fadd fast float %1273, %1275
  %1278 = fadd fast float %1274, %1276
  %1279 = uitofp i32 %1204 to float
  %1280 = uitofp i32 %1205 to float
  %1281 = fdiv fast float %1277, %1279
  %1282 = fdiv fast float %1278, %1280
  br label %1283

; <label>:1283                                    ; preds = %1258, %1185
  %1284 = phi float [ %1281, %1258 ], [ %1253, %1185 ]
  %1285 = phi float [ %1282, %1258 ], [ %1254, %1185 ]
  %1286 = and i32 %1179, 16777216
  %1287 = icmp eq i32 %1286, 0
  br i1 %1287, label %1397, label %1288

; <label>:1288                                    ; preds = %1283
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.CBufRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1293 = fadd fast float %1290, %167
  %1294 = fadd fast float %1291, %168
  %1295 = fadd fast float %1292, %169
  %1296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1296, 0
  %1298 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1299 = icmp eq i32 %61, 65535
  br i1 %1299, label %1394, label %1300

; <label>:1300                                    ; preds = %1288
  %1301 = lshr i32 %61, 1
  %1302 = shl i32 %1301, 2
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = and i32 %61, 1
  %1306 = icmp ne i32 %1305, 0
  %1307 = lshr i32 %1304, 16
  %1308 = and i32 %1304, 65535
  %1309 = select i1 %1306, i32 %1307, i32 %1308
  %1310 = icmp eq i32 %1309, 65535
  br i1 %1310, label %1390, label %1311

; <label>:1311                                    ; preds = %1300
  %1312 = mul nuw nsw i32 %1309, 40
  %1313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.f32 %1313, 0
  %1315 = extractvalue %dx.types.ResRet.f32 %1313, 1
  %1316 = extractvalue %dx.types.ResRet.f32 %1313, 2
  %1317 = add nuw nsw i32 %1312, 12
  %1318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 0
  %1320 = extractvalue %dx.types.ResRet.f32 %1318, 1
  %1321 = extractvalue %dx.types.ResRet.f32 %1318, 2
  %1322 = add nuw nsw i32 %1312, 24
  %1323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1322, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = extractvalue %dx.types.ResRet.f32 %1323, 1
  %1326 = extractvalue %dx.types.ResRet.f32 %1323, 2
  %1327 = add nuw nsw i32 %1312, 36
  %1328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.f32 %1328, 0
  %1330 = fsub fast float %1293, %1314
  %1331 = fsub fast float %1294, %1315
  %1332 = fsub fast float %1295, %1316
  %1333 = fmul fast float %1329, %1330
  %1334 = fmul fast float %1329, %1331
  %1335 = fmul fast float %1329, %1332
  %1336 = call float @dx.op.unary.f32(i32 27, float %1333)  ; Round_ni(value)
  %1337 = call float @dx.op.unary.f32(i32 27, float %1334)  ; Round_ni(value)
  %1338 = call float @dx.op.unary.f32(i32 27, float %1335)  ; Round_ni(value)
  %1339 = fadd fast float %1336, 5.000000e-01
  %1340 = fadd fast float %1337, 5.000000e-01
  %1341 = fadd fast float %1338, 5.000000e-01
  %1342 = fmul fast float %1339, %1319
  %1343 = fmul fast float %1340, %1320
  %1344 = fmul fast float %1341, %1321
  %1345 = shl i32 %61, 2
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = add i32 %1347, 0
  %1349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1348, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1350 = call float @dx.op.unary.f32(i32 22, float %1342)  ; Frc(value)
  %1351 = call float @dx.op.unary.f32(i32 22, float %1343)  ; Frc(value)
  %1352 = call float @dx.op.unary.f32(i32 22, float %1344)  ; Frc(value)
  %1353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1349, %dx.types.Handle %55, float %1350, float %1351, float %1352, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1354 = extractvalue %dx.types.ResRet.f32 %1353, 0
  %1355 = extractvalue %dx.types.ResRet.f32 %1353, 1
  %1356 = extractvalue %dx.types.ResRet.f32 %1353, 2
  %1357 = fmul fast float %1354, 1.023000e+03
  %1358 = fmul fast float %1355, 1.023000e+03
  %1359 = fmul fast float %1356, 1.023000e+03
  %1360 = fadd fast float %1357, 5.000000e-01
  %1361 = fadd fast float %1358, 5.000000e-01
  %1362 = fadd fast float %1359, 5.000000e-01
  %1363 = call float @dx.op.unary.f32(i32 27, float %1360)  ; Round_ni(value)
  %1364 = call float @dx.op.unary.f32(i32 27, float %1361)  ; Round_ni(value)
  %1365 = call float @dx.op.unary.f32(i32 27, float %1362)  ; Round_ni(value)
  %1366 = fsub fast float %1333, %1336
  %1367 = fsub fast float %1334, %1337
  %1368 = fsub fast float %1335, %1338
  %1369 = fmul fast float %1366, 7.500000e-01
  %1370 = fmul fast float %1367, 7.500000e-01
  %1371 = fmul fast float %1368, 7.500000e-01
  %1372 = fadd fast float %1336, 1.250000e-01
  %1373 = fadd fast float %1372, %1369
  %1374 = fadd fast float %1373, %1363
  %1375 = fadd fast float %1337, 1.250000e-01
  %1376 = fadd fast float %1375, %1370
  %1377 = fadd fast float %1376, %1364
  %1378 = fadd fast float %1338, 1.250000e-01
  %1379 = fadd fast float %1378, %1371
  %1380 = fadd fast float %1379, %1365
  %1381 = fmul fast float %1374, %1324
  %1382 = fmul fast float %1377, %1325
  %1383 = fmul fast float %1380, %1326
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = add i32 %1385, 0
  %1387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1387, %dx.types.Handle %53, float %1381, float %1382, float %1383, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  br label %1390

; <label>:1390                                    ; preds = %1311, %1300
  %1391 = phi float [ %1389, %1311 ], [ -1.000000e+00, %1300 ]
  %1392 = fadd fast float %1391, %1298
  %1393 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  br label %1394

; <label>:1394                                    ; preds = %1390, %1288
  %1395 = phi float [ %1393, %1390 ], [ %1298, %1288 ]
  %1396 = fmul fast float %1395, %500
  br label %1397

; <label>:1397                                    ; preds = %1394, %1283
  %1398 = phi float [ %1396, %1394 ], [ %500, %1283 ]
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = and i32 %1400, 256
  %1402 = icmp eq i32 %1401, 0
  br i1 %1402, label %1449, label %1403

; <label>:1403                                    ; preds = %1397
  %1404 = add i32 %60, 476
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = add i32 %1406, 0
  %1408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1407, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1409 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1408, %dx.types.Handle %101, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1410 = extractvalue %dx.types.ResRet.f32 %1409, 0
  %1411 = add i32 %60, 116
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = shl i32 %1413, 4
  %1415 = and i32 %1414, 32752
  %1416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1415)  ; LegacyF16ToF32(value)
  %1417 = lshr i32 %1413, 7
  %1418 = and i32 %1417, 32752
  %1419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1418)  ; LegacyF16ToF32(value)
  %1420 = fsub fast float 1.000000e+00, %1398
  %1421 = call float @dx.op.binary.f32(i32 35, float %1420, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1422 = bitcast float %1398 to i32
  %1423 = sitofp i32 %1422 to float
  %1424 = fadd fast float %1423, 0xC1CFBF8940000000
  %1425 = fmul fast float %1419, %1424
  %1426 = fadd fast float %1425, 0x41CFBF8940000000
  %1427 = fptosi float %1426 to i32
  %1428 = bitcast i32 %1427 to float
  %1429 = bitcast float %1421 to i32
  %1430 = sitofp i32 %1429 to float
  %1431 = fadd fast float %1430, 0xC1CFBF8940000000
  %1432 = fmul fast float %1431, %1419
  %1433 = fadd fast float %1432, 0x41CFBF8940000000
  %1434 = fptosi float %1433 to i32
  %1435 = bitcast i32 %1434 to float
  %1436 = fmul fast float %1428, %1416
  %1437 = fmul fast float %1435, %1416
  %1438 = fsub fast float %1421, %1436
  %1439 = fadd fast float %1437, %1421
  %1440 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  %1441 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  %1442 = fsub fast float %1410, %1440
  %1443 = fsub fast float %1441, %1440
  %1444 = bitcast float %1443 to i32
  %1445 = sub nsw i32 2129859010, %1444
  %1446 = bitcast i32 %1445 to float
  %1447 = fmul fast float %1446, %1442
  %1448 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  br label %1449

; <label>:1449                                    ; preds = %1403, %1397
  %1450 = phi float [ %1448, %1403 ], [ %1398, %1397 ]
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = and i32 %1452, 128
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1471, label %1455

; <label>:1455                                    ; preds = %1449
  %1456 = add i32 %60, 460
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = add i32 %1458, 0
  %1460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1460, %dx.types.Handle %101, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1462 = extractvalue %dx.types.ResRet.f32 %1461, 0
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = and i32 %1464, 524288
  %1466 = icmp ne i32 %1465, 0
  %1467 = fcmp fast ogt float %1462, 0x3FE0101020000000
  %1468 = select i1 %1467, float 1.000000e+00, float 0.000000e+00
  %1469 = select i1 %1466, float %1468, float %1462
  %1470 = fmul fast float %1469, %1450
  br label %1471

; <label>:1471                                    ; preds = %1455, %1449
  %1472 = phi float [ %1470, %1455 ], [ %1450, %1449 ]
  %1473 = fcmp fast ult float %1472, 0x3F70101020000000
  br i1 %1473, label %2016, label %1474

; <label>:1474                                    ; preds = %1471
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, 16
  %1478 = icmp eq i32 %1477, 0
  br i1 %1478, label %1677, label %1479

; <label>:1479                                    ; preds = %1474
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = add i32 %60, 412
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = add i32 %1484, 0
  %1486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1487 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1486, %dx.types.Handle %100, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1488 = extractvalue %dx.types.ResRet.f32 %1487, 0
  %1489 = extractvalue %dx.types.ResRet.f32 %1487, 1
  %1490 = extractvalue %dx.types.ResRet.f32 %1487, 2
  %1491 = extractvalue %dx.types.ResRet.f32 %1487, 3
  %1492 = and i32 %1481, 255
  %1493 = uitofp i32 %1492 to float
  %1494 = lshr i32 %1481, 8
  %1495 = and i32 %1494, 255
  %1496 = uitofp i32 %1495 to float
  %1497 = fmul fast float %1491, %1493
  %1498 = fadd fast float %1497, %1496
  %1499 = fmul fast float %1498, 0x3F70101000000000
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = and i32 %1501, 512
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1512, label %1504

; <label>:1504                                    ; preds = %1479
  %1505 = add i32 %60, 492
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = add i32 %1507, 0
  %1509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1510 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1509, %dx.types.Handle %101, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1511 = extractvalue %dx.types.ResRet.f32 %1510, 0
  br label %1512

; <label>:1512                                    ; preds = %1504, %1479
  %1513 = phi float [ %1511, %1504 ], [ 1.000000e+00, %1479 ]
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 33554432
  %1517 = icmp eq i32 %1516, 0
  br i1 %1517, label %1624, label %1518

; <label>:1518                                    ; preds = %1512
  %1519 = add i32 %60, 240
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1519, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = and i32 %1521, 65535
  %1523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1522)  ; LegacyF16ToF32(value)
  %1524 = lshr i32 %1521, 16
  %1525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1524)  ; LegacyF16ToF32(value)
  %1526 = add i32 %60, 244
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = and i32 %1528, 65535
  %1530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1529)  ; LegacyF16ToF32(value)
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = lshr i32 %1532, 24
  %1534 = uitofp i32 %1533 to float
  %1535 = fmul fast float %1534, 0x3F70101020000000
  %1536 = and i32 %1532, 255
  %1537 = uitofp i32 %1536 to float
  %1538 = fmul fast float %1537, 0x3F70101020000000
  %1539 = lshr i32 %1532, 8
  %1540 = and i32 %1539, 255
  %1541 = uitofp i32 %1540 to float
  %1542 = fmul fast float %1541, 0x3F70101020000000
  %1543 = lshr i32 %1532, 16
  %1544 = and i32 %1543, 255
  %1545 = uitofp i32 %1544 to float
  %1546 = fmul fast float %1545, 0x3F70101020000000
  %1547 = add i32 %60, 236
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1547, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = lshr i32 %1549, 24
  %1551 = uitofp i32 %1550 to float
  %1552 = fmul fast float %1551, 0x3F70101020000000
  %1553 = and i32 %1549, 255
  %1554 = uitofp i32 %1553 to float
  %1555 = fmul fast float %1554, 0x3F70101020000000
  %1556 = lshr i32 %1549, 8
  %1557 = and i32 %1556, 255
  %1558 = uitofp i32 %1557 to float
  %1559 = fmul fast float %1558, 0x3F70101020000000
  %1560 = lshr i32 %1549, 16
  %1561 = and i32 %1560, 255
  %1562 = uitofp i32 %1561 to float
  %1563 = fmul fast float %1562, 0x3F70101020000000
  %1564 = bitcast float %1488 to i32
  %1565 = ashr i32 %1564, 1
  %1566 = sub nsw i32 1597463174, %1565
  %1567 = bitcast i32 %1566 to float
  %1568 = fmul fast float %1488, 5.000000e-01
  %1569 = fmul fast float %1567, %1567
  %1570 = fmul fast float %1569, %1568
  %1571 = fsub fast float 1.500000e+00, %1570
  %1572 = fmul fast float %1567, %1488
  %1573 = fmul fast float %1572, %1571
  %1574 = bitcast float %1489 to i32
  %1575 = ashr i32 %1574, 1
  %1576 = sub nsw i32 1597463174, %1575
  %1577 = bitcast i32 %1576 to float
  %1578 = fmul fast float %1489, 5.000000e-01
  %1579 = fmul fast float %1577, %1577
  %1580 = fmul fast float %1579, %1578
  %1581 = fsub fast float 1.500000e+00, %1580
  %1582 = fmul fast float %1577, %1489
  %1583 = fmul fast float %1582, %1581
  %1584 = bitcast float %1490 to i32
  %1585 = ashr i32 %1584, 1
  %1586 = sub nsw i32 1597463174, %1585
  %1587 = bitcast i32 %1586 to float
  %1588 = fmul fast float %1490, 5.000000e-01
  %1589 = fmul fast float %1587, %1587
  %1590 = fmul fast float %1589, %1588
  %1591 = fsub fast float 1.500000e+00, %1590
  %1592 = fmul fast float %1587, %1490
  %1593 = fmul fast float %1592, %1591
  %1594 = fsub fast float %1573, %1555
  %1595 = fsub fast float %1583, %1559
  %1596 = fsub fast float %1593, %1563
  %1597 = fmul fast float %1594, %1523
  %1598 = fmul fast float %1595, %1525
  %1599 = fmul fast float %1596, %1530
  %1600 = fadd fast float %1597, %1538
  %1601 = fadd fast float %1598, %1542
  %1602 = fadd fast float %1599, %1546
  %1603 = call float @dx.op.unary.f32(i32 7, float %1600)  ; Saturate(value)
  %1604 = call float @dx.op.unary.f32(i32 7, float %1601)  ; Saturate(value)
  %1605 = call float @dx.op.unary.f32(i32 7, float %1602)  ; Saturate(value)
  %1606 = fmul fast float %1603, %1603
  %1607 = fmul fast float %1604, %1604
  %1608 = fmul fast float %1605, %1605
  %1609 = fsub fast float %1606, %1488
  %1610 = fsub fast float %1607, %1489
  %1611 = fsub fast float %1608, %1490
  %1612 = fmul fast float %1609, %1513
  %1613 = fmul fast float %1610, %1513
  %1614 = fmul fast float %1611, %1513
  %1615 = fadd fast float %1612, %1488
  %1616 = fadd fast float %1613, %1489
  %1617 = fadd fast float %1614, %1490
  %1618 = fadd fast float %1535, %1499
  %1619 = fsub fast float %1618, %1552
  %1620 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  %1621 = fsub fast float %1620, %1499
  %1622 = fmul fast float %1621, %1513
  %1623 = fadd fast float %1622, %1499
  br label %1677

; <label>:1624                                    ; preds = %1512
  %1625 = and i32 %1515, 134217728
  %1626 = icmp eq i32 %1625, 0
  br i1 %1626, label %1661, label %1627

; <label>:1627                                    ; preds = %1624
  %1628 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %1629 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %1630 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %1631 = fadd fast float %1628, -5.000000e-01
  %1632 = fadd fast float %1629, -5.000000e-01
  %1633 = fadd fast float %1630, -5.000000e-01
  %1634 = fmul fast float %1631, %1513
  %1635 = fmul fast float %1632, %1513
  %1636 = fmul fast float %1633, %1513
  %1637 = fadd fast float %1634, 5.000000e-01
  %1638 = fadd fast float %1635, 5.000000e-01
  %1639 = fadd fast float %1636, 5.000000e-01
  %1640 = call float @dx.op.unary.f32(i32 24, float %1488)  ; Sqrt(value)
  %1641 = call float @dx.op.unary.f32(i32 24, float %1489)  ; Sqrt(value)
  %1642 = call float @dx.op.unary.f32(i32 24, float %1490)  ; Sqrt(value)
  %1643 = fmul fast float %1637, 2.000000e+00
  %1644 = fsub fast float 1.000000e+00, %1643
  %1645 = fmul fast float %1644, %1640
  %1646 = fadd fast float %1645, %1643
  %1647 = fmul fast float %1646, %1640
  %1648 = fmul fast float %1638, 2.000000e+00
  %1649 = fsub fast float 1.000000e+00, %1648
  %1650 = fmul fast float %1649, %1641
  %1651 = fadd fast float %1650, %1648
  %1652 = fmul fast float %1651, %1641
  %1653 = fmul fast float %1639, 2.000000e+00
  %1654 = fsub fast float 1.000000e+00, %1653
  %1655 = fmul fast float %1654, %1642
  %1656 = fadd fast float %1655, %1653
  %1657 = fmul fast float %1656, %1642
  %1658 = fmul fast float %1647, %1647
  %1659 = fmul fast float %1652, %1652
  %1660 = fmul fast float %1657, %1657
  br label %1677

; <label>:1661                                    ; preds = %1624
  %1662 = fmul fast float %332, %332
  %1663 = fmul fast float %336, %336
  %1664 = fmul fast float %340, %340
  %1665 = fadd fast float %1662, -1.000000e+00
  %1666 = fadd fast float %1663, -1.000000e+00
  %1667 = fadd fast float %1664, -1.000000e+00
  %1668 = fmul fast float %1513, %1665
  %1669 = fmul fast float %1513, %1666
  %1670 = fmul fast float %1513, %1667
  %1671 = fadd fast float %1668, 1.000000e+00
  %1672 = fadd fast float %1669, 1.000000e+00
  %1673 = fadd fast float %1670, 1.000000e+00
  %1674 = fmul fast float %1671, %1488
  %1675 = fmul fast float %1672, %1489
  %1676 = fmul fast float %1673, %1490
  br label %1677

; <label>:1677                                    ; preds = %1661, %1627, %1518, %1474
  %1678 = phi float [ %1623, %1518 ], [ %1499, %1627 ], [ %1499, %1661 ], [ 0x3FA23C0BE0000000, %1474 ]
  %1679 = phi float [ %1615, %1518 ], [ %1658, %1627 ], [ %1674, %1661 ], [ 1.000000e+00, %1474 ]
  %1680 = phi float [ %1616, %1518 ], [ %1659, %1627 ], [ %1675, %1661 ], [ 1.000000e+00, %1474 ]
  %1681 = phi float [ %1617, %1518 ], [ %1660, %1627 ], [ %1676, %1661 ], [ 1.000000e+00, %1474 ]
  %1682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.i32 %1682, 1
  %1684 = and i32 %1683, 1
  %1685 = icmp ne i32 %1684, 0
  %1686 = add i32 %60, 356
  %1687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1686, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.i32 %1687, 0
  %1689 = and i32 %1688, 32
  %1690 = icmp ne i32 %1689, 0
  %1691 = and i1 %1685, %1690
  %1692 = select i1 %1691, float 1.000000e+00, float %1679
  %1693 = select i1 %1691, float 0x3FD3333340000000, float %1680
  %1694 = select i1 %1691, float 0x3FD3333340000000, float %1681
  %1695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.i32 %1695, 0
  %1697 = and i32 %1696, 32
  %1698 = icmp eq i32 %1697, 0
  br i1 %1698, label %1771, label %1699

; <label>:1699                                    ; preds = %1677
  %1700 = add i32 %60, 108
  %1701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1702 = extractvalue %dx.types.ResRet.i32 %1701, 0
  %1703 = add i32 %60, 428
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = add i32 %1705, 0
  %1707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1707, %dx.types.Handle %100, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1709 = extractvalue %dx.types.ResRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.ResRet.f32 %1708, 1
  %1711 = extractvalue %dx.types.ResRet.f32 %1708, 2
  %1712 = extractvalue %dx.types.ResRet.f32 %1708, 3
  %1713 = and i32 %1702, 255
  %1714 = uitofp i32 %1713 to float
  %1715 = lshr i32 %1702, 8
  %1716 = and i32 %1715, 255
  %1717 = uitofp i32 %1716 to float
  %1718 = lshr i32 %1702, 16
  %1719 = and i32 %1718, 255
  %1720 = uitofp i32 %1719 to float
  %1721 = fmul fast float %1720, 0x3F70101000000000
  %1722 = fmul fast float %1709, %1714
  %1723 = fadd fast float %1722, %1717
  %1724 = fmul fast float %1723, 0x3F70101000000000
  %1725 = fadd fast float %1710, -5.000000e-01
  %1726 = fadd fast float %1712, -5.000000e-01
  %1727 = fmul fast float %1725, %1721
  %1728 = fmul fast float %1726, %1721
  %1729 = fadd fast float %1727, 5.000000e-01
  %1730 = fadd fast float %1728, 5.000000e-01
  %1731 = fmul fast float %1729, 2.000000e+00
  %1732 = fadd fast float %1731, -1.000000e+00
  %1733 = fmul fast float %1730, 2.000000e+00
  %1734 = fadd fast float %1733, -1.000000e+00
  %1735 = fadd fast float %1732, %1734
  %1736 = fmul fast float %1735, 5.000000e-01
  %1737 = fsub fast float %1732, %1734
  %1738 = fmul fast float %1737, 5.000000e-01
  %1739 = call float @dx.op.unary.f32(i32 6, float %1736)  ; FAbs(value)
  %1740 = fsub fast float 1.000000e+00, %1739
  %1741 = call float @dx.op.unary.f32(i32 6, float %1738)  ; FAbs(value)
  %1742 = fsub fast float %1740, %1741
  %1743 = call float @dx.op.dot3.f32(i32 55, float %1736, float %1738, float %1742, float %1736, float %1738, float %1742)  ; Dot3(ax,ay,az,bx,by,bz)
  %1744 = call float @dx.op.unary.f32(i32 25, float %1743)  ; Rsqrt(value)
  %1745 = fmul fast float %1736, %1744
  %1746 = fmul fast float %1738, %1744
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = and i32 %1748, 67108864
  %1750 = icmp eq i32 %1749, 0
  br i1 %1750, label %1767, label %1751

; <label>:1751                                    ; preds = %1699
  %1752 = add i32 %60, 296
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = and i32 %1754, 65535
  %1756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1755)  ; LegacyF16ToF32(value)
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = and i32 %1758, 65535
  %1760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1759)  ; LegacyF16ToF32(value)
  %1761 = lshr i32 %1754, 16
  %1762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1761)  ; LegacyF16ToF32(value)
  %1763 = fsub fast float %1724, %1762
  %1764 = fmul fast float %1763, %1756
  %1765 = fadd fast float %1764, %1760
  %1766 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  br label %1767

; <label>:1767                                    ; preds = %1751, %1699
  %1768 = phi float [ %1766, %1751 ], [ %1724, %1699 ]
  %1769 = call float @dx.op.dot2.f32(i32 54, float %1745, float %1746, float %1188, float %1189)  ; Dot2(ax,ay,bx,by)
  %1770 = call float @dx.op.dot2.f32(i32 54, float %1745, float %1746, float %1190, float %1191)  ; Dot2(ax,ay,bx,by)
  br label %1771

; <label>:1771                                    ; preds = %1767, %1677
  %1772 = phi float [ %1768, %1767 ], [ 0x3FD6666660000000, %1677 ]
  %1773 = phi float [ %1769, %1767 ], [ 0.000000e+00, %1677 ]
  %1774 = phi float [ %1770, %1767 ], [ 0.000000e+00, %1677 ]
  %1775 = phi float [ %1711, %1767 ], [ 1.000000e+00, %1677 ]
  %1776 = add i32 %60, 176
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = lshr i32 %1778, 22
  %1780 = shl nuw nsw i32 %1779, 5
  %1781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1780)  ; LegacyF16ToF32(value)
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = and i32 %1783, 64
  %1785 = icmp eq i32 %1784, 0
  br i1 %1785, label %1819, label %1786

; <label>:1786                                    ; preds = %1771
  %1787 = add i32 %60, 444
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = add i32 %1789, 0
  %1791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = and i32 %1793, 131072
  %1795 = icmp eq i32 %1794, 0
  %1796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1791, %dx.types.Handle %100, float %1284, float %1285, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1797 = extractvalue %dx.types.ResRet.f32 %1796, 0
  %1798 = extractvalue %dx.types.ResRet.f32 %1796, 1
  %1799 = extractvalue %dx.types.ResRet.f32 %1796, 2
  %1800 = fmul fast float %1797, %320
  %1801 = fmul fast float %1798, %323
  %1802 = fmul fast float %1799, %326
  br i1 %1795, label %1809, label %1803

; <label>:1803                                    ; preds = %1786
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1804, 0
  %1806 = fmul fast float %1805, %1800
  %1807 = fmul fast float %1805, %1801
  %1808 = fmul fast float %1805, %1802
  br label %1809

; <label>:1809                                    ; preds = %1803, %1786
  %1810 = phi float [ %1806, %1803 ], [ %1800, %1786 ]
  %1811 = phi float [ %1807, %1803 ], [ %1801, %1786 ]
  %1812 = phi float [ %1808, %1803 ], [ %1802, %1786 ]
  %1813 = fmul fast float %1810, %1781
  %1814 = select i1 %261, float %1813, float %1810
  %1815 = call float @dx.op.dot3.f32(i32 55, float %1814, float %1811, float %1812, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1816 = select i1 %261, float 0.000000e+00, float %1810
  %1817 = select i1 %261, float %1815, float %1811
  %1818 = select i1 %261, float 0.000000e+00, float %1812
  br label %1819

; <label>:1819                                    ; preds = %1809, %1771
  %1820 = phi float [ %1816, %1809 ], [ 0.000000e+00, %1771 ]
  %1821 = phi float [ %1817, %1809 ], [ 0.000000e+00, %1771 ]
  %1822 = phi float [ %1818, %1809 ], [ 0.000000e+00, %1771 ]
  %1823 = add i32 %60, 112
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = and i32 %1825, 255
  %1827 = uitofp i32 %1826 to float
  %1828 = lshr i32 %1825, 8
  %1829 = and i32 %1828, 255
  %1830 = uitofp i32 %1829 to float
  %1831 = call float @dx.op.dot3.f32(i32 55, float %1692, float %1693, float %1694, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1832 = fmul fast float %1830, %1831
  %1833 = fadd fast float %1832, %1827
  %1834 = fmul fast float %1833, 0x3F70101020000000
  %1835 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  br i1 %1176, label %1836, label %1844

; <label>:1836                                    ; preds = %1819
  %1837 = fsub fast float 1.000000e+00, %1472
  %1838 = fmul fast float %1837, %1164
  %1839 = fmul fast float %1837, %1165
  %1840 = fmul fast float %1837, %1166
  %1841 = fmul fast float %1837, %1167
  %1842 = fmul fast float %1837, %1168
  %1843 = fmul fast float %1837, %1169
  br label %1844

; <label>:1844                                    ; preds = %1836, %1819
  %1845 = phi float [ %1838, %1836 ], [ %1164, %1819 ]
  %1846 = phi float [ %1839, %1836 ], [ %1165, %1819 ]
  %1847 = phi float [ %1840, %1836 ], [ %1166, %1819 ]
  %1848 = phi float [ %1841, %1836 ], [ %1167, %1819 ]
  %1849 = phi float [ %1842, %1836 ], [ %1168, %1819 ]
  %1850 = phi float [ %1843, %1836 ], [ %1169, %1819 ]
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = and i32 %1852, 3
  %1854 = icmp eq i32 %1853, 3
  br i1 %1854, label %1933, label %1855

; <label>:1855                                    ; preds = %1844
  %1856 = and i32 %1852, 16
  %1857 = icmp ne i32 %1856, 0
  %1858 = select i1 %1857, float %1472, float 0.000000e+00
  %1859 = icmp eq i32 %1853, 0
  br i1 %1859, label %1860, label %1888

; <label>:1860                                    ; preds = %1855
  %1861 = and i32 %1852, 64
  %1862 = icmp ne i32 %1861, 0
  %1863 = select i1 %1862, float %1472, float 0.000000e+00
  %1864 = fsub fast float %1692, %1845
  %1865 = fsub fast float %1693, %1846
  %1866 = fsub fast float %1694, %1847
  %1867 = fmul fast float %1858, %1864
  %1868 = fmul fast float %1858, %1865
  %1869 = fmul fast float %1858, %1866
  %1870 = fadd fast float %1867, %1845
  %1871 = fadd fast float %1868, %1846
  %1872 = fadd fast float %1869, %1847
  %1873 = fsub fast float %1678, %1170
  %1874 = fmul fast float %1858, %1873
  %1875 = fadd fast float %1874, %1170
  %1876 = fsub fast float %1820, %1848
  %1877 = fsub fast float %1821, %1849
  %1878 = fsub fast float %1822, %1850
  %1879 = fmul fast float %1863, %1876
  %1880 = fmul fast float %1863, %1877
  %1881 = fmul fast float %1863, %1878
  %1882 = fadd fast float %1879, %1848
  %1883 = fadd fast float %1880, %1849
  %1884 = fadd fast float %1881, %1850
  %1885 = fsub fast float %1835, %1174
  %1886 = fmul fast float %1858, %1885
  %1887 = fadd fast float %1886, %1174
  br label %1933

; <label>:1888                                    ; preds = %1855
  %1889 = icmp eq i32 %1853, 1
  br i1 %1889, label %1890, label %1903

; <label>:1890                                    ; preds = %1888
  %1891 = fadd fast float %1692, -1.000000e+00
  %1892 = fadd fast float %1693, -1.000000e+00
  %1893 = fadd fast float %1694, -1.000000e+00
  %1894 = fmul fast float %1858, %1891
  %1895 = fmul fast float %1858, %1892
  %1896 = fmul fast float %1858, %1893
  %1897 = fadd fast float %1894, 1.000000e+00
  %1898 = fadd fast float %1895, 1.000000e+00
  %1899 = fadd fast float %1896, 1.000000e+00
  %1900 = fmul fast float %1897, %1845
  %1901 = fmul fast float %1898, %1846
  %1902 = fmul fast float %1899, %1847
  br label %1933

; <label>:1903                                    ; preds = %1888
  %1904 = icmp eq i32 %1853, 2
  br i1 %1904, label %1905, label %1933

; <label>:1905                                    ; preds = %1903
  %1906 = call float @dx.op.unary.f32(i32 24, float %1692)  ; Sqrt(value)
  %1907 = call float @dx.op.unary.f32(i32 24, float %1693)  ; Sqrt(value)
  %1908 = call float @dx.op.unary.f32(i32 24, float %1694)  ; Sqrt(value)
  %1909 = fadd fast float %1906, -5.000000e-01
  %1910 = fadd fast float %1907, -5.000000e-01
  %1911 = fadd fast float %1908, -5.000000e-01
  %1912 = fmul fast float %1909, %1858
  %1913 = fmul fast float %1910, %1858
  %1914 = fmul fast float %1911, %1858
  %1915 = fadd fast float %1912, 5.000000e-01
  %1916 = fadd fast float %1913, 5.000000e-01
  %1917 = fadd fast float %1914, 5.000000e-01
  %1918 = fmul fast float %1915, 2.000000e+00
  %1919 = fsub fast float 1.000000e+00, %1918
  %1920 = fmul fast float %1919, %1845
  %1921 = fadd fast float %1920, %1918
  %1922 = fmul fast float %1921, %1845
  %1923 = fmul fast float %1916, 2.000000e+00
  %1924 = fsub fast float 1.000000e+00, %1923
  %1925 = fmul fast float %1924, %1846
  %1926 = fadd fast float %1925, %1923
  %1927 = fmul fast float %1926, %1846
  %1928 = fmul fast float %1917, 2.000000e+00
  %1929 = fsub fast float 1.000000e+00, %1928
  %1930 = fmul fast float %1929, %1847
  %1931 = fadd fast float %1930, %1928
  %1932 = fmul fast float %1931, %1847
  br label %1933

; <label>:1933                                    ; preds = %1905, %1903, %1890, %1860, %1844
  %1934 = phi float [ %1845, %1844 ], [ %1922, %1905 ], [ %1845, %1903 ], [ %1900, %1890 ], [ %1870, %1860 ]
  %1935 = phi float [ %1846, %1844 ], [ %1927, %1905 ], [ %1846, %1903 ], [ %1901, %1890 ], [ %1871, %1860 ]
  %1936 = phi float [ %1847, %1844 ], [ %1932, %1905 ], [ %1847, %1903 ], [ %1902, %1890 ], [ %1872, %1860 ]
  %1937 = phi float [ %1848, %1844 ], [ %1848, %1905 ], [ %1848, %1903 ], [ %1848, %1890 ], [ %1882, %1860 ]
  %1938 = phi float [ %1849, %1844 ], [ %1849, %1905 ], [ %1849, %1903 ], [ %1849, %1890 ], [ %1883, %1860 ]
  %1939 = phi float [ %1850, %1844 ], [ %1850, %1905 ], [ %1850, %1903 ], [ %1850, %1890 ], [ %1884, %1860 ]
  %1940 = phi float [ %1170, %1844 ], [ %1170, %1905 ], [ %1170, %1903 ], [ %1170, %1890 ], [ %1875, %1860 ]
  %1941 = phi float [ %1174, %1844 ], [ %1174, %1905 ], [ %1174, %1903 ], [ %1174, %1890 ], [ %1887, %1860 ]
  %1942 = and i32 %1852, 12
  %1943 = icmp eq i32 %1942, 12
  br i1 %1943, label %2016, label %1944

; <label>:1944                                    ; preds = %1933
  %1945 = and i32 %1852, 2097184
  %1946 = icmp eq i32 %1945, 2097184
  %1947 = select i1 %1946, float %1472, float 0.000000e+00
  %1948 = and i32 %1852, 4194336
  %1949 = icmp eq i32 %1948, 4194336
  %1950 = select i1 %1949, float %1472, float 0.000000e+00
  %1951 = and i32 %1852, 8388640
  %1952 = icmp eq i32 %1951, 8388640
  %1953 = select i1 %1952, float %1472, float 0.000000e+00
  %1954 = icmp eq i32 %1942, 0
  br i1 %1954, label %1955, label %1968

; <label>:1955                                    ; preds = %1944
  %1956 = fsub fast float %1773, %1162
  %1957 = fsub fast float %1774, %1163
  %1958 = fmul fast float %1947, %1956
  %1959 = fmul fast float %1947, %1957
  %1960 = fadd fast float %1958, %1162
  %1961 = fadd fast float %1959, %1163
  %1962 = fsub fast float %1775, %1173
  %1963 = fmul fast float %1950, %1962
  %1964 = fadd fast float %1963, %1173
  %1965 = fsub fast float %1772, %1172
  %1966 = fmul fast float %1953, %1965
  %1967 = fadd fast float %1966, %1172
  br label %2016

; <label>:1968                                    ; preds = %1944
  %1969 = icmp eq i32 %1942, 4
  br i1 %1969, label %1970, label %2002

; <label>:1970                                    ; preds = %1968
  %1971 = fmul fast float %1947, %1773
  %1972 = fmul fast float %1947, %1774
  %1973 = fadd fast float %1971, %1162
  %1974 = fadd fast float %1972, %1163
  %1975 = call float @dx.op.binary.f32(i32 36, float %1173, float %1775)  ; FMin(a,b)
  %1976 = fsub fast float %1975, %1173
  %1977 = fmul fast float %1976, %1950
  %1978 = fadd fast float %1977, %1173
  %1979 = fadd fast float %1772, %1172
  %1980 = fmul fast float %1979, 0x3FF337FAE0000000
  %1981 = fmul fast float %1172, %1172
  %1982 = fmul fast float %1772, %1772
  %1983 = fadd fast float %1982, %1981
  %1984 = fmul fast float %1983, 0x3FE5152B00000000
  %1985 = fmul fast float %1172, 0xBFCC1F85E0000000
  %1986 = fmul fast float %1985, %1772
  %1987 = fadd fast float %1986, 0xBFE1363700000000
  %1988 = fadd fast float %1987, %1980
  %1989 = fsub fast float %1988, %1984
  %1990 = fmul fast float %1979, 0x3FBA6F0D00000000
  %1991 = fmul fast float %1983, 0x3FD0432880000000
  %1992 = fmul fast float %1172, 0xBFEF110800000000
  %1993 = fmul fast float %1992, %1772
  %1994 = fadd fast float %1993, 1.000000e+00
  %1995 = fsub fast float %1994, %1990
  %1996 = fadd fast float %1995, %1991
  %1997 = fdiv fast float %1989, %1996
  %1998 = call float @dx.op.unary.f32(i32 7, float %1997)  ; Saturate(value)
  %1999 = fsub fast float %1998, %1172
  %2000 = fmul fast float %1999, %1953
  %2001 = fadd fast float %2000, %1172
  br label %2016

; <label>:2002                                    ; preds = %1968
  %2003 = icmp eq i32 %1942, 8
  br i1 %2003, label %2004, label %2016

; <label>:2004                                    ; preds = %2002
  %2005 = fmul fast float %1947, %1773
  %2006 = fmul fast float %1947, %1774
  %2007 = fadd fast float %2005, %1162
  %2008 = fadd fast float %2006, %1163
  %2009 = call float @dx.op.binary.f32(i32 36, float %1173, float %1775)  ; FMin(a,b)
  %2010 = fsub fast float %2009, %1173
  %2011 = fmul fast float %2010, %1950
  %2012 = fadd fast float %2011, %1173
  %2013 = fsub fast float %1772, %1172
  %2014 = fmul fast float %1953, %2013
  %2015 = fadd fast float %2014, %1172
  br label %2016

; <label>:2016                                    ; preds = %2004, %2002, %1970, %1955, %1933, %1471, %1175, %1161
  %2017 = phi float [ %1162, %1933 ], [ %1162, %1471 ], [ %1162, %1161 ], [ %2007, %2004 ], [ %1162, %2002 ], [ %1973, %1970 ], [ %1960, %1955 ], [ %1162, %1175 ]
  %2018 = phi float [ %1163, %1933 ], [ %1163, %1471 ], [ %1163, %1161 ], [ %2008, %2004 ], [ %1163, %2002 ], [ %1974, %1970 ], [ %1961, %1955 ], [ %1163, %1175 ]
  %2019 = phi float [ %1934, %1933 ], [ %1164, %1471 ], [ %1164, %1161 ], [ %1934, %2004 ], [ %1934, %2002 ], [ %1934, %1970 ], [ %1934, %1955 ], [ %1164, %1175 ]
  %2020 = phi float [ %1935, %1933 ], [ %1165, %1471 ], [ %1165, %1161 ], [ %1935, %2004 ], [ %1935, %2002 ], [ %1935, %1970 ], [ %1935, %1955 ], [ %1165, %1175 ]
  %2021 = phi float [ %1936, %1933 ], [ %1166, %1471 ], [ %1166, %1161 ], [ %1936, %2004 ], [ %1936, %2002 ], [ %1936, %1970 ], [ %1936, %1955 ], [ %1166, %1175 ]
  %2022 = phi float [ %1937, %1933 ], [ %1167, %1471 ], [ %1167, %1161 ], [ %1937, %2004 ], [ %1937, %2002 ], [ %1937, %1970 ], [ %1937, %1955 ], [ %1167, %1175 ]
  %2023 = phi float [ %1938, %1933 ], [ %1168, %1471 ], [ %1168, %1161 ], [ %1938, %2004 ], [ %1938, %2002 ], [ %1938, %1970 ], [ %1938, %1955 ], [ %1168, %1175 ]
  %2024 = phi float [ %1939, %1933 ], [ %1169, %1471 ], [ %1169, %1161 ], [ %1939, %2004 ], [ %1939, %2002 ], [ %1939, %1970 ], [ %1939, %1955 ], [ %1169, %1175 ]
  %2025 = phi float [ %1940, %1933 ], [ %1170, %1471 ], [ %1170, %1161 ], [ %1940, %2004 ], [ %1940, %2002 ], [ %1940, %1970 ], [ %1940, %1955 ], [ %1170, %1175 ]
  %2026 = phi float [ %1172, %1933 ], [ %1172, %1471 ], [ %1172, %1161 ], [ %2015, %2004 ], [ %1172, %2002 ], [ %2001, %1970 ], [ %1967, %1955 ], [ %1172, %1175 ]
  %2027 = phi float [ %1173, %1933 ], [ %1173, %1471 ], [ %1173, %1161 ], [ %2012, %2004 ], [ %1173, %2002 ], [ %1978, %1970 ], [ %1964, %1955 ], [ %1173, %1175 ]
  %2028 = phi float [ %1941, %1933 ], [ %1174, %1471 ], [ %1174, %1161 ], [ %1941, %2004 ], [ %1941, %2002 ], [ %1941, %1970 ], [ %1941, %1955 ], [ %1174, %1175 ]
  br i1 %447, label %2870, label %2029

; <label>:2029                                    ; preds = %2016
  %2030 = icmp ult i32 %503, 3
  %2031 = add i32 %60, 56
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = add i32 %60, 60
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = or i32 %2036, %2033
  %2038 = icmp eq i32 %2037, 0
  br i1 %2038, label %2870, label %2039

; <label>:2039                                    ; preds = %2029
  %2040 = and i32 %2033, 262144
  %2041 = icmp ne i32 %2040, 0
  %2042 = select i1 %2041, float %63, float 1.000000e+00
  %2043 = select i1 %2041, float %64, float 0.000000e+00
  %2044 = select i1 %2041, float %65, float 0.000000e+00
  %2045 = select i1 %2041, float %66, float 1.000000e+00
  %2046 = select i1 %2041, float %67, float %83
  %2047 = select i1 %2041, float %68, float %84
  %2048 = add i32 %60, 316
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = lshr i32 %2050, 16
  %2052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2051)  ; LegacyF16ToF32(value)
  %2053 = fmul fast float %2052, 0x3F50624DE0000000
  %2054 = add i32 %60, 120
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = lshr i32 %2056, 16
  %2058 = and i32 %2057, 255
  %2059 = lshr i32 %2056, 24
  %2060 = add i32 %60, 324
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = and i32 %2062, 65535
  %2064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2063)  ; LegacyF16ToF32(value)
  %2065 = lshr i32 %2062, 16
  %2066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2065)  ; LegacyF16ToF32(value)
  %2067 = add i32 %60, 64
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2067, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = lshr i32 %2069, 22
  %2071 = shl nuw nsw i32 %2070, 5
  %2072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2071)  ; LegacyF16ToF32(value)
  %2073 = shl i32 %2069, 4
  %2074 = and i32 %2073, 32752
  %2075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2074)  ; LegacyF16ToF32(value)
  %2076 = lshr i32 %2069, 7
  %2077 = and i32 %2076, 32752
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2080 = extractvalue %dx.types.CBufRet.f32 %2079, 3
  %2081 = fmul fast float %2080, 1.000000e+03
  %2082 = fmul fast float %397, %2081
  %2083 = call float @dx.op.unary.f32(i32 22, float %2082)  ; Frc(value)
  %2084 = fadd fast float %2083, %387
  %2085 = fmul fast float %398, %2081
  %2086 = call float @dx.op.unary.f32(i32 22, float %2085)  ; Frc(value)
  %2087 = fadd fast float %2086, %389
  %2088 = fmul fast float %2053, %2081
  %2089 = call float @dx.op.unary.f32(i32 22, float %2088)  ; Frc(value)
  %2090 = fmul fast float %2089, 0x401921FB60000000
  %2091 = fadd fast float %2090, %2072
  %2092 = call float @dx.op.unary.f32(i32 13, float %2091)  ; Sin(value)
  %2093 = call float @dx.op.unary.f32(i32 12, float %2091)  ; Cos(value)
  %2094 = fsub fast float -0.000000e+00, %2092
  %2095 = fadd fast float %2046, -5.000000e-01
  %2096 = fadd fast float %2047, -5.000000e-01
  %2097 = fmul fast float %2064, %2095
  %2098 = fmul fast float %2066, %2096
  %2099 = fadd fast float %2097, 5.000000e-01
  %2100 = fadd fast float %2098, 5.000000e-01
  %2101 = fmul fast float %2075, %2099
  %2102 = fmul fast float %2078, %2100
  %2103 = fmul fast float %2093, %2101
  %2104 = call float @dx.op.tertiary.f32(i32 46, float %2094, float %2102, float %2103)  ; FMad(a,b,c)
  %2105 = fmul fast float %2092, %2101
  %2106 = call float @dx.op.tertiary.f32(i32 46, float %2093, float %2102, float %2105)  ; FMad(a,b,c)
  %2107 = fadd fast float %2084, %2104
  %2108 = fadd fast float %2087, %2106
  %2109 = icmp ugt i32 %2058, 1
  %2110 = icmp ugt i32 %2056, 33554431
  %2111 = or i1 %2110, %2109
  br i1 %2111, label %2112, label %2137

; <label>:2112                                    ; preds = %2039
  %2113 = add i32 %60, 260
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = lshr i32 %2115, 16
  %2117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2116)  ; LegacyF16ToF32(value)
  %2118 = fmul fast float %2080, %2117
  %2119 = call float @dx.op.unary.f32(i32 22, float %2118)  ; Frc(value)
  %2120 = mul nuw nsw i32 %2058, %2059
  %2121 = uitofp i32 %2120 to float
  %2122 = fmul fast float %2119, %2121
  %2123 = call float @dx.op.unary.f32(i32 27, float %2122)  ; Round_ni(value)
  %2124 = fptoui float %2123 to i32
  %2125 = urem i32 %2124, %2058
  %2126 = udiv i32 %2124, %2059
  %2127 = call float @dx.op.unary.f32(i32 22, float %2107)  ; Frc(value)
  %2128 = call float @dx.op.unary.f32(i32 22, float %2108)  ; Frc(value)
  %2129 = uitofp i32 %2125 to float
  %2130 = uitofp i32 %2126 to float
  %2131 = fadd fast float %2127, %2129
  %2132 = fadd fast float %2128, %2130
  %2133 = uitofp i32 %2058 to float
  %2134 = uitofp i32 %2059 to float
  %2135 = fdiv fast float %2131, %2133
  %2136 = fdiv fast float %2132, %2134
  br label %2137

; <label>:2137                                    ; preds = %2112, %2039
  %2138 = phi float [ %2135, %2112 ], [ %2107, %2039 ]
  %2139 = phi float [ %2136, %2112 ], [ %2108, %2039 ]
  %2140 = and i32 %2033, 16777216
  %2141 = icmp eq i32 %2140, 0
  br i1 %2141, label %2251, label %2142

; <label>:2142                                    ; preds = %2137
  %2143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2144 = extractvalue %dx.types.CBufRet.f32 %2143, 0
  %2145 = extractvalue %dx.types.CBufRet.f32 %2143, 1
  %2146 = extractvalue %dx.types.CBufRet.f32 %2143, 2
  %2147 = fadd fast float %2144, %167
  %2148 = fadd fast float %2145, %168
  %2149 = fadd fast float %2146, %169
  %2150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2151 = extractvalue %dx.types.CBufRet.f32 %2150, 0
  %2152 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  %2153 = icmp eq i32 %61, 65535
  br i1 %2153, label %2248, label %2154

; <label>:2154                                    ; preds = %2142
  %2155 = lshr i32 %61, 1
  %2156 = shl i32 %2155, 2
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %61, 1
  %2160 = icmp ne i32 %2159, 0
  %2161 = lshr i32 %2158, 16
  %2162 = and i32 %2158, 65535
  %2163 = select i1 %2160, i32 %2161, i32 %2162
  %2164 = icmp eq i32 %2163, 65535
  br i1 %2164, label %2244, label %2165

; <label>:2165                                    ; preds = %2154
  %2166 = mul nuw nsw i32 %2163, 40
  %2167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2166, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.f32 %2167, 0
  %2169 = extractvalue %dx.types.ResRet.f32 %2167, 1
  %2170 = extractvalue %dx.types.ResRet.f32 %2167, 2
  %2171 = add nuw nsw i32 %2166, 12
  %2172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2171, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.f32 %2172, 0
  %2174 = extractvalue %dx.types.ResRet.f32 %2172, 1
  %2175 = extractvalue %dx.types.ResRet.f32 %2172, 2
  %2176 = add nuw nsw i32 %2166, 24
  %2177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.f32 %2177, 0
  %2179 = extractvalue %dx.types.ResRet.f32 %2177, 1
  %2180 = extractvalue %dx.types.ResRet.f32 %2177, 2
  %2181 = add nuw nsw i32 %2166, 36
  %2182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.f32 %2182, 0
  %2184 = fsub fast float %2147, %2168
  %2185 = fsub fast float %2148, %2169
  %2186 = fsub fast float %2149, %2170
  %2187 = fmul fast float %2183, %2184
  %2188 = fmul fast float %2183, %2185
  %2189 = fmul fast float %2183, %2186
  %2190 = call float @dx.op.unary.f32(i32 27, float %2187)  ; Round_ni(value)
  %2191 = call float @dx.op.unary.f32(i32 27, float %2188)  ; Round_ni(value)
  %2192 = call float @dx.op.unary.f32(i32 27, float %2189)  ; Round_ni(value)
  %2193 = fadd fast float %2190, 5.000000e-01
  %2194 = fadd fast float %2191, 5.000000e-01
  %2195 = fadd fast float %2192, 5.000000e-01
  %2196 = fmul fast float %2193, %2173
  %2197 = fmul fast float %2194, %2174
  %2198 = fmul fast float %2195, %2175
  %2199 = shl i32 %61, 2
  %2200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2201 = extractvalue %dx.types.ResRet.i32 %2200, 0
  %2202 = add i32 %2201, 0
  %2203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2202, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2204 = call float @dx.op.unary.f32(i32 22, float %2196)  ; Frc(value)
  %2205 = call float @dx.op.unary.f32(i32 22, float %2197)  ; Frc(value)
  %2206 = call float @dx.op.unary.f32(i32 22, float %2198)  ; Frc(value)
  %2207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2203, %dx.types.Handle %55, float %2204, float %2205, float %2206, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2208 = extractvalue %dx.types.ResRet.f32 %2207, 0
  %2209 = extractvalue %dx.types.ResRet.f32 %2207, 1
  %2210 = extractvalue %dx.types.ResRet.f32 %2207, 2
  %2211 = fmul fast float %2208, 1.023000e+03
  %2212 = fmul fast float %2209, 1.023000e+03
  %2213 = fmul fast float %2210, 1.023000e+03
  %2214 = fadd fast float %2211, 5.000000e-01
  %2215 = fadd fast float %2212, 5.000000e-01
  %2216 = fadd fast float %2213, 5.000000e-01
  %2217 = call float @dx.op.unary.f32(i32 27, float %2214)  ; Round_ni(value)
  %2218 = call float @dx.op.unary.f32(i32 27, float %2215)  ; Round_ni(value)
  %2219 = call float @dx.op.unary.f32(i32 27, float %2216)  ; Round_ni(value)
  %2220 = fsub fast float %2187, %2190
  %2221 = fsub fast float %2188, %2191
  %2222 = fsub fast float %2189, %2192
  %2223 = fmul fast float %2220, 7.500000e-01
  %2224 = fmul fast float %2221, 7.500000e-01
  %2225 = fmul fast float %2222, 7.500000e-01
  %2226 = fadd fast float %2190, 1.250000e-01
  %2227 = fadd fast float %2226, %2223
  %2228 = fadd fast float %2227, %2217
  %2229 = fadd fast float %2191, 1.250000e-01
  %2230 = fadd fast float %2229, %2224
  %2231 = fadd fast float %2230, %2218
  %2232 = fadd fast float %2192, 1.250000e-01
  %2233 = fadd fast float %2232, %2225
  %2234 = fadd fast float %2233, %2219
  %2235 = fmul fast float %2228, %2178
  %2236 = fmul fast float %2231, %2179
  %2237 = fmul fast float %2234, %2180
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = add i32 %2239, 0
  %2241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2240, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2241, %dx.types.Handle %53, float %2235, float %2236, float %2237, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2243 = extractvalue %dx.types.ResRet.f32 %2242, 0
  br label %2244

; <label>:2244                                    ; preds = %2165, %2154
  %2245 = phi float [ %2243, %2165 ], [ -1.000000e+00, %2154 ]
  %2246 = fadd fast float %2245, %2152
  %2247 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  br label %2248

; <label>:2248                                    ; preds = %2244, %2142
  %2249 = phi float [ %2247, %2244 ], [ %2152, %2142 ]
  %2250 = fmul fast float %2249, %499
  br label %2251

; <label>:2251                                    ; preds = %2248, %2137
  %2252 = phi float [ %2250, %2248 ], [ %499, %2137 ]
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = and i32 %2254, 256
  %2256 = icmp eq i32 %2255, 0
  br i1 %2256, label %2303, label %2257

; <label>:2257                                    ; preds = %2251
  %2258 = add i32 %60, 480
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = add i32 %2260, 0
  %2262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2262, %dx.types.Handle %101, float %2138, float %2139, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2264 = extractvalue %dx.types.ResRet.f32 %2263, 0
  %2265 = add i32 %60, 132
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = shl i32 %2267, 4
  %2269 = and i32 %2268, 32752
  %2270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2269)  ; LegacyF16ToF32(value)
  %2271 = lshr i32 %2267, 7
  %2272 = and i32 %2271, 32752
  %2273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2272)  ; LegacyF16ToF32(value)
  %2274 = fsub fast float 1.000000e+00, %2252
  %2275 = call float @dx.op.binary.f32(i32 35, float %2274, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2276 = bitcast float %2252 to i32
  %2277 = sitofp i32 %2276 to float
  %2278 = fadd fast float %2277, 0xC1CFBF8940000000
  %2279 = fmul fast float %2273, %2278
  %2280 = fadd fast float %2279, 0x41CFBF8940000000
  %2281 = fptosi float %2280 to i32
  %2282 = bitcast i32 %2281 to float
  %2283 = bitcast float %2275 to i32
  %2284 = sitofp i32 %2283 to float
  %2285 = fadd fast float %2284, 0xC1CFBF8940000000
  %2286 = fmul fast float %2285, %2273
  %2287 = fadd fast float %2286, 0x41CFBF8940000000
  %2288 = fptosi float %2287 to i32
  %2289 = bitcast i32 %2288 to float
  %2290 = fmul fast float %2282, %2270
  %2291 = fmul fast float %2289, %2270
  %2292 = fsub fast float %2275, %2290
  %2293 = fadd fast float %2291, %2275
  %2294 = call float @dx.op.unary.f32(i32 7, float %2292)  ; Saturate(value)
  %2295 = call float @dx.op.unary.f32(i32 7, float %2293)  ; Saturate(value)
  %2296 = fsub fast float %2264, %2294
  %2297 = fsub fast float %2295, %2294
  %2298 = bitcast float %2297 to i32
  %2299 = sub nsw i32 2129859010, %2298
  %2300 = bitcast i32 %2299 to float
  %2301 = fmul fast float %2300, %2296
  %2302 = call float @dx.op.unary.f32(i32 7, float %2301)  ; Saturate(value)
  br label %2303

; <label>:2303                                    ; preds = %2257, %2251
  %2304 = phi float [ %2302, %2257 ], [ %2252, %2251 ]
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = and i32 %2306, 128
  %2308 = icmp eq i32 %2307, 0
  br i1 %2308, label %2325, label %2309

; <label>:2309                                    ; preds = %2303
  %2310 = add i32 %60, 464
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = add i32 %2312, 0
  %2314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2313, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2315 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2314, %dx.types.Handle %101, float %2138, float %2139, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2316 = extractvalue %dx.types.ResRet.f32 %2315, 0
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = and i32 %2318, 524288
  %2320 = icmp ne i32 %2319, 0
  %2321 = fcmp fast ogt float %2316, 0x3FE0101020000000
  %2322 = select i1 %2321, float 1.000000e+00, float 0.000000e+00
  %2323 = select i1 %2320, float %2322, float %2316
  %2324 = fmul fast float %2323, %2304
  br label %2325

; <label>:2325                                    ; preds = %2309, %2303
  %2326 = phi float [ %2324, %2309 ], [ %2304, %2303 ]
  %2327 = fcmp fast ult float %2326, 0x3F70101020000000
  br i1 %2327, label %2870, label %2328

; <label>:2328                                    ; preds = %2325
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = and i32 %2330, 16
  %2332 = icmp eq i32 %2331, 0
  br i1 %2332, label %2531, label %2333

; <label>:2333                                    ; preds = %2328
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = add i32 %60, 416
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = add i32 %2338, 0
  %2340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2341 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2340, %dx.types.Handle %100, float %2138, float %2139, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2342 = extractvalue %dx.types.ResRet.f32 %2341, 0
  %2343 = extractvalue %dx.types.ResRet.f32 %2341, 1
  %2344 = extractvalue %dx.types.ResRet.f32 %2341, 2
  %2345 = extractvalue %dx.types.ResRet.f32 %2341, 3
  %2346 = and i32 %2335, 255
  %2347 = uitofp i32 %2346 to float
  %2348 = lshr i32 %2335, 8
  %2349 = and i32 %2348, 255
  %2350 = uitofp i32 %2349 to float
  %2351 = fmul fast float %2345, %2347
  %2352 = fadd fast float %2351, %2350
  %2353 = fmul fast float %2352, 0x3F70101000000000
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = and i32 %2355, 512
  %2357 = icmp eq i32 %2356, 0
  br i1 %2357, label %2366, label %2358

; <label>:2358                                    ; preds = %2333
  %2359 = add i32 %60, 496
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = add i32 %2361, 0
  %2363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2363, %dx.types.Handle %101, float %2138, float %2139, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2365 = extractvalue %dx.types.ResRet.f32 %2364, 0
  br label %2366

; <label>:2366                                    ; preds = %2358, %2333
  %2367 = phi float [ %2365, %2358 ], [ 1.000000e+00, %2333 ]
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = and i32 %2369, 33554432
  %2371 = icmp eq i32 %2370, 0
  br i1 %2371, label %2478, label %2372

; <label>:2372                                    ; preds = %2366
  %2373 = add i32 %60, 256
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = and i32 %2375, 65535
  %2377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2376)  ; LegacyF16ToF32(value)
  %2378 = lshr i32 %2375, 16
  %2379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2378)  ; LegacyF16ToF32(value)
  %2380 = add i32 %60, 260
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = and i32 %2382, 65535
  %2384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2383)  ; LegacyF16ToF32(value)
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = lshr i32 %2386, 24
  %2388 = uitofp i32 %2387 to float
  %2389 = fmul fast float %2388, 0x3F70101020000000
  %2390 = and i32 %2386, 255
  %2391 = uitofp i32 %2390 to float
  %2392 = fmul fast float %2391, 0x3F70101020000000
  %2393 = lshr i32 %2386, 8
  %2394 = and i32 %2393, 255
  %2395 = uitofp i32 %2394 to float
  %2396 = fmul fast float %2395, 0x3F70101020000000
  %2397 = lshr i32 %2386, 16
  %2398 = and i32 %2397, 255
  %2399 = uitofp i32 %2398 to float
  %2400 = fmul fast float %2399, 0x3F70101020000000
  %2401 = add i32 %60, 252
  %2402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2401, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.i32 %2402, 0
  %2404 = lshr i32 %2403, 24
  %2405 = uitofp i32 %2404 to float
  %2406 = fmul fast float %2405, 0x3F70101020000000
  %2407 = and i32 %2403, 255
  %2408 = uitofp i32 %2407 to float
  %2409 = fmul fast float %2408, 0x3F70101020000000
  %2410 = lshr i32 %2403, 8
  %2411 = and i32 %2410, 255
  %2412 = uitofp i32 %2411 to float
  %2413 = fmul fast float %2412, 0x3F70101020000000
  %2414 = lshr i32 %2403, 16
  %2415 = and i32 %2414, 255
  %2416 = uitofp i32 %2415 to float
  %2417 = fmul fast float %2416, 0x3F70101020000000
  %2418 = bitcast float %2342 to i32
  %2419 = ashr i32 %2418, 1
  %2420 = sub nsw i32 1597463174, %2419
  %2421 = bitcast i32 %2420 to float
  %2422 = fmul fast float %2342, 5.000000e-01
  %2423 = fmul fast float %2421, %2421
  %2424 = fmul fast float %2423, %2422
  %2425 = fsub fast float 1.500000e+00, %2424
  %2426 = fmul fast float %2421, %2342
  %2427 = fmul fast float %2426, %2425
  %2428 = bitcast float %2343 to i32
  %2429 = ashr i32 %2428, 1
  %2430 = sub nsw i32 1597463174, %2429
  %2431 = bitcast i32 %2430 to float
  %2432 = fmul fast float %2343, 5.000000e-01
  %2433 = fmul fast float %2431, %2431
  %2434 = fmul fast float %2433, %2432
  %2435 = fsub fast float 1.500000e+00, %2434
  %2436 = fmul fast float %2431, %2343
  %2437 = fmul fast float %2436, %2435
  %2438 = bitcast float %2344 to i32
  %2439 = ashr i32 %2438, 1
  %2440 = sub nsw i32 1597463174, %2439
  %2441 = bitcast i32 %2440 to float
  %2442 = fmul fast float %2344, 5.000000e-01
  %2443 = fmul fast float %2441, %2441
  %2444 = fmul fast float %2443, %2442
  %2445 = fsub fast float 1.500000e+00, %2444
  %2446 = fmul fast float %2441, %2344
  %2447 = fmul fast float %2446, %2445
  %2448 = fsub fast float %2427, %2409
  %2449 = fsub fast float %2437, %2413
  %2450 = fsub fast float %2447, %2417
  %2451 = fmul fast float %2448, %2377
  %2452 = fmul fast float %2449, %2379
  %2453 = fmul fast float %2450, %2384
  %2454 = fadd fast float %2451, %2392
  %2455 = fadd fast float %2452, %2396
  %2456 = fadd fast float %2453, %2400
  %2457 = call float @dx.op.unary.f32(i32 7, float %2454)  ; Saturate(value)
  %2458 = call float @dx.op.unary.f32(i32 7, float %2455)  ; Saturate(value)
  %2459 = call float @dx.op.unary.f32(i32 7, float %2456)  ; Saturate(value)
  %2460 = fmul fast float %2457, %2457
  %2461 = fmul fast float %2458, %2458
  %2462 = fmul fast float %2459, %2459
  %2463 = fsub fast float %2460, %2342
  %2464 = fsub fast float %2461, %2343
  %2465 = fsub fast float %2462, %2344
  %2466 = fmul fast float %2463, %2367
  %2467 = fmul fast float %2464, %2367
  %2468 = fmul fast float %2465, %2367
  %2469 = fadd fast float %2466, %2342
  %2470 = fadd fast float %2467, %2343
  %2471 = fadd fast float %2468, %2344
  %2472 = fadd fast float %2389, %2353
  %2473 = fsub fast float %2472, %2406
  %2474 = call float @dx.op.unary.f32(i32 7, float %2473)  ; Saturate(value)
  %2475 = fsub fast float %2474, %2353
  %2476 = fmul fast float %2475, %2367
  %2477 = fadd fast float %2476, %2353
  br label %2531

; <label>:2478                                    ; preds = %2366
  %2479 = and i32 %2369, 134217728
  %2480 = icmp eq i32 %2479, 0
  br i1 %2480, label %2515, label %2481

; <label>:2481                                    ; preds = %2478
  %2482 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %2483 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %2484 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %2485 = fadd fast float %2482, -5.000000e-01
  %2486 = fadd fast float %2483, -5.000000e-01
  %2487 = fadd fast float %2484, -5.000000e-01
  %2488 = fmul fast float %2485, %2367
  %2489 = fmul fast float %2486, %2367
  %2490 = fmul fast float %2487, %2367
  %2491 = fadd fast float %2488, 5.000000e-01
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = fadd fast float %2490, 5.000000e-01
  %2494 = call float @dx.op.unary.f32(i32 24, float %2342)  ; Sqrt(value)
  %2495 = call float @dx.op.unary.f32(i32 24, float %2343)  ; Sqrt(value)
  %2496 = call float @dx.op.unary.f32(i32 24, float %2344)  ; Sqrt(value)
  %2497 = fmul fast float %2491, 2.000000e+00
  %2498 = fsub fast float 1.000000e+00, %2497
  %2499 = fmul fast float %2498, %2494
  %2500 = fadd fast float %2499, %2497
  %2501 = fmul fast float %2500, %2494
  %2502 = fmul fast float %2492, 2.000000e+00
  %2503 = fsub fast float 1.000000e+00, %2502
  %2504 = fmul fast float %2503, %2495
  %2505 = fadd fast float %2504, %2502
  %2506 = fmul fast float %2505, %2495
  %2507 = fmul fast float %2493, 2.000000e+00
  %2508 = fsub fast float 1.000000e+00, %2507
  %2509 = fmul fast float %2508, %2496
  %2510 = fadd fast float %2509, %2507
  %2511 = fmul fast float %2510, %2496
  %2512 = fmul fast float %2501, %2501
  %2513 = fmul fast float %2506, %2506
  %2514 = fmul fast float %2511, %2511
  br label %2531

; <label>:2515                                    ; preds = %2478
  %2516 = fmul fast float %374, %374
  %2517 = fmul fast float %378, %378
  %2518 = fmul fast float %382, %382
  %2519 = fadd fast float %2516, -1.000000e+00
  %2520 = fadd fast float %2517, -1.000000e+00
  %2521 = fadd fast float %2518, -1.000000e+00
  %2522 = fmul fast float %2367, %2519
  %2523 = fmul fast float %2367, %2520
  %2524 = fmul fast float %2367, %2521
  %2525 = fadd fast float %2522, 1.000000e+00
  %2526 = fadd fast float %2523, 1.000000e+00
  %2527 = fadd fast float %2524, 1.000000e+00
  %2528 = fmul fast float %2525, %2342
  %2529 = fmul fast float %2526, %2343
  %2530 = fmul fast float %2527, %2344
  br label %2531

; <label>:2531                                    ; preds = %2515, %2481, %2372, %2328
  %2532 = phi float [ %2477, %2372 ], [ %2353, %2481 ], [ %2353, %2515 ], [ 0x3FA23C0BE0000000, %2328 ]
  %2533 = phi float [ %2469, %2372 ], [ %2512, %2481 ], [ %2528, %2515 ], [ 1.000000e+00, %2328 ]
  %2534 = phi float [ %2470, %2372 ], [ %2513, %2481 ], [ %2529, %2515 ], [ 1.000000e+00, %2328 ]
  %2535 = phi float [ %2471, %2372 ], [ %2514, %2481 ], [ %2530, %2515 ], [ 1.000000e+00, %2328 ]
  %2536 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2537 = extractvalue %dx.types.CBufRet.i32 %2536, 1
  %2538 = and i32 %2537, 1
  %2539 = icmp ne i32 %2538, 0
  %2540 = add i32 %60, 356
  %2541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2540, i32 undef)  ; BufferLoad(srv,index,wot)
  %2542 = extractvalue %dx.types.ResRet.i32 %2541, 0
  %2543 = and i32 %2542, 32
  %2544 = icmp ne i32 %2543, 0
  %2545 = and i1 %2539, %2544
  %2546 = select i1 %2545, float 1.000000e+00, float %2533
  %2547 = select i1 %2545, float 0x3FD3333340000000, float %2534
  %2548 = select i1 %2545, float 0x3FD3333340000000, float %2535
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = and i32 %2550, 32
  %2552 = icmp eq i32 %2551, 0
  br i1 %2552, label %2625, label %2553

; <label>:2553                                    ; preds = %2531
  %2554 = add i32 %60, 124
  %2555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.i32 %2555, 0
  %2557 = add i32 %60, 432
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = add i32 %2559, 0
  %2561 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2560, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2562 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2561, %dx.types.Handle %100, float %2138, float %2139, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2563 = extractvalue %dx.types.ResRet.f32 %2562, 0
  %2564 = extractvalue %dx.types.ResRet.f32 %2562, 1
  %2565 = extractvalue %dx.types.ResRet.f32 %2562, 2
  %2566 = extractvalue %dx.types.ResRet.f32 %2562, 3
  %2567 = and i32 %2556, 255
  %2568 = uitofp i32 %2567 to float
  %2569 = lshr i32 %2556, 8
  %2570 = and i32 %2569, 255
  %2571 = uitofp i32 %2570 to float
  %2572 = lshr i32 %2556, 16
  %2573 = and i32 %2572, 255
  %2574 = uitofp i32 %2573 to float
  %2575 = fmul fast float %2574, 0x3F70101000000000
  %2576 = fmul fast float %2563, %2568
  %2577 = fadd fast float %2576, %2571
  %2578 = fmul fast float %2577, 0x3F70101000000000
  %2579 = fadd fast float %2564, -5.000000e-01
  %2580 = fadd fast float %2566, -5.000000e-01
  %2581 = fmul fast float %2579, %2575
  %2582 = fmul fast float %2580, %2575
  %2583 = fadd fast float %2581, 5.000000e-01
  %2584 = fadd fast float %2582, 5.000000e-01
  %2585 = fmul fast float %2583, 2.000000e+00
  %2586 = fadd fast float %2585, -1.000000e+00
  %2587 = fmul fast float %2584, 2.000000e+00
  %2588 = fadd fast float %2587, -1.000000e+00
  %2589 = fadd fast float %2586, %2588
  %2590 = fmul fast float %2589, 5.000000e-01
  %2591 = fsub fast float %2586, %2588
  %2592 = fmul fast float %2591, 5.000000e-01
  %2593 = call float @dx.op.unary.f32(i32 6, float %2590)  ; FAbs(value)
  %2594 = fsub fast float 1.000000e+00, %2593
  %2595 = call float @dx.op.unary.f32(i32 6, float %2592)  ; FAbs(value)
  %2596 = fsub fast float %2594, %2595
  %2597 = call float @dx.op.dot3.f32(i32 55, float %2590, float %2592, float %2596, float %2590, float %2592, float %2596)  ; Dot3(ax,ay,az,bx,by,bz)
  %2598 = call float @dx.op.unary.f32(i32 25, float %2597)  ; Rsqrt(value)
  %2599 = fmul fast float %2590, %2598
  %2600 = fmul fast float %2592, %2598
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = and i32 %2602, 67108864
  %2604 = icmp eq i32 %2603, 0
  br i1 %2604, label %2621, label %2605

; <label>:2605                                    ; preds = %2553
  %2606 = add i32 %60, 312
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2606, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = and i32 %2608, 65535
  %2610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2609)  ; LegacyF16ToF32(value)
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = and i32 %2612, 65535
  %2614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2613)  ; LegacyF16ToF32(value)
  %2615 = lshr i32 %2608, 16
  %2616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2615)  ; LegacyF16ToF32(value)
  %2617 = fsub fast float %2578, %2616
  %2618 = fmul fast float %2617, %2610
  %2619 = fadd fast float %2618, %2614
  %2620 = call float @dx.op.unary.f32(i32 7, float %2619)  ; Saturate(value)
  br label %2621

; <label>:2621                                    ; preds = %2605, %2553
  %2622 = phi float [ %2620, %2605 ], [ %2578, %2553 ]
  %2623 = call float @dx.op.dot2.f32(i32 54, float %2599, float %2600, float %2042, float %2043)  ; Dot2(ax,ay,bx,by)
  %2624 = call float @dx.op.dot2.f32(i32 54, float %2599, float %2600, float %2044, float %2045)  ; Dot2(ax,ay,bx,by)
  br label %2625

; <label>:2625                                    ; preds = %2621, %2531
  %2626 = phi float [ %2622, %2621 ], [ 0x3FD6666660000000, %2531 ]
  %2627 = phi float [ %2623, %2621 ], [ 0.000000e+00, %2531 ]
  %2628 = phi float [ %2624, %2621 ], [ 0.000000e+00, %2531 ]
  %2629 = phi float [ %2565, %2621 ], [ 1.000000e+00, %2531 ]
  %2630 = add i32 %60, 192
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = lshr i32 %2632, 22
  %2634 = shl nuw nsw i32 %2633, 5
  %2635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2634)  ; LegacyF16ToF32(value)
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = and i32 %2637, 64
  %2639 = icmp eq i32 %2638, 0
  br i1 %2639, label %2673, label %2640

; <label>:2640                                    ; preds = %2625
  %2641 = add i32 %60, 448
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = add i32 %2643, 0
  %2645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 131072
  %2649 = icmp eq i32 %2648, 0
  %2650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2645, %dx.types.Handle %100, float %2138, float %2139, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2651 = extractvalue %dx.types.ResRet.f32 %2650, 0
  %2652 = extractvalue %dx.types.ResRet.f32 %2650, 1
  %2653 = extractvalue %dx.types.ResRet.f32 %2650, 2
  %2654 = fmul fast float %2651, %362
  %2655 = fmul fast float %2652, %365
  %2656 = fmul fast float %2653, %368
  br i1 %2649, label %2663, label %2657

; <label>:2657                                    ; preds = %2640
  %2658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2659 = extractvalue %dx.types.CBufRet.f32 %2658, 0
  %2660 = fmul fast float %2659, %2654
  %2661 = fmul fast float %2659, %2655
  %2662 = fmul fast float %2659, %2656
  br label %2663

; <label>:2663                                    ; preds = %2657, %2640
  %2664 = phi float [ %2660, %2657 ], [ %2654, %2640 ]
  %2665 = phi float [ %2661, %2657 ], [ %2655, %2640 ]
  %2666 = phi float [ %2662, %2657 ], [ %2656, %2640 ]
  %2667 = fmul fast float %2664, %2635
  %2668 = select i1 %261, float %2667, float %2664
  %2669 = call float @dx.op.dot3.f32(i32 55, float %2668, float %2665, float %2666, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2670 = select i1 %261, float 0.000000e+00, float %2664
  %2671 = select i1 %261, float %2669, float %2665
  %2672 = select i1 %261, float 0.000000e+00, float %2666
  br label %2673

; <label>:2673                                    ; preds = %2663, %2625
  %2674 = phi float [ %2670, %2663 ], [ 0.000000e+00, %2625 ]
  %2675 = phi float [ %2671, %2663 ], [ 0.000000e+00, %2625 ]
  %2676 = phi float [ %2672, %2663 ], [ 0.000000e+00, %2625 ]
  %2677 = add i32 %60, 128
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = and i32 %2679, 255
  %2681 = uitofp i32 %2680 to float
  %2682 = lshr i32 %2679, 8
  %2683 = and i32 %2682, 255
  %2684 = uitofp i32 %2683 to float
  %2685 = call float @dx.op.dot3.f32(i32 55, float %2546, float %2547, float %2548, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2686 = fmul fast float %2684, %2685
  %2687 = fadd fast float %2686, %2681
  %2688 = fmul fast float %2687, 0x3F70101020000000
  %2689 = call float @dx.op.unary.f32(i32 7, float %2688)  ; Saturate(value)
  br i1 %2030, label %2690, label %2698

; <label>:2690                                    ; preds = %2673
  %2691 = fsub fast float 1.000000e+00, %2326
  %2692 = fmul fast float %2691, %2019
  %2693 = fmul fast float %2691, %2020
  %2694 = fmul fast float %2691, %2021
  %2695 = fmul fast float %2691, %2022
  %2696 = fmul fast float %2691, %2023
  %2697 = fmul fast float %2691, %2024
  br label %2698

; <label>:2698                                    ; preds = %2690, %2673
  %2699 = phi float [ %2692, %2690 ], [ %2019, %2673 ]
  %2700 = phi float [ %2693, %2690 ], [ %2020, %2673 ]
  %2701 = phi float [ %2694, %2690 ], [ %2021, %2673 ]
  %2702 = phi float [ %2695, %2690 ], [ %2022, %2673 ]
  %2703 = phi float [ %2696, %2690 ], [ %2023, %2673 ]
  %2704 = phi float [ %2697, %2690 ], [ %2024, %2673 ]
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = and i32 %2706, 3
  %2708 = icmp eq i32 %2707, 3
  br i1 %2708, label %2787, label %2709

; <label>:2709                                    ; preds = %2698
  %2710 = and i32 %2706, 16
  %2711 = icmp ne i32 %2710, 0
  %2712 = select i1 %2711, float %2326, float 0.000000e+00
  %2713 = icmp eq i32 %2707, 0
  br i1 %2713, label %2714, label %2742

; <label>:2714                                    ; preds = %2709
  %2715 = and i32 %2706, 64
  %2716 = icmp ne i32 %2715, 0
  %2717 = select i1 %2716, float %2326, float 0.000000e+00
  %2718 = fsub fast float %2546, %2699
  %2719 = fsub fast float %2547, %2700
  %2720 = fsub fast float %2548, %2701
  %2721 = fmul fast float %2712, %2718
  %2722 = fmul fast float %2712, %2719
  %2723 = fmul fast float %2712, %2720
  %2724 = fadd fast float %2721, %2699
  %2725 = fadd fast float %2722, %2700
  %2726 = fadd fast float %2723, %2701
  %2727 = fsub fast float %2532, %2025
  %2728 = fmul fast float %2712, %2727
  %2729 = fadd fast float %2728, %2025
  %2730 = fsub fast float %2674, %2702
  %2731 = fsub fast float %2675, %2703
  %2732 = fsub fast float %2676, %2704
  %2733 = fmul fast float %2717, %2730
  %2734 = fmul fast float %2717, %2731
  %2735 = fmul fast float %2717, %2732
  %2736 = fadd fast float %2733, %2702
  %2737 = fadd fast float %2734, %2703
  %2738 = fadd fast float %2735, %2704
  %2739 = fsub fast float %2689, %2028
  %2740 = fmul fast float %2712, %2739
  %2741 = fadd fast float %2740, %2028
  br label %2787

; <label>:2742                                    ; preds = %2709
  %2743 = icmp eq i32 %2707, 1
  br i1 %2743, label %2744, label %2757

; <label>:2744                                    ; preds = %2742
  %2745 = fadd fast float %2546, -1.000000e+00
  %2746 = fadd fast float %2547, -1.000000e+00
  %2747 = fadd fast float %2548, -1.000000e+00
  %2748 = fmul fast float %2712, %2745
  %2749 = fmul fast float %2712, %2746
  %2750 = fmul fast float %2712, %2747
  %2751 = fadd fast float %2748, 1.000000e+00
  %2752 = fadd fast float %2749, 1.000000e+00
  %2753 = fadd fast float %2750, 1.000000e+00
  %2754 = fmul fast float %2751, %2699
  %2755 = fmul fast float %2752, %2700
  %2756 = fmul fast float %2753, %2701
  br label %2787

; <label>:2757                                    ; preds = %2742
  %2758 = icmp eq i32 %2707, 2
  br i1 %2758, label %2759, label %2787

; <label>:2759                                    ; preds = %2757
  %2760 = call float @dx.op.unary.f32(i32 24, float %2546)  ; Sqrt(value)
  %2761 = call float @dx.op.unary.f32(i32 24, float %2547)  ; Sqrt(value)
  %2762 = call float @dx.op.unary.f32(i32 24, float %2548)  ; Sqrt(value)
  %2763 = fadd fast float %2760, -5.000000e-01
  %2764 = fadd fast float %2761, -5.000000e-01
  %2765 = fadd fast float %2762, -5.000000e-01
  %2766 = fmul fast float %2763, %2712
  %2767 = fmul fast float %2764, %2712
  %2768 = fmul fast float %2765, %2712
  %2769 = fadd fast float %2766, 5.000000e-01
  %2770 = fadd fast float %2767, 5.000000e-01
  %2771 = fadd fast float %2768, 5.000000e-01
  %2772 = fmul fast float %2769, 2.000000e+00
  %2773 = fsub fast float 1.000000e+00, %2772
  %2774 = fmul fast float %2773, %2699
  %2775 = fadd fast float %2774, %2772
  %2776 = fmul fast float %2775, %2699
  %2777 = fmul fast float %2770, 2.000000e+00
  %2778 = fsub fast float 1.000000e+00, %2777
  %2779 = fmul fast float %2778, %2700
  %2780 = fadd fast float %2779, %2777
  %2781 = fmul fast float %2780, %2700
  %2782 = fmul fast float %2771, 2.000000e+00
  %2783 = fsub fast float 1.000000e+00, %2782
  %2784 = fmul fast float %2783, %2701
  %2785 = fadd fast float %2784, %2782
  %2786 = fmul fast float %2785, %2701
  br label %2787

; <label>:2787                                    ; preds = %2759, %2757, %2744, %2714, %2698
  %2788 = phi float [ %2699, %2698 ], [ %2776, %2759 ], [ %2699, %2757 ], [ %2754, %2744 ], [ %2724, %2714 ]
  %2789 = phi float [ %2700, %2698 ], [ %2781, %2759 ], [ %2700, %2757 ], [ %2755, %2744 ], [ %2725, %2714 ]
  %2790 = phi float [ %2701, %2698 ], [ %2786, %2759 ], [ %2701, %2757 ], [ %2756, %2744 ], [ %2726, %2714 ]
  %2791 = phi float [ %2702, %2698 ], [ %2702, %2759 ], [ %2702, %2757 ], [ %2702, %2744 ], [ %2736, %2714 ]
  %2792 = phi float [ %2703, %2698 ], [ %2703, %2759 ], [ %2703, %2757 ], [ %2703, %2744 ], [ %2737, %2714 ]
  %2793 = phi float [ %2704, %2698 ], [ %2704, %2759 ], [ %2704, %2757 ], [ %2704, %2744 ], [ %2738, %2714 ]
  %2794 = phi float [ %2025, %2698 ], [ %2025, %2759 ], [ %2025, %2757 ], [ %2025, %2744 ], [ %2729, %2714 ]
  %2795 = phi float [ %2028, %2698 ], [ %2028, %2759 ], [ %2028, %2757 ], [ %2028, %2744 ], [ %2741, %2714 ]
  %2796 = and i32 %2706, 12
  %2797 = icmp eq i32 %2796, 12
  br i1 %2797, label %2870, label %2798

; <label>:2798                                    ; preds = %2787
  %2799 = and i32 %2706, 2097184
  %2800 = icmp eq i32 %2799, 2097184
  %2801 = select i1 %2800, float %2326, float 0.000000e+00
  %2802 = and i32 %2706, 4194336
  %2803 = icmp eq i32 %2802, 4194336
  %2804 = select i1 %2803, float %2326, float 0.000000e+00
  %2805 = and i32 %2706, 8388640
  %2806 = icmp eq i32 %2805, 8388640
  %2807 = select i1 %2806, float %2326, float 0.000000e+00
  %2808 = icmp eq i32 %2796, 0
  br i1 %2808, label %2809, label %2822

; <label>:2809                                    ; preds = %2798
  %2810 = fsub fast float %2627, %2017
  %2811 = fsub fast float %2628, %2018
  %2812 = fmul fast float %2801, %2810
  %2813 = fmul fast float %2801, %2811
  %2814 = fadd fast float %2812, %2017
  %2815 = fadd fast float %2813, %2018
  %2816 = fsub fast float %2629, %2027
  %2817 = fmul fast float %2804, %2816
  %2818 = fadd fast float %2817, %2027
  %2819 = fsub fast float %2626, %2026
  %2820 = fmul fast float %2807, %2819
  %2821 = fadd fast float %2820, %2026
  br label %2870

; <label>:2822                                    ; preds = %2798
  %2823 = icmp eq i32 %2796, 4
  br i1 %2823, label %2824, label %2856

; <label>:2824                                    ; preds = %2822
  %2825 = fmul fast float %2801, %2627
  %2826 = fmul fast float %2801, %2628
  %2827 = fadd fast float %2825, %2017
  %2828 = fadd fast float %2826, %2018
  %2829 = call float @dx.op.binary.f32(i32 36, float %2027, float %2629)  ; FMin(a,b)
  %2830 = fsub fast float %2829, %2027
  %2831 = fmul fast float %2830, %2804
  %2832 = fadd fast float %2831, %2027
  %2833 = fadd fast float %2626, %2026
  %2834 = fmul fast float %2833, 0x3FF337FAE0000000
  %2835 = fmul fast float %2026, %2026
  %2836 = fmul fast float %2626, %2626
  %2837 = fadd fast float %2836, %2835
  %2838 = fmul fast float %2837, 0x3FE5152B00000000
  %2839 = fmul fast float %2026, 0xBFCC1F85E0000000
  %2840 = fmul fast float %2839, %2626
  %2841 = fadd fast float %2840, 0xBFE1363700000000
  %2842 = fadd fast float %2841, %2834
  %2843 = fsub fast float %2842, %2838
  %2844 = fmul fast float %2833, 0x3FBA6F0D00000000
  %2845 = fmul fast float %2837, 0x3FD0432880000000
  %2846 = fmul fast float %2026, 0xBFEF110800000000
  %2847 = fmul fast float %2846, %2626
  %2848 = fadd fast float %2847, 1.000000e+00
  %2849 = fsub fast float %2848, %2844
  %2850 = fadd fast float %2849, %2845
  %2851 = fdiv fast float %2843, %2850
  %2852 = call float @dx.op.unary.f32(i32 7, float %2851)  ; Saturate(value)
  %2853 = fsub fast float %2852, %2026
  %2854 = fmul fast float %2853, %2807
  %2855 = fadd fast float %2854, %2026
  br label %2870

; <label>:2856                                    ; preds = %2822
  %2857 = icmp eq i32 %2796, 8
  br i1 %2857, label %2858, label %2870

; <label>:2858                                    ; preds = %2856
  %2859 = fmul fast float %2801, %2627
  %2860 = fmul fast float %2801, %2628
  %2861 = fadd fast float %2859, %2017
  %2862 = fadd fast float %2860, %2018
  %2863 = call float @dx.op.binary.f32(i32 36, float %2027, float %2629)  ; FMin(a,b)
  %2864 = fsub fast float %2863, %2027
  %2865 = fmul fast float %2864, %2804
  %2866 = fadd fast float %2865, %2027
  %2867 = fsub fast float %2626, %2026
  %2868 = fmul fast float %2807, %2867
  %2869 = fadd fast float %2868, %2026
  br label %2870

; <label>:2870                                    ; preds = %2858, %2856, %2824, %2809, %2787, %2325, %2029, %2016
  %2871 = phi float [ %2017, %2787 ], [ %2017, %2325 ], [ %2017, %2016 ], [ %2861, %2858 ], [ %2017, %2856 ], [ %2827, %2824 ], [ %2814, %2809 ], [ %2017, %2029 ]
  %2872 = phi float [ %2018, %2787 ], [ %2018, %2325 ], [ %2018, %2016 ], [ %2862, %2858 ], [ %2018, %2856 ], [ %2828, %2824 ], [ %2815, %2809 ], [ %2018, %2029 ]
  %2873 = phi float [ %2788, %2787 ], [ %2019, %2325 ], [ %2019, %2016 ], [ %2788, %2858 ], [ %2788, %2856 ], [ %2788, %2824 ], [ %2788, %2809 ], [ %2019, %2029 ]
  %2874 = phi float [ %2789, %2787 ], [ %2020, %2325 ], [ %2020, %2016 ], [ %2789, %2858 ], [ %2789, %2856 ], [ %2789, %2824 ], [ %2789, %2809 ], [ %2020, %2029 ]
  %2875 = phi float [ %2790, %2787 ], [ %2021, %2325 ], [ %2021, %2016 ], [ %2790, %2858 ], [ %2790, %2856 ], [ %2790, %2824 ], [ %2790, %2809 ], [ %2021, %2029 ]
  %2876 = phi float [ %2791, %2787 ], [ %2022, %2325 ], [ %2022, %2016 ], [ %2791, %2858 ], [ %2791, %2856 ], [ %2791, %2824 ], [ %2791, %2809 ], [ %2022, %2029 ]
  %2877 = phi float [ %2792, %2787 ], [ %2023, %2325 ], [ %2023, %2016 ], [ %2792, %2858 ], [ %2792, %2856 ], [ %2792, %2824 ], [ %2792, %2809 ], [ %2023, %2029 ]
  %2878 = phi float [ %2793, %2787 ], [ %2024, %2325 ], [ %2024, %2016 ], [ %2793, %2858 ], [ %2793, %2856 ], [ %2793, %2824 ], [ %2793, %2809 ], [ %2024, %2029 ]
  %2879 = phi float [ %2794, %2787 ], [ %2025, %2325 ], [ %2025, %2016 ], [ %2794, %2858 ], [ %2794, %2856 ], [ %2794, %2824 ], [ %2794, %2809 ], [ %2025, %2029 ]
  %2880 = phi float [ %2026, %2787 ], [ %2026, %2325 ], [ %2026, %2016 ], [ %2869, %2858 ], [ %2026, %2856 ], [ %2855, %2824 ], [ %2821, %2809 ], [ %2026, %2029 ]
  %2881 = phi float [ %2027, %2787 ], [ %2027, %2325 ], [ %2027, %2016 ], [ %2866, %2858 ], [ %2027, %2856 ], [ %2832, %2824 ], [ %2818, %2809 ], [ %2027, %2029 ]
  %2882 = phi float [ %2795, %2787 ], [ %2028, %2325 ], [ %2028, %2016 ], [ %2795, %2858 ], [ %2795, %2856 ], [ %2795, %2824 ], [ %2795, %2809 ], [ %2028, %2029 ]
  br i1 %449, label %3724, label %2883

; <label>:2883                                    ; preds = %2870
  %2884 = icmp ult i32 %503, 4
  %2885 = add i32 %60, 72
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = add i32 %60, 76
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = or i32 %2890, %2887
  %2892 = icmp eq i32 %2891, 0
  br i1 %2892, label %3724, label %2893

; <label>:2893                                    ; preds = %2883
  %2894 = and i32 %2887, 262144
  %2895 = icmp ne i32 %2894, 0
  %2896 = select i1 %2895, float %63, float 1.000000e+00
  %2897 = select i1 %2895, float %64, float 0.000000e+00
  %2898 = select i1 %2895, float %65, float 0.000000e+00
  %2899 = select i1 %2895, float %66, float 1.000000e+00
  %2900 = select i1 %2895, float %67, float %83
  %2901 = select i1 %2895, float %68, float %84
  %2902 = add i32 %60, 332
  %2903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2902, i32 undef)  ; BufferLoad(srv,index,wot)
  %2904 = extractvalue %dx.types.ResRet.i32 %2903, 0
  %2905 = lshr i32 %2904, 16
  %2906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2905)  ; LegacyF16ToF32(value)
  %2907 = fmul fast float %2906, 0x3F50624DE0000000
  %2908 = add i32 %60, 136
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = lshr i32 %2910, 16
  %2912 = and i32 %2911, 255
  %2913 = lshr i32 %2910, 24
  %2914 = add i32 %60, 340
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2914, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = and i32 %2916, 65535
  %2918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2917)  ; LegacyF16ToF32(value)
  %2919 = lshr i32 %2916, 16
  %2920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2919)  ; LegacyF16ToF32(value)
  %2921 = add i32 %60, 80
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = lshr i32 %2923, 22
  %2925 = shl nuw nsw i32 %2924, 5
  %2926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2925)  ; LegacyF16ToF32(value)
  %2927 = shl i32 %2923, 4
  %2928 = and i32 %2927, 32752
  %2929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2928)  ; LegacyF16ToF32(value)
  %2930 = lshr i32 %2923, 7
  %2931 = and i32 %2930, 32752
  %2932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2931)  ; LegacyF16ToF32(value)
  %2933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2934 = extractvalue %dx.types.CBufRet.f32 %2933, 3
  %2935 = fmul fast float %2934, 1.000000e+03
  %2936 = fmul fast float %439, %2935
  %2937 = call float @dx.op.unary.f32(i32 22, float %2936)  ; Frc(value)
  %2938 = fadd fast float %2937, %429
  %2939 = fmul fast float %440, %2935
  %2940 = call float @dx.op.unary.f32(i32 22, float %2939)  ; Frc(value)
  %2941 = fadd fast float %2940, %431
  %2942 = fmul fast float %2907, %2935
  %2943 = call float @dx.op.unary.f32(i32 22, float %2942)  ; Frc(value)
  %2944 = fmul fast float %2943, 0x401921FB60000000
  %2945 = fadd fast float %2944, %2926
  %2946 = call float @dx.op.unary.f32(i32 13, float %2945)  ; Sin(value)
  %2947 = call float @dx.op.unary.f32(i32 12, float %2945)  ; Cos(value)
  %2948 = fsub fast float -0.000000e+00, %2946
  %2949 = fadd fast float %2900, -5.000000e-01
  %2950 = fadd fast float %2901, -5.000000e-01
  %2951 = fmul fast float %2918, %2949
  %2952 = fmul fast float %2920, %2950
  %2953 = fadd fast float %2951, 5.000000e-01
  %2954 = fadd fast float %2952, 5.000000e-01
  %2955 = fmul fast float %2929, %2953
  %2956 = fmul fast float %2932, %2954
  %2957 = fmul fast float %2947, %2955
  %2958 = call float @dx.op.tertiary.f32(i32 46, float %2948, float %2956, float %2957)  ; FMad(a,b,c)
  %2959 = fmul fast float %2946, %2955
  %2960 = call float @dx.op.tertiary.f32(i32 46, float %2947, float %2956, float %2959)  ; FMad(a,b,c)
  %2961 = fadd fast float %2938, %2958
  %2962 = fadd fast float %2941, %2960
  %2963 = icmp ugt i32 %2912, 1
  %2964 = icmp ugt i32 %2910, 33554431
  %2965 = or i1 %2964, %2963
  br i1 %2965, label %2966, label %2991

; <label>:2966                                    ; preds = %2893
  %2967 = add i32 %60, 276
  %2968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2967, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.i32 %2968, 0
  %2970 = lshr i32 %2969, 16
  %2971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2970)  ; LegacyF16ToF32(value)
  %2972 = fmul fast float %2934, %2971
  %2973 = call float @dx.op.unary.f32(i32 22, float %2972)  ; Frc(value)
  %2974 = mul nuw nsw i32 %2912, %2913
  %2975 = uitofp i32 %2974 to float
  %2976 = fmul fast float %2973, %2975
  %2977 = call float @dx.op.unary.f32(i32 27, float %2976)  ; Round_ni(value)
  %2978 = fptoui float %2977 to i32
  %2979 = urem i32 %2978, %2912
  %2980 = udiv i32 %2978, %2913
  %2981 = call float @dx.op.unary.f32(i32 22, float %2961)  ; Frc(value)
  %2982 = call float @dx.op.unary.f32(i32 22, float %2962)  ; Frc(value)
  %2983 = uitofp i32 %2979 to float
  %2984 = uitofp i32 %2980 to float
  %2985 = fadd fast float %2981, %2983
  %2986 = fadd fast float %2982, %2984
  %2987 = uitofp i32 %2912 to float
  %2988 = uitofp i32 %2913 to float
  %2989 = fdiv fast float %2985, %2987
  %2990 = fdiv fast float %2986, %2988
  br label %2991

; <label>:2991                                    ; preds = %2966, %2893
  %2992 = phi float [ %2989, %2966 ], [ %2961, %2893 ]
  %2993 = phi float [ %2990, %2966 ], [ %2962, %2893 ]
  %2994 = and i32 %2887, 16777216
  %2995 = icmp eq i32 %2994, 0
  br i1 %2995, label %3105, label %2996

; <label>:2996                                    ; preds = %2991
  %2997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2998 = extractvalue %dx.types.CBufRet.f32 %2997, 0
  %2999 = extractvalue %dx.types.CBufRet.f32 %2997, 1
  %3000 = extractvalue %dx.types.CBufRet.f32 %2997, 2
  %3001 = fadd fast float %2998, %167
  %3002 = fadd fast float %2999, %168
  %3003 = fadd fast float %3000, %169
  %3004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3005 = extractvalue %dx.types.CBufRet.f32 %3004, 0
  %3006 = call float @dx.op.unary.f32(i32 7, float %3005)  ; Saturate(value)
  %3007 = icmp eq i32 %61, 65535
  br i1 %3007, label %3102, label %3008

; <label>:3008                                    ; preds = %2996
  %3009 = lshr i32 %61, 1
  %3010 = shl i32 %3009, 2
  %3011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3010, i32 undef)  ; BufferLoad(srv,index,wot)
  %3012 = extractvalue %dx.types.ResRet.i32 %3011, 0
  %3013 = and i32 %61, 1
  %3014 = icmp ne i32 %3013, 0
  %3015 = lshr i32 %3012, 16
  %3016 = and i32 %3012, 65535
  %3017 = select i1 %3014, i32 %3015, i32 %3016
  %3018 = icmp eq i32 %3017, 65535
  br i1 %3018, label %3098, label %3019

; <label>:3019                                    ; preds = %3008
  %3020 = mul nuw nsw i32 %3017, 40
  %3021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3020, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.f32 %3021, 0
  %3023 = extractvalue %dx.types.ResRet.f32 %3021, 1
  %3024 = extractvalue %dx.types.ResRet.f32 %3021, 2
  %3025 = add nuw nsw i32 %3020, 12
  %3026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.f32 %3026, 0
  %3028 = extractvalue %dx.types.ResRet.f32 %3026, 1
  %3029 = extractvalue %dx.types.ResRet.f32 %3026, 2
  %3030 = add nuw nsw i32 %3020, 24
  %3031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3030, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.f32 %3031, 0
  %3033 = extractvalue %dx.types.ResRet.f32 %3031, 1
  %3034 = extractvalue %dx.types.ResRet.f32 %3031, 2
  %3035 = add nuw nsw i32 %3020, 36
  %3036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3035, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.f32 %3036, 0
  %3038 = fsub fast float %3001, %3022
  %3039 = fsub fast float %3002, %3023
  %3040 = fsub fast float %3003, %3024
  %3041 = fmul fast float %3037, %3038
  %3042 = fmul fast float %3037, %3039
  %3043 = fmul fast float %3037, %3040
  %3044 = call float @dx.op.unary.f32(i32 27, float %3041)  ; Round_ni(value)
  %3045 = call float @dx.op.unary.f32(i32 27, float %3042)  ; Round_ni(value)
  %3046 = call float @dx.op.unary.f32(i32 27, float %3043)  ; Round_ni(value)
  %3047 = fadd fast float %3044, 5.000000e-01
  %3048 = fadd fast float %3045, 5.000000e-01
  %3049 = fadd fast float %3046, 5.000000e-01
  %3050 = fmul fast float %3047, %3027
  %3051 = fmul fast float %3048, %3028
  %3052 = fmul fast float %3049, %3029
  %3053 = shl i32 %61, 2
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3053, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = add i32 %3055, 0
  %3057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3056, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3058 = call float @dx.op.unary.f32(i32 22, float %3050)  ; Frc(value)
  %3059 = call float @dx.op.unary.f32(i32 22, float %3051)  ; Frc(value)
  %3060 = call float @dx.op.unary.f32(i32 22, float %3052)  ; Frc(value)
  %3061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3057, %dx.types.Handle %55, float %3058, float %3059, float %3060, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3062 = extractvalue %dx.types.ResRet.f32 %3061, 0
  %3063 = extractvalue %dx.types.ResRet.f32 %3061, 1
  %3064 = extractvalue %dx.types.ResRet.f32 %3061, 2
  %3065 = fmul fast float %3062, 1.023000e+03
  %3066 = fmul fast float %3063, 1.023000e+03
  %3067 = fmul fast float %3064, 1.023000e+03
  %3068 = fadd fast float %3065, 5.000000e-01
  %3069 = fadd fast float %3066, 5.000000e-01
  %3070 = fadd fast float %3067, 5.000000e-01
  %3071 = call float @dx.op.unary.f32(i32 27, float %3068)  ; Round_ni(value)
  %3072 = call float @dx.op.unary.f32(i32 27, float %3069)  ; Round_ni(value)
  %3073 = call float @dx.op.unary.f32(i32 27, float %3070)  ; Round_ni(value)
  %3074 = fsub fast float %3041, %3044
  %3075 = fsub fast float %3042, %3045
  %3076 = fsub fast float %3043, %3046
  %3077 = fmul fast float %3074, 7.500000e-01
  %3078 = fmul fast float %3075, 7.500000e-01
  %3079 = fmul fast float %3076, 7.500000e-01
  %3080 = fadd fast float %3044, 1.250000e-01
  %3081 = fadd fast float %3080, %3077
  %3082 = fadd fast float %3081, %3071
  %3083 = fadd fast float %3045, 1.250000e-01
  %3084 = fadd fast float %3083, %3078
  %3085 = fadd fast float %3084, %3072
  %3086 = fadd fast float %3046, 1.250000e-01
  %3087 = fadd fast float %3086, %3079
  %3088 = fadd fast float %3087, %3073
  %3089 = fmul fast float %3082, %3032
  %3090 = fmul fast float %3085, %3033
  %3091 = fmul fast float %3088, %3034
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3053, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = add i32 %3093, 0
  %3095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3094, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3095, %dx.types.Handle %53, float %3089, float %3090, float %3091, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3097 = extractvalue %dx.types.ResRet.f32 %3096, 0
  br label %3098

; <label>:3098                                    ; preds = %3019, %3008
  %3099 = phi float [ %3097, %3019 ], [ -1.000000e+00, %3008 ]
  %3100 = fadd fast float %3099, %3006
  %3101 = call float @dx.op.unary.f32(i32 7, float %3100)  ; Saturate(value)
  br label %3102

; <label>:3102                                    ; preds = %3098, %2996
  %3103 = phi float [ %3101, %3098 ], [ %3006, %2996 ]
  %3104 = fmul fast float %3103, %498
  br label %3105

; <label>:3105                                    ; preds = %3102, %2991
  %3106 = phi float [ %3104, %3102 ], [ %498, %2991 ]
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = and i32 %3108, 256
  %3110 = icmp eq i32 %3109, 0
  br i1 %3110, label %3157, label %3111

; <label>:3111                                    ; preds = %3105
  %3112 = add i32 %60, 484
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = add i32 %3114, 0
  %3116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3117 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3116, %dx.types.Handle %101, float %2992, float %2993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3118 = extractvalue %dx.types.ResRet.f32 %3117, 0
  %3119 = add i32 %60, 148
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = shl i32 %3121, 4
  %3123 = and i32 %3122, 32752
  %3124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3123)  ; LegacyF16ToF32(value)
  %3125 = lshr i32 %3121, 7
  %3126 = and i32 %3125, 32752
  %3127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3126)  ; LegacyF16ToF32(value)
  %3128 = fsub fast float 1.000000e+00, %3106
  %3129 = call float @dx.op.binary.f32(i32 35, float %3128, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3130 = bitcast float %3106 to i32
  %3131 = sitofp i32 %3130 to float
  %3132 = fadd fast float %3131, 0xC1CFBF8940000000
  %3133 = fmul fast float %3127, %3132
  %3134 = fadd fast float %3133, 0x41CFBF8940000000
  %3135 = fptosi float %3134 to i32
  %3136 = bitcast i32 %3135 to float
  %3137 = bitcast float %3129 to i32
  %3138 = sitofp i32 %3137 to float
  %3139 = fadd fast float %3138, 0xC1CFBF8940000000
  %3140 = fmul fast float %3139, %3127
  %3141 = fadd fast float %3140, 0x41CFBF8940000000
  %3142 = fptosi float %3141 to i32
  %3143 = bitcast i32 %3142 to float
  %3144 = fmul fast float %3136, %3124
  %3145 = fmul fast float %3143, %3124
  %3146 = fsub fast float %3129, %3144
  %3147 = fadd fast float %3145, %3129
  %3148 = call float @dx.op.unary.f32(i32 7, float %3146)  ; Saturate(value)
  %3149 = call float @dx.op.unary.f32(i32 7, float %3147)  ; Saturate(value)
  %3150 = fsub fast float %3118, %3148
  %3151 = fsub fast float %3149, %3148
  %3152 = bitcast float %3151 to i32
  %3153 = sub nsw i32 2129859010, %3152
  %3154 = bitcast i32 %3153 to float
  %3155 = fmul fast float %3154, %3150
  %3156 = call float @dx.op.unary.f32(i32 7, float %3155)  ; Saturate(value)
  br label %3157

; <label>:3157                                    ; preds = %3111, %3105
  %3158 = phi float [ %3156, %3111 ], [ %3106, %3105 ]
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = and i32 %3160, 128
  %3162 = icmp eq i32 %3161, 0
  br i1 %3162, label %3179, label %3163

; <label>:3163                                    ; preds = %3157
  %3164 = add i32 %60, 468
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3164, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = add i32 %3166, 0
  %3168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3169 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3168, %dx.types.Handle %101, float %2992, float %2993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3170 = extractvalue %dx.types.ResRet.f32 %3169, 0
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = and i32 %3172, 524288
  %3174 = icmp ne i32 %3173, 0
  %3175 = fcmp fast ogt float %3170, 0x3FE0101020000000
  %3176 = select i1 %3175, float 1.000000e+00, float 0.000000e+00
  %3177 = select i1 %3174, float %3176, float %3170
  %3178 = fmul fast float %3177, %3158
  br label %3179

; <label>:3179                                    ; preds = %3163, %3157
  %3180 = phi float [ %3178, %3163 ], [ %3158, %3157 ]
  %3181 = fcmp fast ult float %3180, 0x3F70101020000000
  br i1 %3181, label %3724, label %3182

; <label>:3182                                    ; preds = %3179
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = and i32 %3184, 16
  %3186 = icmp eq i32 %3185, 0
  br i1 %3186, label %3385, label %3187

; <label>:3187                                    ; preds = %3182
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = add i32 %60, 420
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3190, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = add i32 %3192, 0
  %3194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3194, %dx.types.Handle %100, float %2992, float %2993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3196 = extractvalue %dx.types.ResRet.f32 %3195, 0
  %3197 = extractvalue %dx.types.ResRet.f32 %3195, 1
  %3198 = extractvalue %dx.types.ResRet.f32 %3195, 2
  %3199 = extractvalue %dx.types.ResRet.f32 %3195, 3
  %3200 = and i32 %3189, 255
  %3201 = uitofp i32 %3200 to float
  %3202 = lshr i32 %3189, 8
  %3203 = and i32 %3202, 255
  %3204 = uitofp i32 %3203 to float
  %3205 = fmul fast float %3199, %3201
  %3206 = fadd fast float %3205, %3204
  %3207 = fmul fast float %3206, 0x3F70101000000000
  %3208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.i32 %3208, 0
  %3210 = and i32 %3209, 512
  %3211 = icmp eq i32 %3210, 0
  br i1 %3211, label %3220, label %3212

; <label>:3212                                    ; preds = %3187
  %3213 = add i32 %60, 500
  %3214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3213, i32 undef)  ; BufferLoad(srv,index,wot)
  %3215 = extractvalue %dx.types.ResRet.i32 %3214, 0
  %3216 = add i32 %3215, 0
  %3217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3218 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3217, %dx.types.Handle %101, float %2992, float %2993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3219 = extractvalue %dx.types.ResRet.f32 %3218, 0
  br label %3220

; <label>:3220                                    ; preds = %3212, %3187
  %3221 = phi float [ %3219, %3212 ], [ 1.000000e+00, %3187 ]
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = and i32 %3223, 33554432
  %3225 = icmp eq i32 %3224, 0
  br i1 %3225, label %3332, label %3226

; <label>:3226                                    ; preds = %3220
  %3227 = add i32 %60, 272
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = and i32 %3229, 65535
  %3231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3230)  ; LegacyF16ToF32(value)
  %3232 = lshr i32 %3229, 16
  %3233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3232)  ; LegacyF16ToF32(value)
  %3234 = add i32 %60, 276
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = and i32 %3236, 65535
  %3238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3237)  ; LegacyF16ToF32(value)
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = lshr i32 %3240, 24
  %3242 = uitofp i32 %3241 to float
  %3243 = fmul fast float %3242, 0x3F70101020000000
  %3244 = and i32 %3240, 255
  %3245 = uitofp i32 %3244 to float
  %3246 = fmul fast float %3245, 0x3F70101020000000
  %3247 = lshr i32 %3240, 8
  %3248 = and i32 %3247, 255
  %3249 = uitofp i32 %3248 to float
  %3250 = fmul fast float %3249, 0x3F70101020000000
  %3251 = lshr i32 %3240, 16
  %3252 = and i32 %3251, 255
  %3253 = uitofp i32 %3252 to float
  %3254 = fmul fast float %3253, 0x3F70101020000000
  %3255 = add i32 %60, 268
  %3256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3255, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.i32 %3256, 0
  %3258 = lshr i32 %3257, 24
  %3259 = uitofp i32 %3258 to float
  %3260 = fmul fast float %3259, 0x3F70101020000000
  %3261 = and i32 %3257, 255
  %3262 = uitofp i32 %3261 to float
  %3263 = fmul fast float %3262, 0x3F70101020000000
  %3264 = lshr i32 %3257, 8
  %3265 = and i32 %3264, 255
  %3266 = uitofp i32 %3265 to float
  %3267 = fmul fast float %3266, 0x3F70101020000000
  %3268 = lshr i32 %3257, 16
  %3269 = and i32 %3268, 255
  %3270 = uitofp i32 %3269 to float
  %3271 = fmul fast float %3270, 0x3F70101020000000
  %3272 = bitcast float %3196 to i32
  %3273 = ashr i32 %3272, 1
  %3274 = sub nsw i32 1597463174, %3273
  %3275 = bitcast i32 %3274 to float
  %3276 = fmul fast float %3196, 5.000000e-01
  %3277 = fmul fast float %3275, %3275
  %3278 = fmul fast float %3277, %3276
  %3279 = fsub fast float 1.500000e+00, %3278
  %3280 = fmul fast float %3275, %3196
  %3281 = fmul fast float %3280, %3279
  %3282 = bitcast float %3197 to i32
  %3283 = ashr i32 %3282, 1
  %3284 = sub nsw i32 1597463174, %3283
  %3285 = bitcast i32 %3284 to float
  %3286 = fmul fast float %3197, 5.000000e-01
  %3287 = fmul fast float %3285, %3285
  %3288 = fmul fast float %3287, %3286
  %3289 = fsub fast float 1.500000e+00, %3288
  %3290 = fmul fast float %3285, %3197
  %3291 = fmul fast float %3290, %3289
  %3292 = bitcast float %3198 to i32
  %3293 = ashr i32 %3292, 1
  %3294 = sub nsw i32 1597463174, %3293
  %3295 = bitcast i32 %3294 to float
  %3296 = fmul fast float %3198, 5.000000e-01
  %3297 = fmul fast float %3295, %3295
  %3298 = fmul fast float %3297, %3296
  %3299 = fsub fast float 1.500000e+00, %3298
  %3300 = fmul fast float %3295, %3198
  %3301 = fmul fast float %3300, %3299
  %3302 = fsub fast float %3281, %3263
  %3303 = fsub fast float %3291, %3267
  %3304 = fsub fast float %3301, %3271
  %3305 = fmul fast float %3302, %3231
  %3306 = fmul fast float %3303, %3233
  %3307 = fmul fast float %3304, %3238
  %3308 = fadd fast float %3305, %3246
  %3309 = fadd fast float %3306, %3250
  %3310 = fadd fast float %3307, %3254
  %3311 = call float @dx.op.unary.f32(i32 7, float %3308)  ; Saturate(value)
  %3312 = call float @dx.op.unary.f32(i32 7, float %3309)  ; Saturate(value)
  %3313 = call float @dx.op.unary.f32(i32 7, float %3310)  ; Saturate(value)
  %3314 = fmul fast float %3311, %3311
  %3315 = fmul fast float %3312, %3312
  %3316 = fmul fast float %3313, %3313
  %3317 = fsub fast float %3314, %3196
  %3318 = fsub fast float %3315, %3197
  %3319 = fsub fast float %3316, %3198
  %3320 = fmul fast float %3317, %3221
  %3321 = fmul fast float %3318, %3221
  %3322 = fmul fast float %3319, %3221
  %3323 = fadd fast float %3320, %3196
  %3324 = fadd fast float %3321, %3197
  %3325 = fadd fast float %3322, %3198
  %3326 = fadd fast float %3243, %3207
  %3327 = fsub fast float %3326, %3260
  %3328 = call float @dx.op.unary.f32(i32 7, float %3327)  ; Saturate(value)
  %3329 = fsub fast float %3328, %3207
  %3330 = fmul fast float %3329, %3221
  %3331 = fadd fast float %3330, %3207
  br label %3385

; <label>:3332                                    ; preds = %3220
  %3333 = and i32 %3223, 134217728
  %3334 = icmp eq i32 %3333, 0
  br i1 %3334, label %3369, label %3335

; <label>:3335                                    ; preds = %3332
  %3336 = call float @dx.op.unary.f32(i32 24, float %416)  ; Sqrt(value)
  %3337 = call float @dx.op.unary.f32(i32 24, float %420)  ; Sqrt(value)
  %3338 = call float @dx.op.unary.f32(i32 24, float %424)  ; Sqrt(value)
  %3339 = fadd fast float %3336, -5.000000e-01
  %3340 = fadd fast float %3337, -5.000000e-01
  %3341 = fadd fast float %3338, -5.000000e-01
  %3342 = fmul fast float %3339, %3221
  %3343 = fmul fast float %3340, %3221
  %3344 = fmul fast float %3341, %3221
  %3345 = fadd fast float %3342, 5.000000e-01
  %3346 = fadd fast float %3343, 5.000000e-01
  %3347 = fadd fast float %3344, 5.000000e-01
  %3348 = call float @dx.op.unary.f32(i32 24, float %3196)  ; Sqrt(value)
  %3349 = call float @dx.op.unary.f32(i32 24, float %3197)  ; Sqrt(value)
  %3350 = call float @dx.op.unary.f32(i32 24, float %3198)  ; Sqrt(value)
  %3351 = fmul fast float %3345, 2.000000e+00
  %3352 = fsub fast float 1.000000e+00, %3351
  %3353 = fmul fast float %3352, %3348
  %3354 = fadd fast float %3353, %3351
  %3355 = fmul fast float %3354, %3348
  %3356 = fmul fast float %3346, 2.000000e+00
  %3357 = fsub fast float 1.000000e+00, %3356
  %3358 = fmul fast float %3357, %3349
  %3359 = fadd fast float %3358, %3356
  %3360 = fmul fast float %3359, %3349
  %3361 = fmul fast float %3347, 2.000000e+00
  %3362 = fsub fast float 1.000000e+00, %3361
  %3363 = fmul fast float %3362, %3350
  %3364 = fadd fast float %3363, %3361
  %3365 = fmul fast float %3364, %3350
  %3366 = fmul fast float %3355, %3355
  %3367 = fmul fast float %3360, %3360
  %3368 = fmul fast float %3365, %3365
  br label %3385

; <label>:3369                                    ; preds = %3332
  %3370 = fmul fast float %416, %416
  %3371 = fmul fast float %420, %420
  %3372 = fmul fast float %424, %424
  %3373 = fadd fast float %3370, -1.000000e+00
  %3374 = fadd fast float %3371, -1.000000e+00
  %3375 = fadd fast float %3372, -1.000000e+00
  %3376 = fmul fast float %3221, %3373
  %3377 = fmul fast float %3221, %3374
  %3378 = fmul fast float %3221, %3375
  %3379 = fadd fast float %3376, 1.000000e+00
  %3380 = fadd fast float %3377, 1.000000e+00
  %3381 = fadd fast float %3378, 1.000000e+00
  %3382 = fmul fast float %3379, %3196
  %3383 = fmul fast float %3380, %3197
  %3384 = fmul fast float %3381, %3198
  br label %3385

; <label>:3385                                    ; preds = %3369, %3335, %3226, %3182
  %3386 = phi float [ %3331, %3226 ], [ %3207, %3335 ], [ %3207, %3369 ], [ 0x3FA23C0BE0000000, %3182 ]
  %3387 = phi float [ %3323, %3226 ], [ %3366, %3335 ], [ %3382, %3369 ], [ 1.000000e+00, %3182 ]
  %3388 = phi float [ %3324, %3226 ], [ %3367, %3335 ], [ %3383, %3369 ], [ 1.000000e+00, %3182 ]
  %3389 = phi float [ %3325, %3226 ], [ %3368, %3335 ], [ %3384, %3369 ], [ 1.000000e+00, %3182 ]
  %3390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3391 = extractvalue %dx.types.CBufRet.i32 %3390, 1
  %3392 = and i32 %3391, 1
  %3393 = icmp ne i32 %3392, 0
  %3394 = add i32 %60, 356
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 32
  %3398 = icmp ne i32 %3397, 0
  %3399 = and i1 %3393, %3398
  %3400 = select i1 %3399, float 1.000000e+00, float %3387
  %3401 = select i1 %3399, float 0x3FD3333340000000, float %3388
  %3402 = select i1 %3399, float 0x3FD3333340000000, float %3389
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = and i32 %3404, 32
  %3406 = icmp eq i32 %3405, 0
  br i1 %3406, label %3479, label %3407

; <label>:3407                                    ; preds = %3385
  %3408 = add i32 %60, 140
  %3409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.i32 %3409, 0
  %3411 = add i32 %60, 436
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = add i32 %3413, 0
  %3415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3415, %dx.types.Handle %100, float %2992, float %2993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3417 = extractvalue %dx.types.ResRet.f32 %3416, 0
  %3418 = extractvalue %dx.types.ResRet.f32 %3416, 1
  %3419 = extractvalue %dx.types.ResRet.f32 %3416, 2
  %3420 = extractvalue %dx.types.ResRet.f32 %3416, 3
  %3421 = and i32 %3410, 255
  %3422 = uitofp i32 %3421 to float
  %3423 = lshr i32 %3410, 8
  %3424 = and i32 %3423, 255
  %3425 = uitofp i32 %3424 to float
  %3426 = lshr i32 %3410, 16
  %3427 = and i32 %3426, 255
  %3428 = uitofp i32 %3427 to float
  %3429 = fmul fast float %3428, 0x3F70101000000000
  %3430 = fmul fast float %3417, %3422
  %3431 = fadd fast float %3430, %3425
  %3432 = fmul fast float %3431, 0x3F70101000000000
  %3433 = fadd fast float %3418, -5.000000e-01
  %3434 = fadd fast float %3420, -5.000000e-01
  %3435 = fmul fast float %3433, %3429
  %3436 = fmul fast float %3434, %3429
  %3437 = fadd fast float %3435, 5.000000e-01
  %3438 = fadd fast float %3436, 5.000000e-01
  %3439 = fmul fast float %3437, 2.000000e+00
  %3440 = fadd fast float %3439, -1.000000e+00
  %3441 = fmul fast float %3438, 2.000000e+00
  %3442 = fadd fast float %3441, -1.000000e+00
  %3443 = fadd fast float %3440, %3442
  %3444 = fmul fast float %3443, 5.000000e-01
  %3445 = fsub fast float %3440, %3442
  %3446 = fmul fast float %3445, 5.000000e-01
  %3447 = call float @dx.op.unary.f32(i32 6, float %3444)  ; FAbs(value)
  %3448 = fsub fast float 1.000000e+00, %3447
  %3449 = call float @dx.op.unary.f32(i32 6, float %3446)  ; FAbs(value)
  %3450 = fsub fast float %3448, %3449
  %3451 = call float @dx.op.dot3.f32(i32 55, float %3444, float %3446, float %3450, float %3444, float %3446, float %3450)  ; Dot3(ax,ay,az,bx,by,bz)
  %3452 = call float @dx.op.unary.f32(i32 25, float %3451)  ; Rsqrt(value)
  %3453 = fmul fast float %3444, %3452
  %3454 = fmul fast float %3446, %3452
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = and i32 %3456, 67108864
  %3458 = icmp eq i32 %3457, 0
  br i1 %3458, label %3475, label %3459

; <label>:3459                                    ; preds = %3407
  %3460 = add i32 %60, 328
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = and i32 %3462, 65535
  %3464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3463)  ; LegacyF16ToF32(value)
  %3465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2902, i32 undef)  ; BufferLoad(srv,index,wot)
  %3466 = extractvalue %dx.types.ResRet.i32 %3465, 0
  %3467 = and i32 %3466, 65535
  %3468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3467)  ; LegacyF16ToF32(value)
  %3469 = lshr i32 %3462, 16
  %3470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3469)  ; LegacyF16ToF32(value)
  %3471 = fsub fast float %3432, %3470
  %3472 = fmul fast float %3471, %3464
  %3473 = fadd fast float %3472, %3468
  %3474 = call float @dx.op.unary.f32(i32 7, float %3473)  ; Saturate(value)
  br label %3475

; <label>:3475                                    ; preds = %3459, %3407
  %3476 = phi float [ %3474, %3459 ], [ %3432, %3407 ]
  %3477 = call float @dx.op.dot2.f32(i32 54, float %3453, float %3454, float %2896, float %2897)  ; Dot2(ax,ay,bx,by)
  %3478 = call float @dx.op.dot2.f32(i32 54, float %3453, float %3454, float %2898, float %2899)  ; Dot2(ax,ay,bx,by)
  br label %3479

; <label>:3479                                    ; preds = %3475, %3385
  %3480 = phi float [ %3476, %3475 ], [ 0x3FD6666660000000, %3385 ]
  %3481 = phi float [ %3477, %3475 ], [ 0.000000e+00, %3385 ]
  %3482 = phi float [ %3478, %3475 ], [ 0.000000e+00, %3385 ]
  %3483 = phi float [ %3419, %3475 ], [ 1.000000e+00, %3385 ]
  %3484 = add i32 %60, 208
  %3485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.i32 %3485, 0
  %3487 = lshr i32 %3486, 22
  %3488 = shl nuw nsw i32 %3487, 5
  %3489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3488)  ; LegacyF16ToF32(value)
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = and i32 %3491, 64
  %3493 = icmp eq i32 %3492, 0
  br i1 %3493, label %3527, label %3494

; <label>:3494                                    ; preds = %3479
  %3495 = add i32 %60, 452
  %3496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = add i32 %3497, 0
  %3499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = and i32 %3501, 131072
  %3503 = icmp eq i32 %3502, 0
  %3504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3499, %dx.types.Handle %100, float %2992, float %2993, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3505 = extractvalue %dx.types.ResRet.f32 %3504, 0
  %3506 = extractvalue %dx.types.ResRet.f32 %3504, 1
  %3507 = extractvalue %dx.types.ResRet.f32 %3504, 2
  %3508 = fmul fast float %3505, %404
  %3509 = fmul fast float %3506, %407
  %3510 = fmul fast float %3507, %410
  br i1 %3503, label %3517, label %3511

; <label>:3511                                    ; preds = %3494
  %3512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3513 = extractvalue %dx.types.CBufRet.f32 %3512, 0
  %3514 = fmul fast float %3513, %3508
  %3515 = fmul fast float %3513, %3509
  %3516 = fmul fast float %3513, %3510
  br label %3517

; <label>:3517                                    ; preds = %3511, %3494
  %3518 = phi float [ %3514, %3511 ], [ %3508, %3494 ]
  %3519 = phi float [ %3515, %3511 ], [ %3509, %3494 ]
  %3520 = phi float [ %3516, %3511 ], [ %3510, %3494 ]
  %3521 = fmul fast float %3518, %3489
  %3522 = select i1 %261, float %3521, float %3518
  %3523 = call float @dx.op.dot3.f32(i32 55, float %3522, float %3519, float %3520, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3524 = select i1 %261, float 0.000000e+00, float %3518
  %3525 = select i1 %261, float %3523, float %3519
  %3526 = select i1 %261, float 0.000000e+00, float %3520
  br label %3527

; <label>:3527                                    ; preds = %3517, %3479
  %3528 = phi float [ %3524, %3517 ], [ 0.000000e+00, %3479 ]
  %3529 = phi float [ %3525, %3517 ], [ 0.000000e+00, %3479 ]
  %3530 = phi float [ %3526, %3517 ], [ 0.000000e+00, %3479 ]
  %3531 = add i32 %60, 144
  %3532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3531, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.i32 %3532, 0
  %3534 = and i32 %3533, 255
  %3535 = uitofp i32 %3534 to float
  %3536 = lshr i32 %3533, 8
  %3537 = and i32 %3536, 255
  %3538 = uitofp i32 %3537 to float
  %3539 = call float @dx.op.dot3.f32(i32 55, float %3400, float %3401, float %3402, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3540 = fmul fast float %3538, %3539
  %3541 = fadd fast float %3540, %3535
  %3542 = fmul fast float %3541, 0x3F70101020000000
  %3543 = call float @dx.op.unary.f32(i32 7, float %3542)  ; Saturate(value)
  br i1 %2884, label %3544, label %3552

; <label>:3544                                    ; preds = %3527
  %3545 = fsub fast float 1.000000e+00, %3180
  %3546 = fmul fast float %3545, %2873
  %3547 = fmul fast float %3545, %2874
  %3548 = fmul fast float %3545, %2875
  %3549 = fmul fast float %3545, %2876
  %3550 = fmul fast float %3545, %2877
  %3551 = fmul fast float %3545, %2878
  br label %3552

; <label>:3552                                    ; preds = %3544, %3527
  %3553 = phi float [ %3546, %3544 ], [ %2873, %3527 ]
  %3554 = phi float [ %3547, %3544 ], [ %2874, %3527 ]
  %3555 = phi float [ %3548, %3544 ], [ %2875, %3527 ]
  %3556 = phi float [ %3549, %3544 ], [ %2876, %3527 ]
  %3557 = phi float [ %3550, %3544 ], [ %2877, %3527 ]
  %3558 = phi float [ %3551, %3544 ], [ %2878, %3527 ]
  %3559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3560 = extractvalue %dx.types.ResRet.i32 %3559, 0
  %3561 = and i32 %3560, 3
  %3562 = icmp eq i32 %3561, 3
  br i1 %3562, label %3641, label %3563

; <label>:3563                                    ; preds = %3552
  %3564 = and i32 %3560, 16
  %3565 = icmp ne i32 %3564, 0
  %3566 = select i1 %3565, float %3180, float 0.000000e+00
  %3567 = icmp eq i32 %3561, 0
  br i1 %3567, label %3568, label %3596

; <label>:3568                                    ; preds = %3563
  %3569 = and i32 %3560, 64
  %3570 = icmp ne i32 %3569, 0
  %3571 = select i1 %3570, float %3180, float 0.000000e+00
  %3572 = fsub fast float %3400, %3553
  %3573 = fsub fast float %3401, %3554
  %3574 = fsub fast float %3402, %3555
  %3575 = fmul fast float %3566, %3572
  %3576 = fmul fast float %3566, %3573
  %3577 = fmul fast float %3566, %3574
  %3578 = fadd fast float %3575, %3553
  %3579 = fadd fast float %3576, %3554
  %3580 = fadd fast float %3577, %3555
  %3581 = fsub fast float %3386, %2879
  %3582 = fmul fast float %3566, %3581
  %3583 = fadd fast float %3582, %2879
  %3584 = fsub fast float %3528, %3556
  %3585 = fsub fast float %3529, %3557
  %3586 = fsub fast float %3530, %3558
  %3587 = fmul fast float %3571, %3584
  %3588 = fmul fast float %3571, %3585
  %3589 = fmul fast float %3571, %3586
  %3590 = fadd fast float %3587, %3556
  %3591 = fadd fast float %3588, %3557
  %3592 = fadd fast float %3589, %3558
  %3593 = fsub fast float %3543, %2882
  %3594 = fmul fast float %3566, %3593
  %3595 = fadd fast float %3594, %2882
  br label %3641

; <label>:3596                                    ; preds = %3563
  %3597 = icmp eq i32 %3561, 1
  br i1 %3597, label %3598, label %3611

; <label>:3598                                    ; preds = %3596
  %3599 = fadd fast float %3400, -1.000000e+00
  %3600 = fadd fast float %3401, -1.000000e+00
  %3601 = fadd fast float %3402, -1.000000e+00
  %3602 = fmul fast float %3566, %3599
  %3603 = fmul fast float %3566, %3600
  %3604 = fmul fast float %3566, %3601
  %3605 = fadd fast float %3602, 1.000000e+00
  %3606 = fadd fast float %3603, 1.000000e+00
  %3607 = fadd fast float %3604, 1.000000e+00
  %3608 = fmul fast float %3605, %3553
  %3609 = fmul fast float %3606, %3554
  %3610 = fmul fast float %3607, %3555
  br label %3641

; <label>:3611                                    ; preds = %3596
  %3612 = icmp eq i32 %3561, 2
  br i1 %3612, label %3613, label %3641

; <label>:3613                                    ; preds = %3611
  %3614 = call float @dx.op.unary.f32(i32 24, float %3400)  ; Sqrt(value)
  %3615 = call float @dx.op.unary.f32(i32 24, float %3401)  ; Sqrt(value)
  %3616 = call float @dx.op.unary.f32(i32 24, float %3402)  ; Sqrt(value)
  %3617 = fadd fast float %3614, -5.000000e-01
  %3618 = fadd fast float %3615, -5.000000e-01
  %3619 = fadd fast float %3616, -5.000000e-01
  %3620 = fmul fast float %3617, %3566
  %3621 = fmul fast float %3618, %3566
  %3622 = fmul fast float %3619, %3566
  %3623 = fadd fast float %3620, 5.000000e-01
  %3624 = fadd fast float %3621, 5.000000e-01
  %3625 = fadd fast float %3622, 5.000000e-01
  %3626 = fmul fast float %3623, 2.000000e+00
  %3627 = fsub fast float 1.000000e+00, %3626
  %3628 = fmul fast float %3627, %3553
  %3629 = fadd fast float %3628, %3626
  %3630 = fmul fast float %3629, %3553
  %3631 = fmul fast float %3624, 2.000000e+00
  %3632 = fsub fast float 1.000000e+00, %3631
  %3633 = fmul fast float %3632, %3554
  %3634 = fadd fast float %3633, %3631
  %3635 = fmul fast float %3634, %3554
  %3636 = fmul fast float %3625, 2.000000e+00
  %3637 = fsub fast float 1.000000e+00, %3636
  %3638 = fmul fast float %3637, %3555
  %3639 = fadd fast float %3638, %3636
  %3640 = fmul fast float %3639, %3555
  br label %3641

; <label>:3641                                    ; preds = %3613, %3611, %3598, %3568, %3552
  %3642 = phi float [ %3553, %3552 ], [ %3630, %3613 ], [ %3553, %3611 ], [ %3608, %3598 ], [ %3578, %3568 ]
  %3643 = phi float [ %3554, %3552 ], [ %3635, %3613 ], [ %3554, %3611 ], [ %3609, %3598 ], [ %3579, %3568 ]
  %3644 = phi float [ %3555, %3552 ], [ %3640, %3613 ], [ %3555, %3611 ], [ %3610, %3598 ], [ %3580, %3568 ]
  %3645 = phi float [ %3556, %3552 ], [ %3556, %3613 ], [ %3556, %3611 ], [ %3556, %3598 ], [ %3590, %3568 ]
  %3646 = phi float [ %3557, %3552 ], [ %3557, %3613 ], [ %3557, %3611 ], [ %3557, %3598 ], [ %3591, %3568 ]
  %3647 = phi float [ %3558, %3552 ], [ %3558, %3613 ], [ %3558, %3611 ], [ %3558, %3598 ], [ %3592, %3568 ]
  %3648 = phi float [ %2879, %3552 ], [ %2879, %3613 ], [ %2879, %3611 ], [ %2879, %3598 ], [ %3583, %3568 ]
  %3649 = phi float [ %2882, %3552 ], [ %2882, %3613 ], [ %2882, %3611 ], [ %2882, %3598 ], [ %3595, %3568 ]
  %3650 = and i32 %3560, 12
  %3651 = icmp eq i32 %3650, 12
  br i1 %3651, label %3724, label %3652

; <label>:3652                                    ; preds = %3641
  %3653 = and i32 %3560, 2097184
  %3654 = icmp eq i32 %3653, 2097184
  %3655 = select i1 %3654, float %3180, float 0.000000e+00
  %3656 = and i32 %3560, 4194336
  %3657 = icmp eq i32 %3656, 4194336
  %3658 = select i1 %3657, float %3180, float 0.000000e+00
  %3659 = and i32 %3560, 8388640
  %3660 = icmp eq i32 %3659, 8388640
  %3661 = select i1 %3660, float %3180, float 0.000000e+00
  %3662 = icmp eq i32 %3650, 0
  br i1 %3662, label %3663, label %3676

; <label>:3663                                    ; preds = %3652
  %3664 = fsub fast float %3481, %2871
  %3665 = fsub fast float %3482, %2872
  %3666 = fmul fast float %3655, %3664
  %3667 = fmul fast float %3655, %3665
  %3668 = fadd fast float %3666, %2871
  %3669 = fadd fast float %3667, %2872
  %3670 = fsub fast float %3483, %2881
  %3671 = fmul fast float %3658, %3670
  %3672 = fadd fast float %3671, %2881
  %3673 = fsub fast float %3480, %2880
  %3674 = fmul fast float %3661, %3673
  %3675 = fadd fast float %3674, %2880
  br label %3724

; <label>:3676                                    ; preds = %3652
  %3677 = icmp eq i32 %3650, 4
  br i1 %3677, label %3678, label %3710

; <label>:3678                                    ; preds = %3676
  %3679 = fmul fast float %3655, %3481
  %3680 = fmul fast float %3655, %3482
  %3681 = fadd fast float %3679, %2871
  %3682 = fadd fast float %3680, %2872
  %3683 = call float @dx.op.binary.f32(i32 36, float %2881, float %3483)  ; FMin(a,b)
  %3684 = fsub fast float %3683, %2881
  %3685 = fmul fast float %3684, %3658
  %3686 = fadd fast float %3685, %2881
  %3687 = fadd fast float %3480, %2880
  %3688 = fmul fast float %3687, 0x3FF337FAE0000000
  %3689 = fmul fast float %2880, %2880
  %3690 = fmul fast float %3480, %3480
  %3691 = fadd fast float %3690, %3689
  %3692 = fmul fast float %3691, 0x3FE5152B00000000
  %3693 = fmul fast float %2880, 0xBFCC1F85E0000000
  %3694 = fmul fast float %3693, %3480
  %3695 = fadd fast float %3694, 0xBFE1363700000000
  %3696 = fadd fast float %3695, %3688
  %3697 = fsub fast float %3696, %3692
  %3698 = fmul fast float %3687, 0x3FBA6F0D00000000
  %3699 = fmul fast float %3691, 0x3FD0432880000000
  %3700 = fmul fast float %2880, 0xBFEF110800000000
  %3701 = fmul fast float %3700, %3480
  %3702 = fadd fast float %3701, 1.000000e+00
  %3703 = fsub fast float %3702, %3698
  %3704 = fadd fast float %3703, %3699
  %3705 = fdiv fast float %3697, %3704
  %3706 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  %3707 = fsub fast float %3706, %2880
  %3708 = fmul fast float %3707, %3661
  %3709 = fadd fast float %3708, %2880
  br label %3724

; <label>:3710                                    ; preds = %3676
  %3711 = icmp eq i32 %3650, 8
  br i1 %3711, label %3712, label %3724

; <label>:3712                                    ; preds = %3710
  %3713 = fmul fast float %3655, %3481
  %3714 = fmul fast float %3655, %3482
  %3715 = fadd fast float %3713, %2871
  %3716 = fadd fast float %3714, %2872
  %3717 = call float @dx.op.binary.f32(i32 36, float %2881, float %3483)  ; FMin(a,b)
  %3718 = fsub fast float %3717, %2881
  %3719 = fmul fast float %3718, %3658
  %3720 = fadd fast float %3719, %2881
  %3721 = fsub fast float %3480, %2880
  %3722 = fmul fast float %3661, %3721
  %3723 = fadd fast float %3722, %2880
  br label %3724

; <label>:3724                                    ; preds = %3712, %3710, %3678, %3663, %3641, %3179, %2883, %2870
  %3725 = phi float [ %2871, %3641 ], [ %2871, %3179 ], [ %2871, %2870 ], [ %2871, %2883 ], [ %3668, %3663 ], [ %3681, %3678 ], [ %2871, %3710 ], [ %3715, %3712 ]
  %3726 = phi float [ %2872, %3641 ], [ %2872, %3179 ], [ %2872, %2870 ], [ %2872, %2883 ], [ %3669, %3663 ], [ %3682, %3678 ], [ %2872, %3710 ], [ %3716, %3712 ]
  %3727 = phi float [ %3642, %3641 ], [ %2873, %3179 ], [ %2873, %2870 ], [ %2873, %2883 ], [ %3642, %3663 ], [ %3642, %3678 ], [ %3642, %3710 ], [ %3642, %3712 ]
  %3728 = phi float [ %3643, %3641 ], [ %2874, %3179 ], [ %2874, %2870 ], [ %2874, %2883 ], [ %3643, %3663 ], [ %3643, %3678 ], [ %3643, %3710 ], [ %3643, %3712 ]
  %3729 = phi float [ %3644, %3641 ], [ %2875, %3179 ], [ %2875, %2870 ], [ %2875, %2883 ], [ %3644, %3663 ], [ %3644, %3678 ], [ %3644, %3710 ], [ %3644, %3712 ]
  %3730 = phi float [ %3645, %3641 ], [ %2876, %3179 ], [ %2876, %2870 ], [ %2876, %2883 ], [ %3645, %3663 ], [ %3645, %3678 ], [ %3645, %3710 ], [ %3645, %3712 ]
  %3731 = phi float [ %3646, %3641 ], [ %2877, %3179 ], [ %2877, %2870 ], [ %2877, %2883 ], [ %3646, %3663 ], [ %3646, %3678 ], [ %3646, %3710 ], [ %3646, %3712 ]
  %3732 = phi float [ %3647, %3641 ], [ %2878, %3179 ], [ %2878, %2870 ], [ %2878, %2883 ], [ %3647, %3663 ], [ %3647, %3678 ], [ %3647, %3710 ], [ %3647, %3712 ]
  %3733 = phi float [ %3648, %3641 ], [ %2879, %3179 ], [ %2879, %2870 ], [ %2879, %2883 ], [ %3648, %3663 ], [ %3648, %3678 ], [ %3648, %3710 ], [ %3648, %3712 ]
  %3734 = phi float [ %2880, %3641 ], [ %2880, %3179 ], [ %2880, %2870 ], [ %2880, %2883 ], [ %3675, %3663 ], [ %3709, %3678 ], [ %2880, %3710 ], [ %3723, %3712 ]
  %3735 = phi float [ %2881, %3641 ], [ %2881, %3179 ], [ %2881, %2870 ], [ %2881, %2883 ], [ %3672, %3663 ], [ %3686, %3678 ], [ %2881, %3710 ], [ %3720, %3712 ]
  %3736 = phi float [ %3649, %3641 ], [ %2882, %3179 ], [ %2882, %2870 ], [ %2882, %2883 ], [ %3649, %3663 ], [ %3649, %3678 ], [ %3649, %3710 ], [ %3649, %3712 ]
  %3737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3738 = extractvalue %dx.types.CBufRet.f32 %3737, 0
  %3739 = call float @dx.op.dot2.f32(i32 54, float %3725, float %3726, float %3725, float %3726)  ; Dot2(ax,ay,bx,by)
  %3740 = fmul fast float %3739, 0x3FE3333340000000
  %3741 = fsub fast float 1.000000e+00, %3740
  %3742 = call float @dx.op.dot3.f32(i32 55, float %3725, float %3726, float %3741, float %3725, float %3726, float %3741)  ; Dot3(ax,ay,az,bx,by,bz)
  %3743 = call float @dx.op.unary.f32(i32 25, float %3742)  ; Rsqrt(value)
  %3744 = fmul fast float %3743, %3725
  %3745 = fmul fast float %3743, %3726
  %3746 = fmul fast float %3741, %3743
  %3747 = fmul fast float %3746, %111
  %3748 = fmul fast float %3746, %112
  %3749 = fmul fast float %3746, %113
  %3750 = fmul fast float %3744, %76
  %3751 = fmul fast float %3744, %77
  %3752 = fmul fast float %3744, %78
  %3753 = fadd fast float %3747, %3750
  %3754 = fadd fast float %3748, %3751
  %3755 = fadd fast float %3749, %3752
  %3756 = fmul fast float %123, %3745
  %3757 = fmul fast float %124, %3745
  %3758 = fmul fast float %125, %3745
  %3759 = fadd fast float %3753, %3756
  %3760 = fadd fast float %3754, %3757
  %3761 = fadd fast float %3755, %3758
  %3762 = call float @dx.op.dot3.f32(i32 55, float %3759, float %3760, float %3761, float %3759, float %3760, float %3761)  ; Dot3(ax,ay,az,bx,by,bz)
  %3763 = call float @dx.op.unary.f32(i32 25, float %3762)  ; Rsqrt(value)
  %3764 = fmul fast float %3759, %3763
  %3765 = fmul fast float %3760, %3763
  %3766 = fmul fast float %3761, %3763
  %3767 = and i32 %62, 1
  %3768 = icmp eq i32 %3767, 0
  br i1 %3768, label %3769, label %4281

; <label>:3769                                    ; preds = %3724
  %3770 = call float @dx.op.unary.f32(i32 83, float %167)  ; DerivCoarseX(value)
  %3771 = call float @dx.op.unary.f32(i32 83, float %168)  ; DerivCoarseX(value)
  %3772 = call float @dx.op.unary.f32(i32 83, float %169)  ; DerivCoarseX(value)
  %3773 = call float @dx.op.unary.f32(i32 84, float %167)  ; DerivCoarseY(value)
  %3774 = call float @dx.op.unary.f32(i32 84, float %168)  ; DerivCoarseY(value)
  %3775 = call float @dx.op.unary.f32(i32 84, float %169)  ; DerivCoarseY(value)
  %3776 = fadd fast float %3770, %167
  %3777 = fadd fast float %3771, %168
  %3778 = fadd fast float %3772, %169
  %3779 = fadd fast float %3773, %167
  %3780 = fadd fast float %3774, %168
  %3781 = fadd fast float %3775, %169
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 0
  %3784 = extractvalue %dx.types.CBufRet.f32 %3782, 1
  %3785 = extractvalue %dx.types.CBufRet.f32 %3782, 2
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 2
  %3788 = extractvalue %dx.types.CBufRet.f32 %3786, 3
  %3789 = fmul fast float %3783, %104
  %3790 = fmul fast float %3789, %3787
  %3791 = fmul fast float %3784, %105
  %3792 = fmul fast float %3791, %3788
  %3793 = fptoui float %3790 to i32
  %3794 = fptoui float %3792 to i32
  %3795 = fadd fast float %3783, -1.000000e+00
  %3796 = fadd fast float %3784, -1.000000e+00
  %3797 = fptoui float %3795 to i32
  %3798 = fptoui float %3796 to i32
  %3799 = call i32 @dx.op.binary.i32(i32 40, i32 %3793, i32 %3797)  ; UMin(a,b)
  %3800 = call i32 @dx.op.binary.i32(i32 40, i32 %3794, i32 %3798)  ; UMin(a,b)
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 2
  %3803 = extractvalue %dx.types.CBufRet.f32 %3801, 3
  %3804 = fmul fast float %3802, %92
  %3805 = fsub fast float %3804, %3803
  %3806 = fadd fast float %3785, -1.000000e+00
  %3807 = call float @dx.op.binary.f32(i32 36, float %3805, float %3806)  ; FMin(a,b)
  %3808 = fptoui float %3807 to i32
  %3809 = fptoui float %3783 to i32
  %3810 = fptoui float %3784 to i32
  %3811 = mul i32 %3808, %3810
  %3812 = add i32 %3811, %3800
  %3813 = mul i32 %3812, %3809
  %3814 = add i32 %3813, %3799
  %3815 = shl i32 %3814, 2
  %3816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3817 = extractvalue %dx.types.ResRet.i32 %3816, 0
  %3818 = and i32 %3817, 1023
  %3819 = lshr i32 %3817, 10
  %3820 = icmp eq i32 %3818, 0
  br i1 %3820, label %4249, label %3821

; <label>:3821                                    ; preds = %3769
  %3822 = and i32 %3817, 1023
  br label %3823

; <label>:3823                                    ; preds = %3950, %3821
  %3824 = phi i32 [ %3900, %3950 ], [ 0, %3821 ]
  %3825 = phi float [ %3951, %3950 ], [ 0.000000e+00, %3821 ]
  %3826 = phi float [ %3952, %3950 ], [ %1171, %3821 ]
  %3827 = phi float [ %3953, %3950 ], [ %3738, %3821 ]
  %3828 = phi float [ %3954, %3950 ], [ %3736, %3821 ]
  %3829 = phi float [ %3955, %3950 ], [ 0.000000e+00, %3821 ]
  %3830 = phi float [ %3956, %3950 ], [ 0.000000e+00, %3821 ]
  %3831 = phi float [ %3957, %3950 ], [ %3730, %3821 ]
  %3832 = phi float [ %3958, %3950 ], [ %3731, %3821 ]
  %3833 = phi float [ %3959, %3950 ], [ %3732, %3821 ]
  %3834 = phi float [ %3960, %3950 ], [ %3764, %3821 ]
  %3835 = phi float [ %3961, %3950 ], [ %3765, %3821 ]
  %3836 = phi float [ %3962, %3950 ], [ %3766, %3821 ]
  %3837 = phi float [ %3963, %3950 ], [ %3735, %3821 ]
  %3838 = phi float [ %3964, %3950 ], [ %3734, %3821 ]
  %3839 = phi float [ %3965, %3950 ], [ 0.000000e+00, %3821 ]
  %3840 = phi float [ %3966, %3950 ], [ %3733, %3821 ]
  %3841 = phi float [ %3967, %3950 ], [ %3727, %3821 ]
  %3842 = phi float [ %3968, %3950 ], [ %3728, %3821 ]
  %3843 = phi float [ %3969, %3950 ], [ %3729, %3821 ]
  %3844 = add nuw nsw i32 %3824, %3819
  %3845 = shl i32 %3844, 2
  %3846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.i32 %3846, 0
  %3848 = shl i32 %3847, 8
  %3849 = or i32 %3848, 48
  %3850 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3849, i32 undef)  ; BufferLoad(srv,index,wot)
  %3851 = extractvalue %dx.types.ResRet.f32 %3850, 0
  %3852 = extractvalue %dx.types.ResRet.f32 %3850, 1
  %3853 = extractvalue %dx.types.ResRet.f32 %3850, 2
  %3854 = extractvalue %dx.types.ResRet.f32 %3850, 3
  %3855 = or i32 %3848, 64
  %3856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.i32 %3856, 0
  %3858 = extractvalue %dx.types.ResRet.i32 %3856, 1
  %3859 = or i32 %3848, 80
  %3860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3859, i32 undef)  ; BufferLoad(srv,index,wot)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 2
  %3862 = extractvalue %dx.types.ResRet.f32 %3860, 3
  %3863 = or i32 %3848, 96
  %3864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3865 = extractvalue %dx.types.ResRet.f32 %3864, 0
  %3866 = extractvalue %dx.types.ResRet.f32 %3864, 1
  %3867 = extractvalue %dx.types.ResRet.f32 %3864, 2
  %3868 = extractvalue %dx.types.ResRet.f32 %3864, 3
  %3869 = or i32 %3848, 112
  %3870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3869, i32 undef)  ; BufferLoad(srv,index,wot)
  %3871 = extractvalue %dx.types.ResRet.f32 %3870, 2
  %3872 = or i32 %3848, 128
  %3873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.ResRet.f32 %3873, 1
  %3876 = extractvalue %dx.types.ResRet.f32 %3873, 2
  %3877 = extractvalue %dx.types.ResRet.f32 %3873, 3
  %3878 = or i32 %3848, 144
  %3879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3878, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.f32 %3879, 0
  %3881 = extractvalue %dx.types.ResRet.f32 %3879, 1
  %3882 = extractvalue %dx.types.ResRet.f32 %3879, 2
  %3883 = extractvalue %dx.types.ResRet.f32 %3879, 3
  %3884 = or i32 %3848, 160
  %3885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.f32 %3885, 0
  %3887 = extractvalue %dx.types.ResRet.f32 %3885, 1
  %3888 = extractvalue %dx.types.ResRet.f32 %3885, 2
  %3889 = extractvalue %dx.types.ResRet.f32 %3885, 3
  %3890 = or i32 %3848, 192
  %3891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3890, i32 undef)  ; BufferLoad(srv,index,wot)
  %3892 = extractvalue %dx.types.ResRet.i32 %3891, 0
  %3893 = or i32 %3848, 208
  %3894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.f32 %3894, 0
  %3896 = or i32 %3848, 248
  %3897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3896, i32 undef)  ; BufferLoad(srv,index,wot)
  %3898 = extractvalue %dx.types.ResRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.ResRet.f32 %3897, 1
  %3900 = add nuw nsw i32 %3824, 1
  %3901 = bitcast float %3854 to i32
  %3902 = and i32 %3901, 512
  %3903 = icmp eq i32 %3902, 0
  %3904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3905 = extractvalue %dx.types.ResRet.f32 %3904, 0
  %3906 = extractvalue %dx.types.ResRet.f32 %3904, 1
  %3907 = extractvalue %dx.types.ResRet.f32 %3904, 2
  %3908 = extractvalue %dx.types.ResRet.f32 %3904, 3
  %3909 = call float @dx.op.dot4.f32(i32 56, float %3905, float %3906, float %3907, float %3908, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3910 = or i32 %3848, 16
  %3911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3912 = extractvalue %dx.types.ResRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.ResRet.f32 %3911, 1
  %3914 = extractvalue %dx.types.ResRet.f32 %3911, 2
  %3915 = extractvalue %dx.types.ResRet.f32 %3911, 3
  %3916 = call float @dx.op.dot4.f32(i32 56, float %3912, float %3913, float %3914, float %3915, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3917 = or i32 %3848, 32
  %3918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3919 = extractvalue %dx.types.ResRet.f32 %3918, 0
  %3920 = extractvalue %dx.types.ResRet.f32 %3918, 1
  %3921 = extractvalue %dx.types.ResRet.f32 %3918, 2
  %3922 = extractvalue %dx.types.ResRet.f32 %3918, 3
  %3923 = call float @dx.op.dot4.f32(i32 56, float %3919, float %3920, float %3921, float %3922, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3924 = call float @dx.op.unary.f32(i32 27, float %3909)  ; Round_ni(value)
  %3925 = call float @dx.op.unary.f32(i32 6, float %3924)  ; FAbs(value)
  %3926 = call float @dx.op.unary.f32(i32 27, float %3916)  ; Round_ni(value)
  %3927 = call float @dx.op.unary.f32(i32 6, float %3926)  ; FAbs(value)
  %3928 = call float @dx.op.unary.f32(i32 6, float %3923)  ; FAbs(value)
  %3929 = call float @dx.op.unary.f32(i32 27, float %3928)  ; Round_ni(value)
  %3930 = fadd fast float %3927, %3925
  %3931 = fadd fast float %3930, %3929
  %3932 = fcmp fast oeq float %3931, 0.000000e+00
  %3933 = call float @dx.op.dot4.f32(i32 56, float %3905, float %3906, float %3907, float %3908, float %3776, float %3777, float %3778, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3934 = call float @dx.op.dot4.f32(i32 56, float %3912, float %3913, float %3914, float %3915, float %3776, float %3777, float %3778, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3935 = call float @dx.op.dot4.f32(i32 56, float %3905, float %3906, float %3907, float %3908, float %3779, float %3780, float %3781, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3936 = call float @dx.op.dot4.f32(i32 56, float %3912, float %3913, float %3914, float %3915, float %3779, float %3780, float %3781, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3937 = fsub fast float %3933, %3909
  %3938 = fsub fast float %3935, %3909
  %3939 = fsub fast float %3934, %3916
  %3940 = fsub fast float %3936, %3916
  %3941 = call float @dx.op.dot3.f32(i32 55, float %3851, float %3852, float %3853, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3943 = extractvalue %dx.types.CBufRet.f32 %3942, 2
  %3944 = fadd fast float %3943, %3941
  %3945 = call float @dx.op.unary.f32(i32 7, float %3944)  ; Saturate(value)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3942, 0
  %3947 = fcmp fast ogt float %3945, %3946
  %3948 = and i1 %3932, %3947
  %3949 = and i1 %3903, %3948
  br i1 %3949, label %3971, label %3950

; <label>:3950                                    ; preds = %4235, %4052, %3971, %3823
  %3951 = phi float [ %3825, %3971 ], [ %4055, %4052 ], [ %4055, %4235 ], [ %3825, %3823 ]
  %3952 = phi float [ %3826, %3971 ], [ %3826, %4052 ], [ %4210, %4235 ], [ %3826, %3823 ]
  %3953 = phi float [ %3827, %3971 ], [ %3827, %4052 ], [ %4209, %4235 ], [ %3827, %3823 ]
  %3954 = phi float [ %3828, %3971 ], [ %3828, %4052 ], [ %4207, %4235 ], [ %3828, %3823 ]
  %3955 = phi float [ %3829, %3971 ], [ %3829, %4052 ], [ %4179, %4235 ], [ %3829, %3823 ]
  %3956 = phi float [ %3830, %3971 ], [ %3830, %4052 ], [ %4177, %4235 ], [ %3830, %3823 ]
  %3957 = phi float [ %3831, %3971 ], [ %3831, %4052 ], [ %4245, %4235 ], [ %3831, %3823 ]
  %3958 = phi float [ %3832, %3971 ], [ %3832, %4052 ], [ %4246, %4235 ], [ %3832, %3823 ]
  %3959 = phi float [ %3833, %3971 ], [ %3833, %4052 ], [ %4247, %4235 ], [ %3833, %3823 ]
  %3960 = phi float [ %3834, %3971 ], [ %3834, %4052 ], [ %4158, %4235 ], [ %3834, %3823 ]
  %3961 = phi float [ %3835, %3971 ], [ %3835, %4052 ], [ %4159, %4235 ], [ %3835, %3823 ]
  %3962 = phi float [ %3836, %3971 ], [ %3836, %4052 ], [ %4160, %4235 ], [ %3836, %3823 ]
  %3963 = phi float [ %3837, %3971 ], [ %3837, %4052 ], [ %4187, %4235 ], [ %3837, %3823 ]
  %3964 = phi float [ %3838, %3971 ], [ %3838, %4052 ], [ %4184, %4235 ], [ %3838, %3823 ]
  %3965 = phi float [ %3839, %3971 ], [ %3839, %4052 ], [ %4181, %4235 ], [ %3839, %3823 ]
  %3966 = phi float [ %3840, %3971 ], [ %3840, %4052 ], [ %4175, %4235 ], [ %3840, %3823 ]
  %3967 = phi float [ %3841, %3971 ], [ %3841, %4052 ], [ %4170, %4235 ], [ %3841, %3823 ]
  %3968 = phi float [ %3842, %3971 ], [ %3842, %4052 ], [ %4171, %4235 ], [ %3842, %3823 ]
  %3969 = phi float [ %3843, %3971 ], [ %3843, %4052 ], [ %4172, %4235 ], [ %3843, %3823 ]
  %3970 = icmp eq i32 %3900, %3822
  br i1 %3970, label %4248, label %3823

; <label>:3971                                    ; preds = %3823
  %3972 = extractvalue %dx.types.ResRet.f32 %3870, 3
  %3973 = extractvalue %dx.types.ResRet.f32 %3870, 1
  %3974 = extractvalue %dx.types.ResRet.f32 %3870, 0
  %3975 = extractvalue %dx.types.ResRet.f32 %3860, 1
  %3976 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3977 = extractvalue %dx.types.ResRet.i32 %3856, 3
  %3978 = extractvalue %dx.types.ResRet.i32 %3856, 2
  %3979 = add i32 %3977, 0
  %3980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3979, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3982 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3980, %dx.types.Handle %3981, float %3909, float %3916, float undef, float undef, i32 0, i32 0, i32 undef, float %3937, float %3939, float undef, float %3938, float %3940, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3983 = extractvalue %dx.types.ResRet.f32 %3982, 0
  %3984 = fmul fast float %3983, %3976
  %3985 = fadd fast float %3984, %3975
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = fmul fast float %3909, %3865
  %3988 = call float @dx.op.tertiary.f32(i32 46, float %3866, float %3916, float %3987)  ; FMad(a,b,c)
  %3989 = fadd fast float %3988, %3974
  %3990 = fmul fast float %3909, %3867
  %3991 = call float @dx.op.tertiary.f32(i32 46, float %3868, float %3916, float %3990)  ; FMad(a,b,c)
  %3992 = fadd fast float %3991, %3973
  %3993 = fmul fast float %3937, %3865
  %3994 = call float @dx.op.tertiary.f32(i32 46, float %3866, float %3939, float %3993)  ; FMad(a,b,c)
  %3995 = fmul fast float %3937, %3867
  %3996 = call float @dx.op.tertiary.f32(i32 46, float %3868, float %3939, float %3995)  ; FMad(a,b,c)
  %3997 = fmul fast float %3938, %3865
  %3998 = call float @dx.op.tertiary.f32(i32 46, float %3866, float %3940, float %3997)  ; FMad(a,b,c)
  %3999 = fmul fast float %3938, %3867
  %4000 = call float @dx.op.tertiary.f32(i32 46, float %3868, float %3940, float %3999)  ; FMad(a,b,c)
  %4001 = add i32 %3978, 0
  %4002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4001, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4003 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4002, %dx.types.Handle %3981, float %3989, float %3992, float undef, float undef, i32 0, i32 0, i32 undef, float %3994, float %3996, float undef, float %3998, float %4000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4004 = extractvalue %dx.types.ResRet.f32 %4003, 0
  %4005 = and i32 %3901, 1024
  %4006 = icmp ne i32 %4005, 0
  %4007 = fcmp fast ogt float %4004, 0x3FE0101020000000
  %4008 = uitofp i1 %4007 to float
  %4009 = select i1 %4006, float %4008, float %4004
  %4010 = and i32 %3901, 8192
  %4011 = icmp ne i32 %4010, 0
  %4012 = select i1 %4011, float %3972, float 1.000000e+00
  %4013 = fmul fast float %3909, 2.000000e+00
  %4014 = fadd fast float %4013, -1.000000e+00
  %4015 = call float @dx.op.unary.f32(i32 6, float %4014)  ; FAbs(value)
  %4016 = fmul fast float %4015, %3898
  %4017 = fsub fast float %4016, %3898
  %4018 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  %4019 = fmul fast float %3916, 2.000000e+00
  %4020 = fadd fast float %4019, -1.000000e+00
  %4021 = call float @dx.op.unary.f32(i32 6, float %4020)  ; FAbs(value)
  %4022 = fmul fast float %4021, %3899
  %4023 = fsub fast float %4022, %3899
  %4024 = call float @dx.op.unary.f32(i32 7, float %4023)  ; Saturate(value)
  %4025 = fmul fast float %3928, %3861
  %4026 = fsub fast float %4025, %3861
  %4027 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4028 = fmul fast float %3986, %4012
  %4029 = fmul fast float %4028, %3983
  %4030 = fmul fast float %4029, %4018
  %4031 = fmul fast float %4030, %4009
  %4032 = fmul fast float %4031, %4024
  %4033 = fmul fast float %4032, %4027
  %4034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4035 = extractvalue %dx.types.CBufRet.f32 %4034, 1
  %4036 = extractvalue %dx.types.CBufRet.f32 %4034, 0
  %4037 = fsub fast float %3945, %4036
  %4038 = fmul fast float %4037, %4035
  %4039 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4040 = fmul fast float %4033, %3862
  %4041 = fadd fast float %4033, %3862
  %4042 = fmul fast float %4041, %3871
  %4043 = fsub fast float %4042, %3871
  %4044 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4045 = and i32 %3901, 128
  %4046 = icmp ne i32 %4045, 0
  %4047 = select i1 %4046, float %4044, float %4040
  %4048 = fmul fast float %4047, %4039
  %4049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.f32 %4049, 0
  %4051 = fcmp fast ugt float %4048, %4050
  br i1 %4051, label %4052, label %3950

; <label>:4052                                    ; preds = %3971
  %4053 = select i1 %4011, float %4048, float 0.000000e+00
  %4054 = fadd fast float %4053, %3825
  %4055 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  br i1 %4011, label %3950, label %4056

; <label>:4056                                    ; preds = %4052
  %4057 = and i32 %3901, 4
  %4058 = and i32 %3901, 8
  %4059 = add i32 %3857, 0
  %4060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4059, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4062 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4060, %dx.types.Handle %4061, float %3989, float %3992, float undef, float undef, i32 0, i32 0, i32 undef, float %3994, float %3996, float undef, float %3998, float %4000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4063 = extractvalue %dx.types.ResRet.f32 %4062, 0
  %4064 = extractvalue %dx.types.ResRet.f32 %4062, 1
  %4065 = extractvalue %dx.types.ResRet.f32 %4062, 2
  %4066 = extractvalue %dx.types.ResRet.f32 %4062, 3
  %4067 = bitcast float %3883 to i32
  %4068 = and i32 %4067, 255
  %4069 = uitofp i32 %4068 to float
  %4070 = lshr i32 %4067, 8
  %4071 = and i32 %4070, 255
  %4072 = uitofp i32 %4071 to float
  %4073 = fmul fast float %4066, %4069
  %4074 = fadd fast float %4073, %4072
  %4075 = fmul fast float %4074, 0x3F70101000000000
  %4076 = add i32 %3858, 0
  %4077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4076, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4078 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4077, %dx.types.Handle %4061, float %3989, float %3992, float undef, float undef, i32 0, i32 0, i32 undef, float %3994, float %3996, float undef, float %3998, float %4000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4079 = extractvalue %dx.types.ResRet.f32 %4078, 0
  %4080 = extractvalue %dx.types.ResRet.f32 %4078, 1
  %4081 = extractvalue %dx.types.ResRet.f32 %4078, 2
  %4082 = extractvalue %dx.types.ResRet.f32 %4078, 3
  %4083 = bitcast float %3877 to i32
  %4084 = and i32 %4083, 255
  %4085 = uitofp i32 %4084 to float
  %4086 = lshr i32 %4083, 8
  %4087 = and i32 %4086, 255
  %4088 = uitofp i32 %4087 to float
  %4089 = lshr i32 %4083, 16
  %4090 = and i32 %4089, 255
  %4091 = uitofp i32 %4090 to float
  %4092 = fmul fast float %4091, 0x3F70101000000000
  %4093 = fmul fast float %4079, %4085
  %4094 = fadd fast float %4093, %4088
  %4095 = fmul fast float %4094, 0x3F70101000000000
  %4096 = fadd fast float %4080, -5.000000e-01
  %4097 = fadd fast float %4082, -5.000000e-01
  %4098 = fmul fast float %4096, %4092
  %4099 = fmul fast float %4097, %4092
  %4100 = fadd fast float %4098, 5.000000e-01
  %4101 = fadd fast float %4099, 5.000000e-01
  %4102 = fmul fast float %4063, %3886
  %4103 = fmul fast float %4064, %3887
  %4104 = fmul fast float %4065, %3888
  %4105 = fmul fast float %4100, 2.000000e+00
  %4106 = fadd fast float %4105, -1.000000e+00
  %4107 = fmul fast float %4101, 2.000000e+00
  %4108 = fadd fast float %4107, -1.000000e+00
  %4109 = fadd fast float %4106, %4108
  %4110 = fmul fast float %4109, 5.000000e-01
  %4111 = fsub fast float %4106, %4108
  %4112 = fmul fast float %4111, 5.000000e-01
  %4113 = call float @dx.op.unary.f32(i32 6, float %4110)  ; FAbs(value)
  %4114 = fsub fast float 1.000000e+00, %4113
  %4115 = call float @dx.op.unary.f32(i32 6, float %4112)  ; FAbs(value)
  %4116 = fsub fast float %4114, %4115
  %4117 = call float @dx.op.dot3.f32(i32 55, float %4110, float %4112, float %4116, float %4110, float %4112, float %4116)  ; Dot3(ax,ay,az,bx,by,bz)
  %4118 = call float @dx.op.unary.f32(i32 25, float %4117)  ; Rsqrt(value)
  %4119 = fmul fast float %4110, %4118
  %4120 = fmul fast float %4112, %4118
  %4121 = fmul fast float %4118, %4116
  %4122 = fmul fast float %4121, %3851
  %4123 = fmul fast float %4121, %3852
  %4124 = fmul fast float %4121, %3853
  %4125 = fmul fast float %4119, %3874
  %4126 = fmul fast float %4119, %3875
  %4127 = fmul fast float %4119, %3876
  %4128 = fadd fast float %4125, %4122
  %4129 = fadd fast float %4126, %4123
  %4130 = fadd fast float %4127, %4124
  %4131 = fmul fast float %4120, %3880
  %4132 = fmul fast float %4120, %3881
  %4133 = fmul fast float %4120, %3882
  %4134 = fadd fast float %4128, %4131
  %4135 = fadd fast float %4129, %4132
  %4136 = fadd fast float %4130, %4133
  %4137 = call float @dx.op.dot3.f32(i32 55, float %4134, float %4135, float %4136, float %4134, float %4135, float %4136)  ; Dot3(ax,ay,az,bx,by,bz)
  %4138 = call float @dx.op.unary.f32(i32 25, float %4137)  ; Rsqrt(value)
  %4139 = fmul fast float %4134, %4138
  %4140 = fmul fast float %4135, %4138
  %4141 = fmul fast float %4136, %4138
  %4142 = icmp ne i32 %4058, 0
  %4143 = select i1 %4142, float 1.000000e+00, float 0.000000e+00
  %4144 = fmul fast float %4048, %4143
  %4145 = and i32 %3901, 1
  %4146 = icmp eq i32 %4145, 0
  br i1 %4146, label %4147, label %4151

; <label>:4147                                    ; preds = %4056
  %4148 = fsub fast float %4139, %3834
  %4149 = fsub fast float %4140, %3835
  %4150 = fsub fast float %4141, %3836
  br label %4151

; <label>:4151                                    ; preds = %4147, %4056
  %4152 = phi float [ %4148, %4147 ], [ %4139, %4056 ]
  %4153 = phi float [ %4149, %4147 ], [ %4140, %4056 ]
  %4154 = phi float [ %4150, %4147 ], [ %4141, %4056 ]
  %4155 = fmul float %4154, %4144
  %4156 = fmul float %4153, %4144
  %4157 = fmul float %4152, %4144
  %4158 = fadd fast float %4157, %3834
  %4159 = fadd fast float %4156, %3835
  %4160 = fadd fast float %4155, %3836
  %4161 = icmp ne i32 %4057, 0
  %4162 = select i1 %4161, float 1.000000e+00, float 0.000000e+00
  %4163 = fmul fast float %4048, %4162
  %4164 = fsub fast float %4102, %3841
  %4165 = fsub fast float %4103, %3842
  %4166 = fsub fast float %4104, %3843
  %4167 = fmul fast float %4164, %4163
  %4168 = fmul fast float %4165, %4163
  %4169 = fmul fast float %4166, %4163
  %4170 = fadd fast float %4167, %3841
  %4171 = fadd fast float %4168, %3842
  %4172 = fadd fast float %4169, %3843
  %4173 = fsub fast float %4075, %3840
  %4174 = fmul fast float %4173, %4163
  %4175 = fadd fast float %4174, %3840
  %4176 = fmul fast float %4163, %3830
  %4177 = fsub fast float %3830, %4176
  %4178 = fmul fast float %4163, %3829
  %4179 = fsub fast float %3829, %4178
  %4180 = fadd fast float %4048, %3839
  %4181 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4182 = fsub fast float %4095, %3838
  %4183 = fmul fast float %4182, %4144
  %4184 = fadd fast float %4183, %3838
  %4185 = fsub fast float %4081, %3837
  %4186 = fmul fast float %4185, %4144
  %4187 = fadd fast float %4186, %3837
  %4188 = call float @dx.op.dot3.f32(i32 55, float %4102, float %4103, float %4104, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.f32 %4189, 0
  %4191 = extractvalue %dx.types.CBufRet.f32 %4189, 1
  %4192 = fmul fast float %4191, %4188
  %4193 = fadd fast float %4192, %4190
  %4194 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4195 = bitcast float %3889 to i32
  %4196 = and i32 %4195, 65535
  %4197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4196)  ; LegacyF16ToF32(value)
  %4198 = lshr i32 %4195, 16
  %4199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4198)  ; LegacyF16ToF32(value)
  %4200 = fcmp fast oge float %4197, 0.000000e+00
  %4201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4201, 0
  %4203 = select i1 %4200, float %4197, float %4202
  %4204 = fadd fast float %4203, %4199
  %4205 = fsub fast float %4194, %3828
  %4206 = fmul fast float %4205, %4048
  %4207 = fadd fast float %4206, %3828
  %4208 = fmul fast float %4204, %4048
  %4209 = call float @dx.op.binary.f32(i32 35, float %3827, float %4208)  ; FMax(a,b)
  %4210 = call float @dx.op.binary.f32(i32 35, float %3826, float %4048)  ; FMax(a,b)
  %4211 = and i32 %3901, 16
  %4212 = icmp eq i32 %4211, 0
  br i1 %4212, label %4235, label %4213

; <label>:4213                                    ; preds = %4151
  %4214 = bitcast float %3895 to i32
  %4215 = add i32 %3892, 0
  %4216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4215, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4217 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4216, %dx.types.Handle %4061, float %3989, float %3992, float undef, float undef, i32 0, i32 0, i32 undef, float %3994, float %3996, float undef, float %3998, float %4000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.ResRet.f32 %4217, 1
  %4220 = extractvalue %dx.types.ResRet.f32 %4217, 2
  %4221 = and i32 %4214, 65535
  %4222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4221)  ; LegacyF16ToF32(value)
  %4223 = fmul fast float %4218, %3886
  %4224 = fmul fast float %4219, %3887
  %4225 = fmul fast float %4220, %3888
  %4226 = and i32 %3901, 16384
  %4227 = icmp ne i32 %4226, 0
  %4228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4229 = extractvalue %dx.types.CBufRet.f32 %4228, 0
  %4230 = select i1 %4227, float %4229, float 1.000000e+00
  %4231 = fmul fast float %4230, %4222
  %4232 = fmul fast float %4223, %4231
  %4233 = fmul fast float %4224, %4231
  %4234 = fmul fast float %4225, %4231
  br label %4235

; <label>:4235                                    ; preds = %4213, %4151
  %4236 = phi float [ %4232, %4213 ], [ 0.000000e+00, %4151 ]
  %4237 = phi float [ %4233, %4213 ], [ 0.000000e+00, %4151 ]
  %4238 = phi float [ %4234, %4213 ], [ 0.000000e+00, %4151 ]
  %4239 = fsub fast float %4236, %3831
  %4240 = fsub fast float %4237, %3832
  %4241 = fsub fast float %4238, %3833
  %4242 = fmul fast float %4239, %4048
  %4243 = fmul fast float %4240, %4048
  %4244 = fmul fast float %4241, %4048
  %4245 = fadd fast float %4242, %3831
  %4246 = fadd fast float %4243, %3832
  %4247 = fadd fast float %4244, %3833
  br label %3950

; <label>:4248                                    ; preds = %3950
  br label %4249

; <label>:4249                                    ; preds = %4248, %3769
  %4250 = phi float [ 0.000000e+00, %3769 ], [ %3951, %4248 ]
  %4251 = phi float [ %1171, %3769 ], [ %3952, %4248 ]
  %4252 = phi float [ %3738, %3769 ], [ %3953, %4248 ]
  %4253 = phi float [ %3736, %3769 ], [ %3954, %4248 ]
  %4254 = phi float [ 0.000000e+00, %3769 ], [ %3955, %4248 ]
  %4255 = phi float [ 0.000000e+00, %3769 ], [ %3956, %4248 ]
  %4256 = phi float [ %3730, %3769 ], [ %3957, %4248 ]
  %4257 = phi float [ %3731, %3769 ], [ %3958, %4248 ]
  %4258 = phi float [ %3732, %3769 ], [ %3959, %4248 ]
  %4259 = phi float [ %3764, %3769 ], [ %3960, %4248 ]
  %4260 = phi float [ %3765, %3769 ], [ %3961, %4248 ]
  %4261 = phi float [ %3766, %3769 ], [ %3962, %4248 ]
  %4262 = phi float [ %3735, %3769 ], [ %3963, %4248 ]
  %4263 = phi float [ %3734, %3769 ], [ %3964, %4248 ]
  %4264 = phi float [ 0.000000e+00, %3769 ], [ %3965, %4248 ]
  %4265 = phi float [ %3733, %3769 ], [ %3966, %4248 ]
  %4266 = phi float [ %3727, %3769 ], [ %3967, %4248 ]
  %4267 = phi float [ %3728, %3769 ], [ %3968, %4248 ]
  %4268 = phi float [ %3729, %3769 ], [ %3969, %4248 ]
  %4269 = call float @dx.op.dot3.f32(i32 55, float %4259, float %4260, float %4261, float %4259, float %4260, float %4261)  ; Dot3(ax,ay,az,bx,by,bz)
  %4270 = call float @dx.op.unary.f32(i32 25, float %4269)  ; Rsqrt(value)
  %4271 = fmul fast float %4270, %4259
  %4272 = fmul fast float %4270, %4260
  %4273 = fmul fast float %4270, %4261
  %4274 = fadd fast float %4264, %1171
  %4275 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4276 = call float @dx.op.dot3.f32(i32 55, float %4271, float %4272, float %4273, float %4271, float %4272, float %4273)  ; Dot3(ax,ay,az,bx,by,bz)
  %4277 = call float @dx.op.unary.f32(i32 25, float %4276)  ; Rsqrt(value)
  %4278 = fmul fast float %4277, %4271
  %4279 = fmul fast float %4277, %4272
  %4280 = fmul fast float %4277, %4273
  br label %4281

; <label>:4281                                    ; preds = %4249, %3724
  %4282 = phi float [ %4278, %4249 ], [ %3764, %3724 ]
  %4283 = phi float [ %4279, %4249 ], [ %3765, %3724 ]
  %4284 = phi float [ %4280, %4249 ], [ %3766, %3724 ]
  %4285 = phi float [ %4266, %4249 ], [ %3727, %3724 ]
  %4286 = phi float [ %4267, %4249 ], [ %3728, %3724 ]
  %4287 = phi float [ %4268, %4249 ], [ %3729, %3724 ]
  %4288 = phi float [ %4256, %4249 ], [ %3730, %3724 ]
  %4289 = phi float [ %4257, %4249 ], [ %3731, %3724 ]
  %4290 = phi float [ %4258, %4249 ], [ %3732, %3724 ]
  %4291 = phi float [ %4265, %4249 ], [ %3733, %3724 ]
  %4292 = phi float [ %4275, %4249 ], [ %1171, %3724 ]
  %4293 = phi float [ %4263, %4249 ], [ %3734, %3724 ]
  %4294 = phi float [ %4262, %4249 ], [ %3735, %3724 ]
  %4295 = phi float [ %4255, %4249 ], [ 0.000000e+00, %3724 ]
  %4296 = phi float [ %4254, %4249 ], [ 0.000000e+00, %3724 ]
  %4297 = phi float [ %4250, %4249 ], [ 0.000000e+00, %3724 ]
  %4298 = phi float [ %4252, %4249 ], [ %3738, %3724 ]
  %4299 = phi float [ %4251, %4249 ], [ %1171, %3724 ]
  %4300 = phi float [ %4253, %4249 ], [ %3736, %3724 ]
  %4301 = add i32 %60, 392
  %4302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4301, i32 undef)  ; BufferLoad(srv,index,wot)
  %4303 = extractvalue %dx.types.ResRet.i32 %4302, 0
  %4304 = extractvalue %dx.types.ResRet.i32 %4302, 1
  %4305 = extractvalue %dx.types.ResRet.i32 %4302, 2
  %4306 = extractvalue %dx.types.ResRet.i32 %4302, 3
  %4307 = bitcast i32 %4303 to float
  %4308 = bitcast i32 %4304 to float
  %4309 = bitcast i32 %4305 to float
  %4310 = bitcast i32 %4306 to float
  %4311 = fsub fast float %4285, %4307
  %4312 = fsub fast float %4286, %4308
  %4313 = fsub fast float %4287, %4309
  %4314 = fmul fast float %4311, %201
  %4315 = fmul fast float %4312, %201
  %4316 = fmul fast float %4313, %201
  %4317 = fadd fast float %4314, %4307
  %4318 = fadd fast float %4315, %4308
  %4319 = fadd fast float %4316, %4309
  %4320 = fsub fast float %4292, %4310
  %4321 = fmul fast float %4320, %201
  %4322 = fadd fast float %4321, %4310
  %4323 = fadd fast float %4291, 0xBFB99999A0000000
  %4324 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  %4325 = fmul fast float %4324, 0x3FF1C71C80000000
  %4326 = call float @dx.op.binary.f32(i32 36, float %4291, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4327 = fsub fast float 1.000000e+00, %4325
  %4328 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  %4329 = fmul fast float %4317, %4328
  %4330 = fmul fast float %4318, %4328
  %4331 = fmul fast float %4319, %4328
  %4332 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4333 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4334 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4335 = fmul fast float %4317, %4325
  %4336 = fmul fast float %4318, %4325
  %4337 = fmul fast float %4319, %4325
  %4338 = fadd fast float %4335, %4326
  %4339 = fadd fast float %4336, %4326
  %4340 = fadd fast float %4337, %4326
  %4341 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4342 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4343 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4344 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4346 = extractvalue %dx.types.CBufRet.i32 %4345, 3
  %4347 = and i32 %4346, 8
  %4348 = icmp ne i32 %4347, 0
  %4349 = call float @dx.op.binary.f32(i32 35, float %4332, float %4317)  ; FMax(a,b)
  %4350 = call float @dx.op.binary.f32(i32 35, float %4333, float %4317)  ; FMax(a,b)
  %4351 = call float @dx.op.binary.f32(i32 35, float %4334, float %4317)  ; FMax(a,b)
  %4352 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4353 = select i1 %261, float %4317, float %4332
  %4354 = select i1 %261, float %4352, float %4333
  %4355 = select i1 %261, float 1.000000e+00, float %4334
  %4356 = select i1 %4348, float %4349, float %4353
  %4357 = select i1 %4348, float %4350, float %4354
  %4358 = select i1 %4348, float %4351, float %4355
  %4359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4360 = extractvalue %dx.types.CBufRet.f32 %4359, 0
  %4361 = extractvalue %dx.types.CBufRet.f32 %4359, 1
  %4362 = extractvalue %dx.types.CBufRet.f32 %4359, 2
  %4363 = fadd fast float %4360, %167
  %4364 = fadd fast float %4361, %168
  %4365 = fadd fast float %4362, %169
  %4366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4367 = extractvalue %dx.types.CBufRet.f32 %4366, 0
  %4368 = extractvalue %dx.types.CBufRet.f32 %4366, 1
  %4369 = fsub fast float %4363, %4367
  %4370 = fsub fast float %4364, %4368
  %4371 = fmul fast float %4369, %4369
  %4372 = fmul fast float %4370, %4370
  %4373 = fadd fast float %4371, %4372
  %4374 = call float @dx.op.unary.f32(i32 24, float %4373)  ; Sqrt(value)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4366, 2
  %4376 = fcmp fast olt float %4374, %4375
  br i1 %4376, label %4377, label %4444

; <label>:4377                                    ; preds = %4281
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 0
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 0
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 0
  %4384 = extractvalue %dx.types.CBufRet.f32 %4378, 1
  %4385 = extractvalue %dx.types.CBufRet.f32 %4380, 1
  %4386 = extractvalue %dx.types.CBufRet.f32 %4382, 1
  %4387 = extractvalue %dx.types.CBufRet.f32 %4378, 3
  %4388 = extractvalue %dx.types.CBufRet.f32 %4380, 3
  %4389 = extractvalue %dx.types.CBufRet.f32 %4382, 3
  %4390 = fadd fast float %4387, %4363
  %4391 = fadd fast float %4388, %4364
  %4392 = fadd fast float %4389, %4365
  %4393 = fmul fast float %4390, %4379
  %4394 = call float @dx.op.tertiary.f32(i32 46, float %4391, float %4381, float %4393)  ; FMad(a,b,c)
  %4395 = call float @dx.op.tertiary.f32(i32 46, float %4392, float %4383, float %4394)  ; FMad(a,b,c)
  %4396 = fmul fast float %4390, %4384
  %4397 = call float @dx.op.tertiary.f32(i32 46, float %4391, float %4385, float %4396)  ; FMad(a,b,c)
  %4398 = call float @dx.op.tertiary.f32(i32 46, float %4392, float %4386, float %4397)  ; FMad(a,b,c)
  %4399 = fsub fast float %4395, %4387
  %4400 = fsub fast float %4398, %4388
  %4401 = fsub fast float %4399, %4367
  %4402 = fadd fast float %4401, %4375
  %4403 = fsub fast float %4400, %4368
  %4404 = fadd fast float %4403, %4375
  %4405 = extractvalue %dx.types.CBufRet.f32 %4366, 3
  %4406 = fmul fast float %4402, %4405
  %4407 = fmul fast float %4404, %4405
  %4408 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4409 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4410 = fsub fast float 1.000000e+00, %4408
  %4411 = fsub fast float 1.000000e+00, %4409
  %4412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4410, float %4411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4413 = extractvalue %dx.types.ResRet.f32 %4412, 0
  %4414 = fcmp fast ugt float %4413, 0.000000e+00
  br i1 %4414, label %4415, label %4718

; <label>:4415                                    ; preds = %4377
  %4416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4417 = extractvalue %dx.types.CBufRet.f32 %4416, 2
  %4418 = fmul fast float %4417, %4413
  %4419 = extractvalue %dx.types.CBufRet.f32 %4416, 3
  %4420 = fadd fast float %4419, %4418
  %4421 = extractvalue %dx.types.CBufRet.f32 %4382, 2
  %4422 = fadd fast float %4420, %4389
  %4423 = fmul fast float %4395, %4383
  %4424 = call float @dx.op.tertiary.f32(i32 46, float %4398, float %4386, float %4423)  ; FMad(a,b,c)
  %4425 = call float @dx.op.tertiary.f32(i32 46, float %4422, float %4421, float %4424)  ; FMad(a,b,c)
  %4426 = fsub fast float %4425, %4389
  %4427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.f32 %4427, 2
  %4429 = fsub fast float %4426, %4428
  %4430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4410, float %4411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = extractvalue %dx.types.ResRet.f32 %4430, 1
  %4433 = extractvalue %dx.types.ResRet.f32 %4430, 2
  %4434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4410, float %4411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4435 = extractvalue %dx.types.ResRet.f32 %4434, 0
  %4436 = extractvalue %dx.types.ResRet.f32 %4434, 1
  %4437 = extractvalue %dx.types.ResRet.f32 %4434, 2
  %4438 = fadd fast float %4435, %4431
  %4439 = fmul fast float %4438, 0x3F847AE140000000
  %4440 = fadd fast float %4436, %4432
  %4441 = fmul fast float %4440, 0x3F847AE140000000
  %4442 = fadd fast float %4437, %4433
  %4443 = fmul fast float %4442, 0x3F847AE140000000
  br label %4718

; <label>:4444                                    ; preds = %4281
  %4445 = and i32 %237, 1
  %4446 = icmp eq i32 %4445, 0
  br i1 %4446, label %4718, label %4447

; <label>:4447                                    ; preds = %4444
  %4448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4449 = extractvalue %dx.types.CBufRet.f32 %4448, 0
  %4450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4451 = extractvalue %dx.types.CBufRet.f32 %4450, 0
  %4452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4452, 0
  %4454 = extractvalue %dx.types.CBufRet.f32 %4448, 1
  %4455 = extractvalue %dx.types.CBufRet.f32 %4450, 1
  %4456 = extractvalue %dx.types.CBufRet.f32 %4452, 1
  %4457 = extractvalue %dx.types.CBufRet.f32 %4448, 3
  %4458 = extractvalue %dx.types.CBufRet.f32 %4450, 3
  %4459 = extractvalue %dx.types.CBufRet.f32 %4452, 3
  %4460 = fadd fast float %4457, %4363
  %4461 = fadd fast float %4458, %4364
  %4462 = fadd fast float %4459, %4365
  %4463 = fmul fast float %4460, %4449
  %4464 = call float @dx.op.tertiary.f32(i32 46, float %4461, float %4451, float %4463)  ; FMad(a,b,c)
  %4465 = call float @dx.op.tertiary.f32(i32 46, float %4462, float %4453, float %4464)  ; FMad(a,b,c)
  %4466 = fmul fast float %4460, %4454
  %4467 = call float @dx.op.tertiary.f32(i32 46, float %4461, float %4455, float %4466)  ; FMad(a,b,c)
  %4468 = call float @dx.op.tertiary.f32(i32 46, float %4462, float %4456, float %4467)  ; FMad(a,b,c)
  %4469 = fsub fast float %4465, %4457
  %4470 = fsub fast float %4468, %4458
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 0
  %4473 = extractvalue %dx.types.CBufRet.f32 %4471, 1
  %4474 = extractvalue %dx.types.CBufRet.f32 %4471, 2
  %4475 = extractvalue %dx.types.CBufRet.f32 %4471, 3
  %4476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.f32 %4476, 3
  %4478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.i32 %4478, 0
  %4480 = extractvalue %dx.types.CBufRet.i32 %4478, 1
  %4481 = udiv i32 %4480, %4479
  %4482 = fsub fast float %4469, %4472
  %4483 = fsub fast float %4470, %4473
  %4484 = call float @dx.op.binary.f32(i32 35, float %4482, float 0.000000e+00)  ; FMax(a,b)
  %4485 = call float @dx.op.binary.f32(i32 35, float %4483, float 0.000000e+00)  ; FMax(a,b)
  %4486 = call float @dx.op.binary.f32(i32 36, float %4484, float %4474)  ; FMin(a,b)
  %4487 = call float @dx.op.binary.f32(i32 36, float %4485, float %4475)  ; FMin(a,b)
  %4488 = add i32 %4479, -1
  %4489 = add i32 %4481, -1
  %4490 = fmul fast float %4486, %4477
  %4491 = fmul fast float %4487, %4477
  %4492 = fptoui float %4490 to i32
  %4493 = fptoui float %4491 to i32
  %4494 = call i32 @dx.op.binary.i32(i32 40, i32 %4492, i32 %4488)  ; UMin(a,b)
  %4495 = call i32 @dx.op.binary.i32(i32 40, i32 %4493, i32 %4489)  ; UMin(a,b)
  %4496 = mul i32 %4495, %4479
  %4497 = add i32 %4496, %4494
  %4498 = shl i32 %4497, 2
  %4499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4498, i32 undef)  ; BufferLoad(srv,index,wot)
  %4500 = extractvalue %dx.types.ResRet.i32 %4499, 0
  %4501 = icmp eq i32 %4500, -1
  br i1 %4501, label %4718, label %4502

; <label>:4502                                    ; preds = %4447
  %4503 = mul i32 %4500, 148
  %4504 = add i32 %4503, 4
  %4505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4504, i32 undef)  ; BufferLoad(srv,index,wot)
  %4506 = extractvalue %dx.types.ResRet.f32 %4505, 0
  %4507 = add i32 %4503, 8
  %4508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4507, i32 undef)  ; BufferLoad(srv,index,wot)
  %4509 = extractvalue %dx.types.ResRet.f32 %4508, 0
  %4510 = add i32 %4503, 36
  %4511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = add i32 %4503, 60
  %4514 = add i32 %4503, 92
  %4515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4514, i32 undef)  ; BufferLoad(srv,index,wot)
  %4516 = extractvalue %dx.types.ResRet.i32 %4515, 0
  %4517 = add i32 %4503, 116
  %4518 = fsub fast float %4469, %4506
  %4519 = fsub fast float %4470, %4509
  %4520 = fmul fast float %4477, %4518
  %4521 = fmul fast float %4477, %4519
  %4522 = call float @dx.op.unary.f32(i32 7, float %4520)  ; Saturate(value)
  %4523 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4524 = fsub fast float 1.000000e+00, %4523
  %4525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.f32 %4525, 2
  %4527 = call float @dx.op.unary.f32(i32 83, float %4522)  ; DerivCoarseX(value)
  %4528 = call float @dx.op.unary.f32(i32 83, float %4524)  ; DerivCoarseX(value)
  %4529 = call float @dx.op.unary.f32(i32 84, float %4522)  ; DerivCoarseY(value)
  %4530 = call float @dx.op.unary.f32(i32 84, float %4524)  ; DerivCoarseY(value)
  %4531 = fmul fast float %4527, %4526
  %4532 = fmul fast float %4528, %4526
  %4533 = fmul fast float %4529, %4526
  %4534 = fmul fast float %4530, %4526
  %4535 = call float @dx.op.dot2.f32(i32 54, float %4533, float %4534, float %4533, float %4534)  ; Dot2(ax,ay,bx,by)
  %4536 = call float @dx.op.dot2.f32(i32 54, float %4531, float %4532, float %4531, float %4532)  ; Dot2(ax,ay,bx,by)
  %4537 = call float @dx.op.binary.f32(i32 35, float %4536, float %4535)  ; FMax(a,b)
  %4538 = call float @dx.op.unary.f32(i32 23, float %4537)  ; Log(value)
  %4539 = fmul fast float %4538, 5.000000e-01
  %4540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4541 = extractvalue %dx.types.CBufRet.f32 %4540, 1
  %4542 = fadd fast float %4541, %4539
  %4543 = call float @dx.op.binary.f32(i32 35, float %4542, float 0.000000e+00)  ; FMax(a,b)
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 3
  %4546 = fadd fast float %4545, %4543
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 3
  %4549 = fadd fast float %4546, %4548
  %4550 = add i32 %4516, 0
  %4551 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4550, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4552 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4551, i32 0)  ; GetDimensions(handle,mipLevel)
  %4553 = extractvalue %dx.types.Dimensions %4552, 0
  %4554 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4553)  ; FirstbitLo(value)
  %4555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4556 = extractvalue %dx.types.CBufRet.i32 %4555, 1
  %4557 = sub nsw i32 %4556, %4554
  %4558 = sitofp i32 %4557 to float
  %4559 = fsub fast float %4549, %4558
  %4560 = call float @dx.op.binary.f32(i32 35, float %4559, float 0.000000e+00)  ; FMax(a,b)
  %4561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4551, %dx.types.Handle %52, float %4522, float %4524, float %4512, float undef, i32 0, i32 0, i32 undef, float %4560)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4562 = extractvalue %dx.types.ResRet.f32 %4561, 0
  %4563 = fcmp ule float %4562, 0x3FE0101020000000
  %4564 = extractvalue %dx.types.CBufRet.i32 %4555, 0
  %4565 = and i32 %4564, 128
  %4566 = icmp ne i32 %4565, 0
  %4567 = and i1 %4563, %4566
  br i1 %4567, label %4718, label %4568

; <label>:4568                                    ; preds = %4502
  %4569 = add i32 %4503, 20
  %4570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.f32 %4570, 0
  %4572 = add i32 %4503, 24
  %4573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = add i32 %4503, 40
  %4576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.f32 %4576, 0
  %4578 = add i32 %4503, 96
  %4579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4578, i32 undef)  ; BufferLoad(srv,index,wot)
  %4580 = extractvalue %dx.types.ResRet.i32 %4579, 0
  %4581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4582 = extractvalue %dx.types.CBufRet.f32 %4581, 2
  %4583 = fmul fast float %4582, %4522
  %4584 = fmul fast float %4582, %4524
  %4585 = extractvalue %dx.types.CBufRet.f32 %4581, 3
  %4586 = fadd fast float %4583, %4585
  %4587 = fadd fast float %4584, %4585
  %4588 = add i32 %4580, 0
  %4589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4588, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4590 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4589, i32 0)  ; GetDimensions(handle,mipLevel)
  %4591 = extractvalue %dx.types.Dimensions %4590, 0
  %4592 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4591)  ; FirstbitLo(value)
  %4593 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4594 = extractvalue %dx.types.CBufRet.i32 %4593, 1
  %4595 = sub nsw i32 %4594, %4592
  %4596 = sitofp i32 %4595 to float
  %4597 = fsub fast float %4546, %4596
  %4598 = call float @dx.op.binary.f32(i32 35, float %4597, float 0.000000e+00)  ; FMax(a,b)
  %4599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4589, %dx.types.Handle %52, float %4586, float %4587, float %4577, float undef, i32 0, i32 0, i32 undef, float %4598)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4600 = extractvalue %dx.types.ResRet.f32 %4599, 0
  %4601 = fmul fast float %4600, %4571
  %4602 = fadd fast float %4601, %4574
  %4603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4604 = extractvalue %dx.types.CBufRet.f32 %4603, 0
  %4605 = extractvalue %dx.types.CBufRet.f32 %4603, 1
  %4606 = extractvalue %dx.types.CBufRet.f32 %4603, 2
  %4607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4608 = extractvalue %dx.types.CBufRet.f32 %4607, 3
  %4609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.f32 %4609, 3
  %4611 = extractvalue %dx.types.CBufRet.f32 %4603, 3
  %4612 = fadd fast float %4608, %4469
  %4613 = fadd fast float %4610, %4470
  %4614 = fadd fast float %4602, %4611
  %4615 = fmul fast float %4612, %4604
  %4616 = call float @dx.op.tertiary.f32(i32 46, float %4613, float %4605, float %4615)  ; FMad(a,b,c)
  %4617 = call float @dx.op.tertiary.f32(i32 46, float %4614, float %4606, float %4616)  ; FMad(a,b,c)
  %4618 = fsub fast float %4617, %4611
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 2
  %4621 = fsub fast float %4618, %4620
  %4622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.i32 %4622, 0
  %4624 = call i32 @dx.op.binary.i32(i32 40, i32 %4500, i32 %4623)  ; UMin(a,b)
  %4625 = mul i32 %4624, 36
  %4626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4625, i32 undef)  ; BufferLoad(srv,index,wot)
  %4627 = extractvalue %dx.types.ResRet.i32 %4626, 0
  %4628 = add i32 %4625, 4
  %4629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.f32 %4629, 0
  %4631 = fmul fast float %4630, %4522
  %4632 = fmul fast float %4630, %4524
  %4633 = extractvalue %dx.types.CBufRet.f32 %4629, 1
  %4634 = fadd fast float %4631, %4633
  %4635 = fadd fast float %4632, %4633
  %4636 = icmp eq i32 %4627, 0
  br i1 %4636, label %4705, label %4637

; <label>:4637                                    ; preds = %4568
  br label %4638

; <label>:4638                                    ; preds = %4695, %4637
  %4639 = phi float [ %4696, %4695 ], [ 0.000000e+00, %4637 ]
  %4640 = phi float [ %4697, %4695 ], [ 0.000000e+00, %4637 ]
  %4641 = phi float [ %4698, %4695 ], [ 0.000000e+00, %4637 ]
  %4642 = phi float [ %4699, %4695 ], [ 0.000000e+00, %4637 ]
  %4643 = phi float [ %4700, %4695 ], [ 0.000000e+00, %4637 ]
  %4644 = phi float [ %4701, %4695 ], [ 0.000000e+00, %4637 ]
  %4645 = phi i32 [ %4702, %4695 ], [ 0, %4637 ]
  %4646 = shl i32 %4645, 2
  %4647 = add i32 %4513, %4646
  %4648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4647, i32 undef)  ; BufferLoad(srv,index,wot)
  %4649 = extractvalue %dx.types.ResRet.f32 %4648, 0
  %4650 = add i32 %4517, %4646
  %4651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4650, i32 undef)  ; BufferLoad(srv,index,wot)
  %4652 = extractvalue %dx.types.ResRet.i32 %4651, 0
  %4653 = add i32 %4652, 0
  %4654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4653, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4655 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4654, i32 0)  ; GetDimensions(handle,mipLevel)
  %4656 = extractvalue %dx.types.Dimensions %4655, 0
  %4657 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4656)  ; FirstbitLo(value)
  %4658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4659 = extractvalue %dx.types.CBufRet.i32 %4658, 1
  %4660 = sub nsw i32 %4659, %4657
  %4661 = sitofp i32 %4660 to float
  %4662 = fsub fast float %4546, %4661
  %4663 = call float @dx.op.binary.f32(i32 35, float %4662, float 0.000000e+00)  ; FMax(a,b)
  %4664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4654, %dx.types.Handle %52, float %4634, float %4635, float %4649, float undef, i32 0, i32 0, i32 undef, float %4663)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4665 = extractvalue %dx.types.ResRet.f32 %4664, 0
  %4666 = fcmp fast ogt float %4665, 0.000000e+00
  br i1 %4666, label %4667, label %4695

; <label>:4667                                    ; preds = %4638
  %4668 = add i32 %4628, %4646
  %4669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4668, i32 undef)  ; BufferLoad(srv,index,wot)
  %4670 = extractvalue %dx.types.ResRet.i32 %4669, 0
  %4671 = and i32 %4670, 32767
  %4672 = mul nuw nsw i32 %4671, 928
  %4673 = add nuw nsw i32 %4672, 48
  %4674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4673, i32 undef)  ; BufferLoad(srv,index,wot)
  %4675 = extractvalue %dx.types.ResRet.f32 %4674, 0
  %4676 = extractvalue %dx.types.ResRet.f32 %4674, 1
  %4677 = extractvalue %dx.types.ResRet.f32 %4674, 2
  %4678 = add nuw nsw i32 %4672, 60
  %4679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4678, i32 undef)  ; BufferLoad(srv,index,wot)
  %4680 = extractvalue %dx.types.ResRet.f32 %4679, 0
  %4681 = extractvalue %dx.types.ResRet.f32 %4679, 1
  %4682 = extractvalue %dx.types.ResRet.f32 %4679, 2
  %4683 = fmul fast float %4675, %4665
  %4684 = fmul fast float %4676, %4665
  %4685 = fmul fast float %4677, %4665
  %4686 = fadd fast float %4683, %4639
  %4687 = fadd fast float %4684, %4640
  %4688 = fadd fast float %4685, %4641
  %4689 = fmul fast float %4680, %4665
  %4690 = fmul fast float %4681, %4665
  %4691 = fmul fast float %4682, %4665
  %4692 = fadd fast float %4689, %4642
  %4693 = fadd fast float %4690, %4643
  %4694 = fadd fast float %4691, %4644
  br label %4695

; <label>:4695                                    ; preds = %4667, %4638
  %4696 = phi float [ %4686, %4667 ], [ %4639, %4638 ]
  %4697 = phi float [ %4687, %4667 ], [ %4640, %4638 ]
  %4698 = phi float [ %4688, %4667 ], [ %4641, %4638 ]
  %4699 = phi float [ %4692, %4667 ], [ %4642, %4638 ]
  %4700 = phi float [ %4693, %4667 ], [ %4643, %4638 ]
  %4701 = phi float [ %4694, %4667 ], [ %4644, %4638 ]
  %4702 = add nuw i32 %4645, 1
  %4703 = icmp eq i32 %4702, %4627
  br i1 %4703, label %4704, label %4638

; <label>:4704                                    ; preds = %4695
  br label %4705

; <label>:4705                                    ; preds = %4704, %4568
  %4706 = phi float [ 0.000000e+00, %4568 ], [ %4696, %4704 ]
  %4707 = phi float [ 0.000000e+00, %4568 ], [ %4697, %4704 ]
  %4708 = phi float [ 0.000000e+00, %4568 ], [ %4698, %4704 ]
  %4709 = phi float [ 0.000000e+00, %4568 ], [ %4699, %4704 ]
  %4710 = phi float [ 0.000000e+00, %4568 ], [ %4700, %4704 ]
  %4711 = phi float [ 0.000000e+00, %4568 ], [ %4701, %4704 ]
  %4712 = fadd fast float %4709, %4706
  %4713 = fmul fast float %4712, 0x3F847AE140000000
  %4714 = fadd fast float %4710, %4707
  %4715 = fmul fast float %4714, 0x3F847AE140000000
  %4716 = fadd fast float %4711, %4708
  %4717 = fmul fast float %4716, 0x3F847AE140000000
  br label %4718

; <label>:4718                                    ; preds = %4705, %4502, %4447, %4444, %4415, %4377
  %4719 = phi float [ %4429, %4415 ], [ -1.310720e+05, %4377 ], [ %4621, %4705 ], [ -1.310720e+05, %4447 ], [ -1.310720e+05, %4502 ], [ -1.310720e+05, %4444 ]
  %4720 = phi float [ %4439, %4415 ], [ 0.000000e+00, %4377 ], [ %4713, %4705 ], [ 0.000000e+00, %4447 ], [ 0.000000e+00, %4502 ], [ 0.000000e+00, %4444 ]
  %4721 = phi float [ %4441, %4415 ], [ 0.000000e+00, %4377 ], [ %4715, %4705 ], [ 0.000000e+00, %4447 ], [ 0.000000e+00, %4502 ], [ 0.000000e+00, %4444 ]
  %4722 = phi float [ %4443, %4415 ], [ 0.000000e+00, %4377 ], [ %4717, %4705 ], [ 0.000000e+00, %4447 ], [ 0.000000e+00, %4502 ], [ 0.000000e+00, %4444 ]
  %4723 = phi i1 [ true, %4415 ], [ false, %4377 ], [ true, %4705 ], [ false, %4447 ], [ false, %4502 ], [ false, %4444 ]
  %4724 = and i32 %237, 3
  %4725 = icmp eq i32 %4724, 1
  %4726 = select i1 %4725, float 1.000000e+00, float 0.000000e+00
  %4727 = fsub fast float %4719, %169
  %4728 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4729 = select i1 %4723, float %4728, float 1.000000e+00
  %4730 = fmul fast float %4729, %4726
  %4731 = icmp eq i32 %4724, 3
  %4732 = select i1 %4731, float 1.000000e+00, float %4730
  %4733 = call float @dx.op.binary.f32(i32 35, float %4297, float %4732)  ; FMax(a,b)
  %4734 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4735 = fcmp fast une float %4734, 0.000000e+00
  %4736 = fsub fast float -0.000000e+00, %187
  %4737 = fsub fast float -0.000000e+00, %188
  %4738 = fsub fast float -0.000000e+00, %189
  br i1 %4735, label %4739, label %4901

; <label>:4739                                    ; preds = %4718
  %4740 = call float @dx.op.dot3.f32(i32 55, float %4736, float %4737, float %4738, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = fmul fast float %4734, 2.500000e+00
  %4742 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4743 = fmul fast float %4734, 0x4013FFFFE0000000
  %4744 = fadd fast float %4743, 0xBFFFFFFFE0000000
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = fmul fast float %4734, 0x4004000020000000
  %4747 = fadd fast float %4746, 0xBFF8000040000000
  %4748 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4749 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4750 = fmul fast float %4323, 1.000000e+01
  %4751 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4752 = fmul fast float %4751, 2.000000e+00
  %4753 = fsub fast float 3.000000e+00, %4752
  %4754 = fmul fast float %4751, %4751
  %4755 = fmul fast float %4754, %4753
  %4756 = fsub fast float 1.000000e+00, %4755
  %4757 = fsub fast float 0x3FE3333340000000, %4344
  %4758 = fmul fast float %4757, 0x400AAAAAA0000000
  %4759 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4760 = fmul fast float %4756, %4759
  %4761 = fmul fast float %4356, 0x3FEA2B8620000000
  %4762 = fmul fast float %4357, 0x3FEA2B8620000000
  %4763 = fmul fast float %4358, 0x3FEA2B8620000000
  %4764 = fadd fast float %4761, 0x3FC81DFBA0000000
  %4765 = fmul fast float %4764, %4356
  %4766 = fadd fast float %4765, 0x3F910E6020000000
  %4767 = fadd fast float %4762, 0x3FC81DFBA0000000
  %4768 = fmul fast float %4767, %4357
  %4769 = fadd fast float %4768, 0x3F910E6020000000
  %4770 = fadd fast float %4763, 0x3FC81DFBA0000000
  %4771 = fmul fast float %4770, %4358
  %4772 = fadd fast float %4771, 0x3F910E6020000000
  %4773 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4774 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4775 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4776 = fsub fast float %4773, %4356
  %4777 = fsub fast float %4774, %4357
  %4778 = fsub fast float %4775, %4358
  %4779 = fmul fast float %4776, %4749
  %4780 = fmul fast float %4779, %4760
  %4781 = fmul fast float %4777, %4749
  %4782 = fmul fast float %4781, %4760
  %4783 = fmul fast float %4778, %4749
  %4784 = fmul fast float %4783, %4760
  %4785 = fadd fast float %4780, %4356
  %4786 = fadd fast float %4782, %4357
  %4787 = fadd fast float %4784, %4358
  %4788 = fmul fast float %4294, %4294
  %4789 = fmul fast float %4788, %4788
  %4790 = fadd fast float %4745, 1.000000e+00
  %4791 = fsub fast float %4790, %4760
  %4792 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4793 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4795 = fsub fast float 1.000000e+00, %4789
  %4796 = call float @dx.op.binary.f32(i32 36, float %4792, float %4795)  ; FMin(a,b)
  %4797 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4798 = call float @dx.op.binary.f32(i32 35, float %4796, float %4797)  ; FMax(a,b)
  %4799 = fadd fast float %4794, 0xBFE4CCCCC0000000
  %4800 = fmul fast float %4799, 0x4006DB6DA0000000
  %4801 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4802 = fmul fast float %4801, 2.000000e+00
  %4803 = fsub fast float 3.000000e+00, %4802
  %4804 = bitcast float %4341 to i32
  %4805 = ashr i32 %4804, 1
  %4806 = add nsw i32 %4805, 532487669
  %4807 = bitcast i32 %4806 to float
  %4808 = fsub fast float 1.000000e+00, %4807
  %4809 = bitcast float %4808 to i32
  %4810 = sub nsw i32 2129859010, %4809
  %4811 = bitcast i32 %4810 to float
  %4812 = fmul fast float %4811, 2.000000e+00
  %4813 = bitcast float %4342 to i32
  %4814 = ashr i32 %4813, 1
  %4815 = add nsw i32 %4814, 532487669
  %4816 = bitcast i32 %4815 to float
  %4817 = fsub fast float 1.000000e+00, %4816
  %4818 = bitcast float %4817 to i32
  %4819 = sub nsw i32 2129859010, %4818
  %4820 = bitcast i32 %4819 to float
  %4821 = fmul fast float %4820, 2.000000e+00
  %4822 = bitcast float %4343 to i32
  %4823 = ashr i32 %4822, 1
  %4824 = add nsw i32 %4823, 532487669
  %4825 = bitcast i32 %4824 to float
  %4826 = fsub fast float 1.000000e+00, %4825
  %4827 = bitcast float %4826 to i32
  %4828 = sub nsw i32 2129859010, %4827
  %4829 = bitcast i32 %4828 to float
  %4830 = fmul fast float %4829, 2.000000e+00
  %4831 = fsub fast float 0x4002A9FBE0000000, %4812
  %4832 = fadd fast float %4812, 0x3FD54FDF00000000
  %4833 = bitcast float %4832 to i32
  %4834 = sub nsw i32 2129859010, %4833
  %4835 = bitcast i32 %4834 to float
  %4836 = fmul fast float %4835, %4831
  %4837 = fmul fast float %4836, %4836
  %4838 = fsub fast float 0x4002A9FBE0000000, %4821
  %4839 = fadd fast float %4821, 0x3FD54FDF00000000
  %4840 = bitcast float %4839 to i32
  %4841 = sub nsw i32 2129859010, %4840
  %4842 = bitcast i32 %4841 to float
  %4843 = fmul fast float %4842, %4838
  %4844 = fmul fast float %4843, %4843
  %4845 = fsub fast float 0x4002A9FBE0000000, %4830
  %4846 = fadd fast float %4830, 0x3FD54FDF00000000
  %4847 = bitcast float %4846 to i32
  %4848 = sub nsw i32 2129859010, %4847
  %4849 = bitcast i32 %4848 to float
  %4850 = fmul fast float %4849, %4845
  %4851 = fmul fast float %4850, %4850
  %4852 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4837)  ; FMax(a,b)
  %4853 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4844)  ; FMax(a,b)
  %4854 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4851)  ; FMax(a,b)
  %4855 = fsub fast float 1.000000e+00, %4740
  %4856 = fadd fast float %4855, %4756
  %4857 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4858 = fsub fast float 1.000000e+00, %4732
  %4859 = fmul fast float %4798, %4858
  %4860 = fmul fast float %4801, %4801
  %4861 = fmul fast float %4860, %4859
  %4862 = fmul fast float %4861, %4803
  %4863 = fmul fast float %4858, 0xBFE99999A0000000
  %4864 = fmul fast float %4863, %4749
  %4865 = fmul fast float %4864, %4760
  %4866 = fadd fast float %4865, 1.000000e+00
  %4867 = fadd fast float %4344, -1.000000e+00
  %4868 = fmul fast float %4866, %4867
  %4869 = fadd fast float %4868, 1.000000e+00
  %4870 = fsub fast float %4852, %4341
  %4871 = fsub fast float %4853, %4342
  %4872 = fsub fast float %4854, %4343
  %4873 = fmul fast float %4862, %4870
  %4874 = fmul fast float %4862, %4871
  %4875 = fmul fast float %4862, %4872
  %4876 = fadd fast float %4873, %4341
  %4877 = fadd fast float %4874, %4342
  %4878 = fadd fast float %4875, %4343
  %4879 = fsub fast float %111, %4282
  %4880 = fsub fast float %112, %4283
  %4881 = fsub fast float %113, %4284
  %4882 = fmul fast float %4862, %4879
  %4883 = fmul fast float %4862, %4880
  %4884 = fmul fast float %4862, %4881
  %4885 = fadd fast float %4882, %4282
  %4886 = fadd fast float %4883, %4283
  %4887 = fadd fast float %4884, %4284
  %4888 = fmul fast float %4862, %4857
  %4889 = call float @dx.op.unary.f32(i32 7, float %4869)  ; Saturate(value)
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = fmul fast float %4888, %4890
  %4892 = fadd fast float %4891, %4889
  %4893 = fsub fast float 1.000000e+00, %4294
  %4894 = fmul fast float %4862, %4893
  %4895 = fadd fast float %4894, %4294
  %4896 = call float @dx.op.dot3.f32(i32 55, float %4885, float %4886, float %4887, float %4885, float %4886, float %4887)  ; Dot3(ax,ay,az,bx,by,bz)
  %4897 = call float @dx.op.unary.f32(i32 25, float %4896)  ; Rsqrt(value)
  %4898 = fmul fast float %4885, %4897
  %4899 = fmul fast float %4886, %4897
  %4900 = fmul fast float %4887, %4897
  br label %4901

; <label>:4901                                    ; preds = %4739, %4718
  %4902 = phi float [ %4785, %4739 ], [ %4356, %4718 ]
  %4903 = phi float [ %4786, %4739 ], [ %4357, %4718 ]
  %4904 = phi float [ %4787, %4739 ], [ %4358, %4718 ]
  %4905 = phi float [ %4898, %4739 ], [ %4282, %4718 ]
  %4906 = phi float [ %4899, %4739 ], [ %4283, %4718 ]
  %4907 = phi float [ %4900, %4739 ], [ %4284, %4718 ]
  %4908 = phi float [ %4876, %4739 ], [ %4341, %4718 ]
  %4909 = phi float [ %4877, %4739 ], [ %4342, %4718 ]
  %4910 = phi float [ %4878, %4739 ], [ %4343, %4718 ]
  %4911 = phi float [ %4892, %4739 ], [ %4344, %4718 ]
  %4912 = phi float [ %4895, %4739 ], [ %4294, %4718 ]
  %4913 = fsub fast float -0.000000e+00, %169
  %4914 = select i1 %261, float 0.000000e+00, float %4910
  %4915 = call float @dx.op.dot3.f32(i32 55, float %4905, float %4906, float %4907, float %4736, float %4737, float %4738)  ; Dot3(ax,ay,az,bx,by,bz)
  %4916 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4917 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %4905, float %4906, float %4907)  ; Dot3(ax,ay,az,bx,by,bz)
  %4918 = fmul fast float %4917, 2.000000e+00
  %4919 = fmul fast float %4918, %4905
  %4920 = fmul fast float %4918, %4906
  %4921 = fmul fast float %4918, %4907
  %4922 = fsub fast float %187, %4919
  %4923 = fsub fast float %188, %4920
  %4924 = fsub fast float %189, %4921
  %4925 = call float @dx.op.binary.f32(i32 36, float %4912, float 1.000000e+00)  ; FMin(a,b)
  %4926 = fsub fast float 1.000000e+00, %4925
  %4927 = bitcast float %4926 to i32
  %4928 = ashr i32 %4927, 1
  %4929 = add nsw i32 %4928, 532487669
  %4930 = bitcast i32 %4929 to float
  %4931 = fsub fast float 1.000000e+00, %4911
  %4932 = call float @dx.op.binary.f32(i32 35, float %4931, float 0x3F847AE140000000)  ; FMax(a,b)
  %4933 = fmul fast float %4932, %4932
  %4934 = fmul fast float %4933, %4933
  %4935 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %4930, float %4934, float %4935, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4937 = extractvalue %dx.types.ResRet.f32 %4936, 0
  %4938 = fsub fast float 1.000000e+00, %4912
  %4939 = bitcast float %4938 to i32
  %4940 = sub nsw i32 2129859010, %4939
  %4941 = bitcast i32 %4940 to float
  %4942 = fsub fast float 1.000000e+00, %72
  %4943 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4944 = call float @dx.op.binary.f32(i32 35, float %4943, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4945 = fdiv fast float %4942, %4944
  %4946 = call float @dx.op.dot3.f32(i32 55, float %4905, float %4906, float %4907, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4947 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4948 = fmul fast float %4947, 5.000000e-01
  %4949 = fadd fast float %4948, 5.000000e-01
  %4950 = fmul fast float %4949, %72
  %4951 = call float @dx.op.dot3.f32(i32 55, float %4905, float %4906, float %4907, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4952 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4953 = fmul fast float %4952, %4945
  %4954 = fadd fast float %4950, %4953
  %4955 = fsub fast float 5.000000e-01, %4948
  %4956 = fmul fast float %4955, %4902
  %4957 = fmul fast float %4955, %4903
  %4958 = fmul fast float %4955, %4904
  %4959 = fadd fast float %4954, %4956
  %4960 = fadd fast float %4954, %4957
  %4961 = fadd fast float %4954, %4958
  %4962 = call float @dx.op.dot3.f32(i32 55, float %4922, float %4923, float %4924, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4963 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4964 = fmul fast float %4963, 5.000000e-01
  %4965 = fadd fast float %4964, 5.000000e-01
  %4966 = fmul fast float %4965, %72
  %4967 = call float @dx.op.dot3.f32(i32 55, float %4922, float %4923, float %4924, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4968 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4969 = fmul fast float %4968, %4945
  %4970 = fadd fast float %4966, %4969
  %4971 = fsub fast float 5.000000e-01, %4964
  %4972 = fmul fast float %4971, %4902
  %4973 = fmul fast float %4971, %4903
  %4974 = fmul fast float %4971, %4904
  %4975 = fadd fast float %4970, %4972
  %4976 = fadd fast float %4970, %4973
  %4977 = fadd fast float %4970, %4974
  %4978 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = call float @dx.op.binary.f32(i32 36, float %4902, float %4980)  ; FMin(a,b)
  %4982 = fmul fast float %4981, %4926
  %4983 = fsub fast float 1.000000e+00, %4982
  %4984 = bitcast float %4983 to i32
  %4985 = sub nsw i32 2129859010, %4984
  %4986 = bitcast i32 %4985 to float
  %4987 = call float @dx.op.binary.f32(i32 36, float %4903, float %4980)  ; FMin(a,b)
  %4988 = fmul fast float %4987, %4926
  %4989 = fsub fast float 1.000000e+00, %4988
  %4990 = bitcast float %4989 to i32
  %4991 = sub nsw i32 2129859010, %4990
  %4992 = bitcast i32 %4991 to float
  %4993 = call float @dx.op.binary.f32(i32 36, float %4904, float %4980)  ; FMin(a,b)
  %4994 = fmul fast float %4993, %4926
  %4995 = fsub fast float 1.000000e+00, %4994
  %4996 = bitcast float %4995 to i32
  %4997 = sub nsw i32 2129859010, %4996
  %4998 = bitcast i32 %4997 to float
  %4999 = fmul fast float %4925, %73
  %5000 = fmul fast float %4999, %4959
  %5001 = fmul fast float %5000, %4986
  %5002 = fmul fast float %4925, %74
  %5003 = fmul fast float %5002, %4960
  %5004 = fmul fast float %5003, %4992
  %5005 = fmul fast float %4925, %75
  %5006 = fmul fast float %5005, %4961
  %5007 = fmul fast float %5006, %4998
  %5008 = call float @dx.op.binary.f32(i32 36, float %4908, float %4980)  ; FMin(a,b)
  %5009 = fmul fast float %5008, %4926
  %5010 = fsub fast float 1.000000e+00, %5009
  %5011 = bitcast float %5010 to i32
  %5012 = sub nsw i32 2129859010, %5011
  %5013 = bitcast i32 %5012 to float
  %5014 = call float @dx.op.binary.f32(i32 36, float %4909, float %4980)  ; FMin(a,b)
  %5015 = fmul fast float %5014, %4926
  %5016 = fsub fast float 1.000000e+00, %5015
  %5017 = bitcast float %5016 to i32
  %5018 = sub nsw i32 2129859010, %5017
  %5019 = bitcast i32 %5018 to float
  %5020 = call float @dx.op.binary.f32(i32 36, float %4914, float %4980)  ; FMin(a,b)
  %5021 = fmul fast float %5020, %4926
  %5022 = fsub fast float 1.000000e+00, %5021
  %5023 = bitcast float %5022 to i32
  %5024 = sub nsw i32 2129859010, %5023
  %5025 = bitcast i32 %5024 to float
  %5026 = fmul fast float %4999, %4975
  %5027 = fmul fast float %5026, %5013
  %5028 = fmul fast float %5002, %4976
  %5029 = fmul fast float %5028, %5019
  %5030 = fmul fast float %5005, %4977
  %5031 = fmul fast float %5030, %5025
  %5032 = call float @dx.op.dot3.f32(i32 55, float %5001, float %5004, float %5007, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5033 = select i1 %261, float 0.000000e+00, float %5001
  %5034 = select i1 %261, float %5032, float %5004
  %5035 = select i1 %261, float 0.000000e+00, float %5007
  %5036 = call float @dx.op.dot3.f32(i32 55, float %5027, float %5029, float %5031, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5037 = select i1 %261, float 0.000000e+00, float %5027
  %5038 = select i1 %261, float %5036, float %5029
  %5039 = select i1 %261, float 0.000000e+00, float %5031
  %5040 = fmul fast float %4916, 9.843750e-01
  %5041 = fmul fast float %4911, 9.843750e-01
  %5042 = fadd fast float %5040, 7.812500e-03
  %5043 = fadd fast float %5041, 7.812500e-03
  %5044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5042, float %5043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5045 = extractvalue %dx.types.ResRet.f32 %5044, 2
  %5046 = extractvalue %dx.types.ResRet.f32 %5044, 3
  %5047 = fmul fast float %5045, %4908
  %5048 = fmul fast float %5045, %4909
  %5049 = fmul fast float %5045, %4914
  %5050 = fadd fast float %5047, %5046
  %5051 = fadd fast float %5048, %5046
  %5052 = fadd fast float %5049, %5046
  %5053 = fcmp fast ogt float %4295, 0.000000e+00
  br i1 %5053, label %5054, label %5080

; <label>:5054                                    ; preds = %4901
  %5055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4295, float %4916, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5056 = extractvalue %dx.types.ResRet.f32 %5055, 0
  %5057 = extractvalue %dx.types.ResRet.f32 %5055, 1
  %5058 = extractvalue %dx.types.ResRet.f32 %5055, 2
  %5059 = fadd fast float %5056, -5.000000e-01
  %5060 = fadd fast float %5057, -5.000000e-01
  %5061 = fadd fast float %5058, -5.000000e-01
  %5062 = fsub fast float 1.000000e+00, %4908
  %5063 = fsub fast float 1.000000e+00, %4909
  %5064 = fsub fast float 1.000000e+00, %4914
  %5065 = fmul fast float %4908, 4.000000e+00
  %5066 = fmul fast float %5065, %5062
  %5067 = fmul fast float %5066, %5059
  %5068 = fmul fast float %4909, 4.000000e+00
  %5069 = fmul fast float %5068, %5063
  %5070 = fmul fast float %5069, %5060
  %5071 = fmul fast float %4914, 4.000000e+00
  %5072 = fmul fast float %5071, %5064
  %5073 = fmul fast float %5072, %5061
  %5074 = fadd fast float %5067, %5050
  %5075 = fadd fast float %5070, %5051
  %5076 = fadd fast float %5073, %5052
  %5077 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5078 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5079 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  br label %5080

; <label>:5080                                    ; preds = %5054, %4901
  %5081 = phi float [ %5077, %5054 ], [ %5050, %4901 ]
  %5082 = phi float [ %5078, %5054 ], [ %5051, %4901 ]
  %5083 = phi float [ %5079, %5054 ], [ %5052, %4901 ]
  %5084 = call float @dx.op.binary.f32(i32 35, float %5082, float %5083)  ; FMax(a,b)
  %5085 = call float @dx.op.binary.f32(i32 35, float %5081, float %5084)  ; FMax(a,b)
  %5086 = fsub fast float 1.000000e+00, %5085
  %5087 = fmul fast float %5085, %4911
  %5088 = fadd fast float %5087, %4911
  %5089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5090 = extractvalue %dx.types.CBufRet.f32 %5089, 2
  %5091 = extractvalue %dx.types.CBufRet.f32 %5089, 3
  %5092 = fmul fast float %5088, %5090
  %5093 = fadd fast float %5092, %5091
  %5094 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5095 = fsub fast float 1.000000e+00, %4937
  %5096 = fadd fast float %5095, %5094
  %5097 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5098 = fcmp fast olt float %5097, 1.000000e+00
  br i1 %5098, label %5099, label %5575

; <label>:5099                                    ; preds = %5080
  %5100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5101 = extractvalue %dx.types.CBufRet.f32 %5100, 2
  %5102 = extractvalue %dx.types.CBufRet.f32 %5100, 3
  %5103 = fmul fast float %5101, %104
  %5104 = fmul fast float %5102, %105
  %5105 = fptoui float %5103 to i32
  %5106 = fptoui float %5104 to i32
  %5107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5108 = extractvalue %dx.types.CBufRet.f32 %5107, 0
  %5109 = extractvalue %dx.types.CBufRet.f32 %5107, 2
  %5110 = extractvalue %dx.types.CBufRet.f32 %5107, 3
  %5111 = fadd fast float %92, -4.000000e+00
  %5112 = call float @dx.op.binary.f32(i32 35, float %5111, float 0.000000e+00)  ; FMax(a,b)
  %5113 = fadd fast float %5112, %5108
  %5114 = fmul fast float %5113, %5109
  %5115 = call float @dx.op.unary.f32(i32 23, float %5114)  ; Log(value)
  %5116 = fmul fast float %5115, %5110
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 2
  %5119 = fmul fast float %5116, %5118
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5122 = extractvalue %dx.types.CBufRet.i32 %5121, 1
  %5123 = add i32 %5122, -1
  %5124 = uitofp i32 %5122 to float
  %5125 = fmul fast float %5124, %5120
  %5126 = fptoui float %5125 to i32
  %5127 = call i32 @dx.op.binary.i32(i32 40, i32 %5126, i32 %5123)  ; UMin(a,b)
  %5128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5129 = extractvalue %dx.types.CBufRet.i32 %5128, 2
  %5130 = extractvalue %dx.types.CBufRet.i32 %5128, 3
  %5131 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5106, i32 %5129, i32 %5105)  ; UMad(a,b,c)
  %5132 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5127, i32 %5130, i32 %5131)  ; UMad(a,b,c)
  %5133 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %5134 = fptoui float %5133 to i32
  %5135 = lshr i32 %5134, 5
  %5136 = call i32 @dx.op.binary.i32(i32 40, i32 %5135, i32 8191)  ; UMin(a,b)
  %5137 = fsub fast float %4719, %169
  %5138 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5139 = fcmp fast ogt float %5138, 0.000000e+00
  %5140 = fcmp fast ogt float %4924, 0.000000e+00
  %5141 = and i1 %5140, %5139
  br i1 %5141, label %5142, label %5171

; <label>:5142                                    ; preds = %5099
  %5143 = call float @dx.op.dot3.f32(i32 55, float %4922, float %4923, float %4924, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5144 = call float @dx.op.binary.f32(i32 35, float %5143, float -1.000000e+00)  ; FMax(a,b)
  %5145 = call float @dx.op.binary.f32(i32 36, float %5144, float 1.000000e+00)  ; FMin(a,b)
  %5146 = fmul fast float %5145, %5145
  %5147 = fsub fast float 1.000000e+00, %5146
  %5148 = fmul fast float %5147, 0x3FFC6E2300000000
  %5149 = fsub fast float 1.000000e+00, %5148
  %5150 = fcmp fast ogt float %5149, 0.000000e+00
  %5151 = call float @dx.op.unary.f32(i32 24, float %5149)  ; Sqrt(value)
  %5152 = fsub fast float 1.000000e+00, %5151
  %5153 = call float @dx.op.unary.f32(i32 23, float %5152)  ; Log(value)
  %5154 = fmul fast float %5153, 5.000000e+00
  %5155 = call float @dx.op.unary.f32(i32 21, float %5154)  ; Exp(value)
  %5156 = fmul fast float %5155, 0x3FEF591A60000000
  %5157 = fadd fast float %5156, 0x3F94DCB540000000
  %5158 = select i1 %5150, float %5157, float 1.000000e+00
  %5159 = fcmp fast oge float %5158, 1.000000e+00
  %5160 = fmul fast float %5143, 2.000000e+00
  %5161 = fadd fast float %5160, %4924
  %5162 = select i1 %5159, float %5161, float %4924
  %5163 = fsub fast float %5162, %4924
  %5164 = fmul fast float %5163, %5138
  %5165 = fadd fast float %5164, %4924
  %5166 = call float @dx.op.dot3.f32(i32 55, float %4922, float %4923, float %5165, float %4922, float %4923, float %5165)  ; Dot3(ax,ay,az,bx,by,bz)
  %5167 = call float @dx.op.unary.f32(i32 25, float %5166)  ; Rsqrt(value)
  %5168 = fmul fast float %5167, %4922
  %5169 = fmul fast float %5167, %4923
  %5170 = fmul fast float %5165, %5167
  br label %5171

; <label>:5171                                    ; preds = %5142, %5099
  %5172 = phi float [ %5168, %5142 ], [ %4922, %5099 ]
  %5173 = phi float [ %5169, %5142 ], [ %4923, %5099 ]
  %5174 = phi float [ %5170, %5142 ], [ %4924, %5099 ]
  %5175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.i32 %5175, 2
  %5177 = add nsw i32 %5176, -1
  %5178 = call i32 @dx.op.binary.i32(i32 37, i32 %5177, i32 0)  ; IMax(a,b)
  %5179 = shl i32 %5136, 2
  %5180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5179, i32 undef)  ; BufferLoad(srv,index,wot)
  %5181 = extractvalue %dx.types.ResRet.i32 %5180, 0
  %5182 = lshr i32 %5181, 16
  %5183 = and i32 %5181, 65535
  %5184 = lshr i32 %5181, 21
  %5185 = lshr i32 %5183, 5
  %5186 = call i32 @dx.op.binary.i32(i32 40, i32 %5185, i32 %5178)  ; UMin(a,b)
  %5187 = icmp ugt i32 %5184, %5186
  br i1 %5187, label %5551, label %5188

; <label>:5188                                    ; preds = %5171
  br label %5189

; <label>:5189                                    ; preds = %5543, %5188
  %5190 = phi float [ %5544, %5543 ], [ 0.000000e+00, %5188 ]
  %5191 = phi float [ %5545, %5543 ], [ 0.000000e+00, %5188 ]
  %5192 = phi float [ %5546, %5543 ], [ 0.000000e+00, %5188 ]
  %5193 = phi float [ %5547, %5543 ], [ 1.000000e+00, %5188 ]
  %5194 = phi i32 [ %5548, %5543 ], [ %5184, %5188 ]
  %5195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5196 = extractvalue %dx.types.CBufRet.i32 %5195, 2
  %5197 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5132, i32 %5196, i32 %5194)  ; UMad(a,b,c)
  %5198 = shl i32 %5197, 2
  %5199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5198, i32 undef)  ; BufferLoad(srv,index,wot)
  %5200 = extractvalue %dx.types.ResRet.i32 %5199, 0
  %5201 = shl i32 %5194, 5
  %5202 = sub nsw i32 %5182, %5201
  %5203 = call i32 @dx.op.binary.i32(i32 37, i32 %5202, i32 0)  ; IMax(a,b)
  %5204 = call i32 @dx.op.binary.i32(i32 38, i32 %5203, i32 31)  ; IMin(a,b)
  %5205 = sub nsw i32 1, %5182
  %5206 = add nsw i32 %5205, %5183
  %5207 = call i32 @dx.op.binary.i32(i32 37, i32 %5206, i32 0)  ; IMax(a,b)
  %5208 = call i32 @dx.op.binary.i32(i32 38, i32 %5207, i32 32)  ; IMin(a,b)
  %5209 = and i32 %5208, 31
  %5210 = shl i32 -1, %5209
  %5211 = xor i32 %5210, -1
  %5212 = and i32 %5204, 31
  %5213 = shl i32 %5211, %5212
  %5214 = icmp eq i32 %5208, 32
  %5215 = select i1 %5214, i32 -1, i32 %5213
  %5216 = and i32 %5215, %5200
  %5217 = icmp eq i32 %5216, 0
  br i1 %5217, label %5543, label %5218

; <label>:5218                                    ; preds = %5189
  br label %5219

; <label>:5219                                    ; preds = %5326, %5218
  %5220 = phi float [ %5327, %5326 ], [ %5190, %5218 ]
  %5221 = phi float [ %5328, %5326 ], [ %5191, %5218 ]
  %5222 = phi float [ %5329, %5326 ], [ %5192, %5218 ]
  %5223 = phi float [ %5330, %5326 ], [ %5193, %5218 ]
  %5224 = phi i32 [ %5229, %5326 ], [ %5216, %5218 ]
  %5225 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5224)  ; FirstbitLo(value)
  %5226 = add i32 %5225, %5201
  %5227 = and i32 %5225, 31
  %5228 = shl i32 1, %5227
  %5229 = xor i32 %5228, %5224
  %5230 = mul i32 %5226, 72
  %5231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5230, i32 undef)  ; BufferLoad(srv,index,wot)
  %5232 = extractvalue %dx.types.ResRet.f32 %5231, 0
  %5233 = extractvalue %dx.types.ResRet.f32 %5231, 1
  %5234 = extractvalue %dx.types.ResRet.f32 %5231, 2
  %5235 = add i32 %5230, 12
  %5236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5235, i32 undef)  ; BufferLoad(srv,index,wot)
  %5237 = extractvalue %dx.types.ResRet.i32 %5236, 0
  %5238 = add i32 %5230, 16
  %5239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5238, i32 undef)  ; BufferLoad(srv,index,wot)
  %5240 = extractvalue %dx.types.ResRet.f32 %5239, 0
  %5241 = extractvalue %dx.types.ResRet.f32 %5239, 1
  %5242 = extractvalue %dx.types.ResRet.f32 %5239, 2
  %5243 = add i32 %5230, 28
  %5244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5243, i32 undef)  ; BufferLoad(srv,index,wot)
  %5245 = extractvalue %dx.types.ResRet.f32 %5244, 0
  %5246 = add i32 %5230, 32
  %5247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5246, i32 undef)  ; BufferLoad(srv,index,wot)
  %5248 = extractvalue %dx.types.ResRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.ResRet.f32 %5247, 1
  %5250 = extractvalue %dx.types.ResRet.f32 %5247, 2
  %5251 = extractvalue %dx.types.ResRet.f32 %5247, 3
  %5252 = add i32 %5230, 48
  %5253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5252, i32 undef)  ; BufferLoad(srv,index,wot)
  %5254 = extractvalue %dx.types.ResRet.f32 %5253, 0
  %5255 = extractvalue %dx.types.ResRet.f32 %5253, 1
  %5256 = add i32 %5230, 56
  %5257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5256, i32 undef)  ; BufferLoad(srv,index,wot)
  %5258 = extractvalue %dx.types.ResRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.ResRet.f32 %5257, 1
  %5260 = add i32 %5230, 64
  %5261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5260, i32 undef)  ; BufferLoad(srv,index,wot)
  %5262 = extractvalue %dx.types.ResRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.ResRet.f32 %5261, 1
  %5264 = mul i32 %5226, 60
  %5265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5264, i32 undef)  ; BufferLoad(srv,index,wot)
  %5266 = extractvalue %dx.types.ResRet.f32 %5265, 0
  %5267 = extractvalue %dx.types.ResRet.f32 %5265, 1
  %5268 = extractvalue %dx.types.ResRet.f32 %5265, 2
  %5269 = add i32 %5264, 12
  %5270 = add i32 %5264, 48
  %5271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5270, i32 undef)  ; BufferLoad(srv,index,wot)
  %5272 = extractvalue %dx.types.ResRet.f32 %5271, 0
  %5273 = extractvalue %dx.types.ResRet.f32 %5271, 1
  %5274 = extractvalue %dx.types.ResRet.f32 %5271, 2
  %5275 = and i32 %5237, 32767
  %5276 = bitcast float %5232 to i32
  %5277 = icmp eq i32 %5276, -1
  %5278 = bitcast float %5233 to i32
  %5279 = and i32 %5237, 32768
  %5280 = icmp ne i32 %5279, 0
  %5281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5282 = extractvalue %dx.types.CBufRet.f32 %5281, 0
  %5283 = extractvalue %dx.types.CBufRet.f32 %5281, 1
  %5284 = extractvalue %dx.types.CBufRet.f32 %5281, 2
  %5285 = fsub fast float %5266, %5282
  %5286 = fsub fast float %5267, %5283
  %5287 = fsub fast float %5268, %5284
  %5288 = fsub fast float %167, %5285
  %5289 = fsub fast float %168, %5286
  %5290 = fsub fast float %169, %5287
  %5291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5269, i32 undef)  ; BufferLoad(srv,index,wot)
  %5292 = extractvalue %dx.types.ResRet.f32 %5291, 0
  %5293 = extractvalue %dx.types.ResRet.f32 %5291, 1
  %5294 = extractvalue %dx.types.ResRet.f32 %5291, 2
  %5295 = call float @dx.op.dot3.f32(i32 55, float %5288, float %5289, float %5290, float %5292, float %5293, float %5294)  ; Dot3(ax,ay,az,bx,by,bz)
  %5296 = add i32 %5264, 24
  %5297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5296, i32 undef)  ; BufferLoad(srv,index,wot)
  %5298 = extractvalue %dx.types.ResRet.f32 %5297, 0
  %5299 = extractvalue %dx.types.ResRet.f32 %5297, 1
  %5300 = extractvalue %dx.types.ResRet.f32 %5297, 2
  %5301 = call float @dx.op.dot3.f32(i32 55, float %5288, float %5289, float %5290, float %5298, float %5299, float %5300)  ; Dot3(ax,ay,az,bx,by,bz)
  %5302 = add i32 %5264, 36
  %5303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5302, i32 undef)  ; BufferLoad(srv,index,wot)
  %5304 = extractvalue %dx.types.ResRet.f32 %5303, 0
  %5305 = extractvalue %dx.types.ResRet.f32 %5303, 1
  %5306 = extractvalue %dx.types.ResRet.f32 %5303, 2
  %5307 = call float @dx.op.dot3.f32(i32 55, float %5288, float %5289, float %5290, float %5304, float %5305, float %5306)  ; Dot3(ax,ay,az,bx,by,bz)
  %5308 = call float @dx.op.unary.f32(i32 6, float %5295)  ; FAbs(value)
  %5309 = call float @dx.op.unary.f32(i32 6, float %5301)  ; FAbs(value)
  %5310 = call float @dx.op.unary.f32(i32 6, float %5307)  ; FAbs(value)
  %5311 = fsub fast float %5272, %5308
  %5312 = fsub fast float %5273, %5309
  %5313 = fsub fast float %5274, %5310
  %5314 = fmul fast float %5311, %5240
  %5315 = fmul fast float %5312, %5241
  %5316 = fmul fast float %5313, %5242
  %5317 = call float @dx.op.binary.f32(i32 36, float %5315, float %5316)  ; FMin(a,b)
  %5318 = call float @dx.op.binary.f32(i32 36, float %5314, float %5317)  ; FMin(a,b)
  %5319 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5320 = call float @dx.op.binary.f32(i32 36, float %5223, float %5319)  ; FMin(a,b)
  %5321 = uitofp i1 %5280 to float
  %5322 = fadd fast float %5138, 1.000000e+00
  %5323 = fsub fast float %5322, %5321
  %5324 = fmul fast float %5320, %5323
  %5325 = fcmp fast ogt float %5324, 0.000000e+00
  br i1 %5325, label %5332, label %5326

; <label>:5326                                    ; preds = %5474, %5219
  %5327 = phi float [ %5538, %5474 ], [ %5220, %5219 ]
  %5328 = phi float [ %5539, %5474 ], [ %5221, %5219 ]
  %5329 = phi float [ %5540, %5474 ], [ %5222, %5219 ]
  %5330 = phi float [ %5541, %5474 ], [ %5223, %5219 ]
  %5331 = icmp eq i32 %5224, %5228
  br i1 %5331, label %5542, label %5219

; <label>:5332                                    ; preds = %5219
  br i1 %5277, label %5390, label %5333

; <label>:5333                                    ; preds = %5332
  %5334 = fsub fast float -0.000000e+00, %5292
  %5335 = fsub fast float -0.000000e+00, %5293
  %5336 = fsub fast float -0.000000e+00, %5294
  %5337 = call float @dx.op.dot3.f32(i32 55, float %5172, float %5173, float %5174, float %5334, float %5335, float %5336)  ; Dot3(ax,ay,az,bx,by,bz)
  %5338 = fsub fast float -0.000000e+00, %5337
  %5339 = call float @dx.op.dot3.f32(i32 55, float %5288, float %5289, float %5290, float %5334, float %5335, float %5336)  ; Dot3(ax,ay,az,bx,by,bz)
  %5340 = fadd fast float %5339, %5255
  %5341 = fadd fast float %5254, %5339
  %5342 = fsub fast float -0.000000e+00, %5341
  %5343 = fcmp ogt float %5337, -0.000000e+00
  %5344 = select i1 %5343, float %5342, float %5340
  %5345 = call float @dx.op.unary.f32(i32 6, float %5338)  ; FAbs(value)
  %5346 = fdiv fast float 1.000000e+00, %5345
  %5347 = fmul fast float %5344, %5346
  %5348 = call float @dx.op.binary.f32(i32 35, float %5347, float 0.000000e+00)  ; FMax(a,b)
  %5349 = fsub fast float -0.000000e+00, %5298
  %5350 = fsub fast float -0.000000e+00, %5299
  %5351 = fsub fast float -0.000000e+00, %5300
  %5352 = call float @dx.op.dot3.f32(i32 55, float %5172, float %5173, float %5174, float %5349, float %5350, float %5351)  ; Dot3(ax,ay,az,bx,by,bz)
  %5353 = fsub fast float -0.000000e+00, %5352
  %5354 = call float @dx.op.dot3.f32(i32 55, float %5288, float %5289, float %5290, float %5349, float %5350, float %5351)  ; Dot3(ax,ay,az,bx,by,bz)
  %5355 = fadd fast float %5354, %5259
  %5356 = fadd fast float %5258, %5354
  %5357 = fsub fast float -0.000000e+00, %5356
  %5358 = fcmp ogt float %5352, -0.000000e+00
  %5359 = select i1 %5358, float %5357, float %5355
  %5360 = call float @dx.op.unary.f32(i32 6, float %5353)  ; FAbs(value)
  %5361 = fdiv fast float 1.000000e+00, %5360
  %5362 = fmul fast float %5359, %5361
  %5363 = call float @dx.op.binary.f32(i32 35, float %5362, float 0.000000e+00)  ; FMax(a,b)
  %5364 = fsub fast float -0.000000e+00, %5304
  %5365 = fsub fast float -0.000000e+00, %5305
  %5366 = fsub fast float -0.000000e+00, %5306
  %5367 = call float @dx.op.dot3.f32(i32 55, float %5172, float %5173, float %5174, float %5364, float %5365, float %5366)  ; Dot3(ax,ay,az,bx,by,bz)
  %5368 = fsub fast float -0.000000e+00, %5367
  %5369 = call float @dx.op.dot3.f32(i32 55, float %5288, float %5289, float %5290, float %5364, float %5365, float %5366)  ; Dot3(ax,ay,az,bx,by,bz)
  %5370 = fadd fast float %5369, %5263
  %5371 = fadd fast float %5262, %5369
  %5372 = fsub fast float -0.000000e+00, %5371
  %5373 = fcmp ogt float %5367, -0.000000e+00
  %5374 = select i1 %5373, float %5372, float %5370
  %5375 = call float @dx.op.unary.f32(i32 6, float %5368)  ; FAbs(value)
  %5376 = fdiv fast float 1.000000e+00, %5375
  %5377 = fmul fast float %5374, %5376
  %5378 = call float @dx.op.binary.f32(i32 35, float %5377, float 0.000000e+00)  ; FMax(a,b)
  %5379 = call float @dx.op.binary.f32(i32 36, float %5363, float %5378)  ; FMin(a,b)
  %5380 = call float @dx.op.binary.f32(i32 36, float %5348, float %5379)  ; FMin(a,b)
  %5381 = fmul fast float %5380, %5172
  %5382 = fmul fast float %5380, %5173
  %5383 = fmul fast float %5380, %5174
  %5384 = fadd fast float %5381, %167
  %5385 = fadd fast float %5382, %168
  %5386 = fadd fast float %5383, %169
  %5387 = fsub fast float %5384, %5232
  %5388 = fsub fast float %5385, %5233
  %5389 = fsub fast float %5386, %5234
  br label %5397

; <label>:5390                                    ; preds = %5332
  %5391 = fmul fast float %5172, 8.096000e+03
  %5392 = fmul fast float %5173, 8.096000e+03
  %5393 = fmul fast float %5174, 8.096000e+03
  %5394 = fadd fast float %5391, %167
  %5395 = fadd fast float %5392, %168
  %5396 = fadd fast float %5393, %169
  br label %5397

; <label>:5397                                    ; preds = %5390, %5333
  %5398 = phi float [ %5172, %5390 ], [ %5387, %5333 ]
  %5399 = phi float [ %5173, %5390 ], [ %5388, %5333 ]
  %5400 = phi float [ %5174, %5390 ], [ %5389, %5333 ]
  %5401 = phi float [ %5394, %5390 ], [ %5384, %5333 ]
  %5402 = phi float [ %5395, %5390 ], [ %5385, %5333 ]
  %5403 = phi float [ %5396, %5390 ], [ %5386, %5333 ]
  %5404 = fcmp fast olt float %5251, 1.000000e+00
  br i1 %5404, label %5405, label %5436, !dx.controlflow.hints !97

; <label>:5405                                    ; preds = %5397
  %5406 = fmul fast float %5400, %5249
  %5407 = fmul fast float %5399, %5250
  %5408 = fsub fast float %5406, %5407
  %5409 = fmul fast float %5398, %5250
  %5410 = fmul fast float %5400, %5248
  %5411 = fsub fast float %5409, %5410
  %5412 = fmul fast float %5399, %5248
  %5413 = fmul fast float %5398, %5249
  %5414 = fsub fast float %5412, %5413
  %5415 = fmul fast float %5408, 2.000000e+00
  %5416 = fmul fast float %5411, 2.000000e+00
  %5417 = fmul fast float %5414, 2.000000e+00
  %5418 = fmul fast float %5415, %5251
  %5419 = fmul fast float %5416, %5251
  %5420 = fmul fast float %5417, %5251
  %5421 = fmul fast float %5417, %5249
  %5422 = fmul fast float %5416, %5250
  %5423 = fmul fast float %5415, %5250
  %5424 = fmul fast float %5417, %5248
  %5425 = fmul fast float %5416, %5248
  %5426 = fmul fast float %5415, %5249
  %5427 = fadd fast float %5421, %5398
  %5428 = fadd fast float %5427, %5418
  %5429 = fsub fast float %5428, %5422
  %5430 = fsub fast float %5399, %5424
  %5431 = fadd fast float %5430, %5419
  %5432 = fadd fast float %5431, %5423
  %5433 = fadd fast float %5420, %5400
  %5434 = fsub fast float %5433, %5426
  %5435 = fadd fast float %5434, %5425
  br label %5436

; <label>:5436                                    ; preds = %5405, %5397
  %5437 = phi float [ %5429, %5405 ], [ %5398, %5397 ]
  %5438 = phi float [ %5432, %5405 ], [ %5399, %5397 ]
  %5439 = phi float [ %5435, %5405 ], [ %5400, %5397 ]
  br i1 %5277, label %5471, label %5440

; <label>:5440                                    ; preds = %5436
  %5441 = fmul fast float %4911, 0x400187C840000000
  %5442 = fadd fast float %5441, 0xC00EFC2120000000
  %5443 = fmul fast float %5442, %4911
  %5444 = fadd fast float %5443, 0x3FE5D16340000000
  %5445 = fmul fast float %5444, %4911
  %5446 = fadd fast float %5445, 1.000000e+00
  %5447 = call float @dx.op.unary.f32(i32 7, float %5446)  ; Saturate(value)
  %5448 = fsub fast float %5401, %167
  %5449 = fsub fast float %5402, %168
  %5450 = fsub fast float %5403, %169
  %5451 = fsub fast float %5401, %5232
  %5452 = fsub fast float %5402, %5233
  %5453 = fsub fast float %5403, %5234
  %5454 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5448, float %5449, float %5450)  ; Dot3(ax,ay,az,bx,by,bz)
  %5455 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %5453, float %5451, float %5452, float %5453)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = fadd fast float %5455, 0x3EE4F8B580000000
  %5457 = fdiv fast float %5454, %5456
  %5458 = bitcast float %5457 to i32
  %5459 = ashr i32 %5458, 1
  %5460 = add nsw i32 %5459, 532487669
  %5461 = bitcast i32 %5460 to float
  %5462 = fmul fast float %5461, %5447
  %5463 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  %5464 = fmul fast float %5463, 0x4009981AE0000000
  %5465 = fsub fast float 0x40111BBD80000000, %5464
  %5466 = fmul fast float %5465, %5463
  %5467 = fadd fast float %5466, 0xC0009F6020000000
  %5468 = fmul fast float %5467, %5463
  %5469 = fadd fast float %5468, 1.000000e+00
  %5470 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  br label %5474

; <label>:5471                                    ; preds = %5436
  %5472 = icmp ne i32 %5278, -1
  %5473 = zext i1 %5472 to i32
  br label %5474

; <label>:5474                                    ; preds = %5471, %5440
  %5475 = phi float [ %4911, %5471 ], [ %5470, %5440 ]
  %5476 = phi i32 [ %5473, %5471 ], [ 0, %5440 ]
  %5477 = fmul float %5475, 5.000000e+00
  %5478 = fsub float 5.000000e+00, %5477
  %5479 = icmp ne i32 %5476, 0
  %5480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5481 = extractvalue %dx.types.CBufRet.f32 %5480, 3
  %5482 = fadd fast float %5481, %5478
  %5483 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5482)  ; FMax(a,b)
  %5484 = call float @dx.op.unary.f32(i32 6, float %5437)  ; FAbs(value)
  %5485 = call float @dx.op.unary.f32(i32 6, float %5438)  ; FAbs(value)
  %5486 = fadd fast float %5485, %5484
  %5487 = call float @dx.op.unary.f32(i32 6, float %5439)  ; FAbs(value)
  %5488 = fadd fast float %5486, %5487
  %5489 = fcmp fast oeq float %5488, 0.000000e+00
  %5490 = fdiv fast float 1.000000e+00, %5488
  %5491 = select i1 %5489, float 1.000000e+00, float %5490
  %5492 = fmul fast float %5491, %5437
  %5493 = fmul fast float %5491, %5438
  %5494 = call float @dx.op.unary.f32(i32 6, float %5493)  ; FAbs(value)
  %5495 = call float @dx.op.unary.f32(i32 6, float %5492)  ; FAbs(value)
  %5496 = fsub fast float 1.000000e+00, %5494
  %5497 = fsub fast float 1.000000e+00, %5495
  %5498 = fcmp fast oge float %5492, 0.000000e+00
  %5499 = fcmp fast oge float %5493, 0.000000e+00
  %5500 = select i1 %5498, float 1.000000e+00, float -1.000000e+00
  %5501 = select i1 %5499, float 1.000000e+00, float -1.000000e+00
  %5502 = fcmp fast ole float %5439, 0.000000e+00
  %5503 = fmul fast float %5500, %5496
  %5504 = fmul fast float %5501, %5497
  %5505 = select i1 %5502, float %5503, float %5492
  %5506 = select i1 %5502, float %5504, float %5493
  %5507 = fmul fast float %5505, 5.000000e-01
  %5508 = fmul fast float %5506, 5.000000e-01
  %5509 = fadd fast float %5507, 5.000000e-01
  %5510 = fadd fast float %5508, 5.000000e-01
  %5511 = uitofp i32 %5275 to float
  %5512 = call float @dx.op.binary.f32(i32 36, float %5483, float 3.000000e+00)  ; FMin(a,b)
  %5513 = fadd fast float %5512, 2.000000e+00
  %5514 = call float @dx.op.unary.f32(i32 21, float %5513)  ; Exp(value)
  %5515 = extractvalue %dx.types.CBufRet.f32 %5480, 1
  %5516 = fmul fast float %5515, %5514
  %5517 = fmul fast float %5516, 2.000000e+00
  %5518 = fsub fast float 1.000000e+00, %5517
  %5519 = fmul fast float %5509, %5518
  %5520 = fmul fast float %5510, %5518
  %5521 = fadd fast float %5519, %5516
  %5522 = fadd fast float %5520, %5516
  %5523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %5521, float %5522, float %5511, float undef, i32 0, i32 0, i32 undef, float %5483)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5524 = extractvalue %dx.types.ResRet.f32 %5523, 0
  %5525 = extractvalue %dx.types.ResRet.f32 %5523, 1
  %5526 = extractvalue %dx.types.ResRet.f32 %5523, 2
  %5527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5528 = extractvalue %dx.types.CBufRet.f32 %5527, 3
  %5529 = fmul fast float %5528, %5245
  %5530 = call float @dx.op.binary.f32(i32 36, float %4978, float %5529)  ; FMin(a,b)
  %5531 = select i1 %5479, float %5530, float %5529
  %5532 = fmul fast float %5524, %5324
  %5533 = fmul fast float %5532, %5531
  %5534 = fmul fast float %5525, %5324
  %5535 = fmul fast float %5534, %5531
  %5536 = fmul fast float %5526, %5324
  %5537 = fmul fast float %5536, %5531
  %5538 = fadd fast float %5533, %5220
  %5539 = fadd fast float %5535, %5221
  %5540 = fadd fast float %5537, %5222
  %5541 = fsub fast float %5223, %5324
  br label %5326

; <label>:5542                                    ; preds = %5326
  br label %5543

; <label>:5543                                    ; preds = %5542, %5189
  %5544 = phi float [ %5190, %5189 ], [ %5327, %5542 ]
  %5545 = phi float [ %5191, %5189 ], [ %5328, %5542 ]
  %5546 = phi float [ %5192, %5189 ], [ %5329, %5542 ]
  %5547 = phi float [ %5193, %5189 ], [ %5330, %5542 ]
  %5548 = add i32 %5194, 1
  %5549 = icmp ugt i32 %5548, %5186
  br i1 %5549, label %5550, label %5189, !llvm.loop !98

; <label>:5550                                    ; preds = %5543
  br label %5551

; <label>:5551                                    ; preds = %5550, %5171
  %5552 = phi float [ 0.000000e+00, %5171 ], [ %5544, %5550 ]
  %5553 = phi float [ 0.000000e+00, %5171 ], [ %5545, %5550 ]
  %5554 = phi float [ 0.000000e+00, %5171 ], [ %5546, %5550 ]
  %5555 = call float @dx.op.dot3.f32(i32 55, float %5552, float %5553, float %5554, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5556 = select i1 %261, float 0.000000e+00, float %5552
  %5557 = select i1 %261, float %5555, float %5553
  %5558 = select i1 %261, float 0.000000e+00, float %5554
  %5559 = fcmp fast olt float %5097, 0.000000e+00
  %5560 = call float @dx.op.unary.f32(i32 6, float %5097)  ; FAbs(value)
  %5561 = fmul fast float %5560, %5037
  %5562 = fmul fast float %5560, %5038
  %5563 = fmul fast float %5560, %5039
  %5564 = select i1 %5559, float %5037, float %5561
  %5565 = select i1 %5559, float %5038, float %5562
  %5566 = select i1 %5559, float %5039, float %5563
  %5567 = fsub fast float 1.000000e+00, %5560
  %5568 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5569 = fmul fast float %5568, %5556
  %5570 = fmul fast float %5568, %5557
  %5571 = fmul fast float %5568, %5558
  %5572 = fadd fast float %5564, %5569
  %5573 = fadd fast float %5565, %5570
  %5574 = fadd fast float %5566, %5571
  br label %5575

; <label>:5575                                    ; preds = %5551, %5080
  %5576 = phi float [ %5037, %5080 ], [ %5572, %5551 ]
  %5577 = phi float [ %5038, %5080 ], [ %5573, %5551 ]
  %5578 = phi float [ %5039, %5080 ], [ %5574, %5551 ]
  %5579 = fmul fast float %5086, %5033
  %5580 = fmul fast float %5086, %5034
  %5581 = fmul fast float %5086, %5035
  %5582 = call float @dx.op.dot3.f32(i32 55, float %4902, float %4903, float %4904, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5583 = fcmp fast ogt float %5582, 0x3E7FF19E20000000
  %5584 = fdiv fast float 1.000000e+00, %5582
  %5585 = select i1 %5583, float %5584, float 0.000000e+00
  %5586 = fmul fast float %5585, %4902
  %5587 = fmul fast float %5585, %4903
  %5588 = fmul fast float %5585, %4904
  %5589 = fadd fast float %5586, -1.000000e+00
  %5590 = fadd fast float %5587, -1.000000e+00
  %5591 = fadd fast float %5588, -1.000000e+00
  %5592 = fmul fast float %5589, 5.000000e-01
  %5593 = fmul fast float %5590, 5.000000e-01
  %5594 = fmul fast float %5591, 5.000000e-01
  %5595 = fadd fast float %5592, 1.000000e+00
  %5596 = fadd fast float %5593, 1.000000e+00
  %5597 = fadd fast float %5594, 1.000000e+00
  %5598 = fmul fast float %5576, %5081
  %5599 = fmul fast float %5577, %5082
  %5600 = fmul fast float %5578, %5083
  %5601 = fsub fast float 1.000000e+00, %4916
  %5602 = bitcast float %5601 to i32
  %5603 = sitofp i32 %5602 to float
  %5604 = fmul fast float %5603, 5.000000e+00
  %5605 = fadd fast float %5604, 0xC1EFBF8940000000
  %5606 = fptosi float %5605 to i32
  %5607 = bitcast i32 %5606 to float
  %5608 = fmul fast float %5607, %4296
  %5609 = fmul fast float %5033, %5608
  %5610 = fmul fast float %5609, %5086
  %5611 = fmul fast float %5610, %5595
  %5612 = fmul fast float %5034, %5608
  %5613 = fmul fast float %5612, %5086
  %5614 = fmul fast float %5613, %5596
  %5615 = fmul fast float %5035, %5608
  %5616 = fmul fast float %5615, %5086
  %5617 = fmul fast float %5616, %5597
  %5618 = fmul fast float %5579, %4322
  %5619 = fmul fast float %5580, %4322
  %5620 = fmul fast float %5581, %4322
  %5621 = fadd fast float %5598, %4288
  %5622 = fadd fast float %5621, %5611
  %5623 = fmul fast float %5622, %4322
  %5624 = fadd fast float %5599, %4289
  %5625 = fadd fast float %5624, %5614
  %5626 = fmul fast float %5625, %4322
  %5627 = fadd fast float %5600, %4290
  %5628 = fadd fast float %5627, %5617
  %5629 = fmul fast float %5628, %4322
  %5630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5631 = extractvalue %dx.types.CBufRet.f32 %5630, 3
  %5632 = fcmp fast oeq float %5631, 0.000000e+00
  br i1 %5632, label %7174, label %5633

; <label>:5633                                    ; preds = %5575
  %5634 = extractvalue %dx.types.CBufRet.f32 %5630, 0
  %5635 = extractvalue %dx.types.CBufRet.f32 %5630, 1
  %5636 = extractvalue %dx.types.CBufRet.f32 %5630, 2
  %5637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5638 = extractvalue %dx.types.CBufRet.f32 %5637, 0
  %5639 = extractvalue %dx.types.CBufRet.f32 %5637, 1
  %5640 = extractvalue %dx.types.CBufRet.f32 %5637, 2
  %5641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5642 = extractvalue %dx.types.CBufRet.f32 %5641, 0
  %5643 = extractvalue %dx.types.CBufRet.f32 %5641, 1
  %5644 = call float @dx.op.dot3.f32(i32 55, float %5638, float %5639, float %5640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5645 = select i1 %261, float %5642, float %5638
  %5646 = select i1 %261, float %5644, float %5639
  %5647 = select i1 %261, float %5643, float %5640
  %5648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5649 = extractvalue %dx.types.CBufRet.f32 %5648, 2
  %5650 = fmul fast float %5649, %111
  %5651 = fmul fast float %5649, %112
  %5652 = fmul fast float %5649, %113
  %5653 = fadd fast float %5650, %167
  %5654 = fadd fast float %5651, %168
  %5655 = fadd fast float %5652, %169
  %5656 = fcmp fast olt float %5631, 0.000000e+00
  br i1 %5656, label %6752, label %5657

; <label>:5657                                    ; preds = %5633
  %5658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5659 = extractvalue %dx.types.CBufRet.f32 %5658, 0
  %5660 = extractvalue %dx.types.CBufRet.f32 %5658, 1
  %5661 = extractvalue %dx.types.CBufRet.f32 %5658, 2
  %5662 = extractvalue %dx.types.CBufRet.f32 %5658, 3
  %5663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5664 = extractvalue %dx.types.CBufRet.f32 %5663, 0
  %5665 = extractvalue %dx.types.CBufRet.f32 %5663, 1
  %5666 = extractvalue %dx.types.CBufRet.f32 %5663, 2
  %5667 = extractvalue %dx.types.CBufRet.f32 %5663, 3
  %5668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5669 = extractvalue %dx.types.CBufRet.f32 %5668, 0
  %5670 = extractvalue %dx.types.CBufRet.f32 %5668, 1
  %5671 = extractvalue %dx.types.CBufRet.f32 %5668, 2
  %5672 = extractvalue %dx.types.CBufRet.f32 %5668, 3
  %5673 = fmul fast float %5659, %5653
  %5674 = call float @dx.op.tertiary.f32(i32 46, float %5654, float %5660, float %5673)  ; FMad(a,b,c)
  %5675 = call float @dx.op.tertiary.f32(i32 46, float %5655, float %5661, float %5674)  ; FMad(a,b,c)
  %5676 = fadd fast float %5675, %5662
  %5677 = fmul fast float %5664, %5653
  %5678 = call float @dx.op.tertiary.f32(i32 46, float %5654, float %5665, float %5677)  ; FMad(a,b,c)
  %5679 = call float @dx.op.tertiary.f32(i32 46, float %5655, float %5666, float %5678)  ; FMad(a,b,c)
  %5680 = fadd fast float %5679, %5667
  %5681 = fmul fast float %5669, %5653
  %5682 = call float @dx.op.tertiary.f32(i32 46, float %5654, float %5670, float %5681)  ; FMad(a,b,c)
  %5683 = call float @dx.op.tertiary.f32(i32 46, float %5655, float %5671, float %5682)  ; FMad(a,b,c)
  %5684 = fadd fast float %5683, %5672
  %5685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5686 = extractvalue %dx.types.CBufRet.f32 %5685, 0
  %5687 = extractvalue %dx.types.CBufRet.f32 %5685, 1
  %5688 = extractvalue %dx.types.CBufRet.f32 %5685, 3
  %5689 = fmul fast float %5688, %5676
  %5690 = fmul fast float %5688, %5680
  %5691 = fadd fast float %5689, %5686
  %5692 = fadd fast float %5690, %5687
  %5693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5694 = extractvalue %dx.types.CBufRet.f32 %5693, 0
  %5695 = extractvalue %dx.types.CBufRet.f32 %5693, 1
  %5696 = extractvalue %dx.types.CBufRet.f32 %5693, 3
  %5697 = fmul fast float %5696, %5676
  %5698 = fmul fast float %5696, %5680
  %5699 = fadd fast float %5697, %5694
  %5700 = fadd fast float %5698, %5695
  %5701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5702 = extractvalue %dx.types.CBufRet.f32 %5701, 1
  %5703 = fsub fast float %5702, %5684
  %5704 = extractvalue %dx.types.CBufRet.f32 %5701, 2
  %5705 = fmul fast float %5703, %5704
  %5706 = fsub fast float 1.000000e+00, %5705
  %5707 = call float @dx.op.unary.f32(i32 7, float %5706)  ; Saturate(value)
  %5708 = extractvalue %dx.types.CBufRet.f32 %5693, 2
  %5709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5710 = extractvalue %dx.types.CBufRet.f32 %5709, 2
  %5711 = fadd fast float %5710, %5708
  %5712 = fcmp fast ogt float %5711, 0.000000e+00
  br i1 %5712, label %5713, label %5737

; <label>:5713                                    ; preds = %5657
  %5714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5715 = extractvalue %dx.types.CBufRet.f32 %5714, 0
  %5716 = extractvalue %dx.types.CBufRet.f32 %5714, 1
  %5717 = fsub fast float %5699, %5715
  %5718 = fsub fast float %5700, %5716
  %5719 = fcmp fast olt float %5717, 0.000000e+00
  %5720 = fcmp fast olt float %5718, 0.000000e+00
  %5721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5722 = extractvalue %dx.types.CBufRet.f32 %5721, 0
  %5723 = extractvalue %dx.types.CBufRet.f32 %5721, 1
  %5724 = extractvalue %dx.types.CBufRet.f32 %5721, 2
  %5725 = extractvalue %dx.types.CBufRet.f32 %5721, 3
  %5726 = select i1 %5719, float %5722, float %5724
  %5727 = select i1 %5720, float %5723, float %5725
  %5728 = fmul fast float %5726, %5717
  %5729 = fmul fast float %5727, %5718
  %5730 = call float @dx.op.unary.f32(i32 6, float %5728)  ; FAbs(value)
  %5731 = call float @dx.op.unary.f32(i32 6, float %5729)  ; FAbs(value)
  %5732 = extractvalue %dx.types.CBufRet.f32 %5648, 0
  %5733 = call float @dx.op.binary.f32(i32 35, float %5730, float %5731)  ; FMax(a,b)
  %5734 = fsub fast float %5732, %5733
  %5735 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5736 = fmul fast float %5735, %5707
  br label %5737

; <label>:5737                                    ; preds = %5713, %5657
  %5738 = phi float [ %5736, %5713 ], [ 0.000000e+00, %5657 ]
  %5739 = extractvalue %dx.types.CBufRet.f32 %5685, 2
  %5740 = extractvalue %dx.types.CBufRet.f32 %5709, 1
  %5741 = fadd fast float %5740, %5739
  %5742 = fcmp fast ogt float %5741, 0.000000e+00
  %5743 = extractvalue %dx.types.CBufRet.f32 %5648, 0
  br i1 %5742, label %5744, label %5767

; <label>:5744                                    ; preds = %5737
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 0
  %5747 = extractvalue %dx.types.CBufRet.f32 %5745, 1
  %5748 = fsub fast float %5691, %5746
  %5749 = fsub fast float %5692, %5747
  %5750 = fcmp fast olt float %5748, 0.000000e+00
  %5751 = fcmp fast olt float %5749, 0.000000e+00
  %5752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5753 = extractvalue %dx.types.CBufRet.f32 %5752, 0
  %5754 = extractvalue %dx.types.CBufRet.f32 %5752, 1
  %5755 = extractvalue %dx.types.CBufRet.f32 %5752, 2
  %5756 = extractvalue %dx.types.CBufRet.f32 %5752, 3
  %5757 = select i1 %5750, float %5753, float %5755
  %5758 = select i1 %5751, float %5754, float %5756
  %5759 = fmul fast float %5757, %5748
  %5760 = fmul fast float %5758, %5749
  %5761 = call float @dx.op.unary.f32(i32 6, float %5759)  ; FAbs(value)
  %5762 = call float @dx.op.unary.f32(i32 6, float %5760)  ; FAbs(value)
  %5763 = call float @dx.op.binary.f32(i32 35, float %5761, float %5762)  ; FMax(a,b)
  %5764 = fsub fast float %5743, %5763
  %5765 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5766 = fmul fast float %5765, %5707
  br label %5767

; <label>:5767                                    ; preds = %5744, %5737
  %5768 = phi float [ %5766, %5744 ], [ 0.000000e+00, %5737 ]
  %5769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5770 = extractvalue %dx.types.CBufRet.f32 %5769, 1
  %5771 = call float @dx.op.unary.f32(i32 7, float %5770)  ; Saturate(value)
  %5772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5773 = extractvalue %dx.types.CBufRet.f32 %5772, 0
  %5774 = extractvalue %dx.types.CBufRet.f32 %5772, 1
  %5775 = fsub fast float %5676, %5773
  %5776 = fsub fast float %5680, %5774
  %5777 = fcmp fast olt float %5775, 0.000000e+00
  %5778 = fcmp fast olt float %5776, 0.000000e+00
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5783 = extractvalue %dx.types.CBufRet.f32 %5779, 3
  %5784 = select i1 %5777, float %5780, float %5782
  %5785 = select i1 %5778, float %5781, float %5783
  %5786 = fmul fast float %5784, %5775
  %5787 = fmul fast float %5785, %5776
  %5788 = call float @dx.op.unary.f32(i32 6, float %5786)  ; FAbs(value)
  %5789 = call float @dx.op.unary.f32(i32 6, float %5787)  ; FAbs(value)
  %5790 = call float @dx.op.binary.f32(i32 35, float %5788, float %5789)  ; FMax(a,b)
  %5791 = fsub fast float %5743, %5790
  %5792 = call float @dx.op.unary.f32(i32 7, float %5791)  ; Saturate(value)
  %5793 = call float @dx.op.binary.f32(i32 36, float %5792, float %5771)  ; FMin(a,b)
  %5794 = fmul fast float %5793, %5707
  %5795 = fsub fast float %5768, %5794
  %5796 = fsub fast float %5738, %5768
  %5797 = fsub fast float %5796, %5794
  %5798 = call float @dx.op.binary.f32(i32 35, float %5768, float %5738)  ; FMax(a,b)
  %5799 = call float @dx.op.binary.f32(i32 35, float %5794, float %5798)  ; FMax(a,b)
  %5800 = fcmp fast olt float %5799, 1.000000e+00
  br i1 %5800, label %5801, label %6199, !dx.controlflow.hints !100

; <label>:5801                                    ; preds = %5767
  %5802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5803 = extractvalue %dx.types.CBufRet.f32 %5802, 0
  %5804 = fcmp fast une float %5803, 0.000000e+00
  br i1 %5804, label %5805, label %6199, !dx.controlflow.hints !101

; <label>:5805                                    ; preds = %5801
  %5806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5806, 0
  %5808 = extractvalue %dx.types.CBufRet.f32 %5806, 1
  %5809 = extractvalue %dx.types.CBufRet.f32 %5806, 2
  %5810 = extractvalue %dx.types.CBufRet.f32 %5806, 3
  %5811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5812 = extractvalue %dx.types.CBufRet.f32 %5811, 0
  %5813 = extractvalue %dx.types.CBufRet.f32 %5811, 1
  %5814 = extractvalue %dx.types.CBufRet.f32 %5811, 2
  %5815 = extractvalue %dx.types.CBufRet.f32 %5811, 3
  %5816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5817 = extractvalue %dx.types.CBufRet.f32 %5816, 0
  %5818 = extractvalue %dx.types.CBufRet.f32 %5816, 1
  %5819 = extractvalue %dx.types.CBufRet.f32 %5816, 2
  %5820 = extractvalue %dx.types.CBufRet.f32 %5816, 3
  %5821 = fmul fast float %5807, %5653
  %5822 = call float @dx.op.tertiary.f32(i32 46, float %5654, float %5808, float %5821)  ; FMad(a,b,c)
  %5823 = call float @dx.op.tertiary.f32(i32 46, float %5655, float %5809, float %5822)  ; FMad(a,b,c)
  %5824 = fadd fast float %5823, %5810
  %5825 = fmul fast float %5812, %5653
  %5826 = call float @dx.op.tertiary.f32(i32 46, float %5654, float %5813, float %5825)  ; FMad(a,b,c)
  %5827 = call float @dx.op.tertiary.f32(i32 46, float %5655, float %5814, float %5826)  ; FMad(a,b,c)
  %5828 = fadd fast float %5827, %5815
  %5829 = fmul fast float %5817, %5653
  %5830 = call float @dx.op.tertiary.f32(i32 46, float %5654, float %5818, float %5829)  ; FMad(a,b,c)
  %5831 = call float @dx.op.tertiary.f32(i32 46, float %5655, float %5819, float %5830)  ; FMad(a,b,c)
  %5832 = fadd fast float %5831, %5820
  %5833 = fcmp fast oge float %5824, 1.000000e+00
  %5834 = fcmp fast oge float %5828, 1.000000e+00
  %5835 = or i1 %5833, %5834
  %5836 = fcmp fast olt float %5824, 0.000000e+00
  %5837 = fcmp fast olt float %5828, 0.000000e+00
  %5838 = or i1 %5836, %5837
  %5839 = or i1 %5835, %5838
  br i1 %5839, label %6199, label %5840, !dx.controlflow.hints !102

; <label>:5840                                    ; preds = %5805
  %5841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5842 = extractvalue %dx.types.CBufRet.f32 %5841, 0
  %5843 = extractvalue %dx.types.CBufRet.f32 %5841, 1
  %5844 = extractvalue %dx.types.CBufRet.f32 %5841, 2
  %5845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5846 = extractvalue %dx.types.CBufRet.i32 %5845, 2
  %5847 = uitofp i32 %5846 to float
  %5848 = extractvalue %dx.types.CBufRet.i32 %5845, 3
  %5849 = uitofp i32 %5848 to float
  %5850 = extractvalue %dx.types.CBufRet.f32 %5841, 3
  %5851 = fmul fast float %5850, 2.000000e+00
  %5852 = fsub fast float %5824, %5842
  %5853 = fsub fast float %5828, %5843
  %5854 = fmul fast float %5851, %5852
  %5855 = fmul fast float %5851, %5853
  %5856 = fdiv fast float 1.000000e+00, %5636
  %5857 = fmul fast float %5855, %5856
  %5858 = call float @dx.op.unary.f32(i32 6, float %5857)  ; FAbs(value)
  %5859 = fmul fast float %5844, %5655
  %5860 = fmul fast float %5859, %5851
  %5861 = call float @dx.op.unary.f32(i32 6, float %5860)  ; FAbs(value)
  %5862 = call float @dx.op.unary.f32(i32 6, float %5854)  ; FAbs(value)
  %5863 = call float @dx.op.binary.f32(i32 35, float %5861, float %5858)  ; FMax(a,b)
  %5864 = call float @dx.op.binary.f32(i32 35, float %5862, float %5863)  ; FMax(a,b)
  %5865 = fmul fast float %5864, 2.000000e+00
  %5866 = call float @dx.op.unary.f32(i32 23, float %5865)  ; Log(value)
  %5867 = call float @dx.op.binary.f32(i32 35, float %5866, float %5847)  ; FMax(a,b)
  %5868 = call float @dx.op.unary.f32(i32 22, float %5867)  ; Frc(value)
  %5869 = fadd fast float %5868, 0xBFEA666660000000
  %5870 = fmul fast float %5869, 8.000000e+00
  %5871 = call float @dx.op.unary.f32(i32 7, float %5870)  ; Saturate(value)
  %5872 = call float @dx.op.unary.f32(i32 27, float %5867)  ; Round_ni(value)
  %5873 = fadd fast float %5872, %5871
  %5874 = call float @dx.op.binary.f32(i32 36, float %5873, float %5849)  ; FMin(a,b)
  %5875 = call float @dx.op.unary.f32(i32 27, float %5874)  ; Round_ni(value)
  %5876 = fsub fast float -0.000000e+00, %5875
  %5877 = call float @dx.op.unary.f32(i32 21, float %5876)  ; Exp(value)
  %5878 = fmul fast float %5877, %5851
  %5879 = fmul fast float %5878, %5824
  %5880 = fmul fast float %5878, %5828
  %5881 = fmul fast float %5879, 2.500000e-01
  %5882 = fmul fast float %5880, 2.500000e-01
  %5883 = fadd fast float %5881, 5.000000e-01
  %5884 = fadd fast float %5882, 5.000000e-01
  %5885 = fsub fast float %5849, %5847
  %5886 = fptoui float %5885 to i32
  %5887 = add i32 %5886, 320
  %5888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %5887)  ; CBufferLoadLegacy(handle,regIndex)
  %5889 = extractvalue %dx.types.CBufRet.f32 %5888, 0
  %5890 = extractvalue %dx.types.CBufRet.f32 %5888, 1
  %5891 = fcmp fast une float %5874, %5849
  %5892 = fsub fast float %5824, %5889
  %5893 = fsub fast float %5828, %5890
  %5894 = call float @dx.op.unary.f32(i32 6, float %5892)  ; FAbs(value)
  %5895 = call float @dx.op.unary.f32(i32 6, float %5893)  ; FAbs(value)
  %5896 = fmul fast float %5894, %5878
  %5897 = fmul fast float %5895, %5878
  %5898 = fcmp fast olt float %5896, 1.000000e+00
  %5899 = fcmp fast olt float %5897, 1.000000e+00
  %5900 = and i1 %5898, %5899
  %5901 = or i1 %5891, %5900
  br i1 %5901, label %5902, label %6199, !dx.controlflow.hints !103

; <label>:5902                                    ; preds = %5840
  %5903 = fmul fast float %5880, 5.000000e-01
  %5904 = fmul fast float %5879, 5.000000e-01
  %5905 = fadd fast float %5903, 5.000000e-01
  %5906 = fadd fast float %5904, 5.000000e-01
  %5907 = sitofp i32 %5846 to float
  %5908 = fsub fast float %5874, %5907
  %5909 = call float @dx.op.unary.f32(i32 27, float %5908)  ; Round_ni(value)
  %5910 = call float @dx.op.unary.f32(i32 22, float %5874)  ; Frc(value)
  %5911 = call float @dx.op.unary.f32(i32 22, float %5906)  ; Frc(value)
  %5912 = call float @dx.op.unary.f32(i32 22, float %5905)  ; Frc(value)
  %5913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5911, float %5912, float %5909, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5914 = extractvalue %dx.types.ResRet.f32 %5913, 0
  %5915 = extractvalue %dx.types.ResRet.f32 %5913, 1
  %5916 = extractvalue %dx.types.ResRet.f32 %5913, 2
  %5917 = extractvalue %dx.types.ResRet.f32 %5913, 3
  %5918 = fcmp fast ogt float %5910, 0.000000e+00
  br i1 %5918, label %5919, label %5940, !dx.controlflow.hints !104

; <label>:5919                                    ; preds = %5902
  %5920 = fadd fast float %5909, 1.000000e+00
  %5921 = call float @dx.op.unary.f32(i32 22, float %5883)  ; Frc(value)
  %5922 = call float @dx.op.unary.f32(i32 22, float %5884)  ; Frc(value)
  %5923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5921, float %5922, float %5920, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5924 = extractvalue %dx.types.ResRet.f32 %5923, 0
  %5925 = extractvalue %dx.types.ResRet.f32 %5923, 1
  %5926 = extractvalue %dx.types.ResRet.f32 %5923, 2
  %5927 = extractvalue %dx.types.ResRet.f32 %5923, 3
  %5928 = fsub fast float %5924, %5914
  %5929 = fsub fast float %5925, %5915
  %5930 = fsub fast float %5926, %5916
  %5931 = fsub fast float %5927, %5917
  %5932 = fmul fast float %5928, %5910
  %5933 = fmul fast float %5929, %5910
  %5934 = fmul fast float %5930, %5910
  %5935 = fmul fast float %5931, %5910
  %5936 = fadd fast float %5932, %5914
  %5937 = fadd fast float %5933, %5915
  %5938 = fadd fast float %5934, %5916
  %5939 = fadd fast float %5935, %5917
  br label %5940

; <label>:5940                                    ; preds = %5919, %5902
  %5941 = phi float [ %5936, %5919 ], [ %5914, %5902 ]
  %5942 = phi float [ %5937, %5919 ], [ %5915, %5902 ]
  %5943 = phi float [ %5938, %5919 ], [ %5916, %5902 ]
  %5944 = phi float [ %5939, %5919 ], [ %5917, %5902 ]
  %5945 = fadd fast float %5941, -5.000000e-01
  %5946 = fadd fast float %5943, -5.000000e-01
  %5947 = fmul fast float %5945, 0xBFD5555560000000
  %5948 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5946, float %5947)  ; FMad(a,b,c)
  %5949 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5942, float 0.000000e+00)  ; FMad(a,b,c)
  %5950 = fadd fast float %5949, %5944
  %5951 = fmul fast float %5945, -7.500000e-01
  %5952 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5946, float %5951)  ; FMad(a,b,c)
  %5953 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5942, float 0.000000e+00)  ; FMad(a,b,c)
  %5954 = fadd fast float %5953, %5944
  %5955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5956 = extractvalue %dx.types.CBufRet.f32 %5955, 0
  %5957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5958 = extractvalue %dx.types.CBufRet.f32 %5957, 0
  %5959 = extractvalue %dx.types.CBufRet.f32 %5957, 1
  %5960 = extractvalue %dx.types.CBufRet.f32 %5957, 2
  %5961 = extractvalue %dx.types.CBufRet.f32 %5957, 3
  %5962 = fsub fast float %5958, %5948
  %5963 = fsub fast float %5959, %5950
  %5964 = fsub fast float %5960, %5952
  %5965 = fsub fast float %5961, %5954
  %5966 = fmul fast float %5962, %5956
  %5967 = fmul fast float %5963, %5956
  %5968 = fmul fast float %5964, %5956
  %5969 = fmul fast float %5965, %5956
  %5970 = fadd fast float %5966, %5948
  %5971 = fadd fast float %5967, %5950
  %5972 = fadd fast float %5968, %5952
  %5973 = fadd fast float %5969, %5954
  %5974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5975 = extractvalue %dx.types.ResRet.i32 %5974, 0
  %5976 = and i32 %5975, 536870911
  %5977 = uitofp i32 %5976 to float
  %5978 = fmul fast float %5977, %5824
  %5979 = fmul fast float %5977, %5828
  %5980 = fptoui float %5978 to i32
  %5981 = fptoui float %5979 to i32
  %5982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5983 = extractvalue %dx.types.ResRet.i32 %5982, 0
  %5984 = and i32 %5983, 31
  %5985 = lshr i32 %5980, %5984
  %5986 = lshr i32 %5981, %5984
  %5987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5988 = extractvalue %dx.types.ResRet.i32 %5987, 0
  %5989 = and i32 %5988, 31
  %5990 = shl i32 1, %5989
  %5991 = call i32 @dx.op.binary.i32(i32 40, i32 %5990, i32 4)  ; UMin(a,b)
  %5992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5993 = extractvalue %dx.types.ResRet.i32 %5992, 0
  %5994 = extractvalue %dx.types.ResRet.i32 %5992, 1
  %5995 = icmp eq i32 %5991, 0
  br i1 %5995, label %6037, label %5996

; <label>:5996                                    ; preds = %5940
  br label %5997

; <label>:5997                                    ; preds = %6025, %5996
  %5998 = phi i32 [ %6028, %6025 ], [ 0, %5996 ]
  %5999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6000 = extractvalue %dx.types.ResRet.i32 %5999, 0
  %6001 = lshr i32 %6000, 16
  %6002 = and i32 %6001, 31
  %6003 = shl i32 %5986, %6002
  %6004 = add i32 %6003, %5985
  %6005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6006 = extractvalue %dx.types.ResRet.i32 %6005, 0
  %6007 = and i32 %6006, 31
  %6008 = shl i32 %6004, %6007
  %6009 = add i32 %6008, %5998
  %6010 = shl i32 %6009, 2
  %6011 = add i32 %6010, 32
  %6012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6011, i32 undef)  ; BufferLoad(srv,index,wot)
  %6013 = extractvalue %dx.types.ResRet.i32 %6012, 0
  %6014 = icmp slt i32 %6013, 0
  %6015 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %5998
  %6016 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5998
  %6017 = bitcast float* %6015 to i32*
  %6018 = bitcast float* %6016 to i32*
  br i1 %6014, label %6019, label %6025

; <label>:6019                                    ; preds = %5997
  %6020 = and i32 %6013, 1073741823
  %6021 = add nuw nsw i32 %6020, 20
  %6022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6021, i32 undef)  ; BufferLoad(srv,index,wot)
  %6023 = extractvalue %dx.types.ResRet.i32 %6022, 0
  %6024 = extractvalue %dx.types.ResRet.i32 %6022, 1
  br label %6025

; <label>:6025                                    ; preds = %6019, %5997
  %6026 = phi i32 [ %6023, %6019 ], [ %5993, %5997 ]
  %6027 = phi i32 [ %6024, %6019 ], [ %5994, %5997 ]
  store i32 %6026, i32* %6017, align 4
  store i32 %6027, i32* %6018, align 4
  %6028 = add nuw i32 %5998, 1
  %6029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6030 = extractvalue %dx.types.CBufRet.i32 %6029, 2
  %6031 = icmp eq i32 %6030, 0
  %6032 = icmp ugt i32 %6013, -1073741825
  %6033 = and i1 %6032, %6031
  %6034 = icmp ult i32 %6028, %5991
  %6035 = and i1 %6033, %6034
  br i1 %6035, label %5997, label %6036

; <label>:6036                                    ; preds = %6025
  br label %6037

; <label>:6037                                    ; preds = %6036, %5940
  %6038 = phi i32 [ 0, %5940 ], [ %6028, %6036 ]
  %6039 = extractvalue %dx.types.CBufRet.f32 %5802, 2
  %6040 = fptoui float %6039 to i32
  %6041 = icmp eq i32 %6040, 0
  br i1 %6041, label %6093, label %6042

; <label>:6042                                    ; preds = %6037
  br label %6043

; <label>:6043                                    ; preds = %6088, %6042
  %6044 = phi i32 [ %6089, %6088 ], [ %6038, %6042 ]
  %6045 = phi i32 [ %6090, %6088 ], [ 0, %6042 ]
  %6046 = lshr i32 %6045, 2
  %6047 = and i32 %6045, 3
  %6048 = add nuw nsw i32 %6046, 83
  %6049 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6048)  ; CBufferLoadLegacy(handle,regIndex)
  %6050 = extractvalue %dx.types.CBufRet.i32 %6049, 0
  %6051 = extractvalue %dx.types.CBufRet.i32 %6049, 1
  %6052 = extractvalue %dx.types.CBufRet.i32 %6049, 2
  %6053 = extractvalue %dx.types.CBufRet.i32 %6049, 3
  %6054 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6050, i32* %6054, align 4
  %6055 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6051, i32* %6055, align 4
  %6056 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6052, i32* %6056, align 4
  %6057 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6053, i32* %6057, align 4
  %6058 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6047
  %6059 = load i32, i32* %6058, align 4, !tbaa !105, !noalias !109
  %6060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6061 = extractvalue %dx.types.ResRet.i32 %6060, 0
  %6062 = lshr i32 %6061, 16
  %6063 = and i32 %6062, 31
  %6064 = shl i32 %5986, %6063
  %6065 = add i32 %6064, %5985
  %6066 = shl i32 %6065, 2
  %6067 = add i32 %6066, %6059
  %6068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6067, i32 undef)  ; BufferLoad(srv,index,wot)
  %6069 = extractvalue %dx.types.ResRet.i32 %6068, 0
  %6070 = icmp eq i32 %6069, 0
  br i1 %6070, label %6088, label %6071

; <label>:6071                                    ; preds = %6043
  %6072 = icmp slt i32 %6069, 0
  %6073 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6044
  %6074 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6044
  %6075 = bitcast float* %6073 to i32*
  %6076 = bitcast float* %6074 to i32*
  br i1 %6072, label %6077, label %6084

; <label>:6077                                    ; preds = %6071
  %6078 = and i32 %6069, 1073741823
  %6079 = add i32 %6059, 20
  %6080 = add i32 %6079, %6078
  %6081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6080, i32 undef)  ; BufferLoad(srv,index,wot)
  %6082 = extractvalue %dx.types.ResRet.i32 %6081, 0
  %6083 = extractvalue %dx.types.ResRet.i32 %6081, 1
  br label %6084

; <label>:6084                                    ; preds = %6077, %6071
  %6085 = phi i32 [ %6082, %6077 ], [ %5993, %6071 ]
  %6086 = phi i32 [ %6083, %6077 ], [ %5994, %6071 ]
  store i32 %6085, i32* %6075, align 4
  store i32 %6086, i32* %6076, align 4
  %6087 = add i32 %6044, 1
  br label %6088

; <label>:6088                                    ; preds = %6084, %6043
  %6089 = phi i32 [ %6044, %6043 ], [ %6087, %6084 ]
  %6090 = add nuw i32 %6045, 1
  %6091 = icmp eq i32 %6090, %6040
  br i1 %6091, label %6092, label %6043

; <label>:6092                                    ; preds = %6088
  br label %6093

; <label>:6093                                    ; preds = %6092, %6037
  %6094 = phi i32 [ %6038, %6037 ], [ %6089, %6092 ]
  %6095 = icmp eq i32 %6094, 1
  %6096 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %6097 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  br i1 %6095, label %6098, label %6101

; <label>:6098                                    ; preds = %6093
  %6099 = load float, float* %6096, align 4
  %6100 = load float, float* %6097, align 4
  br label %6128

; <label>:6101                                    ; preds = %6093
  %6102 = load float, float* %6096, align 4
  %6103 = load float, float* %6097, align 4
  %6104 = fdiv fast float 1.000000e+00, %6103
  %6105 = fsub fast float %6102, %6104
  %6106 = icmp ugt i32 %6094, 1
  br i1 %6106, label %6107, label %6123

; <label>:6107                                    ; preds = %6101
  br label %6108

; <label>:6108                                    ; preds = %6108, %6107
  %6109 = phi float [ %6118, %6108 ], [ %6105, %6107 ]
  %6110 = phi float [ %6119, %6108 ], [ %6102, %6107 ]
  %6111 = phi i32 [ %6120, %6108 ], [ 1, %6107 ]
  %6112 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6111
  %6113 = load float, float* %6112, align 4
  %6114 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6111
  %6115 = load float, float* %6114, align 4
  %6116 = fdiv fast float 1.000000e+00, %6115
  %6117 = fsub fast float %6113, %6116
  %6118 = call float @dx.op.binary.f32(i32 36, float %6109, float %6117)  ; FMin(a,b)
  %6119 = call float @dx.op.binary.f32(i32 35, float %6110, float %6113)  ; FMax(a,b)
  %6120 = add nuw i32 %6111, 1
  %6121 = icmp eq i32 %6120, %6094
  br i1 %6121, label %6122, label %6108

; <label>:6122                                    ; preds = %6108
  br label %6123

; <label>:6123                                    ; preds = %6122, %6101
  %6124 = phi float [ %6105, %6101 ], [ %6118, %6122 ]
  %6125 = phi float [ %6102, %6101 ], [ %6119, %6122 ]
  %6126 = fsub fast float %6125, %6124
  %6127 = fdiv fast float 1.000000e+00, %6126
  br label %6128

; <label>:6128                                    ; preds = %6123, %6098
  %6129 = phi float [ %6099, %6098 ], [ %6125, %6123 ]
  %6130 = phi float [ %6100, %6098 ], [ %6127, %6123 ]
  %6131 = fadd fast float %5832, %6129
  %6132 = fmul fast float %6131, %6130
  %6133 = call float @dx.op.unary.f32(i32 7, float %6132)  ; Saturate(value)
  %6134 = fmul fast float %6133, 2.000000e+00
  %6135 = fsub fast float 1.000000e+00, %6134
  %6136 = fmul fast float %5970, %5970
  %6137 = fsub fast float %5971, %6136
  %6138 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6137)  ; FMax(a,b)
  %6139 = fdiv fast float 1.000000e+00, %6138
  %6140 = fmul fast float %5971, %5970
  %6141 = fsub fast float %5972, %6140
  %6142 = fsub fast float %6135, %5970
  %6143 = fmul fast float %6135, %6135
  %6144 = fsub fast float %6143, %5971
  %6145 = fmul fast float %6139, %6141
  %6146 = fmul fast float %6145, %6142
  %6147 = fsub fast float %6144, %6146
  %6148 = fmul fast float %5971, %5971
  %6149 = fsub fast float %5973, %6148
  %6150 = fmul fast float %6141, %6141
  %6151 = fmul fast float %6150, %6139
  %6152 = fsub fast float %6149, %6151
  %6153 = fdiv fast float %6147, %6152
  %6154 = fmul fast float %6153, %6141
  %6155 = fsub fast float %6142, %6154
  %6156 = fmul fast float %6155, %6139
  %6157 = fmul fast float %6156, %5970
  %6158 = fsub fast float 1.000000e+00, %6157
  %6159 = fmul fast float %6153, %5971
  %6160 = fsub fast float %6158, %6159
  %6161 = fmul fast float %6156, %6156
  %6162 = fmul fast float %6153, 4.000000e+00
  %6163 = fmul fast float %6162, %6160
  %6164 = fsub fast float %6161, %6163
  %6165 = call float @dx.op.unary.f32(i32 24, float %6164)  ; Sqrt(value)
  %6166 = fcmp fast oge float %6156, 0.000000e+00
  %6167 = fsub fast float -0.000000e+00, %6165
  %6168 = select i1 %6166, float %6167, float %6165
  %6169 = fsub fast float %6168, %6156
  %6170 = fdiv fast float %6169, %6153
  %6171 = fdiv fast float %6160, %6169
  %6172 = fmul fast float %6170, 5.000000e-01
  %6173 = fmul fast float %6171, 2.000000e+00
  %6174 = select i1 %6166, float %6172, float %6173
  %6175 = select i1 %6166, float %6173, float %6172
  %6176 = call float @dx.op.binary.f32(i32 35, float %6174, float %6175)  ; FMax(a,b)
  %6177 = call float @dx.op.binary.f32(i32 36, float %6174, float %6175)  ; FMin(a,b)
  %6178 = fcmp fast ogt float %6135, %6176
  %6179 = fsub fast float %6135, %6177
  %6180 = fsub fast float %6135, %6176
  %6181 = fsub fast float %6176, %6177
  %6182 = select i1 %6178, float %6180, float %6181
  %6183 = fmul float %6179, %6182
  %6184 = select i1 %6178, float %6177, float %6135
  %6185 = fcmp fast ogt float %6135, %6177
  %6186 = fmul fast float %6184, %6176
  %6187 = fadd fast float %6184, %6176
  %6188 = fmul fast float %6187, %5970
  %6189 = fadd fast float %6186, %5971
  %6190 = fsub fast float %6189, %6188
  %6191 = fdiv fast float %6190, %6183
  %6192 = select i1 %6185, float %6191, float 0.000000e+00
  %6193 = fsub fast float 1.000000e+00, %6192
  %6194 = select i1 %6178, float %6193, float %6192
  %6195 = call float @dx.op.unary.f32(i32 7, float %6194)  ; Saturate(value)
  %6196 = extractvalue %dx.types.CBufRet.f32 %5955, 3
  %6197 = fmul fast float %6196, %6195
  %6198 = fsub fast float 1.000000e+00, %6197
  br label %6199

; <label>:6199                                    ; preds = %6128, %5840, %5805, %5801, %5767
  %6200 = phi float [ 1.000000e+00, %5767 ], [ %6198, %6128 ], [ 1.000000e+00, %5805 ], [ 1.000000e+00, %5840 ], [ 1.000000e+00, %5801 ]
  %6201 = fcmp fast ogt float %5797, 0.000000e+00
  br i1 %6201, label %6202, label %6364, !dx.controlflow.hints !118

; <label>:6202                                    ; preds = %6199
  %6203 = fadd fast float %5710, %5684
  %6204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6205 = extractvalue %dx.types.CBufRet.f32 %6204, 2
  %6206 = extractvalue %dx.types.CBufRet.f32 %6204, 3
  %6207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6208 = extractvalue %dx.types.CBufRet.f32 %6207, 2
  %6209 = call float @dx.op.binary.f32(i32 35, float %6203, float 0.000000e+00)  ; FMax(a,b)
  %6210 = fadd fast float %6209, 0x3F10000000000000
  %6211 = fcmp fast oeq float %6208, 0.000000e+00
  br i1 %6211, label %6212, label %6279

; <label>:6212                                    ; preds = %6202
  %6213 = extractvalue %dx.types.CBufRet.f32 %6204, 1
  %6214 = extractvalue %dx.types.CBufRet.f32 %6204, 0
  %6215 = fmul fast float %6214, %5699
  %6216 = fmul fast float %6213, %5700
  %6217 = fadd fast float %6215, 5.000000e-01
  %6218 = call float @dx.op.unary.f32(i32 27, float %6217)  ; Round_ni(value)
  %6219 = fadd fast float %6216, 5.000000e-01
  %6220 = call float @dx.op.unary.f32(i32 27, float %6219)  ; Round_ni(value)
  %6221 = fsub fast float %6217, %6218
  %6222 = fsub fast float %6219, %6220
  %6223 = fadd fast float %6218, -5.000000e-01
  %6224 = fadd fast float %6220, -5.000000e-01
  %6225 = fmul fast float %6221, 2.000000e+00
  %6226 = fsub fast float 3.000000e+00, %6225
  %6227 = fadd fast float %6225, 1.000000e+00
  %6228 = fsub fast float 2.000000e+00, %6221
  %6229 = bitcast float %6226 to i32
  %6230 = sub nsw i32 2129859010, %6229
  %6231 = bitcast i32 %6230 to float
  %6232 = fmul fast float %6231, %6228
  %6233 = fadd fast float %6232, -1.000000e+00
  %6234 = bitcast float %6227 to i32
  %6235 = sub nsw i32 2129859010, %6234
  %6236 = bitcast i32 %6235 to float
  %6237 = fmul fast float %6236, %6221
  %6238 = fadd fast float %6237, 1.000000e+00
  %6239 = fmul fast float %6222, 2.000000e+00
  %6240 = fsub fast float 3.000000e+00, %6239
  %6241 = fadd fast float %6239, 1.000000e+00
  %6242 = fsub fast float 2.000000e+00, %6222
  %6243 = bitcast float %6240 to i32
  %6244 = sub nsw i32 2129859010, %6243
  %6245 = bitcast i32 %6244 to float
  %6246 = fmul fast float %6245, %6242
  %6247 = fadd fast float %6246, -1.000000e+00
  %6248 = bitcast float %6241 to i32
  %6249 = sub nsw i32 2129859010, %6248
  %6250 = bitcast i32 %6249 to float
  %6251 = fmul fast float %6250, %6222
  %6252 = fadd fast float %6251, 1.000000e+00
  %6253 = fadd fast float %6233, %6223
  %6254 = fmul fast float %6253, %6205
  %6255 = fadd fast float %6247, %6224
  %6256 = fmul fast float %6255, %6206
  %6257 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6254, float %6256, float undef, float undef, i32 0, i32 0, i32 undef, float %6210)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6258 = extractvalue %dx.types.ResRet.f32 %6257, 0
  %6259 = fmul fast float %6258, %6226
  %6260 = fadd fast float %6238, %6223
  %6261 = fmul fast float %6260, %6205
  %6262 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6261, float %6256, float undef, float undef, i32 0, i32 0, i32 undef, float %6210)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6263 = extractvalue %dx.types.ResRet.f32 %6262, 0
  %6264 = fmul fast float %6263, %6227
  %6265 = fadd fast float %6252, %6224
  %6266 = fmul fast float %6265, %6206
  %6267 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6254, float %6266, float undef, float undef, i32 0, i32 0, i32 undef, float %6210)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6268 = extractvalue %dx.types.ResRet.f32 %6267, 0
  %6269 = fmul fast float %6268, %6226
  %6270 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6261, float %6266, float undef, float undef, i32 0, i32 0, i32 undef, float %6210)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6271 = extractvalue %dx.types.ResRet.f32 %6270, 0
  %6272 = fmul fast float %6271, %6227
  %6273 = fadd fast float %6272, %6269
  %6274 = fmul fast float %6273, %6241
  %6275 = fadd fast float %6264, %6259
  %6276 = fmul fast float %6275, %6240
  %6277 = fadd fast float %6276, %6274
  %6278 = fmul fast float %6277, 6.250000e-02
  br label %6364

; <label>:6279                                    ; preds = %6202
  %6280 = fmul fast float %272, 0x401921FB60000000
  %6281 = call float @dx.op.unary.f32(i32 13, float %6280)  ; Sin(value)
  %6282 = call float @dx.op.unary.f32(i32 12, float %6280)  ; Cos(value)
  %6283 = fsub fast float -0.000000e+00, %6281
  br label %6284

; <label>:6284                                    ; preds = %6333, %6279
  %6285 = phi float [ 0.000000e+00, %6279 ], [ %6328, %6333 ]
  %6286 = phi float [ 0.000000e+00, %6279 ], [ %6330, %6333 ]
  %6287 = phi i32 [ 0, %6279 ], [ %6334, %6333 ]
  %6288 = mul i32 %6287, 2
  %6289 = add i32 0, %6288
  %6290 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6289
  %6291 = load float, float* %6290, align 4
  %6292 = mul i32 %6287, 2
  %6293 = add i32 1, %6292
  %6294 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6293
  %6295 = load float, float* %6294, align 4
  %6296 = fmul fast float %6291, %6282
  %6297 = call float @dx.op.tertiary.f32(i32 46, float %6295, float %6283, float %6296)  ; FMad(a,b,c)
  %6298 = fmul fast float %6291, %6281
  %6299 = call float @dx.op.tertiary.f32(i32 46, float %6295, float %6282, float %6298)  ; FMad(a,b,c)
  %6300 = fmul fast float %6297, %6208
  %6301 = fmul fast float %6299, %6208
  %6302 = fadd fast float %6300, %5699
  %6303 = fadd fast float %6301, %5700
  %6304 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6302, float %6303, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6305 = extractvalue %dx.types.ResRet.f32 %6304, 0
  %6306 = extractvalue %dx.types.ResRet.f32 %6304, 1
  %6307 = extractvalue %dx.types.ResRet.f32 %6304, 2
  %6308 = extractvalue %dx.types.ResRet.f32 %6304, 3
  %6309 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %6305, float* %6309, align 4
  %6310 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %6306, float* %6310, align 4
  %6311 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %6307, float* %6311, align 4
  %6312 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %6308, float* %6312, align 4
  %6313 = fsub fast float %6305, %6210
  %6314 = fcmp fast olt float %6313, 0.000000e+00
  %6315 = select i1 %6314, float 0.000000e+00, float 1.000000e+00
  %6316 = fadd fast float %6315, %6285
  %6317 = fmul fast float %6315, %6313
  %6318 = fadd fast float %6317, %6286
  br label %6319

; <label>:6319                                    ; preds = %6319, %6284
  %6320 = phi i32 [ 1, %6284 ], [ %6331, %6319 ]
  %6321 = phi float [ %6318, %6284 ], [ %6330, %6319 ]
  %6322 = phi float [ %6316, %6284 ], [ %6328, %6319 ]
  %6323 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %6320
  %6324 = load float, float* %6323, align 4, !tbaa !119, !noalias !109
  %6325 = fsub fast float %6324, %6210
  %6326 = fcmp fast olt float %6325, 0.000000e+00
  %6327 = select i1 %6326, float 0.000000e+00, float 1.000000e+00
  %6328 = fadd fast float %6327, %6322
  %6329 = fmul fast float %6327, %6325
  %6330 = fadd fast float %6329, %6321
  %6331 = add nuw nsw i32 %6320, 1
  %6332 = icmp eq i32 %6331, 4
  br i1 %6332, label %6333, label %6319, !llvm.loop !121

; <label>:6333                                    ; preds = %6319
  %6334 = add nuw nsw i32 %6287, 1
  %6335 = icmp eq i32 %6334, 8
  br i1 %6335, label %6336, label %6284, !llvm.loop !122

; <label>:6336                                    ; preds = %6333
  %6337 = fdiv fast float 1.000000e+00, %6328
  %6338 = fmul fast float %6337, %6330
  %6339 = fdiv fast float 1.000000e+00, %6210
  %6340 = fmul fast float %6338, %6339
  %6341 = call float @dx.op.unary.f32(i32 7, float %6340)  ; Saturate(value)
  %6342 = call float @dx.op.binary.f32(i32 35, float %6341, float 0.000000e+00)  ; FMax(a,b)
  %6343 = fmul fast float %6328, 3.125000e-02
  %6344 = call float @dx.op.unary.f32(i32 7, float %6343)  ; Saturate(value)
  %6345 = fmul fast float %6344, 2.000000e+00
  %6346 = fadd fast float %6345, -1.000000e+00
  %6347 = fcmp fast ogt float %6346, 0.000000e+00
  %6348 = fcmp fast olt float %6346, 0.000000e+00
  %6349 = zext i1 %6347 to i32
  %6350 = zext i1 %6348 to i32
  %6351 = sub nsw i32 %6349, %6350
  %6352 = sitofp i32 %6351 to float
  %6353 = fmul fast float %6352, %6346
  %6354 = fsub fast float 1.000000e+00, %6353
  %6355 = fmul fast float %6354, %6354
  %6356 = fmul fast float %6355, %6354
  %6357 = fsub fast float %6354, %6356
  %6358 = fmul fast float %6357, %6342
  %6359 = fsub fast float 1.000000e+00, %6356
  %6360 = fsub fast float %6359, %6358
  %6361 = fmul fast float %6352, 5.000000e-01
  %6362 = fmul fast float %6361, %6360
  %6363 = fsub fast float 5.000000e-01, %6362
  br label %6364

; <label>:6364                                    ; preds = %6336, %6212, %6199
  %6365 = phi float [ 1.000000e+00, %6199 ], [ %6278, %6212 ], [ %6363, %6336 ]
  %6366 = fcmp fast ogt float %5795, 0.000000e+00
  br i1 %6366, label %6367, label %6531, !dx.controlflow.hints !123

; <label>:6367                                    ; preds = %6364
  %6368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6369 = extractvalue %dx.types.CBufRet.f32 %6368, 1
  %6370 = fadd fast float %6369, %5684
  %6371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6372 = extractvalue %dx.types.CBufRet.f32 %6371, 2
  %6373 = extractvalue %dx.types.CBufRet.f32 %6371, 3
  %6374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6375 = extractvalue %dx.types.CBufRet.f32 %6374, 1
  %6376 = call float @dx.op.binary.f32(i32 35, float %6370, float 0.000000e+00)  ; FMax(a,b)
  %6377 = fadd fast float %6376, 0x3F10000000000000
  %6378 = fcmp fast oeq float %6375, 0.000000e+00
  br i1 %6378, label %6379, label %6446

; <label>:6379                                    ; preds = %6367
  %6380 = extractvalue %dx.types.CBufRet.f32 %6371, 1
  %6381 = extractvalue %dx.types.CBufRet.f32 %6371, 0
  %6382 = fmul fast float %6381, %5691
  %6383 = fmul fast float %6380, %5692
  %6384 = fadd fast float %6382, 5.000000e-01
  %6385 = call float @dx.op.unary.f32(i32 27, float %6384)  ; Round_ni(value)
  %6386 = fadd fast float %6383, 5.000000e-01
  %6387 = call float @dx.op.unary.f32(i32 27, float %6386)  ; Round_ni(value)
  %6388 = fsub fast float %6384, %6385
  %6389 = fsub fast float %6386, %6387
  %6390 = fadd fast float %6385, -5.000000e-01
  %6391 = fadd fast float %6387, -5.000000e-01
  %6392 = fmul fast float %6388, 2.000000e+00
  %6393 = fsub fast float 3.000000e+00, %6392
  %6394 = fadd fast float %6392, 1.000000e+00
  %6395 = fsub fast float 2.000000e+00, %6388
  %6396 = bitcast float %6393 to i32
  %6397 = sub nsw i32 2129859010, %6396
  %6398 = bitcast i32 %6397 to float
  %6399 = fmul fast float %6398, %6395
  %6400 = fadd fast float %6399, -1.000000e+00
  %6401 = bitcast float %6394 to i32
  %6402 = sub nsw i32 2129859010, %6401
  %6403 = bitcast i32 %6402 to float
  %6404 = fmul fast float %6403, %6388
  %6405 = fadd fast float %6404, 1.000000e+00
  %6406 = fmul fast float %6389, 2.000000e+00
  %6407 = fsub fast float 3.000000e+00, %6406
  %6408 = fadd fast float %6406, 1.000000e+00
  %6409 = fsub fast float 2.000000e+00, %6389
  %6410 = bitcast float %6407 to i32
  %6411 = sub nsw i32 2129859010, %6410
  %6412 = bitcast i32 %6411 to float
  %6413 = fmul fast float %6412, %6409
  %6414 = fadd fast float %6413, -1.000000e+00
  %6415 = bitcast float %6408 to i32
  %6416 = sub nsw i32 2129859010, %6415
  %6417 = bitcast i32 %6416 to float
  %6418 = fmul fast float %6417, %6389
  %6419 = fadd fast float %6418, 1.000000e+00
  %6420 = fadd fast float %6400, %6390
  %6421 = fmul fast float %6420, %6372
  %6422 = fadd fast float %6414, %6391
  %6423 = fmul fast float %6422, %6373
  %6424 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6421, float %6423, float undef, float undef, i32 0, i32 0, i32 undef, float %6377)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6425 = extractvalue %dx.types.ResRet.f32 %6424, 0
  %6426 = fmul fast float %6425, %6393
  %6427 = fadd fast float %6405, %6390
  %6428 = fmul fast float %6427, %6372
  %6429 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6428, float %6423, float undef, float undef, i32 0, i32 0, i32 undef, float %6377)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6430 = extractvalue %dx.types.ResRet.f32 %6429, 0
  %6431 = fmul fast float %6430, %6394
  %6432 = fadd fast float %6419, %6391
  %6433 = fmul fast float %6432, %6373
  %6434 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6421, float %6433, float undef, float undef, i32 0, i32 0, i32 undef, float %6377)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6435 = extractvalue %dx.types.ResRet.f32 %6434, 0
  %6436 = fmul fast float %6435, %6393
  %6437 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6428, float %6433, float undef, float undef, i32 0, i32 0, i32 undef, float %6377)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6438 = extractvalue %dx.types.ResRet.f32 %6437, 0
  %6439 = fmul fast float %6438, %6394
  %6440 = fadd fast float %6439, %6436
  %6441 = fmul fast float %6440, %6408
  %6442 = fadd fast float %6431, %6426
  %6443 = fmul fast float %6442, %6407
  %6444 = fadd fast float %6443, %6441
  %6445 = fmul fast float %6444, 6.250000e-02
  br label %6531

; <label>:6446                                    ; preds = %6367
  %6447 = fmul fast float %272, 0x401921FB60000000
  %6448 = call float @dx.op.unary.f32(i32 13, float %6447)  ; Sin(value)
  %6449 = call float @dx.op.unary.f32(i32 12, float %6447)  ; Cos(value)
  %6450 = fsub fast float -0.000000e+00, %6448
  br label %6451

; <label>:6451                                    ; preds = %6500, %6446
  %6452 = phi float [ 0.000000e+00, %6446 ], [ %6495, %6500 ]
  %6453 = phi float [ 0.000000e+00, %6446 ], [ %6497, %6500 ]
  %6454 = phi i32 [ 0, %6446 ], [ %6501, %6500 ]
  %6455 = mul i32 %6454, 2
  %6456 = add i32 0, %6455
  %6457 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6456
  %6458 = load float, float* %6457, align 4
  %6459 = mul i32 %6454, 2
  %6460 = add i32 1, %6459
  %6461 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6460
  %6462 = load float, float* %6461, align 4
  %6463 = fmul fast float %6458, %6449
  %6464 = call float @dx.op.tertiary.f32(i32 46, float %6462, float %6450, float %6463)  ; FMad(a,b,c)
  %6465 = fmul fast float %6458, %6448
  %6466 = call float @dx.op.tertiary.f32(i32 46, float %6462, float %6449, float %6465)  ; FMad(a,b,c)
  %6467 = fmul fast float %6464, %6375
  %6468 = fmul fast float %6466, %6375
  %6469 = fadd fast float %6467, %5691
  %6470 = fadd fast float %6468, %5692
  %6471 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6469, float %6470, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6472 = extractvalue %dx.types.ResRet.f32 %6471, 0
  %6473 = extractvalue %dx.types.ResRet.f32 %6471, 1
  %6474 = extractvalue %dx.types.ResRet.f32 %6471, 2
  %6475 = extractvalue %dx.types.ResRet.f32 %6471, 3
  %6476 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %6472, float* %6476, align 4
  %6477 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %6473, float* %6477, align 4
  %6478 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %6474, float* %6478, align 4
  %6479 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %6475, float* %6479, align 4
  %6480 = fsub fast float %6472, %6377
  %6481 = fcmp fast olt float %6480, 0.000000e+00
  %6482 = select i1 %6481, float 0.000000e+00, float 1.000000e+00
  %6483 = fadd fast float %6482, %6452
  %6484 = fmul fast float %6482, %6480
  %6485 = fadd fast float %6484, %6453
  br label %6486

; <label>:6486                                    ; preds = %6486, %6451
  %6487 = phi i32 [ 1, %6451 ], [ %6498, %6486 ]
  %6488 = phi float [ %6485, %6451 ], [ %6497, %6486 ]
  %6489 = phi float [ %6483, %6451 ], [ %6495, %6486 ]
  %6490 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %6487
  %6491 = load float, float* %6490, align 4, !tbaa !119, !noalias !109
  %6492 = fsub fast float %6491, %6377
  %6493 = fcmp fast olt float %6492, 0.000000e+00
  %6494 = select i1 %6493, float 0.000000e+00, float 1.000000e+00
  %6495 = fadd fast float %6494, %6489
  %6496 = fmul fast float %6494, %6492
  %6497 = fadd fast float %6496, %6488
  %6498 = add nuw nsw i32 %6487, 1
  %6499 = icmp eq i32 %6498, 4
  br i1 %6499, label %6500, label %6486, !llvm.loop !121

; <label>:6500                                    ; preds = %6486
  %6501 = add nuw nsw i32 %6454, 1
  %6502 = icmp eq i32 %6501, 8
  br i1 %6502, label %6503, label %6451, !llvm.loop !122

; <label>:6503                                    ; preds = %6500
  %6504 = fdiv fast float 1.000000e+00, %6495
  %6505 = fmul fast float %6504, %6497
  %6506 = fdiv fast float 1.000000e+00, %6377
  %6507 = fmul fast float %6505, %6506
  %6508 = call float @dx.op.unary.f32(i32 7, float %6507)  ; Saturate(value)
  %6509 = call float @dx.op.binary.f32(i32 35, float %6508, float 0.000000e+00)  ; FMax(a,b)
  %6510 = fmul fast float %6495, 3.125000e-02
  %6511 = call float @dx.op.unary.f32(i32 7, float %6510)  ; Saturate(value)
  %6512 = fmul fast float %6511, 2.000000e+00
  %6513 = fadd fast float %6512, -1.000000e+00
  %6514 = fcmp fast ogt float %6513, 0.000000e+00
  %6515 = fcmp fast olt float %6513, 0.000000e+00
  %6516 = zext i1 %6514 to i32
  %6517 = zext i1 %6515 to i32
  %6518 = sub nsw i32 %6516, %6517
  %6519 = sitofp i32 %6518 to float
  %6520 = fmul fast float %6519, %6513
  %6521 = fsub fast float 1.000000e+00, %6520
  %6522 = fmul fast float %6521, %6521
  %6523 = fmul fast float %6522, %6521
  %6524 = fsub fast float %6521, %6523
  %6525 = fmul fast float %6524, %6509
  %6526 = fsub fast float 1.000000e+00, %6523
  %6527 = fsub fast float %6526, %6525
  %6528 = fmul fast float %6519, 5.000000e-01
  %6529 = fmul fast float %6528, %6527
  %6530 = fsub fast float 5.000000e-01, %6529
  br label %6531

; <label>:6531                                    ; preds = %6503, %6379, %6364
  %6532 = phi float [ 1.000000e+00, %6364 ], [ %6445, %6379 ], [ %6530, %6503 ]
  %6533 = fcmp fast ogt float %5794, 0.000000e+00
  br i1 %6533, label %6534, label %6698, !dx.controlflow.hints !124

; <label>:6534                                    ; preds = %6531
  %6535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6536 = extractvalue %dx.types.CBufRet.f32 %6535, 0
  %6537 = fadd fast float %6536, %5684
  %6538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6539 = extractvalue %dx.types.CBufRet.f32 %6538, 2
  %6540 = extractvalue %dx.types.CBufRet.f32 %6538, 3
  %6541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6542 = extractvalue %dx.types.CBufRet.f32 %6541, 0
  %6543 = call float @dx.op.binary.f32(i32 35, float %6537, float 0.000000e+00)  ; FMax(a,b)
  %6544 = fadd fast float %6543, 0x3F10000000000000
  %6545 = fcmp fast oeq float %6542, 0.000000e+00
  br i1 %6545, label %6546, label %6613

; <label>:6546                                    ; preds = %6534
  %6547 = extractvalue %dx.types.CBufRet.f32 %6538, 1
  %6548 = extractvalue %dx.types.CBufRet.f32 %6538, 0
  %6549 = fmul fast float %6548, %5676
  %6550 = fmul fast float %6547, %5680
  %6551 = fadd fast float %6549, 5.000000e-01
  %6552 = call float @dx.op.unary.f32(i32 27, float %6551)  ; Round_ni(value)
  %6553 = fadd fast float %6550, 5.000000e-01
  %6554 = call float @dx.op.unary.f32(i32 27, float %6553)  ; Round_ni(value)
  %6555 = fsub fast float %6551, %6552
  %6556 = fsub fast float %6553, %6554
  %6557 = fadd fast float %6552, -5.000000e-01
  %6558 = fadd fast float %6554, -5.000000e-01
  %6559 = fmul fast float %6555, 2.000000e+00
  %6560 = fsub fast float 3.000000e+00, %6559
  %6561 = fadd fast float %6559, 1.000000e+00
  %6562 = fsub fast float 2.000000e+00, %6555
  %6563 = bitcast float %6560 to i32
  %6564 = sub nsw i32 2129859010, %6563
  %6565 = bitcast i32 %6564 to float
  %6566 = fmul fast float %6565, %6562
  %6567 = fadd fast float %6566, -1.000000e+00
  %6568 = bitcast float %6561 to i32
  %6569 = sub nsw i32 2129859010, %6568
  %6570 = bitcast i32 %6569 to float
  %6571 = fmul fast float %6570, %6555
  %6572 = fadd fast float %6571, 1.000000e+00
  %6573 = fmul fast float %6556, 2.000000e+00
  %6574 = fsub fast float 3.000000e+00, %6573
  %6575 = fadd fast float %6573, 1.000000e+00
  %6576 = fsub fast float 2.000000e+00, %6556
  %6577 = bitcast float %6574 to i32
  %6578 = sub nsw i32 2129859010, %6577
  %6579 = bitcast i32 %6578 to float
  %6580 = fmul fast float %6579, %6576
  %6581 = fadd fast float %6580, -1.000000e+00
  %6582 = bitcast float %6575 to i32
  %6583 = sub nsw i32 2129859010, %6582
  %6584 = bitcast i32 %6583 to float
  %6585 = fmul fast float %6584, %6556
  %6586 = fadd fast float %6585, 1.000000e+00
  %6587 = fadd fast float %6567, %6557
  %6588 = fmul fast float %6587, %6539
  %6589 = fadd fast float %6581, %6558
  %6590 = fmul fast float %6589, %6540
  %6591 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6588, float %6590, float undef, float undef, i32 0, i32 0, i32 undef, float %6544)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6592 = extractvalue %dx.types.ResRet.f32 %6591, 0
  %6593 = fmul fast float %6592, %6560
  %6594 = fadd fast float %6572, %6557
  %6595 = fmul fast float %6594, %6539
  %6596 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6595, float %6590, float undef, float undef, i32 0, i32 0, i32 undef, float %6544)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6597 = extractvalue %dx.types.ResRet.f32 %6596, 0
  %6598 = fmul fast float %6597, %6561
  %6599 = fadd fast float %6586, %6558
  %6600 = fmul fast float %6599, %6540
  %6601 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6588, float %6600, float undef, float undef, i32 0, i32 0, i32 undef, float %6544)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6602 = extractvalue %dx.types.ResRet.f32 %6601, 0
  %6603 = fmul fast float %6602, %6560
  %6604 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6595, float %6600, float undef, float undef, i32 0, i32 0, i32 undef, float %6544)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6605 = extractvalue %dx.types.ResRet.f32 %6604, 0
  %6606 = fmul fast float %6605, %6561
  %6607 = fadd fast float %6606, %6603
  %6608 = fmul fast float %6607, %6575
  %6609 = fadd fast float %6598, %6593
  %6610 = fmul fast float %6609, %6574
  %6611 = fadd fast float %6610, %6608
  %6612 = fmul fast float %6611, 6.250000e-02
  br label %6698

; <label>:6613                                    ; preds = %6534
  %6614 = fmul fast float %272, 0x401921FB60000000
  %6615 = call float @dx.op.unary.f32(i32 13, float %6614)  ; Sin(value)
  %6616 = call float @dx.op.unary.f32(i32 12, float %6614)  ; Cos(value)
  %6617 = fsub fast float -0.000000e+00, %6615
  br label %6618

; <label>:6618                                    ; preds = %6667, %6613
  %6619 = phi float [ 0.000000e+00, %6613 ], [ %6662, %6667 ]
  %6620 = phi float [ 0.000000e+00, %6613 ], [ %6664, %6667 ]
  %6621 = phi i32 [ 0, %6613 ], [ %6668, %6667 ]
  %6622 = mul i32 %6621, 2
  %6623 = add i32 0, %6622
  %6624 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6623
  %6625 = load float, float* %6624, align 4
  %6626 = mul i32 %6621, 2
  %6627 = add i32 1, %6626
  %6628 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6627
  %6629 = load float, float* %6628, align 4
  %6630 = fmul fast float %6625, %6616
  %6631 = call float @dx.op.tertiary.f32(i32 46, float %6629, float %6617, float %6630)  ; FMad(a,b,c)
  %6632 = fmul fast float %6625, %6615
  %6633 = call float @dx.op.tertiary.f32(i32 46, float %6629, float %6616, float %6632)  ; FMad(a,b,c)
  %6634 = fmul fast float %6631, %6542
  %6635 = fmul fast float %6633, %6542
  %6636 = fadd fast float %6634, %5676
  %6637 = fadd fast float %6635, %5680
  %6638 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6636, float %6637, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6639 = extractvalue %dx.types.ResRet.f32 %6638, 0
  %6640 = extractvalue %dx.types.ResRet.f32 %6638, 1
  %6641 = extractvalue %dx.types.ResRet.f32 %6638, 2
  %6642 = extractvalue %dx.types.ResRet.f32 %6638, 3
  %6643 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %6639, float* %6643, align 4
  %6644 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %6640, float* %6644, align 4
  %6645 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %6641, float* %6645, align 4
  %6646 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %6642, float* %6646, align 4
  %6647 = fsub fast float %6639, %6544
  %6648 = fcmp fast olt float %6647, 0.000000e+00
  %6649 = select i1 %6648, float 0.000000e+00, float 1.000000e+00
  %6650 = fadd fast float %6649, %6619
  %6651 = fmul fast float %6649, %6647
  %6652 = fadd fast float %6651, %6620
  br label %6653

; <label>:6653                                    ; preds = %6653, %6618
  %6654 = phi i32 [ 1, %6618 ], [ %6665, %6653 ]
  %6655 = phi float [ %6652, %6618 ], [ %6664, %6653 ]
  %6656 = phi float [ %6650, %6618 ], [ %6662, %6653 ]
  %6657 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %6654
  %6658 = load float, float* %6657, align 4, !tbaa !119, !noalias !109
  %6659 = fsub fast float %6658, %6544
  %6660 = fcmp fast olt float %6659, 0.000000e+00
  %6661 = select i1 %6660, float 0.000000e+00, float 1.000000e+00
  %6662 = fadd fast float %6661, %6656
  %6663 = fmul fast float %6661, %6659
  %6664 = fadd fast float %6663, %6655
  %6665 = add nuw nsw i32 %6654, 1
  %6666 = icmp eq i32 %6665, 4
  br i1 %6666, label %6667, label %6653, !llvm.loop !121

; <label>:6667                                    ; preds = %6653
  %6668 = add nuw nsw i32 %6621, 1
  %6669 = icmp eq i32 %6668, 8
  br i1 %6669, label %6670, label %6618, !llvm.loop !122

; <label>:6670                                    ; preds = %6667
  %6671 = fdiv fast float 1.000000e+00, %6662
  %6672 = fmul fast float %6671, %6664
  %6673 = fdiv fast float 1.000000e+00, %6544
  %6674 = fmul fast float %6672, %6673
  %6675 = call float @dx.op.unary.f32(i32 7, float %6674)  ; Saturate(value)
  %6676 = call float @dx.op.binary.f32(i32 35, float %6675, float 0.000000e+00)  ; FMax(a,b)
  %6677 = fmul fast float %6662, 3.125000e-02
  %6678 = call float @dx.op.unary.f32(i32 7, float %6677)  ; Saturate(value)
  %6679 = fmul fast float %6678, 2.000000e+00
  %6680 = fadd fast float %6679, -1.000000e+00
  %6681 = fcmp fast ogt float %6680, 0.000000e+00
  %6682 = fcmp fast olt float %6680, 0.000000e+00
  %6683 = zext i1 %6681 to i32
  %6684 = zext i1 %6682 to i32
  %6685 = sub nsw i32 %6683, %6684
  %6686 = sitofp i32 %6685 to float
  %6687 = fmul fast float %6686, %6680
  %6688 = fsub fast float 1.000000e+00, %6687
  %6689 = fmul fast float %6688, %6688
  %6690 = fmul fast float %6689, %6688
  %6691 = fsub fast float %6688, %6690
  %6692 = fmul fast float %6691, %6676
  %6693 = fsub fast float 1.000000e+00, %6690
  %6694 = fsub fast float %6693, %6692
  %6695 = fmul fast float %6686, 5.000000e-01
  %6696 = fmul fast float %6695, %6694
  %6697 = fsub fast float 5.000000e-01, %6696
  br label %6698

; <label>:6698                                    ; preds = %6670, %6546, %6531
  %6699 = phi float [ 1.000000e+00, %6531 ], [ %6612, %6546 ], [ %6697, %6670 ]
  %6700 = fsub fast float %6365, %6200
  %6701 = fmul fast float %6700, %5738
  %6702 = fadd fast float %6701, %6200
  %6703 = fsub fast float %6532, %6702
  %6704 = fmul fast float %6703, %5768
  %6705 = fadd fast float %6704, %6702
  %6706 = fsub fast float %6699, %6705
  %6707 = fmul fast float %6706, %5794
  %6708 = fadd fast float %6707, %6705
  %6709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6710 = extractvalue %dx.types.CBufRet.f32 %6709, 2
  %6711 = fcmp fast ogt float %6710, 0.000000e+00
  br i1 %6711, label %6712, label %6752, !dx.controlflow.hints !125

; <label>:6712                                    ; preds = %6698
  %6713 = fcmp fast ugt float %6710, 0.000000e+00
  br i1 %6713, label %6714, label %6749

; <label>:6714                                    ; preds = %6712
  %6715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6716 = extractvalue %dx.types.CBufRet.f32 %6715, 0
  %6717 = extractvalue %dx.types.CBufRet.f32 %6715, 1
  %6718 = extractvalue %dx.types.CBufRet.f32 %6715, 2
  %6719 = extractvalue %dx.types.CBufRet.f32 %6715, 3
  %6720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6721 = extractvalue %dx.types.CBufRet.f32 %6720, 0
  %6722 = extractvalue %dx.types.CBufRet.f32 %6720, 1
  %6723 = extractvalue %dx.types.CBufRet.f32 %6720, 2
  %6724 = extractvalue %dx.types.CBufRet.f32 %6720, 3
  %6725 = extractvalue %dx.types.CBufRet.f32 %6709, 0
  %6726 = extractvalue %dx.types.CBufRet.f32 %6709, 1
  %6727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6728 = extractvalue %dx.types.CBufRet.f32 %6727, 0
  %6729 = extractvalue %dx.types.CBufRet.f32 %6727, 1
  %6730 = extractvalue %dx.types.CBufRet.f32 %6727, 2
  %6731 = fadd fast float %6728, %5653
  %6732 = fadd fast float %6729, %5654
  %6733 = fadd fast float %6730, %5655
  %6734 = fmul fast float %6731, %6716
  %6735 = call float @dx.op.tertiary.f32(i32 46, float %6717, float %6732, float %6734)  ; FMad(a,b,c)
  %6736 = call float @dx.op.tertiary.f32(i32 46, float %6718, float %6733, float %6735)  ; FMad(a,b,c)
  %6737 = fadd fast float %6736, %6719
  %6738 = fmul fast float %6731, %6721
  %6739 = call float @dx.op.tertiary.f32(i32 46, float %6722, float %6732, float %6738)  ; FMad(a,b,c)
  %6740 = call float @dx.op.tertiary.f32(i32 46, float %6723, float %6733, float %6739)  ; FMad(a,b,c)
  %6741 = fadd fast float %6740, %6724
  %6742 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %6737, float %6741, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6743 = extractvalue %dx.types.ResRet.f32 %6742, 0
  %6744 = fmul fast float %6743, %6726
  %6745 = fadd fast float %6744, %6725
  %6746 = call float @dx.op.unary.f32(i32 7, float %6745)  ; Saturate(value)
  %6747 = fmul fast float %6746, %6710
  %6748 = fsub fast float 1.000000e+00, %6747
  br label %6749

; <label>:6749                                    ; preds = %6714, %6712
  %6750 = phi float [ %6748, %6714 ], [ 1.000000e+00, %6712 ]
  %6751 = fmul fast float %6750, %6708
  br label %6752

; <label>:6752                                    ; preds = %6749, %6698, %5633
  %6753 = phi float [ 1.000000e+00, %5633 ], [ %6751, %6749 ], [ %6708, %6698 ]
  %6754 = call float @dx.op.binary.f32(i32 36, float %6753, float %6753)  ; FMin(a,b)
  %6755 = call float @dx.op.binary.f32(i32 36, float %6753, float %6754)  ; FMin(a,b)
  %6756 = fcmp fast ogt float %6755, 0.000000e+00
  br i1 %6756, label %6757, label %6922, !dx.controlflow.hints !126

; <label>:6757                                    ; preds = %6752
  %6758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6759 = extractvalue %dx.types.CBufRet.f32 %6758, 0
  %6760 = extractvalue %dx.types.CBufRet.f32 %6758, 1
  %6761 = extractvalue %dx.types.CBufRet.f32 %6758, 2
  %6762 = extractvalue %dx.types.CBufRet.f32 %6758, 3
  %6763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6764 = extractvalue %dx.types.CBufRet.f32 %6763, 0
  %6765 = extractvalue %dx.types.CBufRet.f32 %6763, 1
  %6766 = extractvalue %dx.types.CBufRet.f32 %6763, 2
  %6767 = extractvalue %dx.types.CBufRet.f32 %6763, 3
  %6768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6769 = extractvalue %dx.types.CBufRet.f32 %6768, 0
  %6770 = extractvalue %dx.types.CBufRet.f32 %6768, 1
  %6771 = extractvalue %dx.types.CBufRet.f32 %6768, 2
  %6772 = extractvalue %dx.types.CBufRet.f32 %6768, 3
  %6773 = fmul fast float %6759, %5653
  %6774 = call float @dx.op.tertiary.f32(i32 46, float %5654, float %6760, float %6773)  ; FMad(a,b,c)
  %6775 = call float @dx.op.tertiary.f32(i32 46, float %5655, float %6761, float %6774)  ; FMad(a,b,c)
  %6776 = fadd fast float %6775, %6762
  %6777 = fmul fast float %6764, %5653
  %6778 = call float @dx.op.tertiary.f32(i32 46, float %5654, float %6765, float %6777)  ; FMad(a,b,c)
  %6779 = call float @dx.op.tertiary.f32(i32 46, float %5655, float %6766, float %6778)  ; FMad(a,b,c)
  %6780 = fadd fast float %6779, %6767
  %6781 = fmul fast float %6769, %5653
  %6782 = call float @dx.op.tertiary.f32(i32 46, float %5654, float %6770, float %6781)  ; FMad(a,b,c)
  %6783 = call float @dx.op.tertiary.f32(i32 46, float %5655, float %6771, float %6782)  ; FMad(a,b,c)
  %6784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6785 = extractvalue %dx.types.CBufRet.f32 %6784, 0
  %6786 = extractvalue %dx.types.CBufRet.f32 %6784, 1
  %6787 = extractvalue %dx.types.CBufRet.f32 %6784, 3
  %6788 = fmul fast float %6787, %6776
  %6789 = fmul fast float %6787, %6780
  %6790 = fadd fast float %6788, %6785
  %6791 = fadd fast float %6789, %6786
  %6792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6793 = extractvalue %dx.types.CBufRet.f32 %6792, 0
  %6794 = extractvalue %dx.types.CBufRet.f32 %6792, 1
  %6795 = fsub fast float %6790, %6793
  %6796 = fsub fast float %6791, %6794
  %6797 = fcmp fast olt float %6795, 0.000000e+00
  %6798 = fcmp fast olt float %6796, 0.000000e+00
  %6799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6800 = extractvalue %dx.types.CBufRet.f32 %6799, 0
  %6801 = extractvalue %dx.types.CBufRet.f32 %6799, 1
  %6802 = extractvalue %dx.types.CBufRet.f32 %6799, 2
  %6803 = extractvalue %dx.types.CBufRet.f32 %6799, 3
  %6804 = select i1 %6797, float %6800, float %6802
  %6805 = select i1 %6798, float %6801, float %6803
  %6806 = fmul fast float %6804, %6795
  %6807 = fmul fast float %6805, %6796
  %6808 = call float @dx.op.unary.f32(i32 6, float %6806)  ; FAbs(value)
  %6809 = call float @dx.op.unary.f32(i32 6, float %6807)  ; FAbs(value)
  %6810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6811 = extractvalue %dx.types.CBufRet.f32 %6810, 0
  %6812 = call float @dx.op.binary.f32(i32 35, float %6808, float %6809)  ; FMax(a,b)
  %6813 = fsub fast float %6811, %6812
  %6814 = call float @dx.op.unary.f32(i32 7, float %6813)  ; Saturate(value)
  %6815 = fcmp fast ogt float %6814, 0.000000e+00
  br i1 %6815, label %6816, label %6857, !dx.controlflow.hints !127

; <label>:6816                                    ; preds = %6757
  %6817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %6790, float %6791, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6818 = extractvalue %dx.types.ResRet.f32 %6817, 1
  %6819 = fcmp fast ogt float %6818, 0.000000e+00
  br i1 %6819, label %6820, label %6852

; <label>:6820                                    ; preds = %6816
  %6821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %6790, float %6791, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6822 = extractvalue %dx.types.ResRet.f32 %6821, 0
  %6823 = extractvalue %dx.types.ResRet.f32 %6821, 1
  %6824 = extractvalue %dx.types.ResRet.f32 %6821, 2
  %6825 = extractvalue %dx.types.ResRet.f32 %6821, 3
  %6826 = fsub fast float 1.000000e+00, %6772
  %6827 = fsub fast float %6826, %6783
  %6828 = fmul fast float %6827, 0x400921FB60000000
  %6829 = fadd fast float %6828, 0x3FF921FB60000000
  %6830 = call float @dx.op.unary.f32(i32 13, float %6829)  ; Sin(value)
  %6831 = fadd fast float %6830, -1.000000e+00
  %6832 = fmul fast float %6831, 0x3FD45F3060000000
  %6833 = fmul fast float %6827, 0x401921FB60000000
  %6834 = fadd fast float %6833, 0x400921FB60000000
  %6835 = call float @dx.op.unary.f32(i32 13, float %6834)  ; Sin(value)
  %6836 = fadd fast float %6835, 0x3E7777A5C0000000
  %6837 = fmul fast float %6836, 0x3FC45F3060000000
  %6838 = fmul fast float %6827, 0x4022D97C80000000
  %6839 = fadd fast float %6838, 0x4012D97C80000000
  %6840 = call float @dx.op.unary.f32(i32 13, float %6839)  ; Sin(value)
  %6841 = fadd fast float %6840, 1.000000e+00
  %6842 = fmul fast float %6841, 0x3FBB2995E0000000
  %6843 = fmul fast float %6827, 0x402921FB60000000
  %6844 = fadd fast float %6843, 0x401921FB60000000
  %6845 = call float @dx.op.unary.f32(i32 13, float %6844)  ; Sin(value)
  %6846 = fadd fast float %6845, 0xBE8777A5C0000000
  %6847 = fmul fast float %6846, 0x3FB45F3060000000
  %6848 = call float @dx.op.dot4.f32(i32 56, float %6822, float %6823, float %6824, float %6825, float %6832, float %6837, float %6842, float %6847)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6849 = fmul fast float %6848, 0xBFF7154760000000
  %6850 = call float @dx.op.unary.f32(i32 21, float %6849)  ; Exp(value)
  %6851 = call float @dx.op.unary.f32(i32 7, float %6850)  ; Saturate(value)
  br label %6852

; <label>:6852                                    ; preds = %6820, %6816
  %6853 = phi float [ %6851, %6820 ], [ 1.000000e+00, %6816 ]
  %6854 = fadd fast float %6853, -1.000000e+00
  %6855 = fmul fast float %6854, %6814
  %6856 = fadd fast float %6855, 1.000000e+00
  br label %6857

; <label>:6857                                    ; preds = %6852, %6757
  %6858 = phi float [ %6856, %6852 ], [ 1.000000e+00, %6757 ]
  %6859 = fmul fast float %6858, %6753
  %6860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6861 = extractvalue %dx.types.CBufRet.f32 %6860, 0
  %6862 = extractvalue %dx.types.CBufRet.f32 %6860, 1
  %6863 = extractvalue %dx.types.CBufRet.f32 %6860, 2
  %6864 = fadd fast float %6861, %167
  %6865 = fadd fast float %6862, %168
  %6866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6867 = extractvalue %dx.types.CBufRet.f32 %6866, 1
  %6868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6869 = extractvalue %dx.types.CBufRet.f32 %6868, 0
  %6870 = extractvalue %dx.types.CBufRet.f32 %6868, 1
  %6871 = extractvalue %dx.types.CBufRet.f32 %6868, 2
  %6872 = fsub fast float -0.000000e+00, %6864
  %6873 = fsub fast float -0.000000e+00, %6865
  %6874 = fsub fast float %4913, %6863
  %6875 = fadd fast float %6874, %6867
  %6876 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6872, float %6873, float %6875)  ; Dot3(ax,ay,az,bx,by,bz)
  %6877 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6869, float %6870, float %6871)  ; Dot3(ax,ay,az,bx,by,bz)
  %6878 = fdiv fast float 1.000000e+00, %6877
  %6879 = fmul fast float %6878, %6876
  %6880 = fmul fast float %6869, %6879
  %6881 = fmul fast float %6870, %6879
  %6882 = fadd fast float %6880, %6864
  %6883 = fadd fast float %6881, %6865
  %6884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6885 = extractvalue %dx.types.CBufRet.f32 %6884, 0
  %6886 = extractvalue %dx.types.CBufRet.f32 %6884, 1
  %6887 = fsub fast float %6882, %6885
  %6888 = fsub fast float %6883, %6886
  %6889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.f32 %6889, 2
  %6891 = extractvalue %dx.types.CBufRet.f32 %6889, 3
  %6892 = fmul fast float %6887, %6890
  %6893 = fmul fast float %6888, %6891
  %6894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6895 = extractvalue %dx.types.CBufRet.i32 %6894, 3
  %6896 = icmp eq i32 %6895, 0
  br i1 %6896, label %6902, label %6897

; <label>:6897                                    ; preds = %6857
  %6898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %6892, float %6893, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6899 = extractvalue %dx.types.ResRet.f32 %6898, 0
  %6900 = extractvalue %dx.types.ResRet.f32 %6898, 1
  %6901 = extractvalue %dx.types.ResRet.f32 %6898, 2
  br label %6907

; <label>:6902                                    ; preds = %6857
  %6903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %6892, float %6893, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6904 = extractvalue %dx.types.ResRet.f32 %6903, 0
  %6905 = extractvalue %dx.types.ResRet.f32 %6903, 1
  %6906 = extractvalue %dx.types.ResRet.f32 %6903, 2
  br label %6907

; <label>:6907                                    ; preds = %6902, %6897
  %6908 = phi float [ %6899, %6897 ], [ %6904, %6902 ]
  %6909 = phi float [ %6900, %6897 ], [ %6905, %6902 ]
  %6910 = phi float [ %6901, %6897 ], [ %6906, %6902 ]
  %6911 = extractvalue %dx.types.CBufRet.f32 %6866, 2
  %6912 = fmul fast float %6911, %6908
  %6913 = extractvalue %dx.types.CBufRet.f32 %6866, 0
  %6914 = fsub fast float %6879, %6913
  %6915 = fsub fast float %6914, %6912
  %6916 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6915)  ; FMax(a,b)
  %6917 = fmul fast float %6916, %6909
  %6918 = call float @dx.op.binary.f32(i32 36, float %6910, float %6917)  ; FMin(a,b)
  %6919 = fmul fast float %6918, 0xBFF7154760000000
  %6920 = call float @dx.op.unary.f32(i32 21, float %6919)  ; Exp(value)
  %6921 = fmul fast float %6859, %6920
  br label %6922

; <label>:6922                                    ; preds = %6907, %6752
  %6923 = phi float [ %6921, %6907 ], [ %6753, %6752 ]
  %6924 = call float @dx.op.binary.f32(i32 36, float %6923, float %6923)  ; FMin(a,b)
  %6925 = call float @dx.op.binary.f32(i32 36, float %6923, float %6924)  ; FMin(a,b)
  %6926 = fcmp fast ogt float %6925, 0.000000e+00
  br i1 %6926, label %6927, label %7174, !dx.controlflow.hints !128

; <label>:6927                                    ; preds = %6922
  %6928 = fmul fast float %6923, %5645
  %6929 = fmul fast float %6923, %5646
  %6930 = fmul fast float %6923, %5647
  %6931 = fsub fast float %169, %4719
  %6932 = fcmp fast ogt float %6931, 0.000000e+00
  %6933 = fmul fast float %5634, 5.120000e+02
  %6934 = fmul fast float %5635, 5.120000e+02
  %6935 = fmul fast float %5636, 5.120000e+02
  %6936 = fadd fast float %6935, %169
  %6937 = fsub fast float %4719, %6936
  %6938 = fmul fast float %6937, 2.000000e+00
  %6939 = fadd fast float %6938, %6936
  %6940 = select i1 %6932, float %6939, float %6936
  %6941 = fsub fast float %6940, %169
  %6942 = call float @dx.op.dot3.f32(i32 55, float %6933, float %6934, float %6941, float %6933, float %6934, float %6941)  ; Dot3(ax,ay,az,bx,by,bz)
  %6943 = call float @dx.op.unary.f32(i32 25, float %6942)  ; Rsqrt(value)
  %6944 = fmul fast float %6943, %6933
  %6945 = fmul fast float %6943, %6934
  %6946 = fmul fast float %6943, %6941
  %6947 = fsub fast float %4719, %169
  %6948 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6947)  ; Dot3(ax,ay,az,bx,by,bz)
  %6949 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6944, float %6945, float %6946)  ; Dot3(ax,ay,az,bx,by,bz)
  %6950 = fdiv fast float 1.000000e+00, %6949
  %6951 = fmul fast float %6950, %6948
  %6952 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6931, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6953 = fcmp fast ogt float %6952, 0.000000e+00
  %6954 = fcmp fast olt float %6952, 0.000000e+00
  %6955 = zext i1 %6953 to i32
  %6956 = zext i1 %6954 to i32
  %6957 = sub nsw i32 %6955, %6956
  %6958 = sitofp i32 %6957 to float
  %6959 = fsub fast float %6940, %4719
  %6960 = call float @dx.op.dot3.f32(i32 55, float %6933, float %6934, float %6959, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6961 = fcmp fast ogt float %6960, 0.000000e+00
  %6962 = fcmp fast olt float %6960, 0.000000e+00
  %6963 = zext i1 %6961 to i32
  %6964 = zext i1 %6962 to i32
  %6965 = sub nsw i32 %6963, %6964
  %6966 = sitofp i32 %6965 to float
  %6967 = fcmp fast une float %6958, %6966
  br i1 %6967, label %6968, label %6978

; <label>:6968                                    ; preds = %6927
  %6969 = fmul fast float %6951, %6946
  %6970 = fmul fast float %6951, %6945
  %6971 = fmul fast float %6951, %6944
  %6972 = fmul fast float %6971, %6971
  %6973 = fmul fast float %6970, %6970
  %6974 = fadd fast float %6972, %6973
  %6975 = fmul fast float %6969, %6969
  %6976 = fadd fast float %6974, %6975
  %6977 = call float @dx.op.unary.f32(i32 24, float %6976)  ; Sqrt(value)
  br label %6988

; <label>:6978                                    ; preds = %6927
  %6979 = icmp slt i32 %6957, 0
  br i1 %6979, label %6980, label %6988

; <label>:6980                                    ; preds = %6978
  %6981 = fsub fast float %169, %6940
  %6982 = fmul fast float %6933, %6933
  %6983 = fmul fast float %6934, %6934
  %6984 = fadd fast float %6982, %6983
  %6985 = fmul fast float %6981, %6981
  %6986 = fadd fast float %6984, %6985
  %6987 = call float @dx.op.unary.f32(i32 24, float %6986)  ; Sqrt(value)
  br label %6988

; <label>:6988                                    ; preds = %6980, %6978, %6968
  %6989 = phi float [ %6977, %6968 ], [ %6987, %6980 ], [ 0.000000e+00, %6978 ]
  %6990 = fsub fast float -0.000000e+00, %6989
  %6991 = select i1 %6932, float -0.000000e+00, float %6990
  %6992 = fmul fast float %4720, 0x3FF7154760000000
  %6993 = fmul fast float %6992, %6991
  %6994 = fmul fast float %4721, 0x3FF7154760000000
  %6995 = fmul fast float %6994, %6991
  %6996 = fmul fast float %4722, 0x3FF7154760000000
  %6997 = fmul fast float %6996, %6991
  %6998 = call float @dx.op.unary.f32(i32 21, float %6993)  ; Exp(value)
  %6999 = call float @dx.op.unary.f32(i32 21, float %6995)  ; Exp(value)
  %7000 = call float @dx.op.unary.f32(i32 21, float %6997)  ; Exp(value)
  %7001 = call float @dx.op.unary.f32(i32 7, float %6998)  ; Saturate(value)
  %7002 = call float @dx.op.unary.f32(i32 7, float %6999)  ; Saturate(value)
  %7003 = call float @dx.op.unary.f32(i32 7, float %7000)  ; Saturate(value)
  %7004 = fmul fast float %6928, %7001
  %7005 = fmul fast float %6929, %7002
  %7006 = fmul fast float %6930, %7003
  %7007 = fsub fast float %5634, %187
  %7008 = fsub fast float %5635, %188
  %7009 = fsub fast float %5636, %189
  %7010 = call float @dx.op.dot3.f32(i32 55, float %7007, float %7008, float %7009, float %7007, float %7008, float %7009)  ; Dot3(ax,ay,az,bx,by,bz)
  %7011 = call float @dx.op.unary.f32(i32 25, float %7010)  ; Rsqrt(value)
  %7012 = fmul fast float %7011, %7007
  %7013 = fmul fast float %7011, %7008
  %7014 = fmul fast float %7011, %7009
  %7015 = call float @dx.op.dot3.f32(i32 55, float %5634, float %5635, float %5636, float %4905, float %4906, float %4907)  ; Dot3(ax,ay,az,bx,by,bz)
  %7016 = call float @dx.op.dot3.f32(i32 55, float %4736, float %4737, float %4738, float %7012, float %7013, float %7014)  ; Dot3(ax,ay,az,bx,by,bz)
  %7017 = call float @dx.op.unary.f32(i32 7, float %7015)  ; Saturate(value)
  %7018 = fmul fast float %7017, %7017
  %7019 = fmul fast float %7018, %4941
  %7020 = call float @dx.op.unary.f32(i32 7, float %7019)  ; Saturate(value)
  %7021 = fmul fast float %7020, %7017
  %7022 = call float @dx.op.dot3.f32(i32 55, float %4905, float %4906, float %4907, float %7012, float %7013, float %7014)  ; Dot3(ax,ay,az,bx,by,bz)
  %7023 = fmul fast float %7022, %7022
  %7024 = call float @dx.op.unary.f32(i32 6, float %7015)  ; FAbs(value)
  %7025 = fsub fast float 1.000000e+00, %4934
  %7026 = fmul fast float %4916, %4916
  %7027 = fmul fast float %7026, %7025
  %7028 = fadd fast float %7027, %4934
  %7029 = bitcast float %7028 to i32
  %7030 = ashr i32 %7029, 1
  %7031 = add nsw i32 %7030, 532487669
  %7032 = bitcast i32 %7031 to float
  %7033 = fadd fast float %7032, %4916
  %7034 = fmul fast float %4934, %7023
  %7035 = fsub fast float 1.000000e+00, %7023
  %7036 = fadd fast float %7035, %7034
  %7037 = fmul fast float %7024, %7024
  %7038 = fmul fast float %7037, %7025
  %7039 = fadd fast float %7038, %4934
  %7040 = bitcast float %7039 to i32
  %7041 = ashr i32 %7040, 1
  %7042 = add nsw i32 %7041, 532487669
  %7043 = bitcast i32 %7042 to float
  %7044 = fadd fast float %7043, %7024
  %7045 = fmul fast float %7036, %7036
  %7046 = fmul fast float %7045, %7033
  %7047 = fmul fast float %7046, %7044
  %7048 = fdiv fast float 0x3FF0A00000000000, %7047
  %7049 = fmul fast float %7048, %4934
  %7050 = call float @dx.op.unary.f32(i32 6, float %7016)  ; FAbs(value)
  %7051 = fsub fast float 1.000000e+00, %7050
  %7052 = bitcast float %7051 to i32
  %7053 = sitofp i32 %7052 to float
  %7054 = fmul fast float %7053, 5.000000e+00
  %7055 = fadd fast float %7054, 0xC1EFBF8940000000
  %7056 = fptosi float %7055 to i32
  %7057 = bitcast i32 %7056 to float
  %7058 = fsub fast float 1.000000e+00, %4908
  %7059 = fsub fast float 1.000000e+00, %4909
  %7060 = fsub fast float 1.000000e+00, %4914
  %7061 = fmul fast float %7057, %7058
  %7062 = fmul fast float %7057, %7059
  %7063 = fmul fast float %7057, %7060
  %7064 = fadd fast float %7061, %4908
  %7065 = fadd fast float %7062, %4909
  %7066 = fadd fast float %7063, %4914
  br i1 %5053, label %7067, label %7090

; <label>:7067                                    ; preds = %6988
  %7068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4295, float %7050, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7069 = extractvalue %dx.types.ResRet.f32 %7068, 0
  %7070 = extractvalue %dx.types.ResRet.f32 %7068, 1
  %7071 = extractvalue %dx.types.ResRet.f32 %7068, 2
  %7072 = fadd fast float %7069, -5.000000e-01
  %7073 = fadd fast float %7070, -5.000000e-01
  %7074 = fadd fast float %7071, -5.000000e-01
  %7075 = fmul fast float %4908, 4.000000e+00
  %7076 = fmul fast float %7075, %7058
  %7077 = fmul fast float %7076, %7072
  %7078 = fmul fast float %4909, 4.000000e+00
  %7079 = fmul fast float %7078, %7059
  %7080 = fmul fast float %7079, %7073
  %7081 = fmul fast float %4914, 4.000000e+00
  %7082 = fmul fast float %7081, %7060
  %7083 = fmul fast float %7082, %7074
  %7084 = fadd fast float %7077, %7064
  %7085 = fadd fast float %7080, %7065
  %7086 = fadd fast float %7083, %7066
  %7087 = call float @dx.op.unary.f32(i32 7, float %7084)  ; Saturate(value)
  %7088 = call float @dx.op.unary.f32(i32 7, float %7085)  ; Saturate(value)
  %7089 = call float @dx.op.unary.f32(i32 7, float %7086)  ; Saturate(value)
  br label %7090

; <label>:7090                                    ; preds = %7067, %6988
  %7091 = phi float [ %7087, %7067 ], [ %7064, %6988 ]
  %7092 = phi float [ %7088, %7067 ], [ %7065, %6988 ]
  %7093 = phi float [ %7089, %7067 ], [ %7066, %6988 ]
  %7094 = fmul fast float %7015, 9.843750e-01
  %7095 = fadd fast float %7094, 7.812500e-03
  %7096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7095, float %5043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7097 = extractvalue %dx.types.ResRet.f32 %7096, 2
  %7098 = extractvalue %dx.types.ResRet.f32 %7096, 3
  %7099 = fmul fast float %7097, %4908
  %7100 = fmul fast float %7097, %4909
  %7101 = fmul fast float %7097, %4914
  %7102 = fadd fast float %7099, %7098
  %7103 = fadd fast float %7100, %7098
  %7104 = fadd fast float %7101, %7098
  br i1 %5053, label %7105, label %7128

; <label>:7105                                    ; preds = %7090
  %7106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4295, float %7015, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7107 = extractvalue %dx.types.ResRet.f32 %7106, 0
  %7108 = extractvalue %dx.types.ResRet.f32 %7106, 1
  %7109 = extractvalue %dx.types.ResRet.f32 %7106, 2
  %7110 = fadd fast float %7107, -5.000000e-01
  %7111 = fadd fast float %7108, -5.000000e-01
  %7112 = fadd fast float %7109, -5.000000e-01
  %7113 = fmul fast float %4908, 4.000000e+00
  %7114 = fmul fast float %7113, %7058
  %7115 = fmul fast float %7114, %7110
  %7116 = fmul fast float %4909, 4.000000e+00
  %7117 = fmul fast float %7116, %7059
  %7118 = fmul fast float %7117, %7111
  %7119 = fmul fast float %4914, 4.000000e+00
  %7120 = fmul fast float %7119, %7060
  %7121 = fmul fast float %7120, %7112
  %7122 = fadd fast float %7115, %7102
  %7123 = fadd fast float %7118, %7103
  %7124 = fadd fast float %7121, %7104
  %7125 = call float @dx.op.unary.f32(i32 7, float %7122)  ; Saturate(value)
  %7126 = call float @dx.op.unary.f32(i32 7, float %7123)  ; Saturate(value)
  %7127 = call float @dx.op.unary.f32(i32 7, float %7124)  ; Saturate(value)
  br label %7128

; <label>:7128                                    ; preds = %7105, %7090
  %7129 = phi float [ %7125, %7105 ], [ %7102, %7090 ]
  %7130 = phi float [ %7126, %7105 ], [ %7103, %7090 ]
  %7131 = phi float [ %7127, %7105 ], [ %7104, %7090 ]
  %7132 = call float @dx.op.binary.f32(i32 35, float %7130, float %7131)  ; FMax(a,b)
  %7133 = call float @dx.op.binary.f32(i32 35, float %7129, float %7132)  ; FMax(a,b)
  %7134 = fsub fast float 1.000000e+00, %7133
  %7135 = fmul fast float %7091, %7049
  %7136 = fmul fast float %7092, %7049
  %7137 = fmul fast float %7093, %7049
  %7138 = fsub fast float 1.000000e+00, %7016
  %7139 = bitcast float %7138 to i32
  %7140 = sitofp i32 %7139 to float
  %7141 = fmul fast float %7140, 5.000000e+00
  %7142 = fadd fast float %7141, 0xC1EFBF8940000000
  %7143 = fptosi float %7142 to i32
  %7144 = bitcast i32 %7143 to float
  %7145 = fmul fast float %7144, %4296
  %7146 = fmul fast float %7134, %7145
  %7147 = fmul fast float %7146, %5595
  %7148 = fmul fast float %7146, %5596
  %7149 = fmul fast float %7146, %5597
  %7150 = fadd fast float %7147, %7135
  %7151 = fadd fast float %7148, %7136
  %7152 = fadd fast float %7149, %7137
  %7153 = fmul fast float %7021, %7004
  %7154 = fmul fast float %7153, %7134
  %7155 = fmul fast float %7021, %7005
  %7156 = fmul fast float %7155, %7134
  %7157 = fmul fast float %7021, %7006
  %7158 = fmul fast float %7157, %7134
  %7159 = fmul fast float %7153, %7150
  %7160 = fmul fast float %7155, %7151
  %7161 = fmul fast float %7157, %7152
  %7162 = fadd fast float %7154, %5579
  %7163 = fmul fast float %7162, %4322
  %7164 = fadd fast float %7156, %5580
  %7165 = fmul fast float %7164, %4322
  %7166 = fadd fast float %7158, %5581
  %7167 = fmul fast float %7166, %4322
  %7168 = fadd fast float %7159, %5622
  %7169 = fmul fast float %7168, %4322
  %7170 = fadd fast float %7160, %5625
  %7171 = fmul fast float %7170, %4322
  %7172 = fadd fast float %7161, %5628
  %7173 = fmul fast float %7172, %4322
  br label %7174

; <label>:7174                                    ; preds = %7128, %6922, %5575
  %7175 = phi float [ %5623, %5575 ], [ %5623, %6922 ], [ %7169, %7128 ]
  %7176 = phi float [ %5626, %5575 ], [ %5626, %6922 ], [ %7171, %7128 ]
  %7177 = phi float [ %5629, %5575 ], [ %5629, %6922 ], [ %7173, %7128 ]
  %7178 = phi float [ %5618, %5575 ], [ %5618, %6922 ], [ %7163, %7128 ]
  %7179 = phi float [ %5619, %5575 ], [ %5619, %6922 ], [ %7165, %7128 ]
  %7180 = phi float [ %5620, %5575 ], [ %5620, %6922 ], [ %7167, %7128 ]
  %7181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7182 = extractvalue %dx.types.CBufRet.i32 %7181, 0
  %7183 = icmp eq i32 %7182, 0
  br i1 %7183, label %7846, label %7184

; <label>:7184                                    ; preds = %7174
  %7185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7186 = extractvalue %dx.types.CBufRet.f32 %7185, 2
  %7187 = extractvalue %dx.types.CBufRet.f32 %7185, 3
  %7188 = fmul fast float %7186, %104
  %7189 = fmul fast float %7187, %105
  %7190 = fptoui float %7188 to i32
  %7191 = fptoui float %7189 to i32
  %7192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7193 = extractvalue %dx.types.CBufRet.f32 %7192, 0
  %7194 = extractvalue %dx.types.CBufRet.f32 %7192, 2
  %7195 = extractvalue %dx.types.CBufRet.f32 %7192, 3
  %7196 = fadd fast float %92, -4.000000e+00
  %7197 = call float @dx.op.binary.f32(i32 35, float %7196, float 0.000000e+00)  ; FMax(a,b)
  %7198 = fadd fast float %7197, %7193
  %7199 = fmul fast float %7198, %7194
  %7200 = call float @dx.op.unary.f32(i32 23, float %7199)  ; Log(value)
  %7201 = fmul fast float %7200, %7195
  %7202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7203 = extractvalue %dx.types.CBufRet.f32 %7202, 2
  %7204 = fmul fast float %7201, %7203
  %7205 = call float @dx.op.unary.f32(i32 7, float %7204)  ; Saturate(value)
  %7206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7207 = extractvalue %dx.types.CBufRet.i32 %7206, 1
  %7208 = add i32 %7207, -1
  %7209 = uitofp i32 %7207 to float
  %7210 = fmul fast float %7209, %7205
  %7211 = fptoui float %7210 to i32
  %7212 = call i32 @dx.op.binary.i32(i32 40, i32 %7211, i32 %7208)  ; UMin(a,b)
  %7213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7214 = extractvalue %dx.types.CBufRet.i32 %7213, 2
  %7215 = extractvalue %dx.types.CBufRet.i32 %7213, 3
  %7216 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7191, i32 %7214, i32 %7190)  ; UMad(a,b,c)
  %7217 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7212, i32 %7215, i32 %7216)  ; UMad(a,b,c)
  %7218 = add nsw i32 %7182, -1
  %7219 = call i32 @dx.op.binary.i32(i32 37, i32 %7218, i32 0)  ; IMax(a,b)
  %7220 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %7221 = fptoui float %7220 to i32
  %7222 = lshr i32 %7221, 5
  %7223 = call i32 @dx.op.binary.i32(i32 40, i32 %7222, i32 8191)  ; UMin(a,b)
  %7224 = shl i32 %7223, 2
  %7225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7224, i32 undef)  ; BufferLoad(srv,index,wot)
  %7226 = extractvalue %dx.types.ResRet.i32 %7225, 0
  %7227 = lshr i32 %7226, 16
  %7228 = and i32 %7226, 65535
  %7229 = lshr i32 %7226, 21
  %7230 = lshr i32 %7228, 5
  %7231 = call i32 @dx.op.binary.i32(i32 40, i32 %7230, i32 %7219)  ; UMin(a,b)
  %7232 = icmp ugt i32 %7229, %7231
  br i1 %7232, label %7846, label %7233

; <label>:7233                                    ; preds = %7184
  br label %7234

; <label>:7234                                    ; preds = %7836, %7233
  %7235 = phi i32 [ %7843, %7836 ], [ %7229, %7233 ]
  %7236 = phi float [ %7837, %7836 ], [ %7175, %7233 ]
  %7237 = phi float [ %7838, %7836 ], [ %7176, %7233 ]
  %7238 = phi float [ %7839, %7836 ], [ %7177, %7233 ]
  %7239 = phi float [ %7840, %7836 ], [ %7178, %7233 ]
  %7240 = phi float [ %7841, %7836 ], [ %7179, %7233 ]
  %7241 = phi float [ %7842, %7836 ], [ %7180, %7233 ]
  %7242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7243 = extractvalue %dx.types.CBufRet.i32 %7242, 0
  %7244 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7217, i32 %7243, i32 %7235)  ; UMad(a,b,c)
  %7245 = shl i32 %7244, 2
  %7246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7245, i32 undef)  ; BufferLoad(srv,index,wot)
  %7247 = extractvalue %dx.types.ResRet.i32 %7246, 0
  %7248 = shl i32 %7235, 5
  %7249 = sub nsw i32 %7227, %7248
  %7250 = call i32 @dx.op.binary.i32(i32 37, i32 %7249, i32 0)  ; IMax(a,b)
  %7251 = call i32 @dx.op.binary.i32(i32 38, i32 %7250, i32 31)  ; IMin(a,b)
  %7252 = sub nsw i32 1, %7227
  %7253 = add nsw i32 %7252, %7228
  %7254 = call i32 @dx.op.binary.i32(i32 37, i32 %7253, i32 0)  ; IMax(a,b)
  %7255 = call i32 @dx.op.binary.i32(i32 38, i32 %7254, i32 32)  ; IMin(a,b)
  %7256 = and i32 %7255, 31
  %7257 = shl i32 -1, %7256
  %7258 = xor i32 %7257, -1
  %7259 = and i32 %7251, 31
  %7260 = shl i32 %7258, %7259
  %7261 = icmp eq i32 %7255, 32
  %7262 = select i1 %7261, i32 -1, i32 %7260
  %7263 = and i32 %7262, %7247
  %7264 = icmp eq i32 %7263, 0
  br i1 %7264, label %7836, label %7265

; <label>:7265                                    ; preds = %7234
  br label %7266

; <label>:7266                                    ; preds = %7400, %7265
  %7267 = phi i32 [ %7278, %7400 ], [ %7263, %7265 ]
  %7268 = phi float [ %7401, %7400 ], [ %7236, %7265 ]
  %7269 = phi float [ %7402, %7400 ], [ %7237, %7265 ]
  %7270 = phi float [ %7403, %7400 ], [ %7238, %7265 ]
  %7271 = phi float [ %7404, %7400 ], [ %7239, %7265 ]
  %7272 = phi float [ %7405, %7400 ], [ %7240, %7265 ]
  %7273 = phi float [ %7406, %7400 ], [ %7241, %7265 ]
  %7274 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7267)  ; FirstbitLo(value)
  %7275 = add i32 %7274, %7248
  %7276 = and i32 %7274, 31
  %7277 = shl i32 1, %7276
  %7278 = xor i32 %7277, %7267
  %7279 = mul i32 %7275, 112
  %7280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7279, i32 undef)  ; BufferLoad(srv,index,wot)
  %7281 = extractvalue %dx.types.ResRet.f32 %7280, 0
  %7282 = extractvalue %dx.types.ResRet.f32 %7280, 1
  %7283 = extractvalue %dx.types.ResRet.f32 %7280, 2
  %7284 = or i32 %7279, 12
  %7285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7284, i32 undef)  ; BufferLoad(srv,index,wot)
  %7286 = extractvalue %dx.types.ResRet.f32 %7285, 0
  %7287 = add i32 %7279, 16
  %7288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7287, i32 undef)  ; BufferLoad(srv,index,wot)
  %7289 = extractvalue %dx.types.ResRet.f32 %7288, 0
  %7290 = extractvalue %dx.types.ResRet.f32 %7288, 1
  %7291 = extractvalue %dx.types.ResRet.f32 %7288, 2
  %7292 = add i32 %7279, 28
  %7293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7292, i32 undef)  ; BufferLoad(srv,index,wot)
  %7294 = extractvalue %dx.types.ResRet.i32 %7293, 0
  %7295 = add i32 %7279, 44
  %7296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7295, i32 undef)  ; BufferLoad(srv,index,wot)
  %7297 = extractvalue %dx.types.ResRet.f32 %7296, 0
  %7298 = add i32 %7279, 48
  %7299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7298, i32 undef)  ; BufferLoad(srv,index,wot)
  %7300 = extractvalue %dx.types.ResRet.f32 %7299, 0
  %7301 = extractvalue %dx.types.ResRet.f32 %7299, 1
  %7302 = extractvalue %dx.types.ResRet.f32 %7299, 2
  %7303 = extractvalue %dx.types.ResRet.f32 %7299, 3
  %7304 = add i32 %7279, 64
  %7305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7304, i32 undef)  ; BufferLoad(srv,index,wot)
  %7306 = extractvalue %dx.types.ResRet.f32 %7305, 0
  %7307 = extractvalue %dx.types.ResRet.f32 %7305, 1
  %7308 = extractvalue %dx.types.ResRet.f32 %7305, 2
  %7309 = extractvalue %dx.types.ResRet.f32 %7305, 3
  %7310 = add i32 %7279, 80
  %7311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7310, i32 undef)  ; BufferLoad(srv,index,wot)
  %7312 = extractvalue %dx.types.ResRet.f32 %7311, 1
  %7313 = extractvalue %dx.types.ResRet.f32 %7311, 2
  %7314 = add i32 %7279, 92
  %7315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7314, i32 undef)  ; BufferLoad(srv,index,wot)
  %7316 = extractvalue %dx.types.ResRet.i32 %7315, 0
  %7317 = call float @dx.op.dot3.f32(i32 55, float %7281, float %7282, float %7283, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7318 = select i1 %261, float %7312, float %7281
  %7319 = select i1 %261, float %7317, float %7282
  %7320 = select i1 %261, float %7313, float %7283
  %7321 = and i32 %7316, 65535
  %7322 = uitofp i32 %7321 to float
  %7323 = lshr i32 %7316, 16
  %7324 = uitofp i32 %7323 to float
  %7325 = and i32 %7294, 65535
  %7326 = and i32 %7294, 50331648
  %7327 = icmp eq i32 %7326, 33554432
  %7328 = fsub fast float %7300, %167
  %7329 = fsub fast float %7301, %168
  %7330 = fsub fast float %7302, %169
  %7331 = call float @dx.op.dot3.f32(i32 55, float %7328, float %7329, float %7330, float %7328, float %7329, float %7330)  ; Dot3(ax,ay,az,bx,by,bz)
  %7332 = call float @dx.op.unary.f32(i32 24, float %7331)  ; Sqrt(value)
  %7333 = fdiv fast float 1.000000e+00, %7332
  %7334 = fmul fast float %7333, %7328
  %7335 = fmul fast float %7333, %7329
  %7336 = fmul fast float %7333, %7330
  %7337 = fadd fast float %7332, %7286
  %7338 = fdiv fast float 1.000000e+00, %7337
  %7339 = fmul float %7297, %7338
  %7340 = fmul float %7339, %7339
  %7341 = call float @dx.op.unary.f32(i32 7, float %7340)  ; Saturate(value)
  br i1 %7327, label %7342, label %7363

; <label>:7342                                    ; preds = %7266
  %7343 = fmul fast float %7308, %7289
  %7344 = fmul fast float %7308, %7290
  %7345 = fmul fast float %7308, %7291
  %7346 = fadd fast float %7328, %7343
  %7347 = fadd fast float %7329, %7344
  %7348 = fadd fast float %7330, %7345
  %7349 = call float @dx.op.dot3.f32(i32 55, float %7346, float %7347, float %7348, float %7346, float %7347, float %7348)  ; Dot3(ax,ay,az,bx,by,bz)
  %7350 = call float @dx.op.unary.f32(i32 25, float %7349)  ; Rsqrt(value)
  %7351 = fmul fast float %7350, %7346
  %7352 = fmul fast float %7350, %7347
  %7353 = fmul fast float %7350, %7348
  %7354 = fsub fast float %167, %7300
  %7355 = fsub fast float %168, %7301
  %7356 = fsub fast float %169, %7302
  %7357 = fsub fast float -0.000000e+00, %7354
  %7358 = fsub fast float -0.000000e+00, %7355
  %7359 = fsub fast float -0.000000e+00, %7356
  %7360 = call float @dx.op.dot3.f32(i32 55, float %7357, float %7358, float %7359, float %7289, float %7290, float %7291)  ; Dot3(ax,ay,az,bx,by,bz)
  %7361 = fcmp fast ogt float %7360, 0.000000e+00
  %7362 = uitofp i1 %7361 to float
  br label %7363

; <label>:7363                                    ; preds = %7342, %7266
  %7364 = phi float [ %7362, %7342 ], [ 1.000000e+00, %7266 ]
  %7365 = phi float [ %7351, %7342 ], [ %7334, %7266 ]
  %7366 = phi float [ %7352, %7342 ], [ %7335, %7266 ]
  %7367 = phi float [ %7353, %7342 ], [ %7336, %7266 ]
  %7368 = call float @dx.op.dot3.f32(i32 55, float %7289, float %7290, float %7291, float %7365, float %7366, float %7367)  ; Dot3(ax,ay,az,bx,by,bz)
  %7369 = fmul fast float %7368, %7368
  %7370 = call float @dx.op.unary.f32(i32 7, float %7369)  ; Saturate(value)
  %7371 = fsub fast float 1.000000e+00, %7370
  %7372 = fmul fast float %7371, 5.000000e-01
  %7373 = fcmp fast ogt float %7368, 0.000000e+00
  %7374 = fsub fast float 1.000000e+00, %7372
  %7375 = select i1 %7373, float %7372, float %7374
  %7376 = fmul fast float %7375, %7324
  %7377 = fadd fast float %7376, %7322
  %7378 = fmul fast float %7377, 0x3EF0001000000000
  %7379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %7378, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7380 = extractvalue %dx.types.ResRet.f32 %7379, 0
  %7381 = fmul fast float %7368, %7306
  %7382 = fadd fast float %7381, %7307
  %7383 = call float @dx.op.unary.f32(i32 7, float %7382)  ; Saturate(value)
  %7384 = select i1 %7327, float 1.000000e+00, float %7383
  %7385 = select i1 %7327, float %7383, float 1.000000e+00
  %7386 = fmul fast float %7332, %7303
  %7387 = fsub fast float 1.000000e+00, %7386
  %7388 = fmul fast float %7387, %7309
  %7389 = call float @dx.op.unary.f32(i32 7, float %7388)  ; Saturate(value)
  %7390 = fmul fast float %7389, %7385
  %7391 = fmul fast float %7390, 2.000000e+00
  %7392 = fsub fast float 3.000000e+00, %7391
  %7393 = fmul fast float %7380, %7364
  %7394 = fmul fast float %7390, %7390
  %7395 = fmul fast float %7394, %7393
  %7396 = fmul fast float %7395, %7392
  %7397 = call float @dx.op.binary.f32(i32 36, float %7396, float %7396)  ; FMin(a,b)
  %7398 = call float @dx.op.binary.f32(i32 36, float %7396, float %7397)  ; FMin(a,b)
  %7399 = fcmp fast ogt float %7398, 0.000000e+00
  br i1 %7399, label %7408, label %7400, !dx.controlflow.hints !129

; <label>:7400                                    ; preds = %7792, %7554, %7363
  %7401 = phi float [ %7268, %7554 ], [ %7268, %7363 ], [ %7832, %7792 ]
  %7402 = phi float [ %7269, %7554 ], [ %7269, %7363 ], [ %7833, %7792 ]
  %7403 = phi float [ %7270, %7554 ], [ %7270, %7363 ], [ %7834, %7792 ]
  %7404 = phi float [ %7271, %7554 ], [ %7271, %7363 ], [ %7826, %7792 ]
  %7405 = phi float [ %7272, %7554 ], [ %7272, %7363 ], [ %7827, %7792 ]
  %7406 = phi float [ %7273, %7554 ], [ %7273, %7363 ], [ %7828, %7792 ]
  %7407 = icmp eq i32 %7267, %7277
  br i1 %7407, label %7835, label %7266

; <label>:7408                                    ; preds = %7363
  %7409 = icmp eq i32 %7325, 255
  br i1 %7409, label %7554, label %7410, !dx.controlflow.hints !130

; <label>:7410                                    ; preds = %7408
  %7411 = mul nuw nsw i32 %7325, 176
  %7412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7411, i32 undef)  ; BufferLoad(srv,index,wot)
  %7413 = extractvalue %dx.types.ResRet.f32 %7412, 0
  %7414 = extractvalue %dx.types.ResRet.f32 %7412, 1
  %7415 = extractvalue %dx.types.ResRet.f32 %7412, 2
  %7416 = extractvalue %dx.types.ResRet.f32 %7412, 3
  %7417 = add nuw nsw i32 %7411, 16
  %7418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7417, i32 undef)  ; BufferLoad(srv,index,wot)
  %7419 = extractvalue %dx.types.ResRet.f32 %7418, 0
  %7420 = extractvalue %dx.types.ResRet.f32 %7418, 1
  %7421 = add nuw nsw i32 %7411, 32
  %7422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7421, i32 undef)  ; BufferLoad(srv,index,wot)
  %7423 = extractvalue %dx.types.ResRet.f32 %7422, 0
  %7424 = extractvalue %dx.types.ResRet.f32 %7422, 1
  %7425 = extractvalue %dx.types.ResRet.f32 %7422, 2
  %7426 = add nuw nsw i32 %7411, 48
  %7427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7426, i32 undef)  ; BufferLoad(srv,index,wot)
  %7428 = extractvalue %dx.types.ResRet.f32 %7427, 0
  %7429 = extractvalue %dx.types.ResRet.f32 %7427, 1
  %7430 = extractvalue %dx.types.ResRet.f32 %7427, 2
  %7431 = extractvalue %dx.types.ResRet.f32 %7427, 3
  %7432 = add nuw nsw i32 %7411, 64
  %7433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7432, i32 undef)  ; BufferLoad(srv,index,wot)
  %7434 = extractvalue %dx.types.ResRet.f32 %7433, 0
  %7435 = extractvalue %dx.types.ResRet.f32 %7433, 1
  %7436 = extractvalue %dx.types.ResRet.f32 %7433, 2
  %7437 = extractvalue %dx.types.ResRet.f32 %7433, 3
  %7438 = add nuw nsw i32 %7411, 80
  %7439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7438, i32 undef)  ; BufferLoad(srv,index,wot)
  %7440 = extractvalue %dx.types.ResRet.f32 %7439, 0
  %7441 = extractvalue %dx.types.ResRet.f32 %7439, 1
  %7442 = extractvalue %dx.types.ResRet.f32 %7439, 2
  %7443 = extractvalue %dx.types.ResRet.f32 %7439, 3
  %7444 = add nuw nsw i32 %7411, 96
  %7445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7444, i32 undef)  ; BufferLoad(srv,index,wot)
  %7446 = extractvalue %dx.types.ResRet.f32 %7445, 0
  %7447 = extractvalue %dx.types.ResRet.f32 %7445, 1
  %7448 = extractvalue %dx.types.ResRet.f32 %7445, 2
  %7449 = extractvalue %dx.types.ResRet.f32 %7445, 3
  %7450 = bitcast float %7420 to i32
  %7451 = fmul fast float %7425, %111
  %7452 = fmul fast float %7425, %112
  %7453 = fmul fast float %7425, %113
  %7454 = fadd fast float %7451, %167
  %7455 = fadd fast float %7452, %168
  %7456 = fadd fast float %7453, %169
  %7457 = fmul fast float %7454, %7428
  %7458 = call float @dx.op.tertiary.f32(i32 46, float %7455, float %7434, float %7457)  ; FMad(a,b,c)
  %7459 = call float @dx.op.tertiary.f32(i32 46, float %7456, float %7440, float %7458)  ; FMad(a,b,c)
  %7460 = fadd fast float %7459, %7446
  %7461 = fmul fast float %7454, %7429
  %7462 = call float @dx.op.tertiary.f32(i32 46, float %7455, float %7435, float %7461)  ; FMad(a,b,c)
  %7463 = call float @dx.op.tertiary.f32(i32 46, float %7456, float %7441, float %7462)  ; FMad(a,b,c)
  %7464 = fadd fast float %7463, %7447
  %7465 = fmul fast float %7454, %7430
  %7466 = call float @dx.op.tertiary.f32(i32 46, float %7455, float %7436, float %7465)  ; FMad(a,b,c)
  %7467 = call float @dx.op.tertiary.f32(i32 46, float %7456, float %7442, float %7466)  ; FMad(a,b,c)
  %7468 = fadd fast float %7467, %7448
  %7469 = fmul fast float %7454, %7431
  %7470 = call float @dx.op.tertiary.f32(i32 46, float %7455, float %7437, float %7469)  ; FMad(a,b,c)
  %7471 = call float @dx.op.tertiary.f32(i32 46, float %7456, float %7443, float %7470)  ; FMad(a,b,c)
  %7472 = fadd fast float %7471, %7449
  %7473 = fdiv fast float %7460, %7472
  %7474 = fdiv fast float %7464, %7472
  %7475 = fdiv fast float %7468, %7472
  %7476 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7475)  ; FMax(a,b)
  %7477 = fmul fast float %272, 0x401921FB60000000
  %7478 = call float @dx.op.unary.f32(i32 13, float %7477)  ; Sin(value)
  %7479 = call float @dx.op.unary.f32(i32 12, float %7477)  ; Cos(value)
  %7480 = fmul fast float %7479, %7424
  %7481 = call float @dx.op.tertiary.f32(i32 46, float %7478, float %7424, float 0.000000e+00)  ; FMad(a,b,c)
  %7482 = fmul fast float %7424, %7478
  %7483 = fsub fast float -0.000000e+00, %7482
  %7484 = call float @dx.op.tertiary.f32(i32 46, float %7479, float %7424, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7485

; <label>:7485                                    ; preds = %7485, %7410
  %7486 = phi float [ 0.000000e+00, %7410 ], [ %7518, %7485 ]
  %7487 = phi float [ 0.000000e+00, %7410 ], [ %7520, %7485 ]
  %7488 = phi i32 [ 0, %7410 ], [ %7521, %7485 ]
  %7489 = mul i32 %7488, 2
  %7490 = add i32 0, %7489
  %7491 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7490
  %7492 = load float, float* %7491, align 4
  %7493 = mul i32 %7488, 2
  %7494 = add i32 1, %7493
  %7495 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7494
  %7496 = load float, float* %7495, align 4
  %7497 = fmul fast float %7480, %7492
  %7498 = call float @dx.op.tertiary.f32(i32 46, float %7496, float %7483, float %7497)  ; FMad(a,b,c)
  %7499 = fmul fast float %7492, %7481
  %7500 = call float @dx.op.tertiary.f32(i32 46, float %7496, float %7484, float %7499)  ; FMad(a,b,c)
  %7501 = fadd fast float %7498, %7473
  %7502 = fadd fast float %7500, %7474
  %7503 = fmul fast float %7501, %7419
  %7504 = fmul fast float %7502, %7419
  %7505 = call float @dx.op.binary.f32(i32 35, float %7503, float %7415)  ; FMax(a,b)
  %7506 = call float @dx.op.binary.f32(i32 35, float %7504, float %7415)  ; FMax(a,b)
  %7507 = call float @dx.op.binary.f32(i32 36, float %7505, float %7416)  ; FMin(a,b)
  %7508 = call float @dx.op.binary.f32(i32 36, float %7506, float %7416)  ; FMin(a,b)
  %7509 = fadd fast float %7507, %7413
  %7510 = fadd fast float %7508, %7414
  %7511 = uitofp i32 %7450 to float
  %7512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %7509, float %7510, float %7511, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7513 = extractvalue %dx.types.ResRet.f32 %7512, 0
  %7514 = fsub fast float %7513, %7476
  %7515 = fsub fast float %7514, %7423
  %7516 = fcmp fast ogt float %7515, 0.000000e+00
  %7517 = select i1 %7516, float 1.000000e+00, float 0.000000e+00
  %7518 = fadd fast float %7517, %7486
  %7519 = select i1 %7516, float %7515, float 0.000000e+00
  %7520 = fadd fast float %7519, %7487
  %7521 = add nuw nsw i32 %7488, 1
  %7522 = icmp eq i32 %7521, 8
  br i1 %7522, label %7523, label %7485

; <label>:7523                                    ; preds = %7485
  %7524 = fdiv fast float 1.000000e+00, %7518
  %7525 = fmul fast float %7524, %7520
  %7526 = fdiv fast float 1.000000e+00, %7476
  %7527 = fmul fast float %7525, %7526
  %7528 = call float @dx.op.unary.f32(i32 7, float %7527)  ; Saturate(value)
  %7529 = call float @dx.op.binary.f32(i32 35, float %7528, float 0.000000e+00)  ; FMax(a,b)
  %7530 = fmul fast float %7518, 1.250000e-01
  %7531 = call float @dx.op.unary.f32(i32 7, float %7530)  ; Saturate(value)
  %7532 = fmul fast float %7531, 2.000000e+00
  %7533 = fadd fast float %7532, -1.000000e+00
  %7534 = fcmp fast ogt float %7533, 0.000000e+00
  %7535 = fcmp fast olt float %7533, 0.000000e+00
  %7536 = zext i1 %7534 to i32
  %7537 = zext i1 %7535 to i32
  %7538 = sub nsw i32 %7536, %7537
  %7539 = sitofp i32 %7538 to float
  %7540 = fmul fast float %7539, %7533
  %7541 = fsub fast float 1.000000e+00, %7540
  %7542 = fmul fast float %7541, %7541
  %7543 = fmul fast float %7542, %7541
  %7544 = fsub fast float %7541, %7543
  %7545 = fmul fast float %7544, %7529
  %7546 = fsub fast float 1.000000e+00, %7543
  %7547 = fsub fast float %7546, %7545
  %7548 = fmul fast float %7539, 5.000000e-01
  %7549 = fmul fast float %7548, %7547
  %7550 = fsub fast float -5.000000e-01, %7549
  %7551 = fmul fast float %7550, %7384
  %7552 = fadd fast float %7551, 1.000000e+00
  %7553 = fmul fast float %7552, %7396
  br label %7554

; <label>:7554                                    ; preds = %7523, %7408
  %7555 = phi float [ %7553, %7523 ], [ %7396, %7408 ]
  %7556 = call float @dx.op.binary.f32(i32 36, float %7555, float %7555)  ; FMin(a,b)
  %7557 = call float @dx.op.binary.f32(i32 36, float %7555, float %7556)  ; FMin(a,b)
  %7558 = fcmp fast ogt float %7557, 0.000000e+00
  br i1 %7558, label %7559, label %7400, !dx.controlflow.hints !131

; <label>:7559                                    ; preds = %7554
  %7560 = fmul fast float %7555, %7318
  %7561 = fmul fast float %7555, %7319
  %7562 = fmul fast float %7555, %7320
  %7563 = fsub fast float %7302, %4719
  %7564 = fcmp fast ogt float %7563, 0.000000e+00
  %7565 = fsub fast float %169, %4719
  %7566 = fcmp fast ogt float %7565, 0.000000e+00
  %7567 = xor i1 %7566, %7564
  %7568 = fsub fast float %4719, %7302
  %7569 = fmul fast float %7568, 2.000000e+00
  %7570 = fadd fast float %7569, %7302
  %7571 = select i1 %7567, float %7302, float %7570
  %7572 = fsub fast float %7571, %169
  %7573 = call float @dx.op.dot3.f32(i32 55, float %7328, float %7329, float %7572, float %7328, float %7329, float %7572)  ; Dot3(ax,ay,az,bx,by,bz)
  %7574 = call float @dx.op.unary.f32(i32 25, float %7573)  ; Rsqrt(value)
  %7575 = fmul fast float %7574, %7328
  %7576 = fmul fast float %7574, %7329
  %7577 = fmul fast float %7574, %7572
  %7578 = fsub fast float %4719, %169
  %7579 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7578)  ; Dot3(ax,ay,az,bx,by,bz)
  %7580 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7575, float %7576, float %7577)  ; Dot3(ax,ay,az,bx,by,bz)
  %7581 = fdiv fast float 1.000000e+00, %7580
  %7582 = fmul fast float %7581, %7579
  %7583 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7565, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7584 = fcmp fast ogt float %7583, 0.000000e+00
  %7585 = fcmp fast olt float %7583, 0.000000e+00
  %7586 = zext i1 %7584 to i32
  %7587 = zext i1 %7585 to i32
  %7588 = sub nsw i32 %7586, %7587
  %7589 = sitofp i32 %7588 to float
  %7590 = fsub fast float %7571, %4719
  %7591 = call float @dx.op.dot3.f32(i32 55, float %7328, float %7329, float %7590, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7592 = fcmp fast ogt float %7591, 0.000000e+00
  %7593 = fcmp fast olt float %7591, 0.000000e+00
  %7594 = zext i1 %7592 to i32
  %7595 = zext i1 %7593 to i32
  %7596 = sub nsw i32 %7594, %7595
  %7597 = sitofp i32 %7596 to float
  %7598 = fcmp fast une float %7589, %7597
  br i1 %7598, label %7599, label %7609

; <label>:7599                                    ; preds = %7559
  %7600 = fmul fast float %7582, %7577
  %7601 = fmul fast float %7582, %7576
  %7602 = fmul fast float %7582, %7575
  %7603 = fmul fast float %7602, %7602
  %7604 = fmul fast float %7601, %7601
  %7605 = fadd fast float %7603, %7604
  %7606 = fmul fast float %7600, %7600
  %7607 = fadd fast float %7605, %7606
  %7608 = call float @dx.op.unary.f32(i32 24, float %7607)  ; Sqrt(value)
  br label %7621

; <label>:7609                                    ; preds = %7559
  %7610 = icmp slt i32 %7588, 0
  br i1 %7610, label %7611, label %7621

; <label>:7611                                    ; preds = %7609
  %7612 = fsub fast float %167, %7300
  %7613 = fsub fast float %168, %7301
  %7614 = fsub fast float %169, %7571
  %7615 = fmul fast float %7612, %7612
  %7616 = fmul fast float %7613, %7613
  %7617 = fadd fast float %7615, %7616
  %7618 = fmul fast float %7614, %7614
  %7619 = fadd fast float %7617, %7618
  %7620 = call float @dx.op.unary.f32(i32 24, float %7619)  ; Sqrt(value)
  br label %7621

; <label>:7621                                    ; preds = %7611, %7609, %7599
  %7622 = phi float [ %7608, %7599 ], [ %7620, %7611 ], [ 0.000000e+00, %7609 ]
  %7623 = and i1 %7566, %7564
  %7624 = fsub fast float -0.000000e+00, %7622
  %7625 = select i1 %7623, float -0.000000e+00, float %7624
  %7626 = fmul fast float %4720, 0x3FF7154760000000
  %7627 = fmul fast float %7626, %7625
  %7628 = fmul fast float %4721, 0x3FF7154760000000
  %7629 = fmul fast float %7628, %7625
  %7630 = fmul fast float %4722, 0x3FF7154760000000
  %7631 = fmul fast float %7630, %7625
  %7632 = call float @dx.op.unary.f32(i32 21, float %7627)  ; Exp(value)
  %7633 = call float @dx.op.unary.f32(i32 21, float %7629)  ; Exp(value)
  %7634 = call float @dx.op.unary.f32(i32 21, float %7631)  ; Exp(value)
  %7635 = call float @dx.op.unary.f32(i32 7, float %7632)  ; Saturate(value)
  %7636 = call float @dx.op.unary.f32(i32 7, float %7633)  ; Saturate(value)
  %7637 = call float @dx.op.unary.f32(i32 7, float %7634)  ; Saturate(value)
  %7638 = fmul fast float %7560, %7635
  %7639 = fmul fast float %7561, %7636
  %7640 = fmul fast float %7562, %7637
  %7641 = fsub fast float %7334, %187
  %7642 = fsub fast float %7335, %188
  %7643 = fsub fast float %7336, %189
  %7644 = call float @dx.op.dot3.f32(i32 55, float %7641, float %7642, float %7643, float %7641, float %7642, float %7643)  ; Dot3(ax,ay,az,bx,by,bz)
  %7645 = call float @dx.op.unary.f32(i32 25, float %7644)  ; Rsqrt(value)
  %7646 = fmul fast float %7645, %7641
  %7647 = fmul fast float %7645, %7642
  %7648 = fmul fast float %7645, %7643
  %7649 = call float @dx.op.dot3.f32(i32 55, float %7334, float %7335, float %7336, float %4905, float %4906, float %4907)  ; Dot3(ax,ay,az,bx,by,bz)
  %7650 = call float @dx.op.dot3.f32(i32 55, float %4736, float %4737, float %4738, float %7646, float %7647, float %7648)  ; Dot3(ax,ay,az,bx,by,bz)
  %7651 = call float @dx.op.unary.f32(i32 7, float %7649)  ; Saturate(value)
  %7652 = fmul fast float %7651, %7341
  %7653 = fmul fast float %7651, %7651
  %7654 = fmul fast float %7653, %4941
  %7655 = call float @dx.op.unary.f32(i32 7, float %7654)  ; Saturate(value)
  %7656 = fmul fast float %7652, %7655
  %7657 = bitcast float %7331 to i32
  %7658 = ashr i32 %7657, 1
  %7659 = sub nsw i32 1597463007, %7658
  %7660 = bitcast i32 %7659 to float
  %7661 = fmul fast float %7660, %7328
  %7662 = fmul fast float %7660, %7329
  %7663 = fmul fast float %7660, %7330
  %7664 = fsub fast float %7661, %187
  %7665 = fsub fast float %7662, %188
  %7666 = fsub fast float %7663, %189
  %7667 = call float @dx.op.dot3.f32(i32 55, float %7664, float %7665, float %7666, float %7664, float %7665, float %7666)  ; Dot3(ax,ay,az,bx,by,bz)
  %7668 = call float @dx.op.unary.f32(i32 25, float %7667)  ; Rsqrt(value)
  %7669 = fmul fast float %7664, %7668
  %7670 = fmul fast float %7665, %7668
  %7671 = fmul fast float %7666, %7668
  %7672 = call float @dx.op.dot3.f32(i32 55, float %4905, float %4906, float %4907, float %7669, float %7670, float %7671)  ; Dot3(ax,ay,az,bx,by,bz)
  %7673 = fmul fast float %7672, %7672
  %7674 = call float @dx.op.unary.f32(i32 6, float %7649)  ; FAbs(value)
  %7675 = fsub fast float 1.000000e+00, %4934
  %7676 = fmul fast float %4916, %4916
  %7677 = fmul fast float %7676, %7675
  %7678 = fadd fast float %7677, %4934
  %7679 = bitcast float %7678 to i32
  %7680 = ashr i32 %7679, 1
  %7681 = add nsw i32 %7680, 532487669
  %7682 = bitcast i32 %7681 to float
  %7683 = fadd fast float %7682, %4916
  %7684 = fmul fast float %4934, %7673
  %7685 = fsub fast float 1.000000e+00, %7673
  %7686 = fadd fast float %7685, %7684
  %7687 = fmul fast float %7674, %7674
  %7688 = fmul fast float %7687, %7675
  %7689 = fadd fast float %7688, %4934
  %7690 = bitcast float %7689 to i32
  %7691 = ashr i32 %7690, 1
  %7692 = add nsw i32 %7691, 532487669
  %7693 = bitcast i32 %7692 to float
  %7694 = fadd fast float %7693, %7674
  %7695 = fmul fast float %7686, %7686
  %7696 = fmul fast float %7695, %7683
  %7697 = fmul fast float %7696, %7694
  %7698 = fdiv fast float 1.000000e+00, %7697
  %7699 = bitcast float %4934 to i32
  %7700 = sitofp i32 %7699 to float
  %7701 = fmul fast float %7700, 0x3FE7F73180000000
  %7702 = fadd fast float %7701, 0x41AFE27C40000000
  %7703 = fptosi float %7702 to i32
  %7704 = bitcast i32 %7703 to float
  %7705 = fmul fast float %7297, 0x3FD80E9D60000000
  %7706 = fmul fast float %7705, %7660
  %7707 = fadd fast float %7704, %7706
  %7708 = bitcast float %7707 to i32
  %7709 = sub nsw i32 2129859010, %7708
  %7710 = bitcast i32 %7709 to float
  %7711 = fmul fast float %4934, %7698
  %7712 = fmul fast float %7711, %7704
  %7713 = fmul fast float %7712, %7710
  %7714 = call float @dx.op.unary.f32(i32 6, float %7650)  ; FAbs(value)
  %7715 = fsub fast float 1.000000e+00, %7714
  %7716 = bitcast float %7715 to i32
  %7717 = sitofp i32 %7716 to float
  %7718 = fmul fast float %7717, 5.000000e+00
  %7719 = fadd fast float %7718, 0xC1EFBF8940000000
  %7720 = fptosi float %7719 to i32
  %7721 = bitcast i32 %7720 to float
  %7722 = fsub fast float 1.000000e+00, %4908
  %7723 = fsub fast float 1.000000e+00, %4909
  %7724 = fsub fast float 1.000000e+00, %4914
  %7725 = fmul fast float %7721, %7722
  %7726 = fmul fast float %7721, %7723
  %7727 = fmul fast float %7721, %7724
  %7728 = fadd fast float %7725, %4908
  %7729 = fadd fast float %7726, %4909
  %7730 = fadd fast float %7727, %4914
  br i1 %5053, label %7731, label %7754

; <label>:7731                                    ; preds = %7621
  %7732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4295, float %7714, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7733 = extractvalue %dx.types.ResRet.f32 %7732, 0
  %7734 = extractvalue %dx.types.ResRet.f32 %7732, 1
  %7735 = extractvalue %dx.types.ResRet.f32 %7732, 2
  %7736 = fadd fast float %7733, -5.000000e-01
  %7737 = fadd fast float %7734, -5.000000e-01
  %7738 = fadd fast float %7735, -5.000000e-01
  %7739 = fmul fast float %4908, 4.000000e+00
  %7740 = fmul fast float %7739, %7722
  %7741 = fmul fast float %7740, %7736
  %7742 = fmul fast float %4909, 4.000000e+00
  %7743 = fmul fast float %7742, %7723
  %7744 = fmul fast float %7743, %7737
  %7745 = fmul fast float %4914, 4.000000e+00
  %7746 = fmul fast float %7745, %7724
  %7747 = fmul fast float %7746, %7738
  %7748 = fadd fast float %7741, %7728
  %7749 = fadd fast float %7744, %7729
  %7750 = fadd fast float %7747, %7730
  %7751 = call float @dx.op.unary.f32(i32 7, float %7748)  ; Saturate(value)
  %7752 = call float @dx.op.unary.f32(i32 7, float %7749)  ; Saturate(value)
  %7753 = call float @dx.op.unary.f32(i32 7, float %7750)  ; Saturate(value)
  br label %7754

; <label>:7754                                    ; preds = %7731, %7621
  %7755 = phi float [ %7751, %7731 ], [ %7728, %7621 ]
  %7756 = phi float [ %7752, %7731 ], [ %7729, %7621 ]
  %7757 = phi float [ %7753, %7731 ], [ %7730, %7621 ]
  %7758 = fmul fast float %7649, 9.843750e-01
  %7759 = fadd fast float %7758, 7.812500e-03
  %7760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7759, float %5043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7761 = extractvalue %dx.types.ResRet.f32 %7760, 2
  %7762 = extractvalue %dx.types.ResRet.f32 %7760, 3
  %7763 = fmul fast float %7761, %4908
  %7764 = fmul fast float %7761, %4909
  %7765 = fmul fast float %7761, %4914
  %7766 = fadd fast float %7763, %7762
  %7767 = fadd fast float %7764, %7762
  %7768 = fadd fast float %7765, %7762
  br i1 %5053, label %7769, label %7792

; <label>:7769                                    ; preds = %7754
  %7770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4295, float %7649, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7771 = extractvalue %dx.types.ResRet.f32 %7770, 0
  %7772 = extractvalue %dx.types.ResRet.f32 %7770, 1
  %7773 = extractvalue %dx.types.ResRet.f32 %7770, 2
  %7774 = fadd fast float %7771, -5.000000e-01
  %7775 = fadd fast float %7772, -5.000000e-01
  %7776 = fadd fast float %7773, -5.000000e-01
  %7777 = fmul fast float %4908, 4.000000e+00
  %7778 = fmul fast float %7777, %7722
  %7779 = fmul fast float %7778, %7774
  %7780 = fmul fast float %4909, 4.000000e+00
  %7781 = fmul fast float %7780, %7723
  %7782 = fmul fast float %7781, %7775
  %7783 = fmul fast float %4914, 4.000000e+00
  %7784 = fmul fast float %7783, %7724
  %7785 = fmul fast float %7784, %7776
  %7786 = fadd fast float %7779, %7766
  %7787 = fadd fast float %7782, %7767
  %7788 = fadd fast float %7785, %7768
  %7789 = call float @dx.op.unary.f32(i32 7, float %7786)  ; Saturate(value)
  %7790 = call float @dx.op.unary.f32(i32 7, float %7787)  ; Saturate(value)
  %7791 = call float @dx.op.unary.f32(i32 7, float %7788)  ; Saturate(value)
  br label %7792

; <label>:7792                                    ; preds = %7769, %7754
  %7793 = phi float [ %7789, %7769 ], [ %7766, %7754 ]
  %7794 = phi float [ %7790, %7769 ], [ %7767, %7754 ]
  %7795 = phi float [ %7791, %7769 ], [ %7768, %7754 ]
  %7796 = call float @dx.op.binary.f32(i32 35, float %7794, float %7795)  ; FMax(a,b)
  %7797 = call float @dx.op.binary.f32(i32 35, float %7793, float %7796)  ; FMax(a,b)
  %7798 = fsub fast float 1.000000e+00, %7797
  %7799 = fmul fast float %7755, %7713
  %7800 = fmul fast float %7756, %7713
  %7801 = fmul fast float %7757, %7713
  %7802 = fsub fast float 1.000000e+00, %7650
  %7803 = bitcast float %7802 to i32
  %7804 = sitofp i32 %7803 to float
  %7805 = fmul fast float %7804, 5.000000e+00
  %7806 = fadd fast float %7805, 0xC1EFBF8940000000
  %7807 = fptosi float %7806 to i32
  %7808 = bitcast i32 %7807 to float
  %7809 = fmul fast float %7808, %4296
  %7810 = fmul fast float %7798, %7809
  %7811 = fmul fast float %7810, %5595
  %7812 = fmul fast float %7810, %5596
  %7813 = fmul fast float %7810, %5597
  %7814 = fadd fast float %7811, %7799
  %7815 = fadd fast float %7812, %7800
  %7816 = fadd fast float %7813, %7801
  %7817 = fmul fast float %7638, %4322
  %7818 = fmul fast float %7817, %7656
  %7819 = fmul fast float %7818, %7798
  %7820 = fmul fast float %7639, %4322
  %7821 = fmul fast float %7820, %7656
  %7822 = fmul fast float %7821, %7798
  %7823 = fmul fast float %7640, %4322
  %7824 = fmul fast float %7823, %7656
  %7825 = fmul fast float %7824, %7798
  %7826 = fadd fast float %7819, %7271
  %7827 = fadd fast float %7822, %7272
  %7828 = fadd fast float %7825, %7273
  %7829 = fmul fast float %7818, %7814
  %7830 = fmul fast float %7821, %7815
  %7831 = fmul fast float %7824, %7816
  %7832 = fadd fast float %7829, %7268
  %7833 = fadd fast float %7830, %7269
  %7834 = fadd fast float %7831, %7270
  br label %7400

; <label>:7835                                    ; preds = %7400
  br label %7836

; <label>:7836                                    ; preds = %7835, %7234
  %7837 = phi float [ %7236, %7234 ], [ %7401, %7835 ]
  %7838 = phi float [ %7237, %7234 ], [ %7402, %7835 ]
  %7839 = phi float [ %7238, %7234 ], [ %7403, %7835 ]
  %7840 = phi float [ %7239, %7234 ], [ %7404, %7835 ]
  %7841 = phi float [ %7240, %7234 ], [ %7405, %7835 ]
  %7842 = phi float [ %7241, %7234 ], [ %7406, %7835 ]
  %7843 = add i32 %7235, 1
  %7844 = icmp ugt i32 %7843, %7231
  br i1 %7844, label %7845, label %7234

; <label>:7845                                    ; preds = %7836
  br label %7846

; <label>:7846                                    ; preds = %7845, %7184, %7174
  %7847 = phi float [ %7175, %7174 ], [ %7175, %7184 ], [ %7837, %7845 ]
  %7848 = phi float [ %7176, %7174 ], [ %7176, %7184 ], [ %7838, %7845 ]
  %7849 = phi float [ %7177, %7174 ], [ %7177, %7184 ], [ %7839, %7845 ]
  %7850 = phi float [ %7178, %7174 ], [ %7178, %7184 ], [ %7840, %7845 ]
  %7851 = phi float [ %7179, %7174 ], [ %7179, %7184 ], [ %7841, %7845 ]
  %7852 = phi float [ %7180, %7174 ], [ %7180, %7184 ], [ %7842, %7845 ]
  %7853 = fmul fast float %4322, %4322
  %7854 = fsub fast float 1.000000e+00, %7853
  %7855 = call float @dx.op.dot3.f32(i32 55, float %7854, float %7854, float %7854, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7856 = fsub fast float 1.000000e+00, %7855
  %7857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7858 = extractvalue %dx.types.CBufRet.f32 %7857, 0
  %7859 = fmul fast float %7858, %5601
  %7860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7861 = extractvalue %dx.types.CBufRet.f32 %7860, 3
  %7862 = fsub fast float 1.000000e+00, %4300
  %7863 = call float @dx.op.unary.f32(i32 7, float %7862)  ; Saturate(value)
  %7864 = fadd fast float %7852, %4298
  %7865 = fmul fast float %7864, %4300
  %7866 = fmul fast float %7863, %7861
  %7867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4301, i32 undef)  ; BufferLoad(srv,index,wot)
  %7868 = extractvalue %dx.types.ResRet.i32 %7867, 3
  %7869 = bitcast i32 %7868 to float
  %7870 = fsub fast float %7856, %7869
  %7871 = fmul fast float %7870, %201
  %7872 = fadd fast float %7871, %7869
  %7873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7874 = extractvalue %dx.types.CBufRet.f32 %7873, 3
  %7875 = fmul fast float %7850, %4902
  %7876 = fmul fast float %7851, %4903
  %7877 = fmul fast float %7852, %4904
  %7878 = fcmp fast ogt float %92, %221
  %7879 = and i1 %7878, %4725
  %7880 = or i1 %4731, %7879
  %7881 = icmp eq i32 %4724, 2
  %7882 = fcmp fast ole float %92, %221
  %7883 = and i1 %7882, %7881
  %7884 = or i1 %7883, %7880
  br i1 %7879, label %7885, label %8142

; <label>:7885                                    ; preds = %7846
  %7886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7887 = extractvalue %dx.types.CBufRet.f32 %7886, 2
  %7888 = extractvalue %dx.types.CBufRet.f32 %7886, 3
  %7889 = fmul fast float %7887, %104
  %7890 = fmul fast float %7888, %105
  %7891 = call float @dx.op.unary.f32(i32 7, float %7889)  ; Saturate(value)
  %7892 = call float @dx.op.unary.f32(i32 7, float %7890)  ; Saturate(value)
  %7893 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7891, float %7892, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7894 = extractvalue %dx.types.ResRet.f32 %7893, 0
  %7895 = extractvalue %dx.types.ResRet.f32 %7893, 1
  %7896 = extractvalue %dx.types.ResRet.f32 %7893, 2
  %7897 = extractvalue %dx.types.ResRet.f32 %7893, 3
  %7898 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7891, float %7892, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7899 = extractvalue %dx.types.ResRet.f32 %7898, 0
  %7900 = extractvalue %dx.types.ResRet.f32 %7898, 1
  %7901 = extractvalue %dx.types.ResRet.f32 %7898, 2
  %7902 = extractvalue %dx.types.ResRet.f32 %7898, 3
  %7903 = call float @dx.op.binary.f32(i32 35, float %7895, float %7896)  ; FMax(a,b)
  %7904 = call float @dx.op.binary.f32(i32 35, float %7894, float %7903)  ; FMax(a,b)
  %7905 = call float @dx.op.binary.f32(i32 35, float %7904, float %7897)  ; FMax(a,b)
  %7906 = call float @dx.op.binary.f32(i32 36, float %7900, float %7901)  ; FMin(a,b)
  %7907 = call float @dx.op.binary.f32(i32 36, float %7899, float %7906)  ; FMin(a,b)
  %7908 = call float @dx.op.binary.f32(i32 36, float %7907, float %7902)  ; FMin(a,b)
  %7909 = fmul fast float %7905, 2.550000e+02
  %7910 = fadd fast float %7909, 0x3F70101020000000
  %7911 = fptoui float %7910 to i32
  %7912 = fmul fast float %7908, 2.550000e+02
  %7913 = fadd fast float %7912, 0x3F70101020000000
  %7914 = fptoui float %7913 to i32
  %7915 = icmp ult i32 %7911, %7914
  br i1 %7915, label %7916, label %8084

; <label>:7916                                    ; preds = %7885
  %7917 = fcmp fast ogt float %91, 9.843750e-01
  %7918 = fadd fast float %92, -4.000000e+00
  %7919 = select i1 %7917, float -4.000000e+00, float %7918
  %7920 = call float @dx.op.binary.f32(i32 35, float %7919, float 0.000000e+00)  ; FMax(a,b)
  %7921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7922 = extractvalue %dx.types.CBufRet.f32 %7921, 0
  %7923 = fadd fast float %7922, %7920
  %7924 = extractvalue %dx.types.CBufRet.f32 %7921, 2
  %7925 = fmul fast float %7923, %7924
  %7926 = call float @dx.op.unary.f32(i32 23, float %7925)  ; Log(value)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7921, 3
  %7928 = fmul fast float %7927, %7926
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 2
  %7931 = fmul fast float %7928, %7930
  %7932 = call float @dx.op.unary.f32(i32 7, float %7931)  ; Saturate(value)
  %7933 = uitofp i32 %7911 to float
  %7934 = uitofp i32 %7914 to float
  %7935 = fadd fast float %7933, 5.000000e-01
  %7936 = fadd fast float %7934, 5.000000e-01
  %7937 = fmul fast float %7930, %7935
  %7938 = fmul fast float %7930, %7936
  %7939 = fadd fast float %7937, 0x3F0FFB4800000000
  %7940 = fadd fast float %7938, 0xBF0FFB4800000000
  %7941 = call float @dx.op.binary.f32(i32 35, float %7932, float %7939)  ; FMax(a,b)
  %7942 = call float @dx.op.binary.f32(i32 36, float %7941, float %7940)  ; FMin(a,b)
  %7943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7944 = extractvalue %dx.types.CBufRet.f32 %7943, 1
  %7945 = extractvalue %dx.types.CBufRet.f32 %7943, 2
  %7946 = extractvalue %dx.types.CBufRet.f32 %7943, 0
  %7947 = fmul fast float %7944, %7942
  %7948 = fadd fast float %7946, %7947
  %7949 = fadd fast float %7946, %7945
  %7950 = fsub fast float %7944, %7945
  %7951 = fadd fast float %7950, %7946
  %7952 = call float @dx.op.binary.f32(i32 35, float %7948, float %7949)  ; FMax(a,b)
  %7953 = call float @dx.op.binary.f32(i32 36, float %7952, float %7951)  ; FMin(a,b)
  %7954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %7891, float %7892, float %7953, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7955 = extractvalue %dx.types.ResRet.f32 %7954, 0
  %7956 = extractvalue %dx.types.ResRet.f32 %7954, 1
  %7957 = extractvalue %dx.types.ResRet.f32 %7954, 2
  %7958 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7959 = extractvalue %dx.types.CBufRet.i32 %7958, 0
  %7960 = extractvalue %dx.types.CBufRet.i32 %7958, 1
  %7961 = uitofp i32 %7959 to float
  %7962 = uitofp i32 %7960 to float
  %7963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7964 = extractvalue %dx.types.CBufRet.f32 %7963, 0
  %7965 = extractvalue %dx.types.CBufRet.f32 %7963, 1
  %7966 = fmul fast float %7961, %7891
  %7967 = fmul fast float %7962, %7892
  %7968 = fadd fast float %7966, -5.000000e-01
  %7969 = fadd fast float %7967, -5.000000e-01
  %7970 = call float @dx.op.unary.f32(i32 22, float %7968)  ; Frc(value)
  %7971 = call float @dx.op.unary.f32(i32 22, float %7969)  ; Frc(value)
  %7972 = fmul fast float %7970, %7970
  %7973 = fmul fast float %7972, %7970
  %7974 = fsub fast float 3.000000e+00, %7970
  %7975 = fmul fast float %7972, %7974
  %7976 = fmul fast float %7970, 3.000000e+00
  %7977 = fmul fast float %7973, 3.000000e+00
  %7978 = fmul fast float %7972, 6.000000e+00
  %7979 = fsub fast float %7977, %7978
  %7980 = fadd fast float %7979, 4.000000e+00
  %7981 = fmul fast float %7980, 0x3FC5555560000000
  %7982 = fmul fast float %7973, -3.000000e+00
  %7983 = fadd fast float %7972, %7970
  %7984 = fmul fast float %7983, 3.000000e+00
  %7985 = fadd fast float %7982, 1.000000e+00
  %7986 = fadd fast float %7985, %7984
  %7987 = fmul fast float %7973, 0x3FC5555560000000
  %7988 = fmul fast float %7971, %7971
  %7989 = fmul fast float %7988, %7971
  %7990 = fsub fast float 3.000000e+00, %7971
  %7991 = fmul fast float %7988, %7990
  %7992 = fmul fast float %7971, 3.000000e+00
  %7993 = fmul fast float %7989, 3.000000e+00
  %7994 = fmul fast float %7988, 6.000000e+00
  %7995 = fsub fast float %7993, %7994
  %7996 = fadd fast float %7995, 4.000000e+00
  %7997 = fmul fast float %7996, 0x3FC5555560000000
  %7998 = fmul fast float %7989, -3.000000e+00
  %7999 = fadd fast float %7988, %7971
  %8000 = fmul fast float %7999, 3.000000e+00
  %8001 = fadd fast float %7998, 1.000000e+00
  %8002 = fadd fast float %8001, %8000
  %8003 = fmul fast float %7989, 0x3FC5555560000000
  %8004 = fadd fast float %7970, 1.000000e+00
  %8005 = fsub fast float 1.000000e+00, %7976
  %8006 = fadd fast float %8005, %7975
  %8007 = fadd fast float %8006, %7980
  %8008 = fmul fast float %8007, 0x3FC5555560000000
  %8009 = fdiv fast float %7981, %8008
  %8010 = fsub fast float %8004, %8009
  %8011 = fsub fast float 1.000000e+00, %7970
  %8012 = fadd fast float %7986, %7973
  %8013 = fmul fast float %8012, 0x3FC5555560000000
  %8014 = fdiv fast float %7987, %8013
  %8015 = fadd fast float %8011, %8014
  %8016 = fadd fast float %7971, 1.000000e+00
  %8017 = fsub fast float 1.000000e+00, %7992
  %8018 = fadd fast float %8017, %7991
  %8019 = fadd fast float %8018, %7996
  %8020 = fmul fast float %8019, 0x3FC5555560000000
  %8021 = fdiv fast float %7997, %8020
  %8022 = fsub fast float %8016, %8021
  %8023 = fsub fast float 1.000000e+00, %7971
  %8024 = fadd fast float %8002, %7989
  %8025 = fmul fast float %8024, 0x3FC5555560000000
  %8026 = fdiv fast float %8003, %8025
  %8027 = fadd fast float %8026, %8023
  %8028 = fmul fast float %8010, %7964
  %8029 = fsub fast float %7891, %8028
  %8030 = fmul fast float %8015, %7964
  %8031 = fadd fast float %8030, %7891
  %8032 = fmul fast float %8027, %7965
  %8033 = fadd fast float %8032, %7892
  %8034 = fmul fast float %8022, %7965
  %8035 = fsub fast float %7892, %8034
  %8036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8029, float %8035, float %7953, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8037 = extractvalue %dx.types.ResRet.f32 %8036, 0
  %8038 = extractvalue %dx.types.ResRet.f32 %8036, 1
  %8039 = extractvalue %dx.types.ResRet.f32 %8036, 2
  %8040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8031, float %8035, float %7953, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8041 = extractvalue %dx.types.ResRet.f32 %8040, 0
  %8042 = extractvalue %dx.types.ResRet.f32 %8040, 1
  %8043 = extractvalue %dx.types.ResRet.f32 %8040, 2
  %8044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8029, float %8033, float %7953, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8045 = extractvalue %dx.types.ResRet.f32 %8044, 0
  %8046 = extractvalue %dx.types.ResRet.f32 %8044, 1
  %8047 = extractvalue %dx.types.ResRet.f32 %8044, 2
  %8048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8031, float %8033, float %7953, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8049 = extractvalue %dx.types.ResRet.f32 %8048, 0
  %8050 = extractvalue %dx.types.ResRet.f32 %8048, 1
  %8051 = extractvalue %dx.types.ResRet.f32 %8048, 2
  %8052 = fsub fast float %8045, %8037
  %8053 = fsub fast float %8046, %8038
  %8054 = fsub fast float %8047, %8039
  %8055 = fmul fast float %8052, %8025
  %8056 = fmul fast float %8053, %8025
  %8057 = fmul fast float %8054, %8025
  %8058 = fadd fast float %8055, %8037
  %8059 = fadd fast float %8056, %8038
  %8060 = fadd fast float %8057, %8039
  %8061 = fsub fast float %8049, %8041
  %8062 = fsub fast float %8050, %8042
  %8063 = fsub fast float %8051, %8043
  %8064 = fmul fast float %8061, %8025
  %8065 = fmul fast float %8062, %8025
  %8066 = fmul fast float %8063, %8025
  %8067 = fsub fast float %8041, %8058
  %8068 = fadd fast float %8067, %8064
  %8069 = fsub fast float %8042, %8059
  %8070 = fadd fast float %8069, %8065
  %8071 = fsub fast float %8043, %8060
  %8072 = fadd fast float %8071, %8066
  %8073 = fmul fast float %8068, %8013
  %8074 = fmul fast float %8070, %8013
  %8075 = fmul fast float %8072, %8013
  %8076 = fadd fast float %8073, %8058
  %8077 = fadd fast float %8074, %8059
  %8078 = fadd fast float %8075, %8060
  %8079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8080 = extractvalue %dx.types.CBufRet.f32 %8079, 1
  %8081 = fmul fast float %8076, %8080
  %8082 = fmul fast float %8077, %8080
  %8083 = fmul fast float %8078, %8080
  br label %8084

; <label>:8084                                    ; preds = %7916, %7885
  %8085 = phi float [ %7955, %7916 ], [ 1.000000e+00, %7885 ]
  %8086 = phi float [ %7956, %7916 ], [ 1.000000e+00, %7885 ]
  %8087 = phi float [ %7957, %7916 ], [ 1.000000e+00, %7885 ]
  %8088 = phi float [ %8081, %7916 ], [ 0.000000e+00, %7885 ]
  %8089 = phi float [ %8082, %7916 ], [ 0.000000e+00, %7885 ]
  %8090 = phi float [ %8083, %7916 ], [ 0.000000e+00, %7885 ]
  %8091 = fmul fast float %8088, %7872
  %8092 = fmul fast float %8089, %7872
  %8093 = fmul fast float %8090, %7872
  %8094 = call float @dx.op.dot3.f32(i32 55, float %8085, float %8086, float %8087, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8095 = call float @dx.op.dot3.f32(i32 55, float %8091, float %8092, float %8093, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8096 = select i1 %261, float %8094, float %8085
  %8097 = select i1 %261, float %8094, float %8086
  %8098 = select i1 %261, float 1.000000e+00, float %8087
  %8099 = select i1 %261, float %8095, float %8091
  %8100 = select i1 %261, float 0.000000e+00, float %8092
  %8101 = select i1 %261, float 0.000000e+00, float %8093
  %8102 = fmul fast float %8096, %7875
  %8103 = fmul fast float %8097, %7876
  %8104 = fmul fast float %8098, %7877
  %8105 = fadd fast float %8102, %8099
  %8106 = fadd fast float %8103, %8100
  %8107 = fadd fast float %8101, %8104
  %8108 = fmul fast float %8096, %7847
  %8109 = fmul fast float %8097, %7848
  %8110 = fmul fast float %8098, %7849
  %8111 = fmul fast float %137, %7887
  %8112 = fmul fast float %139, %7888
  %8113 = fsub fast float 1.000000e+00, %8111
  %8114 = fsub fast float 1.000000e+00, %8112
  %8115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8116 = extractvalue %dx.types.CBufRet.f32 %8115, 0
  %8117 = extractvalue %dx.types.CBufRet.f32 %8115, 1
  %8118 = extractvalue %dx.types.CBufRet.f32 %8115, 2
  %8119 = fmul fast float %8113, %8116
  %8120 = fmul fast float %8113, %8117
  %8121 = fmul fast float %8113, %8118
  %8122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8123 = extractvalue %dx.types.CBufRet.f32 %8122, 0
  %8124 = extractvalue %dx.types.CBufRet.f32 %8122, 1
  %8125 = extractvalue %dx.types.CBufRet.f32 %8122, 2
  %8126 = fmul fast float %8114, %8123
  %8127 = fmul fast float %8114, %8124
  %8128 = fmul fast float %8114, %8125
  %8129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8130 = extractvalue %dx.types.CBufRet.f32 %8129, 0
  %8131 = extractvalue %dx.types.CBufRet.f32 %8129, 1
  %8132 = extractvalue %dx.types.CBufRet.f32 %8129, 2
  %8133 = fadd fast float %8126, %8130
  %8134 = fadd fast float %8133, %8119
  %8135 = fadd fast float %8127, %8131
  %8136 = fadd fast float %8135, %8120
  %8137 = fadd fast float %8128, %8132
  %8138 = fadd fast float %8137, %8121
  %8139 = fmul fast float %8134, %221
  %8140 = fmul fast float %8136, %221
  %8141 = fmul fast float %8138, %221
  br label %8142

; <label>:8142                                    ; preds = %8084, %7846
  %8143 = phi float [ %8139, %8084 ], [ %167, %7846 ]
  %8144 = phi float [ %8140, %8084 ], [ %168, %7846 ]
  %8145 = phi float [ %8141, %8084 ], [ %169, %7846 ]
  %8146 = phi float [ %221, %8084 ], [ %92, %7846 ]
  %8147 = phi float [ %8105, %8084 ], [ %7875, %7846 ]
  %8148 = phi float [ %8106, %8084 ], [ %7876, %7846 ]
  %8149 = phi float [ %8107, %8084 ], [ %7877, %7846 ]
  %8150 = phi float [ %8108, %8084 ], [ %7847, %7846 ]
  %8151 = phi float [ %8109, %8084 ], [ %7848, %7846 ]
  %8152 = phi float [ %8110, %8084 ], [ %7849, %7846 ]
  %8153 = phi float [ %8085, %8084 ], [ 1.000000e+00, %7846 ]
  br i1 %7884, label %9308, label %8154

; <label>:8154                                    ; preds = %8142
  %8155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8156 = extractvalue %dx.types.CBufRet.f32 %8155, 0
  %8157 = extractvalue %dx.types.CBufRet.f32 %8155, 1
  %8158 = extractvalue %dx.types.CBufRet.f32 %8155, 2
  %8159 = extractvalue %dx.types.CBufRet.f32 %8155, 3
  %8160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.f32 %8160, 0
  %8162 = extractvalue %dx.types.CBufRet.f32 %8160, 1
  %8163 = extractvalue %dx.types.CBufRet.f32 %8160, 2
  %8164 = extractvalue %dx.types.CBufRet.f32 %8160, 3
  %8165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8166 = extractvalue %dx.types.CBufRet.f32 %8165, 0
  %8167 = extractvalue %dx.types.CBufRet.f32 %8165, 1
  %8168 = extractvalue %dx.types.CBufRet.f32 %8165, 2
  %8169 = extractvalue %dx.types.CBufRet.f32 %8165, 3
  %8170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8171 = extractvalue %dx.types.CBufRet.f32 %8170, 0
  %8172 = extractvalue %dx.types.CBufRet.f32 %8170, 1
  %8173 = extractvalue %dx.types.CBufRet.f32 %8170, 2
  %8174 = extractvalue %dx.types.CBufRet.f32 %8170, 3
  %8175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8176 = extractvalue %dx.types.CBufRet.f32 %8175, 3
  %8177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8178 = extractvalue %dx.types.CBufRet.f32 %8177, 3
  %8179 = extractvalue %dx.types.CBufRet.f32 %8177, 0
  %8180 = extractvalue %dx.types.CBufRet.f32 %8177, 1
  %8181 = extractvalue %dx.types.CBufRet.f32 %8177, 2
  %8182 = fcmp fast olt float %8181, -5.000000e-01
  %8183 = call float @dx.op.dot3.f32(i32 55, float %8143, float %8144, float %8145, float %8143, float %8144, float %8145)  ; Dot3(ax,ay,az,bx,by,bz)
  %8184 = call float @dx.op.unary.f32(i32 25, float %8183)  ; Rsqrt(value)
  %8185 = fmul fast float %8184, %8183
  %8186 = fmul fast float %8184, %8143
  %8187 = fmul fast float %8184, %8144
  %8188 = fmul fast float %8184, %8145
  %8189 = fadd fast float %8185, %8159
  %8190 = call float @dx.op.dot3.f32(i32 55, float %8186, float %8187, float %8188, float %8156, float %8157, float %8158)  ; Dot3(ax,ay,az,bx,by,bz)
  %8191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8192 = extractvalue %dx.types.CBufRet.i32 %8191, 1
  %8193 = and i32 %8192, 1
  %8194 = icmp ne i32 %8193, 0
  %8195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8196 = extractvalue %dx.types.CBufRet.f32 %8195, 2
  %8197 = fcmp fast ogt float %8196, 0.000000e+00
  %8198 = and i1 %8194, %8197
  br i1 %8198, label %8199, label %8605, !dx.controlflow.hints !132

; <label>:8199                                    ; preds = %8154
  %8200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8201 = extractvalue %dx.types.CBufRet.f32 %8200, 3
  %8202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8203 = extractvalue %dx.types.CBufRet.f32 %8202, 2
  %8204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8205 = extractvalue %dx.types.CBufRet.f32 %8204, 2
  %8206 = fsub fast float %8203, %8205
  %8207 = and i32 %8192, 2
  %8208 = extractvalue %dx.types.CBufRet.i32 %8191, 0
  %8209 = call i32 @dx.op.binary.i32(i32 40, i32 %8208, i32 3)  ; UMin(a,b)
  %8210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8211 = extractvalue %dx.types.CBufRet.f32 %8210, 0
  %8212 = extractvalue %dx.types.CBufRet.f32 %8210, 1
  %8213 = extractvalue %dx.types.CBufRet.f32 %8204, 0
  %8214 = extractvalue %dx.types.CBufRet.f32 %8204, 1
  %8215 = fsub fast float %8211, %8213
  %8216 = fsub fast float %8212, %8214
  %8217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8218 = extractvalue %dx.types.CBufRet.f32 %8217, 0
  %8219 = fcmp fast ogt float %8218, 0.000000e+00
  %8220 = fsub fast float -0.000000e+00, %8215
  %8221 = fsub fast float -0.000000e+00, %8216
  %8222 = call float @dx.op.dot2.f32(i32 54, float %8186, float %8187, float %8186, float %8187)  ; Dot2(ax,ay,bx,by)
  %8223 = call float @dx.op.dot2.f32(i32 54, float %8186, float %8187, float %8220, float %8221)  ; Dot2(ax,ay,bx,by)
  %8224 = fmul fast float %8223, 2.000000e+00
  %8225 = call float @dx.op.dot2.f32(i32 54, float %8220, float %8221, float %8220, float %8221)  ; Dot2(ax,ay,bx,by)
  %8226 = fmul fast float %8218, %8218
  %8227 = fsub fast float %8225, %8226
  %8228 = fmul fast float %8224, %8224
  %8229 = fmul fast float %8222, 4.000000e+00
  %8230 = fmul fast float %8229, %8227
  %8231 = fsub fast float %8228, %8230
  %8232 = fcmp fast ogt float %8231, 0.000000e+00
  br i1 %8232, label %8233, label %8248

; <label>:8233                                    ; preds = %8199
  %8234 = fcmp fast ogt float %8224, 0.000000e+00
  %8235 = call float @dx.op.unary.f32(i32 24, float %8231)  ; Sqrt(value)
  %8236 = fsub fast float -0.000000e+00, %8235
  %8237 = select i1 %8234, float %8235, float %8236
  %8238 = fadd fast float %8237, %8224
  %8239 = fmul float %8238, -5.000000e-01
  %8240 = fdiv fast float %8239, %8222
  %8241 = call float @dx.op.binary.f32(i32 35, float %8240, float 0.000000e+00)  ; FMax(a,b)
  %8242 = call float @dx.op.binary.f32(i32 36, float %8185, float %8241)  ; FMin(a,b)
  %8243 = fdiv fast float %8227, %8239
  %8244 = call float @dx.op.binary.f32(i32 35, float %8243, float 0.000000e+00)  ; FMax(a,b)
  %8245 = call float @dx.op.binary.f32(i32 36, float %8185, float %8244)  ; FMin(a,b)
  %8246 = call float @dx.op.binary.f32(i32 36, float %8242, float %8245)  ; FMin(a,b)
  %8247 = call float @dx.op.binary.f32(i32 35, float %8242, float %8245)  ; FMax(a,b)
  br label %8248

; <label>:8248                                    ; preds = %8233, %8199
  %8249 = phi float [ %8247, %8233 ], [ -1.000000e+00, %8199 ]
  %8250 = phi float [ %8246, %8233 ], [ -1.000000e+00, %8199 ]
  %8251 = phi i1 [ true, %8233 ], [ false, %8199 ]
  %8252 = and i1 %8219, %8251
  br i1 %8252, label %8253, label %8255

; <label>:8253                                    ; preds = %8248
  %8254 = fcmp fast oeq float %8250, %8249
  br i1 %8254, label %8558, label %8256

; <label>:8255                                    ; preds = %8248
  br i1 %8219, label %8558, label %8256

; <label>:8256                                    ; preds = %8255, %8253
  %8257 = phi float [ %8185, %8255 ], [ %8249, %8253 ]
  %8258 = phi float [ 0.000000e+00, %8255 ], [ %8250, %8253 ]
  %8259 = icmp ne i32 %8207, 0
  %8260 = fmul fast float %8257, %8188
  %8261 = fadd fast float %8260, %8201
  %8262 = fmul fast float %8261, %8257
  %8263 = select i1 %8259, float 0.000000e+00, float %8262
  %8264 = fcmp fast oeq float %8188, 0.000000e+00
  %8265 = fdiv fast float %8206, %8188
  %8266 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8265)  ; FMax(a,b)
  %8267 = select i1 %8264, float %8257, float %8266
  %8268 = call float @dx.op.binary.f32(i32 36, float %8257, float %8267)  ; FMin(a,b)
  %8269 = fcmp fast ogt float %8188, 0.000000e+00
  %8270 = fcmp fast olt float %8206, 0.000000e+00
  br i1 %8269, label %8271, label %8328

; <label>:8271                                    ; preds = %8256
  %8272 = icmp eq i32 %8207, 0
  br i1 %8270, label %8273, label %8317

; <label>:8273                                    ; preds = %8271
  %8274 = select i1 %8272, float %8257, float 0.000000e+00
  %8275 = fsub fast float -0.000000e+00, %8274
  %8276 = call float @dx.op.unary.f32(i32 6, float %8275)  ; FAbs(value)
  %8277 = fmul fast float %8274, %8188
  %8278 = fadd fast float %8277, %8201
  %8279 = fmul fast float %8276, %8278
  %8280 = fsub fast float %8263, %8279
  %8281 = fsub fast float %8257, %8276
  %8282 = select i1 %8272, float %8281, float 0.000000e+00
  %8283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8284 = extractvalue %dx.types.CBufRet.f32 %8283, 0
  %8285 = extractvalue %dx.types.CBufRet.f32 %8283, 1
  %8286 = extractvalue %dx.types.CBufRet.f32 %8283, 2
  %8287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8288 = extractvalue %dx.types.CBufRet.f32 %8287, 0
  %8289 = extractvalue %dx.types.CBufRet.f32 %8287, 1
  %8290 = extractvalue %dx.types.CBufRet.f32 %8287, 2
  %8291 = extractvalue %dx.types.CBufRet.f32 %8287, 3
  %8292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8293 = extractvalue %dx.types.CBufRet.f32 %8292, 3
  %8294 = call float @dx.op.binary.f32(i32 36, float %8280, float %8293)  ; FMin(a,b)
  %8295 = fmul fast float %8291, %8282
  %8296 = call float @dx.op.unary.f32(i32 7, float %8295)  ; Saturate(value)
  %8297 = fsub fast float %8288, %8284
  %8298 = fsub fast float %8289, %8285
  %8299 = fsub fast float %8290, %8286
  %8300 = fmul fast float %8296, %8297
  %8301 = fmul fast float %8296, %8298
  %8302 = fmul fast float %8296, %8299
  %8303 = fadd fast float %8300, %8284
  %8304 = fadd fast float %8301, %8285
  %8305 = fadd fast float %8302, %8286
  %8306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8307 = extractvalue %dx.types.CBufRet.f32 %8306, 0
  %8308 = extractvalue %dx.types.CBufRet.f32 %8306, 1
  %8309 = fadd fast float %8308, %8307
  %8310 = call float @dx.op.unary.f32(i32 7, float %8309)  ; Saturate(value)
  %8311 = extractvalue %dx.types.CBufRet.f32 %8306, 2
  %8312 = extractvalue %dx.types.CBufRet.f32 %8306, 3
  %8313 = fadd fast float %8312, %8311
  %8314 = call float @dx.op.unary.f32(i32 7, float %8313)  ; Saturate(value)
  %8315 = fmul fast float %8310, %8294
  %8316 = fmul fast float %8315, %8314
  br label %8558

; <label>:8317                                    ; preds = %8271
  br i1 %8272, label %8318, label %8339

; <label>:8318                                    ; preds = %8317
  %8319 = call float @dx.op.binary.f32(i32 36, float %8268, float %8258)  ; FMin(a,b)
  %8320 = fsub fast float %8268, %8319
  %8321 = fsub fast float %8320, %8257
  %8322 = call float @dx.op.unary.f32(i32 6, float %8321)  ; FAbs(value)
  %8323 = fadd fast float %8320, %8257
  %8324 = fmul fast float %8323, %8188
  %8325 = fadd fast float %8324, %8201
  %8326 = fmul fast float %8325, %8322
  %8327 = fsub fast float %8263, %8326
  br label %8339

; <label>:8328                                    ; preds = %8256
  br i1 %8270, label %8329, label %8339

; <label>:8329                                    ; preds = %8328
  %8330 = call float @dx.op.binary.f32(i32 35, float %8258, float %8268)  ; FMax(a,b)
  %8331 = icmp eq i32 %8207, 0
  %8332 = select i1 %8331, float %8268, float 0.000000e+00
  %8333 = fsub fast float -0.000000e+00, %8332
  %8334 = call float @dx.op.unary.f32(i32 6, float %8333)  ; FAbs(value)
  %8335 = fmul fast float %8332, %8188
  %8336 = fadd fast float %8335, %8201
  %8337 = fmul fast float %8334, %8336
  %8338 = fsub fast float %8263, %8337
  br label %8339

; <label>:8339                                    ; preds = %8329, %8328, %8318, %8317
  %8340 = phi float [ %8258, %8317 ], [ %8258, %8318 ], [ %8330, %8329 ], [ %8258, %8328 ]
  %8341 = phi float [ 0.000000e+00, %8317 ], [ %8322, %8318 ], [ %8334, %8329 ], [ 0.000000e+00, %8328 ]
  %8342 = phi float [ %8263, %8317 ], [ %8327, %8318 ], [ %8338, %8329 ], [ %8263, %8328 ]
  %8343 = phi float [ %8268, %8317 ], [ %8268, %8318 ], [ %8257, %8329 ], [ %8257, %8328 ]
  %8344 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %8344, align 4, !tbaa !119, !noalias !133
  %8345 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %8345, align 4, !tbaa !119, !noalias !133
  %8346 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %8346, align 4, !tbaa !119, !noalias !133
  %8347 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %8347, align 4, !tbaa !119, !noalias !133
  %8348 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %8348, align 4, !tbaa !119, !noalias !133
  %8349 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %8349, align 4, !tbaa !119, !noalias !133
  %8350 = icmp sgt i32 %8209, 0
  br i1 %8350, label %8351, label %8412

; <label>:8351                                    ; preds = %8339
  br label %8352

; <label>:8352                                    ; preds = %8401, %8351
  %8353 = phi i32 [ %8402, %8401 ], [ 0, %8351 ]
  %8354 = phi i32 [ %8403, %8401 ], [ 0, %8351 ]
  %8355 = add nuw i32 %8354, 171
  %8356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8355)  ; CBufferLoadLegacy(handle,regIndex)
  %8357 = extractvalue %dx.types.CBufRet.f32 %8356, 0
  %8358 = extractvalue %dx.types.CBufRet.f32 %8356, 1
  %8359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8360 = extractvalue %dx.types.CBufRet.f32 %8359, 0
  %8361 = extractvalue %dx.types.CBufRet.f32 %8359, 1
  %8362 = fsub fast float %8357, %8360
  %8363 = fsub fast float %8358, %8361
  %8364 = extractvalue %dx.types.CBufRet.f32 %8356, 2
  %8365 = fsub fast float -0.000000e+00, %8362
  %8366 = fsub fast float -0.000000e+00, %8363
  %8367 = call float @dx.op.dot2.f32(i32 54, float %8186, float %8187, float %8365, float %8366)  ; Dot2(ax,ay,bx,by)
  %8368 = fmul fast float %8367, 2.000000e+00
  %8369 = call float @dx.op.dot2.f32(i32 54, float %8365, float %8366, float %8365, float %8366)  ; Dot2(ax,ay,bx,by)
  %8370 = fmul fast float %8364, %8364
  %8371 = fsub fast float %8369, %8370
  %8372 = fmul fast float %8368, %8368
  %8373 = fmul fast float %8229, %8371
  %8374 = fsub fast float %8372, %8373
  %8375 = fcmp fast ogt float %8374, 0.000000e+00
  br i1 %8375, label %8376, label %8391

; <label>:8376                                    ; preds = %8352
  %8377 = fcmp fast ogt float %8368, 0.000000e+00
  %8378 = call float @dx.op.unary.f32(i32 24, float %8374)  ; Sqrt(value)
  %8379 = fsub fast float -0.000000e+00, %8378
  %8380 = select i1 %8377, float %8378, float %8379
  %8381 = fadd fast float %8380, %8368
  %8382 = fmul float %8381, -5.000000e-01
  %8383 = fdiv fast float %8382, %8222
  %8384 = call float @dx.op.binary.f32(i32 35, float %8383, float 0.000000e+00)  ; FMax(a,b)
  %8385 = call float @dx.op.binary.f32(i32 36, float %8257, float %8384)  ; FMin(a,b)
  %8386 = fdiv fast float %8371, %8382
  %8387 = call float @dx.op.binary.f32(i32 35, float %8386, float 0.000000e+00)  ; FMax(a,b)
  %8388 = call float @dx.op.binary.f32(i32 36, float %8257, float %8387)  ; FMin(a,b)
  %8389 = call float @dx.op.binary.f32(i32 36, float %8385, float %8388)  ; FMin(a,b)
  %8390 = call float @dx.op.binary.f32(i32 35, float %8385, float %8388)  ; FMax(a,b)
  br label %8391

; <label>:8391                                    ; preds = %8376, %8352
  %8392 = phi float [ %8390, %8376 ], [ -1.000000e+00, %8352 ]
  %8393 = phi float [ %8389, %8376 ], [ -1.000000e+00, %8352 ]
  %8394 = phi i1 [ true, %8376 ], [ false, %8352 ]
  br i1 %8394, label %8395, label %8401

; <label>:8395                                    ; preds = %8391
  %8396 = call float @dx.op.binary.f32(i32 35, float %8340, float %8393)  ; FMax(a,b)
  %8397 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8354
  store float %8396, float* %8397, align 4, !tbaa !119, !noalias !133
  %8398 = call float @dx.op.binary.f32(i32 35, float %8340, float %8392)  ; FMax(a,b)
  %8399 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8354
  store float %8398, float* %8399, align 4, !tbaa !119, !noalias !133
  %8400 = add nsw i32 %8353, 1
  br label %8401

; <label>:8401                                    ; preds = %8395, %8391
  %8402 = phi i32 [ %8400, %8395 ], [ %8353, %8391 ]
  %8403 = add nuw nsw i32 %8354, 1
  %8404 = icmp eq i32 %8403, %8209
  br i1 %8404, label %8405, label %8352

; <label>:8405                                    ; preds = %8401
  %8406 = load float, float* %8346, align 4, !tbaa !119, !alias.scope !149, !noalias !152
  %8407 = load float, float* %8345, align 4, !tbaa !119, !alias.scope !155, !noalias !156
  %8408 = load float, float* %8344, align 4, !tbaa !119, !alias.scope !157, !noalias !158
  %8409 = load float, float* %8349, align 4, !tbaa !119, !alias.scope !159, !noalias !162
  %8410 = load float, float* %8348, align 4, !tbaa !119, !alias.scope !165, !noalias !166
  %8411 = load float, float* %8347, align 4, !tbaa !119, !alias.scope !167, !noalias !168
  br label %8412

; <label>:8412                                    ; preds = %8405, %8339
  %8413 = phi float [ -1.000000e+00, %8339 ], [ %8411, %8405 ]
  %8414 = phi float [ -1.000000e+00, %8339 ], [ %8410, %8405 ]
  %8415 = phi float [ -1.000000e+00, %8339 ], [ %8409, %8405 ]
  %8416 = phi float [ -1.000000e+00, %8339 ], [ %8408, %8405 ]
  %8417 = phi float [ -1.000000e+00, %8339 ], [ %8407, %8405 ]
  %8418 = phi float [ -1.000000e+00, %8339 ], [ %8406, %8405 ]
  %8419 = phi i32 [ 0, %8339 ], [ %8402, %8405 ]
  %8420 = call float @dx.op.binary.f32(i32 36, float %8417, float %8418)  ; FMin(a,b)
  %8421 = call float @dx.op.binary.f32(i32 36, float %8416, float %8420)  ; FMin(a,b)
  %8422 = call float @dx.op.binary.f32(i32 35, float %8416, float %8417)  ; FMax(a,b)
  %8423 = call float @dx.op.binary.f32(i32 36, float %8422, float %8418)  ; FMin(a,b)
  %8424 = call float @dx.op.binary.f32(i32 36, float %8416, float %8417)  ; FMin(a,b)
  %8425 = call float @dx.op.binary.f32(i32 35, float %8424, float %8423)  ; FMax(a,b)
  %8426 = call float @dx.op.binary.f32(i32 35, float %8417, float %8418)  ; FMax(a,b)
  %8427 = call float @dx.op.binary.f32(i32 35, float %8416, float %8426)  ; FMax(a,b)
  store float %8421, float* %8344, align 4, !tbaa !119, !alias.scope !157, !noalias !158
  store float %8425, float* %8345, align 4, !tbaa !119, !alias.scope !155, !noalias !156
  store float %8427, float* %8346, align 4, !tbaa !119, !alias.scope !149, !noalias !152
  %8428 = call float @dx.op.binary.f32(i32 36, float %8414, float %8415)  ; FMin(a,b)
  %8429 = call float @dx.op.binary.f32(i32 36, float %8413, float %8428)  ; FMin(a,b)
  %8430 = call float @dx.op.binary.f32(i32 35, float %8413, float %8414)  ; FMax(a,b)
  %8431 = call float @dx.op.binary.f32(i32 36, float %8430, float %8415)  ; FMin(a,b)
  %8432 = call float @dx.op.binary.f32(i32 36, float %8413, float %8414)  ; FMin(a,b)
  %8433 = call float @dx.op.binary.f32(i32 35, float %8432, float %8431)  ; FMax(a,b)
  %8434 = call float @dx.op.binary.f32(i32 35, float %8414, float %8415)  ; FMax(a,b)
  %8435 = call float @dx.op.binary.f32(i32 35, float %8413, float %8434)  ; FMax(a,b)
  store float %8429, float* %8347, align 4, !tbaa !119, !alias.scope !167, !noalias !168
  store float %8433, float* %8348, align 4, !tbaa !119, !alias.scope !165, !noalias !166
  store float %8435, float* %8349, align 4, !tbaa !119, !alias.scope !159, !noalias !162
  %8436 = sub nsw i32 3, %8419
  %8437 = icmp sgt i32 %8436, 2
  br i1 %8437, label %8438, label %8476

; <label>:8438                                    ; preds = %8412
  %8439 = icmp eq i32 %8207, 0
  %8440 = fsub fast float %8257, %8341
  %8441 = select i1 %8439, float %8440, float %8341
  %8442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8443 = extractvalue %dx.types.CBufRet.f32 %8442, 0
  %8444 = extractvalue %dx.types.CBufRet.f32 %8442, 1
  %8445 = extractvalue %dx.types.CBufRet.f32 %8442, 2
  %8446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8447 = extractvalue %dx.types.CBufRet.f32 %8446, 0
  %8448 = extractvalue %dx.types.CBufRet.f32 %8446, 1
  %8449 = extractvalue %dx.types.CBufRet.f32 %8446, 2
  %8450 = extractvalue %dx.types.CBufRet.f32 %8446, 3
  %8451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8452 = extractvalue %dx.types.CBufRet.f32 %8451, 3
  %8453 = call float @dx.op.binary.f32(i32 36, float %8342, float %8452)  ; FMin(a,b)
  %8454 = fmul fast float %8450, %8441
  %8455 = call float @dx.op.unary.f32(i32 7, float %8454)  ; Saturate(value)
  %8456 = fsub fast float %8447, %8443
  %8457 = fsub fast float %8448, %8444
  %8458 = fsub fast float %8449, %8445
  %8459 = fmul fast float %8455, %8456
  %8460 = fmul fast float %8455, %8457
  %8461 = fmul fast float %8455, %8458
  %8462 = fadd fast float %8459, %8443
  %8463 = fadd fast float %8460, %8444
  %8464 = fadd fast float %8461, %8445
  %8465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8466 = extractvalue %dx.types.CBufRet.f32 %8465, 0
  %8467 = extractvalue %dx.types.CBufRet.f32 %8465, 1
  %8468 = fadd fast float %8467, %8466
  %8469 = call float @dx.op.unary.f32(i32 7, float %8468)  ; Saturate(value)
  %8470 = extractvalue %dx.types.CBufRet.f32 %8465, 2
  %8471 = extractvalue %dx.types.CBufRet.f32 %8465, 3
  %8472 = fadd fast float %8471, %8470
  %8473 = call float @dx.op.unary.f32(i32 7, float %8472)  ; Saturate(value)
  %8474 = fmul fast float %8469, %8453
  %8475 = fmul fast float %8474, %8473
  br label %8558

; <label>:8476                                    ; preds = %8412
  %8477 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8436
  %8478 = load float, float* %8477, align 4, !tbaa !119, !noalias !133
  %8479 = fcmp fast olt float %8478, %8343
  %8480 = icmp sgt i32 %8419, 0
  %8481 = and i1 %8480, %8479
  br i1 %8481, label %8482, label %8519

; <label>:8482                                    ; preds = %8476
  br label %8483

; <label>:8483                                    ; preds = %8512, %8482
  %8484 = phi float [ %8513, %8512 ], [ %8341, %8482 ]
  %8485 = phi float [ %8514, %8512 ], [ %8342, %8482 ]
  %8486 = phi float [ %8494, %8512 ], [ %8478, %8482 ]
  %8487 = phi i32 [ %8491, %8512 ], [ %8436, %8482 ]
  %8488 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8487
  %8489 = load float, float* %8488, align 4, !tbaa !119, !noalias !133
  %8490 = icmp slt i32 %8487, 2
  %8491 = add nsw i32 %8487, 1
  %8492 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8491
  %8493 = load float, float* %8492, align 4, !tbaa !119, !noalias !133
  %8494 = select i1 %8490, float %8493, float %8257
  %8495 = call float @dx.op.binary.f32(i32 36, float %8494, float %8489)  ; FMin(a,b)
  %8496 = call float @dx.op.binary.f32(i32 36, float %8343, float %8495)  ; FMin(a,b)
  %8497 = icmp eq i32 %8207, 0
  %8498 = fadd fast float %8496, %8486
  %8499 = fmul fast float %8498, %8188
  %8500 = fadd fast float %8499, %8201
  br i1 %8497, label %8506, label %8501

; <label>:8501                                    ; preds = %8483
  %8502 = fsub fast float %8496, %8486
  %8503 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8502)  ; FMax(a,b)
  %8504 = fmul fast float %8503, %8500
  %8505 = fadd fast float %8504, %8485
  br label %8512

; <label>:8506                                    ; preds = %8483
  %8507 = fsub fast float %8486, %8496
  %8508 = call float @dx.op.unary.f32(i32 6, float %8507)  ; FAbs(value)
  %8509 = fadd fast float %8508, %8484
  %8510 = fmul fast float %8508, %8500
  %8511 = fsub fast float %8485, %8510
  br label %8512

; <label>:8512                                    ; preds = %8506, %8501
  %8513 = phi float [ %8503, %8501 ], [ %8509, %8506 ]
  %8514 = phi float [ %8505, %8501 ], [ %8511, %8506 ]
  %8515 = fcmp fast olt float %8494, %8343
  %8516 = icmp slt i32 %8491, 3
  %8517 = and i1 %8516, %8515
  br i1 %8517, label %8483, label %8518

; <label>:8518                                    ; preds = %8512
  br label %8519

; <label>:8519                                    ; preds = %8518, %8476
  %8520 = phi float [ %8341, %8476 ], [ %8513, %8518 ]
  %8521 = phi float [ %8342, %8476 ], [ %8514, %8518 ]
  %8522 = fsub fast float %8257, %8520
  %8523 = select i1 %8259, float %8520, float %8522
  %8524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8525 = extractvalue %dx.types.CBufRet.f32 %8524, 0
  %8526 = extractvalue %dx.types.CBufRet.f32 %8524, 1
  %8527 = extractvalue %dx.types.CBufRet.f32 %8524, 2
  %8528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8529 = extractvalue %dx.types.CBufRet.f32 %8528, 0
  %8530 = extractvalue %dx.types.CBufRet.f32 %8528, 1
  %8531 = extractvalue %dx.types.CBufRet.f32 %8528, 2
  %8532 = extractvalue %dx.types.CBufRet.f32 %8528, 3
  %8533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8534 = extractvalue %dx.types.CBufRet.f32 %8533, 3
  %8535 = call float @dx.op.binary.f32(i32 36, float %8521, float %8534)  ; FMin(a,b)
  %8536 = fmul fast float %8532, %8523
  %8537 = call float @dx.op.unary.f32(i32 7, float %8536)  ; Saturate(value)
  %8538 = fsub fast float %8529, %8525
  %8539 = fsub fast float %8530, %8526
  %8540 = fsub fast float %8531, %8527
  %8541 = fmul fast float %8537, %8538
  %8542 = fmul fast float %8537, %8539
  %8543 = fmul fast float %8537, %8540
  %8544 = fadd fast float %8541, %8525
  %8545 = fadd fast float %8542, %8526
  %8546 = fadd fast float %8543, %8527
  %8547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8548 = extractvalue %dx.types.CBufRet.f32 %8547, 0
  %8549 = extractvalue %dx.types.CBufRet.f32 %8547, 1
  %8550 = fadd fast float %8549, %8548
  %8551 = call float @dx.op.unary.f32(i32 7, float %8550)  ; Saturate(value)
  %8552 = extractvalue %dx.types.CBufRet.f32 %8547, 2
  %8553 = extractvalue %dx.types.CBufRet.f32 %8547, 3
  %8554 = fadd fast float %8553, %8552
  %8555 = call float @dx.op.unary.f32(i32 7, float %8554)  ; Saturate(value)
  %8556 = fmul fast float %8551, %8535
  %8557 = fmul fast float %8556, %8555
  br label %8558

; <label>:8558                                    ; preds = %8519, %8438, %8273, %8255, %8253
  %8559 = phi float [ %8282, %8273 ], [ %8441, %8438 ], [ %8523, %8519 ], [ 0.000000e+00, %8253 ], [ 0.000000e+00, %8255 ]
  %8560 = phi float [ %8316, %8273 ], [ %8475, %8438 ], [ %8557, %8519 ], [ 0.000000e+00, %8253 ], [ 0.000000e+00, %8255 ]
  %8561 = phi float [ %8303, %8273 ], [ %8462, %8438 ], [ %8544, %8519 ], [ 0.000000e+00, %8253 ], [ 0.000000e+00, %8255 ]
  %8562 = phi float [ %8304, %8273 ], [ %8463, %8438 ], [ %8545, %8519 ], [ 0.000000e+00, %8253 ], [ 0.000000e+00, %8255 ]
  %8563 = phi float [ %8305, %8273 ], [ %8464, %8438 ], [ %8546, %8519 ], [ 0.000000e+00, %8253 ], [ 0.000000e+00, %8255 ]
  %8564 = fmul fast float %8196, %8560
  %8565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8566 = extractvalue %dx.types.CBufRet.f32 %8565, 2
  %8567 = fsub fast float %8203, %8566
  %8568 = fcmp fast olt float %8564, -2.000000e+01
  %8569 = call float @dx.op.unary.f32(i32 21, float %8564)  ; Exp(value)
  %8570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8571 = extractvalue %dx.types.CBufRet.f32 %8570, 2
  %8572 = extractvalue %dx.types.CBufRet.f32 %8570, 3
  %8573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8574 = extractvalue %dx.types.CBufRet.f32 %8573, 2
  %8575 = fmul fast float %8572, %8567
  %8576 = call float @dx.op.unary.f32(i32 7, float %8575)  ; Saturate(value)
  %8577 = fsub fast float 1.000000e+00, %8576
  %8578 = fmul fast float %8188, 5.000000e-01
  %8579 = fadd fast float %8578, 5.000000e-01
  %8580 = call float @dx.op.unary.f32(i32 7, float %8579)  ; Saturate(value)
  %8581 = fsub fast float 1.000000e+00, %8580
  %8582 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8577)  ; FMax(a,b)
  %8583 = fdiv fast float %8581, %8582
  %8584 = fsub fast float %8567, %8145
  %8585 = call float @dx.op.unary.f32(i32 6, float %8584)  ; FAbs(value)
  %8586 = fmul fast float %8585, %8571
  %8587 = call float @dx.op.unary.f32(i32 7, float %8583)  ; Saturate(value)
  %8588 = fsub fast float 1.000000e+00, %8586
  %8589 = fmul fast float %8588, %8587
  %8590 = fadd fast float %8589, %8586
  %8591 = fmul fast float %8574, %8567
  %8592 = call float @dx.op.unary.f32(i32 7, float %8591)  ; Saturate(value)
  %8593 = fsub fast float 1.000000e+00, %8590
  %8594 = fmul fast float %8593, %8592
  %8595 = fadd fast float %8594, %8590
  %8596 = call float @dx.op.unary.f32(i32 7, float %8595)  ; Saturate(value)
  %8597 = fadd fast float %8569, -1.000000e+00
  %8598 = select i1 %8568, float -1.000000e+00, float %8597
  %8599 = fmul fast float %8596, %8598
  %8600 = fadd fast float %8599, 1.000000e+00
  %8601 = fsub fast float -0.000000e+00, %8599
  %8602 = fmul fast float %8561, %8601
  %8603 = fmul fast float %8562, %8601
  %8604 = fmul fast float %8563, %8601
  br label %8605

; <label>:8605                                    ; preds = %8558, %8154
  %8606 = phi float [ %8559, %8558 ], [ 0.000000e+00, %8154 ]
  %8607 = phi float [ %8600, %8558 ], [ 1.000000e+00, %8154 ]
  %8608 = phi float [ %8602, %8558 ], [ 0.000000e+00, %8154 ]
  %8609 = phi float [ %8603, %8558 ], [ 0.000000e+00, %8154 ]
  %8610 = phi float [ %8604, %8558 ], [ 0.000000e+00, %8154 ]
  %8611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8612 = extractvalue %dx.types.CBufRet.f32 %8611, 1
  %8613 = fsub fast float 1.000000e+00, %8607
  %8614 = fmul fast float %8613, %8189
  %8615 = fmul fast float %8614, %8612
  %8616 = fsub fast float %8189, %8615
  br i1 %8182, label %8617, label %8646, !dx.controlflow.hints !169

; <label>:8617                                    ; preds = %8605
  %8618 = fmul fast float %8190, %8179
  %8619 = fadd fast float %8618, %8180
  %8620 = call float @dx.op.unary.f32(i32 7, float %8619)  ; Saturate(value)
  %8621 = fmul fast float %8161, %8616
  %8622 = fsub fast float -0.000000e+00, %8621
  %8623 = fmul fast float %8162, %8616
  %8624 = fsub fast float -0.000000e+00, %8623
  %8625 = call float @dx.op.unary.f32(i32 21, float %8622)  ; Exp(value)
  %8626 = call float @dx.op.unary.f32(i32 21, float %8624)  ; Exp(value)
  %8627 = call float @dx.op.binary.f32(i32 35, float %8169, float %8625)  ; FMax(a,b)
  %8628 = call float @dx.op.binary.f32(i32 35, float %8169, float %8626)  ; FMax(a,b)
  %8629 = fsub fast float %8628, %8627
  %8630 = fmul fast float %8629, %8620
  %8631 = fadd fast float %8630, %8627
  %8632 = call float @dx.op.unary.f32(i32 7, float %8631)  ; Saturate(value)
  %8633 = fsub fast float %8166, %8171
  %8634 = fsub fast float %8167, %8172
  %8635 = fsub fast float %8168, %8173
  %8636 = fmul fast float %8620, %8633
  %8637 = fmul fast float %8620, %8634
  %8638 = fmul fast float %8620, %8635
  %8639 = fadd fast float %8636, %8171
  %8640 = fadd fast float %8637, %8172
  %8641 = fadd fast float %8638, %8173
  %8642 = fsub fast float 1.000000e+00, %8632
  %8643 = fmul fast float %8642, %8639
  %8644 = fmul fast float %8642, %8640
  %8645 = fmul fast float %8642, %8641
  br label %8705

; <label>:8646                                    ; preds = %8605
  %8647 = fmul fast float %8616, %8178
  %8648 = call float @dx.op.unary.f32(i32 7, float %8647)  ; Saturate(value)
  %8649 = fsub fast float 2.000000e+00, %8648
  %8650 = fmul fast float %8648, 9.921875e-01
  %8651 = fmul fast float %8650, %8649
  %8652 = fadd fast float %8651, 3.906250e-03
  %8653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %8652, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8654 = extractvalue %dx.types.ResRet.f32 %8653, 0
  %8655 = fsub fast float %8648, %8654
  %8656 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8655)  ; FMax(a,b)
  %8657 = fmul fast float %8164, %8145
  %8658 = call float @dx.op.unary.f32(i32 6, float %8657)  ; FAbs(value)
  %8659 = fcmp fast ogt float %8658, 0x3EB0C6F7A0000000
  br i1 %8659, label %8660, label %8666, !dx.controlflow.hints !170

; <label>:8660                                    ; preds = %8646
  %8661 = fmul fast float %8657, 0xBFF7154760000000
  %8662 = call float @dx.op.unary.f32(i32 21, float %8661)  ; Exp(value)
  %8663 = fsub fast float 1.000000e+00, %8662
  %8664 = fdiv fast float %8663, %8657
  %8665 = fmul fast float %8664, %8174
  br label %8666

; <label>:8666                                    ; preds = %8660, %8646
  %8667 = phi float [ %8665, %8660 ], [ %8174, %8646 ]
  %8668 = fadd fast float %8667, %8176
  %8669 = fmul fast float %8668, %8656
  %8670 = fmul fast float %8161, %8669
  %8671 = fsub fast float -0.000000e+00, %8670
  %8672 = fmul fast float %8162, %8669
  %8673 = fsub fast float -0.000000e+00, %8672
  %8674 = fmul fast float %8163, %8669
  %8675 = fsub fast float -0.000000e+00, %8674
  %8676 = call float @dx.op.unary.f32(i32 21, float %8671)  ; Exp(value)
  %8677 = call float @dx.op.unary.f32(i32 21, float %8673)  ; Exp(value)
  %8678 = call float @dx.op.unary.f32(i32 21, float %8675)  ; Exp(value)
  %8679 = fmul fast float %8190, %8190
  %8680 = fadd fast float %8679, 1.000000e+00
  %8681 = fmul fast float %8680, 0x3FAE8EC8A0000000
  %8682 = fmul fast float %8681, %8171
  %8683 = fmul fast float %8681, %8172
  %8684 = fmul fast float %8681, %8173
  %8685 = fmul fast float %8190, %8169
  %8686 = fsub fast float 1.000000e+00, %8685
  %8687 = fmul fast float %8169, %8169
  %8688 = fsub fast float 1.000000e+00, %8687
  %8689 = fmul fast float %8688, 0x3FB45F3060000000
  %8690 = fmul fast float %8686, %8686
  %8691 = fdiv fast float 1.000000e+00, %8690
  %8692 = fmul fast float %8689, %8691
  %8693 = fmul fast float %8692, %8166
  %8694 = fmul fast float %8692, %8167
  %8695 = fmul fast float %8692, %8168
  %8696 = fadd fast float %8693, %8682
  %8697 = fadd fast float %8694, %8683
  %8698 = fadd fast float %8695, %8684
  %8699 = fsub fast float 1.000000e+00, %8676
  %8700 = fsub fast float 1.000000e+00, %8677
  %8701 = fsub fast float 1.000000e+00, %8678
  %8702 = fmul fast float %8696, %8699
  %8703 = fmul fast float %8697, %8700
  %8704 = fmul fast float %8698, %8701
  br label %8705

; <label>:8705                                    ; preds = %8666, %8617
  %8706 = phi float [ %8643, %8617 ], [ %8702, %8666 ]
  %8707 = phi float [ %8644, %8617 ], [ %8703, %8666 ]
  %8708 = phi float [ %8645, %8617 ], [ %8704, %8666 ]
  %8709 = phi float [ %8632, %8617 ], [ %8676, %8666 ]
  %8710 = phi float [ %8632, %8617 ], [ %8677, %8666 ]
  %8711 = phi float [ %8632, %8617 ], [ %8678, %8666 ]
  br i1 %8198, label %8712, label %8910, !dx.controlflow.hints !171

; <label>:8712                                    ; preds = %8705
  %8713 = extractvalue %dx.types.CBufRet.f32 %8611, 0
  %8714 = fmul fast float %8713, %8613
  %8715 = fsub fast float %8608, %8706
  %8716 = fsub fast float %8609, %8707
  %8717 = fsub fast float %8610, %8708
  %8718 = fmul fast float %8714, %8715
  %8719 = fmul fast float %8714, %8716
  %8720 = fmul fast float %8714, %8717
  %8721 = fadd fast float %8718, %8706
  %8722 = fadd fast float %8719, %8707
  %8723 = fadd fast float %8720, %8708
  %8724 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8709)  ; FMax(a,b)
  %8725 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8710)  ; FMax(a,b)
  %8726 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8711)  ; FMax(a,b)
  %8727 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8607)  ; FMax(a,b)
  %8728 = call float @dx.op.binary.f32(i32 35, float %8606, float %8616)  ; FMax(a,b)
  %8729 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8728)  ; FMax(a,b)
  %8730 = fdiv fast float %8606, %8729
  %8731 = call float @dx.op.unary.f32(i32 7, float %8730)  ; Saturate(value)
  %8732 = fdiv fast float %8616, %8729
  %8733 = call float @dx.op.unary.f32(i32 7, float %8732)  ; Saturate(value)
  %8734 = fcmp fast une float %8727, 1.000000e+00
  br i1 %8734, label %8735, label %8748, !dx.controlflow.hints !172

; <label>:8735                                    ; preds = %8712
  %8736 = call float @dx.op.unary.f32(i32 23, float %8727)  ; Log(value)
  %8737 = fmul fast float %8736, 0x3FE62E4300000000
  %8738 = fmul fast float %8608, %8737
  %8739 = fsub fast float -0.000000e+00, %8738
  %8740 = fmul fast float %8609, %8737
  %8741 = fsub fast float -0.000000e+00, %8740
  %8742 = fmul fast float %8610, %8737
  %8743 = fsub fast float -0.000000e+00, %8742
  %8744 = fsub fast float 1.000000e+00, %8727
  %8745 = fdiv fast float %8739, %8744
  %8746 = fdiv fast float %8741, %8744
  %8747 = fdiv fast float %8743, %8744
  br label %8748

; <label>:8748                                    ; preds = %8735, %8712
  %8749 = phi float [ %8745, %8735 ], [ %8608, %8712 ]
  %8750 = phi float [ %8746, %8735 ], [ %8609, %8712 ]
  %8751 = phi float [ %8747, %8735 ], [ %8610, %8712 ]
  %8752 = phi float [ %8737, %8735 ], [ 0.000000e+00, %8712 ]
  %8753 = fcmp fast une float %8724, 1.000000e+00
  br i1 %8753, label %8754, label %8761, !dx.controlflow.hints !173

; <label>:8754                                    ; preds = %8748
  %8755 = call float @dx.op.unary.f32(i32 23, float %8724)  ; Log(value)
  %8756 = fmul fast float %8755, 0x3FE62E4300000000
  %8757 = fmul fast float %8721, %8756
  %8758 = fsub fast float -0.000000e+00, %8757
  %8759 = fsub fast float 1.000000e+00, %8724
  %8760 = fdiv fast float %8758, %8759
  br label %8761

; <label>:8761                                    ; preds = %8754, %8748
  %8762 = phi float [ %8760, %8754 ], [ %8721, %8748 ]
  %8763 = phi float [ %8756, %8754 ], [ 0.000000e+00, %8748 ]
  %8764 = fcmp fast une float %8725, 1.000000e+00
  br i1 %8764, label %8765, label %8772, !dx.controlflow.hints !173

; <label>:8765                                    ; preds = %8761
  %8766 = call float @dx.op.unary.f32(i32 23, float %8725)  ; Log(value)
  %8767 = fmul fast float %8766, 0x3FE62E4300000000
  %8768 = fmul fast float %8722, %8767
  %8769 = fsub fast float -0.000000e+00, %8768
  %8770 = fsub fast float 1.000000e+00, %8725
  %8771 = fdiv fast float %8769, %8770
  br label %8772

; <label>:8772                                    ; preds = %8765, %8761
  %8773 = phi float [ %8771, %8765 ], [ %8722, %8761 ]
  %8774 = phi float [ %8767, %8765 ], [ 0.000000e+00, %8761 ]
  %8775 = fcmp fast une float %8726, 1.000000e+00
  br i1 %8775, label %8776, label %8783, !dx.controlflow.hints !173

; <label>:8776                                    ; preds = %8772
  %8777 = call float @dx.op.unary.f32(i32 23, float %8726)  ; Log(value)
  %8778 = fmul fast float %8777, 0x3FE62E4300000000
  %8779 = fmul fast float %8723, %8778
  %8780 = fsub fast float -0.000000e+00, %8779
  %8781 = fsub fast float 1.000000e+00, %8726
  %8782 = fdiv fast float %8780, %8781
  br label %8783

; <label>:8783                                    ; preds = %8776, %8772
  %8784 = phi float [ %8782, %8776 ], [ %8723, %8772 ]
  %8785 = phi float [ %8778, %8776 ], [ 0.000000e+00, %8772 ]
  %8786 = fmul fast float %8749, %8733
  %8787 = fmul fast float %8750, %8733
  %8788 = fmul fast float %8751, %8733
  %8789 = fmul fast float %8752, %8733
  %8790 = fmul fast float %8762, %8731
  %8791 = fmul fast float %8773, %8731
  %8792 = fmul fast float %8784, %8731
  %8793 = fmul fast float %8763, %8731
  %8794 = fmul fast float %8774, %8731
  %8795 = fmul fast float %8785, %8731
  %8796 = fadd fast float %8790, %8786
  %8797 = fadd fast float %8791, %8787
  %8798 = fadd fast float %8792, %8788
  %8799 = fadd fast float %8793, %8789
  %8800 = fadd fast float %8794, %8789
  %8801 = fadd fast float %8795, %8789
  %8802 = fcmp fast une float %8799, 0.000000e+00
  br i1 %8802, label %8803, label %8810, !dx.controlflow.hints !174

; <label>:8803                                    ; preds = %8783
  %8804 = fmul fast float %8799, 0x3FF7154760000000
  %8805 = call float @dx.op.unary.f32(i32 21, float %8804)  ; Exp(value)
  %8806 = fsub fast float 1.000000e+00, %8805
  %8807 = fmul fast float %8796, %8806
  %8808 = fsub fast float -0.000000e+00, %8807
  %8809 = fdiv fast float %8808, %8799
  br label %8810

; <label>:8810                                    ; preds = %8803, %8783
  %8811 = phi float [ %8805, %8803 ], [ 1.000000e+00, %8783 ]
  %8812 = phi float [ %8809, %8803 ], [ %8796, %8783 ]
  %8813 = fcmp fast une float %8800, 0.000000e+00
  br i1 %8813, label %8814, label %8821, !dx.controlflow.hints !174

; <label>:8814                                    ; preds = %8810
  %8815 = fmul fast float %8800, 0x3FF7154760000000
  %8816 = call float @dx.op.unary.f32(i32 21, float %8815)  ; Exp(value)
  %8817 = fsub fast float 1.000000e+00, %8816
  %8818 = fmul fast float %8797, %8817
  %8819 = fsub fast float -0.000000e+00, %8818
  %8820 = fdiv fast float %8819, %8800
  br label %8821

; <label>:8821                                    ; preds = %8814, %8810
  %8822 = phi float [ %8816, %8814 ], [ 1.000000e+00, %8810 ]
  %8823 = phi float [ %8820, %8814 ], [ %8797, %8810 ]
  %8824 = fcmp fast une float %8801, 0.000000e+00
  br i1 %8824, label %8825, label %8832, !dx.controlflow.hints !174

; <label>:8825                                    ; preds = %8821
  %8826 = fmul fast float %8801, 0x3FF7154760000000
  %8827 = call float @dx.op.unary.f32(i32 21, float %8826)  ; Exp(value)
  %8828 = fsub fast float 1.000000e+00, %8827
  %8829 = fmul fast float %8798, %8828
  %8830 = fsub fast float -0.000000e+00, %8829
  %8831 = fdiv fast float %8830, %8801
  br label %8832

; <label>:8832                                    ; preds = %8825, %8821
  %8833 = phi float [ %8827, %8825 ], [ 1.000000e+00, %8821 ]
  %8834 = phi float [ %8831, %8825 ], [ %8798, %8821 ]
  %8835 = fcmp fast ogt float %8731, %8733
  br i1 %8835, label %8836, label %8856

; <label>:8836                                    ; preds = %8832
  %8837 = fsub fast float 1.000000e+00, %8733
  %8838 = fmul fast float %8749, %8837
  %8839 = fmul fast float %8750, %8837
  %8840 = fmul fast float %8751, %8837
  %8841 = fmul fast float %8752, %8837
  %8842 = fcmp fast une float %8841, 0.000000e+00
  br i1 %8842, label %8843, label %8894, !dx.controlflow.hints !175

; <label>:8843                                    ; preds = %8836
  %8844 = fmul fast float %8841, 0x3FF7154760000000
  %8845 = call float @dx.op.unary.f32(i32 21, float %8844)  ; Exp(value)
  %8846 = fsub fast float 1.000000e+00, %8845
  %8847 = fmul fast float %8838, %8846
  %8848 = fsub fast float -0.000000e+00, %8847
  %8849 = fmul fast float %8839, %8846
  %8850 = fsub fast float -0.000000e+00, %8849
  %8851 = fmul fast float %8840, %8846
  %8852 = fsub fast float -0.000000e+00, %8851
  %8853 = fdiv fast float %8848, %8841
  %8854 = fdiv fast float %8850, %8841
  %8855 = fdiv fast float %8852, %8841
  br label %8894

; <label>:8856                                    ; preds = %8832
  %8857 = fsub fast float 1.000000e+00, %8731
  %8858 = fmul fast float %8762, %8857
  %8859 = fmul fast float %8773, %8857
  %8860 = fmul fast float %8784, %8857
  %8861 = fmul fast float %8763, %8857
  %8862 = fmul fast float %8774, %8857
  %8863 = fmul fast float %8785, %8857
  %8864 = fcmp fast une float %8861, 0.000000e+00
  br i1 %8864, label %8865, label %8872, !dx.controlflow.hints !174

; <label>:8865                                    ; preds = %8856
  %8866 = fmul fast float %8861, 0x3FF7154760000000
  %8867 = call float @dx.op.unary.f32(i32 21, float %8866)  ; Exp(value)
  %8868 = fsub fast float 1.000000e+00, %8867
  %8869 = fmul fast float %8858, %8868
  %8870 = fsub fast float -0.000000e+00, %8869
  %8871 = fdiv fast float %8870, %8861
  br label %8872

; <label>:8872                                    ; preds = %8865, %8856
  %8873 = phi float [ %8871, %8865 ], [ %8858, %8856 ]
  %8874 = phi float [ %8867, %8865 ], [ 1.000000e+00, %8856 ]
  %8875 = fcmp fast une float %8862, 0.000000e+00
  br i1 %8875, label %8876, label %8883, !dx.controlflow.hints !174

; <label>:8876                                    ; preds = %8872
  %8877 = fmul fast float %8862, 0x3FF7154760000000
  %8878 = call float @dx.op.unary.f32(i32 21, float %8877)  ; Exp(value)
  %8879 = fsub fast float 1.000000e+00, %8878
  %8880 = fmul fast float %8859, %8879
  %8881 = fsub fast float -0.000000e+00, %8880
  %8882 = fdiv fast float %8881, %8862
  br label %8883

; <label>:8883                                    ; preds = %8876, %8872
  %8884 = phi float [ %8882, %8876 ], [ %8859, %8872 ]
  %8885 = phi float [ %8878, %8876 ], [ 1.000000e+00, %8872 ]
  %8886 = fcmp fast une float %8863, 0.000000e+00
  br i1 %8886, label %8887, label %8894, !dx.controlflow.hints !174

; <label>:8887                                    ; preds = %8883
  %8888 = fmul fast float %8863, 0x3FF7154760000000
  %8889 = call float @dx.op.unary.f32(i32 21, float %8888)  ; Exp(value)
  %8890 = fsub fast float 1.000000e+00, %8889
  %8891 = fmul fast float %8860, %8890
  %8892 = fsub fast float -0.000000e+00, %8891
  %8893 = fdiv fast float %8892, %8863
  br label %8894

; <label>:8894                                    ; preds = %8887, %8883, %8843, %8836
  %8895 = phi float [ %8893, %8887 ], [ %8855, %8843 ], [ %8840, %8836 ], [ %8860, %8883 ]
  %8896 = phi float [ %8884, %8887 ], [ %8854, %8843 ], [ %8839, %8836 ], [ %8884, %8883 ]
  %8897 = phi float [ %8873, %8887 ], [ %8853, %8843 ], [ %8838, %8836 ], [ %8873, %8883 ]
  %8898 = phi float [ %8889, %8887 ], [ %8845, %8843 ], [ 1.000000e+00, %8836 ], [ 1.000000e+00, %8883 ]
  %8899 = phi float [ %8885, %8887 ], [ %8845, %8843 ], [ 1.000000e+00, %8836 ], [ %8885, %8883 ]
  %8900 = phi float [ %8874, %8887 ], [ %8845, %8843 ], [ 1.000000e+00, %8836 ], [ %8874, %8883 ]
  %8901 = fmul fast float %8900, %8812
  %8902 = fmul fast float %8899, %8823
  %8903 = fmul fast float %8898, %8834
  %8904 = fadd fast float %8901, %8897
  %8905 = fadd fast float %8902, %8896
  %8906 = fadd fast float %8903, %8895
  %8907 = fmul fast float %8900, %8811
  %8908 = fmul fast float %8899, %8822
  %8909 = fmul fast float %8898, %8833
  br label %8910

; <label>:8910                                    ; preds = %8894, %8705
  %8911 = phi float [ %8909, %8894 ], [ %8711, %8705 ]
  %8912 = phi float [ %8908, %8894 ], [ %8710, %8705 ]
  %8913 = phi float [ %8907, %8894 ], [ %8709, %8705 ]
  %8914 = phi float [ %8906, %8894 ], [ %8708, %8705 ]
  %8915 = phi float [ %8905, %8894 ], [ %8707, %8705 ]
  %8916 = phi float [ %8904, %8894 ], [ %8706, %8705 ]
  %8917 = fmul fast float %8916, %7872
  %8918 = fmul fast float %8915, %7872
  %8919 = fmul fast float %8914, %7872
  %8920 = fmul fast float %8913, %8153
  %8921 = call float @dx.op.dot3.f32(i32 55, float %8913, float %8912, float %8911, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8922 = call float @dx.op.dot3.f32(i32 55, float %8917, float %8918, float %8919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8923 = select i1 %261, float %8921, float %8913
  %8924 = select i1 %261, float %8921, float %8912
  %8925 = select i1 %261, float 1.000000e+00, float %8911
  %8926 = select i1 %261, float %8922, float %8917
  %8927 = select i1 %261, float 0.000000e+00, float %8918
  %8928 = select i1 %261, float 0.000000e+00, float %8919
  %8929 = fmul fast float %8923, %8147
  %8930 = fmul fast float %8924, %8148
  %8931 = fmul fast float %8925, %8149
  %8932 = fadd fast float %8929, %8926
  %8933 = fadd fast float %8930, %8927
  %8934 = fadd fast float %8928, %8931
  %8935 = fmul fast float %8923, %8150
  %8936 = fmul fast float %8924, %8151
  %8937 = fmul fast float %8925, %8152
  %8938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.i32 %8938, 0
  %8940 = icmp eq i32 %8939, 0
  br i1 %8940, label %9308, label %8941, !dx.controlflow.hints !176

; <label>:8941                                    ; preds = %8910
  %8942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8943 = extractvalue %dx.types.CBufRet.f32 %8942, 2
  %8944 = extractvalue %dx.types.CBufRet.f32 %8942, 3
  %8945 = fmul fast float %8943, %104
  %8946 = fmul fast float %8944, %105
  %8947 = fmul fast float %8945, 2.000000e+00
  %8948 = fmul fast float %8946, 2.000000e+00
  %8949 = fsub fast float 1.000000e+00, %8947
  %8950 = fsub fast float 1.000000e+00, %8948
  %8951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8952 = extractvalue %dx.types.CBufRet.f32 %8951, 0
  %8953 = extractvalue %dx.types.CBufRet.f32 %8951, 1
  %8954 = extractvalue %dx.types.CBufRet.f32 %8951, 2
  %8955 = fmul fast float %8949, %8952
  %8956 = fmul fast float %8949, %8953
  %8957 = fmul fast float %8949, %8954
  %8958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8959 = extractvalue %dx.types.CBufRet.f32 %8958, 0
  %8960 = extractvalue %dx.types.CBufRet.f32 %8958, 1
  %8961 = extractvalue %dx.types.CBufRet.f32 %8958, 2
  %8962 = fmul fast float %8950, %8959
  %8963 = fmul fast float %8950, %8960
  %8964 = fmul fast float %8950, %8961
  %8965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8966 = extractvalue %dx.types.CBufRet.f32 %8965, 0
  %8967 = extractvalue %dx.types.CBufRet.f32 %8965, 1
  %8968 = extractvalue %dx.types.CBufRet.f32 %8965, 2
  %8969 = fadd fast float %8962, %8966
  %8970 = fadd fast float %8969, %8955
  %8971 = fadd fast float %8963, %8967
  %8972 = fadd fast float %8971, %8956
  %8973 = fadd fast float %8964, %8968
  %8974 = fadd fast float %8973, %8957
  %8975 = fmul fast float %8970, %8146
  %8976 = fmul fast float %8972, %8146
  %8977 = fmul fast float %8974, %8146
  %8978 = fmul fast float %8975, %8975
  %8979 = fmul fast float %8976, %8976
  %8980 = fadd fast float %8978, %8979
  %8981 = fmul fast float %8977, %8977
  %8982 = fadd fast float %8980, %8981
  %8983 = call float @dx.op.unary.f32(i32 24, float %8982)  ; Sqrt(value)
  %8984 = extractvalue %dx.types.CBufRet.f32 %7873, 0
  %8985 = fsub fast float %8983, %8984
  %8986 = extractvalue %dx.types.CBufRet.f32 %7873, 2
  %8987 = fmul fast float %8985, %8986
  %8988 = call float @dx.op.unary.f32(i32 7, float %8987)  ; Saturate(value)
  %8989 = fadd fast float %8988, -5.000000e-01
  %8990 = fmul fast float %8989, 2.000000e+00
  %8991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8992 = extractvalue %dx.types.CBufRet.f32 %8991, 2
  %8993 = call float @dx.op.binary.f32(i32 36, float %8992, float %8990)  ; FMin(a,b)
  %8994 = fsub fast float -0.000000e+00, %8992
  %8995 = fcmp fast ogt float %8993, %8994
  br i1 %8995, label %8996, label %9308, !dx.controlflow.hints !177

; <label>:8996                                    ; preds = %8941
  %8997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8998 = extractvalue %dx.types.CBufRet.f32 %8997, 3
  %8999 = fcmp fast ogt float %8998, 0.000000e+00
  br i1 %8999, label %9000, label %9075, !dx.controlflow.hints !178

; <label>:9000                                    ; preds = %8996
  %9001 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9002 = extractvalue %dx.types.Dimensions %9001, 0
  %9003 = sitofp i32 %9002 to float
  %9004 = extractvalue %dx.types.Dimensions %9001, 1
  %9005 = sitofp i32 %9004 to float
  %9006 = fmul fast float %8945, %9003
  %9007 = fmul fast float %8946, %9005
  %9008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9009 = extractvalue %dx.types.CBufRet.f32 %9008, 1
  %9010 = fsub fast float -0.000000e+00, %9009
  %9011 = fptoui float %9010 to i32
  %9012 = fptoui float %9006 to i32
  %9013 = fptoui float %9007 to i32
  %9014 = and i32 %9011, 31
  %9015 = lshr i32 %9012, %9014
  %9016 = lshr i32 %9013, %9014
  %9017 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9011, i32 %9015, i32 %9016, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9018 = extractvalue %dx.types.ResRet.f32 %9017, 0
  %9019 = fcmp fast olt float %9018, -1.000000e+00
  %9020 = fcmp fast ogt float %9018, -1.000000e+00
  %9021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9022 = extractvalue %dx.types.CBufRet.f32 %9021, 1
  %9023 = select i1 %9020, float %9022, float 1.000000e+00
  %9024 = fadd fast float %9018, 1.000000e+00
  %9025 = fmul fast float %9023, %9024
  %9026 = call float @dx.op.unary.f32(i32 6, float %9025)  ; FAbs(value)
  %9027 = extractvalue %dx.types.CBufRet.f32 %9021, 3
  %9028 = fcmp fast oge float %9026, %9027
  %9029 = select i1 %9028, float 0x4197782600000000, float %9026
  %9030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9031 = extractvalue %dx.types.CBufRet.f32 %9030, 0
  %9032 = extractvalue %dx.types.CBufRet.f32 %9030, 1
  %9033 = extractvalue %dx.types.CBufRet.f32 %9030, 2
  %9034 = select i1 %9019, float %9031, float %8952
  %9035 = select i1 %9019, float %9032, float %8953
  %9036 = select i1 %9019, float %9033, float %8954
  %9037 = fmul fast float %9034, %8949
  %9038 = fmul fast float %9035, %8949
  %9039 = fmul fast float %9036, %8949
  %9040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9041 = extractvalue %dx.types.CBufRet.f32 %9040, 0
  %9042 = extractvalue %dx.types.CBufRet.f32 %9040, 1
  %9043 = extractvalue %dx.types.CBufRet.f32 %9040, 2
  %9044 = select i1 %9019, float %9041, float %8959
  %9045 = select i1 %9019, float %9042, float %8960
  %9046 = select i1 %9019, float %9043, float %8961
  %9047 = fmul fast float %9044, %8950
  %9048 = fmul fast float %9045, %8950
  %9049 = fmul fast float %9046, %8950
  %9050 = fadd fast float %9047, %9037
  %9051 = fadd fast float %9048, %9038
  %9052 = fadd fast float %9049, %9039
  %9053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9054 = extractvalue %dx.types.CBufRet.f32 %9053, 0
  %9055 = extractvalue %dx.types.CBufRet.f32 %9053, 1
  %9056 = extractvalue %dx.types.CBufRet.f32 %9053, 2
  %9057 = select i1 %9019, float %9054, float %8966
  %9058 = select i1 %9019, float %9055, float %8967
  %9059 = select i1 %9019, float %9056, float %8968
  %9060 = fadd fast float %9050, %9057
  %9061 = fadd fast float %9051, %9058
  %9062 = fadd fast float %9052, %9059
  %9063 = fmul fast float %9060, %9029
  %9064 = fmul fast float %9061, %9029
  %9065 = fmul fast float %9062, %9029
  %9066 = fmul fast float %9063, %9063
  %9067 = fmul fast float %9064, %9064
  %9068 = fadd fast float %9066, %9067
  %9069 = fmul fast float %9065, %9065
  %9070 = fadd fast float %9068, %9069
  %9071 = call float @dx.op.unary.f32(i32 24, float %9070)  ; Sqrt(value)
  %9072 = fsub fast float %9071, %8984
  %9073 = fmul fast float %9072, %8986
  %9074 = call float @dx.op.unary.f32(i32 7, float %9073)  ; Saturate(value)
  br label %9075

; <label>:9075                                    ; preds = %9000, %8996
  %9076 = phi float [ %9074, %9000 ], [ 1.000000e+00, %8996 ]
  %9077 = fmul fast float %8993, 5.000000e-01
  %9078 = fadd fast float %9077, 5.000000e-01
  %9079 = call float @dx.op.unary.f32(i32 22, float %9078)  ; Frc(value)
  %9080 = call float @dx.op.unary.f32(i32 27, float %9079)  ; Round_ni(value)
  %9081 = call float @dx.op.unary.f32(i32 22, float %9079)  ; Frc(value)
  %9082 = fmul fast float %9081, 2.000000e+00
  %9083 = fadd fast float %9082, -1.000000e+00
  %9084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %8945, float %8946, float %9080, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9085 = extractvalue %dx.types.ResRet.f32 %9084, 0
  %9086 = extractvalue %dx.types.ResRet.f32 %9084, 1
  %9087 = extractvalue %dx.types.ResRet.f32 %9084, 2
  %9088 = extractvalue %dx.types.ResRet.f32 %9084, 3
  %9089 = fadd fast float %9085, -5.000000e-01
  %9090 = fadd fast float %9087, -5.000000e-01
  %9091 = fmul fast float %9089, 0xBFD5555560000000
  %9092 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9090, float %9091)  ; FMad(a,b,c)
  %9093 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9086, float 0.000000e+00)  ; FMad(a,b,c)
  %9094 = fadd fast float %9093, %9088
  %9095 = fmul fast float %9089, -7.500000e-01
  %9096 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9090, float %9095)  ; FMad(a,b,c)
  %9097 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9086, float 0.000000e+00)  ; FMad(a,b,c)
  %9098 = fadd fast float %9097, %9088
  %9099 = call float @dx.op.binary.f32(i32 35, float %9092, float -1.000000e+00)  ; FMax(a,b)
  %9100 = call float @dx.op.binary.f32(i32 35, float %9094, float -1.000000e+00)  ; FMax(a,b)
  %9101 = call float @dx.op.binary.f32(i32 35, float %9096, float -1.000000e+00)  ; FMax(a,b)
  %9102 = call float @dx.op.binary.f32(i32 35, float %9098, float -1.000000e+00)  ; FMax(a,b)
  %9103 = call float @dx.op.binary.f32(i32 36, float %9099, float 1.000000e+00)  ; FMin(a,b)
  %9104 = call float @dx.op.binary.f32(i32 36, float %9100, float 1.000000e+00)  ; FMin(a,b)
  %9105 = call float @dx.op.binary.f32(i32 36, float %9101, float 1.000000e+00)  ; FMin(a,b)
  %9106 = call float @dx.op.binary.f32(i32 36, float %9102, float 1.000000e+00)  ; FMin(a,b)
  %9107 = fcmp fast olt float %9103, 0x3FEFFF8020000000
  br i1 %9107, label %9108, label %9223, !dx.controlflow.hints !179

; <label>:9108                                    ; preds = %9075
  %9109 = extractvalue %dx.types.CBufRet.f32 %8991, 3
  %9110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9111 = extractvalue %dx.types.CBufRet.f32 %9110, 0
  %9112 = extractvalue %dx.types.CBufRet.f32 %9110, 1
  %9113 = extractvalue %dx.types.CBufRet.f32 %9110, 2
  %9114 = extractvalue %dx.types.CBufRet.f32 %9110, 3
  %9115 = fsub fast float %9111, %9103
  %9116 = fsub fast float %9112, %9104
  %9117 = fsub fast float %9113, %9105
  %9118 = fsub fast float %9114, %9106
  %9119 = fmul fast float %9115, %9109
  %9120 = fmul fast float %9116, %9109
  %9121 = fmul fast float %9117, %9109
  %9122 = fmul fast float %9118, %9109
  %9123 = fadd fast float %9119, %9103
  %9124 = fadd fast float %9120, %9104
  %9125 = fsub fast float -0.000000e+00, %9124
  %9126 = fadd fast float %9121, %9105
  %9127 = fadd fast float %9122, %9106
  %9128 = fmul fast float %9123, %9123
  %9129 = fsub fast float %9124, %9128
  %9130 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9129)  ; FMax(a,b)
  %9131 = fdiv fast float 1.000000e+00, %9130
  %9132 = fmul fast float %9124, %9123
  %9133 = fsub fast float %9126, %9132
  %9134 = fsub fast float %9083, %9123
  %9135 = fmul fast float %9083, %9083
  %9136 = fsub fast float %9135, %9124
  %9137 = fmul fast float %9134, %9131
  %9138 = fmul fast float %9137, %9133
  %9139 = fsub fast float %9136, %9138
  %9140 = fmul fast float %9124, %9124
  %9141 = fsub fast float %9127, %9140
  %9142 = fmul fast float %9133, %9133
  %9143 = fmul fast float %9142, %9131
  %9144 = fsub fast float %9141, %9143
  %9145 = fdiv fast float %9139, %9144
  %9146 = fmul fast float %9133, %9145
  %9147 = fsub fast float %9134, %9146
  %9148 = fmul fast float %9147, %9131
  %9149 = fmul fast float %9148, %9123
  %9150 = fsub fast float 1.000000e+00, %9149
  %9151 = fmul fast float %9124, %9145
  %9152 = fsub fast float %9150, %9151
  %9153 = fmul fast float %9148, %9148
  %9154 = fmul fast float %9145, 4.000000e+00
  %9155 = fmul fast float %9154, %9152
  %9156 = fsub fast float %9153, %9155
  %9157 = call float @dx.op.unary.f32(i32 24, float %9156)  ; Sqrt(value)
  %9158 = fcmp fast oge float %9148, 0.000000e+00
  %9159 = fsub fast float -0.000000e+00, %9157
  %9160 = select i1 %9158, float %9159, float %9157
  %9161 = fsub fast float %9160, %9148
  %9162 = fdiv fast float %9161, %9145
  %9163 = fdiv fast float %9152, %9161
  %9164 = fmul fast float %9162, 5.000000e-01
  %9165 = fmul fast float %9163, 2.000000e+00
  %9166 = select i1 %9158, float %9164, float %9165
  %9167 = select i1 %9158, float %9165, float %9164
  %9168 = call float @dx.op.binary.f32(i32 35, float %9166, float %9167)  ; FMax(a,b)
  %9169 = call float @dx.op.binary.f32(i32 36, float %9166, float %9167)  ; FMin(a,b)
  %9170 = fcmp fast ogt float %9083, %9169
  br i1 %9170, label %9171, label %9181

; <label>:9171                                    ; preds = %9108
  %9172 = fsub fast float %9083, %9169
  %9173 = fsub fast float %9168, %9169
  %9174 = fmul fast float %9172, %9173
  %9175 = fmul fast float %9168, %9083
  %9176 = fadd fast float %9168, %9083
  %9177 = fmul fast float %9176, %9123
  %9178 = fadd fast float %9175, %9124
  %9179 = fsub fast float %9178, %9177
  %9180 = fdiv fast float %9179, %9174
  br label %9181

; <label>:9181                                    ; preds = %9171, %9108
  %9182 = phi float [ %9180, %9171 ], [ 0.000000e+00, %9108 ]
  %9183 = fcmp fast ogt float %9083, %9168
  %9184 = fsub fast float %9083, %9168
  br i1 %9183, label %9185, label %9195

; <label>:9185                                    ; preds = %9181
  %9186 = fsub fast float %9168, %9169
  %9187 = fmul fast float %9186, %9184
  %9188 = fmul fast float %9169, %9083
  %9189 = fadd fast float %9169, %9083
  %9190 = fmul fast float %9189, %9123
  %9191 = fsub fast float %9125, %9188
  %9192 = fadd fast float %9191, %9190
  %9193 = fdiv fast float %9192, %9187
  %9194 = fadd fast float %9193, %9182
  br label %9195

; <label>:9195                                    ; preds = %9185, %9181
  %9196 = phi float [ %9194, %9185 ], [ %9182, %9181 ]
  %9197 = fsub fast float %9083, %9169
  %9198 = fmul fast float %9197, %9184
  %9199 = fmul fast float %9169, %9168
  %9200 = fadd fast float %9169, %9168
  %9201 = fmul fast float %9200, %9123
  %9202 = fadd fast float %9199, %9124
  %9203 = fsub fast float %9202, %9201
  %9204 = fdiv fast float %9203, %9198
  %9205 = call float @dx.op.unary.f32(i32 7, float %9196)  ; Saturate(value)
  %9206 = fcmp fast oeq float %7874, 0.000000e+00
  %9207 = extractvalue %dx.types.CBufRet.f32 %8991, 0
  %9208 = fcmp fast oeq float %9207, 0.000000e+00
  %9209 = or i1 %9206, %9208
  %9210 = fmul fast float %9207, 2.000000e+00
  %9211 = fadd fast float %8992, %8993
  %9212 = fdiv fast float %9211, %9210
  %9213 = call float @dx.op.unary.f32(i32 7, float %9212)  ; Saturate(value)
  %9214 = fmul fast float %9213, 2.000000e+00
  %9215 = fsub fast float 3.000000e+00, %9214
  %9216 = fmul fast float %9213, %9213
  %9217 = fmul fast float %9216, %9215
  %9218 = select i1 %9209, float 1.000000e+00, float %9217
  %9219 = fmul fast float %9204, %7874
  %9220 = fadd fast float %9205, %9219
  %9221 = call float @dx.op.unary.f32(i32 7, float %9220)  ; Saturate(value)
  %9222 = fmul fast float %9218, %9221
  br label %9223

; <label>:9223                                    ; preds = %9195, %9075
  %9224 = phi float [ %9222, %9195 ], [ 0.000000e+00, %9075 ]
  %9225 = fsub fast float 1.000000e+00, %9224
  %9226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %8945, float %8946, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9227 = extractvalue %dx.types.ResRet.f32 %9226, 0
  %9228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9229 = extractvalue %dx.types.CBufRet.i32 %9228, 2
  %9230 = icmp eq i32 %9229, 0
  br i1 %9230, label %9236, label %9231

; <label>:9231                                    ; preds = %9223
  %9232 = call float @dx.op.unary.f32(i32 7, float %9224)  ; Saturate(value)
  %9233 = fadd fast float %9227, -1.000000e+00
  %9234 = fmul fast float %9232, %9233
  %9235 = fadd fast float %9234, 1.000000e+00
  br label %9236

; <label>:9236                                    ; preds = %9231, %9223
  %9237 = phi float [ %9235, %9231 ], [ %9225, %9223 ]
  br i1 %8999, label %9238, label %9256

; <label>:9238                                    ; preds = %9236
  %9239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9240 = extractvalue %dx.types.CBufRet.f32 %9239, 1
  %9241 = fsub fast float %9076, %9240
  %9242 = call float @dx.op.unary.f32(i32 7, float %9241)  ; Saturate(value)
  %9243 = fsub fast float %9076, %8998
  %9244 = call float @dx.op.unary.f32(i32 7, float %9243)  ; Saturate(value)
  %9245 = fsub fast float %9242, %9244
  %9246 = fsub fast float %9078, %9244
  %9247 = fdiv fast float %9246, %9245
  %9248 = call float @dx.op.unary.f32(i32 7, float %9247)  ; Saturate(value)
  %9249 = fmul fast float %9248, 2.000000e+00
  %9250 = fsub fast float 3.000000e+00, %9249
  %9251 = fsub fast float %9227, %9237
  %9252 = fmul fast float %9248, %9248
  %9253 = fmul fast float %9252, %9251
  %9254 = fmul fast float %9253, %9250
  %9255 = fadd fast float %9254, %9237
  br label %9256

; <label>:9256                                    ; preds = %9238, %9236
  %9257 = phi float [ %9255, %9238 ], [ %9237, %9236 ]
  %9258 = call float @dx.op.binary.f32(i32 35, float %9227, float %9257)  ; FMax(a,b)
  %9259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9260 = extractvalue %dx.types.CBufRet.i32 %9259, 2
  %9261 = and i32 %9260, 1
  %9262 = icmp eq i32 %9261, 0
  %9263 = fcmp fast une float %9258, 1.000000e+00
  %9264 = and i1 %9263, %9262
  br i1 %9264, label %9265, label %9284

; <label>:9265                                    ; preds = %9256
  %9266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %8945, float %8946, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9267 = extractvalue %dx.types.ResRet.f32 %9266, 0
  %9268 = extractvalue %dx.types.ResRet.f32 %9266, 1
  %9269 = extractvalue %dx.types.ResRet.f32 %9266, 2
  %9270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9271 = extractvalue %dx.types.CBufRet.f32 %9270, 1
  %9272 = fmul fast float %9271, %9267
  %9273 = fmul fast float %9271, %9268
  %9274 = fmul fast float %9271, %9269
  %9275 = fcmp fast ogt float %9227, 0x3FEFFF2E40000000
  %9276 = fsub fast float 1.000000e+00, %9258
  %9277 = fsub fast float 1.000000e+00, %9227
  %9278 = fdiv fast float %9276, %9277
  %9279 = call float @dx.op.unary.f32(i32 7, float %9278)  ; Saturate(value)
  %9280 = select i1 %9275, float 0.000000e+00, float %9279
  %9281 = fmul fast float %9272, %9280
  %9282 = fmul fast float %9273, %9280
  %9283 = fmul fast float %9274, %9280
  br label %9284

; <label>:9284                                    ; preds = %9265, %9256
  %9285 = phi float [ 0.000000e+00, %9256 ], [ %9281, %9265 ]
  %9286 = phi float [ 0.000000e+00, %9256 ], [ %9282, %9265 ]
  %9287 = phi float [ 0.000000e+00, %9256 ], [ %9283, %9265 ]
  %9288 = fmul fast float %9285, %7872
  %9289 = fmul fast float %9286, %7872
  %9290 = fmul fast float %9287, %7872
  %9291 = fmul fast float %9258, %8920
  %9292 = call float @dx.op.dot3.f32(i32 55, float %9258, float %9258, float %9258, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9293 = call float @dx.op.dot3.f32(i32 55, float %9288, float %9289, float %9290, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9294 = select i1 %261, float %9292, float %9258
  %9295 = select i1 %261, float 1.000000e+00, float %9258
  %9296 = select i1 %261, float %9293, float %9288
  %9297 = select i1 %261, float 0.000000e+00, float %9289
  %9298 = select i1 %261, float 0.000000e+00, float %9290
  %9299 = fmul fast float %9294, %8932
  %9300 = fmul fast float %9294, %8933
  %9301 = fmul fast float %9295, %8934
  %9302 = fadd fast float %9299, %9296
  %9303 = fadd fast float %9300, %9297
  %9304 = fadd fast float %9298, %9301
  %9305 = fmul fast float %9294, %8935
  %9306 = fmul fast float %9294, %8936
  %9307 = fmul fast float %9295, %8937
  br label %9308

; <label>:9308                                    ; preds = %9284, %8941, %8910, %8142
  %9309 = phi float [ %8147, %8142 ], [ %8932, %8910 ], [ %9302, %9284 ], [ %8932, %8941 ]
  %9310 = phi float [ %8148, %8142 ], [ %8933, %8910 ], [ %9303, %9284 ], [ %8933, %8941 ]
  %9311 = phi float [ %8149, %8142 ], [ %8934, %8910 ], [ %9304, %9284 ], [ %8934, %8941 ]
  %9312 = phi float [ %8150, %8142 ], [ %8935, %8910 ], [ %9305, %9284 ], [ %8935, %8941 ]
  %9313 = phi float [ %8151, %8142 ], [ %8936, %8910 ], [ %9306, %9284 ], [ %8936, %8941 ]
  %9314 = phi float [ %8152, %8142 ], [ %8937, %8910 ], [ %9307, %9284 ], [ %8937, %8941 ]
  %9315 = phi float [ %8153, %8142 ], [ %8920, %8910 ], [ %9291, %9284 ], [ %8920, %8941 ]
  %9316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9317 = extractvalue %dx.types.CBufRet.f32 %9316, 2
  %9318 = extractvalue %dx.types.CBufRet.f32 %9316, 3
  %9319 = fmul fast float %9317, %104
  %9320 = fmul fast float %9318, %105
  %9321 = call float @dx.op.unary.f32(i32 7, float %9319)  ; Saturate(value)
  %9322 = call float @dx.op.unary.f32(i32 7, float %9320)  ; Saturate(value)
  %9323 = select i1 %7884, i32 2, i32 0
  %9324 = or i32 %9323, 1
  %9325 = uitofp i32 %9324 to float
  %9326 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9321, float %9322, float %9325, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9327 = extractvalue %dx.types.ResRet.f32 %9326, 0
  %9328 = extractvalue %dx.types.ResRet.f32 %9326, 1
  %9329 = extractvalue %dx.types.ResRet.f32 %9326, 2
  %9330 = extractvalue %dx.types.ResRet.f32 %9326, 3
  %9331 = add nuw nsw i32 %9323, 2
  %9332 = uitofp i32 %9331 to float
  %9333 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9321, float %9322, float %9332, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9334 = extractvalue %dx.types.ResRet.f32 %9333, 0
  %9335 = extractvalue %dx.types.ResRet.f32 %9333, 1
  %9336 = extractvalue %dx.types.ResRet.f32 %9333, 2
  %9337 = extractvalue %dx.types.ResRet.f32 %9333, 3
  %9338 = call float @dx.op.binary.f32(i32 35, float %9328, float %9329)  ; FMax(a,b)
  %9339 = call float @dx.op.binary.f32(i32 35, float %9327, float %9338)  ; FMax(a,b)
  %9340 = call float @dx.op.binary.f32(i32 35, float %9339, float %9330)  ; FMax(a,b)
  %9341 = call float @dx.op.binary.f32(i32 36, float %9335, float %9336)  ; FMin(a,b)
  %9342 = call float @dx.op.binary.f32(i32 36, float %9334, float %9341)  ; FMin(a,b)
  %9343 = call float @dx.op.binary.f32(i32 36, float %9342, float %9337)  ; FMin(a,b)
  %9344 = fmul fast float %9340, 2.550000e+02
  %9345 = fadd fast float %9344, 0x3F70101020000000
  %9346 = fptoui float %9345 to i32
  %9347 = fmul fast float %9343, 2.550000e+02
  %9348 = fadd fast float %9347, 0x3F70101020000000
  %9349 = fptoui float %9348 to i32
  %9350 = icmp ult i32 %9346, %9349
  br i1 %9350, label %9351, label %9520

; <label>:9351                                    ; preds = %9308
  %9352 = fcmp fast ogt float %91, 9.843750e-01
  %9353 = fadd fast float %8146, -4.000000e+00
  %9354 = select i1 %9352, float -4.000000e+00, float %9353
  %9355 = call float @dx.op.binary.f32(i32 35, float %9354, float 0.000000e+00)  ; FMax(a,b)
  %9356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9357 = extractvalue %dx.types.CBufRet.f32 %9356, 0
  %9358 = fadd fast float %9357, %9355
  %9359 = extractvalue %dx.types.CBufRet.f32 %9356, 2
  %9360 = fmul fast float %9358, %9359
  %9361 = call float @dx.op.unary.f32(i32 23, float %9360)  ; Log(value)
  %9362 = extractvalue %dx.types.CBufRet.f32 %9356, 3
  %9363 = fmul fast float %9362, %9361
  %9364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9365 = extractvalue %dx.types.CBufRet.f32 %9364, 2
  %9366 = fmul fast float %9363, %9365
  %9367 = call float @dx.op.unary.f32(i32 7, float %9366)  ; Saturate(value)
  %9368 = uitofp i32 %9346 to float
  %9369 = uitofp i32 %9349 to float
  %9370 = fadd fast float %9368, 5.000000e-01
  %9371 = fadd fast float %9369, 5.000000e-01
  %9372 = fmul fast float %9365, %9370
  %9373 = fmul fast float %9365, %9371
  %9374 = fadd fast float %9372, 0x3F0FFB4800000000
  %9375 = fadd fast float %9373, 0xBF0FFB4800000000
  %9376 = call float @dx.op.binary.f32(i32 35, float %9367, float %9374)  ; FMax(a,b)
  %9377 = call float @dx.op.binary.f32(i32 36, float %9376, float %9375)  ; FMin(a,b)
  %9378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9379 = extractvalue %dx.types.CBufRet.f32 %9378, 1
  %9380 = extractvalue %dx.types.CBufRet.f32 %9378, 2
  %9381 = extractvalue %dx.types.CBufRet.f32 %9378, 0
  %9382 = select i1 %7884, float %9381, float 0.000000e+00
  %9383 = fmul fast float %9379, %9377
  %9384 = fadd fast float %9382, %9383
  %9385 = fadd fast float %9382, %9380
  %9386 = fsub fast float %9379, %9380
  %9387 = fadd fast float %9386, %9382
  %9388 = call float @dx.op.binary.f32(i32 35, float %9384, float %9385)  ; FMax(a,b)
  %9389 = call float @dx.op.binary.f32(i32 36, float %9388, float %9387)  ; FMin(a,b)
  %9390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9321, float %9322, float %9389, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9391 = extractvalue %dx.types.ResRet.f32 %9390, 0
  %9392 = extractvalue %dx.types.ResRet.f32 %9390, 1
  %9393 = extractvalue %dx.types.ResRet.f32 %9390, 2
  %9394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9395 = extractvalue %dx.types.CBufRet.i32 %9394, 0
  %9396 = extractvalue %dx.types.CBufRet.i32 %9394, 1
  %9397 = uitofp i32 %9395 to float
  %9398 = uitofp i32 %9396 to float
  %9399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9400 = extractvalue %dx.types.CBufRet.f32 %9399, 0
  %9401 = extractvalue %dx.types.CBufRet.f32 %9399, 1
  %9402 = fmul fast float %9397, %9321
  %9403 = fmul fast float %9398, %9322
  %9404 = fadd fast float %9402, -5.000000e-01
  %9405 = fadd fast float %9403, -5.000000e-01
  %9406 = call float @dx.op.unary.f32(i32 22, float %9404)  ; Frc(value)
  %9407 = call float @dx.op.unary.f32(i32 22, float %9405)  ; Frc(value)
  %9408 = fmul fast float %9406, %9406
  %9409 = fmul fast float %9408, %9406
  %9410 = fsub fast float 3.000000e+00, %9406
  %9411 = fmul fast float %9408, %9410
  %9412 = fmul fast float %9406, 3.000000e+00
  %9413 = fmul fast float %9409, 3.000000e+00
  %9414 = fmul fast float %9408, 6.000000e+00
  %9415 = fsub fast float %9413, %9414
  %9416 = fadd fast float %9415, 4.000000e+00
  %9417 = fmul fast float %9416, 0x3FC5555560000000
  %9418 = fmul fast float %9409, -3.000000e+00
  %9419 = fadd fast float %9408, %9406
  %9420 = fmul fast float %9419, 3.000000e+00
  %9421 = fadd fast float %9418, 1.000000e+00
  %9422 = fadd fast float %9421, %9420
  %9423 = fmul fast float %9409, 0x3FC5555560000000
  %9424 = fmul fast float %9407, %9407
  %9425 = fmul fast float %9424, %9407
  %9426 = fsub fast float 3.000000e+00, %9407
  %9427 = fmul fast float %9424, %9426
  %9428 = fmul fast float %9407, 3.000000e+00
  %9429 = fmul fast float %9425, 3.000000e+00
  %9430 = fmul fast float %9424, 6.000000e+00
  %9431 = fsub fast float %9429, %9430
  %9432 = fadd fast float %9431, 4.000000e+00
  %9433 = fmul fast float %9432, 0x3FC5555560000000
  %9434 = fmul fast float %9425, -3.000000e+00
  %9435 = fadd fast float %9424, %9407
  %9436 = fmul fast float %9435, 3.000000e+00
  %9437 = fadd fast float %9434, 1.000000e+00
  %9438 = fadd fast float %9437, %9436
  %9439 = fmul fast float %9425, 0x3FC5555560000000
  %9440 = fadd fast float %9406, 1.000000e+00
  %9441 = fsub fast float 1.000000e+00, %9412
  %9442 = fadd fast float %9441, %9411
  %9443 = fadd fast float %9442, %9416
  %9444 = fmul fast float %9443, 0x3FC5555560000000
  %9445 = fdiv fast float %9417, %9444
  %9446 = fsub fast float %9440, %9445
  %9447 = fsub fast float 1.000000e+00, %9406
  %9448 = fadd fast float %9422, %9409
  %9449 = fmul fast float %9448, 0x3FC5555560000000
  %9450 = fdiv fast float %9423, %9449
  %9451 = fadd fast float %9447, %9450
  %9452 = fadd fast float %9407, 1.000000e+00
  %9453 = fsub fast float 1.000000e+00, %9428
  %9454 = fadd fast float %9453, %9427
  %9455 = fadd fast float %9454, %9432
  %9456 = fmul fast float %9455, 0x3FC5555560000000
  %9457 = fdiv fast float %9433, %9456
  %9458 = fsub fast float %9452, %9457
  %9459 = fsub fast float 1.000000e+00, %9407
  %9460 = fadd fast float %9438, %9425
  %9461 = fmul fast float %9460, 0x3FC5555560000000
  %9462 = fdiv fast float %9439, %9461
  %9463 = fadd fast float %9462, %9459
  %9464 = fmul fast float %9446, %9400
  %9465 = fsub fast float %9321, %9464
  %9466 = fmul fast float %9451, %9400
  %9467 = fadd fast float %9466, %9321
  %9468 = fmul fast float %9463, %9401
  %9469 = fadd fast float %9468, %9322
  %9470 = fmul fast float %9458, %9401
  %9471 = fsub fast float %9322, %9470
  %9472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9465, float %9471, float %9389, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9473 = extractvalue %dx.types.ResRet.f32 %9472, 0
  %9474 = extractvalue %dx.types.ResRet.f32 %9472, 1
  %9475 = extractvalue %dx.types.ResRet.f32 %9472, 2
  %9476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9467, float %9471, float %9389, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9477 = extractvalue %dx.types.ResRet.f32 %9476, 0
  %9478 = extractvalue %dx.types.ResRet.f32 %9476, 1
  %9479 = extractvalue %dx.types.ResRet.f32 %9476, 2
  %9480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9465, float %9469, float %9389, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9481 = extractvalue %dx.types.ResRet.f32 %9480, 0
  %9482 = extractvalue %dx.types.ResRet.f32 %9480, 1
  %9483 = extractvalue %dx.types.ResRet.f32 %9480, 2
  %9484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9467, float %9469, float %9389, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9485 = extractvalue %dx.types.ResRet.f32 %9484, 0
  %9486 = extractvalue %dx.types.ResRet.f32 %9484, 1
  %9487 = extractvalue %dx.types.ResRet.f32 %9484, 2
  %9488 = fsub fast float %9481, %9473
  %9489 = fsub fast float %9482, %9474
  %9490 = fsub fast float %9483, %9475
  %9491 = fmul fast float %9488, %9461
  %9492 = fmul fast float %9489, %9461
  %9493 = fmul fast float %9490, %9461
  %9494 = fadd fast float %9491, %9473
  %9495 = fadd fast float %9492, %9474
  %9496 = fadd fast float %9493, %9475
  %9497 = fsub fast float %9485, %9477
  %9498 = fsub fast float %9486, %9478
  %9499 = fsub fast float %9487, %9479
  %9500 = fmul fast float %9497, %9461
  %9501 = fmul fast float %9498, %9461
  %9502 = fmul fast float %9499, %9461
  %9503 = fsub fast float %9477, %9494
  %9504 = fadd fast float %9503, %9500
  %9505 = fsub fast float %9478, %9495
  %9506 = fadd fast float %9505, %9501
  %9507 = fsub fast float %9479, %9496
  %9508 = fadd fast float %9507, %9502
  %9509 = fmul fast float %9504, %9449
  %9510 = fmul fast float %9506, %9449
  %9511 = fmul fast float %9508, %9449
  %9512 = fadd fast float %9509, %9494
  %9513 = fadd fast float %9510, %9495
  %9514 = fadd fast float %9511, %9496
  %9515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9516 = extractvalue %dx.types.CBufRet.f32 %9515, 1
  %9517 = fmul fast float %9512, %9516
  %9518 = fmul fast float %9513, %9516
  %9519 = fmul fast float %9514, %9516
  br label %9520

; <label>:9520                                    ; preds = %9351, %9308
  %9521 = phi float [ %9391, %9351 ], [ 1.000000e+00, %9308 ]
  %9522 = phi float [ %9392, %9351 ], [ 1.000000e+00, %9308 ]
  %9523 = phi float [ %9393, %9351 ], [ 1.000000e+00, %9308 ]
  %9524 = phi float [ %9517, %9351 ], [ 0.000000e+00, %9308 ]
  %9525 = phi float [ %9518, %9351 ], [ 0.000000e+00, %9308 ]
  %9526 = phi float [ %9519, %9351 ], [ 0.000000e+00, %9308 ]
  %9527 = fmul fast float %9524, %7872
  %9528 = fmul fast float %9525, %7872
  %9529 = fmul fast float %9526, %7872
  %9530 = fmul fast float %9521, %9315
  %9531 = call float @dx.op.dot3.f32(i32 55, float %9521, float %9522, float %9523, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9532 = call float @dx.op.dot3.f32(i32 55, float %9527, float %9528, float %9529, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9533 = select i1 %261, float %9531, float %9521
  %9534 = select i1 %261, float %9531, float %9522
  %9535 = select i1 %261, float 1.000000e+00, float %9523
  %9536 = select i1 %261, float %9532, float %9527
  %9537 = select i1 %261, float 0.000000e+00, float %9528
  %9538 = select i1 %261, float 0.000000e+00, float %9529
  %9539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9540 = extractvalue %dx.types.CBufRet.i32 %9539, 3
  %9541 = and i32 %9540, 3
  %9542 = icmp ne i32 %9541, 0
  %9543 = and i32 %9540, 4
  %9544 = icmp ne i32 %9543, 0
  %9545 = and i1 %9542, %9544
  %9546 = and i1 %261, %9545
  br i1 %9546, label %9547, label %9553

; <label>:9547                                    ; preds = %9520
  %9548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9549 = extractvalue %dx.types.CBufRet.f32 %9548, 1
  %9550 = fadd fast float %9530, -1.000000e+00
  %9551 = fmul fast float %9549, %9550
  %9552 = fadd fast float %9551, 1.000000e+00
  br label %9553

; <label>:9553                                    ; preds = %9547, %9520
  %9554 = phi float [ %9552, %9547 ], [ %9530, %9520 ]
  %9555 = fadd fast float %9312, %9309
  %9556 = fmul fast float %9533, %9555
  %9557 = fadd fast float %9556, %9536
  %9558 = fadd fast float %9313, %9310
  %9559 = fmul fast float %9534, %9558
  %9560 = fadd fast float %9559, %9537
  %9561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9562 = extractvalue %dx.types.CBufRet.f32 %9561, 0
  br i1 %261, label %9563, label %9587

; <label>:9563                                    ; preds = %9553
  %9564 = fadd fast float %9557, %9560
  %9565 = fmul fast float %9562, %9564
  %9566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9567 = extractvalue %dx.types.CBufRet.f32 %9566, 3
  %9568 = extractvalue %dx.types.CBufRet.f32 %7860, 1
  %9569 = fsub fast float %7865, %7859
  %9570 = fadd fast float %9569, %7866
  %9571 = fsub fast float %9570, %9568
  %9572 = extractvalue %dx.types.CBufRet.f32 %7860, 2
  %9573 = fmul fast float %9571, %9572
  %9574 = call float @dx.op.unary.f32(i32 7, float %9573)  ; Saturate(value)
  %9575 = fsub fast float %9574, %9567
  %9576 = fmul fast float %9575, %9554
  %9577 = fadd fast float %9576, %9567
  %9578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9579 = extractvalue %dx.types.CBufRet.f32 %9578, 0
  %9580 = fsub fast float %9577, %9579
  %9581 = fmul fast float %9580, 1.000000e+01
  %9582 = call float @dx.op.unary.f32(i32 7, float %9581)  ; Saturate(value)
  %9583 = fsub fast float %4299, %7872
  %9584 = fmul fast float %9582, %9583
  %9585 = fadd fast float %9584, %7872
  %9586 = fmul fast float %9585, %9577
  br label %9611

; <label>:9587                                    ; preds = %9553
  %9588 = fadd fast float %9314, %9311
  %9589 = fmul fast float %9535, %9588
  %9590 = fadd fast float %9589, %9538
  %9591 = fmul fast float %9562, %9557
  %9592 = fmul fast float %9562, %9560
  %9593 = fmul fast float %9562, %9590
  %9594 = call float @dx.op.binary.f32(i32 35, float %9592, float %9593)  ; FMax(a,b)
  %9595 = call float @dx.op.binary.f32(i32 35, float %9591, float %9594)  ; FMax(a,b)
  %9596 = call float @dx.op.binary.f32(i32 35, float %9595, float %7872)  ; FMax(a,b)
  %9597 = fcmp fast ugt float %9596, 0x3F10000000000000
  br i1 %9597, label %9599, label %9598

; <label>:9598                                    ; preds = %9587
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9599

; <label>:9599                                    ; preds = %9598, %9587
  %9600 = add i32 %60, 356
  %9601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9600, i32 undef)  ; BufferLoad(srv,index,wot)
  %9602 = extractvalue %dx.types.ResRet.i32 %9601, 0
  %9603 = and i32 %9602, 32
  %9604 = icmp eq i32 %9603, 0
  br i1 %9604, label %9611, label %9605

; <label>:9605                                    ; preds = %9599
  %9606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9607 = extractvalue %dx.types.CBufRet.f32 %9606, 0
  %9608 = fmul fast float %9607, 0x3FE99999A0000000
  %9609 = fadd fast float %9607, %9591
  %9610 = fadd fast float %9608, %9593
  br label %9611

; <label>:9611                                    ; preds = %9605, %9599, %9563
  %9612 = phi float [ %9565, %9563 ], [ %9609, %9605 ], [ %9591, %9599 ]
  %9613 = phi float [ %9586, %9563 ], [ %9592, %9605 ], [ %9592, %9599 ]
  %9614 = phi float [ %9585, %9563 ], [ %9610, %9605 ], [ %9593, %9599 ]
  %9615 = phi float [ %9585, %9563 ], [ %7872, %9605 ], [ %7872, %9599 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9616 = call float @dx.op.binary.f32(i32 36, float %9612, float 3.225500e+04)  ; FMin(a,b)
  %9617 = call float @dx.op.binary.f32(i32 36, float %9613, float 3.225500e+04)  ; FMin(a,b)
  %9618 = call float @dx.op.binary.f32(i32 36, float %9614, float 3.225500e+04)  ; FMin(a,b)
  %9619 = call float @dx.op.binary.f32(i32 36, float %9615, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9616)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9617)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9618)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9619)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!74}
!dx.entryPoints = !{!75}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !63, !66}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!32 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!33 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!34 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!35 = !{i32 28, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !36}
!36 = !{i32 0, i32 5}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!43 = !{i32 35, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!47 = !{i32 39, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !48}
!48 = !{i32 0, i32 14}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!55 = !{i32 46, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!56 = !{i32 47, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!57 = !{i32 48, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!58 = !{i32 49, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!59 = !{i32 50, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!60 = !{i32 51, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !48}
!61 = !{i32 52, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!62 = !{i32 53, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!63 = !{!64, !65}
!64 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!65 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!66 = !{!67, !68, !69, !70, !71, !72, !73}
!67 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!68 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!69 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!70 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!71 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!72 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!73 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!74 = !{[42 x i32] [i32 40, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !96}
!76 = !{!77, !94, null}
!77 = !{!78, !81, !82, !84, !86, !87, !88, !89, !90, !91, !93}
!78 = !{i32 0, !"SV_Position", i8 9, i8 3, !79, i8 4, i32 1, i8 4, i32 0, i8 0, !80}
!79 = !{i32 0}
!80 = !{i32 3, i32 15}
!81 = !{i32 1, !"COLOR", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 1, i8 0, !80}
!82 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 2, i8 0, !83}
!83 = !{i32 3, i32 3}
!84 = !{i32 3, !"NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 3, i8 0, !85}
!85 = !{i32 3, i32 7}
!86 = !{i32 4, !"TANGENT", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 4, i8 0, !80}
!87 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 5, i8 0, !85}
!88 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 6, i8 0, !80}
!89 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 2, i32 7, i8 0, !83}
!90 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 8, i8 0, !80}
!91 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !79, i8 1, i32 1, i8 4, i32 9, i8 0, !92}
!92 = !{i32 3, i32 13}
!93 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !79, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!94 = !{!95}
!95 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
!96 = !{i32 0, i64 16}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !99}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = !{!106, !106, i64 0}
!106 = !{!"int", !107, i64 0}
!107 = !{!"omnipotent char", !108, i64 0}
!108 = !{!"Simple C/C++ TBAA"}
!109 = !{!110, !112, !114, !116}
!110 = distinct !{!110, !111, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!111 = distinct !{!111, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!112 = distinct !{!112, !113, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!113 = distinct !{!113, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!114 = distinct !{!114, !115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!115 = distinct !{!115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!116 = distinct !{!116, !117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!117 = distinct !{!117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = !{!120, !120, i64 0}
!120 = !{!"float", !107, i64 0}
!121 = distinct !{!121, !99}
!122 = distinct !{!122, !99}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = !{!134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!134 = distinct !{!134, !135, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!135 = distinct !{!135, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!136 = distinct !{!136, !137, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!137 = distinct !{!137, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!138 = distinct !{!138, !137, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!139 = distinct !{!139, !140, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!140 = distinct !{!140, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!141 = distinct !{!141, !140, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!142 = distinct !{!142, !140, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!143 = distinct !{!143, !144, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!144 = distinct !{!144, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!145 = distinct !{!145, !144, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!146 = distinct !{!146, !144, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!147 = distinct !{!147, !148, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!148 = distinct !{!148, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"\01?sort@@YAXAIAM00@Z: %c"}
!151 = distinct !{!151, !"\01?sort@@YAXAIAM00@Z"}
!152 = !{!153, !154, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!153 = distinct !{!153, !151, !"\01?sort@@YAXAIAM00@Z: %a"}
!154 = distinct !{!154, !151, !"\01?sort@@YAXAIAM00@Z: %b"}
!155 = !{!154}
!156 = !{!153, !150, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!157 = !{!153}
!158 = !{!154, !150, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!159 = !{!160}
!160 = distinct !{!160, !161, !"\01?sort@@YAXAIAM00@Z: %c"}
!161 = distinct !{!161, !"\01?sort@@YAXAIAM00@Z"}
!162 = !{!163, !164, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!163 = distinct !{!163, !161, !"\01?sort@@YAXAIAM00@Z: %a"}
!164 = distinct !{!164, !161, !"\01?sort@@YAXAIAM00@Z: %b"}
!165 = !{!164}
!166 = !{!163, !160, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!167 = !{!163}
!168 = !{!164, !160, !134, !136, !138, !139, !141, !142, !143, !145, !146, !147}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 2}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}

