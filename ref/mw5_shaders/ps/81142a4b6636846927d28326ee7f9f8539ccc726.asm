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
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyz 
; DECAL_VOLUME_GRID_INDEX     0   x          12     NONE    uint   x   
; PACKED_TRI_DATA          0   xyzw       13     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 37a6a1eac194b462e4512eda6bd06cd1
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
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; DECAL_VOLUME_GRID_INDEX     0        nointerpolation       
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
;   [144 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          3d      T3     t52,space2     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture    byte         r/o      T5      t3,space1     1
;                                   texture    byte         r/o      T6      t4,space1     1
;                                   texture    byte         r/o      T7      t5,space1     1
;                                   texture    byte         r/o      T8      t6,space1     1
;                                   texture     f32          2d      T9     t69,space2     1
;                                   texture    byte         r/o     T10     t18,space1     1
;                                   texture    byte         r/o     T11     t19,space1     1
;                                   texture    byte         r/o     T12     t20,space1     1
;                                   texture    byte         r/o     T13     t21,space1     1
;                                   texture     f32          2d     T14     t37,space2     1
;                                   texture     f32          2d     T15             t0     1
;                                   texture     f32          2d     T16     t58,space2     1
;                                   texture     f32          2d     T17     t57,space2     1
;                                   texture    byte         r/o     T18     t69,space1     1
;                                   texture     u32          2d     T19     t56,space2     1
;                                   texture     f32     2darray     T20     t35,space2     1
;                                   texture     f32          2d     T21     t34,space2     1
;                                   texture     f32          3d     T22     t31,space2     1
;                                   texture     f32          2d     T23      t1,space2     1
;                                   texture     f32          2d     T24      t2,space2     1
;                                   texture     f32          2d     T25      t3,space2     1
;                                   texture     f32          2d     T26      t4,space2     1
;                                   textureunorm_f32     2darray     T27     t80,space2     1
;                                   texture    byte         r/o     T28     t67,space1     1
;                                   texture     f32          2d     T29      t7,space2     1
;                                   texture     f32          2d     T30      t6,space2     1
;                                   texture     f32          2d     T31      t5,space2     1
;                                   texture     f32          2d     T32     t38,space2     1
;                                   texture     f32          1d     T33     t30,space2     1
;                                   texture     f32          3d     T34     t44,space2     1
;                                   texture     f32          3d     T35     t45,space2     1
;                                   texture     f32     2darray     T36     t47,space2     1
;                                   textureunorm_f32     2darray     T37     t85,space2     1
;                                   texture     f32          2d     T38     t83,space2     1
;                                   texture     f32          2d     T39     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
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
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = alloca [4 x i32], align 4
  %48 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = alloca [12 x float], align 4
  %91 = alloca [12 x float], align 4
  %92 = alloca [4 x float], align 4
  %93 = alloca [4 x float], align 4
  %94 = alloca [4 x float], align 4
  %95 = alloca [4 x float], align 4
  %96 = alloca [3 x float], align 4
  %97 = alloca [3 x float], align 4
  %98 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %99 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = fmul fast float %101, %86
  %103 = fmul fast float %101, %87
  %104 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %105 = bitcast float %104 to i32
  %106 = ashr i32 %105, 1
  %107 = sub nsw i32 1597250115, %106
  %108 = bitcast i32 %107 to float
  %109 = fmul fast float %108, %77
  %110 = fmul fast float %108, %78
  %111 = fmul fast float %108, %79
  %112 = fmul fast float %78, %75
  %113 = fmul fast float %79, %74
  %114 = fsub fast float %112, %113
  %115 = fmul fast float %79, %73
  %116 = fmul fast float %77, %75
  %117 = fsub fast float %115, %116
  %118 = fmul fast float %77, %74
  %119 = fmul fast float %78, %73
  %120 = fsub fast float %118, %119
  %121 = fmul fast float %114, %76
  %122 = fmul fast float %117, %76
  %123 = fmul fast float %120, %76
  %124 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %125 = bitcast float %124 to i32
  %126 = ashr i32 %125, 1
  %127 = sub nsw i32 1597250115, %126
  %128 = bitcast i32 %127 to float
  %129 = fmul fast float %128, %66
  %130 = fmul fast float %128, %67
  %131 = fmul fast float %128, %68
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = fcmp fast une float %133, 0.000000e+00
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 3
  %138 = fmul fast float %102, 2.000000e+00
  %139 = fmul fast float %138, %136
  %140 = fmul fast float %103, 2.000000e+00
  %141 = fmul fast float %140, %137
  %142 = fsub fast float 1.000000e+00, %139
  %143 = fsub fast float 1.000000e+00, %141
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = select i1 %134, float %145, float %149
  %153 = select i1 %134, float %146, float %150
  %154 = select i1 %134, float %147, float %151
  %155 = fmul fast float %152, %142
  %156 = fmul fast float %153, %142
  %157 = fmul fast float %154, %142
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = select i1 %134, float %159, float %163
  %167 = select i1 %134, float %160, float %164
  %168 = select i1 %134, float %161, float %165
  %169 = fmul fast float %166, %143
  %170 = fmul fast float %167, %143
  %171 = fmul fast float %168, %143
  %172 = fadd fast float %169, %155
  %173 = fadd fast float %170, %156
  %174 = fadd fast float %171, %157
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %178 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %183 = select i1 %134, float %176, float %180
  %184 = select i1 %134, float %177, float %181
  %185 = select i1 %134, float %178, float %182
  %186 = fadd fast float %172, %183
  %187 = fadd fast float %173, %184
  %188 = fadd fast float %174, %185
  %189 = fmul fast float %186, %89
  %190 = fmul fast float %187, %89
  %191 = fmul fast float %188, %89
  %192 = fmul fast float %102, 5.000000e-01
  %193 = fmul fast float %103, 5.000000e-01
  %194 = fptosi float %192 to i32
  %195 = fptosi float %193 to i32
  %196 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %194, i32 %195, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = lshr i32 %197, 18
  %199 = uitofp i32 %198 to float
  %200 = fmul fast float %199, 0x3F4C00EBA0000000
  %201 = call float @dx.op.unary.f32(i32 21, float %200)  ; Exp(value)
  %202 = fadd fast float %201, -1.000000e+00
  %203 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %21, i32 0)  ; GetDimensions(handle,mipLevel)
  %204 = extractvalue %dx.types.Dimensions %203, 0
  %205 = sitofp i32 %204 to float
  %206 = extractvalue %dx.types.Dimensions %203, 1
  %207 = sitofp i32 %206 to float
  %208 = fcmp fast oge float %192, %205
  %209 = fcmp fast oge float %193, %207
  %210 = or i1 %208, %209
  %211 = select i1 %210, float 0x4197782600000000, float %202
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %215 = fmul fast float %213, %102
  %216 = fmul fast float %214, %103
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = and i32 %218, 114688
  %220 = icmp ne i32 %219, 0
  %221 = select i1 %220, float %215, float 0.000000e+00
  %222 = select i1 %220, float %216, float 0.000000e+00
  %223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %43, float %221, float %222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = fmul fast float %224, 2.550000e+02
  %226 = fptoui float %225 to i32
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.i32 %228, 3
  %230 = and i32 %229, 3
  %231 = icmp ne i32 %230, 0
  %232 = and i32 %229, 4
  %233 = icmp ne i32 %232, 0
  %234 = and i1 %231, %233
  br i1 %234, label %235, label %246

; <label>:235                                     ; preds = %0
  %236 = extractvalue %dx.types.CBufRet.f32 %227, 3
  %237 = fmul fast float %236, %103
  %238 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %239 = fmul fast float %238, %102
  %240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %42, float %239, float %237, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = fsub fast float 1.000000e+00, %241
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %245 = fcmp fast olt float %242, %244
  br label %249

; <label>:246                                     ; preds = %0
  %247 = icmp eq i32 %232, 0
  %248 = and i1 %231, %247
  br label %249

; <label>:249                                     ; preds = %246, %235
  %250 = phi i1 [ %245, %235 ], [ %248, %246 ]
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 2
  %253 = fmul fast float %252, 0x3FE3C6EF40000000
  %254 = frem fast float %102, 2.560000e+02
  %255 = frem fast float %103, 2.560000e+02
  %256 = fptoui float %254 to i32
  %257 = fptoui float %255 to i32
  %258 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %256, i32 %257, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = fadd fast float %259, %253
  %261 = call float @dx.op.unary.f32(i32 22, float %260)  ; Frc(value)
  %262 = add i32 %48, 156
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = shl i32 %264, 4
  %266 = and i32 %265, 32752
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %264, 7
  %269 = and i32 %268, 32752
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %264, 22
  %272 = shl nuw nsw i32 %271, 5
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = add i32 %48, 216
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = lshr i32 %276, 8
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = lshr i32 %276, 16
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = add i32 %48, 36
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 65535
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %290, 16
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %48, 288
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %297, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = fmul fast float %299, 0x3F50624DE0000000
  %303 = fmul fast float %301, 0x3F50624DE0000000
  %304 = add i32 %48, 172
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = shl i32 %306, 4
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %306, 7
  %311 = and i32 %310, 32752
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %306, 22
  %314 = shl nuw nsw i32 %313, 5
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %48, 232
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 255
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = lshr i32 %318, 8
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = lshr i32 %318, 16
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = add i32 %48, 52
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 65535
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %332, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %48, 304
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = fmul fast float %341, 0x3F50624DE0000000
  %345 = fmul fast float %343, 0x3F50624DE0000000
  %346 = add i32 %48, 188
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = shl i32 %348, 4
  %350 = and i32 %349, 32752
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %348, 7
  %353 = and i32 %352, 32752
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %348, 22
  %356 = shl nuw nsw i32 %355, 5
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = add i32 %48, 248
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 255
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %362, 0x3F70101020000000
  %364 = lshr i32 %360, 8
  %365 = and i32 %364, 255
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %366, 0x3F70101020000000
  %368 = lshr i32 %360, 16
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F70101020000000
  %372 = add i32 %48, 68
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 65535
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %374, 16
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = add i32 %48, 320
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 65535
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %381, 16
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = fmul fast float %383, 0x3F50624DE0000000
  %387 = fmul fast float %385, 0x3F50624DE0000000
  %388 = add i32 %48, 204
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = shl i32 %390, 4
  %392 = and i32 %391, 32752
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %390, 7
  %395 = and i32 %394, 32752
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %390, 22
  %398 = shl nuw nsw i32 %397, 5
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = add i32 %48, 264
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 255
  %404 = uitofp i32 %403 to float
  %405 = fmul fast float %404, 0x3F70101020000000
  %406 = lshr i32 %402, 8
  %407 = and i32 %406, 255
  %408 = uitofp i32 %407 to float
  %409 = fmul fast float %408, 0x3F70101020000000
  %410 = lshr i32 %402, 16
  %411 = and i32 %410, 255
  %412 = uitofp i32 %411 to float
  %413 = fmul fast float %412, 0x3F70101020000000
  %414 = add i32 %48, 84
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 65535
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = lshr i32 %416, 16
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = add i32 %48, 336
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %423, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = fmul fast float %425, 0x3F50624DE0000000
  %429 = fmul fast float %427, 0x3F50624DE0000000
  %430 = add i32 %48, 348
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 32
  %434 = icmp eq i32 %433, 0
  %435 = and i32 %432, 64
  %436 = icmp eq i32 %435, 0
  %437 = and i32 %432, 128
  %438 = icmp eq i32 %437, 0
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 2
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %458, label %443

; <label>:443                                     ; preds = %249
  %444 = add i32 %48, 492
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = add i32 %446, 0
  %448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %447, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %449 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %448, %dx.types.Handle %99, float %80, float %81, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = extractvalue %dx.types.ResRet.f32 %449, 3
  %454 = fmul fast float %453, %82
  %455 = fmul fast float %450, %83
  %456 = fmul fast float %451, %84
  %457 = fmul fast float %452, %85
  br label %458

; <label>:458                                     ; preds = %443, %249
  %459 = phi float [ %85, %249 ], [ %457, %443 ]
  %460 = phi float [ %84, %249 ], [ %456, %443 ]
  %461 = phi float [ %83, %249 ], [ %455, %443 ]
  %462 = phi float [ %82, %249 ], [ %454, %443 ]
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, 2
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %486, label %467

; <label>:467                                     ; preds = %458
  %468 = add i32 %48, 44
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 1
  %472 = icmp ne i32 %471, 0
  %473 = select i1 %472, float %461, float 1.000000e+00
  %474 = add i32 %48, 60
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 1
  %478 = icmp ne i32 %477, 0
  %479 = select i1 %478, float %460, float 1.000000e+00
  %480 = add i32 %48, 76
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 1
  %484 = icmp ne i32 %483, 0
  %485 = select i1 %484, float %459, float 1.000000e+00
  br label %486

; <label>:486                                     ; preds = %467, %458
  %487 = phi float [ %459, %458 ], [ %485, %467 ]
  %488 = phi float [ %460, %458 ], [ %479, %467 ]
  %489 = phi float [ %461, %458 ], [ %473, %467 ]
  %490 = lshr i32 %464, 20
  %491 = and i32 %490, 3
  %492 = add nuw nsw i32 %491, 1
  %493 = add i32 %48, 24
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = add i32 %48, 28
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = or i32 %498, %495
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %1035, label %501

; <label>:501                                     ; preds = %486
  %502 = and i32 %495, 262144
  %503 = icmp ne i32 %502, 0
  %504 = select i1 %503, float %53, float 1.000000e+00
  %505 = select i1 %503, float %54, float 0.000000e+00
  %506 = select i1 %503, float %55, float 0.000000e+00
  %507 = select i1 %503, float %56, float 1.000000e+00
  %508 = select i1 %503, float %57, float %80
  %509 = select i1 %503, float %58, float %81
  %510 = add i32 %48, 284
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = lshr i32 %512, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = fmul fast float %514, 0x3F50624DE0000000
  %516 = add i32 %48, 88
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = lshr i32 %518, 16
  %520 = and i32 %519, 255
  %521 = lshr i32 %518, 24
  %522 = add i32 %48, 292
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = and i32 %524, 65535
  %526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %525)  ; LegacyF16ToF32(value)
  %527 = lshr i32 %524, 16
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = add i32 %48, 32
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = lshr i32 %531, 22
  %533 = shl nuw nsw i32 %532, 5
  %534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %533)  ; LegacyF16ToF32(value)
  %535 = shl i32 %531, 4
  %536 = and i32 %535, 32752
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = lshr i32 %531, 7
  %539 = and i32 %538, 32752
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 3
  %543 = fmul fast float %542, 1.000000e+03
  %544 = fmul fast float %302, %543
  %545 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %546 = fadd fast float %545, %292
  %547 = fmul fast float %303, %543
  %548 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %549 = fadd fast float %548, %294
  %550 = fmul fast float %515, %543
  %551 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %552 = fmul fast float %551, 0x401921FB60000000
  %553 = fadd fast float %552, %534
  %554 = call float @dx.op.unary.f32(i32 13, float %553)  ; Sin(value)
  %555 = call float @dx.op.unary.f32(i32 12, float %553)  ; Cos(value)
  %556 = fsub fast float -0.000000e+00, %554
  %557 = fadd fast float %508, -5.000000e-01
  %558 = fadd fast float %509, -5.000000e-01
  %559 = fmul fast float %526, %557
  %560 = fmul fast float %528, %558
  %561 = fadd fast float %559, 5.000000e-01
  %562 = fadd fast float %560, 5.000000e-01
  %563 = fmul fast float %537, %561
  %564 = fmul fast float %540, %562
  %565 = fmul fast float %555, %563
  %566 = call float @dx.op.tertiary.f32(i32 46, float %556, float %564, float %565)  ; FMad(a,b,c)
  %567 = fmul fast float %554, %563
  %568 = call float @dx.op.tertiary.f32(i32 46, float %555, float %564, float %567)  ; FMad(a,b,c)
  %569 = fadd fast float %546, %566
  %570 = fadd fast float %549, %568
  %571 = icmp ugt i32 %520, 1
  %572 = icmp ugt i32 %518, 33554431
  %573 = or i1 %572, %571
  br i1 %573, label %574, label %599

; <label>:574                                     ; preds = %501
  %575 = add i32 %48, 228
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = lshr i32 %577, 16
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = fmul fast float %542, %579
  %581 = call float @dx.op.unary.f32(i32 22, float %580)  ; Frc(value)
  %582 = mul nuw nsw i32 %520, %521
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %581, %583
  %585 = call float @dx.op.unary.f32(i32 27, float %584)  ; Round_ni(value)
  %586 = fptoui float %585 to i32
  %587 = urem i32 %586, %520
  %588 = udiv i32 %586, %521
  %589 = call float @dx.op.unary.f32(i32 22, float %569)  ; Frc(value)
  %590 = call float @dx.op.unary.f32(i32 22, float %570)  ; Frc(value)
  %591 = uitofp i32 %587 to float
  %592 = uitofp i32 %588 to float
  %593 = fadd fast float %589, %591
  %594 = fadd fast float %590, %592
  %595 = uitofp i32 %520 to float
  %596 = uitofp i32 %521 to float
  %597 = fdiv fast float %593, %595
  %598 = fdiv fast float %594, %596
  br label %599

; <label>:599                                     ; preds = %574, %501
  %600 = phi float [ %597, %574 ], [ %569, %501 ]
  %601 = phi float [ %598, %574 ], [ %570, %501 ]
  %602 = and i32 %495, 256
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %650, label %604

; <label>:604                                     ; preds = %599
  %605 = add i32 %48, 440
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = add i32 %607, 0
  %609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %610 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %609, %dx.types.Handle %99, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = add i32 %48, 100
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = shl i32 %614, 4
  %616 = and i32 %615, 32752
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = lshr i32 %614, 7
  %619 = and i32 %618, 32752
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = fsub fast float 1.000000e+00, %462
  %622 = call float @dx.op.binary.f32(i32 35, float %621, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %623 = bitcast float %462 to i32
  %624 = sitofp i32 %623 to float
  %625 = fadd fast float %624, 0xC1CFBF8940000000
  %626 = fmul fast float %620, %625
  %627 = fadd fast float %626, 0x41CFBF8940000000
  %628 = fptosi float %627 to i32
  %629 = bitcast i32 %628 to float
  %630 = bitcast float %622 to i32
  %631 = sitofp i32 %630 to float
  %632 = fadd fast float %631, 0xC1CFBF8940000000
  %633 = fmul fast float %632, %620
  %634 = fadd fast float %633, 0x41CFBF8940000000
  %635 = fptosi float %634 to i32
  %636 = bitcast i32 %635 to float
  %637 = fmul fast float %629, %617
  %638 = fmul fast float %636, %617
  %639 = fsub fast float %622, %637
  %640 = fadd fast float %638, %622
  %641 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  %642 = call float @dx.op.unary.f32(i32 7, float %640)  ; Saturate(value)
  %643 = fsub fast float %611, %641
  %644 = fsub fast float %642, %641
  %645 = bitcast float %644 to i32
  %646 = sub nsw i32 2129859010, %645
  %647 = bitcast i32 %646 to float
  %648 = fmul fast float %647, %643
  %649 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  br label %650

; <label>:650                                     ; preds = %604, %599
  %651 = phi float [ %649, %604 ], [ %462, %599 ]
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = and i32 %653, 128
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %672, label %656

; <label>:656                                     ; preds = %650
  %657 = add i32 %48, 424
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = add i32 %659, 0
  %661 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %660, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %662 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %661, %dx.types.Handle %99, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %663 = extractvalue %dx.types.ResRet.f32 %662, 0
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = and i32 %665, 524288
  %667 = icmp ne i32 %666, 0
  %668 = fcmp fast ogt float %663, 0x3FE0101020000000
  %669 = select i1 %668, float 1.000000e+00, float 0.000000e+00
  %670 = select i1 %667, float %669, float %663
  %671 = fmul fast float %670, %651
  br label %672

; <label>:672                                     ; preds = %656, %650
  %673 = phi float [ %671, %656 ], [ %651, %650 ]
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = and i32 %675, 16
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %876, label %678

; <label>:678                                     ; preds = %672
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = add i32 %48, 376
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %681, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = add i32 %683, 0
  %685 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %684, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %686 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %685, %dx.types.Handle %98, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %687 = extractvalue %dx.types.ResRet.f32 %686, 0
  %688 = extractvalue %dx.types.ResRet.f32 %686, 1
  %689 = extractvalue %dx.types.ResRet.f32 %686, 2
  %690 = extractvalue %dx.types.ResRet.f32 %686, 3
  %691 = and i32 %680, 255
  %692 = uitofp i32 %691 to float
  %693 = lshr i32 %680, 8
  %694 = and i32 %693, 255
  %695 = uitofp i32 %694 to float
  %696 = fmul fast float %690, %692
  %697 = fadd fast float %696, %695
  %698 = fmul fast float %697, 0x3F70101000000000
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = and i32 %700, 512
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %711, label %703

; <label>:703                                     ; preds = %678
  %704 = add i32 %48, 460
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = add i32 %706, 0
  %708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %707, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %709 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %708, %dx.types.Handle %99, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  br label %711

; <label>:711                                     ; preds = %703, %678
  %712 = phi float [ %710, %703 ], [ 1.000000e+00, %678 ]
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 33554432
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %823, label %717

; <label>:717                                     ; preds = %711
  %718 = add i32 %48, 224
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = and i32 %720, 65535
  %722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %721)  ; LegacyF16ToF32(value)
  %723 = lshr i32 %720, 16
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = add i32 %48, 228
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 65535
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = lshr i32 %731, 24
  %733 = uitofp i32 %732 to float
  %734 = fmul fast float %733, 0x3F70101020000000
  %735 = and i32 %731, 255
  %736 = uitofp i32 %735 to float
  %737 = fmul fast float %736, 0x3F70101020000000
  %738 = lshr i32 %731, 8
  %739 = and i32 %738, 255
  %740 = uitofp i32 %739 to float
  %741 = fmul fast float %740, 0x3F70101020000000
  %742 = lshr i32 %731, 16
  %743 = and i32 %742, 255
  %744 = uitofp i32 %743 to float
  %745 = fmul fast float %744, 0x3F70101020000000
  %746 = add i32 %48, 220
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = lshr i32 %748, 24
  %750 = uitofp i32 %749 to float
  %751 = fmul fast float %750, 0x3F70101020000000
  %752 = and i32 %748, 255
  %753 = uitofp i32 %752 to float
  %754 = fmul fast float %753, 0x3F70101020000000
  %755 = lshr i32 %748, 8
  %756 = and i32 %755, 255
  %757 = uitofp i32 %756 to float
  %758 = fmul fast float %757, 0x3F70101020000000
  %759 = lshr i32 %748, 16
  %760 = and i32 %759, 255
  %761 = uitofp i32 %760 to float
  %762 = fmul fast float %761, 0x3F70101020000000
  %763 = bitcast float %687 to i32
  %764 = ashr i32 %763, 1
  %765 = sub nsw i32 1597463174, %764
  %766 = bitcast i32 %765 to float
  %767 = fmul fast float %687, 5.000000e-01
  %768 = fmul fast float %766, %766
  %769 = fmul fast float %768, %767
  %770 = fsub fast float 1.500000e+00, %769
  %771 = fmul fast float %766, %687
  %772 = fmul fast float %771, %770
  %773 = bitcast float %688 to i32
  %774 = ashr i32 %773, 1
  %775 = sub nsw i32 1597463174, %774
  %776 = bitcast i32 %775 to float
  %777 = fmul fast float %688, 5.000000e-01
  %778 = fmul fast float %776, %776
  %779 = fmul fast float %778, %777
  %780 = fsub fast float 1.500000e+00, %779
  %781 = fmul fast float %776, %688
  %782 = fmul fast float %781, %780
  %783 = bitcast float %689 to i32
  %784 = ashr i32 %783, 1
  %785 = sub nsw i32 1597463174, %784
  %786 = bitcast i32 %785 to float
  %787 = fmul fast float %689, 5.000000e-01
  %788 = fmul fast float %786, %786
  %789 = fmul fast float %788, %787
  %790 = fsub fast float 1.500000e+00, %789
  %791 = fmul fast float %786, %689
  %792 = fmul fast float %791, %790
  %793 = fsub fast float %772, %754
  %794 = fsub fast float %782, %758
  %795 = fsub fast float %792, %762
  %796 = fmul fast float %793, %722
  %797 = fmul fast float %794, %724
  %798 = fmul fast float %795, %729
  %799 = fadd fast float %796, %737
  %800 = fadd fast float %797, %741
  %801 = fadd fast float %798, %745
  %802 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  %803 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %804 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %805 = fmul fast float %802, %802
  %806 = fmul fast float %803, %803
  %807 = fmul fast float %804, %804
  %808 = fsub fast float %805, %687
  %809 = fsub fast float %806, %688
  %810 = fsub fast float %807, %689
  %811 = fmul fast float %808, %712
  %812 = fmul fast float %809, %712
  %813 = fmul fast float %810, %712
  %814 = fadd fast float %811, %687
  %815 = fadd fast float %812, %688
  %816 = fadd fast float %813, %689
  %817 = fadd fast float %734, %698
  %818 = fsub fast float %817, %751
  %819 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %820 = fsub fast float %819, %698
  %821 = fmul fast float %820, %712
  %822 = fadd fast float %821, %698
  br label %876

; <label>:823                                     ; preds = %711
  %824 = and i32 %714, 134217728
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %860, label %826

; <label>:826                                     ; preds = %823
  %827 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %828 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %829 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %830 = fadd fast float %827, -5.000000e-01
  %831 = fadd fast float %828, -5.000000e-01
  %832 = fadd fast float %829, -5.000000e-01
  %833 = fmul fast float %830, %712
  %834 = fmul fast float %831, %712
  %835 = fmul fast float %832, %712
  %836 = fadd fast float %833, 5.000000e-01
  %837 = fadd fast float %834, 5.000000e-01
  %838 = fadd fast float %835, 5.000000e-01
  %839 = call float @dx.op.unary.f32(i32 24, float %687)  ; Sqrt(value)
  %840 = call float @dx.op.unary.f32(i32 24, float %688)  ; Sqrt(value)
  %841 = call float @dx.op.unary.f32(i32 24, float %689)  ; Sqrt(value)
  %842 = fmul fast float %836, 2.000000e+00
  %843 = fsub fast float 1.000000e+00, %842
  %844 = fmul fast float %843, %839
  %845 = fadd fast float %844, %842
  %846 = fmul fast float %845, %839
  %847 = fmul fast float %837, 2.000000e+00
  %848 = fsub fast float 1.000000e+00, %847
  %849 = fmul fast float %848, %840
  %850 = fadd fast float %849, %847
  %851 = fmul fast float %850, %840
  %852 = fmul fast float %838, 2.000000e+00
  %853 = fsub fast float 1.000000e+00, %852
  %854 = fmul fast float %853, %841
  %855 = fadd fast float %854, %852
  %856 = fmul fast float %855, %841
  %857 = fmul fast float %846, %846
  %858 = fmul fast float %851, %851
  %859 = fmul fast float %856, %856
  br label %876

; <label>:860                                     ; preds = %823
  %861 = fmul fast float %279, %279
  %862 = fmul fast float %283, %283
  %863 = fmul fast float %287, %287
  %864 = fadd fast float %861, -1.000000e+00
  %865 = fadd fast float %862, -1.000000e+00
  %866 = fadd fast float %863, -1.000000e+00
  %867 = fmul fast float %712, %864
  %868 = fmul fast float %712, %865
  %869 = fmul fast float %712, %866
  %870 = fadd fast float %867, 1.000000e+00
  %871 = fadd fast float %868, 1.000000e+00
  %872 = fadd fast float %869, 1.000000e+00
  %873 = fmul fast float %870, %687
  %874 = fmul fast float %871, %688
  %875 = fmul fast float %872, %689
  br label %876

; <label>:876                                     ; preds = %860, %826, %717, %672
  %877 = phi float [ %822, %717 ], [ %698, %826 ], [ %698, %860 ], [ 0x3FA23C0BE0000000, %672 ]
  %878 = phi float [ %814, %717 ], [ %857, %826 ], [ %873, %860 ], [ 1.000000e+00, %672 ]
  %879 = phi float [ %815, %717 ], [ %858, %826 ], [ %874, %860 ], [ 1.000000e+00, %672 ]
  %880 = phi float [ %816, %717 ], [ %859, %826 ], [ %875, %860 ], [ 1.000000e+00, %672 ]
  %881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.i32 %881, 1
  %883 = and i32 %882, 1
  %884 = icmp ne i32 %883, 0
  %885 = add i32 %48, 356
  %886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.i32 %886, 0
  %888 = and i32 %887, 32
  %889 = icmp ne i32 %888, 0
  %890 = and i1 %884, %889
  %891 = select i1 %890, float 1.000000e+00, float %878
  %892 = select i1 %890, float 0x3FD3333340000000, float %879
  %893 = select i1 %890, float 0x3FD3333340000000, float %880
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = and i32 %895, 32
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %970, label %898

; <label>:898                                     ; preds = %876
  %899 = add i32 %48, 92
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = add i32 %48, 392
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = add i32 %904, 0
  %906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %905, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %907 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %906, %dx.types.Handle %98, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %908 = extractvalue %dx.types.ResRet.f32 %907, 0
  %909 = extractvalue %dx.types.ResRet.f32 %907, 1
  %910 = extractvalue %dx.types.ResRet.f32 %907, 2
  %911 = extractvalue %dx.types.ResRet.f32 %907, 3
  %912 = and i32 %901, 255
  %913 = uitofp i32 %912 to float
  %914 = lshr i32 %901, 8
  %915 = and i32 %914, 255
  %916 = uitofp i32 %915 to float
  %917 = lshr i32 %901, 16
  %918 = and i32 %917, 255
  %919 = uitofp i32 %918 to float
  %920 = fmul fast float %919, 0x3F70101000000000
  %921 = fmul fast float %908, %913
  %922 = fadd fast float %921, %916
  %923 = fmul fast float %922, 0x3F70101000000000
  %924 = fadd fast float %909, -5.000000e-01
  %925 = fadd fast float %911, -5.000000e-01
  %926 = fmul fast float %924, %920
  %927 = fmul fast float %925, %920
  %928 = fadd fast float %926, 5.000000e-01
  %929 = fadd fast float %927, 5.000000e-01
  %930 = fmul fast float %928, 2.000000e+00
  %931 = fadd fast float %930, -1.000000e+00
  %932 = fmul fast float %929, 2.000000e+00
  %933 = fadd fast float %932, -1.000000e+00
  %934 = fadd fast float %931, %933
  %935 = fmul fast float %934, 5.000000e-01
  %936 = fsub fast float %931, %933
  %937 = fmul fast float %936, 5.000000e-01
  %938 = call float @dx.op.unary.f32(i32 6, float %935)  ; FAbs(value)
  %939 = fsub fast float 1.000000e+00, %938
  %940 = call float @dx.op.unary.f32(i32 6, float %937)  ; FAbs(value)
  %941 = fsub fast float %939, %940
  %942 = call float @dx.op.dot3.f32(i32 55, float %935, float %937, float %941, float %935, float %937, float %941)  ; Dot3(ax,ay,az,bx,by,bz)
  %943 = call float @dx.op.unary.f32(i32 25, float %942)  ; Rsqrt(value)
  %944 = fmul fast float %935, %943
  %945 = fmul fast float %937, %943
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = and i32 %947, 67108864
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %966, label %950

; <label>:950                                     ; preds = %898
  %951 = add i32 %48, 280
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = and i32 %953, 65535
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = and i32 %957, 65535
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = lshr i32 %953, 16
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  %962 = fsub fast float %923, %961
  %963 = fmul fast float %962, %955
  %964 = fadd fast float %963, %959
  %965 = call float @dx.op.unary.f32(i32 7, float %964)  ; Saturate(value)
  br label %966

; <label>:966                                     ; preds = %950, %898
  %967 = phi float [ %965, %950 ], [ %923, %898 ]
  %968 = call float @dx.op.dot2.f32(i32 54, float %944, float %945, float %504, float %505)  ; Dot2(ax,ay,bx,by)
  %969 = call float @dx.op.dot2.f32(i32 54, float %944, float %945, float %506, float %507)  ; Dot2(ax,ay,bx,by)
  br label %970

; <label>:970                                     ; preds = %966, %876
  %971 = phi float [ %967, %966 ], [ 0x3FD6666660000000, %876 ]
  %972 = phi float [ %968, %966 ], [ 0.000000e+00, %876 ]
  %973 = phi float [ %969, %966 ], [ 0.000000e+00, %876 ]
  %974 = phi float [ %910, %966 ], [ 1.000000e+00, %876 ]
  %975 = add i32 %48, 160
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = lshr i32 %977, 22
  %979 = shl nuw nsw i32 %978, 5
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = and i32 %982, 64
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %1018, label %985

; <label>:985                                     ; preds = %970
  %986 = add i32 %48, 408
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = add i32 %988, 0
  %990 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %989, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = and i32 %992, 131072
  %994 = icmp eq i32 %993, 0
  %995 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %990, %dx.types.Handle %98, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  %997 = extractvalue %dx.types.ResRet.f32 %995, 1
  %998 = extractvalue %dx.types.ResRet.f32 %995, 2
  %999 = fmul fast float %996, %267
  %1000 = fmul fast float %997, %270
  %1001 = fmul fast float %998, %273
  br i1 %994, label %1008, label %1002

; <label>:1002                                    ; preds = %985
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 0
  %1005 = fmul fast float %1004, %999
  %1006 = fmul fast float %1004, %1000
  %1007 = fmul fast float %1004, %1001
  br label %1008

; <label>:1008                                    ; preds = %1002, %985
  %1009 = phi float [ %1005, %1002 ], [ %999, %985 ]
  %1010 = phi float [ %1006, %1002 ], [ %1000, %985 ]
  %1011 = phi float [ %1007, %1002 ], [ %1001, %985 ]
  %1012 = fmul fast float %1009, %980
  %1013 = select i1 %250, float %1012, float %1009
  %1014 = call float @dx.op.dot3.f32(i32 55, float %1013, float %1010, float %1011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1015 = select i1 %250, float 0.000000e+00, float %1009
  %1016 = select i1 %250, float %1014, float %1010
  %1017 = select i1 %250, float 0.000000e+00, float %1011
  br label %1018

; <label>:1018                                    ; preds = %1008, %970
  %1019 = phi float [ %1015, %1008 ], [ 0.000000e+00, %970 ]
  %1020 = phi float [ %1016, %1008 ], [ 0.000000e+00, %970 ]
  %1021 = phi float [ %1017, %1008 ], [ 0.000000e+00, %970 ]
  %1022 = add i32 %48, 96
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = and i32 %1024, 255
  %1026 = uitofp i32 %1025 to float
  %1027 = lshr i32 %1024, 8
  %1028 = and i32 %1027, 255
  %1029 = uitofp i32 %1028 to float
  %1030 = call float @dx.op.dot3.f32(i32 55, float %891, float %892, float %893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1031 = fmul fast float %1029, %1030
  %1032 = fadd fast float %1031, %1026
  %1033 = fmul fast float %1032, 0x3F70101020000000
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  br label %1035

; <label>:1035                                    ; preds = %1018, %486
  %1036 = phi float [ 0.000000e+00, %486 ], [ %972, %1018 ]
  %1037 = phi float [ 0.000000e+00, %486 ], [ %973, %1018 ]
  %1038 = phi float [ 0.000000e+00, %486 ], [ %891, %1018 ]
  %1039 = phi float [ 0.000000e+00, %486 ], [ %892, %1018 ]
  %1040 = phi float [ 0.000000e+00, %486 ], [ %893, %1018 ]
  %1041 = phi float [ 0.000000e+00, %486 ], [ %1019, %1018 ]
  %1042 = phi float [ 0.000000e+00, %486 ], [ %1020, %1018 ]
  %1043 = phi float [ 0.000000e+00, %486 ], [ %1021, %1018 ]
  %1044 = phi float [ 0.000000e+00, %486 ], [ %877, %1018 ]
  %1045 = phi float [ 0.000000e+00, %486 ], [ %673, %1018 ]
  %1046 = phi float [ 0.000000e+00, %486 ], [ %971, %1018 ]
  %1047 = phi float [ 0.000000e+00, %486 ], [ %974, %1018 ]
  %1048 = phi float [ 0.000000e+00, %486 ], [ %1034, %1018 ]
  br i1 %434, label %1775, label %1049

; <label>:1049                                    ; preds = %1035
  %1050 = icmp ult i32 %492, 2
  %1051 = add i32 %48, 40
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = add i32 %48, 44
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = or i32 %1056, %1053
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1775, label %1059

; <label>:1059                                    ; preds = %1049
  %1060 = and i32 %1053, 262144
  %1061 = icmp ne i32 %1060, 0
  %1062 = select i1 %1061, float %53, float 1.000000e+00
  %1063 = select i1 %1061, float %54, float 0.000000e+00
  %1064 = select i1 %1061, float %55, float 0.000000e+00
  %1065 = select i1 %1061, float %56, float 1.000000e+00
  %1066 = select i1 %1061, float %57, float %80
  %1067 = select i1 %1061, float %58, float %81
  %1068 = add i32 %48, 300
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = lshr i32 %1070, 16
  %1072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1071)  ; LegacyF16ToF32(value)
  %1073 = fmul fast float %1072, 0x3F50624DE0000000
  %1074 = add i32 %48, 104
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = lshr i32 %1076, 16
  %1078 = and i32 %1077, 255
  %1079 = lshr i32 %1076, 24
  %1080 = add i32 %48, 308
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = and i32 %1082, 65535
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = lshr i32 %1082, 16
  %1086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1085)  ; LegacyF16ToF32(value)
  %1087 = add i32 %48, 48
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = lshr i32 %1089, 22
  %1091 = shl nuw nsw i32 %1090, 5
  %1092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1091)  ; LegacyF16ToF32(value)
  %1093 = shl i32 %1089, 4
  %1094 = and i32 %1093, 32752
  %1095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1094)  ; LegacyF16ToF32(value)
  %1096 = lshr i32 %1089, 7
  %1097 = and i32 %1096, 32752
  %1098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1097)  ; LegacyF16ToF32(value)
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 3
  %1101 = fmul fast float %1100, 1.000000e+03
  %1102 = fmul fast float %344, %1101
  %1103 = call float @dx.op.unary.f32(i32 22, float %1102)  ; Frc(value)
  %1104 = fadd fast float %1103, %334
  %1105 = fmul fast float %345, %1101
  %1106 = call float @dx.op.unary.f32(i32 22, float %1105)  ; Frc(value)
  %1107 = fadd fast float %1106, %336
  %1108 = fmul fast float %1073, %1101
  %1109 = call float @dx.op.unary.f32(i32 22, float %1108)  ; Frc(value)
  %1110 = fmul fast float %1109, 0x401921FB60000000
  %1111 = fadd fast float %1110, %1092
  %1112 = call float @dx.op.unary.f32(i32 13, float %1111)  ; Sin(value)
  %1113 = call float @dx.op.unary.f32(i32 12, float %1111)  ; Cos(value)
  %1114 = fsub fast float -0.000000e+00, %1112
  %1115 = fadd fast float %1066, -5.000000e-01
  %1116 = fadd fast float %1067, -5.000000e-01
  %1117 = fmul fast float %1084, %1115
  %1118 = fmul fast float %1086, %1116
  %1119 = fadd fast float %1117, 5.000000e-01
  %1120 = fadd fast float %1118, 5.000000e-01
  %1121 = fmul fast float %1095, %1119
  %1122 = fmul fast float %1098, %1120
  %1123 = fmul fast float %1113, %1121
  %1124 = call float @dx.op.tertiary.f32(i32 46, float %1114, float %1122, float %1123)  ; FMad(a,b,c)
  %1125 = fmul fast float %1112, %1121
  %1126 = call float @dx.op.tertiary.f32(i32 46, float %1113, float %1122, float %1125)  ; FMad(a,b,c)
  %1127 = fadd fast float %1104, %1124
  %1128 = fadd fast float %1107, %1126
  %1129 = icmp ugt i32 %1078, 1
  %1130 = icmp ugt i32 %1076, 33554431
  %1131 = or i1 %1130, %1129
  br i1 %1131, label %1132, label %1157

; <label>:1132                                    ; preds = %1059
  %1133 = add i32 %48, 244
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = lshr i32 %1135, 16
  %1137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1136)  ; LegacyF16ToF32(value)
  %1138 = fmul fast float %1100, %1137
  %1139 = call float @dx.op.unary.f32(i32 22, float %1138)  ; Frc(value)
  %1140 = mul nuw nsw i32 %1078, %1079
  %1141 = uitofp i32 %1140 to float
  %1142 = fmul fast float %1139, %1141
  %1143 = call float @dx.op.unary.f32(i32 27, float %1142)  ; Round_ni(value)
  %1144 = fptoui float %1143 to i32
  %1145 = urem i32 %1144, %1078
  %1146 = udiv i32 %1144, %1079
  %1147 = call float @dx.op.unary.f32(i32 22, float %1127)  ; Frc(value)
  %1148 = call float @dx.op.unary.f32(i32 22, float %1128)  ; Frc(value)
  %1149 = uitofp i32 %1145 to float
  %1150 = uitofp i32 %1146 to float
  %1151 = fadd fast float %1147, %1149
  %1152 = fadd fast float %1148, %1150
  %1153 = uitofp i32 %1078 to float
  %1154 = uitofp i32 %1079 to float
  %1155 = fdiv fast float %1151, %1153
  %1156 = fdiv fast float %1152, %1154
  br label %1157

; <label>:1157                                    ; preds = %1132, %1059
  %1158 = phi float [ %1155, %1132 ], [ %1127, %1059 ]
  %1159 = phi float [ %1156, %1132 ], [ %1128, %1059 ]
  %1160 = and i32 %1053, 256
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %1208, label %1162

; <label>:1162                                    ; preds = %1157
  %1163 = add i32 %48, 444
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = add i32 %1165, 0
  %1167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1167, %dx.types.Handle %99, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = add i32 %48, 116
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = shl i32 %1172, 4
  %1174 = and i32 %1173, 32752
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1176 = lshr i32 %1172, 7
  %1177 = and i32 %1176, 32752
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = fsub fast float 1.000000e+00, %489
  %1180 = call float @dx.op.binary.f32(i32 35, float %1179, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1181 = bitcast float %489 to i32
  %1182 = sitofp i32 %1181 to float
  %1183 = fadd fast float %1182, 0xC1CFBF8940000000
  %1184 = fmul fast float %1178, %1183
  %1185 = fadd fast float %1184, 0x41CFBF8940000000
  %1186 = fptosi float %1185 to i32
  %1187 = bitcast i32 %1186 to float
  %1188 = bitcast float %1180 to i32
  %1189 = sitofp i32 %1188 to float
  %1190 = fadd fast float %1189, 0xC1CFBF8940000000
  %1191 = fmul fast float %1190, %1178
  %1192 = fadd fast float %1191, 0x41CFBF8940000000
  %1193 = fptosi float %1192 to i32
  %1194 = bitcast i32 %1193 to float
  %1195 = fmul fast float %1187, %1175
  %1196 = fmul fast float %1194, %1175
  %1197 = fsub fast float %1180, %1195
  %1198 = fadd fast float %1196, %1180
  %1199 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1200 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1201 = fsub fast float %1169, %1199
  %1202 = fsub fast float %1200, %1199
  %1203 = bitcast float %1202 to i32
  %1204 = sub nsw i32 2129859010, %1203
  %1205 = bitcast i32 %1204 to float
  %1206 = fmul fast float %1205, %1201
  %1207 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  br label %1208

; <label>:1208                                    ; preds = %1162, %1157
  %1209 = phi float [ %1207, %1162 ], [ %489, %1157 ]
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = and i32 %1211, 128
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1230, label %1214

; <label>:1214                                    ; preds = %1208
  %1215 = add i32 %48, 428
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = add i32 %1217, 0
  %1219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1218, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1220 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1219, %dx.types.Handle %99, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = and i32 %1223, 524288
  %1225 = icmp ne i32 %1224, 0
  %1226 = fcmp fast ogt float %1221, 0x3FE0101020000000
  %1227 = select i1 %1226, float 1.000000e+00, float 0.000000e+00
  %1228 = select i1 %1225, float %1227, float %1221
  %1229 = fmul fast float %1228, %1209
  br label %1230

; <label>:1230                                    ; preds = %1214, %1208
  %1231 = phi float [ %1229, %1214 ], [ %1209, %1208 ]
  %1232 = fcmp fast ult float %1231, 0x3F70101020000000
  br i1 %1232, label %1775, label %1233

; <label>:1233                                    ; preds = %1230
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = and i32 %1235, 16
  %1237 = icmp eq i32 %1236, 0
  br i1 %1237, label %1436, label %1238

; <label>:1238                                    ; preds = %1233
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = add i32 %48, 380
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = add i32 %1243, 0
  %1245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1244, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1246 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1245, %dx.types.Handle %98, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  %1248 = extractvalue %dx.types.ResRet.f32 %1246, 1
  %1249 = extractvalue %dx.types.ResRet.f32 %1246, 2
  %1250 = extractvalue %dx.types.ResRet.f32 %1246, 3
  %1251 = and i32 %1240, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = lshr i32 %1240, 8
  %1254 = and i32 %1253, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = fmul fast float %1250, %1252
  %1257 = fadd fast float %1256, %1255
  %1258 = fmul fast float %1257, 0x3F70101000000000
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = and i32 %1260, 512
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1271, label %1263

; <label>:1263                                    ; preds = %1238
  %1264 = add i32 %48, 464
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = add i32 %1266, 0
  %1268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1268, %dx.types.Handle %99, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  br label %1271

; <label>:1271                                    ; preds = %1263, %1238
  %1272 = phi float [ %1270, %1263 ], [ 1.000000e+00, %1238 ]
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = and i32 %1274, 33554432
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1383, label %1277

; <label>:1277                                    ; preds = %1271
  %1278 = add i32 %48, 240
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = and i32 %1280, 65535
  %1282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1281)  ; LegacyF16ToF32(value)
  %1283 = lshr i32 %1280, 16
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = add i32 %48, 244
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = and i32 %1287, 65535
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = lshr i32 %1291, 24
  %1293 = uitofp i32 %1292 to float
  %1294 = fmul fast float %1293, 0x3F70101020000000
  %1295 = and i32 %1291, 255
  %1296 = uitofp i32 %1295 to float
  %1297 = fmul fast float %1296, 0x3F70101020000000
  %1298 = lshr i32 %1291, 8
  %1299 = and i32 %1298, 255
  %1300 = uitofp i32 %1299 to float
  %1301 = fmul fast float %1300, 0x3F70101020000000
  %1302 = lshr i32 %1291, 16
  %1303 = and i32 %1302, 255
  %1304 = uitofp i32 %1303 to float
  %1305 = fmul fast float %1304, 0x3F70101020000000
  %1306 = add i32 %48, 236
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = lshr i32 %1308, 24
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1310, 0x3F70101020000000
  %1312 = and i32 %1308, 255
  %1313 = uitofp i32 %1312 to float
  %1314 = fmul fast float %1313, 0x3F70101020000000
  %1315 = lshr i32 %1308, 8
  %1316 = and i32 %1315, 255
  %1317 = uitofp i32 %1316 to float
  %1318 = fmul fast float %1317, 0x3F70101020000000
  %1319 = lshr i32 %1308, 16
  %1320 = and i32 %1319, 255
  %1321 = uitofp i32 %1320 to float
  %1322 = fmul fast float %1321, 0x3F70101020000000
  %1323 = bitcast float %1247 to i32
  %1324 = ashr i32 %1323, 1
  %1325 = sub nsw i32 1597463174, %1324
  %1326 = bitcast i32 %1325 to float
  %1327 = fmul fast float %1247, 5.000000e-01
  %1328 = fmul fast float %1326, %1326
  %1329 = fmul fast float %1328, %1327
  %1330 = fsub fast float 1.500000e+00, %1329
  %1331 = fmul fast float %1326, %1247
  %1332 = fmul fast float %1331, %1330
  %1333 = bitcast float %1248 to i32
  %1334 = ashr i32 %1333, 1
  %1335 = sub nsw i32 1597463174, %1334
  %1336 = bitcast i32 %1335 to float
  %1337 = fmul fast float %1248, 5.000000e-01
  %1338 = fmul fast float %1336, %1336
  %1339 = fmul fast float %1338, %1337
  %1340 = fsub fast float 1.500000e+00, %1339
  %1341 = fmul fast float %1336, %1248
  %1342 = fmul fast float %1341, %1340
  %1343 = bitcast float %1249 to i32
  %1344 = ashr i32 %1343, 1
  %1345 = sub nsw i32 1597463174, %1344
  %1346 = bitcast i32 %1345 to float
  %1347 = fmul fast float %1249, 5.000000e-01
  %1348 = fmul fast float %1346, %1346
  %1349 = fmul fast float %1348, %1347
  %1350 = fsub fast float 1.500000e+00, %1349
  %1351 = fmul fast float %1346, %1249
  %1352 = fmul fast float %1351, %1350
  %1353 = fsub fast float %1332, %1314
  %1354 = fsub fast float %1342, %1318
  %1355 = fsub fast float %1352, %1322
  %1356 = fmul fast float %1353, %1282
  %1357 = fmul fast float %1354, %1284
  %1358 = fmul fast float %1355, %1289
  %1359 = fadd fast float %1356, %1297
  %1360 = fadd fast float %1357, %1301
  %1361 = fadd fast float %1358, %1305
  %1362 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1363 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1364 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1365 = fmul fast float %1362, %1362
  %1366 = fmul fast float %1363, %1363
  %1367 = fmul fast float %1364, %1364
  %1368 = fsub fast float %1365, %1247
  %1369 = fsub fast float %1366, %1248
  %1370 = fsub fast float %1367, %1249
  %1371 = fmul fast float %1368, %1272
  %1372 = fmul fast float %1369, %1272
  %1373 = fmul fast float %1370, %1272
  %1374 = fadd fast float %1371, %1247
  %1375 = fadd fast float %1372, %1248
  %1376 = fadd fast float %1373, %1249
  %1377 = fadd fast float %1294, %1258
  %1378 = fsub fast float %1377, %1311
  %1379 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1380 = fsub fast float %1379, %1258
  %1381 = fmul fast float %1380, %1272
  %1382 = fadd fast float %1381, %1258
  br label %1436

; <label>:1383                                    ; preds = %1271
  %1384 = and i32 %1274, 134217728
  %1385 = icmp eq i32 %1384, 0
  br i1 %1385, label %1420, label %1386

; <label>:1386                                    ; preds = %1383
  %1387 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %1388 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %1389 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %1390 = fadd fast float %1387, -5.000000e-01
  %1391 = fadd fast float %1388, -5.000000e-01
  %1392 = fadd fast float %1389, -5.000000e-01
  %1393 = fmul fast float %1390, %1272
  %1394 = fmul fast float %1391, %1272
  %1395 = fmul fast float %1392, %1272
  %1396 = fadd fast float %1393, 5.000000e-01
  %1397 = fadd fast float %1394, 5.000000e-01
  %1398 = fadd fast float %1395, 5.000000e-01
  %1399 = call float @dx.op.unary.f32(i32 24, float %1247)  ; Sqrt(value)
  %1400 = call float @dx.op.unary.f32(i32 24, float %1248)  ; Sqrt(value)
  %1401 = call float @dx.op.unary.f32(i32 24, float %1249)  ; Sqrt(value)
  %1402 = fmul fast float %1396, 2.000000e+00
  %1403 = fsub fast float 1.000000e+00, %1402
  %1404 = fmul fast float %1403, %1399
  %1405 = fadd fast float %1404, %1402
  %1406 = fmul fast float %1405, %1399
  %1407 = fmul fast float %1397, 2.000000e+00
  %1408 = fsub fast float 1.000000e+00, %1407
  %1409 = fmul fast float %1408, %1400
  %1410 = fadd fast float %1409, %1407
  %1411 = fmul fast float %1410, %1400
  %1412 = fmul fast float %1398, 2.000000e+00
  %1413 = fsub fast float 1.000000e+00, %1412
  %1414 = fmul fast float %1413, %1401
  %1415 = fadd fast float %1414, %1412
  %1416 = fmul fast float %1415, %1401
  %1417 = fmul fast float %1406, %1406
  %1418 = fmul fast float %1411, %1411
  %1419 = fmul fast float %1416, %1416
  br label %1436

; <label>:1420                                    ; preds = %1383
  %1421 = fmul fast float %321, %321
  %1422 = fmul fast float %325, %325
  %1423 = fmul fast float %329, %329
  %1424 = fadd fast float %1421, -1.000000e+00
  %1425 = fadd fast float %1422, -1.000000e+00
  %1426 = fadd fast float %1423, -1.000000e+00
  %1427 = fmul fast float %1272, %1424
  %1428 = fmul fast float %1272, %1425
  %1429 = fmul fast float %1272, %1426
  %1430 = fadd fast float %1427, 1.000000e+00
  %1431 = fadd fast float %1428, 1.000000e+00
  %1432 = fadd fast float %1429, 1.000000e+00
  %1433 = fmul fast float %1430, %1247
  %1434 = fmul fast float %1431, %1248
  %1435 = fmul fast float %1432, %1249
  br label %1436

; <label>:1436                                    ; preds = %1420, %1386, %1277, %1233
  %1437 = phi float [ %1382, %1277 ], [ %1258, %1386 ], [ %1258, %1420 ], [ 0x3FA23C0BE0000000, %1233 ]
  %1438 = phi float [ %1374, %1277 ], [ %1417, %1386 ], [ %1433, %1420 ], [ 1.000000e+00, %1233 ]
  %1439 = phi float [ %1375, %1277 ], [ %1418, %1386 ], [ %1434, %1420 ], [ 1.000000e+00, %1233 ]
  %1440 = phi float [ %1376, %1277 ], [ %1419, %1386 ], [ %1435, %1420 ], [ 1.000000e+00, %1233 ]
  %1441 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1442 = extractvalue %dx.types.CBufRet.i32 %1441, 1
  %1443 = and i32 %1442, 1
  %1444 = icmp ne i32 %1443, 0
  %1445 = add i32 %48, 356
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = and i32 %1447, 32
  %1449 = icmp ne i32 %1448, 0
  %1450 = and i1 %1444, %1449
  %1451 = select i1 %1450, float 1.000000e+00, float %1438
  %1452 = select i1 %1450, float 0x3FD3333340000000, float %1439
  %1453 = select i1 %1450, float 0x3FD3333340000000, float %1440
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 32
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1530, label %1458

; <label>:1458                                    ; preds = %1436
  %1459 = add i32 %48, 108
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = add i32 %48, 396
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = add i32 %1464, 0
  %1466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1466, %dx.types.Handle %98, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  %1469 = extractvalue %dx.types.ResRet.f32 %1467, 1
  %1470 = extractvalue %dx.types.ResRet.f32 %1467, 2
  %1471 = extractvalue %dx.types.ResRet.f32 %1467, 3
  %1472 = and i32 %1461, 255
  %1473 = uitofp i32 %1472 to float
  %1474 = lshr i32 %1461, 8
  %1475 = and i32 %1474, 255
  %1476 = uitofp i32 %1475 to float
  %1477 = lshr i32 %1461, 16
  %1478 = and i32 %1477, 255
  %1479 = uitofp i32 %1478 to float
  %1480 = fmul fast float %1479, 0x3F70101000000000
  %1481 = fmul fast float %1468, %1473
  %1482 = fadd fast float %1481, %1476
  %1483 = fmul fast float %1482, 0x3F70101000000000
  %1484 = fadd fast float %1469, -5.000000e-01
  %1485 = fadd fast float %1471, -5.000000e-01
  %1486 = fmul fast float %1484, %1480
  %1487 = fmul fast float %1485, %1480
  %1488 = fadd fast float %1486, 5.000000e-01
  %1489 = fadd fast float %1487, 5.000000e-01
  %1490 = fmul fast float %1488, 2.000000e+00
  %1491 = fadd fast float %1490, -1.000000e+00
  %1492 = fmul fast float %1489, 2.000000e+00
  %1493 = fadd fast float %1492, -1.000000e+00
  %1494 = fadd fast float %1491, %1493
  %1495 = fmul fast float %1494, 5.000000e-01
  %1496 = fsub fast float %1491, %1493
  %1497 = fmul fast float %1496, 5.000000e-01
  %1498 = call float @dx.op.unary.f32(i32 6, float %1495)  ; FAbs(value)
  %1499 = fsub fast float 1.000000e+00, %1498
  %1500 = call float @dx.op.unary.f32(i32 6, float %1497)  ; FAbs(value)
  %1501 = fsub fast float %1499, %1500
  %1502 = call float @dx.op.dot3.f32(i32 55, float %1495, float %1497, float %1501, float %1495, float %1497, float %1501)  ; Dot3(ax,ay,az,bx,by,bz)
  %1503 = call float @dx.op.unary.f32(i32 25, float %1502)  ; Rsqrt(value)
  %1504 = fmul fast float %1495, %1503
  %1505 = fmul fast float %1497, %1503
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 67108864
  %1509 = icmp eq i32 %1508, 0
  br i1 %1509, label %1526, label %1510

; <label>:1510                                    ; preds = %1458
  %1511 = add i32 %48, 296
  %1512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.i32 %1512, 0
  %1514 = and i32 %1513, 65535
  %1515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1514)  ; LegacyF16ToF32(value)
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = and i32 %1517, 65535
  %1519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1518)  ; LegacyF16ToF32(value)
  %1520 = lshr i32 %1513, 16
  %1521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1520)  ; LegacyF16ToF32(value)
  %1522 = fsub fast float %1483, %1521
  %1523 = fmul fast float %1522, %1515
  %1524 = fadd fast float %1523, %1519
  %1525 = call float @dx.op.unary.f32(i32 7, float %1524)  ; Saturate(value)
  br label %1526

; <label>:1526                                    ; preds = %1510, %1458
  %1527 = phi float [ %1525, %1510 ], [ %1483, %1458 ]
  %1528 = call float @dx.op.dot2.f32(i32 54, float %1504, float %1505, float %1062, float %1063)  ; Dot2(ax,ay,bx,by)
  %1529 = call float @dx.op.dot2.f32(i32 54, float %1504, float %1505, float %1064, float %1065)  ; Dot2(ax,ay,bx,by)
  br label %1530

; <label>:1530                                    ; preds = %1526, %1436
  %1531 = phi float [ %1527, %1526 ], [ 0x3FD6666660000000, %1436 ]
  %1532 = phi float [ %1528, %1526 ], [ 0.000000e+00, %1436 ]
  %1533 = phi float [ %1529, %1526 ], [ 0.000000e+00, %1436 ]
  %1534 = phi float [ %1470, %1526 ], [ 1.000000e+00, %1436 ]
  %1535 = add i32 %48, 176
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = lshr i32 %1537, 22
  %1539 = shl nuw nsw i32 %1538, 5
  %1540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1539)  ; LegacyF16ToF32(value)
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = and i32 %1542, 64
  %1544 = icmp eq i32 %1543, 0
  br i1 %1544, label %1578, label %1545

; <label>:1545                                    ; preds = %1530
  %1546 = add i32 %48, 412
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = add i32 %1548, 0
  %1550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1549, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = and i32 %1552, 131072
  %1554 = icmp eq i32 %1553, 0
  %1555 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1550, %dx.types.Handle %98, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1556 = extractvalue %dx.types.ResRet.f32 %1555, 0
  %1557 = extractvalue %dx.types.ResRet.f32 %1555, 1
  %1558 = extractvalue %dx.types.ResRet.f32 %1555, 2
  %1559 = fmul fast float %1556, %309
  %1560 = fmul fast float %1557, %312
  %1561 = fmul fast float %1558, %315
  br i1 %1554, label %1568, label %1562

; <label>:1562                                    ; preds = %1545
  %1563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1564 = extractvalue %dx.types.CBufRet.f32 %1563, 0
  %1565 = fmul fast float %1564, %1559
  %1566 = fmul fast float %1564, %1560
  %1567 = fmul fast float %1564, %1561
  br label %1568

; <label>:1568                                    ; preds = %1562, %1545
  %1569 = phi float [ %1565, %1562 ], [ %1559, %1545 ]
  %1570 = phi float [ %1566, %1562 ], [ %1560, %1545 ]
  %1571 = phi float [ %1567, %1562 ], [ %1561, %1545 ]
  %1572 = fmul fast float %1569, %1540
  %1573 = select i1 %250, float %1572, float %1569
  %1574 = call float @dx.op.dot3.f32(i32 55, float %1573, float %1570, float %1571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1575 = select i1 %250, float 0.000000e+00, float %1569
  %1576 = select i1 %250, float %1574, float %1570
  %1577 = select i1 %250, float 0.000000e+00, float %1571
  br label %1578

; <label>:1578                                    ; preds = %1568, %1530
  %1579 = phi float [ %1575, %1568 ], [ 0.000000e+00, %1530 ]
  %1580 = phi float [ %1576, %1568 ], [ 0.000000e+00, %1530 ]
  %1581 = phi float [ %1577, %1568 ], [ 0.000000e+00, %1530 ]
  %1582 = add i32 %48, 112
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = and i32 %1584, 255
  %1586 = uitofp i32 %1585 to float
  %1587 = lshr i32 %1584, 8
  %1588 = and i32 %1587, 255
  %1589 = uitofp i32 %1588 to float
  %1590 = call float @dx.op.dot3.f32(i32 55, float %1451, float %1452, float %1453, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1591 = fmul fast float %1589, %1590
  %1592 = fadd fast float %1591, %1586
  %1593 = fmul fast float %1592, 0x3F70101020000000
  %1594 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  br i1 %1050, label %1595, label %1603

; <label>:1595                                    ; preds = %1578
  %1596 = fsub fast float 1.000000e+00, %1231
  %1597 = fmul fast float %1596, %1038
  %1598 = fmul fast float %1596, %1039
  %1599 = fmul fast float %1596, %1040
  %1600 = fmul fast float %1596, %1041
  %1601 = fmul fast float %1596, %1042
  %1602 = fmul fast float %1596, %1043
  br label %1603

; <label>:1603                                    ; preds = %1595, %1578
  %1604 = phi float [ %1597, %1595 ], [ %1038, %1578 ]
  %1605 = phi float [ %1598, %1595 ], [ %1039, %1578 ]
  %1606 = phi float [ %1599, %1595 ], [ %1040, %1578 ]
  %1607 = phi float [ %1600, %1595 ], [ %1041, %1578 ]
  %1608 = phi float [ %1601, %1595 ], [ %1042, %1578 ]
  %1609 = phi float [ %1602, %1595 ], [ %1043, %1578 ]
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = and i32 %1611, 3
  %1613 = icmp eq i32 %1612, 3
  br i1 %1613, label %1692, label %1614

; <label>:1614                                    ; preds = %1603
  %1615 = and i32 %1611, 16
  %1616 = icmp ne i32 %1615, 0
  %1617 = select i1 %1616, float %1231, float 0.000000e+00
  %1618 = icmp eq i32 %1612, 0
  br i1 %1618, label %1619, label %1647

; <label>:1619                                    ; preds = %1614
  %1620 = and i32 %1611, 64
  %1621 = icmp ne i32 %1620, 0
  %1622 = select i1 %1621, float %1231, float 0.000000e+00
  %1623 = fsub fast float %1451, %1604
  %1624 = fsub fast float %1452, %1605
  %1625 = fsub fast float %1453, %1606
  %1626 = fmul fast float %1617, %1623
  %1627 = fmul fast float %1617, %1624
  %1628 = fmul fast float %1617, %1625
  %1629 = fadd fast float %1626, %1604
  %1630 = fadd fast float %1627, %1605
  %1631 = fadd fast float %1628, %1606
  %1632 = fsub fast float %1437, %1044
  %1633 = fmul fast float %1617, %1632
  %1634 = fadd fast float %1633, %1044
  %1635 = fsub fast float %1579, %1607
  %1636 = fsub fast float %1580, %1608
  %1637 = fsub fast float %1581, %1609
  %1638 = fmul fast float %1622, %1635
  %1639 = fmul fast float %1622, %1636
  %1640 = fmul fast float %1622, %1637
  %1641 = fadd fast float %1638, %1607
  %1642 = fadd fast float %1639, %1608
  %1643 = fadd fast float %1640, %1609
  %1644 = fsub fast float %1594, %1048
  %1645 = fmul fast float %1617, %1644
  %1646 = fadd fast float %1645, %1048
  br label %1692

; <label>:1647                                    ; preds = %1614
  %1648 = icmp eq i32 %1612, 1
  br i1 %1648, label %1649, label %1662

; <label>:1649                                    ; preds = %1647
  %1650 = fadd fast float %1451, -1.000000e+00
  %1651 = fadd fast float %1452, -1.000000e+00
  %1652 = fadd fast float %1453, -1.000000e+00
  %1653 = fmul fast float %1617, %1650
  %1654 = fmul fast float %1617, %1651
  %1655 = fmul fast float %1617, %1652
  %1656 = fadd fast float %1653, 1.000000e+00
  %1657 = fadd fast float %1654, 1.000000e+00
  %1658 = fadd fast float %1655, 1.000000e+00
  %1659 = fmul fast float %1656, %1604
  %1660 = fmul fast float %1657, %1605
  %1661 = fmul fast float %1658, %1606
  br label %1692

; <label>:1662                                    ; preds = %1647
  %1663 = icmp eq i32 %1612, 2
  br i1 %1663, label %1664, label %1692

; <label>:1664                                    ; preds = %1662
  %1665 = call float @dx.op.unary.f32(i32 24, float %1451)  ; Sqrt(value)
  %1666 = call float @dx.op.unary.f32(i32 24, float %1452)  ; Sqrt(value)
  %1667 = call float @dx.op.unary.f32(i32 24, float %1453)  ; Sqrt(value)
  %1668 = fadd fast float %1665, -5.000000e-01
  %1669 = fadd fast float %1666, -5.000000e-01
  %1670 = fadd fast float %1667, -5.000000e-01
  %1671 = fmul fast float %1668, %1617
  %1672 = fmul fast float %1669, %1617
  %1673 = fmul fast float %1670, %1617
  %1674 = fadd fast float %1671, 5.000000e-01
  %1675 = fadd fast float %1672, 5.000000e-01
  %1676 = fadd fast float %1673, 5.000000e-01
  %1677 = fmul fast float %1674, 2.000000e+00
  %1678 = fsub fast float 1.000000e+00, %1677
  %1679 = fmul fast float %1678, %1604
  %1680 = fadd fast float %1679, %1677
  %1681 = fmul fast float %1680, %1604
  %1682 = fmul fast float %1675, 2.000000e+00
  %1683 = fsub fast float 1.000000e+00, %1682
  %1684 = fmul fast float %1683, %1605
  %1685 = fadd fast float %1684, %1682
  %1686 = fmul fast float %1685, %1605
  %1687 = fmul fast float %1676, 2.000000e+00
  %1688 = fsub fast float 1.000000e+00, %1687
  %1689 = fmul fast float %1688, %1606
  %1690 = fadd fast float %1689, %1687
  %1691 = fmul fast float %1690, %1606
  br label %1692

; <label>:1692                                    ; preds = %1664, %1662, %1649, %1619, %1603
  %1693 = phi float [ %1604, %1603 ], [ %1681, %1664 ], [ %1604, %1662 ], [ %1659, %1649 ], [ %1629, %1619 ]
  %1694 = phi float [ %1605, %1603 ], [ %1686, %1664 ], [ %1605, %1662 ], [ %1660, %1649 ], [ %1630, %1619 ]
  %1695 = phi float [ %1606, %1603 ], [ %1691, %1664 ], [ %1606, %1662 ], [ %1661, %1649 ], [ %1631, %1619 ]
  %1696 = phi float [ %1607, %1603 ], [ %1607, %1664 ], [ %1607, %1662 ], [ %1607, %1649 ], [ %1641, %1619 ]
  %1697 = phi float [ %1608, %1603 ], [ %1608, %1664 ], [ %1608, %1662 ], [ %1608, %1649 ], [ %1642, %1619 ]
  %1698 = phi float [ %1609, %1603 ], [ %1609, %1664 ], [ %1609, %1662 ], [ %1609, %1649 ], [ %1643, %1619 ]
  %1699 = phi float [ %1044, %1603 ], [ %1044, %1664 ], [ %1044, %1662 ], [ %1044, %1649 ], [ %1634, %1619 ]
  %1700 = phi float [ %1048, %1603 ], [ %1048, %1664 ], [ %1048, %1662 ], [ %1048, %1649 ], [ %1646, %1619 ]
  %1701 = and i32 %1611, 12
  %1702 = icmp eq i32 %1701, 12
  br i1 %1702, label %1775, label %1703

; <label>:1703                                    ; preds = %1692
  %1704 = and i32 %1611, 2097184
  %1705 = icmp eq i32 %1704, 2097184
  %1706 = select i1 %1705, float %1231, float 0.000000e+00
  %1707 = and i32 %1611, 4194336
  %1708 = icmp eq i32 %1707, 4194336
  %1709 = select i1 %1708, float %1231, float 0.000000e+00
  %1710 = and i32 %1611, 8388640
  %1711 = icmp eq i32 %1710, 8388640
  %1712 = select i1 %1711, float %1231, float 0.000000e+00
  %1713 = icmp eq i32 %1701, 0
  br i1 %1713, label %1714, label %1727

; <label>:1714                                    ; preds = %1703
  %1715 = fsub fast float %1532, %1036
  %1716 = fsub fast float %1533, %1037
  %1717 = fmul fast float %1706, %1715
  %1718 = fmul fast float %1706, %1716
  %1719 = fadd fast float %1717, %1036
  %1720 = fadd fast float %1718, %1037
  %1721 = fsub fast float %1534, %1047
  %1722 = fmul fast float %1709, %1721
  %1723 = fadd fast float %1722, %1047
  %1724 = fsub fast float %1531, %1046
  %1725 = fmul fast float %1712, %1724
  %1726 = fadd fast float %1725, %1046
  br label %1775

; <label>:1727                                    ; preds = %1703
  %1728 = icmp eq i32 %1701, 4
  br i1 %1728, label %1729, label %1761

; <label>:1729                                    ; preds = %1727
  %1730 = fmul fast float %1706, %1532
  %1731 = fmul fast float %1706, %1533
  %1732 = fadd fast float %1730, %1036
  %1733 = fadd fast float %1731, %1037
  %1734 = call float @dx.op.binary.f32(i32 36, float %1047, float %1534)  ; FMin(a,b)
  %1735 = fsub fast float %1734, %1047
  %1736 = fmul fast float %1735, %1709
  %1737 = fadd fast float %1736, %1047
  %1738 = fadd fast float %1531, %1046
  %1739 = fmul fast float %1738, 0x3FF337FAE0000000
  %1740 = fmul fast float %1046, %1046
  %1741 = fmul fast float %1531, %1531
  %1742 = fadd fast float %1741, %1740
  %1743 = fmul fast float %1742, 0x3FE5152B00000000
  %1744 = fmul fast float %1046, 0xBFCC1F85E0000000
  %1745 = fmul fast float %1744, %1531
  %1746 = fadd fast float %1745, 0xBFE1363700000000
  %1747 = fadd fast float %1746, %1739
  %1748 = fsub fast float %1747, %1743
  %1749 = fmul fast float %1738, 0x3FBA6F0D00000000
  %1750 = fmul fast float %1742, 0x3FD0432880000000
  %1751 = fmul fast float %1046, 0xBFEF110800000000
  %1752 = fmul fast float %1751, %1531
  %1753 = fadd fast float %1752, 1.000000e+00
  %1754 = fsub fast float %1753, %1749
  %1755 = fadd fast float %1754, %1750
  %1756 = fdiv fast float %1748, %1755
  %1757 = call float @dx.op.unary.f32(i32 7, float %1756)  ; Saturate(value)
  %1758 = fsub fast float %1757, %1046
  %1759 = fmul fast float %1758, %1712
  %1760 = fadd fast float %1759, %1046
  br label %1775

; <label>:1761                                    ; preds = %1727
  %1762 = icmp eq i32 %1701, 8
  br i1 %1762, label %1763, label %1775

; <label>:1763                                    ; preds = %1761
  %1764 = fmul fast float %1706, %1532
  %1765 = fmul fast float %1706, %1533
  %1766 = fadd fast float %1764, %1036
  %1767 = fadd fast float %1765, %1037
  %1768 = call float @dx.op.binary.f32(i32 36, float %1047, float %1534)  ; FMin(a,b)
  %1769 = fsub fast float %1768, %1047
  %1770 = fmul fast float %1769, %1709
  %1771 = fadd fast float %1770, %1047
  %1772 = fsub fast float %1531, %1046
  %1773 = fmul fast float %1712, %1772
  %1774 = fadd fast float %1773, %1046
  br label %1775

; <label>:1775                                    ; preds = %1763, %1761, %1729, %1714, %1692, %1230, %1049, %1035
  %1776 = phi float [ %1036, %1692 ], [ %1036, %1230 ], [ %1036, %1035 ], [ %1766, %1763 ], [ %1036, %1761 ], [ %1732, %1729 ], [ %1719, %1714 ], [ %1036, %1049 ]
  %1777 = phi float [ %1037, %1692 ], [ %1037, %1230 ], [ %1037, %1035 ], [ %1767, %1763 ], [ %1037, %1761 ], [ %1733, %1729 ], [ %1720, %1714 ], [ %1037, %1049 ]
  %1778 = phi float [ %1693, %1692 ], [ %1038, %1230 ], [ %1038, %1035 ], [ %1693, %1763 ], [ %1693, %1761 ], [ %1693, %1729 ], [ %1693, %1714 ], [ %1038, %1049 ]
  %1779 = phi float [ %1694, %1692 ], [ %1039, %1230 ], [ %1039, %1035 ], [ %1694, %1763 ], [ %1694, %1761 ], [ %1694, %1729 ], [ %1694, %1714 ], [ %1039, %1049 ]
  %1780 = phi float [ %1695, %1692 ], [ %1040, %1230 ], [ %1040, %1035 ], [ %1695, %1763 ], [ %1695, %1761 ], [ %1695, %1729 ], [ %1695, %1714 ], [ %1040, %1049 ]
  %1781 = phi float [ %1696, %1692 ], [ %1041, %1230 ], [ %1041, %1035 ], [ %1696, %1763 ], [ %1696, %1761 ], [ %1696, %1729 ], [ %1696, %1714 ], [ %1041, %1049 ]
  %1782 = phi float [ %1697, %1692 ], [ %1042, %1230 ], [ %1042, %1035 ], [ %1697, %1763 ], [ %1697, %1761 ], [ %1697, %1729 ], [ %1697, %1714 ], [ %1042, %1049 ]
  %1783 = phi float [ %1698, %1692 ], [ %1043, %1230 ], [ %1043, %1035 ], [ %1698, %1763 ], [ %1698, %1761 ], [ %1698, %1729 ], [ %1698, %1714 ], [ %1043, %1049 ]
  %1784 = phi float [ %1699, %1692 ], [ %1044, %1230 ], [ %1044, %1035 ], [ %1699, %1763 ], [ %1699, %1761 ], [ %1699, %1729 ], [ %1699, %1714 ], [ %1044, %1049 ]
  %1785 = phi float [ %1046, %1692 ], [ %1046, %1230 ], [ %1046, %1035 ], [ %1774, %1763 ], [ %1046, %1761 ], [ %1760, %1729 ], [ %1726, %1714 ], [ %1046, %1049 ]
  %1786 = phi float [ %1047, %1692 ], [ %1047, %1230 ], [ %1047, %1035 ], [ %1771, %1763 ], [ %1047, %1761 ], [ %1737, %1729 ], [ %1723, %1714 ], [ %1047, %1049 ]
  %1787 = phi float [ %1700, %1692 ], [ %1048, %1230 ], [ %1048, %1035 ], [ %1700, %1763 ], [ %1700, %1761 ], [ %1700, %1729 ], [ %1700, %1714 ], [ %1048, %1049 ]
  br i1 %436, label %2514, label %1788

; <label>:1788                                    ; preds = %1775
  %1789 = icmp ult i32 %492, 3
  %1790 = add i32 %48, 56
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = add i32 %48, 60
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = or i32 %1795, %1792
  %1797 = icmp eq i32 %1796, 0
  br i1 %1797, label %2514, label %1798

; <label>:1798                                    ; preds = %1788
  %1799 = and i32 %1792, 262144
  %1800 = icmp ne i32 %1799, 0
  %1801 = select i1 %1800, float %53, float 1.000000e+00
  %1802 = select i1 %1800, float %54, float 0.000000e+00
  %1803 = select i1 %1800, float %55, float 0.000000e+00
  %1804 = select i1 %1800, float %56, float 1.000000e+00
  %1805 = select i1 %1800, float %57, float %80
  %1806 = select i1 %1800, float %58, float %81
  %1807 = add i32 %48, 316
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = lshr i32 %1809, 16
  %1811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1810)  ; LegacyF16ToF32(value)
  %1812 = fmul fast float %1811, 0x3F50624DE0000000
  %1813 = add i32 %48, 120
  %1814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.i32 %1814, 0
  %1816 = lshr i32 %1815, 16
  %1817 = and i32 %1816, 255
  %1818 = lshr i32 %1815, 24
  %1819 = add i32 %48, 324
  %1820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1819, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.i32 %1820, 0
  %1822 = and i32 %1821, 65535
  %1823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1822)  ; LegacyF16ToF32(value)
  %1824 = lshr i32 %1821, 16
  %1825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1824)  ; LegacyF16ToF32(value)
  %1826 = add i32 %48, 64
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = lshr i32 %1828, 22
  %1830 = shl nuw nsw i32 %1829, 5
  %1831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1830)  ; LegacyF16ToF32(value)
  %1832 = shl i32 %1828, 4
  %1833 = and i32 %1832, 32752
  %1834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1833)  ; LegacyF16ToF32(value)
  %1835 = lshr i32 %1828, 7
  %1836 = and i32 %1835, 32752
  %1837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1836)  ; LegacyF16ToF32(value)
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 3
  %1840 = fmul fast float %1839, 1.000000e+03
  %1841 = fmul fast float %386, %1840
  %1842 = call float @dx.op.unary.f32(i32 22, float %1841)  ; Frc(value)
  %1843 = fadd fast float %1842, %376
  %1844 = fmul fast float %387, %1840
  %1845 = call float @dx.op.unary.f32(i32 22, float %1844)  ; Frc(value)
  %1846 = fadd fast float %1845, %378
  %1847 = fmul fast float %1812, %1840
  %1848 = call float @dx.op.unary.f32(i32 22, float %1847)  ; Frc(value)
  %1849 = fmul fast float %1848, 0x401921FB60000000
  %1850 = fadd fast float %1849, %1831
  %1851 = call float @dx.op.unary.f32(i32 13, float %1850)  ; Sin(value)
  %1852 = call float @dx.op.unary.f32(i32 12, float %1850)  ; Cos(value)
  %1853 = fsub fast float -0.000000e+00, %1851
  %1854 = fadd fast float %1805, -5.000000e-01
  %1855 = fadd fast float %1806, -5.000000e-01
  %1856 = fmul fast float %1823, %1854
  %1857 = fmul fast float %1825, %1855
  %1858 = fadd fast float %1856, 5.000000e-01
  %1859 = fadd fast float %1857, 5.000000e-01
  %1860 = fmul fast float %1834, %1858
  %1861 = fmul fast float %1837, %1859
  %1862 = fmul fast float %1852, %1860
  %1863 = call float @dx.op.tertiary.f32(i32 46, float %1853, float %1861, float %1862)  ; FMad(a,b,c)
  %1864 = fmul fast float %1851, %1860
  %1865 = call float @dx.op.tertiary.f32(i32 46, float %1852, float %1861, float %1864)  ; FMad(a,b,c)
  %1866 = fadd fast float %1843, %1863
  %1867 = fadd fast float %1846, %1865
  %1868 = icmp ugt i32 %1817, 1
  %1869 = icmp ugt i32 %1815, 33554431
  %1870 = or i1 %1869, %1868
  br i1 %1870, label %1871, label %1896

; <label>:1871                                    ; preds = %1798
  %1872 = add i32 %48, 260
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = lshr i32 %1874, 16
  %1876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1875)  ; LegacyF16ToF32(value)
  %1877 = fmul fast float %1839, %1876
  %1878 = call float @dx.op.unary.f32(i32 22, float %1877)  ; Frc(value)
  %1879 = mul nuw nsw i32 %1817, %1818
  %1880 = uitofp i32 %1879 to float
  %1881 = fmul fast float %1878, %1880
  %1882 = call float @dx.op.unary.f32(i32 27, float %1881)  ; Round_ni(value)
  %1883 = fptoui float %1882 to i32
  %1884 = urem i32 %1883, %1817
  %1885 = udiv i32 %1883, %1818
  %1886 = call float @dx.op.unary.f32(i32 22, float %1866)  ; Frc(value)
  %1887 = call float @dx.op.unary.f32(i32 22, float %1867)  ; Frc(value)
  %1888 = uitofp i32 %1884 to float
  %1889 = uitofp i32 %1885 to float
  %1890 = fadd fast float %1886, %1888
  %1891 = fadd fast float %1887, %1889
  %1892 = uitofp i32 %1817 to float
  %1893 = uitofp i32 %1818 to float
  %1894 = fdiv fast float %1890, %1892
  %1895 = fdiv fast float %1891, %1893
  br label %1896

; <label>:1896                                    ; preds = %1871, %1798
  %1897 = phi float [ %1894, %1871 ], [ %1866, %1798 ]
  %1898 = phi float [ %1895, %1871 ], [ %1867, %1798 ]
  %1899 = and i32 %1792, 256
  %1900 = icmp eq i32 %1899, 0
  br i1 %1900, label %1947, label %1901

; <label>:1901                                    ; preds = %1896
  %1902 = add i32 %48, 448
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = add i32 %1904, 0
  %1906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1905, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1907 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1906, %dx.types.Handle %99, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1908 = extractvalue %dx.types.ResRet.f32 %1907, 0
  %1909 = add i32 %48, 132
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = shl i32 %1911, 4
  %1913 = and i32 %1912, 32752
  %1914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1913)  ; LegacyF16ToF32(value)
  %1915 = lshr i32 %1911, 7
  %1916 = and i32 %1915, 32752
  %1917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1916)  ; LegacyF16ToF32(value)
  %1918 = fsub fast float 1.000000e+00, %488
  %1919 = call float @dx.op.binary.f32(i32 35, float %1918, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1920 = bitcast float %488 to i32
  %1921 = sitofp i32 %1920 to float
  %1922 = fadd fast float %1921, 0xC1CFBF8940000000
  %1923 = fmul fast float %1917, %1922
  %1924 = fadd fast float %1923, 0x41CFBF8940000000
  %1925 = fptosi float %1924 to i32
  %1926 = bitcast i32 %1925 to float
  %1927 = bitcast float %1919 to i32
  %1928 = sitofp i32 %1927 to float
  %1929 = fadd fast float %1928, 0xC1CFBF8940000000
  %1930 = fmul fast float %1929, %1917
  %1931 = fadd fast float %1930, 0x41CFBF8940000000
  %1932 = fptosi float %1931 to i32
  %1933 = bitcast i32 %1932 to float
  %1934 = fmul fast float %1926, %1914
  %1935 = fmul fast float %1933, %1914
  %1936 = fsub fast float %1919, %1934
  %1937 = fadd fast float %1935, %1919
  %1938 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1939 = call float @dx.op.unary.f32(i32 7, float %1937)  ; Saturate(value)
  %1940 = fsub fast float %1908, %1938
  %1941 = fsub fast float %1939, %1938
  %1942 = bitcast float %1941 to i32
  %1943 = sub nsw i32 2129859010, %1942
  %1944 = bitcast i32 %1943 to float
  %1945 = fmul fast float %1944, %1940
  %1946 = call float @dx.op.unary.f32(i32 7, float %1945)  ; Saturate(value)
  br label %1947

; <label>:1947                                    ; preds = %1901, %1896
  %1948 = phi float [ %1946, %1901 ], [ %488, %1896 ]
  %1949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = and i32 %1950, 128
  %1952 = icmp eq i32 %1951, 0
  br i1 %1952, label %1969, label %1953

; <label>:1953                                    ; preds = %1947
  %1954 = add i32 %48, 432
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = add i32 %1956, 0
  %1958 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1957, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1959 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1958, %dx.types.Handle %99, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1960 = extractvalue %dx.types.ResRet.f32 %1959, 0
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = and i32 %1962, 524288
  %1964 = icmp ne i32 %1963, 0
  %1965 = fcmp fast ogt float %1960, 0x3FE0101020000000
  %1966 = select i1 %1965, float 1.000000e+00, float 0.000000e+00
  %1967 = select i1 %1964, float %1966, float %1960
  %1968 = fmul fast float %1967, %1948
  br label %1969

; <label>:1969                                    ; preds = %1953, %1947
  %1970 = phi float [ %1968, %1953 ], [ %1948, %1947 ]
  %1971 = fcmp fast ult float %1970, 0x3F70101020000000
  br i1 %1971, label %2514, label %1972

; <label>:1972                                    ; preds = %1969
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = and i32 %1974, 16
  %1976 = icmp eq i32 %1975, 0
  br i1 %1976, label %2175, label %1977

; <label>:1977                                    ; preds = %1972
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = add i32 %48, 384
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = add i32 %1982, 0
  %1984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1983, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1984, %dx.types.Handle %98, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = extractvalue %dx.types.ResRet.f32 %1985, 1
  %1988 = extractvalue %dx.types.ResRet.f32 %1985, 2
  %1989 = extractvalue %dx.types.ResRet.f32 %1985, 3
  %1990 = and i32 %1979, 255
  %1991 = uitofp i32 %1990 to float
  %1992 = lshr i32 %1979, 8
  %1993 = and i32 %1992, 255
  %1994 = uitofp i32 %1993 to float
  %1995 = fmul fast float %1989, %1991
  %1996 = fadd fast float %1995, %1994
  %1997 = fmul fast float %1996, 0x3F70101000000000
  %1998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.i32 %1998, 0
  %2000 = and i32 %1999, 512
  %2001 = icmp eq i32 %2000, 0
  br i1 %2001, label %2010, label %2002

; <label>:2002                                    ; preds = %1977
  %2003 = add i32 %48, 468
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = add i32 %2005, 0
  %2007 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2006, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2008 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2007, %dx.types.Handle %99, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2009 = extractvalue %dx.types.ResRet.f32 %2008, 0
  br label %2010

; <label>:2010                                    ; preds = %2002, %1977
  %2011 = phi float [ %2009, %2002 ], [ 1.000000e+00, %1977 ]
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = and i32 %2013, 33554432
  %2015 = icmp eq i32 %2014, 0
  br i1 %2015, label %2122, label %2016

; <label>:2016                                    ; preds = %2010
  %2017 = add i32 %48, 256
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = and i32 %2019, 65535
  %2021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2020)  ; LegacyF16ToF32(value)
  %2022 = lshr i32 %2019, 16
  %2023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2022)  ; LegacyF16ToF32(value)
  %2024 = add i32 %48, 260
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = and i32 %2026, 65535
  %2028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2027)  ; LegacyF16ToF32(value)
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = lshr i32 %2030, 24
  %2032 = uitofp i32 %2031 to float
  %2033 = fmul fast float %2032, 0x3F70101020000000
  %2034 = and i32 %2030, 255
  %2035 = uitofp i32 %2034 to float
  %2036 = fmul fast float %2035, 0x3F70101020000000
  %2037 = lshr i32 %2030, 8
  %2038 = and i32 %2037, 255
  %2039 = uitofp i32 %2038 to float
  %2040 = fmul fast float %2039, 0x3F70101020000000
  %2041 = lshr i32 %2030, 16
  %2042 = and i32 %2041, 255
  %2043 = uitofp i32 %2042 to float
  %2044 = fmul fast float %2043, 0x3F70101020000000
  %2045 = add i32 %48, 252
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = lshr i32 %2047, 24
  %2049 = uitofp i32 %2048 to float
  %2050 = fmul fast float %2049, 0x3F70101020000000
  %2051 = and i32 %2047, 255
  %2052 = uitofp i32 %2051 to float
  %2053 = fmul fast float %2052, 0x3F70101020000000
  %2054 = lshr i32 %2047, 8
  %2055 = and i32 %2054, 255
  %2056 = uitofp i32 %2055 to float
  %2057 = fmul fast float %2056, 0x3F70101020000000
  %2058 = lshr i32 %2047, 16
  %2059 = and i32 %2058, 255
  %2060 = uitofp i32 %2059 to float
  %2061 = fmul fast float %2060, 0x3F70101020000000
  %2062 = bitcast float %1986 to i32
  %2063 = ashr i32 %2062, 1
  %2064 = sub nsw i32 1597463174, %2063
  %2065 = bitcast i32 %2064 to float
  %2066 = fmul fast float %1986, 5.000000e-01
  %2067 = fmul fast float %2065, %2065
  %2068 = fmul fast float %2067, %2066
  %2069 = fsub fast float 1.500000e+00, %2068
  %2070 = fmul fast float %2065, %1986
  %2071 = fmul fast float %2070, %2069
  %2072 = bitcast float %1987 to i32
  %2073 = ashr i32 %2072, 1
  %2074 = sub nsw i32 1597463174, %2073
  %2075 = bitcast i32 %2074 to float
  %2076 = fmul fast float %1987, 5.000000e-01
  %2077 = fmul fast float %2075, %2075
  %2078 = fmul fast float %2077, %2076
  %2079 = fsub fast float 1.500000e+00, %2078
  %2080 = fmul fast float %2075, %1987
  %2081 = fmul fast float %2080, %2079
  %2082 = bitcast float %1988 to i32
  %2083 = ashr i32 %2082, 1
  %2084 = sub nsw i32 1597463174, %2083
  %2085 = bitcast i32 %2084 to float
  %2086 = fmul fast float %1988, 5.000000e-01
  %2087 = fmul fast float %2085, %2085
  %2088 = fmul fast float %2087, %2086
  %2089 = fsub fast float 1.500000e+00, %2088
  %2090 = fmul fast float %2085, %1988
  %2091 = fmul fast float %2090, %2089
  %2092 = fsub fast float %2071, %2053
  %2093 = fsub fast float %2081, %2057
  %2094 = fsub fast float %2091, %2061
  %2095 = fmul fast float %2092, %2021
  %2096 = fmul fast float %2093, %2023
  %2097 = fmul fast float %2094, %2028
  %2098 = fadd fast float %2095, %2036
  %2099 = fadd fast float %2096, %2040
  %2100 = fadd fast float %2097, %2044
  %2101 = call float @dx.op.unary.f32(i32 7, float %2098)  ; Saturate(value)
  %2102 = call float @dx.op.unary.f32(i32 7, float %2099)  ; Saturate(value)
  %2103 = call float @dx.op.unary.f32(i32 7, float %2100)  ; Saturate(value)
  %2104 = fmul fast float %2101, %2101
  %2105 = fmul fast float %2102, %2102
  %2106 = fmul fast float %2103, %2103
  %2107 = fsub fast float %2104, %1986
  %2108 = fsub fast float %2105, %1987
  %2109 = fsub fast float %2106, %1988
  %2110 = fmul fast float %2107, %2011
  %2111 = fmul fast float %2108, %2011
  %2112 = fmul fast float %2109, %2011
  %2113 = fadd fast float %2110, %1986
  %2114 = fadd fast float %2111, %1987
  %2115 = fadd fast float %2112, %1988
  %2116 = fadd fast float %2033, %1997
  %2117 = fsub fast float %2116, %2050
  %2118 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2119 = fsub fast float %2118, %1997
  %2120 = fmul fast float %2119, %2011
  %2121 = fadd fast float %2120, %1997
  br label %2175

; <label>:2122                                    ; preds = %2010
  %2123 = and i32 %2013, 134217728
  %2124 = icmp eq i32 %2123, 0
  br i1 %2124, label %2159, label %2125

; <label>:2125                                    ; preds = %2122
  %2126 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %2127 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %2128 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %2129 = fadd fast float %2126, -5.000000e-01
  %2130 = fadd fast float %2127, -5.000000e-01
  %2131 = fadd fast float %2128, -5.000000e-01
  %2132 = fmul fast float %2129, %2011
  %2133 = fmul fast float %2130, %2011
  %2134 = fmul fast float %2131, %2011
  %2135 = fadd fast float %2132, 5.000000e-01
  %2136 = fadd fast float %2133, 5.000000e-01
  %2137 = fadd fast float %2134, 5.000000e-01
  %2138 = call float @dx.op.unary.f32(i32 24, float %1986)  ; Sqrt(value)
  %2139 = call float @dx.op.unary.f32(i32 24, float %1987)  ; Sqrt(value)
  %2140 = call float @dx.op.unary.f32(i32 24, float %1988)  ; Sqrt(value)
  %2141 = fmul fast float %2135, 2.000000e+00
  %2142 = fsub fast float 1.000000e+00, %2141
  %2143 = fmul fast float %2142, %2138
  %2144 = fadd fast float %2143, %2141
  %2145 = fmul fast float %2144, %2138
  %2146 = fmul fast float %2136, 2.000000e+00
  %2147 = fsub fast float 1.000000e+00, %2146
  %2148 = fmul fast float %2147, %2139
  %2149 = fadd fast float %2148, %2146
  %2150 = fmul fast float %2149, %2139
  %2151 = fmul fast float %2137, 2.000000e+00
  %2152 = fsub fast float 1.000000e+00, %2151
  %2153 = fmul fast float %2152, %2140
  %2154 = fadd fast float %2153, %2151
  %2155 = fmul fast float %2154, %2140
  %2156 = fmul fast float %2145, %2145
  %2157 = fmul fast float %2150, %2150
  %2158 = fmul fast float %2155, %2155
  br label %2175

; <label>:2159                                    ; preds = %2122
  %2160 = fmul fast float %363, %363
  %2161 = fmul fast float %367, %367
  %2162 = fmul fast float %371, %371
  %2163 = fadd fast float %2160, -1.000000e+00
  %2164 = fadd fast float %2161, -1.000000e+00
  %2165 = fadd fast float %2162, -1.000000e+00
  %2166 = fmul fast float %2011, %2163
  %2167 = fmul fast float %2011, %2164
  %2168 = fmul fast float %2011, %2165
  %2169 = fadd fast float %2166, 1.000000e+00
  %2170 = fadd fast float %2167, 1.000000e+00
  %2171 = fadd fast float %2168, 1.000000e+00
  %2172 = fmul fast float %2169, %1986
  %2173 = fmul fast float %2170, %1987
  %2174 = fmul fast float %2171, %1988
  br label %2175

; <label>:2175                                    ; preds = %2159, %2125, %2016, %1972
  %2176 = phi float [ %2121, %2016 ], [ %1997, %2125 ], [ %1997, %2159 ], [ 0x3FA23C0BE0000000, %1972 ]
  %2177 = phi float [ %2113, %2016 ], [ %2156, %2125 ], [ %2172, %2159 ], [ 1.000000e+00, %1972 ]
  %2178 = phi float [ %2114, %2016 ], [ %2157, %2125 ], [ %2173, %2159 ], [ 1.000000e+00, %1972 ]
  %2179 = phi float [ %2115, %2016 ], [ %2158, %2125 ], [ %2174, %2159 ], [ 1.000000e+00, %1972 ]
  %2180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2181 = extractvalue %dx.types.CBufRet.i32 %2180, 1
  %2182 = and i32 %2181, 1
  %2183 = icmp ne i32 %2182, 0
  %2184 = add i32 %48, 356
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2184, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = and i32 %2186, 32
  %2188 = icmp ne i32 %2187, 0
  %2189 = and i1 %2183, %2188
  %2190 = select i1 %2189, float 1.000000e+00, float %2177
  %2191 = select i1 %2189, float 0x3FD3333340000000, float %2178
  %2192 = select i1 %2189, float 0x3FD3333340000000, float %2179
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = and i32 %2194, 32
  %2196 = icmp eq i32 %2195, 0
  br i1 %2196, label %2269, label %2197

; <label>:2197                                    ; preds = %2175
  %2198 = add i32 %48, 124
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2198, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = add i32 %48, 400
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = add i32 %2203, 0
  %2205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2205, %dx.types.Handle %98, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  %2208 = extractvalue %dx.types.ResRet.f32 %2206, 1
  %2209 = extractvalue %dx.types.ResRet.f32 %2206, 2
  %2210 = extractvalue %dx.types.ResRet.f32 %2206, 3
  %2211 = and i32 %2200, 255
  %2212 = uitofp i32 %2211 to float
  %2213 = lshr i32 %2200, 8
  %2214 = and i32 %2213, 255
  %2215 = uitofp i32 %2214 to float
  %2216 = lshr i32 %2200, 16
  %2217 = and i32 %2216, 255
  %2218 = uitofp i32 %2217 to float
  %2219 = fmul fast float %2218, 0x3F70101000000000
  %2220 = fmul fast float %2207, %2212
  %2221 = fadd fast float %2220, %2215
  %2222 = fmul fast float %2221, 0x3F70101000000000
  %2223 = fadd fast float %2208, -5.000000e-01
  %2224 = fadd fast float %2210, -5.000000e-01
  %2225 = fmul fast float %2223, %2219
  %2226 = fmul fast float %2224, %2219
  %2227 = fadd fast float %2225, 5.000000e-01
  %2228 = fadd fast float %2226, 5.000000e-01
  %2229 = fmul fast float %2227, 2.000000e+00
  %2230 = fadd fast float %2229, -1.000000e+00
  %2231 = fmul fast float %2228, 2.000000e+00
  %2232 = fadd fast float %2231, -1.000000e+00
  %2233 = fadd fast float %2230, %2232
  %2234 = fmul fast float %2233, 5.000000e-01
  %2235 = fsub fast float %2230, %2232
  %2236 = fmul fast float %2235, 5.000000e-01
  %2237 = call float @dx.op.unary.f32(i32 6, float %2234)  ; FAbs(value)
  %2238 = fsub fast float 1.000000e+00, %2237
  %2239 = call float @dx.op.unary.f32(i32 6, float %2236)  ; FAbs(value)
  %2240 = fsub fast float %2238, %2239
  %2241 = call float @dx.op.dot3.f32(i32 55, float %2234, float %2236, float %2240, float %2234, float %2236, float %2240)  ; Dot3(ax,ay,az,bx,by,bz)
  %2242 = call float @dx.op.unary.f32(i32 25, float %2241)  ; Rsqrt(value)
  %2243 = fmul fast float %2234, %2242
  %2244 = fmul fast float %2236, %2242
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = and i32 %2246, 67108864
  %2248 = icmp eq i32 %2247, 0
  br i1 %2248, label %2265, label %2249

; <label>:2249                                    ; preds = %2197
  %2250 = add i32 %48, 312
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = and i32 %2252, 65535
  %2254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2253)  ; LegacyF16ToF32(value)
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = and i32 %2256, 65535
  %2258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2257)  ; LegacyF16ToF32(value)
  %2259 = lshr i32 %2252, 16
  %2260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2259)  ; LegacyF16ToF32(value)
  %2261 = fsub fast float %2222, %2260
  %2262 = fmul fast float %2261, %2254
  %2263 = fadd fast float %2262, %2258
  %2264 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  br label %2265

; <label>:2265                                    ; preds = %2249, %2197
  %2266 = phi float [ %2264, %2249 ], [ %2222, %2197 ]
  %2267 = call float @dx.op.dot2.f32(i32 54, float %2243, float %2244, float %1801, float %1802)  ; Dot2(ax,ay,bx,by)
  %2268 = call float @dx.op.dot2.f32(i32 54, float %2243, float %2244, float %1803, float %1804)  ; Dot2(ax,ay,bx,by)
  br label %2269

; <label>:2269                                    ; preds = %2265, %2175
  %2270 = phi float [ %2266, %2265 ], [ 0x3FD6666660000000, %2175 ]
  %2271 = phi float [ %2267, %2265 ], [ 0.000000e+00, %2175 ]
  %2272 = phi float [ %2268, %2265 ], [ 0.000000e+00, %2175 ]
  %2273 = phi float [ %2209, %2265 ], [ 1.000000e+00, %2175 ]
  %2274 = add i32 %48, 192
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2274, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = lshr i32 %2276, 22
  %2278 = shl nuw nsw i32 %2277, 5
  %2279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2278)  ; LegacyF16ToF32(value)
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 64
  %2283 = icmp eq i32 %2282, 0
  br i1 %2283, label %2317, label %2284

; <label>:2284                                    ; preds = %2269
  %2285 = add i32 %48, 416
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = add i32 %2287, 0
  %2289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2288, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = and i32 %2291, 131072
  %2293 = icmp eq i32 %2292, 0
  %2294 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2289, %dx.types.Handle %98, float %1897, float %1898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2295 = extractvalue %dx.types.ResRet.f32 %2294, 0
  %2296 = extractvalue %dx.types.ResRet.f32 %2294, 1
  %2297 = extractvalue %dx.types.ResRet.f32 %2294, 2
  %2298 = fmul fast float %2295, %351
  %2299 = fmul fast float %2296, %354
  %2300 = fmul fast float %2297, %357
  br i1 %2293, label %2307, label %2301

; <label>:2301                                    ; preds = %2284
  %2302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2302, 0
  %2304 = fmul fast float %2303, %2298
  %2305 = fmul fast float %2303, %2299
  %2306 = fmul fast float %2303, %2300
  br label %2307

; <label>:2307                                    ; preds = %2301, %2284
  %2308 = phi float [ %2304, %2301 ], [ %2298, %2284 ]
  %2309 = phi float [ %2305, %2301 ], [ %2299, %2284 ]
  %2310 = phi float [ %2306, %2301 ], [ %2300, %2284 ]
  %2311 = fmul fast float %2308, %2279
  %2312 = select i1 %250, float %2311, float %2308
  %2313 = call float @dx.op.dot3.f32(i32 55, float %2312, float %2309, float %2310, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2314 = select i1 %250, float 0.000000e+00, float %2308
  %2315 = select i1 %250, float %2313, float %2309
  %2316 = select i1 %250, float 0.000000e+00, float %2310
  br label %2317

; <label>:2317                                    ; preds = %2307, %2269
  %2318 = phi float [ %2314, %2307 ], [ 0.000000e+00, %2269 ]
  %2319 = phi float [ %2315, %2307 ], [ 0.000000e+00, %2269 ]
  %2320 = phi float [ %2316, %2307 ], [ 0.000000e+00, %2269 ]
  %2321 = add i32 %48, 128
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = and i32 %2323, 255
  %2325 = uitofp i32 %2324 to float
  %2326 = lshr i32 %2323, 8
  %2327 = and i32 %2326, 255
  %2328 = uitofp i32 %2327 to float
  %2329 = call float @dx.op.dot3.f32(i32 55, float %2190, float %2191, float %2192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2330 = fmul fast float %2328, %2329
  %2331 = fadd fast float %2330, %2325
  %2332 = fmul fast float %2331, 0x3F70101020000000
  %2333 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  br i1 %1789, label %2334, label %2342

; <label>:2334                                    ; preds = %2317
  %2335 = fsub fast float 1.000000e+00, %1970
  %2336 = fmul fast float %2335, %1778
  %2337 = fmul fast float %2335, %1779
  %2338 = fmul fast float %2335, %1780
  %2339 = fmul fast float %2335, %1781
  %2340 = fmul fast float %2335, %1782
  %2341 = fmul fast float %2335, %1783
  br label %2342

; <label>:2342                                    ; preds = %2334, %2317
  %2343 = phi float [ %2336, %2334 ], [ %1778, %2317 ]
  %2344 = phi float [ %2337, %2334 ], [ %1779, %2317 ]
  %2345 = phi float [ %2338, %2334 ], [ %1780, %2317 ]
  %2346 = phi float [ %2339, %2334 ], [ %1781, %2317 ]
  %2347 = phi float [ %2340, %2334 ], [ %1782, %2317 ]
  %2348 = phi float [ %2341, %2334 ], [ %1783, %2317 ]
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = and i32 %2350, 3
  %2352 = icmp eq i32 %2351, 3
  br i1 %2352, label %2431, label %2353

; <label>:2353                                    ; preds = %2342
  %2354 = and i32 %2350, 16
  %2355 = icmp ne i32 %2354, 0
  %2356 = select i1 %2355, float %1970, float 0.000000e+00
  %2357 = icmp eq i32 %2351, 0
  br i1 %2357, label %2358, label %2386

; <label>:2358                                    ; preds = %2353
  %2359 = and i32 %2350, 64
  %2360 = icmp ne i32 %2359, 0
  %2361 = select i1 %2360, float %1970, float 0.000000e+00
  %2362 = fsub fast float %2190, %2343
  %2363 = fsub fast float %2191, %2344
  %2364 = fsub fast float %2192, %2345
  %2365 = fmul fast float %2356, %2362
  %2366 = fmul fast float %2356, %2363
  %2367 = fmul fast float %2356, %2364
  %2368 = fadd fast float %2365, %2343
  %2369 = fadd fast float %2366, %2344
  %2370 = fadd fast float %2367, %2345
  %2371 = fsub fast float %2176, %1784
  %2372 = fmul fast float %2356, %2371
  %2373 = fadd fast float %2372, %1784
  %2374 = fsub fast float %2318, %2346
  %2375 = fsub fast float %2319, %2347
  %2376 = fsub fast float %2320, %2348
  %2377 = fmul fast float %2361, %2374
  %2378 = fmul fast float %2361, %2375
  %2379 = fmul fast float %2361, %2376
  %2380 = fadd fast float %2377, %2346
  %2381 = fadd fast float %2378, %2347
  %2382 = fadd fast float %2379, %2348
  %2383 = fsub fast float %2333, %1787
  %2384 = fmul fast float %2356, %2383
  %2385 = fadd fast float %2384, %1787
  br label %2431

; <label>:2386                                    ; preds = %2353
  %2387 = icmp eq i32 %2351, 1
  br i1 %2387, label %2388, label %2401

; <label>:2388                                    ; preds = %2386
  %2389 = fadd fast float %2190, -1.000000e+00
  %2390 = fadd fast float %2191, -1.000000e+00
  %2391 = fadd fast float %2192, -1.000000e+00
  %2392 = fmul fast float %2356, %2389
  %2393 = fmul fast float %2356, %2390
  %2394 = fmul fast float %2356, %2391
  %2395 = fadd fast float %2392, 1.000000e+00
  %2396 = fadd fast float %2393, 1.000000e+00
  %2397 = fadd fast float %2394, 1.000000e+00
  %2398 = fmul fast float %2395, %2343
  %2399 = fmul fast float %2396, %2344
  %2400 = fmul fast float %2397, %2345
  br label %2431

; <label>:2401                                    ; preds = %2386
  %2402 = icmp eq i32 %2351, 2
  br i1 %2402, label %2403, label %2431

; <label>:2403                                    ; preds = %2401
  %2404 = call float @dx.op.unary.f32(i32 24, float %2190)  ; Sqrt(value)
  %2405 = call float @dx.op.unary.f32(i32 24, float %2191)  ; Sqrt(value)
  %2406 = call float @dx.op.unary.f32(i32 24, float %2192)  ; Sqrt(value)
  %2407 = fadd fast float %2404, -5.000000e-01
  %2408 = fadd fast float %2405, -5.000000e-01
  %2409 = fadd fast float %2406, -5.000000e-01
  %2410 = fmul fast float %2407, %2356
  %2411 = fmul fast float %2408, %2356
  %2412 = fmul fast float %2409, %2356
  %2413 = fadd fast float %2410, 5.000000e-01
  %2414 = fadd fast float %2411, 5.000000e-01
  %2415 = fadd fast float %2412, 5.000000e-01
  %2416 = fmul fast float %2413, 2.000000e+00
  %2417 = fsub fast float 1.000000e+00, %2416
  %2418 = fmul fast float %2417, %2343
  %2419 = fadd fast float %2418, %2416
  %2420 = fmul fast float %2419, %2343
  %2421 = fmul fast float %2414, 2.000000e+00
  %2422 = fsub fast float 1.000000e+00, %2421
  %2423 = fmul fast float %2422, %2344
  %2424 = fadd fast float %2423, %2421
  %2425 = fmul fast float %2424, %2344
  %2426 = fmul fast float %2415, 2.000000e+00
  %2427 = fsub fast float 1.000000e+00, %2426
  %2428 = fmul fast float %2427, %2345
  %2429 = fadd fast float %2428, %2426
  %2430 = fmul fast float %2429, %2345
  br label %2431

; <label>:2431                                    ; preds = %2403, %2401, %2388, %2358, %2342
  %2432 = phi float [ %2343, %2342 ], [ %2420, %2403 ], [ %2343, %2401 ], [ %2398, %2388 ], [ %2368, %2358 ]
  %2433 = phi float [ %2344, %2342 ], [ %2425, %2403 ], [ %2344, %2401 ], [ %2399, %2388 ], [ %2369, %2358 ]
  %2434 = phi float [ %2345, %2342 ], [ %2430, %2403 ], [ %2345, %2401 ], [ %2400, %2388 ], [ %2370, %2358 ]
  %2435 = phi float [ %2346, %2342 ], [ %2346, %2403 ], [ %2346, %2401 ], [ %2346, %2388 ], [ %2380, %2358 ]
  %2436 = phi float [ %2347, %2342 ], [ %2347, %2403 ], [ %2347, %2401 ], [ %2347, %2388 ], [ %2381, %2358 ]
  %2437 = phi float [ %2348, %2342 ], [ %2348, %2403 ], [ %2348, %2401 ], [ %2348, %2388 ], [ %2382, %2358 ]
  %2438 = phi float [ %1784, %2342 ], [ %1784, %2403 ], [ %1784, %2401 ], [ %1784, %2388 ], [ %2373, %2358 ]
  %2439 = phi float [ %1787, %2342 ], [ %1787, %2403 ], [ %1787, %2401 ], [ %1787, %2388 ], [ %2385, %2358 ]
  %2440 = and i32 %2350, 12
  %2441 = icmp eq i32 %2440, 12
  br i1 %2441, label %2514, label %2442

; <label>:2442                                    ; preds = %2431
  %2443 = and i32 %2350, 2097184
  %2444 = icmp eq i32 %2443, 2097184
  %2445 = select i1 %2444, float %1970, float 0.000000e+00
  %2446 = and i32 %2350, 4194336
  %2447 = icmp eq i32 %2446, 4194336
  %2448 = select i1 %2447, float %1970, float 0.000000e+00
  %2449 = and i32 %2350, 8388640
  %2450 = icmp eq i32 %2449, 8388640
  %2451 = select i1 %2450, float %1970, float 0.000000e+00
  %2452 = icmp eq i32 %2440, 0
  br i1 %2452, label %2453, label %2466

; <label>:2453                                    ; preds = %2442
  %2454 = fsub fast float %2271, %1776
  %2455 = fsub fast float %2272, %1777
  %2456 = fmul fast float %2445, %2454
  %2457 = fmul fast float %2445, %2455
  %2458 = fadd fast float %2456, %1776
  %2459 = fadd fast float %2457, %1777
  %2460 = fsub fast float %2273, %1786
  %2461 = fmul fast float %2448, %2460
  %2462 = fadd fast float %2461, %1786
  %2463 = fsub fast float %2270, %1785
  %2464 = fmul fast float %2451, %2463
  %2465 = fadd fast float %2464, %1785
  br label %2514

; <label>:2466                                    ; preds = %2442
  %2467 = icmp eq i32 %2440, 4
  br i1 %2467, label %2468, label %2500

; <label>:2468                                    ; preds = %2466
  %2469 = fmul fast float %2445, %2271
  %2470 = fmul fast float %2445, %2272
  %2471 = fadd fast float %2469, %1776
  %2472 = fadd fast float %2470, %1777
  %2473 = call float @dx.op.binary.f32(i32 36, float %1786, float %2273)  ; FMin(a,b)
  %2474 = fsub fast float %2473, %1786
  %2475 = fmul fast float %2474, %2448
  %2476 = fadd fast float %2475, %1786
  %2477 = fadd fast float %2270, %1785
  %2478 = fmul fast float %2477, 0x3FF337FAE0000000
  %2479 = fmul fast float %1785, %1785
  %2480 = fmul fast float %2270, %2270
  %2481 = fadd fast float %2480, %2479
  %2482 = fmul fast float %2481, 0x3FE5152B00000000
  %2483 = fmul fast float %1785, 0xBFCC1F85E0000000
  %2484 = fmul fast float %2483, %2270
  %2485 = fadd fast float %2484, 0xBFE1363700000000
  %2486 = fadd fast float %2485, %2478
  %2487 = fsub fast float %2486, %2482
  %2488 = fmul fast float %2477, 0x3FBA6F0D00000000
  %2489 = fmul fast float %2481, 0x3FD0432880000000
  %2490 = fmul fast float %1785, 0xBFEF110800000000
  %2491 = fmul fast float %2490, %2270
  %2492 = fadd fast float %2491, 1.000000e+00
  %2493 = fsub fast float %2492, %2488
  %2494 = fadd fast float %2493, %2489
  %2495 = fdiv fast float %2487, %2494
  %2496 = call float @dx.op.unary.f32(i32 7, float %2495)  ; Saturate(value)
  %2497 = fsub fast float %2496, %1785
  %2498 = fmul fast float %2497, %2451
  %2499 = fadd fast float %2498, %1785
  br label %2514

; <label>:2500                                    ; preds = %2466
  %2501 = icmp eq i32 %2440, 8
  br i1 %2501, label %2502, label %2514

; <label>:2502                                    ; preds = %2500
  %2503 = fmul fast float %2445, %2271
  %2504 = fmul fast float %2445, %2272
  %2505 = fadd fast float %2503, %1776
  %2506 = fadd fast float %2504, %1777
  %2507 = call float @dx.op.binary.f32(i32 36, float %1786, float %2273)  ; FMin(a,b)
  %2508 = fsub fast float %2507, %1786
  %2509 = fmul fast float %2508, %2448
  %2510 = fadd fast float %2509, %1786
  %2511 = fsub fast float %2270, %1785
  %2512 = fmul fast float %2451, %2511
  %2513 = fadd fast float %2512, %1785
  br label %2514

; <label>:2514                                    ; preds = %2502, %2500, %2468, %2453, %2431, %1969, %1788, %1775
  %2515 = phi float [ %1776, %2431 ], [ %1776, %1969 ], [ %1776, %1775 ], [ %2505, %2502 ], [ %1776, %2500 ], [ %2471, %2468 ], [ %2458, %2453 ], [ %1776, %1788 ]
  %2516 = phi float [ %1777, %2431 ], [ %1777, %1969 ], [ %1777, %1775 ], [ %2506, %2502 ], [ %1777, %2500 ], [ %2472, %2468 ], [ %2459, %2453 ], [ %1777, %1788 ]
  %2517 = phi float [ %2432, %2431 ], [ %1778, %1969 ], [ %1778, %1775 ], [ %2432, %2502 ], [ %2432, %2500 ], [ %2432, %2468 ], [ %2432, %2453 ], [ %1778, %1788 ]
  %2518 = phi float [ %2433, %2431 ], [ %1779, %1969 ], [ %1779, %1775 ], [ %2433, %2502 ], [ %2433, %2500 ], [ %2433, %2468 ], [ %2433, %2453 ], [ %1779, %1788 ]
  %2519 = phi float [ %2434, %2431 ], [ %1780, %1969 ], [ %1780, %1775 ], [ %2434, %2502 ], [ %2434, %2500 ], [ %2434, %2468 ], [ %2434, %2453 ], [ %1780, %1788 ]
  %2520 = phi float [ %2435, %2431 ], [ %1781, %1969 ], [ %1781, %1775 ], [ %2435, %2502 ], [ %2435, %2500 ], [ %2435, %2468 ], [ %2435, %2453 ], [ %1781, %1788 ]
  %2521 = phi float [ %2436, %2431 ], [ %1782, %1969 ], [ %1782, %1775 ], [ %2436, %2502 ], [ %2436, %2500 ], [ %2436, %2468 ], [ %2436, %2453 ], [ %1782, %1788 ]
  %2522 = phi float [ %2437, %2431 ], [ %1783, %1969 ], [ %1783, %1775 ], [ %2437, %2502 ], [ %2437, %2500 ], [ %2437, %2468 ], [ %2437, %2453 ], [ %1783, %1788 ]
  %2523 = phi float [ %2438, %2431 ], [ %1784, %1969 ], [ %1784, %1775 ], [ %2438, %2502 ], [ %2438, %2500 ], [ %2438, %2468 ], [ %2438, %2453 ], [ %1784, %1788 ]
  %2524 = phi float [ %1785, %2431 ], [ %1785, %1969 ], [ %1785, %1775 ], [ %2513, %2502 ], [ %1785, %2500 ], [ %2499, %2468 ], [ %2465, %2453 ], [ %1785, %1788 ]
  %2525 = phi float [ %1786, %2431 ], [ %1786, %1969 ], [ %1786, %1775 ], [ %2510, %2502 ], [ %1786, %2500 ], [ %2476, %2468 ], [ %2462, %2453 ], [ %1786, %1788 ]
  %2526 = phi float [ %2439, %2431 ], [ %1787, %1969 ], [ %1787, %1775 ], [ %2439, %2502 ], [ %2439, %2500 ], [ %2439, %2468 ], [ %2439, %2453 ], [ %1787, %1788 ]
  br i1 %438, label %3253, label %2527

; <label>:2527                                    ; preds = %2514
  %2528 = icmp ult i32 %492, 4
  %2529 = add i32 %48, 72
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = add i32 %48, 76
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = or i32 %2534, %2531
  %2536 = icmp eq i32 %2535, 0
  br i1 %2536, label %3253, label %2537

; <label>:2537                                    ; preds = %2527
  %2538 = and i32 %2531, 262144
  %2539 = icmp ne i32 %2538, 0
  %2540 = select i1 %2539, float %53, float 1.000000e+00
  %2541 = select i1 %2539, float %54, float 0.000000e+00
  %2542 = select i1 %2539, float %55, float 0.000000e+00
  %2543 = select i1 %2539, float %56, float 1.000000e+00
  %2544 = select i1 %2539, float %57, float %80
  %2545 = select i1 %2539, float %58, float %81
  %2546 = add i32 %48, 332
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = lshr i32 %2548, 16
  %2550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2549)  ; LegacyF16ToF32(value)
  %2551 = fmul fast float %2550, 0x3F50624DE0000000
  %2552 = add i32 %48, 136
  %2553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2554 = extractvalue %dx.types.ResRet.i32 %2553, 0
  %2555 = lshr i32 %2554, 16
  %2556 = and i32 %2555, 255
  %2557 = lshr i32 %2554, 24
  %2558 = add i32 %48, 340
  %2559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2558, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = and i32 %2560, 65535
  %2562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2561)  ; LegacyF16ToF32(value)
  %2563 = lshr i32 %2560, 16
  %2564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2563)  ; LegacyF16ToF32(value)
  %2565 = add i32 %48, 80
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = lshr i32 %2567, 22
  %2569 = shl nuw nsw i32 %2568, 5
  %2570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2569)  ; LegacyF16ToF32(value)
  %2571 = shl i32 %2567, 4
  %2572 = and i32 %2571, 32752
  %2573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2572)  ; LegacyF16ToF32(value)
  %2574 = lshr i32 %2567, 7
  %2575 = and i32 %2574, 32752
  %2576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2575)  ; LegacyF16ToF32(value)
  %2577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2578 = extractvalue %dx.types.CBufRet.f32 %2577, 3
  %2579 = fmul fast float %2578, 1.000000e+03
  %2580 = fmul fast float %428, %2579
  %2581 = call float @dx.op.unary.f32(i32 22, float %2580)  ; Frc(value)
  %2582 = fadd fast float %2581, %418
  %2583 = fmul fast float %429, %2579
  %2584 = call float @dx.op.unary.f32(i32 22, float %2583)  ; Frc(value)
  %2585 = fadd fast float %2584, %420
  %2586 = fmul fast float %2551, %2579
  %2587 = call float @dx.op.unary.f32(i32 22, float %2586)  ; Frc(value)
  %2588 = fmul fast float %2587, 0x401921FB60000000
  %2589 = fadd fast float %2588, %2570
  %2590 = call float @dx.op.unary.f32(i32 13, float %2589)  ; Sin(value)
  %2591 = call float @dx.op.unary.f32(i32 12, float %2589)  ; Cos(value)
  %2592 = fsub fast float -0.000000e+00, %2590
  %2593 = fadd fast float %2544, -5.000000e-01
  %2594 = fadd fast float %2545, -5.000000e-01
  %2595 = fmul fast float %2562, %2593
  %2596 = fmul fast float %2564, %2594
  %2597 = fadd fast float %2595, 5.000000e-01
  %2598 = fadd fast float %2596, 5.000000e-01
  %2599 = fmul fast float %2573, %2597
  %2600 = fmul fast float %2576, %2598
  %2601 = fmul fast float %2591, %2599
  %2602 = call float @dx.op.tertiary.f32(i32 46, float %2592, float %2600, float %2601)  ; FMad(a,b,c)
  %2603 = fmul fast float %2590, %2599
  %2604 = call float @dx.op.tertiary.f32(i32 46, float %2591, float %2600, float %2603)  ; FMad(a,b,c)
  %2605 = fadd fast float %2582, %2602
  %2606 = fadd fast float %2585, %2604
  %2607 = icmp ugt i32 %2556, 1
  %2608 = icmp ugt i32 %2554, 33554431
  %2609 = or i1 %2608, %2607
  br i1 %2609, label %2610, label %2635

; <label>:2610                                    ; preds = %2537
  %2611 = add i32 %48, 276
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = lshr i32 %2613, 16
  %2615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2614)  ; LegacyF16ToF32(value)
  %2616 = fmul fast float %2578, %2615
  %2617 = call float @dx.op.unary.f32(i32 22, float %2616)  ; Frc(value)
  %2618 = mul nuw nsw i32 %2556, %2557
  %2619 = uitofp i32 %2618 to float
  %2620 = fmul fast float %2617, %2619
  %2621 = call float @dx.op.unary.f32(i32 27, float %2620)  ; Round_ni(value)
  %2622 = fptoui float %2621 to i32
  %2623 = urem i32 %2622, %2556
  %2624 = udiv i32 %2622, %2557
  %2625 = call float @dx.op.unary.f32(i32 22, float %2605)  ; Frc(value)
  %2626 = call float @dx.op.unary.f32(i32 22, float %2606)  ; Frc(value)
  %2627 = uitofp i32 %2623 to float
  %2628 = uitofp i32 %2624 to float
  %2629 = fadd fast float %2625, %2627
  %2630 = fadd fast float %2626, %2628
  %2631 = uitofp i32 %2556 to float
  %2632 = uitofp i32 %2557 to float
  %2633 = fdiv fast float %2629, %2631
  %2634 = fdiv fast float %2630, %2632
  br label %2635

; <label>:2635                                    ; preds = %2610, %2537
  %2636 = phi float [ %2633, %2610 ], [ %2605, %2537 ]
  %2637 = phi float [ %2634, %2610 ], [ %2606, %2537 ]
  %2638 = and i32 %2531, 256
  %2639 = icmp eq i32 %2638, 0
  br i1 %2639, label %2686, label %2640

; <label>:2640                                    ; preds = %2635
  %2641 = add i32 %48, 452
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = add i32 %2643, 0
  %2645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2646 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2645, %dx.types.Handle %99, float %2636, float %2637, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2647 = extractvalue %dx.types.ResRet.f32 %2646, 0
  %2648 = add i32 %48, 148
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = shl i32 %2650, 4
  %2652 = and i32 %2651, 32752
  %2653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2652)  ; LegacyF16ToF32(value)
  %2654 = lshr i32 %2650, 7
  %2655 = and i32 %2654, 32752
  %2656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2655)  ; LegacyF16ToF32(value)
  %2657 = fsub fast float 1.000000e+00, %487
  %2658 = call float @dx.op.binary.f32(i32 35, float %2657, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2659 = bitcast float %487 to i32
  %2660 = sitofp i32 %2659 to float
  %2661 = fadd fast float %2660, 0xC1CFBF8940000000
  %2662 = fmul fast float %2656, %2661
  %2663 = fadd fast float %2662, 0x41CFBF8940000000
  %2664 = fptosi float %2663 to i32
  %2665 = bitcast i32 %2664 to float
  %2666 = bitcast float %2658 to i32
  %2667 = sitofp i32 %2666 to float
  %2668 = fadd fast float %2667, 0xC1CFBF8940000000
  %2669 = fmul fast float %2668, %2656
  %2670 = fadd fast float %2669, 0x41CFBF8940000000
  %2671 = fptosi float %2670 to i32
  %2672 = bitcast i32 %2671 to float
  %2673 = fmul fast float %2665, %2653
  %2674 = fmul fast float %2672, %2653
  %2675 = fsub fast float %2658, %2673
  %2676 = fadd fast float %2674, %2658
  %2677 = call float @dx.op.unary.f32(i32 7, float %2675)  ; Saturate(value)
  %2678 = call float @dx.op.unary.f32(i32 7, float %2676)  ; Saturate(value)
  %2679 = fsub fast float %2647, %2677
  %2680 = fsub fast float %2678, %2677
  %2681 = bitcast float %2680 to i32
  %2682 = sub nsw i32 2129859010, %2681
  %2683 = bitcast i32 %2682 to float
  %2684 = fmul fast float %2683, %2679
  %2685 = call float @dx.op.unary.f32(i32 7, float %2684)  ; Saturate(value)
  br label %2686

; <label>:2686                                    ; preds = %2640, %2635
  %2687 = phi float [ %2685, %2640 ], [ %487, %2635 ]
  %2688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2689 = extractvalue %dx.types.ResRet.i32 %2688, 0
  %2690 = and i32 %2689, 128
  %2691 = icmp eq i32 %2690, 0
  br i1 %2691, label %2708, label %2692

; <label>:2692                                    ; preds = %2686
  %2693 = add i32 %48, 436
  %2694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2693, i32 undef)  ; BufferLoad(srv,index,wot)
  %2695 = extractvalue %dx.types.ResRet.i32 %2694, 0
  %2696 = add i32 %2695, 0
  %2697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2697, %dx.types.Handle %99, float %2636, float %2637, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2699 = extractvalue %dx.types.ResRet.f32 %2698, 0
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = and i32 %2701, 524288
  %2703 = icmp ne i32 %2702, 0
  %2704 = fcmp fast ogt float %2699, 0x3FE0101020000000
  %2705 = select i1 %2704, float 1.000000e+00, float 0.000000e+00
  %2706 = select i1 %2703, float %2705, float %2699
  %2707 = fmul fast float %2706, %2687
  br label %2708

; <label>:2708                                    ; preds = %2692, %2686
  %2709 = phi float [ %2707, %2692 ], [ %2687, %2686 ]
  %2710 = fcmp fast ult float %2709, 0x3F70101020000000
  br i1 %2710, label %3253, label %2711

; <label>:2711                                    ; preds = %2708
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = and i32 %2713, 16
  %2715 = icmp eq i32 %2714, 0
  br i1 %2715, label %2914, label %2716

; <label>:2716                                    ; preds = %2711
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = add i32 %48, 388
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = add i32 %2721, 0
  %2723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2724 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2723, %dx.types.Handle %98, float %2636, float %2637, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2725 = extractvalue %dx.types.ResRet.f32 %2724, 0
  %2726 = extractvalue %dx.types.ResRet.f32 %2724, 1
  %2727 = extractvalue %dx.types.ResRet.f32 %2724, 2
  %2728 = extractvalue %dx.types.ResRet.f32 %2724, 3
  %2729 = and i32 %2718, 255
  %2730 = uitofp i32 %2729 to float
  %2731 = lshr i32 %2718, 8
  %2732 = and i32 %2731, 255
  %2733 = uitofp i32 %2732 to float
  %2734 = fmul fast float %2728, %2730
  %2735 = fadd fast float %2734, %2733
  %2736 = fmul fast float %2735, 0x3F70101000000000
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = and i32 %2738, 512
  %2740 = icmp eq i32 %2739, 0
  br i1 %2740, label %2749, label %2741

; <label>:2741                                    ; preds = %2716
  %2742 = add i32 %48, 472
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = add i32 %2744, 0
  %2746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2747 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2746, %dx.types.Handle %99, float %2636, float %2637, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2748 = extractvalue %dx.types.ResRet.f32 %2747, 0
  br label %2749

; <label>:2749                                    ; preds = %2741, %2716
  %2750 = phi float [ %2748, %2741 ], [ 1.000000e+00, %2716 ]
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = and i32 %2752, 33554432
  %2754 = icmp eq i32 %2753, 0
  br i1 %2754, label %2861, label %2755

; <label>:2755                                    ; preds = %2749
  %2756 = add i32 %48, 272
  %2757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2756, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.i32 %2757, 0
  %2759 = and i32 %2758, 65535
  %2760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2759)  ; LegacyF16ToF32(value)
  %2761 = lshr i32 %2758, 16
  %2762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2761)  ; LegacyF16ToF32(value)
  %2763 = add i32 %48, 276
  %2764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.i32 %2764, 0
  %2766 = and i32 %2765, 65535
  %2767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2766)  ; LegacyF16ToF32(value)
  %2768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %2769 = extractvalue %dx.types.ResRet.i32 %2768, 0
  %2770 = lshr i32 %2769, 24
  %2771 = uitofp i32 %2770 to float
  %2772 = fmul fast float %2771, 0x3F70101020000000
  %2773 = and i32 %2769, 255
  %2774 = uitofp i32 %2773 to float
  %2775 = fmul fast float %2774, 0x3F70101020000000
  %2776 = lshr i32 %2769, 8
  %2777 = and i32 %2776, 255
  %2778 = uitofp i32 %2777 to float
  %2779 = fmul fast float %2778, 0x3F70101020000000
  %2780 = lshr i32 %2769, 16
  %2781 = and i32 %2780, 255
  %2782 = uitofp i32 %2781 to float
  %2783 = fmul fast float %2782, 0x3F70101020000000
  %2784 = add i32 %48, 268
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = lshr i32 %2786, 24
  %2788 = uitofp i32 %2787 to float
  %2789 = fmul fast float %2788, 0x3F70101020000000
  %2790 = and i32 %2786, 255
  %2791 = uitofp i32 %2790 to float
  %2792 = fmul fast float %2791, 0x3F70101020000000
  %2793 = lshr i32 %2786, 8
  %2794 = and i32 %2793, 255
  %2795 = uitofp i32 %2794 to float
  %2796 = fmul fast float %2795, 0x3F70101020000000
  %2797 = lshr i32 %2786, 16
  %2798 = and i32 %2797, 255
  %2799 = uitofp i32 %2798 to float
  %2800 = fmul fast float %2799, 0x3F70101020000000
  %2801 = bitcast float %2725 to i32
  %2802 = ashr i32 %2801, 1
  %2803 = sub nsw i32 1597463174, %2802
  %2804 = bitcast i32 %2803 to float
  %2805 = fmul fast float %2725, 5.000000e-01
  %2806 = fmul fast float %2804, %2804
  %2807 = fmul fast float %2806, %2805
  %2808 = fsub fast float 1.500000e+00, %2807
  %2809 = fmul fast float %2804, %2725
  %2810 = fmul fast float %2809, %2808
  %2811 = bitcast float %2726 to i32
  %2812 = ashr i32 %2811, 1
  %2813 = sub nsw i32 1597463174, %2812
  %2814 = bitcast i32 %2813 to float
  %2815 = fmul fast float %2726, 5.000000e-01
  %2816 = fmul fast float %2814, %2814
  %2817 = fmul fast float %2816, %2815
  %2818 = fsub fast float 1.500000e+00, %2817
  %2819 = fmul fast float %2814, %2726
  %2820 = fmul fast float %2819, %2818
  %2821 = bitcast float %2727 to i32
  %2822 = ashr i32 %2821, 1
  %2823 = sub nsw i32 1597463174, %2822
  %2824 = bitcast i32 %2823 to float
  %2825 = fmul fast float %2727, 5.000000e-01
  %2826 = fmul fast float %2824, %2824
  %2827 = fmul fast float %2826, %2825
  %2828 = fsub fast float 1.500000e+00, %2827
  %2829 = fmul fast float %2824, %2727
  %2830 = fmul fast float %2829, %2828
  %2831 = fsub fast float %2810, %2792
  %2832 = fsub fast float %2820, %2796
  %2833 = fsub fast float %2830, %2800
  %2834 = fmul fast float %2831, %2760
  %2835 = fmul fast float %2832, %2762
  %2836 = fmul fast float %2833, %2767
  %2837 = fadd fast float %2834, %2775
  %2838 = fadd fast float %2835, %2779
  %2839 = fadd fast float %2836, %2783
  %2840 = call float @dx.op.unary.f32(i32 7, float %2837)  ; Saturate(value)
  %2841 = call float @dx.op.unary.f32(i32 7, float %2838)  ; Saturate(value)
  %2842 = call float @dx.op.unary.f32(i32 7, float %2839)  ; Saturate(value)
  %2843 = fmul fast float %2840, %2840
  %2844 = fmul fast float %2841, %2841
  %2845 = fmul fast float %2842, %2842
  %2846 = fsub fast float %2843, %2725
  %2847 = fsub fast float %2844, %2726
  %2848 = fsub fast float %2845, %2727
  %2849 = fmul fast float %2846, %2750
  %2850 = fmul fast float %2847, %2750
  %2851 = fmul fast float %2848, %2750
  %2852 = fadd fast float %2849, %2725
  %2853 = fadd fast float %2850, %2726
  %2854 = fadd fast float %2851, %2727
  %2855 = fadd fast float %2772, %2736
  %2856 = fsub fast float %2855, %2789
  %2857 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  %2858 = fsub fast float %2857, %2736
  %2859 = fmul fast float %2858, %2750
  %2860 = fadd fast float %2859, %2736
  br label %2914

; <label>:2861                                    ; preds = %2749
  %2862 = and i32 %2752, 134217728
  %2863 = icmp eq i32 %2862, 0
  br i1 %2863, label %2898, label %2864

; <label>:2864                                    ; preds = %2861
  %2865 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %2866 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %2867 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %2868 = fadd fast float %2865, -5.000000e-01
  %2869 = fadd fast float %2866, -5.000000e-01
  %2870 = fadd fast float %2867, -5.000000e-01
  %2871 = fmul fast float %2868, %2750
  %2872 = fmul fast float %2869, %2750
  %2873 = fmul fast float %2870, %2750
  %2874 = fadd fast float %2871, 5.000000e-01
  %2875 = fadd fast float %2872, 5.000000e-01
  %2876 = fadd fast float %2873, 5.000000e-01
  %2877 = call float @dx.op.unary.f32(i32 24, float %2725)  ; Sqrt(value)
  %2878 = call float @dx.op.unary.f32(i32 24, float %2726)  ; Sqrt(value)
  %2879 = call float @dx.op.unary.f32(i32 24, float %2727)  ; Sqrt(value)
  %2880 = fmul fast float %2874, 2.000000e+00
  %2881 = fsub fast float 1.000000e+00, %2880
  %2882 = fmul fast float %2881, %2877
  %2883 = fadd fast float %2882, %2880
  %2884 = fmul fast float %2883, %2877
  %2885 = fmul fast float %2875, 2.000000e+00
  %2886 = fsub fast float 1.000000e+00, %2885
  %2887 = fmul fast float %2886, %2878
  %2888 = fadd fast float %2887, %2885
  %2889 = fmul fast float %2888, %2878
  %2890 = fmul fast float %2876, 2.000000e+00
  %2891 = fsub fast float 1.000000e+00, %2890
  %2892 = fmul fast float %2891, %2879
  %2893 = fadd fast float %2892, %2890
  %2894 = fmul fast float %2893, %2879
  %2895 = fmul fast float %2884, %2884
  %2896 = fmul fast float %2889, %2889
  %2897 = fmul fast float %2894, %2894
  br label %2914

; <label>:2898                                    ; preds = %2861
  %2899 = fmul fast float %405, %405
  %2900 = fmul fast float %409, %409
  %2901 = fmul fast float %413, %413
  %2902 = fadd fast float %2899, -1.000000e+00
  %2903 = fadd fast float %2900, -1.000000e+00
  %2904 = fadd fast float %2901, -1.000000e+00
  %2905 = fmul fast float %2750, %2902
  %2906 = fmul fast float %2750, %2903
  %2907 = fmul fast float %2750, %2904
  %2908 = fadd fast float %2905, 1.000000e+00
  %2909 = fadd fast float %2906, 1.000000e+00
  %2910 = fadd fast float %2907, 1.000000e+00
  %2911 = fmul fast float %2908, %2725
  %2912 = fmul fast float %2909, %2726
  %2913 = fmul fast float %2910, %2727
  br label %2914

; <label>:2914                                    ; preds = %2898, %2864, %2755, %2711
  %2915 = phi float [ %2860, %2755 ], [ %2736, %2864 ], [ %2736, %2898 ], [ 0x3FA23C0BE0000000, %2711 ]
  %2916 = phi float [ %2852, %2755 ], [ %2895, %2864 ], [ %2911, %2898 ], [ 1.000000e+00, %2711 ]
  %2917 = phi float [ %2853, %2755 ], [ %2896, %2864 ], [ %2912, %2898 ], [ 1.000000e+00, %2711 ]
  %2918 = phi float [ %2854, %2755 ], [ %2897, %2864 ], [ %2913, %2898 ], [ 1.000000e+00, %2711 ]
  %2919 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2920 = extractvalue %dx.types.CBufRet.i32 %2919, 1
  %2921 = and i32 %2920, 1
  %2922 = icmp ne i32 %2921, 0
  %2923 = add i32 %48, 356
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = and i32 %2925, 32
  %2927 = icmp ne i32 %2926, 0
  %2928 = and i1 %2922, %2927
  %2929 = select i1 %2928, float 1.000000e+00, float %2916
  %2930 = select i1 %2928, float 0x3FD3333340000000, float %2917
  %2931 = select i1 %2928, float 0x3FD3333340000000, float %2918
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = and i32 %2933, 32
  %2935 = icmp eq i32 %2934, 0
  br i1 %2935, label %3008, label %2936

; <label>:2936                                    ; preds = %2914
  %2937 = add i32 %48, 140
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = add i32 %48, 404
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = add i32 %2942, 0
  %2944 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2943, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2945 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2944, %dx.types.Handle %98, float %2636, float %2637, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2946 = extractvalue %dx.types.ResRet.f32 %2945, 0
  %2947 = extractvalue %dx.types.ResRet.f32 %2945, 1
  %2948 = extractvalue %dx.types.ResRet.f32 %2945, 2
  %2949 = extractvalue %dx.types.ResRet.f32 %2945, 3
  %2950 = and i32 %2939, 255
  %2951 = uitofp i32 %2950 to float
  %2952 = lshr i32 %2939, 8
  %2953 = and i32 %2952, 255
  %2954 = uitofp i32 %2953 to float
  %2955 = lshr i32 %2939, 16
  %2956 = and i32 %2955, 255
  %2957 = uitofp i32 %2956 to float
  %2958 = fmul fast float %2957, 0x3F70101000000000
  %2959 = fmul fast float %2946, %2951
  %2960 = fadd fast float %2959, %2954
  %2961 = fmul fast float %2960, 0x3F70101000000000
  %2962 = fadd fast float %2947, -5.000000e-01
  %2963 = fadd fast float %2949, -5.000000e-01
  %2964 = fmul fast float %2962, %2958
  %2965 = fmul fast float %2963, %2958
  %2966 = fadd fast float %2964, 5.000000e-01
  %2967 = fadd fast float %2965, 5.000000e-01
  %2968 = fmul fast float %2966, 2.000000e+00
  %2969 = fadd fast float %2968, -1.000000e+00
  %2970 = fmul fast float %2967, 2.000000e+00
  %2971 = fadd fast float %2970, -1.000000e+00
  %2972 = fadd fast float %2969, %2971
  %2973 = fmul fast float %2972, 5.000000e-01
  %2974 = fsub fast float %2969, %2971
  %2975 = fmul fast float %2974, 5.000000e-01
  %2976 = call float @dx.op.unary.f32(i32 6, float %2973)  ; FAbs(value)
  %2977 = fsub fast float 1.000000e+00, %2976
  %2978 = call float @dx.op.unary.f32(i32 6, float %2975)  ; FAbs(value)
  %2979 = fsub fast float %2977, %2978
  %2980 = call float @dx.op.dot3.f32(i32 55, float %2973, float %2975, float %2979, float %2973, float %2975, float %2979)  ; Dot3(ax,ay,az,bx,by,bz)
  %2981 = call float @dx.op.unary.f32(i32 25, float %2980)  ; Rsqrt(value)
  %2982 = fmul fast float %2973, %2981
  %2983 = fmul fast float %2975, %2981
  %2984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.i32 %2984, 0
  %2986 = and i32 %2985, 67108864
  %2987 = icmp eq i32 %2986, 0
  br i1 %2987, label %3004, label %2988

; <label>:2988                                    ; preds = %2936
  %2989 = add i32 %48, 328
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = and i32 %2991, 65535
  %2993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2992)  ; LegacyF16ToF32(value)
  %2994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.i32 %2994, 0
  %2996 = and i32 %2995, 65535
  %2997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2996)  ; LegacyF16ToF32(value)
  %2998 = lshr i32 %2991, 16
  %2999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2998)  ; LegacyF16ToF32(value)
  %3000 = fsub fast float %2961, %2999
  %3001 = fmul fast float %3000, %2993
  %3002 = fadd fast float %3001, %2997
  %3003 = call float @dx.op.unary.f32(i32 7, float %3002)  ; Saturate(value)
  br label %3004

; <label>:3004                                    ; preds = %2988, %2936
  %3005 = phi float [ %3003, %2988 ], [ %2961, %2936 ]
  %3006 = call float @dx.op.dot2.f32(i32 54, float %2982, float %2983, float %2540, float %2541)  ; Dot2(ax,ay,bx,by)
  %3007 = call float @dx.op.dot2.f32(i32 54, float %2982, float %2983, float %2542, float %2543)  ; Dot2(ax,ay,bx,by)
  br label %3008

; <label>:3008                                    ; preds = %3004, %2914
  %3009 = phi float [ %3005, %3004 ], [ 0x3FD6666660000000, %2914 ]
  %3010 = phi float [ %3006, %3004 ], [ 0.000000e+00, %2914 ]
  %3011 = phi float [ %3007, %3004 ], [ 0.000000e+00, %2914 ]
  %3012 = phi float [ %2948, %3004 ], [ 1.000000e+00, %2914 ]
  %3013 = add i32 %48, 208
  %3014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3013, i32 undef)  ; BufferLoad(srv,index,wot)
  %3015 = extractvalue %dx.types.ResRet.i32 %3014, 0
  %3016 = lshr i32 %3015, 22
  %3017 = shl nuw nsw i32 %3016, 5
  %3018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3017)  ; LegacyF16ToF32(value)
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = and i32 %3020, 64
  %3022 = icmp eq i32 %3021, 0
  br i1 %3022, label %3056, label %3023

; <label>:3023                                    ; preds = %3008
  %3024 = add i32 %48, 420
  %3025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3024, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = add i32 %3026, 0
  %3028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3027, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.i32 %3029, 0
  %3031 = and i32 %3030, 131072
  %3032 = icmp eq i32 %3031, 0
  %3033 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3028, %dx.types.Handle %98, float %2636, float %2637, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3034 = extractvalue %dx.types.ResRet.f32 %3033, 0
  %3035 = extractvalue %dx.types.ResRet.f32 %3033, 1
  %3036 = extractvalue %dx.types.ResRet.f32 %3033, 2
  %3037 = fmul fast float %3034, %393
  %3038 = fmul fast float %3035, %396
  %3039 = fmul fast float %3036, %399
  br i1 %3032, label %3046, label %3040

; <label>:3040                                    ; preds = %3023
  %3041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3042 = extractvalue %dx.types.CBufRet.f32 %3041, 0
  %3043 = fmul fast float %3042, %3037
  %3044 = fmul fast float %3042, %3038
  %3045 = fmul fast float %3042, %3039
  br label %3046

; <label>:3046                                    ; preds = %3040, %3023
  %3047 = phi float [ %3043, %3040 ], [ %3037, %3023 ]
  %3048 = phi float [ %3044, %3040 ], [ %3038, %3023 ]
  %3049 = phi float [ %3045, %3040 ], [ %3039, %3023 ]
  %3050 = fmul fast float %3047, %3018
  %3051 = select i1 %250, float %3050, float %3047
  %3052 = call float @dx.op.dot3.f32(i32 55, float %3051, float %3048, float %3049, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3053 = select i1 %250, float 0.000000e+00, float %3047
  %3054 = select i1 %250, float %3052, float %3048
  %3055 = select i1 %250, float 0.000000e+00, float %3049
  br label %3056

; <label>:3056                                    ; preds = %3046, %3008
  %3057 = phi float [ %3053, %3046 ], [ 0.000000e+00, %3008 ]
  %3058 = phi float [ %3054, %3046 ], [ 0.000000e+00, %3008 ]
  %3059 = phi float [ %3055, %3046 ], [ 0.000000e+00, %3008 ]
  %3060 = add i32 %48, 144
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = and i32 %3062, 255
  %3064 = uitofp i32 %3063 to float
  %3065 = lshr i32 %3062, 8
  %3066 = and i32 %3065, 255
  %3067 = uitofp i32 %3066 to float
  %3068 = call float @dx.op.dot3.f32(i32 55, float %2929, float %2930, float %2931, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3069 = fmul fast float %3067, %3068
  %3070 = fadd fast float %3069, %3064
  %3071 = fmul fast float %3070, 0x3F70101020000000
  %3072 = call float @dx.op.unary.f32(i32 7, float %3071)  ; Saturate(value)
  br i1 %2528, label %3073, label %3081

; <label>:3073                                    ; preds = %3056
  %3074 = fsub fast float 1.000000e+00, %2709
  %3075 = fmul fast float %3074, %2517
  %3076 = fmul fast float %3074, %2518
  %3077 = fmul fast float %3074, %2519
  %3078 = fmul fast float %3074, %2520
  %3079 = fmul fast float %3074, %2521
  %3080 = fmul fast float %3074, %2522
  br label %3081

; <label>:3081                                    ; preds = %3073, %3056
  %3082 = phi float [ %3075, %3073 ], [ %2517, %3056 ]
  %3083 = phi float [ %3076, %3073 ], [ %2518, %3056 ]
  %3084 = phi float [ %3077, %3073 ], [ %2519, %3056 ]
  %3085 = phi float [ %3078, %3073 ], [ %2520, %3056 ]
  %3086 = phi float [ %3079, %3073 ], [ %2521, %3056 ]
  %3087 = phi float [ %3080, %3073 ], [ %2522, %3056 ]
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = and i32 %3089, 3
  %3091 = icmp eq i32 %3090, 3
  br i1 %3091, label %3170, label %3092

; <label>:3092                                    ; preds = %3081
  %3093 = and i32 %3089, 16
  %3094 = icmp ne i32 %3093, 0
  %3095 = select i1 %3094, float %2709, float 0.000000e+00
  %3096 = icmp eq i32 %3090, 0
  br i1 %3096, label %3097, label %3125

; <label>:3097                                    ; preds = %3092
  %3098 = and i32 %3089, 64
  %3099 = icmp ne i32 %3098, 0
  %3100 = select i1 %3099, float %2709, float 0.000000e+00
  %3101 = fsub fast float %2929, %3082
  %3102 = fsub fast float %2930, %3083
  %3103 = fsub fast float %2931, %3084
  %3104 = fmul fast float %3095, %3101
  %3105 = fmul fast float %3095, %3102
  %3106 = fmul fast float %3095, %3103
  %3107 = fadd fast float %3104, %3082
  %3108 = fadd fast float %3105, %3083
  %3109 = fadd fast float %3106, %3084
  %3110 = fsub fast float %2915, %2523
  %3111 = fmul fast float %3095, %3110
  %3112 = fadd fast float %3111, %2523
  %3113 = fsub fast float %3057, %3085
  %3114 = fsub fast float %3058, %3086
  %3115 = fsub fast float %3059, %3087
  %3116 = fmul fast float %3100, %3113
  %3117 = fmul fast float %3100, %3114
  %3118 = fmul fast float %3100, %3115
  %3119 = fadd fast float %3116, %3085
  %3120 = fadd fast float %3117, %3086
  %3121 = fadd fast float %3118, %3087
  %3122 = fsub fast float %3072, %2526
  %3123 = fmul fast float %3095, %3122
  %3124 = fadd fast float %3123, %2526
  br label %3170

; <label>:3125                                    ; preds = %3092
  %3126 = icmp eq i32 %3090, 1
  br i1 %3126, label %3127, label %3140

; <label>:3127                                    ; preds = %3125
  %3128 = fadd fast float %2929, -1.000000e+00
  %3129 = fadd fast float %2930, -1.000000e+00
  %3130 = fadd fast float %2931, -1.000000e+00
  %3131 = fmul fast float %3095, %3128
  %3132 = fmul fast float %3095, %3129
  %3133 = fmul fast float %3095, %3130
  %3134 = fadd fast float %3131, 1.000000e+00
  %3135 = fadd fast float %3132, 1.000000e+00
  %3136 = fadd fast float %3133, 1.000000e+00
  %3137 = fmul fast float %3134, %3082
  %3138 = fmul fast float %3135, %3083
  %3139 = fmul fast float %3136, %3084
  br label %3170

; <label>:3140                                    ; preds = %3125
  %3141 = icmp eq i32 %3090, 2
  br i1 %3141, label %3142, label %3170

; <label>:3142                                    ; preds = %3140
  %3143 = call float @dx.op.unary.f32(i32 24, float %2929)  ; Sqrt(value)
  %3144 = call float @dx.op.unary.f32(i32 24, float %2930)  ; Sqrt(value)
  %3145 = call float @dx.op.unary.f32(i32 24, float %2931)  ; Sqrt(value)
  %3146 = fadd fast float %3143, -5.000000e-01
  %3147 = fadd fast float %3144, -5.000000e-01
  %3148 = fadd fast float %3145, -5.000000e-01
  %3149 = fmul fast float %3146, %3095
  %3150 = fmul fast float %3147, %3095
  %3151 = fmul fast float %3148, %3095
  %3152 = fadd fast float %3149, 5.000000e-01
  %3153 = fadd fast float %3150, 5.000000e-01
  %3154 = fadd fast float %3151, 5.000000e-01
  %3155 = fmul fast float %3152, 2.000000e+00
  %3156 = fsub fast float 1.000000e+00, %3155
  %3157 = fmul fast float %3156, %3082
  %3158 = fadd fast float %3157, %3155
  %3159 = fmul fast float %3158, %3082
  %3160 = fmul fast float %3153, 2.000000e+00
  %3161 = fsub fast float 1.000000e+00, %3160
  %3162 = fmul fast float %3161, %3083
  %3163 = fadd fast float %3162, %3160
  %3164 = fmul fast float %3163, %3083
  %3165 = fmul fast float %3154, 2.000000e+00
  %3166 = fsub fast float 1.000000e+00, %3165
  %3167 = fmul fast float %3166, %3084
  %3168 = fadd fast float %3167, %3165
  %3169 = fmul fast float %3168, %3084
  br label %3170

; <label>:3170                                    ; preds = %3142, %3140, %3127, %3097, %3081
  %3171 = phi float [ %3082, %3081 ], [ %3159, %3142 ], [ %3082, %3140 ], [ %3137, %3127 ], [ %3107, %3097 ]
  %3172 = phi float [ %3083, %3081 ], [ %3164, %3142 ], [ %3083, %3140 ], [ %3138, %3127 ], [ %3108, %3097 ]
  %3173 = phi float [ %3084, %3081 ], [ %3169, %3142 ], [ %3084, %3140 ], [ %3139, %3127 ], [ %3109, %3097 ]
  %3174 = phi float [ %3085, %3081 ], [ %3085, %3142 ], [ %3085, %3140 ], [ %3085, %3127 ], [ %3119, %3097 ]
  %3175 = phi float [ %3086, %3081 ], [ %3086, %3142 ], [ %3086, %3140 ], [ %3086, %3127 ], [ %3120, %3097 ]
  %3176 = phi float [ %3087, %3081 ], [ %3087, %3142 ], [ %3087, %3140 ], [ %3087, %3127 ], [ %3121, %3097 ]
  %3177 = phi float [ %2523, %3081 ], [ %2523, %3142 ], [ %2523, %3140 ], [ %2523, %3127 ], [ %3112, %3097 ]
  %3178 = phi float [ %2526, %3081 ], [ %2526, %3142 ], [ %2526, %3140 ], [ %2526, %3127 ], [ %3124, %3097 ]
  %3179 = and i32 %3089, 12
  %3180 = icmp eq i32 %3179, 12
  br i1 %3180, label %3253, label %3181

; <label>:3181                                    ; preds = %3170
  %3182 = and i32 %3089, 2097184
  %3183 = icmp eq i32 %3182, 2097184
  %3184 = select i1 %3183, float %2709, float 0.000000e+00
  %3185 = and i32 %3089, 4194336
  %3186 = icmp eq i32 %3185, 4194336
  %3187 = select i1 %3186, float %2709, float 0.000000e+00
  %3188 = and i32 %3089, 8388640
  %3189 = icmp eq i32 %3188, 8388640
  %3190 = select i1 %3189, float %2709, float 0.000000e+00
  %3191 = icmp eq i32 %3179, 0
  br i1 %3191, label %3192, label %3205

; <label>:3192                                    ; preds = %3181
  %3193 = fsub fast float %3010, %2515
  %3194 = fsub fast float %3011, %2516
  %3195 = fmul fast float %3184, %3193
  %3196 = fmul fast float %3184, %3194
  %3197 = fadd fast float %3195, %2515
  %3198 = fadd fast float %3196, %2516
  %3199 = fsub fast float %3012, %2525
  %3200 = fmul fast float %3187, %3199
  %3201 = fadd fast float %3200, %2525
  %3202 = fsub fast float %3009, %2524
  %3203 = fmul fast float %3190, %3202
  %3204 = fadd fast float %3203, %2524
  br label %3253

; <label>:3205                                    ; preds = %3181
  %3206 = icmp eq i32 %3179, 4
  br i1 %3206, label %3207, label %3239

; <label>:3207                                    ; preds = %3205
  %3208 = fmul fast float %3184, %3010
  %3209 = fmul fast float %3184, %3011
  %3210 = fadd fast float %3208, %2515
  %3211 = fadd fast float %3209, %2516
  %3212 = call float @dx.op.binary.f32(i32 36, float %2525, float %3012)  ; FMin(a,b)
  %3213 = fsub fast float %3212, %2525
  %3214 = fmul fast float %3213, %3187
  %3215 = fadd fast float %3214, %2525
  %3216 = fadd fast float %3009, %2524
  %3217 = fmul fast float %3216, 0x3FF337FAE0000000
  %3218 = fmul fast float %2524, %2524
  %3219 = fmul fast float %3009, %3009
  %3220 = fadd fast float %3219, %3218
  %3221 = fmul fast float %3220, 0x3FE5152B00000000
  %3222 = fmul fast float %2524, 0xBFCC1F85E0000000
  %3223 = fmul fast float %3222, %3009
  %3224 = fadd fast float %3223, 0xBFE1363700000000
  %3225 = fadd fast float %3224, %3217
  %3226 = fsub fast float %3225, %3221
  %3227 = fmul fast float %3216, 0x3FBA6F0D00000000
  %3228 = fmul fast float %3220, 0x3FD0432880000000
  %3229 = fmul fast float %2524, 0xBFEF110800000000
  %3230 = fmul fast float %3229, %3009
  %3231 = fadd fast float %3230, 1.000000e+00
  %3232 = fsub fast float %3231, %3227
  %3233 = fadd fast float %3232, %3228
  %3234 = fdiv fast float %3226, %3233
  %3235 = call float @dx.op.unary.f32(i32 7, float %3234)  ; Saturate(value)
  %3236 = fsub fast float %3235, %2524
  %3237 = fmul fast float %3236, %3190
  %3238 = fadd fast float %3237, %2524
  br label %3253

; <label>:3239                                    ; preds = %3205
  %3240 = icmp eq i32 %3179, 8
  br i1 %3240, label %3241, label %3253

; <label>:3241                                    ; preds = %3239
  %3242 = fmul fast float %3184, %3010
  %3243 = fmul fast float %3184, %3011
  %3244 = fadd fast float %3242, %2515
  %3245 = fadd fast float %3243, %2516
  %3246 = call float @dx.op.binary.f32(i32 36, float %2525, float %3012)  ; FMin(a,b)
  %3247 = fsub fast float %3246, %2525
  %3248 = fmul fast float %3247, %3187
  %3249 = fadd fast float %3248, %2525
  %3250 = fsub fast float %3009, %2524
  %3251 = fmul fast float %3190, %3250
  %3252 = fadd fast float %3251, %2524
  br label %3253

; <label>:3253                                    ; preds = %3241, %3239, %3207, %3192, %3170, %2708, %2527, %2514
  %3254 = phi float [ %2515, %3170 ], [ %2515, %2708 ], [ %2515, %2514 ], [ %2515, %2527 ], [ %3197, %3192 ], [ %3210, %3207 ], [ %2515, %3239 ], [ %3244, %3241 ]
  %3255 = phi float [ %2516, %3170 ], [ %2516, %2708 ], [ %2516, %2514 ], [ %2516, %2527 ], [ %3198, %3192 ], [ %3211, %3207 ], [ %2516, %3239 ], [ %3245, %3241 ]
  %3256 = phi float [ %3171, %3170 ], [ %2517, %2708 ], [ %2517, %2514 ], [ %2517, %2527 ], [ %3171, %3192 ], [ %3171, %3207 ], [ %3171, %3239 ], [ %3171, %3241 ]
  %3257 = phi float [ %3172, %3170 ], [ %2518, %2708 ], [ %2518, %2514 ], [ %2518, %2527 ], [ %3172, %3192 ], [ %3172, %3207 ], [ %3172, %3239 ], [ %3172, %3241 ]
  %3258 = phi float [ %3173, %3170 ], [ %2519, %2708 ], [ %2519, %2514 ], [ %2519, %2527 ], [ %3173, %3192 ], [ %3173, %3207 ], [ %3173, %3239 ], [ %3173, %3241 ]
  %3259 = phi float [ %3174, %3170 ], [ %2520, %2708 ], [ %2520, %2514 ], [ %2520, %2527 ], [ %3174, %3192 ], [ %3174, %3207 ], [ %3174, %3239 ], [ %3174, %3241 ]
  %3260 = phi float [ %3175, %3170 ], [ %2521, %2708 ], [ %2521, %2514 ], [ %2521, %2527 ], [ %3175, %3192 ], [ %3175, %3207 ], [ %3175, %3239 ], [ %3175, %3241 ]
  %3261 = phi float [ %3176, %3170 ], [ %2522, %2708 ], [ %2522, %2514 ], [ %2522, %2527 ], [ %3176, %3192 ], [ %3176, %3207 ], [ %3176, %3239 ], [ %3176, %3241 ]
  %3262 = phi float [ %3177, %3170 ], [ %2523, %2708 ], [ %2523, %2514 ], [ %2523, %2527 ], [ %3177, %3192 ], [ %3177, %3207 ], [ %3177, %3239 ], [ %3177, %3241 ]
  %3263 = phi float [ %2524, %3170 ], [ %2524, %2708 ], [ %2524, %2514 ], [ %2524, %2527 ], [ %3204, %3192 ], [ %3238, %3207 ], [ %2524, %3239 ], [ %3252, %3241 ]
  %3264 = phi float [ %2525, %3170 ], [ %2525, %2708 ], [ %2525, %2514 ], [ %2525, %2527 ], [ %3201, %3192 ], [ %3215, %3207 ], [ %2525, %3239 ], [ %3249, %3241 ]
  %3265 = phi float [ %3178, %3170 ], [ %2526, %2708 ], [ %2526, %2514 ], [ %2526, %2527 ], [ %3178, %3192 ], [ %3178, %3207 ], [ %3178, %3239 ], [ %3178, %3241 ]
  %3266 = add i32 %48, 360
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3266, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3269 = extractvalue %dx.types.ResRet.i32 %3267, 1
  %3270 = bitcast i32 %3268 to float
  %3271 = bitcast i32 %3269 to float
  %3272 = fcmp fast oge float %3270, 0.000000e+00
  %3273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3274 = extractvalue %dx.types.CBufRet.f32 %3273, 0
  %3275 = select i1 %3272, float %3270, float %3274
  %3276 = add i32 %48, 456
  %3277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3276, i32 undef)  ; BufferLoad(srv,index,wot)
  %3278 = extractvalue %dx.types.ResRet.i32 %3277, 0
  %3279 = add i32 %3278, 0
  %3280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3279, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3281 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3280, %dx.types.Handle %99, float %80, float %81, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3282 = extractvalue %dx.types.ResRet.f32 %3281, 0
  %3283 = fmul fast float %3282, %3271
  %3284 = fadd fast float %3283, %3275
  %3285 = call float @dx.op.dot2.f32(i32 54, float %3254, float %3255, float %3254, float %3255)  ; Dot2(ax,ay,bx,by)
  %3286 = fmul fast float %3285, 0x3FE3333340000000
  %3287 = fsub fast float 1.000000e+00, %3286
  %3288 = call float @dx.op.dot3.f32(i32 55, float %3254, float %3255, float %3287, float %3254, float %3255, float %3287)  ; Dot3(ax,ay,az,bx,by,bz)
  %3289 = call float @dx.op.unary.f32(i32 25, float %3288)  ; Rsqrt(value)
  %3290 = fmul fast float %3289, %3254
  %3291 = fmul fast float %3289, %3255
  %3292 = fmul fast float %3287, %3289
  %3293 = fmul fast float %3292, %109
  %3294 = fmul fast float %3292, %110
  %3295 = fmul fast float %3292, %111
  %3296 = fmul fast float %3290, %73
  %3297 = fmul fast float %3290, %74
  %3298 = fmul fast float %3290, %75
  %3299 = fadd fast float %3293, %3296
  %3300 = fadd fast float %3294, %3297
  %3301 = fadd fast float %3295, %3298
  %3302 = fmul fast float %121, %3291
  %3303 = fmul fast float %122, %3291
  %3304 = fmul fast float %123, %3291
  %3305 = fadd fast float %3299, %3302
  %3306 = fadd fast float %3300, %3303
  %3307 = fadd fast float %3301, %3304
  %3308 = call float @dx.op.dot3.f32(i32 55, float %3305, float %3306, float %3307, float %3305, float %3306, float %3307)  ; Dot3(ax,ay,az,bx,by,bz)
  %3309 = call float @dx.op.unary.f32(i32 25, float %3308)  ; Rsqrt(value)
  %3310 = fmul fast float %3305, %3309
  %3311 = fmul fast float %3306, %3309
  %3312 = fmul fast float %3307, %3309
  %3313 = icmp eq i32 %49, 65535
  br i1 %3313, label %3828, label %3314

; <label>:3314                                    ; preds = %3253
  %3315 = call float @dx.op.unary.f32(i32 83, float %50)  ; DerivCoarseX(value)
  %3316 = call float @dx.op.unary.f32(i32 83, float %51)  ; DerivCoarseX(value)
  %3317 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %3318 = call float @dx.op.unary.f32(i32 84, float %50)  ; DerivCoarseY(value)
  %3319 = call float @dx.op.unary.f32(i32 84, float %51)  ; DerivCoarseY(value)
  %3320 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %3321 = fadd fast float %3315, %50
  %3322 = fadd fast float %3316, %51
  %3323 = fadd fast float %3317, %52
  %3324 = fadd fast float %3318, %50
  %3325 = fadd fast float %3319, %51
  %3326 = fadd fast float %3320, %52
  %3327 = mul i32 %49, 48
  %3328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3327, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.f32 %3328, 0
  %3330 = extractvalue %dx.types.ResRet.f32 %3328, 1
  %3331 = extractvalue %dx.types.ResRet.f32 %3328, 2
  %3332 = add i32 %3327, 16
  %3333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3332, i32 undef)  ; BufferLoad(srv,index,wot)
  %3334 = extractvalue %dx.types.ResRet.f32 %3333, 0
  %3335 = extractvalue %dx.types.ResRet.f32 %3333, 1
  %3336 = extractvalue %dx.types.ResRet.f32 %3333, 2
  %3337 = add i32 %3327, 32
  %3338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3337, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.f32 %3338, 0
  %3340 = extractvalue %dx.types.ResRet.f32 %3338, 1
  %3341 = extractvalue %dx.types.ResRet.f32 %3338, 2
  %3342 = extractvalue %dx.types.ResRet.f32 %3338, 3
  %3343 = bitcast float %3342 to i32
  %3344 = fmul fast float %3329, %50
  %3345 = fmul fast float %3330, %51
  %3346 = fmul fast float %3331, %52
  %3347 = fsub fast float %3344, %3334
  %3348 = fsub fast float %3345, %3335
  %3349 = fsub fast float %3346, %3336
  %3350 = call float @dx.op.unary.f32(i32 7, float %3347)  ; Saturate(value)
  %3351 = call float @dx.op.unary.f32(i32 7, float %3348)  ; Saturate(value)
  %3352 = call float @dx.op.unary.f32(i32 7, float %3349)  ; Saturate(value)
  %3353 = fmul fast float %3350, %3339
  %3354 = fmul fast float %3351, %3340
  %3355 = fmul fast float %3352, %3341
  %3356 = fadd fast float %3339, -1.000000e+00
  %3357 = fadd fast float %3340, -1.000000e+00
  %3358 = fadd fast float %3341, -1.000000e+00
  %3359 = call float @dx.op.unary.f32(i32 27, float %3353)  ; Round_ni(value)
  %3360 = call float @dx.op.unary.f32(i32 27, float %3354)  ; Round_ni(value)
  %3361 = call float @dx.op.unary.f32(i32 27, float %3355)  ; Round_ni(value)
  %3362 = call float @dx.op.binary.f32(i32 36, float %3359, float %3356)  ; FMin(a,b)
  %3363 = call float @dx.op.binary.f32(i32 36, float %3360, float %3357)  ; FMin(a,b)
  %3364 = call float @dx.op.binary.f32(i32 36, float %3361, float %3358)  ; FMin(a,b)
  %3365 = fmul fast float %3364, %3340
  %3366 = fadd fast float %3365, %3363
  %3367 = fmul fast float %3366, %3339
  %3368 = fadd fast float %3367, %3362
  %3369 = fptosi float %3368 to i32
  %3370 = add nsw i32 %3369, %3343
  %3371 = shl nsw i32 %3370, 2
  %3372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.i32 %3372, 0
  %3374 = lshr i32 %3373, 16
  %3375 = icmp eq i32 %3374, 0
  br i1 %3375, label %3797, label %3376

; <label>:3376                                    ; preds = %3314
  br label %3377

; <label>:3377                                    ; preds = %3498, %3376
  %3378 = phi i32 [ %3400, %3498 ], [ %3374, %3376 ]
  %3379 = phi float [ %3499, %3498 ], [ 0.000000e+00, %3376 ]
  %3380 = phi float [ %3500, %3498 ], [ %3284, %3376 ]
  %3381 = phi float [ %3501, %3498 ], [ %3265, %3376 ]
  %3382 = phi float [ %3502, %3498 ], [ 0.000000e+00, %3376 ]
  %3383 = phi float [ %3503, %3498 ], [ 0.000000e+00, %3376 ]
  %3384 = phi float [ %3504, %3498 ], [ %3259, %3376 ]
  %3385 = phi float [ %3505, %3498 ], [ %3260, %3376 ]
  %3386 = phi float [ %3506, %3498 ], [ %3261, %3376 ]
  %3387 = phi float [ %3507, %3498 ], [ %3310, %3376 ]
  %3388 = phi float [ %3508, %3498 ], [ %3311, %3376 ]
  %3389 = phi float [ %3509, %3498 ], [ %3312, %3376 ]
  %3390 = phi float [ %3510, %3498 ], [ %3264, %3376 ]
  %3391 = phi float [ %3511, %3498 ], [ %3263, %3376 ]
  %3392 = phi float [ %3512, %3498 ], [ 0.000000e+00, %3376 ]
  %3393 = phi float [ %3513, %3498 ], [ %3262, %3376 ]
  %3394 = phi float [ %3514, %3498 ], [ %3256, %3376 ]
  %3395 = phi float [ %3515, %3498 ], [ %3257, %3376 ]
  %3396 = phi float [ %3516, %3498 ], [ %3258, %3376 ]
  %3397 = shl nuw nsw i32 %3378, 2
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = lshr i32 %3399, 16
  %3401 = shl i32 %3399, 8
  %3402 = and i32 %3401, 16776960
  %3403 = or i32 %3402, 48
  %3404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.f32 %3404, 0
  %3406 = extractvalue %dx.types.ResRet.f32 %3404, 1
  %3407 = extractvalue %dx.types.ResRet.f32 %3404, 2
  %3408 = or i32 %3402, 64
  %3409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.i32 %3409, 0
  %3411 = extractvalue %dx.types.ResRet.i32 %3409, 1
  %3412 = or i32 %3402, 80
  %3413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.f32 %3413, 2
  %3415 = extractvalue %dx.types.ResRet.f32 %3413, 3
  %3416 = or i32 %3402, 96
  %3417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.f32 %3417, 0
  %3419 = extractvalue %dx.types.ResRet.f32 %3417, 1
  %3420 = extractvalue %dx.types.ResRet.f32 %3417, 2
  %3421 = extractvalue %dx.types.ResRet.f32 %3417, 3
  %3422 = or i32 %3402, 112
  %3423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3422, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.f32 %3423, 2
  %3425 = or i32 %3402, 128
  %3426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.f32 %3426, 0
  %3428 = extractvalue %dx.types.ResRet.f32 %3426, 1
  %3429 = extractvalue %dx.types.ResRet.f32 %3426, 2
  %3430 = extractvalue %dx.types.ResRet.f32 %3426, 3
  %3431 = or i32 %3402, 144
  %3432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.f32 %3432, 0
  %3434 = extractvalue %dx.types.ResRet.f32 %3432, 1
  %3435 = extractvalue %dx.types.ResRet.f32 %3432, 2
  %3436 = extractvalue %dx.types.ResRet.f32 %3432, 3
  %3437 = or i32 %3402, 160
  %3438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.f32 %3438, 0
  %3440 = extractvalue %dx.types.ResRet.f32 %3438, 1
  %3441 = extractvalue %dx.types.ResRet.f32 %3438, 2
  %3442 = extractvalue %dx.types.ResRet.f32 %3438, 3
  %3443 = or i32 %3402, 192
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = or i32 %3402, 208
  %3447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.f32 %3447, 0
  %3449 = or i32 %3402, 248
  %3450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3451 = extractvalue %dx.types.ResRet.f32 %3450, 0
  %3452 = extractvalue %dx.types.ResRet.f32 %3450, 1
  %3453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.f32 %3453, 0
  %3455 = extractvalue %dx.types.ResRet.f32 %3453, 1
  %3456 = extractvalue %dx.types.ResRet.f32 %3453, 2
  %3457 = extractvalue %dx.types.ResRet.f32 %3453, 3
  %3458 = call float @dx.op.dot4.f32(i32 56, float %3454, float %3455, float %3456, float %3457, float %50, float %51, float %52, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3459 = or i32 %3402, 16
  %3460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.f32 %3460, 0
  %3462 = extractvalue %dx.types.ResRet.f32 %3460, 1
  %3463 = extractvalue %dx.types.ResRet.f32 %3460, 2
  %3464 = extractvalue %dx.types.ResRet.f32 %3460, 3
  %3465 = call float @dx.op.dot4.f32(i32 56, float %3461, float %3462, float %3463, float %3464, float %50, float %51, float %52, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3466 = or i32 %3402, 32
  %3467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.f32 %3467, 0
  %3469 = extractvalue %dx.types.ResRet.f32 %3467, 1
  %3470 = extractvalue %dx.types.ResRet.f32 %3467, 2
  %3471 = extractvalue %dx.types.ResRet.f32 %3467, 3
  %3472 = call float @dx.op.dot4.f32(i32 56, float %3468, float %3469, float %3470, float %3471, float %50, float %51, float %52, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3473 = call float @dx.op.unary.f32(i32 27, float %3458)  ; Round_ni(value)
  %3474 = call float @dx.op.unary.f32(i32 6, float %3473)  ; FAbs(value)
  %3475 = call float @dx.op.unary.f32(i32 27, float %3465)  ; Round_ni(value)
  %3476 = call float @dx.op.unary.f32(i32 6, float %3475)  ; FAbs(value)
  %3477 = call float @dx.op.unary.f32(i32 6, float %3472)  ; FAbs(value)
  %3478 = call float @dx.op.unary.f32(i32 27, float %3477)  ; Round_ni(value)
  %3479 = fadd fast float %3476, %3474
  %3480 = fadd fast float %3479, %3478
  %3481 = fcmp fast oeq float %3480, 0.000000e+00
  %3482 = call float @dx.op.dot4.f32(i32 56, float %3454, float %3455, float %3456, float %3457, float %3321, float %3322, float %3323, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3483 = call float @dx.op.dot4.f32(i32 56, float %3461, float %3462, float %3463, float %3464, float %3321, float %3322, float %3323, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3484 = call float @dx.op.dot4.f32(i32 56, float %3454, float %3455, float %3456, float %3457, float %3324, float %3325, float %3326, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3485 = call float @dx.op.dot4.f32(i32 56, float %3461, float %3462, float %3463, float %3464, float %3324, float %3325, float %3326, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3486 = fsub fast float %3482, %3458
  %3487 = fsub fast float %3484, %3458
  %3488 = fsub fast float %3483, %3465
  %3489 = fsub fast float %3485, %3465
  %3490 = call float @dx.op.dot3.f32(i32 55, float %3405, float %3406, float %3407, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %3491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3492 = extractvalue %dx.types.CBufRet.f32 %3491, 2
  %3493 = fadd fast float %3492, %3490
  %3494 = call float @dx.op.unary.f32(i32 7, float %3493)  ; Saturate(value)
  %3495 = extractvalue %dx.types.CBufRet.f32 %3491, 0
  %3496 = fcmp fast ogt float %3494, %3495
  %3497 = and i1 %3481, %3496
  br i1 %3497, label %3518, label %3498

; <label>:3498                                    ; preds = %3783, %3601, %3518, %3377
  %3499 = phi float [ %3379, %3518 ], [ %3604, %3601 ], [ %3604, %3783 ], [ %3379, %3377 ]
  %3500 = phi float [ %3380, %3518 ], [ %3380, %3601 ], [ %3758, %3783 ], [ %3380, %3377 ]
  %3501 = phi float [ %3381, %3518 ], [ %3381, %3601 ], [ %3756, %3783 ], [ %3381, %3377 ]
  %3502 = phi float [ %3382, %3518 ], [ %3382, %3601 ], [ %3728, %3783 ], [ %3382, %3377 ]
  %3503 = phi float [ %3383, %3518 ], [ %3383, %3601 ], [ %3726, %3783 ], [ %3383, %3377 ]
  %3504 = phi float [ %3384, %3518 ], [ %3384, %3601 ], [ %3793, %3783 ], [ %3384, %3377 ]
  %3505 = phi float [ %3385, %3518 ], [ %3385, %3601 ], [ %3794, %3783 ], [ %3385, %3377 ]
  %3506 = phi float [ %3386, %3518 ], [ %3386, %3601 ], [ %3795, %3783 ], [ %3386, %3377 ]
  %3507 = phi float [ %3387, %3518 ], [ %3387, %3601 ], [ %3707, %3783 ], [ %3387, %3377 ]
  %3508 = phi float [ %3388, %3518 ], [ %3388, %3601 ], [ %3708, %3783 ], [ %3388, %3377 ]
  %3509 = phi float [ %3389, %3518 ], [ %3389, %3601 ], [ %3709, %3783 ], [ %3389, %3377 ]
  %3510 = phi float [ %3390, %3518 ], [ %3390, %3601 ], [ %3736, %3783 ], [ %3390, %3377 ]
  %3511 = phi float [ %3391, %3518 ], [ %3391, %3601 ], [ %3733, %3783 ], [ %3391, %3377 ]
  %3512 = phi float [ %3392, %3518 ], [ %3392, %3601 ], [ %3730, %3783 ], [ %3392, %3377 ]
  %3513 = phi float [ %3393, %3518 ], [ %3393, %3601 ], [ %3724, %3783 ], [ %3393, %3377 ]
  %3514 = phi float [ %3394, %3518 ], [ %3394, %3601 ], [ %3719, %3783 ], [ %3394, %3377 ]
  %3515 = phi float [ %3395, %3518 ], [ %3395, %3601 ], [ %3720, %3783 ], [ %3395, %3377 ]
  %3516 = phi float [ %3396, %3518 ], [ %3396, %3601 ], [ %3721, %3783 ], [ %3396, %3377 ]
  %3517 = icmp eq i32 %3400, 0
  br i1 %3517, label %3796, label %3377

; <label>:3518                                    ; preds = %3377
  %3519 = extractvalue %dx.types.ResRet.f32 %3404, 3
  %3520 = extractvalue %dx.types.ResRet.f32 %3423, 3
  %3521 = extractvalue %dx.types.ResRet.f32 %3423, 1
  %3522 = extractvalue %dx.types.ResRet.f32 %3423, 0
  %3523 = extractvalue %dx.types.ResRet.f32 %3413, 1
  %3524 = extractvalue %dx.types.ResRet.f32 %3413, 0
  %3525 = extractvalue %dx.types.ResRet.i32 %3409, 3
  %3526 = extractvalue %dx.types.ResRet.i32 %3409, 2
  %3527 = bitcast float %3519 to i32
  %3528 = add i32 %3525, 0
  %3529 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3528, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3531 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3529, %dx.types.Handle %3530, float %3458, float %3465, float undef, float undef, i32 0, i32 0, i32 undef, float %3486, float %3488, float undef, float %3487, float %3489, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3532 = extractvalue %dx.types.ResRet.f32 %3531, 0
  %3533 = fmul fast float %3532, %3524
  %3534 = fadd fast float %3533, %3523
  %3535 = call float @dx.op.unary.f32(i32 7, float %3534)  ; Saturate(value)
  %3536 = fmul fast float %3458, %3418
  %3537 = call float @dx.op.tertiary.f32(i32 46, float %3419, float %3465, float %3536)  ; FMad(a,b,c)
  %3538 = fadd fast float %3537, %3522
  %3539 = fmul fast float %3458, %3420
  %3540 = call float @dx.op.tertiary.f32(i32 46, float %3421, float %3465, float %3539)  ; FMad(a,b,c)
  %3541 = fadd fast float %3540, %3521
  %3542 = fmul fast float %3486, %3418
  %3543 = call float @dx.op.tertiary.f32(i32 46, float %3419, float %3488, float %3542)  ; FMad(a,b,c)
  %3544 = fmul fast float %3486, %3420
  %3545 = call float @dx.op.tertiary.f32(i32 46, float %3421, float %3488, float %3544)  ; FMad(a,b,c)
  %3546 = fmul fast float %3487, %3418
  %3547 = call float @dx.op.tertiary.f32(i32 46, float %3419, float %3489, float %3546)  ; FMad(a,b,c)
  %3548 = fmul fast float %3487, %3420
  %3549 = call float @dx.op.tertiary.f32(i32 46, float %3421, float %3489, float %3548)  ; FMad(a,b,c)
  %3550 = add i32 %3526, 0
  %3551 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3550, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3552 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3551, %dx.types.Handle %3530, float %3538, float %3541, float undef, float undef, i32 0, i32 0, i32 undef, float %3543, float %3545, float undef, float %3547, float %3549, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3553 = extractvalue %dx.types.ResRet.f32 %3552, 0
  %3554 = and i32 %3527, 1024
  %3555 = icmp ne i32 %3554, 0
  %3556 = fcmp fast ogt float %3553, 0x3FE0101020000000
  %3557 = uitofp i1 %3556 to float
  %3558 = select i1 %3555, float %3557, float %3553
  %3559 = and i32 %3527, 8192
  %3560 = icmp ne i32 %3559, 0
  %3561 = select i1 %3560, float %3520, float 1.000000e+00
  %3562 = fmul fast float %3458, 2.000000e+00
  %3563 = fadd fast float %3562, -1.000000e+00
  %3564 = call float @dx.op.unary.f32(i32 6, float %3563)  ; FAbs(value)
  %3565 = fmul fast float %3564, %3451
  %3566 = fsub fast float %3565, %3451
  %3567 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3568 = fmul fast float %3465, 2.000000e+00
  %3569 = fadd fast float %3568, -1.000000e+00
  %3570 = call float @dx.op.unary.f32(i32 6, float %3569)  ; FAbs(value)
  %3571 = fmul fast float %3570, %3452
  %3572 = fsub fast float %3571, %3452
  %3573 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  %3574 = fmul fast float %3477, %3414
  %3575 = fsub fast float %3574, %3414
  %3576 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  %3577 = fmul fast float %3535, %3561
  %3578 = fmul fast float %3577, %3532
  %3579 = fmul fast float %3578, %3567
  %3580 = fmul fast float %3579, %3558
  %3581 = fmul fast float %3580, %3573
  %3582 = fmul fast float %3581, %3576
  %3583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3584 = extractvalue %dx.types.CBufRet.f32 %3583, 1
  %3585 = extractvalue %dx.types.CBufRet.f32 %3583, 0
  %3586 = fsub fast float %3494, %3585
  %3587 = fmul fast float %3586, %3584
  %3588 = call float @dx.op.unary.f32(i32 7, float %3587)  ; Saturate(value)
  %3589 = fmul fast float %3582, %3415
  %3590 = fadd fast float %3582, %3415
  %3591 = fmul fast float %3590, %3424
  %3592 = fsub fast float %3591, %3424
  %3593 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3594 = and i32 %3527, 128
  %3595 = icmp ne i32 %3594, 0
  %3596 = select i1 %3595, float %3593, float %3589
  %3597 = fmul fast float %3596, %3588
  %3598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3599 = extractvalue %dx.types.CBufRet.f32 %3598, 0
  %3600 = fcmp fast ugt float %3597, %3599
  br i1 %3600, label %3601, label %3498

; <label>:3601                                    ; preds = %3518
  %3602 = select i1 %3560, float %3597, float 0.000000e+00
  %3603 = fadd fast float %3602, %3379
  %3604 = call float @dx.op.unary.f32(i32 7, float %3603)  ; Saturate(value)
  br i1 %3560, label %3498, label %3605

; <label>:3605                                    ; preds = %3601
  %3606 = and i32 %3527, 4
  %3607 = and i32 %3527, 8
  %3608 = add i32 %3410, 0
  %3609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3608, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3610 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3611 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3609, %dx.types.Handle %3610, float %3538, float %3541, float undef, float undef, i32 0, i32 0, i32 undef, float %3543, float %3545, float undef, float %3547, float %3549, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.ResRet.f32 %3611, 1
  %3614 = extractvalue %dx.types.ResRet.f32 %3611, 2
  %3615 = extractvalue %dx.types.ResRet.f32 %3611, 3
  %3616 = bitcast float %3436 to i32
  %3617 = and i32 %3616, 255
  %3618 = uitofp i32 %3617 to float
  %3619 = lshr i32 %3616, 8
  %3620 = and i32 %3619, 255
  %3621 = uitofp i32 %3620 to float
  %3622 = fmul fast float %3615, %3618
  %3623 = fadd fast float %3622, %3621
  %3624 = fmul fast float %3623, 0x3F70101000000000
  %3625 = add i32 %3411, 0
  %3626 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3625, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3627 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3626, %dx.types.Handle %3610, float %3538, float %3541, float undef, float undef, i32 0, i32 0, i32 undef, float %3543, float %3545, float undef, float %3547, float %3549, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = extractvalue %dx.types.ResRet.f32 %3627, 1
  %3630 = extractvalue %dx.types.ResRet.f32 %3627, 2
  %3631 = extractvalue %dx.types.ResRet.f32 %3627, 3
  %3632 = bitcast float %3430 to i32
  %3633 = and i32 %3632, 255
  %3634 = uitofp i32 %3633 to float
  %3635 = lshr i32 %3632, 8
  %3636 = and i32 %3635, 255
  %3637 = uitofp i32 %3636 to float
  %3638 = lshr i32 %3632, 16
  %3639 = and i32 %3638, 255
  %3640 = uitofp i32 %3639 to float
  %3641 = fmul fast float %3640, 0x3F70101000000000
  %3642 = fmul fast float %3628, %3634
  %3643 = fadd fast float %3642, %3637
  %3644 = fmul fast float %3643, 0x3F70101000000000
  %3645 = fadd fast float %3629, -5.000000e-01
  %3646 = fadd fast float %3631, -5.000000e-01
  %3647 = fmul fast float %3645, %3641
  %3648 = fmul fast float %3646, %3641
  %3649 = fadd fast float %3647, 5.000000e-01
  %3650 = fadd fast float %3648, 5.000000e-01
  %3651 = fmul fast float %3612, %3439
  %3652 = fmul fast float %3613, %3440
  %3653 = fmul fast float %3614, %3441
  %3654 = fmul fast float %3649, 2.000000e+00
  %3655 = fadd fast float %3654, -1.000000e+00
  %3656 = fmul fast float %3650, 2.000000e+00
  %3657 = fadd fast float %3656, -1.000000e+00
  %3658 = fadd fast float %3655, %3657
  %3659 = fmul fast float %3658, 5.000000e-01
  %3660 = fsub fast float %3655, %3657
  %3661 = fmul fast float %3660, 5.000000e-01
  %3662 = call float @dx.op.unary.f32(i32 6, float %3659)  ; FAbs(value)
  %3663 = fsub fast float 1.000000e+00, %3662
  %3664 = call float @dx.op.unary.f32(i32 6, float %3661)  ; FAbs(value)
  %3665 = fsub fast float %3663, %3664
  %3666 = call float @dx.op.dot3.f32(i32 55, float %3659, float %3661, float %3665, float %3659, float %3661, float %3665)  ; Dot3(ax,ay,az,bx,by,bz)
  %3667 = call float @dx.op.unary.f32(i32 25, float %3666)  ; Rsqrt(value)
  %3668 = fmul fast float %3659, %3667
  %3669 = fmul fast float %3661, %3667
  %3670 = fmul fast float %3667, %3665
  %3671 = fmul fast float %3670, %3405
  %3672 = fmul fast float %3670, %3406
  %3673 = fmul fast float %3670, %3407
  %3674 = fmul fast float %3668, %3427
  %3675 = fmul fast float %3668, %3428
  %3676 = fmul fast float %3668, %3429
  %3677 = fadd fast float %3674, %3671
  %3678 = fadd fast float %3675, %3672
  %3679 = fadd fast float %3676, %3673
  %3680 = fmul fast float %3669, %3433
  %3681 = fmul fast float %3669, %3434
  %3682 = fmul fast float %3669, %3435
  %3683 = fadd fast float %3677, %3680
  %3684 = fadd fast float %3678, %3681
  %3685 = fadd fast float %3679, %3682
  %3686 = call float @dx.op.dot3.f32(i32 55, float %3683, float %3684, float %3685, float %3683, float %3684, float %3685)  ; Dot3(ax,ay,az,bx,by,bz)
  %3687 = call float @dx.op.unary.f32(i32 25, float %3686)  ; Rsqrt(value)
  %3688 = fmul fast float %3683, %3687
  %3689 = fmul fast float %3684, %3687
  %3690 = fmul fast float %3685, %3687
  %3691 = icmp ne i32 %3607, 0
  %3692 = select i1 %3691, float 1.000000e+00, float 0.000000e+00
  %3693 = fmul fast float %3597, %3692
  %3694 = and i32 %3527, 1
  %3695 = icmp eq i32 %3694, 0
  br i1 %3695, label %3696, label %3700

; <label>:3696                                    ; preds = %3605
  %3697 = fsub fast float %3688, %3387
  %3698 = fsub fast float %3689, %3388
  %3699 = fsub fast float %3690, %3389
  br label %3700

; <label>:3700                                    ; preds = %3696, %3605
  %3701 = phi float [ %3697, %3696 ], [ %3688, %3605 ]
  %3702 = phi float [ %3698, %3696 ], [ %3689, %3605 ]
  %3703 = phi float [ %3699, %3696 ], [ %3690, %3605 ]
  %3704 = fmul float %3703, %3693
  %3705 = fmul float %3702, %3693
  %3706 = fmul float %3701, %3693
  %3707 = fadd fast float %3706, %3387
  %3708 = fadd fast float %3705, %3388
  %3709 = fadd fast float %3704, %3389
  %3710 = icmp ne i32 %3606, 0
  %3711 = select i1 %3710, float 1.000000e+00, float 0.000000e+00
  %3712 = fmul fast float %3597, %3711
  %3713 = fsub fast float %3651, %3394
  %3714 = fsub fast float %3652, %3395
  %3715 = fsub fast float %3653, %3396
  %3716 = fmul fast float %3713, %3712
  %3717 = fmul fast float %3714, %3712
  %3718 = fmul fast float %3715, %3712
  %3719 = fadd fast float %3716, %3394
  %3720 = fadd fast float %3717, %3395
  %3721 = fadd fast float %3718, %3396
  %3722 = fsub fast float %3624, %3393
  %3723 = fmul fast float %3722, %3712
  %3724 = fadd fast float %3723, %3393
  %3725 = fmul fast float %3712, %3383
  %3726 = fsub fast float %3383, %3725
  %3727 = fmul fast float %3712, %3382
  %3728 = fsub fast float %3382, %3727
  %3729 = fadd fast float %3597, %3392
  %3730 = call float @dx.op.unary.f32(i32 7, float %3729)  ; Saturate(value)
  %3731 = fsub fast float %3644, %3391
  %3732 = fmul fast float %3731, %3693
  %3733 = fadd fast float %3732, %3391
  %3734 = fsub fast float %3630, %3390
  %3735 = fmul fast float %3734, %3693
  %3736 = fadd fast float %3735, %3390
  %3737 = call float @dx.op.dot3.f32(i32 55, float %3651, float %3652, float %3653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3739 = extractvalue %dx.types.CBufRet.f32 %3738, 0
  %3740 = extractvalue %dx.types.CBufRet.f32 %3738, 1
  %3741 = fmul fast float %3740, %3737
  %3742 = fadd fast float %3741, %3739
  %3743 = call float @dx.op.unary.f32(i32 7, float %3742)  ; Saturate(value)
  %3744 = bitcast float %3442 to i32
  %3745 = and i32 %3744, 65535
  %3746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3745)  ; LegacyF16ToF32(value)
  %3747 = lshr i32 %3744, 16
  %3748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3747)  ; LegacyF16ToF32(value)
  %3749 = fcmp fast oge float %3746, 0.000000e+00
  %3750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3751 = extractvalue %dx.types.CBufRet.f32 %3750, 0
  %3752 = select i1 %3749, float %3746, float %3751
  %3753 = fadd fast float %3752, %3748
  %3754 = fsub fast float %3743, %3381
  %3755 = fmul fast float %3754, %3597
  %3756 = fadd fast float %3755, %3381
  %3757 = fmul fast float %3753, %3597
  %3758 = call float @dx.op.binary.f32(i32 35, float %3380, float %3757)  ; FMax(a,b)
  %3759 = and i32 %3527, 16
  %3760 = icmp eq i32 %3759, 0
  br i1 %3760, label %3783, label %3761

; <label>:3761                                    ; preds = %3700
  %3762 = bitcast float %3448 to i32
  %3763 = add i32 %3445, 0
  %3764 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3763, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3765 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3764, %dx.types.Handle %3610, float %3538, float %3541, float undef, float undef, i32 0, i32 0, i32 undef, float %3543, float %3545, float undef, float %3547, float %3549, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3766 = extractvalue %dx.types.ResRet.f32 %3765, 0
  %3767 = extractvalue %dx.types.ResRet.f32 %3765, 1
  %3768 = extractvalue %dx.types.ResRet.f32 %3765, 2
  %3769 = and i32 %3762, 65535
  %3770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3769)  ; LegacyF16ToF32(value)
  %3771 = fmul fast float %3766, %3439
  %3772 = fmul fast float %3767, %3440
  %3773 = fmul fast float %3768, %3441
  %3774 = and i32 %3527, 16384
  %3775 = icmp ne i32 %3774, 0
  %3776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3777 = extractvalue %dx.types.CBufRet.f32 %3776, 0
  %3778 = select i1 %3775, float %3777, float 1.000000e+00
  %3779 = fmul fast float %3778, %3770
  %3780 = fmul fast float %3771, %3779
  %3781 = fmul fast float %3772, %3779
  %3782 = fmul fast float %3773, %3779
  br label %3783

; <label>:3783                                    ; preds = %3761, %3700
  %3784 = phi float [ %3780, %3761 ], [ 0.000000e+00, %3700 ]
  %3785 = phi float [ %3781, %3761 ], [ 0.000000e+00, %3700 ]
  %3786 = phi float [ %3782, %3761 ], [ 0.000000e+00, %3700 ]
  %3787 = fsub fast float %3784, %3384
  %3788 = fsub fast float %3785, %3385
  %3789 = fsub fast float %3786, %3386
  %3790 = fmul fast float %3787, %3597
  %3791 = fmul fast float %3788, %3597
  %3792 = fmul fast float %3789, %3597
  %3793 = fadd fast float %3790, %3384
  %3794 = fadd fast float %3791, %3385
  %3795 = fadd fast float %3792, %3386
  br label %3498

; <label>:3796                                    ; preds = %3498
  br label %3797

; <label>:3797                                    ; preds = %3796, %3314
  %3798 = phi float [ 0.000000e+00, %3314 ], [ %3499, %3796 ]
  %3799 = phi float [ %3284, %3314 ], [ %3500, %3796 ]
  %3800 = phi float [ %3265, %3314 ], [ %3501, %3796 ]
  %3801 = phi float [ 0.000000e+00, %3314 ], [ %3502, %3796 ]
  %3802 = phi float [ 0.000000e+00, %3314 ], [ %3503, %3796 ]
  %3803 = phi float [ %3259, %3314 ], [ %3504, %3796 ]
  %3804 = phi float [ %3260, %3314 ], [ %3505, %3796 ]
  %3805 = phi float [ %3261, %3314 ], [ %3506, %3796 ]
  %3806 = phi float [ %3310, %3314 ], [ %3507, %3796 ]
  %3807 = phi float [ %3311, %3314 ], [ %3508, %3796 ]
  %3808 = phi float [ %3312, %3314 ], [ %3509, %3796 ]
  %3809 = phi float [ %3264, %3314 ], [ %3510, %3796 ]
  %3810 = phi float [ %3263, %3314 ], [ %3511, %3796 ]
  %3811 = phi float [ 0.000000e+00, %3314 ], [ %3512, %3796 ]
  %3812 = phi float [ %3262, %3314 ], [ %3513, %3796 ]
  %3813 = phi float [ %3256, %3314 ], [ %3514, %3796 ]
  %3814 = phi float [ %3257, %3314 ], [ %3515, %3796 ]
  %3815 = phi float [ %3258, %3314 ], [ %3516, %3796 ]
  %3816 = call float @dx.op.dot3.f32(i32 55, float %3806, float %3807, float %3808, float %3806, float %3807, float %3808)  ; Dot3(ax,ay,az,bx,by,bz)
  %3817 = call float @dx.op.unary.f32(i32 25, float %3816)  ; Rsqrt(value)
  %3818 = fmul fast float %3817, %3806
  %3819 = fmul fast float %3817, %3807
  %3820 = fmul fast float %3817, %3808
  %3821 = fadd fast float %3811, %1045
  %3822 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  %3823 = call float @dx.op.dot3.f32(i32 55, float %3818, float %3819, float %3820, float %3818, float %3819, float %3820)  ; Dot3(ax,ay,az,bx,by,bz)
  %3824 = call float @dx.op.unary.f32(i32 25, float %3823)  ; Rsqrt(value)
  %3825 = fmul fast float %3824, %3818
  %3826 = fmul fast float %3824, %3819
  %3827 = fmul fast float %3824, %3820
  br label %3828

; <label>:3828                                    ; preds = %3797, %3253
  %3829 = phi float [ %3825, %3797 ], [ %3310, %3253 ]
  %3830 = phi float [ %3826, %3797 ], [ %3311, %3253 ]
  %3831 = phi float [ %3827, %3797 ], [ %3312, %3253 ]
  %3832 = phi float [ %3813, %3797 ], [ %3256, %3253 ]
  %3833 = phi float [ %3814, %3797 ], [ %3257, %3253 ]
  %3834 = phi float [ %3815, %3797 ], [ %3258, %3253 ]
  %3835 = phi float [ %3803, %3797 ], [ %3259, %3253 ]
  %3836 = phi float [ %3804, %3797 ], [ %3260, %3253 ]
  %3837 = phi float [ %3805, %3797 ], [ %3261, %3253 ]
  %3838 = phi float [ %3812, %3797 ], [ %3262, %3253 ]
  %3839 = phi float [ %3822, %3797 ], [ %1045, %3253 ]
  %3840 = phi float [ %3810, %3797 ], [ %3263, %3253 ]
  %3841 = phi float [ %3809, %3797 ], [ %3264, %3253 ]
  %3842 = phi float [ %3802, %3797 ], [ 0.000000e+00, %3253 ]
  %3843 = phi float [ %3801, %3797 ], [ 0.000000e+00, %3253 ]
  %3844 = phi float [ %3798, %3797 ], [ 0.000000e+00, %3253 ]
  %3845 = phi float [ %3799, %3797 ], [ %3284, %3253 ]
  %3846 = phi float [ %3800, %3797 ], [ %3265, %3253 ]
  %3847 = fadd fast float %3838, 0xBFB99999A0000000
  %3848 = call float @dx.op.unary.f32(i32 7, float %3847)  ; Saturate(value)
  %3849 = fmul fast float %3848, 0x3FF1C71C80000000
  %3850 = call float @dx.op.binary.f32(i32 36, float %3838, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3851 = fsub fast float 1.000000e+00, %3849
  %3852 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  %3853 = fmul fast float %3852, %3832
  %3854 = fmul fast float %3852, %3833
  %3855 = fmul fast float %3852, %3834
  %3856 = call float @dx.op.unary.f32(i32 7, float %3853)  ; Saturate(value)
  %3857 = call float @dx.op.unary.f32(i32 7, float %3854)  ; Saturate(value)
  %3858 = call float @dx.op.unary.f32(i32 7, float %3855)  ; Saturate(value)
  %3859 = fmul fast float %3849, %3832
  %3860 = fmul fast float %3849, %3833
  %3861 = fmul fast float %3849, %3834
  %3862 = fadd fast float %3859, %3850
  %3863 = fadd fast float %3860, %3850
  %3864 = fadd fast float %3861, %3850
  %3865 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3866 = call float @dx.op.unary.f32(i32 7, float %3863)  ; Saturate(value)
  %3867 = call float @dx.op.unary.f32(i32 7, float %3864)  ; Saturate(value)
  %3868 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3870 = extractvalue %dx.types.CBufRet.i32 %3869, 3
  %3871 = and i32 %3870, 8
  %3872 = icmp ne i32 %3871, 0
  %3873 = call float @dx.op.binary.f32(i32 35, float %3856, float %3832)  ; FMax(a,b)
  %3874 = call float @dx.op.binary.f32(i32 35, float %3857, float %3832)  ; FMax(a,b)
  %3875 = call float @dx.op.binary.f32(i32 35, float %3858, float %3832)  ; FMax(a,b)
  %3876 = call float @dx.op.dot3.f32(i32 55, float %3856, float %3857, float %3858, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3877 = select i1 %250, float %3832, float %3856
  %3878 = select i1 %250, float %3876, float %3857
  %3879 = select i1 %250, float 1.000000e+00, float %3858
  %3880 = select i1 %3872, float %3873, float %3877
  %3881 = select i1 %3872, float %3874, float %3878
  %3882 = select i1 %3872, float %3875, float %3879
  %3883 = and i32 %226, 3
  %3884 = select i1 %220, i32 %3883, i32 0
  %3885 = icmp eq i32 %3884, 1
  br i1 %3885, label %3886, label %3962

; <label>:3886                                    ; preds = %3828
  %3887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3888 = extractvalue %dx.types.CBufRet.f32 %3887, 0
  %3889 = extractvalue %dx.types.CBufRet.f32 %3887, 1
  %3890 = fadd fast float %3888, %189
  %3891 = fadd fast float %3889, %190
  %3892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3893 = extractvalue %dx.types.CBufRet.f32 %3892, 0
  %3894 = extractvalue %dx.types.CBufRet.f32 %3892, 1
  %3895 = fsub fast float %3890, %3893
  %3896 = fsub fast float %3891, %3894
  %3897 = fmul fast float %3895, %3895
  %3898 = fmul fast float %3896, %3896
  %3899 = fadd fast float %3897, %3898
  %3900 = call float @dx.op.unary.f32(i32 24, float %3899)  ; Sqrt(value)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3892, 2
  %3902 = fcmp fast olt float %3900, %3901
  br i1 %3902, label %3903, label %3956

; <label>:3903                                    ; preds = %3886
  %3904 = extractvalue %dx.types.CBufRet.f32 %3887, 2
  %3905 = fadd fast float %3904, %191
  %3906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.f32 %3906, 0
  %3908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3908, 0
  %3910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3911 = extractvalue %dx.types.CBufRet.f32 %3910, 0
  %3912 = extractvalue %dx.types.CBufRet.f32 %3906, 1
  %3913 = extractvalue %dx.types.CBufRet.f32 %3908, 1
  %3914 = extractvalue %dx.types.CBufRet.f32 %3910, 1
  %3915 = extractvalue %dx.types.CBufRet.f32 %3906, 3
  %3916 = extractvalue %dx.types.CBufRet.f32 %3908, 3
  %3917 = extractvalue %dx.types.CBufRet.f32 %3910, 3
  %3918 = fadd fast float %3915, %3890
  %3919 = fadd fast float %3916, %3891
  %3920 = fadd fast float %3905, %3917
  %3921 = fmul fast float %3918, %3907
  %3922 = call float @dx.op.tertiary.f32(i32 46, float %3919, float %3909, float %3921)  ; FMad(a,b,c)
  %3923 = call float @dx.op.tertiary.f32(i32 46, float %3920, float %3911, float %3922)  ; FMad(a,b,c)
  %3924 = fmul fast float %3918, %3912
  %3925 = call float @dx.op.tertiary.f32(i32 46, float %3919, float %3913, float %3924)  ; FMad(a,b,c)
  %3926 = call float @dx.op.tertiary.f32(i32 46, float %3920, float %3914, float %3925)  ; FMad(a,b,c)
  %3927 = fsub fast float %3923, %3915
  %3928 = fsub fast float %3926, %3916
  %3929 = fsub fast float %3927, %3893
  %3930 = fadd fast float %3929, %3901
  %3931 = fsub fast float %3928, %3894
  %3932 = fadd fast float %3931, %3901
  %3933 = extractvalue %dx.types.CBufRet.f32 %3892, 3
  %3934 = fmul fast float %3930, %3933
  %3935 = fmul fast float %3932, %3933
  %3936 = call float @dx.op.unary.f32(i32 7, float %3934)  ; Saturate(value)
  %3937 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  %3938 = fsub fast float 1.000000e+00, %3936
  %3939 = fsub fast float 1.000000e+00, %3937
  %3940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %42, float %3938, float %3939, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3941 = extractvalue %dx.types.ResRet.f32 %3940, 0
  %3942 = fcmp fast ugt float %3941, 0.000000e+00
  br i1 %3942, label %3943, label %3956

; <label>:3943                                    ; preds = %3903
  %3944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3945 = extractvalue %dx.types.CBufRet.f32 %3944, 2
  %3946 = fmul fast float %3945, %3941
  %3947 = extractvalue %dx.types.CBufRet.f32 %3944, 3
  %3948 = fadd fast float %3947, %3946
  %3949 = extractvalue %dx.types.CBufRet.f32 %3910, 2
  %3950 = fadd fast float %3948, %3917
  %3951 = fmul fast float %3923, %3911
  %3952 = call float @dx.op.tertiary.f32(i32 46, float %3926, float %3914, float %3951)  ; FMad(a,b,c)
  %3953 = call float @dx.op.tertiary.f32(i32 46, float %3950, float %3949, float %3952)  ; FMad(a,b,c)
  %3954 = fsub fast float %3953, %3917
  %3955 = fsub fast float %3954, %3904
  br label %3956

; <label>:3956                                    ; preds = %3943, %3903, %3886
  %3957 = phi i1 [ true, %3943 ], [ false, %3903 ], [ false, %3886 ]
  %3958 = phi float [ %3955, %3943 ], [ -1.310720e+05, %3903 ], [ -1.310720e+05, %3886 ]
  %3959 = fsub fast float %3958, %191
  %3960 = call float @dx.op.unary.f32(i32 7, float %3959)  ; Saturate(value)
  %3961 = select i1 %3957, float %3960, float 1.000000e+00
  br label %3962

; <label>:3962                                    ; preds = %3956, %3828
  %3963 = phi float [ %3961, %3956 ], [ 0.000000e+00, %3828 ]
  %3964 = icmp eq i32 %3884, 3
  %3965 = select i1 %3964, float 1.000000e+00, float %3963
  %3966 = call float @dx.op.binary.f32(i32 35, float %3844, float %3965)  ; FMax(a,b)
  %3967 = fcmp fast olt float %3965, 1.000000e+00
  %3968 = fcmp uge float %63, 0.000000e+00
  %3969 = and i1 %3968, %3967
  br i1 %3969, label %3970, label %3980

; <label>:3970                                    ; preds = %3962
  %3971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %40, float %63, float %64, float %65, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3972 = extractvalue %dx.types.ResRet.f32 %3971, 0
  %3973 = extractvalue %dx.types.ResRet.f32 %3971, 1
  %3974 = extractvalue %dx.types.ResRet.f32 %3971, 2
  %3975 = fadd fast float %3972, %3966
  %3976 = fcmp ule float %62, 0.000000e+00
  %3977 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3978 = select i1 %3976, float %3977, float 1.000000e+00
  %3979 = fmul fast float %3978, %3974
  br label %3980

; <label>:3980                                    ; preds = %3970, %3962
  %3981 = phi float [ %3975, %3970 ], [ %3966, %3962 ]
  %3982 = phi float [ %3973, %3970 ], [ 0.000000e+00, %3962 ]
  %3983 = phi float [ %3979, %3970 ], [ 0.000000e+00, %3962 ]
  %3984 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3985 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3986 = call float @dx.op.unary.f32(i32 7, float %3983)  ; Saturate(value)
  %3987 = fcmp fast une float %3985, 0.000000e+00
  %3988 = fcmp fast une float %3986, 0.000000e+00
  %3989 = or i1 %3987, %3988
  br i1 %3989, label %3990, label %4549

; <label>:3990                                    ; preds = %3980
  br i1 %3987, label %3991, label %4264

; <label>:3991                                    ; preds = %3990
  %3992 = call float @dx.op.unary.f32(i32 23, float %3841)  ; Log(value)
  %3993 = fmul fast float %3992, 4.000000e+00
  %3994 = call float @dx.op.unary.f32(i32 21, float %3993)  ; Exp(value)
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 0
  %3997 = fmul fast float %3996, %50
  %3998 = fmul fast float %3996, %51
  %3999 = fmul fast float %3996, %52
  %4000 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %4001 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %4002 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4003 = call float @dx.op.unary.f32(i32 23, float %4000)  ; Log(value)
  %4004 = call float @dx.op.unary.f32(i32 23, float %4001)  ; Log(value)
  %4005 = call float @dx.op.unary.f32(i32 23, float %4002)  ; Log(value)
  %4006 = fmul fast float %4003, 4.000000e+00
  %4007 = fmul fast float %4004, 4.000000e+00
  %4008 = fmul fast float %4005, 4.000000e+00
  %4009 = call float @dx.op.unary.f32(i32 21, float %4006)  ; Exp(value)
  %4010 = call float @dx.op.unary.f32(i32 21, float %4007)  ; Exp(value)
  %4011 = call float @dx.op.unary.f32(i32 21, float %4008)  ; Exp(value)
  %4012 = fadd fast float %4010, %4009
  %4013 = fadd fast float %4012, %4011
  %4014 = fdiv fast float 1.000000e+00, %4013
  %4015 = fmul fast float %4014, %4009
  %4016 = fcmp fast ogt float %59, 0.000000e+00
  %4017 = fcmp fast ogt float %60, 0.000000e+00
  %4018 = fcmp fast ogt float %61, 0.000000e+00
  %4019 = fcmp fast olt float %59, 0.000000e+00
  %4020 = fcmp fast olt float %60, 0.000000e+00
  %4021 = fcmp fast olt float %61, 0.000000e+00
  %4022 = zext i1 %4016 to i32
  %4023 = zext i1 %4017 to i32
  %4024 = zext i1 %4018 to i32
  %4025 = zext i1 %4019 to i32
  %4026 = zext i1 %4020 to i32
  %4027 = zext i1 %4021 to i32
  %4028 = sub nsw i32 %4022, %4025
  %4029 = sub nsw i32 %4023, %4026
  %4030 = sub nsw i32 %4024, %4027
  %4031 = call float @dx.op.unary.f32(i32 83, float %3997)  ; DerivCoarseX(value)
  %4032 = call float @dx.op.unary.f32(i32 83, float %3998)  ; DerivCoarseX(value)
  %4033 = call float @dx.op.unary.f32(i32 83, float %3999)  ; DerivCoarseX(value)
  %4034 = call float @dx.op.unary.f32(i32 84, float %3997)  ; DerivCoarseY(value)
  %4035 = call float @dx.op.unary.f32(i32 84, float %3998)  ; DerivCoarseY(value)
  %4036 = call float @dx.op.unary.f32(i32 84, float %3999)  ; DerivCoarseY(value)
  %4037 = fcmp fast ole float %261, %4015
  %4038 = fmul fast float %4014, %4012
  %4039 = fcmp fast ole float %261, %4038
  %4040 = select i1 %4039, float %3999, float %3997
  %4041 = select i1 %4039, float %3997, float %3998
  %4042 = select i1 %4037, float %3998, float %4040
  %4043 = select i1 %4037, float %3999, float %4041
  %4044 = select i1 %4039, float %4033, float %4031
  %4045 = select i1 %4039, float %4031, float %4032
  %4046 = select i1 %4037, float %4032, float %4044
  %4047 = select i1 %4037, float %4033, float %4045
  %4048 = select i1 %4039, float %4036, float %4034
  %4049 = select i1 %4039, float %4034, float %4035
  %4050 = select i1 %4037, float %4035, float %4048
  %4051 = select i1 %4037, float %4036, float %4049
  %4052 = call float @dx.op.unary.f32(i32 27, float %4042)  ; Round_ni(value)
  %4053 = call float @dx.op.unary.f32(i32 27, float %4043)  ; Round_ni(value)
  %4054 = fptosi float %4052 to i32
  %4055 = fptosi float %4053 to i32
  %4056 = xor i32 %4055, %4054
  %4057 = sitofp i32 %4056 to float
  %4058 = fptosi float %4057 to i32
  %4059 = sitofp i32 %4058 to float
  %4060 = fmul fast float %4059, 0x3FE3C6EF40000000
  %4061 = frem fast float %4052, 2.560000e+02
  %4062 = frem fast float %4053, 2.560000e+02
  %4063 = fptoui float %4061 to i32
  %4064 = fptoui float %4062 to i32
  %4065 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4063, i32 %4064, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4066 = extractvalue %dx.types.ResRet.f32 %4065, 0
  %4067 = extractvalue %dx.types.ResRet.f32 %4065, 1
  %4068 = extractvalue %dx.types.ResRet.f32 %4065, 2
  %4069 = fadd fast float %4066, %4060
  %4070 = fadd fast float %4067, %4060
  %4071 = fadd fast float %4068, %4060
  %4072 = call float @dx.op.unary.f32(i32 22, float %4069)  ; Frc(value)
  %4073 = call float @dx.op.unary.f32(i32 22, float %4070)  ; Frc(value)
  %4074 = call float @dx.op.unary.f32(i32 22, float %4071)  ; Frc(value)
  %4075 = fmul fast float %4074, 0x401921FB60000000
  %4076 = call float @dx.op.unary.f32(i32 13, float %4075)  ; Sin(value)
  %4077 = call float @dx.op.unary.f32(i32 12, float %4075)  ; Cos(value)
  %4078 = fsub fast float -0.000000e+00, %4077
  %4079 = fmul fast float %4077, %4042
  %4080 = call float @dx.op.tertiary.f32(i32 46, float %4076, float %4043, float %4079)  ; FMad(a,b,c)
  %4081 = fmul fast float %4076, %4042
  %4082 = call float @dx.op.tertiary.f32(i32 46, float %4078, float %4043, float %4081)  ; FMad(a,b,c)
  %4083 = fadd fast float %4080, %4072
  %4084 = fadd fast float %4082, %4073
  %4085 = extractvalue %dx.types.CBufRet.f32 %3995, 3
  %4086 = bitcast float %4085 to i32
  %4087 = icmp eq i32 %4086, 0
  br i1 %4087, label %4126, label %4088

; <label>:4088                                    ; preds = %3991
  %4089 = add i32 %4086, 0
  %4090 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4089, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4091 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4090, %dx.types.Handle %99, float %4083, float %4084, float undef, float undef, i32 0, i32 0, i32 undef, float %4046, float %4047, float undef, float %4050, float %4051, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4092 = extractvalue %dx.types.ResRet.f32 %4091, 0
  %4093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.f32 %4093, 1
  %4095 = extractvalue %dx.types.CBufRet.f32 %4093, 2
  %4096 = fsub fast float 1.000000e+00, %3985
  %4097 = call float @dx.op.binary.f32(i32 35, float %4096, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4098 = bitcast float %3985 to i32
  %4099 = sitofp i32 %4098 to float
  %4100 = fadd fast float %4099, 0xC1CFBF8940000000
  %4101 = fmul fast float %4095, %4100
  %4102 = fadd fast float %4101, 0x41CFBF8940000000
  %4103 = fptosi float %4102 to i32
  %4104 = bitcast i32 %4103 to float
  %4105 = bitcast float %4097 to i32
  %4106 = sitofp i32 %4105 to float
  %4107 = fadd fast float %4106, 0xC1CFBF8940000000
  %4108 = fmul fast float %4107, %4095
  %4109 = fadd fast float %4108, 0x41CFBF8940000000
  %4110 = fptosi float %4109 to i32
  %4111 = bitcast i32 %4110 to float
  %4112 = fmul fast float %4104, %4094
  %4113 = fmul fast float %4111, %4094
  %4114 = fsub fast float %4097, %4112
  %4115 = fadd fast float %4113, %4097
  %4116 = call float @dx.op.unary.f32(i32 7, float %4114)  ; Saturate(value)
  %4117 = call float @dx.op.unary.f32(i32 7, float %4115)  ; Saturate(value)
  %4118 = fsub fast float %4092, %4116
  %4119 = fsub fast float %4117, %4116
  %4120 = bitcast float %4119 to i32
  %4121 = sub nsw i32 2129859010, %4120
  %4122 = bitcast i32 %4121 to float
  %4123 = fmul fast float %4122, %4118
  %4124 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4125 = fcmp fast olt float %4124, 0x3F70101020000000
  br i1 %4125, label %4264, label %4126

; <label>:4126                                    ; preds = %4088, %3991
  %4127 = phi float [ %4124, %4088 ], [ %3985, %3991 ]
  %4128 = fmul fast float %4127, %3994
  %4129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.i32 %4129, 1
  %4131 = extractvalue %dx.types.CBufRet.i32 %4129, 0
  %4132 = add i32 %4131, 0
  %4133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4134 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4133, %dx.types.Handle %98, float %4083, float %4084, float undef, float undef, i32 0, i32 0, i32 undef, float %4046, float %4047, float undef, float %4050, float %4051, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = extractvalue %dx.types.ResRet.f32 %4134, 1
  %4137 = extractvalue %dx.types.ResRet.f32 %4134, 2
  %4138 = extractvalue %dx.types.ResRet.f32 %4134, 3
  %4139 = and i32 %4130, 255
  %4140 = uitofp i32 %4139 to float
  %4141 = lshr i32 %4130, 8
  %4142 = and i32 %4141, 255
  %4143 = uitofp i32 %4142 to float
  %4144 = fmul fast float %4138, %4140
  %4145 = fadd fast float %4144, %4143
  %4146 = fmul fast float %4145, 0x3F70101000000000
  %4147 = fadd fast float %4146, 0xBFB99999A0000000
  %4148 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4149 = fmul fast float %4148, 0x3FF1C71C80000000
  %4150 = call float @dx.op.binary.f32(i32 36, float %4146, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4151 = fsub fast float 1.000000e+00, %4149
  %4152 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4153 = fmul fast float %4152, %4135
  %4154 = fmul fast float %4152, %4136
  %4155 = fmul fast float %4152, %4137
  %4156 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4157 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4158 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4159 = fmul fast float %4149, %4135
  %4160 = fmul fast float %4149, %4136
  %4161 = fmul fast float %4149, %4137
  %4162 = fadd fast float %4159, %4150
  %4163 = fadd fast float %4160, %4150
  %4164 = fadd fast float %4161, %4150
  %4165 = call float @dx.op.unary.f32(i32 7, float %4162)  ; Saturate(value)
  %4166 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4167 = call float @dx.op.unary.f32(i32 7, float %4164)  ; Saturate(value)
  %4168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.i32 %4168, 3
  %4170 = extractvalue %dx.types.CBufRet.i32 %4168, 2
  %4171 = add i32 %4170, 0
  %4172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4173 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4172, %dx.types.Handle %98, float %4083, float %4084, float undef, float undef, i32 0, i32 0, i32 undef, float %4046, float %4047, float undef, float %4050, float %4051, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.ResRet.f32 %4173, 1
  %4176 = extractvalue %dx.types.ResRet.f32 %4173, 2
  %4177 = extractvalue %dx.types.ResRet.f32 %4173, 3
  %4178 = and i32 %4169, 255
  %4179 = uitofp i32 %4178 to float
  %4180 = lshr i32 %4169, 8
  %4181 = and i32 %4180, 255
  %4182 = uitofp i32 %4181 to float
  %4183 = lshr i32 %4169, 16
  %4184 = and i32 %4183, 255
  %4185 = uitofp i32 %4184 to float
  %4186 = fmul fast float %4185, 0x3F70101000000000
  %4187 = fmul fast float %4174, %4179
  %4188 = fadd fast float %4187, %4182
  %4189 = fmul fast float %4188, 0x3F70101000000000
  %4190 = fadd fast float %4175, -5.000000e-01
  %4191 = fadd fast float %4177, -5.000000e-01
  %4192 = fmul fast float %4190, %4186
  %4193 = fmul fast float %4191, %4186
  %4194 = fadd fast float %4192, 5.000000e-01
  %4195 = fadd fast float %4193, 5.000000e-01
  %4196 = fmul fast float %4194, 2.000000e+00
  %4197 = fadd fast float %4196, -1.000000e+00
  %4198 = fmul fast float %4195, 2.000000e+00
  %4199 = fadd fast float %4198, -1.000000e+00
  %4200 = fadd fast float %4197, %4199
  %4201 = fmul fast float %4200, 5.000000e-01
  %4202 = fsub fast float %4197, %4199
  %4203 = fmul fast float %4202, 5.000000e-01
  %4204 = call float @dx.op.unary.f32(i32 6, float %4201)  ; FAbs(value)
  %4205 = fsub fast float 1.000000e+00, %4204
  %4206 = call float @dx.op.unary.f32(i32 6, float %4203)  ; FAbs(value)
  %4207 = fsub fast float %4205, %4206
  %4208 = call float @dx.op.dot3.f32(i32 55, float %4201, float %4203, float %4207, float %4201, float %4203, float %4207)  ; Dot3(ax,ay,az,bx,by,bz)
  %4209 = call float @dx.op.unary.f32(i32 25, float %4208)  ; Rsqrt(value)
  %4210 = fmul fast float %4201, %4209
  %4211 = fmul fast float %4203, %4209
  %4212 = select i1 %4039, i32 %4029, i32 %4030
  %4213 = select i1 %4037, i32 %4028, i32 %4212
  %4214 = sitofp i32 %4213 to float
  %4215 = fmul fast float %4207, %4214
  %4216 = fmul fast float %4215, %4209
  %4217 = select i1 %4039, float %4216, float %4211
  %4218 = select i1 %4039, float %4211, float %4216
  %4219 = select i1 %4037, float %4216, float %4210
  %4220 = select i1 %4037, float %4211, float %4217
  %4221 = select i1 %4037, float %4210, float %4218
  %4222 = fsub fast float %4156, %3880
  %4223 = fsub fast float %4157, %3881
  %4224 = fsub fast float %4158, %3882
  %4225 = fmul fast float %4222, %4128
  %4226 = fmul fast float %4223, %4128
  %4227 = fmul fast float %4224, %4128
  %4228 = fadd fast float %4225, %3880
  %4229 = fadd fast float %4226, %3881
  %4230 = fadd fast float %4227, %3882
  %4231 = fsub fast float %4165, %3865
  %4232 = fsub fast float %4166, %3866
  %4233 = fsub fast float %4167, %3867
  %4234 = fmul fast float %4231, %4128
  %4235 = fmul fast float %4232, %4128
  %4236 = fmul fast float %4233, %4128
  %4237 = fadd fast float %4234, %3865
  %4238 = fadd fast float %4235, %3866
  %4239 = fadd fast float %4236, %3867
  %4240 = fadd fast float %4219, %3829
  %4241 = fadd fast float %4220, %3830
  %4242 = fadd fast float %4221, %3831
  %4243 = call float @dx.op.dot3.f32(i32 55, float %4240, float %4241, float %4242, float %4240, float %4241, float %4242)  ; Dot3(ax,ay,az,bx,by,bz)
  %4244 = call float @dx.op.unary.f32(i32 25, float %4243)  ; Rsqrt(value)
  %4245 = fmul fast float %4240, %4244
  %4246 = fmul fast float %4241, %4244
  %4247 = fmul fast float %4242, %4244
  %4248 = fsub fast float %4245, %3829
  %4249 = fsub fast float %4246, %3830
  %4250 = fsub fast float %4247, %3831
  %4251 = fmul fast float %4248, %4128
  %4252 = fmul fast float %4249, %4128
  %4253 = fmul fast float %4250, %4128
  %4254 = fadd fast float %4251, %3829
  %4255 = fadd fast float %4252, %3830
  %4256 = fadd fast float %4253, %3831
  %4257 = call float @dx.op.binary.f32(i32 36, float %3841, float %4176)  ; FMin(a,b)
  %4258 = fsub fast float %4257, %3841
  %4259 = fmul fast float %4258, %4128
  %4260 = fadd fast float %4259, %3841
  %4261 = fsub fast float %4189, %3868
  %4262 = fmul fast float %4261, %4128
  %4263 = fadd fast float %4262, %3868
  br label %4264

; <label>:4264                                    ; preds = %4126, %4088, %3990
  %4265 = phi float [ %4228, %4126 ], [ %3880, %4088 ], [ %3880, %3990 ]
  %4266 = phi float [ %4229, %4126 ], [ %3881, %4088 ], [ %3881, %3990 ]
  %4267 = phi float [ %4230, %4126 ], [ %3882, %4088 ], [ %3882, %3990 ]
  %4268 = phi float [ %4237, %4126 ], [ %3865, %4088 ], [ %3865, %3990 ]
  %4269 = phi float [ %4238, %4126 ], [ %3866, %4088 ], [ %3866, %3990 ]
  %4270 = phi float [ %4239, %4126 ], [ %3867, %4088 ], [ %3867, %3990 ]
  %4271 = phi float [ %4254, %4126 ], [ %3829, %4088 ], [ %3829, %3990 ]
  %4272 = phi float [ %4255, %4126 ], [ %3830, %4088 ], [ %3830, %3990 ]
  %4273 = phi float [ %4256, %4126 ], [ %3831, %4088 ], [ %3831, %3990 ]
  %4274 = phi float [ %4263, %4126 ], [ %3868, %4088 ], [ %3868, %3990 ]
  %4275 = phi float [ %4260, %4126 ], [ %3841, %4088 ], [ %3841, %3990 ]
  br i1 %3988, label %4276, label %4549

; <label>:4276                                    ; preds = %4264
  %4277 = call float @dx.op.unary.f32(i32 23, float %4275)  ; Log(value)
  %4278 = fmul fast float %4277, 4.000000e+00
  %4279 = call float @dx.op.unary.f32(i32 21, float %4278)  ; Exp(value)
  %4280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4281 = extractvalue %dx.types.CBufRet.f32 %4280, 0
  %4282 = fmul fast float %4281, %50
  %4283 = fmul fast float %4281, %51
  %4284 = fmul fast float %4281, %52
  %4285 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %4286 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %4287 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4288 = call float @dx.op.unary.f32(i32 23, float %4285)  ; Log(value)
  %4289 = call float @dx.op.unary.f32(i32 23, float %4286)  ; Log(value)
  %4290 = call float @dx.op.unary.f32(i32 23, float %4287)  ; Log(value)
  %4291 = fmul fast float %4288, 4.000000e+00
  %4292 = fmul fast float %4289, 4.000000e+00
  %4293 = fmul fast float %4290, 4.000000e+00
  %4294 = call float @dx.op.unary.f32(i32 21, float %4291)  ; Exp(value)
  %4295 = call float @dx.op.unary.f32(i32 21, float %4292)  ; Exp(value)
  %4296 = call float @dx.op.unary.f32(i32 21, float %4293)  ; Exp(value)
  %4297 = fadd fast float %4295, %4294
  %4298 = fadd fast float %4297, %4296
  %4299 = fdiv fast float 1.000000e+00, %4298
  %4300 = fmul fast float %4299, %4294
  %4301 = fcmp fast ogt float %59, 0.000000e+00
  %4302 = fcmp fast ogt float %60, 0.000000e+00
  %4303 = fcmp fast ogt float %61, 0.000000e+00
  %4304 = fcmp fast olt float %59, 0.000000e+00
  %4305 = fcmp fast olt float %60, 0.000000e+00
  %4306 = fcmp fast olt float %61, 0.000000e+00
  %4307 = zext i1 %4301 to i32
  %4308 = zext i1 %4302 to i32
  %4309 = zext i1 %4303 to i32
  %4310 = zext i1 %4304 to i32
  %4311 = zext i1 %4305 to i32
  %4312 = zext i1 %4306 to i32
  %4313 = sub nsw i32 %4307, %4310
  %4314 = sub nsw i32 %4308, %4311
  %4315 = sub nsw i32 %4309, %4312
  %4316 = call float @dx.op.unary.f32(i32 83, float %4282)  ; DerivCoarseX(value)
  %4317 = call float @dx.op.unary.f32(i32 83, float %4283)  ; DerivCoarseX(value)
  %4318 = call float @dx.op.unary.f32(i32 83, float %4284)  ; DerivCoarseX(value)
  %4319 = call float @dx.op.unary.f32(i32 84, float %4282)  ; DerivCoarseY(value)
  %4320 = call float @dx.op.unary.f32(i32 84, float %4283)  ; DerivCoarseY(value)
  %4321 = call float @dx.op.unary.f32(i32 84, float %4284)  ; DerivCoarseY(value)
  %4322 = fcmp fast ole float %261, %4300
  %4323 = fmul fast float %4299, %4297
  %4324 = fcmp fast ole float %261, %4323
  %4325 = select i1 %4324, float %4284, float %4282
  %4326 = select i1 %4324, float %4282, float %4283
  %4327 = select i1 %4322, float %4283, float %4325
  %4328 = select i1 %4322, float %4284, float %4326
  %4329 = select i1 %4324, float %4318, float %4316
  %4330 = select i1 %4324, float %4316, float %4317
  %4331 = select i1 %4322, float %4317, float %4329
  %4332 = select i1 %4322, float %4318, float %4330
  %4333 = select i1 %4324, float %4321, float %4319
  %4334 = select i1 %4324, float %4319, float %4320
  %4335 = select i1 %4322, float %4320, float %4333
  %4336 = select i1 %4322, float %4321, float %4334
  %4337 = call float @dx.op.unary.f32(i32 27, float %4327)  ; Round_ni(value)
  %4338 = call float @dx.op.unary.f32(i32 27, float %4328)  ; Round_ni(value)
  %4339 = fptosi float %4337 to i32
  %4340 = fptosi float %4338 to i32
  %4341 = xor i32 %4340, %4339
  %4342 = sitofp i32 %4341 to float
  %4343 = fptosi float %4342 to i32
  %4344 = sitofp i32 %4343 to float
  %4345 = fmul fast float %4344, 0x3FE3C6EF40000000
  %4346 = frem fast float %4337, 2.560000e+02
  %4347 = frem fast float %4338, 2.560000e+02
  %4348 = fptoui float %4346 to i32
  %4349 = fptoui float %4347 to i32
  %4350 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4348, i32 %4349, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 0
  %4352 = extractvalue %dx.types.ResRet.f32 %4350, 1
  %4353 = extractvalue %dx.types.ResRet.f32 %4350, 2
  %4354 = fadd fast float %4351, %4345
  %4355 = fadd fast float %4352, %4345
  %4356 = fadd fast float %4353, %4345
  %4357 = call float @dx.op.unary.f32(i32 22, float %4354)  ; Frc(value)
  %4358 = call float @dx.op.unary.f32(i32 22, float %4355)  ; Frc(value)
  %4359 = call float @dx.op.unary.f32(i32 22, float %4356)  ; Frc(value)
  %4360 = fmul fast float %4359, 0x401921FB60000000
  %4361 = call float @dx.op.unary.f32(i32 13, float %4360)  ; Sin(value)
  %4362 = call float @dx.op.unary.f32(i32 12, float %4360)  ; Cos(value)
  %4363 = fsub fast float -0.000000e+00, %4362
  %4364 = fmul fast float %4362, %4327
  %4365 = call float @dx.op.tertiary.f32(i32 46, float %4361, float %4328, float %4364)  ; FMad(a,b,c)
  %4366 = fmul fast float %4361, %4327
  %4367 = call float @dx.op.tertiary.f32(i32 46, float %4363, float %4328, float %4366)  ; FMad(a,b,c)
  %4368 = fadd fast float %4365, %4357
  %4369 = fadd fast float %4367, %4358
  %4370 = extractvalue %dx.types.CBufRet.f32 %4280, 3
  %4371 = bitcast float %4370 to i32
  %4372 = icmp eq i32 %4371, 0
  br i1 %4372, label %4411, label %4373

; <label>:4373                                    ; preds = %4276
  %4374 = add i32 %4371, 0
  %4375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4374, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4376 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4375, %dx.types.Handle %99, float %4368, float %4369, float undef, float undef, i32 0, i32 0, i32 undef, float %4331, float %4332, float undef, float %4335, float %4336, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 1
  %4380 = extractvalue %dx.types.CBufRet.f32 %4378, 2
  %4381 = fsub fast float 1.000000e+00, %3986
  %4382 = call float @dx.op.binary.f32(i32 35, float %4381, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4383 = bitcast float %3986 to i32
  %4384 = sitofp i32 %4383 to float
  %4385 = fadd fast float %4384, 0xC1CFBF8940000000
  %4386 = fmul fast float %4380, %4385
  %4387 = fadd fast float %4386, 0x41CFBF8940000000
  %4388 = fptosi float %4387 to i32
  %4389 = bitcast i32 %4388 to float
  %4390 = bitcast float %4382 to i32
  %4391 = sitofp i32 %4390 to float
  %4392 = fadd fast float %4391, 0xC1CFBF8940000000
  %4393 = fmul fast float %4392, %4380
  %4394 = fadd fast float %4393, 0x41CFBF8940000000
  %4395 = fptosi float %4394 to i32
  %4396 = bitcast i32 %4395 to float
  %4397 = fmul fast float %4389, %4379
  %4398 = fmul fast float %4396, %4379
  %4399 = fsub fast float %4382, %4397
  %4400 = fadd fast float %4398, %4382
  %4401 = call float @dx.op.unary.f32(i32 7, float %4399)  ; Saturate(value)
  %4402 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  %4403 = fsub fast float %4377, %4401
  %4404 = fsub fast float %4402, %4401
  %4405 = bitcast float %4404 to i32
  %4406 = sub nsw i32 2129859010, %4405
  %4407 = bitcast i32 %4406 to float
  %4408 = fmul fast float %4407, %4403
  %4409 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  %4410 = fcmp fast olt float %4409, 0x3F70101020000000
  br i1 %4410, label %4549, label %4411

; <label>:4411                                    ; preds = %4373, %4276
  %4412 = phi float [ %4409, %4373 ], [ %3986, %4276 ]
  %4413 = fmul fast float %4412, %4279
  %4414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.i32 %4414, 1
  %4416 = extractvalue %dx.types.CBufRet.i32 %4414, 0
  %4417 = add i32 %4416, 0
  %4418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4419 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4418, %dx.types.Handle %98, float %4368, float %4369, float undef, float undef, i32 0, i32 0, i32 undef, float %4331, float %4332, float undef, float %4335, float %4336, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4420 = extractvalue %dx.types.ResRet.f32 %4419, 0
  %4421 = extractvalue %dx.types.ResRet.f32 %4419, 1
  %4422 = extractvalue %dx.types.ResRet.f32 %4419, 2
  %4423 = extractvalue %dx.types.ResRet.f32 %4419, 3
  %4424 = and i32 %4415, 255
  %4425 = uitofp i32 %4424 to float
  %4426 = lshr i32 %4415, 8
  %4427 = and i32 %4426, 255
  %4428 = uitofp i32 %4427 to float
  %4429 = fmul fast float %4423, %4425
  %4430 = fadd fast float %4429, %4428
  %4431 = fmul fast float %4430, 0x3F70101000000000
  %4432 = fadd fast float %4431, 0xBFB99999A0000000
  %4433 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4434 = fmul fast float %4433, 0x3FF1C71C80000000
  %4435 = call float @dx.op.binary.f32(i32 36, float %4431, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4436 = fsub fast float 1.000000e+00, %4434
  %4437 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4438 = fmul fast float %4437, %4420
  %4439 = fmul fast float %4437, %4421
  %4440 = fmul fast float %4437, %4422
  %4441 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4442 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4443 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4444 = fmul fast float %4434, %4420
  %4445 = fmul fast float %4434, %4421
  %4446 = fmul fast float %4434, %4422
  %4447 = fadd fast float %4444, %4435
  %4448 = fadd fast float %4445, %4435
  %4449 = fadd fast float %4446, %4435
  %4450 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4451 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4452 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4453 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4454 = extractvalue %dx.types.CBufRet.i32 %4453, 3
  %4455 = extractvalue %dx.types.CBufRet.i32 %4453, 2
  %4456 = add i32 %4455, 0
  %4457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4458 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4457, %dx.types.Handle %98, float %4368, float %4369, float undef, float undef, i32 0, i32 0, i32 undef, float %4331, float %4332, float undef, float %4335, float %4336, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4459 = extractvalue %dx.types.ResRet.f32 %4458, 0
  %4460 = extractvalue %dx.types.ResRet.f32 %4458, 1
  %4461 = extractvalue %dx.types.ResRet.f32 %4458, 2
  %4462 = extractvalue %dx.types.ResRet.f32 %4458, 3
  %4463 = and i32 %4454, 255
  %4464 = uitofp i32 %4463 to float
  %4465 = lshr i32 %4454, 8
  %4466 = and i32 %4465, 255
  %4467 = uitofp i32 %4466 to float
  %4468 = lshr i32 %4454, 16
  %4469 = and i32 %4468, 255
  %4470 = uitofp i32 %4469 to float
  %4471 = fmul fast float %4470, 0x3F70101000000000
  %4472 = fmul fast float %4459, %4464
  %4473 = fadd fast float %4472, %4467
  %4474 = fmul fast float %4473, 0x3F70101000000000
  %4475 = fadd fast float %4460, -5.000000e-01
  %4476 = fadd fast float %4462, -5.000000e-01
  %4477 = fmul fast float %4475, %4471
  %4478 = fmul fast float %4476, %4471
  %4479 = fadd fast float %4477, 5.000000e-01
  %4480 = fadd fast float %4478, 5.000000e-01
  %4481 = fmul fast float %4479, 2.000000e+00
  %4482 = fadd fast float %4481, -1.000000e+00
  %4483 = fmul fast float %4480, 2.000000e+00
  %4484 = fadd fast float %4483, -1.000000e+00
  %4485 = fadd fast float %4482, %4484
  %4486 = fmul fast float %4485, 5.000000e-01
  %4487 = fsub fast float %4482, %4484
  %4488 = fmul fast float %4487, 5.000000e-01
  %4489 = call float @dx.op.unary.f32(i32 6, float %4486)  ; FAbs(value)
  %4490 = fsub fast float 1.000000e+00, %4489
  %4491 = call float @dx.op.unary.f32(i32 6, float %4488)  ; FAbs(value)
  %4492 = fsub fast float %4490, %4491
  %4493 = call float @dx.op.dot3.f32(i32 55, float %4486, float %4488, float %4492, float %4486, float %4488, float %4492)  ; Dot3(ax,ay,az,bx,by,bz)
  %4494 = call float @dx.op.unary.f32(i32 25, float %4493)  ; Rsqrt(value)
  %4495 = fmul fast float %4486, %4494
  %4496 = fmul fast float %4488, %4494
  %4497 = select i1 %4324, i32 %4314, i32 %4315
  %4498 = select i1 %4322, i32 %4313, i32 %4497
  %4499 = sitofp i32 %4498 to float
  %4500 = fmul fast float %4492, %4499
  %4501 = fmul fast float %4500, %4494
  %4502 = select i1 %4324, float %4501, float %4496
  %4503 = select i1 %4324, float %4496, float %4501
  %4504 = select i1 %4322, float %4501, float %4495
  %4505 = select i1 %4322, float %4496, float %4502
  %4506 = select i1 %4322, float %4495, float %4503
  %4507 = fsub fast float %4441, %4265
  %4508 = fsub fast float %4442, %4266
  %4509 = fsub fast float %4443, %4267
  %4510 = fmul fast float %4507, %4413
  %4511 = fmul fast float %4508, %4413
  %4512 = fmul fast float %4509, %4413
  %4513 = fadd fast float %4510, %4265
  %4514 = fadd fast float %4511, %4266
  %4515 = fadd fast float %4512, %4267
  %4516 = fsub fast float %4450, %4268
  %4517 = fsub fast float %4451, %4269
  %4518 = fsub fast float %4452, %4270
  %4519 = fmul fast float %4516, %4413
  %4520 = fmul fast float %4517, %4413
  %4521 = fmul fast float %4518, %4413
  %4522 = fadd fast float %4519, %4268
  %4523 = fadd fast float %4520, %4269
  %4524 = fadd fast float %4521, %4270
  %4525 = fadd fast float %4504, %4271
  %4526 = fadd fast float %4505, %4272
  %4527 = fadd fast float %4506, %4273
  %4528 = call float @dx.op.dot3.f32(i32 55, float %4525, float %4526, float %4527, float %4525, float %4526, float %4527)  ; Dot3(ax,ay,az,bx,by,bz)
  %4529 = call float @dx.op.unary.f32(i32 25, float %4528)  ; Rsqrt(value)
  %4530 = fmul fast float %4525, %4529
  %4531 = fmul fast float %4526, %4529
  %4532 = fmul fast float %4527, %4529
  %4533 = fsub fast float %4530, %4271
  %4534 = fsub fast float %4531, %4272
  %4535 = fsub fast float %4532, %4273
  %4536 = fmul fast float %4533, %4413
  %4537 = fmul fast float %4534, %4413
  %4538 = fmul fast float %4535, %4413
  %4539 = fadd fast float %4536, %4271
  %4540 = fadd fast float %4537, %4272
  %4541 = fadd fast float %4538, %4273
  %4542 = call float @dx.op.binary.f32(i32 36, float %4275, float %4461)  ; FMin(a,b)
  %4543 = fsub fast float %4542, %4275
  %4544 = fmul fast float %4543, %4413
  %4545 = fadd fast float %4544, %4275
  %4546 = fsub fast float %4474, %4274
  %4547 = fmul fast float %4546, %4413
  %4548 = fadd fast float %4547, %4274
  br label %4549

; <label>:4549                                    ; preds = %4411, %4373, %4264, %3980
  %4550 = phi float [ %4513, %4411 ], [ %4265, %4373 ], [ %4265, %4264 ], [ %3880, %3980 ]
  %4551 = phi float [ %4514, %4411 ], [ %4266, %4373 ], [ %4266, %4264 ], [ %3881, %3980 ]
  %4552 = phi float [ %4515, %4411 ], [ %4267, %4373 ], [ %4267, %4264 ], [ %3882, %3980 ]
  %4553 = phi float [ %4522, %4411 ], [ %4268, %4373 ], [ %4268, %4264 ], [ %3865, %3980 ]
  %4554 = phi float [ %4523, %4411 ], [ %4269, %4373 ], [ %4269, %4264 ], [ %3866, %3980 ]
  %4555 = phi float [ %4524, %4411 ], [ %4270, %4373 ], [ %4270, %4264 ], [ %3867, %3980 ]
  %4556 = phi float [ %4539, %4411 ], [ %4271, %4373 ], [ %4271, %4264 ], [ %3829, %3980 ]
  %4557 = phi float [ %4540, %4411 ], [ %4272, %4373 ], [ %4272, %4264 ], [ %3830, %3980 ]
  %4558 = phi float [ %4541, %4411 ], [ %4273, %4373 ], [ %4273, %4264 ], [ %3831, %3980 ]
  %4559 = phi float [ %4548, %4411 ], [ %4274, %4373 ], [ %4274, %4264 ], [ %3868, %3980 ]
  %4560 = phi float [ %4545, %4411 ], [ %4275, %4373 ], [ %4275, %4264 ], [ %3841, %3980 ]
  %4561 = fcmp fast une float %3984, 0.000000e+00
  %4562 = call float @dx.op.dot3.f32(i32 55, float %189, float %190, float %191, float %189, float %190, float %191)  ; Dot3(ax,ay,az,bx,by,bz)
  %4563 = call float @dx.op.unary.f32(i32 25, float %4562)  ; Rsqrt(value)
  br i1 %4561, label %4571, label %4564

; <label>:4564                                    ; preds = %4549
  %4565 = fmul fast float %4563, %189
  %4566 = fmul fast float %4563, %190
  %4567 = fmul fast float %4563, %191
  %4568 = fsub fast float -0.000000e+00, %4565
  %4569 = fsub fast float -0.000000e+00, %4566
  %4570 = fsub fast float -0.000000e+00, %4567
  br label %4738

; <label>:4571                                    ; preds = %4549
  %4572 = fmul fast float %189, %4563
  %4573 = fsub fast float -0.000000e+00, %4572
  %4574 = fmul fast float %190, %4563
  %4575 = fsub fast float -0.000000e+00, %4574
  %4576 = fmul fast float %191, %4563
  %4577 = fsub fast float -0.000000e+00, %4576
  %4578 = call float @dx.op.dot3.f32(i32 55, float %4573, float %4575, float %4577, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4579 = fmul fast float %3984, 2.500000e+00
  %4580 = call float @dx.op.unary.f32(i32 7, float %4579)  ; Saturate(value)
  %4581 = fmul fast float %3984, 0x4013FFFFE0000000
  %4582 = fadd fast float %4581, 0xBFFFFFFFE0000000
  %4583 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4584 = fmul fast float %3984, 0x4004000020000000
  %4585 = fadd fast float %4584, 0xBFF8000040000000
  %4586 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4587 = fmul fast float %3847, 1.000000e+01
  %4588 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4589 = fmul fast float %4588, 2.000000e+00
  %4590 = fsub fast float 3.000000e+00, %4589
  %4591 = fmul fast float %4588, %4588
  %4592 = fmul fast float %4591, %4590
  %4593 = fsub fast float 1.000000e+00, %4592
  %4594 = fsub fast float 0x3FE3333340000000, %4559
  %4595 = fmul fast float %4594, 0x400AAAAAA0000000
  %4596 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4597 = fmul fast float %4593, %4596
  %4598 = fmul fast float %4550, 0x3FEA2B8620000000
  %4599 = fmul fast float %4551, 0x3FEA2B8620000000
  %4600 = fmul fast float %4552, 0x3FEA2B8620000000
  %4601 = fadd fast float %4598, 0x3FC81DFBA0000000
  %4602 = fmul fast float %4601, %4550
  %4603 = fadd fast float %4602, 0x3F910E6020000000
  %4604 = fadd fast float %4599, 0x3FC81DFBA0000000
  %4605 = fmul fast float %4604, %4551
  %4606 = fadd fast float %4605, 0x3F910E6020000000
  %4607 = fadd fast float %4600, 0x3FC81DFBA0000000
  %4608 = fmul fast float %4607, %4552
  %4609 = fadd fast float %4608, 0x3F910E6020000000
  %4610 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4611 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4612 = call float @dx.op.unary.f32(i32 7, float %4609)  ; Saturate(value)
  %4613 = fsub fast float %4610, %4550
  %4614 = fsub fast float %4611, %4551
  %4615 = fsub fast float %4612, %4552
  %4616 = fmul fast float %4613, %4580
  %4617 = fmul fast float %4616, %4597
  %4618 = fmul fast float %4614, %4580
  %4619 = fmul fast float %4618, %4597
  %4620 = fmul fast float %4615, %4580
  %4621 = fmul fast float %4620, %4597
  %4622 = fadd fast float %4617, %4550
  %4623 = fadd fast float %4619, %4551
  %4624 = fadd fast float %4621, %4552
  %4625 = fmul fast float %4560, %4560
  %4626 = fmul fast float %4625, %4625
  %4627 = fadd fast float %4583, 1.000000e+00
  %4628 = fsub fast float %4627, %4597
  %4629 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4630 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4631 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4632 = fsub fast float 1.000000e+00, %4626
  %4633 = call float @dx.op.binary.f32(i32 36, float %4629, float %4632)  ; FMin(a,b)
  %4634 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4635 = call float @dx.op.binary.f32(i32 35, float %4633, float %4634)  ; FMax(a,b)
  %4636 = fadd fast float %4631, 0xBFE4CCCCC0000000
  %4637 = fmul fast float %4636, 0x4006DB6DA0000000
  %4638 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4639 = fmul fast float %4638, 2.000000e+00
  %4640 = fsub fast float 3.000000e+00, %4639
  %4641 = bitcast float %4553 to i32
  %4642 = ashr i32 %4641, 1
  %4643 = add nsw i32 %4642, 532487669
  %4644 = bitcast i32 %4643 to float
  %4645 = fsub fast float 1.000000e+00, %4644
  %4646 = bitcast float %4645 to i32
  %4647 = sub nsw i32 2129859010, %4646
  %4648 = bitcast i32 %4647 to float
  %4649 = fmul fast float %4648, 2.000000e+00
  %4650 = bitcast float %4554 to i32
  %4651 = ashr i32 %4650, 1
  %4652 = add nsw i32 %4651, 532487669
  %4653 = bitcast i32 %4652 to float
  %4654 = fsub fast float 1.000000e+00, %4653
  %4655 = bitcast float %4654 to i32
  %4656 = sub nsw i32 2129859010, %4655
  %4657 = bitcast i32 %4656 to float
  %4658 = fmul fast float %4657, 2.000000e+00
  %4659 = bitcast float %4555 to i32
  %4660 = ashr i32 %4659, 1
  %4661 = add nsw i32 %4660, 532487669
  %4662 = bitcast i32 %4661 to float
  %4663 = fsub fast float 1.000000e+00, %4662
  %4664 = bitcast float %4663 to i32
  %4665 = sub nsw i32 2129859010, %4664
  %4666 = bitcast i32 %4665 to float
  %4667 = fmul fast float %4666, 2.000000e+00
  %4668 = fsub fast float 0x4002A9FBE0000000, %4649
  %4669 = fadd fast float %4649, 0x3FD54FDF00000000
  %4670 = bitcast float %4669 to i32
  %4671 = sub nsw i32 2129859010, %4670
  %4672 = bitcast i32 %4671 to float
  %4673 = fmul fast float %4672, %4668
  %4674 = fmul fast float %4673, %4673
  %4675 = fsub fast float 0x4002A9FBE0000000, %4658
  %4676 = fadd fast float %4658, 0x3FD54FDF00000000
  %4677 = bitcast float %4676 to i32
  %4678 = sub nsw i32 2129859010, %4677
  %4679 = bitcast i32 %4678 to float
  %4680 = fmul fast float %4679, %4675
  %4681 = fmul fast float %4680, %4680
  %4682 = fsub fast float 0x4002A9FBE0000000, %4667
  %4683 = fadd fast float %4667, 0x3FD54FDF00000000
  %4684 = bitcast float %4683 to i32
  %4685 = sub nsw i32 2129859010, %4684
  %4686 = bitcast i32 %4685 to float
  %4687 = fmul fast float %4686, %4682
  %4688 = fmul fast float %4687, %4687
  %4689 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4674)  ; FMax(a,b)
  %4690 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4681)  ; FMax(a,b)
  %4691 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4688)  ; FMax(a,b)
  %4692 = fsub fast float 1.000000e+00, %4578
  %4693 = fadd fast float %4692, %4593
  %4694 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4695 = fsub fast float 1.000000e+00, %3965
  %4696 = fmul fast float %4635, %4695
  %4697 = fmul fast float %4638, %4638
  %4698 = fmul fast float %4697, %4696
  %4699 = fmul fast float %4698, %4640
  %4700 = fmul fast float %4695, 0xBFE99999A0000000
  %4701 = fmul fast float %4700, %4580
  %4702 = fmul fast float %4701, %4597
  %4703 = fadd fast float %4702, 1.000000e+00
  %4704 = fadd fast float %4559, -1.000000e+00
  %4705 = fmul fast float %4703, %4704
  %4706 = fadd fast float %4705, 1.000000e+00
  %4707 = fsub fast float %4689, %4553
  %4708 = fsub fast float %4690, %4554
  %4709 = fsub fast float %4691, %4555
  %4710 = fmul fast float %4699, %4707
  %4711 = fmul fast float %4699, %4708
  %4712 = fmul fast float %4699, %4709
  %4713 = fadd fast float %4710, %4553
  %4714 = fadd fast float %4711, %4554
  %4715 = fadd fast float %4712, %4555
  %4716 = fsub fast float %109, %4556
  %4717 = fsub fast float %110, %4557
  %4718 = fsub fast float %111, %4558
  %4719 = fmul fast float %4699, %4716
  %4720 = fmul fast float %4699, %4717
  %4721 = fmul fast float %4699, %4718
  %4722 = fadd fast float %4719, %4556
  %4723 = fadd fast float %4720, %4557
  %4724 = fadd fast float %4721, %4558
  %4725 = fmul fast float %4699, %4694
  %4726 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4727 = fsub fast float 1.000000e+00, %4726
  %4728 = fmul fast float %4725, %4727
  %4729 = fadd fast float %4728, %4726
  %4730 = fsub fast float 1.000000e+00, %4560
  %4731 = fmul fast float %4699, %4730
  %4732 = fadd fast float %4731, %4560
  %4733 = call float @dx.op.dot3.f32(i32 55, float %4722, float %4723, float %4724, float %4722, float %4723, float %4724)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = call float @dx.op.unary.f32(i32 25, float %4733)  ; Rsqrt(value)
  %4735 = fmul fast float %4722, %4734
  %4736 = fmul fast float %4723, %4734
  %4737 = fmul fast float %4724, %4734
  br label %4738

; <label>:4738                                    ; preds = %4571, %4564
  %4739 = phi float [ %4570, %4564 ], [ %4577, %4571 ]
  %4740 = phi float [ %4569, %4564 ], [ %4575, %4571 ]
  %4741 = phi float [ %4568, %4564 ], [ %4573, %4571 ]
  %4742 = phi float [ %4567, %4564 ], [ %4576, %4571 ]
  %4743 = phi float [ %4566, %4564 ], [ %4574, %4571 ]
  %4744 = phi float [ %4565, %4564 ], [ %4572, %4571 ]
  %4745 = phi float [ %4550, %4564 ], [ %4622, %4571 ]
  %4746 = phi float [ %4551, %4564 ], [ %4623, %4571 ]
  %4747 = phi float [ %4552, %4564 ], [ %4624, %4571 ]
  %4748 = phi float [ %4553, %4564 ], [ %4713, %4571 ]
  %4749 = phi float [ %4554, %4564 ], [ %4714, %4571 ]
  %4750 = phi float [ %4555, %4564 ], [ %4715, %4571 ]
  %4751 = phi float [ %4556, %4564 ], [ %4735, %4571 ]
  %4752 = phi float [ %4557, %4564 ], [ %4736, %4571 ]
  %4753 = phi float [ %4558, %4564 ], [ %4737, %4571 ]
  %4754 = phi float [ %4559, %4564 ], [ %4729, %4571 ]
  %4755 = phi float [ %4560, %4564 ], [ %4732, %4571 ]
  %4756 = select i1 %250, float 0.000000e+00, float %4750
  %4757 = call float @dx.op.dot3.f32(i32 55, float %4751, float %4752, float %4753, float %4741, float %4740, float %4739)  ; Dot3(ax,ay,az,bx,by,bz)
  %4758 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4759 = call float @dx.op.dot3.f32(i32 55, float %4744, float %4743, float %4742, float %4751, float %4752, float %4753)  ; Dot3(ax,ay,az,bx,by,bz)
  %4760 = fmul fast float %4759, 2.000000e+00
  %4761 = fmul fast float %4760, %4751
  %4762 = fmul fast float %4760, %4752
  %4763 = fmul fast float %4760, %4753
  %4764 = fsub fast float %4744, %4761
  %4765 = fsub fast float %4743, %4762
  %4766 = fsub fast float %4742, %4763
  %4767 = call float @dx.op.binary.f32(i32 36, float %4755, float 1.000000e+00)  ; FMin(a,b)
  %4768 = fsub fast float 1.000000e+00, %4767
  %4769 = bitcast float %4768 to i32
  %4770 = ashr i32 %4769, 1
  %4771 = add nsw i32 %4770, 532487669
  %4772 = bitcast i32 %4771 to float
  %4773 = fsub fast float 1.000000e+00, %4754
  %4774 = call float @dx.op.binary.f32(i32 35, float %4773, float 0x3F847AE140000000)  ; FMax(a,b)
  %4775 = fmul fast float %4774, %4774
  %4776 = fmul fast float %4775, %4775
  %4777 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %4772, float %4776, float %4777, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4779 = extractvalue %dx.types.ResRet.f32 %4778, 0
  %4780 = fsub fast float 1.000000e+00, %4755
  %4781 = bitcast float %4780 to i32
  %4782 = sub nsw i32 2129859010, %4781
  %4783 = fsub fast float 1.000000e+00, %69
  %4784 = call float @dx.op.dot3.f32(i32 55, float %129, float %130, float %131, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4785 = call float @dx.op.binary.f32(i32 35, float %4784, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4786 = fdiv fast float %4783, %4785
  %4787 = call float @dx.op.dot3.f32(i32 55, float %4751, float %4752, float %4753, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4788 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4789 = fmul fast float %4788, 5.000000e-01
  %4790 = fadd fast float %4789, 5.000000e-01
  %4791 = fmul fast float %4790, %69
  %4792 = call float @dx.op.dot3.f32(i32 55, float %4751, float %4752, float %4753, float %129, float %130, float %131)  ; Dot3(ax,ay,az,bx,by,bz)
  %4793 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4794 = fmul fast float %4793, %4786
  %4795 = fadd fast float %4791, %4794
  %4796 = fsub fast float 5.000000e-01, %4789
  %4797 = fmul fast float %4796, %4745
  %4798 = fmul fast float %4796, %4746
  %4799 = fmul fast float %4796, %4747
  %4800 = fadd fast float %4795, %4797
  %4801 = fadd fast float %4795, %4798
  %4802 = fadd fast float %4795, %4799
  %4803 = call float @dx.op.dot3.f32(i32 55, float %4764, float %4765, float %4766, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4804 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4805 = fmul fast float %4804, 5.000000e-01
  %4806 = fadd fast float %4805, 5.000000e-01
  %4807 = fmul fast float %4806, %69
  %4808 = call float @dx.op.dot3.f32(i32 55, float %4764, float %4765, float %4766, float %129, float %130, float %131)  ; Dot3(ax,ay,az,bx,by,bz)
  %4809 = call float @dx.op.unary.f32(i32 7, float %4808)  ; Saturate(value)
  %4810 = fmul fast float %4809, %4786
  %4811 = fadd fast float %4807, %4810
  %4812 = fsub fast float 5.000000e-01, %4805
  %4813 = fmul fast float %4812, %4745
  %4814 = fmul fast float %4812, %4746
  %4815 = fmul fast float %4812, %4747
  %4816 = fadd fast float %4811, %4813
  %4817 = fadd fast float %4811, %4814
  %4818 = fadd fast float %4811, %4815
  %4819 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4821 = extractvalue %dx.types.CBufRet.f32 %4820, 0
  %4822 = call float @dx.op.binary.f32(i32 36, float %4745, float %4821)  ; FMin(a,b)
  %4823 = fmul fast float %4822, %4768
  %4824 = fsub fast float 1.000000e+00, %4823
  %4825 = bitcast float %4824 to i32
  %4826 = sub nsw i32 2129859010, %4825
  %4827 = bitcast i32 %4826 to float
  %4828 = call float @dx.op.binary.f32(i32 36, float %4746, float %4821)  ; FMin(a,b)
  %4829 = fmul fast float %4828, %4768
  %4830 = fsub fast float 1.000000e+00, %4829
  %4831 = bitcast float %4830 to i32
  %4832 = sub nsw i32 2129859010, %4831
  %4833 = bitcast i32 %4832 to float
  %4834 = call float @dx.op.binary.f32(i32 36, float %4747, float %4821)  ; FMin(a,b)
  %4835 = fmul fast float %4834, %4768
  %4836 = fsub fast float 1.000000e+00, %4835
  %4837 = bitcast float %4836 to i32
  %4838 = sub nsw i32 2129859010, %4837
  %4839 = bitcast i32 %4838 to float
  %4840 = fmul fast float %4767, %70
  %4841 = fmul fast float %4840, %4800
  %4842 = fmul fast float %4841, %4827
  %4843 = fmul fast float %4767, %71
  %4844 = fmul fast float %4843, %4801
  %4845 = fmul fast float %4844, %4833
  %4846 = fmul fast float %4767, %72
  %4847 = fmul fast float %4846, %4802
  %4848 = fmul fast float %4847, %4839
  %4849 = call float @dx.op.binary.f32(i32 36, float %4748, float %4821)  ; FMin(a,b)
  %4850 = fmul fast float %4849, %4768
  %4851 = fsub fast float 1.000000e+00, %4850
  %4852 = bitcast float %4851 to i32
  %4853 = sub nsw i32 2129859010, %4852
  %4854 = bitcast i32 %4853 to float
  %4855 = call float @dx.op.binary.f32(i32 36, float %4749, float %4821)  ; FMin(a,b)
  %4856 = fmul fast float %4855, %4768
  %4857 = fsub fast float 1.000000e+00, %4856
  %4858 = bitcast float %4857 to i32
  %4859 = sub nsw i32 2129859010, %4858
  %4860 = bitcast i32 %4859 to float
  %4861 = call float @dx.op.binary.f32(i32 36, float %4756, float %4821)  ; FMin(a,b)
  %4862 = fmul fast float %4861, %4768
  %4863 = fsub fast float 1.000000e+00, %4862
  %4864 = bitcast float %4863 to i32
  %4865 = sub nsw i32 2129859010, %4864
  %4866 = bitcast i32 %4865 to float
  %4867 = fmul fast float %4840, %4816
  %4868 = fmul fast float %4867, %4854
  %4869 = fmul fast float %4843, %4817
  %4870 = fmul fast float %4869, %4860
  %4871 = fmul fast float %4846, %4818
  %4872 = fmul fast float %4871, %4866
  %4873 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4845, float %4848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4874 = select i1 %250, float 0.000000e+00, float %4842
  %4875 = select i1 %250, float %4873, float %4845
  %4876 = select i1 %250, float 0.000000e+00, float %4848
  %4877 = call float @dx.op.dot3.f32(i32 55, float %4868, float %4870, float %4872, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4878 = select i1 %250, float 0.000000e+00, float %4868
  %4879 = select i1 %250, float %4877, float %4870
  %4880 = select i1 %250, float 0.000000e+00, float %4872
  %4881 = fmul fast float %4758, 9.843750e-01
  %4882 = fmul fast float %4754, 9.843750e-01
  %4883 = fadd fast float %4881, 7.812500e-03
  %4884 = fadd fast float %4882, 7.812500e-03
  %4885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %4883, float %4884, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4886 = extractvalue %dx.types.ResRet.f32 %4885, 2
  %4887 = extractvalue %dx.types.ResRet.f32 %4885, 3
  %4888 = fmul fast float %4886, %4748
  %4889 = fmul fast float %4886, %4749
  %4890 = fmul fast float %4886, %4756
  %4891 = fadd fast float %4888, %4887
  %4892 = fadd fast float %4889, %4887
  %4893 = fadd fast float %4890, %4887
  %4894 = fcmp fast ogt float %3842, 0.000000e+00
  br i1 %4894, label %4895, label %4921

; <label>:4895                                    ; preds = %4738
  %4896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %3842, float %4758, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 0
  %4898 = extractvalue %dx.types.ResRet.f32 %4896, 1
  %4899 = extractvalue %dx.types.ResRet.f32 %4896, 2
  %4900 = fadd fast float %4897, -5.000000e-01
  %4901 = fadd fast float %4898, -5.000000e-01
  %4902 = fadd fast float %4899, -5.000000e-01
  %4903 = fsub fast float 1.000000e+00, %4748
  %4904 = fsub fast float 1.000000e+00, %4749
  %4905 = fsub fast float 1.000000e+00, %4756
  %4906 = fmul fast float %4748, 4.000000e+00
  %4907 = fmul fast float %4906, %4903
  %4908 = fmul fast float %4907, %4900
  %4909 = fmul fast float %4749, 4.000000e+00
  %4910 = fmul fast float %4909, %4904
  %4911 = fmul fast float %4910, %4901
  %4912 = fmul fast float %4756, 4.000000e+00
  %4913 = fmul fast float %4912, %4905
  %4914 = fmul fast float %4913, %4902
  %4915 = fadd fast float %4908, %4891
  %4916 = fadd fast float %4911, %4892
  %4917 = fadd fast float %4914, %4893
  %4918 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4919 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4920 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  br label %4921

; <label>:4921                                    ; preds = %4895, %4738
  %4922 = phi float [ %4918, %4895 ], [ %4891, %4738 ]
  %4923 = phi float [ %4919, %4895 ], [ %4892, %4738 ]
  %4924 = phi float [ %4920, %4895 ], [ %4893, %4738 ]
  %4925 = call float @dx.op.binary.f32(i32 35, float %4923, float %4924)  ; FMax(a,b)
  %4926 = call float @dx.op.binary.f32(i32 35, float %4922, float %4925)  ; FMax(a,b)
  %4927 = fsub fast float 1.000000e+00, %4926
  %4928 = fmul fast float %4926, %4754
  %4929 = fadd fast float %4928, %4754
  %4930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.f32 %4930, 2
  %4932 = extractvalue %dx.types.CBufRet.f32 %4930, 3
  %4933 = fmul fast float %4929, %4931
  %4934 = fadd fast float %4933, %4932
  %4935 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4936 = fsub fast float 1.000000e+00, %4779
  %4937 = fadd fast float %4936, %4935
  %4938 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4939 = fcmp fast olt float %4938, 1.000000e+00
  br i1 %4939, label %4940, label %5388

; <label>:4940                                    ; preds = %4921
  %4941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4942 = extractvalue %dx.types.CBufRet.f32 %4941, 2
  %4943 = extractvalue %dx.types.CBufRet.f32 %4941, 3
  %4944 = fmul fast float %4942, %102
  %4945 = fmul fast float %4943, %103
  %4946 = fptoui float %4944 to i32
  %4947 = fptoui float %4945 to i32
  %4948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.f32 %4948, 0
  %4950 = extractvalue %dx.types.CBufRet.f32 %4948, 2
  %4951 = extractvalue %dx.types.CBufRet.f32 %4948, 3
  %4952 = fadd fast float %89, -4.000000e+00
  %4953 = call float @dx.op.binary.f32(i32 35, float %4952, float 0.000000e+00)  ; FMax(a,b)
  %4954 = fadd fast float %4953, %4949
  %4955 = fmul fast float %4954, %4950
  %4956 = call float @dx.op.unary.f32(i32 23, float %4955)  ; Log(value)
  %4957 = fmul fast float %4956, %4951
  %4958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4959 = extractvalue %dx.types.CBufRet.f32 %4958, 2
  %4960 = fmul fast float %4957, %4959
  %4961 = call float @dx.op.unary.f32(i32 7, float %4960)  ; Saturate(value)
  %4962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4963 = extractvalue %dx.types.CBufRet.i32 %4962, 1
  %4964 = add i32 %4963, -1
  %4965 = uitofp i32 %4963 to float
  %4966 = fmul fast float %4965, %4961
  %4967 = fptoui float %4966 to i32
  %4968 = call i32 @dx.op.binary.i32(i32 40, i32 %4967, i32 %4964)  ; UMin(a,b)
  %4969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4970 = extractvalue %dx.types.CBufRet.i32 %4969, 2
  %4971 = extractvalue %dx.types.CBufRet.i32 %4969, 3
  %4972 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4947, i32 %4970, i32 %4946)  ; UMad(a,b,c)
  %4973 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4968, i32 %4971, i32 %4972)  ; UMad(a,b,c)
  %4974 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %4975 = fptoui float %4974 to i32
  %4976 = lshr i32 %4975, 5
  %4977 = call i32 @dx.op.binary.i32(i32 40, i32 %4976, i32 8191)  ; UMin(a,b)
  br i1 false, label %4978, label %4985

; <label>:4978                                    ; preds = %4940
  %4979 = fadd fast float 0.000000e+00, %4766
  %4980 = call float @dx.op.dot3.f32(i32 55, float %4764, float %4765, float %4979, float %4764, float %4765, float %4979)  ; Dot3(ax,ay,az,bx,by,bz)
  %4981 = call float @dx.op.unary.f32(i32 25, float %4980)  ; Rsqrt(value)
  %4982 = fmul fast float %4981, %4764
  %4983 = fmul fast float %4981, %4765
  %4984 = fmul fast float %4979, %4981
  br label %4985

; <label>:4985                                    ; preds = %4978, %4940
  %4986 = phi float [ %4982, %4978 ], [ %4764, %4940 ]
  %4987 = phi float [ %4983, %4978 ], [ %4765, %4940 ]
  %4988 = phi float [ %4984, %4978 ], [ %4766, %4940 ]
  %4989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.i32 %4989, 2
  %4991 = add nsw i32 %4990, -1
  %4992 = call i32 @dx.op.binary.i32(i32 37, i32 %4991, i32 0)  ; IMax(a,b)
  %4993 = shl i32 %4977, 2
  %4994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4993, i32 undef)  ; BufferLoad(srv,index,wot)
  %4995 = extractvalue %dx.types.ResRet.i32 %4994, 0
  %4996 = lshr i32 %4995, 16
  %4997 = and i32 %4995, 65535
  %4998 = lshr i32 %4995, 21
  %4999 = lshr i32 %4997, 5
  %5000 = call i32 @dx.op.binary.i32(i32 40, i32 %4999, i32 %4992)  ; UMin(a,b)
  %5001 = icmp ugt i32 %4998, %5000
  br i1 %5001, label %5364, label %5002

; <label>:5002                                    ; preds = %4985
  br label %5003

; <label>:5003                                    ; preds = %5356, %5002
  %5004 = phi float [ %5357, %5356 ], [ 0.000000e+00, %5002 ]
  %5005 = phi float [ %5358, %5356 ], [ 0.000000e+00, %5002 ]
  %5006 = phi float [ %5359, %5356 ], [ 0.000000e+00, %5002 ]
  %5007 = phi float [ %5360, %5356 ], [ 1.000000e+00, %5002 ]
  %5008 = phi i32 [ %5361, %5356 ], [ %4998, %5002 ]
  %5009 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5010 = extractvalue %dx.types.CBufRet.i32 %5009, 2
  %5011 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4973, i32 %5010, i32 %5008)  ; UMad(a,b,c)
  %5012 = shl i32 %5011, 2
  %5013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5012, i32 undef)  ; BufferLoad(srv,index,wot)
  %5014 = extractvalue %dx.types.ResRet.i32 %5013, 0
  %5015 = shl i32 %5008, 5
  %5016 = sub nsw i32 %4996, %5015
  %5017 = call i32 @dx.op.binary.i32(i32 37, i32 %5016, i32 0)  ; IMax(a,b)
  %5018 = call i32 @dx.op.binary.i32(i32 38, i32 %5017, i32 31)  ; IMin(a,b)
  %5019 = sub nsw i32 1, %4996
  %5020 = add nsw i32 %5019, %4997
  %5021 = call i32 @dx.op.binary.i32(i32 37, i32 %5020, i32 0)  ; IMax(a,b)
  %5022 = call i32 @dx.op.binary.i32(i32 38, i32 %5021, i32 32)  ; IMin(a,b)
  %5023 = and i32 %5022, 31
  %5024 = shl i32 -1, %5023
  %5025 = xor i32 %5024, -1
  %5026 = and i32 %5018, 31
  %5027 = shl i32 %5025, %5026
  %5028 = icmp eq i32 %5022, 32
  %5029 = select i1 %5028, i32 -1, i32 %5027
  %5030 = and i32 %5029, %5014
  %5031 = icmp eq i32 %5030, 0
  br i1 %5031, label %5356, label %5032

; <label>:5032                                    ; preds = %5003
  br label %5033

; <label>:5033                                    ; preds = %5139, %5032
  %5034 = phi float [ %5140, %5139 ], [ %5004, %5032 ]
  %5035 = phi float [ %5141, %5139 ], [ %5005, %5032 ]
  %5036 = phi float [ %5142, %5139 ], [ %5006, %5032 ]
  %5037 = phi float [ %5143, %5139 ], [ %5007, %5032 ]
  %5038 = phi i32 [ %5043, %5139 ], [ %5030, %5032 ]
  %5039 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5038)  ; FirstbitLo(value)
  %5040 = add i32 %5039, %5015
  %5041 = and i32 %5039, 31
  %5042 = shl i32 1, %5041
  %5043 = xor i32 %5042, %5038
  %5044 = mul i32 %5040, 72
  %5045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5044, i32 undef)  ; BufferLoad(srv,index,wot)
  %5046 = extractvalue %dx.types.ResRet.f32 %5045, 0
  %5047 = extractvalue %dx.types.ResRet.f32 %5045, 1
  %5048 = extractvalue %dx.types.ResRet.f32 %5045, 2
  %5049 = add i32 %5044, 12
  %5050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5049, i32 undef)  ; BufferLoad(srv,index,wot)
  %5051 = extractvalue %dx.types.ResRet.i32 %5050, 0
  %5052 = add i32 %5044, 16
  %5053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5052, i32 undef)  ; BufferLoad(srv,index,wot)
  %5054 = extractvalue %dx.types.ResRet.f32 %5053, 0
  %5055 = extractvalue %dx.types.ResRet.f32 %5053, 1
  %5056 = extractvalue %dx.types.ResRet.f32 %5053, 2
  %5057 = add i32 %5044, 28
  %5058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5057, i32 undef)  ; BufferLoad(srv,index,wot)
  %5059 = extractvalue %dx.types.ResRet.f32 %5058, 0
  %5060 = add i32 %5044, 32
  %5061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5060, i32 undef)  ; BufferLoad(srv,index,wot)
  %5062 = extractvalue %dx.types.ResRet.f32 %5061, 0
  %5063 = extractvalue %dx.types.ResRet.f32 %5061, 1
  %5064 = extractvalue %dx.types.ResRet.f32 %5061, 2
  %5065 = extractvalue %dx.types.ResRet.f32 %5061, 3
  %5066 = add i32 %5044, 48
  %5067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5066, i32 undef)  ; BufferLoad(srv,index,wot)
  %5068 = extractvalue %dx.types.ResRet.f32 %5067, 0
  %5069 = extractvalue %dx.types.ResRet.f32 %5067, 1
  %5070 = add i32 %5044, 56
  %5071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5070, i32 undef)  ; BufferLoad(srv,index,wot)
  %5072 = extractvalue %dx.types.ResRet.f32 %5071, 0
  %5073 = extractvalue %dx.types.ResRet.f32 %5071, 1
  %5074 = add i32 %5044, 64
  %5075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5074, i32 undef)  ; BufferLoad(srv,index,wot)
  %5076 = extractvalue %dx.types.ResRet.f32 %5075, 0
  %5077 = extractvalue %dx.types.ResRet.f32 %5075, 1
  %5078 = mul i32 %5040, 60
  %5079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5078, i32 undef)  ; BufferLoad(srv,index,wot)
  %5080 = extractvalue %dx.types.ResRet.f32 %5079, 0
  %5081 = extractvalue %dx.types.ResRet.f32 %5079, 1
  %5082 = extractvalue %dx.types.ResRet.f32 %5079, 2
  %5083 = add i32 %5078, 12
  %5084 = add i32 %5078, 48
  %5085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5084, i32 undef)  ; BufferLoad(srv,index,wot)
  %5086 = extractvalue %dx.types.ResRet.f32 %5085, 0
  %5087 = extractvalue %dx.types.ResRet.f32 %5085, 1
  %5088 = extractvalue %dx.types.ResRet.f32 %5085, 2
  %5089 = and i32 %5051, 32767
  %5090 = bitcast float %5046 to i32
  %5091 = icmp eq i32 %5090, -1
  %5092 = bitcast float %5047 to i32
  %5093 = and i32 %5051, 32768
  %5094 = icmp ne i32 %5093, 0
  %5095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5096 = extractvalue %dx.types.CBufRet.f32 %5095, 0
  %5097 = extractvalue %dx.types.CBufRet.f32 %5095, 1
  %5098 = extractvalue %dx.types.CBufRet.f32 %5095, 2
  %5099 = fsub fast float %5080, %5096
  %5100 = fsub fast float %5081, %5097
  %5101 = fsub fast float %5082, %5098
  %5102 = fsub fast float %189, %5099
  %5103 = fsub fast float %190, %5100
  %5104 = fsub fast float %191, %5101
  %5105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5083, i32 undef)  ; BufferLoad(srv,index,wot)
  %5106 = extractvalue %dx.types.ResRet.f32 %5105, 0
  %5107 = extractvalue %dx.types.ResRet.f32 %5105, 1
  %5108 = extractvalue %dx.types.ResRet.f32 %5105, 2
  %5109 = call float @dx.op.dot3.f32(i32 55, float %5102, float %5103, float %5104, float %5106, float %5107, float %5108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5110 = add i32 %5078, 24
  %5111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5110, i32 undef)  ; BufferLoad(srv,index,wot)
  %5112 = extractvalue %dx.types.ResRet.f32 %5111, 0
  %5113 = extractvalue %dx.types.ResRet.f32 %5111, 1
  %5114 = extractvalue %dx.types.ResRet.f32 %5111, 2
  %5115 = call float @dx.op.dot3.f32(i32 55, float %5102, float %5103, float %5104, float %5112, float %5113, float %5114)  ; Dot3(ax,ay,az,bx,by,bz)
  %5116 = add i32 %5078, 36
  %5117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5116, i32 undef)  ; BufferLoad(srv,index,wot)
  %5118 = extractvalue %dx.types.ResRet.f32 %5117, 0
  %5119 = extractvalue %dx.types.ResRet.f32 %5117, 1
  %5120 = extractvalue %dx.types.ResRet.f32 %5117, 2
  %5121 = call float @dx.op.dot3.f32(i32 55, float %5102, float %5103, float %5104, float %5118, float %5119, float %5120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5122 = call float @dx.op.unary.f32(i32 6, float %5109)  ; FAbs(value)
  %5123 = call float @dx.op.unary.f32(i32 6, float %5115)  ; FAbs(value)
  %5124 = call float @dx.op.unary.f32(i32 6, float %5121)  ; FAbs(value)
  %5125 = fsub fast float %5086, %5122
  %5126 = fsub fast float %5087, %5123
  %5127 = fsub fast float %5088, %5124
  %5128 = fmul fast float %5125, %5054
  %5129 = fmul fast float %5126, %5055
  %5130 = fmul fast float %5127, %5056
  %5131 = call float @dx.op.binary.f32(i32 36, float %5129, float %5130)  ; FMin(a,b)
  %5132 = call float @dx.op.binary.f32(i32 36, float %5128, float %5131)  ; FMin(a,b)
  %5133 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5134 = call float @dx.op.binary.f32(i32 36, float %5037, float %5133)  ; FMin(a,b)
  %5135 = uitofp i1 %5094 to float
  %5136 = fsub fast float 1.000000e+00, %5135
  %5137 = fmul fast float %5134, %5136
  %5138 = fcmp fast ogt float %5137, 0.000000e+00
  br i1 %5138, label %5145, label %5139

; <label>:5139                                    ; preds = %5287, %5033
  %5140 = phi float [ %5351, %5287 ], [ %5034, %5033 ]
  %5141 = phi float [ %5352, %5287 ], [ %5035, %5033 ]
  %5142 = phi float [ %5353, %5287 ], [ %5036, %5033 ]
  %5143 = phi float [ %5354, %5287 ], [ %5037, %5033 ]
  %5144 = icmp eq i32 %5038, %5042
  br i1 %5144, label %5355, label %5033

; <label>:5145                                    ; preds = %5033
  br i1 %5091, label %5203, label %5146

; <label>:5146                                    ; preds = %5145
  %5147 = fsub fast float -0.000000e+00, %5106
  %5148 = fsub fast float -0.000000e+00, %5107
  %5149 = fsub fast float -0.000000e+00, %5108
  %5150 = call float @dx.op.dot3.f32(i32 55, float %4986, float %4987, float %4988, float %5147, float %5148, float %5149)  ; Dot3(ax,ay,az,bx,by,bz)
  %5151 = fsub fast float -0.000000e+00, %5150
  %5152 = call float @dx.op.dot3.f32(i32 55, float %5102, float %5103, float %5104, float %5147, float %5148, float %5149)  ; Dot3(ax,ay,az,bx,by,bz)
  %5153 = fadd fast float %5152, %5069
  %5154 = fadd fast float %5068, %5152
  %5155 = fsub fast float -0.000000e+00, %5154
  %5156 = fcmp ogt float %5150, -0.000000e+00
  %5157 = select i1 %5156, float %5155, float %5153
  %5158 = call float @dx.op.unary.f32(i32 6, float %5151)  ; FAbs(value)
  %5159 = fdiv fast float 1.000000e+00, %5158
  %5160 = fmul fast float %5157, %5159
  %5161 = call float @dx.op.binary.f32(i32 35, float %5160, float 0.000000e+00)  ; FMax(a,b)
  %5162 = fsub fast float -0.000000e+00, %5112
  %5163 = fsub fast float -0.000000e+00, %5113
  %5164 = fsub fast float -0.000000e+00, %5114
  %5165 = call float @dx.op.dot3.f32(i32 55, float %4986, float %4987, float %4988, float %5162, float %5163, float %5164)  ; Dot3(ax,ay,az,bx,by,bz)
  %5166 = fsub fast float -0.000000e+00, %5165
  %5167 = call float @dx.op.dot3.f32(i32 55, float %5102, float %5103, float %5104, float %5162, float %5163, float %5164)  ; Dot3(ax,ay,az,bx,by,bz)
  %5168 = fadd fast float %5167, %5073
  %5169 = fadd fast float %5072, %5167
  %5170 = fsub fast float -0.000000e+00, %5169
  %5171 = fcmp ogt float %5165, -0.000000e+00
  %5172 = select i1 %5171, float %5170, float %5168
  %5173 = call float @dx.op.unary.f32(i32 6, float %5166)  ; FAbs(value)
  %5174 = fdiv fast float 1.000000e+00, %5173
  %5175 = fmul fast float %5172, %5174
  %5176 = call float @dx.op.binary.f32(i32 35, float %5175, float 0.000000e+00)  ; FMax(a,b)
  %5177 = fsub fast float -0.000000e+00, %5118
  %5178 = fsub fast float -0.000000e+00, %5119
  %5179 = fsub fast float -0.000000e+00, %5120
  %5180 = call float @dx.op.dot3.f32(i32 55, float %4986, float %4987, float %4988, float %5177, float %5178, float %5179)  ; Dot3(ax,ay,az,bx,by,bz)
  %5181 = fsub fast float -0.000000e+00, %5180
  %5182 = call float @dx.op.dot3.f32(i32 55, float %5102, float %5103, float %5104, float %5177, float %5178, float %5179)  ; Dot3(ax,ay,az,bx,by,bz)
  %5183 = fadd fast float %5182, %5077
  %5184 = fadd fast float %5076, %5182
  %5185 = fsub fast float -0.000000e+00, %5184
  %5186 = fcmp ogt float %5180, -0.000000e+00
  %5187 = select i1 %5186, float %5185, float %5183
  %5188 = call float @dx.op.unary.f32(i32 6, float %5181)  ; FAbs(value)
  %5189 = fdiv fast float 1.000000e+00, %5188
  %5190 = fmul fast float %5187, %5189
  %5191 = call float @dx.op.binary.f32(i32 35, float %5190, float 0.000000e+00)  ; FMax(a,b)
  %5192 = call float @dx.op.binary.f32(i32 36, float %5176, float %5191)  ; FMin(a,b)
  %5193 = call float @dx.op.binary.f32(i32 36, float %5161, float %5192)  ; FMin(a,b)
  %5194 = fmul fast float %5193, %4986
  %5195 = fmul fast float %5193, %4987
  %5196 = fmul fast float %5193, %4988
  %5197 = fadd fast float %5194, %189
  %5198 = fadd fast float %5195, %190
  %5199 = fadd fast float %5196, %191
  %5200 = fsub fast float %5197, %5046
  %5201 = fsub fast float %5198, %5047
  %5202 = fsub fast float %5199, %5048
  br label %5210

; <label>:5203                                    ; preds = %5145
  %5204 = fmul fast float %4986, 8.096000e+03
  %5205 = fmul fast float %4987, 8.096000e+03
  %5206 = fmul fast float %4988, 8.096000e+03
  %5207 = fadd fast float %5204, %189
  %5208 = fadd fast float %5205, %190
  %5209 = fadd fast float %5206, %191
  br label %5210

; <label>:5210                                    ; preds = %5203, %5146
  %5211 = phi float [ %4986, %5203 ], [ %5200, %5146 ]
  %5212 = phi float [ %4987, %5203 ], [ %5201, %5146 ]
  %5213 = phi float [ %4988, %5203 ], [ %5202, %5146 ]
  %5214 = phi float [ %5207, %5203 ], [ %5197, %5146 ]
  %5215 = phi float [ %5208, %5203 ], [ %5198, %5146 ]
  %5216 = phi float [ %5209, %5203 ], [ %5199, %5146 ]
  %5217 = fcmp fast olt float %5065, 1.000000e+00
  br i1 %5217, label %5218, label %5249, !dx.controlflow.hints !87

; <label>:5218                                    ; preds = %5210
  %5219 = fmul fast float %5213, %5063
  %5220 = fmul fast float %5212, %5064
  %5221 = fsub fast float %5219, %5220
  %5222 = fmul fast float %5211, %5064
  %5223 = fmul fast float %5213, %5062
  %5224 = fsub fast float %5222, %5223
  %5225 = fmul fast float %5212, %5062
  %5226 = fmul fast float %5211, %5063
  %5227 = fsub fast float %5225, %5226
  %5228 = fmul fast float %5221, 2.000000e+00
  %5229 = fmul fast float %5224, 2.000000e+00
  %5230 = fmul fast float %5227, 2.000000e+00
  %5231 = fmul fast float %5228, %5065
  %5232 = fmul fast float %5229, %5065
  %5233 = fmul fast float %5230, %5065
  %5234 = fmul fast float %5230, %5063
  %5235 = fmul fast float %5229, %5064
  %5236 = fmul fast float %5228, %5064
  %5237 = fmul fast float %5230, %5062
  %5238 = fmul fast float %5229, %5062
  %5239 = fmul fast float %5228, %5063
  %5240 = fadd fast float %5234, %5211
  %5241 = fadd fast float %5240, %5231
  %5242 = fsub fast float %5241, %5235
  %5243 = fsub fast float %5212, %5237
  %5244 = fadd fast float %5243, %5232
  %5245 = fadd fast float %5244, %5236
  %5246 = fadd fast float %5233, %5213
  %5247 = fsub fast float %5246, %5239
  %5248 = fadd fast float %5247, %5238
  br label %5249

; <label>:5249                                    ; preds = %5218, %5210
  %5250 = phi float [ %5242, %5218 ], [ %5211, %5210 ]
  %5251 = phi float [ %5245, %5218 ], [ %5212, %5210 ]
  %5252 = phi float [ %5248, %5218 ], [ %5213, %5210 ]
  br i1 %5091, label %5284, label %5253

; <label>:5253                                    ; preds = %5249
  %5254 = fmul fast float %4754, 0x400187C840000000
  %5255 = fadd fast float %5254, 0xC00EFC2120000000
  %5256 = fmul fast float %5255, %4754
  %5257 = fadd fast float %5256, 0x3FE5D16340000000
  %5258 = fmul fast float %5257, %4754
  %5259 = fadd fast float %5258, 1.000000e+00
  %5260 = call float @dx.op.unary.f32(i32 7, float %5259)  ; Saturate(value)
  %5261 = fsub fast float %5214, %189
  %5262 = fsub fast float %5215, %190
  %5263 = fsub fast float %5216, %191
  %5264 = fsub fast float %5214, %5046
  %5265 = fsub fast float %5215, %5047
  %5266 = fsub fast float %5216, %5048
  %5267 = call float @dx.op.dot3.f32(i32 55, float %5261, float %5262, float %5263, float %5261, float %5262, float %5263)  ; Dot3(ax,ay,az,bx,by,bz)
  %5268 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float %5264, float %5265, float %5266)  ; Dot3(ax,ay,az,bx,by,bz)
  %5269 = fadd fast float %5268, 0x3EE4F8B580000000
  %5270 = fdiv fast float %5267, %5269
  %5271 = bitcast float %5270 to i32
  %5272 = ashr i32 %5271, 1
  %5273 = add nsw i32 %5272, 532487669
  %5274 = bitcast i32 %5273 to float
  %5275 = fmul fast float %5274, %5260
  %5276 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5277 = fmul fast float %5276, 0x4009981AE0000000
  %5278 = fsub fast float 0x40111BBD80000000, %5277
  %5279 = fmul fast float %5278, %5276
  %5280 = fadd fast float %5279, 0xC0009F6020000000
  %5281 = fmul fast float %5280, %5276
  %5282 = fadd fast float %5281, 1.000000e+00
  %5283 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  br label %5287

; <label>:5284                                    ; preds = %5249
  %5285 = icmp ne i32 %5092, -1
  %5286 = zext i1 %5285 to i32
  br label %5287

; <label>:5287                                    ; preds = %5284, %5253
  %5288 = phi float [ %4754, %5284 ], [ %5283, %5253 ]
  %5289 = phi i32 [ %5286, %5284 ], [ 0, %5253 ]
  %5290 = fmul float %5288, 5.000000e+00
  %5291 = fsub float 5.000000e+00, %5290
  %5292 = icmp ne i32 %5289, 0
  %5293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5294 = extractvalue %dx.types.CBufRet.f32 %5293, 3
  %5295 = fadd fast float %5294, %5291
  %5296 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5295)  ; FMax(a,b)
  %5297 = call float @dx.op.unary.f32(i32 6, float %5250)  ; FAbs(value)
  %5298 = call float @dx.op.unary.f32(i32 6, float %5251)  ; FAbs(value)
  %5299 = fadd fast float %5298, %5297
  %5300 = call float @dx.op.unary.f32(i32 6, float %5252)  ; FAbs(value)
  %5301 = fadd fast float %5299, %5300
  %5302 = fcmp fast oeq float %5301, 0.000000e+00
  %5303 = fdiv fast float 1.000000e+00, %5301
  %5304 = select i1 %5302, float 1.000000e+00, float %5303
  %5305 = fmul fast float %5304, %5250
  %5306 = fmul fast float %5304, %5251
  %5307 = call float @dx.op.unary.f32(i32 6, float %5306)  ; FAbs(value)
  %5308 = call float @dx.op.unary.f32(i32 6, float %5305)  ; FAbs(value)
  %5309 = fsub fast float 1.000000e+00, %5307
  %5310 = fsub fast float 1.000000e+00, %5308
  %5311 = fcmp fast oge float %5305, 0.000000e+00
  %5312 = fcmp fast oge float %5306, 0.000000e+00
  %5313 = select i1 %5311, float 1.000000e+00, float -1.000000e+00
  %5314 = select i1 %5312, float 1.000000e+00, float -1.000000e+00
  %5315 = fcmp fast ole float %5252, 0.000000e+00
  %5316 = fmul fast float %5313, %5309
  %5317 = fmul fast float %5314, %5310
  %5318 = select i1 %5315, float %5316, float %5305
  %5319 = select i1 %5315, float %5317, float %5306
  %5320 = fmul fast float %5318, 5.000000e-01
  %5321 = fmul fast float %5319, 5.000000e-01
  %5322 = fadd fast float %5320, 5.000000e-01
  %5323 = fadd fast float %5321, 5.000000e-01
  %5324 = uitofp i32 %5089 to float
  %5325 = call float @dx.op.binary.f32(i32 36, float %5296, float 3.000000e+00)  ; FMin(a,b)
  %5326 = fadd fast float %5325, 2.000000e+00
  %5327 = call float @dx.op.unary.f32(i32 21, float %5326)  ; Exp(value)
  %5328 = extractvalue %dx.types.CBufRet.f32 %5293, 1
  %5329 = fmul fast float %5328, %5327
  %5330 = fmul fast float %5329, 2.000000e+00
  %5331 = fsub fast float 1.000000e+00, %5330
  %5332 = fmul fast float %5322, %5331
  %5333 = fmul fast float %5323, %5331
  %5334 = fadd fast float %5332, %5329
  %5335 = fadd fast float %5333, %5329
  %5336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %5334, float %5335, float %5324, float undef, i32 0, i32 0, i32 undef, float %5296)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5337 = extractvalue %dx.types.ResRet.f32 %5336, 0
  %5338 = extractvalue %dx.types.ResRet.f32 %5336, 1
  %5339 = extractvalue %dx.types.ResRet.f32 %5336, 2
  %5340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.f32 %5340, 3
  %5342 = fmul fast float %5341, %5059
  %5343 = call float @dx.op.binary.f32(i32 36, float %4819, float %5342)  ; FMin(a,b)
  %5344 = select i1 %5292, float %5343, float %5342
  %5345 = fmul fast float %5337, %5137
  %5346 = fmul fast float %5345, %5344
  %5347 = fmul fast float %5338, %5137
  %5348 = fmul fast float %5347, %5344
  %5349 = fmul fast float %5339, %5137
  %5350 = fmul fast float %5349, %5344
  %5351 = fadd fast float %5346, %5034
  %5352 = fadd fast float %5348, %5035
  %5353 = fadd fast float %5350, %5036
  %5354 = fsub fast float %5037, %5137
  br label %5139

; <label>:5355                                    ; preds = %5139
  br label %5356

; <label>:5356                                    ; preds = %5355, %5003
  %5357 = phi float [ %5004, %5003 ], [ %5140, %5355 ]
  %5358 = phi float [ %5005, %5003 ], [ %5141, %5355 ]
  %5359 = phi float [ %5006, %5003 ], [ %5142, %5355 ]
  %5360 = phi float [ %5007, %5003 ], [ %5143, %5355 ]
  %5361 = add i32 %5008, 1
  %5362 = icmp ugt i32 %5361, %5000
  br i1 %5362, label %5363, label %5003, !llvm.loop !88

; <label>:5363                                    ; preds = %5356
  br label %5364

; <label>:5364                                    ; preds = %5363, %4985
  %5365 = phi float [ 0.000000e+00, %4985 ], [ %5357, %5363 ]
  %5366 = phi float [ 0.000000e+00, %4985 ], [ %5358, %5363 ]
  %5367 = phi float [ 0.000000e+00, %4985 ], [ %5359, %5363 ]
  %5368 = call float @dx.op.dot3.f32(i32 55, float %5365, float %5366, float %5367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5369 = select i1 %250, float 0.000000e+00, float %5365
  %5370 = select i1 %250, float %5368, float %5366
  %5371 = select i1 %250, float 0.000000e+00, float %5367
  %5372 = fcmp fast olt float %4938, 0.000000e+00
  %5373 = call float @dx.op.unary.f32(i32 6, float %4938)  ; FAbs(value)
  %5374 = fmul fast float %5373, %4878
  %5375 = fmul fast float %5373, %4879
  %5376 = fmul fast float %5373, %4880
  %5377 = select i1 %5372, float %4878, float %5374
  %5378 = select i1 %5372, float %4879, float %5375
  %5379 = select i1 %5372, float %4880, float %5376
  %5380 = fsub fast float 1.000000e+00, %5373
  %5381 = call float @dx.op.unary.f32(i32 7, float %5380)  ; Saturate(value)
  %5382 = fmul fast float %5381, %5369
  %5383 = fmul fast float %5381, %5370
  %5384 = fmul fast float %5381, %5371
  %5385 = fadd fast float %5377, %5382
  %5386 = fadd fast float %5378, %5383
  %5387 = fadd fast float %5379, %5384
  br label %5388

; <label>:5388                                    ; preds = %5364, %4921
  %5389 = phi float [ %4878, %4921 ], [ %5385, %5364 ]
  %5390 = phi float [ %4879, %4921 ], [ %5386, %5364 ]
  %5391 = phi float [ %4880, %4921 ], [ %5387, %5364 ]
  %5392 = fmul fast float %4927, %4874
  %5393 = fmul fast float %4927, %4875
  %5394 = fmul fast float %4927, %4876
  %5395 = call float @dx.op.dot3.f32(i32 55, float %4745, float %4746, float %4747, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = fcmp fast ogt float %5395, 0x3E7FF19E20000000
  %5397 = fdiv fast float 1.000000e+00, %5395
  %5398 = select i1 %5396, float %5397, float 0.000000e+00
  %5399 = fmul fast float %5398, %4745
  %5400 = fmul fast float %5398, %4746
  %5401 = fmul fast float %5398, %4747
  %5402 = fadd fast float %5399, -1.000000e+00
  %5403 = fadd fast float %5400, -1.000000e+00
  %5404 = fadd fast float %5401, -1.000000e+00
  %5405 = fmul fast float %5402, 5.000000e-01
  %5406 = fmul fast float %5403, 5.000000e-01
  %5407 = fmul fast float %5404, 5.000000e-01
  %5408 = fadd fast float %5405, 1.000000e+00
  %5409 = fadd fast float %5406, 1.000000e+00
  %5410 = fadd fast float %5407, 1.000000e+00
  %5411 = fmul fast float %5389, %4922
  %5412 = fmul fast float %5390, %4923
  %5413 = fmul fast float %5391, %4924
  %5414 = fsub fast float 1.000000e+00, %4758
  %5415 = bitcast float %5414 to i32
  %5416 = sitofp i32 %5415 to float
  %5417 = fmul fast float %5416, 5.000000e+00
  %5418 = fadd fast float %5417, 0xC1EFBF8940000000
  %5419 = fptosi float %5418 to i32
  %5420 = bitcast i32 %5419 to float
  %5421 = fmul fast float %5420, %3843
  %5422 = fmul fast float %4874, %5421
  %5423 = fmul fast float %5422, %4927
  %5424 = fmul fast float %5423, %5408
  %5425 = fmul fast float %4875, %5421
  %5426 = fmul fast float %5425, %4927
  %5427 = fmul fast float %5426, %5409
  %5428 = fmul fast float %4876, %5421
  %5429 = fmul fast float %5428, %4927
  %5430 = fmul fast float %5429, %5410
  %5431 = fmul fast float %5392, %3839
  %5432 = fmul fast float %5393, %3839
  %5433 = fmul fast float %5394, %3839
  %5434 = fadd fast float %5411, %3835
  %5435 = fadd fast float %5434, %5424
  %5436 = fmul fast float %5435, %3839
  %5437 = fadd fast float %5412, %3836
  %5438 = fadd fast float %5437, %5427
  %5439 = fmul fast float %5438, %3839
  %5440 = fadd fast float %5413, %3837
  %5441 = fadd fast float %5440, %5430
  %5442 = fmul fast float %5441, %3839
  %5443 = bitcast i32 %4782 to float
  %5444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = extractvalue %dx.types.CBufRet.f32 %5444, 3
  %5446 = fcmp fast oeq float %5445, 0.000000e+00
  br i1 %5446, label %7075, label %5447

; <label>:5447                                    ; preds = %5388
  %5448 = extractvalue %dx.types.CBufRet.f32 %5444, 0
  %5449 = extractvalue %dx.types.CBufRet.f32 %5444, 1
  %5450 = extractvalue %dx.types.CBufRet.f32 %5444, 2
  %5451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5452 = extractvalue %dx.types.CBufRet.f32 %5451, 0
  %5453 = extractvalue %dx.types.CBufRet.f32 %5451, 1
  %5454 = extractvalue %dx.types.CBufRet.f32 %5451, 2
  %5455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5455, 0
  %5457 = extractvalue %dx.types.CBufRet.f32 %5455, 1
  %5458 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5453, float %5454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5459 = select i1 %250, float %5456, float %5452
  %5460 = select i1 %250, float %5458, float %5453
  %5461 = select i1 %250, float %5457, float %5454
  %5462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.f32 %5462, 2
  %5464 = fmul fast float %5463, %109
  %5465 = fmul fast float %5463, %110
  %5466 = fmul fast float %5463, %111
  %5467 = fadd fast float %5464, %189
  %5468 = fadd fast float %5465, %190
  %5469 = fadd fast float %5466, %191
  %5470 = fcmp fast olt float %5445, 0.000000e+00
  br i1 %5470, label %6728, label %5471

; <label>:5471                                    ; preds = %5447
  %5472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5473 = extractvalue %dx.types.CBufRet.f32 %5472, 0
  %5474 = extractvalue %dx.types.CBufRet.f32 %5472, 1
  %5475 = extractvalue %dx.types.CBufRet.f32 %5472, 2
  %5476 = extractvalue %dx.types.CBufRet.f32 %5472, 3
  %5477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5478 = extractvalue %dx.types.CBufRet.f32 %5477, 0
  %5479 = extractvalue %dx.types.CBufRet.f32 %5477, 1
  %5480 = extractvalue %dx.types.CBufRet.f32 %5477, 2
  %5481 = extractvalue %dx.types.CBufRet.f32 %5477, 3
  %5482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5483 = extractvalue %dx.types.CBufRet.f32 %5482, 0
  %5484 = extractvalue %dx.types.CBufRet.f32 %5482, 1
  %5485 = extractvalue %dx.types.CBufRet.f32 %5482, 2
  %5486 = extractvalue %dx.types.CBufRet.f32 %5482, 3
  %5487 = fmul fast float %5473, %5467
  %5488 = call float @dx.op.tertiary.f32(i32 46, float %5468, float %5474, float %5487)  ; FMad(a,b,c)
  %5489 = call float @dx.op.tertiary.f32(i32 46, float %5469, float %5475, float %5488)  ; FMad(a,b,c)
  %5490 = fadd fast float %5489, %5476
  %5491 = fmul fast float %5478, %5467
  %5492 = call float @dx.op.tertiary.f32(i32 46, float %5468, float %5479, float %5491)  ; FMad(a,b,c)
  %5493 = call float @dx.op.tertiary.f32(i32 46, float %5469, float %5480, float %5492)  ; FMad(a,b,c)
  %5494 = fadd fast float %5493, %5481
  %5495 = fmul fast float %5483, %5467
  %5496 = call float @dx.op.tertiary.f32(i32 46, float %5468, float %5484, float %5495)  ; FMad(a,b,c)
  %5497 = call float @dx.op.tertiary.f32(i32 46, float %5469, float %5485, float %5496)  ; FMad(a,b,c)
  %5498 = fadd fast float %5497, %5486
  %5499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5500 = extractvalue %dx.types.CBufRet.f32 %5499, 0
  %5501 = fcmp fast une float %5500, 0.000000e+00
  %5502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5503 = extractvalue %dx.types.CBufRet.f32 %5502, 0
  %5504 = extractvalue %dx.types.CBufRet.f32 %5502, 1
  %5505 = extractvalue %dx.types.CBufRet.f32 %5502, 3
  %5506 = fmul fast float %5505, %5490
  %5507 = fmul fast float %5505, %5494
  %5508 = fadd fast float %5506, %5503
  %5509 = fadd fast float %5507, %5504
  %5510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5511 = extractvalue %dx.types.CBufRet.f32 %5510, 0
  %5512 = extractvalue %dx.types.CBufRet.f32 %5510, 1
  %5513 = extractvalue %dx.types.CBufRet.f32 %5510, 3
  %5514 = fmul fast float %5513, %5490
  %5515 = fmul fast float %5513, %5494
  %5516 = fadd fast float %5514, %5511
  %5517 = fadd fast float %5515, %5512
  %5518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5519 = extractvalue %dx.types.CBufRet.f32 %5518, 1
  %5520 = fsub fast float %5519, %5498
  %5521 = extractvalue %dx.types.CBufRet.f32 %5518, 2
  %5522 = fmul fast float %5520, %5521
  %5523 = fsub fast float 1.000000e+00, %5522
  %5524 = call float @dx.op.unary.f32(i32 7, float %5523)  ; Saturate(value)
  br i1 %5501, label %5585, label %5525

; <label>:5525                                    ; preds = %5471
  %5526 = extractvalue %dx.types.CBufRet.f32 %5510, 2
  %5527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5528 = extractvalue %dx.types.CBufRet.f32 %5527, 2
  %5529 = fadd fast float %5528, %5526
  %5530 = fcmp fast ogt float %5529, 0.000000e+00
  br i1 %5530, label %5531, label %5555

; <label>:5531                                    ; preds = %5525
  %5532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5533 = extractvalue %dx.types.CBufRet.f32 %5532, 0
  %5534 = extractvalue %dx.types.CBufRet.f32 %5532, 1
  %5535 = fsub fast float %5516, %5533
  %5536 = fsub fast float %5517, %5534
  %5537 = fcmp fast olt float %5535, 0.000000e+00
  %5538 = fcmp fast olt float %5536, 0.000000e+00
  %5539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5540 = extractvalue %dx.types.CBufRet.f32 %5539, 0
  %5541 = extractvalue %dx.types.CBufRet.f32 %5539, 1
  %5542 = extractvalue %dx.types.CBufRet.f32 %5539, 2
  %5543 = extractvalue %dx.types.CBufRet.f32 %5539, 3
  %5544 = select i1 %5537, float %5540, float %5542
  %5545 = select i1 %5538, float %5541, float %5543
  %5546 = fmul fast float %5544, %5535
  %5547 = fmul fast float %5545, %5536
  %5548 = call float @dx.op.unary.f32(i32 6, float %5546)  ; FAbs(value)
  %5549 = call float @dx.op.unary.f32(i32 6, float %5547)  ; FAbs(value)
  %5550 = extractvalue %dx.types.CBufRet.f32 %5462, 0
  %5551 = call float @dx.op.binary.f32(i32 35, float %5548, float %5549)  ; FMax(a,b)
  %5552 = fsub fast float %5550, %5551
  %5553 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5554 = fmul fast float %5553, %5524
  br label %5555

; <label>:5555                                    ; preds = %5531, %5525
  %5556 = phi float [ %5554, %5531 ], [ 0.000000e+00, %5525 ]
  %5557 = extractvalue %dx.types.CBufRet.f32 %5502, 2
  %5558 = extractvalue %dx.types.CBufRet.f32 %5527, 1
  %5559 = fadd fast float %5558, %5557
  %5560 = fcmp fast ogt float %5559, 0.000000e+00
  br i1 %5560, label %5561, label %5585

; <label>:5561                                    ; preds = %5555
  %5562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5563 = extractvalue %dx.types.CBufRet.f32 %5562, 0
  %5564 = extractvalue %dx.types.CBufRet.f32 %5562, 1
  %5565 = fsub fast float %5508, %5563
  %5566 = fsub fast float %5509, %5564
  %5567 = fcmp fast olt float %5565, 0.000000e+00
  %5568 = fcmp fast olt float %5566, 0.000000e+00
  %5569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5570 = extractvalue %dx.types.CBufRet.f32 %5569, 0
  %5571 = extractvalue %dx.types.CBufRet.f32 %5569, 1
  %5572 = extractvalue %dx.types.CBufRet.f32 %5569, 2
  %5573 = extractvalue %dx.types.CBufRet.f32 %5569, 3
  %5574 = select i1 %5567, float %5570, float %5572
  %5575 = select i1 %5568, float %5571, float %5573
  %5576 = fmul fast float %5574, %5565
  %5577 = fmul fast float %5575, %5566
  %5578 = call float @dx.op.unary.f32(i32 6, float %5576)  ; FAbs(value)
  %5579 = call float @dx.op.unary.f32(i32 6, float %5577)  ; FAbs(value)
  %5580 = extractvalue %dx.types.CBufRet.f32 %5462, 0
  %5581 = call float @dx.op.binary.f32(i32 35, float %5578, float %5579)  ; FMax(a,b)
  %5582 = fsub fast float %5580, %5581
  %5583 = call float @dx.op.unary.f32(i32 7, float %5582)  ; Saturate(value)
  %5584 = fmul fast float %5583, %5524
  br label %5585

; <label>:5585                                    ; preds = %5561, %5555, %5471
  %5586 = phi float [ 0.000000e+00, %5471 ], [ %5584, %5561 ], [ 0.000000e+00, %5555 ]
  %5587 = phi float [ 0.000000e+00, %5471 ], [ %5556, %5561 ], [ %5556, %5555 ]
  %5588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5589 = extractvalue %dx.types.CBufRet.f32 %5588, 1
  %5590 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5592 = extractvalue %dx.types.CBufRet.f32 %5591, 0
  %5593 = extractvalue %dx.types.CBufRet.f32 %5591, 1
  %5594 = fsub fast float %5490, %5592
  %5595 = fsub fast float %5494, %5593
  %5596 = fcmp fast olt float %5594, 0.000000e+00
  %5597 = fcmp fast olt float %5595, 0.000000e+00
  %5598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5599 = extractvalue %dx.types.CBufRet.f32 %5598, 0
  %5600 = extractvalue %dx.types.CBufRet.f32 %5598, 1
  %5601 = extractvalue %dx.types.CBufRet.f32 %5598, 2
  %5602 = extractvalue %dx.types.CBufRet.f32 %5598, 3
  %5603 = select i1 %5596, float %5599, float %5601
  %5604 = select i1 %5597, float %5600, float %5602
  %5605 = fmul fast float %5603, %5594
  %5606 = fmul fast float %5604, %5595
  %5607 = call float @dx.op.unary.f32(i32 6, float %5605)  ; FAbs(value)
  %5608 = call float @dx.op.unary.f32(i32 6, float %5606)  ; FAbs(value)
  %5609 = extractvalue %dx.types.CBufRet.f32 %5462, 0
  %5610 = call float @dx.op.binary.f32(i32 35, float %5607, float %5608)  ; FMax(a,b)
  %5611 = fsub fast float %5609, %5610
  %5612 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5613 = call float @dx.op.binary.f32(i32 36, float %5612, float %5590)  ; FMin(a,b)
  %5614 = fmul fast float %5613, %5524
  %5615 = fsub fast float %5586, %5614
  %5616 = fsub fast float %5587, %5586
  %5617 = fsub fast float %5616, %5614
  %5618 = call float @dx.op.binary.f32(i32 35, float %5586, float %5587)  ; FMax(a,b)
  %5619 = call float @dx.op.binary.f32(i32 35, float %5614, float %5618)  ; FMax(a,b)
  %5620 = fcmp fast olt float %5619, 1.000000e+00
  br i1 %5620, label %5621, label %6019, !dx.controlflow.hints !90

; <label>:5621                                    ; preds = %5585
  %5622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.f32 %5622, 0
  %5624 = fcmp fast une float %5623, 0.000000e+00
  br i1 %5624, label %5625, label %6019, !dx.controlflow.hints !91

; <label>:5625                                    ; preds = %5621
  %5626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5627 = extractvalue %dx.types.CBufRet.f32 %5626, 0
  %5628 = extractvalue %dx.types.CBufRet.f32 %5626, 1
  %5629 = extractvalue %dx.types.CBufRet.f32 %5626, 2
  %5630 = extractvalue %dx.types.CBufRet.f32 %5626, 3
  %5631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5632 = extractvalue %dx.types.CBufRet.f32 %5631, 0
  %5633 = extractvalue %dx.types.CBufRet.f32 %5631, 1
  %5634 = extractvalue %dx.types.CBufRet.f32 %5631, 2
  %5635 = extractvalue %dx.types.CBufRet.f32 %5631, 3
  %5636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5637 = extractvalue %dx.types.CBufRet.f32 %5636, 0
  %5638 = extractvalue %dx.types.CBufRet.f32 %5636, 1
  %5639 = extractvalue %dx.types.CBufRet.f32 %5636, 2
  %5640 = extractvalue %dx.types.CBufRet.f32 %5636, 3
  %5641 = fmul fast float %5627, %5467
  %5642 = call float @dx.op.tertiary.f32(i32 46, float %5468, float %5628, float %5641)  ; FMad(a,b,c)
  %5643 = call float @dx.op.tertiary.f32(i32 46, float %5469, float %5629, float %5642)  ; FMad(a,b,c)
  %5644 = fadd fast float %5643, %5630
  %5645 = fmul fast float %5632, %5467
  %5646 = call float @dx.op.tertiary.f32(i32 46, float %5468, float %5633, float %5645)  ; FMad(a,b,c)
  %5647 = call float @dx.op.tertiary.f32(i32 46, float %5469, float %5634, float %5646)  ; FMad(a,b,c)
  %5648 = fadd fast float %5647, %5635
  %5649 = fmul fast float %5637, %5467
  %5650 = call float @dx.op.tertiary.f32(i32 46, float %5468, float %5638, float %5649)  ; FMad(a,b,c)
  %5651 = call float @dx.op.tertiary.f32(i32 46, float %5469, float %5639, float %5650)  ; FMad(a,b,c)
  %5652 = fadd fast float %5651, %5640
  %5653 = fcmp fast oge float %5644, 1.000000e+00
  %5654 = fcmp fast oge float %5648, 1.000000e+00
  %5655 = or i1 %5653, %5654
  %5656 = fcmp fast olt float %5644, 0.000000e+00
  %5657 = fcmp fast olt float %5648, 0.000000e+00
  %5658 = or i1 %5656, %5657
  %5659 = or i1 %5655, %5658
  br i1 %5659, label %6019, label %5660, !dx.controlflow.hints !92

; <label>:5660                                    ; preds = %5625
  %5661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5662 = extractvalue %dx.types.CBufRet.f32 %5661, 0
  %5663 = extractvalue %dx.types.CBufRet.f32 %5661, 1
  %5664 = extractvalue %dx.types.CBufRet.f32 %5661, 2
  %5665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5666 = extractvalue %dx.types.CBufRet.i32 %5665, 2
  %5667 = uitofp i32 %5666 to float
  %5668 = extractvalue %dx.types.CBufRet.i32 %5665, 3
  %5669 = uitofp i32 %5668 to float
  %5670 = extractvalue %dx.types.CBufRet.f32 %5661, 3
  %5671 = fmul fast float %5670, 2.000000e+00
  %5672 = fsub fast float %5644, %5662
  %5673 = fsub fast float %5648, %5663
  %5674 = fmul fast float %5671, %5672
  %5675 = fmul fast float %5671, %5673
  %5676 = fdiv fast float 1.000000e+00, %5450
  %5677 = fmul fast float %5675, %5676
  %5678 = call float @dx.op.unary.f32(i32 6, float %5677)  ; FAbs(value)
  %5679 = fmul fast float %5664, %5469
  %5680 = fmul fast float %5679, %5671
  %5681 = call float @dx.op.unary.f32(i32 6, float %5680)  ; FAbs(value)
  %5682 = call float @dx.op.unary.f32(i32 6, float %5674)  ; FAbs(value)
  %5683 = call float @dx.op.binary.f32(i32 35, float %5681, float %5678)  ; FMax(a,b)
  %5684 = call float @dx.op.binary.f32(i32 35, float %5682, float %5683)  ; FMax(a,b)
  %5685 = fmul fast float %5684, 2.000000e+00
  %5686 = call float @dx.op.unary.f32(i32 23, float %5685)  ; Log(value)
  %5687 = call float @dx.op.binary.f32(i32 35, float %5686, float %5667)  ; FMax(a,b)
  %5688 = call float @dx.op.unary.f32(i32 22, float %5687)  ; Frc(value)
  %5689 = fadd fast float %5688, 0xBFEA666660000000
  %5690 = fmul fast float %5689, 8.000000e+00
  %5691 = call float @dx.op.unary.f32(i32 7, float %5690)  ; Saturate(value)
  %5692 = call float @dx.op.unary.f32(i32 27, float %5687)  ; Round_ni(value)
  %5693 = fadd fast float %5692, %5691
  %5694 = call float @dx.op.binary.f32(i32 36, float %5693, float %5669)  ; FMin(a,b)
  %5695 = call float @dx.op.unary.f32(i32 27, float %5694)  ; Round_ni(value)
  %5696 = fsub fast float -0.000000e+00, %5695
  %5697 = call float @dx.op.unary.f32(i32 21, float %5696)  ; Exp(value)
  %5698 = fmul fast float %5697, %5671
  %5699 = fmul fast float %5698, %5644
  %5700 = fmul fast float %5698, %5648
  %5701 = fmul fast float %5699, 2.500000e-01
  %5702 = fmul fast float %5700, 2.500000e-01
  %5703 = fadd fast float %5701, 5.000000e-01
  %5704 = fadd fast float %5702, 5.000000e-01
  %5705 = fsub fast float %5669, %5667
  %5706 = fptoui float %5705 to i32
  %5707 = add i32 %5706, 320
  %5708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %5707)  ; CBufferLoadLegacy(handle,regIndex)
  %5709 = extractvalue %dx.types.CBufRet.f32 %5708, 0
  %5710 = extractvalue %dx.types.CBufRet.f32 %5708, 1
  %5711 = fcmp fast une float %5694, %5669
  %5712 = fsub fast float %5644, %5709
  %5713 = fsub fast float %5648, %5710
  %5714 = call float @dx.op.unary.f32(i32 6, float %5712)  ; FAbs(value)
  %5715 = call float @dx.op.unary.f32(i32 6, float %5713)  ; FAbs(value)
  %5716 = fmul fast float %5714, %5698
  %5717 = fmul fast float %5715, %5698
  %5718 = fcmp fast olt float %5716, 1.000000e+00
  %5719 = fcmp fast olt float %5717, 1.000000e+00
  %5720 = and i1 %5718, %5719
  %5721 = or i1 %5711, %5720
  br i1 %5721, label %5722, label %6019, !dx.controlflow.hints !93

; <label>:5722                                    ; preds = %5660
  %5723 = fmul fast float %5700, 5.000000e-01
  %5724 = fmul fast float %5699, 5.000000e-01
  %5725 = fadd fast float %5723, 5.000000e-01
  %5726 = fadd fast float %5724, 5.000000e-01
  %5727 = sitofp i32 %5666 to float
  %5728 = fsub fast float %5694, %5727
  %5729 = call float @dx.op.unary.f32(i32 27, float %5728)  ; Round_ni(value)
  %5730 = call float @dx.op.unary.f32(i32 22, float %5694)  ; Frc(value)
  %5731 = call float @dx.op.unary.f32(i32 22, float %5726)  ; Frc(value)
  %5732 = call float @dx.op.unary.f32(i32 22, float %5725)  ; Frc(value)
  %5733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %5731, float %5732, float %5729, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5734 = extractvalue %dx.types.ResRet.f32 %5733, 0
  %5735 = extractvalue %dx.types.ResRet.f32 %5733, 1
  %5736 = extractvalue %dx.types.ResRet.f32 %5733, 2
  %5737 = extractvalue %dx.types.ResRet.f32 %5733, 3
  %5738 = fcmp fast ogt float %5730, 0.000000e+00
  br i1 %5738, label %5739, label %5760, !dx.controlflow.hints !94

; <label>:5739                                    ; preds = %5722
  %5740 = fadd fast float %5729, 1.000000e+00
  %5741 = call float @dx.op.unary.f32(i32 22, float %5703)  ; Frc(value)
  %5742 = call float @dx.op.unary.f32(i32 22, float %5704)  ; Frc(value)
  %5743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %5741, float %5742, float %5740, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5744 = extractvalue %dx.types.ResRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.ResRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.ResRet.f32 %5743, 2
  %5747 = extractvalue %dx.types.ResRet.f32 %5743, 3
  %5748 = fsub fast float %5744, %5734
  %5749 = fsub fast float %5745, %5735
  %5750 = fsub fast float %5746, %5736
  %5751 = fsub fast float %5747, %5737
  %5752 = fmul fast float %5748, %5730
  %5753 = fmul fast float %5749, %5730
  %5754 = fmul fast float %5750, %5730
  %5755 = fmul fast float %5751, %5730
  %5756 = fadd fast float %5752, %5734
  %5757 = fadd fast float %5753, %5735
  %5758 = fadd fast float %5754, %5736
  %5759 = fadd fast float %5755, %5737
  br label %5760

; <label>:5760                                    ; preds = %5739, %5722
  %5761 = phi float [ %5756, %5739 ], [ %5734, %5722 ]
  %5762 = phi float [ %5757, %5739 ], [ %5735, %5722 ]
  %5763 = phi float [ %5758, %5739 ], [ %5736, %5722 ]
  %5764 = phi float [ %5759, %5739 ], [ %5737, %5722 ]
  %5765 = fadd fast float %5761, -5.000000e-01
  %5766 = fadd fast float %5763, -5.000000e-01
  %5767 = fmul fast float %5765, 0xBFD5555560000000
  %5768 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5766, float %5767)  ; FMad(a,b,c)
  %5769 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5762, float 0.000000e+00)  ; FMad(a,b,c)
  %5770 = fadd fast float %5769, %5764
  %5771 = fmul fast float %5765, -7.500000e-01
  %5772 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5766, float %5771)  ; FMad(a,b,c)
  %5773 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5762, float 0.000000e+00)  ; FMad(a,b,c)
  %5774 = fadd fast float %5773, %5764
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5778 = extractvalue %dx.types.CBufRet.f32 %5777, 0
  %5779 = extractvalue %dx.types.CBufRet.f32 %5777, 1
  %5780 = extractvalue %dx.types.CBufRet.f32 %5777, 2
  %5781 = extractvalue %dx.types.CBufRet.f32 %5777, 3
  %5782 = fsub fast float %5778, %5768
  %5783 = fsub fast float %5779, %5770
  %5784 = fsub fast float %5780, %5772
  %5785 = fsub fast float %5781, %5774
  %5786 = fmul fast float %5782, %5776
  %5787 = fmul fast float %5783, %5776
  %5788 = fmul fast float %5784, %5776
  %5789 = fmul fast float %5785, %5776
  %5790 = fadd fast float %5786, %5768
  %5791 = fadd fast float %5787, %5770
  %5792 = fadd fast float %5788, %5772
  %5793 = fadd fast float %5789, %5774
  %5794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5795 = extractvalue %dx.types.ResRet.i32 %5794, 0
  %5796 = and i32 %5795, 536870911
  %5797 = uitofp i32 %5796 to float
  %5798 = fmul fast float %5797, %5644
  %5799 = fmul fast float %5797, %5648
  %5800 = fptoui float %5798 to i32
  %5801 = fptoui float %5799 to i32
  %5802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5803 = extractvalue %dx.types.ResRet.i32 %5802, 0
  %5804 = and i32 %5803, 31
  %5805 = lshr i32 %5800, %5804
  %5806 = lshr i32 %5801, %5804
  %5807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5808 = extractvalue %dx.types.ResRet.i32 %5807, 0
  %5809 = and i32 %5808, 31
  %5810 = shl i32 1, %5809
  %5811 = call i32 @dx.op.binary.i32(i32 40, i32 %5810, i32 4)  ; UMin(a,b)
  %5812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5813 = extractvalue %dx.types.ResRet.i32 %5812, 0
  %5814 = extractvalue %dx.types.ResRet.i32 %5812, 1
  %5815 = icmp eq i32 %5811, 0
  br i1 %5815, label %5857, label %5816

; <label>:5816                                    ; preds = %5760
  br label %5817

; <label>:5817                                    ; preds = %5845, %5816
  %5818 = phi i32 [ %5848, %5845 ], [ 0, %5816 ]
  %5819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5820 = extractvalue %dx.types.ResRet.i32 %5819, 0
  %5821 = lshr i32 %5820, 16
  %5822 = and i32 %5821, 31
  %5823 = shl i32 %5806, %5822
  %5824 = add i32 %5823, %5805
  %5825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5826 = extractvalue %dx.types.ResRet.i32 %5825, 0
  %5827 = and i32 %5826, 31
  %5828 = shl i32 %5824, %5827
  %5829 = add i32 %5828, %5818
  %5830 = shl i32 %5829, 2
  %5831 = add i32 %5830, 32
  %5832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5831, i32 undef)  ; BufferLoad(srv,index,wot)
  %5833 = extractvalue %dx.types.ResRet.i32 %5832, 0
  %5834 = icmp slt i32 %5833, 0
  %5835 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %5818
  %5836 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %5818
  %5837 = bitcast float* %5835 to i32*
  %5838 = bitcast float* %5836 to i32*
  br i1 %5834, label %5839, label %5845

; <label>:5839                                    ; preds = %5817
  %5840 = and i32 %5833, 1073741823
  %5841 = add nuw nsw i32 %5840, 20
  %5842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5841, i32 undef)  ; BufferLoad(srv,index,wot)
  %5843 = extractvalue %dx.types.ResRet.i32 %5842, 0
  %5844 = extractvalue %dx.types.ResRet.i32 %5842, 1
  br label %5845

; <label>:5845                                    ; preds = %5839, %5817
  %5846 = phi i32 [ %5843, %5839 ], [ %5813, %5817 ]
  %5847 = phi i32 [ %5844, %5839 ], [ %5814, %5817 ]
  store i32 %5846, i32* %5837, align 4
  store i32 %5847, i32* %5838, align 4
  %5848 = add nuw i32 %5818, 1
  %5849 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5850 = extractvalue %dx.types.CBufRet.i32 %5849, 2
  %5851 = icmp eq i32 %5850, 0
  %5852 = icmp ugt i32 %5833, -1073741825
  %5853 = and i1 %5852, %5851
  %5854 = icmp ult i32 %5848, %5811
  %5855 = and i1 %5853, %5854
  br i1 %5855, label %5817, label %5856

; <label>:5856                                    ; preds = %5845
  br label %5857

; <label>:5857                                    ; preds = %5856, %5760
  %5858 = phi i32 [ 0, %5760 ], [ %5848, %5856 ]
  %5859 = extractvalue %dx.types.CBufRet.f32 %5622, 2
  %5860 = fptoui float %5859 to i32
  %5861 = icmp eq i32 %5860, 0
  br i1 %5861, label %5913, label %5862

; <label>:5862                                    ; preds = %5857
  br label %5863

; <label>:5863                                    ; preds = %5908, %5862
  %5864 = phi i32 [ %5909, %5908 ], [ %5858, %5862 ]
  %5865 = phi i32 [ %5910, %5908 ], [ 0, %5862 ]
  %5866 = lshr i32 %5865, 2
  %5867 = and i32 %5865, 3
  %5868 = add nuw nsw i32 %5866, 83
  %5869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 %5868)  ; CBufferLoadLegacy(handle,regIndex)
  %5870 = extractvalue %dx.types.CBufRet.i32 %5869, 0
  %5871 = extractvalue %dx.types.CBufRet.i32 %5869, 1
  %5872 = extractvalue %dx.types.CBufRet.i32 %5869, 2
  %5873 = extractvalue %dx.types.CBufRet.i32 %5869, 3
  %5874 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 0
  store i32 %5870, i32* %5874, align 4
  %5875 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 1
  store i32 %5871, i32* %5875, align 4
  %5876 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 2
  store i32 %5872, i32* %5876, align 4
  %5877 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 3
  store i32 %5873, i32* %5877, align 4
  %5878 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 %5867
  %5879 = load i32, i32* %5878, align 4, !tbaa !95, !noalias !99
  %5880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5881 = extractvalue %dx.types.ResRet.i32 %5880, 0
  %5882 = lshr i32 %5881, 16
  %5883 = and i32 %5882, 31
  %5884 = shl i32 %5806, %5883
  %5885 = add i32 %5884, %5805
  %5886 = shl i32 %5885, 2
  %5887 = add i32 %5886, %5879
  %5888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5887, i32 undef)  ; BufferLoad(srv,index,wot)
  %5889 = extractvalue %dx.types.ResRet.i32 %5888, 0
  %5890 = icmp eq i32 %5889, 0
  br i1 %5890, label %5908, label %5891

; <label>:5891                                    ; preds = %5863
  %5892 = icmp slt i32 %5889, 0
  %5893 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %5864
  %5894 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %5864
  %5895 = bitcast float* %5893 to i32*
  %5896 = bitcast float* %5894 to i32*
  br i1 %5892, label %5897, label %5904

; <label>:5897                                    ; preds = %5891
  %5898 = and i32 %5889, 1073741823
  %5899 = add i32 %5879, 20
  %5900 = add i32 %5899, %5898
  %5901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5900, i32 undef)  ; BufferLoad(srv,index,wot)
  %5902 = extractvalue %dx.types.ResRet.i32 %5901, 0
  %5903 = extractvalue %dx.types.ResRet.i32 %5901, 1
  br label %5904

; <label>:5904                                    ; preds = %5897, %5891
  %5905 = phi i32 [ %5902, %5897 ], [ %5813, %5891 ]
  %5906 = phi i32 [ %5903, %5897 ], [ %5814, %5891 ]
  store i32 %5905, i32* %5895, align 4
  store i32 %5906, i32* %5896, align 4
  %5907 = add i32 %5864, 1
  br label %5908

; <label>:5908                                    ; preds = %5904, %5863
  %5909 = phi i32 [ %5864, %5863 ], [ %5907, %5904 ]
  %5910 = add nuw i32 %5865, 1
  %5911 = icmp eq i32 %5910, %5860
  br i1 %5911, label %5912, label %5863

; <label>:5912                                    ; preds = %5908
  br label %5913

; <label>:5913                                    ; preds = %5912, %5857
  %5914 = phi i32 [ %5858, %5857 ], [ %5909, %5912 ]
  %5915 = icmp eq i32 %5914, 1
  %5916 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  %5917 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  br i1 %5915, label %5918, label %5921

; <label>:5918                                    ; preds = %5913
  %5919 = load float, float* %5916, align 4
  %5920 = load float, float* %5917, align 4
  br label %5948

; <label>:5921                                    ; preds = %5913
  %5922 = load float, float* %5916, align 4
  %5923 = load float, float* %5917, align 4
  %5924 = fdiv fast float 1.000000e+00, %5923
  %5925 = fsub fast float %5922, %5924
  %5926 = icmp ugt i32 %5914, 1
  br i1 %5926, label %5927, label %5943

; <label>:5927                                    ; preds = %5921
  br label %5928

; <label>:5928                                    ; preds = %5928, %5927
  %5929 = phi float [ %5938, %5928 ], [ %5925, %5927 ]
  %5930 = phi float [ %5939, %5928 ], [ %5922, %5927 ]
  %5931 = phi i32 [ %5940, %5928 ], [ 1, %5927 ]
  %5932 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %5931
  %5933 = load float, float* %5932, align 4
  %5934 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %5931
  %5935 = load float, float* %5934, align 4
  %5936 = fdiv fast float 1.000000e+00, %5935
  %5937 = fsub fast float %5933, %5936
  %5938 = call float @dx.op.binary.f32(i32 36, float %5929, float %5937)  ; FMin(a,b)
  %5939 = call float @dx.op.binary.f32(i32 35, float %5930, float %5933)  ; FMax(a,b)
  %5940 = add nuw i32 %5931, 1
  %5941 = icmp eq i32 %5940, %5914
  br i1 %5941, label %5942, label %5928

; <label>:5942                                    ; preds = %5928
  br label %5943

; <label>:5943                                    ; preds = %5942, %5921
  %5944 = phi float [ %5925, %5921 ], [ %5938, %5942 ]
  %5945 = phi float [ %5922, %5921 ], [ %5939, %5942 ]
  %5946 = fsub fast float %5945, %5944
  %5947 = fdiv fast float 1.000000e+00, %5946
  br label %5948

; <label>:5948                                    ; preds = %5943, %5918
  %5949 = phi float [ %5919, %5918 ], [ %5945, %5943 ]
  %5950 = phi float [ %5920, %5918 ], [ %5947, %5943 ]
  %5951 = fadd fast float %5652, %5949
  %5952 = fmul fast float %5951, %5950
  %5953 = call float @dx.op.unary.f32(i32 7, float %5952)  ; Saturate(value)
  %5954 = fmul fast float %5953, 2.000000e+00
  %5955 = fsub fast float 1.000000e+00, %5954
  %5956 = fmul fast float %5790, %5790
  %5957 = fsub fast float %5791, %5956
  %5958 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5957)  ; FMax(a,b)
  %5959 = fdiv fast float 1.000000e+00, %5958
  %5960 = fmul fast float %5791, %5790
  %5961 = fsub fast float %5792, %5960
  %5962 = fsub fast float %5955, %5790
  %5963 = fmul fast float %5955, %5955
  %5964 = fsub fast float %5963, %5791
  %5965 = fmul fast float %5959, %5961
  %5966 = fmul fast float %5965, %5962
  %5967 = fsub fast float %5964, %5966
  %5968 = fmul fast float %5791, %5791
  %5969 = fsub fast float %5793, %5968
  %5970 = fmul fast float %5961, %5961
  %5971 = fmul fast float %5970, %5959
  %5972 = fsub fast float %5969, %5971
  %5973 = fdiv fast float %5967, %5972
  %5974 = fmul fast float %5973, %5961
  %5975 = fsub fast float %5962, %5974
  %5976 = fmul fast float %5975, %5959
  %5977 = fmul fast float %5976, %5790
  %5978 = fsub fast float 1.000000e+00, %5977
  %5979 = fmul fast float %5973, %5791
  %5980 = fsub fast float %5978, %5979
  %5981 = fmul fast float %5976, %5976
  %5982 = fmul fast float %5973, 4.000000e+00
  %5983 = fmul fast float %5982, %5980
  %5984 = fsub fast float %5981, %5983
  %5985 = call float @dx.op.unary.f32(i32 24, float %5984)  ; Sqrt(value)
  %5986 = fcmp fast oge float %5976, 0.000000e+00
  %5987 = fsub fast float -0.000000e+00, %5985
  %5988 = select i1 %5986, float %5987, float %5985
  %5989 = fsub fast float %5988, %5976
  %5990 = fdiv fast float %5989, %5973
  %5991 = fdiv fast float %5980, %5989
  %5992 = fmul fast float %5990, 5.000000e-01
  %5993 = fmul fast float %5991, 2.000000e+00
  %5994 = select i1 %5986, float %5992, float %5993
  %5995 = select i1 %5986, float %5993, float %5992
  %5996 = call float @dx.op.binary.f32(i32 35, float %5994, float %5995)  ; FMax(a,b)
  %5997 = call float @dx.op.binary.f32(i32 36, float %5994, float %5995)  ; FMin(a,b)
  %5998 = fcmp fast ogt float %5955, %5996
  %5999 = fsub fast float %5955, %5997
  %6000 = fsub fast float %5955, %5996
  %6001 = fsub fast float %5996, %5997
  %6002 = select i1 %5998, float %6000, float %6001
  %6003 = fmul float %5999, %6002
  %6004 = select i1 %5998, float %5997, float %5955
  %6005 = fcmp fast ogt float %5955, %5997
  %6006 = fmul fast float %6004, %5996
  %6007 = fadd fast float %6004, %5996
  %6008 = fmul fast float %6007, %5790
  %6009 = fadd fast float %6006, %5791
  %6010 = fsub fast float %6009, %6008
  %6011 = fdiv fast float %6010, %6003
  %6012 = select i1 %6005, float %6011, float 0.000000e+00
  %6013 = fsub fast float 1.000000e+00, %6012
  %6014 = select i1 %5998, float %6013, float %6012
  %6015 = call float @dx.op.unary.f32(i32 7, float %6014)  ; Saturate(value)
  %6016 = extractvalue %dx.types.CBufRet.f32 %5775, 3
  %6017 = fmul fast float %6016, %6015
  %6018 = fsub fast float 1.000000e+00, %6017
  br label %6019

; <label>:6019                                    ; preds = %5948, %5660, %5625, %5621, %5585
  %6020 = phi float [ 1.000000e+00, %5585 ], [ %6018, %5948 ], [ 1.000000e+00, %5625 ], [ 1.000000e+00, %5660 ], [ 1.000000e+00, %5621 ]
  %6021 = fcmp fast ogt float %5617, 0.000000e+00
  br i1 %6021, label %6022, label %6186, !dx.controlflow.hints !108

; <label>:6022                                    ; preds = %6019
  %6023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6024 = extractvalue %dx.types.CBufRet.f32 %6023, 2
  %6025 = fadd fast float %6024, %5498
  %6026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6027 = extractvalue %dx.types.CBufRet.f32 %6026, 2
  %6028 = extractvalue %dx.types.CBufRet.f32 %6026, 3
  %6029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6030 = extractvalue %dx.types.CBufRet.f32 %6029, 2
  %6031 = call float @dx.op.binary.f32(i32 35, float %6025, float 0.000000e+00)  ; FMax(a,b)
  %6032 = fadd fast float %6031, 0x3F10000000000000
  %6033 = fcmp fast oeq float %6030, 0.000000e+00
  br i1 %6033, label %6034, label %6101

; <label>:6034                                    ; preds = %6022
  %6035 = extractvalue %dx.types.CBufRet.f32 %6026, 1
  %6036 = extractvalue %dx.types.CBufRet.f32 %6026, 0
  %6037 = fmul fast float %6036, %5516
  %6038 = fmul fast float %6035, %5517
  %6039 = fadd fast float %6037, 5.000000e-01
  %6040 = call float @dx.op.unary.f32(i32 27, float %6039)  ; Round_ni(value)
  %6041 = fadd fast float %6038, 5.000000e-01
  %6042 = call float @dx.op.unary.f32(i32 27, float %6041)  ; Round_ni(value)
  %6043 = fsub fast float %6039, %6040
  %6044 = fsub fast float %6041, %6042
  %6045 = fadd fast float %6040, -5.000000e-01
  %6046 = fadd fast float %6042, -5.000000e-01
  %6047 = fmul fast float %6043, 2.000000e+00
  %6048 = fsub fast float 3.000000e+00, %6047
  %6049 = fadd fast float %6047, 1.000000e+00
  %6050 = fsub fast float 2.000000e+00, %6043
  %6051 = bitcast float %6048 to i32
  %6052 = sub nsw i32 2129859010, %6051
  %6053 = bitcast i32 %6052 to float
  %6054 = fmul fast float %6053, %6050
  %6055 = fadd fast float %6054, -1.000000e+00
  %6056 = bitcast float %6049 to i32
  %6057 = sub nsw i32 2129859010, %6056
  %6058 = bitcast i32 %6057 to float
  %6059 = fmul fast float %6058, %6043
  %6060 = fadd fast float %6059, 1.000000e+00
  %6061 = fmul fast float %6044, 2.000000e+00
  %6062 = fsub fast float 3.000000e+00, %6061
  %6063 = fadd fast float %6061, 1.000000e+00
  %6064 = fsub fast float 2.000000e+00, %6044
  %6065 = bitcast float %6062 to i32
  %6066 = sub nsw i32 2129859010, %6065
  %6067 = bitcast i32 %6066 to float
  %6068 = fmul fast float %6067, %6064
  %6069 = fadd fast float %6068, -1.000000e+00
  %6070 = bitcast float %6063 to i32
  %6071 = sub nsw i32 2129859010, %6070
  %6072 = bitcast i32 %6071 to float
  %6073 = fmul fast float %6072, %6044
  %6074 = fadd fast float %6073, 1.000000e+00
  %6075 = fadd fast float %6055, %6045
  %6076 = fmul fast float %6075, %6027
  %6077 = fadd fast float %6069, %6046
  %6078 = fmul fast float %6077, %6028
  %6079 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6076, float %6078, float undef, float undef, i32 0, i32 0, i32 undef, float %6032)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6080 = extractvalue %dx.types.ResRet.f32 %6079, 0
  %6081 = fmul fast float %6080, %6048
  %6082 = fadd fast float %6060, %6045
  %6083 = fmul fast float %6082, %6027
  %6084 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6083, float %6078, float undef, float undef, i32 0, i32 0, i32 undef, float %6032)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6085 = extractvalue %dx.types.ResRet.f32 %6084, 0
  %6086 = fmul fast float %6085, %6049
  %6087 = fadd fast float %6074, %6046
  %6088 = fmul fast float %6087, %6028
  %6089 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6076, float %6088, float undef, float undef, i32 0, i32 0, i32 undef, float %6032)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6090 = extractvalue %dx.types.ResRet.f32 %6089, 0
  %6091 = fmul fast float %6090, %6048
  %6092 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6083, float %6088, float undef, float undef, i32 0, i32 0, i32 undef, float %6032)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6093 = extractvalue %dx.types.ResRet.f32 %6092, 0
  %6094 = fmul fast float %6093, %6049
  %6095 = fadd fast float %6094, %6091
  %6096 = fmul fast float %6095, %6063
  %6097 = fadd fast float %6086, %6081
  %6098 = fmul fast float %6097, %6062
  %6099 = fadd fast float %6098, %6096
  %6100 = fmul fast float %6099, 6.250000e-02
  br label %6186

; <label>:6101                                    ; preds = %6022
  %6102 = fmul fast float %261, 0x401921FB60000000
  %6103 = call float @dx.op.unary.f32(i32 13, float %6102)  ; Sin(value)
  %6104 = call float @dx.op.unary.f32(i32 12, float %6102)  ; Cos(value)
  %6105 = fsub fast float -0.000000e+00, %6103
  br label %6106

; <label>:6106                                    ; preds = %6155, %6101
  %6107 = phi float [ 0.000000e+00, %6101 ], [ %6150, %6155 ]
  %6108 = phi float [ 0.000000e+00, %6101 ], [ %6152, %6155 ]
  %6109 = phi i32 [ 0, %6101 ], [ %6156, %6155 ]
  %6110 = mul i32 %6109, 2
  %6111 = add i32 0, %6110
  %6112 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6111
  %6113 = load float, float* %6112, align 4
  %6114 = mul i32 %6109, 2
  %6115 = add i32 1, %6114
  %6116 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6115
  %6117 = load float, float* %6116, align 4
  %6118 = fmul fast float %6113, %6104
  %6119 = call float @dx.op.tertiary.f32(i32 46, float %6117, float %6105, float %6118)  ; FMad(a,b,c)
  %6120 = fmul fast float %6113, %6103
  %6121 = call float @dx.op.tertiary.f32(i32 46, float %6117, float %6104, float %6120)  ; FMad(a,b,c)
  %6122 = fmul fast float %6119, %6030
  %6123 = fmul fast float %6121, %6030
  %6124 = fadd fast float %6122, %5516
  %6125 = fadd fast float %6123, %5517
  %6126 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %43, float %6124, float %6125, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6127 = extractvalue %dx.types.ResRet.f32 %6126, 0
  %6128 = extractvalue %dx.types.ResRet.f32 %6126, 1
  %6129 = extractvalue %dx.types.ResRet.f32 %6126, 2
  %6130 = extractvalue %dx.types.ResRet.f32 %6126, 3
  %6131 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %6127, float* %6131, align 4
  %6132 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %6128, float* %6132, align 4
  %6133 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %6129, float* %6133, align 4
  %6134 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %6130, float* %6134, align 4
  %6135 = fsub fast float %6127, %6032
  %6136 = fcmp fast olt float %6135, 0.000000e+00
  %6137 = select i1 %6136, float 0.000000e+00, float 1.000000e+00
  %6138 = fadd fast float %6137, %6107
  %6139 = fmul fast float %6137, %6135
  %6140 = fadd fast float %6139, %6108
  br label %6141

; <label>:6141                                    ; preds = %6141, %6106
  %6142 = phi i32 [ 1, %6106 ], [ %6153, %6141 ]
  %6143 = phi float [ %6140, %6106 ], [ %6152, %6141 ]
  %6144 = phi float [ %6138, %6106 ], [ %6150, %6141 ]
  %6145 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %6142
  %6146 = load float, float* %6145, align 4, !tbaa !109, !noalias !99
  %6147 = fsub fast float %6146, %6032
  %6148 = fcmp fast olt float %6147, 0.000000e+00
  %6149 = select i1 %6148, float 0.000000e+00, float 1.000000e+00
  %6150 = fadd fast float %6149, %6144
  %6151 = fmul fast float %6149, %6147
  %6152 = fadd fast float %6151, %6143
  %6153 = add nuw nsw i32 %6142, 1
  %6154 = icmp eq i32 %6153, 4
  br i1 %6154, label %6155, label %6141, !llvm.loop !111

; <label>:6155                                    ; preds = %6141
  %6156 = add nuw nsw i32 %6109, 1
  %6157 = icmp eq i32 %6156, 8
  br i1 %6157, label %6158, label %6106, !llvm.loop !112

; <label>:6158                                    ; preds = %6155
  %6159 = fdiv fast float 1.000000e+00, %6150
  %6160 = fmul fast float %6159, %6152
  %6161 = fdiv fast float 1.000000e+00, %6032
  %6162 = fmul fast float %6160, %6161
  %6163 = call float @dx.op.unary.f32(i32 7, float %6162)  ; Saturate(value)
  %6164 = call float @dx.op.binary.f32(i32 35, float %6163, float 0.000000e+00)  ; FMax(a,b)
  %6165 = fmul fast float %6150, 3.125000e-02
  %6166 = call float @dx.op.unary.f32(i32 7, float %6165)  ; Saturate(value)
  %6167 = fmul fast float %6166, 2.000000e+00
  %6168 = fadd fast float %6167, -1.000000e+00
  %6169 = fcmp fast ogt float %6168, 0.000000e+00
  %6170 = fcmp fast olt float %6168, 0.000000e+00
  %6171 = zext i1 %6169 to i32
  %6172 = zext i1 %6170 to i32
  %6173 = sub nsw i32 %6171, %6172
  %6174 = sitofp i32 %6173 to float
  %6175 = fmul fast float %6174, %6168
  %6176 = fsub fast float 1.000000e+00, %6175
  %6177 = fmul fast float %6176, %6176
  %6178 = fmul fast float %6177, %6176
  %6179 = fsub fast float %6176, %6178
  %6180 = fmul fast float %6179, %6164
  %6181 = fsub fast float 1.000000e+00, %6178
  %6182 = fsub fast float %6181, %6180
  %6183 = fmul fast float %6174, 5.000000e-01
  %6184 = fmul fast float %6183, %6182
  %6185 = fsub fast float 5.000000e-01, %6184
  br label %6186

; <label>:6186                                    ; preds = %6158, %6034, %6019
  %6187 = phi float [ 1.000000e+00, %6019 ], [ %6100, %6034 ], [ %6185, %6158 ]
  %6188 = fcmp fast ogt float %5615, 0.000000e+00
  br i1 %6188, label %6189, label %6353, !dx.controlflow.hints !113

; <label>:6189                                    ; preds = %6186
  %6190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6191 = extractvalue %dx.types.CBufRet.f32 %6190, 1
  %6192 = fadd fast float %6191, %5498
  %6193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6194 = extractvalue %dx.types.CBufRet.f32 %6193, 2
  %6195 = extractvalue %dx.types.CBufRet.f32 %6193, 3
  %6196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6197 = extractvalue %dx.types.CBufRet.f32 %6196, 1
  %6198 = call float @dx.op.binary.f32(i32 35, float %6192, float 0.000000e+00)  ; FMax(a,b)
  %6199 = fadd fast float %6198, 0x3F10000000000000
  %6200 = fcmp fast oeq float %6197, 0.000000e+00
  br i1 %6200, label %6201, label %6268

; <label>:6201                                    ; preds = %6189
  %6202 = extractvalue %dx.types.CBufRet.f32 %6193, 1
  %6203 = extractvalue %dx.types.CBufRet.f32 %6193, 0
  %6204 = fmul fast float %6203, %5508
  %6205 = fmul fast float %6202, %5509
  %6206 = fadd fast float %6204, 5.000000e-01
  %6207 = call float @dx.op.unary.f32(i32 27, float %6206)  ; Round_ni(value)
  %6208 = fadd fast float %6205, 5.000000e-01
  %6209 = call float @dx.op.unary.f32(i32 27, float %6208)  ; Round_ni(value)
  %6210 = fsub fast float %6206, %6207
  %6211 = fsub fast float %6208, %6209
  %6212 = fadd fast float %6207, -5.000000e-01
  %6213 = fadd fast float %6209, -5.000000e-01
  %6214 = fmul fast float %6210, 2.000000e+00
  %6215 = fsub fast float 3.000000e+00, %6214
  %6216 = fadd fast float %6214, 1.000000e+00
  %6217 = fsub fast float 2.000000e+00, %6210
  %6218 = bitcast float %6215 to i32
  %6219 = sub nsw i32 2129859010, %6218
  %6220 = bitcast i32 %6219 to float
  %6221 = fmul fast float %6220, %6217
  %6222 = fadd fast float %6221, -1.000000e+00
  %6223 = bitcast float %6216 to i32
  %6224 = sub nsw i32 2129859010, %6223
  %6225 = bitcast i32 %6224 to float
  %6226 = fmul fast float %6225, %6210
  %6227 = fadd fast float %6226, 1.000000e+00
  %6228 = fmul fast float %6211, 2.000000e+00
  %6229 = fsub fast float 3.000000e+00, %6228
  %6230 = fadd fast float %6228, 1.000000e+00
  %6231 = fsub fast float 2.000000e+00, %6211
  %6232 = bitcast float %6229 to i32
  %6233 = sub nsw i32 2129859010, %6232
  %6234 = bitcast i32 %6233 to float
  %6235 = fmul fast float %6234, %6231
  %6236 = fadd fast float %6235, -1.000000e+00
  %6237 = bitcast float %6230 to i32
  %6238 = sub nsw i32 2129859010, %6237
  %6239 = bitcast i32 %6238 to float
  %6240 = fmul fast float %6239, %6211
  %6241 = fadd fast float %6240, 1.000000e+00
  %6242 = fadd fast float %6222, %6212
  %6243 = fmul fast float %6242, %6194
  %6244 = fadd fast float %6236, %6213
  %6245 = fmul fast float %6244, %6195
  %6246 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6243, float %6245, float undef, float undef, i32 0, i32 0, i32 undef, float %6199)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6247 = extractvalue %dx.types.ResRet.f32 %6246, 0
  %6248 = fmul fast float %6247, %6215
  %6249 = fadd fast float %6227, %6212
  %6250 = fmul fast float %6249, %6194
  %6251 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6250, float %6245, float undef, float undef, i32 0, i32 0, i32 undef, float %6199)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6252 = extractvalue %dx.types.ResRet.f32 %6251, 0
  %6253 = fmul fast float %6252, %6216
  %6254 = fadd fast float %6241, %6213
  %6255 = fmul fast float %6254, %6195
  %6256 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6243, float %6255, float undef, float undef, i32 0, i32 0, i32 undef, float %6199)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6257 = extractvalue %dx.types.ResRet.f32 %6256, 0
  %6258 = fmul fast float %6257, %6215
  %6259 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6250, float %6255, float undef, float undef, i32 0, i32 0, i32 undef, float %6199)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6260 = extractvalue %dx.types.ResRet.f32 %6259, 0
  %6261 = fmul fast float %6260, %6216
  %6262 = fadd fast float %6261, %6258
  %6263 = fmul fast float %6262, %6230
  %6264 = fadd fast float %6253, %6248
  %6265 = fmul fast float %6264, %6229
  %6266 = fadd fast float %6265, %6263
  %6267 = fmul fast float %6266, 6.250000e-02
  br label %6353

; <label>:6268                                    ; preds = %6189
  %6269 = fmul fast float %261, 0x401921FB60000000
  %6270 = call float @dx.op.unary.f32(i32 13, float %6269)  ; Sin(value)
  %6271 = call float @dx.op.unary.f32(i32 12, float %6269)  ; Cos(value)
  %6272 = fsub fast float -0.000000e+00, %6270
  br label %6273

; <label>:6273                                    ; preds = %6322, %6268
  %6274 = phi float [ 0.000000e+00, %6268 ], [ %6317, %6322 ]
  %6275 = phi float [ 0.000000e+00, %6268 ], [ %6319, %6322 ]
  %6276 = phi i32 [ 0, %6268 ], [ %6323, %6322 ]
  %6277 = mul i32 %6276, 2
  %6278 = add i32 0, %6277
  %6279 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6278
  %6280 = load float, float* %6279, align 4
  %6281 = mul i32 %6276, 2
  %6282 = add i32 1, %6281
  %6283 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6282
  %6284 = load float, float* %6283, align 4
  %6285 = fmul fast float %6280, %6271
  %6286 = call float @dx.op.tertiary.f32(i32 46, float %6284, float %6272, float %6285)  ; FMad(a,b,c)
  %6287 = fmul fast float %6280, %6270
  %6288 = call float @dx.op.tertiary.f32(i32 46, float %6284, float %6271, float %6287)  ; FMad(a,b,c)
  %6289 = fmul fast float %6286, %6197
  %6290 = fmul fast float %6288, %6197
  %6291 = fadd fast float %6289, %5508
  %6292 = fadd fast float %6290, %5509
  %6293 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %43, float %6291, float %6292, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6294 = extractvalue %dx.types.ResRet.f32 %6293, 0
  %6295 = extractvalue %dx.types.ResRet.f32 %6293, 1
  %6296 = extractvalue %dx.types.ResRet.f32 %6293, 2
  %6297 = extractvalue %dx.types.ResRet.f32 %6293, 3
  %6298 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %6294, float* %6298, align 4
  %6299 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %6295, float* %6299, align 4
  %6300 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %6296, float* %6300, align 4
  %6301 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %6297, float* %6301, align 4
  %6302 = fsub fast float %6294, %6199
  %6303 = fcmp fast olt float %6302, 0.000000e+00
  %6304 = select i1 %6303, float 0.000000e+00, float 1.000000e+00
  %6305 = fadd fast float %6304, %6274
  %6306 = fmul fast float %6304, %6302
  %6307 = fadd fast float %6306, %6275
  br label %6308

; <label>:6308                                    ; preds = %6308, %6273
  %6309 = phi i32 [ 1, %6273 ], [ %6320, %6308 ]
  %6310 = phi float [ %6307, %6273 ], [ %6319, %6308 ]
  %6311 = phi float [ %6305, %6273 ], [ %6317, %6308 ]
  %6312 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %6309
  %6313 = load float, float* %6312, align 4, !tbaa !109, !noalias !99
  %6314 = fsub fast float %6313, %6199
  %6315 = fcmp fast olt float %6314, 0.000000e+00
  %6316 = select i1 %6315, float 0.000000e+00, float 1.000000e+00
  %6317 = fadd fast float %6316, %6311
  %6318 = fmul fast float %6316, %6314
  %6319 = fadd fast float %6318, %6310
  %6320 = add nuw nsw i32 %6309, 1
  %6321 = icmp eq i32 %6320, 4
  br i1 %6321, label %6322, label %6308, !llvm.loop !111

; <label>:6322                                    ; preds = %6308
  %6323 = add nuw nsw i32 %6276, 1
  %6324 = icmp eq i32 %6323, 8
  br i1 %6324, label %6325, label %6273, !llvm.loop !112

; <label>:6325                                    ; preds = %6322
  %6326 = fdiv fast float 1.000000e+00, %6317
  %6327 = fmul fast float %6326, %6319
  %6328 = fdiv fast float 1.000000e+00, %6199
  %6329 = fmul fast float %6327, %6328
  %6330 = call float @dx.op.unary.f32(i32 7, float %6329)  ; Saturate(value)
  %6331 = call float @dx.op.binary.f32(i32 35, float %6330, float 0.000000e+00)  ; FMax(a,b)
  %6332 = fmul fast float %6317, 3.125000e-02
  %6333 = call float @dx.op.unary.f32(i32 7, float %6332)  ; Saturate(value)
  %6334 = fmul fast float %6333, 2.000000e+00
  %6335 = fadd fast float %6334, -1.000000e+00
  %6336 = fcmp fast ogt float %6335, 0.000000e+00
  %6337 = fcmp fast olt float %6335, 0.000000e+00
  %6338 = zext i1 %6336 to i32
  %6339 = zext i1 %6337 to i32
  %6340 = sub nsw i32 %6338, %6339
  %6341 = sitofp i32 %6340 to float
  %6342 = fmul fast float %6341, %6335
  %6343 = fsub fast float 1.000000e+00, %6342
  %6344 = fmul fast float %6343, %6343
  %6345 = fmul fast float %6344, %6343
  %6346 = fsub fast float %6343, %6345
  %6347 = fmul fast float %6346, %6331
  %6348 = fsub fast float 1.000000e+00, %6345
  %6349 = fsub fast float %6348, %6347
  %6350 = fmul fast float %6341, 5.000000e-01
  %6351 = fmul fast float %6350, %6349
  %6352 = fsub fast float 5.000000e-01, %6351
  br label %6353

; <label>:6353                                    ; preds = %6325, %6201, %6186
  %6354 = phi float [ 1.000000e+00, %6186 ], [ %6267, %6201 ], [ %6352, %6325 ]
  %6355 = fcmp fast ogt float %5614, 0.000000e+00
  br i1 %6355, label %6356, label %6674, !dx.controlflow.hints !114

; <label>:6356                                    ; preds = %6353
  %6357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6358 = extractvalue %dx.types.CBufRet.f32 %6357, 0
  %6359 = fadd fast float %6358, %5498
  %6360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6361 = extractvalue %dx.types.CBufRet.f32 %6360, 2
  %6362 = extractvalue %dx.types.CBufRet.f32 %6360, 3
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 0
  %6365 = call float @dx.op.binary.f32(i32 35, float %6359, float 0.000000e+00)  ; FMax(a,b)
  %6366 = fadd fast float %6365, 0x3F10000000000000
  %6367 = fcmp fast oeq float %6364, 0.000000e+00
  br i1 %5501, label %6368, label %6521, !dx.controlflow.hints !115

; <label>:6368                                    ; preds = %6356
  br i1 %6367, label %6369, label %6436

; <label>:6369                                    ; preds = %6368
  %6370 = extractvalue %dx.types.CBufRet.f32 %6360, 1
  %6371 = extractvalue %dx.types.CBufRet.f32 %6360, 0
  %6372 = fmul fast float %6371, %5490
  %6373 = fmul fast float %6370, %5494
  %6374 = fadd fast float %6372, 5.000000e-01
  %6375 = call float @dx.op.unary.f32(i32 27, float %6374)  ; Round_ni(value)
  %6376 = fadd fast float %6373, 5.000000e-01
  %6377 = call float @dx.op.unary.f32(i32 27, float %6376)  ; Round_ni(value)
  %6378 = fsub fast float %6374, %6375
  %6379 = fsub fast float %6376, %6377
  %6380 = fadd fast float %6375, -5.000000e-01
  %6381 = fadd fast float %6377, -5.000000e-01
  %6382 = fmul fast float %6378, 2.000000e+00
  %6383 = fsub fast float 3.000000e+00, %6382
  %6384 = fadd fast float %6382, 1.000000e+00
  %6385 = fsub fast float 2.000000e+00, %6378
  %6386 = bitcast float %6383 to i32
  %6387 = sub nsw i32 2129859010, %6386
  %6388 = bitcast i32 %6387 to float
  %6389 = fmul fast float %6388, %6385
  %6390 = fadd fast float %6389, -1.000000e+00
  %6391 = bitcast float %6384 to i32
  %6392 = sub nsw i32 2129859010, %6391
  %6393 = bitcast i32 %6392 to float
  %6394 = fmul fast float %6393, %6378
  %6395 = fadd fast float %6394, 1.000000e+00
  %6396 = fmul fast float %6379, 2.000000e+00
  %6397 = fsub fast float 3.000000e+00, %6396
  %6398 = fadd fast float %6396, 1.000000e+00
  %6399 = fsub fast float 2.000000e+00, %6379
  %6400 = bitcast float %6397 to i32
  %6401 = sub nsw i32 2129859010, %6400
  %6402 = bitcast i32 %6401 to float
  %6403 = fmul fast float %6402, %6399
  %6404 = fadd fast float %6403, -1.000000e+00
  %6405 = bitcast float %6398 to i32
  %6406 = sub nsw i32 2129859010, %6405
  %6407 = bitcast i32 %6406 to float
  %6408 = fmul fast float %6407, %6379
  %6409 = fadd fast float %6408, 1.000000e+00
  %6410 = fadd fast float %6390, %6380
  %6411 = fmul fast float %6410, %6361
  %6412 = fadd fast float %6404, %6381
  %6413 = fmul fast float %6412, %6362
  %6414 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %44, float %6411, float %6413, float undef, float undef, i32 0, i32 0, i32 undef, float %6366)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6415 = extractvalue %dx.types.ResRet.f32 %6414, 0
  %6416 = fmul fast float %6415, %6383
  %6417 = fadd fast float %6395, %6380
  %6418 = fmul fast float %6417, %6361
  %6419 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %44, float %6418, float %6413, float undef, float undef, i32 0, i32 0, i32 undef, float %6366)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6420 = extractvalue %dx.types.ResRet.f32 %6419, 0
  %6421 = fmul fast float %6420, %6384
  %6422 = fadd fast float %6409, %6381
  %6423 = fmul fast float %6422, %6362
  %6424 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %44, float %6411, float %6423, float undef, float undef, i32 0, i32 0, i32 undef, float %6366)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6425 = extractvalue %dx.types.ResRet.f32 %6424, 0
  %6426 = fmul fast float %6425, %6383
  %6427 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %44, float %6418, float %6423, float undef, float undef, i32 0, i32 0, i32 undef, float %6366)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6428 = extractvalue %dx.types.ResRet.f32 %6427, 0
  %6429 = fmul fast float %6428, %6384
  %6430 = fadd fast float %6429, %6426
  %6431 = fmul fast float %6430, %6398
  %6432 = fadd fast float %6421, %6416
  %6433 = fmul fast float %6432, %6397
  %6434 = fadd fast float %6433, %6431
  %6435 = fmul fast float %6434, 6.250000e-02
  br label %6674

; <label>:6436                                    ; preds = %6368
  %6437 = fmul fast float %261, 0x401921FB60000000
  %6438 = call float @dx.op.unary.f32(i32 13, float %6437)  ; Sin(value)
  %6439 = call float @dx.op.unary.f32(i32 12, float %6437)  ; Cos(value)
  %6440 = fsub fast float -0.000000e+00, %6438
  br label %6441

; <label>:6441                                    ; preds = %6490, %6436
  %6442 = phi float [ 0.000000e+00, %6436 ], [ %6485, %6490 ]
  %6443 = phi float [ 0.000000e+00, %6436 ], [ %6487, %6490 ]
  %6444 = phi i32 [ 0, %6436 ], [ %6491, %6490 ]
  %6445 = mul i32 %6444, 2
  %6446 = add i32 0, %6445
  %6447 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6446
  %6448 = load float, float* %6447, align 4
  %6449 = mul i32 %6444, 2
  %6450 = add i32 1, %6449
  %6451 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6450
  %6452 = load float, float* %6451, align 4
  %6453 = fmul fast float %6448, %6439
  %6454 = call float @dx.op.tertiary.f32(i32 46, float %6452, float %6440, float %6453)  ; FMad(a,b,c)
  %6455 = fmul fast float %6448, %6438
  %6456 = call float @dx.op.tertiary.f32(i32 46, float %6452, float %6439, float %6455)  ; FMad(a,b,c)
  %6457 = fmul fast float %6454, %6364
  %6458 = fmul fast float %6456, %6364
  %6459 = fadd fast float %6457, %5490
  %6460 = fadd fast float %6458, %5494
  %6461 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %43, float %6459, float %6460, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6462 = extractvalue %dx.types.ResRet.f32 %6461, 0
  %6463 = extractvalue %dx.types.ResRet.f32 %6461, 1
  %6464 = extractvalue %dx.types.ResRet.f32 %6461, 2
  %6465 = extractvalue %dx.types.ResRet.f32 %6461, 3
  %6466 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %6462, float* %6466, align 4
  %6467 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %6463, float* %6467, align 4
  %6468 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %6464, float* %6468, align 4
  %6469 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %6465, float* %6469, align 4
  %6470 = fsub fast float %6462, %6366
  %6471 = fcmp fast olt float %6470, 0.000000e+00
  %6472 = select i1 %6471, float 0.000000e+00, float 1.000000e+00
  %6473 = fadd fast float %6472, %6442
  %6474 = fmul fast float %6472, %6470
  %6475 = fadd fast float %6474, %6443
  br label %6476

; <label>:6476                                    ; preds = %6476, %6441
  %6477 = phi i32 [ 1, %6441 ], [ %6488, %6476 ]
  %6478 = phi float [ %6475, %6441 ], [ %6487, %6476 ]
  %6479 = phi float [ %6473, %6441 ], [ %6485, %6476 ]
  %6480 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %6477
  %6481 = load float, float* %6480, align 4, !tbaa !109, !noalias !99
  %6482 = fsub fast float %6481, %6366
  %6483 = fcmp fast olt float %6482, 0.000000e+00
  %6484 = select i1 %6483, float 0.000000e+00, float 1.000000e+00
  %6485 = fadd fast float %6484, %6479
  %6486 = fmul fast float %6484, %6482
  %6487 = fadd fast float %6486, %6478
  %6488 = add nuw nsw i32 %6477, 1
  %6489 = icmp eq i32 %6488, 4
  br i1 %6489, label %6490, label %6476, !llvm.loop !111

; <label>:6490                                    ; preds = %6476
  %6491 = add nuw nsw i32 %6444, 1
  %6492 = icmp eq i32 %6491, 8
  br i1 %6492, label %6493, label %6441, !llvm.loop !112

; <label>:6493                                    ; preds = %6490
  %6494 = fdiv fast float 1.000000e+00, %6485
  %6495 = fmul fast float %6494, %6487
  %6496 = fdiv fast float 1.000000e+00, %6366
  %6497 = fmul fast float %6495, %6496
  %6498 = call float @dx.op.unary.f32(i32 7, float %6497)  ; Saturate(value)
  %6499 = call float @dx.op.binary.f32(i32 35, float %6498, float 0.000000e+00)  ; FMax(a,b)
  %6500 = fmul fast float %6485, 3.125000e-02
  %6501 = call float @dx.op.unary.f32(i32 7, float %6500)  ; Saturate(value)
  %6502 = fmul fast float %6501, 2.000000e+00
  %6503 = fadd fast float %6502, -1.000000e+00
  %6504 = fcmp fast ogt float %6503, 0.000000e+00
  %6505 = fcmp fast olt float %6503, 0.000000e+00
  %6506 = zext i1 %6504 to i32
  %6507 = zext i1 %6505 to i32
  %6508 = sub nsw i32 %6506, %6507
  %6509 = sitofp i32 %6508 to float
  %6510 = fmul fast float %6509, %6503
  %6511 = fsub fast float 1.000000e+00, %6510
  %6512 = fmul fast float %6511, %6511
  %6513 = fmul fast float %6512, %6511
  %6514 = fsub fast float %6511, %6513
  %6515 = fmul fast float %6514, %6499
  %6516 = fsub fast float 1.000000e+00, %6513
  %6517 = fsub fast float %6516, %6515
  %6518 = fmul fast float %6509, 5.000000e-01
  %6519 = fmul fast float %6518, %6517
  %6520 = fsub fast float 5.000000e-01, %6519
  br label %6674

; <label>:6521                                    ; preds = %6356
  br i1 %6367, label %6522, label %6589

; <label>:6522                                    ; preds = %6521
  %6523 = extractvalue %dx.types.CBufRet.f32 %6360, 1
  %6524 = extractvalue %dx.types.CBufRet.f32 %6360, 0
  %6525 = fmul fast float %6524, %5490
  %6526 = fmul fast float %6523, %5494
  %6527 = fadd fast float %6525, 5.000000e-01
  %6528 = call float @dx.op.unary.f32(i32 27, float %6527)  ; Round_ni(value)
  %6529 = fadd fast float %6526, 5.000000e-01
  %6530 = call float @dx.op.unary.f32(i32 27, float %6529)  ; Round_ni(value)
  %6531 = fsub fast float %6527, %6528
  %6532 = fsub fast float %6529, %6530
  %6533 = fadd fast float %6528, -5.000000e-01
  %6534 = fadd fast float %6530, -5.000000e-01
  %6535 = fmul fast float %6531, 2.000000e+00
  %6536 = fsub fast float 3.000000e+00, %6535
  %6537 = fadd fast float %6535, 1.000000e+00
  %6538 = fsub fast float 2.000000e+00, %6531
  %6539 = bitcast float %6536 to i32
  %6540 = sub nsw i32 2129859010, %6539
  %6541 = bitcast i32 %6540 to float
  %6542 = fmul fast float %6541, %6538
  %6543 = fadd fast float %6542, -1.000000e+00
  %6544 = bitcast float %6537 to i32
  %6545 = sub nsw i32 2129859010, %6544
  %6546 = bitcast i32 %6545 to float
  %6547 = fmul fast float %6546, %6531
  %6548 = fadd fast float %6547, 1.000000e+00
  %6549 = fmul fast float %6532, 2.000000e+00
  %6550 = fsub fast float 3.000000e+00, %6549
  %6551 = fadd fast float %6549, 1.000000e+00
  %6552 = fsub fast float 2.000000e+00, %6532
  %6553 = bitcast float %6550 to i32
  %6554 = sub nsw i32 2129859010, %6553
  %6555 = bitcast i32 %6554 to float
  %6556 = fmul fast float %6555, %6552
  %6557 = fadd fast float %6556, -1.000000e+00
  %6558 = bitcast float %6551 to i32
  %6559 = sub nsw i32 2129859010, %6558
  %6560 = bitcast i32 %6559 to float
  %6561 = fmul fast float %6560, %6532
  %6562 = fadd fast float %6561, 1.000000e+00
  %6563 = fadd fast float %6543, %6533
  %6564 = fmul fast float %6563, %6361
  %6565 = fadd fast float %6557, %6534
  %6566 = fmul fast float %6565, %6362
  %6567 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6564, float %6566, float undef, float undef, i32 0, i32 0, i32 undef, float %6366)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6568 = extractvalue %dx.types.ResRet.f32 %6567, 0
  %6569 = fmul fast float %6568, %6536
  %6570 = fadd fast float %6548, %6533
  %6571 = fmul fast float %6570, %6361
  %6572 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6571, float %6566, float undef, float undef, i32 0, i32 0, i32 undef, float %6366)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6573 = extractvalue %dx.types.ResRet.f32 %6572, 0
  %6574 = fmul fast float %6573, %6537
  %6575 = fadd fast float %6562, %6534
  %6576 = fmul fast float %6575, %6362
  %6577 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6564, float %6576, float undef, float undef, i32 0, i32 0, i32 undef, float %6366)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6578 = extractvalue %dx.types.ResRet.f32 %6577, 0
  %6579 = fmul fast float %6578, %6536
  %6580 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6571, float %6576, float undef, float undef, i32 0, i32 0, i32 undef, float %6366)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6581 = extractvalue %dx.types.ResRet.f32 %6580, 0
  %6582 = fmul fast float %6581, %6537
  %6583 = fadd fast float %6582, %6579
  %6584 = fmul fast float %6583, %6551
  %6585 = fadd fast float %6574, %6569
  %6586 = fmul fast float %6585, %6550
  %6587 = fadd fast float %6586, %6584
  %6588 = fmul fast float %6587, 6.250000e-02
  br label %6674

; <label>:6589                                    ; preds = %6521
  %6590 = fmul fast float %261, 0x401921FB60000000
  %6591 = call float @dx.op.unary.f32(i32 13, float %6590)  ; Sin(value)
  %6592 = call float @dx.op.unary.f32(i32 12, float %6590)  ; Cos(value)
  %6593 = fsub fast float -0.000000e+00, %6591
  br label %6594

; <label>:6594                                    ; preds = %6643, %6589
  %6595 = phi float [ 0.000000e+00, %6589 ], [ %6638, %6643 ]
  %6596 = phi float [ 0.000000e+00, %6589 ], [ %6640, %6643 ]
  %6597 = phi i32 [ 0, %6589 ], [ %6644, %6643 ]
  %6598 = mul i32 %6597, 2
  %6599 = add i32 0, %6598
  %6600 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6599
  %6601 = load float, float* %6600, align 4
  %6602 = mul i32 %6597, 2
  %6603 = add i32 1, %6602
  %6604 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6603
  %6605 = load float, float* %6604, align 4
  %6606 = fmul fast float %6601, %6592
  %6607 = call float @dx.op.tertiary.f32(i32 46, float %6605, float %6593, float %6606)  ; FMad(a,b,c)
  %6608 = fmul fast float %6601, %6591
  %6609 = call float @dx.op.tertiary.f32(i32 46, float %6605, float %6592, float %6608)  ; FMad(a,b,c)
  %6610 = fmul fast float %6607, %6364
  %6611 = fmul fast float %6609, %6364
  %6612 = fadd fast float %6610, %5490
  %6613 = fadd fast float %6611, %5494
  %6614 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %43, float %6612, float %6613, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6615 = extractvalue %dx.types.ResRet.f32 %6614, 0
  %6616 = extractvalue %dx.types.ResRet.f32 %6614, 1
  %6617 = extractvalue %dx.types.ResRet.f32 %6614, 2
  %6618 = extractvalue %dx.types.ResRet.f32 %6614, 3
  %6619 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %6615, float* %6619, align 4
  %6620 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %6616, float* %6620, align 4
  %6621 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %6617, float* %6621, align 4
  %6622 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %6618, float* %6622, align 4
  %6623 = fsub fast float %6615, %6366
  %6624 = fcmp fast olt float %6623, 0.000000e+00
  %6625 = select i1 %6624, float 0.000000e+00, float 1.000000e+00
  %6626 = fadd fast float %6625, %6595
  %6627 = fmul fast float %6625, %6623
  %6628 = fadd fast float %6627, %6596
  br label %6629

; <label>:6629                                    ; preds = %6629, %6594
  %6630 = phi i32 [ 1, %6594 ], [ %6641, %6629 ]
  %6631 = phi float [ %6628, %6594 ], [ %6640, %6629 ]
  %6632 = phi float [ %6626, %6594 ], [ %6638, %6629 ]
  %6633 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %6630
  %6634 = load float, float* %6633, align 4, !tbaa !109, !noalias !99
  %6635 = fsub fast float %6634, %6366
  %6636 = fcmp fast olt float %6635, 0.000000e+00
  %6637 = select i1 %6636, float 0.000000e+00, float 1.000000e+00
  %6638 = fadd fast float %6637, %6632
  %6639 = fmul fast float %6637, %6635
  %6640 = fadd fast float %6639, %6631
  %6641 = add nuw nsw i32 %6630, 1
  %6642 = icmp eq i32 %6641, 4
  br i1 %6642, label %6643, label %6629, !llvm.loop !111

; <label>:6643                                    ; preds = %6629
  %6644 = add nuw nsw i32 %6597, 1
  %6645 = icmp eq i32 %6644, 8
  br i1 %6645, label %6646, label %6594, !llvm.loop !112

; <label>:6646                                    ; preds = %6643
  %6647 = fdiv fast float 1.000000e+00, %6638
  %6648 = fmul fast float %6647, %6640
  %6649 = fdiv fast float 1.000000e+00, %6366
  %6650 = fmul fast float %6648, %6649
  %6651 = call float @dx.op.unary.f32(i32 7, float %6650)  ; Saturate(value)
  %6652 = call float @dx.op.binary.f32(i32 35, float %6651, float 0.000000e+00)  ; FMax(a,b)
  %6653 = fmul fast float %6638, 3.125000e-02
  %6654 = call float @dx.op.unary.f32(i32 7, float %6653)  ; Saturate(value)
  %6655 = fmul fast float %6654, 2.000000e+00
  %6656 = fadd fast float %6655, -1.000000e+00
  %6657 = fcmp fast ogt float %6656, 0.000000e+00
  %6658 = fcmp fast olt float %6656, 0.000000e+00
  %6659 = zext i1 %6657 to i32
  %6660 = zext i1 %6658 to i32
  %6661 = sub nsw i32 %6659, %6660
  %6662 = sitofp i32 %6661 to float
  %6663 = fmul fast float %6662, %6656
  %6664 = fsub fast float 1.000000e+00, %6663
  %6665 = fmul fast float %6664, %6664
  %6666 = fmul fast float %6665, %6664
  %6667 = fsub fast float %6664, %6666
  %6668 = fmul fast float %6667, %6652
  %6669 = fsub fast float 1.000000e+00, %6666
  %6670 = fsub fast float %6669, %6668
  %6671 = fmul fast float %6662, 5.000000e-01
  %6672 = fmul fast float %6671, %6670
  %6673 = fsub fast float 5.000000e-01, %6672
  br label %6674

; <label>:6674                                    ; preds = %6646, %6522, %6493, %6369, %6353
  %6675 = phi float [ 1.000000e+00, %6353 ], [ %6435, %6369 ], [ %6520, %6493 ], [ %6588, %6522 ], [ %6673, %6646 ]
  %6676 = fsub fast float %6187, %6020
  %6677 = fmul fast float %6676, %5587
  %6678 = fadd fast float %6677, %6020
  %6679 = fsub fast float %6354, %6678
  %6680 = fmul fast float %6679, %5586
  %6681 = fadd fast float %6680, %6678
  %6682 = fsub fast float %6675, %6681
  %6683 = fmul fast float %6682, %5614
  %6684 = fadd fast float %6683, %6681
  %6685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6686 = extractvalue %dx.types.CBufRet.f32 %6685, 2
  %6687 = fcmp fast ogt float %6686, 0.000000e+00
  br i1 %6687, label %6688, label %6728, !dx.controlflow.hints !116

; <label>:6688                                    ; preds = %6674
  %6689 = fcmp fast ugt float %6686, 0.000000e+00
  br i1 %6689, label %6690, label %6725

; <label>:6690                                    ; preds = %6688
  %6691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6692 = extractvalue %dx.types.CBufRet.f32 %6691, 0
  %6693 = extractvalue %dx.types.CBufRet.f32 %6691, 1
  %6694 = extractvalue %dx.types.CBufRet.f32 %6691, 2
  %6695 = extractvalue %dx.types.CBufRet.f32 %6691, 3
  %6696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6697 = extractvalue %dx.types.CBufRet.f32 %6696, 0
  %6698 = extractvalue %dx.types.CBufRet.f32 %6696, 1
  %6699 = extractvalue %dx.types.CBufRet.f32 %6696, 2
  %6700 = extractvalue %dx.types.CBufRet.f32 %6696, 3
  %6701 = extractvalue %dx.types.CBufRet.f32 %6685, 0
  %6702 = extractvalue %dx.types.CBufRet.f32 %6685, 1
  %6703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6704 = extractvalue %dx.types.CBufRet.f32 %6703, 0
  %6705 = extractvalue %dx.types.CBufRet.f32 %6703, 1
  %6706 = extractvalue %dx.types.CBufRet.f32 %6703, 2
  %6707 = fadd fast float %6704, %5467
  %6708 = fadd fast float %6705, %5468
  %6709 = fadd fast float %6706, %5469
  %6710 = fmul fast float %6707, %6692
  %6711 = call float @dx.op.tertiary.f32(i32 46, float %6693, float %6708, float %6710)  ; FMad(a,b,c)
  %6712 = call float @dx.op.tertiary.f32(i32 46, float %6694, float %6709, float %6711)  ; FMad(a,b,c)
  %6713 = fadd fast float %6712, %6695
  %6714 = fmul fast float %6707, %6697
  %6715 = call float @dx.op.tertiary.f32(i32 46, float %6698, float %6708, float %6714)  ; FMad(a,b,c)
  %6716 = call float @dx.op.tertiary.f32(i32 46, float %6699, float %6709, float %6715)  ; FMad(a,b,c)
  %6717 = fadd fast float %6716, %6700
  %6718 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %39, float %6713, float %6717, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6719 = extractvalue %dx.types.ResRet.f32 %6718, 0
  %6720 = fmul fast float %6719, %6702
  %6721 = fadd fast float %6720, %6701
  %6722 = call float @dx.op.unary.f32(i32 7, float %6721)  ; Saturate(value)
  %6723 = fmul fast float %6722, %6686
  %6724 = fsub fast float 1.000000e+00, %6723
  br label %6725

; <label>:6725                                    ; preds = %6690, %6688
  %6726 = phi float [ %6724, %6690 ], [ 1.000000e+00, %6688 ]
  %6727 = fmul fast float %6726, %6684
  br label %6728

; <label>:6728                                    ; preds = %6725, %6674, %5447
  %6729 = phi float [ 1.000000e+00, %5447 ], [ %6727, %6725 ], [ %6684, %6674 ]
  %6730 = call float @dx.op.binary.f32(i32 36, float %6729, float %6729)  ; FMin(a,b)
  %6731 = call float @dx.op.binary.f32(i32 36, float %6729, float %6730)  ; FMin(a,b)
  %6732 = fcmp fast ogt float %6731, 0.000000e+00
  br i1 %6732, label %6733, label %6899, !dx.controlflow.hints !117

; <label>:6733                                    ; preds = %6728
  %6734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6735 = extractvalue %dx.types.CBufRet.f32 %6734, 0
  %6736 = extractvalue %dx.types.CBufRet.f32 %6734, 1
  %6737 = extractvalue %dx.types.CBufRet.f32 %6734, 2
  %6738 = extractvalue %dx.types.CBufRet.f32 %6734, 3
  %6739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6740 = extractvalue %dx.types.CBufRet.f32 %6739, 0
  %6741 = extractvalue %dx.types.CBufRet.f32 %6739, 1
  %6742 = extractvalue %dx.types.CBufRet.f32 %6739, 2
  %6743 = extractvalue %dx.types.CBufRet.f32 %6739, 3
  %6744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6745 = extractvalue %dx.types.CBufRet.f32 %6744, 0
  %6746 = extractvalue %dx.types.CBufRet.f32 %6744, 1
  %6747 = extractvalue %dx.types.CBufRet.f32 %6744, 2
  %6748 = extractvalue %dx.types.CBufRet.f32 %6744, 3
  %6749 = fmul fast float %6735, %5467
  %6750 = call float @dx.op.tertiary.f32(i32 46, float %5468, float %6736, float %6749)  ; FMad(a,b,c)
  %6751 = call float @dx.op.tertiary.f32(i32 46, float %5469, float %6737, float %6750)  ; FMad(a,b,c)
  %6752 = fadd fast float %6751, %6738
  %6753 = fmul fast float %6740, %5467
  %6754 = call float @dx.op.tertiary.f32(i32 46, float %5468, float %6741, float %6753)  ; FMad(a,b,c)
  %6755 = call float @dx.op.tertiary.f32(i32 46, float %5469, float %6742, float %6754)  ; FMad(a,b,c)
  %6756 = fadd fast float %6755, %6743
  %6757 = fmul fast float %6745, %5467
  %6758 = call float @dx.op.tertiary.f32(i32 46, float %5468, float %6746, float %6757)  ; FMad(a,b,c)
  %6759 = call float @dx.op.tertiary.f32(i32 46, float %5469, float %6747, float %6758)  ; FMad(a,b,c)
  %6760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6761 = extractvalue %dx.types.CBufRet.f32 %6760, 0
  %6762 = extractvalue %dx.types.CBufRet.f32 %6760, 1
  %6763 = extractvalue %dx.types.CBufRet.f32 %6760, 3
  %6764 = fmul fast float %6763, %6752
  %6765 = fmul fast float %6763, %6756
  %6766 = fadd fast float %6764, %6761
  %6767 = fadd fast float %6765, %6762
  %6768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6769 = extractvalue %dx.types.CBufRet.f32 %6768, 0
  %6770 = extractvalue %dx.types.CBufRet.f32 %6768, 1
  %6771 = fsub fast float %6766, %6769
  %6772 = fsub fast float %6767, %6770
  %6773 = fcmp fast olt float %6771, 0.000000e+00
  %6774 = fcmp fast olt float %6772, 0.000000e+00
  %6775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.f32 %6775, 0
  %6777 = extractvalue %dx.types.CBufRet.f32 %6775, 1
  %6778 = extractvalue %dx.types.CBufRet.f32 %6775, 2
  %6779 = extractvalue %dx.types.CBufRet.f32 %6775, 3
  %6780 = select i1 %6773, float %6776, float %6778
  %6781 = select i1 %6774, float %6777, float %6779
  %6782 = fmul fast float %6780, %6771
  %6783 = fmul fast float %6781, %6772
  %6784 = call float @dx.op.unary.f32(i32 6, float %6782)  ; FAbs(value)
  %6785 = call float @dx.op.unary.f32(i32 6, float %6783)  ; FAbs(value)
  %6786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6787 = extractvalue %dx.types.CBufRet.f32 %6786, 0
  %6788 = call float @dx.op.binary.f32(i32 35, float %6784, float %6785)  ; FMax(a,b)
  %6789 = fsub fast float %6787, %6788
  %6790 = call float @dx.op.unary.f32(i32 7, float %6789)  ; Saturate(value)
  %6791 = fcmp fast ogt float %6790, 0.000000e+00
  br i1 %6791, label %6792, label %6833, !dx.controlflow.hints !118

; <label>:6792                                    ; preds = %6733
  %6793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %42, float %6766, float %6767, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6794 = extractvalue %dx.types.ResRet.f32 %6793, 1
  %6795 = fcmp fast ogt float %6794, 0.000000e+00
  br i1 %6795, label %6796, label %6828

; <label>:6796                                    ; preds = %6792
  %6797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %6766, float %6767, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6798 = extractvalue %dx.types.ResRet.f32 %6797, 0
  %6799 = extractvalue %dx.types.ResRet.f32 %6797, 1
  %6800 = extractvalue %dx.types.ResRet.f32 %6797, 2
  %6801 = extractvalue %dx.types.ResRet.f32 %6797, 3
  %6802 = fsub fast float 1.000000e+00, %6748
  %6803 = fsub fast float %6802, %6759
  %6804 = fmul fast float %6803, 0x400921FB60000000
  %6805 = fadd fast float %6804, 0x3FF921FB60000000
  %6806 = call float @dx.op.unary.f32(i32 13, float %6805)  ; Sin(value)
  %6807 = fadd fast float %6806, -1.000000e+00
  %6808 = fmul fast float %6807, 0x3FD45F3060000000
  %6809 = fmul fast float %6803, 0x401921FB60000000
  %6810 = fadd fast float %6809, 0x400921FB60000000
  %6811 = call float @dx.op.unary.f32(i32 13, float %6810)  ; Sin(value)
  %6812 = fadd fast float %6811, 0x3E7777A5C0000000
  %6813 = fmul fast float %6812, 0x3FC45F3060000000
  %6814 = fmul fast float %6803, 0x4022D97C80000000
  %6815 = fadd fast float %6814, 0x4012D97C80000000
  %6816 = call float @dx.op.unary.f32(i32 13, float %6815)  ; Sin(value)
  %6817 = fadd fast float %6816, 1.000000e+00
  %6818 = fmul fast float %6817, 0x3FBB2995E0000000
  %6819 = fmul fast float %6803, 0x402921FB60000000
  %6820 = fadd fast float %6819, 0x401921FB60000000
  %6821 = call float @dx.op.unary.f32(i32 13, float %6820)  ; Sin(value)
  %6822 = fadd fast float %6821, 0xBE8777A5C0000000
  %6823 = fmul fast float %6822, 0x3FB45F3060000000
  %6824 = call float @dx.op.dot4.f32(i32 56, float %6798, float %6799, float %6800, float %6801, float %6808, float %6813, float %6818, float %6823)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6825 = fmul fast float %6824, 0xBFF7154760000000
  %6826 = call float @dx.op.unary.f32(i32 21, float %6825)  ; Exp(value)
  %6827 = call float @dx.op.unary.f32(i32 7, float %6826)  ; Saturate(value)
  br label %6828

; <label>:6828                                    ; preds = %6796, %6792
  %6829 = phi float [ %6827, %6796 ], [ 1.000000e+00, %6792 ]
  %6830 = fadd fast float %6829, -1.000000e+00
  %6831 = fmul fast float %6830, %6790
  %6832 = fadd fast float %6831, 1.000000e+00
  br label %6833

; <label>:6833                                    ; preds = %6828, %6733
  %6834 = phi float [ %6832, %6828 ], [ 1.000000e+00, %6733 ]
  %6835 = fmul fast float %6834, %6729
  %6836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6837 = extractvalue %dx.types.CBufRet.f32 %6836, 0
  %6838 = extractvalue %dx.types.CBufRet.f32 %6836, 1
  %6839 = extractvalue %dx.types.CBufRet.f32 %6836, 2
  %6840 = fadd fast float %6837, %189
  %6841 = fadd fast float %6838, %190
  %6842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6843 = extractvalue %dx.types.CBufRet.f32 %6842, 1
  %6844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6845 = extractvalue %dx.types.CBufRet.f32 %6844, 0
  %6846 = extractvalue %dx.types.CBufRet.f32 %6844, 1
  %6847 = extractvalue %dx.types.CBufRet.f32 %6844, 2
  %6848 = fsub fast float -0.000000e+00, %6840
  %6849 = fsub fast float -0.000000e+00, %6841
  %6850 = fsub fast float -0.000000e+00, %191
  %6851 = fsub fast float %6850, %6839
  %6852 = fadd fast float %6851, %6843
  %6853 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6848, float %6849, float %6852)  ; Dot3(ax,ay,az,bx,by,bz)
  %6854 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6845, float %6846, float %6847)  ; Dot3(ax,ay,az,bx,by,bz)
  %6855 = fdiv fast float 1.000000e+00, %6854
  %6856 = fmul fast float %6855, %6853
  %6857 = fmul fast float %6845, %6856
  %6858 = fmul fast float %6846, %6856
  %6859 = fadd fast float %6857, %6840
  %6860 = fadd fast float %6858, %6841
  %6861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6862 = extractvalue %dx.types.CBufRet.f32 %6861, 0
  %6863 = extractvalue %dx.types.CBufRet.f32 %6861, 1
  %6864 = fsub fast float %6859, %6862
  %6865 = fsub fast float %6860, %6863
  %6866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6867 = extractvalue %dx.types.CBufRet.f32 %6866, 2
  %6868 = extractvalue %dx.types.CBufRet.f32 %6866, 3
  %6869 = fmul fast float %6864, %6867
  %6870 = fmul fast float %6865, %6868
  %6871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6872 = extractvalue %dx.types.CBufRet.i32 %6871, 3
  %6873 = icmp eq i32 %6872, 0
  br i1 %6873, label %6879, label %6874

; <label>:6874                                    ; preds = %6833
  %6875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %41, float %6869, float %6870, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6876 = extractvalue %dx.types.ResRet.f32 %6875, 0
  %6877 = extractvalue %dx.types.ResRet.f32 %6875, 1
  %6878 = extractvalue %dx.types.ResRet.f32 %6875, 2
  br label %6884

; <label>:6879                                    ; preds = %6833
  %6880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %6869, float %6870, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6881 = extractvalue %dx.types.ResRet.f32 %6880, 0
  %6882 = extractvalue %dx.types.ResRet.f32 %6880, 1
  %6883 = extractvalue %dx.types.ResRet.f32 %6880, 2
  br label %6884

; <label>:6884                                    ; preds = %6879, %6874
  %6885 = phi float [ %6876, %6874 ], [ %6881, %6879 ]
  %6886 = phi float [ %6877, %6874 ], [ %6882, %6879 ]
  %6887 = phi float [ %6878, %6874 ], [ %6883, %6879 ]
  %6888 = extractvalue %dx.types.CBufRet.f32 %6842, 2
  %6889 = fmul fast float %6888, %6885
  %6890 = extractvalue %dx.types.CBufRet.f32 %6842, 0
  %6891 = fsub fast float %6856, %6890
  %6892 = fsub fast float %6891, %6889
  %6893 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6892)  ; FMax(a,b)
  %6894 = fmul fast float %6893, %6886
  %6895 = call float @dx.op.binary.f32(i32 36, float %6887, float %6894)  ; FMin(a,b)
  %6896 = fmul fast float %6895, 0xBFF7154760000000
  %6897 = call float @dx.op.unary.f32(i32 21, float %6896)  ; Exp(value)
  %6898 = fmul fast float %6835, %6897
  br label %6899

; <label>:6899                                    ; preds = %6884, %6728
  %6900 = phi float [ %6898, %6884 ], [ %6729, %6728 ]
  %6901 = call float @dx.op.binary.f32(i32 36, float %6900, float %6900)  ; FMin(a,b)
  %6902 = call float @dx.op.binary.f32(i32 36, float %6900, float %6901)  ; FMin(a,b)
  %6903 = fcmp fast ogt float %6902, 0.000000e+00
  br i1 %6903, label %6904, label %7075, !dx.controlflow.hints !119

; <label>:6904                                    ; preds = %6899
  %6905 = fmul fast float %6900, %5459
  %6906 = fmul fast float %6900, %5460
  %6907 = fmul fast float %6900, %5461
  %6908 = fsub fast float %5448, %4744
  %6909 = fsub fast float %5449, %4743
  %6910 = fsub fast float %5450, %4742
  %6911 = call float @dx.op.dot3.f32(i32 55, float %6908, float %6909, float %6910, float %6908, float %6909, float %6910)  ; Dot3(ax,ay,az,bx,by,bz)
  %6912 = call float @dx.op.unary.f32(i32 25, float %6911)  ; Rsqrt(value)
  %6913 = fmul fast float %6912, %6908
  %6914 = fmul fast float %6912, %6909
  %6915 = fmul fast float %6912, %6910
  %6916 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %4751, float %4752, float %4753)  ; Dot3(ax,ay,az,bx,by,bz)
  %6917 = call float @dx.op.dot3.f32(i32 55, float %4741, float %4740, float %4739, float %6913, float %6914, float %6915)  ; Dot3(ax,ay,az,bx,by,bz)
  %6918 = call float @dx.op.unary.f32(i32 7, float %6916)  ; Saturate(value)
  %6919 = fmul fast float %6918, %6918
  %6920 = fmul fast float %6919, %5443
  %6921 = call float @dx.op.unary.f32(i32 7, float %6920)  ; Saturate(value)
  %6922 = fmul fast float %6921, %6918
  %6923 = call float @dx.op.dot3.f32(i32 55, float %4751, float %4752, float %4753, float %6913, float %6914, float %6915)  ; Dot3(ax,ay,az,bx,by,bz)
  %6924 = fmul fast float %6923, %6923
  %6925 = call float @dx.op.unary.f32(i32 6, float %6916)  ; FAbs(value)
  %6926 = fsub fast float 1.000000e+00, %4776
  %6927 = fmul fast float %4758, %4758
  %6928 = fmul fast float %6927, %6926
  %6929 = fadd fast float %6928, %4776
  %6930 = bitcast float %6929 to i32
  %6931 = ashr i32 %6930, 1
  %6932 = add nsw i32 %6931, 532487669
  %6933 = bitcast i32 %6932 to float
  %6934 = fadd fast float %6933, %4758
  %6935 = fmul fast float %4776, %6924
  %6936 = fsub fast float 1.000000e+00, %6924
  %6937 = fadd fast float %6936, %6935
  %6938 = fmul fast float %6925, %6925
  %6939 = fmul fast float %6938, %6926
  %6940 = fadd fast float %6939, %4776
  %6941 = bitcast float %6940 to i32
  %6942 = ashr i32 %6941, 1
  %6943 = add nsw i32 %6942, 532487669
  %6944 = bitcast i32 %6943 to float
  %6945 = fadd fast float %6944, %6925
  %6946 = fmul fast float %6937, %6937
  %6947 = fmul fast float %6946, %6934
  %6948 = fmul fast float %6947, %6945
  %6949 = fdiv fast float 0x3FF0A00000000000, %6948
  %6950 = fmul fast float %6949, %4776
  %6951 = call float @dx.op.unary.f32(i32 6, float %6917)  ; FAbs(value)
  %6952 = fsub fast float 1.000000e+00, %6951
  %6953 = bitcast float %6952 to i32
  %6954 = sitofp i32 %6953 to float
  %6955 = fmul fast float %6954, 5.000000e+00
  %6956 = fadd fast float %6955, 0xC1EFBF8940000000
  %6957 = fptosi float %6956 to i32
  %6958 = bitcast i32 %6957 to float
  %6959 = fsub fast float 1.000000e+00, %4748
  %6960 = fsub fast float 1.000000e+00, %4749
  %6961 = fsub fast float 1.000000e+00, %4756
  %6962 = fmul fast float %6958, %6959
  %6963 = fmul fast float %6958, %6960
  %6964 = fmul fast float %6958, %6961
  %6965 = fadd fast float %6962, %4748
  %6966 = fadd fast float %6963, %4749
  %6967 = fadd fast float %6964, %4756
  br i1 %4894, label %6968, label %6991

; <label>:6968                                    ; preds = %6904
  %6969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %3842, float %6951, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6970 = extractvalue %dx.types.ResRet.f32 %6969, 0
  %6971 = extractvalue %dx.types.ResRet.f32 %6969, 1
  %6972 = extractvalue %dx.types.ResRet.f32 %6969, 2
  %6973 = fadd fast float %6970, -5.000000e-01
  %6974 = fadd fast float %6971, -5.000000e-01
  %6975 = fadd fast float %6972, -5.000000e-01
  %6976 = fmul fast float %4748, 4.000000e+00
  %6977 = fmul fast float %6976, %6959
  %6978 = fmul fast float %6977, %6973
  %6979 = fmul fast float %4749, 4.000000e+00
  %6980 = fmul fast float %6979, %6960
  %6981 = fmul fast float %6980, %6974
  %6982 = fmul fast float %4756, 4.000000e+00
  %6983 = fmul fast float %6982, %6961
  %6984 = fmul fast float %6983, %6975
  %6985 = fadd fast float %6978, %6965
  %6986 = fadd fast float %6981, %6966
  %6987 = fadd fast float %6984, %6967
  %6988 = call float @dx.op.unary.f32(i32 7, float %6985)  ; Saturate(value)
  %6989 = call float @dx.op.unary.f32(i32 7, float %6986)  ; Saturate(value)
  %6990 = call float @dx.op.unary.f32(i32 7, float %6987)  ; Saturate(value)
  br label %6991

; <label>:6991                                    ; preds = %6968, %6904
  %6992 = phi float [ %6988, %6968 ], [ %6965, %6904 ]
  %6993 = phi float [ %6989, %6968 ], [ %6966, %6904 ]
  %6994 = phi float [ %6990, %6968 ], [ %6967, %6904 ]
  %6995 = fmul fast float %6916, 9.843750e-01
  %6996 = fadd fast float %6995, 7.812500e-03
  %6997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %6996, float %4884, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6998 = extractvalue %dx.types.ResRet.f32 %6997, 2
  %6999 = extractvalue %dx.types.ResRet.f32 %6997, 3
  %7000 = fmul fast float %6998, %4748
  %7001 = fmul fast float %6998, %4749
  %7002 = fmul fast float %6998, %4756
  %7003 = fadd fast float %7000, %6999
  %7004 = fadd fast float %7001, %6999
  %7005 = fadd fast float %7002, %6999
  br i1 %4894, label %7006, label %7029

; <label>:7006                                    ; preds = %6991
  %7007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %3842, float %6916, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7008 = extractvalue %dx.types.ResRet.f32 %7007, 0
  %7009 = extractvalue %dx.types.ResRet.f32 %7007, 1
  %7010 = extractvalue %dx.types.ResRet.f32 %7007, 2
  %7011 = fadd fast float %7008, -5.000000e-01
  %7012 = fadd fast float %7009, -5.000000e-01
  %7013 = fadd fast float %7010, -5.000000e-01
  %7014 = fmul fast float %4748, 4.000000e+00
  %7015 = fmul fast float %7014, %6959
  %7016 = fmul fast float %7015, %7011
  %7017 = fmul fast float %4749, 4.000000e+00
  %7018 = fmul fast float %7017, %6960
  %7019 = fmul fast float %7018, %7012
  %7020 = fmul fast float %4756, 4.000000e+00
  %7021 = fmul fast float %7020, %6961
  %7022 = fmul fast float %7021, %7013
  %7023 = fadd fast float %7016, %7003
  %7024 = fadd fast float %7019, %7004
  %7025 = fadd fast float %7022, %7005
  %7026 = call float @dx.op.unary.f32(i32 7, float %7023)  ; Saturate(value)
  %7027 = call float @dx.op.unary.f32(i32 7, float %7024)  ; Saturate(value)
  %7028 = call float @dx.op.unary.f32(i32 7, float %7025)  ; Saturate(value)
  br label %7029

; <label>:7029                                    ; preds = %7006, %6991
  %7030 = phi float [ %7026, %7006 ], [ %7003, %6991 ]
  %7031 = phi float [ %7027, %7006 ], [ %7004, %6991 ]
  %7032 = phi float [ %7028, %7006 ], [ %7005, %6991 ]
  %7033 = call float @dx.op.binary.f32(i32 35, float %7031, float %7032)  ; FMax(a,b)
  %7034 = call float @dx.op.binary.f32(i32 35, float %7030, float %7033)  ; FMax(a,b)
  %7035 = fsub fast float 1.000000e+00, %7034
  %7036 = fmul fast float %6992, %6950
  %7037 = fmul fast float %6993, %6950
  %7038 = fmul fast float %6994, %6950
  %7039 = fsub fast float 1.000000e+00, %6917
  %7040 = bitcast float %7039 to i32
  %7041 = sitofp i32 %7040 to float
  %7042 = fmul fast float %7041, 5.000000e+00
  %7043 = fadd fast float %7042, 0xC1EFBF8940000000
  %7044 = fptosi float %7043 to i32
  %7045 = bitcast i32 %7044 to float
  %7046 = fmul fast float %7045, %3843
  %7047 = fmul fast float %7035, %7046
  %7048 = fmul fast float %7047, %5408
  %7049 = fmul fast float %7047, %5409
  %7050 = fmul fast float %7047, %5410
  %7051 = fadd fast float %7048, %7036
  %7052 = fadd fast float %7049, %7037
  %7053 = fadd fast float %7050, %7038
  %7054 = fmul fast float %6922, %6905
  %7055 = fmul fast float %7054, %7035
  %7056 = fmul fast float %6922, %6906
  %7057 = fmul fast float %7056, %7035
  %7058 = fmul fast float %6922, %6907
  %7059 = fmul fast float %7058, %7035
  %7060 = fmul fast float %7054, %7051
  %7061 = fmul fast float %7056, %7052
  %7062 = fmul fast float %7058, %7053
  %7063 = fadd fast float %7055, %5392
  %7064 = fmul fast float %7063, %3839
  %7065 = fadd fast float %7057, %5393
  %7066 = fmul fast float %7065, %3839
  %7067 = fadd fast float %7059, %5394
  %7068 = fmul fast float %7067, %3839
  %7069 = fadd fast float %7060, %5435
  %7070 = fmul fast float %7069, %3839
  %7071 = fadd fast float %7061, %5438
  %7072 = fmul fast float %7071, %3839
  %7073 = fadd fast float %7062, %5441
  %7074 = fmul fast float %7073, %3839
  br label %7075

; <label>:7075                                    ; preds = %7029, %6899, %5388
  %7076 = phi float [ %5436, %5388 ], [ %5436, %6899 ], [ %7070, %7029 ]
  %7077 = phi float [ %5439, %5388 ], [ %5439, %6899 ], [ %7072, %7029 ]
  %7078 = phi float [ %5442, %5388 ], [ %5442, %6899 ], [ %7074, %7029 ]
  %7079 = phi float [ %5431, %5388 ], [ %5431, %6899 ], [ %7064, %7029 ]
  %7080 = phi float [ %5432, %5388 ], [ %5432, %6899 ], [ %7066, %7029 ]
  %7081 = phi float [ %5433, %5388 ], [ %5433, %6899 ], [ %7068, %7029 ]
  %7082 = fmul fast float %3839, %3839
  %7083 = fsub fast float 1.000000e+00, %7082
  %7084 = call float @dx.op.dot3.f32(i32 55, float %7083, float %7083, float %7083, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7085 = fsub fast float 1.000000e+00, %7084
  %7086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7087 = extractvalue %dx.types.CBufRet.f32 %7086, 0
  %7088 = fmul fast float %7087, %5414
  %7089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7090 = extractvalue %dx.types.CBufRet.f32 %7089, 3
  %7091 = fsub fast float 1.000000e+00, %3846
  %7092 = call float @dx.op.unary.f32(i32 7, float %7091)  ; Saturate(value)
  %7093 = fadd fast float %7081, %3845
  %7094 = fmul fast float %7093, %3846
  %7095 = fmul fast float %7092, %7090
  %7096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7097 = extractvalue %dx.types.CBufRet.f32 %7096, 3
  %7098 = fmul fast float %7079, %4745
  %7099 = fmul fast float %7080, %4746
  %7100 = fmul fast float %7081, %4747
  %7101 = fcmp fast ogt float %89, %211
  %7102 = and i1 %7101, %3885
  %7103 = or i1 %3964, %7102
  %7104 = icmp eq i32 %3884, 2
  %7105 = fcmp fast ole float %89, %211
  %7106 = and i1 %7105, %7104
  %7107 = or i1 %7106, %7103
  br i1 %7102, label %7108, label %7365

; <label>:7108                                    ; preds = %7075
  %7109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7110 = extractvalue %dx.types.CBufRet.f32 %7109, 2
  %7111 = extractvalue %dx.types.CBufRet.f32 %7109, 3
  %7112 = fmul fast float %7110, %102
  %7113 = fmul fast float %7111, %103
  %7114 = call float @dx.op.unary.f32(i32 7, float %7112)  ; Saturate(value)
  %7115 = call float @dx.op.unary.f32(i32 7, float %7113)  ; Saturate(value)
  %7116 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %7114, float %7115, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7117 = extractvalue %dx.types.ResRet.f32 %7116, 0
  %7118 = extractvalue %dx.types.ResRet.f32 %7116, 1
  %7119 = extractvalue %dx.types.ResRet.f32 %7116, 2
  %7120 = extractvalue %dx.types.ResRet.f32 %7116, 3
  %7121 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %7114, float %7115, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7122 = extractvalue %dx.types.ResRet.f32 %7121, 0
  %7123 = extractvalue %dx.types.ResRet.f32 %7121, 1
  %7124 = extractvalue %dx.types.ResRet.f32 %7121, 2
  %7125 = extractvalue %dx.types.ResRet.f32 %7121, 3
  %7126 = call float @dx.op.binary.f32(i32 35, float %7118, float %7119)  ; FMax(a,b)
  %7127 = call float @dx.op.binary.f32(i32 35, float %7117, float %7126)  ; FMax(a,b)
  %7128 = call float @dx.op.binary.f32(i32 35, float %7127, float %7120)  ; FMax(a,b)
  %7129 = call float @dx.op.binary.f32(i32 36, float %7123, float %7124)  ; FMin(a,b)
  %7130 = call float @dx.op.binary.f32(i32 36, float %7122, float %7129)  ; FMin(a,b)
  %7131 = call float @dx.op.binary.f32(i32 36, float %7130, float %7125)  ; FMin(a,b)
  %7132 = fmul fast float %7128, 2.550000e+02
  %7133 = fadd fast float %7132, 0x3F70101020000000
  %7134 = fptoui float %7133 to i32
  %7135 = fmul fast float %7131, 2.550000e+02
  %7136 = fadd fast float %7135, 0x3F70101020000000
  %7137 = fptoui float %7136 to i32
  %7138 = icmp ult i32 %7134, %7137
  br i1 %7138, label %7139, label %7307

; <label>:7139                                    ; preds = %7108
  %7140 = fcmp fast ogt float %88, 9.843750e-01
  %7141 = fadd fast float %89, -4.000000e+00
  %7142 = select i1 %7140, float -4.000000e+00, float %7141
  %7143 = call float @dx.op.binary.f32(i32 35, float %7142, float 0.000000e+00)  ; FMax(a,b)
  %7144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7145 = extractvalue %dx.types.CBufRet.f32 %7144, 0
  %7146 = fadd fast float %7145, %7143
  %7147 = extractvalue %dx.types.CBufRet.f32 %7144, 2
  %7148 = fmul fast float %7146, %7147
  %7149 = call float @dx.op.unary.f32(i32 23, float %7148)  ; Log(value)
  %7150 = extractvalue %dx.types.CBufRet.f32 %7144, 3
  %7151 = fmul fast float %7150, %7149
  %7152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7153 = extractvalue %dx.types.CBufRet.f32 %7152, 2
  %7154 = fmul fast float %7151, %7153
  %7155 = call float @dx.op.unary.f32(i32 7, float %7154)  ; Saturate(value)
  %7156 = uitofp i32 %7134 to float
  %7157 = uitofp i32 %7137 to float
  %7158 = fadd fast float %7156, 5.000000e-01
  %7159 = fadd fast float %7157, 5.000000e-01
  %7160 = fmul fast float %7153, %7158
  %7161 = fmul fast float %7153, %7159
  %7162 = fadd fast float %7160, 0x3F0FFB4800000000
  %7163 = fadd fast float %7161, 0xBF0FFB4800000000
  %7164 = call float @dx.op.binary.f32(i32 35, float %7155, float %7162)  ; FMax(a,b)
  %7165 = call float @dx.op.binary.f32(i32 36, float %7164, float %7163)  ; FMin(a,b)
  %7166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7167 = extractvalue %dx.types.CBufRet.f32 %7166, 1
  %7168 = extractvalue %dx.types.CBufRet.f32 %7166, 2
  %7169 = extractvalue %dx.types.CBufRet.f32 %7166, 0
  %7170 = fmul fast float %7167, %7165
  %7171 = fadd fast float %7169, %7170
  %7172 = fadd fast float %7169, %7168
  %7173 = fsub fast float %7167, %7168
  %7174 = fadd fast float %7173, %7169
  %7175 = call float @dx.op.binary.f32(i32 35, float %7171, float %7172)  ; FMax(a,b)
  %7176 = call float @dx.op.binary.f32(i32 36, float %7175, float %7174)  ; FMin(a,b)
  %7177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %7114, float %7115, float %7176, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7178 = extractvalue %dx.types.ResRet.f32 %7177, 0
  %7179 = extractvalue %dx.types.ResRet.f32 %7177, 1
  %7180 = extractvalue %dx.types.ResRet.f32 %7177, 2
  %7181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7182 = extractvalue %dx.types.CBufRet.i32 %7181, 0
  %7183 = extractvalue %dx.types.CBufRet.i32 %7181, 1
  %7184 = uitofp i32 %7182 to float
  %7185 = uitofp i32 %7183 to float
  %7186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7187 = extractvalue %dx.types.CBufRet.f32 %7186, 0
  %7188 = extractvalue %dx.types.CBufRet.f32 %7186, 1
  %7189 = fmul fast float %7184, %7114
  %7190 = fmul fast float %7185, %7115
  %7191 = fadd fast float %7189, -5.000000e-01
  %7192 = fadd fast float %7190, -5.000000e-01
  %7193 = call float @dx.op.unary.f32(i32 22, float %7191)  ; Frc(value)
  %7194 = call float @dx.op.unary.f32(i32 22, float %7192)  ; Frc(value)
  %7195 = fmul fast float %7193, %7193
  %7196 = fmul fast float %7195, %7193
  %7197 = fsub fast float 3.000000e+00, %7193
  %7198 = fmul fast float %7195, %7197
  %7199 = fmul fast float %7193, 3.000000e+00
  %7200 = fmul fast float %7196, 3.000000e+00
  %7201 = fmul fast float %7195, 6.000000e+00
  %7202 = fsub fast float %7200, %7201
  %7203 = fadd fast float %7202, 4.000000e+00
  %7204 = fmul fast float %7203, 0x3FC5555560000000
  %7205 = fmul fast float %7196, -3.000000e+00
  %7206 = fadd fast float %7195, %7193
  %7207 = fmul fast float %7206, 3.000000e+00
  %7208 = fadd fast float %7205, 1.000000e+00
  %7209 = fadd fast float %7208, %7207
  %7210 = fmul fast float %7196, 0x3FC5555560000000
  %7211 = fmul fast float %7194, %7194
  %7212 = fmul fast float %7211, %7194
  %7213 = fsub fast float 3.000000e+00, %7194
  %7214 = fmul fast float %7211, %7213
  %7215 = fmul fast float %7194, 3.000000e+00
  %7216 = fmul fast float %7212, 3.000000e+00
  %7217 = fmul fast float %7211, 6.000000e+00
  %7218 = fsub fast float %7216, %7217
  %7219 = fadd fast float %7218, 4.000000e+00
  %7220 = fmul fast float %7219, 0x3FC5555560000000
  %7221 = fmul fast float %7212, -3.000000e+00
  %7222 = fadd fast float %7211, %7194
  %7223 = fmul fast float %7222, 3.000000e+00
  %7224 = fadd fast float %7221, 1.000000e+00
  %7225 = fadd fast float %7224, %7223
  %7226 = fmul fast float %7212, 0x3FC5555560000000
  %7227 = fadd fast float %7193, 1.000000e+00
  %7228 = fsub fast float 1.000000e+00, %7199
  %7229 = fadd fast float %7228, %7198
  %7230 = fadd fast float %7229, %7203
  %7231 = fmul fast float %7230, 0x3FC5555560000000
  %7232 = fdiv fast float %7204, %7231
  %7233 = fsub fast float %7227, %7232
  %7234 = fsub fast float 1.000000e+00, %7193
  %7235 = fadd fast float %7209, %7196
  %7236 = fmul fast float %7235, 0x3FC5555560000000
  %7237 = fdiv fast float %7210, %7236
  %7238 = fadd fast float %7234, %7237
  %7239 = fadd fast float %7194, 1.000000e+00
  %7240 = fsub fast float 1.000000e+00, %7215
  %7241 = fadd fast float %7240, %7214
  %7242 = fadd fast float %7241, %7219
  %7243 = fmul fast float %7242, 0x3FC5555560000000
  %7244 = fdiv fast float %7220, %7243
  %7245 = fsub fast float %7239, %7244
  %7246 = fsub fast float 1.000000e+00, %7194
  %7247 = fadd fast float %7225, %7212
  %7248 = fmul fast float %7247, 0x3FC5555560000000
  %7249 = fdiv fast float %7226, %7248
  %7250 = fadd fast float %7249, %7246
  %7251 = fmul fast float %7233, %7187
  %7252 = fsub fast float %7114, %7251
  %7253 = fmul fast float %7238, %7187
  %7254 = fadd fast float %7253, %7114
  %7255 = fmul fast float %7250, %7188
  %7256 = fadd fast float %7255, %7115
  %7257 = fmul fast float %7245, %7188
  %7258 = fsub fast float %7115, %7257
  %7259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %7252, float %7258, float %7176, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7260 = extractvalue %dx.types.ResRet.f32 %7259, 0
  %7261 = extractvalue %dx.types.ResRet.f32 %7259, 1
  %7262 = extractvalue %dx.types.ResRet.f32 %7259, 2
  %7263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %7254, float %7258, float %7176, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7264 = extractvalue %dx.types.ResRet.f32 %7263, 0
  %7265 = extractvalue %dx.types.ResRet.f32 %7263, 1
  %7266 = extractvalue %dx.types.ResRet.f32 %7263, 2
  %7267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %7252, float %7256, float %7176, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7268 = extractvalue %dx.types.ResRet.f32 %7267, 0
  %7269 = extractvalue %dx.types.ResRet.f32 %7267, 1
  %7270 = extractvalue %dx.types.ResRet.f32 %7267, 2
  %7271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %7254, float %7256, float %7176, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7272 = extractvalue %dx.types.ResRet.f32 %7271, 0
  %7273 = extractvalue %dx.types.ResRet.f32 %7271, 1
  %7274 = extractvalue %dx.types.ResRet.f32 %7271, 2
  %7275 = fsub fast float %7268, %7260
  %7276 = fsub fast float %7269, %7261
  %7277 = fsub fast float %7270, %7262
  %7278 = fmul fast float %7275, %7248
  %7279 = fmul fast float %7276, %7248
  %7280 = fmul fast float %7277, %7248
  %7281 = fadd fast float %7278, %7260
  %7282 = fadd fast float %7279, %7261
  %7283 = fadd fast float %7280, %7262
  %7284 = fsub fast float %7272, %7264
  %7285 = fsub fast float %7273, %7265
  %7286 = fsub fast float %7274, %7266
  %7287 = fmul fast float %7284, %7248
  %7288 = fmul fast float %7285, %7248
  %7289 = fmul fast float %7286, %7248
  %7290 = fsub fast float %7264, %7281
  %7291 = fadd fast float %7290, %7287
  %7292 = fsub fast float %7265, %7282
  %7293 = fadd fast float %7292, %7288
  %7294 = fsub fast float %7266, %7283
  %7295 = fadd fast float %7294, %7289
  %7296 = fmul fast float %7291, %7236
  %7297 = fmul fast float %7293, %7236
  %7298 = fmul fast float %7295, %7236
  %7299 = fadd fast float %7296, %7281
  %7300 = fadd fast float %7297, %7282
  %7301 = fadd fast float %7298, %7283
  %7302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7303 = extractvalue %dx.types.CBufRet.f32 %7302, 1
  %7304 = fmul fast float %7299, %7303
  %7305 = fmul fast float %7300, %7303
  %7306 = fmul fast float %7301, %7303
  br label %7307

; <label>:7307                                    ; preds = %7139, %7108
  %7308 = phi float [ %7178, %7139 ], [ 1.000000e+00, %7108 ]
  %7309 = phi float [ %7179, %7139 ], [ 1.000000e+00, %7108 ]
  %7310 = phi float [ %7180, %7139 ], [ 1.000000e+00, %7108 ]
  %7311 = phi float [ %7304, %7139 ], [ 0.000000e+00, %7108 ]
  %7312 = phi float [ %7305, %7139 ], [ 0.000000e+00, %7108 ]
  %7313 = phi float [ %7306, %7139 ], [ 0.000000e+00, %7108 ]
  %7314 = fmul fast float %7311, %7085
  %7315 = fmul fast float %7312, %7085
  %7316 = fmul fast float %7313, %7085
  %7317 = call float @dx.op.dot3.f32(i32 55, float %7308, float %7309, float %7310, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7318 = call float @dx.op.dot3.f32(i32 55, float %7314, float %7315, float %7316, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7319 = select i1 %250, float %7317, float %7308
  %7320 = select i1 %250, float %7317, float %7309
  %7321 = select i1 %250, float 1.000000e+00, float %7310
  %7322 = select i1 %250, float %7318, float %7314
  %7323 = select i1 %250, float 0.000000e+00, float %7315
  %7324 = select i1 %250, float 0.000000e+00, float %7316
  %7325 = fmul fast float %7319, %7098
  %7326 = fmul fast float %7320, %7099
  %7327 = fmul fast float %7321, %7100
  %7328 = fadd fast float %7325, %7322
  %7329 = fadd fast float %7326, %7323
  %7330 = fadd fast float %7324, %7327
  %7331 = fmul fast float %7319, %7076
  %7332 = fmul fast float %7320, %7077
  %7333 = fmul fast float %7321, %7078
  %7334 = fmul fast float %138, %7110
  %7335 = fmul fast float %140, %7111
  %7336 = fsub fast float 1.000000e+00, %7334
  %7337 = fsub fast float 1.000000e+00, %7335
  %7338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7339 = extractvalue %dx.types.CBufRet.f32 %7338, 0
  %7340 = extractvalue %dx.types.CBufRet.f32 %7338, 1
  %7341 = extractvalue %dx.types.CBufRet.f32 %7338, 2
  %7342 = fmul fast float %7336, %7339
  %7343 = fmul fast float %7336, %7340
  %7344 = fmul fast float %7336, %7341
  %7345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7346 = extractvalue %dx.types.CBufRet.f32 %7345, 0
  %7347 = extractvalue %dx.types.CBufRet.f32 %7345, 1
  %7348 = extractvalue %dx.types.CBufRet.f32 %7345, 2
  %7349 = fmul fast float %7337, %7346
  %7350 = fmul fast float %7337, %7347
  %7351 = fmul fast float %7337, %7348
  %7352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7353 = extractvalue %dx.types.CBufRet.f32 %7352, 0
  %7354 = extractvalue %dx.types.CBufRet.f32 %7352, 1
  %7355 = extractvalue %dx.types.CBufRet.f32 %7352, 2
  %7356 = fadd fast float %7349, %7353
  %7357 = fadd fast float %7356, %7342
  %7358 = fadd fast float %7350, %7354
  %7359 = fadd fast float %7358, %7343
  %7360 = fadd fast float %7351, %7355
  %7361 = fadd fast float %7360, %7344
  %7362 = fmul fast float %7357, %211
  %7363 = fmul fast float %7359, %211
  %7364 = fmul fast float %7361, %211
  br label %7365

; <label>:7365                                    ; preds = %7307, %7075
  %7366 = phi float [ %7362, %7307 ], [ %189, %7075 ]
  %7367 = phi float [ %7363, %7307 ], [ %190, %7075 ]
  %7368 = phi float [ %7364, %7307 ], [ %191, %7075 ]
  %7369 = phi float [ %211, %7307 ], [ %89, %7075 ]
  %7370 = phi float [ %7328, %7307 ], [ %7098, %7075 ]
  %7371 = phi float [ %7329, %7307 ], [ %7099, %7075 ]
  %7372 = phi float [ %7330, %7307 ], [ %7100, %7075 ]
  %7373 = phi float [ %7331, %7307 ], [ %7076, %7075 ]
  %7374 = phi float [ %7332, %7307 ], [ %7077, %7075 ]
  %7375 = phi float [ %7333, %7307 ], [ %7078, %7075 ]
  %7376 = phi float [ %7308, %7307 ], [ 1.000000e+00, %7075 ]
  br i1 %7107, label %8531, label %7377

; <label>:7377                                    ; preds = %7365
  %7378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7379 = extractvalue %dx.types.CBufRet.f32 %7378, 0
  %7380 = extractvalue %dx.types.CBufRet.f32 %7378, 1
  %7381 = extractvalue %dx.types.CBufRet.f32 %7378, 2
  %7382 = extractvalue %dx.types.CBufRet.f32 %7378, 3
  %7383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7384 = extractvalue %dx.types.CBufRet.f32 %7383, 0
  %7385 = extractvalue %dx.types.CBufRet.f32 %7383, 1
  %7386 = extractvalue %dx.types.CBufRet.f32 %7383, 2
  %7387 = extractvalue %dx.types.CBufRet.f32 %7383, 3
  %7388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7389 = extractvalue %dx.types.CBufRet.f32 %7388, 0
  %7390 = extractvalue %dx.types.CBufRet.f32 %7388, 1
  %7391 = extractvalue %dx.types.CBufRet.f32 %7388, 2
  %7392 = extractvalue %dx.types.CBufRet.f32 %7388, 3
  %7393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7394 = extractvalue %dx.types.CBufRet.f32 %7393, 0
  %7395 = extractvalue %dx.types.CBufRet.f32 %7393, 1
  %7396 = extractvalue %dx.types.CBufRet.f32 %7393, 2
  %7397 = extractvalue %dx.types.CBufRet.f32 %7393, 3
  %7398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7399 = extractvalue %dx.types.CBufRet.f32 %7398, 3
  %7400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7401 = extractvalue %dx.types.CBufRet.f32 %7400, 3
  %7402 = extractvalue %dx.types.CBufRet.f32 %7400, 0
  %7403 = extractvalue %dx.types.CBufRet.f32 %7400, 1
  %7404 = extractvalue %dx.types.CBufRet.f32 %7400, 2
  %7405 = fcmp fast olt float %7404, -5.000000e-01
  %7406 = call float @dx.op.dot3.f32(i32 55, float %7366, float %7367, float %7368, float %7366, float %7367, float %7368)  ; Dot3(ax,ay,az,bx,by,bz)
  %7407 = call float @dx.op.unary.f32(i32 25, float %7406)  ; Rsqrt(value)
  %7408 = fmul fast float %7407, %7406
  %7409 = fmul fast float %7407, %7366
  %7410 = fmul fast float %7407, %7367
  %7411 = fmul fast float %7407, %7368
  %7412 = fadd fast float %7408, %7382
  %7413 = call float @dx.op.dot3.f32(i32 55, float %7409, float %7410, float %7411, float %7379, float %7380, float %7381)  ; Dot3(ax,ay,az,bx,by,bz)
  %7414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7415 = extractvalue %dx.types.CBufRet.i32 %7414, 1
  %7416 = and i32 %7415, 1
  %7417 = icmp ne i32 %7416, 0
  %7418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7419 = extractvalue %dx.types.CBufRet.f32 %7418, 2
  %7420 = fcmp fast ogt float %7419, 0.000000e+00
  %7421 = and i1 %7417, %7420
  br i1 %7421, label %7422, label %7828, !dx.controlflow.hints !120

; <label>:7422                                    ; preds = %7377
  %7423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7424 = extractvalue %dx.types.CBufRet.f32 %7423, 3
  %7425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7426 = extractvalue %dx.types.CBufRet.f32 %7425, 2
  %7427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7428 = extractvalue %dx.types.CBufRet.f32 %7427, 2
  %7429 = fsub fast float %7426, %7428
  %7430 = and i32 %7415, 2
  %7431 = extractvalue %dx.types.CBufRet.i32 %7414, 0
  %7432 = call i32 @dx.op.binary.i32(i32 40, i32 %7431, i32 3)  ; UMin(a,b)
  %7433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7434 = extractvalue %dx.types.CBufRet.f32 %7433, 0
  %7435 = extractvalue %dx.types.CBufRet.f32 %7433, 1
  %7436 = extractvalue %dx.types.CBufRet.f32 %7427, 0
  %7437 = extractvalue %dx.types.CBufRet.f32 %7427, 1
  %7438 = fsub fast float %7434, %7436
  %7439 = fsub fast float %7435, %7437
  %7440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7441 = extractvalue %dx.types.CBufRet.f32 %7440, 0
  %7442 = fcmp fast ogt float %7441, 0.000000e+00
  %7443 = fsub fast float -0.000000e+00, %7438
  %7444 = fsub fast float -0.000000e+00, %7439
  %7445 = call float @dx.op.dot2.f32(i32 54, float %7409, float %7410, float %7409, float %7410)  ; Dot2(ax,ay,bx,by)
  %7446 = call float @dx.op.dot2.f32(i32 54, float %7409, float %7410, float %7443, float %7444)  ; Dot2(ax,ay,bx,by)
  %7447 = fmul fast float %7446, 2.000000e+00
  %7448 = call float @dx.op.dot2.f32(i32 54, float %7443, float %7444, float %7443, float %7444)  ; Dot2(ax,ay,bx,by)
  %7449 = fmul fast float %7441, %7441
  %7450 = fsub fast float %7448, %7449
  %7451 = fmul fast float %7447, %7447
  %7452 = fmul fast float %7445, 4.000000e+00
  %7453 = fmul fast float %7452, %7450
  %7454 = fsub fast float %7451, %7453
  %7455 = fcmp fast ogt float %7454, 0.000000e+00
  br i1 %7455, label %7456, label %7471

; <label>:7456                                    ; preds = %7422
  %7457 = fcmp fast ogt float %7447, 0.000000e+00
  %7458 = call float @dx.op.unary.f32(i32 24, float %7454)  ; Sqrt(value)
  %7459 = fsub fast float -0.000000e+00, %7458
  %7460 = select i1 %7457, float %7458, float %7459
  %7461 = fadd fast float %7460, %7447
  %7462 = fmul float %7461, -5.000000e-01
  %7463 = fdiv fast float %7462, %7445
  %7464 = call float @dx.op.binary.f32(i32 35, float %7463, float 0.000000e+00)  ; FMax(a,b)
  %7465 = call float @dx.op.binary.f32(i32 36, float %7408, float %7464)  ; FMin(a,b)
  %7466 = fdiv fast float %7450, %7462
  %7467 = call float @dx.op.binary.f32(i32 35, float %7466, float 0.000000e+00)  ; FMax(a,b)
  %7468 = call float @dx.op.binary.f32(i32 36, float %7408, float %7467)  ; FMin(a,b)
  %7469 = call float @dx.op.binary.f32(i32 36, float %7465, float %7468)  ; FMin(a,b)
  %7470 = call float @dx.op.binary.f32(i32 35, float %7465, float %7468)  ; FMax(a,b)
  br label %7471

; <label>:7471                                    ; preds = %7456, %7422
  %7472 = phi float [ %7470, %7456 ], [ -1.000000e+00, %7422 ]
  %7473 = phi float [ %7469, %7456 ], [ -1.000000e+00, %7422 ]
  %7474 = phi i1 [ true, %7456 ], [ false, %7422 ]
  %7475 = and i1 %7442, %7474
  br i1 %7475, label %7476, label %7478

; <label>:7476                                    ; preds = %7471
  %7477 = fcmp fast oeq float %7473, %7472
  br i1 %7477, label %7781, label %7479

; <label>:7478                                    ; preds = %7471
  br i1 %7442, label %7781, label %7479

; <label>:7479                                    ; preds = %7478, %7476
  %7480 = phi float [ %7408, %7478 ], [ %7472, %7476 ]
  %7481 = phi float [ 0.000000e+00, %7478 ], [ %7473, %7476 ]
  %7482 = icmp ne i32 %7430, 0
  %7483 = fmul fast float %7480, %7411
  %7484 = fadd fast float %7483, %7424
  %7485 = fmul fast float %7484, %7480
  %7486 = select i1 %7482, float 0.000000e+00, float %7485
  %7487 = fcmp fast oeq float %7411, 0.000000e+00
  %7488 = fdiv fast float %7429, %7411
  %7489 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7488)  ; FMax(a,b)
  %7490 = select i1 %7487, float %7480, float %7489
  %7491 = call float @dx.op.binary.f32(i32 36, float %7480, float %7490)  ; FMin(a,b)
  %7492 = fcmp fast ogt float %7411, 0.000000e+00
  %7493 = fcmp fast olt float %7429, 0.000000e+00
  br i1 %7492, label %7494, label %7551

; <label>:7494                                    ; preds = %7479
  %7495 = icmp eq i32 %7430, 0
  br i1 %7493, label %7496, label %7540

; <label>:7496                                    ; preds = %7494
  %7497 = select i1 %7495, float %7480, float 0.000000e+00
  %7498 = fsub fast float -0.000000e+00, %7497
  %7499 = call float @dx.op.unary.f32(i32 6, float %7498)  ; FAbs(value)
  %7500 = fmul fast float %7497, %7411
  %7501 = fadd fast float %7500, %7424
  %7502 = fmul fast float %7499, %7501
  %7503 = fsub fast float %7486, %7502
  %7504 = fsub fast float %7480, %7499
  %7505 = select i1 %7495, float %7504, float 0.000000e+00
  %7506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7507 = extractvalue %dx.types.CBufRet.f32 %7506, 0
  %7508 = extractvalue %dx.types.CBufRet.f32 %7506, 1
  %7509 = extractvalue %dx.types.CBufRet.f32 %7506, 2
  %7510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7511 = extractvalue %dx.types.CBufRet.f32 %7510, 0
  %7512 = extractvalue %dx.types.CBufRet.f32 %7510, 1
  %7513 = extractvalue %dx.types.CBufRet.f32 %7510, 2
  %7514 = extractvalue %dx.types.CBufRet.f32 %7510, 3
  %7515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7516 = extractvalue %dx.types.CBufRet.f32 %7515, 3
  %7517 = call float @dx.op.binary.f32(i32 36, float %7503, float %7516)  ; FMin(a,b)
  %7518 = fmul fast float %7514, %7505
  %7519 = call float @dx.op.unary.f32(i32 7, float %7518)  ; Saturate(value)
  %7520 = fsub fast float %7511, %7507
  %7521 = fsub fast float %7512, %7508
  %7522 = fsub fast float %7513, %7509
  %7523 = fmul fast float %7519, %7520
  %7524 = fmul fast float %7519, %7521
  %7525 = fmul fast float %7519, %7522
  %7526 = fadd fast float %7523, %7507
  %7527 = fadd fast float %7524, %7508
  %7528 = fadd fast float %7525, %7509
  %7529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7530 = extractvalue %dx.types.CBufRet.f32 %7529, 0
  %7531 = extractvalue %dx.types.CBufRet.f32 %7529, 1
  %7532 = fadd fast float %7531, %7530
  %7533 = call float @dx.op.unary.f32(i32 7, float %7532)  ; Saturate(value)
  %7534 = extractvalue %dx.types.CBufRet.f32 %7529, 2
  %7535 = extractvalue %dx.types.CBufRet.f32 %7529, 3
  %7536 = fadd fast float %7535, %7534
  %7537 = call float @dx.op.unary.f32(i32 7, float %7536)  ; Saturate(value)
  %7538 = fmul fast float %7533, %7517
  %7539 = fmul fast float %7538, %7537
  br label %7781

; <label>:7540                                    ; preds = %7494
  br i1 %7495, label %7541, label %7562

; <label>:7541                                    ; preds = %7540
  %7542 = call float @dx.op.binary.f32(i32 36, float %7491, float %7481)  ; FMin(a,b)
  %7543 = fsub fast float %7491, %7542
  %7544 = fsub fast float %7543, %7480
  %7545 = call float @dx.op.unary.f32(i32 6, float %7544)  ; FAbs(value)
  %7546 = fadd fast float %7543, %7480
  %7547 = fmul fast float %7546, %7411
  %7548 = fadd fast float %7547, %7424
  %7549 = fmul fast float %7548, %7545
  %7550 = fsub fast float %7486, %7549
  br label %7562

; <label>:7551                                    ; preds = %7479
  br i1 %7493, label %7552, label %7562

; <label>:7552                                    ; preds = %7551
  %7553 = call float @dx.op.binary.f32(i32 35, float %7481, float %7491)  ; FMax(a,b)
  %7554 = icmp eq i32 %7430, 0
  %7555 = select i1 %7554, float %7491, float 0.000000e+00
  %7556 = fsub fast float -0.000000e+00, %7555
  %7557 = call float @dx.op.unary.f32(i32 6, float %7556)  ; FAbs(value)
  %7558 = fmul fast float %7555, %7411
  %7559 = fadd fast float %7558, %7424
  %7560 = fmul fast float %7557, %7559
  %7561 = fsub fast float %7486, %7560
  br label %7562

; <label>:7562                                    ; preds = %7552, %7551, %7541, %7540
  %7563 = phi float [ %7481, %7540 ], [ %7481, %7541 ], [ %7553, %7552 ], [ %7481, %7551 ]
  %7564 = phi float [ 0.000000e+00, %7540 ], [ %7545, %7541 ], [ %7557, %7552 ], [ 0.000000e+00, %7551 ]
  %7565 = phi float [ %7486, %7540 ], [ %7550, %7541 ], [ %7561, %7552 ], [ %7486, %7551 ]
  %7566 = phi float [ %7491, %7540 ], [ %7491, %7541 ], [ %7480, %7552 ], [ %7480, %7551 ]
  %7567 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %7567, align 4, !tbaa !109, !noalias !121
  %7568 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %7568, align 4, !tbaa !109, !noalias !121
  %7569 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %7569, align 4, !tbaa !109, !noalias !121
  %7570 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %7570, align 4, !tbaa !109, !noalias !121
  %7571 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %7571, align 4, !tbaa !109, !noalias !121
  %7572 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %7572, align 4, !tbaa !109, !noalias !121
  %7573 = icmp sgt i32 %7432, 0
  br i1 %7573, label %7574, label %7635

; <label>:7574                                    ; preds = %7562
  br label %7575

; <label>:7575                                    ; preds = %7624, %7574
  %7576 = phi i32 [ %7625, %7624 ], [ 0, %7574 ]
  %7577 = phi i32 [ %7626, %7624 ], [ 0, %7574 ]
  %7578 = add nuw i32 %7577, 171
  %7579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %7578)  ; CBufferLoadLegacy(handle,regIndex)
  %7580 = extractvalue %dx.types.CBufRet.f32 %7579, 0
  %7581 = extractvalue %dx.types.CBufRet.f32 %7579, 1
  %7582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7583 = extractvalue %dx.types.CBufRet.f32 %7582, 0
  %7584 = extractvalue %dx.types.CBufRet.f32 %7582, 1
  %7585 = fsub fast float %7580, %7583
  %7586 = fsub fast float %7581, %7584
  %7587 = extractvalue %dx.types.CBufRet.f32 %7579, 2
  %7588 = fsub fast float -0.000000e+00, %7585
  %7589 = fsub fast float -0.000000e+00, %7586
  %7590 = call float @dx.op.dot2.f32(i32 54, float %7409, float %7410, float %7588, float %7589)  ; Dot2(ax,ay,bx,by)
  %7591 = fmul fast float %7590, 2.000000e+00
  %7592 = call float @dx.op.dot2.f32(i32 54, float %7588, float %7589, float %7588, float %7589)  ; Dot2(ax,ay,bx,by)
  %7593 = fmul fast float %7587, %7587
  %7594 = fsub fast float %7592, %7593
  %7595 = fmul fast float %7591, %7591
  %7596 = fmul fast float %7452, %7594
  %7597 = fsub fast float %7595, %7596
  %7598 = fcmp fast ogt float %7597, 0.000000e+00
  br i1 %7598, label %7599, label %7614

; <label>:7599                                    ; preds = %7575
  %7600 = fcmp fast ogt float %7591, 0.000000e+00
  %7601 = call float @dx.op.unary.f32(i32 24, float %7597)  ; Sqrt(value)
  %7602 = fsub fast float -0.000000e+00, %7601
  %7603 = select i1 %7600, float %7601, float %7602
  %7604 = fadd fast float %7603, %7591
  %7605 = fmul float %7604, -5.000000e-01
  %7606 = fdiv fast float %7605, %7445
  %7607 = call float @dx.op.binary.f32(i32 35, float %7606, float 0.000000e+00)  ; FMax(a,b)
  %7608 = call float @dx.op.binary.f32(i32 36, float %7480, float %7607)  ; FMin(a,b)
  %7609 = fdiv fast float %7594, %7605
  %7610 = call float @dx.op.binary.f32(i32 35, float %7609, float 0.000000e+00)  ; FMax(a,b)
  %7611 = call float @dx.op.binary.f32(i32 36, float %7480, float %7610)  ; FMin(a,b)
  %7612 = call float @dx.op.binary.f32(i32 36, float %7608, float %7611)  ; FMin(a,b)
  %7613 = call float @dx.op.binary.f32(i32 35, float %7608, float %7611)  ; FMax(a,b)
  br label %7614

; <label>:7614                                    ; preds = %7599, %7575
  %7615 = phi float [ %7613, %7599 ], [ -1.000000e+00, %7575 ]
  %7616 = phi float [ %7612, %7599 ], [ -1.000000e+00, %7575 ]
  %7617 = phi i1 [ true, %7599 ], [ false, %7575 ]
  br i1 %7617, label %7618, label %7624

; <label>:7618                                    ; preds = %7614
  %7619 = call float @dx.op.binary.f32(i32 35, float %7563, float %7616)  ; FMax(a,b)
  %7620 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7577
  store float %7619, float* %7620, align 4, !tbaa !109, !noalias !121
  %7621 = call float @dx.op.binary.f32(i32 35, float %7563, float %7615)  ; FMax(a,b)
  %7622 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %7577
  store float %7621, float* %7622, align 4, !tbaa !109, !noalias !121
  %7623 = add nsw i32 %7576, 1
  br label %7624

; <label>:7624                                    ; preds = %7618, %7614
  %7625 = phi i32 [ %7623, %7618 ], [ %7576, %7614 ]
  %7626 = add nuw nsw i32 %7577, 1
  %7627 = icmp eq i32 %7626, %7432
  br i1 %7627, label %7628, label %7575

; <label>:7628                                    ; preds = %7624
  %7629 = load float, float* %7569, align 4, !tbaa !109, !alias.scope !137, !noalias !140
  %7630 = load float, float* %7568, align 4, !tbaa !109, !alias.scope !143, !noalias !144
  %7631 = load float, float* %7567, align 4, !tbaa !109, !alias.scope !145, !noalias !146
  %7632 = load float, float* %7572, align 4, !tbaa !109, !alias.scope !147, !noalias !150
  %7633 = load float, float* %7571, align 4, !tbaa !109, !alias.scope !153, !noalias !154
  %7634 = load float, float* %7570, align 4, !tbaa !109, !alias.scope !155, !noalias !156
  br label %7635

; <label>:7635                                    ; preds = %7628, %7562
  %7636 = phi float [ -1.000000e+00, %7562 ], [ %7634, %7628 ]
  %7637 = phi float [ -1.000000e+00, %7562 ], [ %7633, %7628 ]
  %7638 = phi float [ -1.000000e+00, %7562 ], [ %7632, %7628 ]
  %7639 = phi float [ -1.000000e+00, %7562 ], [ %7631, %7628 ]
  %7640 = phi float [ -1.000000e+00, %7562 ], [ %7630, %7628 ]
  %7641 = phi float [ -1.000000e+00, %7562 ], [ %7629, %7628 ]
  %7642 = phi i32 [ 0, %7562 ], [ %7625, %7628 ]
  %7643 = call float @dx.op.binary.f32(i32 36, float %7640, float %7641)  ; FMin(a,b)
  %7644 = call float @dx.op.binary.f32(i32 36, float %7639, float %7643)  ; FMin(a,b)
  %7645 = call float @dx.op.binary.f32(i32 35, float %7639, float %7640)  ; FMax(a,b)
  %7646 = call float @dx.op.binary.f32(i32 36, float %7645, float %7641)  ; FMin(a,b)
  %7647 = call float @dx.op.binary.f32(i32 36, float %7639, float %7640)  ; FMin(a,b)
  %7648 = call float @dx.op.binary.f32(i32 35, float %7647, float %7646)  ; FMax(a,b)
  %7649 = call float @dx.op.binary.f32(i32 35, float %7640, float %7641)  ; FMax(a,b)
  %7650 = call float @dx.op.binary.f32(i32 35, float %7639, float %7649)  ; FMax(a,b)
  store float %7644, float* %7567, align 4, !tbaa !109, !alias.scope !145, !noalias !146
  store float %7648, float* %7568, align 4, !tbaa !109, !alias.scope !143, !noalias !144
  store float %7650, float* %7569, align 4, !tbaa !109, !alias.scope !137, !noalias !140
  %7651 = call float @dx.op.binary.f32(i32 36, float %7637, float %7638)  ; FMin(a,b)
  %7652 = call float @dx.op.binary.f32(i32 36, float %7636, float %7651)  ; FMin(a,b)
  %7653 = call float @dx.op.binary.f32(i32 35, float %7636, float %7637)  ; FMax(a,b)
  %7654 = call float @dx.op.binary.f32(i32 36, float %7653, float %7638)  ; FMin(a,b)
  %7655 = call float @dx.op.binary.f32(i32 36, float %7636, float %7637)  ; FMin(a,b)
  %7656 = call float @dx.op.binary.f32(i32 35, float %7655, float %7654)  ; FMax(a,b)
  %7657 = call float @dx.op.binary.f32(i32 35, float %7637, float %7638)  ; FMax(a,b)
  %7658 = call float @dx.op.binary.f32(i32 35, float %7636, float %7657)  ; FMax(a,b)
  store float %7652, float* %7570, align 4, !tbaa !109, !alias.scope !155, !noalias !156
  store float %7656, float* %7571, align 4, !tbaa !109, !alias.scope !153, !noalias !154
  store float %7658, float* %7572, align 4, !tbaa !109, !alias.scope !147, !noalias !150
  %7659 = sub nsw i32 3, %7642
  %7660 = icmp sgt i32 %7659, 2
  br i1 %7660, label %7661, label %7699

; <label>:7661                                    ; preds = %7635
  %7662 = icmp eq i32 %7430, 0
  %7663 = fsub fast float %7480, %7564
  %7664 = select i1 %7662, float %7663, float %7564
  %7665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7666 = extractvalue %dx.types.CBufRet.f32 %7665, 0
  %7667 = extractvalue %dx.types.CBufRet.f32 %7665, 1
  %7668 = extractvalue %dx.types.CBufRet.f32 %7665, 2
  %7669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7670 = extractvalue %dx.types.CBufRet.f32 %7669, 0
  %7671 = extractvalue %dx.types.CBufRet.f32 %7669, 1
  %7672 = extractvalue %dx.types.CBufRet.f32 %7669, 2
  %7673 = extractvalue %dx.types.CBufRet.f32 %7669, 3
  %7674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7675 = extractvalue %dx.types.CBufRet.f32 %7674, 3
  %7676 = call float @dx.op.binary.f32(i32 36, float %7565, float %7675)  ; FMin(a,b)
  %7677 = fmul fast float %7673, %7664
  %7678 = call float @dx.op.unary.f32(i32 7, float %7677)  ; Saturate(value)
  %7679 = fsub fast float %7670, %7666
  %7680 = fsub fast float %7671, %7667
  %7681 = fsub fast float %7672, %7668
  %7682 = fmul fast float %7678, %7679
  %7683 = fmul fast float %7678, %7680
  %7684 = fmul fast float %7678, %7681
  %7685 = fadd fast float %7682, %7666
  %7686 = fadd fast float %7683, %7667
  %7687 = fadd fast float %7684, %7668
  %7688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7689 = extractvalue %dx.types.CBufRet.f32 %7688, 0
  %7690 = extractvalue %dx.types.CBufRet.f32 %7688, 1
  %7691 = fadd fast float %7690, %7689
  %7692 = call float @dx.op.unary.f32(i32 7, float %7691)  ; Saturate(value)
  %7693 = extractvalue %dx.types.CBufRet.f32 %7688, 2
  %7694 = extractvalue %dx.types.CBufRet.f32 %7688, 3
  %7695 = fadd fast float %7694, %7693
  %7696 = call float @dx.op.unary.f32(i32 7, float %7695)  ; Saturate(value)
  %7697 = fmul fast float %7692, %7676
  %7698 = fmul fast float %7697, %7696
  br label %7781

; <label>:7699                                    ; preds = %7635
  %7700 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7659
  %7701 = load float, float* %7700, align 4, !tbaa !109, !noalias !121
  %7702 = fcmp fast olt float %7701, %7566
  %7703 = icmp sgt i32 %7642, 0
  %7704 = and i1 %7703, %7702
  br i1 %7704, label %7705, label %7742

; <label>:7705                                    ; preds = %7699
  br label %7706

; <label>:7706                                    ; preds = %7735, %7705
  %7707 = phi float [ %7736, %7735 ], [ %7564, %7705 ]
  %7708 = phi float [ %7737, %7735 ], [ %7565, %7705 ]
  %7709 = phi float [ %7717, %7735 ], [ %7701, %7705 ]
  %7710 = phi i32 [ %7714, %7735 ], [ %7659, %7705 ]
  %7711 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %7710
  %7712 = load float, float* %7711, align 4, !tbaa !109, !noalias !121
  %7713 = icmp slt i32 %7710, 2
  %7714 = add nsw i32 %7710, 1
  %7715 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7714
  %7716 = load float, float* %7715, align 4, !tbaa !109, !noalias !121
  %7717 = select i1 %7713, float %7716, float %7480
  %7718 = call float @dx.op.binary.f32(i32 36, float %7717, float %7712)  ; FMin(a,b)
  %7719 = call float @dx.op.binary.f32(i32 36, float %7566, float %7718)  ; FMin(a,b)
  %7720 = icmp eq i32 %7430, 0
  %7721 = fadd fast float %7719, %7709
  %7722 = fmul fast float %7721, %7411
  %7723 = fadd fast float %7722, %7424
  br i1 %7720, label %7729, label %7724

; <label>:7724                                    ; preds = %7706
  %7725 = fsub fast float %7719, %7709
  %7726 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7725)  ; FMax(a,b)
  %7727 = fmul fast float %7726, %7723
  %7728 = fadd fast float %7727, %7708
  br label %7735

; <label>:7729                                    ; preds = %7706
  %7730 = fsub fast float %7709, %7719
  %7731 = call float @dx.op.unary.f32(i32 6, float %7730)  ; FAbs(value)
  %7732 = fadd fast float %7731, %7707
  %7733 = fmul fast float %7731, %7723
  %7734 = fsub fast float %7708, %7733
  br label %7735

; <label>:7735                                    ; preds = %7729, %7724
  %7736 = phi float [ %7726, %7724 ], [ %7732, %7729 ]
  %7737 = phi float [ %7728, %7724 ], [ %7734, %7729 ]
  %7738 = fcmp fast olt float %7717, %7566
  %7739 = icmp slt i32 %7714, 3
  %7740 = and i1 %7739, %7738
  br i1 %7740, label %7706, label %7741

; <label>:7741                                    ; preds = %7735
  br label %7742

; <label>:7742                                    ; preds = %7741, %7699
  %7743 = phi float [ %7564, %7699 ], [ %7736, %7741 ]
  %7744 = phi float [ %7565, %7699 ], [ %7737, %7741 ]
  %7745 = fsub fast float %7480, %7743
  %7746 = select i1 %7482, float %7743, float %7745
  %7747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7748 = extractvalue %dx.types.CBufRet.f32 %7747, 0
  %7749 = extractvalue %dx.types.CBufRet.f32 %7747, 1
  %7750 = extractvalue %dx.types.CBufRet.f32 %7747, 2
  %7751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7752 = extractvalue %dx.types.CBufRet.f32 %7751, 0
  %7753 = extractvalue %dx.types.CBufRet.f32 %7751, 1
  %7754 = extractvalue %dx.types.CBufRet.f32 %7751, 2
  %7755 = extractvalue %dx.types.CBufRet.f32 %7751, 3
  %7756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7757 = extractvalue %dx.types.CBufRet.f32 %7756, 3
  %7758 = call float @dx.op.binary.f32(i32 36, float %7744, float %7757)  ; FMin(a,b)
  %7759 = fmul fast float %7755, %7746
  %7760 = call float @dx.op.unary.f32(i32 7, float %7759)  ; Saturate(value)
  %7761 = fsub fast float %7752, %7748
  %7762 = fsub fast float %7753, %7749
  %7763 = fsub fast float %7754, %7750
  %7764 = fmul fast float %7760, %7761
  %7765 = fmul fast float %7760, %7762
  %7766 = fmul fast float %7760, %7763
  %7767 = fadd fast float %7764, %7748
  %7768 = fadd fast float %7765, %7749
  %7769 = fadd fast float %7766, %7750
  %7770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7771 = extractvalue %dx.types.CBufRet.f32 %7770, 0
  %7772 = extractvalue %dx.types.CBufRet.f32 %7770, 1
  %7773 = fadd fast float %7772, %7771
  %7774 = call float @dx.op.unary.f32(i32 7, float %7773)  ; Saturate(value)
  %7775 = extractvalue %dx.types.CBufRet.f32 %7770, 2
  %7776 = extractvalue %dx.types.CBufRet.f32 %7770, 3
  %7777 = fadd fast float %7776, %7775
  %7778 = call float @dx.op.unary.f32(i32 7, float %7777)  ; Saturate(value)
  %7779 = fmul fast float %7774, %7758
  %7780 = fmul fast float %7779, %7778
  br label %7781

; <label>:7781                                    ; preds = %7742, %7661, %7496, %7478, %7476
  %7782 = phi float [ %7505, %7496 ], [ %7664, %7661 ], [ %7746, %7742 ], [ 0.000000e+00, %7476 ], [ 0.000000e+00, %7478 ]
  %7783 = phi float [ %7539, %7496 ], [ %7698, %7661 ], [ %7780, %7742 ], [ 0.000000e+00, %7476 ], [ 0.000000e+00, %7478 ]
  %7784 = phi float [ %7526, %7496 ], [ %7685, %7661 ], [ %7767, %7742 ], [ 0.000000e+00, %7476 ], [ 0.000000e+00, %7478 ]
  %7785 = phi float [ %7527, %7496 ], [ %7686, %7661 ], [ %7768, %7742 ], [ 0.000000e+00, %7476 ], [ 0.000000e+00, %7478 ]
  %7786 = phi float [ %7528, %7496 ], [ %7687, %7661 ], [ %7769, %7742 ], [ 0.000000e+00, %7476 ], [ 0.000000e+00, %7478 ]
  %7787 = fmul fast float %7419, %7783
  %7788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7789 = extractvalue %dx.types.CBufRet.f32 %7788, 2
  %7790 = fsub fast float %7426, %7789
  %7791 = fcmp fast olt float %7787, -2.000000e+01
  %7792 = call float @dx.op.unary.f32(i32 21, float %7787)  ; Exp(value)
  %7793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7794 = extractvalue %dx.types.CBufRet.f32 %7793, 2
  %7795 = extractvalue %dx.types.CBufRet.f32 %7793, 3
  %7796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7797 = extractvalue %dx.types.CBufRet.f32 %7796, 2
  %7798 = fmul fast float %7795, %7790
  %7799 = call float @dx.op.unary.f32(i32 7, float %7798)  ; Saturate(value)
  %7800 = fsub fast float 1.000000e+00, %7799
  %7801 = fmul fast float %7411, 5.000000e-01
  %7802 = fadd fast float %7801, 5.000000e-01
  %7803 = call float @dx.op.unary.f32(i32 7, float %7802)  ; Saturate(value)
  %7804 = fsub fast float 1.000000e+00, %7803
  %7805 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7800)  ; FMax(a,b)
  %7806 = fdiv fast float %7804, %7805
  %7807 = fsub fast float %7790, %7368
  %7808 = call float @dx.op.unary.f32(i32 6, float %7807)  ; FAbs(value)
  %7809 = fmul fast float %7808, %7794
  %7810 = call float @dx.op.unary.f32(i32 7, float %7806)  ; Saturate(value)
  %7811 = fsub fast float 1.000000e+00, %7809
  %7812 = fmul fast float %7811, %7810
  %7813 = fadd fast float %7812, %7809
  %7814 = fmul fast float %7797, %7790
  %7815 = call float @dx.op.unary.f32(i32 7, float %7814)  ; Saturate(value)
  %7816 = fsub fast float 1.000000e+00, %7813
  %7817 = fmul fast float %7816, %7815
  %7818 = fadd fast float %7817, %7813
  %7819 = call float @dx.op.unary.f32(i32 7, float %7818)  ; Saturate(value)
  %7820 = fadd fast float %7792, -1.000000e+00
  %7821 = select i1 %7791, float -1.000000e+00, float %7820
  %7822 = fmul fast float %7819, %7821
  %7823 = fadd fast float %7822, 1.000000e+00
  %7824 = fsub fast float -0.000000e+00, %7822
  %7825 = fmul fast float %7784, %7824
  %7826 = fmul fast float %7785, %7824
  %7827 = fmul fast float %7786, %7824
  br label %7828

; <label>:7828                                    ; preds = %7781, %7377
  %7829 = phi float [ %7782, %7781 ], [ 0.000000e+00, %7377 ]
  %7830 = phi float [ %7823, %7781 ], [ 1.000000e+00, %7377 ]
  %7831 = phi float [ %7825, %7781 ], [ 0.000000e+00, %7377 ]
  %7832 = phi float [ %7826, %7781 ], [ 0.000000e+00, %7377 ]
  %7833 = phi float [ %7827, %7781 ], [ 0.000000e+00, %7377 ]
  %7834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7835 = extractvalue %dx.types.CBufRet.f32 %7834, 1
  %7836 = fsub fast float 1.000000e+00, %7830
  %7837 = fmul fast float %7836, %7412
  %7838 = fmul fast float %7837, %7835
  %7839 = fsub fast float %7412, %7838
  br i1 %7405, label %7840, label %7869, !dx.controlflow.hints !157

; <label>:7840                                    ; preds = %7828
  %7841 = fmul fast float %7413, %7402
  %7842 = fadd fast float %7841, %7403
  %7843 = call float @dx.op.unary.f32(i32 7, float %7842)  ; Saturate(value)
  %7844 = fmul fast float %7384, %7839
  %7845 = fsub fast float -0.000000e+00, %7844
  %7846 = fmul fast float %7385, %7839
  %7847 = fsub fast float -0.000000e+00, %7846
  %7848 = call float @dx.op.unary.f32(i32 21, float %7845)  ; Exp(value)
  %7849 = call float @dx.op.unary.f32(i32 21, float %7847)  ; Exp(value)
  %7850 = call float @dx.op.binary.f32(i32 35, float %7392, float %7848)  ; FMax(a,b)
  %7851 = call float @dx.op.binary.f32(i32 35, float %7392, float %7849)  ; FMax(a,b)
  %7852 = fsub fast float %7851, %7850
  %7853 = fmul fast float %7852, %7843
  %7854 = fadd fast float %7853, %7850
  %7855 = call float @dx.op.unary.f32(i32 7, float %7854)  ; Saturate(value)
  %7856 = fsub fast float %7389, %7394
  %7857 = fsub fast float %7390, %7395
  %7858 = fsub fast float %7391, %7396
  %7859 = fmul fast float %7843, %7856
  %7860 = fmul fast float %7843, %7857
  %7861 = fmul fast float %7843, %7858
  %7862 = fadd fast float %7859, %7394
  %7863 = fadd fast float %7860, %7395
  %7864 = fadd fast float %7861, %7396
  %7865 = fsub fast float 1.000000e+00, %7855
  %7866 = fmul fast float %7865, %7862
  %7867 = fmul fast float %7865, %7863
  %7868 = fmul fast float %7865, %7864
  br label %7928

; <label>:7869                                    ; preds = %7828
  %7870 = fmul fast float %7839, %7401
  %7871 = call float @dx.op.unary.f32(i32 7, float %7870)  ; Saturate(value)
  %7872 = fsub fast float 2.000000e+00, %7871
  %7873 = fmul fast float %7871, 9.921875e-01
  %7874 = fmul fast float %7873, %7872
  %7875 = fadd fast float %7874, 3.906250e-03
  %7876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %7875, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7877 = extractvalue %dx.types.ResRet.f32 %7876, 0
  %7878 = fsub fast float %7871, %7877
  %7879 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7878)  ; FMax(a,b)
  %7880 = fmul fast float %7387, %7368
  %7881 = call float @dx.op.unary.f32(i32 6, float %7880)  ; FAbs(value)
  %7882 = fcmp fast ogt float %7881, 0x3EB0C6F7A0000000
  br i1 %7882, label %7883, label %7889, !dx.controlflow.hints !158

; <label>:7883                                    ; preds = %7869
  %7884 = fmul fast float %7880, 0xBFF7154760000000
  %7885 = call float @dx.op.unary.f32(i32 21, float %7884)  ; Exp(value)
  %7886 = fsub fast float 1.000000e+00, %7885
  %7887 = fdiv fast float %7886, %7880
  %7888 = fmul fast float %7887, %7397
  br label %7889

; <label>:7889                                    ; preds = %7883, %7869
  %7890 = phi float [ %7888, %7883 ], [ %7397, %7869 ]
  %7891 = fadd fast float %7890, %7399
  %7892 = fmul fast float %7891, %7879
  %7893 = fmul fast float %7384, %7892
  %7894 = fsub fast float -0.000000e+00, %7893
  %7895 = fmul fast float %7385, %7892
  %7896 = fsub fast float -0.000000e+00, %7895
  %7897 = fmul fast float %7386, %7892
  %7898 = fsub fast float -0.000000e+00, %7897
  %7899 = call float @dx.op.unary.f32(i32 21, float %7894)  ; Exp(value)
  %7900 = call float @dx.op.unary.f32(i32 21, float %7896)  ; Exp(value)
  %7901 = call float @dx.op.unary.f32(i32 21, float %7898)  ; Exp(value)
  %7902 = fmul fast float %7413, %7413
  %7903 = fadd fast float %7902, 1.000000e+00
  %7904 = fmul fast float %7903, 0x3FAE8EC8A0000000
  %7905 = fmul fast float %7904, %7394
  %7906 = fmul fast float %7904, %7395
  %7907 = fmul fast float %7904, %7396
  %7908 = fmul fast float %7413, %7392
  %7909 = fsub fast float 1.000000e+00, %7908
  %7910 = fmul fast float %7392, %7392
  %7911 = fsub fast float 1.000000e+00, %7910
  %7912 = fmul fast float %7911, 0x3FB45F3060000000
  %7913 = fmul fast float %7909, %7909
  %7914 = fdiv fast float 1.000000e+00, %7913
  %7915 = fmul fast float %7912, %7914
  %7916 = fmul fast float %7915, %7389
  %7917 = fmul fast float %7915, %7390
  %7918 = fmul fast float %7915, %7391
  %7919 = fadd fast float %7916, %7905
  %7920 = fadd fast float %7917, %7906
  %7921 = fadd fast float %7918, %7907
  %7922 = fsub fast float 1.000000e+00, %7899
  %7923 = fsub fast float 1.000000e+00, %7900
  %7924 = fsub fast float 1.000000e+00, %7901
  %7925 = fmul fast float %7919, %7922
  %7926 = fmul fast float %7920, %7923
  %7927 = fmul fast float %7921, %7924
  br label %7928

; <label>:7928                                    ; preds = %7889, %7840
  %7929 = phi float [ %7866, %7840 ], [ %7925, %7889 ]
  %7930 = phi float [ %7867, %7840 ], [ %7926, %7889 ]
  %7931 = phi float [ %7868, %7840 ], [ %7927, %7889 ]
  %7932 = phi float [ %7855, %7840 ], [ %7899, %7889 ]
  %7933 = phi float [ %7855, %7840 ], [ %7900, %7889 ]
  %7934 = phi float [ %7855, %7840 ], [ %7901, %7889 ]
  br i1 %7421, label %7935, label %8133, !dx.controlflow.hints !159

; <label>:7935                                    ; preds = %7928
  %7936 = extractvalue %dx.types.CBufRet.f32 %7834, 0
  %7937 = fmul fast float %7936, %7836
  %7938 = fsub fast float %7831, %7929
  %7939 = fsub fast float %7832, %7930
  %7940 = fsub fast float %7833, %7931
  %7941 = fmul fast float %7937, %7938
  %7942 = fmul fast float %7937, %7939
  %7943 = fmul fast float %7937, %7940
  %7944 = fadd fast float %7941, %7929
  %7945 = fadd fast float %7942, %7930
  %7946 = fadd fast float %7943, %7931
  %7947 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7932)  ; FMax(a,b)
  %7948 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7933)  ; FMax(a,b)
  %7949 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7934)  ; FMax(a,b)
  %7950 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7830)  ; FMax(a,b)
  %7951 = call float @dx.op.binary.f32(i32 35, float %7829, float %7839)  ; FMax(a,b)
  %7952 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7951)  ; FMax(a,b)
  %7953 = fdiv fast float %7829, %7952
  %7954 = call float @dx.op.unary.f32(i32 7, float %7953)  ; Saturate(value)
  %7955 = fdiv fast float %7839, %7952
  %7956 = call float @dx.op.unary.f32(i32 7, float %7955)  ; Saturate(value)
  %7957 = fcmp fast une float %7950, 1.000000e+00
  br i1 %7957, label %7958, label %7971, !dx.controlflow.hints !160

; <label>:7958                                    ; preds = %7935
  %7959 = call float @dx.op.unary.f32(i32 23, float %7950)  ; Log(value)
  %7960 = fmul fast float %7959, 0x3FE62E4300000000
  %7961 = fmul fast float %7831, %7960
  %7962 = fsub fast float -0.000000e+00, %7961
  %7963 = fmul fast float %7832, %7960
  %7964 = fsub fast float -0.000000e+00, %7963
  %7965 = fmul fast float %7833, %7960
  %7966 = fsub fast float -0.000000e+00, %7965
  %7967 = fsub fast float 1.000000e+00, %7950
  %7968 = fdiv fast float %7962, %7967
  %7969 = fdiv fast float %7964, %7967
  %7970 = fdiv fast float %7966, %7967
  br label %7971

; <label>:7971                                    ; preds = %7958, %7935
  %7972 = phi float [ %7968, %7958 ], [ %7831, %7935 ]
  %7973 = phi float [ %7969, %7958 ], [ %7832, %7935 ]
  %7974 = phi float [ %7970, %7958 ], [ %7833, %7935 ]
  %7975 = phi float [ %7960, %7958 ], [ 0.000000e+00, %7935 ]
  %7976 = fcmp fast une float %7947, 1.000000e+00
  br i1 %7976, label %7977, label %7984, !dx.controlflow.hints !161

; <label>:7977                                    ; preds = %7971
  %7978 = call float @dx.op.unary.f32(i32 23, float %7947)  ; Log(value)
  %7979 = fmul fast float %7978, 0x3FE62E4300000000
  %7980 = fmul fast float %7944, %7979
  %7981 = fsub fast float -0.000000e+00, %7980
  %7982 = fsub fast float 1.000000e+00, %7947
  %7983 = fdiv fast float %7981, %7982
  br label %7984

; <label>:7984                                    ; preds = %7977, %7971
  %7985 = phi float [ %7983, %7977 ], [ %7944, %7971 ]
  %7986 = phi float [ %7979, %7977 ], [ 0.000000e+00, %7971 ]
  %7987 = fcmp fast une float %7948, 1.000000e+00
  br i1 %7987, label %7988, label %7995, !dx.controlflow.hints !161

; <label>:7988                                    ; preds = %7984
  %7989 = call float @dx.op.unary.f32(i32 23, float %7948)  ; Log(value)
  %7990 = fmul fast float %7989, 0x3FE62E4300000000
  %7991 = fmul fast float %7945, %7990
  %7992 = fsub fast float -0.000000e+00, %7991
  %7993 = fsub fast float 1.000000e+00, %7948
  %7994 = fdiv fast float %7992, %7993
  br label %7995

; <label>:7995                                    ; preds = %7988, %7984
  %7996 = phi float [ %7994, %7988 ], [ %7945, %7984 ]
  %7997 = phi float [ %7990, %7988 ], [ 0.000000e+00, %7984 ]
  %7998 = fcmp fast une float %7949, 1.000000e+00
  br i1 %7998, label %7999, label %8006, !dx.controlflow.hints !161

; <label>:7999                                    ; preds = %7995
  %8000 = call float @dx.op.unary.f32(i32 23, float %7949)  ; Log(value)
  %8001 = fmul fast float %8000, 0x3FE62E4300000000
  %8002 = fmul fast float %7946, %8001
  %8003 = fsub fast float -0.000000e+00, %8002
  %8004 = fsub fast float 1.000000e+00, %7949
  %8005 = fdiv fast float %8003, %8004
  br label %8006

; <label>:8006                                    ; preds = %7999, %7995
  %8007 = phi float [ %8005, %7999 ], [ %7946, %7995 ]
  %8008 = phi float [ %8001, %7999 ], [ 0.000000e+00, %7995 ]
  %8009 = fmul fast float %7972, %7956
  %8010 = fmul fast float %7973, %7956
  %8011 = fmul fast float %7974, %7956
  %8012 = fmul fast float %7975, %7956
  %8013 = fmul fast float %7985, %7954
  %8014 = fmul fast float %7996, %7954
  %8015 = fmul fast float %8007, %7954
  %8016 = fmul fast float %7986, %7954
  %8017 = fmul fast float %7997, %7954
  %8018 = fmul fast float %8008, %7954
  %8019 = fadd fast float %8013, %8009
  %8020 = fadd fast float %8014, %8010
  %8021 = fadd fast float %8015, %8011
  %8022 = fadd fast float %8016, %8012
  %8023 = fadd fast float %8017, %8012
  %8024 = fadd fast float %8018, %8012
  %8025 = fcmp fast une float %8022, 0.000000e+00
  br i1 %8025, label %8026, label %8033, !dx.controlflow.hints !162

; <label>:8026                                    ; preds = %8006
  %8027 = fmul fast float %8022, 0x3FF7154760000000
  %8028 = call float @dx.op.unary.f32(i32 21, float %8027)  ; Exp(value)
  %8029 = fsub fast float 1.000000e+00, %8028
  %8030 = fmul fast float %8019, %8029
  %8031 = fsub fast float -0.000000e+00, %8030
  %8032 = fdiv fast float %8031, %8022
  br label %8033

; <label>:8033                                    ; preds = %8026, %8006
  %8034 = phi float [ %8028, %8026 ], [ 1.000000e+00, %8006 ]
  %8035 = phi float [ %8032, %8026 ], [ %8019, %8006 ]
  %8036 = fcmp fast une float %8023, 0.000000e+00
  br i1 %8036, label %8037, label %8044, !dx.controlflow.hints !162

; <label>:8037                                    ; preds = %8033
  %8038 = fmul fast float %8023, 0x3FF7154760000000
  %8039 = call float @dx.op.unary.f32(i32 21, float %8038)  ; Exp(value)
  %8040 = fsub fast float 1.000000e+00, %8039
  %8041 = fmul fast float %8020, %8040
  %8042 = fsub fast float -0.000000e+00, %8041
  %8043 = fdiv fast float %8042, %8023
  br label %8044

; <label>:8044                                    ; preds = %8037, %8033
  %8045 = phi float [ %8039, %8037 ], [ 1.000000e+00, %8033 ]
  %8046 = phi float [ %8043, %8037 ], [ %8020, %8033 ]
  %8047 = fcmp fast une float %8024, 0.000000e+00
  br i1 %8047, label %8048, label %8055, !dx.controlflow.hints !162

; <label>:8048                                    ; preds = %8044
  %8049 = fmul fast float %8024, 0x3FF7154760000000
  %8050 = call float @dx.op.unary.f32(i32 21, float %8049)  ; Exp(value)
  %8051 = fsub fast float 1.000000e+00, %8050
  %8052 = fmul fast float %8021, %8051
  %8053 = fsub fast float -0.000000e+00, %8052
  %8054 = fdiv fast float %8053, %8024
  br label %8055

; <label>:8055                                    ; preds = %8048, %8044
  %8056 = phi float [ %8050, %8048 ], [ 1.000000e+00, %8044 ]
  %8057 = phi float [ %8054, %8048 ], [ %8021, %8044 ]
  %8058 = fcmp fast ogt float %7954, %7956
  br i1 %8058, label %8059, label %8079

; <label>:8059                                    ; preds = %8055
  %8060 = fsub fast float 1.000000e+00, %7956
  %8061 = fmul fast float %7972, %8060
  %8062 = fmul fast float %7973, %8060
  %8063 = fmul fast float %7974, %8060
  %8064 = fmul fast float %7975, %8060
  %8065 = fcmp fast une float %8064, 0.000000e+00
  br i1 %8065, label %8066, label %8117, !dx.controlflow.hints !163

; <label>:8066                                    ; preds = %8059
  %8067 = fmul fast float %8064, 0x3FF7154760000000
  %8068 = call float @dx.op.unary.f32(i32 21, float %8067)  ; Exp(value)
  %8069 = fsub fast float 1.000000e+00, %8068
  %8070 = fmul fast float %8061, %8069
  %8071 = fsub fast float -0.000000e+00, %8070
  %8072 = fmul fast float %8062, %8069
  %8073 = fsub fast float -0.000000e+00, %8072
  %8074 = fmul fast float %8063, %8069
  %8075 = fsub fast float -0.000000e+00, %8074
  %8076 = fdiv fast float %8071, %8064
  %8077 = fdiv fast float %8073, %8064
  %8078 = fdiv fast float %8075, %8064
  br label %8117

; <label>:8079                                    ; preds = %8055
  %8080 = fsub fast float 1.000000e+00, %7954
  %8081 = fmul fast float %7985, %8080
  %8082 = fmul fast float %7996, %8080
  %8083 = fmul fast float %8007, %8080
  %8084 = fmul fast float %7986, %8080
  %8085 = fmul fast float %7997, %8080
  %8086 = fmul fast float %8008, %8080
  %8087 = fcmp fast une float %8084, 0.000000e+00
  br i1 %8087, label %8088, label %8095, !dx.controlflow.hints !162

; <label>:8088                                    ; preds = %8079
  %8089 = fmul fast float %8084, 0x3FF7154760000000
  %8090 = call float @dx.op.unary.f32(i32 21, float %8089)  ; Exp(value)
  %8091 = fsub fast float 1.000000e+00, %8090
  %8092 = fmul fast float %8081, %8091
  %8093 = fsub fast float -0.000000e+00, %8092
  %8094 = fdiv fast float %8093, %8084
  br label %8095

; <label>:8095                                    ; preds = %8088, %8079
  %8096 = phi float [ %8094, %8088 ], [ %8081, %8079 ]
  %8097 = phi float [ %8090, %8088 ], [ 1.000000e+00, %8079 ]
  %8098 = fcmp fast une float %8085, 0.000000e+00
  br i1 %8098, label %8099, label %8106, !dx.controlflow.hints !162

; <label>:8099                                    ; preds = %8095
  %8100 = fmul fast float %8085, 0x3FF7154760000000
  %8101 = call float @dx.op.unary.f32(i32 21, float %8100)  ; Exp(value)
  %8102 = fsub fast float 1.000000e+00, %8101
  %8103 = fmul fast float %8082, %8102
  %8104 = fsub fast float -0.000000e+00, %8103
  %8105 = fdiv fast float %8104, %8085
  br label %8106

; <label>:8106                                    ; preds = %8099, %8095
  %8107 = phi float [ %8105, %8099 ], [ %8082, %8095 ]
  %8108 = phi float [ %8101, %8099 ], [ 1.000000e+00, %8095 ]
  %8109 = fcmp fast une float %8086, 0.000000e+00
  br i1 %8109, label %8110, label %8117, !dx.controlflow.hints !162

; <label>:8110                                    ; preds = %8106
  %8111 = fmul fast float %8086, 0x3FF7154760000000
  %8112 = call float @dx.op.unary.f32(i32 21, float %8111)  ; Exp(value)
  %8113 = fsub fast float 1.000000e+00, %8112
  %8114 = fmul fast float %8083, %8113
  %8115 = fsub fast float -0.000000e+00, %8114
  %8116 = fdiv fast float %8115, %8086
  br label %8117

; <label>:8117                                    ; preds = %8110, %8106, %8066, %8059
  %8118 = phi float [ %8116, %8110 ], [ %8078, %8066 ], [ %8063, %8059 ], [ %8083, %8106 ]
  %8119 = phi float [ %8107, %8110 ], [ %8077, %8066 ], [ %8062, %8059 ], [ %8107, %8106 ]
  %8120 = phi float [ %8096, %8110 ], [ %8076, %8066 ], [ %8061, %8059 ], [ %8096, %8106 ]
  %8121 = phi float [ %8112, %8110 ], [ %8068, %8066 ], [ 1.000000e+00, %8059 ], [ 1.000000e+00, %8106 ]
  %8122 = phi float [ %8108, %8110 ], [ %8068, %8066 ], [ 1.000000e+00, %8059 ], [ %8108, %8106 ]
  %8123 = phi float [ %8097, %8110 ], [ %8068, %8066 ], [ 1.000000e+00, %8059 ], [ %8097, %8106 ]
  %8124 = fmul fast float %8123, %8035
  %8125 = fmul fast float %8122, %8046
  %8126 = fmul fast float %8121, %8057
  %8127 = fadd fast float %8124, %8120
  %8128 = fadd fast float %8125, %8119
  %8129 = fadd fast float %8126, %8118
  %8130 = fmul fast float %8123, %8034
  %8131 = fmul fast float %8122, %8045
  %8132 = fmul fast float %8121, %8056
  br label %8133

; <label>:8133                                    ; preds = %8117, %7928
  %8134 = phi float [ %8132, %8117 ], [ %7934, %7928 ]
  %8135 = phi float [ %8131, %8117 ], [ %7933, %7928 ]
  %8136 = phi float [ %8130, %8117 ], [ %7932, %7928 ]
  %8137 = phi float [ %8129, %8117 ], [ %7931, %7928 ]
  %8138 = phi float [ %8128, %8117 ], [ %7930, %7928 ]
  %8139 = phi float [ %8127, %8117 ], [ %7929, %7928 ]
  %8140 = fmul fast float %8139, %7085
  %8141 = fmul fast float %8138, %7085
  %8142 = fmul fast float %8137, %7085
  %8143 = fmul fast float %8136, %7376
  %8144 = call float @dx.op.dot3.f32(i32 55, float %8136, float %8135, float %8134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8145 = call float @dx.op.dot3.f32(i32 55, float %8140, float %8141, float %8142, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8146 = select i1 %250, float %8144, float %8136
  %8147 = select i1 %250, float %8144, float %8135
  %8148 = select i1 %250, float 1.000000e+00, float %8134
  %8149 = select i1 %250, float %8145, float %8140
  %8150 = select i1 %250, float 0.000000e+00, float %8141
  %8151 = select i1 %250, float 0.000000e+00, float %8142
  %8152 = fmul fast float %8146, %7370
  %8153 = fmul fast float %8147, %7371
  %8154 = fmul fast float %8148, %7372
  %8155 = fadd fast float %8152, %8149
  %8156 = fadd fast float %8153, %8150
  %8157 = fadd fast float %8151, %8154
  %8158 = fmul fast float %8146, %7373
  %8159 = fmul fast float %8147, %7374
  %8160 = fmul fast float %8148, %7375
  %8161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8162 = extractvalue %dx.types.CBufRet.i32 %8161, 0
  %8163 = icmp eq i32 %8162, 0
  br i1 %8163, label %8531, label %8164, !dx.controlflow.hints !164

; <label>:8164                                    ; preds = %8133
  %8165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8166 = extractvalue %dx.types.CBufRet.f32 %8165, 2
  %8167 = extractvalue %dx.types.CBufRet.f32 %8165, 3
  %8168 = fmul fast float %8166, %102
  %8169 = fmul fast float %8167, %103
  %8170 = fmul fast float %8168, 2.000000e+00
  %8171 = fmul fast float %8169, 2.000000e+00
  %8172 = fsub fast float 1.000000e+00, %8170
  %8173 = fsub fast float 1.000000e+00, %8171
  %8174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8175 = extractvalue %dx.types.CBufRet.f32 %8174, 0
  %8176 = extractvalue %dx.types.CBufRet.f32 %8174, 1
  %8177 = extractvalue %dx.types.CBufRet.f32 %8174, 2
  %8178 = fmul fast float %8172, %8175
  %8179 = fmul fast float %8172, %8176
  %8180 = fmul fast float %8172, %8177
  %8181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8182 = extractvalue %dx.types.CBufRet.f32 %8181, 0
  %8183 = extractvalue %dx.types.CBufRet.f32 %8181, 1
  %8184 = extractvalue %dx.types.CBufRet.f32 %8181, 2
  %8185 = fmul fast float %8173, %8182
  %8186 = fmul fast float %8173, %8183
  %8187 = fmul fast float %8173, %8184
  %8188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8189 = extractvalue %dx.types.CBufRet.f32 %8188, 0
  %8190 = extractvalue %dx.types.CBufRet.f32 %8188, 1
  %8191 = extractvalue %dx.types.CBufRet.f32 %8188, 2
  %8192 = fadd fast float %8185, %8189
  %8193 = fadd fast float %8192, %8178
  %8194 = fadd fast float %8186, %8190
  %8195 = fadd fast float %8194, %8179
  %8196 = fadd fast float %8187, %8191
  %8197 = fadd fast float %8196, %8180
  %8198 = fmul fast float %8193, %7369
  %8199 = fmul fast float %8195, %7369
  %8200 = fmul fast float %8197, %7369
  %8201 = fmul fast float %8198, %8198
  %8202 = fmul fast float %8199, %8199
  %8203 = fadd fast float %8201, %8202
  %8204 = fmul fast float %8200, %8200
  %8205 = fadd fast float %8203, %8204
  %8206 = call float @dx.op.unary.f32(i32 24, float %8205)  ; Sqrt(value)
  %8207 = extractvalue %dx.types.CBufRet.f32 %7096, 0
  %8208 = fsub fast float %8206, %8207
  %8209 = extractvalue %dx.types.CBufRet.f32 %7096, 2
  %8210 = fmul fast float %8208, %8209
  %8211 = call float @dx.op.unary.f32(i32 7, float %8210)  ; Saturate(value)
  %8212 = fadd fast float %8211, -5.000000e-01
  %8213 = fmul fast float %8212, 2.000000e+00
  %8214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8215 = extractvalue %dx.types.CBufRet.f32 %8214, 2
  %8216 = call float @dx.op.binary.f32(i32 36, float %8215, float %8213)  ; FMin(a,b)
  %8217 = fsub fast float -0.000000e+00, %8215
  %8218 = fcmp fast ogt float %8216, %8217
  br i1 %8218, label %8219, label %8531, !dx.controlflow.hints !165

; <label>:8219                                    ; preds = %8164
  %8220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8221 = extractvalue %dx.types.CBufRet.f32 %8220, 3
  %8222 = fcmp fast ogt float %8221, 0.000000e+00
  br i1 %8222, label %8223, label %8298, !dx.controlflow.hints !166

; <label>:8223                                    ; preds = %8219
  %8224 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %8225 = extractvalue %dx.types.Dimensions %8224, 0
  %8226 = sitofp i32 %8225 to float
  %8227 = extractvalue %dx.types.Dimensions %8224, 1
  %8228 = sitofp i32 %8227 to float
  %8229 = fmul fast float %8168, %8226
  %8230 = fmul fast float %8169, %8228
  %8231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8232 = extractvalue %dx.types.CBufRet.f32 %8231, 1
  %8233 = fsub fast float -0.000000e+00, %8232
  %8234 = fptoui float %8233 to i32
  %8235 = fptoui float %8229 to i32
  %8236 = fptoui float %8230 to i32
  %8237 = and i32 %8234, 31
  %8238 = lshr i32 %8235, %8237
  %8239 = lshr i32 %8236, %8237
  %8240 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %8234, i32 %8238, i32 %8239, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8241 = extractvalue %dx.types.ResRet.f32 %8240, 0
  %8242 = fcmp fast olt float %8241, -1.000000e+00
  %8243 = fcmp fast ogt float %8241, -1.000000e+00
  %8244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8245 = extractvalue %dx.types.CBufRet.f32 %8244, 1
  %8246 = select i1 %8243, float %8245, float 1.000000e+00
  %8247 = fadd fast float %8241, 1.000000e+00
  %8248 = fmul fast float %8246, %8247
  %8249 = call float @dx.op.unary.f32(i32 6, float %8248)  ; FAbs(value)
  %8250 = extractvalue %dx.types.CBufRet.f32 %8244, 3
  %8251 = fcmp fast oge float %8249, %8250
  %8252 = select i1 %8251, float 0x4197782600000000, float %8249
  %8253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8254 = extractvalue %dx.types.CBufRet.f32 %8253, 0
  %8255 = extractvalue %dx.types.CBufRet.f32 %8253, 1
  %8256 = extractvalue %dx.types.CBufRet.f32 %8253, 2
  %8257 = select i1 %8242, float %8254, float %8175
  %8258 = select i1 %8242, float %8255, float %8176
  %8259 = select i1 %8242, float %8256, float %8177
  %8260 = fmul fast float %8257, %8172
  %8261 = fmul fast float %8258, %8172
  %8262 = fmul fast float %8259, %8172
  %8263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8264 = extractvalue %dx.types.CBufRet.f32 %8263, 0
  %8265 = extractvalue %dx.types.CBufRet.f32 %8263, 1
  %8266 = extractvalue %dx.types.CBufRet.f32 %8263, 2
  %8267 = select i1 %8242, float %8264, float %8182
  %8268 = select i1 %8242, float %8265, float %8183
  %8269 = select i1 %8242, float %8266, float %8184
  %8270 = fmul fast float %8267, %8173
  %8271 = fmul fast float %8268, %8173
  %8272 = fmul fast float %8269, %8173
  %8273 = fadd fast float %8270, %8260
  %8274 = fadd fast float %8271, %8261
  %8275 = fadd fast float %8272, %8262
  %8276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8277 = extractvalue %dx.types.CBufRet.f32 %8276, 0
  %8278 = extractvalue %dx.types.CBufRet.f32 %8276, 1
  %8279 = extractvalue %dx.types.CBufRet.f32 %8276, 2
  %8280 = select i1 %8242, float %8277, float %8189
  %8281 = select i1 %8242, float %8278, float %8190
  %8282 = select i1 %8242, float %8279, float %8191
  %8283 = fadd fast float %8273, %8280
  %8284 = fadd fast float %8274, %8281
  %8285 = fadd fast float %8275, %8282
  %8286 = fmul fast float %8283, %8252
  %8287 = fmul fast float %8284, %8252
  %8288 = fmul fast float %8285, %8252
  %8289 = fmul fast float %8286, %8286
  %8290 = fmul fast float %8287, %8287
  %8291 = fadd fast float %8289, %8290
  %8292 = fmul fast float %8288, %8288
  %8293 = fadd fast float %8291, %8292
  %8294 = call float @dx.op.unary.f32(i32 24, float %8293)  ; Sqrt(value)
  %8295 = fsub fast float %8294, %8207
  %8296 = fmul fast float %8295, %8209
  %8297 = call float @dx.op.unary.f32(i32 7, float %8296)  ; Saturate(value)
  br label %8298

; <label>:8298                                    ; preds = %8223, %8219
  %8299 = phi float [ %8297, %8223 ], [ 1.000000e+00, %8219 ]
  %8300 = fmul fast float %8216, 5.000000e-01
  %8301 = fadd fast float %8300, 5.000000e-01
  %8302 = call float @dx.op.unary.f32(i32 22, float %8301)  ; Frc(value)
  %8303 = call float @dx.op.unary.f32(i32 27, float %8302)  ; Round_ni(value)
  %8304 = call float @dx.op.unary.f32(i32 22, float %8302)  ; Frc(value)
  %8305 = fmul fast float %8304, 2.000000e+00
  %8306 = fadd fast float %8305, -1.000000e+00
  %8307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %42, float %8168, float %8169, float %8303, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8308 = extractvalue %dx.types.ResRet.f32 %8307, 0
  %8309 = extractvalue %dx.types.ResRet.f32 %8307, 1
  %8310 = extractvalue %dx.types.ResRet.f32 %8307, 2
  %8311 = extractvalue %dx.types.ResRet.f32 %8307, 3
  %8312 = fadd fast float %8308, -5.000000e-01
  %8313 = fadd fast float %8310, -5.000000e-01
  %8314 = fmul fast float %8312, 0xBFD5555560000000
  %8315 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8313, float %8314)  ; FMad(a,b,c)
  %8316 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8309, float 0.000000e+00)  ; FMad(a,b,c)
  %8317 = fadd fast float %8316, %8311
  %8318 = fmul fast float %8312, -7.500000e-01
  %8319 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8313, float %8318)  ; FMad(a,b,c)
  %8320 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8309, float 0.000000e+00)  ; FMad(a,b,c)
  %8321 = fadd fast float %8320, %8311
  %8322 = call float @dx.op.binary.f32(i32 35, float %8315, float -1.000000e+00)  ; FMax(a,b)
  %8323 = call float @dx.op.binary.f32(i32 35, float %8317, float -1.000000e+00)  ; FMax(a,b)
  %8324 = call float @dx.op.binary.f32(i32 35, float %8319, float -1.000000e+00)  ; FMax(a,b)
  %8325 = call float @dx.op.binary.f32(i32 35, float %8321, float -1.000000e+00)  ; FMax(a,b)
  %8326 = call float @dx.op.binary.f32(i32 36, float %8322, float 1.000000e+00)  ; FMin(a,b)
  %8327 = call float @dx.op.binary.f32(i32 36, float %8323, float 1.000000e+00)  ; FMin(a,b)
  %8328 = call float @dx.op.binary.f32(i32 36, float %8324, float 1.000000e+00)  ; FMin(a,b)
  %8329 = call float @dx.op.binary.f32(i32 36, float %8325, float 1.000000e+00)  ; FMin(a,b)
  %8330 = fcmp fast olt float %8326, 0x3FEFFF8020000000
  br i1 %8330, label %8331, label %8446, !dx.controlflow.hints !167

; <label>:8331                                    ; preds = %8298
  %8332 = extractvalue %dx.types.CBufRet.f32 %8214, 3
  %8333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8334 = extractvalue %dx.types.CBufRet.f32 %8333, 0
  %8335 = extractvalue %dx.types.CBufRet.f32 %8333, 1
  %8336 = extractvalue %dx.types.CBufRet.f32 %8333, 2
  %8337 = extractvalue %dx.types.CBufRet.f32 %8333, 3
  %8338 = fsub fast float %8334, %8326
  %8339 = fsub fast float %8335, %8327
  %8340 = fsub fast float %8336, %8328
  %8341 = fsub fast float %8337, %8329
  %8342 = fmul fast float %8338, %8332
  %8343 = fmul fast float %8339, %8332
  %8344 = fmul fast float %8340, %8332
  %8345 = fmul fast float %8341, %8332
  %8346 = fadd fast float %8342, %8326
  %8347 = fadd fast float %8343, %8327
  %8348 = fsub fast float -0.000000e+00, %8347
  %8349 = fadd fast float %8344, %8328
  %8350 = fadd fast float %8345, %8329
  %8351 = fmul fast float %8346, %8346
  %8352 = fsub fast float %8347, %8351
  %8353 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8352)  ; FMax(a,b)
  %8354 = fdiv fast float 1.000000e+00, %8353
  %8355 = fmul fast float %8347, %8346
  %8356 = fsub fast float %8349, %8355
  %8357 = fsub fast float %8306, %8346
  %8358 = fmul fast float %8306, %8306
  %8359 = fsub fast float %8358, %8347
  %8360 = fmul fast float %8357, %8354
  %8361 = fmul fast float %8360, %8356
  %8362 = fsub fast float %8359, %8361
  %8363 = fmul fast float %8347, %8347
  %8364 = fsub fast float %8350, %8363
  %8365 = fmul fast float %8356, %8356
  %8366 = fmul fast float %8365, %8354
  %8367 = fsub fast float %8364, %8366
  %8368 = fdiv fast float %8362, %8367
  %8369 = fmul fast float %8356, %8368
  %8370 = fsub fast float %8357, %8369
  %8371 = fmul fast float %8370, %8354
  %8372 = fmul fast float %8371, %8346
  %8373 = fsub fast float 1.000000e+00, %8372
  %8374 = fmul fast float %8347, %8368
  %8375 = fsub fast float %8373, %8374
  %8376 = fmul fast float %8371, %8371
  %8377 = fmul fast float %8368, 4.000000e+00
  %8378 = fmul fast float %8377, %8375
  %8379 = fsub fast float %8376, %8378
  %8380 = call float @dx.op.unary.f32(i32 24, float %8379)  ; Sqrt(value)
  %8381 = fcmp fast oge float %8371, 0.000000e+00
  %8382 = fsub fast float -0.000000e+00, %8380
  %8383 = select i1 %8381, float %8382, float %8380
  %8384 = fsub fast float %8383, %8371
  %8385 = fdiv fast float %8384, %8368
  %8386 = fdiv fast float %8375, %8384
  %8387 = fmul fast float %8385, 5.000000e-01
  %8388 = fmul fast float %8386, 2.000000e+00
  %8389 = select i1 %8381, float %8387, float %8388
  %8390 = select i1 %8381, float %8388, float %8387
  %8391 = call float @dx.op.binary.f32(i32 35, float %8389, float %8390)  ; FMax(a,b)
  %8392 = call float @dx.op.binary.f32(i32 36, float %8389, float %8390)  ; FMin(a,b)
  %8393 = fcmp fast ogt float %8306, %8392
  br i1 %8393, label %8394, label %8404

; <label>:8394                                    ; preds = %8331
  %8395 = fsub fast float %8306, %8392
  %8396 = fsub fast float %8391, %8392
  %8397 = fmul fast float %8395, %8396
  %8398 = fmul fast float %8391, %8306
  %8399 = fadd fast float %8391, %8306
  %8400 = fmul fast float %8399, %8346
  %8401 = fadd fast float %8398, %8347
  %8402 = fsub fast float %8401, %8400
  %8403 = fdiv fast float %8402, %8397
  br label %8404

; <label>:8404                                    ; preds = %8394, %8331
  %8405 = phi float [ %8403, %8394 ], [ 0.000000e+00, %8331 ]
  %8406 = fcmp fast ogt float %8306, %8391
  %8407 = fsub fast float %8306, %8391
  br i1 %8406, label %8408, label %8418

; <label>:8408                                    ; preds = %8404
  %8409 = fsub fast float %8391, %8392
  %8410 = fmul fast float %8409, %8407
  %8411 = fmul fast float %8392, %8306
  %8412 = fadd fast float %8392, %8306
  %8413 = fmul fast float %8412, %8346
  %8414 = fsub fast float %8348, %8411
  %8415 = fadd fast float %8414, %8413
  %8416 = fdiv fast float %8415, %8410
  %8417 = fadd fast float %8416, %8405
  br label %8418

; <label>:8418                                    ; preds = %8408, %8404
  %8419 = phi float [ %8417, %8408 ], [ %8405, %8404 ]
  %8420 = fsub fast float %8306, %8392
  %8421 = fmul fast float %8420, %8407
  %8422 = fmul fast float %8392, %8391
  %8423 = fadd fast float %8392, %8391
  %8424 = fmul fast float %8423, %8346
  %8425 = fadd fast float %8422, %8347
  %8426 = fsub fast float %8425, %8424
  %8427 = fdiv fast float %8426, %8421
  %8428 = call float @dx.op.unary.f32(i32 7, float %8419)  ; Saturate(value)
  %8429 = fcmp fast oeq float %7097, 0.000000e+00
  %8430 = extractvalue %dx.types.CBufRet.f32 %8214, 0
  %8431 = fcmp fast oeq float %8430, 0.000000e+00
  %8432 = or i1 %8429, %8431
  %8433 = fmul fast float %8430, 2.000000e+00
  %8434 = fadd fast float %8215, %8216
  %8435 = fdiv fast float %8434, %8433
  %8436 = call float @dx.op.unary.f32(i32 7, float %8435)  ; Saturate(value)
  %8437 = fmul fast float %8436, 2.000000e+00
  %8438 = fsub fast float 3.000000e+00, %8437
  %8439 = fmul fast float %8436, %8436
  %8440 = fmul fast float %8439, %8438
  %8441 = select i1 %8432, float 1.000000e+00, float %8440
  %8442 = fmul fast float %8427, %7097
  %8443 = fadd fast float %8428, %8442
  %8444 = call float @dx.op.unary.f32(i32 7, float %8443)  ; Saturate(value)
  %8445 = fmul fast float %8441, %8444
  br label %8446

; <label>:8446                                    ; preds = %8418, %8298
  %8447 = phi float [ %8445, %8418 ], [ 0.000000e+00, %8298 ]
  %8448 = fsub fast float 1.000000e+00, %8447
  %8449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %42, float %8168, float %8169, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8450 = extractvalue %dx.types.ResRet.f32 %8449, 0
  %8451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8452 = extractvalue %dx.types.CBufRet.i32 %8451, 2
  %8453 = icmp eq i32 %8452, 0
  br i1 %8453, label %8459, label %8454

; <label>:8454                                    ; preds = %8446
  %8455 = call float @dx.op.unary.f32(i32 7, float %8447)  ; Saturate(value)
  %8456 = fadd fast float %8450, -1.000000e+00
  %8457 = fmul fast float %8455, %8456
  %8458 = fadd fast float %8457, 1.000000e+00
  br label %8459

; <label>:8459                                    ; preds = %8454, %8446
  %8460 = phi float [ %8458, %8454 ], [ %8448, %8446 ]
  br i1 %8222, label %8461, label %8479

; <label>:8461                                    ; preds = %8459
  %8462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8463 = extractvalue %dx.types.CBufRet.f32 %8462, 1
  %8464 = fsub fast float %8299, %8463
  %8465 = call float @dx.op.unary.f32(i32 7, float %8464)  ; Saturate(value)
  %8466 = fsub fast float %8299, %8221
  %8467 = call float @dx.op.unary.f32(i32 7, float %8466)  ; Saturate(value)
  %8468 = fsub fast float %8465, %8467
  %8469 = fsub fast float %8301, %8467
  %8470 = fdiv fast float %8469, %8468
  %8471 = call float @dx.op.unary.f32(i32 7, float %8470)  ; Saturate(value)
  %8472 = fmul fast float %8471, 2.000000e+00
  %8473 = fsub fast float 3.000000e+00, %8472
  %8474 = fsub fast float %8450, %8460
  %8475 = fmul fast float %8471, %8471
  %8476 = fmul fast float %8475, %8474
  %8477 = fmul fast float %8476, %8473
  %8478 = fadd fast float %8477, %8460
  br label %8479

; <label>:8479                                    ; preds = %8461, %8459
  %8480 = phi float [ %8478, %8461 ], [ %8460, %8459 ]
  %8481 = call float @dx.op.binary.f32(i32 35, float %8450, float %8480)  ; FMax(a,b)
  %8482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.i32 %8482, 2
  %8484 = and i32 %8483, 1
  %8485 = icmp eq i32 %8484, 0
  %8486 = fcmp fast une float %8481, 1.000000e+00
  %8487 = and i1 %8486, %8485
  br i1 %8487, label %8488, label %8507

; <label>:8488                                    ; preds = %8479
  %8489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %42, float %8168, float %8169, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8490 = extractvalue %dx.types.ResRet.f32 %8489, 0
  %8491 = extractvalue %dx.types.ResRet.f32 %8489, 1
  %8492 = extractvalue %dx.types.ResRet.f32 %8489, 2
  %8493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8494 = extractvalue %dx.types.CBufRet.f32 %8493, 1
  %8495 = fmul fast float %8494, %8490
  %8496 = fmul fast float %8494, %8491
  %8497 = fmul fast float %8494, %8492
  %8498 = fcmp fast ogt float %8450, 0x3FEFFF2E40000000
  %8499 = fsub fast float 1.000000e+00, %8481
  %8500 = fsub fast float 1.000000e+00, %8450
  %8501 = fdiv fast float %8499, %8500
  %8502 = call float @dx.op.unary.f32(i32 7, float %8501)  ; Saturate(value)
  %8503 = select i1 %8498, float 0.000000e+00, float %8502
  %8504 = fmul fast float %8495, %8503
  %8505 = fmul fast float %8496, %8503
  %8506 = fmul fast float %8497, %8503
  br label %8507

; <label>:8507                                    ; preds = %8488, %8479
  %8508 = phi float [ 0.000000e+00, %8479 ], [ %8504, %8488 ]
  %8509 = phi float [ 0.000000e+00, %8479 ], [ %8505, %8488 ]
  %8510 = phi float [ 0.000000e+00, %8479 ], [ %8506, %8488 ]
  %8511 = fmul fast float %8508, %7085
  %8512 = fmul fast float %8509, %7085
  %8513 = fmul fast float %8510, %7085
  %8514 = fmul fast float %8481, %8143
  %8515 = call float @dx.op.dot3.f32(i32 55, float %8481, float %8481, float %8481, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8516 = call float @dx.op.dot3.f32(i32 55, float %8511, float %8512, float %8513, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8517 = select i1 %250, float %8515, float %8481
  %8518 = select i1 %250, float 1.000000e+00, float %8481
  %8519 = select i1 %250, float %8516, float %8511
  %8520 = select i1 %250, float 0.000000e+00, float %8512
  %8521 = select i1 %250, float 0.000000e+00, float %8513
  %8522 = fmul fast float %8517, %8155
  %8523 = fmul fast float %8517, %8156
  %8524 = fmul fast float %8518, %8157
  %8525 = fadd fast float %8522, %8519
  %8526 = fadd fast float %8523, %8520
  %8527 = fadd fast float %8521, %8524
  %8528 = fmul fast float %8517, %8158
  %8529 = fmul fast float %8517, %8159
  %8530 = fmul fast float %8518, %8160
  br label %8531

; <label>:8531                                    ; preds = %8507, %8164, %8133, %7365
  %8532 = phi float [ %7370, %7365 ], [ %8155, %8133 ], [ %8525, %8507 ], [ %8155, %8164 ]
  %8533 = phi float [ %7371, %7365 ], [ %8156, %8133 ], [ %8526, %8507 ], [ %8156, %8164 ]
  %8534 = phi float [ %7372, %7365 ], [ %8157, %8133 ], [ %8527, %8507 ], [ %8157, %8164 ]
  %8535 = phi float [ %7373, %7365 ], [ %8158, %8133 ], [ %8528, %8507 ], [ %8158, %8164 ]
  %8536 = phi float [ %7374, %7365 ], [ %8159, %8133 ], [ %8529, %8507 ], [ %8159, %8164 ]
  %8537 = phi float [ %7375, %7365 ], [ %8160, %8133 ], [ %8530, %8507 ], [ %8160, %8164 ]
  %8538 = phi float [ %7376, %7365 ], [ %8143, %8133 ], [ %8514, %8507 ], [ %8143, %8164 ]
  %8539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8540 = extractvalue %dx.types.CBufRet.f32 %8539, 2
  %8541 = extractvalue %dx.types.CBufRet.f32 %8539, 3
  %8542 = fmul fast float %8540, %102
  %8543 = fmul fast float %8541, %103
  %8544 = call float @dx.op.unary.f32(i32 7, float %8542)  ; Saturate(value)
  %8545 = call float @dx.op.unary.f32(i32 7, float %8543)  ; Saturate(value)
  %8546 = select i1 %7107, i32 2, i32 0
  %8547 = or i32 %8546, 1
  %8548 = uitofp i32 %8547 to float
  %8549 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8544, float %8545, float %8548, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8550 = extractvalue %dx.types.ResRet.f32 %8549, 0
  %8551 = extractvalue %dx.types.ResRet.f32 %8549, 1
  %8552 = extractvalue %dx.types.ResRet.f32 %8549, 2
  %8553 = extractvalue %dx.types.ResRet.f32 %8549, 3
  %8554 = add nuw nsw i32 %8546, 2
  %8555 = uitofp i32 %8554 to float
  %8556 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8544, float %8545, float %8555, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8557 = extractvalue %dx.types.ResRet.f32 %8556, 0
  %8558 = extractvalue %dx.types.ResRet.f32 %8556, 1
  %8559 = extractvalue %dx.types.ResRet.f32 %8556, 2
  %8560 = extractvalue %dx.types.ResRet.f32 %8556, 3
  %8561 = call float @dx.op.binary.f32(i32 35, float %8551, float %8552)  ; FMax(a,b)
  %8562 = call float @dx.op.binary.f32(i32 35, float %8550, float %8561)  ; FMax(a,b)
  %8563 = call float @dx.op.binary.f32(i32 35, float %8562, float %8553)  ; FMax(a,b)
  %8564 = call float @dx.op.binary.f32(i32 36, float %8558, float %8559)  ; FMin(a,b)
  %8565 = call float @dx.op.binary.f32(i32 36, float %8557, float %8564)  ; FMin(a,b)
  %8566 = call float @dx.op.binary.f32(i32 36, float %8565, float %8560)  ; FMin(a,b)
  %8567 = fmul fast float %8563, 2.550000e+02
  %8568 = fadd fast float %8567, 0x3F70101020000000
  %8569 = fptoui float %8568 to i32
  %8570 = fmul fast float %8566, 2.550000e+02
  %8571 = fadd fast float %8570, 0x3F70101020000000
  %8572 = fptoui float %8571 to i32
  %8573 = icmp ult i32 %8569, %8572
  br i1 %8573, label %8574, label %8743

; <label>:8574                                    ; preds = %8531
  %8575 = fcmp fast ogt float %88, 9.843750e-01
  %8576 = fadd fast float %7369, -4.000000e+00
  %8577 = select i1 %8575, float -4.000000e+00, float %8576
  %8578 = call float @dx.op.binary.f32(i32 35, float %8577, float 0.000000e+00)  ; FMax(a,b)
  %8579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8580 = extractvalue %dx.types.CBufRet.f32 %8579, 0
  %8581 = fadd fast float %8580, %8578
  %8582 = extractvalue %dx.types.CBufRet.f32 %8579, 2
  %8583 = fmul fast float %8581, %8582
  %8584 = call float @dx.op.unary.f32(i32 23, float %8583)  ; Log(value)
  %8585 = extractvalue %dx.types.CBufRet.f32 %8579, 3
  %8586 = fmul fast float %8585, %8584
  %8587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8588 = extractvalue %dx.types.CBufRet.f32 %8587, 2
  %8589 = fmul fast float %8586, %8588
  %8590 = call float @dx.op.unary.f32(i32 7, float %8589)  ; Saturate(value)
  %8591 = uitofp i32 %8569 to float
  %8592 = uitofp i32 %8572 to float
  %8593 = fadd fast float %8591, 5.000000e-01
  %8594 = fadd fast float %8592, 5.000000e-01
  %8595 = fmul fast float %8588, %8593
  %8596 = fmul fast float %8588, %8594
  %8597 = fadd fast float %8595, 0x3F0FFB4800000000
  %8598 = fadd fast float %8596, 0xBF0FFB4800000000
  %8599 = call float @dx.op.binary.f32(i32 35, float %8590, float %8597)  ; FMax(a,b)
  %8600 = call float @dx.op.binary.f32(i32 36, float %8599, float %8598)  ; FMin(a,b)
  %8601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8602 = extractvalue %dx.types.CBufRet.f32 %8601, 1
  %8603 = extractvalue %dx.types.CBufRet.f32 %8601, 2
  %8604 = extractvalue %dx.types.CBufRet.f32 %8601, 0
  %8605 = select i1 %7107, float %8604, float 0.000000e+00
  %8606 = fmul fast float %8602, %8600
  %8607 = fadd fast float %8605, %8606
  %8608 = fadd fast float %8605, %8603
  %8609 = fsub fast float %8602, %8603
  %8610 = fadd fast float %8609, %8605
  %8611 = call float @dx.op.binary.f32(i32 35, float %8607, float %8608)  ; FMax(a,b)
  %8612 = call float @dx.op.binary.f32(i32 36, float %8611, float %8610)  ; FMin(a,b)
  %8613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %8544, float %8545, float %8612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8614 = extractvalue %dx.types.ResRet.f32 %8613, 0
  %8615 = extractvalue %dx.types.ResRet.f32 %8613, 1
  %8616 = extractvalue %dx.types.ResRet.f32 %8613, 2
  %8617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8618 = extractvalue %dx.types.CBufRet.i32 %8617, 0
  %8619 = extractvalue %dx.types.CBufRet.i32 %8617, 1
  %8620 = uitofp i32 %8618 to float
  %8621 = uitofp i32 %8619 to float
  %8622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8623 = extractvalue %dx.types.CBufRet.f32 %8622, 0
  %8624 = extractvalue %dx.types.CBufRet.f32 %8622, 1
  %8625 = fmul fast float %8620, %8544
  %8626 = fmul fast float %8621, %8545
  %8627 = fadd fast float %8625, -5.000000e-01
  %8628 = fadd fast float %8626, -5.000000e-01
  %8629 = call float @dx.op.unary.f32(i32 22, float %8627)  ; Frc(value)
  %8630 = call float @dx.op.unary.f32(i32 22, float %8628)  ; Frc(value)
  %8631 = fmul fast float %8629, %8629
  %8632 = fmul fast float %8631, %8629
  %8633 = fsub fast float 3.000000e+00, %8629
  %8634 = fmul fast float %8631, %8633
  %8635 = fmul fast float %8629, 3.000000e+00
  %8636 = fmul fast float %8632, 3.000000e+00
  %8637 = fmul fast float %8631, 6.000000e+00
  %8638 = fsub fast float %8636, %8637
  %8639 = fadd fast float %8638, 4.000000e+00
  %8640 = fmul fast float %8639, 0x3FC5555560000000
  %8641 = fmul fast float %8632, -3.000000e+00
  %8642 = fadd fast float %8631, %8629
  %8643 = fmul fast float %8642, 3.000000e+00
  %8644 = fadd fast float %8641, 1.000000e+00
  %8645 = fadd fast float %8644, %8643
  %8646 = fmul fast float %8632, 0x3FC5555560000000
  %8647 = fmul fast float %8630, %8630
  %8648 = fmul fast float %8647, %8630
  %8649 = fsub fast float 3.000000e+00, %8630
  %8650 = fmul fast float %8647, %8649
  %8651 = fmul fast float %8630, 3.000000e+00
  %8652 = fmul fast float %8648, 3.000000e+00
  %8653 = fmul fast float %8647, 6.000000e+00
  %8654 = fsub fast float %8652, %8653
  %8655 = fadd fast float %8654, 4.000000e+00
  %8656 = fmul fast float %8655, 0x3FC5555560000000
  %8657 = fmul fast float %8648, -3.000000e+00
  %8658 = fadd fast float %8647, %8630
  %8659 = fmul fast float %8658, 3.000000e+00
  %8660 = fadd fast float %8657, 1.000000e+00
  %8661 = fadd fast float %8660, %8659
  %8662 = fmul fast float %8648, 0x3FC5555560000000
  %8663 = fadd fast float %8629, 1.000000e+00
  %8664 = fsub fast float 1.000000e+00, %8635
  %8665 = fadd fast float %8664, %8634
  %8666 = fadd fast float %8665, %8639
  %8667 = fmul fast float %8666, 0x3FC5555560000000
  %8668 = fdiv fast float %8640, %8667
  %8669 = fsub fast float %8663, %8668
  %8670 = fsub fast float 1.000000e+00, %8629
  %8671 = fadd fast float %8645, %8632
  %8672 = fmul fast float %8671, 0x3FC5555560000000
  %8673 = fdiv fast float %8646, %8672
  %8674 = fadd fast float %8670, %8673
  %8675 = fadd fast float %8630, 1.000000e+00
  %8676 = fsub fast float 1.000000e+00, %8651
  %8677 = fadd fast float %8676, %8650
  %8678 = fadd fast float %8677, %8655
  %8679 = fmul fast float %8678, 0x3FC5555560000000
  %8680 = fdiv fast float %8656, %8679
  %8681 = fsub fast float %8675, %8680
  %8682 = fsub fast float 1.000000e+00, %8630
  %8683 = fadd fast float %8661, %8648
  %8684 = fmul fast float %8683, 0x3FC5555560000000
  %8685 = fdiv fast float %8662, %8684
  %8686 = fadd fast float %8685, %8682
  %8687 = fmul fast float %8669, %8623
  %8688 = fsub fast float %8544, %8687
  %8689 = fmul fast float %8674, %8623
  %8690 = fadd fast float %8689, %8544
  %8691 = fmul fast float %8686, %8624
  %8692 = fadd fast float %8691, %8545
  %8693 = fmul fast float %8681, %8624
  %8694 = fsub fast float %8545, %8693
  %8695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8688, float %8694, float %8612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8696 = extractvalue %dx.types.ResRet.f32 %8695, 0
  %8697 = extractvalue %dx.types.ResRet.f32 %8695, 1
  %8698 = extractvalue %dx.types.ResRet.f32 %8695, 2
  %8699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8690, float %8694, float %8612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8700 = extractvalue %dx.types.ResRet.f32 %8699, 0
  %8701 = extractvalue %dx.types.ResRet.f32 %8699, 1
  %8702 = extractvalue %dx.types.ResRet.f32 %8699, 2
  %8703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8688, float %8692, float %8612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8704 = extractvalue %dx.types.ResRet.f32 %8703, 0
  %8705 = extractvalue %dx.types.ResRet.f32 %8703, 1
  %8706 = extractvalue %dx.types.ResRet.f32 %8703, 2
  %8707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8690, float %8692, float %8612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8708 = extractvalue %dx.types.ResRet.f32 %8707, 0
  %8709 = extractvalue %dx.types.ResRet.f32 %8707, 1
  %8710 = extractvalue %dx.types.ResRet.f32 %8707, 2
  %8711 = fsub fast float %8704, %8696
  %8712 = fsub fast float %8705, %8697
  %8713 = fsub fast float %8706, %8698
  %8714 = fmul fast float %8711, %8684
  %8715 = fmul fast float %8712, %8684
  %8716 = fmul fast float %8713, %8684
  %8717 = fadd fast float %8714, %8696
  %8718 = fadd fast float %8715, %8697
  %8719 = fadd fast float %8716, %8698
  %8720 = fsub fast float %8708, %8700
  %8721 = fsub fast float %8709, %8701
  %8722 = fsub fast float %8710, %8702
  %8723 = fmul fast float %8720, %8684
  %8724 = fmul fast float %8721, %8684
  %8725 = fmul fast float %8722, %8684
  %8726 = fsub fast float %8700, %8717
  %8727 = fadd fast float %8726, %8723
  %8728 = fsub fast float %8701, %8718
  %8729 = fadd fast float %8728, %8724
  %8730 = fsub fast float %8702, %8719
  %8731 = fadd fast float %8730, %8725
  %8732 = fmul fast float %8727, %8672
  %8733 = fmul fast float %8729, %8672
  %8734 = fmul fast float %8731, %8672
  %8735 = fadd fast float %8732, %8717
  %8736 = fadd fast float %8733, %8718
  %8737 = fadd fast float %8734, %8719
  %8738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8739 = extractvalue %dx.types.CBufRet.f32 %8738, 1
  %8740 = fmul fast float %8735, %8739
  %8741 = fmul fast float %8736, %8739
  %8742 = fmul fast float %8737, %8739
  br label %8743

; <label>:8743                                    ; preds = %8574, %8531
  %8744 = phi float [ %8614, %8574 ], [ 1.000000e+00, %8531 ]
  %8745 = phi float [ %8615, %8574 ], [ 1.000000e+00, %8531 ]
  %8746 = phi float [ %8616, %8574 ], [ 1.000000e+00, %8531 ]
  %8747 = phi float [ %8740, %8574 ], [ 0.000000e+00, %8531 ]
  %8748 = phi float [ %8741, %8574 ], [ 0.000000e+00, %8531 ]
  %8749 = phi float [ %8742, %8574 ], [ 0.000000e+00, %8531 ]
  %8750 = fmul fast float %8747, %7085
  %8751 = fmul fast float %8748, %7085
  %8752 = fmul fast float %8749, %7085
  %8753 = fmul fast float %8744, %8538
  %8754 = call float @dx.op.dot3.f32(i32 55, float %8744, float %8745, float %8746, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8755 = call float @dx.op.dot3.f32(i32 55, float %8750, float %8751, float %8752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8756 = select i1 %250, float %8754, float %8744
  %8757 = select i1 %250, float %8754, float %8745
  %8758 = select i1 %250, float 1.000000e+00, float %8746
  %8759 = select i1 %250, float %8755, float %8750
  %8760 = select i1 %250, float 0.000000e+00, float %8751
  %8761 = select i1 %250, float 0.000000e+00, float %8752
  %8762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8763 = extractvalue %dx.types.CBufRet.i32 %8762, 3
  %8764 = and i32 %8763, 3
  %8765 = icmp ne i32 %8764, 0
  %8766 = and i32 %8763, 4
  %8767 = icmp ne i32 %8766, 0
  %8768 = and i1 %8765, %8767
  %8769 = and i1 %250, %8768
  br i1 %8769, label %8770, label %8776

; <label>:8770                                    ; preds = %8743
  %8771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8772 = extractvalue %dx.types.CBufRet.f32 %8771, 1
  %8773 = fadd fast float %8753, -1.000000e+00
  %8774 = fmul fast float %8772, %8773
  %8775 = fadd fast float %8774, 1.000000e+00
  br label %8776

; <label>:8776                                    ; preds = %8770, %8743
  %8777 = phi float [ %8775, %8770 ], [ %8753, %8743 ]
  %8778 = fadd fast float %8535, %8532
  %8779 = fmul fast float %8756, %8778
  %8780 = fadd fast float %8779, %8759
  %8781 = fadd fast float %8536, %8533
  %8782 = fmul fast float %8757, %8781
  %8783 = fadd fast float %8782, %8760
  %8784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8785 = extractvalue %dx.types.CBufRet.f32 %8784, 0
  br i1 %250, label %8786, label %8809

; <label>:8786                                    ; preds = %8776
  %8787 = fadd fast float %8780, %8783
  %8788 = fmul fast float %8785, %8787
  %8789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8790 = extractvalue %dx.types.CBufRet.f32 %8789, 3
  %8791 = extractvalue %dx.types.CBufRet.f32 %7089, 1
  %8792 = fsub fast float %7094, %7088
  %8793 = fadd fast float %8792, %7095
  %8794 = fsub fast float %8793, %8791
  %8795 = extractvalue %dx.types.CBufRet.f32 %7089, 2
  %8796 = fmul fast float %8794, %8795
  %8797 = call float @dx.op.unary.f32(i32 7, float %8796)  ; Saturate(value)
  %8798 = fsub fast float %8797, %8790
  %8799 = fmul fast float %8798, %8777
  %8800 = fadd fast float %8799, %8790
  %8801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8802 = extractvalue %dx.types.CBufRet.f32 %8801, 0
  %8803 = fsub fast float %8800, %8802
  %8804 = fmul fast float %8803, 1.000000e+01
  %8805 = call float @dx.op.unary.f32(i32 7, float %8804)  ; Saturate(value)
  %8806 = fmul fast float %8805, %7084
  %8807 = fadd fast float %8806, %7085
  %8808 = fmul fast float %8807, %8800
  br label %8833

; <label>:8809                                    ; preds = %8776
  %8810 = fadd fast float %8537, %8534
  %8811 = fmul fast float %8758, %8810
  %8812 = fadd fast float %8811, %8761
  %8813 = fmul fast float %8785, %8780
  %8814 = fmul fast float %8785, %8783
  %8815 = fmul fast float %8785, %8812
  %8816 = call float @dx.op.binary.f32(i32 35, float %8814, float %8815)  ; FMax(a,b)
  %8817 = call float @dx.op.binary.f32(i32 35, float %8813, float %8816)  ; FMax(a,b)
  %8818 = call float @dx.op.binary.f32(i32 35, float %8817, float %7085)  ; FMax(a,b)
  %8819 = fcmp fast ugt float %8818, 0x3F10000000000000
  br i1 %8819, label %8821, label %8820

; <label>:8820                                    ; preds = %8809
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8821

; <label>:8821                                    ; preds = %8820, %8809
  %8822 = add i32 %48, 356
  %8823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %8822, i32 undef)  ; BufferLoad(srv,index,wot)
  %8824 = extractvalue %dx.types.ResRet.i32 %8823, 0
  %8825 = and i32 %8824, 32
  %8826 = icmp eq i32 %8825, 0
  br i1 %8826, label %8833, label %8827

; <label>:8827                                    ; preds = %8821
  %8828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8829 = extractvalue %dx.types.CBufRet.f32 %8828, 0
  %8830 = fmul fast float %8829, 0x3FE99999A0000000
  %8831 = fadd fast float %8829, %8813
  %8832 = fadd fast float %8830, %8815
  br label %8833

; <label>:8833                                    ; preds = %8827, %8821, %8786
  %8834 = phi float [ %8788, %8786 ], [ %8831, %8827 ], [ %8813, %8821 ]
  %8835 = phi float [ %8808, %8786 ], [ %8814, %8827 ], [ %8814, %8821 ]
  %8836 = phi float [ %8807, %8786 ], [ %8832, %8827 ], [ %8815, %8821 ]
  %8837 = phi float [ %8807, %8786 ], [ %7085, %8827 ], [ %7085, %8821 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8838 = call float @dx.op.binary.f32(i32 36, float %8834, float 3.225500e+04)  ; FMin(a,b)
  %8839 = call float @dx.op.binary.f32(i32 36, float %8835, float 3.225500e+04)  ; FMin(a,b)
  %8840 = call float @dx.op.binary.f32(i32 36, float %8836, float 3.225500e+04)  ; FMin(a,b)
  %8841 = call float @dx.op.binary.f32(i32 36, float %8837, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8838)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8839)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8840)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8841)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!60}
!dx.entryPoints = !{!61}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !49, !52}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !27}
!27 = !{i32 0, i32 5}
!28 = !{i32 20, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !36}
!36 = !{i32 0, i32 14}
!37 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!38 = !{i32 29, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!39 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!40 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!43 = !{i32 34, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!44 = !{i32 35, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!45 = !{i32 36, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!46 = !{i32 37, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !36}
!47 = !{i32 38, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!49 = !{!50, !51}
!50 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!51 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!52 = !{!53, !54, !55, !56, !57, !58, !59}
!53 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!54 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!55 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!56 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!57 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!58 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!59 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!60 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!61 = !{void ()* @ps_main, !"ps_main", !62, !4, !86}
!62 = !{!63, !84, null}
!63 = !{!64, !67, !68, !70, !72, !73, !74, !75, !76, !77, !78, !79, !80, !82, !83}
!64 = !{i32 0, !"SV_Position", i8 9, i8 3, !65, i8 4, i32 1, i8 4, i32 0, i8 0, !66}
!65 = !{i32 0}
!66 = !{i32 3, i32 15}
!67 = !{i32 1, !"COLOR", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 1, i8 0, !66}
!68 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 2, i8 0, !69}
!69 = !{i32 3, i32 3}
!70 = !{i32 3, !"NORMAL", i8 9, i8 0, !65, i8 2, i32 1, i8 3, i32 3, i8 0, !71}
!71 = !{i32 3, i32 7}
!72 = !{i32 4, !"TANGENT", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 4, i8 0, !66}
!73 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !65, i8 2, i32 1, i8 3, i32 5, i8 0, !71}
!74 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 6, i8 0, !66}
!75 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !65, i8 2, i32 1, i8 3, i32 7, i8 0, !71}
!76 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 8, i8 0, !66}
!77 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !65, i8 2, i32 1, i8 2, i32 9, i8 0, !69}
!78 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 10, i8 0, !66}
!79 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 11, i8 0, !71}
!80 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !65, i8 1, i32 1, i8 1, i32 12, i8 0, !81}
!81 = !{i32 3, i32 1}
!82 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !65, i8 1, i32 1, i8 4, i32 13, i8 0, !81}
!83 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !65, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!84 = !{!85}
!85 = !{i32 0, !"SV_Target", i8 9, i8 16, !65, i8 0, i32 1, i8 4, i32 0, i8 0, !66}
!86 = !{i32 0, i64 16}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = !{!96, !96, i64 0}
!96 = !{!"int", !97, i64 0}
!97 = !{!"omnipotent char", !98, i64 0}
!98 = !{!"Simple C/C++ TBAA"}
!99 = !{!100, !102, !104, !106}
!100 = distinct !{!100, !101, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!101 = distinct !{!101, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!102 = distinct !{!102, !103, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!103 = distinct !{!103, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!104 = distinct !{!104, !105, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!105 = distinct !{!105, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!106 = distinct !{!106, !107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!107 = distinct !{!107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = !{!110, !110, i64 0}
!110 = !{!"float", !97, i64 0}
!111 = distinct !{!111, !89}
!112 = distinct !{!112, !89}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = !{!122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!122 = distinct !{!122, !123, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!123 = distinct !{!123, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!124 = distinct !{!124, !125, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!125 = distinct !{!125, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!126 = distinct !{!126, !125, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!127 = distinct !{!127, !128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!128 = distinct !{!128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!129 = distinct !{!129, !128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!130 = distinct !{!130, !128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!131 = distinct !{!131, !132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!132 = distinct !{!132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!133 = distinct !{!133, !132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!134 = distinct !{!134, !132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!135 = distinct !{!135, !136, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!136 = distinct !{!136, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"\01?sort@@YAXAIAM00@Z: %c"}
!139 = distinct !{!139, !"\01?sort@@YAXAIAM00@Z"}
!140 = !{!141, !142, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!141 = distinct !{!141, !139, !"\01?sort@@YAXAIAM00@Z: %a"}
!142 = distinct !{!142, !139, !"\01?sort@@YAXAIAM00@Z: %b"}
!143 = !{!142}
!144 = !{!141, !138, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!145 = !{!141}
!146 = !{!142, !138, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!147 = !{!148}
!148 = distinct !{!148, !149, !"\01?sort@@YAXAIAM00@Z: %c"}
!149 = distinct !{!149, !"\01?sort@@YAXAIAM00@Z"}
!150 = !{!151, !152, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!151 = distinct !{!151, !149, !"\01?sort@@YAXAIAM00@Z: %a"}
!152 = distinct !{!152, !149, !"\01?sort@@YAXAIAM00@Z: %b"}
!153 = !{!152}
!154 = !{!151, !148, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!155 = !{!151}
!156 = !{!152, !148, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 2}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}

