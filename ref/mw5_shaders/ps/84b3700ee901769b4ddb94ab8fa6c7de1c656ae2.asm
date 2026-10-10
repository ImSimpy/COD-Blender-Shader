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
; shader hash: 01d956820eab1d591958bbf0900de82e
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
  %444 = add i32 %48, 488
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
  br i1 %500, label %1119, label %501

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
  %605 = add i32 %48, 424
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
  %657 = add i32 %48, 408
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
  %681 = add i32 %48, 360
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
  %704 = add i32 %48, 440
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
  %902 = add i32 %48, 376
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
  %986 = add i32 %48, 392
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
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = and i32 %1023, 1024
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1056, label %1026

; <label>:1026                                    ; preds = %1018
  %1027 = add i32 %48, 152
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = and i32 %1029, 255
  %1031 = uitofp i32 %1030 to float
  %1032 = fmul fast float %1031, 0x3F70101020000000
  %1033 = lshr i32 %1029, 8
  %1034 = and i32 %1033, 255
  %1035 = uitofp i32 %1034 to float
  %1036 = fmul fast float %1035, 0x3F70101020000000
  %1037 = lshr i32 %1029, 16
  %1038 = and i32 %1037, 255
  %1039 = uitofp i32 %1038 to float
  %1040 = fmul fast float %1039, 0x3F70101020000000
  %1041 = fmul fast float %1032, %1032
  %1042 = fmul fast float %1036, %1036
  %1043 = fmul fast float %1040, %1040
  %1044 = add i32 %48, 456
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = add i32 %1046, 0
  %1048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1047, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1049 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1048, %dx.types.Handle %99, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = fmul fast float %1041, %1050
  %1054 = fmul fast float %1042, %1051
  %1055 = fmul fast float %1043, %1052
  br label %1056

; <label>:1056                                    ; preds = %1026, %1018
  %1057 = phi float [ %1053, %1026 ], [ 0.000000e+00, %1018 ]
  %1058 = phi float [ %1054, %1026 ], [ 0.000000e+00, %1018 ]
  %1059 = phi float [ %1055, %1026 ], [ 0.000000e+00, %1018 ]
  %1060 = fcmp fast ogt float %1057, 0.000000e+00
  %1061 = fcmp fast ogt float %1058, 0.000000e+00
  %1062 = fcmp fast ogt float %1059, 0.000000e+00
  %1063 = call float @dx.op.unary.f32(i32 23, float %1057)  ; Log(value)
  %1064 = call float @dx.op.unary.f32(i32 23, float %1058)  ; Log(value)
  %1065 = call float @dx.op.unary.f32(i32 23, float %1059)  ; Log(value)
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = lshr i32 %1067, 7
  %1069 = and i32 %1068, 32752
  %1070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1069)  ; LegacyF16ToF32(value)
  %1071 = fmul fast float %1063, 0xBFE62E4300000000
  %1072 = fmul fast float %1071, %1070
  %1073 = fmul fast float %1064, 0xBFE62E4300000000
  %1074 = fmul fast float %1073, %1070
  %1075 = fmul fast float %1065, 0xBFE62E4300000000
  %1076 = fmul fast float %1075, %1070
  %1077 = select i1 %1060, float %1072, float 1.270000e+02
  %1078 = select i1 %1061, float %1074, float 1.270000e+02
  %1079 = select i1 %1062, float %1076, float 1.270000e+02
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = and i32 %1081, 10240
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %1104, label %1084

; <label>:1084                                    ; preds = %1056
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = and i32 %1086, 2048
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1104, label %1089

; <label>:1089                                    ; preds = %1084
  %1090 = add i32 %48, 472
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = add i32 %1092, 0
  %1094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1095 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1094, %dx.types.Handle %99, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 3
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = shl i32 %1098, 4
  %1100 = and i32 %1099, 32752
  %1101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1100)  ; LegacyF16ToF32(value)
  %1102 = fmul fast float %1101, %1096
  %1103 = call float @dx.op.binary.f32(i32 35, float %1102, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1104

; <label>:1104                                    ; preds = %1089, %1084, %1056
  %1105 = phi float [ %1103, %1089 ], [ 0x3F70101020000000, %1084 ], [ 0x3F70101020000000, %1056 ]
  %1106 = add i32 %48, 96
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 255
  %1110 = uitofp i32 %1109 to float
  %1111 = lshr i32 %1108, 8
  %1112 = and i32 %1111, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = call float @dx.op.dot3.f32(i32 55, float %891, float %892, float %893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1115 = fmul fast float %1113, %1114
  %1116 = fadd fast float %1115, %1110
  %1117 = fmul fast float %1116, 0x3F70101020000000
  %1118 = call float @dx.op.unary.f32(i32 7, float %1117)  ; Saturate(value)
  br label %1119

; <label>:1119                                    ; preds = %1104, %486
  %1120 = phi float [ 0.000000e+00, %486 ], [ %972, %1104 ]
  %1121 = phi float [ 0.000000e+00, %486 ], [ %973, %1104 ]
  %1122 = phi float [ 0.000000e+00, %486 ], [ %891, %1104 ]
  %1123 = phi float [ 0.000000e+00, %486 ], [ %892, %1104 ]
  %1124 = phi float [ 0.000000e+00, %486 ], [ %893, %1104 ]
  %1125 = phi float [ 0.000000e+00, %486 ], [ %1019, %1104 ]
  %1126 = phi float [ 0.000000e+00, %486 ], [ %1020, %1104 ]
  %1127 = phi float [ 0.000000e+00, %486 ], [ %1021, %1104 ]
  %1128 = phi float [ 0.000000e+00, %486 ], [ %1077, %1104 ]
  %1129 = phi float [ 0.000000e+00, %486 ], [ %1078, %1104 ]
  %1130 = phi float [ 0.000000e+00, %486 ], [ %1079, %1104 ]
  %1131 = phi float [ 0.000000e+00, %486 ], [ %877, %1104 ]
  %1132 = phi float [ 0.000000e+00, %486 ], [ %673, %1104 ]
  %1133 = phi float [ 0.000000e+00, %486 ], [ %971, %1104 ]
  %1134 = phi float [ 0.000000e+00, %486 ], [ %974, %1104 ]
  %1135 = phi float [ 0.000000e+00, %486 ], [ %1105, %1104 ]
  %1136 = phi float [ 0.000000e+00, %486 ], [ %1118, %1104 ]
  br i1 %434, label %2008, label %1137

; <label>:1137                                    ; preds = %1119
  %1138 = icmp ult i32 %492, 2
  %1139 = add i32 %48, 40
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = add i32 %48, 44
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = or i32 %1144, %1141
  %1146 = icmp eq i32 %1145, 0
  br i1 %1146, label %2008, label %1147

; <label>:1147                                    ; preds = %1137
  %1148 = and i32 %1141, 262144
  %1149 = icmp ne i32 %1148, 0
  %1150 = select i1 %1149, float %53, float 1.000000e+00
  %1151 = select i1 %1149, float %54, float 0.000000e+00
  %1152 = select i1 %1149, float %55, float 0.000000e+00
  %1153 = select i1 %1149, float %56, float 1.000000e+00
  %1154 = select i1 %1149, float %57, float %80
  %1155 = select i1 %1149, float %58, float %81
  %1156 = add i32 %48, 300
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = lshr i32 %1158, 16
  %1160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1159)  ; LegacyF16ToF32(value)
  %1161 = fmul fast float %1160, 0x3F50624DE0000000
  %1162 = add i32 %48, 104
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = lshr i32 %1164, 16
  %1166 = and i32 %1165, 255
  %1167 = lshr i32 %1164, 24
  %1168 = add i32 %48, 308
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = and i32 %1170, 65535
  %1172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1171)  ; LegacyF16ToF32(value)
  %1173 = lshr i32 %1170, 16
  %1174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1173)  ; LegacyF16ToF32(value)
  %1175 = add i32 %48, 48
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = lshr i32 %1177, 22
  %1179 = shl nuw nsw i32 %1178, 5
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = shl i32 %1177, 4
  %1182 = and i32 %1181, 32752
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  %1184 = lshr i32 %1177, 7
  %1185 = and i32 %1184, 32752
  %1186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1185)  ; LegacyF16ToF32(value)
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 3
  %1189 = fmul fast float %1188, 1.000000e+03
  %1190 = fmul fast float %344, %1189
  %1191 = call float @dx.op.unary.f32(i32 22, float %1190)  ; Frc(value)
  %1192 = fadd fast float %1191, %334
  %1193 = fmul fast float %345, %1189
  %1194 = call float @dx.op.unary.f32(i32 22, float %1193)  ; Frc(value)
  %1195 = fadd fast float %1194, %336
  %1196 = fmul fast float %1161, %1189
  %1197 = call float @dx.op.unary.f32(i32 22, float %1196)  ; Frc(value)
  %1198 = fmul fast float %1197, 0x401921FB60000000
  %1199 = fadd fast float %1198, %1180
  %1200 = call float @dx.op.unary.f32(i32 13, float %1199)  ; Sin(value)
  %1201 = call float @dx.op.unary.f32(i32 12, float %1199)  ; Cos(value)
  %1202 = fsub fast float -0.000000e+00, %1200
  %1203 = fadd fast float %1154, -5.000000e-01
  %1204 = fadd fast float %1155, -5.000000e-01
  %1205 = fmul fast float %1172, %1203
  %1206 = fmul fast float %1174, %1204
  %1207 = fadd fast float %1205, 5.000000e-01
  %1208 = fadd fast float %1206, 5.000000e-01
  %1209 = fmul fast float %1183, %1207
  %1210 = fmul fast float %1186, %1208
  %1211 = fmul fast float %1201, %1209
  %1212 = call float @dx.op.tertiary.f32(i32 46, float %1202, float %1210, float %1211)  ; FMad(a,b,c)
  %1213 = fmul fast float %1200, %1209
  %1214 = call float @dx.op.tertiary.f32(i32 46, float %1201, float %1210, float %1213)  ; FMad(a,b,c)
  %1215 = fadd fast float %1192, %1212
  %1216 = fadd fast float %1195, %1214
  %1217 = icmp ugt i32 %1166, 1
  %1218 = icmp ugt i32 %1164, 33554431
  %1219 = or i1 %1218, %1217
  br i1 %1219, label %1220, label %1245

; <label>:1220                                    ; preds = %1147
  %1221 = add i32 %48, 244
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = lshr i32 %1223, 16
  %1225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1224)  ; LegacyF16ToF32(value)
  %1226 = fmul fast float %1188, %1225
  %1227 = call float @dx.op.unary.f32(i32 22, float %1226)  ; Frc(value)
  %1228 = mul nuw nsw i32 %1166, %1167
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1227, %1229
  %1231 = call float @dx.op.unary.f32(i32 27, float %1230)  ; Round_ni(value)
  %1232 = fptoui float %1231 to i32
  %1233 = urem i32 %1232, %1166
  %1234 = udiv i32 %1232, %1167
  %1235 = call float @dx.op.unary.f32(i32 22, float %1215)  ; Frc(value)
  %1236 = call float @dx.op.unary.f32(i32 22, float %1216)  ; Frc(value)
  %1237 = uitofp i32 %1233 to float
  %1238 = uitofp i32 %1234 to float
  %1239 = fadd fast float %1235, %1237
  %1240 = fadd fast float %1236, %1238
  %1241 = uitofp i32 %1166 to float
  %1242 = uitofp i32 %1167 to float
  %1243 = fdiv fast float %1239, %1241
  %1244 = fdiv fast float %1240, %1242
  br label %1245

; <label>:1245                                    ; preds = %1220, %1147
  %1246 = phi float [ %1243, %1220 ], [ %1215, %1147 ]
  %1247 = phi float [ %1244, %1220 ], [ %1216, %1147 ]
  %1248 = and i32 %1141, 256
  %1249 = icmp eq i32 %1248, 0
  br i1 %1249, label %1296, label %1250

; <label>:1250                                    ; preds = %1245
  %1251 = add i32 %48, 428
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = add i32 %1253, 0
  %1255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1255, %dx.types.Handle %99, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = add i32 %48, 116
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = shl i32 %1260, 4
  %1262 = and i32 %1261, 32752
  %1263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1262)  ; LegacyF16ToF32(value)
  %1264 = lshr i32 %1260, 7
  %1265 = and i32 %1264, 32752
  %1266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1265)  ; LegacyF16ToF32(value)
  %1267 = fsub fast float 1.000000e+00, %489
  %1268 = call float @dx.op.binary.f32(i32 35, float %1267, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1269 = bitcast float %489 to i32
  %1270 = sitofp i32 %1269 to float
  %1271 = fadd fast float %1270, 0xC1CFBF8940000000
  %1272 = fmul fast float %1266, %1271
  %1273 = fadd fast float %1272, 0x41CFBF8940000000
  %1274 = fptosi float %1273 to i32
  %1275 = bitcast i32 %1274 to float
  %1276 = bitcast float %1268 to i32
  %1277 = sitofp i32 %1276 to float
  %1278 = fadd fast float %1277, 0xC1CFBF8940000000
  %1279 = fmul fast float %1278, %1266
  %1280 = fadd fast float %1279, 0x41CFBF8940000000
  %1281 = fptosi float %1280 to i32
  %1282 = bitcast i32 %1281 to float
  %1283 = fmul fast float %1275, %1263
  %1284 = fmul fast float %1282, %1263
  %1285 = fsub fast float %1268, %1283
  %1286 = fadd fast float %1284, %1268
  %1287 = call float @dx.op.unary.f32(i32 7, float %1285)  ; Saturate(value)
  %1288 = call float @dx.op.unary.f32(i32 7, float %1286)  ; Saturate(value)
  %1289 = fsub fast float %1257, %1287
  %1290 = fsub fast float %1288, %1287
  %1291 = bitcast float %1290 to i32
  %1292 = sub nsw i32 2129859010, %1291
  %1293 = bitcast i32 %1292 to float
  %1294 = fmul fast float %1293, %1289
  %1295 = call float @dx.op.unary.f32(i32 7, float %1294)  ; Saturate(value)
  br label %1296

; <label>:1296                                    ; preds = %1250, %1245
  %1297 = phi float [ %1295, %1250 ], [ %489, %1245 ]
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = and i32 %1299, 128
  %1301 = icmp eq i32 %1300, 0
  br i1 %1301, label %1318, label %1302

; <label>:1302                                    ; preds = %1296
  %1303 = add i32 %48, 412
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = add i32 %1305, 0
  %1307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1308 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1307, %dx.types.Handle %99, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1309 = extractvalue %dx.types.ResRet.f32 %1308, 0
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = and i32 %1311, 524288
  %1313 = icmp ne i32 %1312, 0
  %1314 = fcmp fast ogt float %1309, 0x3FE0101020000000
  %1315 = select i1 %1314, float 1.000000e+00, float 0.000000e+00
  %1316 = select i1 %1313, float %1315, float %1309
  %1317 = fmul fast float %1316, %1297
  br label %1318

; <label>:1318                                    ; preds = %1302, %1296
  %1319 = phi float [ %1317, %1302 ], [ %1297, %1296 ]
  %1320 = fcmp fast ult float %1319, 0x3F70101020000000
  br i1 %1320, label %2008, label %1321

; <label>:1321                                    ; preds = %1318
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = and i32 %1323, 16
  %1325 = icmp eq i32 %1324, 0
  br i1 %1325, label %1524, label %1326

; <label>:1326                                    ; preds = %1321
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = add i32 %48, 364
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = add i32 %1331, 0
  %1333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1332, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1334 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1333, %dx.types.Handle %98, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1335 = extractvalue %dx.types.ResRet.f32 %1334, 0
  %1336 = extractvalue %dx.types.ResRet.f32 %1334, 1
  %1337 = extractvalue %dx.types.ResRet.f32 %1334, 2
  %1338 = extractvalue %dx.types.ResRet.f32 %1334, 3
  %1339 = and i32 %1328, 255
  %1340 = uitofp i32 %1339 to float
  %1341 = lshr i32 %1328, 8
  %1342 = and i32 %1341, 255
  %1343 = uitofp i32 %1342 to float
  %1344 = fmul fast float %1338, %1340
  %1345 = fadd fast float %1344, %1343
  %1346 = fmul fast float %1345, 0x3F70101000000000
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = and i32 %1348, 512
  %1350 = icmp eq i32 %1349, 0
  br i1 %1350, label %1359, label %1351

; <label>:1351                                    ; preds = %1326
  %1352 = add i32 %48, 444
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = add i32 %1354, 0
  %1356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1355, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1357 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1356, %dx.types.Handle %99, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  br label %1359

; <label>:1359                                    ; preds = %1351, %1326
  %1360 = phi float [ %1358, %1351 ], [ 1.000000e+00, %1326 ]
  %1361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1362 = extractvalue %dx.types.ResRet.i32 %1361, 0
  %1363 = and i32 %1362, 33554432
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %1471, label %1365

; <label>:1365                                    ; preds = %1359
  %1366 = add i32 %48, 240
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = and i32 %1368, 65535
  %1370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1369)  ; LegacyF16ToF32(value)
  %1371 = lshr i32 %1368, 16
  %1372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1371)  ; LegacyF16ToF32(value)
  %1373 = add i32 %48, 244
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = and i32 %1375, 65535
  %1377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1376)  ; LegacyF16ToF32(value)
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = lshr i32 %1379, 24
  %1381 = uitofp i32 %1380 to float
  %1382 = fmul fast float %1381, 0x3F70101020000000
  %1383 = and i32 %1379, 255
  %1384 = uitofp i32 %1383 to float
  %1385 = fmul fast float %1384, 0x3F70101020000000
  %1386 = lshr i32 %1379, 8
  %1387 = and i32 %1386, 255
  %1388 = uitofp i32 %1387 to float
  %1389 = fmul fast float %1388, 0x3F70101020000000
  %1390 = lshr i32 %1379, 16
  %1391 = and i32 %1390, 255
  %1392 = uitofp i32 %1391 to float
  %1393 = fmul fast float %1392, 0x3F70101020000000
  %1394 = add i32 %48, 236
  %1395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = lshr i32 %1396, 24
  %1398 = uitofp i32 %1397 to float
  %1399 = fmul fast float %1398, 0x3F70101020000000
  %1400 = and i32 %1396, 255
  %1401 = uitofp i32 %1400 to float
  %1402 = fmul fast float %1401, 0x3F70101020000000
  %1403 = lshr i32 %1396, 8
  %1404 = and i32 %1403, 255
  %1405 = uitofp i32 %1404 to float
  %1406 = fmul fast float %1405, 0x3F70101020000000
  %1407 = lshr i32 %1396, 16
  %1408 = and i32 %1407, 255
  %1409 = uitofp i32 %1408 to float
  %1410 = fmul fast float %1409, 0x3F70101020000000
  %1411 = bitcast float %1335 to i32
  %1412 = ashr i32 %1411, 1
  %1413 = sub nsw i32 1597463174, %1412
  %1414 = bitcast i32 %1413 to float
  %1415 = fmul fast float %1335, 5.000000e-01
  %1416 = fmul fast float %1414, %1414
  %1417 = fmul fast float %1416, %1415
  %1418 = fsub fast float 1.500000e+00, %1417
  %1419 = fmul fast float %1414, %1335
  %1420 = fmul fast float %1419, %1418
  %1421 = bitcast float %1336 to i32
  %1422 = ashr i32 %1421, 1
  %1423 = sub nsw i32 1597463174, %1422
  %1424 = bitcast i32 %1423 to float
  %1425 = fmul fast float %1336, 5.000000e-01
  %1426 = fmul fast float %1424, %1424
  %1427 = fmul fast float %1426, %1425
  %1428 = fsub fast float 1.500000e+00, %1427
  %1429 = fmul fast float %1424, %1336
  %1430 = fmul fast float %1429, %1428
  %1431 = bitcast float %1337 to i32
  %1432 = ashr i32 %1431, 1
  %1433 = sub nsw i32 1597463174, %1432
  %1434 = bitcast i32 %1433 to float
  %1435 = fmul fast float %1337, 5.000000e-01
  %1436 = fmul fast float %1434, %1434
  %1437 = fmul fast float %1436, %1435
  %1438 = fsub fast float 1.500000e+00, %1437
  %1439 = fmul fast float %1434, %1337
  %1440 = fmul fast float %1439, %1438
  %1441 = fsub fast float %1420, %1402
  %1442 = fsub fast float %1430, %1406
  %1443 = fsub fast float %1440, %1410
  %1444 = fmul fast float %1441, %1370
  %1445 = fmul fast float %1442, %1372
  %1446 = fmul fast float %1443, %1377
  %1447 = fadd fast float %1444, %1385
  %1448 = fadd fast float %1445, %1389
  %1449 = fadd fast float %1446, %1393
  %1450 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  %1451 = call float @dx.op.unary.f32(i32 7, float %1448)  ; Saturate(value)
  %1452 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  %1453 = fmul fast float %1450, %1450
  %1454 = fmul fast float %1451, %1451
  %1455 = fmul fast float %1452, %1452
  %1456 = fsub fast float %1453, %1335
  %1457 = fsub fast float %1454, %1336
  %1458 = fsub fast float %1455, %1337
  %1459 = fmul fast float %1456, %1360
  %1460 = fmul fast float %1457, %1360
  %1461 = fmul fast float %1458, %1360
  %1462 = fadd fast float %1459, %1335
  %1463 = fadd fast float %1460, %1336
  %1464 = fadd fast float %1461, %1337
  %1465 = fadd fast float %1382, %1346
  %1466 = fsub fast float %1465, %1399
  %1467 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  %1468 = fsub fast float %1467, %1346
  %1469 = fmul fast float %1468, %1360
  %1470 = fadd fast float %1469, %1346
  br label %1524

; <label>:1471                                    ; preds = %1359
  %1472 = and i32 %1362, 134217728
  %1473 = icmp eq i32 %1472, 0
  br i1 %1473, label %1508, label %1474

; <label>:1474                                    ; preds = %1471
  %1475 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %1476 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %1477 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %1478 = fadd fast float %1475, -5.000000e-01
  %1479 = fadd fast float %1476, -5.000000e-01
  %1480 = fadd fast float %1477, -5.000000e-01
  %1481 = fmul fast float %1478, %1360
  %1482 = fmul fast float %1479, %1360
  %1483 = fmul fast float %1480, %1360
  %1484 = fadd fast float %1481, 5.000000e-01
  %1485 = fadd fast float %1482, 5.000000e-01
  %1486 = fadd fast float %1483, 5.000000e-01
  %1487 = call float @dx.op.unary.f32(i32 24, float %1335)  ; Sqrt(value)
  %1488 = call float @dx.op.unary.f32(i32 24, float %1336)  ; Sqrt(value)
  %1489 = call float @dx.op.unary.f32(i32 24, float %1337)  ; Sqrt(value)
  %1490 = fmul fast float %1484, 2.000000e+00
  %1491 = fsub fast float 1.000000e+00, %1490
  %1492 = fmul fast float %1491, %1487
  %1493 = fadd fast float %1492, %1490
  %1494 = fmul fast float %1493, %1487
  %1495 = fmul fast float %1485, 2.000000e+00
  %1496 = fsub fast float 1.000000e+00, %1495
  %1497 = fmul fast float %1496, %1488
  %1498 = fadd fast float %1497, %1495
  %1499 = fmul fast float %1498, %1488
  %1500 = fmul fast float %1486, 2.000000e+00
  %1501 = fsub fast float 1.000000e+00, %1500
  %1502 = fmul fast float %1501, %1489
  %1503 = fadd fast float %1502, %1500
  %1504 = fmul fast float %1503, %1489
  %1505 = fmul fast float %1494, %1494
  %1506 = fmul fast float %1499, %1499
  %1507 = fmul fast float %1504, %1504
  br label %1524

; <label>:1508                                    ; preds = %1471
  %1509 = fmul fast float %321, %321
  %1510 = fmul fast float %325, %325
  %1511 = fmul fast float %329, %329
  %1512 = fadd fast float %1509, -1.000000e+00
  %1513 = fadd fast float %1510, -1.000000e+00
  %1514 = fadd fast float %1511, -1.000000e+00
  %1515 = fmul fast float %1360, %1512
  %1516 = fmul fast float %1360, %1513
  %1517 = fmul fast float %1360, %1514
  %1518 = fadd fast float %1515, 1.000000e+00
  %1519 = fadd fast float %1516, 1.000000e+00
  %1520 = fadd fast float %1517, 1.000000e+00
  %1521 = fmul fast float %1518, %1335
  %1522 = fmul fast float %1519, %1336
  %1523 = fmul fast float %1520, %1337
  br label %1524

; <label>:1524                                    ; preds = %1508, %1474, %1365, %1321
  %1525 = phi float [ %1470, %1365 ], [ %1346, %1474 ], [ %1346, %1508 ], [ 0x3FA23C0BE0000000, %1321 ]
  %1526 = phi float [ %1462, %1365 ], [ %1505, %1474 ], [ %1521, %1508 ], [ 1.000000e+00, %1321 ]
  %1527 = phi float [ %1463, %1365 ], [ %1506, %1474 ], [ %1522, %1508 ], [ 1.000000e+00, %1321 ]
  %1528 = phi float [ %1464, %1365 ], [ %1507, %1474 ], [ %1523, %1508 ], [ 1.000000e+00, %1321 ]
  %1529 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.i32 %1529, 1
  %1531 = and i32 %1530, 1
  %1532 = icmp ne i32 %1531, 0
  %1533 = add i32 %48, 356
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1533, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 32
  %1537 = icmp ne i32 %1536, 0
  %1538 = and i1 %1532, %1537
  %1539 = select i1 %1538, float 1.000000e+00, float %1526
  %1540 = select i1 %1538, float 0x3FD3333340000000, float %1527
  %1541 = select i1 %1538, float 0x3FD3333340000000, float %1528
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, 32
  %1545 = icmp eq i32 %1544, 0
  br i1 %1545, label %1618, label %1546

; <label>:1546                                    ; preds = %1524
  %1547 = add i32 %48, 108
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1547, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = add i32 %48, 380
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = add i32 %1552, 0
  %1554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1553, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1555 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1554, %dx.types.Handle %98, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1556 = extractvalue %dx.types.ResRet.f32 %1555, 0
  %1557 = extractvalue %dx.types.ResRet.f32 %1555, 1
  %1558 = extractvalue %dx.types.ResRet.f32 %1555, 2
  %1559 = extractvalue %dx.types.ResRet.f32 %1555, 3
  %1560 = and i32 %1549, 255
  %1561 = uitofp i32 %1560 to float
  %1562 = lshr i32 %1549, 8
  %1563 = and i32 %1562, 255
  %1564 = uitofp i32 %1563 to float
  %1565 = lshr i32 %1549, 16
  %1566 = and i32 %1565, 255
  %1567 = uitofp i32 %1566 to float
  %1568 = fmul fast float %1567, 0x3F70101000000000
  %1569 = fmul fast float %1556, %1561
  %1570 = fadd fast float %1569, %1564
  %1571 = fmul fast float %1570, 0x3F70101000000000
  %1572 = fadd fast float %1557, -5.000000e-01
  %1573 = fadd fast float %1559, -5.000000e-01
  %1574 = fmul fast float %1572, %1568
  %1575 = fmul fast float %1573, %1568
  %1576 = fadd fast float %1574, 5.000000e-01
  %1577 = fadd fast float %1575, 5.000000e-01
  %1578 = fmul fast float %1576, 2.000000e+00
  %1579 = fadd fast float %1578, -1.000000e+00
  %1580 = fmul fast float %1577, 2.000000e+00
  %1581 = fadd fast float %1580, -1.000000e+00
  %1582 = fadd fast float %1579, %1581
  %1583 = fmul fast float %1582, 5.000000e-01
  %1584 = fsub fast float %1579, %1581
  %1585 = fmul fast float %1584, 5.000000e-01
  %1586 = call float @dx.op.unary.f32(i32 6, float %1583)  ; FAbs(value)
  %1587 = fsub fast float 1.000000e+00, %1586
  %1588 = call float @dx.op.unary.f32(i32 6, float %1585)  ; FAbs(value)
  %1589 = fsub fast float %1587, %1588
  %1590 = call float @dx.op.dot3.f32(i32 55, float %1583, float %1585, float %1589, float %1583, float %1585, float %1589)  ; Dot3(ax,ay,az,bx,by,bz)
  %1591 = call float @dx.op.unary.f32(i32 25, float %1590)  ; Rsqrt(value)
  %1592 = fmul fast float %1583, %1591
  %1593 = fmul fast float %1585, %1591
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 67108864
  %1597 = icmp eq i32 %1596, 0
  br i1 %1597, label %1614, label %1598

; <label>:1598                                    ; preds = %1546
  %1599 = add i32 %48, 296
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 65535
  %1603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1602)  ; LegacyF16ToF32(value)
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = and i32 %1605, 65535
  %1607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1606)  ; LegacyF16ToF32(value)
  %1608 = lshr i32 %1601, 16
  %1609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1608)  ; LegacyF16ToF32(value)
  %1610 = fsub fast float %1571, %1609
  %1611 = fmul fast float %1610, %1603
  %1612 = fadd fast float %1611, %1607
  %1613 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  br label %1614

; <label>:1614                                    ; preds = %1598, %1546
  %1615 = phi float [ %1613, %1598 ], [ %1571, %1546 ]
  %1616 = call float @dx.op.dot2.f32(i32 54, float %1592, float %1593, float %1150, float %1151)  ; Dot2(ax,ay,bx,by)
  %1617 = call float @dx.op.dot2.f32(i32 54, float %1592, float %1593, float %1152, float %1153)  ; Dot2(ax,ay,bx,by)
  br label %1618

; <label>:1618                                    ; preds = %1614, %1524
  %1619 = phi float [ %1615, %1614 ], [ 0x3FD6666660000000, %1524 ]
  %1620 = phi float [ %1616, %1614 ], [ 0.000000e+00, %1524 ]
  %1621 = phi float [ %1617, %1614 ], [ 0.000000e+00, %1524 ]
  %1622 = phi float [ %1558, %1614 ], [ 1.000000e+00, %1524 ]
  %1623 = add i32 %48, 176
  %1624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1623, i32 undef)  ; BufferLoad(srv,index,wot)
  %1625 = extractvalue %dx.types.ResRet.i32 %1624, 0
  %1626 = lshr i32 %1625, 22
  %1627 = shl nuw nsw i32 %1626, 5
  %1628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1627)  ; LegacyF16ToF32(value)
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = and i32 %1630, 64
  %1632 = icmp eq i32 %1631, 0
  br i1 %1632, label %1666, label %1633

; <label>:1633                                    ; preds = %1618
  %1634 = add i32 %48, 396
  %1635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1634, i32 undef)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.i32 %1635, 0
  %1637 = add i32 %1636, 0
  %1638 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1637, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1640 = extractvalue %dx.types.ResRet.i32 %1639, 0
  %1641 = and i32 %1640, 131072
  %1642 = icmp eq i32 %1641, 0
  %1643 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1638, %dx.types.Handle %98, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1644 = extractvalue %dx.types.ResRet.f32 %1643, 0
  %1645 = extractvalue %dx.types.ResRet.f32 %1643, 1
  %1646 = extractvalue %dx.types.ResRet.f32 %1643, 2
  %1647 = fmul fast float %1644, %309
  %1648 = fmul fast float %1645, %312
  %1649 = fmul fast float %1646, %315
  br i1 %1642, label %1656, label %1650

; <label>:1650                                    ; preds = %1633
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 0
  %1653 = fmul fast float %1652, %1647
  %1654 = fmul fast float %1652, %1648
  %1655 = fmul fast float %1652, %1649
  br label %1656

; <label>:1656                                    ; preds = %1650, %1633
  %1657 = phi float [ %1653, %1650 ], [ %1647, %1633 ]
  %1658 = phi float [ %1654, %1650 ], [ %1648, %1633 ]
  %1659 = phi float [ %1655, %1650 ], [ %1649, %1633 ]
  %1660 = fmul fast float %1657, %1628
  %1661 = select i1 %250, float %1660, float %1657
  %1662 = call float @dx.op.dot3.f32(i32 55, float %1661, float %1658, float %1659, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1663 = select i1 %250, float 0.000000e+00, float %1657
  %1664 = select i1 %250, float %1662, float %1658
  %1665 = select i1 %250, float 0.000000e+00, float %1659
  br label %1666

; <label>:1666                                    ; preds = %1656, %1618
  %1667 = phi float [ %1663, %1656 ], [ 0.000000e+00, %1618 ]
  %1668 = phi float [ %1664, %1656 ], [ 0.000000e+00, %1618 ]
  %1669 = phi float [ %1665, %1656 ], [ 0.000000e+00, %1618 ]
  %1670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.i32 %1670, 0
  %1672 = and i32 %1671, 1024
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1704, label %1674

; <label>:1674                                    ; preds = %1666
  %1675 = add i32 %48, 168
  %1676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1675, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.i32 %1676, 0
  %1678 = and i32 %1677, 255
  %1679 = uitofp i32 %1678 to float
  %1680 = fmul fast float %1679, 0x3F70101020000000
  %1681 = lshr i32 %1677, 8
  %1682 = and i32 %1681, 255
  %1683 = uitofp i32 %1682 to float
  %1684 = fmul fast float %1683, 0x3F70101020000000
  %1685 = lshr i32 %1677, 16
  %1686 = and i32 %1685, 255
  %1687 = uitofp i32 %1686 to float
  %1688 = fmul fast float %1687, 0x3F70101020000000
  %1689 = fmul fast float %1680, %1680
  %1690 = fmul fast float %1684, %1684
  %1691 = fmul fast float %1688, %1688
  %1692 = add i32 %48, 460
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = add i32 %1694, 0
  %1696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1695, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1697 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1696, %dx.types.Handle %99, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1698 = extractvalue %dx.types.ResRet.f32 %1697, 0
  %1699 = extractvalue %dx.types.ResRet.f32 %1697, 1
  %1700 = extractvalue %dx.types.ResRet.f32 %1697, 2
  %1701 = fmul fast float %1689, %1698
  %1702 = fmul fast float %1690, %1699
  %1703 = fmul fast float %1691, %1700
  br label %1704

; <label>:1704                                    ; preds = %1674, %1666
  %1705 = phi float [ %1701, %1674 ], [ 0.000000e+00, %1666 ]
  %1706 = phi float [ %1702, %1674 ], [ 0.000000e+00, %1666 ]
  %1707 = phi float [ %1703, %1674 ], [ 0.000000e+00, %1666 ]
  %1708 = fcmp fast ogt float %1705, 0.000000e+00
  %1709 = fcmp fast ogt float %1706, 0.000000e+00
  %1710 = fcmp fast ogt float %1707, 0.000000e+00
  %1711 = call float @dx.op.unary.f32(i32 23, float %1705)  ; Log(value)
  %1712 = call float @dx.op.unary.f32(i32 23, float %1706)  ; Log(value)
  %1713 = call float @dx.op.unary.f32(i32 23, float %1707)  ; Log(value)
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1623, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = lshr i32 %1715, 7
  %1717 = and i32 %1716, 32752
  %1718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1717)  ; LegacyF16ToF32(value)
  %1719 = fmul fast float %1711, 0xBFE62E4300000000
  %1720 = fmul fast float %1719, %1718
  %1721 = fmul fast float %1712, 0xBFE62E4300000000
  %1722 = fmul fast float %1721, %1718
  %1723 = fmul fast float %1713, 0xBFE62E4300000000
  %1724 = fmul fast float %1723, %1718
  %1725 = select i1 %1708, float %1720, float 1.270000e+02
  %1726 = select i1 %1709, float %1722, float 1.270000e+02
  %1727 = select i1 %1710, float %1724, float 1.270000e+02
  %1728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1729 = extractvalue %dx.types.ResRet.i32 %1728, 0
  %1730 = and i32 %1729, 10240
  %1731 = icmp eq i32 %1730, 0
  br i1 %1731, label %1752, label %1732

; <label>:1732                                    ; preds = %1704
  %1733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.i32 %1733, 0
  %1735 = and i32 %1734, 2048
  %1736 = icmp eq i32 %1735, 0
  br i1 %1736, label %1752, label %1737

; <label>:1737                                    ; preds = %1732
  %1738 = add i32 %48, 476
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = add i32 %1740, 0
  %1742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1742, %dx.types.Handle %99, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1744 = extractvalue %dx.types.ResRet.f32 %1743, 3
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1623, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = shl i32 %1746, 4
  %1748 = and i32 %1747, 32752
  %1749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1748)  ; LegacyF16ToF32(value)
  %1750 = fmul fast float %1749, %1744
  %1751 = call float @dx.op.binary.f32(i32 35, float %1750, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1752

; <label>:1752                                    ; preds = %1737, %1732, %1704
  %1753 = phi float [ %1751, %1737 ], [ 0x3F70101020000000, %1732 ], [ 0x3F70101020000000, %1704 ]
  %1754 = add i32 %48, 112
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = and i32 %1756, 255
  %1758 = uitofp i32 %1757 to float
  %1759 = lshr i32 %1756, 8
  %1760 = and i32 %1759, 255
  %1761 = uitofp i32 %1760 to float
  %1762 = call float @dx.op.dot3.f32(i32 55, float %1539, float %1540, float %1541, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1763 = fmul fast float %1761, %1762
  %1764 = fadd fast float %1763, %1758
  %1765 = fmul fast float %1764, 0x3F70101020000000
  %1766 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  br i1 %1138, label %1767, label %1802

; <label>:1767                                    ; preds = %1752
  %1768 = fmul fast float %1753, 2.000000e+00
  %1769 = fcmp fast olt float %1725, 1.270000e+02
  %1770 = fcmp fast olt float %1726, 1.270000e+02
  %1771 = fcmp fast olt float %1727, 1.270000e+02
  %1772 = fmul fast float %1725, 0xBFF7154760000000
  %1773 = fmul fast float %1772, %1768
  %1774 = fmul fast float %1726, 0xBFF7154760000000
  %1775 = fmul fast float %1774, %1768
  %1776 = fmul fast float %1727, 0xBFF7154760000000
  %1777 = fmul fast float %1776, %1768
  %1778 = call float @dx.op.unary.f32(i32 21, float %1773)  ; Exp(value)
  %1779 = call float @dx.op.unary.f32(i32 21, float %1775)  ; Exp(value)
  %1780 = call float @dx.op.unary.f32(i32 21, float %1777)  ; Exp(value)
  %1781 = call float @dx.op.unary.f32(i32 7, float %1778)  ; Saturate(value)
  %1782 = call float @dx.op.unary.f32(i32 7, float %1779)  ; Saturate(value)
  %1783 = call float @dx.op.unary.f32(i32 7, float %1780)  ; Saturate(value)
  %1784 = fadd fast float %1781, -1.000000e+00
  %1785 = select i1 %1769, float %1784, float -1.000000e+00
  %1786 = fadd fast float %1782, -1.000000e+00
  %1787 = select i1 %1770, float %1786, float -1.000000e+00
  %1788 = fadd fast float %1783, -1.000000e+00
  %1789 = select i1 %1771, float %1788, float -1.000000e+00
  %1790 = fmul fast float %1785, %1319
  %1791 = fmul fast float %1787, %1319
  %1792 = fmul fast float %1789, %1319
  %1793 = fadd fast float %1790, 1.000000e+00
  %1794 = fadd fast float %1791, 1.000000e+00
  %1795 = fadd fast float %1792, 1.000000e+00
  %1796 = fmul fast float %1793, %1122
  %1797 = fmul fast float %1794, %1123
  %1798 = fmul fast float %1795, %1124
  %1799 = fmul fast float %1793, %1125
  %1800 = fmul fast float %1794, %1126
  %1801 = fmul fast float %1795, %1127
  br label %1802

; <label>:1802                                    ; preds = %1767, %1752
  %1803 = phi float [ %1796, %1767 ], [ %1122, %1752 ]
  %1804 = phi float [ %1797, %1767 ], [ %1123, %1752 ]
  %1805 = phi float [ %1798, %1767 ], [ %1124, %1752 ]
  %1806 = phi float [ %1799, %1767 ], [ %1125, %1752 ]
  %1807 = phi float [ %1800, %1767 ], [ %1126, %1752 ]
  %1808 = phi float [ %1801, %1767 ], [ %1127, %1752 ]
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = and i32 %1810, 3
  %1812 = icmp eq i32 %1811, 3
  br i1 %1812, label %1891, label %1813

; <label>:1813                                    ; preds = %1802
  %1814 = and i32 %1810, 16
  %1815 = icmp ne i32 %1814, 0
  %1816 = select i1 %1815, float %1319, float 0.000000e+00
  %1817 = icmp eq i32 %1811, 0
  br i1 %1817, label %1818, label %1846

; <label>:1818                                    ; preds = %1813
  %1819 = and i32 %1810, 64
  %1820 = icmp ne i32 %1819, 0
  %1821 = select i1 %1820, float %1319, float 0.000000e+00
  %1822 = fsub fast float %1539, %1803
  %1823 = fsub fast float %1540, %1804
  %1824 = fsub fast float %1541, %1805
  %1825 = fmul fast float %1816, %1822
  %1826 = fmul fast float %1816, %1823
  %1827 = fmul fast float %1816, %1824
  %1828 = fadd fast float %1825, %1803
  %1829 = fadd fast float %1826, %1804
  %1830 = fadd fast float %1827, %1805
  %1831 = fsub fast float %1525, %1131
  %1832 = fmul fast float %1816, %1831
  %1833 = fadd fast float %1832, %1131
  %1834 = fsub fast float %1667, %1806
  %1835 = fsub fast float %1668, %1807
  %1836 = fsub fast float %1669, %1808
  %1837 = fmul fast float %1821, %1834
  %1838 = fmul fast float %1821, %1835
  %1839 = fmul fast float %1821, %1836
  %1840 = fadd fast float %1837, %1806
  %1841 = fadd fast float %1838, %1807
  %1842 = fadd fast float %1839, %1808
  %1843 = fsub fast float %1766, %1136
  %1844 = fmul fast float %1816, %1843
  %1845 = fadd fast float %1844, %1136
  br label %1891

; <label>:1846                                    ; preds = %1813
  %1847 = icmp eq i32 %1811, 1
  br i1 %1847, label %1848, label %1861

; <label>:1848                                    ; preds = %1846
  %1849 = fadd fast float %1539, -1.000000e+00
  %1850 = fadd fast float %1540, -1.000000e+00
  %1851 = fadd fast float %1541, -1.000000e+00
  %1852 = fmul fast float %1816, %1849
  %1853 = fmul fast float %1816, %1850
  %1854 = fmul fast float %1816, %1851
  %1855 = fadd fast float %1852, 1.000000e+00
  %1856 = fadd fast float %1853, 1.000000e+00
  %1857 = fadd fast float %1854, 1.000000e+00
  %1858 = fmul fast float %1855, %1803
  %1859 = fmul fast float %1856, %1804
  %1860 = fmul fast float %1857, %1805
  br label %1891

; <label>:1861                                    ; preds = %1846
  %1862 = icmp eq i32 %1811, 2
  br i1 %1862, label %1863, label %1891

; <label>:1863                                    ; preds = %1861
  %1864 = call float @dx.op.unary.f32(i32 24, float %1539)  ; Sqrt(value)
  %1865 = call float @dx.op.unary.f32(i32 24, float %1540)  ; Sqrt(value)
  %1866 = call float @dx.op.unary.f32(i32 24, float %1541)  ; Sqrt(value)
  %1867 = fadd fast float %1864, -5.000000e-01
  %1868 = fadd fast float %1865, -5.000000e-01
  %1869 = fadd fast float %1866, -5.000000e-01
  %1870 = fmul fast float %1867, %1816
  %1871 = fmul fast float %1868, %1816
  %1872 = fmul fast float %1869, %1816
  %1873 = fadd fast float %1870, 5.000000e-01
  %1874 = fadd fast float %1871, 5.000000e-01
  %1875 = fadd fast float %1872, 5.000000e-01
  %1876 = fmul fast float %1873, 2.000000e+00
  %1877 = fsub fast float 1.000000e+00, %1876
  %1878 = fmul fast float %1877, %1803
  %1879 = fadd fast float %1878, %1876
  %1880 = fmul fast float %1879, %1803
  %1881 = fmul fast float %1874, 2.000000e+00
  %1882 = fsub fast float 1.000000e+00, %1881
  %1883 = fmul fast float %1882, %1804
  %1884 = fadd fast float %1883, %1881
  %1885 = fmul fast float %1884, %1804
  %1886 = fmul fast float %1875, 2.000000e+00
  %1887 = fsub fast float 1.000000e+00, %1886
  %1888 = fmul fast float %1887, %1805
  %1889 = fadd fast float %1888, %1886
  %1890 = fmul fast float %1889, %1805
  br label %1891

; <label>:1891                                    ; preds = %1863, %1861, %1848, %1818, %1802
  %1892 = phi float [ %1803, %1802 ], [ %1880, %1863 ], [ %1803, %1861 ], [ %1858, %1848 ], [ %1828, %1818 ]
  %1893 = phi float [ %1804, %1802 ], [ %1885, %1863 ], [ %1804, %1861 ], [ %1859, %1848 ], [ %1829, %1818 ]
  %1894 = phi float [ %1805, %1802 ], [ %1890, %1863 ], [ %1805, %1861 ], [ %1860, %1848 ], [ %1830, %1818 ]
  %1895 = phi float [ %1806, %1802 ], [ %1806, %1863 ], [ %1806, %1861 ], [ %1806, %1848 ], [ %1840, %1818 ]
  %1896 = phi float [ %1807, %1802 ], [ %1807, %1863 ], [ %1807, %1861 ], [ %1807, %1848 ], [ %1841, %1818 ]
  %1897 = phi float [ %1808, %1802 ], [ %1808, %1863 ], [ %1808, %1861 ], [ %1808, %1848 ], [ %1842, %1818 ]
  %1898 = phi float [ %1131, %1802 ], [ %1131, %1863 ], [ %1131, %1861 ], [ %1131, %1848 ], [ %1833, %1818 ]
  %1899 = phi float [ %1136, %1802 ], [ %1136, %1863 ], [ %1136, %1861 ], [ %1136, %1848 ], [ %1845, %1818 ]
  %1900 = and i32 %1810, 12
  %1901 = icmp eq i32 %1900, 12
  br i1 %1901, label %2008, label %1902

; <label>:1902                                    ; preds = %1891
  %1903 = and i32 %1810, 2097184
  %1904 = icmp eq i32 %1903, 2097184
  %1905 = select i1 %1904, float %1319, float 0.000000e+00
  %1906 = and i32 %1810, 4194336
  %1907 = icmp eq i32 %1906, 4194336
  %1908 = select i1 %1907, float %1319, float 0.000000e+00
  %1909 = and i32 %1810, 8388640
  %1910 = icmp eq i32 %1909, 8388640
  %1911 = select i1 %1910, float %1319, float 0.000000e+00
  %1912 = and i32 %1810, 1024
  %1913 = icmp ne i32 %1912, 0
  %1914 = select i1 %1913, float %1319, float 0.000000e+00
  %1915 = and i32 %1810, 2048
  %1916 = icmp ne i32 %1915, 0
  %1917 = select i1 %1916, float %1319, float 0.000000e+00
  %1918 = icmp eq i32 %1900, 0
  br i1 %1918, label %1919, label %1944

; <label>:1919                                    ; preds = %1902
  %1920 = fsub fast float %1620, %1120
  %1921 = fsub fast float %1621, %1121
  %1922 = fmul fast float %1905, %1920
  %1923 = fmul fast float %1905, %1921
  %1924 = fadd fast float %1922, %1120
  %1925 = fadd fast float %1923, %1121
  %1926 = fsub fast float %1622, %1134
  %1927 = fmul fast float %1908, %1926
  %1928 = fadd fast float %1927, %1134
  %1929 = fsub fast float %1619, %1133
  %1930 = fmul fast float %1911, %1929
  %1931 = fadd fast float %1930, %1133
  %1932 = fsub fast float %1725, %1128
  %1933 = fsub fast float %1726, %1129
  %1934 = fsub fast float %1727, %1130
  %1935 = fmul fast float %1914, %1932
  %1936 = fmul fast float %1914, %1933
  %1937 = fmul fast float %1914, %1934
  %1938 = fadd fast float %1935, %1128
  %1939 = fadd fast float %1936, %1129
  %1940 = fadd fast float %1937, %1130
  %1941 = fsub fast float %1753, %1135
  %1942 = fmul fast float %1917, %1941
  %1943 = fadd fast float %1942, %1135
  br label %2008

; <label>:1944                                    ; preds = %1902
  %1945 = icmp eq i32 %1900, 4
  br i1 %1945, label %1946, label %1986

; <label>:1946                                    ; preds = %1944
  %1947 = fmul fast float %1905, %1620
  %1948 = fmul fast float %1905, %1621
  %1949 = fadd fast float %1947, %1120
  %1950 = fadd fast float %1948, %1121
  %1951 = call float @dx.op.binary.f32(i32 36, float %1134, float %1622)  ; FMin(a,b)
  %1952 = fsub fast float %1951, %1134
  %1953 = fmul fast float %1952, %1908
  %1954 = fadd fast float %1953, %1134
  %1955 = fadd fast float %1619, %1133
  %1956 = fmul fast float %1955, 0x3FF337FAE0000000
  %1957 = fmul fast float %1133, %1133
  %1958 = fmul fast float %1619, %1619
  %1959 = fadd fast float %1958, %1957
  %1960 = fmul fast float %1959, 0x3FE5152B00000000
  %1961 = fmul fast float %1133, 0xBFCC1F85E0000000
  %1962 = fmul fast float %1961, %1619
  %1963 = fadd fast float %1962, 0xBFE1363700000000
  %1964 = fadd fast float %1963, %1956
  %1965 = fsub fast float %1964, %1960
  %1966 = fmul fast float %1955, 0x3FBA6F0D00000000
  %1967 = fmul fast float %1959, 0x3FD0432880000000
  %1968 = fmul fast float %1133, 0xBFEF110800000000
  %1969 = fmul fast float %1968, %1619
  %1970 = fadd fast float %1969, 1.000000e+00
  %1971 = fsub fast float %1970, %1966
  %1972 = fadd fast float %1971, %1967
  %1973 = fdiv fast float %1965, %1972
  %1974 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  %1975 = fsub fast float %1974, %1133
  %1976 = fmul fast float %1975, %1911
  %1977 = fadd fast float %1976, %1133
  %1978 = fmul fast float %1914, %1725
  %1979 = fmul fast float %1914, %1726
  %1980 = fmul fast float %1914, %1727
  %1981 = fadd fast float %1978, %1128
  %1982 = fadd fast float %1979, %1129
  %1983 = fadd fast float %1980, %1130
  %1984 = fmul fast float %1917, %1753
  %1985 = fadd fast float %1984, %1135
  br label %2008

; <label>:1986                                    ; preds = %1944
  %1987 = icmp eq i32 %1900, 8
  br i1 %1987, label %1988, label %2008

; <label>:1988                                    ; preds = %1986
  %1989 = fmul fast float %1905, %1620
  %1990 = fmul fast float %1905, %1621
  %1991 = fadd fast float %1989, %1120
  %1992 = fadd fast float %1990, %1121
  %1993 = call float @dx.op.binary.f32(i32 36, float %1134, float %1622)  ; FMin(a,b)
  %1994 = fsub fast float %1993, %1134
  %1995 = fmul fast float %1994, %1908
  %1996 = fadd fast float %1995, %1134
  %1997 = fsub fast float %1619, %1133
  %1998 = fmul fast float %1911, %1997
  %1999 = fadd fast float %1998, %1133
  %2000 = fmul fast float %1914, %1725
  %2001 = fmul fast float %1914, %1726
  %2002 = fmul fast float %1914, %1727
  %2003 = fadd fast float %2000, %1128
  %2004 = fadd fast float %2001, %1129
  %2005 = fadd fast float %2002, %1130
  %2006 = fmul fast float %1917, %1753
  %2007 = fadd fast float %2006, %1135
  br label %2008

; <label>:2008                                    ; preds = %1988, %1986, %1946, %1919, %1891, %1318, %1137, %1119
  %2009 = phi float [ %1120, %1891 ], [ %1120, %1318 ], [ %1120, %1119 ], [ %1991, %1988 ], [ %1120, %1986 ], [ %1949, %1946 ], [ %1924, %1919 ], [ %1120, %1137 ]
  %2010 = phi float [ %1121, %1891 ], [ %1121, %1318 ], [ %1121, %1119 ], [ %1992, %1988 ], [ %1121, %1986 ], [ %1950, %1946 ], [ %1925, %1919 ], [ %1121, %1137 ]
  %2011 = phi float [ %1892, %1891 ], [ %1122, %1318 ], [ %1122, %1119 ], [ %1892, %1988 ], [ %1892, %1986 ], [ %1892, %1946 ], [ %1892, %1919 ], [ %1122, %1137 ]
  %2012 = phi float [ %1893, %1891 ], [ %1123, %1318 ], [ %1123, %1119 ], [ %1893, %1988 ], [ %1893, %1986 ], [ %1893, %1946 ], [ %1893, %1919 ], [ %1123, %1137 ]
  %2013 = phi float [ %1894, %1891 ], [ %1124, %1318 ], [ %1124, %1119 ], [ %1894, %1988 ], [ %1894, %1986 ], [ %1894, %1946 ], [ %1894, %1919 ], [ %1124, %1137 ]
  %2014 = phi float [ %1895, %1891 ], [ %1125, %1318 ], [ %1125, %1119 ], [ %1895, %1988 ], [ %1895, %1986 ], [ %1895, %1946 ], [ %1895, %1919 ], [ %1125, %1137 ]
  %2015 = phi float [ %1896, %1891 ], [ %1126, %1318 ], [ %1126, %1119 ], [ %1896, %1988 ], [ %1896, %1986 ], [ %1896, %1946 ], [ %1896, %1919 ], [ %1126, %1137 ]
  %2016 = phi float [ %1897, %1891 ], [ %1127, %1318 ], [ %1127, %1119 ], [ %1897, %1988 ], [ %1897, %1986 ], [ %1897, %1946 ], [ %1897, %1919 ], [ %1127, %1137 ]
  %2017 = phi float [ %1128, %1891 ], [ %1128, %1318 ], [ %1128, %1119 ], [ %2003, %1988 ], [ %1128, %1986 ], [ %1981, %1946 ], [ %1938, %1919 ], [ %1128, %1137 ]
  %2018 = phi float [ %1129, %1891 ], [ %1129, %1318 ], [ %1129, %1119 ], [ %2004, %1988 ], [ %1129, %1986 ], [ %1982, %1946 ], [ %1939, %1919 ], [ %1129, %1137 ]
  %2019 = phi float [ %1130, %1891 ], [ %1130, %1318 ], [ %1130, %1119 ], [ %2005, %1988 ], [ %1130, %1986 ], [ %1983, %1946 ], [ %1940, %1919 ], [ %1130, %1137 ]
  %2020 = phi float [ %1898, %1891 ], [ %1131, %1318 ], [ %1131, %1119 ], [ %1898, %1988 ], [ %1898, %1986 ], [ %1898, %1946 ], [ %1898, %1919 ], [ %1131, %1137 ]
  %2021 = phi float [ %1133, %1891 ], [ %1133, %1318 ], [ %1133, %1119 ], [ %1999, %1988 ], [ %1133, %1986 ], [ %1977, %1946 ], [ %1931, %1919 ], [ %1133, %1137 ]
  %2022 = phi float [ %1134, %1891 ], [ %1134, %1318 ], [ %1134, %1119 ], [ %1996, %1988 ], [ %1134, %1986 ], [ %1954, %1946 ], [ %1928, %1919 ], [ %1134, %1137 ]
  %2023 = phi float [ %1135, %1891 ], [ %1135, %1318 ], [ %1135, %1119 ], [ %2007, %1988 ], [ %1135, %1986 ], [ %1985, %1946 ], [ %1943, %1919 ], [ %1135, %1137 ]
  %2024 = phi float [ %1899, %1891 ], [ %1136, %1318 ], [ %1136, %1119 ], [ %1899, %1988 ], [ %1899, %1986 ], [ %1899, %1946 ], [ %1899, %1919 ], [ %1136, %1137 ]
  br i1 %436, label %2896, label %2025

; <label>:2025                                    ; preds = %2008
  %2026 = icmp ult i32 %492, 3
  %2027 = add i32 %48, 56
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = add i32 %48, 60
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = or i32 %2032, %2029
  %2034 = icmp eq i32 %2033, 0
  br i1 %2034, label %2896, label %2035

; <label>:2035                                    ; preds = %2025
  %2036 = and i32 %2029, 262144
  %2037 = icmp ne i32 %2036, 0
  %2038 = select i1 %2037, float %53, float 1.000000e+00
  %2039 = select i1 %2037, float %54, float 0.000000e+00
  %2040 = select i1 %2037, float %55, float 0.000000e+00
  %2041 = select i1 %2037, float %56, float 1.000000e+00
  %2042 = select i1 %2037, float %57, float %80
  %2043 = select i1 %2037, float %58, float %81
  %2044 = add i32 %48, 316
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = lshr i32 %2046, 16
  %2048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2047)  ; LegacyF16ToF32(value)
  %2049 = fmul fast float %2048, 0x3F50624DE0000000
  %2050 = add i32 %48, 120
  %2051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2050, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.i32 %2051, 0
  %2053 = lshr i32 %2052, 16
  %2054 = and i32 %2053, 255
  %2055 = lshr i32 %2052, 24
  %2056 = add i32 %48, 324
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = and i32 %2058, 65535
  %2060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2059)  ; LegacyF16ToF32(value)
  %2061 = lshr i32 %2058, 16
  %2062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2061)  ; LegacyF16ToF32(value)
  %2063 = add i32 %48, 64
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2063, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = lshr i32 %2065, 22
  %2067 = shl nuw nsw i32 %2066, 5
  %2068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2067)  ; LegacyF16ToF32(value)
  %2069 = shl i32 %2065, 4
  %2070 = and i32 %2069, 32752
  %2071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2070)  ; LegacyF16ToF32(value)
  %2072 = lshr i32 %2065, 7
  %2073 = and i32 %2072, 32752
  %2074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2073)  ; LegacyF16ToF32(value)
  %2075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2076 = extractvalue %dx.types.CBufRet.f32 %2075, 3
  %2077 = fmul fast float %2076, 1.000000e+03
  %2078 = fmul fast float %386, %2077
  %2079 = call float @dx.op.unary.f32(i32 22, float %2078)  ; Frc(value)
  %2080 = fadd fast float %2079, %376
  %2081 = fmul fast float %387, %2077
  %2082 = call float @dx.op.unary.f32(i32 22, float %2081)  ; Frc(value)
  %2083 = fadd fast float %2082, %378
  %2084 = fmul fast float %2049, %2077
  %2085 = call float @dx.op.unary.f32(i32 22, float %2084)  ; Frc(value)
  %2086 = fmul fast float %2085, 0x401921FB60000000
  %2087 = fadd fast float %2086, %2068
  %2088 = call float @dx.op.unary.f32(i32 13, float %2087)  ; Sin(value)
  %2089 = call float @dx.op.unary.f32(i32 12, float %2087)  ; Cos(value)
  %2090 = fsub fast float -0.000000e+00, %2088
  %2091 = fadd fast float %2042, -5.000000e-01
  %2092 = fadd fast float %2043, -5.000000e-01
  %2093 = fmul fast float %2060, %2091
  %2094 = fmul fast float %2062, %2092
  %2095 = fadd fast float %2093, 5.000000e-01
  %2096 = fadd fast float %2094, 5.000000e-01
  %2097 = fmul fast float %2071, %2095
  %2098 = fmul fast float %2074, %2096
  %2099 = fmul fast float %2089, %2097
  %2100 = call float @dx.op.tertiary.f32(i32 46, float %2090, float %2098, float %2099)  ; FMad(a,b,c)
  %2101 = fmul fast float %2088, %2097
  %2102 = call float @dx.op.tertiary.f32(i32 46, float %2089, float %2098, float %2101)  ; FMad(a,b,c)
  %2103 = fadd fast float %2080, %2100
  %2104 = fadd fast float %2083, %2102
  %2105 = icmp ugt i32 %2054, 1
  %2106 = icmp ugt i32 %2052, 33554431
  %2107 = or i1 %2106, %2105
  br i1 %2107, label %2108, label %2133

; <label>:2108                                    ; preds = %2035
  %2109 = add i32 %48, 260
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = lshr i32 %2111, 16
  %2113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2112)  ; LegacyF16ToF32(value)
  %2114 = fmul fast float %2076, %2113
  %2115 = call float @dx.op.unary.f32(i32 22, float %2114)  ; Frc(value)
  %2116 = mul nuw nsw i32 %2054, %2055
  %2117 = uitofp i32 %2116 to float
  %2118 = fmul fast float %2115, %2117
  %2119 = call float @dx.op.unary.f32(i32 27, float %2118)  ; Round_ni(value)
  %2120 = fptoui float %2119 to i32
  %2121 = urem i32 %2120, %2054
  %2122 = udiv i32 %2120, %2055
  %2123 = call float @dx.op.unary.f32(i32 22, float %2103)  ; Frc(value)
  %2124 = call float @dx.op.unary.f32(i32 22, float %2104)  ; Frc(value)
  %2125 = uitofp i32 %2121 to float
  %2126 = uitofp i32 %2122 to float
  %2127 = fadd fast float %2123, %2125
  %2128 = fadd fast float %2124, %2126
  %2129 = uitofp i32 %2054 to float
  %2130 = uitofp i32 %2055 to float
  %2131 = fdiv fast float %2127, %2129
  %2132 = fdiv fast float %2128, %2130
  br label %2133

; <label>:2133                                    ; preds = %2108, %2035
  %2134 = phi float [ %2131, %2108 ], [ %2103, %2035 ]
  %2135 = phi float [ %2132, %2108 ], [ %2104, %2035 ]
  %2136 = and i32 %2029, 256
  %2137 = icmp eq i32 %2136, 0
  br i1 %2137, label %2184, label %2138

; <label>:2138                                    ; preds = %2133
  %2139 = add i32 %48, 432
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = add i32 %2141, 0
  %2143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2142, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2144 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2143, %dx.types.Handle %99, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = add i32 %48, 132
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = shl i32 %2148, 4
  %2150 = and i32 %2149, 32752
  %2151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2150)  ; LegacyF16ToF32(value)
  %2152 = lshr i32 %2148, 7
  %2153 = and i32 %2152, 32752
  %2154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2153)  ; LegacyF16ToF32(value)
  %2155 = fsub fast float 1.000000e+00, %488
  %2156 = call float @dx.op.binary.f32(i32 35, float %2155, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2157 = bitcast float %488 to i32
  %2158 = sitofp i32 %2157 to float
  %2159 = fadd fast float %2158, 0xC1CFBF8940000000
  %2160 = fmul fast float %2154, %2159
  %2161 = fadd fast float %2160, 0x41CFBF8940000000
  %2162 = fptosi float %2161 to i32
  %2163 = bitcast i32 %2162 to float
  %2164 = bitcast float %2156 to i32
  %2165 = sitofp i32 %2164 to float
  %2166 = fadd fast float %2165, 0xC1CFBF8940000000
  %2167 = fmul fast float %2166, %2154
  %2168 = fadd fast float %2167, 0x41CFBF8940000000
  %2169 = fptosi float %2168 to i32
  %2170 = bitcast i32 %2169 to float
  %2171 = fmul fast float %2163, %2151
  %2172 = fmul fast float %2170, %2151
  %2173 = fsub fast float %2156, %2171
  %2174 = fadd fast float %2172, %2156
  %2175 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2176 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2177 = fsub fast float %2145, %2175
  %2178 = fsub fast float %2176, %2175
  %2179 = bitcast float %2178 to i32
  %2180 = sub nsw i32 2129859010, %2179
  %2181 = bitcast i32 %2180 to float
  %2182 = fmul fast float %2181, %2177
  %2183 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  br label %2184

; <label>:2184                                    ; preds = %2138, %2133
  %2185 = phi float [ %2183, %2138 ], [ %488, %2133 ]
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = and i32 %2187, 128
  %2189 = icmp eq i32 %2188, 0
  br i1 %2189, label %2206, label %2190

; <label>:2190                                    ; preds = %2184
  %2191 = add i32 %48, 416
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = add i32 %2193, 0
  %2195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2195, %dx.types.Handle %99, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2197 = extractvalue %dx.types.ResRet.f32 %2196, 0
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, 524288
  %2201 = icmp ne i32 %2200, 0
  %2202 = fcmp fast ogt float %2197, 0x3FE0101020000000
  %2203 = select i1 %2202, float 1.000000e+00, float 0.000000e+00
  %2204 = select i1 %2201, float %2203, float %2197
  %2205 = fmul fast float %2204, %2185
  br label %2206

; <label>:2206                                    ; preds = %2190, %2184
  %2207 = phi float [ %2205, %2190 ], [ %2185, %2184 ]
  %2208 = fcmp fast ult float %2207, 0x3F70101020000000
  br i1 %2208, label %2896, label %2209

; <label>:2209                                    ; preds = %2206
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 16
  %2213 = icmp eq i32 %2212, 0
  br i1 %2213, label %2412, label %2214

; <label>:2214                                    ; preds = %2209
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2050, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = add i32 %48, 368
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = add i32 %2219, 0
  %2221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2221, %dx.types.Handle %98, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2223 = extractvalue %dx.types.ResRet.f32 %2222, 0
  %2224 = extractvalue %dx.types.ResRet.f32 %2222, 1
  %2225 = extractvalue %dx.types.ResRet.f32 %2222, 2
  %2226 = extractvalue %dx.types.ResRet.f32 %2222, 3
  %2227 = and i32 %2216, 255
  %2228 = uitofp i32 %2227 to float
  %2229 = lshr i32 %2216, 8
  %2230 = and i32 %2229, 255
  %2231 = uitofp i32 %2230 to float
  %2232 = fmul fast float %2226, %2228
  %2233 = fadd fast float %2232, %2231
  %2234 = fmul fast float %2233, 0x3F70101000000000
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 512
  %2238 = icmp eq i32 %2237, 0
  br i1 %2238, label %2247, label %2239

; <label>:2239                                    ; preds = %2214
  %2240 = add i32 %48, 448
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = add i32 %2242, 0
  %2244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2245 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2244, %dx.types.Handle %99, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2246 = extractvalue %dx.types.ResRet.f32 %2245, 0
  br label %2247

; <label>:2247                                    ; preds = %2239, %2214
  %2248 = phi float [ %2246, %2239 ], [ 1.000000e+00, %2214 ]
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = and i32 %2250, 33554432
  %2252 = icmp eq i32 %2251, 0
  br i1 %2252, label %2359, label %2253

; <label>:2253                                    ; preds = %2247
  %2254 = add i32 %48, 256
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2254, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = and i32 %2256, 65535
  %2258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2257)  ; LegacyF16ToF32(value)
  %2259 = lshr i32 %2256, 16
  %2260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2259)  ; LegacyF16ToF32(value)
  %2261 = add i32 %48, 260
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = and i32 %2263, 65535
  %2265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2264)  ; LegacyF16ToF32(value)
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = lshr i32 %2267, 24
  %2269 = uitofp i32 %2268 to float
  %2270 = fmul fast float %2269, 0x3F70101020000000
  %2271 = and i32 %2267, 255
  %2272 = uitofp i32 %2271 to float
  %2273 = fmul fast float %2272, 0x3F70101020000000
  %2274 = lshr i32 %2267, 8
  %2275 = and i32 %2274, 255
  %2276 = uitofp i32 %2275 to float
  %2277 = fmul fast float %2276, 0x3F70101020000000
  %2278 = lshr i32 %2267, 16
  %2279 = and i32 %2278, 255
  %2280 = uitofp i32 %2279 to float
  %2281 = fmul fast float %2280, 0x3F70101020000000
  %2282 = add i32 %48, 252
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = lshr i32 %2284, 24
  %2286 = uitofp i32 %2285 to float
  %2287 = fmul fast float %2286, 0x3F70101020000000
  %2288 = and i32 %2284, 255
  %2289 = uitofp i32 %2288 to float
  %2290 = fmul fast float %2289, 0x3F70101020000000
  %2291 = lshr i32 %2284, 8
  %2292 = and i32 %2291, 255
  %2293 = uitofp i32 %2292 to float
  %2294 = fmul fast float %2293, 0x3F70101020000000
  %2295 = lshr i32 %2284, 16
  %2296 = and i32 %2295, 255
  %2297 = uitofp i32 %2296 to float
  %2298 = fmul fast float %2297, 0x3F70101020000000
  %2299 = bitcast float %2223 to i32
  %2300 = ashr i32 %2299, 1
  %2301 = sub nsw i32 1597463174, %2300
  %2302 = bitcast i32 %2301 to float
  %2303 = fmul fast float %2223, 5.000000e-01
  %2304 = fmul fast float %2302, %2302
  %2305 = fmul fast float %2304, %2303
  %2306 = fsub fast float 1.500000e+00, %2305
  %2307 = fmul fast float %2302, %2223
  %2308 = fmul fast float %2307, %2306
  %2309 = bitcast float %2224 to i32
  %2310 = ashr i32 %2309, 1
  %2311 = sub nsw i32 1597463174, %2310
  %2312 = bitcast i32 %2311 to float
  %2313 = fmul fast float %2224, 5.000000e-01
  %2314 = fmul fast float %2312, %2312
  %2315 = fmul fast float %2314, %2313
  %2316 = fsub fast float 1.500000e+00, %2315
  %2317 = fmul fast float %2312, %2224
  %2318 = fmul fast float %2317, %2316
  %2319 = bitcast float %2225 to i32
  %2320 = ashr i32 %2319, 1
  %2321 = sub nsw i32 1597463174, %2320
  %2322 = bitcast i32 %2321 to float
  %2323 = fmul fast float %2225, 5.000000e-01
  %2324 = fmul fast float %2322, %2322
  %2325 = fmul fast float %2324, %2323
  %2326 = fsub fast float 1.500000e+00, %2325
  %2327 = fmul fast float %2322, %2225
  %2328 = fmul fast float %2327, %2326
  %2329 = fsub fast float %2308, %2290
  %2330 = fsub fast float %2318, %2294
  %2331 = fsub fast float %2328, %2298
  %2332 = fmul fast float %2329, %2258
  %2333 = fmul fast float %2330, %2260
  %2334 = fmul fast float %2331, %2265
  %2335 = fadd fast float %2332, %2273
  %2336 = fadd fast float %2333, %2277
  %2337 = fadd fast float %2334, %2281
  %2338 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2339 = call float @dx.op.unary.f32(i32 7, float %2336)  ; Saturate(value)
  %2340 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  %2341 = fmul fast float %2338, %2338
  %2342 = fmul fast float %2339, %2339
  %2343 = fmul fast float %2340, %2340
  %2344 = fsub fast float %2341, %2223
  %2345 = fsub fast float %2342, %2224
  %2346 = fsub fast float %2343, %2225
  %2347 = fmul fast float %2344, %2248
  %2348 = fmul fast float %2345, %2248
  %2349 = fmul fast float %2346, %2248
  %2350 = fadd fast float %2347, %2223
  %2351 = fadd fast float %2348, %2224
  %2352 = fadd fast float %2349, %2225
  %2353 = fadd fast float %2270, %2234
  %2354 = fsub fast float %2353, %2287
  %2355 = call float @dx.op.unary.f32(i32 7, float %2354)  ; Saturate(value)
  %2356 = fsub fast float %2355, %2234
  %2357 = fmul fast float %2356, %2248
  %2358 = fadd fast float %2357, %2234
  br label %2412

; <label>:2359                                    ; preds = %2247
  %2360 = and i32 %2250, 134217728
  %2361 = icmp eq i32 %2360, 0
  br i1 %2361, label %2396, label %2362

; <label>:2362                                    ; preds = %2359
  %2363 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %2364 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %2365 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %2366 = fadd fast float %2363, -5.000000e-01
  %2367 = fadd fast float %2364, -5.000000e-01
  %2368 = fadd fast float %2365, -5.000000e-01
  %2369 = fmul fast float %2366, %2248
  %2370 = fmul fast float %2367, %2248
  %2371 = fmul fast float %2368, %2248
  %2372 = fadd fast float %2369, 5.000000e-01
  %2373 = fadd fast float %2370, 5.000000e-01
  %2374 = fadd fast float %2371, 5.000000e-01
  %2375 = call float @dx.op.unary.f32(i32 24, float %2223)  ; Sqrt(value)
  %2376 = call float @dx.op.unary.f32(i32 24, float %2224)  ; Sqrt(value)
  %2377 = call float @dx.op.unary.f32(i32 24, float %2225)  ; Sqrt(value)
  %2378 = fmul fast float %2372, 2.000000e+00
  %2379 = fsub fast float 1.000000e+00, %2378
  %2380 = fmul fast float %2379, %2375
  %2381 = fadd fast float %2380, %2378
  %2382 = fmul fast float %2381, %2375
  %2383 = fmul fast float %2373, 2.000000e+00
  %2384 = fsub fast float 1.000000e+00, %2383
  %2385 = fmul fast float %2384, %2376
  %2386 = fadd fast float %2385, %2383
  %2387 = fmul fast float %2386, %2376
  %2388 = fmul fast float %2374, 2.000000e+00
  %2389 = fsub fast float 1.000000e+00, %2388
  %2390 = fmul fast float %2389, %2377
  %2391 = fadd fast float %2390, %2388
  %2392 = fmul fast float %2391, %2377
  %2393 = fmul fast float %2382, %2382
  %2394 = fmul fast float %2387, %2387
  %2395 = fmul fast float %2392, %2392
  br label %2412

; <label>:2396                                    ; preds = %2359
  %2397 = fmul fast float %363, %363
  %2398 = fmul fast float %367, %367
  %2399 = fmul fast float %371, %371
  %2400 = fadd fast float %2397, -1.000000e+00
  %2401 = fadd fast float %2398, -1.000000e+00
  %2402 = fadd fast float %2399, -1.000000e+00
  %2403 = fmul fast float %2248, %2400
  %2404 = fmul fast float %2248, %2401
  %2405 = fmul fast float %2248, %2402
  %2406 = fadd fast float %2403, 1.000000e+00
  %2407 = fadd fast float %2404, 1.000000e+00
  %2408 = fadd fast float %2405, 1.000000e+00
  %2409 = fmul fast float %2406, %2223
  %2410 = fmul fast float %2407, %2224
  %2411 = fmul fast float %2408, %2225
  br label %2412

; <label>:2412                                    ; preds = %2396, %2362, %2253, %2209
  %2413 = phi float [ %2358, %2253 ], [ %2234, %2362 ], [ %2234, %2396 ], [ 0x3FA23C0BE0000000, %2209 ]
  %2414 = phi float [ %2350, %2253 ], [ %2393, %2362 ], [ %2409, %2396 ], [ 1.000000e+00, %2209 ]
  %2415 = phi float [ %2351, %2253 ], [ %2394, %2362 ], [ %2410, %2396 ], [ 1.000000e+00, %2209 ]
  %2416 = phi float [ %2352, %2253 ], [ %2395, %2362 ], [ %2411, %2396 ], [ 1.000000e+00, %2209 ]
  %2417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.i32 %2417, 1
  %2419 = and i32 %2418, 1
  %2420 = icmp ne i32 %2419, 0
  %2421 = add i32 %48, 356
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2421, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = and i32 %2423, 32
  %2425 = icmp ne i32 %2424, 0
  %2426 = and i1 %2420, %2425
  %2427 = select i1 %2426, float 1.000000e+00, float %2414
  %2428 = select i1 %2426, float 0x3FD3333340000000, float %2415
  %2429 = select i1 %2426, float 0x3FD3333340000000, float %2416
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = and i32 %2431, 32
  %2433 = icmp eq i32 %2432, 0
  br i1 %2433, label %2506, label %2434

; <label>:2434                                    ; preds = %2412
  %2435 = add i32 %48, 124
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2435, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = add i32 %48, 384
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = add i32 %2440, 0
  %2442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2441, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2443 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2442, %dx.types.Handle %98, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2444 = extractvalue %dx.types.ResRet.f32 %2443, 0
  %2445 = extractvalue %dx.types.ResRet.f32 %2443, 1
  %2446 = extractvalue %dx.types.ResRet.f32 %2443, 2
  %2447 = extractvalue %dx.types.ResRet.f32 %2443, 3
  %2448 = and i32 %2437, 255
  %2449 = uitofp i32 %2448 to float
  %2450 = lshr i32 %2437, 8
  %2451 = and i32 %2450, 255
  %2452 = uitofp i32 %2451 to float
  %2453 = lshr i32 %2437, 16
  %2454 = and i32 %2453, 255
  %2455 = uitofp i32 %2454 to float
  %2456 = fmul fast float %2455, 0x3F70101000000000
  %2457 = fmul fast float %2444, %2449
  %2458 = fadd fast float %2457, %2452
  %2459 = fmul fast float %2458, 0x3F70101000000000
  %2460 = fadd fast float %2445, -5.000000e-01
  %2461 = fadd fast float %2447, -5.000000e-01
  %2462 = fmul fast float %2460, %2456
  %2463 = fmul fast float %2461, %2456
  %2464 = fadd fast float %2462, 5.000000e-01
  %2465 = fadd fast float %2463, 5.000000e-01
  %2466 = fmul fast float %2464, 2.000000e+00
  %2467 = fadd fast float %2466, -1.000000e+00
  %2468 = fmul fast float %2465, 2.000000e+00
  %2469 = fadd fast float %2468, -1.000000e+00
  %2470 = fadd fast float %2467, %2469
  %2471 = fmul fast float %2470, 5.000000e-01
  %2472 = fsub fast float %2467, %2469
  %2473 = fmul fast float %2472, 5.000000e-01
  %2474 = call float @dx.op.unary.f32(i32 6, float %2471)  ; FAbs(value)
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = call float @dx.op.unary.f32(i32 6, float %2473)  ; FAbs(value)
  %2477 = fsub fast float %2475, %2476
  %2478 = call float @dx.op.dot3.f32(i32 55, float %2471, float %2473, float %2477, float %2471, float %2473, float %2477)  ; Dot3(ax,ay,az,bx,by,bz)
  %2479 = call float @dx.op.unary.f32(i32 25, float %2478)  ; Rsqrt(value)
  %2480 = fmul fast float %2471, %2479
  %2481 = fmul fast float %2473, %2479
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = and i32 %2483, 67108864
  %2485 = icmp eq i32 %2484, 0
  br i1 %2485, label %2502, label %2486

; <label>:2486                                    ; preds = %2434
  %2487 = add i32 %48, 312
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2487, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = and i32 %2489, 65535
  %2491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2490)  ; LegacyF16ToF32(value)
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = and i32 %2493, 65535
  %2495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2494)  ; LegacyF16ToF32(value)
  %2496 = lshr i32 %2489, 16
  %2497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2496)  ; LegacyF16ToF32(value)
  %2498 = fsub fast float %2459, %2497
  %2499 = fmul fast float %2498, %2491
  %2500 = fadd fast float %2499, %2495
  %2501 = call float @dx.op.unary.f32(i32 7, float %2500)  ; Saturate(value)
  br label %2502

; <label>:2502                                    ; preds = %2486, %2434
  %2503 = phi float [ %2501, %2486 ], [ %2459, %2434 ]
  %2504 = call float @dx.op.dot2.f32(i32 54, float %2480, float %2481, float %2038, float %2039)  ; Dot2(ax,ay,bx,by)
  %2505 = call float @dx.op.dot2.f32(i32 54, float %2480, float %2481, float %2040, float %2041)  ; Dot2(ax,ay,bx,by)
  br label %2506

; <label>:2506                                    ; preds = %2502, %2412
  %2507 = phi float [ %2503, %2502 ], [ 0x3FD6666660000000, %2412 ]
  %2508 = phi float [ %2504, %2502 ], [ 0.000000e+00, %2412 ]
  %2509 = phi float [ %2505, %2502 ], [ 0.000000e+00, %2412 ]
  %2510 = phi float [ %2446, %2502 ], [ 1.000000e+00, %2412 ]
  %2511 = add i32 %48, 192
  %2512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2511, i32 undef)  ; BufferLoad(srv,index,wot)
  %2513 = extractvalue %dx.types.ResRet.i32 %2512, 0
  %2514 = lshr i32 %2513, 22
  %2515 = shl nuw nsw i32 %2514, 5
  %2516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2515)  ; LegacyF16ToF32(value)
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = and i32 %2518, 64
  %2520 = icmp eq i32 %2519, 0
  br i1 %2520, label %2554, label %2521

; <label>:2521                                    ; preds = %2506
  %2522 = add i32 %48, 400
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = add i32 %2524, 0
  %2526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2525, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = and i32 %2528, 131072
  %2530 = icmp eq i32 %2529, 0
  %2531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2526, %dx.types.Handle %98, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2532 = extractvalue %dx.types.ResRet.f32 %2531, 0
  %2533 = extractvalue %dx.types.ResRet.f32 %2531, 1
  %2534 = extractvalue %dx.types.ResRet.f32 %2531, 2
  %2535 = fmul fast float %2532, %351
  %2536 = fmul fast float %2533, %354
  %2537 = fmul fast float %2534, %357
  br i1 %2530, label %2544, label %2538

; <label>:2538                                    ; preds = %2521
  %2539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.f32 %2539, 0
  %2541 = fmul fast float %2540, %2535
  %2542 = fmul fast float %2540, %2536
  %2543 = fmul fast float %2540, %2537
  br label %2544

; <label>:2544                                    ; preds = %2538, %2521
  %2545 = phi float [ %2541, %2538 ], [ %2535, %2521 ]
  %2546 = phi float [ %2542, %2538 ], [ %2536, %2521 ]
  %2547 = phi float [ %2543, %2538 ], [ %2537, %2521 ]
  %2548 = fmul fast float %2545, %2516
  %2549 = select i1 %250, float %2548, float %2545
  %2550 = call float @dx.op.dot3.f32(i32 55, float %2549, float %2546, float %2547, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2551 = select i1 %250, float 0.000000e+00, float %2545
  %2552 = select i1 %250, float %2550, float %2546
  %2553 = select i1 %250, float 0.000000e+00, float %2547
  br label %2554

; <label>:2554                                    ; preds = %2544, %2506
  %2555 = phi float [ %2551, %2544 ], [ 0.000000e+00, %2506 ]
  %2556 = phi float [ %2552, %2544 ], [ 0.000000e+00, %2506 ]
  %2557 = phi float [ %2553, %2544 ], [ 0.000000e+00, %2506 ]
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = and i32 %2559, 1024
  %2561 = icmp eq i32 %2560, 0
  br i1 %2561, label %2592, label %2562

; <label>:2562                                    ; preds = %2554
  %2563 = add i32 %48, 184
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = and i32 %2565, 255
  %2567 = uitofp i32 %2566 to float
  %2568 = fmul fast float %2567, 0x3F70101020000000
  %2569 = lshr i32 %2565, 8
  %2570 = and i32 %2569, 255
  %2571 = uitofp i32 %2570 to float
  %2572 = fmul fast float %2571, 0x3F70101020000000
  %2573 = lshr i32 %2565, 16
  %2574 = and i32 %2573, 255
  %2575 = uitofp i32 %2574 to float
  %2576 = fmul fast float %2575, 0x3F70101020000000
  %2577 = fmul fast float %2568, %2568
  %2578 = fmul fast float %2572, %2572
  %2579 = fmul fast float %2576, %2576
  %2580 = add i32 %48, 464
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = add i32 %2582, 0
  %2584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2584, %dx.types.Handle %99, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2586 = extractvalue %dx.types.ResRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.ResRet.f32 %2585, 1
  %2588 = extractvalue %dx.types.ResRet.f32 %2585, 2
  %2589 = fmul fast float %2577, %2586
  %2590 = fmul fast float %2578, %2587
  %2591 = fmul fast float %2579, %2588
  br label %2592

; <label>:2592                                    ; preds = %2562, %2554
  %2593 = phi float [ %2589, %2562 ], [ 0.000000e+00, %2554 ]
  %2594 = phi float [ %2590, %2562 ], [ 0.000000e+00, %2554 ]
  %2595 = phi float [ %2591, %2562 ], [ 0.000000e+00, %2554 ]
  %2596 = fcmp fast ogt float %2593, 0.000000e+00
  %2597 = fcmp fast ogt float %2594, 0.000000e+00
  %2598 = fcmp fast ogt float %2595, 0.000000e+00
  %2599 = call float @dx.op.unary.f32(i32 23, float %2593)  ; Log(value)
  %2600 = call float @dx.op.unary.f32(i32 23, float %2594)  ; Log(value)
  %2601 = call float @dx.op.unary.f32(i32 23, float %2595)  ; Log(value)
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2511, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = lshr i32 %2603, 7
  %2605 = and i32 %2604, 32752
  %2606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2605)  ; LegacyF16ToF32(value)
  %2607 = fmul fast float %2599, 0xBFE62E4300000000
  %2608 = fmul fast float %2607, %2606
  %2609 = fmul fast float %2600, 0xBFE62E4300000000
  %2610 = fmul fast float %2609, %2606
  %2611 = fmul fast float %2601, 0xBFE62E4300000000
  %2612 = fmul fast float %2611, %2606
  %2613 = select i1 %2596, float %2608, float 1.270000e+02
  %2614 = select i1 %2597, float %2610, float 1.270000e+02
  %2615 = select i1 %2598, float %2612, float 1.270000e+02
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = and i32 %2617, 10240
  %2619 = icmp eq i32 %2618, 0
  br i1 %2619, label %2640, label %2620

; <label>:2620                                    ; preds = %2592
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = and i32 %2622, 2048
  %2624 = icmp eq i32 %2623, 0
  br i1 %2624, label %2640, label %2625

; <label>:2625                                    ; preds = %2620
  %2626 = add i32 %48, 480
  %2627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2626, i32 undef)  ; BufferLoad(srv,index,wot)
  %2628 = extractvalue %dx.types.ResRet.i32 %2627, 0
  %2629 = add i32 %2628, 0
  %2630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2629, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2631 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2630, %dx.types.Handle %99, float %2134, float %2135, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2632 = extractvalue %dx.types.ResRet.f32 %2631, 3
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2511, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = shl i32 %2634, 4
  %2636 = and i32 %2635, 32752
  %2637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2636)  ; LegacyF16ToF32(value)
  %2638 = fmul fast float %2637, %2632
  %2639 = call float @dx.op.binary.f32(i32 35, float %2638, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2640

; <label>:2640                                    ; preds = %2625, %2620, %2592
  %2641 = phi float [ %2639, %2625 ], [ 0x3F70101020000000, %2620 ], [ 0x3F70101020000000, %2592 ]
  %2642 = add i32 %48, 128
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = and i32 %2644, 255
  %2646 = uitofp i32 %2645 to float
  %2647 = lshr i32 %2644, 8
  %2648 = and i32 %2647, 255
  %2649 = uitofp i32 %2648 to float
  %2650 = call float @dx.op.dot3.f32(i32 55, float %2427, float %2428, float %2429, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2651 = fmul fast float %2649, %2650
  %2652 = fadd fast float %2651, %2646
  %2653 = fmul fast float %2652, 0x3F70101020000000
  %2654 = call float @dx.op.unary.f32(i32 7, float %2653)  ; Saturate(value)
  br i1 %2026, label %2655, label %2690

; <label>:2655                                    ; preds = %2640
  %2656 = fmul fast float %2641, 2.000000e+00
  %2657 = fcmp fast olt float %2613, 1.270000e+02
  %2658 = fcmp fast olt float %2614, 1.270000e+02
  %2659 = fcmp fast olt float %2615, 1.270000e+02
  %2660 = fmul fast float %2613, 0xBFF7154760000000
  %2661 = fmul fast float %2660, %2656
  %2662 = fmul fast float %2614, 0xBFF7154760000000
  %2663 = fmul fast float %2662, %2656
  %2664 = fmul fast float %2615, 0xBFF7154760000000
  %2665 = fmul fast float %2664, %2656
  %2666 = call float @dx.op.unary.f32(i32 21, float %2661)  ; Exp(value)
  %2667 = call float @dx.op.unary.f32(i32 21, float %2663)  ; Exp(value)
  %2668 = call float @dx.op.unary.f32(i32 21, float %2665)  ; Exp(value)
  %2669 = call float @dx.op.unary.f32(i32 7, float %2666)  ; Saturate(value)
  %2670 = call float @dx.op.unary.f32(i32 7, float %2667)  ; Saturate(value)
  %2671 = call float @dx.op.unary.f32(i32 7, float %2668)  ; Saturate(value)
  %2672 = fadd fast float %2669, -1.000000e+00
  %2673 = select i1 %2657, float %2672, float -1.000000e+00
  %2674 = fadd fast float %2670, -1.000000e+00
  %2675 = select i1 %2658, float %2674, float -1.000000e+00
  %2676 = fadd fast float %2671, -1.000000e+00
  %2677 = select i1 %2659, float %2676, float -1.000000e+00
  %2678 = fmul fast float %2673, %2207
  %2679 = fmul fast float %2675, %2207
  %2680 = fmul fast float %2677, %2207
  %2681 = fadd fast float %2678, 1.000000e+00
  %2682 = fadd fast float %2679, 1.000000e+00
  %2683 = fadd fast float %2680, 1.000000e+00
  %2684 = fmul fast float %2681, %2011
  %2685 = fmul fast float %2682, %2012
  %2686 = fmul fast float %2683, %2013
  %2687 = fmul fast float %2681, %2014
  %2688 = fmul fast float %2682, %2015
  %2689 = fmul fast float %2683, %2016
  br label %2690

; <label>:2690                                    ; preds = %2655, %2640
  %2691 = phi float [ %2684, %2655 ], [ %2011, %2640 ]
  %2692 = phi float [ %2685, %2655 ], [ %2012, %2640 ]
  %2693 = phi float [ %2686, %2655 ], [ %2013, %2640 ]
  %2694 = phi float [ %2687, %2655 ], [ %2014, %2640 ]
  %2695 = phi float [ %2688, %2655 ], [ %2015, %2640 ]
  %2696 = phi float [ %2689, %2655 ], [ %2016, %2640 ]
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = and i32 %2698, 3
  %2700 = icmp eq i32 %2699, 3
  br i1 %2700, label %2779, label %2701

; <label>:2701                                    ; preds = %2690
  %2702 = and i32 %2698, 16
  %2703 = icmp ne i32 %2702, 0
  %2704 = select i1 %2703, float %2207, float 0.000000e+00
  %2705 = icmp eq i32 %2699, 0
  br i1 %2705, label %2706, label %2734

; <label>:2706                                    ; preds = %2701
  %2707 = and i32 %2698, 64
  %2708 = icmp ne i32 %2707, 0
  %2709 = select i1 %2708, float %2207, float 0.000000e+00
  %2710 = fsub fast float %2427, %2691
  %2711 = fsub fast float %2428, %2692
  %2712 = fsub fast float %2429, %2693
  %2713 = fmul fast float %2704, %2710
  %2714 = fmul fast float %2704, %2711
  %2715 = fmul fast float %2704, %2712
  %2716 = fadd fast float %2713, %2691
  %2717 = fadd fast float %2714, %2692
  %2718 = fadd fast float %2715, %2693
  %2719 = fsub fast float %2413, %2020
  %2720 = fmul fast float %2704, %2719
  %2721 = fadd fast float %2720, %2020
  %2722 = fsub fast float %2555, %2694
  %2723 = fsub fast float %2556, %2695
  %2724 = fsub fast float %2557, %2696
  %2725 = fmul fast float %2709, %2722
  %2726 = fmul fast float %2709, %2723
  %2727 = fmul fast float %2709, %2724
  %2728 = fadd fast float %2725, %2694
  %2729 = fadd fast float %2726, %2695
  %2730 = fadd fast float %2727, %2696
  %2731 = fsub fast float %2654, %2024
  %2732 = fmul fast float %2704, %2731
  %2733 = fadd fast float %2732, %2024
  br label %2779

; <label>:2734                                    ; preds = %2701
  %2735 = icmp eq i32 %2699, 1
  br i1 %2735, label %2736, label %2749

; <label>:2736                                    ; preds = %2734
  %2737 = fadd fast float %2427, -1.000000e+00
  %2738 = fadd fast float %2428, -1.000000e+00
  %2739 = fadd fast float %2429, -1.000000e+00
  %2740 = fmul fast float %2704, %2737
  %2741 = fmul fast float %2704, %2738
  %2742 = fmul fast float %2704, %2739
  %2743 = fadd fast float %2740, 1.000000e+00
  %2744 = fadd fast float %2741, 1.000000e+00
  %2745 = fadd fast float %2742, 1.000000e+00
  %2746 = fmul fast float %2743, %2691
  %2747 = fmul fast float %2744, %2692
  %2748 = fmul fast float %2745, %2693
  br label %2779

; <label>:2749                                    ; preds = %2734
  %2750 = icmp eq i32 %2699, 2
  br i1 %2750, label %2751, label %2779

; <label>:2751                                    ; preds = %2749
  %2752 = call float @dx.op.unary.f32(i32 24, float %2427)  ; Sqrt(value)
  %2753 = call float @dx.op.unary.f32(i32 24, float %2428)  ; Sqrt(value)
  %2754 = call float @dx.op.unary.f32(i32 24, float %2429)  ; Sqrt(value)
  %2755 = fadd fast float %2752, -5.000000e-01
  %2756 = fadd fast float %2753, -5.000000e-01
  %2757 = fadd fast float %2754, -5.000000e-01
  %2758 = fmul fast float %2755, %2704
  %2759 = fmul fast float %2756, %2704
  %2760 = fmul fast float %2757, %2704
  %2761 = fadd fast float %2758, 5.000000e-01
  %2762 = fadd fast float %2759, 5.000000e-01
  %2763 = fadd fast float %2760, 5.000000e-01
  %2764 = fmul fast float %2761, 2.000000e+00
  %2765 = fsub fast float 1.000000e+00, %2764
  %2766 = fmul fast float %2765, %2691
  %2767 = fadd fast float %2766, %2764
  %2768 = fmul fast float %2767, %2691
  %2769 = fmul fast float %2762, 2.000000e+00
  %2770 = fsub fast float 1.000000e+00, %2769
  %2771 = fmul fast float %2770, %2692
  %2772 = fadd fast float %2771, %2769
  %2773 = fmul fast float %2772, %2692
  %2774 = fmul fast float %2763, 2.000000e+00
  %2775 = fsub fast float 1.000000e+00, %2774
  %2776 = fmul fast float %2775, %2693
  %2777 = fadd fast float %2776, %2774
  %2778 = fmul fast float %2777, %2693
  br label %2779

; <label>:2779                                    ; preds = %2751, %2749, %2736, %2706, %2690
  %2780 = phi float [ %2691, %2690 ], [ %2768, %2751 ], [ %2691, %2749 ], [ %2746, %2736 ], [ %2716, %2706 ]
  %2781 = phi float [ %2692, %2690 ], [ %2773, %2751 ], [ %2692, %2749 ], [ %2747, %2736 ], [ %2717, %2706 ]
  %2782 = phi float [ %2693, %2690 ], [ %2778, %2751 ], [ %2693, %2749 ], [ %2748, %2736 ], [ %2718, %2706 ]
  %2783 = phi float [ %2694, %2690 ], [ %2694, %2751 ], [ %2694, %2749 ], [ %2694, %2736 ], [ %2728, %2706 ]
  %2784 = phi float [ %2695, %2690 ], [ %2695, %2751 ], [ %2695, %2749 ], [ %2695, %2736 ], [ %2729, %2706 ]
  %2785 = phi float [ %2696, %2690 ], [ %2696, %2751 ], [ %2696, %2749 ], [ %2696, %2736 ], [ %2730, %2706 ]
  %2786 = phi float [ %2020, %2690 ], [ %2020, %2751 ], [ %2020, %2749 ], [ %2020, %2736 ], [ %2721, %2706 ]
  %2787 = phi float [ %2024, %2690 ], [ %2024, %2751 ], [ %2024, %2749 ], [ %2024, %2736 ], [ %2733, %2706 ]
  %2788 = and i32 %2698, 12
  %2789 = icmp eq i32 %2788, 12
  br i1 %2789, label %2896, label %2790

; <label>:2790                                    ; preds = %2779
  %2791 = and i32 %2698, 2097184
  %2792 = icmp eq i32 %2791, 2097184
  %2793 = select i1 %2792, float %2207, float 0.000000e+00
  %2794 = and i32 %2698, 4194336
  %2795 = icmp eq i32 %2794, 4194336
  %2796 = select i1 %2795, float %2207, float 0.000000e+00
  %2797 = and i32 %2698, 8388640
  %2798 = icmp eq i32 %2797, 8388640
  %2799 = select i1 %2798, float %2207, float 0.000000e+00
  %2800 = and i32 %2698, 1024
  %2801 = icmp ne i32 %2800, 0
  %2802 = select i1 %2801, float %2207, float 0.000000e+00
  %2803 = and i32 %2698, 2048
  %2804 = icmp ne i32 %2803, 0
  %2805 = select i1 %2804, float %2207, float 0.000000e+00
  %2806 = icmp eq i32 %2788, 0
  br i1 %2806, label %2807, label %2832

; <label>:2807                                    ; preds = %2790
  %2808 = fsub fast float %2508, %2009
  %2809 = fsub fast float %2509, %2010
  %2810 = fmul fast float %2793, %2808
  %2811 = fmul fast float %2793, %2809
  %2812 = fadd fast float %2810, %2009
  %2813 = fadd fast float %2811, %2010
  %2814 = fsub fast float %2510, %2022
  %2815 = fmul fast float %2796, %2814
  %2816 = fadd fast float %2815, %2022
  %2817 = fsub fast float %2507, %2021
  %2818 = fmul fast float %2799, %2817
  %2819 = fadd fast float %2818, %2021
  %2820 = fsub fast float %2613, %2017
  %2821 = fsub fast float %2614, %2018
  %2822 = fsub fast float %2615, %2019
  %2823 = fmul fast float %2802, %2820
  %2824 = fmul fast float %2802, %2821
  %2825 = fmul fast float %2802, %2822
  %2826 = fadd fast float %2823, %2017
  %2827 = fadd fast float %2824, %2018
  %2828 = fadd fast float %2825, %2019
  %2829 = fsub fast float %2641, %2023
  %2830 = fmul fast float %2805, %2829
  %2831 = fadd fast float %2830, %2023
  br label %2896

; <label>:2832                                    ; preds = %2790
  %2833 = icmp eq i32 %2788, 4
  br i1 %2833, label %2834, label %2874

; <label>:2834                                    ; preds = %2832
  %2835 = fmul fast float %2793, %2508
  %2836 = fmul fast float %2793, %2509
  %2837 = fadd fast float %2835, %2009
  %2838 = fadd fast float %2836, %2010
  %2839 = call float @dx.op.binary.f32(i32 36, float %2022, float %2510)  ; FMin(a,b)
  %2840 = fsub fast float %2839, %2022
  %2841 = fmul fast float %2840, %2796
  %2842 = fadd fast float %2841, %2022
  %2843 = fadd fast float %2507, %2021
  %2844 = fmul fast float %2843, 0x3FF337FAE0000000
  %2845 = fmul fast float %2021, %2021
  %2846 = fmul fast float %2507, %2507
  %2847 = fadd fast float %2846, %2845
  %2848 = fmul fast float %2847, 0x3FE5152B00000000
  %2849 = fmul fast float %2021, 0xBFCC1F85E0000000
  %2850 = fmul fast float %2849, %2507
  %2851 = fadd fast float %2850, 0xBFE1363700000000
  %2852 = fadd fast float %2851, %2844
  %2853 = fsub fast float %2852, %2848
  %2854 = fmul fast float %2843, 0x3FBA6F0D00000000
  %2855 = fmul fast float %2847, 0x3FD0432880000000
  %2856 = fmul fast float %2021, 0xBFEF110800000000
  %2857 = fmul fast float %2856, %2507
  %2858 = fadd fast float %2857, 1.000000e+00
  %2859 = fsub fast float %2858, %2854
  %2860 = fadd fast float %2859, %2855
  %2861 = fdiv fast float %2853, %2860
  %2862 = call float @dx.op.unary.f32(i32 7, float %2861)  ; Saturate(value)
  %2863 = fsub fast float %2862, %2021
  %2864 = fmul fast float %2863, %2799
  %2865 = fadd fast float %2864, %2021
  %2866 = fmul fast float %2802, %2613
  %2867 = fmul fast float %2802, %2614
  %2868 = fmul fast float %2802, %2615
  %2869 = fadd fast float %2866, %2017
  %2870 = fadd fast float %2867, %2018
  %2871 = fadd fast float %2868, %2019
  %2872 = fmul fast float %2805, %2641
  %2873 = fadd fast float %2872, %2023
  br label %2896

; <label>:2874                                    ; preds = %2832
  %2875 = icmp eq i32 %2788, 8
  br i1 %2875, label %2876, label %2896

; <label>:2876                                    ; preds = %2874
  %2877 = fmul fast float %2793, %2508
  %2878 = fmul fast float %2793, %2509
  %2879 = fadd fast float %2877, %2009
  %2880 = fadd fast float %2878, %2010
  %2881 = call float @dx.op.binary.f32(i32 36, float %2022, float %2510)  ; FMin(a,b)
  %2882 = fsub fast float %2881, %2022
  %2883 = fmul fast float %2882, %2796
  %2884 = fadd fast float %2883, %2022
  %2885 = fsub fast float %2507, %2021
  %2886 = fmul fast float %2799, %2885
  %2887 = fadd fast float %2886, %2021
  %2888 = fmul fast float %2802, %2613
  %2889 = fmul fast float %2802, %2614
  %2890 = fmul fast float %2802, %2615
  %2891 = fadd fast float %2888, %2017
  %2892 = fadd fast float %2889, %2018
  %2893 = fadd fast float %2890, %2019
  %2894 = fmul fast float %2805, %2641
  %2895 = fadd fast float %2894, %2023
  br label %2896

; <label>:2896                                    ; preds = %2876, %2874, %2834, %2807, %2779, %2206, %2025, %2008
  %2897 = phi float [ %2009, %2779 ], [ %2009, %2206 ], [ %2009, %2008 ], [ %2879, %2876 ], [ %2009, %2874 ], [ %2837, %2834 ], [ %2812, %2807 ], [ %2009, %2025 ]
  %2898 = phi float [ %2010, %2779 ], [ %2010, %2206 ], [ %2010, %2008 ], [ %2880, %2876 ], [ %2010, %2874 ], [ %2838, %2834 ], [ %2813, %2807 ], [ %2010, %2025 ]
  %2899 = phi float [ %2780, %2779 ], [ %2011, %2206 ], [ %2011, %2008 ], [ %2780, %2876 ], [ %2780, %2874 ], [ %2780, %2834 ], [ %2780, %2807 ], [ %2011, %2025 ]
  %2900 = phi float [ %2781, %2779 ], [ %2012, %2206 ], [ %2012, %2008 ], [ %2781, %2876 ], [ %2781, %2874 ], [ %2781, %2834 ], [ %2781, %2807 ], [ %2012, %2025 ]
  %2901 = phi float [ %2782, %2779 ], [ %2013, %2206 ], [ %2013, %2008 ], [ %2782, %2876 ], [ %2782, %2874 ], [ %2782, %2834 ], [ %2782, %2807 ], [ %2013, %2025 ]
  %2902 = phi float [ %2783, %2779 ], [ %2014, %2206 ], [ %2014, %2008 ], [ %2783, %2876 ], [ %2783, %2874 ], [ %2783, %2834 ], [ %2783, %2807 ], [ %2014, %2025 ]
  %2903 = phi float [ %2784, %2779 ], [ %2015, %2206 ], [ %2015, %2008 ], [ %2784, %2876 ], [ %2784, %2874 ], [ %2784, %2834 ], [ %2784, %2807 ], [ %2015, %2025 ]
  %2904 = phi float [ %2785, %2779 ], [ %2016, %2206 ], [ %2016, %2008 ], [ %2785, %2876 ], [ %2785, %2874 ], [ %2785, %2834 ], [ %2785, %2807 ], [ %2016, %2025 ]
  %2905 = phi float [ %2017, %2779 ], [ %2017, %2206 ], [ %2017, %2008 ], [ %2891, %2876 ], [ %2017, %2874 ], [ %2869, %2834 ], [ %2826, %2807 ], [ %2017, %2025 ]
  %2906 = phi float [ %2018, %2779 ], [ %2018, %2206 ], [ %2018, %2008 ], [ %2892, %2876 ], [ %2018, %2874 ], [ %2870, %2834 ], [ %2827, %2807 ], [ %2018, %2025 ]
  %2907 = phi float [ %2019, %2779 ], [ %2019, %2206 ], [ %2019, %2008 ], [ %2893, %2876 ], [ %2019, %2874 ], [ %2871, %2834 ], [ %2828, %2807 ], [ %2019, %2025 ]
  %2908 = phi float [ %2786, %2779 ], [ %2020, %2206 ], [ %2020, %2008 ], [ %2786, %2876 ], [ %2786, %2874 ], [ %2786, %2834 ], [ %2786, %2807 ], [ %2020, %2025 ]
  %2909 = phi float [ %2021, %2779 ], [ %2021, %2206 ], [ %2021, %2008 ], [ %2887, %2876 ], [ %2021, %2874 ], [ %2865, %2834 ], [ %2819, %2807 ], [ %2021, %2025 ]
  %2910 = phi float [ %2022, %2779 ], [ %2022, %2206 ], [ %2022, %2008 ], [ %2884, %2876 ], [ %2022, %2874 ], [ %2842, %2834 ], [ %2816, %2807 ], [ %2022, %2025 ]
  %2911 = phi float [ %2023, %2779 ], [ %2023, %2206 ], [ %2023, %2008 ], [ %2895, %2876 ], [ %2023, %2874 ], [ %2873, %2834 ], [ %2831, %2807 ], [ %2023, %2025 ]
  %2912 = phi float [ %2787, %2779 ], [ %2024, %2206 ], [ %2024, %2008 ], [ %2787, %2876 ], [ %2787, %2874 ], [ %2787, %2834 ], [ %2787, %2807 ], [ %2024, %2025 ]
  br i1 %438, label %3784, label %2913

; <label>:2913                                    ; preds = %2896
  %2914 = icmp ult i32 %492, 4
  %2915 = add i32 %48, 72
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = add i32 %48, 76
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2918, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = or i32 %2920, %2917
  %2922 = icmp eq i32 %2921, 0
  br i1 %2922, label %3784, label %2923

; <label>:2923                                    ; preds = %2913
  %2924 = and i32 %2917, 262144
  %2925 = icmp ne i32 %2924, 0
  %2926 = select i1 %2925, float %53, float 1.000000e+00
  %2927 = select i1 %2925, float %54, float 0.000000e+00
  %2928 = select i1 %2925, float %55, float 0.000000e+00
  %2929 = select i1 %2925, float %56, float 1.000000e+00
  %2930 = select i1 %2925, float %57, float %80
  %2931 = select i1 %2925, float %58, float %81
  %2932 = add i32 %48, 332
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2932, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = lshr i32 %2934, 16
  %2936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2935)  ; LegacyF16ToF32(value)
  %2937 = fmul fast float %2936, 0x3F50624DE0000000
  %2938 = add i32 %48, 136
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = lshr i32 %2940, 16
  %2942 = and i32 %2941, 255
  %2943 = lshr i32 %2940, 24
  %2944 = add i32 %48, 340
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = and i32 %2946, 65535
  %2948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2947)  ; LegacyF16ToF32(value)
  %2949 = lshr i32 %2946, 16
  %2950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2949)  ; LegacyF16ToF32(value)
  %2951 = add i32 %48, 80
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = lshr i32 %2953, 22
  %2955 = shl nuw nsw i32 %2954, 5
  %2956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2955)  ; LegacyF16ToF32(value)
  %2957 = shl i32 %2953, 4
  %2958 = and i32 %2957, 32752
  %2959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2958)  ; LegacyF16ToF32(value)
  %2960 = lshr i32 %2953, 7
  %2961 = and i32 %2960, 32752
  %2962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2961)  ; LegacyF16ToF32(value)
  %2963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2964 = extractvalue %dx.types.CBufRet.f32 %2963, 3
  %2965 = fmul fast float %2964, 1.000000e+03
  %2966 = fmul fast float %428, %2965
  %2967 = call float @dx.op.unary.f32(i32 22, float %2966)  ; Frc(value)
  %2968 = fadd fast float %2967, %418
  %2969 = fmul fast float %429, %2965
  %2970 = call float @dx.op.unary.f32(i32 22, float %2969)  ; Frc(value)
  %2971 = fadd fast float %2970, %420
  %2972 = fmul fast float %2937, %2965
  %2973 = call float @dx.op.unary.f32(i32 22, float %2972)  ; Frc(value)
  %2974 = fmul fast float %2973, 0x401921FB60000000
  %2975 = fadd fast float %2974, %2956
  %2976 = call float @dx.op.unary.f32(i32 13, float %2975)  ; Sin(value)
  %2977 = call float @dx.op.unary.f32(i32 12, float %2975)  ; Cos(value)
  %2978 = fsub fast float -0.000000e+00, %2976
  %2979 = fadd fast float %2930, -5.000000e-01
  %2980 = fadd fast float %2931, -5.000000e-01
  %2981 = fmul fast float %2948, %2979
  %2982 = fmul fast float %2950, %2980
  %2983 = fadd fast float %2981, 5.000000e-01
  %2984 = fadd fast float %2982, 5.000000e-01
  %2985 = fmul fast float %2959, %2983
  %2986 = fmul fast float %2962, %2984
  %2987 = fmul fast float %2977, %2985
  %2988 = call float @dx.op.tertiary.f32(i32 46, float %2978, float %2986, float %2987)  ; FMad(a,b,c)
  %2989 = fmul fast float %2976, %2985
  %2990 = call float @dx.op.tertiary.f32(i32 46, float %2977, float %2986, float %2989)  ; FMad(a,b,c)
  %2991 = fadd fast float %2968, %2988
  %2992 = fadd fast float %2971, %2990
  %2993 = icmp ugt i32 %2942, 1
  %2994 = icmp ugt i32 %2940, 33554431
  %2995 = or i1 %2994, %2993
  br i1 %2995, label %2996, label %3021

; <label>:2996                                    ; preds = %2923
  %2997 = add i32 %48, 276
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = lshr i32 %2999, 16
  %3001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3000)  ; LegacyF16ToF32(value)
  %3002 = fmul fast float %2964, %3001
  %3003 = call float @dx.op.unary.f32(i32 22, float %3002)  ; Frc(value)
  %3004 = mul nuw nsw i32 %2942, %2943
  %3005 = uitofp i32 %3004 to float
  %3006 = fmul fast float %3003, %3005
  %3007 = call float @dx.op.unary.f32(i32 27, float %3006)  ; Round_ni(value)
  %3008 = fptoui float %3007 to i32
  %3009 = urem i32 %3008, %2942
  %3010 = udiv i32 %3008, %2943
  %3011 = call float @dx.op.unary.f32(i32 22, float %2991)  ; Frc(value)
  %3012 = call float @dx.op.unary.f32(i32 22, float %2992)  ; Frc(value)
  %3013 = uitofp i32 %3009 to float
  %3014 = uitofp i32 %3010 to float
  %3015 = fadd fast float %3011, %3013
  %3016 = fadd fast float %3012, %3014
  %3017 = uitofp i32 %2942 to float
  %3018 = uitofp i32 %2943 to float
  %3019 = fdiv fast float %3015, %3017
  %3020 = fdiv fast float %3016, %3018
  br label %3021

; <label>:3021                                    ; preds = %2996, %2923
  %3022 = phi float [ %3019, %2996 ], [ %2991, %2923 ]
  %3023 = phi float [ %3020, %2996 ], [ %2992, %2923 ]
  %3024 = and i32 %2917, 256
  %3025 = icmp eq i32 %3024, 0
  br i1 %3025, label %3072, label %3026

; <label>:3026                                    ; preds = %3021
  %3027 = add i32 %48, 436
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3027, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = add i32 %3029, 0
  %3031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3030, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3032 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3031, %dx.types.Handle %99, float %3022, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3033 = extractvalue %dx.types.ResRet.f32 %3032, 0
  %3034 = add i32 %48, 148
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3034, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = shl i32 %3036, 4
  %3038 = and i32 %3037, 32752
  %3039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3038)  ; LegacyF16ToF32(value)
  %3040 = lshr i32 %3036, 7
  %3041 = and i32 %3040, 32752
  %3042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3041)  ; LegacyF16ToF32(value)
  %3043 = fsub fast float 1.000000e+00, %487
  %3044 = call float @dx.op.binary.f32(i32 35, float %3043, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3045 = bitcast float %487 to i32
  %3046 = sitofp i32 %3045 to float
  %3047 = fadd fast float %3046, 0xC1CFBF8940000000
  %3048 = fmul fast float %3042, %3047
  %3049 = fadd fast float %3048, 0x41CFBF8940000000
  %3050 = fptosi float %3049 to i32
  %3051 = bitcast i32 %3050 to float
  %3052 = bitcast float %3044 to i32
  %3053 = sitofp i32 %3052 to float
  %3054 = fadd fast float %3053, 0xC1CFBF8940000000
  %3055 = fmul fast float %3054, %3042
  %3056 = fadd fast float %3055, 0x41CFBF8940000000
  %3057 = fptosi float %3056 to i32
  %3058 = bitcast i32 %3057 to float
  %3059 = fmul fast float %3051, %3039
  %3060 = fmul fast float %3058, %3039
  %3061 = fsub fast float %3044, %3059
  %3062 = fadd fast float %3060, %3044
  %3063 = call float @dx.op.unary.f32(i32 7, float %3061)  ; Saturate(value)
  %3064 = call float @dx.op.unary.f32(i32 7, float %3062)  ; Saturate(value)
  %3065 = fsub fast float %3033, %3063
  %3066 = fsub fast float %3064, %3063
  %3067 = bitcast float %3066 to i32
  %3068 = sub nsw i32 2129859010, %3067
  %3069 = bitcast i32 %3068 to float
  %3070 = fmul fast float %3069, %3065
  %3071 = call float @dx.op.unary.f32(i32 7, float %3070)  ; Saturate(value)
  br label %3072

; <label>:3072                                    ; preds = %3026, %3021
  %3073 = phi float [ %3071, %3026 ], [ %487, %3021 ]
  %3074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3075 = extractvalue %dx.types.ResRet.i32 %3074, 0
  %3076 = and i32 %3075, 128
  %3077 = icmp eq i32 %3076, 0
  br i1 %3077, label %3094, label %3078

; <label>:3078                                    ; preds = %3072
  %3079 = add i32 %48, 420
  %3080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3079, i32 undef)  ; BufferLoad(srv,index,wot)
  %3081 = extractvalue %dx.types.ResRet.i32 %3080, 0
  %3082 = add i32 %3081, 0
  %3083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3084 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3083, %dx.types.Handle %99, float %3022, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3085 = extractvalue %dx.types.ResRet.f32 %3084, 0
  %3086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3087 = extractvalue %dx.types.ResRet.i32 %3086, 0
  %3088 = and i32 %3087, 524288
  %3089 = icmp ne i32 %3088, 0
  %3090 = fcmp fast ogt float %3085, 0x3FE0101020000000
  %3091 = select i1 %3090, float 1.000000e+00, float 0.000000e+00
  %3092 = select i1 %3089, float %3091, float %3085
  %3093 = fmul fast float %3092, %3073
  br label %3094

; <label>:3094                                    ; preds = %3078, %3072
  %3095 = phi float [ %3093, %3078 ], [ %3073, %3072 ]
  %3096 = fcmp fast ult float %3095, 0x3F70101020000000
  br i1 %3096, label %3784, label %3097

; <label>:3097                                    ; preds = %3094
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = and i32 %3099, 16
  %3101 = icmp eq i32 %3100, 0
  br i1 %3101, label %3300, label %3102

; <label>:3102                                    ; preds = %3097
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = add i32 %48, 372
  %3106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3105, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.i32 %3106, 0
  %3108 = add i32 %3107, 0
  %3109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3110 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3109, %dx.types.Handle %98, float %3022, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3111 = extractvalue %dx.types.ResRet.f32 %3110, 0
  %3112 = extractvalue %dx.types.ResRet.f32 %3110, 1
  %3113 = extractvalue %dx.types.ResRet.f32 %3110, 2
  %3114 = extractvalue %dx.types.ResRet.f32 %3110, 3
  %3115 = and i32 %3104, 255
  %3116 = uitofp i32 %3115 to float
  %3117 = lshr i32 %3104, 8
  %3118 = and i32 %3117, 255
  %3119 = uitofp i32 %3118 to float
  %3120 = fmul fast float %3114, %3116
  %3121 = fadd fast float %3120, %3119
  %3122 = fmul fast float %3121, 0x3F70101000000000
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = and i32 %3124, 512
  %3126 = icmp eq i32 %3125, 0
  br i1 %3126, label %3135, label %3127

; <label>:3127                                    ; preds = %3102
  %3128 = add i32 %48, 452
  %3129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3130 = extractvalue %dx.types.ResRet.i32 %3129, 0
  %3131 = add i32 %3130, 0
  %3132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3131, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3133 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3132, %dx.types.Handle %99, float %3022, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3134 = extractvalue %dx.types.ResRet.f32 %3133, 0
  br label %3135

; <label>:3135                                    ; preds = %3127, %3102
  %3136 = phi float [ %3134, %3127 ], [ 1.000000e+00, %3102 ]
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = and i32 %3138, 33554432
  %3140 = icmp eq i32 %3139, 0
  br i1 %3140, label %3247, label %3141

; <label>:3141                                    ; preds = %3135
  %3142 = add i32 %48, 272
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = and i32 %3144, 65535
  %3146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3145)  ; LegacyF16ToF32(value)
  %3147 = lshr i32 %3144, 16
  %3148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3147)  ; LegacyF16ToF32(value)
  %3149 = add i32 %48, 276
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3149, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = and i32 %3151, 65535
  %3153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3152)  ; LegacyF16ToF32(value)
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = lshr i32 %3155, 24
  %3157 = uitofp i32 %3156 to float
  %3158 = fmul fast float %3157, 0x3F70101020000000
  %3159 = and i32 %3155, 255
  %3160 = uitofp i32 %3159 to float
  %3161 = fmul fast float %3160, 0x3F70101020000000
  %3162 = lshr i32 %3155, 8
  %3163 = and i32 %3162, 255
  %3164 = uitofp i32 %3163 to float
  %3165 = fmul fast float %3164, 0x3F70101020000000
  %3166 = lshr i32 %3155, 16
  %3167 = and i32 %3166, 255
  %3168 = uitofp i32 %3167 to float
  %3169 = fmul fast float %3168, 0x3F70101020000000
  %3170 = add i32 %48, 268
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3170, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = lshr i32 %3172, 24
  %3174 = uitofp i32 %3173 to float
  %3175 = fmul fast float %3174, 0x3F70101020000000
  %3176 = and i32 %3172, 255
  %3177 = uitofp i32 %3176 to float
  %3178 = fmul fast float %3177, 0x3F70101020000000
  %3179 = lshr i32 %3172, 8
  %3180 = and i32 %3179, 255
  %3181 = uitofp i32 %3180 to float
  %3182 = fmul fast float %3181, 0x3F70101020000000
  %3183 = lshr i32 %3172, 16
  %3184 = and i32 %3183, 255
  %3185 = uitofp i32 %3184 to float
  %3186 = fmul fast float %3185, 0x3F70101020000000
  %3187 = bitcast float %3111 to i32
  %3188 = ashr i32 %3187, 1
  %3189 = sub nsw i32 1597463174, %3188
  %3190 = bitcast i32 %3189 to float
  %3191 = fmul fast float %3111, 5.000000e-01
  %3192 = fmul fast float %3190, %3190
  %3193 = fmul fast float %3192, %3191
  %3194 = fsub fast float 1.500000e+00, %3193
  %3195 = fmul fast float %3190, %3111
  %3196 = fmul fast float %3195, %3194
  %3197 = bitcast float %3112 to i32
  %3198 = ashr i32 %3197, 1
  %3199 = sub nsw i32 1597463174, %3198
  %3200 = bitcast i32 %3199 to float
  %3201 = fmul fast float %3112, 5.000000e-01
  %3202 = fmul fast float %3200, %3200
  %3203 = fmul fast float %3202, %3201
  %3204 = fsub fast float 1.500000e+00, %3203
  %3205 = fmul fast float %3200, %3112
  %3206 = fmul fast float %3205, %3204
  %3207 = bitcast float %3113 to i32
  %3208 = ashr i32 %3207, 1
  %3209 = sub nsw i32 1597463174, %3208
  %3210 = bitcast i32 %3209 to float
  %3211 = fmul fast float %3113, 5.000000e-01
  %3212 = fmul fast float %3210, %3210
  %3213 = fmul fast float %3212, %3211
  %3214 = fsub fast float 1.500000e+00, %3213
  %3215 = fmul fast float %3210, %3113
  %3216 = fmul fast float %3215, %3214
  %3217 = fsub fast float %3196, %3178
  %3218 = fsub fast float %3206, %3182
  %3219 = fsub fast float %3216, %3186
  %3220 = fmul fast float %3217, %3146
  %3221 = fmul fast float %3218, %3148
  %3222 = fmul fast float %3219, %3153
  %3223 = fadd fast float %3220, %3161
  %3224 = fadd fast float %3221, %3165
  %3225 = fadd fast float %3222, %3169
  %3226 = call float @dx.op.unary.f32(i32 7, float %3223)  ; Saturate(value)
  %3227 = call float @dx.op.unary.f32(i32 7, float %3224)  ; Saturate(value)
  %3228 = call float @dx.op.unary.f32(i32 7, float %3225)  ; Saturate(value)
  %3229 = fmul fast float %3226, %3226
  %3230 = fmul fast float %3227, %3227
  %3231 = fmul fast float %3228, %3228
  %3232 = fsub fast float %3229, %3111
  %3233 = fsub fast float %3230, %3112
  %3234 = fsub fast float %3231, %3113
  %3235 = fmul fast float %3232, %3136
  %3236 = fmul fast float %3233, %3136
  %3237 = fmul fast float %3234, %3136
  %3238 = fadd fast float %3235, %3111
  %3239 = fadd fast float %3236, %3112
  %3240 = fadd fast float %3237, %3113
  %3241 = fadd fast float %3158, %3122
  %3242 = fsub fast float %3241, %3175
  %3243 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  %3244 = fsub fast float %3243, %3122
  %3245 = fmul fast float %3244, %3136
  %3246 = fadd fast float %3245, %3122
  br label %3300

; <label>:3247                                    ; preds = %3135
  %3248 = and i32 %3138, 134217728
  %3249 = icmp eq i32 %3248, 0
  br i1 %3249, label %3284, label %3250

; <label>:3250                                    ; preds = %3247
  %3251 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %3252 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %3253 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %3254 = fadd fast float %3251, -5.000000e-01
  %3255 = fadd fast float %3252, -5.000000e-01
  %3256 = fadd fast float %3253, -5.000000e-01
  %3257 = fmul fast float %3254, %3136
  %3258 = fmul fast float %3255, %3136
  %3259 = fmul fast float %3256, %3136
  %3260 = fadd fast float %3257, 5.000000e-01
  %3261 = fadd fast float %3258, 5.000000e-01
  %3262 = fadd fast float %3259, 5.000000e-01
  %3263 = call float @dx.op.unary.f32(i32 24, float %3111)  ; Sqrt(value)
  %3264 = call float @dx.op.unary.f32(i32 24, float %3112)  ; Sqrt(value)
  %3265 = call float @dx.op.unary.f32(i32 24, float %3113)  ; Sqrt(value)
  %3266 = fmul fast float %3260, 2.000000e+00
  %3267 = fsub fast float 1.000000e+00, %3266
  %3268 = fmul fast float %3267, %3263
  %3269 = fadd fast float %3268, %3266
  %3270 = fmul fast float %3269, %3263
  %3271 = fmul fast float %3261, 2.000000e+00
  %3272 = fsub fast float 1.000000e+00, %3271
  %3273 = fmul fast float %3272, %3264
  %3274 = fadd fast float %3273, %3271
  %3275 = fmul fast float %3274, %3264
  %3276 = fmul fast float %3262, 2.000000e+00
  %3277 = fsub fast float 1.000000e+00, %3276
  %3278 = fmul fast float %3277, %3265
  %3279 = fadd fast float %3278, %3276
  %3280 = fmul fast float %3279, %3265
  %3281 = fmul fast float %3270, %3270
  %3282 = fmul fast float %3275, %3275
  %3283 = fmul fast float %3280, %3280
  br label %3300

; <label>:3284                                    ; preds = %3247
  %3285 = fmul fast float %405, %405
  %3286 = fmul fast float %409, %409
  %3287 = fmul fast float %413, %413
  %3288 = fadd fast float %3285, -1.000000e+00
  %3289 = fadd fast float %3286, -1.000000e+00
  %3290 = fadd fast float %3287, -1.000000e+00
  %3291 = fmul fast float %3136, %3288
  %3292 = fmul fast float %3136, %3289
  %3293 = fmul fast float %3136, %3290
  %3294 = fadd fast float %3291, 1.000000e+00
  %3295 = fadd fast float %3292, 1.000000e+00
  %3296 = fadd fast float %3293, 1.000000e+00
  %3297 = fmul fast float %3294, %3111
  %3298 = fmul fast float %3295, %3112
  %3299 = fmul fast float %3296, %3113
  br label %3300

; <label>:3300                                    ; preds = %3284, %3250, %3141, %3097
  %3301 = phi float [ %3246, %3141 ], [ %3122, %3250 ], [ %3122, %3284 ], [ 0x3FA23C0BE0000000, %3097 ]
  %3302 = phi float [ %3238, %3141 ], [ %3281, %3250 ], [ %3297, %3284 ], [ 1.000000e+00, %3097 ]
  %3303 = phi float [ %3239, %3141 ], [ %3282, %3250 ], [ %3298, %3284 ], [ 1.000000e+00, %3097 ]
  %3304 = phi float [ %3240, %3141 ], [ %3283, %3250 ], [ %3299, %3284 ], [ 1.000000e+00, %3097 ]
  %3305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.i32 %3305, 1
  %3307 = and i32 %3306, 1
  %3308 = icmp ne i32 %3307, 0
  %3309 = add i32 %48, 356
  %3310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.i32 %3310, 0
  %3312 = and i32 %3311, 32
  %3313 = icmp ne i32 %3312, 0
  %3314 = and i1 %3308, %3313
  %3315 = select i1 %3314, float 1.000000e+00, float %3302
  %3316 = select i1 %3314, float 0x3FD3333340000000, float %3303
  %3317 = select i1 %3314, float 0x3FD3333340000000, float %3304
  %3318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3319 = extractvalue %dx.types.ResRet.i32 %3318, 0
  %3320 = and i32 %3319, 32
  %3321 = icmp eq i32 %3320, 0
  br i1 %3321, label %3394, label %3322

; <label>:3322                                    ; preds = %3300
  %3323 = add i32 %48, 140
  %3324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.i32 %3324, 0
  %3326 = add i32 %48, 388
  %3327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3326, i32 undef)  ; BufferLoad(srv,index,wot)
  %3328 = extractvalue %dx.types.ResRet.i32 %3327, 0
  %3329 = add i32 %3328, 0
  %3330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3329, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3331 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3330, %dx.types.Handle %98, float %3022, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3332 = extractvalue %dx.types.ResRet.f32 %3331, 0
  %3333 = extractvalue %dx.types.ResRet.f32 %3331, 1
  %3334 = extractvalue %dx.types.ResRet.f32 %3331, 2
  %3335 = extractvalue %dx.types.ResRet.f32 %3331, 3
  %3336 = and i32 %3325, 255
  %3337 = uitofp i32 %3336 to float
  %3338 = lshr i32 %3325, 8
  %3339 = and i32 %3338, 255
  %3340 = uitofp i32 %3339 to float
  %3341 = lshr i32 %3325, 16
  %3342 = and i32 %3341, 255
  %3343 = uitofp i32 %3342 to float
  %3344 = fmul fast float %3343, 0x3F70101000000000
  %3345 = fmul fast float %3332, %3337
  %3346 = fadd fast float %3345, %3340
  %3347 = fmul fast float %3346, 0x3F70101000000000
  %3348 = fadd fast float %3333, -5.000000e-01
  %3349 = fadd fast float %3335, -5.000000e-01
  %3350 = fmul fast float %3348, %3344
  %3351 = fmul fast float %3349, %3344
  %3352 = fadd fast float %3350, 5.000000e-01
  %3353 = fadd fast float %3351, 5.000000e-01
  %3354 = fmul fast float %3352, 2.000000e+00
  %3355 = fadd fast float %3354, -1.000000e+00
  %3356 = fmul fast float %3353, 2.000000e+00
  %3357 = fadd fast float %3356, -1.000000e+00
  %3358 = fadd fast float %3355, %3357
  %3359 = fmul fast float %3358, 5.000000e-01
  %3360 = fsub fast float %3355, %3357
  %3361 = fmul fast float %3360, 5.000000e-01
  %3362 = call float @dx.op.unary.f32(i32 6, float %3359)  ; FAbs(value)
  %3363 = fsub fast float 1.000000e+00, %3362
  %3364 = call float @dx.op.unary.f32(i32 6, float %3361)  ; FAbs(value)
  %3365 = fsub fast float %3363, %3364
  %3366 = call float @dx.op.dot3.f32(i32 55, float %3359, float %3361, float %3365, float %3359, float %3361, float %3365)  ; Dot3(ax,ay,az,bx,by,bz)
  %3367 = call float @dx.op.unary.f32(i32 25, float %3366)  ; Rsqrt(value)
  %3368 = fmul fast float %3359, %3367
  %3369 = fmul fast float %3361, %3367
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = and i32 %3371, 67108864
  %3373 = icmp eq i32 %3372, 0
  br i1 %3373, label %3390, label %3374

; <label>:3374                                    ; preds = %3322
  %3375 = add i32 %48, 328
  %3376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.i32 %3376, 0
  %3378 = and i32 %3377, 65535
  %3379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3378)  ; LegacyF16ToF32(value)
  %3380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2932, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.i32 %3380, 0
  %3382 = and i32 %3381, 65535
  %3383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3382)  ; LegacyF16ToF32(value)
  %3384 = lshr i32 %3377, 16
  %3385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3384)  ; LegacyF16ToF32(value)
  %3386 = fsub fast float %3347, %3385
  %3387 = fmul fast float %3386, %3379
  %3388 = fadd fast float %3387, %3383
  %3389 = call float @dx.op.unary.f32(i32 7, float %3388)  ; Saturate(value)
  br label %3390

; <label>:3390                                    ; preds = %3374, %3322
  %3391 = phi float [ %3389, %3374 ], [ %3347, %3322 ]
  %3392 = call float @dx.op.dot2.f32(i32 54, float %3368, float %3369, float %2926, float %2927)  ; Dot2(ax,ay,bx,by)
  %3393 = call float @dx.op.dot2.f32(i32 54, float %3368, float %3369, float %2928, float %2929)  ; Dot2(ax,ay,bx,by)
  br label %3394

; <label>:3394                                    ; preds = %3390, %3300
  %3395 = phi float [ %3391, %3390 ], [ 0x3FD6666660000000, %3300 ]
  %3396 = phi float [ %3392, %3390 ], [ 0.000000e+00, %3300 ]
  %3397 = phi float [ %3393, %3390 ], [ 0.000000e+00, %3300 ]
  %3398 = phi float [ %3334, %3390 ], [ 1.000000e+00, %3300 ]
  %3399 = add i32 %48, 208
  %3400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.i32 %3400, 0
  %3402 = lshr i32 %3401, 22
  %3403 = shl nuw nsw i32 %3402, 5
  %3404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3403)  ; LegacyF16ToF32(value)
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = and i32 %3406, 64
  %3408 = icmp eq i32 %3407, 0
  br i1 %3408, label %3442, label %3409

; <label>:3409                                    ; preds = %3394
  %3410 = add i32 %48, 404
  %3411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3412 = extractvalue %dx.types.ResRet.i32 %3411, 0
  %3413 = add i32 %3412, 0
  %3414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = and i32 %3416, 131072
  %3418 = icmp eq i32 %3417, 0
  %3419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3414, %dx.types.Handle %98, float %3022, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3420 = extractvalue %dx.types.ResRet.f32 %3419, 0
  %3421 = extractvalue %dx.types.ResRet.f32 %3419, 1
  %3422 = extractvalue %dx.types.ResRet.f32 %3419, 2
  %3423 = fmul fast float %3420, %393
  %3424 = fmul fast float %3421, %396
  %3425 = fmul fast float %3422, %399
  br i1 %3418, label %3432, label %3426

; <label>:3426                                    ; preds = %3409
  %3427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3428 = extractvalue %dx.types.CBufRet.f32 %3427, 0
  %3429 = fmul fast float %3428, %3423
  %3430 = fmul fast float %3428, %3424
  %3431 = fmul fast float %3428, %3425
  br label %3432

; <label>:3432                                    ; preds = %3426, %3409
  %3433 = phi float [ %3429, %3426 ], [ %3423, %3409 ]
  %3434 = phi float [ %3430, %3426 ], [ %3424, %3409 ]
  %3435 = phi float [ %3431, %3426 ], [ %3425, %3409 ]
  %3436 = fmul fast float %3433, %3404
  %3437 = select i1 %250, float %3436, float %3433
  %3438 = call float @dx.op.dot3.f32(i32 55, float %3437, float %3434, float %3435, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3439 = select i1 %250, float 0.000000e+00, float %3433
  %3440 = select i1 %250, float %3438, float %3434
  %3441 = select i1 %250, float 0.000000e+00, float %3435
  br label %3442

; <label>:3442                                    ; preds = %3432, %3394
  %3443 = phi float [ %3439, %3432 ], [ 0.000000e+00, %3394 ]
  %3444 = phi float [ %3440, %3432 ], [ 0.000000e+00, %3394 ]
  %3445 = phi float [ %3441, %3432 ], [ 0.000000e+00, %3394 ]
  %3446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = and i32 %3447, 1024
  %3449 = icmp eq i32 %3448, 0
  br i1 %3449, label %3480, label %3450

; <label>:3450                                    ; preds = %3442
  %3451 = add i32 %48, 200
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3451, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = and i32 %3453, 255
  %3455 = uitofp i32 %3454 to float
  %3456 = fmul fast float %3455, 0x3F70101020000000
  %3457 = lshr i32 %3453, 8
  %3458 = and i32 %3457, 255
  %3459 = uitofp i32 %3458 to float
  %3460 = fmul fast float %3459, 0x3F70101020000000
  %3461 = lshr i32 %3453, 16
  %3462 = and i32 %3461, 255
  %3463 = uitofp i32 %3462 to float
  %3464 = fmul fast float %3463, 0x3F70101020000000
  %3465 = fmul fast float %3456, %3456
  %3466 = fmul fast float %3460, %3460
  %3467 = fmul fast float %3464, %3464
  %3468 = add i32 %48, 468
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = add i32 %3470, 0
  %3472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3473 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3472, %dx.types.Handle %99, float %3022, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3474 = extractvalue %dx.types.ResRet.f32 %3473, 0
  %3475 = extractvalue %dx.types.ResRet.f32 %3473, 1
  %3476 = extractvalue %dx.types.ResRet.f32 %3473, 2
  %3477 = fmul fast float %3465, %3474
  %3478 = fmul fast float %3466, %3475
  %3479 = fmul fast float %3467, %3476
  br label %3480

; <label>:3480                                    ; preds = %3450, %3442
  %3481 = phi float [ %3477, %3450 ], [ 0.000000e+00, %3442 ]
  %3482 = phi float [ %3478, %3450 ], [ 0.000000e+00, %3442 ]
  %3483 = phi float [ %3479, %3450 ], [ 0.000000e+00, %3442 ]
  %3484 = fcmp fast ogt float %3481, 0.000000e+00
  %3485 = fcmp fast ogt float %3482, 0.000000e+00
  %3486 = fcmp fast ogt float %3483, 0.000000e+00
  %3487 = call float @dx.op.unary.f32(i32 23, float %3481)  ; Log(value)
  %3488 = call float @dx.op.unary.f32(i32 23, float %3482)  ; Log(value)
  %3489 = call float @dx.op.unary.f32(i32 23, float %3483)  ; Log(value)
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = lshr i32 %3491, 7
  %3493 = and i32 %3492, 32752
  %3494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3493)  ; LegacyF16ToF32(value)
  %3495 = fmul fast float %3487, 0xBFE62E4300000000
  %3496 = fmul fast float %3495, %3494
  %3497 = fmul fast float %3488, 0xBFE62E4300000000
  %3498 = fmul fast float %3497, %3494
  %3499 = fmul fast float %3489, 0xBFE62E4300000000
  %3500 = fmul fast float %3499, %3494
  %3501 = select i1 %3484, float %3496, float 1.270000e+02
  %3502 = select i1 %3485, float %3498, float 1.270000e+02
  %3503 = select i1 %3486, float %3500, float 1.270000e+02
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = and i32 %3505, 10240
  %3507 = icmp eq i32 %3506, 0
  br i1 %3507, label %3528, label %3508

; <label>:3508                                    ; preds = %3480
  %3509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3510 = extractvalue %dx.types.ResRet.i32 %3509, 0
  %3511 = and i32 %3510, 2048
  %3512 = icmp eq i32 %3511, 0
  br i1 %3512, label %3528, label %3513

; <label>:3513                                    ; preds = %3508
  %3514 = add i32 %48, 484
  %3515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3514, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.i32 %3515, 0
  %3517 = add i32 %3516, 0
  %3518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3518, %dx.types.Handle %99, float %3022, float %3023, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3520 = extractvalue %dx.types.ResRet.f32 %3519, 3
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = shl i32 %3522, 4
  %3524 = and i32 %3523, 32752
  %3525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3524)  ; LegacyF16ToF32(value)
  %3526 = fmul fast float %3525, %3520
  %3527 = call float @dx.op.binary.f32(i32 35, float %3526, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3528

; <label>:3528                                    ; preds = %3513, %3508, %3480
  %3529 = phi float [ %3527, %3513 ], [ 0x3F70101020000000, %3508 ], [ 0x3F70101020000000, %3480 ]
  %3530 = add i32 %48, 144
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = and i32 %3532, 255
  %3534 = uitofp i32 %3533 to float
  %3535 = lshr i32 %3532, 8
  %3536 = and i32 %3535, 255
  %3537 = uitofp i32 %3536 to float
  %3538 = call float @dx.op.dot3.f32(i32 55, float %3315, float %3316, float %3317, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3539 = fmul fast float %3537, %3538
  %3540 = fadd fast float %3539, %3534
  %3541 = fmul fast float %3540, 0x3F70101020000000
  %3542 = call float @dx.op.unary.f32(i32 7, float %3541)  ; Saturate(value)
  br i1 %2914, label %3543, label %3578

; <label>:3543                                    ; preds = %3528
  %3544 = fmul fast float %3529, 2.000000e+00
  %3545 = fcmp fast olt float %3501, 1.270000e+02
  %3546 = fcmp fast olt float %3502, 1.270000e+02
  %3547 = fcmp fast olt float %3503, 1.270000e+02
  %3548 = fmul fast float %3501, 0xBFF7154760000000
  %3549 = fmul fast float %3548, %3544
  %3550 = fmul fast float %3502, 0xBFF7154760000000
  %3551 = fmul fast float %3550, %3544
  %3552 = fmul fast float %3503, 0xBFF7154760000000
  %3553 = fmul fast float %3552, %3544
  %3554 = call float @dx.op.unary.f32(i32 21, float %3549)  ; Exp(value)
  %3555 = call float @dx.op.unary.f32(i32 21, float %3551)  ; Exp(value)
  %3556 = call float @dx.op.unary.f32(i32 21, float %3553)  ; Exp(value)
  %3557 = call float @dx.op.unary.f32(i32 7, float %3554)  ; Saturate(value)
  %3558 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  %3559 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3560 = fadd fast float %3557, -1.000000e+00
  %3561 = select i1 %3545, float %3560, float -1.000000e+00
  %3562 = fadd fast float %3558, -1.000000e+00
  %3563 = select i1 %3546, float %3562, float -1.000000e+00
  %3564 = fadd fast float %3559, -1.000000e+00
  %3565 = select i1 %3547, float %3564, float -1.000000e+00
  %3566 = fmul fast float %3561, %3095
  %3567 = fmul fast float %3563, %3095
  %3568 = fmul fast float %3565, %3095
  %3569 = fadd fast float %3566, 1.000000e+00
  %3570 = fadd fast float %3567, 1.000000e+00
  %3571 = fadd fast float %3568, 1.000000e+00
  %3572 = fmul fast float %3569, %2899
  %3573 = fmul fast float %3570, %2900
  %3574 = fmul fast float %3571, %2901
  %3575 = fmul fast float %3569, %2902
  %3576 = fmul fast float %3570, %2903
  %3577 = fmul fast float %3571, %2904
  br label %3578

; <label>:3578                                    ; preds = %3543, %3528
  %3579 = phi float [ %3572, %3543 ], [ %2899, %3528 ]
  %3580 = phi float [ %3573, %3543 ], [ %2900, %3528 ]
  %3581 = phi float [ %3574, %3543 ], [ %2901, %3528 ]
  %3582 = phi float [ %3575, %3543 ], [ %2902, %3528 ]
  %3583 = phi float [ %3576, %3543 ], [ %2903, %3528 ]
  %3584 = phi float [ %3577, %3543 ], [ %2904, %3528 ]
  %3585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.i32 %3585, 0
  %3587 = and i32 %3586, 3
  %3588 = icmp eq i32 %3587, 3
  br i1 %3588, label %3667, label %3589

; <label>:3589                                    ; preds = %3578
  %3590 = and i32 %3586, 16
  %3591 = icmp ne i32 %3590, 0
  %3592 = select i1 %3591, float %3095, float 0.000000e+00
  %3593 = icmp eq i32 %3587, 0
  br i1 %3593, label %3594, label %3622

; <label>:3594                                    ; preds = %3589
  %3595 = and i32 %3586, 64
  %3596 = icmp ne i32 %3595, 0
  %3597 = select i1 %3596, float %3095, float 0.000000e+00
  %3598 = fsub fast float %3315, %3579
  %3599 = fsub fast float %3316, %3580
  %3600 = fsub fast float %3317, %3581
  %3601 = fmul fast float %3592, %3598
  %3602 = fmul fast float %3592, %3599
  %3603 = fmul fast float %3592, %3600
  %3604 = fadd fast float %3601, %3579
  %3605 = fadd fast float %3602, %3580
  %3606 = fadd fast float %3603, %3581
  %3607 = fsub fast float %3301, %2908
  %3608 = fmul fast float %3592, %3607
  %3609 = fadd fast float %3608, %2908
  %3610 = fsub fast float %3443, %3582
  %3611 = fsub fast float %3444, %3583
  %3612 = fsub fast float %3445, %3584
  %3613 = fmul fast float %3597, %3610
  %3614 = fmul fast float %3597, %3611
  %3615 = fmul fast float %3597, %3612
  %3616 = fadd fast float %3613, %3582
  %3617 = fadd fast float %3614, %3583
  %3618 = fadd fast float %3615, %3584
  %3619 = fsub fast float %3542, %2912
  %3620 = fmul fast float %3592, %3619
  %3621 = fadd fast float %3620, %2912
  br label %3667

; <label>:3622                                    ; preds = %3589
  %3623 = icmp eq i32 %3587, 1
  br i1 %3623, label %3624, label %3637

; <label>:3624                                    ; preds = %3622
  %3625 = fadd fast float %3315, -1.000000e+00
  %3626 = fadd fast float %3316, -1.000000e+00
  %3627 = fadd fast float %3317, -1.000000e+00
  %3628 = fmul fast float %3592, %3625
  %3629 = fmul fast float %3592, %3626
  %3630 = fmul fast float %3592, %3627
  %3631 = fadd fast float %3628, 1.000000e+00
  %3632 = fadd fast float %3629, 1.000000e+00
  %3633 = fadd fast float %3630, 1.000000e+00
  %3634 = fmul fast float %3631, %3579
  %3635 = fmul fast float %3632, %3580
  %3636 = fmul fast float %3633, %3581
  br label %3667

; <label>:3637                                    ; preds = %3622
  %3638 = icmp eq i32 %3587, 2
  br i1 %3638, label %3639, label %3667

; <label>:3639                                    ; preds = %3637
  %3640 = call float @dx.op.unary.f32(i32 24, float %3315)  ; Sqrt(value)
  %3641 = call float @dx.op.unary.f32(i32 24, float %3316)  ; Sqrt(value)
  %3642 = call float @dx.op.unary.f32(i32 24, float %3317)  ; Sqrt(value)
  %3643 = fadd fast float %3640, -5.000000e-01
  %3644 = fadd fast float %3641, -5.000000e-01
  %3645 = fadd fast float %3642, -5.000000e-01
  %3646 = fmul fast float %3643, %3592
  %3647 = fmul fast float %3644, %3592
  %3648 = fmul fast float %3645, %3592
  %3649 = fadd fast float %3646, 5.000000e-01
  %3650 = fadd fast float %3647, 5.000000e-01
  %3651 = fadd fast float %3648, 5.000000e-01
  %3652 = fmul fast float %3649, 2.000000e+00
  %3653 = fsub fast float 1.000000e+00, %3652
  %3654 = fmul fast float %3653, %3579
  %3655 = fadd fast float %3654, %3652
  %3656 = fmul fast float %3655, %3579
  %3657 = fmul fast float %3650, 2.000000e+00
  %3658 = fsub fast float 1.000000e+00, %3657
  %3659 = fmul fast float %3658, %3580
  %3660 = fadd fast float %3659, %3657
  %3661 = fmul fast float %3660, %3580
  %3662 = fmul fast float %3651, 2.000000e+00
  %3663 = fsub fast float 1.000000e+00, %3662
  %3664 = fmul fast float %3663, %3581
  %3665 = fadd fast float %3664, %3662
  %3666 = fmul fast float %3665, %3581
  br label %3667

; <label>:3667                                    ; preds = %3639, %3637, %3624, %3594, %3578
  %3668 = phi float [ %3579, %3578 ], [ %3656, %3639 ], [ %3579, %3637 ], [ %3634, %3624 ], [ %3604, %3594 ]
  %3669 = phi float [ %3580, %3578 ], [ %3661, %3639 ], [ %3580, %3637 ], [ %3635, %3624 ], [ %3605, %3594 ]
  %3670 = phi float [ %3581, %3578 ], [ %3666, %3639 ], [ %3581, %3637 ], [ %3636, %3624 ], [ %3606, %3594 ]
  %3671 = phi float [ %3582, %3578 ], [ %3582, %3639 ], [ %3582, %3637 ], [ %3582, %3624 ], [ %3616, %3594 ]
  %3672 = phi float [ %3583, %3578 ], [ %3583, %3639 ], [ %3583, %3637 ], [ %3583, %3624 ], [ %3617, %3594 ]
  %3673 = phi float [ %3584, %3578 ], [ %3584, %3639 ], [ %3584, %3637 ], [ %3584, %3624 ], [ %3618, %3594 ]
  %3674 = phi float [ %2908, %3578 ], [ %2908, %3639 ], [ %2908, %3637 ], [ %2908, %3624 ], [ %3609, %3594 ]
  %3675 = phi float [ %2912, %3578 ], [ %2912, %3639 ], [ %2912, %3637 ], [ %2912, %3624 ], [ %3621, %3594 ]
  %3676 = and i32 %3586, 12
  %3677 = icmp eq i32 %3676, 12
  br i1 %3677, label %3784, label %3678

; <label>:3678                                    ; preds = %3667
  %3679 = and i32 %3586, 2097184
  %3680 = icmp eq i32 %3679, 2097184
  %3681 = select i1 %3680, float %3095, float 0.000000e+00
  %3682 = and i32 %3586, 4194336
  %3683 = icmp eq i32 %3682, 4194336
  %3684 = select i1 %3683, float %3095, float 0.000000e+00
  %3685 = and i32 %3586, 8388640
  %3686 = icmp eq i32 %3685, 8388640
  %3687 = select i1 %3686, float %3095, float 0.000000e+00
  %3688 = and i32 %3586, 1024
  %3689 = icmp ne i32 %3688, 0
  %3690 = select i1 %3689, float %3095, float 0.000000e+00
  %3691 = and i32 %3586, 2048
  %3692 = icmp ne i32 %3691, 0
  %3693 = select i1 %3692, float %3095, float 0.000000e+00
  %3694 = icmp eq i32 %3676, 0
  br i1 %3694, label %3695, label %3720

; <label>:3695                                    ; preds = %3678
  %3696 = fsub fast float %3396, %2897
  %3697 = fsub fast float %3397, %2898
  %3698 = fmul fast float %3681, %3696
  %3699 = fmul fast float %3681, %3697
  %3700 = fadd fast float %3698, %2897
  %3701 = fadd fast float %3699, %2898
  %3702 = fsub fast float %3398, %2910
  %3703 = fmul fast float %3684, %3702
  %3704 = fadd fast float %3703, %2910
  %3705 = fsub fast float %3395, %2909
  %3706 = fmul fast float %3687, %3705
  %3707 = fadd fast float %3706, %2909
  %3708 = fsub fast float %3501, %2905
  %3709 = fsub fast float %3502, %2906
  %3710 = fsub fast float %3503, %2907
  %3711 = fmul fast float %3690, %3708
  %3712 = fmul fast float %3690, %3709
  %3713 = fmul fast float %3690, %3710
  %3714 = fadd fast float %3711, %2905
  %3715 = fadd fast float %3712, %2906
  %3716 = fadd fast float %3713, %2907
  %3717 = fsub fast float %3529, %2911
  %3718 = fmul fast float %3693, %3717
  %3719 = fadd fast float %3718, %2911
  br label %3784

; <label>:3720                                    ; preds = %3678
  %3721 = icmp eq i32 %3676, 4
  br i1 %3721, label %3722, label %3762

; <label>:3722                                    ; preds = %3720
  %3723 = fmul fast float %3681, %3396
  %3724 = fmul fast float %3681, %3397
  %3725 = fadd fast float %3723, %2897
  %3726 = fadd fast float %3724, %2898
  %3727 = call float @dx.op.binary.f32(i32 36, float %2910, float %3398)  ; FMin(a,b)
  %3728 = fsub fast float %3727, %2910
  %3729 = fmul fast float %3728, %3684
  %3730 = fadd fast float %3729, %2910
  %3731 = fadd fast float %3395, %2909
  %3732 = fmul fast float %3731, 0x3FF337FAE0000000
  %3733 = fmul fast float %2909, %2909
  %3734 = fmul fast float %3395, %3395
  %3735 = fadd fast float %3734, %3733
  %3736 = fmul fast float %3735, 0x3FE5152B00000000
  %3737 = fmul fast float %2909, 0xBFCC1F85E0000000
  %3738 = fmul fast float %3737, %3395
  %3739 = fadd fast float %3738, 0xBFE1363700000000
  %3740 = fadd fast float %3739, %3732
  %3741 = fsub fast float %3740, %3736
  %3742 = fmul fast float %3731, 0x3FBA6F0D00000000
  %3743 = fmul fast float %3735, 0x3FD0432880000000
  %3744 = fmul fast float %2909, 0xBFEF110800000000
  %3745 = fmul fast float %3744, %3395
  %3746 = fadd fast float %3745, 1.000000e+00
  %3747 = fsub fast float %3746, %3742
  %3748 = fadd fast float %3747, %3743
  %3749 = fdiv fast float %3741, %3748
  %3750 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3751 = fsub fast float %3750, %2909
  %3752 = fmul fast float %3751, %3687
  %3753 = fadd fast float %3752, %2909
  %3754 = fmul fast float %3690, %3501
  %3755 = fmul fast float %3690, %3502
  %3756 = fmul fast float %3690, %3503
  %3757 = fadd fast float %3754, %2905
  %3758 = fadd fast float %3755, %2906
  %3759 = fadd fast float %3756, %2907
  %3760 = fmul fast float %3693, %3529
  %3761 = fadd fast float %3760, %2911
  br label %3784

; <label>:3762                                    ; preds = %3720
  %3763 = icmp eq i32 %3676, 8
  br i1 %3763, label %3764, label %3784

; <label>:3764                                    ; preds = %3762
  %3765 = fmul fast float %3681, %3396
  %3766 = fmul fast float %3681, %3397
  %3767 = fadd fast float %3765, %2897
  %3768 = fadd fast float %3766, %2898
  %3769 = call float @dx.op.binary.f32(i32 36, float %2910, float %3398)  ; FMin(a,b)
  %3770 = fsub fast float %3769, %2910
  %3771 = fmul fast float %3770, %3684
  %3772 = fadd fast float %3771, %2910
  %3773 = fsub fast float %3395, %2909
  %3774 = fmul fast float %3687, %3773
  %3775 = fadd fast float %3774, %2909
  %3776 = fmul fast float %3690, %3501
  %3777 = fmul fast float %3690, %3502
  %3778 = fmul fast float %3690, %3503
  %3779 = fadd fast float %3776, %2905
  %3780 = fadd fast float %3777, %2906
  %3781 = fadd fast float %3778, %2907
  %3782 = fmul fast float %3693, %3529
  %3783 = fadd fast float %3782, %2911
  br label %3784

; <label>:3784                                    ; preds = %3764, %3762, %3722, %3695, %3667, %3094, %2913, %2896
  %3785 = phi float [ %2897, %3667 ], [ %2897, %3094 ], [ %2897, %2896 ], [ %2897, %2913 ], [ %3700, %3695 ], [ %3725, %3722 ], [ %2897, %3762 ], [ %3767, %3764 ]
  %3786 = phi float [ %2898, %3667 ], [ %2898, %3094 ], [ %2898, %2896 ], [ %2898, %2913 ], [ %3701, %3695 ], [ %3726, %3722 ], [ %2898, %3762 ], [ %3768, %3764 ]
  %3787 = phi float [ %3668, %3667 ], [ %2899, %3094 ], [ %2899, %2896 ], [ %2899, %2913 ], [ %3668, %3695 ], [ %3668, %3722 ], [ %3668, %3762 ], [ %3668, %3764 ]
  %3788 = phi float [ %3669, %3667 ], [ %2900, %3094 ], [ %2900, %2896 ], [ %2900, %2913 ], [ %3669, %3695 ], [ %3669, %3722 ], [ %3669, %3762 ], [ %3669, %3764 ]
  %3789 = phi float [ %3670, %3667 ], [ %2901, %3094 ], [ %2901, %2896 ], [ %2901, %2913 ], [ %3670, %3695 ], [ %3670, %3722 ], [ %3670, %3762 ], [ %3670, %3764 ]
  %3790 = phi float [ %3671, %3667 ], [ %2902, %3094 ], [ %2902, %2896 ], [ %2902, %2913 ], [ %3671, %3695 ], [ %3671, %3722 ], [ %3671, %3762 ], [ %3671, %3764 ]
  %3791 = phi float [ %3672, %3667 ], [ %2903, %3094 ], [ %2903, %2896 ], [ %2903, %2913 ], [ %3672, %3695 ], [ %3672, %3722 ], [ %3672, %3762 ], [ %3672, %3764 ]
  %3792 = phi float [ %3673, %3667 ], [ %2904, %3094 ], [ %2904, %2896 ], [ %2904, %2913 ], [ %3673, %3695 ], [ %3673, %3722 ], [ %3673, %3762 ], [ %3673, %3764 ]
  %3793 = phi float [ %2905, %3667 ], [ %2905, %3094 ], [ %2905, %2896 ], [ %2905, %2913 ], [ %3714, %3695 ], [ %3757, %3722 ], [ %2905, %3762 ], [ %3779, %3764 ]
  %3794 = phi float [ %2906, %3667 ], [ %2906, %3094 ], [ %2906, %2896 ], [ %2906, %2913 ], [ %3715, %3695 ], [ %3758, %3722 ], [ %2906, %3762 ], [ %3780, %3764 ]
  %3795 = phi float [ %2907, %3667 ], [ %2907, %3094 ], [ %2907, %2896 ], [ %2907, %2913 ], [ %3716, %3695 ], [ %3759, %3722 ], [ %2907, %3762 ], [ %3781, %3764 ]
  %3796 = phi float [ %3674, %3667 ], [ %2908, %3094 ], [ %2908, %2896 ], [ %2908, %2913 ], [ %3674, %3695 ], [ %3674, %3722 ], [ %3674, %3762 ], [ %3674, %3764 ]
  %3797 = phi float [ %2909, %3667 ], [ %2909, %3094 ], [ %2909, %2896 ], [ %2909, %2913 ], [ %3707, %3695 ], [ %3753, %3722 ], [ %2909, %3762 ], [ %3775, %3764 ]
  %3798 = phi float [ %2910, %3667 ], [ %2910, %3094 ], [ %2910, %2896 ], [ %2910, %2913 ], [ %3704, %3695 ], [ %3730, %3722 ], [ %2910, %3762 ], [ %3772, %3764 ]
  %3799 = phi float [ %2911, %3667 ], [ %2911, %3094 ], [ %2911, %2896 ], [ %2911, %2913 ], [ %3719, %3695 ], [ %3761, %3722 ], [ %2911, %3762 ], [ %3783, %3764 ]
  %3800 = phi float [ %3675, %3667 ], [ %2912, %3094 ], [ %2912, %2896 ], [ %2912, %2913 ], [ %3675, %3695 ], [ %3675, %3722 ], [ %3675, %3762 ], [ %3675, %3764 ]
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 0
  %3803 = call float @dx.op.dot2.f32(i32 54, float %3785, float %3786, float %3785, float %3786)  ; Dot2(ax,ay,bx,by)
  %3804 = fmul fast float %3803, 0x3FE3333340000000
  %3805 = fsub fast float 1.000000e+00, %3804
  %3806 = call float @dx.op.dot3.f32(i32 55, float %3785, float %3786, float %3805, float %3785, float %3786, float %3805)  ; Dot3(ax,ay,az,bx,by,bz)
  %3807 = call float @dx.op.unary.f32(i32 25, float %3806)  ; Rsqrt(value)
  %3808 = fmul fast float %3807, %3785
  %3809 = fmul fast float %3807, %3786
  %3810 = fmul fast float %3805, %3807
  %3811 = fmul fast float %3810, %109
  %3812 = fmul fast float %3810, %110
  %3813 = fmul fast float %3810, %111
  %3814 = fmul fast float %3808, %73
  %3815 = fmul fast float %3808, %74
  %3816 = fmul fast float %3808, %75
  %3817 = fadd fast float %3811, %3814
  %3818 = fadd fast float %3812, %3815
  %3819 = fadd fast float %3813, %3816
  %3820 = fmul fast float %121, %3809
  %3821 = fmul fast float %122, %3809
  %3822 = fmul fast float %123, %3809
  %3823 = fadd fast float %3817, %3820
  %3824 = fadd fast float %3818, %3821
  %3825 = fadd fast float %3819, %3822
  %3826 = call float @dx.op.dot3.f32(i32 55, float %3823, float %3824, float %3825, float %3823, float %3824, float %3825)  ; Dot3(ax,ay,az,bx,by,bz)
  %3827 = call float @dx.op.unary.f32(i32 25, float %3826)  ; Rsqrt(value)
  %3828 = fmul fast float %3823, %3827
  %3829 = fmul fast float %3824, %3827
  %3830 = fmul fast float %3825, %3827
  %3831 = icmp eq i32 %49, 65535
  br i1 %3831, label %4377, label %3832

; <label>:3832                                    ; preds = %3784
  %3833 = call float @dx.op.unary.f32(i32 83, float %50)  ; DerivCoarseX(value)
  %3834 = call float @dx.op.unary.f32(i32 83, float %51)  ; DerivCoarseX(value)
  %3835 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %3836 = call float @dx.op.unary.f32(i32 84, float %50)  ; DerivCoarseY(value)
  %3837 = call float @dx.op.unary.f32(i32 84, float %51)  ; DerivCoarseY(value)
  %3838 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %3839 = fadd fast float %3833, %50
  %3840 = fadd fast float %3834, %51
  %3841 = fadd fast float %3835, %52
  %3842 = fadd fast float %3836, %50
  %3843 = fadd fast float %3837, %51
  %3844 = fadd fast float %3838, %52
  %3845 = mul i32 %49, 48
  %3846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.ResRet.f32 %3846, 2
  %3850 = add i32 %3845, 16
  %3851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.ResRet.f32 %3851, 1
  %3854 = extractvalue %dx.types.ResRet.f32 %3851, 2
  %3855 = add i32 %3845, 32
  %3856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.ResRet.f32 %3856, 1
  %3859 = extractvalue %dx.types.ResRet.f32 %3856, 2
  %3860 = extractvalue %dx.types.ResRet.f32 %3856, 3
  %3861 = bitcast float %3860 to i32
  %3862 = fmul fast float %3847, %50
  %3863 = fmul fast float %3848, %51
  %3864 = fmul fast float %3849, %52
  %3865 = fsub fast float %3862, %3852
  %3866 = fsub fast float %3863, %3853
  %3867 = fsub fast float %3864, %3854
  %3868 = call float @dx.op.unary.f32(i32 7, float %3865)  ; Saturate(value)
  %3869 = call float @dx.op.unary.f32(i32 7, float %3866)  ; Saturate(value)
  %3870 = call float @dx.op.unary.f32(i32 7, float %3867)  ; Saturate(value)
  %3871 = fmul fast float %3868, %3857
  %3872 = fmul fast float %3869, %3858
  %3873 = fmul fast float %3870, %3859
  %3874 = fadd fast float %3857, -1.000000e+00
  %3875 = fadd fast float %3858, -1.000000e+00
  %3876 = fadd fast float %3859, -1.000000e+00
  %3877 = call float @dx.op.unary.f32(i32 27, float %3871)  ; Round_ni(value)
  %3878 = call float @dx.op.unary.f32(i32 27, float %3872)  ; Round_ni(value)
  %3879 = call float @dx.op.unary.f32(i32 27, float %3873)  ; Round_ni(value)
  %3880 = call float @dx.op.binary.f32(i32 36, float %3877, float %3874)  ; FMin(a,b)
  %3881 = call float @dx.op.binary.f32(i32 36, float %3878, float %3875)  ; FMin(a,b)
  %3882 = call float @dx.op.binary.f32(i32 36, float %3879, float %3876)  ; FMin(a,b)
  %3883 = fmul fast float %3882, %3858
  %3884 = fadd fast float %3883, %3881
  %3885 = fmul fast float %3884, %3857
  %3886 = fadd fast float %3885, %3880
  %3887 = fptosi float %3886 to i32
  %3888 = add nsw i32 %3887, %3861
  %3889 = shl nsw i32 %3888, 2
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = lshr i32 %3891, 16
  %3893 = icmp eq i32 %3892, 0
  br i1 %3893, label %4343, label %3894

; <label>:3894                                    ; preds = %3832
  br label %3895

; <label>:3895                                    ; preds = %4019, %3894
  %3896 = phi i32 [ %3921, %4019 ], [ %3892, %3894 ]
  %3897 = phi float [ %4020, %4019 ], [ 0.000000e+00, %3894 ]
  %3898 = phi float [ %4021, %4019 ], [ %3802, %3894 ]
  %3899 = phi float [ %4022, %4019 ], [ %3800, %3894 ]
  %3900 = phi float [ %4023, %4019 ], [ %3793, %3894 ]
  %3901 = phi float [ %4024, %4019 ], [ %3794, %3894 ]
  %3902 = phi float [ %4025, %4019 ], [ %3795, %3894 ]
  %3903 = phi float [ %4026, %4019 ], [ 0.000000e+00, %3894 ]
  %3904 = phi float [ %4027, %4019 ], [ 0.000000e+00, %3894 ]
  %3905 = phi float [ %4028, %4019 ], [ %3790, %3894 ]
  %3906 = phi float [ %4029, %4019 ], [ %3791, %3894 ]
  %3907 = phi float [ %4030, %4019 ], [ %3792, %3894 ]
  %3908 = phi float [ %4031, %4019 ], [ %3828, %3894 ]
  %3909 = phi float [ %4032, %4019 ], [ %3829, %3894 ]
  %3910 = phi float [ %4033, %4019 ], [ %3830, %3894 ]
  %3911 = phi float [ %4034, %4019 ], [ %3798, %3894 ]
  %3912 = phi float [ %4035, %4019 ], [ %3797, %3894 ]
  %3913 = phi float [ %4036, %4019 ], [ 0.000000e+00, %3894 ]
  %3914 = phi float [ %4037, %4019 ], [ %3796, %3894 ]
  %3915 = phi float [ %4038, %4019 ], [ %3787, %3894 ]
  %3916 = phi float [ %4039, %4019 ], [ %3788, %3894 ]
  %3917 = phi float [ %4040, %4019 ], [ %3789, %3894 ]
  %3918 = shl nuw nsw i32 %3896, 2
  %3919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3918, i32 undef)  ; BufferLoad(srv,index,wot)
  %3920 = extractvalue %dx.types.ResRet.i32 %3919, 0
  %3921 = lshr i32 %3920, 16
  %3922 = shl i32 %3920, 8
  %3923 = and i32 %3922, 16776960
  %3924 = or i32 %3923, 48
  %3925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.f32 %3925, 0
  %3927 = extractvalue %dx.types.ResRet.f32 %3925, 1
  %3928 = extractvalue %dx.types.ResRet.f32 %3925, 2
  %3929 = or i32 %3923, 64
  %3930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3929, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.i32 %3930, 0
  %3932 = extractvalue %dx.types.ResRet.i32 %3930, 1
  %3933 = or i32 %3923, 80
  %3934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.f32 %3934, 2
  %3936 = extractvalue %dx.types.ResRet.f32 %3934, 3
  %3937 = or i32 %3923, 96
  %3938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3937, i32 undef)  ; BufferLoad(srv,index,wot)
  %3939 = extractvalue %dx.types.ResRet.f32 %3938, 0
  %3940 = extractvalue %dx.types.ResRet.f32 %3938, 1
  %3941 = extractvalue %dx.types.ResRet.f32 %3938, 2
  %3942 = extractvalue %dx.types.ResRet.f32 %3938, 3
  %3943 = or i32 %3923, 112
  %3944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3943, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.f32 %3944, 2
  %3946 = or i32 %3923, 128
  %3947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.ResRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.ResRet.f32 %3947, 2
  %3951 = extractvalue %dx.types.ResRet.f32 %3947, 3
  %3952 = or i32 %3923, 144
  %3953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.ResRet.f32 %3953, 1
  %3956 = extractvalue %dx.types.ResRet.f32 %3953, 2
  %3957 = extractvalue %dx.types.ResRet.f32 %3953, 3
  %3958 = or i32 %3923, 160
  %3959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3958, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = extractvalue %dx.types.ResRet.f32 %3959, 1
  %3962 = extractvalue %dx.types.ResRet.f32 %3959, 2
  %3963 = extractvalue %dx.types.ResRet.f32 %3959, 3
  %3964 = or i32 %3923, 192
  %3965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.i32 %3965, 0
  %3967 = or i32 %3923, 208
  %3968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3967, i32 undef)  ; BufferLoad(srv,index,wot)
  %3969 = extractvalue %dx.types.ResRet.f32 %3968, 0
  %3970 = or i32 %3923, 248
  %3971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.f32 %3971, 0
  %3973 = extractvalue %dx.types.ResRet.f32 %3971, 1
  %3974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3975 = extractvalue %dx.types.ResRet.f32 %3974, 0
  %3976 = extractvalue %dx.types.ResRet.f32 %3974, 1
  %3977 = extractvalue %dx.types.ResRet.f32 %3974, 2
  %3978 = extractvalue %dx.types.ResRet.f32 %3974, 3
  %3979 = call float @dx.op.dot4.f32(i32 56, float %3975, float %3976, float %3977, float %3978, float %50, float %51, float %52, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3980 = or i32 %3923, 16
  %3981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3980, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.ResRet.f32 %3981, 1
  %3984 = extractvalue %dx.types.ResRet.f32 %3981, 2
  %3985 = extractvalue %dx.types.ResRet.f32 %3981, 3
  %3986 = call float @dx.op.dot4.f32(i32 56, float %3982, float %3983, float %3984, float %3985, float %50, float %51, float %52, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3987 = or i32 %3923, 32
  %3988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3987, i32 undef)  ; BufferLoad(srv,index,wot)
  %3989 = extractvalue %dx.types.ResRet.f32 %3988, 0
  %3990 = extractvalue %dx.types.ResRet.f32 %3988, 1
  %3991 = extractvalue %dx.types.ResRet.f32 %3988, 2
  %3992 = extractvalue %dx.types.ResRet.f32 %3988, 3
  %3993 = call float @dx.op.dot4.f32(i32 56, float %3989, float %3990, float %3991, float %3992, float %50, float %51, float %52, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3994 = call float @dx.op.unary.f32(i32 27, float %3979)  ; Round_ni(value)
  %3995 = call float @dx.op.unary.f32(i32 6, float %3994)  ; FAbs(value)
  %3996 = call float @dx.op.unary.f32(i32 27, float %3986)  ; Round_ni(value)
  %3997 = call float @dx.op.unary.f32(i32 6, float %3996)  ; FAbs(value)
  %3998 = call float @dx.op.unary.f32(i32 6, float %3993)  ; FAbs(value)
  %3999 = call float @dx.op.unary.f32(i32 27, float %3998)  ; Round_ni(value)
  %4000 = fadd fast float %3997, %3995
  %4001 = fadd fast float %4000, %3999
  %4002 = fcmp fast oeq float %4001, 0.000000e+00
  %4003 = call float @dx.op.dot4.f32(i32 56, float %3975, float %3976, float %3977, float %3978, float %3839, float %3840, float %3841, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4004 = call float @dx.op.dot4.f32(i32 56, float %3982, float %3983, float %3984, float %3985, float %3839, float %3840, float %3841, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4005 = call float @dx.op.dot4.f32(i32 56, float %3975, float %3976, float %3977, float %3978, float %3842, float %3843, float %3844, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4006 = call float @dx.op.dot4.f32(i32 56, float %3982, float %3983, float %3984, float %3985, float %3842, float %3843, float %3844, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4007 = fsub fast float %4003, %3979
  %4008 = fsub fast float %4005, %3979
  %4009 = fsub fast float %4004, %3986
  %4010 = fsub fast float %4006, %3986
  %4011 = call float @dx.op.dot3.f32(i32 55, float %3926, float %3927, float %3928, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 2
  %4014 = fadd fast float %4013, %4011
  %4015 = call float @dx.op.unary.f32(i32 7, float %4014)  ; Saturate(value)
  %4016 = extractvalue %dx.types.CBufRet.f32 %4012, 0
  %4017 = fcmp fast ogt float %4015, %4016
  %4018 = and i1 %4002, %4017
  br i1 %4018, label %4042, label %4019

; <label>:4019                                    ; preds = %4329, %4125, %4042, %3895
  %4020 = phi float [ %3897, %4042 ], [ %4128, %4125 ], [ %4128, %4329 ], [ %3897, %3895 ]
  %4021 = phi float [ %3898, %4042 ], [ %3898, %4125 ], [ %4305, %4329 ], [ %3898, %3895 ]
  %4022 = phi float [ %3899, %4042 ], [ %3899, %4125 ], [ %4303, %4329 ], [ %3899, %3895 ]
  %4023 = phi float [ %3900, %4042 ], [ %3900, %4125 ], [ %4281, %4329 ], [ %3900, %3895 ]
  %4024 = phi float [ %3901, %4042 ], [ %3901, %4125 ], [ %4282, %4329 ], [ %3901, %3895 ]
  %4025 = phi float [ %3902, %4042 ], [ %3902, %4125 ], [ %4283, %4329 ], [ %3902, %3895 ]
  %4026 = phi float [ %3903, %4042 ], [ %3903, %4125 ], [ %4252, %4329 ], [ %3903, %3895 ]
  %4027 = phi float [ %3904, %4042 ], [ %3904, %4125 ], [ %4250, %4329 ], [ %3904, %3895 ]
  %4028 = phi float [ %3905, %4042 ], [ %3905, %4125 ], [ %4339, %4329 ], [ %3905, %3895 ]
  %4029 = phi float [ %3906, %4042 ], [ %3906, %4125 ], [ %4340, %4329 ], [ %3906, %3895 ]
  %4030 = phi float [ %3907, %4042 ], [ %3907, %4125 ], [ %4341, %4329 ], [ %3907, %3895 ]
  %4031 = phi float [ %3908, %4042 ], [ %3908, %4125 ], [ %4231, %4329 ], [ %3908, %3895 ]
  %4032 = phi float [ %3909, %4042 ], [ %3909, %4125 ], [ %4232, %4329 ], [ %3909, %3895 ]
  %4033 = phi float [ %3910, %4042 ], [ %3910, %4125 ], [ %4233, %4329 ], [ %3910, %3895 ]
  %4034 = phi float [ %3911, %4042 ], [ %3911, %4125 ], [ %4261, %4329 ], [ %3911, %3895 ]
  %4035 = phi float [ %3912, %4042 ], [ %3912, %4125 ], [ %4258, %4329 ], [ %3912, %3895 ]
  %4036 = phi float [ %3913, %4042 ], [ %3913, %4125 ], [ %4255, %4329 ], [ %3913, %3895 ]
  %4037 = phi float [ %3914, %4042 ], [ %3914, %4125 ], [ %4248, %4329 ], [ %3914, %3895 ]
  %4038 = phi float [ %3915, %4042 ], [ %3915, %4125 ], [ %4243, %4329 ], [ %3915, %3895 ]
  %4039 = phi float [ %3916, %4042 ], [ %3916, %4125 ], [ %4244, %4329 ], [ %3916, %3895 ]
  %4040 = phi float [ %3917, %4042 ], [ %3917, %4125 ], [ %4245, %4329 ], [ %3917, %3895 ]
  %4041 = icmp eq i32 %3921, 0
  br i1 %4041, label %4342, label %3895

; <label>:4042                                    ; preds = %3895
  %4043 = extractvalue %dx.types.ResRet.f32 %3925, 3
  %4044 = extractvalue %dx.types.ResRet.f32 %3944, 3
  %4045 = extractvalue %dx.types.ResRet.f32 %3944, 1
  %4046 = extractvalue %dx.types.ResRet.f32 %3944, 0
  %4047 = extractvalue %dx.types.ResRet.f32 %3934, 1
  %4048 = extractvalue %dx.types.ResRet.f32 %3934, 0
  %4049 = extractvalue %dx.types.ResRet.i32 %3930, 3
  %4050 = extractvalue %dx.types.ResRet.i32 %3930, 2
  %4051 = bitcast float %4043 to i32
  %4052 = add i32 %4049, 0
  %4053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4052, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4055 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4053, %dx.types.Handle %4054, float %3979, float %3986, float undef, float undef, i32 0, i32 0, i32 undef, float %4007, float %4009, float undef, float %4008, float %4010, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4056 = extractvalue %dx.types.ResRet.f32 %4055, 0
  %4057 = fmul fast float %4056, %4048
  %4058 = fadd fast float %4057, %4047
  %4059 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  %4060 = fmul fast float %3979, %3939
  %4061 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %3986, float %4060)  ; FMad(a,b,c)
  %4062 = fadd fast float %4061, %4046
  %4063 = fmul fast float %3979, %3941
  %4064 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %3986, float %4063)  ; FMad(a,b,c)
  %4065 = fadd fast float %4064, %4045
  %4066 = fmul fast float %4007, %3939
  %4067 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %4009, float %4066)  ; FMad(a,b,c)
  %4068 = fmul fast float %4007, %3941
  %4069 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %4009, float %4068)  ; FMad(a,b,c)
  %4070 = fmul fast float %4008, %3939
  %4071 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %4010, float %4070)  ; FMad(a,b,c)
  %4072 = fmul fast float %4008, %3941
  %4073 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %4010, float %4072)  ; FMad(a,b,c)
  %4074 = add i32 %4050, 0
  %4075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4074, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4076 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4075, %dx.types.Handle %4054, float %4062, float %4065, float undef, float undef, i32 0, i32 0, i32 undef, float %4067, float %4069, float undef, float %4071, float %4073, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4077 = extractvalue %dx.types.ResRet.f32 %4076, 0
  %4078 = and i32 %4051, 1024
  %4079 = icmp ne i32 %4078, 0
  %4080 = fcmp fast ogt float %4077, 0x3FE0101020000000
  %4081 = uitofp i1 %4080 to float
  %4082 = select i1 %4079, float %4081, float %4077
  %4083 = and i32 %4051, 8192
  %4084 = icmp ne i32 %4083, 0
  %4085 = select i1 %4084, float %4044, float 1.000000e+00
  %4086 = fmul fast float %3979, 2.000000e+00
  %4087 = fadd fast float %4086, -1.000000e+00
  %4088 = call float @dx.op.unary.f32(i32 6, float %4087)  ; FAbs(value)
  %4089 = fmul fast float %4088, %3972
  %4090 = fsub fast float %4089, %3972
  %4091 = call float @dx.op.unary.f32(i32 7, float %4090)  ; Saturate(value)
  %4092 = fmul fast float %3986, 2.000000e+00
  %4093 = fadd fast float %4092, -1.000000e+00
  %4094 = call float @dx.op.unary.f32(i32 6, float %4093)  ; FAbs(value)
  %4095 = fmul fast float %4094, %3973
  %4096 = fsub fast float %4095, %3973
  %4097 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4098 = fmul fast float %3998, %3935
  %4099 = fsub fast float %4098, %3935
  %4100 = call float @dx.op.unary.f32(i32 7, float %4099)  ; Saturate(value)
  %4101 = fmul fast float %4059, %4085
  %4102 = fmul fast float %4101, %4056
  %4103 = fmul fast float %4102, %4091
  %4104 = fmul fast float %4103, %4082
  %4105 = fmul fast float %4104, %4097
  %4106 = fmul fast float %4105, %4100
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 1
  %4109 = extractvalue %dx.types.CBufRet.f32 %4107, 0
  %4110 = fsub fast float %4015, %4109
  %4111 = fmul fast float %4110, %4108
  %4112 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4113 = fmul fast float %4106, %3936
  %4114 = fadd fast float %4106, %3936
  %4115 = fmul fast float %4114, %3945
  %4116 = fsub fast float %4115, %3945
  %4117 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4118 = and i32 %4051, 128
  %4119 = icmp ne i32 %4118, 0
  %4120 = select i1 %4119, float %4117, float %4113
  %4121 = fmul fast float %4120, %4112
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 0
  %4124 = fcmp fast ugt float %4121, %4123
  br i1 %4124, label %4125, label %4019

; <label>:4125                                    ; preds = %4042
  %4126 = select i1 %4084, float %4121, float 0.000000e+00
  %4127 = fadd fast float %4126, %3897
  %4128 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  br i1 %4084, label %4019, label %4129

; <label>:4129                                    ; preds = %4125
  %4130 = and i32 %4051, 4
  %4131 = and i32 %4051, 8
  %4132 = add i32 %3931, 0
  %4133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4132, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4135 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4133, %dx.types.Handle %4134, float %4062, float %4065, float undef, float undef, i32 0, i32 0, i32 undef, float %4067, float %4069, float undef, float %4071, float %4073, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4136 = extractvalue %dx.types.ResRet.f32 %4135, 0
  %4137 = extractvalue %dx.types.ResRet.f32 %4135, 1
  %4138 = extractvalue %dx.types.ResRet.f32 %4135, 2
  %4139 = extractvalue %dx.types.ResRet.f32 %4135, 3
  %4140 = bitcast float %3957 to i32
  %4141 = and i32 %4140, 255
  %4142 = uitofp i32 %4141 to float
  %4143 = lshr i32 %4140, 8
  %4144 = and i32 %4143, 255
  %4145 = uitofp i32 %4144 to float
  %4146 = fmul fast float %4139, %4142
  %4147 = fadd fast float %4146, %4145
  %4148 = fmul fast float %4147, 0x3F70101000000000
  %4149 = add i32 %3932, 0
  %4150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4149, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4151 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4150, %dx.types.Handle %4134, float %4062, float %4065, float undef, float undef, i32 0, i32 0, i32 undef, float %4067, float %4069, float undef, float %4071, float %4073, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.ResRet.f32 %4151, 1
  %4154 = extractvalue %dx.types.ResRet.f32 %4151, 2
  %4155 = extractvalue %dx.types.ResRet.f32 %4151, 3
  %4156 = bitcast float %3951 to i32
  %4157 = and i32 %4156, 255
  %4158 = uitofp i32 %4157 to float
  %4159 = lshr i32 %4156, 8
  %4160 = and i32 %4159, 255
  %4161 = uitofp i32 %4160 to float
  %4162 = lshr i32 %4156, 16
  %4163 = and i32 %4162, 255
  %4164 = uitofp i32 %4163 to float
  %4165 = fmul fast float %4164, 0x3F70101000000000
  %4166 = fmul fast float %4152, %4158
  %4167 = fadd fast float %4166, %4161
  %4168 = fmul fast float %4167, 0x3F70101000000000
  %4169 = fadd fast float %4153, -5.000000e-01
  %4170 = fadd fast float %4155, -5.000000e-01
  %4171 = fmul fast float %4169, %4165
  %4172 = fmul fast float %4170, %4165
  %4173 = fadd fast float %4171, 5.000000e-01
  %4174 = fadd fast float %4172, 5.000000e-01
  %4175 = fmul fast float %4136, %3960
  %4176 = fmul fast float %4137, %3961
  %4177 = fmul fast float %4138, %3962
  %4178 = fmul fast float %4173, 2.000000e+00
  %4179 = fadd fast float %4178, -1.000000e+00
  %4180 = fmul fast float %4174, 2.000000e+00
  %4181 = fadd fast float %4180, -1.000000e+00
  %4182 = fadd fast float %4179, %4181
  %4183 = fmul fast float %4182, 5.000000e-01
  %4184 = fsub fast float %4179, %4181
  %4185 = fmul fast float %4184, 5.000000e-01
  %4186 = call float @dx.op.unary.f32(i32 6, float %4183)  ; FAbs(value)
  %4187 = fsub fast float 1.000000e+00, %4186
  %4188 = call float @dx.op.unary.f32(i32 6, float %4185)  ; FAbs(value)
  %4189 = fsub fast float %4187, %4188
  %4190 = call float @dx.op.dot3.f32(i32 55, float %4183, float %4185, float %4189, float %4183, float %4185, float %4189)  ; Dot3(ax,ay,az,bx,by,bz)
  %4191 = call float @dx.op.unary.f32(i32 25, float %4190)  ; Rsqrt(value)
  %4192 = fmul fast float %4183, %4191
  %4193 = fmul fast float %4185, %4191
  %4194 = fmul fast float %4191, %4189
  %4195 = fmul fast float %4194, %3926
  %4196 = fmul fast float %4194, %3927
  %4197 = fmul fast float %4194, %3928
  %4198 = fmul fast float %4192, %3948
  %4199 = fmul fast float %4192, %3949
  %4200 = fmul fast float %4192, %3950
  %4201 = fadd fast float %4198, %4195
  %4202 = fadd fast float %4199, %4196
  %4203 = fadd fast float %4200, %4197
  %4204 = fmul fast float %4193, %3954
  %4205 = fmul fast float %4193, %3955
  %4206 = fmul fast float %4193, %3956
  %4207 = fadd fast float %4201, %4204
  %4208 = fadd fast float %4202, %4205
  %4209 = fadd fast float %4203, %4206
  %4210 = call float @dx.op.dot3.f32(i32 55, float %4207, float %4208, float %4209, float %4207, float %4208, float %4209)  ; Dot3(ax,ay,az,bx,by,bz)
  %4211 = call float @dx.op.unary.f32(i32 25, float %4210)  ; Rsqrt(value)
  %4212 = fmul fast float %4207, %4211
  %4213 = fmul fast float %4208, %4211
  %4214 = fmul fast float %4209, %4211
  %4215 = icmp ne i32 %4131, 0
  %4216 = select i1 %4215, float 1.000000e+00, float 0.000000e+00
  %4217 = fmul fast float %4121, %4216
  %4218 = and i32 %4051, 1
  %4219 = icmp eq i32 %4218, 0
  br i1 %4219, label %4220, label %4224

; <label>:4220                                    ; preds = %4129
  %4221 = fsub fast float %4212, %3908
  %4222 = fsub fast float %4213, %3909
  %4223 = fsub fast float %4214, %3910
  br label %4224

; <label>:4224                                    ; preds = %4220, %4129
  %4225 = phi float [ %4221, %4220 ], [ %4212, %4129 ]
  %4226 = phi float [ %4222, %4220 ], [ %4213, %4129 ]
  %4227 = phi float [ %4223, %4220 ], [ %4214, %4129 ]
  %4228 = fmul float %4227, %4217
  %4229 = fmul float %4226, %4217
  %4230 = fmul float %4225, %4217
  %4231 = fadd fast float %4230, %3908
  %4232 = fadd fast float %4229, %3909
  %4233 = fadd fast float %4228, %3910
  %4234 = icmp ne i32 %4130, 0
  %4235 = select i1 %4234, float 1.000000e+00, float 0.000000e+00
  %4236 = fmul fast float %4121, %4235
  %4237 = fsub fast float %4175, %3915
  %4238 = fsub fast float %4176, %3916
  %4239 = fsub fast float %4177, %3917
  %4240 = fmul fast float %4237, %4236
  %4241 = fmul fast float %4238, %4236
  %4242 = fmul fast float %4239, %4236
  %4243 = fadd fast float %4240, %3915
  %4244 = fadd fast float %4241, %3916
  %4245 = fadd fast float %4242, %3917
  %4246 = fsub fast float %4148, %3914
  %4247 = fmul fast float %4246, %4236
  %4248 = fadd fast float %4247, %3914
  %4249 = fmul fast float %4236, %3904
  %4250 = fsub fast float %3904, %4249
  %4251 = fmul fast float %4236, %3903
  %4252 = fsub fast float %3903, %4251
  %4253 = bitcast float %3969 to i32
  %4254 = fadd fast float %4121, %3913
  %4255 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4256 = fsub fast float %4168, %3912
  %4257 = fmul fast float %4256, %4217
  %4258 = fadd fast float %4257, %3912
  %4259 = fsub fast float %4154, %3911
  %4260 = fmul fast float %4259, %4217
  %4261 = fadd fast float %4260, %3911
  br i1 %4219, label %4270, label %4262

; <label>:4262                                    ; preds = %4224
  %4263 = and i32 %4051, 32768
  %4264 = icmp eq i32 %4263, 0
  br i1 %4264, label %4280, label %4265

; <label>:4265                                    ; preds = %4262
  %4266 = fmul fast float %4217, 1.270000e+02
  %4267 = fadd fast float %4266, %3900
  %4268 = fadd fast float %4266, %3901
  %4269 = fadd fast float %4266, %3902
  br label %4280

; <label>:4270                                    ; preds = %4224
  %4271 = fsub fast float 1.270000e+02, %3900
  %4272 = fsub fast float 1.270000e+02, %3901
  %4273 = fsub fast float 1.270000e+02, %3902
  %4274 = fmul fast float %4217, %4271
  %4275 = fmul fast float %4217, %4272
  %4276 = fmul fast float %4217, %4273
  %4277 = fadd fast float %4274, %3900
  %4278 = fadd fast float %4275, %3901
  %4279 = fadd fast float %4276, %3902
  br label %4280

; <label>:4280                                    ; preds = %4270, %4265, %4262
  %4281 = phi float [ %4267, %4265 ], [ %3900, %4262 ], [ %4277, %4270 ]
  %4282 = phi float [ %4268, %4265 ], [ %3901, %4262 ], [ %4278, %4270 ]
  %4283 = phi float [ %4269, %4265 ], [ %3902, %4262 ], [ %4279, %4270 ]
  %4284 = call float @dx.op.dot3.f32(i32 55, float %4175, float %4176, float %4177, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.f32 %4285, 0
  %4287 = extractvalue %dx.types.CBufRet.f32 %4285, 1
  %4288 = fmul fast float %4287, %4284
  %4289 = fadd fast float %4288, %4286
  %4290 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4291 = bitcast float %3963 to i32
  %4292 = and i32 %4291, 65535
  %4293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4292)  ; LegacyF16ToF32(value)
  %4294 = lshr i32 %4291, 16
  %4295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4294)  ; LegacyF16ToF32(value)
  %4296 = fcmp fast oge float %4293, 0.000000e+00
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 0
  %4299 = select i1 %4296, float %4293, float %4298
  %4300 = fadd fast float %4299, %4295
  %4301 = fsub fast float %4290, %3899
  %4302 = fmul fast float %4301, %4121
  %4303 = fadd fast float %4302, %3899
  %4304 = fmul fast float %4300, %4121
  %4305 = call float @dx.op.binary.f32(i32 35, float %3898, float %4304)  ; FMax(a,b)
  %4306 = and i32 %4051, 16
  %4307 = icmp eq i32 %4306, 0
  br i1 %4307, label %4329, label %4308

; <label>:4308                                    ; preds = %4280
  %4309 = add i32 %3966, 0
  %4310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4309, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4311 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4310, %dx.types.Handle %4134, float %4062, float %4065, float undef, float undef, i32 0, i32 0, i32 undef, float %4067, float %4069, float undef, float %4071, float %4073, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4312 = extractvalue %dx.types.ResRet.f32 %4311, 0
  %4313 = extractvalue %dx.types.ResRet.f32 %4311, 1
  %4314 = extractvalue %dx.types.ResRet.f32 %4311, 2
  %4315 = and i32 %4253, 65535
  %4316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4315)  ; LegacyF16ToF32(value)
  %4317 = fmul fast float %4312, %3960
  %4318 = fmul fast float %4313, %3961
  %4319 = fmul fast float %4314, %3962
  %4320 = and i32 %4051, 16384
  %4321 = icmp ne i32 %4320, 0
  %4322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.f32 %4322, 0
  %4324 = select i1 %4321, float %4323, float 1.000000e+00
  %4325 = fmul fast float %4324, %4316
  %4326 = fmul fast float %4317, %4325
  %4327 = fmul fast float %4318, %4325
  %4328 = fmul fast float %4319, %4325
  br label %4329

; <label>:4329                                    ; preds = %4308, %4280
  %4330 = phi float [ %4326, %4308 ], [ 0.000000e+00, %4280 ]
  %4331 = phi float [ %4327, %4308 ], [ 0.000000e+00, %4280 ]
  %4332 = phi float [ %4328, %4308 ], [ 0.000000e+00, %4280 ]
  %4333 = fsub fast float %4330, %3905
  %4334 = fsub fast float %4331, %3906
  %4335 = fsub fast float %4332, %3907
  %4336 = fmul fast float %4333, %4121
  %4337 = fmul fast float %4334, %4121
  %4338 = fmul fast float %4335, %4121
  %4339 = fadd fast float %4336, %3905
  %4340 = fadd fast float %4337, %3906
  %4341 = fadd fast float %4338, %3907
  br label %4019

; <label>:4342                                    ; preds = %4019
  br label %4343

; <label>:4343                                    ; preds = %4342, %3832
  %4344 = phi float [ 0.000000e+00, %3832 ], [ %4020, %4342 ]
  %4345 = phi float [ %3802, %3832 ], [ %4021, %4342 ]
  %4346 = phi float [ %3800, %3832 ], [ %4022, %4342 ]
  %4347 = phi float [ %3793, %3832 ], [ %4023, %4342 ]
  %4348 = phi float [ %3794, %3832 ], [ %4024, %4342 ]
  %4349 = phi float [ %3795, %3832 ], [ %4025, %4342 ]
  %4350 = phi float [ 0.000000e+00, %3832 ], [ %4026, %4342 ]
  %4351 = phi float [ 0.000000e+00, %3832 ], [ %4027, %4342 ]
  %4352 = phi float [ %3790, %3832 ], [ %4028, %4342 ]
  %4353 = phi float [ %3791, %3832 ], [ %4029, %4342 ]
  %4354 = phi float [ %3792, %3832 ], [ %4030, %4342 ]
  %4355 = phi float [ %3828, %3832 ], [ %4031, %4342 ]
  %4356 = phi float [ %3829, %3832 ], [ %4032, %4342 ]
  %4357 = phi float [ %3830, %3832 ], [ %4033, %4342 ]
  %4358 = phi float [ %3798, %3832 ], [ %4034, %4342 ]
  %4359 = phi float [ %3797, %3832 ], [ %4035, %4342 ]
  %4360 = phi float [ 0.000000e+00, %3832 ], [ %4036, %4342 ]
  %4361 = phi float [ %3796, %3832 ], [ %4037, %4342 ]
  %4362 = phi float [ %3787, %3832 ], [ %4038, %4342 ]
  %4363 = phi float [ %3788, %3832 ], [ %4039, %4342 ]
  %4364 = phi float [ %3789, %3832 ], [ %4040, %4342 ]
  %4365 = call float @dx.op.dot3.f32(i32 55, float %4355, float %4356, float %4357, float %4355, float %4356, float %4357)  ; Dot3(ax,ay,az,bx,by,bz)
  %4366 = call float @dx.op.unary.f32(i32 25, float %4365)  ; Rsqrt(value)
  %4367 = fmul fast float %4366, %4355
  %4368 = fmul fast float %4366, %4356
  %4369 = fmul fast float %4366, %4357
  %4370 = fadd fast float %4360, %1132
  %4371 = call float @dx.op.unary.f32(i32 7, float %4370)  ; Saturate(value)
  %4372 = call float @dx.op.dot3.f32(i32 55, float %4367, float %4368, float %4369, float %4367, float %4368, float %4369)  ; Dot3(ax,ay,az,bx,by,bz)
  %4373 = call float @dx.op.unary.f32(i32 25, float %4372)  ; Rsqrt(value)
  %4374 = fmul fast float %4373, %4367
  %4375 = fmul fast float %4373, %4368
  %4376 = fmul fast float %4373, %4369
  br label %4377

; <label>:4377                                    ; preds = %4343, %3784
  %4378 = phi float [ %4374, %4343 ], [ %3828, %3784 ]
  %4379 = phi float [ %4375, %4343 ], [ %3829, %3784 ]
  %4380 = phi float [ %4376, %4343 ], [ %3830, %3784 ]
  %4381 = phi float [ %4362, %4343 ], [ %3787, %3784 ]
  %4382 = phi float [ %4363, %4343 ], [ %3788, %3784 ]
  %4383 = phi float [ %4364, %4343 ], [ %3789, %3784 ]
  %4384 = phi float [ %4352, %4343 ], [ %3790, %3784 ]
  %4385 = phi float [ %4353, %4343 ], [ %3791, %3784 ]
  %4386 = phi float [ %4354, %4343 ], [ %3792, %3784 ]
  %4387 = phi float [ %4347, %4343 ], [ %3793, %3784 ]
  %4388 = phi float [ %4348, %4343 ], [ %3794, %3784 ]
  %4389 = phi float [ %4349, %4343 ], [ %3795, %3784 ]
  %4390 = phi float [ %4361, %4343 ], [ %3796, %3784 ]
  %4391 = phi float [ %4371, %4343 ], [ %1132, %3784 ]
  %4392 = phi float [ %4359, %4343 ], [ %3797, %3784 ]
  %4393 = phi float [ %4358, %4343 ], [ %3798, %3784 ]
  %4394 = phi float [ %4351, %4343 ], [ 0.000000e+00, %3784 ]
  %4395 = phi float [ %4350, %4343 ], [ 0.000000e+00, %3784 ]
  %4396 = phi float [ %4344, %4343 ], [ 0.000000e+00, %3784 ]
  %4397 = phi float [ %4345, %4343 ], [ %3802, %3784 ]
  %4398 = phi float [ %4346, %4343 ], [ %3800, %3784 ]
  %4399 = fadd fast float %4390, 0xBFB99999A0000000
  %4400 = call float @dx.op.unary.f32(i32 7, float %4399)  ; Saturate(value)
  %4401 = fmul fast float %4400, 0x3FF1C71C80000000
  %4402 = call float @dx.op.binary.f32(i32 36, float %4390, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4403 = fsub fast float 1.000000e+00, %4401
  %4404 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4405 = fmul fast float %4404, %4381
  %4406 = fmul fast float %4404, %4382
  %4407 = fmul fast float %4404, %4383
  %4408 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4409 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4410 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4411 = fmul fast float %4401, %4381
  %4412 = fmul fast float %4401, %4382
  %4413 = fmul fast float %4401, %4383
  %4414 = fadd fast float %4411, %4402
  %4415 = fadd fast float %4412, %4402
  %4416 = fadd fast float %4413, %4402
  %4417 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4418 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4419 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4420 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4421 = call float @dx.op.binary.f32(i32 36, float %4387, float 1.270000e+02)  ; FMin(a,b)
  %4422 = call float @dx.op.binary.f32(i32 36, float %4388, float 1.270000e+02)  ; FMin(a,b)
  %4423 = call float @dx.op.binary.f32(i32 36, float %4389, float 1.270000e+02)  ; FMin(a,b)
  %4424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4425 = extractvalue %dx.types.CBufRet.i32 %4424, 3
  %4426 = and i32 %4425, 8
  %4427 = icmp ne i32 %4426, 0
  %4428 = call float @dx.op.binary.f32(i32 35, float %4408, float %4381)  ; FMax(a,b)
  %4429 = call float @dx.op.binary.f32(i32 35, float %4409, float %4381)  ; FMax(a,b)
  %4430 = call float @dx.op.binary.f32(i32 35, float %4410, float %4381)  ; FMax(a,b)
  %4431 = call float @dx.op.dot3.f32(i32 55, float %4408, float %4409, float %4410, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4432 = select i1 %250, float %4381, float %4408
  %4433 = select i1 %250, float %4431, float %4409
  %4434 = select i1 %250, float 1.000000e+00, float %4410
  %4435 = select i1 %4427, float %4428, float %4432
  %4436 = select i1 %4427, float %4429, float %4433
  %4437 = select i1 %4427, float %4430, float %4434
  %4438 = and i32 %226, 3
  %4439 = select i1 %220, i32 %4438, i32 0
  %4440 = icmp eq i32 %4439, 1
  br i1 %4440, label %4441, label %4517

; <label>:4441                                    ; preds = %4377
  %4442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.f32 %4442, 0
  %4444 = extractvalue %dx.types.CBufRet.f32 %4442, 1
  %4445 = fadd fast float %4443, %189
  %4446 = fadd fast float %4444, %190
  %4447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4448 = extractvalue %dx.types.CBufRet.f32 %4447, 0
  %4449 = extractvalue %dx.types.CBufRet.f32 %4447, 1
  %4450 = fsub fast float %4445, %4448
  %4451 = fsub fast float %4446, %4449
  %4452 = fmul fast float %4450, %4450
  %4453 = fmul fast float %4451, %4451
  %4454 = fadd fast float %4452, %4453
  %4455 = call float @dx.op.unary.f32(i32 24, float %4454)  ; Sqrt(value)
  %4456 = extractvalue %dx.types.CBufRet.f32 %4447, 2
  %4457 = fcmp fast olt float %4455, %4456
  br i1 %4457, label %4458, label %4511

; <label>:4458                                    ; preds = %4441
  %4459 = extractvalue %dx.types.CBufRet.f32 %4442, 2
  %4460 = fadd fast float %4459, %191
  %4461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4461, 0
  %4463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4463, 0
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 0
  %4467 = extractvalue %dx.types.CBufRet.f32 %4461, 1
  %4468 = extractvalue %dx.types.CBufRet.f32 %4463, 1
  %4469 = extractvalue %dx.types.CBufRet.f32 %4465, 1
  %4470 = extractvalue %dx.types.CBufRet.f32 %4461, 3
  %4471 = extractvalue %dx.types.CBufRet.f32 %4463, 3
  %4472 = extractvalue %dx.types.CBufRet.f32 %4465, 3
  %4473 = fadd fast float %4470, %4445
  %4474 = fadd fast float %4471, %4446
  %4475 = fadd fast float %4460, %4472
  %4476 = fmul fast float %4473, %4462
  %4477 = call float @dx.op.tertiary.f32(i32 46, float %4474, float %4464, float %4476)  ; FMad(a,b,c)
  %4478 = call float @dx.op.tertiary.f32(i32 46, float %4475, float %4466, float %4477)  ; FMad(a,b,c)
  %4479 = fmul fast float %4473, %4467
  %4480 = call float @dx.op.tertiary.f32(i32 46, float %4474, float %4468, float %4479)  ; FMad(a,b,c)
  %4481 = call float @dx.op.tertiary.f32(i32 46, float %4475, float %4469, float %4480)  ; FMad(a,b,c)
  %4482 = fsub fast float %4478, %4470
  %4483 = fsub fast float %4481, %4471
  %4484 = fsub fast float %4482, %4448
  %4485 = fadd fast float %4484, %4456
  %4486 = fsub fast float %4483, %4449
  %4487 = fadd fast float %4486, %4456
  %4488 = extractvalue %dx.types.CBufRet.f32 %4447, 3
  %4489 = fmul fast float %4485, %4488
  %4490 = fmul fast float %4487, %4488
  %4491 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4492 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4493 = fsub fast float 1.000000e+00, %4491
  %4494 = fsub fast float 1.000000e+00, %4492
  %4495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %42, float %4493, float %4494, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 0
  %4497 = fcmp fast ugt float %4496, 0.000000e+00
  br i1 %4497, label %4498, label %4511

; <label>:4498                                    ; preds = %4458
  %4499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4500 = extractvalue %dx.types.CBufRet.f32 %4499, 2
  %4501 = fmul fast float %4500, %4496
  %4502 = extractvalue %dx.types.CBufRet.f32 %4499, 3
  %4503 = fadd fast float %4502, %4501
  %4504 = extractvalue %dx.types.CBufRet.f32 %4465, 2
  %4505 = fadd fast float %4503, %4472
  %4506 = fmul fast float %4478, %4466
  %4507 = call float @dx.op.tertiary.f32(i32 46, float %4481, float %4469, float %4506)  ; FMad(a,b,c)
  %4508 = call float @dx.op.tertiary.f32(i32 46, float %4505, float %4504, float %4507)  ; FMad(a,b,c)
  %4509 = fsub fast float %4508, %4472
  %4510 = fsub fast float %4509, %4459
  br label %4511

; <label>:4511                                    ; preds = %4498, %4458, %4441
  %4512 = phi i1 [ true, %4498 ], [ false, %4458 ], [ false, %4441 ]
  %4513 = phi float [ %4510, %4498 ], [ -1.310720e+05, %4458 ], [ -1.310720e+05, %4441 ]
  %4514 = fsub fast float %4513, %191
  %4515 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4516 = select i1 %4512, float %4515, float 1.000000e+00
  br label %4517

; <label>:4517                                    ; preds = %4511, %4377
  %4518 = phi float [ %4516, %4511 ], [ 0.000000e+00, %4377 ]
  %4519 = icmp eq i32 %4439, 3
  %4520 = select i1 %4519, float 1.000000e+00, float %4518
  %4521 = call float @dx.op.binary.f32(i32 35, float %4396, float %4520)  ; FMax(a,b)
  %4522 = fcmp fast olt float %4520, 1.000000e+00
  %4523 = fcmp uge float %63, 0.000000e+00
  %4524 = and i1 %4523, %4522
  br i1 %4524, label %4525, label %4535

; <label>:4525                                    ; preds = %4517
  %4526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %40, float %63, float %64, float %65, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4527 = extractvalue %dx.types.ResRet.f32 %4526, 0
  %4528 = extractvalue %dx.types.ResRet.f32 %4526, 1
  %4529 = extractvalue %dx.types.ResRet.f32 %4526, 2
  %4530 = fadd fast float %4527, %4521
  %4531 = fcmp ule float %62, 0.000000e+00
  %4532 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4533 = select i1 %4531, float %4532, float 1.000000e+00
  %4534 = fmul fast float %4533, %4529
  br label %4535

; <label>:4535                                    ; preds = %4525, %4517
  %4536 = phi float [ %4530, %4525 ], [ %4521, %4517 ]
  %4537 = phi float [ %4528, %4525 ], [ 0.000000e+00, %4517 ]
  %4538 = phi float [ %4534, %4525 ], [ 0.000000e+00, %4517 ]
  %4539 = call float @dx.op.unary.f32(i32 7, float %4536)  ; Saturate(value)
  %4540 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4541 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4542 = fcmp fast une float %4540, 0.000000e+00
  %4543 = fcmp fast une float %4541, 0.000000e+00
  %4544 = or i1 %4542, %4543
  br i1 %4544, label %4545, label %5104

; <label>:4545                                    ; preds = %4535
  br i1 %4542, label %4546, label %4819

; <label>:4546                                    ; preds = %4545
  %4547 = call float @dx.op.unary.f32(i32 23, float %4393)  ; Log(value)
  %4548 = fmul fast float %4547, 4.000000e+00
  %4549 = call float @dx.op.unary.f32(i32 21, float %4548)  ; Exp(value)
  %4550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4551 = extractvalue %dx.types.CBufRet.f32 %4550, 0
  %4552 = fmul fast float %4551, %50
  %4553 = fmul fast float %4551, %51
  %4554 = fmul fast float %4551, %52
  %4555 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %4556 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %4557 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4558 = call float @dx.op.unary.f32(i32 23, float %4555)  ; Log(value)
  %4559 = call float @dx.op.unary.f32(i32 23, float %4556)  ; Log(value)
  %4560 = call float @dx.op.unary.f32(i32 23, float %4557)  ; Log(value)
  %4561 = fmul fast float %4558, 4.000000e+00
  %4562 = fmul fast float %4559, 4.000000e+00
  %4563 = fmul fast float %4560, 4.000000e+00
  %4564 = call float @dx.op.unary.f32(i32 21, float %4561)  ; Exp(value)
  %4565 = call float @dx.op.unary.f32(i32 21, float %4562)  ; Exp(value)
  %4566 = call float @dx.op.unary.f32(i32 21, float %4563)  ; Exp(value)
  %4567 = fadd fast float %4565, %4564
  %4568 = fadd fast float %4567, %4566
  %4569 = fdiv fast float 1.000000e+00, %4568
  %4570 = fmul fast float %4569, %4564
  %4571 = fcmp fast ogt float %59, 0.000000e+00
  %4572 = fcmp fast ogt float %60, 0.000000e+00
  %4573 = fcmp fast ogt float %61, 0.000000e+00
  %4574 = fcmp fast olt float %59, 0.000000e+00
  %4575 = fcmp fast olt float %60, 0.000000e+00
  %4576 = fcmp fast olt float %61, 0.000000e+00
  %4577 = zext i1 %4571 to i32
  %4578 = zext i1 %4572 to i32
  %4579 = zext i1 %4573 to i32
  %4580 = zext i1 %4574 to i32
  %4581 = zext i1 %4575 to i32
  %4582 = zext i1 %4576 to i32
  %4583 = sub nsw i32 %4577, %4580
  %4584 = sub nsw i32 %4578, %4581
  %4585 = sub nsw i32 %4579, %4582
  %4586 = call float @dx.op.unary.f32(i32 83, float %4552)  ; DerivCoarseX(value)
  %4587 = call float @dx.op.unary.f32(i32 83, float %4553)  ; DerivCoarseX(value)
  %4588 = call float @dx.op.unary.f32(i32 83, float %4554)  ; DerivCoarseX(value)
  %4589 = call float @dx.op.unary.f32(i32 84, float %4552)  ; DerivCoarseY(value)
  %4590 = call float @dx.op.unary.f32(i32 84, float %4553)  ; DerivCoarseY(value)
  %4591 = call float @dx.op.unary.f32(i32 84, float %4554)  ; DerivCoarseY(value)
  %4592 = fcmp fast ole float %261, %4570
  %4593 = fmul fast float %4569, %4567
  %4594 = fcmp fast ole float %261, %4593
  %4595 = select i1 %4594, float %4554, float %4552
  %4596 = select i1 %4594, float %4552, float %4553
  %4597 = select i1 %4592, float %4553, float %4595
  %4598 = select i1 %4592, float %4554, float %4596
  %4599 = select i1 %4594, float %4588, float %4586
  %4600 = select i1 %4594, float %4586, float %4587
  %4601 = select i1 %4592, float %4587, float %4599
  %4602 = select i1 %4592, float %4588, float %4600
  %4603 = select i1 %4594, float %4591, float %4589
  %4604 = select i1 %4594, float %4589, float %4590
  %4605 = select i1 %4592, float %4590, float %4603
  %4606 = select i1 %4592, float %4591, float %4604
  %4607 = call float @dx.op.unary.f32(i32 27, float %4597)  ; Round_ni(value)
  %4608 = call float @dx.op.unary.f32(i32 27, float %4598)  ; Round_ni(value)
  %4609 = fptosi float %4607 to i32
  %4610 = fptosi float %4608 to i32
  %4611 = xor i32 %4610, %4609
  %4612 = sitofp i32 %4611 to float
  %4613 = fptosi float %4612 to i32
  %4614 = sitofp i32 %4613 to float
  %4615 = fmul fast float %4614, 0x3FE3C6EF40000000
  %4616 = frem fast float %4607, 2.560000e+02
  %4617 = frem fast float %4608, 2.560000e+02
  %4618 = fptoui float %4616 to i32
  %4619 = fptoui float %4617 to i32
  %4620 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4618, i32 %4619, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4621 = extractvalue %dx.types.ResRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.ResRet.f32 %4620, 1
  %4623 = extractvalue %dx.types.ResRet.f32 %4620, 2
  %4624 = fadd fast float %4621, %4615
  %4625 = fadd fast float %4622, %4615
  %4626 = fadd fast float %4623, %4615
  %4627 = call float @dx.op.unary.f32(i32 22, float %4624)  ; Frc(value)
  %4628 = call float @dx.op.unary.f32(i32 22, float %4625)  ; Frc(value)
  %4629 = call float @dx.op.unary.f32(i32 22, float %4626)  ; Frc(value)
  %4630 = fmul fast float %4629, 0x401921FB60000000
  %4631 = call float @dx.op.unary.f32(i32 13, float %4630)  ; Sin(value)
  %4632 = call float @dx.op.unary.f32(i32 12, float %4630)  ; Cos(value)
  %4633 = fsub fast float -0.000000e+00, %4632
  %4634 = fmul fast float %4632, %4597
  %4635 = call float @dx.op.tertiary.f32(i32 46, float %4631, float %4598, float %4634)  ; FMad(a,b,c)
  %4636 = fmul fast float %4631, %4597
  %4637 = call float @dx.op.tertiary.f32(i32 46, float %4633, float %4598, float %4636)  ; FMad(a,b,c)
  %4638 = fadd fast float %4635, %4627
  %4639 = fadd fast float %4637, %4628
  %4640 = extractvalue %dx.types.CBufRet.f32 %4550, 3
  %4641 = bitcast float %4640 to i32
  %4642 = icmp eq i32 %4641, 0
  br i1 %4642, label %4681, label %4643

; <label>:4643                                    ; preds = %4546
  %4644 = add i32 %4641, 0
  %4645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4646 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4645, %dx.types.Handle %99, float %4638, float %4639, float undef, float undef, i32 0, i32 0, i32 undef, float %4601, float %4602, float undef, float %4605, float %4606, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4647 = extractvalue %dx.types.ResRet.f32 %4646, 0
  %4648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.f32 %4648, 1
  %4650 = extractvalue %dx.types.CBufRet.f32 %4648, 2
  %4651 = fsub fast float 1.000000e+00, %4540
  %4652 = call float @dx.op.binary.f32(i32 35, float %4651, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4653 = bitcast float %4540 to i32
  %4654 = sitofp i32 %4653 to float
  %4655 = fadd fast float %4654, 0xC1CFBF8940000000
  %4656 = fmul fast float %4650, %4655
  %4657 = fadd fast float %4656, 0x41CFBF8940000000
  %4658 = fptosi float %4657 to i32
  %4659 = bitcast i32 %4658 to float
  %4660 = bitcast float %4652 to i32
  %4661 = sitofp i32 %4660 to float
  %4662 = fadd fast float %4661, 0xC1CFBF8940000000
  %4663 = fmul fast float %4662, %4650
  %4664 = fadd fast float %4663, 0x41CFBF8940000000
  %4665 = fptosi float %4664 to i32
  %4666 = bitcast i32 %4665 to float
  %4667 = fmul fast float %4659, %4649
  %4668 = fmul fast float %4666, %4649
  %4669 = fsub fast float %4652, %4667
  %4670 = fadd fast float %4668, %4652
  %4671 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4672 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4673 = fsub fast float %4647, %4671
  %4674 = fsub fast float %4672, %4671
  %4675 = bitcast float %4674 to i32
  %4676 = sub nsw i32 2129859010, %4675
  %4677 = bitcast i32 %4676 to float
  %4678 = fmul fast float %4677, %4673
  %4679 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4680 = fcmp fast olt float %4679, 0x3F70101020000000
  br i1 %4680, label %4819, label %4681

; <label>:4681                                    ; preds = %4643, %4546
  %4682 = phi float [ %4679, %4643 ], [ %4540, %4546 ]
  %4683 = fmul fast float %4682, %4549
  %4684 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.i32 %4684, 1
  %4686 = extractvalue %dx.types.CBufRet.i32 %4684, 0
  %4687 = add i32 %4686, 0
  %4688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4687, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4689 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4688, %dx.types.Handle %98, float %4638, float %4639, float undef, float undef, i32 0, i32 0, i32 undef, float %4601, float %4602, float undef, float %4605, float %4606, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4690 = extractvalue %dx.types.ResRet.f32 %4689, 0
  %4691 = extractvalue %dx.types.ResRet.f32 %4689, 1
  %4692 = extractvalue %dx.types.ResRet.f32 %4689, 2
  %4693 = extractvalue %dx.types.ResRet.f32 %4689, 3
  %4694 = and i32 %4685, 255
  %4695 = uitofp i32 %4694 to float
  %4696 = lshr i32 %4685, 8
  %4697 = and i32 %4696, 255
  %4698 = uitofp i32 %4697 to float
  %4699 = fmul fast float %4693, %4695
  %4700 = fadd fast float %4699, %4698
  %4701 = fmul fast float %4700, 0x3F70101000000000
  %4702 = fadd fast float %4701, 0xBFB99999A0000000
  %4703 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4704 = fmul fast float %4703, 0x3FF1C71C80000000
  %4705 = call float @dx.op.binary.f32(i32 36, float %4701, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4706 = fsub fast float 1.000000e+00, %4704
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4708 = fmul fast float %4707, %4690
  %4709 = fmul fast float %4707, %4691
  %4710 = fmul fast float %4707, %4692
  %4711 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4712 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4713 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4714 = fmul fast float %4704, %4690
  %4715 = fmul fast float %4704, %4691
  %4716 = fmul fast float %4704, %4692
  %4717 = fadd fast float %4714, %4705
  %4718 = fadd fast float %4715, %4705
  %4719 = fadd fast float %4716, %4705
  %4720 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4721 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4722 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4723 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4724 = extractvalue %dx.types.CBufRet.i32 %4723, 3
  %4725 = extractvalue %dx.types.CBufRet.i32 %4723, 2
  %4726 = add i32 %4725, 0
  %4727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4726, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4728 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4727, %dx.types.Handle %98, float %4638, float %4639, float undef, float undef, i32 0, i32 0, i32 undef, float %4601, float %4602, float undef, float %4605, float %4606, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4729 = extractvalue %dx.types.ResRet.f32 %4728, 0
  %4730 = extractvalue %dx.types.ResRet.f32 %4728, 1
  %4731 = extractvalue %dx.types.ResRet.f32 %4728, 2
  %4732 = extractvalue %dx.types.ResRet.f32 %4728, 3
  %4733 = and i32 %4724, 255
  %4734 = uitofp i32 %4733 to float
  %4735 = lshr i32 %4724, 8
  %4736 = and i32 %4735, 255
  %4737 = uitofp i32 %4736 to float
  %4738 = lshr i32 %4724, 16
  %4739 = and i32 %4738, 255
  %4740 = uitofp i32 %4739 to float
  %4741 = fmul fast float %4740, 0x3F70101000000000
  %4742 = fmul fast float %4729, %4734
  %4743 = fadd fast float %4742, %4737
  %4744 = fmul fast float %4743, 0x3F70101000000000
  %4745 = fadd fast float %4730, -5.000000e-01
  %4746 = fadd fast float %4732, -5.000000e-01
  %4747 = fmul fast float %4745, %4741
  %4748 = fmul fast float %4746, %4741
  %4749 = fadd fast float %4747, 5.000000e-01
  %4750 = fadd fast float %4748, 5.000000e-01
  %4751 = fmul fast float %4749, 2.000000e+00
  %4752 = fadd fast float %4751, -1.000000e+00
  %4753 = fmul fast float %4750, 2.000000e+00
  %4754 = fadd fast float %4753, -1.000000e+00
  %4755 = fadd fast float %4752, %4754
  %4756 = fmul fast float %4755, 5.000000e-01
  %4757 = fsub fast float %4752, %4754
  %4758 = fmul fast float %4757, 5.000000e-01
  %4759 = call float @dx.op.unary.f32(i32 6, float %4756)  ; FAbs(value)
  %4760 = fsub fast float 1.000000e+00, %4759
  %4761 = call float @dx.op.unary.f32(i32 6, float %4758)  ; FAbs(value)
  %4762 = fsub fast float %4760, %4761
  %4763 = call float @dx.op.dot3.f32(i32 55, float %4756, float %4758, float %4762, float %4756, float %4758, float %4762)  ; Dot3(ax,ay,az,bx,by,bz)
  %4764 = call float @dx.op.unary.f32(i32 25, float %4763)  ; Rsqrt(value)
  %4765 = fmul fast float %4756, %4764
  %4766 = fmul fast float %4758, %4764
  %4767 = select i1 %4594, i32 %4584, i32 %4585
  %4768 = select i1 %4592, i32 %4583, i32 %4767
  %4769 = sitofp i32 %4768 to float
  %4770 = fmul fast float %4762, %4769
  %4771 = fmul fast float %4770, %4764
  %4772 = select i1 %4594, float %4771, float %4766
  %4773 = select i1 %4594, float %4766, float %4771
  %4774 = select i1 %4592, float %4771, float %4765
  %4775 = select i1 %4592, float %4766, float %4772
  %4776 = select i1 %4592, float %4765, float %4773
  %4777 = fsub fast float %4711, %4435
  %4778 = fsub fast float %4712, %4436
  %4779 = fsub fast float %4713, %4437
  %4780 = fmul fast float %4777, %4683
  %4781 = fmul fast float %4778, %4683
  %4782 = fmul fast float %4779, %4683
  %4783 = fadd fast float %4780, %4435
  %4784 = fadd fast float %4781, %4436
  %4785 = fadd fast float %4782, %4437
  %4786 = fsub fast float %4720, %4417
  %4787 = fsub fast float %4721, %4418
  %4788 = fsub fast float %4722, %4419
  %4789 = fmul fast float %4786, %4683
  %4790 = fmul fast float %4787, %4683
  %4791 = fmul fast float %4788, %4683
  %4792 = fadd fast float %4789, %4417
  %4793 = fadd fast float %4790, %4418
  %4794 = fadd fast float %4791, %4419
  %4795 = fadd fast float %4774, %4378
  %4796 = fadd fast float %4775, %4379
  %4797 = fadd fast float %4776, %4380
  %4798 = call float @dx.op.dot3.f32(i32 55, float %4795, float %4796, float %4797, float %4795, float %4796, float %4797)  ; Dot3(ax,ay,az,bx,by,bz)
  %4799 = call float @dx.op.unary.f32(i32 25, float %4798)  ; Rsqrt(value)
  %4800 = fmul fast float %4795, %4799
  %4801 = fmul fast float %4796, %4799
  %4802 = fmul fast float %4797, %4799
  %4803 = fsub fast float %4800, %4378
  %4804 = fsub fast float %4801, %4379
  %4805 = fsub fast float %4802, %4380
  %4806 = fmul fast float %4803, %4683
  %4807 = fmul fast float %4804, %4683
  %4808 = fmul fast float %4805, %4683
  %4809 = fadd fast float %4806, %4378
  %4810 = fadd fast float %4807, %4379
  %4811 = fadd fast float %4808, %4380
  %4812 = call float @dx.op.binary.f32(i32 36, float %4393, float %4731)  ; FMin(a,b)
  %4813 = fsub fast float %4812, %4393
  %4814 = fmul fast float %4813, %4683
  %4815 = fadd fast float %4814, %4393
  %4816 = fsub fast float %4744, %4420
  %4817 = fmul fast float %4816, %4683
  %4818 = fadd fast float %4817, %4420
  br label %4819

; <label>:4819                                    ; preds = %4681, %4643, %4545
  %4820 = phi float [ %4783, %4681 ], [ %4435, %4643 ], [ %4435, %4545 ]
  %4821 = phi float [ %4784, %4681 ], [ %4436, %4643 ], [ %4436, %4545 ]
  %4822 = phi float [ %4785, %4681 ], [ %4437, %4643 ], [ %4437, %4545 ]
  %4823 = phi float [ %4809, %4681 ], [ %4378, %4643 ], [ %4378, %4545 ]
  %4824 = phi float [ %4810, %4681 ], [ %4379, %4643 ], [ %4379, %4545 ]
  %4825 = phi float [ %4811, %4681 ], [ %4380, %4643 ], [ %4380, %4545 ]
  %4826 = phi float [ %4792, %4681 ], [ %4417, %4643 ], [ %4417, %4545 ]
  %4827 = phi float [ %4793, %4681 ], [ %4418, %4643 ], [ %4418, %4545 ]
  %4828 = phi float [ %4794, %4681 ], [ %4419, %4643 ], [ %4419, %4545 ]
  %4829 = phi float [ %4818, %4681 ], [ %4420, %4643 ], [ %4420, %4545 ]
  %4830 = phi float [ %4815, %4681 ], [ %4393, %4643 ], [ %4393, %4545 ]
  br i1 %4543, label %4831, label %5104

; <label>:4831                                    ; preds = %4819
  %4832 = call float @dx.op.unary.f32(i32 23, float %4830)  ; Log(value)
  %4833 = fmul fast float %4832, 4.000000e+00
  %4834 = call float @dx.op.unary.f32(i32 21, float %4833)  ; Exp(value)
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 0
  %4837 = fmul fast float %4836, %50
  %4838 = fmul fast float %4836, %51
  %4839 = fmul fast float %4836, %52
  %4840 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %4841 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %4842 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4843 = call float @dx.op.unary.f32(i32 23, float %4840)  ; Log(value)
  %4844 = call float @dx.op.unary.f32(i32 23, float %4841)  ; Log(value)
  %4845 = call float @dx.op.unary.f32(i32 23, float %4842)  ; Log(value)
  %4846 = fmul fast float %4843, 4.000000e+00
  %4847 = fmul fast float %4844, 4.000000e+00
  %4848 = fmul fast float %4845, 4.000000e+00
  %4849 = call float @dx.op.unary.f32(i32 21, float %4846)  ; Exp(value)
  %4850 = call float @dx.op.unary.f32(i32 21, float %4847)  ; Exp(value)
  %4851 = call float @dx.op.unary.f32(i32 21, float %4848)  ; Exp(value)
  %4852 = fadd fast float %4850, %4849
  %4853 = fadd fast float %4852, %4851
  %4854 = fdiv fast float 1.000000e+00, %4853
  %4855 = fmul fast float %4854, %4849
  %4856 = fcmp fast ogt float %59, 0.000000e+00
  %4857 = fcmp fast ogt float %60, 0.000000e+00
  %4858 = fcmp fast ogt float %61, 0.000000e+00
  %4859 = fcmp fast olt float %59, 0.000000e+00
  %4860 = fcmp fast olt float %60, 0.000000e+00
  %4861 = fcmp fast olt float %61, 0.000000e+00
  %4862 = zext i1 %4856 to i32
  %4863 = zext i1 %4857 to i32
  %4864 = zext i1 %4858 to i32
  %4865 = zext i1 %4859 to i32
  %4866 = zext i1 %4860 to i32
  %4867 = zext i1 %4861 to i32
  %4868 = sub nsw i32 %4862, %4865
  %4869 = sub nsw i32 %4863, %4866
  %4870 = sub nsw i32 %4864, %4867
  %4871 = call float @dx.op.unary.f32(i32 83, float %4837)  ; DerivCoarseX(value)
  %4872 = call float @dx.op.unary.f32(i32 83, float %4838)  ; DerivCoarseX(value)
  %4873 = call float @dx.op.unary.f32(i32 83, float %4839)  ; DerivCoarseX(value)
  %4874 = call float @dx.op.unary.f32(i32 84, float %4837)  ; DerivCoarseY(value)
  %4875 = call float @dx.op.unary.f32(i32 84, float %4838)  ; DerivCoarseY(value)
  %4876 = call float @dx.op.unary.f32(i32 84, float %4839)  ; DerivCoarseY(value)
  %4877 = fcmp fast ole float %261, %4855
  %4878 = fmul fast float %4854, %4852
  %4879 = fcmp fast ole float %261, %4878
  %4880 = select i1 %4879, float %4839, float %4837
  %4881 = select i1 %4879, float %4837, float %4838
  %4882 = select i1 %4877, float %4838, float %4880
  %4883 = select i1 %4877, float %4839, float %4881
  %4884 = select i1 %4879, float %4873, float %4871
  %4885 = select i1 %4879, float %4871, float %4872
  %4886 = select i1 %4877, float %4872, float %4884
  %4887 = select i1 %4877, float %4873, float %4885
  %4888 = select i1 %4879, float %4876, float %4874
  %4889 = select i1 %4879, float %4874, float %4875
  %4890 = select i1 %4877, float %4875, float %4888
  %4891 = select i1 %4877, float %4876, float %4889
  %4892 = call float @dx.op.unary.f32(i32 27, float %4882)  ; Round_ni(value)
  %4893 = call float @dx.op.unary.f32(i32 27, float %4883)  ; Round_ni(value)
  %4894 = fptosi float %4892 to i32
  %4895 = fptosi float %4893 to i32
  %4896 = xor i32 %4895, %4894
  %4897 = sitofp i32 %4896 to float
  %4898 = fptosi float %4897 to i32
  %4899 = sitofp i32 %4898 to float
  %4900 = fmul fast float %4899, 0x3FE3C6EF40000000
  %4901 = frem fast float %4892, 2.560000e+02
  %4902 = frem fast float %4893, 2.560000e+02
  %4903 = fptoui float %4901 to i32
  %4904 = fptoui float %4902 to i32
  %4905 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4903, i32 %4904, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4906 = extractvalue %dx.types.ResRet.f32 %4905, 0
  %4907 = extractvalue %dx.types.ResRet.f32 %4905, 1
  %4908 = extractvalue %dx.types.ResRet.f32 %4905, 2
  %4909 = fadd fast float %4906, %4900
  %4910 = fadd fast float %4907, %4900
  %4911 = fadd fast float %4908, %4900
  %4912 = call float @dx.op.unary.f32(i32 22, float %4909)  ; Frc(value)
  %4913 = call float @dx.op.unary.f32(i32 22, float %4910)  ; Frc(value)
  %4914 = call float @dx.op.unary.f32(i32 22, float %4911)  ; Frc(value)
  %4915 = fmul fast float %4914, 0x401921FB60000000
  %4916 = call float @dx.op.unary.f32(i32 13, float %4915)  ; Sin(value)
  %4917 = call float @dx.op.unary.f32(i32 12, float %4915)  ; Cos(value)
  %4918 = fsub fast float -0.000000e+00, %4917
  %4919 = fmul fast float %4917, %4882
  %4920 = call float @dx.op.tertiary.f32(i32 46, float %4916, float %4883, float %4919)  ; FMad(a,b,c)
  %4921 = fmul fast float %4916, %4882
  %4922 = call float @dx.op.tertiary.f32(i32 46, float %4918, float %4883, float %4921)  ; FMad(a,b,c)
  %4923 = fadd fast float %4920, %4912
  %4924 = fadd fast float %4922, %4913
  %4925 = extractvalue %dx.types.CBufRet.f32 %4835, 3
  %4926 = bitcast float %4925 to i32
  %4927 = icmp eq i32 %4926, 0
  br i1 %4927, label %4966, label %4928

; <label>:4928                                    ; preds = %4831
  %4929 = add i32 %4926, 0
  %4930 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4929, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4931 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4930, %dx.types.Handle %99, float %4923, float %4924, float undef, float undef, i32 0, i32 0, i32 undef, float %4886, float %4887, float undef, float %4890, float %4891, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4932 = extractvalue %dx.types.ResRet.f32 %4931, 0
  %4933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4934 = extractvalue %dx.types.CBufRet.f32 %4933, 1
  %4935 = extractvalue %dx.types.CBufRet.f32 %4933, 2
  %4936 = fsub fast float 1.000000e+00, %4541
  %4937 = call float @dx.op.binary.f32(i32 35, float %4936, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4938 = bitcast float %4541 to i32
  %4939 = sitofp i32 %4938 to float
  %4940 = fadd fast float %4939, 0xC1CFBF8940000000
  %4941 = fmul fast float %4935, %4940
  %4942 = fadd fast float %4941, 0x41CFBF8940000000
  %4943 = fptosi float %4942 to i32
  %4944 = bitcast i32 %4943 to float
  %4945 = bitcast float %4937 to i32
  %4946 = sitofp i32 %4945 to float
  %4947 = fadd fast float %4946, 0xC1CFBF8940000000
  %4948 = fmul fast float %4947, %4935
  %4949 = fadd fast float %4948, 0x41CFBF8940000000
  %4950 = fptosi float %4949 to i32
  %4951 = bitcast i32 %4950 to float
  %4952 = fmul fast float %4944, %4934
  %4953 = fmul fast float %4951, %4934
  %4954 = fsub fast float %4937, %4952
  %4955 = fadd fast float %4953, %4937
  %4956 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4957 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4958 = fsub fast float %4932, %4956
  %4959 = fsub fast float %4957, %4956
  %4960 = bitcast float %4959 to i32
  %4961 = sub nsw i32 2129859010, %4960
  %4962 = bitcast i32 %4961 to float
  %4963 = fmul fast float %4962, %4958
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = fcmp fast olt float %4964, 0x3F70101020000000
  br i1 %4965, label %5104, label %4966

; <label>:4966                                    ; preds = %4928, %4831
  %4967 = phi float [ %4964, %4928 ], [ %4541, %4831 ]
  %4968 = fmul fast float %4967, %4834
  %4969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4970 = extractvalue %dx.types.CBufRet.i32 %4969, 1
  %4971 = extractvalue %dx.types.CBufRet.i32 %4969, 0
  %4972 = add i32 %4971, 0
  %4973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4972, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4974 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4973, %dx.types.Handle %98, float %4923, float %4924, float undef, float undef, i32 0, i32 0, i32 undef, float %4886, float %4887, float undef, float %4890, float %4891, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4975 = extractvalue %dx.types.ResRet.f32 %4974, 0
  %4976 = extractvalue %dx.types.ResRet.f32 %4974, 1
  %4977 = extractvalue %dx.types.ResRet.f32 %4974, 2
  %4978 = extractvalue %dx.types.ResRet.f32 %4974, 3
  %4979 = and i32 %4970, 255
  %4980 = uitofp i32 %4979 to float
  %4981 = lshr i32 %4970, 8
  %4982 = and i32 %4981, 255
  %4983 = uitofp i32 %4982 to float
  %4984 = fmul fast float %4978, %4980
  %4985 = fadd fast float %4984, %4983
  %4986 = fmul fast float %4985, 0x3F70101000000000
  %4987 = fadd fast float %4986, 0xBFB99999A0000000
  %4988 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4989 = fmul fast float %4988, 0x3FF1C71C80000000
  %4990 = call float @dx.op.binary.f32(i32 36, float %4986, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4991 = fsub fast float 1.000000e+00, %4989
  %4992 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  %4993 = fmul fast float %4992, %4975
  %4994 = fmul fast float %4992, %4976
  %4995 = fmul fast float %4992, %4977
  %4996 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4997 = call float @dx.op.unary.f32(i32 7, float %4994)  ; Saturate(value)
  %4998 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4999 = fmul fast float %4989, %4975
  %5000 = fmul fast float %4989, %4976
  %5001 = fmul fast float %4989, %4977
  %5002 = fadd fast float %4999, %4990
  %5003 = fadd fast float %5000, %4990
  %5004 = fadd fast float %5001, %4990
  %5005 = call float @dx.op.unary.f32(i32 7, float %5002)  ; Saturate(value)
  %5006 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5007 = call float @dx.op.unary.f32(i32 7, float %5004)  ; Saturate(value)
  %5008 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5009 = extractvalue %dx.types.CBufRet.i32 %5008, 3
  %5010 = extractvalue %dx.types.CBufRet.i32 %5008, 2
  %5011 = add i32 %5010, 0
  %5012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5013 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5012, %dx.types.Handle %98, float %4923, float %4924, float undef, float undef, i32 0, i32 0, i32 undef, float %4886, float %4887, float undef, float %4890, float %4891, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5014 = extractvalue %dx.types.ResRet.f32 %5013, 0
  %5015 = extractvalue %dx.types.ResRet.f32 %5013, 1
  %5016 = extractvalue %dx.types.ResRet.f32 %5013, 2
  %5017 = extractvalue %dx.types.ResRet.f32 %5013, 3
  %5018 = and i32 %5009, 255
  %5019 = uitofp i32 %5018 to float
  %5020 = lshr i32 %5009, 8
  %5021 = and i32 %5020, 255
  %5022 = uitofp i32 %5021 to float
  %5023 = lshr i32 %5009, 16
  %5024 = and i32 %5023, 255
  %5025 = uitofp i32 %5024 to float
  %5026 = fmul fast float %5025, 0x3F70101000000000
  %5027 = fmul fast float %5014, %5019
  %5028 = fadd fast float %5027, %5022
  %5029 = fmul fast float %5028, 0x3F70101000000000
  %5030 = fadd fast float %5015, -5.000000e-01
  %5031 = fadd fast float %5017, -5.000000e-01
  %5032 = fmul fast float %5030, %5026
  %5033 = fmul fast float %5031, %5026
  %5034 = fadd fast float %5032, 5.000000e-01
  %5035 = fadd fast float %5033, 5.000000e-01
  %5036 = fmul fast float %5034, 2.000000e+00
  %5037 = fadd fast float %5036, -1.000000e+00
  %5038 = fmul fast float %5035, 2.000000e+00
  %5039 = fadd fast float %5038, -1.000000e+00
  %5040 = fadd fast float %5037, %5039
  %5041 = fmul fast float %5040, 5.000000e-01
  %5042 = fsub fast float %5037, %5039
  %5043 = fmul fast float %5042, 5.000000e-01
  %5044 = call float @dx.op.unary.f32(i32 6, float %5041)  ; FAbs(value)
  %5045 = fsub fast float 1.000000e+00, %5044
  %5046 = call float @dx.op.unary.f32(i32 6, float %5043)  ; FAbs(value)
  %5047 = fsub fast float %5045, %5046
  %5048 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5043, float %5047, float %5041, float %5043, float %5047)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = call float @dx.op.unary.f32(i32 25, float %5048)  ; Rsqrt(value)
  %5050 = fmul fast float %5041, %5049
  %5051 = fmul fast float %5043, %5049
  %5052 = select i1 %4879, i32 %4869, i32 %4870
  %5053 = select i1 %4877, i32 %4868, i32 %5052
  %5054 = sitofp i32 %5053 to float
  %5055 = fmul fast float %5047, %5054
  %5056 = fmul fast float %5055, %5049
  %5057 = select i1 %4879, float %5056, float %5051
  %5058 = select i1 %4879, float %5051, float %5056
  %5059 = select i1 %4877, float %5056, float %5050
  %5060 = select i1 %4877, float %5051, float %5057
  %5061 = select i1 %4877, float %5050, float %5058
  %5062 = fsub fast float %4996, %4820
  %5063 = fsub fast float %4997, %4821
  %5064 = fsub fast float %4998, %4822
  %5065 = fmul fast float %5062, %4968
  %5066 = fmul fast float %5063, %4968
  %5067 = fmul fast float %5064, %4968
  %5068 = fadd fast float %5065, %4820
  %5069 = fadd fast float %5066, %4821
  %5070 = fadd fast float %5067, %4822
  %5071 = fsub fast float %5005, %4826
  %5072 = fsub fast float %5006, %4827
  %5073 = fsub fast float %5007, %4828
  %5074 = fmul fast float %5071, %4968
  %5075 = fmul fast float %5072, %4968
  %5076 = fmul fast float %5073, %4968
  %5077 = fadd fast float %5074, %4826
  %5078 = fadd fast float %5075, %4827
  %5079 = fadd fast float %5076, %4828
  %5080 = fadd fast float %5059, %4823
  %5081 = fadd fast float %5060, %4824
  %5082 = fadd fast float %5061, %4825
  %5083 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5081, float %5082, float %5080, float %5081, float %5082)  ; Dot3(ax,ay,az,bx,by,bz)
  %5084 = call float @dx.op.unary.f32(i32 25, float %5083)  ; Rsqrt(value)
  %5085 = fmul fast float %5080, %5084
  %5086 = fmul fast float %5081, %5084
  %5087 = fmul fast float %5082, %5084
  %5088 = fsub fast float %5085, %4823
  %5089 = fsub fast float %5086, %4824
  %5090 = fsub fast float %5087, %4825
  %5091 = fmul fast float %5088, %4968
  %5092 = fmul fast float %5089, %4968
  %5093 = fmul fast float %5090, %4968
  %5094 = fadd fast float %5091, %4823
  %5095 = fadd fast float %5092, %4824
  %5096 = fadd fast float %5093, %4825
  %5097 = call float @dx.op.binary.f32(i32 36, float %4830, float %5016)  ; FMin(a,b)
  %5098 = fsub fast float %5097, %4830
  %5099 = fmul fast float %5098, %4968
  %5100 = fadd fast float %5099, %4830
  %5101 = fsub fast float %5029, %4829
  %5102 = fmul fast float %5101, %4968
  %5103 = fadd fast float %5102, %4829
  br label %5104

; <label>:5104                                    ; preds = %4966, %4928, %4819, %4535
  %5105 = phi float [ %5068, %4966 ], [ %4820, %4928 ], [ %4820, %4819 ], [ %4435, %4535 ]
  %5106 = phi float [ %5069, %4966 ], [ %4821, %4928 ], [ %4821, %4819 ], [ %4436, %4535 ]
  %5107 = phi float [ %5070, %4966 ], [ %4822, %4928 ], [ %4822, %4819 ], [ %4437, %4535 ]
  %5108 = phi float [ %5094, %4966 ], [ %4823, %4928 ], [ %4823, %4819 ], [ %4378, %4535 ]
  %5109 = phi float [ %5095, %4966 ], [ %4824, %4928 ], [ %4824, %4819 ], [ %4379, %4535 ]
  %5110 = phi float [ %5096, %4966 ], [ %4825, %4928 ], [ %4825, %4819 ], [ %4380, %4535 ]
  %5111 = phi float [ %5077, %4966 ], [ %4826, %4928 ], [ %4826, %4819 ], [ %4417, %4535 ]
  %5112 = phi float [ %5078, %4966 ], [ %4827, %4928 ], [ %4827, %4819 ], [ %4418, %4535 ]
  %5113 = phi float [ %5079, %4966 ], [ %4828, %4928 ], [ %4828, %4819 ], [ %4419, %4535 ]
  %5114 = phi float [ %5103, %4966 ], [ %4829, %4928 ], [ %4829, %4819 ], [ %4420, %4535 ]
  %5115 = phi float [ %5100, %4966 ], [ %4830, %4928 ], [ %4830, %4819 ], [ %4393, %4535 ]
  %5116 = fcmp fast une float %4539, 0.000000e+00
  %5117 = call float @dx.op.dot3.f32(i32 55, float %189, float %190, float %191, float %189, float %190, float %191)  ; Dot3(ax,ay,az,bx,by,bz)
  %5118 = call float @dx.op.unary.f32(i32 25, float %5117)  ; Rsqrt(value)
  br i1 %5116, label %5126, label %5119

; <label>:5119                                    ; preds = %5104
  %5120 = fmul fast float %5118, %189
  %5121 = fmul fast float %5118, %190
  %5122 = fmul fast float %5118, %191
  %5123 = fsub fast float -0.000000e+00, %5120
  %5124 = fsub fast float -0.000000e+00, %5121
  %5125 = fsub fast float -0.000000e+00, %5122
  br label %5293

; <label>:5126                                    ; preds = %5104
  %5127 = fmul fast float %189, %5118
  %5128 = fsub fast float -0.000000e+00, %5127
  %5129 = fmul fast float %190, %5118
  %5130 = fsub fast float -0.000000e+00, %5129
  %5131 = fmul fast float %191, %5118
  %5132 = fsub fast float -0.000000e+00, %5131
  %5133 = call float @dx.op.dot3.f32(i32 55, float %5128, float %5130, float %5132, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %5134 = fmul fast float %4539, 2.500000e+00
  %5135 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5136 = fmul fast float %4539, 0x4013FFFFE0000000
  %5137 = fadd fast float %5136, 0xBFFFFFFFE0000000
  %5138 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5139 = fmul fast float %4539, 0x4004000020000000
  %5140 = fadd fast float %5139, 0xBFF8000040000000
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = fmul fast float %4399, 1.000000e+01
  %5143 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5144 = fmul fast float %5143, 2.000000e+00
  %5145 = fsub fast float 3.000000e+00, %5144
  %5146 = fmul fast float %5143, %5143
  %5147 = fmul fast float %5146, %5145
  %5148 = fsub fast float 1.000000e+00, %5147
  %5149 = fsub fast float 0x3FE3333340000000, %5114
  %5150 = fmul fast float %5149, 0x400AAAAAA0000000
  %5151 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5152 = fmul fast float %5148, %5151
  %5153 = fmul fast float %5105, 0x3FEA2B8620000000
  %5154 = fmul fast float %5106, 0x3FEA2B8620000000
  %5155 = fmul fast float %5107, 0x3FEA2B8620000000
  %5156 = fadd fast float %5153, 0x3FC81DFBA0000000
  %5157 = fmul fast float %5156, %5105
  %5158 = fadd fast float %5157, 0x3F910E6020000000
  %5159 = fadd fast float %5154, 0x3FC81DFBA0000000
  %5160 = fmul fast float %5159, %5106
  %5161 = fadd fast float %5160, 0x3F910E6020000000
  %5162 = fadd fast float %5155, 0x3FC81DFBA0000000
  %5163 = fmul fast float %5162, %5107
  %5164 = fadd fast float %5163, 0x3F910E6020000000
  %5165 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5166 = call float @dx.op.unary.f32(i32 7, float %5161)  ; Saturate(value)
  %5167 = call float @dx.op.unary.f32(i32 7, float %5164)  ; Saturate(value)
  %5168 = fsub fast float %5165, %5105
  %5169 = fsub fast float %5166, %5106
  %5170 = fsub fast float %5167, %5107
  %5171 = fmul fast float %5168, %5135
  %5172 = fmul fast float %5171, %5152
  %5173 = fmul fast float %5169, %5135
  %5174 = fmul fast float %5173, %5152
  %5175 = fmul fast float %5170, %5135
  %5176 = fmul fast float %5175, %5152
  %5177 = fadd fast float %5172, %5105
  %5178 = fadd fast float %5174, %5106
  %5179 = fadd fast float %5176, %5107
  %5180 = fmul fast float %5115, %5115
  %5181 = fmul fast float %5180, %5180
  %5182 = fadd fast float %5138, 1.000000e+00
  %5183 = fsub fast float %5182, %5152
  %5184 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5185 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5187 = fsub fast float 1.000000e+00, %5181
  %5188 = call float @dx.op.binary.f32(i32 36, float %5184, float %5187)  ; FMin(a,b)
  %5189 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5190 = call float @dx.op.binary.f32(i32 35, float %5188, float %5189)  ; FMax(a,b)
  %5191 = fadd fast float %5186, 0xBFE4CCCCC0000000
  %5192 = fmul fast float %5191, 0x4006DB6DA0000000
  %5193 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5194 = fmul fast float %5193, 2.000000e+00
  %5195 = fsub fast float 3.000000e+00, %5194
  %5196 = bitcast float %5111 to i32
  %5197 = ashr i32 %5196, 1
  %5198 = add nsw i32 %5197, 532487669
  %5199 = bitcast i32 %5198 to float
  %5200 = fsub fast float 1.000000e+00, %5199
  %5201 = bitcast float %5200 to i32
  %5202 = sub nsw i32 2129859010, %5201
  %5203 = bitcast i32 %5202 to float
  %5204 = fmul fast float %5203, 2.000000e+00
  %5205 = bitcast float %5112 to i32
  %5206 = ashr i32 %5205, 1
  %5207 = add nsw i32 %5206, 532487669
  %5208 = bitcast i32 %5207 to float
  %5209 = fsub fast float 1.000000e+00, %5208
  %5210 = bitcast float %5209 to i32
  %5211 = sub nsw i32 2129859010, %5210
  %5212 = bitcast i32 %5211 to float
  %5213 = fmul fast float %5212, 2.000000e+00
  %5214 = bitcast float %5113 to i32
  %5215 = ashr i32 %5214, 1
  %5216 = add nsw i32 %5215, 532487669
  %5217 = bitcast i32 %5216 to float
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = bitcast float %5218 to i32
  %5220 = sub nsw i32 2129859010, %5219
  %5221 = bitcast i32 %5220 to float
  %5222 = fmul fast float %5221, 2.000000e+00
  %5223 = fsub fast float 0x4002A9FBE0000000, %5204
  %5224 = fadd fast float %5204, 0x3FD54FDF00000000
  %5225 = bitcast float %5224 to i32
  %5226 = sub nsw i32 2129859010, %5225
  %5227 = bitcast i32 %5226 to float
  %5228 = fmul fast float %5227, %5223
  %5229 = fmul fast float %5228, %5228
  %5230 = fsub fast float 0x4002A9FBE0000000, %5213
  %5231 = fadd fast float %5213, 0x3FD54FDF00000000
  %5232 = bitcast float %5231 to i32
  %5233 = sub nsw i32 2129859010, %5232
  %5234 = bitcast i32 %5233 to float
  %5235 = fmul fast float %5234, %5230
  %5236 = fmul fast float %5235, %5235
  %5237 = fsub fast float 0x4002A9FBE0000000, %5222
  %5238 = fadd fast float %5222, 0x3FD54FDF00000000
  %5239 = bitcast float %5238 to i32
  %5240 = sub nsw i32 2129859010, %5239
  %5241 = bitcast i32 %5240 to float
  %5242 = fmul fast float %5241, %5237
  %5243 = fmul fast float %5242, %5242
  %5244 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5229)  ; FMax(a,b)
  %5245 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5236)  ; FMax(a,b)
  %5246 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5243)  ; FMax(a,b)
  %5247 = fsub fast float 1.000000e+00, %5133
  %5248 = fadd fast float %5247, %5148
  %5249 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5250 = fsub fast float 1.000000e+00, %4520
  %5251 = fmul fast float %5190, %5250
  %5252 = fmul fast float %5193, %5193
  %5253 = fmul fast float %5252, %5251
  %5254 = fmul fast float %5253, %5195
  %5255 = fmul fast float %5250, 0xBFE99999A0000000
  %5256 = fmul fast float %5255, %5135
  %5257 = fmul fast float %5256, %5152
  %5258 = fadd fast float %5257, 1.000000e+00
  %5259 = fadd fast float %5114, -1.000000e+00
  %5260 = fmul fast float %5258, %5259
  %5261 = fadd fast float %5260, 1.000000e+00
  %5262 = fsub fast float %5244, %5111
  %5263 = fsub fast float %5245, %5112
  %5264 = fsub fast float %5246, %5113
  %5265 = fmul fast float %5254, %5262
  %5266 = fmul fast float %5254, %5263
  %5267 = fmul fast float %5254, %5264
  %5268 = fadd fast float %5265, %5111
  %5269 = fadd fast float %5266, %5112
  %5270 = fadd fast float %5267, %5113
  %5271 = fsub fast float %109, %5108
  %5272 = fsub fast float %110, %5109
  %5273 = fsub fast float %111, %5110
  %5274 = fmul fast float %5254, %5271
  %5275 = fmul fast float %5254, %5272
  %5276 = fmul fast float %5254, %5273
  %5277 = fadd fast float %5274, %5108
  %5278 = fadd fast float %5275, %5109
  %5279 = fadd fast float %5276, %5110
  %5280 = fmul fast float %5254, %5249
  %5281 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5282 = fsub fast float 1.000000e+00, %5281
  %5283 = fmul fast float %5280, %5282
  %5284 = fadd fast float %5283, %5281
  %5285 = fsub fast float 1.000000e+00, %5115
  %5286 = fmul fast float %5254, %5285
  %5287 = fadd fast float %5286, %5115
  %5288 = call float @dx.op.dot3.f32(i32 55, float %5277, float %5278, float %5279, float %5277, float %5278, float %5279)  ; Dot3(ax,ay,az,bx,by,bz)
  %5289 = call float @dx.op.unary.f32(i32 25, float %5288)  ; Rsqrt(value)
  %5290 = fmul fast float %5277, %5289
  %5291 = fmul fast float %5278, %5289
  %5292 = fmul fast float %5279, %5289
  br label %5293

; <label>:5293                                    ; preds = %5126, %5119
  %5294 = phi float [ %5125, %5119 ], [ %5132, %5126 ]
  %5295 = phi float [ %5124, %5119 ], [ %5130, %5126 ]
  %5296 = phi float [ %5123, %5119 ], [ %5128, %5126 ]
  %5297 = phi float [ %5122, %5119 ], [ %5131, %5126 ]
  %5298 = phi float [ %5121, %5119 ], [ %5129, %5126 ]
  %5299 = phi float [ %5120, %5119 ], [ %5127, %5126 ]
  %5300 = phi float [ %5105, %5119 ], [ %5177, %5126 ]
  %5301 = phi float [ %5106, %5119 ], [ %5178, %5126 ]
  %5302 = phi float [ %5107, %5119 ], [ %5179, %5126 ]
  %5303 = phi float [ %5108, %5119 ], [ %5290, %5126 ]
  %5304 = phi float [ %5109, %5119 ], [ %5291, %5126 ]
  %5305 = phi float [ %5110, %5119 ], [ %5292, %5126 ]
  %5306 = phi float [ %5111, %5119 ], [ %5268, %5126 ]
  %5307 = phi float [ %5112, %5119 ], [ %5269, %5126 ]
  %5308 = phi float [ %5113, %5119 ], [ %5270, %5126 ]
  %5309 = phi float [ %5114, %5119 ], [ %5284, %5126 ]
  %5310 = phi float [ %5115, %5119 ], [ %5287, %5126 ]
  %5311 = select i1 %250, float 0.000000e+00, float %5308
  %5312 = call float @dx.op.dot3.f32(i32 55, float %5303, float %5304, float %5305, float %5296, float %5295, float %5294)  ; Dot3(ax,ay,az,bx,by,bz)
  %5313 = call float @dx.op.unary.f32(i32 7, float %5312)  ; Saturate(value)
  %5314 = call float @dx.op.dot3.f32(i32 55, float %5299, float %5298, float %5297, float %5303, float %5304, float %5305)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = fmul fast float %5314, 2.000000e+00
  %5316 = fmul fast float %5315, %5303
  %5317 = fmul fast float %5315, %5304
  %5318 = fmul fast float %5315, %5305
  %5319 = fsub fast float %5299, %5316
  %5320 = fsub fast float %5298, %5317
  %5321 = fsub fast float %5297, %5318
  %5322 = call float @dx.op.binary.f32(i32 36, float %5310, float 1.000000e+00)  ; FMin(a,b)
  %5323 = fsub fast float 1.000000e+00, %5322
  %5324 = bitcast float %5323 to i32
  %5325 = ashr i32 %5324, 1
  %5326 = add nsw i32 %5325, 532487669
  %5327 = bitcast i32 %5326 to float
  %5328 = fsub fast float 1.000000e+00, %5309
  %5329 = call float @dx.op.binary.f32(i32 35, float %5328, float 0x3F847AE140000000)  ; FMax(a,b)
  %5330 = fmul fast float %5329, %5329
  %5331 = fmul fast float %5330, %5330
  %5332 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5327, float %5331, float %5332, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5334 = extractvalue %dx.types.ResRet.f32 %5333, 0
  %5335 = fsub fast float 1.000000e+00, %5310
  %5336 = bitcast float %5335 to i32
  %5337 = sub nsw i32 2129859010, %5336
  %5338 = fsub fast float 1.000000e+00, %69
  %5339 = call float @dx.op.dot3.f32(i32 55, float %129, float %130, float %131, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %5340 = call float @dx.op.binary.f32(i32 35, float %5339, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5341 = fdiv fast float %5338, %5340
  %5342 = call float @dx.op.dot3.f32(i32 55, float %5303, float %5304, float %5305, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %5343 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5344 = fmul fast float %5343, 5.000000e-01
  %5345 = fadd fast float %5344, 5.000000e-01
  %5346 = fmul fast float %5345, %69
  %5347 = call float @dx.op.dot3.f32(i32 55, float %5303, float %5304, float %5305, float %129, float %130, float %131)  ; Dot3(ax,ay,az,bx,by,bz)
  %5348 = call float @dx.op.unary.f32(i32 7, float %5347)  ; Saturate(value)
  %5349 = fmul fast float %5348, %5341
  %5350 = fadd fast float %5346, %5349
  %5351 = fsub fast float 5.000000e-01, %5344
  %5352 = fmul fast float %5351, %5300
  %5353 = fmul fast float %5351, %5301
  %5354 = fmul fast float %5351, %5302
  %5355 = fadd fast float %5350, %5352
  %5356 = fadd fast float %5350, %5353
  %5357 = fadd fast float %5350, %5354
  %5358 = call float @dx.op.dot3.f32(i32 55, float %5319, float %5320, float %5321, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %5359 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5360 = fmul fast float %5359, 5.000000e-01
  %5361 = fadd fast float %5360, 5.000000e-01
  %5362 = fmul fast float %5361, %69
  %5363 = call float @dx.op.dot3.f32(i32 55, float %5319, float %5320, float %5321, float %129, float %130, float %131)  ; Dot3(ax,ay,az,bx,by,bz)
  %5364 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  %5365 = fmul fast float %5364, %5341
  %5366 = fadd fast float %5362, %5365
  %5367 = fsub fast float 5.000000e-01, %5360
  %5368 = fmul fast float %5367, %5300
  %5369 = fmul fast float %5367, %5301
  %5370 = fmul fast float %5367, %5302
  %5371 = fadd fast float %5366, %5368
  %5372 = fadd fast float %5366, %5369
  %5373 = fadd fast float %5366, %5370
  %5374 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5376 = extractvalue %dx.types.CBufRet.f32 %5375, 0
  %5377 = call float @dx.op.binary.f32(i32 36, float %5300, float %5376)  ; FMin(a,b)
  %5378 = fmul fast float %5377, %5323
  %5379 = fsub fast float 1.000000e+00, %5378
  %5380 = bitcast float %5379 to i32
  %5381 = sub nsw i32 2129859010, %5380
  %5382 = bitcast i32 %5381 to float
  %5383 = call float @dx.op.binary.f32(i32 36, float %5301, float %5376)  ; FMin(a,b)
  %5384 = fmul fast float %5383, %5323
  %5385 = fsub fast float 1.000000e+00, %5384
  %5386 = bitcast float %5385 to i32
  %5387 = sub nsw i32 2129859010, %5386
  %5388 = bitcast i32 %5387 to float
  %5389 = call float @dx.op.binary.f32(i32 36, float %5302, float %5376)  ; FMin(a,b)
  %5390 = fmul fast float %5389, %5323
  %5391 = fsub fast float 1.000000e+00, %5390
  %5392 = bitcast float %5391 to i32
  %5393 = sub nsw i32 2129859010, %5392
  %5394 = bitcast i32 %5393 to float
  %5395 = fmul fast float %5322, %70
  %5396 = fmul fast float %5395, %5355
  %5397 = fmul fast float %5396, %5382
  %5398 = fmul fast float %5322, %71
  %5399 = fmul fast float %5398, %5356
  %5400 = fmul fast float %5399, %5388
  %5401 = fmul fast float %5322, %72
  %5402 = fmul fast float %5401, %5357
  %5403 = fmul fast float %5402, %5394
  %5404 = call float @dx.op.binary.f32(i32 36, float %5306, float %5376)  ; FMin(a,b)
  %5405 = fmul fast float %5404, %5323
  %5406 = fsub fast float 1.000000e+00, %5405
  %5407 = bitcast float %5406 to i32
  %5408 = sub nsw i32 2129859010, %5407
  %5409 = bitcast i32 %5408 to float
  %5410 = call float @dx.op.binary.f32(i32 36, float %5307, float %5376)  ; FMin(a,b)
  %5411 = fmul fast float %5410, %5323
  %5412 = fsub fast float 1.000000e+00, %5411
  %5413 = bitcast float %5412 to i32
  %5414 = sub nsw i32 2129859010, %5413
  %5415 = bitcast i32 %5414 to float
  %5416 = call float @dx.op.binary.f32(i32 36, float %5311, float %5376)  ; FMin(a,b)
  %5417 = fmul fast float %5416, %5323
  %5418 = fsub fast float 1.000000e+00, %5417
  %5419 = bitcast float %5418 to i32
  %5420 = sub nsw i32 2129859010, %5419
  %5421 = bitcast i32 %5420 to float
  %5422 = fmul fast float %5395, %5371
  %5423 = fmul fast float %5422, %5409
  %5424 = fmul fast float %5398, %5372
  %5425 = fmul fast float %5424, %5415
  %5426 = fmul fast float %5401, %5373
  %5427 = fmul fast float %5426, %5421
  %5428 = call float @dx.op.dot3.f32(i32 55, float %5397, float %5400, float %5403, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5429 = select i1 %250, float 0.000000e+00, float %5397
  %5430 = select i1 %250, float %5428, float %5400
  %5431 = select i1 %250, float 0.000000e+00, float %5403
  %5432 = call float @dx.op.dot3.f32(i32 55, float %5423, float %5425, float %5427, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5433 = select i1 %250, float 0.000000e+00, float %5423
  %5434 = select i1 %250, float %5432, float %5425
  %5435 = select i1 %250, float 0.000000e+00, float %5427
  %5436 = fmul fast float %3799, %3799
  %5437 = call float @dx.op.unary.f32(i32 7, float %5436)  ; Saturate(value)
  %5438 = fmul fast float %5313, 9.843750e-01
  %5439 = fmul fast float %5309, 9.843750e-01
  %5440 = fadd fast float %5438, 7.812500e-03
  %5441 = fadd fast float %5439, 7.812500e-03
  %5442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %5440, float %5441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5443 = extractvalue %dx.types.ResRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.ResRet.f32 %5442, 1
  %5445 = extractvalue %dx.types.ResRet.f32 %5442, 2
  %5446 = extractvalue %dx.types.ResRet.f32 %5442, 3
  %5447 = fsub fast float 1.000000e+00, %5437
  %5448 = fsub fast float %5445, %5443
  %5449 = fsub fast float %5446, %5444
  %5450 = fmul fast float %5448, %5447
  %5451 = fmul fast float %5449, %5447
  %5452 = fadd fast float %5450, %5443
  %5453 = fadd fast float %5451, %5444
  %5454 = fmul fast float %5452, %5306
  %5455 = fmul fast float %5452, %5307
  %5456 = fmul fast float %5452, %5311
  %5457 = fadd fast float %5454, %5453
  %5458 = fadd fast float %5455, %5453
  %5459 = fadd fast float %5456, %5453
  %5460 = fcmp fast ogt float %4394, 0.000000e+00
  br i1 %5460, label %5461, label %5487

; <label>:5461                                    ; preds = %5293
  %5462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %4394, float %5313, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5463 = extractvalue %dx.types.ResRet.f32 %5462, 0
  %5464 = extractvalue %dx.types.ResRet.f32 %5462, 1
  %5465 = extractvalue %dx.types.ResRet.f32 %5462, 2
  %5466 = fadd fast float %5463, -5.000000e-01
  %5467 = fadd fast float %5464, -5.000000e-01
  %5468 = fadd fast float %5465, -5.000000e-01
  %5469 = fsub fast float 1.000000e+00, %5306
  %5470 = fsub fast float 1.000000e+00, %5307
  %5471 = fsub fast float 1.000000e+00, %5311
  %5472 = fmul fast float %5306, 4.000000e+00
  %5473 = fmul fast float %5472, %5469
  %5474 = fmul fast float %5473, %5466
  %5475 = fmul fast float %5307, 4.000000e+00
  %5476 = fmul fast float %5475, %5470
  %5477 = fmul fast float %5476, %5467
  %5478 = fmul fast float %5311, 4.000000e+00
  %5479 = fmul fast float %5478, %5471
  %5480 = fmul fast float %5479, %5468
  %5481 = fadd fast float %5474, %5457
  %5482 = fadd fast float %5477, %5458
  %5483 = fadd fast float %5480, %5459
  %5484 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5485 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5486 = call float @dx.op.unary.f32(i32 7, float %5483)  ; Saturate(value)
  br label %5487

; <label>:5487                                    ; preds = %5461, %5293
  %5488 = phi float [ %5484, %5461 ], [ %5457, %5293 ]
  %5489 = phi float [ %5485, %5461 ], [ %5458, %5293 ]
  %5490 = phi float [ %5486, %5461 ], [ %5459, %5293 ]
  %5491 = call float @dx.op.binary.f32(i32 35, float %5489, float %5490)  ; FMax(a,b)
  %5492 = call float @dx.op.binary.f32(i32 35, float %5488, float %5491)  ; FMax(a,b)
  %5493 = fsub fast float 1.000000e+00, %5492
  %5494 = fmul fast float %5492, %5309
  %5495 = fadd fast float %5494, %5309
  %5496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5497 = extractvalue %dx.types.CBufRet.f32 %5496, 2
  %5498 = extractvalue %dx.types.CBufRet.f32 %5496, 3
  %5499 = fmul fast float %5495, %5497
  %5500 = fadd fast float %5499, %5498
  %5501 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5502 = fsub fast float 1.000000e+00, %5334
  %5503 = fadd fast float %5502, %5501
  %5504 = call float @dx.op.unary.f32(i32 7, float %5503)  ; Saturate(value)
  %5505 = fcmp fast olt float %5504, 1.000000e+00
  br i1 %5505, label %5506, label %5954

; <label>:5506                                    ; preds = %5487
  %5507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5508 = extractvalue %dx.types.CBufRet.f32 %5507, 2
  %5509 = extractvalue %dx.types.CBufRet.f32 %5507, 3
  %5510 = fmul fast float %5508, %102
  %5511 = fmul fast float %5509, %103
  %5512 = fptoui float %5510 to i32
  %5513 = fptoui float %5511 to i32
  %5514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5515 = extractvalue %dx.types.CBufRet.f32 %5514, 0
  %5516 = extractvalue %dx.types.CBufRet.f32 %5514, 2
  %5517 = extractvalue %dx.types.CBufRet.f32 %5514, 3
  %5518 = fadd fast float %89, -4.000000e+00
  %5519 = call float @dx.op.binary.f32(i32 35, float %5518, float 0.000000e+00)  ; FMax(a,b)
  %5520 = fadd fast float %5519, %5515
  %5521 = fmul fast float %5520, %5516
  %5522 = call float @dx.op.unary.f32(i32 23, float %5521)  ; Log(value)
  %5523 = fmul fast float %5522, %5517
  %5524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5525 = extractvalue %dx.types.CBufRet.f32 %5524, 2
  %5526 = fmul fast float %5523, %5525
  %5527 = call float @dx.op.unary.f32(i32 7, float %5526)  ; Saturate(value)
  %5528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5529 = extractvalue %dx.types.CBufRet.i32 %5528, 1
  %5530 = add i32 %5529, -1
  %5531 = uitofp i32 %5529 to float
  %5532 = fmul fast float %5531, %5527
  %5533 = fptoui float %5532 to i32
  %5534 = call i32 @dx.op.binary.i32(i32 40, i32 %5533, i32 %5530)  ; UMin(a,b)
  %5535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5536 = extractvalue %dx.types.CBufRet.i32 %5535, 2
  %5537 = extractvalue %dx.types.CBufRet.i32 %5535, 3
  %5538 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5513, i32 %5536, i32 %5512)  ; UMad(a,b,c)
  %5539 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5534, i32 %5537, i32 %5538)  ; UMad(a,b,c)
  %5540 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %5541 = fptoui float %5540 to i32
  %5542 = lshr i32 %5541, 5
  %5543 = call i32 @dx.op.binary.i32(i32 40, i32 %5542, i32 8191)  ; UMin(a,b)
  br i1 false, label %5544, label %5551

; <label>:5544                                    ; preds = %5506
  %5545 = fadd fast float 0.000000e+00, %5321
  %5546 = call float @dx.op.dot3.f32(i32 55, float %5319, float %5320, float %5545, float %5319, float %5320, float %5545)  ; Dot3(ax,ay,az,bx,by,bz)
  %5547 = call float @dx.op.unary.f32(i32 25, float %5546)  ; Rsqrt(value)
  %5548 = fmul fast float %5547, %5319
  %5549 = fmul fast float %5547, %5320
  %5550 = fmul fast float %5545, %5547
  br label %5551

; <label>:5551                                    ; preds = %5544, %5506
  %5552 = phi float [ %5548, %5544 ], [ %5319, %5506 ]
  %5553 = phi float [ %5549, %5544 ], [ %5320, %5506 ]
  %5554 = phi float [ %5550, %5544 ], [ %5321, %5506 ]
  %5555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5556 = extractvalue %dx.types.CBufRet.i32 %5555, 2
  %5557 = add nsw i32 %5556, -1
  %5558 = call i32 @dx.op.binary.i32(i32 37, i32 %5557, i32 0)  ; IMax(a,b)
  %5559 = shl i32 %5543, 2
  %5560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5559, i32 undef)  ; BufferLoad(srv,index,wot)
  %5561 = extractvalue %dx.types.ResRet.i32 %5560, 0
  %5562 = lshr i32 %5561, 16
  %5563 = and i32 %5561, 65535
  %5564 = lshr i32 %5561, 21
  %5565 = lshr i32 %5563, 5
  %5566 = call i32 @dx.op.binary.i32(i32 40, i32 %5565, i32 %5558)  ; UMin(a,b)
  %5567 = icmp ugt i32 %5564, %5566
  br i1 %5567, label %5930, label %5568

; <label>:5568                                    ; preds = %5551
  br label %5569

; <label>:5569                                    ; preds = %5922, %5568
  %5570 = phi float [ %5923, %5922 ], [ 0.000000e+00, %5568 ]
  %5571 = phi float [ %5924, %5922 ], [ 0.000000e+00, %5568 ]
  %5572 = phi float [ %5925, %5922 ], [ 0.000000e+00, %5568 ]
  %5573 = phi float [ %5926, %5922 ], [ 1.000000e+00, %5568 ]
  %5574 = phi i32 [ %5927, %5922 ], [ %5564, %5568 ]
  %5575 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5576 = extractvalue %dx.types.CBufRet.i32 %5575, 2
  %5577 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5539, i32 %5576, i32 %5574)  ; UMad(a,b,c)
  %5578 = shl i32 %5577, 2
  %5579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5578, i32 undef)  ; BufferLoad(srv,index,wot)
  %5580 = extractvalue %dx.types.ResRet.i32 %5579, 0
  %5581 = shl i32 %5574, 5
  %5582 = sub nsw i32 %5562, %5581
  %5583 = call i32 @dx.op.binary.i32(i32 37, i32 %5582, i32 0)  ; IMax(a,b)
  %5584 = call i32 @dx.op.binary.i32(i32 38, i32 %5583, i32 31)  ; IMin(a,b)
  %5585 = sub nsw i32 1, %5562
  %5586 = add nsw i32 %5585, %5563
  %5587 = call i32 @dx.op.binary.i32(i32 37, i32 %5586, i32 0)  ; IMax(a,b)
  %5588 = call i32 @dx.op.binary.i32(i32 38, i32 %5587, i32 32)  ; IMin(a,b)
  %5589 = and i32 %5588, 31
  %5590 = shl i32 -1, %5589
  %5591 = xor i32 %5590, -1
  %5592 = and i32 %5584, 31
  %5593 = shl i32 %5591, %5592
  %5594 = icmp eq i32 %5588, 32
  %5595 = select i1 %5594, i32 -1, i32 %5593
  %5596 = and i32 %5595, %5580
  %5597 = icmp eq i32 %5596, 0
  br i1 %5597, label %5922, label %5598

; <label>:5598                                    ; preds = %5569
  br label %5599

; <label>:5599                                    ; preds = %5705, %5598
  %5600 = phi float [ %5706, %5705 ], [ %5570, %5598 ]
  %5601 = phi float [ %5707, %5705 ], [ %5571, %5598 ]
  %5602 = phi float [ %5708, %5705 ], [ %5572, %5598 ]
  %5603 = phi float [ %5709, %5705 ], [ %5573, %5598 ]
  %5604 = phi i32 [ %5609, %5705 ], [ %5596, %5598 ]
  %5605 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5604)  ; FirstbitLo(value)
  %5606 = add i32 %5605, %5581
  %5607 = and i32 %5605, 31
  %5608 = shl i32 1, %5607
  %5609 = xor i32 %5608, %5604
  %5610 = mul i32 %5606, 72
  %5611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5610, i32 undef)  ; BufferLoad(srv,index,wot)
  %5612 = extractvalue %dx.types.ResRet.f32 %5611, 0
  %5613 = extractvalue %dx.types.ResRet.f32 %5611, 1
  %5614 = extractvalue %dx.types.ResRet.f32 %5611, 2
  %5615 = add i32 %5610, 12
  %5616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5615, i32 undef)  ; BufferLoad(srv,index,wot)
  %5617 = extractvalue %dx.types.ResRet.i32 %5616, 0
  %5618 = add i32 %5610, 16
  %5619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5618, i32 undef)  ; BufferLoad(srv,index,wot)
  %5620 = extractvalue %dx.types.ResRet.f32 %5619, 0
  %5621 = extractvalue %dx.types.ResRet.f32 %5619, 1
  %5622 = extractvalue %dx.types.ResRet.f32 %5619, 2
  %5623 = add i32 %5610, 28
  %5624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5623, i32 undef)  ; BufferLoad(srv,index,wot)
  %5625 = extractvalue %dx.types.ResRet.f32 %5624, 0
  %5626 = add i32 %5610, 32
  %5627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5626, i32 undef)  ; BufferLoad(srv,index,wot)
  %5628 = extractvalue %dx.types.ResRet.f32 %5627, 0
  %5629 = extractvalue %dx.types.ResRet.f32 %5627, 1
  %5630 = extractvalue %dx.types.ResRet.f32 %5627, 2
  %5631 = extractvalue %dx.types.ResRet.f32 %5627, 3
  %5632 = add i32 %5610, 48
  %5633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5632, i32 undef)  ; BufferLoad(srv,index,wot)
  %5634 = extractvalue %dx.types.ResRet.f32 %5633, 0
  %5635 = extractvalue %dx.types.ResRet.f32 %5633, 1
  %5636 = add i32 %5610, 56
  %5637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5636, i32 undef)  ; BufferLoad(srv,index,wot)
  %5638 = extractvalue %dx.types.ResRet.f32 %5637, 0
  %5639 = extractvalue %dx.types.ResRet.f32 %5637, 1
  %5640 = add i32 %5610, 64
  %5641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5640, i32 undef)  ; BufferLoad(srv,index,wot)
  %5642 = extractvalue %dx.types.ResRet.f32 %5641, 0
  %5643 = extractvalue %dx.types.ResRet.f32 %5641, 1
  %5644 = mul i32 %5606, 60
  %5645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5644, i32 undef)  ; BufferLoad(srv,index,wot)
  %5646 = extractvalue %dx.types.ResRet.f32 %5645, 0
  %5647 = extractvalue %dx.types.ResRet.f32 %5645, 1
  %5648 = extractvalue %dx.types.ResRet.f32 %5645, 2
  %5649 = add i32 %5644, 12
  %5650 = add i32 %5644, 48
  %5651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5650, i32 undef)  ; BufferLoad(srv,index,wot)
  %5652 = extractvalue %dx.types.ResRet.f32 %5651, 0
  %5653 = extractvalue %dx.types.ResRet.f32 %5651, 1
  %5654 = extractvalue %dx.types.ResRet.f32 %5651, 2
  %5655 = and i32 %5617, 32767
  %5656 = bitcast float %5612 to i32
  %5657 = icmp eq i32 %5656, -1
  %5658 = bitcast float %5613 to i32
  %5659 = and i32 %5617, 32768
  %5660 = icmp ne i32 %5659, 0
  %5661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5662 = extractvalue %dx.types.CBufRet.f32 %5661, 0
  %5663 = extractvalue %dx.types.CBufRet.f32 %5661, 1
  %5664 = extractvalue %dx.types.CBufRet.f32 %5661, 2
  %5665 = fsub fast float %5646, %5662
  %5666 = fsub fast float %5647, %5663
  %5667 = fsub fast float %5648, %5664
  %5668 = fsub fast float %189, %5665
  %5669 = fsub fast float %190, %5666
  %5670 = fsub fast float %191, %5667
  %5671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5649, i32 undef)  ; BufferLoad(srv,index,wot)
  %5672 = extractvalue %dx.types.ResRet.f32 %5671, 0
  %5673 = extractvalue %dx.types.ResRet.f32 %5671, 1
  %5674 = extractvalue %dx.types.ResRet.f32 %5671, 2
  %5675 = call float @dx.op.dot3.f32(i32 55, float %5668, float %5669, float %5670, float %5672, float %5673, float %5674)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = add i32 %5644, 24
  %5677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5676, i32 undef)  ; BufferLoad(srv,index,wot)
  %5678 = extractvalue %dx.types.ResRet.f32 %5677, 0
  %5679 = extractvalue %dx.types.ResRet.f32 %5677, 1
  %5680 = extractvalue %dx.types.ResRet.f32 %5677, 2
  %5681 = call float @dx.op.dot3.f32(i32 55, float %5668, float %5669, float %5670, float %5678, float %5679, float %5680)  ; Dot3(ax,ay,az,bx,by,bz)
  %5682 = add i32 %5644, 36
  %5683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5682, i32 undef)  ; BufferLoad(srv,index,wot)
  %5684 = extractvalue %dx.types.ResRet.f32 %5683, 0
  %5685 = extractvalue %dx.types.ResRet.f32 %5683, 1
  %5686 = extractvalue %dx.types.ResRet.f32 %5683, 2
  %5687 = call float @dx.op.dot3.f32(i32 55, float %5668, float %5669, float %5670, float %5684, float %5685, float %5686)  ; Dot3(ax,ay,az,bx,by,bz)
  %5688 = call float @dx.op.unary.f32(i32 6, float %5675)  ; FAbs(value)
  %5689 = call float @dx.op.unary.f32(i32 6, float %5681)  ; FAbs(value)
  %5690 = call float @dx.op.unary.f32(i32 6, float %5687)  ; FAbs(value)
  %5691 = fsub fast float %5652, %5688
  %5692 = fsub fast float %5653, %5689
  %5693 = fsub fast float %5654, %5690
  %5694 = fmul fast float %5691, %5620
  %5695 = fmul fast float %5692, %5621
  %5696 = fmul fast float %5693, %5622
  %5697 = call float @dx.op.binary.f32(i32 36, float %5695, float %5696)  ; FMin(a,b)
  %5698 = call float @dx.op.binary.f32(i32 36, float %5694, float %5697)  ; FMin(a,b)
  %5699 = call float @dx.op.unary.f32(i32 7, float %5698)  ; Saturate(value)
  %5700 = call float @dx.op.binary.f32(i32 36, float %5603, float %5699)  ; FMin(a,b)
  %5701 = uitofp i1 %5660 to float
  %5702 = fsub fast float 1.000000e+00, %5701
  %5703 = fmul fast float %5700, %5702
  %5704 = fcmp fast ogt float %5703, 0.000000e+00
  br i1 %5704, label %5711, label %5705

; <label>:5705                                    ; preds = %5853, %5599
  %5706 = phi float [ %5917, %5853 ], [ %5600, %5599 ]
  %5707 = phi float [ %5918, %5853 ], [ %5601, %5599 ]
  %5708 = phi float [ %5919, %5853 ], [ %5602, %5599 ]
  %5709 = phi float [ %5920, %5853 ], [ %5603, %5599 ]
  %5710 = icmp eq i32 %5604, %5608
  br i1 %5710, label %5921, label %5599

; <label>:5711                                    ; preds = %5599
  br i1 %5657, label %5769, label %5712

; <label>:5712                                    ; preds = %5711
  %5713 = fsub fast float -0.000000e+00, %5672
  %5714 = fsub fast float -0.000000e+00, %5673
  %5715 = fsub fast float -0.000000e+00, %5674
  %5716 = call float @dx.op.dot3.f32(i32 55, float %5552, float %5553, float %5554, float %5713, float %5714, float %5715)  ; Dot3(ax,ay,az,bx,by,bz)
  %5717 = fsub fast float -0.000000e+00, %5716
  %5718 = call float @dx.op.dot3.f32(i32 55, float %5668, float %5669, float %5670, float %5713, float %5714, float %5715)  ; Dot3(ax,ay,az,bx,by,bz)
  %5719 = fadd fast float %5718, %5635
  %5720 = fadd fast float %5634, %5718
  %5721 = fsub fast float -0.000000e+00, %5720
  %5722 = fcmp ogt float %5716, -0.000000e+00
  %5723 = select i1 %5722, float %5721, float %5719
  %5724 = call float @dx.op.unary.f32(i32 6, float %5717)  ; FAbs(value)
  %5725 = fdiv fast float 1.000000e+00, %5724
  %5726 = fmul fast float %5723, %5725
  %5727 = call float @dx.op.binary.f32(i32 35, float %5726, float 0.000000e+00)  ; FMax(a,b)
  %5728 = fsub fast float -0.000000e+00, %5678
  %5729 = fsub fast float -0.000000e+00, %5679
  %5730 = fsub fast float -0.000000e+00, %5680
  %5731 = call float @dx.op.dot3.f32(i32 55, float %5552, float %5553, float %5554, float %5728, float %5729, float %5730)  ; Dot3(ax,ay,az,bx,by,bz)
  %5732 = fsub fast float -0.000000e+00, %5731
  %5733 = call float @dx.op.dot3.f32(i32 55, float %5668, float %5669, float %5670, float %5728, float %5729, float %5730)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = fadd fast float %5733, %5639
  %5735 = fadd fast float %5638, %5733
  %5736 = fsub fast float -0.000000e+00, %5735
  %5737 = fcmp ogt float %5731, -0.000000e+00
  %5738 = select i1 %5737, float %5736, float %5734
  %5739 = call float @dx.op.unary.f32(i32 6, float %5732)  ; FAbs(value)
  %5740 = fdiv fast float 1.000000e+00, %5739
  %5741 = fmul fast float %5738, %5740
  %5742 = call float @dx.op.binary.f32(i32 35, float %5741, float 0.000000e+00)  ; FMax(a,b)
  %5743 = fsub fast float -0.000000e+00, %5684
  %5744 = fsub fast float -0.000000e+00, %5685
  %5745 = fsub fast float -0.000000e+00, %5686
  %5746 = call float @dx.op.dot3.f32(i32 55, float %5552, float %5553, float %5554, float %5743, float %5744, float %5745)  ; Dot3(ax,ay,az,bx,by,bz)
  %5747 = fsub fast float -0.000000e+00, %5746
  %5748 = call float @dx.op.dot3.f32(i32 55, float %5668, float %5669, float %5670, float %5743, float %5744, float %5745)  ; Dot3(ax,ay,az,bx,by,bz)
  %5749 = fadd fast float %5748, %5643
  %5750 = fadd fast float %5642, %5748
  %5751 = fsub fast float -0.000000e+00, %5750
  %5752 = fcmp ogt float %5746, -0.000000e+00
  %5753 = select i1 %5752, float %5751, float %5749
  %5754 = call float @dx.op.unary.f32(i32 6, float %5747)  ; FAbs(value)
  %5755 = fdiv fast float 1.000000e+00, %5754
  %5756 = fmul fast float %5753, %5755
  %5757 = call float @dx.op.binary.f32(i32 35, float %5756, float 0.000000e+00)  ; FMax(a,b)
  %5758 = call float @dx.op.binary.f32(i32 36, float %5742, float %5757)  ; FMin(a,b)
  %5759 = call float @dx.op.binary.f32(i32 36, float %5727, float %5758)  ; FMin(a,b)
  %5760 = fmul fast float %5759, %5552
  %5761 = fmul fast float %5759, %5553
  %5762 = fmul fast float %5759, %5554
  %5763 = fadd fast float %5760, %189
  %5764 = fadd fast float %5761, %190
  %5765 = fadd fast float %5762, %191
  %5766 = fsub fast float %5763, %5612
  %5767 = fsub fast float %5764, %5613
  %5768 = fsub fast float %5765, %5614
  br label %5776

; <label>:5769                                    ; preds = %5711
  %5770 = fmul fast float %5552, 8.096000e+03
  %5771 = fmul fast float %5553, 8.096000e+03
  %5772 = fmul fast float %5554, 8.096000e+03
  %5773 = fadd fast float %5770, %189
  %5774 = fadd fast float %5771, %190
  %5775 = fadd fast float %5772, %191
  br label %5776

; <label>:5776                                    ; preds = %5769, %5712
  %5777 = phi float [ %5552, %5769 ], [ %5766, %5712 ]
  %5778 = phi float [ %5553, %5769 ], [ %5767, %5712 ]
  %5779 = phi float [ %5554, %5769 ], [ %5768, %5712 ]
  %5780 = phi float [ %5773, %5769 ], [ %5763, %5712 ]
  %5781 = phi float [ %5774, %5769 ], [ %5764, %5712 ]
  %5782 = phi float [ %5775, %5769 ], [ %5765, %5712 ]
  %5783 = fcmp fast olt float %5631, 1.000000e+00
  br i1 %5783, label %5784, label %5815, !dx.controlflow.hints !87

; <label>:5784                                    ; preds = %5776
  %5785 = fmul fast float %5779, %5629
  %5786 = fmul fast float %5778, %5630
  %5787 = fsub fast float %5785, %5786
  %5788 = fmul fast float %5777, %5630
  %5789 = fmul fast float %5779, %5628
  %5790 = fsub fast float %5788, %5789
  %5791 = fmul fast float %5778, %5628
  %5792 = fmul fast float %5777, %5629
  %5793 = fsub fast float %5791, %5792
  %5794 = fmul fast float %5787, 2.000000e+00
  %5795 = fmul fast float %5790, 2.000000e+00
  %5796 = fmul fast float %5793, 2.000000e+00
  %5797 = fmul fast float %5794, %5631
  %5798 = fmul fast float %5795, %5631
  %5799 = fmul fast float %5796, %5631
  %5800 = fmul fast float %5796, %5629
  %5801 = fmul fast float %5795, %5630
  %5802 = fmul fast float %5794, %5630
  %5803 = fmul fast float %5796, %5628
  %5804 = fmul fast float %5795, %5628
  %5805 = fmul fast float %5794, %5629
  %5806 = fadd fast float %5800, %5777
  %5807 = fadd fast float %5806, %5797
  %5808 = fsub fast float %5807, %5801
  %5809 = fsub fast float %5778, %5803
  %5810 = fadd fast float %5809, %5798
  %5811 = fadd fast float %5810, %5802
  %5812 = fadd fast float %5799, %5779
  %5813 = fsub fast float %5812, %5805
  %5814 = fadd fast float %5813, %5804
  br label %5815

; <label>:5815                                    ; preds = %5784, %5776
  %5816 = phi float [ %5808, %5784 ], [ %5777, %5776 ]
  %5817 = phi float [ %5811, %5784 ], [ %5778, %5776 ]
  %5818 = phi float [ %5814, %5784 ], [ %5779, %5776 ]
  br i1 %5657, label %5850, label %5819

; <label>:5819                                    ; preds = %5815
  %5820 = fmul fast float %5309, 0x400187C840000000
  %5821 = fadd fast float %5820, 0xC00EFC2120000000
  %5822 = fmul fast float %5821, %5309
  %5823 = fadd fast float %5822, 0x3FE5D16340000000
  %5824 = fmul fast float %5823, %5309
  %5825 = fadd fast float %5824, 1.000000e+00
  %5826 = call float @dx.op.unary.f32(i32 7, float %5825)  ; Saturate(value)
  %5827 = fsub fast float %5780, %189
  %5828 = fsub fast float %5781, %190
  %5829 = fsub fast float %5782, %191
  %5830 = fsub fast float %5780, %5612
  %5831 = fsub fast float %5781, %5613
  %5832 = fsub fast float %5782, %5614
  %5833 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %5829, float %5827, float %5828, float %5829)  ; Dot3(ax,ay,az,bx,by,bz)
  %5834 = call float @dx.op.dot3.f32(i32 55, float %5830, float %5831, float %5832, float %5830, float %5831, float %5832)  ; Dot3(ax,ay,az,bx,by,bz)
  %5835 = fadd fast float %5834, 0x3EE4F8B580000000
  %5836 = fdiv fast float %5833, %5835
  %5837 = bitcast float %5836 to i32
  %5838 = ashr i32 %5837, 1
  %5839 = add nsw i32 %5838, 532487669
  %5840 = bitcast i32 %5839 to float
  %5841 = fmul fast float %5840, %5826
  %5842 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  %5843 = fmul fast float %5842, 0x4009981AE0000000
  %5844 = fsub fast float 0x40111BBD80000000, %5843
  %5845 = fmul fast float %5844, %5842
  %5846 = fadd fast float %5845, 0xC0009F6020000000
  %5847 = fmul fast float %5846, %5842
  %5848 = fadd fast float %5847, 1.000000e+00
  %5849 = call float @dx.op.unary.f32(i32 7, float %5848)  ; Saturate(value)
  br label %5853

; <label>:5850                                    ; preds = %5815
  %5851 = icmp ne i32 %5658, -1
  %5852 = zext i1 %5851 to i32
  br label %5853

; <label>:5853                                    ; preds = %5850, %5819
  %5854 = phi float [ %5309, %5850 ], [ %5849, %5819 ]
  %5855 = phi i32 [ %5852, %5850 ], [ 0, %5819 ]
  %5856 = fmul float %5854, 5.000000e+00
  %5857 = fsub float 5.000000e+00, %5856
  %5858 = icmp ne i32 %5855, 0
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 3
  %5861 = fadd fast float %5860, %5857
  %5862 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5861)  ; FMax(a,b)
  %5863 = call float @dx.op.unary.f32(i32 6, float %5816)  ; FAbs(value)
  %5864 = call float @dx.op.unary.f32(i32 6, float %5817)  ; FAbs(value)
  %5865 = fadd fast float %5864, %5863
  %5866 = call float @dx.op.unary.f32(i32 6, float %5818)  ; FAbs(value)
  %5867 = fadd fast float %5865, %5866
  %5868 = fcmp fast oeq float %5867, 0.000000e+00
  %5869 = fdiv fast float 1.000000e+00, %5867
  %5870 = select i1 %5868, float 1.000000e+00, float %5869
  %5871 = fmul fast float %5870, %5816
  %5872 = fmul fast float %5870, %5817
  %5873 = call float @dx.op.unary.f32(i32 6, float %5872)  ; FAbs(value)
  %5874 = call float @dx.op.unary.f32(i32 6, float %5871)  ; FAbs(value)
  %5875 = fsub fast float 1.000000e+00, %5873
  %5876 = fsub fast float 1.000000e+00, %5874
  %5877 = fcmp fast oge float %5871, 0.000000e+00
  %5878 = fcmp fast oge float %5872, 0.000000e+00
  %5879 = select i1 %5877, float 1.000000e+00, float -1.000000e+00
  %5880 = select i1 %5878, float 1.000000e+00, float -1.000000e+00
  %5881 = fcmp fast ole float %5818, 0.000000e+00
  %5882 = fmul fast float %5879, %5875
  %5883 = fmul fast float %5880, %5876
  %5884 = select i1 %5881, float %5882, float %5871
  %5885 = select i1 %5881, float %5883, float %5872
  %5886 = fmul fast float %5884, 5.000000e-01
  %5887 = fmul fast float %5885, 5.000000e-01
  %5888 = fadd fast float %5886, 5.000000e-01
  %5889 = fadd fast float %5887, 5.000000e-01
  %5890 = uitofp i32 %5655 to float
  %5891 = call float @dx.op.binary.f32(i32 36, float %5862, float 3.000000e+00)  ; FMin(a,b)
  %5892 = fadd fast float %5891, 2.000000e+00
  %5893 = call float @dx.op.unary.f32(i32 21, float %5892)  ; Exp(value)
  %5894 = extractvalue %dx.types.CBufRet.f32 %5859, 1
  %5895 = fmul fast float %5894, %5893
  %5896 = fmul fast float %5895, 2.000000e+00
  %5897 = fsub fast float 1.000000e+00, %5896
  %5898 = fmul fast float %5888, %5897
  %5899 = fmul fast float %5889, %5897
  %5900 = fadd fast float %5898, %5895
  %5901 = fadd fast float %5899, %5895
  %5902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %5900, float %5901, float %5890, float undef, i32 0, i32 0, i32 undef, float %5862)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5903 = extractvalue %dx.types.ResRet.f32 %5902, 0
  %5904 = extractvalue %dx.types.ResRet.f32 %5902, 1
  %5905 = extractvalue %dx.types.ResRet.f32 %5902, 2
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 3
  %5908 = fmul fast float %5907, %5625
  %5909 = call float @dx.op.binary.f32(i32 36, float %5374, float %5908)  ; FMin(a,b)
  %5910 = select i1 %5858, float %5909, float %5908
  %5911 = fmul fast float %5903, %5703
  %5912 = fmul fast float %5911, %5910
  %5913 = fmul fast float %5904, %5703
  %5914 = fmul fast float %5913, %5910
  %5915 = fmul fast float %5905, %5703
  %5916 = fmul fast float %5915, %5910
  %5917 = fadd fast float %5912, %5600
  %5918 = fadd fast float %5914, %5601
  %5919 = fadd fast float %5916, %5602
  %5920 = fsub fast float %5603, %5703
  br label %5705

; <label>:5921                                    ; preds = %5705
  br label %5922

; <label>:5922                                    ; preds = %5921, %5569
  %5923 = phi float [ %5570, %5569 ], [ %5706, %5921 ]
  %5924 = phi float [ %5571, %5569 ], [ %5707, %5921 ]
  %5925 = phi float [ %5572, %5569 ], [ %5708, %5921 ]
  %5926 = phi float [ %5573, %5569 ], [ %5709, %5921 ]
  %5927 = add i32 %5574, 1
  %5928 = icmp ugt i32 %5927, %5566
  br i1 %5928, label %5929, label %5569, !llvm.loop !88

; <label>:5929                                    ; preds = %5922
  br label %5930

; <label>:5930                                    ; preds = %5929, %5551
  %5931 = phi float [ 0.000000e+00, %5551 ], [ %5923, %5929 ]
  %5932 = phi float [ 0.000000e+00, %5551 ], [ %5924, %5929 ]
  %5933 = phi float [ 0.000000e+00, %5551 ], [ %5925, %5929 ]
  %5934 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5932, float %5933, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5935 = select i1 %250, float 0.000000e+00, float %5931
  %5936 = select i1 %250, float %5934, float %5932
  %5937 = select i1 %250, float 0.000000e+00, float %5933
  %5938 = fcmp fast olt float %5504, 0.000000e+00
  %5939 = call float @dx.op.unary.f32(i32 6, float %5504)  ; FAbs(value)
  %5940 = fmul fast float %5939, %5433
  %5941 = fmul fast float %5939, %5434
  %5942 = fmul fast float %5939, %5435
  %5943 = select i1 %5938, float %5433, float %5940
  %5944 = select i1 %5938, float %5434, float %5941
  %5945 = select i1 %5938, float %5435, float %5942
  %5946 = fsub fast float 1.000000e+00, %5939
  %5947 = call float @dx.op.unary.f32(i32 7, float %5946)  ; Saturate(value)
  %5948 = fmul fast float %5947, %5935
  %5949 = fmul fast float %5947, %5936
  %5950 = fmul fast float %5947, %5937
  %5951 = fadd fast float %5943, %5948
  %5952 = fadd fast float %5944, %5949
  %5953 = fadd fast float %5945, %5950
  br label %5954

; <label>:5954                                    ; preds = %5930, %5487
  %5955 = phi float [ %5433, %5487 ], [ %5951, %5930 ]
  %5956 = phi float [ %5434, %5487 ], [ %5952, %5930 ]
  %5957 = phi float [ %5435, %5487 ], [ %5953, %5930 ]
  %5958 = fmul fast float %5493, %5429
  %5959 = fmul fast float %5493, %5430
  %5960 = fmul fast float %5493, %5431
  %5961 = call float @dx.op.dot3.f32(i32 55, float %5300, float %5301, float %5302, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5962 = fcmp fast ogt float %5961, 0x3E7FF19E20000000
  %5963 = fdiv fast float 1.000000e+00, %5961
  %5964 = select i1 %5962, float %5963, float 0.000000e+00
  %5965 = fmul fast float %5964, %5300
  %5966 = fmul fast float %5964, %5301
  %5967 = fmul fast float %5964, %5302
  %5968 = fadd fast float %5965, -1.000000e+00
  %5969 = fadd fast float %5966, -1.000000e+00
  %5970 = fadd fast float %5967, -1.000000e+00
  %5971 = fmul fast float %5968, 5.000000e-01
  %5972 = fmul fast float %5969, 5.000000e-01
  %5973 = fmul fast float %5970, 5.000000e-01
  %5974 = fadd fast float %5971, 1.000000e+00
  %5975 = fadd fast float %5972, 1.000000e+00
  %5976 = fadd fast float %5973, 1.000000e+00
  %5977 = call float @dx.op.binary.f32(i32 35, float %5313, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5978 = fdiv fast float %3799, %5977
  %5979 = fcmp fast olt float %4421, 1.270000e+02
  %5980 = fcmp fast olt float %4422, 1.270000e+02
  %5981 = fcmp fast olt float %4423, 1.270000e+02
  %5982 = fmul fast float %4421, 0xBFF7154760000000
  %5983 = fmul fast float %5982, %5978
  %5984 = fmul fast float %4422, 0xBFF7154760000000
  %5985 = fmul fast float %5984, %5978
  %5986 = fmul fast float %4423, 0xBFF7154760000000
  %5987 = fmul fast float %5986, %5978
  %5988 = call float @dx.op.unary.f32(i32 21, float %5983)  ; Exp(value)
  %5989 = call float @dx.op.unary.f32(i32 21, float %5985)  ; Exp(value)
  %5990 = call float @dx.op.unary.f32(i32 21, float %5987)  ; Exp(value)
  %5991 = call float @dx.op.unary.f32(i32 7, float %5988)  ; Saturate(value)
  %5992 = call float @dx.op.unary.f32(i32 7, float %5989)  ; Saturate(value)
  %5993 = call float @dx.op.unary.f32(i32 7, float %5990)  ; Saturate(value)
  %5994 = select i1 %5979, float %5991, float 0.000000e+00
  %5995 = select i1 %5980, float %5992, float 0.000000e+00
  %5996 = select i1 %5981, float %5993, float 0.000000e+00
  %5997 = fmul fast float %5994, %5493
  %5998 = fmul fast float %5995, %5493
  %5999 = fmul fast float %5996, %5493
  %6000 = fadd fast float %5997, -1.000000e+00
  %6001 = fadd fast float %5998, -1.000000e+00
  %6002 = fadd fast float %5999, -1.000000e+00
  %6003 = fmul fast float %5955, %5488
  %6004 = fmul fast float %5956, %5489
  %6005 = fmul fast float %5957, %5490
  %6006 = fsub fast float 1.000000e+00, %5313
  %6007 = bitcast float %6006 to i32
  %6008 = sitofp i32 %6007 to float
  %6009 = fmul fast float %6008, 5.000000e+00
  %6010 = fadd fast float %6009, 0xC1EFBF8940000000
  %6011 = fptosi float %6010 to i32
  %6012 = bitcast i32 %6011 to float
  %6013 = fmul fast float %6012, %4395
  %6014 = fmul fast float %5429, %6013
  %6015 = fmul fast float %6014, %5493
  %6016 = fmul fast float %6015, %5974
  %6017 = fmul fast float %5430, %6013
  %6018 = fmul fast float %6017, %5493
  %6019 = fmul fast float %6018, %5975
  %6020 = fmul fast float %5431, %6013
  %6021 = fmul fast float %6020, %5493
  %6022 = fmul fast float %6021, %5976
  %6023 = fmul fast float %5958, %4391
  %6024 = fmul fast float %5959, %4391
  %6025 = fmul fast float %5960, %4391
  %6026 = fadd fast float %6003, %4384
  %6027 = fadd fast float %6026, %6016
  %6028 = fmul fast float %6027, %4391
  %6029 = fadd fast float %6004, %4385
  %6030 = fadd fast float %6029, %6019
  %6031 = fmul fast float %6030, %4391
  %6032 = fadd fast float %6005, %4386
  %6033 = fadd fast float %6032, %6022
  %6034 = fmul fast float %6033, %4391
  %6035 = bitcast i32 %5337 to float
  %6036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6037 = extractvalue %dx.types.CBufRet.f32 %6036, 3
  %6038 = fcmp fast oeq float %6037, 0.000000e+00
  br i1 %6038, label %7679, label %6039

; <label>:6039                                    ; preds = %5954
  %6040 = extractvalue %dx.types.CBufRet.f32 %6036, 0
  %6041 = extractvalue %dx.types.CBufRet.f32 %6036, 1
  %6042 = extractvalue %dx.types.CBufRet.f32 %6036, 2
  %6043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6044 = extractvalue %dx.types.CBufRet.f32 %6043, 0
  %6045 = extractvalue %dx.types.CBufRet.f32 %6043, 1
  %6046 = extractvalue %dx.types.CBufRet.f32 %6043, 2
  %6047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6048 = extractvalue %dx.types.CBufRet.f32 %6047, 0
  %6049 = extractvalue %dx.types.CBufRet.f32 %6047, 1
  %6050 = call float @dx.op.dot3.f32(i32 55, float %6044, float %6045, float %6046, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6051 = select i1 %250, float %6048, float %6044
  %6052 = select i1 %250, float %6050, float %6045
  %6053 = select i1 %250, float %6049, float %6046
  %6054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6055 = extractvalue %dx.types.CBufRet.f32 %6054, 2
  %6056 = fmul fast float %6055, %109
  %6057 = fmul fast float %6055, %110
  %6058 = fmul fast float %6055, %111
  %6059 = fadd fast float %6056, %189
  %6060 = fadd fast float %6057, %190
  %6061 = fadd fast float %6058, %191
  %6062 = fcmp fast olt float %6037, 0.000000e+00
  br i1 %6062, label %7320, label %6063

; <label>:6063                                    ; preds = %6039
  %6064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.f32 %6064, 0
  %6066 = extractvalue %dx.types.CBufRet.f32 %6064, 1
  %6067 = extractvalue %dx.types.CBufRet.f32 %6064, 2
  %6068 = extractvalue %dx.types.CBufRet.f32 %6064, 3
  %6069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6070 = extractvalue %dx.types.CBufRet.f32 %6069, 0
  %6071 = extractvalue %dx.types.CBufRet.f32 %6069, 1
  %6072 = extractvalue %dx.types.CBufRet.f32 %6069, 2
  %6073 = extractvalue %dx.types.CBufRet.f32 %6069, 3
  %6074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6075 = extractvalue %dx.types.CBufRet.f32 %6074, 0
  %6076 = extractvalue %dx.types.CBufRet.f32 %6074, 1
  %6077 = extractvalue %dx.types.CBufRet.f32 %6074, 2
  %6078 = extractvalue %dx.types.CBufRet.f32 %6074, 3
  %6079 = fmul fast float %6065, %6059
  %6080 = call float @dx.op.tertiary.f32(i32 46, float %6060, float %6066, float %6079)  ; FMad(a,b,c)
  %6081 = call float @dx.op.tertiary.f32(i32 46, float %6061, float %6067, float %6080)  ; FMad(a,b,c)
  %6082 = fadd fast float %6081, %6068
  %6083 = fmul fast float %6070, %6059
  %6084 = call float @dx.op.tertiary.f32(i32 46, float %6060, float %6071, float %6083)  ; FMad(a,b,c)
  %6085 = call float @dx.op.tertiary.f32(i32 46, float %6061, float %6072, float %6084)  ; FMad(a,b,c)
  %6086 = fadd fast float %6085, %6073
  %6087 = fmul fast float %6075, %6059
  %6088 = call float @dx.op.tertiary.f32(i32 46, float %6060, float %6076, float %6087)  ; FMad(a,b,c)
  %6089 = call float @dx.op.tertiary.f32(i32 46, float %6061, float %6077, float %6088)  ; FMad(a,b,c)
  %6090 = fadd fast float %6089, %6078
  %6091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6092 = extractvalue %dx.types.CBufRet.f32 %6091, 0
  %6093 = fcmp fast une float %6092, 0.000000e+00
  %6094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.f32 %6094, 0
  %6096 = extractvalue %dx.types.CBufRet.f32 %6094, 1
  %6097 = extractvalue %dx.types.CBufRet.f32 %6094, 3
  %6098 = fmul fast float %6097, %6082
  %6099 = fmul fast float %6097, %6086
  %6100 = fadd fast float %6098, %6095
  %6101 = fadd fast float %6099, %6096
  %6102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6103 = extractvalue %dx.types.CBufRet.f32 %6102, 0
  %6104 = extractvalue %dx.types.CBufRet.f32 %6102, 1
  %6105 = extractvalue %dx.types.CBufRet.f32 %6102, 3
  %6106 = fmul fast float %6105, %6082
  %6107 = fmul fast float %6105, %6086
  %6108 = fadd fast float %6106, %6103
  %6109 = fadd fast float %6107, %6104
  %6110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6111 = extractvalue %dx.types.CBufRet.f32 %6110, 1
  %6112 = fsub fast float %6111, %6090
  %6113 = extractvalue %dx.types.CBufRet.f32 %6110, 2
  %6114 = fmul fast float %6112, %6113
  %6115 = fsub fast float 1.000000e+00, %6114
  %6116 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  br i1 %6093, label %6177, label %6117

; <label>:6117                                    ; preds = %6063
  %6118 = extractvalue %dx.types.CBufRet.f32 %6102, 2
  %6119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6120 = extractvalue %dx.types.CBufRet.f32 %6119, 2
  %6121 = fadd fast float %6120, %6118
  %6122 = fcmp fast ogt float %6121, 0.000000e+00
  br i1 %6122, label %6123, label %6147

; <label>:6123                                    ; preds = %6117
  %6124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6125 = extractvalue %dx.types.CBufRet.f32 %6124, 0
  %6126 = extractvalue %dx.types.CBufRet.f32 %6124, 1
  %6127 = fsub fast float %6108, %6125
  %6128 = fsub fast float %6109, %6126
  %6129 = fcmp fast olt float %6127, 0.000000e+00
  %6130 = fcmp fast olt float %6128, 0.000000e+00
  %6131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6132 = extractvalue %dx.types.CBufRet.f32 %6131, 0
  %6133 = extractvalue %dx.types.CBufRet.f32 %6131, 1
  %6134 = extractvalue %dx.types.CBufRet.f32 %6131, 2
  %6135 = extractvalue %dx.types.CBufRet.f32 %6131, 3
  %6136 = select i1 %6129, float %6132, float %6134
  %6137 = select i1 %6130, float %6133, float %6135
  %6138 = fmul fast float %6136, %6127
  %6139 = fmul fast float %6137, %6128
  %6140 = call float @dx.op.unary.f32(i32 6, float %6138)  ; FAbs(value)
  %6141 = call float @dx.op.unary.f32(i32 6, float %6139)  ; FAbs(value)
  %6142 = extractvalue %dx.types.CBufRet.f32 %6054, 0
  %6143 = call float @dx.op.binary.f32(i32 35, float %6140, float %6141)  ; FMax(a,b)
  %6144 = fsub fast float %6142, %6143
  %6145 = call float @dx.op.unary.f32(i32 7, float %6144)  ; Saturate(value)
  %6146 = fmul fast float %6145, %6116
  br label %6147

; <label>:6147                                    ; preds = %6123, %6117
  %6148 = phi float [ %6146, %6123 ], [ 0.000000e+00, %6117 ]
  %6149 = extractvalue %dx.types.CBufRet.f32 %6094, 2
  %6150 = extractvalue %dx.types.CBufRet.f32 %6119, 1
  %6151 = fadd fast float %6150, %6149
  %6152 = fcmp fast ogt float %6151, 0.000000e+00
  br i1 %6152, label %6153, label %6177

; <label>:6153                                    ; preds = %6147
  %6154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6155 = extractvalue %dx.types.CBufRet.f32 %6154, 0
  %6156 = extractvalue %dx.types.CBufRet.f32 %6154, 1
  %6157 = fsub fast float %6100, %6155
  %6158 = fsub fast float %6101, %6156
  %6159 = fcmp fast olt float %6157, 0.000000e+00
  %6160 = fcmp fast olt float %6158, 0.000000e+00
  %6161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6162 = extractvalue %dx.types.CBufRet.f32 %6161, 0
  %6163 = extractvalue %dx.types.CBufRet.f32 %6161, 1
  %6164 = extractvalue %dx.types.CBufRet.f32 %6161, 2
  %6165 = extractvalue %dx.types.CBufRet.f32 %6161, 3
  %6166 = select i1 %6159, float %6162, float %6164
  %6167 = select i1 %6160, float %6163, float %6165
  %6168 = fmul fast float %6166, %6157
  %6169 = fmul fast float %6167, %6158
  %6170 = call float @dx.op.unary.f32(i32 6, float %6168)  ; FAbs(value)
  %6171 = call float @dx.op.unary.f32(i32 6, float %6169)  ; FAbs(value)
  %6172 = extractvalue %dx.types.CBufRet.f32 %6054, 0
  %6173 = call float @dx.op.binary.f32(i32 35, float %6170, float %6171)  ; FMax(a,b)
  %6174 = fsub fast float %6172, %6173
  %6175 = call float @dx.op.unary.f32(i32 7, float %6174)  ; Saturate(value)
  %6176 = fmul fast float %6175, %6116
  br label %6177

; <label>:6177                                    ; preds = %6153, %6147, %6063
  %6178 = phi float [ 0.000000e+00, %6063 ], [ %6176, %6153 ], [ 0.000000e+00, %6147 ]
  %6179 = phi float [ 0.000000e+00, %6063 ], [ %6148, %6153 ], [ %6148, %6147 ]
  %6180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6181 = extractvalue %dx.types.CBufRet.f32 %6180, 1
  %6182 = call float @dx.op.unary.f32(i32 7, float %6181)  ; Saturate(value)
  %6183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6184 = extractvalue %dx.types.CBufRet.f32 %6183, 0
  %6185 = extractvalue %dx.types.CBufRet.f32 %6183, 1
  %6186 = fsub fast float %6082, %6184
  %6187 = fsub fast float %6086, %6185
  %6188 = fcmp fast olt float %6186, 0.000000e+00
  %6189 = fcmp fast olt float %6187, 0.000000e+00
  %6190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6191 = extractvalue %dx.types.CBufRet.f32 %6190, 0
  %6192 = extractvalue %dx.types.CBufRet.f32 %6190, 1
  %6193 = extractvalue %dx.types.CBufRet.f32 %6190, 2
  %6194 = extractvalue %dx.types.CBufRet.f32 %6190, 3
  %6195 = select i1 %6188, float %6191, float %6193
  %6196 = select i1 %6189, float %6192, float %6194
  %6197 = fmul fast float %6195, %6186
  %6198 = fmul fast float %6196, %6187
  %6199 = call float @dx.op.unary.f32(i32 6, float %6197)  ; FAbs(value)
  %6200 = call float @dx.op.unary.f32(i32 6, float %6198)  ; FAbs(value)
  %6201 = extractvalue %dx.types.CBufRet.f32 %6054, 0
  %6202 = call float @dx.op.binary.f32(i32 35, float %6199, float %6200)  ; FMax(a,b)
  %6203 = fsub fast float %6201, %6202
  %6204 = call float @dx.op.unary.f32(i32 7, float %6203)  ; Saturate(value)
  %6205 = call float @dx.op.binary.f32(i32 36, float %6204, float %6182)  ; FMin(a,b)
  %6206 = fmul fast float %6205, %6116
  %6207 = fsub fast float %6178, %6206
  %6208 = fsub fast float %6179, %6178
  %6209 = fsub fast float %6208, %6206
  %6210 = call float @dx.op.binary.f32(i32 35, float %6178, float %6179)  ; FMax(a,b)
  %6211 = call float @dx.op.binary.f32(i32 35, float %6206, float %6210)  ; FMax(a,b)
  %6212 = fcmp fast olt float %6211, 1.000000e+00
  br i1 %6212, label %6213, label %6611, !dx.controlflow.hints !90

; <label>:6213                                    ; preds = %6177
  %6214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6215 = extractvalue %dx.types.CBufRet.f32 %6214, 0
  %6216 = fcmp fast une float %6215, 0.000000e+00
  br i1 %6216, label %6217, label %6611, !dx.controlflow.hints !91

; <label>:6217                                    ; preds = %6213
  %6218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6219 = extractvalue %dx.types.CBufRet.f32 %6218, 0
  %6220 = extractvalue %dx.types.CBufRet.f32 %6218, 1
  %6221 = extractvalue %dx.types.CBufRet.f32 %6218, 2
  %6222 = extractvalue %dx.types.CBufRet.f32 %6218, 3
  %6223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6224 = extractvalue %dx.types.CBufRet.f32 %6223, 0
  %6225 = extractvalue %dx.types.CBufRet.f32 %6223, 1
  %6226 = extractvalue %dx.types.CBufRet.f32 %6223, 2
  %6227 = extractvalue %dx.types.CBufRet.f32 %6223, 3
  %6228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.f32 %6228, 0
  %6230 = extractvalue %dx.types.CBufRet.f32 %6228, 1
  %6231 = extractvalue %dx.types.CBufRet.f32 %6228, 2
  %6232 = extractvalue %dx.types.CBufRet.f32 %6228, 3
  %6233 = fmul fast float %6219, %6059
  %6234 = call float @dx.op.tertiary.f32(i32 46, float %6060, float %6220, float %6233)  ; FMad(a,b,c)
  %6235 = call float @dx.op.tertiary.f32(i32 46, float %6061, float %6221, float %6234)  ; FMad(a,b,c)
  %6236 = fadd fast float %6235, %6222
  %6237 = fmul fast float %6224, %6059
  %6238 = call float @dx.op.tertiary.f32(i32 46, float %6060, float %6225, float %6237)  ; FMad(a,b,c)
  %6239 = call float @dx.op.tertiary.f32(i32 46, float %6061, float %6226, float %6238)  ; FMad(a,b,c)
  %6240 = fadd fast float %6239, %6227
  %6241 = fmul fast float %6229, %6059
  %6242 = call float @dx.op.tertiary.f32(i32 46, float %6060, float %6230, float %6241)  ; FMad(a,b,c)
  %6243 = call float @dx.op.tertiary.f32(i32 46, float %6061, float %6231, float %6242)  ; FMad(a,b,c)
  %6244 = fadd fast float %6243, %6232
  %6245 = fcmp fast oge float %6236, 1.000000e+00
  %6246 = fcmp fast oge float %6240, 1.000000e+00
  %6247 = or i1 %6245, %6246
  %6248 = fcmp fast olt float %6236, 0.000000e+00
  %6249 = fcmp fast olt float %6240, 0.000000e+00
  %6250 = or i1 %6248, %6249
  %6251 = or i1 %6247, %6250
  br i1 %6251, label %6611, label %6252, !dx.controlflow.hints !92

; <label>:6252                                    ; preds = %6217
  %6253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6253, 0
  %6255 = extractvalue %dx.types.CBufRet.f32 %6253, 1
  %6256 = extractvalue %dx.types.CBufRet.f32 %6253, 2
  %6257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6258 = extractvalue %dx.types.CBufRet.i32 %6257, 2
  %6259 = uitofp i32 %6258 to float
  %6260 = extractvalue %dx.types.CBufRet.i32 %6257, 3
  %6261 = uitofp i32 %6260 to float
  %6262 = extractvalue %dx.types.CBufRet.f32 %6253, 3
  %6263 = fmul fast float %6262, 2.000000e+00
  %6264 = fsub fast float %6236, %6254
  %6265 = fsub fast float %6240, %6255
  %6266 = fmul fast float %6263, %6264
  %6267 = fmul fast float %6263, %6265
  %6268 = fdiv fast float 1.000000e+00, %6042
  %6269 = fmul fast float %6267, %6268
  %6270 = call float @dx.op.unary.f32(i32 6, float %6269)  ; FAbs(value)
  %6271 = fmul fast float %6256, %6061
  %6272 = fmul fast float %6271, %6263
  %6273 = call float @dx.op.unary.f32(i32 6, float %6272)  ; FAbs(value)
  %6274 = call float @dx.op.unary.f32(i32 6, float %6266)  ; FAbs(value)
  %6275 = call float @dx.op.binary.f32(i32 35, float %6273, float %6270)  ; FMax(a,b)
  %6276 = call float @dx.op.binary.f32(i32 35, float %6274, float %6275)  ; FMax(a,b)
  %6277 = fmul fast float %6276, 2.000000e+00
  %6278 = call float @dx.op.unary.f32(i32 23, float %6277)  ; Log(value)
  %6279 = call float @dx.op.binary.f32(i32 35, float %6278, float %6259)  ; FMax(a,b)
  %6280 = call float @dx.op.unary.f32(i32 22, float %6279)  ; Frc(value)
  %6281 = fadd fast float %6280, 0xBFEA666660000000
  %6282 = fmul fast float %6281, 8.000000e+00
  %6283 = call float @dx.op.unary.f32(i32 7, float %6282)  ; Saturate(value)
  %6284 = call float @dx.op.unary.f32(i32 27, float %6279)  ; Round_ni(value)
  %6285 = fadd fast float %6284, %6283
  %6286 = call float @dx.op.binary.f32(i32 36, float %6285, float %6261)  ; FMin(a,b)
  %6287 = call float @dx.op.unary.f32(i32 27, float %6286)  ; Round_ni(value)
  %6288 = fsub fast float -0.000000e+00, %6287
  %6289 = call float @dx.op.unary.f32(i32 21, float %6288)  ; Exp(value)
  %6290 = fmul fast float %6289, %6263
  %6291 = fmul fast float %6290, %6236
  %6292 = fmul fast float %6290, %6240
  %6293 = fmul fast float %6291, 2.500000e-01
  %6294 = fmul fast float %6292, 2.500000e-01
  %6295 = fadd fast float %6293, 5.000000e-01
  %6296 = fadd fast float %6294, 5.000000e-01
  %6297 = fsub fast float %6261, %6259
  %6298 = fptoui float %6297 to i32
  %6299 = add i32 %6298, 320
  %6300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %6299)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.f32 %6300, 0
  %6302 = extractvalue %dx.types.CBufRet.f32 %6300, 1
  %6303 = fcmp fast une float %6286, %6261
  %6304 = fsub fast float %6236, %6301
  %6305 = fsub fast float %6240, %6302
  %6306 = call float @dx.op.unary.f32(i32 6, float %6304)  ; FAbs(value)
  %6307 = call float @dx.op.unary.f32(i32 6, float %6305)  ; FAbs(value)
  %6308 = fmul fast float %6306, %6290
  %6309 = fmul fast float %6307, %6290
  %6310 = fcmp fast olt float %6308, 1.000000e+00
  %6311 = fcmp fast olt float %6309, 1.000000e+00
  %6312 = and i1 %6310, %6311
  %6313 = or i1 %6303, %6312
  br i1 %6313, label %6314, label %6611, !dx.controlflow.hints !93

; <label>:6314                                    ; preds = %6252
  %6315 = fmul fast float %6292, 5.000000e-01
  %6316 = fmul fast float %6291, 5.000000e-01
  %6317 = fadd fast float %6315, 5.000000e-01
  %6318 = fadd fast float %6316, 5.000000e-01
  %6319 = sitofp i32 %6258 to float
  %6320 = fsub fast float %6286, %6319
  %6321 = call float @dx.op.unary.f32(i32 27, float %6320)  ; Round_ni(value)
  %6322 = call float @dx.op.unary.f32(i32 22, float %6286)  ; Frc(value)
  %6323 = call float @dx.op.unary.f32(i32 22, float %6318)  ; Frc(value)
  %6324 = call float @dx.op.unary.f32(i32 22, float %6317)  ; Frc(value)
  %6325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6323, float %6324, float %6321, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6326 = extractvalue %dx.types.ResRet.f32 %6325, 0
  %6327 = extractvalue %dx.types.ResRet.f32 %6325, 1
  %6328 = extractvalue %dx.types.ResRet.f32 %6325, 2
  %6329 = extractvalue %dx.types.ResRet.f32 %6325, 3
  %6330 = fcmp fast ogt float %6322, 0.000000e+00
  br i1 %6330, label %6331, label %6352, !dx.controlflow.hints !94

; <label>:6331                                    ; preds = %6314
  %6332 = fadd fast float %6321, 1.000000e+00
  %6333 = call float @dx.op.unary.f32(i32 22, float %6295)  ; Frc(value)
  %6334 = call float @dx.op.unary.f32(i32 22, float %6296)  ; Frc(value)
  %6335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6333, float %6334, float %6332, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6336 = extractvalue %dx.types.ResRet.f32 %6335, 0
  %6337 = extractvalue %dx.types.ResRet.f32 %6335, 1
  %6338 = extractvalue %dx.types.ResRet.f32 %6335, 2
  %6339 = extractvalue %dx.types.ResRet.f32 %6335, 3
  %6340 = fsub fast float %6336, %6326
  %6341 = fsub fast float %6337, %6327
  %6342 = fsub fast float %6338, %6328
  %6343 = fsub fast float %6339, %6329
  %6344 = fmul fast float %6340, %6322
  %6345 = fmul fast float %6341, %6322
  %6346 = fmul fast float %6342, %6322
  %6347 = fmul fast float %6343, %6322
  %6348 = fadd fast float %6344, %6326
  %6349 = fadd fast float %6345, %6327
  %6350 = fadd fast float %6346, %6328
  %6351 = fadd fast float %6347, %6329
  br label %6352

; <label>:6352                                    ; preds = %6331, %6314
  %6353 = phi float [ %6348, %6331 ], [ %6326, %6314 ]
  %6354 = phi float [ %6349, %6331 ], [ %6327, %6314 ]
  %6355 = phi float [ %6350, %6331 ], [ %6328, %6314 ]
  %6356 = phi float [ %6351, %6331 ], [ %6329, %6314 ]
  %6357 = fadd fast float %6353, -5.000000e-01
  %6358 = fadd fast float %6355, -5.000000e-01
  %6359 = fmul fast float %6357, 0xBFD5555560000000
  %6360 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6358, float %6359)  ; FMad(a,b,c)
  %6361 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6354, float 0.000000e+00)  ; FMad(a,b,c)
  %6362 = fadd fast float %6361, %6356
  %6363 = fmul fast float %6357, -7.500000e-01
  %6364 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6358, float %6363)  ; FMad(a,b,c)
  %6365 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6354, float 0.000000e+00)  ; FMad(a,b,c)
  %6366 = fadd fast float %6365, %6356
  %6367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.f32 %6367, 0
  %6369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6370 = extractvalue %dx.types.CBufRet.f32 %6369, 0
  %6371 = extractvalue %dx.types.CBufRet.f32 %6369, 1
  %6372 = extractvalue %dx.types.CBufRet.f32 %6369, 2
  %6373 = extractvalue %dx.types.CBufRet.f32 %6369, 3
  %6374 = fsub fast float %6370, %6360
  %6375 = fsub fast float %6371, %6362
  %6376 = fsub fast float %6372, %6364
  %6377 = fsub fast float %6373, %6366
  %6378 = fmul fast float %6374, %6368
  %6379 = fmul fast float %6375, %6368
  %6380 = fmul fast float %6376, %6368
  %6381 = fmul fast float %6377, %6368
  %6382 = fadd fast float %6378, %6360
  %6383 = fadd fast float %6379, %6362
  %6384 = fadd fast float %6380, %6364
  %6385 = fadd fast float %6381, %6366
  %6386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6387 = extractvalue %dx.types.ResRet.i32 %6386, 0
  %6388 = and i32 %6387, 536870911
  %6389 = uitofp i32 %6388 to float
  %6390 = fmul fast float %6389, %6236
  %6391 = fmul fast float %6389, %6240
  %6392 = fptoui float %6390 to i32
  %6393 = fptoui float %6391 to i32
  %6394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6395 = extractvalue %dx.types.ResRet.i32 %6394, 0
  %6396 = and i32 %6395, 31
  %6397 = lshr i32 %6392, %6396
  %6398 = lshr i32 %6393, %6396
  %6399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6400 = extractvalue %dx.types.ResRet.i32 %6399, 0
  %6401 = and i32 %6400, 31
  %6402 = shl i32 1, %6401
  %6403 = call i32 @dx.op.binary.i32(i32 40, i32 %6402, i32 4)  ; UMin(a,b)
  %6404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6405 = extractvalue %dx.types.ResRet.i32 %6404, 0
  %6406 = extractvalue %dx.types.ResRet.i32 %6404, 1
  %6407 = icmp eq i32 %6403, 0
  br i1 %6407, label %6449, label %6408

; <label>:6408                                    ; preds = %6352
  br label %6409

; <label>:6409                                    ; preds = %6437, %6408
  %6410 = phi i32 [ %6440, %6437 ], [ 0, %6408 ]
  %6411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6412 = extractvalue %dx.types.ResRet.i32 %6411, 0
  %6413 = lshr i32 %6412, 16
  %6414 = and i32 %6413, 31
  %6415 = shl i32 %6398, %6414
  %6416 = add i32 %6415, %6397
  %6417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6418 = extractvalue %dx.types.ResRet.i32 %6417, 0
  %6419 = and i32 %6418, 31
  %6420 = shl i32 %6416, %6419
  %6421 = add i32 %6420, %6410
  %6422 = shl i32 %6421, 2
  %6423 = add i32 %6422, 32
  %6424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6423, i32 undef)  ; BufferLoad(srv,index,wot)
  %6425 = extractvalue %dx.types.ResRet.i32 %6424, 0
  %6426 = icmp slt i32 %6425, 0
  %6427 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6410
  %6428 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6410
  %6429 = bitcast float* %6427 to i32*
  %6430 = bitcast float* %6428 to i32*
  br i1 %6426, label %6431, label %6437

; <label>:6431                                    ; preds = %6409
  %6432 = and i32 %6425, 1073741823
  %6433 = add nuw nsw i32 %6432, 20
  %6434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6433, i32 undef)  ; BufferLoad(srv,index,wot)
  %6435 = extractvalue %dx.types.ResRet.i32 %6434, 0
  %6436 = extractvalue %dx.types.ResRet.i32 %6434, 1
  br label %6437

; <label>:6437                                    ; preds = %6431, %6409
  %6438 = phi i32 [ %6435, %6431 ], [ %6405, %6409 ]
  %6439 = phi i32 [ %6436, %6431 ], [ %6406, %6409 ]
  store i32 %6438, i32* %6429, align 4
  store i32 %6439, i32* %6430, align 4
  %6440 = add nuw i32 %6410, 1
  %6441 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6442 = extractvalue %dx.types.CBufRet.i32 %6441, 2
  %6443 = icmp eq i32 %6442, 0
  %6444 = icmp ugt i32 %6425, -1073741825
  %6445 = and i1 %6444, %6443
  %6446 = icmp ult i32 %6440, %6403
  %6447 = and i1 %6445, %6446
  br i1 %6447, label %6409, label %6448

; <label>:6448                                    ; preds = %6437
  br label %6449

; <label>:6449                                    ; preds = %6448, %6352
  %6450 = phi i32 [ 0, %6352 ], [ %6440, %6448 ]
  %6451 = extractvalue %dx.types.CBufRet.f32 %6214, 2
  %6452 = fptoui float %6451 to i32
  %6453 = icmp eq i32 %6452, 0
  br i1 %6453, label %6505, label %6454

; <label>:6454                                    ; preds = %6449
  br label %6455

; <label>:6455                                    ; preds = %6500, %6454
  %6456 = phi i32 [ %6501, %6500 ], [ %6450, %6454 ]
  %6457 = phi i32 [ %6502, %6500 ], [ 0, %6454 ]
  %6458 = lshr i32 %6457, 2
  %6459 = and i32 %6457, 3
  %6460 = add nuw nsw i32 %6458, 83
  %6461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 %6460)  ; CBufferLoadLegacy(handle,regIndex)
  %6462 = extractvalue %dx.types.CBufRet.i32 %6461, 0
  %6463 = extractvalue %dx.types.CBufRet.i32 %6461, 1
  %6464 = extractvalue %dx.types.CBufRet.i32 %6461, 2
  %6465 = extractvalue %dx.types.CBufRet.i32 %6461, 3
  %6466 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 0
  store i32 %6462, i32* %6466, align 4
  %6467 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 1
  store i32 %6463, i32* %6467, align 4
  %6468 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 2
  store i32 %6464, i32* %6468, align 4
  %6469 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 3
  store i32 %6465, i32* %6469, align 4
  %6470 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 %6459
  %6471 = load i32, i32* %6470, align 4, !tbaa !95, !noalias !99
  %6472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6473 = extractvalue %dx.types.ResRet.i32 %6472, 0
  %6474 = lshr i32 %6473, 16
  %6475 = and i32 %6474, 31
  %6476 = shl i32 %6398, %6475
  %6477 = add i32 %6476, %6397
  %6478 = shl i32 %6477, 2
  %6479 = add i32 %6478, %6471
  %6480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6479, i32 undef)  ; BufferLoad(srv,index,wot)
  %6481 = extractvalue %dx.types.ResRet.i32 %6480, 0
  %6482 = icmp eq i32 %6481, 0
  br i1 %6482, label %6500, label %6483

; <label>:6483                                    ; preds = %6455
  %6484 = icmp slt i32 %6481, 0
  %6485 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6456
  %6486 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6456
  %6487 = bitcast float* %6485 to i32*
  %6488 = bitcast float* %6486 to i32*
  br i1 %6484, label %6489, label %6496

; <label>:6489                                    ; preds = %6483
  %6490 = and i32 %6481, 1073741823
  %6491 = add i32 %6471, 20
  %6492 = add i32 %6491, %6490
  %6493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6492, i32 undef)  ; BufferLoad(srv,index,wot)
  %6494 = extractvalue %dx.types.ResRet.i32 %6493, 0
  %6495 = extractvalue %dx.types.ResRet.i32 %6493, 1
  br label %6496

; <label>:6496                                    ; preds = %6489, %6483
  %6497 = phi i32 [ %6494, %6489 ], [ %6405, %6483 ]
  %6498 = phi i32 [ %6495, %6489 ], [ %6406, %6483 ]
  store i32 %6497, i32* %6487, align 4
  store i32 %6498, i32* %6488, align 4
  %6499 = add i32 %6456, 1
  br label %6500

; <label>:6500                                    ; preds = %6496, %6455
  %6501 = phi i32 [ %6456, %6455 ], [ %6499, %6496 ]
  %6502 = add nuw i32 %6457, 1
  %6503 = icmp eq i32 %6502, %6452
  br i1 %6503, label %6504, label %6455

; <label>:6504                                    ; preds = %6500
  br label %6505

; <label>:6505                                    ; preds = %6504, %6449
  %6506 = phi i32 [ %6450, %6449 ], [ %6501, %6504 ]
  %6507 = icmp eq i32 %6506, 1
  %6508 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  %6509 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  br i1 %6507, label %6510, label %6513

; <label>:6510                                    ; preds = %6505
  %6511 = load float, float* %6508, align 4
  %6512 = load float, float* %6509, align 4
  br label %6540

; <label>:6513                                    ; preds = %6505
  %6514 = load float, float* %6508, align 4
  %6515 = load float, float* %6509, align 4
  %6516 = fdiv fast float 1.000000e+00, %6515
  %6517 = fsub fast float %6514, %6516
  %6518 = icmp ugt i32 %6506, 1
  br i1 %6518, label %6519, label %6535

; <label>:6519                                    ; preds = %6513
  br label %6520

; <label>:6520                                    ; preds = %6520, %6519
  %6521 = phi float [ %6530, %6520 ], [ %6517, %6519 ]
  %6522 = phi float [ %6531, %6520 ], [ %6514, %6519 ]
  %6523 = phi i32 [ %6532, %6520 ], [ 1, %6519 ]
  %6524 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6523
  %6525 = load float, float* %6524, align 4
  %6526 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6523
  %6527 = load float, float* %6526, align 4
  %6528 = fdiv fast float 1.000000e+00, %6527
  %6529 = fsub fast float %6525, %6528
  %6530 = call float @dx.op.binary.f32(i32 36, float %6521, float %6529)  ; FMin(a,b)
  %6531 = call float @dx.op.binary.f32(i32 35, float %6522, float %6525)  ; FMax(a,b)
  %6532 = add nuw i32 %6523, 1
  %6533 = icmp eq i32 %6532, %6506
  br i1 %6533, label %6534, label %6520

; <label>:6534                                    ; preds = %6520
  br label %6535

; <label>:6535                                    ; preds = %6534, %6513
  %6536 = phi float [ %6517, %6513 ], [ %6530, %6534 ]
  %6537 = phi float [ %6514, %6513 ], [ %6531, %6534 ]
  %6538 = fsub fast float %6537, %6536
  %6539 = fdiv fast float 1.000000e+00, %6538
  br label %6540

; <label>:6540                                    ; preds = %6535, %6510
  %6541 = phi float [ %6511, %6510 ], [ %6537, %6535 ]
  %6542 = phi float [ %6512, %6510 ], [ %6539, %6535 ]
  %6543 = fadd fast float %6244, %6541
  %6544 = fmul fast float %6543, %6542
  %6545 = call float @dx.op.unary.f32(i32 7, float %6544)  ; Saturate(value)
  %6546 = fmul fast float %6545, 2.000000e+00
  %6547 = fsub fast float 1.000000e+00, %6546
  %6548 = fmul fast float %6382, %6382
  %6549 = fsub fast float %6383, %6548
  %6550 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6549)  ; FMax(a,b)
  %6551 = fdiv fast float 1.000000e+00, %6550
  %6552 = fmul fast float %6383, %6382
  %6553 = fsub fast float %6384, %6552
  %6554 = fsub fast float %6547, %6382
  %6555 = fmul fast float %6547, %6547
  %6556 = fsub fast float %6555, %6383
  %6557 = fmul fast float %6551, %6553
  %6558 = fmul fast float %6557, %6554
  %6559 = fsub fast float %6556, %6558
  %6560 = fmul fast float %6383, %6383
  %6561 = fsub fast float %6385, %6560
  %6562 = fmul fast float %6553, %6553
  %6563 = fmul fast float %6562, %6551
  %6564 = fsub fast float %6561, %6563
  %6565 = fdiv fast float %6559, %6564
  %6566 = fmul fast float %6565, %6553
  %6567 = fsub fast float %6554, %6566
  %6568 = fmul fast float %6567, %6551
  %6569 = fmul fast float %6568, %6382
  %6570 = fsub fast float 1.000000e+00, %6569
  %6571 = fmul fast float %6565, %6383
  %6572 = fsub fast float %6570, %6571
  %6573 = fmul fast float %6568, %6568
  %6574 = fmul fast float %6565, 4.000000e+00
  %6575 = fmul fast float %6574, %6572
  %6576 = fsub fast float %6573, %6575
  %6577 = call float @dx.op.unary.f32(i32 24, float %6576)  ; Sqrt(value)
  %6578 = fcmp fast oge float %6568, 0.000000e+00
  %6579 = fsub fast float -0.000000e+00, %6577
  %6580 = select i1 %6578, float %6579, float %6577
  %6581 = fsub fast float %6580, %6568
  %6582 = fdiv fast float %6581, %6565
  %6583 = fdiv fast float %6572, %6581
  %6584 = fmul fast float %6582, 5.000000e-01
  %6585 = fmul fast float %6583, 2.000000e+00
  %6586 = select i1 %6578, float %6584, float %6585
  %6587 = select i1 %6578, float %6585, float %6584
  %6588 = call float @dx.op.binary.f32(i32 35, float %6586, float %6587)  ; FMax(a,b)
  %6589 = call float @dx.op.binary.f32(i32 36, float %6586, float %6587)  ; FMin(a,b)
  %6590 = fcmp fast ogt float %6547, %6588
  %6591 = fsub fast float %6547, %6589
  %6592 = fsub fast float %6547, %6588
  %6593 = fsub fast float %6588, %6589
  %6594 = select i1 %6590, float %6592, float %6593
  %6595 = fmul float %6591, %6594
  %6596 = select i1 %6590, float %6589, float %6547
  %6597 = fcmp fast ogt float %6547, %6589
  %6598 = fmul fast float %6596, %6588
  %6599 = fadd fast float %6596, %6588
  %6600 = fmul fast float %6599, %6382
  %6601 = fadd fast float %6598, %6383
  %6602 = fsub fast float %6601, %6600
  %6603 = fdiv fast float %6602, %6595
  %6604 = select i1 %6597, float %6603, float 0.000000e+00
  %6605 = fsub fast float 1.000000e+00, %6604
  %6606 = select i1 %6590, float %6605, float %6604
  %6607 = call float @dx.op.unary.f32(i32 7, float %6606)  ; Saturate(value)
  %6608 = extractvalue %dx.types.CBufRet.f32 %6367, 3
  %6609 = fmul fast float %6608, %6607
  %6610 = fsub fast float 1.000000e+00, %6609
  br label %6611

; <label>:6611                                    ; preds = %6540, %6252, %6217, %6213, %6177
  %6612 = phi float [ 1.000000e+00, %6177 ], [ %6610, %6540 ], [ 1.000000e+00, %6217 ], [ 1.000000e+00, %6252 ], [ 1.000000e+00, %6213 ]
  %6613 = fcmp fast ogt float %6209, 0.000000e+00
  br i1 %6613, label %6614, label %6778, !dx.controlflow.hints !108

; <label>:6614                                    ; preds = %6611
  %6615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6616 = extractvalue %dx.types.CBufRet.f32 %6615, 2
  %6617 = fadd fast float %6616, %6090
  %6618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6619 = extractvalue %dx.types.CBufRet.f32 %6618, 2
  %6620 = extractvalue %dx.types.CBufRet.f32 %6618, 3
  %6621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6622 = extractvalue %dx.types.CBufRet.f32 %6621, 2
  %6623 = call float @dx.op.binary.f32(i32 35, float %6617, float 0.000000e+00)  ; FMax(a,b)
  %6624 = fadd fast float %6623, 0x3F10000000000000
  %6625 = fcmp fast oeq float %6622, 0.000000e+00
  br i1 %6625, label %6626, label %6693

; <label>:6626                                    ; preds = %6614
  %6627 = extractvalue %dx.types.CBufRet.f32 %6618, 1
  %6628 = extractvalue %dx.types.CBufRet.f32 %6618, 0
  %6629 = fmul fast float %6628, %6108
  %6630 = fmul fast float %6627, %6109
  %6631 = fadd fast float %6629, 5.000000e-01
  %6632 = call float @dx.op.unary.f32(i32 27, float %6631)  ; Round_ni(value)
  %6633 = fadd fast float %6630, 5.000000e-01
  %6634 = call float @dx.op.unary.f32(i32 27, float %6633)  ; Round_ni(value)
  %6635 = fsub fast float %6631, %6632
  %6636 = fsub fast float %6633, %6634
  %6637 = fadd fast float %6632, -5.000000e-01
  %6638 = fadd fast float %6634, -5.000000e-01
  %6639 = fmul fast float %6635, 2.000000e+00
  %6640 = fsub fast float 3.000000e+00, %6639
  %6641 = fadd fast float %6639, 1.000000e+00
  %6642 = fsub fast float 2.000000e+00, %6635
  %6643 = bitcast float %6640 to i32
  %6644 = sub nsw i32 2129859010, %6643
  %6645 = bitcast i32 %6644 to float
  %6646 = fmul fast float %6645, %6642
  %6647 = fadd fast float %6646, -1.000000e+00
  %6648 = bitcast float %6641 to i32
  %6649 = sub nsw i32 2129859010, %6648
  %6650 = bitcast i32 %6649 to float
  %6651 = fmul fast float %6650, %6635
  %6652 = fadd fast float %6651, 1.000000e+00
  %6653 = fmul fast float %6636, 2.000000e+00
  %6654 = fsub fast float 3.000000e+00, %6653
  %6655 = fadd fast float %6653, 1.000000e+00
  %6656 = fsub fast float 2.000000e+00, %6636
  %6657 = bitcast float %6654 to i32
  %6658 = sub nsw i32 2129859010, %6657
  %6659 = bitcast i32 %6658 to float
  %6660 = fmul fast float %6659, %6656
  %6661 = fadd fast float %6660, -1.000000e+00
  %6662 = bitcast float %6655 to i32
  %6663 = sub nsw i32 2129859010, %6662
  %6664 = bitcast i32 %6663 to float
  %6665 = fmul fast float %6664, %6636
  %6666 = fadd fast float %6665, 1.000000e+00
  %6667 = fadd fast float %6647, %6637
  %6668 = fmul fast float %6667, %6619
  %6669 = fadd fast float %6661, %6638
  %6670 = fmul fast float %6669, %6620
  %6671 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6668, float %6670, float undef, float undef, i32 0, i32 0, i32 undef, float %6624)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6672 = extractvalue %dx.types.ResRet.f32 %6671, 0
  %6673 = fmul fast float %6672, %6640
  %6674 = fadd fast float %6652, %6637
  %6675 = fmul fast float %6674, %6619
  %6676 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6675, float %6670, float undef, float undef, i32 0, i32 0, i32 undef, float %6624)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6677 = extractvalue %dx.types.ResRet.f32 %6676, 0
  %6678 = fmul fast float %6677, %6641
  %6679 = fadd fast float %6666, %6638
  %6680 = fmul fast float %6679, %6620
  %6681 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6668, float %6680, float undef, float undef, i32 0, i32 0, i32 undef, float %6624)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6682 = extractvalue %dx.types.ResRet.f32 %6681, 0
  %6683 = fmul fast float %6682, %6640
  %6684 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6675, float %6680, float undef, float undef, i32 0, i32 0, i32 undef, float %6624)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6685 = extractvalue %dx.types.ResRet.f32 %6684, 0
  %6686 = fmul fast float %6685, %6641
  %6687 = fadd fast float %6686, %6683
  %6688 = fmul fast float %6687, %6655
  %6689 = fadd fast float %6678, %6673
  %6690 = fmul fast float %6689, %6654
  %6691 = fadd fast float %6690, %6688
  %6692 = fmul fast float %6691, 6.250000e-02
  br label %6778

; <label>:6693                                    ; preds = %6614
  %6694 = fmul fast float %261, 0x401921FB60000000
  %6695 = call float @dx.op.unary.f32(i32 13, float %6694)  ; Sin(value)
  %6696 = call float @dx.op.unary.f32(i32 12, float %6694)  ; Cos(value)
  %6697 = fsub fast float -0.000000e+00, %6695
  br label %6698

; <label>:6698                                    ; preds = %6747, %6693
  %6699 = phi float [ 0.000000e+00, %6693 ], [ %6742, %6747 ]
  %6700 = phi float [ 0.000000e+00, %6693 ], [ %6744, %6747 ]
  %6701 = phi i32 [ 0, %6693 ], [ %6748, %6747 ]
  %6702 = mul i32 %6701, 2
  %6703 = add i32 0, %6702
  %6704 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6703
  %6705 = load float, float* %6704, align 4
  %6706 = mul i32 %6701, 2
  %6707 = add i32 1, %6706
  %6708 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6707
  %6709 = load float, float* %6708, align 4
  %6710 = fmul fast float %6705, %6696
  %6711 = call float @dx.op.tertiary.f32(i32 46, float %6709, float %6697, float %6710)  ; FMad(a,b,c)
  %6712 = fmul fast float %6705, %6695
  %6713 = call float @dx.op.tertiary.f32(i32 46, float %6709, float %6696, float %6712)  ; FMad(a,b,c)
  %6714 = fmul fast float %6711, %6622
  %6715 = fmul fast float %6713, %6622
  %6716 = fadd fast float %6714, %6108
  %6717 = fadd fast float %6715, %6109
  %6718 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %43, float %6716, float %6717, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6719 = extractvalue %dx.types.ResRet.f32 %6718, 0
  %6720 = extractvalue %dx.types.ResRet.f32 %6718, 1
  %6721 = extractvalue %dx.types.ResRet.f32 %6718, 2
  %6722 = extractvalue %dx.types.ResRet.f32 %6718, 3
  %6723 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %6719, float* %6723, align 4
  %6724 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %6720, float* %6724, align 4
  %6725 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %6721, float* %6725, align 4
  %6726 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %6722, float* %6726, align 4
  %6727 = fsub fast float %6719, %6624
  %6728 = fcmp fast olt float %6727, 0.000000e+00
  %6729 = select i1 %6728, float 0.000000e+00, float 1.000000e+00
  %6730 = fadd fast float %6729, %6699
  %6731 = fmul fast float %6729, %6727
  %6732 = fadd fast float %6731, %6700
  br label %6733

; <label>:6733                                    ; preds = %6733, %6698
  %6734 = phi i32 [ 1, %6698 ], [ %6745, %6733 ]
  %6735 = phi float [ %6732, %6698 ], [ %6744, %6733 ]
  %6736 = phi float [ %6730, %6698 ], [ %6742, %6733 ]
  %6737 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %6734
  %6738 = load float, float* %6737, align 4, !tbaa !109, !noalias !99
  %6739 = fsub fast float %6738, %6624
  %6740 = fcmp fast olt float %6739, 0.000000e+00
  %6741 = select i1 %6740, float 0.000000e+00, float 1.000000e+00
  %6742 = fadd fast float %6741, %6736
  %6743 = fmul fast float %6741, %6739
  %6744 = fadd fast float %6743, %6735
  %6745 = add nuw nsw i32 %6734, 1
  %6746 = icmp eq i32 %6745, 4
  br i1 %6746, label %6747, label %6733, !llvm.loop !111

; <label>:6747                                    ; preds = %6733
  %6748 = add nuw nsw i32 %6701, 1
  %6749 = icmp eq i32 %6748, 8
  br i1 %6749, label %6750, label %6698, !llvm.loop !112

; <label>:6750                                    ; preds = %6747
  %6751 = fdiv fast float 1.000000e+00, %6742
  %6752 = fmul fast float %6751, %6744
  %6753 = fdiv fast float 1.000000e+00, %6624
  %6754 = fmul fast float %6752, %6753
  %6755 = call float @dx.op.unary.f32(i32 7, float %6754)  ; Saturate(value)
  %6756 = call float @dx.op.binary.f32(i32 35, float %6755, float 0.000000e+00)  ; FMax(a,b)
  %6757 = fmul fast float %6742, 3.125000e-02
  %6758 = call float @dx.op.unary.f32(i32 7, float %6757)  ; Saturate(value)
  %6759 = fmul fast float %6758, 2.000000e+00
  %6760 = fadd fast float %6759, -1.000000e+00
  %6761 = fcmp fast ogt float %6760, 0.000000e+00
  %6762 = fcmp fast olt float %6760, 0.000000e+00
  %6763 = zext i1 %6761 to i32
  %6764 = zext i1 %6762 to i32
  %6765 = sub nsw i32 %6763, %6764
  %6766 = sitofp i32 %6765 to float
  %6767 = fmul fast float %6766, %6760
  %6768 = fsub fast float 1.000000e+00, %6767
  %6769 = fmul fast float %6768, %6768
  %6770 = fmul fast float %6769, %6768
  %6771 = fsub fast float %6768, %6770
  %6772 = fmul fast float %6771, %6756
  %6773 = fsub fast float 1.000000e+00, %6770
  %6774 = fsub fast float %6773, %6772
  %6775 = fmul fast float %6766, 5.000000e-01
  %6776 = fmul fast float %6775, %6774
  %6777 = fsub fast float 5.000000e-01, %6776
  br label %6778

; <label>:6778                                    ; preds = %6750, %6626, %6611
  %6779 = phi float [ 1.000000e+00, %6611 ], [ %6692, %6626 ], [ %6777, %6750 ]
  %6780 = fcmp fast ogt float %6207, 0.000000e+00
  br i1 %6780, label %6781, label %6945, !dx.controlflow.hints !113

; <label>:6781                                    ; preds = %6778
  %6782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6783 = extractvalue %dx.types.CBufRet.f32 %6782, 1
  %6784 = fadd fast float %6783, %6090
  %6785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6786 = extractvalue %dx.types.CBufRet.f32 %6785, 2
  %6787 = extractvalue %dx.types.CBufRet.f32 %6785, 3
  %6788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6789 = extractvalue %dx.types.CBufRet.f32 %6788, 1
  %6790 = call float @dx.op.binary.f32(i32 35, float %6784, float 0.000000e+00)  ; FMax(a,b)
  %6791 = fadd fast float %6790, 0x3F10000000000000
  %6792 = fcmp fast oeq float %6789, 0.000000e+00
  br i1 %6792, label %6793, label %6860

; <label>:6793                                    ; preds = %6781
  %6794 = extractvalue %dx.types.CBufRet.f32 %6785, 1
  %6795 = extractvalue %dx.types.CBufRet.f32 %6785, 0
  %6796 = fmul fast float %6795, %6100
  %6797 = fmul fast float %6794, %6101
  %6798 = fadd fast float %6796, 5.000000e-01
  %6799 = call float @dx.op.unary.f32(i32 27, float %6798)  ; Round_ni(value)
  %6800 = fadd fast float %6797, 5.000000e-01
  %6801 = call float @dx.op.unary.f32(i32 27, float %6800)  ; Round_ni(value)
  %6802 = fsub fast float %6798, %6799
  %6803 = fsub fast float %6800, %6801
  %6804 = fadd fast float %6799, -5.000000e-01
  %6805 = fadd fast float %6801, -5.000000e-01
  %6806 = fmul fast float %6802, 2.000000e+00
  %6807 = fsub fast float 3.000000e+00, %6806
  %6808 = fadd fast float %6806, 1.000000e+00
  %6809 = fsub fast float 2.000000e+00, %6802
  %6810 = bitcast float %6807 to i32
  %6811 = sub nsw i32 2129859010, %6810
  %6812 = bitcast i32 %6811 to float
  %6813 = fmul fast float %6812, %6809
  %6814 = fadd fast float %6813, -1.000000e+00
  %6815 = bitcast float %6808 to i32
  %6816 = sub nsw i32 2129859010, %6815
  %6817 = bitcast i32 %6816 to float
  %6818 = fmul fast float %6817, %6802
  %6819 = fadd fast float %6818, 1.000000e+00
  %6820 = fmul fast float %6803, 2.000000e+00
  %6821 = fsub fast float 3.000000e+00, %6820
  %6822 = fadd fast float %6820, 1.000000e+00
  %6823 = fsub fast float 2.000000e+00, %6803
  %6824 = bitcast float %6821 to i32
  %6825 = sub nsw i32 2129859010, %6824
  %6826 = bitcast i32 %6825 to float
  %6827 = fmul fast float %6826, %6823
  %6828 = fadd fast float %6827, -1.000000e+00
  %6829 = bitcast float %6822 to i32
  %6830 = sub nsw i32 2129859010, %6829
  %6831 = bitcast i32 %6830 to float
  %6832 = fmul fast float %6831, %6803
  %6833 = fadd fast float %6832, 1.000000e+00
  %6834 = fadd fast float %6814, %6804
  %6835 = fmul fast float %6834, %6786
  %6836 = fadd fast float %6828, %6805
  %6837 = fmul fast float %6836, %6787
  %6838 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6835, float %6837, float undef, float undef, i32 0, i32 0, i32 undef, float %6791)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6839 = extractvalue %dx.types.ResRet.f32 %6838, 0
  %6840 = fmul fast float %6839, %6807
  %6841 = fadd fast float %6819, %6804
  %6842 = fmul fast float %6841, %6786
  %6843 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6842, float %6837, float undef, float undef, i32 0, i32 0, i32 undef, float %6791)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6844 = extractvalue %dx.types.ResRet.f32 %6843, 0
  %6845 = fmul fast float %6844, %6808
  %6846 = fadd fast float %6833, %6805
  %6847 = fmul fast float %6846, %6787
  %6848 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6835, float %6847, float undef, float undef, i32 0, i32 0, i32 undef, float %6791)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6849 = extractvalue %dx.types.ResRet.f32 %6848, 0
  %6850 = fmul fast float %6849, %6807
  %6851 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6842, float %6847, float undef, float undef, i32 0, i32 0, i32 undef, float %6791)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6852 = extractvalue %dx.types.ResRet.f32 %6851, 0
  %6853 = fmul fast float %6852, %6808
  %6854 = fadd fast float %6853, %6850
  %6855 = fmul fast float %6854, %6822
  %6856 = fadd fast float %6845, %6840
  %6857 = fmul fast float %6856, %6821
  %6858 = fadd fast float %6857, %6855
  %6859 = fmul fast float %6858, 6.250000e-02
  br label %6945

; <label>:6860                                    ; preds = %6781
  %6861 = fmul fast float %261, 0x401921FB60000000
  %6862 = call float @dx.op.unary.f32(i32 13, float %6861)  ; Sin(value)
  %6863 = call float @dx.op.unary.f32(i32 12, float %6861)  ; Cos(value)
  %6864 = fsub fast float -0.000000e+00, %6862
  br label %6865

; <label>:6865                                    ; preds = %6914, %6860
  %6866 = phi float [ 0.000000e+00, %6860 ], [ %6909, %6914 ]
  %6867 = phi float [ 0.000000e+00, %6860 ], [ %6911, %6914 ]
  %6868 = phi i32 [ 0, %6860 ], [ %6915, %6914 ]
  %6869 = mul i32 %6868, 2
  %6870 = add i32 0, %6869
  %6871 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6870
  %6872 = load float, float* %6871, align 4
  %6873 = mul i32 %6868, 2
  %6874 = add i32 1, %6873
  %6875 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6874
  %6876 = load float, float* %6875, align 4
  %6877 = fmul fast float %6872, %6863
  %6878 = call float @dx.op.tertiary.f32(i32 46, float %6876, float %6864, float %6877)  ; FMad(a,b,c)
  %6879 = fmul fast float %6872, %6862
  %6880 = call float @dx.op.tertiary.f32(i32 46, float %6876, float %6863, float %6879)  ; FMad(a,b,c)
  %6881 = fmul fast float %6878, %6789
  %6882 = fmul fast float %6880, %6789
  %6883 = fadd fast float %6881, %6100
  %6884 = fadd fast float %6882, %6101
  %6885 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %43, float %6883, float %6884, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6886 = extractvalue %dx.types.ResRet.f32 %6885, 0
  %6887 = extractvalue %dx.types.ResRet.f32 %6885, 1
  %6888 = extractvalue %dx.types.ResRet.f32 %6885, 2
  %6889 = extractvalue %dx.types.ResRet.f32 %6885, 3
  %6890 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %6886, float* %6890, align 4
  %6891 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %6887, float* %6891, align 4
  %6892 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %6888, float* %6892, align 4
  %6893 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %6889, float* %6893, align 4
  %6894 = fsub fast float %6886, %6791
  %6895 = fcmp fast olt float %6894, 0.000000e+00
  %6896 = select i1 %6895, float 0.000000e+00, float 1.000000e+00
  %6897 = fadd fast float %6896, %6866
  %6898 = fmul fast float %6896, %6894
  %6899 = fadd fast float %6898, %6867
  br label %6900

; <label>:6900                                    ; preds = %6900, %6865
  %6901 = phi i32 [ 1, %6865 ], [ %6912, %6900 ]
  %6902 = phi float [ %6899, %6865 ], [ %6911, %6900 ]
  %6903 = phi float [ %6897, %6865 ], [ %6909, %6900 ]
  %6904 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %6901
  %6905 = load float, float* %6904, align 4, !tbaa !109, !noalias !99
  %6906 = fsub fast float %6905, %6791
  %6907 = fcmp fast olt float %6906, 0.000000e+00
  %6908 = select i1 %6907, float 0.000000e+00, float 1.000000e+00
  %6909 = fadd fast float %6908, %6903
  %6910 = fmul fast float %6908, %6906
  %6911 = fadd fast float %6910, %6902
  %6912 = add nuw nsw i32 %6901, 1
  %6913 = icmp eq i32 %6912, 4
  br i1 %6913, label %6914, label %6900, !llvm.loop !111

; <label>:6914                                    ; preds = %6900
  %6915 = add nuw nsw i32 %6868, 1
  %6916 = icmp eq i32 %6915, 8
  br i1 %6916, label %6917, label %6865, !llvm.loop !112

; <label>:6917                                    ; preds = %6914
  %6918 = fdiv fast float 1.000000e+00, %6909
  %6919 = fmul fast float %6918, %6911
  %6920 = fdiv fast float 1.000000e+00, %6791
  %6921 = fmul fast float %6919, %6920
  %6922 = call float @dx.op.unary.f32(i32 7, float %6921)  ; Saturate(value)
  %6923 = call float @dx.op.binary.f32(i32 35, float %6922, float 0.000000e+00)  ; FMax(a,b)
  %6924 = fmul fast float %6909, 3.125000e-02
  %6925 = call float @dx.op.unary.f32(i32 7, float %6924)  ; Saturate(value)
  %6926 = fmul fast float %6925, 2.000000e+00
  %6927 = fadd fast float %6926, -1.000000e+00
  %6928 = fcmp fast ogt float %6927, 0.000000e+00
  %6929 = fcmp fast olt float %6927, 0.000000e+00
  %6930 = zext i1 %6928 to i32
  %6931 = zext i1 %6929 to i32
  %6932 = sub nsw i32 %6930, %6931
  %6933 = sitofp i32 %6932 to float
  %6934 = fmul fast float %6933, %6927
  %6935 = fsub fast float 1.000000e+00, %6934
  %6936 = fmul fast float %6935, %6935
  %6937 = fmul fast float %6936, %6935
  %6938 = fsub fast float %6935, %6937
  %6939 = fmul fast float %6938, %6923
  %6940 = fsub fast float 1.000000e+00, %6937
  %6941 = fsub fast float %6940, %6939
  %6942 = fmul fast float %6933, 5.000000e-01
  %6943 = fmul fast float %6942, %6941
  %6944 = fsub fast float 5.000000e-01, %6943
  br label %6945

; <label>:6945                                    ; preds = %6917, %6793, %6778
  %6946 = phi float [ 1.000000e+00, %6778 ], [ %6859, %6793 ], [ %6944, %6917 ]
  %6947 = fcmp fast ogt float %6206, 0.000000e+00
  br i1 %6947, label %6948, label %7266, !dx.controlflow.hints !114

; <label>:6948                                    ; preds = %6945
  %6949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6950 = extractvalue %dx.types.CBufRet.f32 %6949, 0
  %6951 = fadd fast float %6950, %6090
  %6952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6953 = extractvalue %dx.types.CBufRet.f32 %6952, 2
  %6954 = extractvalue %dx.types.CBufRet.f32 %6952, 3
  %6955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6956 = extractvalue %dx.types.CBufRet.f32 %6955, 0
  %6957 = call float @dx.op.binary.f32(i32 35, float %6951, float 0.000000e+00)  ; FMax(a,b)
  %6958 = fadd fast float %6957, 0x3F10000000000000
  %6959 = fcmp fast oeq float %6956, 0.000000e+00
  br i1 %6093, label %6960, label %7113, !dx.controlflow.hints !115

; <label>:6960                                    ; preds = %6948
  br i1 %6959, label %6961, label %7028

; <label>:6961                                    ; preds = %6960
  %6962 = extractvalue %dx.types.CBufRet.f32 %6952, 1
  %6963 = extractvalue %dx.types.CBufRet.f32 %6952, 0
  %6964 = fmul fast float %6963, %6082
  %6965 = fmul fast float %6962, %6086
  %6966 = fadd fast float %6964, 5.000000e-01
  %6967 = call float @dx.op.unary.f32(i32 27, float %6966)  ; Round_ni(value)
  %6968 = fadd fast float %6965, 5.000000e-01
  %6969 = call float @dx.op.unary.f32(i32 27, float %6968)  ; Round_ni(value)
  %6970 = fsub fast float %6966, %6967
  %6971 = fsub fast float %6968, %6969
  %6972 = fadd fast float %6967, -5.000000e-01
  %6973 = fadd fast float %6969, -5.000000e-01
  %6974 = fmul fast float %6970, 2.000000e+00
  %6975 = fsub fast float 3.000000e+00, %6974
  %6976 = fadd fast float %6974, 1.000000e+00
  %6977 = fsub fast float 2.000000e+00, %6970
  %6978 = bitcast float %6975 to i32
  %6979 = sub nsw i32 2129859010, %6978
  %6980 = bitcast i32 %6979 to float
  %6981 = fmul fast float %6980, %6977
  %6982 = fadd fast float %6981, -1.000000e+00
  %6983 = bitcast float %6976 to i32
  %6984 = sub nsw i32 2129859010, %6983
  %6985 = bitcast i32 %6984 to float
  %6986 = fmul fast float %6985, %6970
  %6987 = fadd fast float %6986, 1.000000e+00
  %6988 = fmul fast float %6971, 2.000000e+00
  %6989 = fsub fast float 3.000000e+00, %6988
  %6990 = fadd fast float %6988, 1.000000e+00
  %6991 = fsub fast float 2.000000e+00, %6971
  %6992 = bitcast float %6989 to i32
  %6993 = sub nsw i32 2129859010, %6992
  %6994 = bitcast i32 %6993 to float
  %6995 = fmul fast float %6994, %6991
  %6996 = fadd fast float %6995, -1.000000e+00
  %6997 = bitcast float %6990 to i32
  %6998 = sub nsw i32 2129859010, %6997
  %6999 = bitcast i32 %6998 to float
  %7000 = fmul fast float %6999, %6971
  %7001 = fadd fast float %7000, 1.000000e+00
  %7002 = fadd fast float %6982, %6972
  %7003 = fmul fast float %7002, %6953
  %7004 = fadd fast float %6996, %6973
  %7005 = fmul fast float %7004, %6954
  %7006 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %44, float %7003, float %7005, float undef, float undef, i32 0, i32 0, i32 undef, float %6958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7007 = extractvalue %dx.types.ResRet.f32 %7006, 0
  %7008 = fmul fast float %7007, %6975
  %7009 = fadd fast float %6987, %6972
  %7010 = fmul fast float %7009, %6953
  %7011 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %44, float %7010, float %7005, float undef, float undef, i32 0, i32 0, i32 undef, float %6958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7012 = extractvalue %dx.types.ResRet.f32 %7011, 0
  %7013 = fmul fast float %7012, %6976
  %7014 = fadd fast float %7001, %6973
  %7015 = fmul fast float %7014, %6954
  %7016 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %44, float %7003, float %7015, float undef, float undef, i32 0, i32 0, i32 undef, float %6958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7017 = extractvalue %dx.types.ResRet.f32 %7016, 0
  %7018 = fmul fast float %7017, %6975
  %7019 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %44, float %7010, float %7015, float undef, float undef, i32 0, i32 0, i32 undef, float %6958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7020 = extractvalue %dx.types.ResRet.f32 %7019, 0
  %7021 = fmul fast float %7020, %6976
  %7022 = fadd fast float %7021, %7018
  %7023 = fmul fast float %7022, %6990
  %7024 = fadd fast float %7013, %7008
  %7025 = fmul fast float %7024, %6989
  %7026 = fadd fast float %7025, %7023
  %7027 = fmul fast float %7026, 6.250000e-02
  br label %7266

; <label>:7028                                    ; preds = %6960
  %7029 = fmul fast float %261, 0x401921FB60000000
  %7030 = call float @dx.op.unary.f32(i32 13, float %7029)  ; Sin(value)
  %7031 = call float @dx.op.unary.f32(i32 12, float %7029)  ; Cos(value)
  %7032 = fsub fast float -0.000000e+00, %7030
  br label %7033

; <label>:7033                                    ; preds = %7082, %7028
  %7034 = phi float [ 0.000000e+00, %7028 ], [ %7077, %7082 ]
  %7035 = phi float [ 0.000000e+00, %7028 ], [ %7079, %7082 ]
  %7036 = phi i32 [ 0, %7028 ], [ %7083, %7082 ]
  %7037 = mul i32 %7036, 2
  %7038 = add i32 0, %7037
  %7039 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7038
  %7040 = load float, float* %7039, align 4
  %7041 = mul i32 %7036, 2
  %7042 = add i32 1, %7041
  %7043 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7042
  %7044 = load float, float* %7043, align 4
  %7045 = fmul fast float %7040, %7031
  %7046 = call float @dx.op.tertiary.f32(i32 46, float %7044, float %7032, float %7045)  ; FMad(a,b,c)
  %7047 = fmul fast float %7040, %7030
  %7048 = call float @dx.op.tertiary.f32(i32 46, float %7044, float %7031, float %7047)  ; FMad(a,b,c)
  %7049 = fmul fast float %7046, %6956
  %7050 = fmul fast float %7048, %6956
  %7051 = fadd fast float %7049, %6082
  %7052 = fadd fast float %7050, %6086
  %7053 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %43, float %7051, float %7052, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7054 = extractvalue %dx.types.ResRet.f32 %7053, 0
  %7055 = extractvalue %dx.types.ResRet.f32 %7053, 1
  %7056 = extractvalue %dx.types.ResRet.f32 %7053, 2
  %7057 = extractvalue %dx.types.ResRet.f32 %7053, 3
  %7058 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %7054, float* %7058, align 4
  %7059 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %7055, float* %7059, align 4
  %7060 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %7056, float* %7060, align 4
  %7061 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %7057, float* %7061, align 4
  %7062 = fsub fast float %7054, %6958
  %7063 = fcmp fast olt float %7062, 0.000000e+00
  %7064 = select i1 %7063, float 0.000000e+00, float 1.000000e+00
  %7065 = fadd fast float %7064, %7034
  %7066 = fmul fast float %7064, %7062
  %7067 = fadd fast float %7066, %7035
  br label %7068

; <label>:7068                                    ; preds = %7068, %7033
  %7069 = phi i32 [ 1, %7033 ], [ %7080, %7068 ]
  %7070 = phi float [ %7067, %7033 ], [ %7079, %7068 ]
  %7071 = phi float [ %7065, %7033 ], [ %7077, %7068 ]
  %7072 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %7069
  %7073 = load float, float* %7072, align 4, !tbaa !109, !noalias !99
  %7074 = fsub fast float %7073, %6958
  %7075 = fcmp fast olt float %7074, 0.000000e+00
  %7076 = select i1 %7075, float 0.000000e+00, float 1.000000e+00
  %7077 = fadd fast float %7076, %7071
  %7078 = fmul fast float %7076, %7074
  %7079 = fadd fast float %7078, %7070
  %7080 = add nuw nsw i32 %7069, 1
  %7081 = icmp eq i32 %7080, 4
  br i1 %7081, label %7082, label %7068, !llvm.loop !111

; <label>:7082                                    ; preds = %7068
  %7083 = add nuw nsw i32 %7036, 1
  %7084 = icmp eq i32 %7083, 8
  br i1 %7084, label %7085, label %7033, !llvm.loop !112

; <label>:7085                                    ; preds = %7082
  %7086 = fdiv fast float 1.000000e+00, %7077
  %7087 = fmul fast float %7086, %7079
  %7088 = fdiv fast float 1.000000e+00, %6958
  %7089 = fmul fast float %7087, %7088
  %7090 = call float @dx.op.unary.f32(i32 7, float %7089)  ; Saturate(value)
  %7091 = call float @dx.op.binary.f32(i32 35, float %7090, float 0.000000e+00)  ; FMax(a,b)
  %7092 = fmul fast float %7077, 3.125000e-02
  %7093 = call float @dx.op.unary.f32(i32 7, float %7092)  ; Saturate(value)
  %7094 = fmul fast float %7093, 2.000000e+00
  %7095 = fadd fast float %7094, -1.000000e+00
  %7096 = fcmp fast ogt float %7095, 0.000000e+00
  %7097 = fcmp fast olt float %7095, 0.000000e+00
  %7098 = zext i1 %7096 to i32
  %7099 = zext i1 %7097 to i32
  %7100 = sub nsw i32 %7098, %7099
  %7101 = sitofp i32 %7100 to float
  %7102 = fmul fast float %7101, %7095
  %7103 = fsub fast float 1.000000e+00, %7102
  %7104 = fmul fast float %7103, %7103
  %7105 = fmul fast float %7104, %7103
  %7106 = fsub fast float %7103, %7105
  %7107 = fmul fast float %7106, %7091
  %7108 = fsub fast float 1.000000e+00, %7105
  %7109 = fsub fast float %7108, %7107
  %7110 = fmul fast float %7101, 5.000000e-01
  %7111 = fmul fast float %7110, %7109
  %7112 = fsub fast float 5.000000e-01, %7111
  br label %7266

; <label>:7113                                    ; preds = %6948
  br i1 %6959, label %7114, label %7181

; <label>:7114                                    ; preds = %7113
  %7115 = extractvalue %dx.types.CBufRet.f32 %6952, 1
  %7116 = extractvalue %dx.types.CBufRet.f32 %6952, 0
  %7117 = fmul fast float %7116, %6082
  %7118 = fmul fast float %7115, %6086
  %7119 = fadd fast float %7117, 5.000000e-01
  %7120 = call float @dx.op.unary.f32(i32 27, float %7119)  ; Round_ni(value)
  %7121 = fadd fast float %7118, 5.000000e-01
  %7122 = call float @dx.op.unary.f32(i32 27, float %7121)  ; Round_ni(value)
  %7123 = fsub fast float %7119, %7120
  %7124 = fsub fast float %7121, %7122
  %7125 = fadd fast float %7120, -5.000000e-01
  %7126 = fadd fast float %7122, -5.000000e-01
  %7127 = fmul fast float %7123, 2.000000e+00
  %7128 = fsub fast float 3.000000e+00, %7127
  %7129 = fadd fast float %7127, 1.000000e+00
  %7130 = fsub fast float 2.000000e+00, %7123
  %7131 = bitcast float %7128 to i32
  %7132 = sub nsw i32 2129859010, %7131
  %7133 = bitcast i32 %7132 to float
  %7134 = fmul fast float %7133, %7130
  %7135 = fadd fast float %7134, -1.000000e+00
  %7136 = bitcast float %7129 to i32
  %7137 = sub nsw i32 2129859010, %7136
  %7138 = bitcast i32 %7137 to float
  %7139 = fmul fast float %7138, %7123
  %7140 = fadd fast float %7139, 1.000000e+00
  %7141 = fmul fast float %7124, 2.000000e+00
  %7142 = fsub fast float 3.000000e+00, %7141
  %7143 = fadd fast float %7141, 1.000000e+00
  %7144 = fsub fast float 2.000000e+00, %7124
  %7145 = bitcast float %7142 to i32
  %7146 = sub nsw i32 2129859010, %7145
  %7147 = bitcast i32 %7146 to float
  %7148 = fmul fast float %7147, %7144
  %7149 = fadd fast float %7148, -1.000000e+00
  %7150 = bitcast float %7143 to i32
  %7151 = sub nsw i32 2129859010, %7150
  %7152 = bitcast i32 %7151 to float
  %7153 = fmul fast float %7152, %7124
  %7154 = fadd fast float %7153, 1.000000e+00
  %7155 = fadd fast float %7135, %7125
  %7156 = fmul fast float %7155, %6953
  %7157 = fadd fast float %7149, %7126
  %7158 = fmul fast float %7157, %6954
  %7159 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7156, float %7158, float undef, float undef, i32 0, i32 0, i32 undef, float %6958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7160 = extractvalue %dx.types.ResRet.f32 %7159, 0
  %7161 = fmul fast float %7160, %7128
  %7162 = fadd fast float %7140, %7125
  %7163 = fmul fast float %7162, %6953
  %7164 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7163, float %7158, float undef, float undef, i32 0, i32 0, i32 undef, float %6958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7165 = extractvalue %dx.types.ResRet.f32 %7164, 0
  %7166 = fmul fast float %7165, %7129
  %7167 = fadd fast float %7154, %7126
  %7168 = fmul fast float %7167, %6954
  %7169 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7156, float %7168, float undef, float undef, i32 0, i32 0, i32 undef, float %6958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7170 = extractvalue %dx.types.ResRet.f32 %7169, 0
  %7171 = fmul fast float %7170, %7128
  %7172 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7163, float %7168, float undef, float undef, i32 0, i32 0, i32 undef, float %6958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7173 = extractvalue %dx.types.ResRet.f32 %7172, 0
  %7174 = fmul fast float %7173, %7129
  %7175 = fadd fast float %7174, %7171
  %7176 = fmul fast float %7175, %7143
  %7177 = fadd fast float %7166, %7161
  %7178 = fmul fast float %7177, %7142
  %7179 = fadd fast float %7178, %7176
  %7180 = fmul fast float %7179, 6.250000e-02
  br label %7266

; <label>:7181                                    ; preds = %7113
  %7182 = fmul fast float %261, 0x401921FB60000000
  %7183 = call float @dx.op.unary.f32(i32 13, float %7182)  ; Sin(value)
  %7184 = call float @dx.op.unary.f32(i32 12, float %7182)  ; Cos(value)
  %7185 = fsub fast float -0.000000e+00, %7183
  br label %7186

; <label>:7186                                    ; preds = %7235, %7181
  %7187 = phi float [ 0.000000e+00, %7181 ], [ %7230, %7235 ]
  %7188 = phi float [ 0.000000e+00, %7181 ], [ %7232, %7235 ]
  %7189 = phi i32 [ 0, %7181 ], [ %7236, %7235 ]
  %7190 = mul i32 %7189, 2
  %7191 = add i32 0, %7190
  %7192 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7191
  %7193 = load float, float* %7192, align 4
  %7194 = mul i32 %7189, 2
  %7195 = add i32 1, %7194
  %7196 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7195
  %7197 = load float, float* %7196, align 4
  %7198 = fmul fast float %7193, %7184
  %7199 = call float @dx.op.tertiary.f32(i32 46, float %7197, float %7185, float %7198)  ; FMad(a,b,c)
  %7200 = fmul fast float %7193, %7183
  %7201 = call float @dx.op.tertiary.f32(i32 46, float %7197, float %7184, float %7200)  ; FMad(a,b,c)
  %7202 = fmul fast float %7199, %6956
  %7203 = fmul fast float %7201, %6956
  %7204 = fadd fast float %7202, %6082
  %7205 = fadd fast float %7203, %6086
  %7206 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %43, float %7204, float %7205, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7207 = extractvalue %dx.types.ResRet.f32 %7206, 0
  %7208 = extractvalue %dx.types.ResRet.f32 %7206, 1
  %7209 = extractvalue %dx.types.ResRet.f32 %7206, 2
  %7210 = extractvalue %dx.types.ResRet.f32 %7206, 3
  %7211 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %7207, float* %7211, align 4
  %7212 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %7208, float* %7212, align 4
  %7213 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %7209, float* %7213, align 4
  %7214 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %7210, float* %7214, align 4
  %7215 = fsub fast float %7207, %6958
  %7216 = fcmp fast olt float %7215, 0.000000e+00
  %7217 = select i1 %7216, float 0.000000e+00, float 1.000000e+00
  %7218 = fadd fast float %7217, %7187
  %7219 = fmul fast float %7217, %7215
  %7220 = fadd fast float %7219, %7188
  br label %7221

; <label>:7221                                    ; preds = %7221, %7186
  %7222 = phi i32 [ 1, %7186 ], [ %7233, %7221 ]
  %7223 = phi float [ %7220, %7186 ], [ %7232, %7221 ]
  %7224 = phi float [ %7218, %7186 ], [ %7230, %7221 ]
  %7225 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %7222
  %7226 = load float, float* %7225, align 4, !tbaa !109, !noalias !99
  %7227 = fsub fast float %7226, %6958
  %7228 = fcmp fast olt float %7227, 0.000000e+00
  %7229 = select i1 %7228, float 0.000000e+00, float 1.000000e+00
  %7230 = fadd fast float %7229, %7224
  %7231 = fmul fast float %7229, %7227
  %7232 = fadd fast float %7231, %7223
  %7233 = add nuw nsw i32 %7222, 1
  %7234 = icmp eq i32 %7233, 4
  br i1 %7234, label %7235, label %7221, !llvm.loop !111

; <label>:7235                                    ; preds = %7221
  %7236 = add nuw nsw i32 %7189, 1
  %7237 = icmp eq i32 %7236, 8
  br i1 %7237, label %7238, label %7186, !llvm.loop !112

; <label>:7238                                    ; preds = %7235
  %7239 = fdiv fast float 1.000000e+00, %7230
  %7240 = fmul fast float %7239, %7232
  %7241 = fdiv fast float 1.000000e+00, %6958
  %7242 = fmul fast float %7240, %7241
  %7243 = call float @dx.op.unary.f32(i32 7, float %7242)  ; Saturate(value)
  %7244 = call float @dx.op.binary.f32(i32 35, float %7243, float 0.000000e+00)  ; FMax(a,b)
  %7245 = fmul fast float %7230, 3.125000e-02
  %7246 = call float @dx.op.unary.f32(i32 7, float %7245)  ; Saturate(value)
  %7247 = fmul fast float %7246, 2.000000e+00
  %7248 = fadd fast float %7247, -1.000000e+00
  %7249 = fcmp fast ogt float %7248, 0.000000e+00
  %7250 = fcmp fast olt float %7248, 0.000000e+00
  %7251 = zext i1 %7249 to i32
  %7252 = zext i1 %7250 to i32
  %7253 = sub nsw i32 %7251, %7252
  %7254 = sitofp i32 %7253 to float
  %7255 = fmul fast float %7254, %7248
  %7256 = fsub fast float 1.000000e+00, %7255
  %7257 = fmul fast float %7256, %7256
  %7258 = fmul fast float %7257, %7256
  %7259 = fsub fast float %7256, %7258
  %7260 = fmul fast float %7259, %7244
  %7261 = fsub fast float 1.000000e+00, %7258
  %7262 = fsub fast float %7261, %7260
  %7263 = fmul fast float %7254, 5.000000e-01
  %7264 = fmul fast float %7263, %7262
  %7265 = fsub fast float 5.000000e-01, %7264
  br label %7266

; <label>:7266                                    ; preds = %7238, %7114, %7085, %6961, %6945
  %7267 = phi float [ 1.000000e+00, %6945 ], [ %7027, %6961 ], [ %7112, %7085 ], [ %7180, %7114 ], [ %7265, %7238 ]
  %7268 = fsub fast float %6779, %6612
  %7269 = fmul fast float %7268, %6179
  %7270 = fadd fast float %7269, %6612
  %7271 = fsub fast float %6946, %7270
  %7272 = fmul fast float %7271, %6178
  %7273 = fadd fast float %7272, %7270
  %7274 = fsub fast float %7267, %7273
  %7275 = fmul fast float %7274, %6206
  %7276 = fadd fast float %7275, %7273
  %7277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7278 = extractvalue %dx.types.CBufRet.f32 %7277, 2
  %7279 = fcmp fast ogt float %7278, 0.000000e+00
  br i1 %7279, label %7280, label %7320, !dx.controlflow.hints !116

; <label>:7280                                    ; preds = %7266
  %7281 = fcmp fast ugt float %7278, 0.000000e+00
  br i1 %7281, label %7282, label %7317

; <label>:7282                                    ; preds = %7280
  %7283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7284 = extractvalue %dx.types.CBufRet.f32 %7283, 0
  %7285 = extractvalue %dx.types.CBufRet.f32 %7283, 1
  %7286 = extractvalue %dx.types.CBufRet.f32 %7283, 2
  %7287 = extractvalue %dx.types.CBufRet.f32 %7283, 3
  %7288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7289 = extractvalue %dx.types.CBufRet.f32 %7288, 0
  %7290 = extractvalue %dx.types.CBufRet.f32 %7288, 1
  %7291 = extractvalue %dx.types.CBufRet.f32 %7288, 2
  %7292 = extractvalue %dx.types.CBufRet.f32 %7288, 3
  %7293 = extractvalue %dx.types.CBufRet.f32 %7277, 0
  %7294 = extractvalue %dx.types.CBufRet.f32 %7277, 1
  %7295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7296 = extractvalue %dx.types.CBufRet.f32 %7295, 0
  %7297 = extractvalue %dx.types.CBufRet.f32 %7295, 1
  %7298 = extractvalue %dx.types.CBufRet.f32 %7295, 2
  %7299 = fadd fast float %7296, %6059
  %7300 = fadd fast float %7297, %6060
  %7301 = fadd fast float %7298, %6061
  %7302 = fmul fast float %7299, %7284
  %7303 = call float @dx.op.tertiary.f32(i32 46, float %7285, float %7300, float %7302)  ; FMad(a,b,c)
  %7304 = call float @dx.op.tertiary.f32(i32 46, float %7286, float %7301, float %7303)  ; FMad(a,b,c)
  %7305 = fadd fast float %7304, %7287
  %7306 = fmul fast float %7299, %7289
  %7307 = call float @dx.op.tertiary.f32(i32 46, float %7290, float %7300, float %7306)  ; FMad(a,b,c)
  %7308 = call float @dx.op.tertiary.f32(i32 46, float %7291, float %7301, float %7307)  ; FMad(a,b,c)
  %7309 = fadd fast float %7308, %7292
  %7310 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %39, float %7305, float %7309, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7311 = extractvalue %dx.types.ResRet.f32 %7310, 0
  %7312 = fmul fast float %7311, %7294
  %7313 = fadd fast float %7312, %7293
  %7314 = call float @dx.op.unary.f32(i32 7, float %7313)  ; Saturate(value)
  %7315 = fmul fast float %7314, %7278
  %7316 = fsub fast float 1.000000e+00, %7315
  br label %7317

; <label>:7317                                    ; preds = %7282, %7280
  %7318 = phi float [ %7316, %7282 ], [ 1.000000e+00, %7280 ]
  %7319 = fmul fast float %7318, %7276
  br label %7320

; <label>:7320                                    ; preds = %7317, %7266, %6039
  %7321 = phi float [ 1.000000e+00, %6039 ], [ %7319, %7317 ], [ %7276, %7266 ]
  %7322 = call float @dx.op.binary.f32(i32 36, float %7321, float %7321)  ; FMin(a,b)
  %7323 = call float @dx.op.binary.f32(i32 36, float %7321, float %7322)  ; FMin(a,b)
  %7324 = fcmp fast ogt float %7323, 0.000000e+00
  br i1 %7324, label %7325, label %7491, !dx.controlflow.hints !117

; <label>:7325                                    ; preds = %7320
  %7326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7327 = extractvalue %dx.types.CBufRet.f32 %7326, 0
  %7328 = extractvalue %dx.types.CBufRet.f32 %7326, 1
  %7329 = extractvalue %dx.types.CBufRet.f32 %7326, 2
  %7330 = extractvalue %dx.types.CBufRet.f32 %7326, 3
  %7331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7332 = extractvalue %dx.types.CBufRet.f32 %7331, 0
  %7333 = extractvalue %dx.types.CBufRet.f32 %7331, 1
  %7334 = extractvalue %dx.types.CBufRet.f32 %7331, 2
  %7335 = extractvalue %dx.types.CBufRet.f32 %7331, 3
  %7336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7337 = extractvalue %dx.types.CBufRet.f32 %7336, 0
  %7338 = extractvalue %dx.types.CBufRet.f32 %7336, 1
  %7339 = extractvalue %dx.types.CBufRet.f32 %7336, 2
  %7340 = extractvalue %dx.types.CBufRet.f32 %7336, 3
  %7341 = fmul fast float %7327, %6059
  %7342 = call float @dx.op.tertiary.f32(i32 46, float %6060, float %7328, float %7341)  ; FMad(a,b,c)
  %7343 = call float @dx.op.tertiary.f32(i32 46, float %6061, float %7329, float %7342)  ; FMad(a,b,c)
  %7344 = fadd fast float %7343, %7330
  %7345 = fmul fast float %7332, %6059
  %7346 = call float @dx.op.tertiary.f32(i32 46, float %6060, float %7333, float %7345)  ; FMad(a,b,c)
  %7347 = call float @dx.op.tertiary.f32(i32 46, float %6061, float %7334, float %7346)  ; FMad(a,b,c)
  %7348 = fadd fast float %7347, %7335
  %7349 = fmul fast float %7337, %6059
  %7350 = call float @dx.op.tertiary.f32(i32 46, float %6060, float %7338, float %7349)  ; FMad(a,b,c)
  %7351 = call float @dx.op.tertiary.f32(i32 46, float %6061, float %7339, float %7350)  ; FMad(a,b,c)
  %7352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7353 = extractvalue %dx.types.CBufRet.f32 %7352, 0
  %7354 = extractvalue %dx.types.CBufRet.f32 %7352, 1
  %7355 = extractvalue %dx.types.CBufRet.f32 %7352, 3
  %7356 = fmul fast float %7355, %7344
  %7357 = fmul fast float %7355, %7348
  %7358 = fadd fast float %7356, %7353
  %7359 = fadd fast float %7357, %7354
  %7360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7361 = extractvalue %dx.types.CBufRet.f32 %7360, 0
  %7362 = extractvalue %dx.types.CBufRet.f32 %7360, 1
  %7363 = fsub fast float %7358, %7361
  %7364 = fsub fast float %7359, %7362
  %7365 = fcmp fast olt float %7363, 0.000000e+00
  %7366 = fcmp fast olt float %7364, 0.000000e+00
  %7367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7368 = extractvalue %dx.types.CBufRet.f32 %7367, 0
  %7369 = extractvalue %dx.types.CBufRet.f32 %7367, 1
  %7370 = extractvalue %dx.types.CBufRet.f32 %7367, 2
  %7371 = extractvalue %dx.types.CBufRet.f32 %7367, 3
  %7372 = select i1 %7365, float %7368, float %7370
  %7373 = select i1 %7366, float %7369, float %7371
  %7374 = fmul fast float %7372, %7363
  %7375 = fmul fast float %7373, %7364
  %7376 = call float @dx.op.unary.f32(i32 6, float %7374)  ; FAbs(value)
  %7377 = call float @dx.op.unary.f32(i32 6, float %7375)  ; FAbs(value)
  %7378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7379 = extractvalue %dx.types.CBufRet.f32 %7378, 0
  %7380 = call float @dx.op.binary.f32(i32 35, float %7376, float %7377)  ; FMax(a,b)
  %7381 = fsub fast float %7379, %7380
  %7382 = call float @dx.op.unary.f32(i32 7, float %7381)  ; Saturate(value)
  %7383 = fcmp fast ogt float %7382, 0.000000e+00
  br i1 %7383, label %7384, label %7425, !dx.controlflow.hints !118

; <label>:7384                                    ; preds = %7325
  %7385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %42, float %7358, float %7359, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7386 = extractvalue %dx.types.ResRet.f32 %7385, 1
  %7387 = fcmp fast ogt float %7386, 0.000000e+00
  br i1 %7387, label %7388, label %7420

; <label>:7388                                    ; preds = %7384
  %7389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %7358, float %7359, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7390 = extractvalue %dx.types.ResRet.f32 %7389, 0
  %7391 = extractvalue %dx.types.ResRet.f32 %7389, 1
  %7392 = extractvalue %dx.types.ResRet.f32 %7389, 2
  %7393 = extractvalue %dx.types.ResRet.f32 %7389, 3
  %7394 = fsub fast float 1.000000e+00, %7340
  %7395 = fsub fast float %7394, %7351
  %7396 = fmul fast float %7395, 0x400921FB60000000
  %7397 = fadd fast float %7396, 0x3FF921FB60000000
  %7398 = call float @dx.op.unary.f32(i32 13, float %7397)  ; Sin(value)
  %7399 = fadd fast float %7398, -1.000000e+00
  %7400 = fmul fast float %7399, 0x3FD45F3060000000
  %7401 = fmul fast float %7395, 0x401921FB60000000
  %7402 = fadd fast float %7401, 0x400921FB60000000
  %7403 = call float @dx.op.unary.f32(i32 13, float %7402)  ; Sin(value)
  %7404 = fadd fast float %7403, 0x3E7777A5C0000000
  %7405 = fmul fast float %7404, 0x3FC45F3060000000
  %7406 = fmul fast float %7395, 0x4022D97C80000000
  %7407 = fadd fast float %7406, 0x4012D97C80000000
  %7408 = call float @dx.op.unary.f32(i32 13, float %7407)  ; Sin(value)
  %7409 = fadd fast float %7408, 1.000000e+00
  %7410 = fmul fast float %7409, 0x3FBB2995E0000000
  %7411 = fmul fast float %7395, 0x402921FB60000000
  %7412 = fadd fast float %7411, 0x401921FB60000000
  %7413 = call float @dx.op.unary.f32(i32 13, float %7412)  ; Sin(value)
  %7414 = fadd fast float %7413, 0xBE8777A5C0000000
  %7415 = fmul fast float %7414, 0x3FB45F3060000000
  %7416 = call float @dx.op.dot4.f32(i32 56, float %7390, float %7391, float %7392, float %7393, float %7400, float %7405, float %7410, float %7415)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7417 = fmul fast float %7416, 0xBFF7154760000000
  %7418 = call float @dx.op.unary.f32(i32 21, float %7417)  ; Exp(value)
  %7419 = call float @dx.op.unary.f32(i32 7, float %7418)  ; Saturate(value)
  br label %7420

; <label>:7420                                    ; preds = %7388, %7384
  %7421 = phi float [ %7419, %7388 ], [ 1.000000e+00, %7384 ]
  %7422 = fadd fast float %7421, -1.000000e+00
  %7423 = fmul fast float %7422, %7382
  %7424 = fadd fast float %7423, 1.000000e+00
  br label %7425

; <label>:7425                                    ; preds = %7420, %7325
  %7426 = phi float [ %7424, %7420 ], [ 1.000000e+00, %7325 ]
  %7427 = fmul fast float %7426, %7321
  %7428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7429 = extractvalue %dx.types.CBufRet.f32 %7428, 0
  %7430 = extractvalue %dx.types.CBufRet.f32 %7428, 1
  %7431 = extractvalue %dx.types.CBufRet.f32 %7428, 2
  %7432 = fadd fast float %7429, %189
  %7433 = fadd fast float %7430, %190
  %7434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7435 = extractvalue %dx.types.CBufRet.f32 %7434, 1
  %7436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7437 = extractvalue %dx.types.CBufRet.f32 %7436, 0
  %7438 = extractvalue %dx.types.CBufRet.f32 %7436, 1
  %7439 = extractvalue %dx.types.CBufRet.f32 %7436, 2
  %7440 = fsub fast float -0.000000e+00, %7432
  %7441 = fsub fast float -0.000000e+00, %7433
  %7442 = fsub fast float -0.000000e+00, %191
  %7443 = fsub fast float %7442, %7431
  %7444 = fadd fast float %7443, %7435
  %7445 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7440, float %7441, float %7444)  ; Dot3(ax,ay,az,bx,by,bz)
  %7446 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7437, float %7438, float %7439)  ; Dot3(ax,ay,az,bx,by,bz)
  %7447 = fdiv fast float 1.000000e+00, %7446
  %7448 = fmul fast float %7447, %7445
  %7449 = fmul fast float %7437, %7448
  %7450 = fmul fast float %7438, %7448
  %7451 = fadd fast float %7449, %7432
  %7452 = fadd fast float %7450, %7433
  %7453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7454 = extractvalue %dx.types.CBufRet.f32 %7453, 0
  %7455 = extractvalue %dx.types.CBufRet.f32 %7453, 1
  %7456 = fsub fast float %7451, %7454
  %7457 = fsub fast float %7452, %7455
  %7458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7459 = extractvalue %dx.types.CBufRet.f32 %7458, 2
  %7460 = extractvalue %dx.types.CBufRet.f32 %7458, 3
  %7461 = fmul fast float %7456, %7459
  %7462 = fmul fast float %7457, %7460
  %7463 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7464 = extractvalue %dx.types.CBufRet.i32 %7463, 3
  %7465 = icmp eq i32 %7464, 0
  br i1 %7465, label %7471, label %7466

; <label>:7466                                    ; preds = %7425
  %7467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %41, float %7461, float %7462, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7468 = extractvalue %dx.types.ResRet.f32 %7467, 0
  %7469 = extractvalue %dx.types.ResRet.f32 %7467, 1
  %7470 = extractvalue %dx.types.ResRet.f32 %7467, 2
  br label %7476

; <label>:7471                                    ; preds = %7425
  %7472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7461, float %7462, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7473 = extractvalue %dx.types.ResRet.f32 %7472, 0
  %7474 = extractvalue %dx.types.ResRet.f32 %7472, 1
  %7475 = extractvalue %dx.types.ResRet.f32 %7472, 2
  br label %7476

; <label>:7476                                    ; preds = %7471, %7466
  %7477 = phi float [ %7468, %7466 ], [ %7473, %7471 ]
  %7478 = phi float [ %7469, %7466 ], [ %7474, %7471 ]
  %7479 = phi float [ %7470, %7466 ], [ %7475, %7471 ]
  %7480 = extractvalue %dx.types.CBufRet.f32 %7434, 2
  %7481 = fmul fast float %7480, %7477
  %7482 = extractvalue %dx.types.CBufRet.f32 %7434, 0
  %7483 = fsub fast float %7448, %7482
  %7484 = fsub fast float %7483, %7481
  %7485 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7484)  ; FMax(a,b)
  %7486 = fmul fast float %7485, %7478
  %7487 = call float @dx.op.binary.f32(i32 36, float %7479, float %7486)  ; FMin(a,b)
  %7488 = fmul fast float %7487, 0xBFF7154760000000
  %7489 = call float @dx.op.unary.f32(i32 21, float %7488)  ; Exp(value)
  %7490 = fmul fast float %7427, %7489
  br label %7491

; <label>:7491                                    ; preds = %7476, %7320
  %7492 = phi float [ %7490, %7476 ], [ %7321, %7320 ]
  %7493 = call float @dx.op.binary.f32(i32 36, float %7492, float %7492)  ; FMin(a,b)
  %7494 = call float @dx.op.binary.f32(i32 36, float %7492, float %7493)  ; FMin(a,b)
  %7495 = fcmp fast ogt float %7494, 0.000000e+00
  br i1 %7495, label %7496, label %7679, !dx.controlflow.hints !119

; <label>:7496                                    ; preds = %7491
  %7497 = fmul fast float %7492, %6051
  %7498 = fmul fast float %7492, %6052
  %7499 = fmul fast float %7492, %6053
  %7500 = fsub fast float %6040, %5299
  %7501 = fsub fast float %6041, %5298
  %7502 = fsub fast float %6042, %5297
  %7503 = call float @dx.op.dot3.f32(i32 55, float %7500, float %7501, float %7502, float %7500, float %7501, float %7502)  ; Dot3(ax,ay,az,bx,by,bz)
  %7504 = call float @dx.op.unary.f32(i32 25, float %7503)  ; Rsqrt(value)
  %7505 = fmul fast float %7504, %7500
  %7506 = fmul fast float %7504, %7501
  %7507 = fmul fast float %7504, %7502
  %7508 = call float @dx.op.dot3.f32(i32 55, float %6040, float %6041, float %6042, float %5303, float %5304, float %5305)  ; Dot3(ax,ay,az,bx,by,bz)
  %7509 = call float @dx.op.dot3.f32(i32 55, float %5296, float %5295, float %5294, float %7505, float %7506, float %7507)  ; Dot3(ax,ay,az,bx,by,bz)
  %7510 = call float @dx.op.unary.f32(i32 7, float %7508)  ; Saturate(value)
  %7511 = fmul fast float %7510, %7510
  %7512 = fmul fast float %7511, %6035
  %7513 = call float @dx.op.unary.f32(i32 7, float %7512)  ; Saturate(value)
  %7514 = fmul fast float %7513, %7510
  %7515 = call float @dx.op.dot3.f32(i32 55, float %5303, float %5304, float %5305, float %7505, float %7506, float %7507)  ; Dot3(ax,ay,az,bx,by,bz)
  %7516 = fmul fast float %7515, %7515
  %7517 = call float @dx.op.unary.f32(i32 6, float %7508)  ; FAbs(value)
  %7518 = fsub fast float 1.000000e+00, %5331
  %7519 = fmul fast float %5313, %5313
  %7520 = fmul fast float %7519, %7518
  %7521 = fadd fast float %7520, %5331
  %7522 = bitcast float %7521 to i32
  %7523 = ashr i32 %7522, 1
  %7524 = add nsw i32 %7523, 532487669
  %7525 = bitcast i32 %7524 to float
  %7526 = fadd fast float %7525, %5313
  %7527 = fmul fast float %5331, %7516
  %7528 = fsub fast float 1.000000e+00, %7516
  %7529 = fadd fast float %7528, %7527
  %7530 = fmul fast float %7517, %7517
  %7531 = fmul fast float %7530, %7518
  %7532 = fadd fast float %7531, %5331
  %7533 = bitcast float %7532 to i32
  %7534 = ashr i32 %7533, 1
  %7535 = add nsw i32 %7534, 532487669
  %7536 = bitcast i32 %7535 to float
  %7537 = fadd fast float %7536, %7517
  %7538 = fmul fast float %7529, %7529
  %7539 = fmul fast float %7538, %7526
  %7540 = fmul fast float %7539, %7537
  %7541 = fdiv fast float 0x3FF0A00000000000, %7540
  %7542 = fmul fast float %7541, %5331
  %7543 = fmul fast float %5437, 0x3FF9999980000000
  %7544 = fsub fast float 5.000000e+00, %7543
  %7545 = call float @dx.op.unary.f32(i32 6, float %7509)  ; FAbs(value)
  %7546 = fsub fast float 1.000000e+00, %7545
  %7547 = fmul fast float %5437, 0x41D9660740000000
  %7548 = fadd fast float %7547, 0xC1EFBF8940000000
  %7549 = bitcast float %7546 to i32
  %7550 = sitofp i32 %7549 to float
  %7551 = fmul fast float %7550, %7544
  %7552 = fadd fast float %7548, %7551
  %7553 = fptosi float %7552 to i32
  %7554 = bitcast i32 %7553 to float
  %7555 = fsub fast float 1.000000e+00, %5306
  %7556 = fsub fast float 1.000000e+00, %5307
  %7557 = fsub fast float 1.000000e+00, %5311
  %7558 = fmul fast float %7554, %7555
  %7559 = fmul fast float %7554, %7556
  %7560 = fmul fast float %7554, %7557
  %7561 = fadd fast float %7558, %5306
  %7562 = fadd fast float %7559, %5307
  %7563 = fadd fast float %7560, %5311
  br i1 %5460, label %7564, label %7587

; <label>:7564                                    ; preds = %7496
  %7565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %4394, float %7545, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7566 = extractvalue %dx.types.ResRet.f32 %7565, 0
  %7567 = extractvalue %dx.types.ResRet.f32 %7565, 1
  %7568 = extractvalue %dx.types.ResRet.f32 %7565, 2
  %7569 = fadd fast float %7566, -5.000000e-01
  %7570 = fadd fast float %7567, -5.000000e-01
  %7571 = fadd fast float %7568, -5.000000e-01
  %7572 = fmul fast float %5306, 4.000000e+00
  %7573 = fmul fast float %7572, %7555
  %7574 = fmul fast float %7573, %7569
  %7575 = fmul fast float %5307, 4.000000e+00
  %7576 = fmul fast float %7575, %7556
  %7577 = fmul fast float %7576, %7570
  %7578 = fmul fast float %5311, 4.000000e+00
  %7579 = fmul fast float %7578, %7557
  %7580 = fmul fast float %7579, %7571
  %7581 = fadd fast float %7574, %7561
  %7582 = fadd fast float %7577, %7562
  %7583 = fadd fast float %7580, %7563
  %7584 = call float @dx.op.unary.f32(i32 7, float %7581)  ; Saturate(value)
  %7585 = call float @dx.op.unary.f32(i32 7, float %7582)  ; Saturate(value)
  %7586 = call float @dx.op.unary.f32(i32 7, float %7583)  ; Saturate(value)
  br label %7587

; <label>:7587                                    ; preds = %7564, %7496
  %7588 = phi float [ %7584, %7564 ], [ %7561, %7496 ]
  %7589 = phi float [ %7585, %7564 ], [ %7562, %7496 ]
  %7590 = phi float [ %7586, %7564 ], [ %7563, %7496 ]
  %7591 = fmul fast float %7508, 9.843750e-01
  %7592 = fadd fast float %7591, 7.812500e-03
  %7593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %7592, float %5441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7594 = extractvalue %dx.types.ResRet.f32 %7593, 0
  %7595 = extractvalue %dx.types.ResRet.f32 %7593, 1
  %7596 = extractvalue %dx.types.ResRet.f32 %7593, 2
  %7597 = extractvalue %dx.types.ResRet.f32 %7593, 3
  %7598 = fsub fast float %7596, %7594
  %7599 = fsub fast float %7597, %7595
  %7600 = fmul fast float %7598, %5447
  %7601 = fmul fast float %7599, %5447
  %7602 = fadd fast float %7600, %7594
  %7603 = fadd fast float %7601, %7595
  %7604 = fmul fast float %7602, %5306
  %7605 = fmul fast float %7602, %5307
  %7606 = fmul fast float %7602, %5311
  %7607 = fadd fast float %7604, %7603
  %7608 = fadd fast float %7605, %7603
  %7609 = fadd fast float %7606, %7603
  br i1 %5460, label %7610, label %7633

; <label>:7610                                    ; preds = %7587
  %7611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %4394, float %7508, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7612 = extractvalue %dx.types.ResRet.f32 %7611, 0
  %7613 = extractvalue %dx.types.ResRet.f32 %7611, 1
  %7614 = extractvalue %dx.types.ResRet.f32 %7611, 2
  %7615 = fadd fast float %7612, -5.000000e-01
  %7616 = fadd fast float %7613, -5.000000e-01
  %7617 = fadd fast float %7614, -5.000000e-01
  %7618 = fmul fast float %5306, 4.000000e+00
  %7619 = fmul fast float %7618, %7555
  %7620 = fmul fast float %7619, %7615
  %7621 = fmul fast float %5307, 4.000000e+00
  %7622 = fmul fast float %7621, %7556
  %7623 = fmul fast float %7622, %7616
  %7624 = fmul fast float %5311, 4.000000e+00
  %7625 = fmul fast float %7624, %7557
  %7626 = fmul fast float %7625, %7617
  %7627 = fadd fast float %7620, %7607
  %7628 = fadd fast float %7623, %7608
  %7629 = fadd fast float %7626, %7609
  %7630 = call float @dx.op.unary.f32(i32 7, float %7627)  ; Saturate(value)
  %7631 = call float @dx.op.unary.f32(i32 7, float %7628)  ; Saturate(value)
  %7632 = call float @dx.op.unary.f32(i32 7, float %7629)  ; Saturate(value)
  br label %7633

; <label>:7633                                    ; preds = %7610, %7587
  %7634 = phi float [ %7630, %7610 ], [ %7607, %7587 ]
  %7635 = phi float [ %7631, %7610 ], [ %7608, %7587 ]
  %7636 = phi float [ %7632, %7610 ], [ %7609, %7587 ]
  %7637 = call float @dx.op.binary.f32(i32 35, float %7635, float %7636)  ; FMax(a,b)
  %7638 = call float @dx.op.binary.f32(i32 35, float %7634, float %7637)  ; FMax(a,b)
  %7639 = fsub fast float 1.000000e+00, %7638
  %7640 = fmul fast float %7588, %7542
  %7641 = fmul fast float %7589, %7542
  %7642 = fmul fast float %7590, %7542
  %7643 = fsub fast float 1.000000e+00, %7509
  %7644 = bitcast float %7643 to i32
  %7645 = sitofp i32 %7644 to float
  %7646 = fmul fast float %7645, 5.000000e+00
  %7647 = fadd fast float %7646, 0xC1EFBF8940000000
  %7648 = fptosi float %7647 to i32
  %7649 = bitcast i32 %7648 to float
  %7650 = fmul fast float %7649, %4395
  %7651 = fmul fast float %7639, %7650
  %7652 = fmul fast float %7651, %5974
  %7653 = fmul fast float %7651, %5975
  %7654 = fmul fast float %7651, %5976
  %7655 = fadd fast float %7652, %7640
  %7656 = fadd fast float %7653, %7641
  %7657 = fadd fast float %7654, %7642
  %7658 = fmul fast float %7514, %7497
  %7659 = fmul fast float %7658, %7639
  %7660 = fmul fast float %7514, %7498
  %7661 = fmul fast float %7660, %7639
  %7662 = fmul fast float %7514, %7499
  %7663 = fmul fast float %7662, %7639
  %7664 = fmul fast float %7658, %7655
  %7665 = fmul fast float %7660, %7656
  %7666 = fmul fast float %7662, %7657
  %7667 = fadd fast float %7659, %5958
  %7668 = fmul fast float %7667, %4391
  %7669 = fadd fast float %7661, %5959
  %7670 = fmul fast float %7669, %4391
  %7671 = fadd fast float %7663, %5960
  %7672 = fmul fast float %7671, %4391
  %7673 = fadd fast float %7664, %6027
  %7674 = fmul fast float %7673, %4391
  %7675 = fadd fast float %7665, %6030
  %7676 = fmul fast float %7675, %4391
  %7677 = fadd fast float %7666, %6033
  %7678 = fmul fast float %7677, %4391
  br label %7679

; <label>:7679                                    ; preds = %7633, %7491, %5954
  %7680 = phi float [ %6028, %5954 ], [ %6028, %7491 ], [ %7674, %7633 ]
  %7681 = phi float [ %6031, %5954 ], [ %6031, %7491 ], [ %7676, %7633 ]
  %7682 = phi float [ %6034, %5954 ], [ %6034, %7491 ], [ %7678, %7633 ]
  %7683 = phi float [ %6023, %5954 ], [ %6023, %7491 ], [ %7668, %7633 ]
  %7684 = phi float [ %6024, %5954 ], [ %6024, %7491 ], [ %7670, %7633 ]
  %7685 = phi float [ %6025, %5954 ], [ %6025, %7491 ], [ %7672, %7633 ]
  %7686 = fmul fast float %4391, %4391
  %7687 = fmul fast float %7686, %6000
  %7688 = fmul fast float %7686, %6001
  %7689 = fmul fast float %7686, %6002
  %7690 = fadd fast float %7687, 1.000000e+00
  %7691 = fadd fast float %7688, 1.000000e+00
  %7692 = fadd fast float %7689, 1.000000e+00
  %7693 = call float @dx.op.dot3.f32(i32 55, float %7690, float %7691, float %7692, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7694 = fsub fast float 1.000000e+00, %7693
  %7695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7696 = extractvalue %dx.types.CBufRet.f32 %7695, 0
  %7697 = fmul fast float %7696, %6006
  %7698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7699 = extractvalue %dx.types.CBufRet.f32 %7698, 3
  %7700 = fsub fast float 1.000000e+00, %4398
  %7701 = call float @dx.op.unary.f32(i32 7, float %7700)  ; Saturate(value)
  %7702 = fadd fast float %7685, %4397
  %7703 = fmul fast float %7702, %4398
  %7704 = fmul fast float %7701, %7699
  %7705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7706 = extractvalue %dx.types.CBufRet.f32 %7705, 3
  %7707 = fmul fast float %7683, %5300
  %7708 = fmul fast float %7684, %5301
  %7709 = fmul fast float %7685, %5302
  %7710 = fcmp fast ogt float %89, %211
  %7711 = and i1 %7710, %4440
  %7712 = or i1 %4519, %7711
  %7713 = icmp eq i32 %4439, 2
  %7714 = fcmp fast ole float %89, %211
  %7715 = and i1 %7714, %7713
  %7716 = or i1 %7715, %7712
  br i1 %7711, label %7717, label %7974

; <label>:7717                                    ; preds = %7679
  %7718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7719 = extractvalue %dx.types.CBufRet.f32 %7718, 2
  %7720 = extractvalue %dx.types.CBufRet.f32 %7718, 3
  %7721 = fmul fast float %7719, %102
  %7722 = fmul fast float %7720, %103
  %7723 = call float @dx.op.unary.f32(i32 7, float %7721)  ; Saturate(value)
  %7724 = call float @dx.op.unary.f32(i32 7, float %7722)  ; Saturate(value)
  %7725 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %7723, float %7724, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7726 = extractvalue %dx.types.ResRet.f32 %7725, 0
  %7727 = extractvalue %dx.types.ResRet.f32 %7725, 1
  %7728 = extractvalue %dx.types.ResRet.f32 %7725, 2
  %7729 = extractvalue %dx.types.ResRet.f32 %7725, 3
  %7730 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %7723, float %7724, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7731 = extractvalue %dx.types.ResRet.f32 %7730, 0
  %7732 = extractvalue %dx.types.ResRet.f32 %7730, 1
  %7733 = extractvalue %dx.types.ResRet.f32 %7730, 2
  %7734 = extractvalue %dx.types.ResRet.f32 %7730, 3
  %7735 = call float @dx.op.binary.f32(i32 35, float %7727, float %7728)  ; FMax(a,b)
  %7736 = call float @dx.op.binary.f32(i32 35, float %7726, float %7735)  ; FMax(a,b)
  %7737 = call float @dx.op.binary.f32(i32 35, float %7736, float %7729)  ; FMax(a,b)
  %7738 = call float @dx.op.binary.f32(i32 36, float %7732, float %7733)  ; FMin(a,b)
  %7739 = call float @dx.op.binary.f32(i32 36, float %7731, float %7738)  ; FMin(a,b)
  %7740 = call float @dx.op.binary.f32(i32 36, float %7739, float %7734)  ; FMin(a,b)
  %7741 = fmul fast float %7737, 2.550000e+02
  %7742 = fadd fast float %7741, 0x3F70101020000000
  %7743 = fptoui float %7742 to i32
  %7744 = fmul fast float %7740, 2.550000e+02
  %7745 = fadd fast float %7744, 0x3F70101020000000
  %7746 = fptoui float %7745 to i32
  %7747 = icmp ult i32 %7743, %7746
  br i1 %7747, label %7748, label %7916

; <label>:7748                                    ; preds = %7717
  %7749 = fcmp fast ogt float %88, 9.843750e-01
  %7750 = fadd fast float %89, -4.000000e+00
  %7751 = select i1 %7749, float -4.000000e+00, float %7750
  %7752 = call float @dx.op.binary.f32(i32 35, float %7751, float 0.000000e+00)  ; FMax(a,b)
  %7753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7754 = extractvalue %dx.types.CBufRet.f32 %7753, 0
  %7755 = fadd fast float %7754, %7752
  %7756 = extractvalue %dx.types.CBufRet.f32 %7753, 2
  %7757 = fmul fast float %7755, %7756
  %7758 = call float @dx.op.unary.f32(i32 23, float %7757)  ; Log(value)
  %7759 = extractvalue %dx.types.CBufRet.f32 %7753, 3
  %7760 = fmul fast float %7759, %7758
  %7761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7762 = extractvalue %dx.types.CBufRet.f32 %7761, 2
  %7763 = fmul fast float %7760, %7762
  %7764 = call float @dx.op.unary.f32(i32 7, float %7763)  ; Saturate(value)
  %7765 = uitofp i32 %7743 to float
  %7766 = uitofp i32 %7746 to float
  %7767 = fadd fast float %7765, 5.000000e-01
  %7768 = fadd fast float %7766, 5.000000e-01
  %7769 = fmul fast float %7762, %7767
  %7770 = fmul fast float %7762, %7768
  %7771 = fadd fast float %7769, 0x3F0FFB4800000000
  %7772 = fadd fast float %7770, 0xBF0FFB4800000000
  %7773 = call float @dx.op.binary.f32(i32 35, float %7764, float %7771)  ; FMax(a,b)
  %7774 = call float @dx.op.binary.f32(i32 36, float %7773, float %7772)  ; FMin(a,b)
  %7775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7776 = extractvalue %dx.types.CBufRet.f32 %7775, 1
  %7777 = extractvalue %dx.types.CBufRet.f32 %7775, 2
  %7778 = extractvalue %dx.types.CBufRet.f32 %7775, 0
  %7779 = fmul fast float %7776, %7774
  %7780 = fadd fast float %7778, %7779
  %7781 = fadd fast float %7778, %7777
  %7782 = fsub fast float %7776, %7777
  %7783 = fadd fast float %7782, %7778
  %7784 = call float @dx.op.binary.f32(i32 35, float %7780, float %7781)  ; FMax(a,b)
  %7785 = call float @dx.op.binary.f32(i32 36, float %7784, float %7783)  ; FMin(a,b)
  %7786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %7723, float %7724, float %7785, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7787 = extractvalue %dx.types.ResRet.f32 %7786, 0
  %7788 = extractvalue %dx.types.ResRet.f32 %7786, 1
  %7789 = extractvalue %dx.types.ResRet.f32 %7786, 2
  %7790 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7791 = extractvalue %dx.types.CBufRet.i32 %7790, 0
  %7792 = extractvalue %dx.types.CBufRet.i32 %7790, 1
  %7793 = uitofp i32 %7791 to float
  %7794 = uitofp i32 %7792 to float
  %7795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7796 = extractvalue %dx.types.CBufRet.f32 %7795, 0
  %7797 = extractvalue %dx.types.CBufRet.f32 %7795, 1
  %7798 = fmul fast float %7793, %7723
  %7799 = fmul fast float %7794, %7724
  %7800 = fadd fast float %7798, -5.000000e-01
  %7801 = fadd fast float %7799, -5.000000e-01
  %7802 = call float @dx.op.unary.f32(i32 22, float %7800)  ; Frc(value)
  %7803 = call float @dx.op.unary.f32(i32 22, float %7801)  ; Frc(value)
  %7804 = fmul fast float %7802, %7802
  %7805 = fmul fast float %7804, %7802
  %7806 = fsub fast float 3.000000e+00, %7802
  %7807 = fmul fast float %7804, %7806
  %7808 = fmul fast float %7802, 3.000000e+00
  %7809 = fmul fast float %7805, 3.000000e+00
  %7810 = fmul fast float %7804, 6.000000e+00
  %7811 = fsub fast float %7809, %7810
  %7812 = fadd fast float %7811, 4.000000e+00
  %7813 = fmul fast float %7812, 0x3FC5555560000000
  %7814 = fmul fast float %7805, -3.000000e+00
  %7815 = fadd fast float %7804, %7802
  %7816 = fmul fast float %7815, 3.000000e+00
  %7817 = fadd fast float %7814, 1.000000e+00
  %7818 = fadd fast float %7817, %7816
  %7819 = fmul fast float %7805, 0x3FC5555560000000
  %7820 = fmul fast float %7803, %7803
  %7821 = fmul fast float %7820, %7803
  %7822 = fsub fast float 3.000000e+00, %7803
  %7823 = fmul fast float %7820, %7822
  %7824 = fmul fast float %7803, 3.000000e+00
  %7825 = fmul fast float %7821, 3.000000e+00
  %7826 = fmul fast float %7820, 6.000000e+00
  %7827 = fsub fast float %7825, %7826
  %7828 = fadd fast float %7827, 4.000000e+00
  %7829 = fmul fast float %7828, 0x3FC5555560000000
  %7830 = fmul fast float %7821, -3.000000e+00
  %7831 = fadd fast float %7820, %7803
  %7832 = fmul fast float %7831, 3.000000e+00
  %7833 = fadd fast float %7830, 1.000000e+00
  %7834 = fadd fast float %7833, %7832
  %7835 = fmul fast float %7821, 0x3FC5555560000000
  %7836 = fadd fast float %7802, 1.000000e+00
  %7837 = fsub fast float 1.000000e+00, %7808
  %7838 = fadd fast float %7837, %7807
  %7839 = fadd fast float %7838, %7812
  %7840 = fmul fast float %7839, 0x3FC5555560000000
  %7841 = fdiv fast float %7813, %7840
  %7842 = fsub fast float %7836, %7841
  %7843 = fsub fast float 1.000000e+00, %7802
  %7844 = fadd fast float %7818, %7805
  %7845 = fmul fast float %7844, 0x3FC5555560000000
  %7846 = fdiv fast float %7819, %7845
  %7847 = fadd fast float %7843, %7846
  %7848 = fadd fast float %7803, 1.000000e+00
  %7849 = fsub fast float 1.000000e+00, %7824
  %7850 = fadd fast float %7849, %7823
  %7851 = fadd fast float %7850, %7828
  %7852 = fmul fast float %7851, 0x3FC5555560000000
  %7853 = fdiv fast float %7829, %7852
  %7854 = fsub fast float %7848, %7853
  %7855 = fsub fast float 1.000000e+00, %7803
  %7856 = fadd fast float %7834, %7821
  %7857 = fmul fast float %7856, 0x3FC5555560000000
  %7858 = fdiv fast float %7835, %7857
  %7859 = fadd fast float %7858, %7855
  %7860 = fmul fast float %7842, %7796
  %7861 = fsub fast float %7723, %7860
  %7862 = fmul fast float %7847, %7796
  %7863 = fadd fast float %7862, %7723
  %7864 = fmul fast float %7859, %7797
  %7865 = fadd fast float %7864, %7724
  %7866 = fmul fast float %7854, %7797
  %7867 = fsub fast float %7724, %7866
  %7868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %7861, float %7867, float %7785, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7869 = extractvalue %dx.types.ResRet.f32 %7868, 0
  %7870 = extractvalue %dx.types.ResRet.f32 %7868, 1
  %7871 = extractvalue %dx.types.ResRet.f32 %7868, 2
  %7872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %7863, float %7867, float %7785, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7873 = extractvalue %dx.types.ResRet.f32 %7872, 0
  %7874 = extractvalue %dx.types.ResRet.f32 %7872, 1
  %7875 = extractvalue %dx.types.ResRet.f32 %7872, 2
  %7876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %7861, float %7865, float %7785, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7877 = extractvalue %dx.types.ResRet.f32 %7876, 0
  %7878 = extractvalue %dx.types.ResRet.f32 %7876, 1
  %7879 = extractvalue %dx.types.ResRet.f32 %7876, 2
  %7880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %7863, float %7865, float %7785, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7881 = extractvalue %dx.types.ResRet.f32 %7880, 0
  %7882 = extractvalue %dx.types.ResRet.f32 %7880, 1
  %7883 = extractvalue %dx.types.ResRet.f32 %7880, 2
  %7884 = fsub fast float %7877, %7869
  %7885 = fsub fast float %7878, %7870
  %7886 = fsub fast float %7879, %7871
  %7887 = fmul fast float %7884, %7857
  %7888 = fmul fast float %7885, %7857
  %7889 = fmul fast float %7886, %7857
  %7890 = fadd fast float %7887, %7869
  %7891 = fadd fast float %7888, %7870
  %7892 = fadd fast float %7889, %7871
  %7893 = fsub fast float %7881, %7873
  %7894 = fsub fast float %7882, %7874
  %7895 = fsub fast float %7883, %7875
  %7896 = fmul fast float %7893, %7857
  %7897 = fmul fast float %7894, %7857
  %7898 = fmul fast float %7895, %7857
  %7899 = fsub fast float %7873, %7890
  %7900 = fadd fast float %7899, %7896
  %7901 = fsub fast float %7874, %7891
  %7902 = fadd fast float %7901, %7897
  %7903 = fsub fast float %7875, %7892
  %7904 = fadd fast float %7903, %7898
  %7905 = fmul fast float %7900, %7845
  %7906 = fmul fast float %7902, %7845
  %7907 = fmul fast float %7904, %7845
  %7908 = fadd fast float %7905, %7890
  %7909 = fadd fast float %7906, %7891
  %7910 = fadd fast float %7907, %7892
  %7911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7912 = extractvalue %dx.types.CBufRet.f32 %7911, 1
  %7913 = fmul fast float %7908, %7912
  %7914 = fmul fast float %7909, %7912
  %7915 = fmul fast float %7910, %7912
  br label %7916

; <label>:7916                                    ; preds = %7748, %7717
  %7917 = phi float [ %7787, %7748 ], [ 1.000000e+00, %7717 ]
  %7918 = phi float [ %7788, %7748 ], [ 1.000000e+00, %7717 ]
  %7919 = phi float [ %7789, %7748 ], [ 1.000000e+00, %7717 ]
  %7920 = phi float [ %7913, %7748 ], [ 0.000000e+00, %7717 ]
  %7921 = phi float [ %7914, %7748 ], [ 0.000000e+00, %7717 ]
  %7922 = phi float [ %7915, %7748 ], [ 0.000000e+00, %7717 ]
  %7923 = fmul fast float %7920, %7694
  %7924 = fmul fast float %7921, %7694
  %7925 = fmul fast float %7922, %7694
  %7926 = call float @dx.op.dot3.f32(i32 55, float %7917, float %7918, float %7919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7927 = call float @dx.op.dot3.f32(i32 55, float %7923, float %7924, float %7925, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7928 = select i1 %250, float %7926, float %7917
  %7929 = select i1 %250, float %7926, float %7918
  %7930 = select i1 %250, float 1.000000e+00, float %7919
  %7931 = select i1 %250, float %7927, float %7923
  %7932 = select i1 %250, float 0.000000e+00, float %7924
  %7933 = select i1 %250, float 0.000000e+00, float %7925
  %7934 = fmul fast float %7928, %7707
  %7935 = fmul fast float %7929, %7708
  %7936 = fmul fast float %7930, %7709
  %7937 = fadd fast float %7934, %7931
  %7938 = fadd fast float %7935, %7932
  %7939 = fadd fast float %7933, %7936
  %7940 = fmul fast float %7928, %7680
  %7941 = fmul fast float %7929, %7681
  %7942 = fmul fast float %7930, %7682
  %7943 = fmul fast float %138, %7719
  %7944 = fmul fast float %140, %7720
  %7945 = fsub fast float 1.000000e+00, %7943
  %7946 = fsub fast float 1.000000e+00, %7944
  %7947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7948 = extractvalue %dx.types.CBufRet.f32 %7947, 0
  %7949 = extractvalue %dx.types.CBufRet.f32 %7947, 1
  %7950 = extractvalue %dx.types.CBufRet.f32 %7947, 2
  %7951 = fmul fast float %7945, %7948
  %7952 = fmul fast float %7945, %7949
  %7953 = fmul fast float %7945, %7950
  %7954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7955 = extractvalue %dx.types.CBufRet.f32 %7954, 0
  %7956 = extractvalue %dx.types.CBufRet.f32 %7954, 1
  %7957 = extractvalue %dx.types.CBufRet.f32 %7954, 2
  %7958 = fmul fast float %7946, %7955
  %7959 = fmul fast float %7946, %7956
  %7960 = fmul fast float %7946, %7957
  %7961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7962 = extractvalue %dx.types.CBufRet.f32 %7961, 0
  %7963 = extractvalue %dx.types.CBufRet.f32 %7961, 1
  %7964 = extractvalue %dx.types.CBufRet.f32 %7961, 2
  %7965 = fadd fast float %7958, %7962
  %7966 = fadd fast float %7965, %7951
  %7967 = fadd fast float %7959, %7963
  %7968 = fadd fast float %7967, %7952
  %7969 = fadd fast float %7960, %7964
  %7970 = fadd fast float %7969, %7953
  %7971 = fmul fast float %7966, %211
  %7972 = fmul fast float %7968, %211
  %7973 = fmul fast float %7970, %211
  br label %7974

; <label>:7974                                    ; preds = %7916, %7679
  %7975 = phi float [ %7971, %7916 ], [ %189, %7679 ]
  %7976 = phi float [ %7972, %7916 ], [ %190, %7679 ]
  %7977 = phi float [ %7973, %7916 ], [ %191, %7679 ]
  %7978 = phi float [ %211, %7916 ], [ %89, %7679 ]
  %7979 = phi float [ %7937, %7916 ], [ %7707, %7679 ]
  %7980 = phi float [ %7938, %7916 ], [ %7708, %7679 ]
  %7981 = phi float [ %7939, %7916 ], [ %7709, %7679 ]
  %7982 = phi float [ %7940, %7916 ], [ %7680, %7679 ]
  %7983 = phi float [ %7941, %7916 ], [ %7681, %7679 ]
  %7984 = phi float [ %7942, %7916 ], [ %7682, %7679 ]
  %7985 = phi float [ %7917, %7916 ], [ 1.000000e+00, %7679 ]
  br i1 %7716, label %9140, label %7986

; <label>:7986                                    ; preds = %7974
  %7987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7988 = extractvalue %dx.types.CBufRet.f32 %7987, 0
  %7989 = extractvalue %dx.types.CBufRet.f32 %7987, 1
  %7990 = extractvalue %dx.types.CBufRet.f32 %7987, 2
  %7991 = extractvalue %dx.types.CBufRet.f32 %7987, 3
  %7992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7993 = extractvalue %dx.types.CBufRet.f32 %7992, 0
  %7994 = extractvalue %dx.types.CBufRet.f32 %7992, 1
  %7995 = extractvalue %dx.types.CBufRet.f32 %7992, 2
  %7996 = extractvalue %dx.types.CBufRet.f32 %7992, 3
  %7997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7998 = extractvalue %dx.types.CBufRet.f32 %7997, 0
  %7999 = extractvalue %dx.types.CBufRet.f32 %7997, 1
  %8000 = extractvalue %dx.types.CBufRet.f32 %7997, 2
  %8001 = extractvalue %dx.types.CBufRet.f32 %7997, 3
  %8002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8003 = extractvalue %dx.types.CBufRet.f32 %8002, 0
  %8004 = extractvalue %dx.types.CBufRet.f32 %8002, 1
  %8005 = extractvalue %dx.types.CBufRet.f32 %8002, 2
  %8006 = extractvalue %dx.types.CBufRet.f32 %8002, 3
  %8007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8008 = extractvalue %dx.types.CBufRet.f32 %8007, 3
  %8009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8010 = extractvalue %dx.types.CBufRet.f32 %8009, 3
  %8011 = extractvalue %dx.types.CBufRet.f32 %8009, 0
  %8012 = extractvalue %dx.types.CBufRet.f32 %8009, 1
  %8013 = extractvalue %dx.types.CBufRet.f32 %8009, 2
  %8014 = fcmp fast olt float %8013, -5.000000e-01
  %8015 = call float @dx.op.dot3.f32(i32 55, float %7975, float %7976, float %7977, float %7975, float %7976, float %7977)  ; Dot3(ax,ay,az,bx,by,bz)
  %8016 = call float @dx.op.unary.f32(i32 25, float %8015)  ; Rsqrt(value)
  %8017 = fmul fast float %8016, %8015
  %8018 = fmul fast float %8016, %7975
  %8019 = fmul fast float %8016, %7976
  %8020 = fmul fast float %8016, %7977
  %8021 = fadd fast float %8017, %7991
  %8022 = call float @dx.op.dot3.f32(i32 55, float %8018, float %8019, float %8020, float %7988, float %7989, float %7990)  ; Dot3(ax,ay,az,bx,by,bz)
  %8023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8024 = extractvalue %dx.types.CBufRet.i32 %8023, 1
  %8025 = and i32 %8024, 1
  %8026 = icmp ne i32 %8025, 0
  %8027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8028 = extractvalue %dx.types.CBufRet.f32 %8027, 2
  %8029 = fcmp fast ogt float %8028, 0.000000e+00
  %8030 = and i1 %8026, %8029
  br i1 %8030, label %8031, label %8437, !dx.controlflow.hints !120

; <label>:8031                                    ; preds = %7986
  %8032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8033 = extractvalue %dx.types.CBufRet.f32 %8032, 3
  %8034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8035 = extractvalue %dx.types.CBufRet.f32 %8034, 2
  %8036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8037 = extractvalue %dx.types.CBufRet.f32 %8036, 2
  %8038 = fsub fast float %8035, %8037
  %8039 = and i32 %8024, 2
  %8040 = extractvalue %dx.types.CBufRet.i32 %8023, 0
  %8041 = call i32 @dx.op.binary.i32(i32 40, i32 %8040, i32 3)  ; UMin(a,b)
  %8042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8043 = extractvalue %dx.types.CBufRet.f32 %8042, 0
  %8044 = extractvalue %dx.types.CBufRet.f32 %8042, 1
  %8045 = extractvalue %dx.types.CBufRet.f32 %8036, 0
  %8046 = extractvalue %dx.types.CBufRet.f32 %8036, 1
  %8047 = fsub fast float %8043, %8045
  %8048 = fsub fast float %8044, %8046
  %8049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8050 = extractvalue %dx.types.CBufRet.f32 %8049, 0
  %8051 = fcmp fast ogt float %8050, 0.000000e+00
  %8052 = fsub fast float -0.000000e+00, %8047
  %8053 = fsub fast float -0.000000e+00, %8048
  %8054 = call float @dx.op.dot2.f32(i32 54, float %8018, float %8019, float %8018, float %8019)  ; Dot2(ax,ay,bx,by)
  %8055 = call float @dx.op.dot2.f32(i32 54, float %8018, float %8019, float %8052, float %8053)  ; Dot2(ax,ay,bx,by)
  %8056 = fmul fast float %8055, 2.000000e+00
  %8057 = call float @dx.op.dot2.f32(i32 54, float %8052, float %8053, float %8052, float %8053)  ; Dot2(ax,ay,bx,by)
  %8058 = fmul fast float %8050, %8050
  %8059 = fsub fast float %8057, %8058
  %8060 = fmul fast float %8056, %8056
  %8061 = fmul fast float %8054, 4.000000e+00
  %8062 = fmul fast float %8061, %8059
  %8063 = fsub fast float %8060, %8062
  %8064 = fcmp fast ogt float %8063, 0.000000e+00
  br i1 %8064, label %8065, label %8080

; <label>:8065                                    ; preds = %8031
  %8066 = fcmp fast ogt float %8056, 0.000000e+00
  %8067 = call float @dx.op.unary.f32(i32 24, float %8063)  ; Sqrt(value)
  %8068 = fsub fast float -0.000000e+00, %8067
  %8069 = select i1 %8066, float %8067, float %8068
  %8070 = fadd fast float %8069, %8056
  %8071 = fmul float %8070, -5.000000e-01
  %8072 = fdiv fast float %8071, %8054
  %8073 = call float @dx.op.binary.f32(i32 35, float %8072, float 0.000000e+00)  ; FMax(a,b)
  %8074 = call float @dx.op.binary.f32(i32 36, float %8017, float %8073)  ; FMin(a,b)
  %8075 = fdiv fast float %8059, %8071
  %8076 = call float @dx.op.binary.f32(i32 35, float %8075, float 0.000000e+00)  ; FMax(a,b)
  %8077 = call float @dx.op.binary.f32(i32 36, float %8017, float %8076)  ; FMin(a,b)
  %8078 = call float @dx.op.binary.f32(i32 36, float %8074, float %8077)  ; FMin(a,b)
  %8079 = call float @dx.op.binary.f32(i32 35, float %8074, float %8077)  ; FMax(a,b)
  br label %8080

; <label>:8080                                    ; preds = %8065, %8031
  %8081 = phi float [ %8079, %8065 ], [ -1.000000e+00, %8031 ]
  %8082 = phi float [ %8078, %8065 ], [ -1.000000e+00, %8031 ]
  %8083 = phi i1 [ true, %8065 ], [ false, %8031 ]
  %8084 = and i1 %8051, %8083
  br i1 %8084, label %8085, label %8087

; <label>:8085                                    ; preds = %8080
  %8086 = fcmp fast oeq float %8082, %8081
  br i1 %8086, label %8390, label %8088

; <label>:8087                                    ; preds = %8080
  br i1 %8051, label %8390, label %8088

; <label>:8088                                    ; preds = %8087, %8085
  %8089 = phi float [ %8017, %8087 ], [ %8081, %8085 ]
  %8090 = phi float [ 0.000000e+00, %8087 ], [ %8082, %8085 ]
  %8091 = icmp ne i32 %8039, 0
  %8092 = fmul fast float %8089, %8020
  %8093 = fadd fast float %8092, %8033
  %8094 = fmul fast float %8093, %8089
  %8095 = select i1 %8091, float 0.000000e+00, float %8094
  %8096 = fcmp fast oeq float %8020, 0.000000e+00
  %8097 = fdiv fast float %8038, %8020
  %8098 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8097)  ; FMax(a,b)
  %8099 = select i1 %8096, float %8089, float %8098
  %8100 = call float @dx.op.binary.f32(i32 36, float %8089, float %8099)  ; FMin(a,b)
  %8101 = fcmp fast ogt float %8020, 0.000000e+00
  %8102 = fcmp fast olt float %8038, 0.000000e+00
  br i1 %8101, label %8103, label %8160

; <label>:8103                                    ; preds = %8088
  %8104 = icmp eq i32 %8039, 0
  br i1 %8102, label %8105, label %8149

; <label>:8105                                    ; preds = %8103
  %8106 = select i1 %8104, float %8089, float 0.000000e+00
  %8107 = fsub fast float -0.000000e+00, %8106
  %8108 = call float @dx.op.unary.f32(i32 6, float %8107)  ; FAbs(value)
  %8109 = fmul fast float %8106, %8020
  %8110 = fadd fast float %8109, %8033
  %8111 = fmul fast float %8108, %8110
  %8112 = fsub fast float %8095, %8111
  %8113 = fsub fast float %8089, %8108
  %8114 = select i1 %8104, float %8113, float 0.000000e+00
  %8115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8116 = extractvalue %dx.types.CBufRet.f32 %8115, 0
  %8117 = extractvalue %dx.types.CBufRet.f32 %8115, 1
  %8118 = extractvalue %dx.types.CBufRet.f32 %8115, 2
  %8119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8120 = extractvalue %dx.types.CBufRet.f32 %8119, 0
  %8121 = extractvalue %dx.types.CBufRet.f32 %8119, 1
  %8122 = extractvalue %dx.types.CBufRet.f32 %8119, 2
  %8123 = extractvalue %dx.types.CBufRet.f32 %8119, 3
  %8124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8125 = extractvalue %dx.types.CBufRet.f32 %8124, 3
  %8126 = call float @dx.op.binary.f32(i32 36, float %8112, float %8125)  ; FMin(a,b)
  %8127 = fmul fast float %8123, %8114
  %8128 = call float @dx.op.unary.f32(i32 7, float %8127)  ; Saturate(value)
  %8129 = fsub fast float %8120, %8116
  %8130 = fsub fast float %8121, %8117
  %8131 = fsub fast float %8122, %8118
  %8132 = fmul fast float %8128, %8129
  %8133 = fmul fast float %8128, %8130
  %8134 = fmul fast float %8128, %8131
  %8135 = fadd fast float %8132, %8116
  %8136 = fadd fast float %8133, %8117
  %8137 = fadd fast float %8134, %8118
  %8138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8139 = extractvalue %dx.types.CBufRet.f32 %8138, 0
  %8140 = extractvalue %dx.types.CBufRet.f32 %8138, 1
  %8141 = fadd fast float %8140, %8139
  %8142 = call float @dx.op.unary.f32(i32 7, float %8141)  ; Saturate(value)
  %8143 = extractvalue %dx.types.CBufRet.f32 %8138, 2
  %8144 = extractvalue %dx.types.CBufRet.f32 %8138, 3
  %8145 = fadd fast float %8144, %8143
  %8146 = call float @dx.op.unary.f32(i32 7, float %8145)  ; Saturate(value)
  %8147 = fmul fast float %8142, %8126
  %8148 = fmul fast float %8147, %8146
  br label %8390

; <label>:8149                                    ; preds = %8103
  br i1 %8104, label %8150, label %8171

; <label>:8150                                    ; preds = %8149
  %8151 = call float @dx.op.binary.f32(i32 36, float %8100, float %8090)  ; FMin(a,b)
  %8152 = fsub fast float %8100, %8151
  %8153 = fsub fast float %8152, %8089
  %8154 = call float @dx.op.unary.f32(i32 6, float %8153)  ; FAbs(value)
  %8155 = fadd fast float %8152, %8089
  %8156 = fmul fast float %8155, %8020
  %8157 = fadd fast float %8156, %8033
  %8158 = fmul fast float %8157, %8154
  %8159 = fsub fast float %8095, %8158
  br label %8171

; <label>:8160                                    ; preds = %8088
  br i1 %8102, label %8161, label %8171

; <label>:8161                                    ; preds = %8160
  %8162 = call float @dx.op.binary.f32(i32 35, float %8090, float %8100)  ; FMax(a,b)
  %8163 = icmp eq i32 %8039, 0
  %8164 = select i1 %8163, float %8100, float 0.000000e+00
  %8165 = fsub fast float -0.000000e+00, %8164
  %8166 = call float @dx.op.unary.f32(i32 6, float %8165)  ; FAbs(value)
  %8167 = fmul fast float %8164, %8020
  %8168 = fadd fast float %8167, %8033
  %8169 = fmul fast float %8166, %8168
  %8170 = fsub fast float %8095, %8169
  br label %8171

; <label>:8171                                    ; preds = %8161, %8160, %8150, %8149
  %8172 = phi float [ %8090, %8149 ], [ %8090, %8150 ], [ %8162, %8161 ], [ %8090, %8160 ]
  %8173 = phi float [ 0.000000e+00, %8149 ], [ %8154, %8150 ], [ %8166, %8161 ], [ 0.000000e+00, %8160 ]
  %8174 = phi float [ %8095, %8149 ], [ %8159, %8150 ], [ %8170, %8161 ], [ %8095, %8160 ]
  %8175 = phi float [ %8100, %8149 ], [ %8100, %8150 ], [ %8089, %8161 ], [ %8089, %8160 ]
  %8176 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %8176, align 4, !tbaa !109, !noalias !121
  %8177 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %8177, align 4, !tbaa !109, !noalias !121
  %8178 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %8178, align 4, !tbaa !109, !noalias !121
  %8179 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %8179, align 4, !tbaa !109, !noalias !121
  %8180 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %8180, align 4, !tbaa !109, !noalias !121
  %8181 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %8181, align 4, !tbaa !109, !noalias !121
  %8182 = icmp sgt i32 %8041, 0
  br i1 %8182, label %8183, label %8244

; <label>:8183                                    ; preds = %8171
  br label %8184

; <label>:8184                                    ; preds = %8233, %8183
  %8185 = phi i32 [ %8234, %8233 ], [ 0, %8183 ]
  %8186 = phi i32 [ %8235, %8233 ], [ 0, %8183 ]
  %8187 = add nuw i32 %8186, 171
  %8188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %8187)  ; CBufferLoadLegacy(handle,regIndex)
  %8189 = extractvalue %dx.types.CBufRet.f32 %8188, 0
  %8190 = extractvalue %dx.types.CBufRet.f32 %8188, 1
  %8191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8192 = extractvalue %dx.types.CBufRet.f32 %8191, 0
  %8193 = extractvalue %dx.types.CBufRet.f32 %8191, 1
  %8194 = fsub fast float %8189, %8192
  %8195 = fsub fast float %8190, %8193
  %8196 = extractvalue %dx.types.CBufRet.f32 %8188, 2
  %8197 = fsub fast float -0.000000e+00, %8194
  %8198 = fsub fast float -0.000000e+00, %8195
  %8199 = call float @dx.op.dot2.f32(i32 54, float %8018, float %8019, float %8197, float %8198)  ; Dot2(ax,ay,bx,by)
  %8200 = fmul fast float %8199, 2.000000e+00
  %8201 = call float @dx.op.dot2.f32(i32 54, float %8197, float %8198, float %8197, float %8198)  ; Dot2(ax,ay,bx,by)
  %8202 = fmul fast float %8196, %8196
  %8203 = fsub fast float %8201, %8202
  %8204 = fmul fast float %8200, %8200
  %8205 = fmul fast float %8061, %8203
  %8206 = fsub fast float %8204, %8205
  %8207 = fcmp fast ogt float %8206, 0.000000e+00
  br i1 %8207, label %8208, label %8223

; <label>:8208                                    ; preds = %8184
  %8209 = fcmp fast ogt float %8200, 0.000000e+00
  %8210 = call float @dx.op.unary.f32(i32 24, float %8206)  ; Sqrt(value)
  %8211 = fsub fast float -0.000000e+00, %8210
  %8212 = select i1 %8209, float %8210, float %8211
  %8213 = fadd fast float %8212, %8200
  %8214 = fmul float %8213, -5.000000e-01
  %8215 = fdiv fast float %8214, %8054
  %8216 = call float @dx.op.binary.f32(i32 35, float %8215, float 0.000000e+00)  ; FMax(a,b)
  %8217 = call float @dx.op.binary.f32(i32 36, float %8089, float %8216)  ; FMin(a,b)
  %8218 = fdiv fast float %8203, %8214
  %8219 = call float @dx.op.binary.f32(i32 35, float %8218, float 0.000000e+00)  ; FMax(a,b)
  %8220 = call float @dx.op.binary.f32(i32 36, float %8089, float %8219)  ; FMin(a,b)
  %8221 = call float @dx.op.binary.f32(i32 36, float %8217, float %8220)  ; FMin(a,b)
  %8222 = call float @dx.op.binary.f32(i32 35, float %8217, float %8220)  ; FMax(a,b)
  br label %8223

; <label>:8223                                    ; preds = %8208, %8184
  %8224 = phi float [ %8222, %8208 ], [ -1.000000e+00, %8184 ]
  %8225 = phi float [ %8221, %8208 ], [ -1.000000e+00, %8184 ]
  %8226 = phi i1 [ true, %8208 ], [ false, %8184 ]
  br i1 %8226, label %8227, label %8233

; <label>:8227                                    ; preds = %8223
  %8228 = call float @dx.op.binary.f32(i32 35, float %8172, float %8225)  ; FMax(a,b)
  %8229 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8186
  store float %8228, float* %8229, align 4, !tbaa !109, !noalias !121
  %8230 = call float @dx.op.binary.f32(i32 35, float %8172, float %8224)  ; FMax(a,b)
  %8231 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8186
  store float %8230, float* %8231, align 4, !tbaa !109, !noalias !121
  %8232 = add nsw i32 %8185, 1
  br label %8233

; <label>:8233                                    ; preds = %8227, %8223
  %8234 = phi i32 [ %8232, %8227 ], [ %8185, %8223 ]
  %8235 = add nuw nsw i32 %8186, 1
  %8236 = icmp eq i32 %8235, %8041
  br i1 %8236, label %8237, label %8184

; <label>:8237                                    ; preds = %8233
  %8238 = load float, float* %8178, align 4, !tbaa !109, !alias.scope !137, !noalias !140
  %8239 = load float, float* %8177, align 4, !tbaa !109, !alias.scope !143, !noalias !144
  %8240 = load float, float* %8176, align 4, !tbaa !109, !alias.scope !145, !noalias !146
  %8241 = load float, float* %8181, align 4, !tbaa !109, !alias.scope !147, !noalias !150
  %8242 = load float, float* %8180, align 4, !tbaa !109, !alias.scope !153, !noalias !154
  %8243 = load float, float* %8179, align 4, !tbaa !109, !alias.scope !155, !noalias !156
  br label %8244

; <label>:8244                                    ; preds = %8237, %8171
  %8245 = phi float [ -1.000000e+00, %8171 ], [ %8243, %8237 ]
  %8246 = phi float [ -1.000000e+00, %8171 ], [ %8242, %8237 ]
  %8247 = phi float [ -1.000000e+00, %8171 ], [ %8241, %8237 ]
  %8248 = phi float [ -1.000000e+00, %8171 ], [ %8240, %8237 ]
  %8249 = phi float [ -1.000000e+00, %8171 ], [ %8239, %8237 ]
  %8250 = phi float [ -1.000000e+00, %8171 ], [ %8238, %8237 ]
  %8251 = phi i32 [ 0, %8171 ], [ %8234, %8237 ]
  %8252 = call float @dx.op.binary.f32(i32 36, float %8249, float %8250)  ; FMin(a,b)
  %8253 = call float @dx.op.binary.f32(i32 36, float %8248, float %8252)  ; FMin(a,b)
  %8254 = call float @dx.op.binary.f32(i32 35, float %8248, float %8249)  ; FMax(a,b)
  %8255 = call float @dx.op.binary.f32(i32 36, float %8254, float %8250)  ; FMin(a,b)
  %8256 = call float @dx.op.binary.f32(i32 36, float %8248, float %8249)  ; FMin(a,b)
  %8257 = call float @dx.op.binary.f32(i32 35, float %8256, float %8255)  ; FMax(a,b)
  %8258 = call float @dx.op.binary.f32(i32 35, float %8249, float %8250)  ; FMax(a,b)
  %8259 = call float @dx.op.binary.f32(i32 35, float %8248, float %8258)  ; FMax(a,b)
  store float %8253, float* %8176, align 4, !tbaa !109, !alias.scope !145, !noalias !146
  store float %8257, float* %8177, align 4, !tbaa !109, !alias.scope !143, !noalias !144
  store float %8259, float* %8178, align 4, !tbaa !109, !alias.scope !137, !noalias !140
  %8260 = call float @dx.op.binary.f32(i32 36, float %8246, float %8247)  ; FMin(a,b)
  %8261 = call float @dx.op.binary.f32(i32 36, float %8245, float %8260)  ; FMin(a,b)
  %8262 = call float @dx.op.binary.f32(i32 35, float %8245, float %8246)  ; FMax(a,b)
  %8263 = call float @dx.op.binary.f32(i32 36, float %8262, float %8247)  ; FMin(a,b)
  %8264 = call float @dx.op.binary.f32(i32 36, float %8245, float %8246)  ; FMin(a,b)
  %8265 = call float @dx.op.binary.f32(i32 35, float %8264, float %8263)  ; FMax(a,b)
  %8266 = call float @dx.op.binary.f32(i32 35, float %8246, float %8247)  ; FMax(a,b)
  %8267 = call float @dx.op.binary.f32(i32 35, float %8245, float %8266)  ; FMax(a,b)
  store float %8261, float* %8179, align 4, !tbaa !109, !alias.scope !155, !noalias !156
  store float %8265, float* %8180, align 4, !tbaa !109, !alias.scope !153, !noalias !154
  store float %8267, float* %8181, align 4, !tbaa !109, !alias.scope !147, !noalias !150
  %8268 = sub nsw i32 3, %8251
  %8269 = icmp sgt i32 %8268, 2
  br i1 %8269, label %8270, label %8308

; <label>:8270                                    ; preds = %8244
  %8271 = icmp eq i32 %8039, 0
  %8272 = fsub fast float %8089, %8173
  %8273 = select i1 %8271, float %8272, float %8173
  %8274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8275 = extractvalue %dx.types.CBufRet.f32 %8274, 0
  %8276 = extractvalue %dx.types.CBufRet.f32 %8274, 1
  %8277 = extractvalue %dx.types.CBufRet.f32 %8274, 2
  %8278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8279 = extractvalue %dx.types.CBufRet.f32 %8278, 0
  %8280 = extractvalue %dx.types.CBufRet.f32 %8278, 1
  %8281 = extractvalue %dx.types.CBufRet.f32 %8278, 2
  %8282 = extractvalue %dx.types.CBufRet.f32 %8278, 3
  %8283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8284 = extractvalue %dx.types.CBufRet.f32 %8283, 3
  %8285 = call float @dx.op.binary.f32(i32 36, float %8174, float %8284)  ; FMin(a,b)
  %8286 = fmul fast float %8282, %8273
  %8287 = call float @dx.op.unary.f32(i32 7, float %8286)  ; Saturate(value)
  %8288 = fsub fast float %8279, %8275
  %8289 = fsub fast float %8280, %8276
  %8290 = fsub fast float %8281, %8277
  %8291 = fmul fast float %8287, %8288
  %8292 = fmul fast float %8287, %8289
  %8293 = fmul fast float %8287, %8290
  %8294 = fadd fast float %8291, %8275
  %8295 = fadd fast float %8292, %8276
  %8296 = fadd fast float %8293, %8277
  %8297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8298 = extractvalue %dx.types.CBufRet.f32 %8297, 0
  %8299 = extractvalue %dx.types.CBufRet.f32 %8297, 1
  %8300 = fadd fast float %8299, %8298
  %8301 = call float @dx.op.unary.f32(i32 7, float %8300)  ; Saturate(value)
  %8302 = extractvalue %dx.types.CBufRet.f32 %8297, 2
  %8303 = extractvalue %dx.types.CBufRet.f32 %8297, 3
  %8304 = fadd fast float %8303, %8302
  %8305 = call float @dx.op.unary.f32(i32 7, float %8304)  ; Saturate(value)
  %8306 = fmul fast float %8301, %8285
  %8307 = fmul fast float %8306, %8305
  br label %8390

; <label>:8308                                    ; preds = %8244
  %8309 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8268
  %8310 = load float, float* %8309, align 4, !tbaa !109, !noalias !121
  %8311 = fcmp fast olt float %8310, %8175
  %8312 = icmp sgt i32 %8251, 0
  %8313 = and i1 %8312, %8311
  br i1 %8313, label %8314, label %8351

; <label>:8314                                    ; preds = %8308
  br label %8315

; <label>:8315                                    ; preds = %8344, %8314
  %8316 = phi float [ %8345, %8344 ], [ %8173, %8314 ]
  %8317 = phi float [ %8346, %8344 ], [ %8174, %8314 ]
  %8318 = phi float [ %8326, %8344 ], [ %8310, %8314 ]
  %8319 = phi i32 [ %8323, %8344 ], [ %8268, %8314 ]
  %8320 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8319
  %8321 = load float, float* %8320, align 4, !tbaa !109, !noalias !121
  %8322 = icmp slt i32 %8319, 2
  %8323 = add nsw i32 %8319, 1
  %8324 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8323
  %8325 = load float, float* %8324, align 4, !tbaa !109, !noalias !121
  %8326 = select i1 %8322, float %8325, float %8089
  %8327 = call float @dx.op.binary.f32(i32 36, float %8326, float %8321)  ; FMin(a,b)
  %8328 = call float @dx.op.binary.f32(i32 36, float %8175, float %8327)  ; FMin(a,b)
  %8329 = icmp eq i32 %8039, 0
  %8330 = fadd fast float %8328, %8318
  %8331 = fmul fast float %8330, %8020
  %8332 = fadd fast float %8331, %8033
  br i1 %8329, label %8338, label %8333

; <label>:8333                                    ; preds = %8315
  %8334 = fsub fast float %8328, %8318
  %8335 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8334)  ; FMax(a,b)
  %8336 = fmul fast float %8335, %8332
  %8337 = fadd fast float %8336, %8317
  br label %8344

; <label>:8338                                    ; preds = %8315
  %8339 = fsub fast float %8318, %8328
  %8340 = call float @dx.op.unary.f32(i32 6, float %8339)  ; FAbs(value)
  %8341 = fadd fast float %8340, %8316
  %8342 = fmul fast float %8340, %8332
  %8343 = fsub fast float %8317, %8342
  br label %8344

; <label>:8344                                    ; preds = %8338, %8333
  %8345 = phi float [ %8335, %8333 ], [ %8341, %8338 ]
  %8346 = phi float [ %8337, %8333 ], [ %8343, %8338 ]
  %8347 = fcmp fast olt float %8326, %8175
  %8348 = icmp slt i32 %8323, 3
  %8349 = and i1 %8348, %8347
  br i1 %8349, label %8315, label %8350

; <label>:8350                                    ; preds = %8344
  br label %8351

; <label>:8351                                    ; preds = %8350, %8308
  %8352 = phi float [ %8173, %8308 ], [ %8345, %8350 ]
  %8353 = phi float [ %8174, %8308 ], [ %8346, %8350 ]
  %8354 = fsub fast float %8089, %8352
  %8355 = select i1 %8091, float %8352, float %8354
  %8356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8357 = extractvalue %dx.types.CBufRet.f32 %8356, 0
  %8358 = extractvalue %dx.types.CBufRet.f32 %8356, 1
  %8359 = extractvalue %dx.types.CBufRet.f32 %8356, 2
  %8360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8361 = extractvalue %dx.types.CBufRet.f32 %8360, 0
  %8362 = extractvalue %dx.types.CBufRet.f32 %8360, 1
  %8363 = extractvalue %dx.types.CBufRet.f32 %8360, 2
  %8364 = extractvalue %dx.types.CBufRet.f32 %8360, 3
  %8365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8366 = extractvalue %dx.types.CBufRet.f32 %8365, 3
  %8367 = call float @dx.op.binary.f32(i32 36, float %8353, float %8366)  ; FMin(a,b)
  %8368 = fmul fast float %8364, %8355
  %8369 = call float @dx.op.unary.f32(i32 7, float %8368)  ; Saturate(value)
  %8370 = fsub fast float %8361, %8357
  %8371 = fsub fast float %8362, %8358
  %8372 = fsub fast float %8363, %8359
  %8373 = fmul fast float %8369, %8370
  %8374 = fmul fast float %8369, %8371
  %8375 = fmul fast float %8369, %8372
  %8376 = fadd fast float %8373, %8357
  %8377 = fadd fast float %8374, %8358
  %8378 = fadd fast float %8375, %8359
  %8379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8380 = extractvalue %dx.types.CBufRet.f32 %8379, 0
  %8381 = extractvalue %dx.types.CBufRet.f32 %8379, 1
  %8382 = fadd fast float %8381, %8380
  %8383 = call float @dx.op.unary.f32(i32 7, float %8382)  ; Saturate(value)
  %8384 = extractvalue %dx.types.CBufRet.f32 %8379, 2
  %8385 = extractvalue %dx.types.CBufRet.f32 %8379, 3
  %8386 = fadd fast float %8385, %8384
  %8387 = call float @dx.op.unary.f32(i32 7, float %8386)  ; Saturate(value)
  %8388 = fmul fast float %8383, %8367
  %8389 = fmul fast float %8388, %8387
  br label %8390

; <label>:8390                                    ; preds = %8351, %8270, %8105, %8087, %8085
  %8391 = phi float [ %8114, %8105 ], [ %8273, %8270 ], [ %8355, %8351 ], [ 0.000000e+00, %8085 ], [ 0.000000e+00, %8087 ]
  %8392 = phi float [ %8148, %8105 ], [ %8307, %8270 ], [ %8389, %8351 ], [ 0.000000e+00, %8085 ], [ 0.000000e+00, %8087 ]
  %8393 = phi float [ %8135, %8105 ], [ %8294, %8270 ], [ %8376, %8351 ], [ 0.000000e+00, %8085 ], [ 0.000000e+00, %8087 ]
  %8394 = phi float [ %8136, %8105 ], [ %8295, %8270 ], [ %8377, %8351 ], [ 0.000000e+00, %8085 ], [ 0.000000e+00, %8087 ]
  %8395 = phi float [ %8137, %8105 ], [ %8296, %8270 ], [ %8378, %8351 ], [ 0.000000e+00, %8085 ], [ 0.000000e+00, %8087 ]
  %8396 = fmul fast float %8028, %8392
  %8397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8398 = extractvalue %dx.types.CBufRet.f32 %8397, 2
  %8399 = fsub fast float %8035, %8398
  %8400 = fcmp fast olt float %8396, -2.000000e+01
  %8401 = call float @dx.op.unary.f32(i32 21, float %8396)  ; Exp(value)
  %8402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8403 = extractvalue %dx.types.CBufRet.f32 %8402, 2
  %8404 = extractvalue %dx.types.CBufRet.f32 %8402, 3
  %8405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8406 = extractvalue %dx.types.CBufRet.f32 %8405, 2
  %8407 = fmul fast float %8404, %8399
  %8408 = call float @dx.op.unary.f32(i32 7, float %8407)  ; Saturate(value)
  %8409 = fsub fast float 1.000000e+00, %8408
  %8410 = fmul fast float %8020, 5.000000e-01
  %8411 = fadd fast float %8410, 5.000000e-01
  %8412 = call float @dx.op.unary.f32(i32 7, float %8411)  ; Saturate(value)
  %8413 = fsub fast float 1.000000e+00, %8412
  %8414 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8409)  ; FMax(a,b)
  %8415 = fdiv fast float %8413, %8414
  %8416 = fsub fast float %8399, %7977
  %8417 = call float @dx.op.unary.f32(i32 6, float %8416)  ; FAbs(value)
  %8418 = fmul fast float %8417, %8403
  %8419 = call float @dx.op.unary.f32(i32 7, float %8415)  ; Saturate(value)
  %8420 = fsub fast float 1.000000e+00, %8418
  %8421 = fmul fast float %8420, %8419
  %8422 = fadd fast float %8421, %8418
  %8423 = fmul fast float %8406, %8399
  %8424 = call float @dx.op.unary.f32(i32 7, float %8423)  ; Saturate(value)
  %8425 = fsub fast float 1.000000e+00, %8422
  %8426 = fmul fast float %8425, %8424
  %8427 = fadd fast float %8426, %8422
  %8428 = call float @dx.op.unary.f32(i32 7, float %8427)  ; Saturate(value)
  %8429 = fadd fast float %8401, -1.000000e+00
  %8430 = select i1 %8400, float -1.000000e+00, float %8429
  %8431 = fmul fast float %8428, %8430
  %8432 = fadd fast float %8431, 1.000000e+00
  %8433 = fsub fast float -0.000000e+00, %8431
  %8434 = fmul fast float %8393, %8433
  %8435 = fmul fast float %8394, %8433
  %8436 = fmul fast float %8395, %8433
  br label %8437

; <label>:8437                                    ; preds = %8390, %7986
  %8438 = phi float [ %8391, %8390 ], [ 0.000000e+00, %7986 ]
  %8439 = phi float [ %8432, %8390 ], [ 1.000000e+00, %7986 ]
  %8440 = phi float [ %8434, %8390 ], [ 0.000000e+00, %7986 ]
  %8441 = phi float [ %8435, %8390 ], [ 0.000000e+00, %7986 ]
  %8442 = phi float [ %8436, %8390 ], [ 0.000000e+00, %7986 ]
  %8443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8444 = extractvalue %dx.types.CBufRet.f32 %8443, 1
  %8445 = fsub fast float 1.000000e+00, %8439
  %8446 = fmul fast float %8445, %8021
  %8447 = fmul fast float %8446, %8444
  %8448 = fsub fast float %8021, %8447
  br i1 %8014, label %8449, label %8478, !dx.controlflow.hints !157

; <label>:8449                                    ; preds = %8437
  %8450 = fmul fast float %8022, %8011
  %8451 = fadd fast float %8450, %8012
  %8452 = call float @dx.op.unary.f32(i32 7, float %8451)  ; Saturate(value)
  %8453 = fmul fast float %7993, %8448
  %8454 = fsub fast float -0.000000e+00, %8453
  %8455 = fmul fast float %7994, %8448
  %8456 = fsub fast float -0.000000e+00, %8455
  %8457 = call float @dx.op.unary.f32(i32 21, float %8454)  ; Exp(value)
  %8458 = call float @dx.op.unary.f32(i32 21, float %8456)  ; Exp(value)
  %8459 = call float @dx.op.binary.f32(i32 35, float %8001, float %8457)  ; FMax(a,b)
  %8460 = call float @dx.op.binary.f32(i32 35, float %8001, float %8458)  ; FMax(a,b)
  %8461 = fsub fast float %8460, %8459
  %8462 = fmul fast float %8461, %8452
  %8463 = fadd fast float %8462, %8459
  %8464 = call float @dx.op.unary.f32(i32 7, float %8463)  ; Saturate(value)
  %8465 = fsub fast float %7998, %8003
  %8466 = fsub fast float %7999, %8004
  %8467 = fsub fast float %8000, %8005
  %8468 = fmul fast float %8452, %8465
  %8469 = fmul fast float %8452, %8466
  %8470 = fmul fast float %8452, %8467
  %8471 = fadd fast float %8468, %8003
  %8472 = fadd fast float %8469, %8004
  %8473 = fadd fast float %8470, %8005
  %8474 = fsub fast float 1.000000e+00, %8464
  %8475 = fmul fast float %8474, %8471
  %8476 = fmul fast float %8474, %8472
  %8477 = fmul fast float %8474, %8473
  br label %8537

; <label>:8478                                    ; preds = %8437
  %8479 = fmul fast float %8448, %8010
  %8480 = call float @dx.op.unary.f32(i32 7, float %8479)  ; Saturate(value)
  %8481 = fsub fast float 2.000000e+00, %8480
  %8482 = fmul fast float %8480, 9.921875e-01
  %8483 = fmul fast float %8482, %8481
  %8484 = fadd fast float %8483, 3.906250e-03
  %8485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %8484, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8486 = extractvalue %dx.types.ResRet.f32 %8485, 0
  %8487 = fsub fast float %8480, %8486
  %8488 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8487)  ; FMax(a,b)
  %8489 = fmul fast float %7996, %7977
  %8490 = call float @dx.op.unary.f32(i32 6, float %8489)  ; FAbs(value)
  %8491 = fcmp fast ogt float %8490, 0x3EB0C6F7A0000000
  br i1 %8491, label %8492, label %8498, !dx.controlflow.hints !158

; <label>:8492                                    ; preds = %8478
  %8493 = fmul fast float %8489, 0xBFF7154760000000
  %8494 = call float @dx.op.unary.f32(i32 21, float %8493)  ; Exp(value)
  %8495 = fsub fast float 1.000000e+00, %8494
  %8496 = fdiv fast float %8495, %8489
  %8497 = fmul fast float %8496, %8006
  br label %8498

; <label>:8498                                    ; preds = %8492, %8478
  %8499 = phi float [ %8497, %8492 ], [ %8006, %8478 ]
  %8500 = fadd fast float %8499, %8008
  %8501 = fmul fast float %8500, %8488
  %8502 = fmul fast float %7993, %8501
  %8503 = fsub fast float -0.000000e+00, %8502
  %8504 = fmul fast float %7994, %8501
  %8505 = fsub fast float -0.000000e+00, %8504
  %8506 = fmul fast float %7995, %8501
  %8507 = fsub fast float -0.000000e+00, %8506
  %8508 = call float @dx.op.unary.f32(i32 21, float %8503)  ; Exp(value)
  %8509 = call float @dx.op.unary.f32(i32 21, float %8505)  ; Exp(value)
  %8510 = call float @dx.op.unary.f32(i32 21, float %8507)  ; Exp(value)
  %8511 = fmul fast float %8022, %8022
  %8512 = fadd fast float %8511, 1.000000e+00
  %8513 = fmul fast float %8512, 0x3FAE8EC8A0000000
  %8514 = fmul fast float %8513, %8003
  %8515 = fmul fast float %8513, %8004
  %8516 = fmul fast float %8513, %8005
  %8517 = fmul fast float %8022, %8001
  %8518 = fsub fast float 1.000000e+00, %8517
  %8519 = fmul fast float %8001, %8001
  %8520 = fsub fast float 1.000000e+00, %8519
  %8521 = fmul fast float %8520, 0x3FB45F3060000000
  %8522 = fmul fast float %8518, %8518
  %8523 = fdiv fast float 1.000000e+00, %8522
  %8524 = fmul fast float %8521, %8523
  %8525 = fmul fast float %8524, %7998
  %8526 = fmul fast float %8524, %7999
  %8527 = fmul fast float %8524, %8000
  %8528 = fadd fast float %8525, %8514
  %8529 = fadd fast float %8526, %8515
  %8530 = fadd fast float %8527, %8516
  %8531 = fsub fast float 1.000000e+00, %8508
  %8532 = fsub fast float 1.000000e+00, %8509
  %8533 = fsub fast float 1.000000e+00, %8510
  %8534 = fmul fast float %8528, %8531
  %8535 = fmul fast float %8529, %8532
  %8536 = fmul fast float %8530, %8533
  br label %8537

; <label>:8537                                    ; preds = %8498, %8449
  %8538 = phi float [ %8475, %8449 ], [ %8534, %8498 ]
  %8539 = phi float [ %8476, %8449 ], [ %8535, %8498 ]
  %8540 = phi float [ %8477, %8449 ], [ %8536, %8498 ]
  %8541 = phi float [ %8464, %8449 ], [ %8508, %8498 ]
  %8542 = phi float [ %8464, %8449 ], [ %8509, %8498 ]
  %8543 = phi float [ %8464, %8449 ], [ %8510, %8498 ]
  br i1 %8030, label %8544, label %8742, !dx.controlflow.hints !159

; <label>:8544                                    ; preds = %8537
  %8545 = extractvalue %dx.types.CBufRet.f32 %8443, 0
  %8546 = fmul fast float %8545, %8445
  %8547 = fsub fast float %8440, %8538
  %8548 = fsub fast float %8441, %8539
  %8549 = fsub fast float %8442, %8540
  %8550 = fmul fast float %8546, %8547
  %8551 = fmul fast float %8546, %8548
  %8552 = fmul fast float %8546, %8549
  %8553 = fadd fast float %8550, %8538
  %8554 = fadd fast float %8551, %8539
  %8555 = fadd fast float %8552, %8540
  %8556 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8541)  ; FMax(a,b)
  %8557 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8542)  ; FMax(a,b)
  %8558 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8543)  ; FMax(a,b)
  %8559 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8439)  ; FMax(a,b)
  %8560 = call float @dx.op.binary.f32(i32 35, float %8438, float %8448)  ; FMax(a,b)
  %8561 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8560)  ; FMax(a,b)
  %8562 = fdiv fast float %8438, %8561
  %8563 = call float @dx.op.unary.f32(i32 7, float %8562)  ; Saturate(value)
  %8564 = fdiv fast float %8448, %8561
  %8565 = call float @dx.op.unary.f32(i32 7, float %8564)  ; Saturate(value)
  %8566 = fcmp fast une float %8559, 1.000000e+00
  br i1 %8566, label %8567, label %8580, !dx.controlflow.hints !160

; <label>:8567                                    ; preds = %8544
  %8568 = call float @dx.op.unary.f32(i32 23, float %8559)  ; Log(value)
  %8569 = fmul fast float %8568, 0x3FE62E4300000000
  %8570 = fmul fast float %8440, %8569
  %8571 = fsub fast float -0.000000e+00, %8570
  %8572 = fmul fast float %8441, %8569
  %8573 = fsub fast float -0.000000e+00, %8572
  %8574 = fmul fast float %8442, %8569
  %8575 = fsub fast float -0.000000e+00, %8574
  %8576 = fsub fast float 1.000000e+00, %8559
  %8577 = fdiv fast float %8571, %8576
  %8578 = fdiv fast float %8573, %8576
  %8579 = fdiv fast float %8575, %8576
  br label %8580

; <label>:8580                                    ; preds = %8567, %8544
  %8581 = phi float [ %8577, %8567 ], [ %8440, %8544 ]
  %8582 = phi float [ %8578, %8567 ], [ %8441, %8544 ]
  %8583 = phi float [ %8579, %8567 ], [ %8442, %8544 ]
  %8584 = phi float [ %8569, %8567 ], [ 0.000000e+00, %8544 ]
  %8585 = fcmp fast une float %8556, 1.000000e+00
  br i1 %8585, label %8586, label %8593, !dx.controlflow.hints !161

; <label>:8586                                    ; preds = %8580
  %8587 = call float @dx.op.unary.f32(i32 23, float %8556)  ; Log(value)
  %8588 = fmul fast float %8587, 0x3FE62E4300000000
  %8589 = fmul fast float %8553, %8588
  %8590 = fsub fast float -0.000000e+00, %8589
  %8591 = fsub fast float 1.000000e+00, %8556
  %8592 = fdiv fast float %8590, %8591
  br label %8593

; <label>:8593                                    ; preds = %8586, %8580
  %8594 = phi float [ %8592, %8586 ], [ %8553, %8580 ]
  %8595 = phi float [ %8588, %8586 ], [ 0.000000e+00, %8580 ]
  %8596 = fcmp fast une float %8557, 1.000000e+00
  br i1 %8596, label %8597, label %8604, !dx.controlflow.hints !161

; <label>:8597                                    ; preds = %8593
  %8598 = call float @dx.op.unary.f32(i32 23, float %8557)  ; Log(value)
  %8599 = fmul fast float %8598, 0x3FE62E4300000000
  %8600 = fmul fast float %8554, %8599
  %8601 = fsub fast float -0.000000e+00, %8600
  %8602 = fsub fast float 1.000000e+00, %8557
  %8603 = fdiv fast float %8601, %8602
  br label %8604

; <label>:8604                                    ; preds = %8597, %8593
  %8605 = phi float [ %8603, %8597 ], [ %8554, %8593 ]
  %8606 = phi float [ %8599, %8597 ], [ 0.000000e+00, %8593 ]
  %8607 = fcmp fast une float %8558, 1.000000e+00
  br i1 %8607, label %8608, label %8615, !dx.controlflow.hints !161

; <label>:8608                                    ; preds = %8604
  %8609 = call float @dx.op.unary.f32(i32 23, float %8558)  ; Log(value)
  %8610 = fmul fast float %8609, 0x3FE62E4300000000
  %8611 = fmul fast float %8555, %8610
  %8612 = fsub fast float -0.000000e+00, %8611
  %8613 = fsub fast float 1.000000e+00, %8558
  %8614 = fdiv fast float %8612, %8613
  br label %8615

; <label>:8615                                    ; preds = %8608, %8604
  %8616 = phi float [ %8614, %8608 ], [ %8555, %8604 ]
  %8617 = phi float [ %8610, %8608 ], [ 0.000000e+00, %8604 ]
  %8618 = fmul fast float %8581, %8565
  %8619 = fmul fast float %8582, %8565
  %8620 = fmul fast float %8583, %8565
  %8621 = fmul fast float %8584, %8565
  %8622 = fmul fast float %8594, %8563
  %8623 = fmul fast float %8605, %8563
  %8624 = fmul fast float %8616, %8563
  %8625 = fmul fast float %8595, %8563
  %8626 = fmul fast float %8606, %8563
  %8627 = fmul fast float %8617, %8563
  %8628 = fadd fast float %8622, %8618
  %8629 = fadd fast float %8623, %8619
  %8630 = fadd fast float %8624, %8620
  %8631 = fadd fast float %8625, %8621
  %8632 = fadd fast float %8626, %8621
  %8633 = fadd fast float %8627, %8621
  %8634 = fcmp fast une float %8631, 0.000000e+00
  br i1 %8634, label %8635, label %8642, !dx.controlflow.hints !162

; <label>:8635                                    ; preds = %8615
  %8636 = fmul fast float %8631, 0x3FF7154760000000
  %8637 = call float @dx.op.unary.f32(i32 21, float %8636)  ; Exp(value)
  %8638 = fsub fast float 1.000000e+00, %8637
  %8639 = fmul fast float %8628, %8638
  %8640 = fsub fast float -0.000000e+00, %8639
  %8641 = fdiv fast float %8640, %8631
  br label %8642

; <label>:8642                                    ; preds = %8635, %8615
  %8643 = phi float [ %8637, %8635 ], [ 1.000000e+00, %8615 ]
  %8644 = phi float [ %8641, %8635 ], [ %8628, %8615 ]
  %8645 = fcmp fast une float %8632, 0.000000e+00
  br i1 %8645, label %8646, label %8653, !dx.controlflow.hints !162

; <label>:8646                                    ; preds = %8642
  %8647 = fmul fast float %8632, 0x3FF7154760000000
  %8648 = call float @dx.op.unary.f32(i32 21, float %8647)  ; Exp(value)
  %8649 = fsub fast float 1.000000e+00, %8648
  %8650 = fmul fast float %8629, %8649
  %8651 = fsub fast float -0.000000e+00, %8650
  %8652 = fdiv fast float %8651, %8632
  br label %8653

; <label>:8653                                    ; preds = %8646, %8642
  %8654 = phi float [ %8648, %8646 ], [ 1.000000e+00, %8642 ]
  %8655 = phi float [ %8652, %8646 ], [ %8629, %8642 ]
  %8656 = fcmp fast une float %8633, 0.000000e+00
  br i1 %8656, label %8657, label %8664, !dx.controlflow.hints !162

; <label>:8657                                    ; preds = %8653
  %8658 = fmul fast float %8633, 0x3FF7154760000000
  %8659 = call float @dx.op.unary.f32(i32 21, float %8658)  ; Exp(value)
  %8660 = fsub fast float 1.000000e+00, %8659
  %8661 = fmul fast float %8630, %8660
  %8662 = fsub fast float -0.000000e+00, %8661
  %8663 = fdiv fast float %8662, %8633
  br label %8664

; <label>:8664                                    ; preds = %8657, %8653
  %8665 = phi float [ %8659, %8657 ], [ 1.000000e+00, %8653 ]
  %8666 = phi float [ %8663, %8657 ], [ %8630, %8653 ]
  %8667 = fcmp fast ogt float %8563, %8565
  br i1 %8667, label %8668, label %8688

; <label>:8668                                    ; preds = %8664
  %8669 = fsub fast float 1.000000e+00, %8565
  %8670 = fmul fast float %8581, %8669
  %8671 = fmul fast float %8582, %8669
  %8672 = fmul fast float %8583, %8669
  %8673 = fmul fast float %8584, %8669
  %8674 = fcmp fast une float %8673, 0.000000e+00
  br i1 %8674, label %8675, label %8726, !dx.controlflow.hints !163

; <label>:8675                                    ; preds = %8668
  %8676 = fmul fast float %8673, 0x3FF7154760000000
  %8677 = call float @dx.op.unary.f32(i32 21, float %8676)  ; Exp(value)
  %8678 = fsub fast float 1.000000e+00, %8677
  %8679 = fmul fast float %8670, %8678
  %8680 = fsub fast float -0.000000e+00, %8679
  %8681 = fmul fast float %8671, %8678
  %8682 = fsub fast float -0.000000e+00, %8681
  %8683 = fmul fast float %8672, %8678
  %8684 = fsub fast float -0.000000e+00, %8683
  %8685 = fdiv fast float %8680, %8673
  %8686 = fdiv fast float %8682, %8673
  %8687 = fdiv fast float %8684, %8673
  br label %8726

; <label>:8688                                    ; preds = %8664
  %8689 = fsub fast float 1.000000e+00, %8563
  %8690 = fmul fast float %8594, %8689
  %8691 = fmul fast float %8605, %8689
  %8692 = fmul fast float %8616, %8689
  %8693 = fmul fast float %8595, %8689
  %8694 = fmul fast float %8606, %8689
  %8695 = fmul fast float %8617, %8689
  %8696 = fcmp fast une float %8693, 0.000000e+00
  br i1 %8696, label %8697, label %8704, !dx.controlflow.hints !162

; <label>:8697                                    ; preds = %8688
  %8698 = fmul fast float %8693, 0x3FF7154760000000
  %8699 = call float @dx.op.unary.f32(i32 21, float %8698)  ; Exp(value)
  %8700 = fsub fast float 1.000000e+00, %8699
  %8701 = fmul fast float %8690, %8700
  %8702 = fsub fast float -0.000000e+00, %8701
  %8703 = fdiv fast float %8702, %8693
  br label %8704

; <label>:8704                                    ; preds = %8697, %8688
  %8705 = phi float [ %8703, %8697 ], [ %8690, %8688 ]
  %8706 = phi float [ %8699, %8697 ], [ 1.000000e+00, %8688 ]
  %8707 = fcmp fast une float %8694, 0.000000e+00
  br i1 %8707, label %8708, label %8715, !dx.controlflow.hints !162

; <label>:8708                                    ; preds = %8704
  %8709 = fmul fast float %8694, 0x3FF7154760000000
  %8710 = call float @dx.op.unary.f32(i32 21, float %8709)  ; Exp(value)
  %8711 = fsub fast float 1.000000e+00, %8710
  %8712 = fmul fast float %8691, %8711
  %8713 = fsub fast float -0.000000e+00, %8712
  %8714 = fdiv fast float %8713, %8694
  br label %8715

; <label>:8715                                    ; preds = %8708, %8704
  %8716 = phi float [ %8714, %8708 ], [ %8691, %8704 ]
  %8717 = phi float [ %8710, %8708 ], [ 1.000000e+00, %8704 ]
  %8718 = fcmp fast une float %8695, 0.000000e+00
  br i1 %8718, label %8719, label %8726, !dx.controlflow.hints !162

; <label>:8719                                    ; preds = %8715
  %8720 = fmul fast float %8695, 0x3FF7154760000000
  %8721 = call float @dx.op.unary.f32(i32 21, float %8720)  ; Exp(value)
  %8722 = fsub fast float 1.000000e+00, %8721
  %8723 = fmul fast float %8692, %8722
  %8724 = fsub fast float -0.000000e+00, %8723
  %8725 = fdiv fast float %8724, %8695
  br label %8726

; <label>:8726                                    ; preds = %8719, %8715, %8675, %8668
  %8727 = phi float [ %8725, %8719 ], [ %8687, %8675 ], [ %8672, %8668 ], [ %8692, %8715 ]
  %8728 = phi float [ %8716, %8719 ], [ %8686, %8675 ], [ %8671, %8668 ], [ %8716, %8715 ]
  %8729 = phi float [ %8705, %8719 ], [ %8685, %8675 ], [ %8670, %8668 ], [ %8705, %8715 ]
  %8730 = phi float [ %8721, %8719 ], [ %8677, %8675 ], [ 1.000000e+00, %8668 ], [ 1.000000e+00, %8715 ]
  %8731 = phi float [ %8717, %8719 ], [ %8677, %8675 ], [ 1.000000e+00, %8668 ], [ %8717, %8715 ]
  %8732 = phi float [ %8706, %8719 ], [ %8677, %8675 ], [ 1.000000e+00, %8668 ], [ %8706, %8715 ]
  %8733 = fmul fast float %8732, %8644
  %8734 = fmul fast float %8731, %8655
  %8735 = fmul fast float %8730, %8666
  %8736 = fadd fast float %8733, %8729
  %8737 = fadd fast float %8734, %8728
  %8738 = fadd fast float %8735, %8727
  %8739 = fmul fast float %8732, %8643
  %8740 = fmul fast float %8731, %8654
  %8741 = fmul fast float %8730, %8665
  br label %8742

; <label>:8742                                    ; preds = %8726, %8537
  %8743 = phi float [ %8741, %8726 ], [ %8543, %8537 ]
  %8744 = phi float [ %8740, %8726 ], [ %8542, %8537 ]
  %8745 = phi float [ %8739, %8726 ], [ %8541, %8537 ]
  %8746 = phi float [ %8738, %8726 ], [ %8540, %8537 ]
  %8747 = phi float [ %8737, %8726 ], [ %8539, %8537 ]
  %8748 = phi float [ %8736, %8726 ], [ %8538, %8537 ]
  %8749 = fmul fast float %8748, %7694
  %8750 = fmul fast float %8747, %7694
  %8751 = fmul fast float %8746, %7694
  %8752 = fmul fast float %8745, %7985
  %8753 = call float @dx.op.dot3.f32(i32 55, float %8745, float %8744, float %8743, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8754 = call float @dx.op.dot3.f32(i32 55, float %8749, float %8750, float %8751, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8755 = select i1 %250, float %8753, float %8745
  %8756 = select i1 %250, float %8753, float %8744
  %8757 = select i1 %250, float 1.000000e+00, float %8743
  %8758 = select i1 %250, float %8754, float %8749
  %8759 = select i1 %250, float 0.000000e+00, float %8750
  %8760 = select i1 %250, float 0.000000e+00, float %8751
  %8761 = fmul fast float %8755, %7979
  %8762 = fmul fast float %8756, %7980
  %8763 = fmul fast float %8757, %7981
  %8764 = fadd fast float %8761, %8758
  %8765 = fadd fast float %8762, %8759
  %8766 = fadd fast float %8760, %8763
  %8767 = fmul fast float %8755, %7982
  %8768 = fmul fast float %8756, %7983
  %8769 = fmul fast float %8757, %7984
  %8770 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8771 = extractvalue %dx.types.CBufRet.i32 %8770, 0
  %8772 = icmp eq i32 %8771, 0
  br i1 %8772, label %9140, label %8773, !dx.controlflow.hints !164

; <label>:8773                                    ; preds = %8742
  %8774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8775 = extractvalue %dx.types.CBufRet.f32 %8774, 2
  %8776 = extractvalue %dx.types.CBufRet.f32 %8774, 3
  %8777 = fmul fast float %8775, %102
  %8778 = fmul fast float %8776, %103
  %8779 = fmul fast float %8777, 2.000000e+00
  %8780 = fmul fast float %8778, 2.000000e+00
  %8781 = fsub fast float 1.000000e+00, %8779
  %8782 = fsub fast float 1.000000e+00, %8780
  %8783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8784 = extractvalue %dx.types.CBufRet.f32 %8783, 0
  %8785 = extractvalue %dx.types.CBufRet.f32 %8783, 1
  %8786 = extractvalue %dx.types.CBufRet.f32 %8783, 2
  %8787 = fmul fast float %8781, %8784
  %8788 = fmul fast float %8781, %8785
  %8789 = fmul fast float %8781, %8786
  %8790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8791 = extractvalue %dx.types.CBufRet.f32 %8790, 0
  %8792 = extractvalue %dx.types.CBufRet.f32 %8790, 1
  %8793 = extractvalue %dx.types.CBufRet.f32 %8790, 2
  %8794 = fmul fast float %8782, %8791
  %8795 = fmul fast float %8782, %8792
  %8796 = fmul fast float %8782, %8793
  %8797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8797, 0
  %8799 = extractvalue %dx.types.CBufRet.f32 %8797, 1
  %8800 = extractvalue %dx.types.CBufRet.f32 %8797, 2
  %8801 = fadd fast float %8794, %8798
  %8802 = fadd fast float %8801, %8787
  %8803 = fadd fast float %8795, %8799
  %8804 = fadd fast float %8803, %8788
  %8805 = fadd fast float %8796, %8800
  %8806 = fadd fast float %8805, %8789
  %8807 = fmul fast float %8802, %7978
  %8808 = fmul fast float %8804, %7978
  %8809 = fmul fast float %8806, %7978
  %8810 = fmul fast float %8807, %8807
  %8811 = fmul fast float %8808, %8808
  %8812 = fadd fast float %8810, %8811
  %8813 = fmul fast float %8809, %8809
  %8814 = fadd fast float %8812, %8813
  %8815 = call float @dx.op.unary.f32(i32 24, float %8814)  ; Sqrt(value)
  %8816 = extractvalue %dx.types.CBufRet.f32 %7705, 0
  %8817 = fsub fast float %8815, %8816
  %8818 = extractvalue %dx.types.CBufRet.f32 %7705, 2
  %8819 = fmul fast float %8817, %8818
  %8820 = call float @dx.op.unary.f32(i32 7, float %8819)  ; Saturate(value)
  %8821 = fadd fast float %8820, -5.000000e-01
  %8822 = fmul fast float %8821, 2.000000e+00
  %8823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8824 = extractvalue %dx.types.CBufRet.f32 %8823, 2
  %8825 = call float @dx.op.binary.f32(i32 36, float %8824, float %8822)  ; FMin(a,b)
  %8826 = fsub fast float -0.000000e+00, %8824
  %8827 = fcmp fast ogt float %8825, %8826
  br i1 %8827, label %8828, label %9140, !dx.controlflow.hints !165

; <label>:8828                                    ; preds = %8773
  %8829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8830 = extractvalue %dx.types.CBufRet.f32 %8829, 3
  %8831 = fcmp fast ogt float %8830, 0.000000e+00
  br i1 %8831, label %8832, label %8907, !dx.controlflow.hints !166

; <label>:8832                                    ; preds = %8828
  %8833 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %8834 = extractvalue %dx.types.Dimensions %8833, 0
  %8835 = sitofp i32 %8834 to float
  %8836 = extractvalue %dx.types.Dimensions %8833, 1
  %8837 = sitofp i32 %8836 to float
  %8838 = fmul fast float %8777, %8835
  %8839 = fmul fast float %8778, %8837
  %8840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8841 = extractvalue %dx.types.CBufRet.f32 %8840, 1
  %8842 = fsub fast float -0.000000e+00, %8841
  %8843 = fptoui float %8842 to i32
  %8844 = fptoui float %8838 to i32
  %8845 = fptoui float %8839 to i32
  %8846 = and i32 %8843, 31
  %8847 = lshr i32 %8844, %8846
  %8848 = lshr i32 %8845, %8846
  %8849 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %8843, i32 %8847, i32 %8848, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8850 = extractvalue %dx.types.ResRet.f32 %8849, 0
  %8851 = fcmp fast olt float %8850, -1.000000e+00
  %8852 = fcmp fast ogt float %8850, -1.000000e+00
  %8853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8854 = extractvalue %dx.types.CBufRet.f32 %8853, 1
  %8855 = select i1 %8852, float %8854, float 1.000000e+00
  %8856 = fadd fast float %8850, 1.000000e+00
  %8857 = fmul fast float %8855, %8856
  %8858 = call float @dx.op.unary.f32(i32 6, float %8857)  ; FAbs(value)
  %8859 = extractvalue %dx.types.CBufRet.f32 %8853, 3
  %8860 = fcmp fast oge float %8858, %8859
  %8861 = select i1 %8860, float 0x4197782600000000, float %8858
  %8862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8863 = extractvalue %dx.types.CBufRet.f32 %8862, 0
  %8864 = extractvalue %dx.types.CBufRet.f32 %8862, 1
  %8865 = extractvalue %dx.types.CBufRet.f32 %8862, 2
  %8866 = select i1 %8851, float %8863, float %8784
  %8867 = select i1 %8851, float %8864, float %8785
  %8868 = select i1 %8851, float %8865, float %8786
  %8869 = fmul fast float %8866, %8781
  %8870 = fmul fast float %8867, %8781
  %8871 = fmul fast float %8868, %8781
  %8872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8873 = extractvalue %dx.types.CBufRet.f32 %8872, 0
  %8874 = extractvalue %dx.types.CBufRet.f32 %8872, 1
  %8875 = extractvalue %dx.types.CBufRet.f32 %8872, 2
  %8876 = select i1 %8851, float %8873, float %8791
  %8877 = select i1 %8851, float %8874, float %8792
  %8878 = select i1 %8851, float %8875, float %8793
  %8879 = fmul fast float %8876, %8782
  %8880 = fmul fast float %8877, %8782
  %8881 = fmul fast float %8878, %8782
  %8882 = fadd fast float %8879, %8869
  %8883 = fadd fast float %8880, %8870
  %8884 = fadd fast float %8881, %8871
  %8885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8886 = extractvalue %dx.types.CBufRet.f32 %8885, 0
  %8887 = extractvalue %dx.types.CBufRet.f32 %8885, 1
  %8888 = extractvalue %dx.types.CBufRet.f32 %8885, 2
  %8889 = select i1 %8851, float %8886, float %8798
  %8890 = select i1 %8851, float %8887, float %8799
  %8891 = select i1 %8851, float %8888, float %8800
  %8892 = fadd fast float %8882, %8889
  %8893 = fadd fast float %8883, %8890
  %8894 = fadd fast float %8884, %8891
  %8895 = fmul fast float %8892, %8861
  %8896 = fmul fast float %8893, %8861
  %8897 = fmul fast float %8894, %8861
  %8898 = fmul fast float %8895, %8895
  %8899 = fmul fast float %8896, %8896
  %8900 = fadd fast float %8898, %8899
  %8901 = fmul fast float %8897, %8897
  %8902 = fadd fast float %8900, %8901
  %8903 = call float @dx.op.unary.f32(i32 24, float %8902)  ; Sqrt(value)
  %8904 = fsub fast float %8903, %8816
  %8905 = fmul fast float %8904, %8818
  %8906 = call float @dx.op.unary.f32(i32 7, float %8905)  ; Saturate(value)
  br label %8907

; <label>:8907                                    ; preds = %8832, %8828
  %8908 = phi float [ %8906, %8832 ], [ 1.000000e+00, %8828 ]
  %8909 = fmul fast float %8825, 5.000000e-01
  %8910 = fadd fast float %8909, 5.000000e-01
  %8911 = call float @dx.op.unary.f32(i32 22, float %8910)  ; Frc(value)
  %8912 = call float @dx.op.unary.f32(i32 27, float %8911)  ; Round_ni(value)
  %8913 = call float @dx.op.unary.f32(i32 22, float %8911)  ; Frc(value)
  %8914 = fmul fast float %8913, 2.000000e+00
  %8915 = fadd fast float %8914, -1.000000e+00
  %8916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %42, float %8777, float %8778, float %8912, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8917 = extractvalue %dx.types.ResRet.f32 %8916, 0
  %8918 = extractvalue %dx.types.ResRet.f32 %8916, 1
  %8919 = extractvalue %dx.types.ResRet.f32 %8916, 2
  %8920 = extractvalue %dx.types.ResRet.f32 %8916, 3
  %8921 = fadd fast float %8917, -5.000000e-01
  %8922 = fadd fast float %8919, -5.000000e-01
  %8923 = fmul fast float %8921, 0xBFD5555560000000
  %8924 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8922, float %8923)  ; FMad(a,b,c)
  %8925 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8918, float 0.000000e+00)  ; FMad(a,b,c)
  %8926 = fadd fast float %8925, %8920
  %8927 = fmul fast float %8921, -7.500000e-01
  %8928 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8922, float %8927)  ; FMad(a,b,c)
  %8929 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8918, float 0.000000e+00)  ; FMad(a,b,c)
  %8930 = fadd fast float %8929, %8920
  %8931 = call float @dx.op.binary.f32(i32 35, float %8924, float -1.000000e+00)  ; FMax(a,b)
  %8932 = call float @dx.op.binary.f32(i32 35, float %8926, float -1.000000e+00)  ; FMax(a,b)
  %8933 = call float @dx.op.binary.f32(i32 35, float %8928, float -1.000000e+00)  ; FMax(a,b)
  %8934 = call float @dx.op.binary.f32(i32 35, float %8930, float -1.000000e+00)  ; FMax(a,b)
  %8935 = call float @dx.op.binary.f32(i32 36, float %8931, float 1.000000e+00)  ; FMin(a,b)
  %8936 = call float @dx.op.binary.f32(i32 36, float %8932, float 1.000000e+00)  ; FMin(a,b)
  %8937 = call float @dx.op.binary.f32(i32 36, float %8933, float 1.000000e+00)  ; FMin(a,b)
  %8938 = call float @dx.op.binary.f32(i32 36, float %8934, float 1.000000e+00)  ; FMin(a,b)
  %8939 = fcmp fast olt float %8935, 0x3FEFFF8020000000
  br i1 %8939, label %8940, label %9055, !dx.controlflow.hints !167

; <label>:8940                                    ; preds = %8907
  %8941 = extractvalue %dx.types.CBufRet.f32 %8823, 3
  %8942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8943 = extractvalue %dx.types.CBufRet.f32 %8942, 0
  %8944 = extractvalue %dx.types.CBufRet.f32 %8942, 1
  %8945 = extractvalue %dx.types.CBufRet.f32 %8942, 2
  %8946 = extractvalue %dx.types.CBufRet.f32 %8942, 3
  %8947 = fsub fast float %8943, %8935
  %8948 = fsub fast float %8944, %8936
  %8949 = fsub fast float %8945, %8937
  %8950 = fsub fast float %8946, %8938
  %8951 = fmul fast float %8947, %8941
  %8952 = fmul fast float %8948, %8941
  %8953 = fmul fast float %8949, %8941
  %8954 = fmul fast float %8950, %8941
  %8955 = fadd fast float %8951, %8935
  %8956 = fadd fast float %8952, %8936
  %8957 = fsub fast float -0.000000e+00, %8956
  %8958 = fadd fast float %8953, %8937
  %8959 = fadd fast float %8954, %8938
  %8960 = fmul fast float %8955, %8955
  %8961 = fsub fast float %8956, %8960
  %8962 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8961)  ; FMax(a,b)
  %8963 = fdiv fast float 1.000000e+00, %8962
  %8964 = fmul fast float %8956, %8955
  %8965 = fsub fast float %8958, %8964
  %8966 = fsub fast float %8915, %8955
  %8967 = fmul fast float %8915, %8915
  %8968 = fsub fast float %8967, %8956
  %8969 = fmul fast float %8966, %8963
  %8970 = fmul fast float %8969, %8965
  %8971 = fsub fast float %8968, %8970
  %8972 = fmul fast float %8956, %8956
  %8973 = fsub fast float %8959, %8972
  %8974 = fmul fast float %8965, %8965
  %8975 = fmul fast float %8974, %8963
  %8976 = fsub fast float %8973, %8975
  %8977 = fdiv fast float %8971, %8976
  %8978 = fmul fast float %8965, %8977
  %8979 = fsub fast float %8966, %8978
  %8980 = fmul fast float %8979, %8963
  %8981 = fmul fast float %8980, %8955
  %8982 = fsub fast float 1.000000e+00, %8981
  %8983 = fmul fast float %8956, %8977
  %8984 = fsub fast float %8982, %8983
  %8985 = fmul fast float %8980, %8980
  %8986 = fmul fast float %8977, 4.000000e+00
  %8987 = fmul fast float %8986, %8984
  %8988 = fsub fast float %8985, %8987
  %8989 = call float @dx.op.unary.f32(i32 24, float %8988)  ; Sqrt(value)
  %8990 = fcmp fast oge float %8980, 0.000000e+00
  %8991 = fsub fast float -0.000000e+00, %8989
  %8992 = select i1 %8990, float %8991, float %8989
  %8993 = fsub fast float %8992, %8980
  %8994 = fdiv fast float %8993, %8977
  %8995 = fdiv fast float %8984, %8993
  %8996 = fmul fast float %8994, 5.000000e-01
  %8997 = fmul fast float %8995, 2.000000e+00
  %8998 = select i1 %8990, float %8996, float %8997
  %8999 = select i1 %8990, float %8997, float %8996
  %9000 = call float @dx.op.binary.f32(i32 35, float %8998, float %8999)  ; FMax(a,b)
  %9001 = call float @dx.op.binary.f32(i32 36, float %8998, float %8999)  ; FMin(a,b)
  %9002 = fcmp fast ogt float %8915, %9001
  br i1 %9002, label %9003, label %9013

; <label>:9003                                    ; preds = %8940
  %9004 = fsub fast float %8915, %9001
  %9005 = fsub fast float %9000, %9001
  %9006 = fmul fast float %9004, %9005
  %9007 = fmul fast float %9000, %8915
  %9008 = fadd fast float %9000, %8915
  %9009 = fmul fast float %9008, %8955
  %9010 = fadd fast float %9007, %8956
  %9011 = fsub fast float %9010, %9009
  %9012 = fdiv fast float %9011, %9006
  br label %9013

; <label>:9013                                    ; preds = %9003, %8940
  %9014 = phi float [ %9012, %9003 ], [ 0.000000e+00, %8940 ]
  %9015 = fcmp fast ogt float %8915, %9000
  %9016 = fsub fast float %8915, %9000
  br i1 %9015, label %9017, label %9027

; <label>:9017                                    ; preds = %9013
  %9018 = fsub fast float %9000, %9001
  %9019 = fmul fast float %9018, %9016
  %9020 = fmul fast float %9001, %8915
  %9021 = fadd fast float %9001, %8915
  %9022 = fmul fast float %9021, %8955
  %9023 = fsub fast float %8957, %9020
  %9024 = fadd fast float %9023, %9022
  %9025 = fdiv fast float %9024, %9019
  %9026 = fadd fast float %9025, %9014
  br label %9027

; <label>:9027                                    ; preds = %9017, %9013
  %9028 = phi float [ %9026, %9017 ], [ %9014, %9013 ]
  %9029 = fsub fast float %8915, %9001
  %9030 = fmul fast float %9029, %9016
  %9031 = fmul fast float %9001, %9000
  %9032 = fadd fast float %9001, %9000
  %9033 = fmul fast float %9032, %8955
  %9034 = fadd fast float %9031, %8956
  %9035 = fsub fast float %9034, %9033
  %9036 = fdiv fast float %9035, %9030
  %9037 = call float @dx.op.unary.f32(i32 7, float %9028)  ; Saturate(value)
  %9038 = fcmp fast oeq float %7706, 0.000000e+00
  %9039 = extractvalue %dx.types.CBufRet.f32 %8823, 0
  %9040 = fcmp fast oeq float %9039, 0.000000e+00
  %9041 = or i1 %9038, %9040
  %9042 = fmul fast float %9039, 2.000000e+00
  %9043 = fadd fast float %8824, %8825
  %9044 = fdiv fast float %9043, %9042
  %9045 = call float @dx.op.unary.f32(i32 7, float %9044)  ; Saturate(value)
  %9046 = fmul fast float %9045, 2.000000e+00
  %9047 = fsub fast float 3.000000e+00, %9046
  %9048 = fmul fast float %9045, %9045
  %9049 = fmul fast float %9048, %9047
  %9050 = select i1 %9041, float 1.000000e+00, float %9049
  %9051 = fmul fast float %9036, %7706
  %9052 = fadd fast float %9037, %9051
  %9053 = call float @dx.op.unary.f32(i32 7, float %9052)  ; Saturate(value)
  %9054 = fmul fast float %9050, %9053
  br label %9055

; <label>:9055                                    ; preds = %9027, %8907
  %9056 = phi float [ %9054, %9027 ], [ 0.000000e+00, %8907 ]
  %9057 = fsub fast float 1.000000e+00, %9056
  %9058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %42, float %8777, float %8778, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9059 = extractvalue %dx.types.ResRet.f32 %9058, 0
  %9060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9061 = extractvalue %dx.types.CBufRet.i32 %9060, 2
  %9062 = icmp eq i32 %9061, 0
  br i1 %9062, label %9068, label %9063

; <label>:9063                                    ; preds = %9055
  %9064 = call float @dx.op.unary.f32(i32 7, float %9056)  ; Saturate(value)
  %9065 = fadd fast float %9059, -1.000000e+00
  %9066 = fmul fast float %9064, %9065
  %9067 = fadd fast float %9066, 1.000000e+00
  br label %9068

; <label>:9068                                    ; preds = %9063, %9055
  %9069 = phi float [ %9067, %9063 ], [ %9057, %9055 ]
  br i1 %8831, label %9070, label %9088

; <label>:9070                                    ; preds = %9068
  %9071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9072 = extractvalue %dx.types.CBufRet.f32 %9071, 1
  %9073 = fsub fast float %8908, %9072
  %9074 = call float @dx.op.unary.f32(i32 7, float %9073)  ; Saturate(value)
  %9075 = fsub fast float %8908, %8830
  %9076 = call float @dx.op.unary.f32(i32 7, float %9075)  ; Saturate(value)
  %9077 = fsub fast float %9074, %9076
  %9078 = fsub fast float %8910, %9076
  %9079 = fdiv fast float %9078, %9077
  %9080 = call float @dx.op.unary.f32(i32 7, float %9079)  ; Saturate(value)
  %9081 = fmul fast float %9080, 2.000000e+00
  %9082 = fsub fast float 3.000000e+00, %9081
  %9083 = fsub fast float %9059, %9069
  %9084 = fmul fast float %9080, %9080
  %9085 = fmul fast float %9084, %9083
  %9086 = fmul fast float %9085, %9082
  %9087 = fadd fast float %9086, %9069
  br label %9088

; <label>:9088                                    ; preds = %9070, %9068
  %9089 = phi float [ %9087, %9070 ], [ %9069, %9068 ]
  %9090 = call float @dx.op.binary.f32(i32 35, float %9059, float %9089)  ; FMax(a,b)
  %9091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9092 = extractvalue %dx.types.CBufRet.i32 %9091, 2
  %9093 = and i32 %9092, 1
  %9094 = icmp eq i32 %9093, 0
  %9095 = fcmp fast une float %9090, 1.000000e+00
  %9096 = and i1 %9095, %9094
  br i1 %9096, label %9097, label %9116

; <label>:9097                                    ; preds = %9088
  %9098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %42, float %8777, float %8778, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9099 = extractvalue %dx.types.ResRet.f32 %9098, 0
  %9100 = extractvalue %dx.types.ResRet.f32 %9098, 1
  %9101 = extractvalue %dx.types.ResRet.f32 %9098, 2
  %9102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9103 = extractvalue %dx.types.CBufRet.f32 %9102, 1
  %9104 = fmul fast float %9103, %9099
  %9105 = fmul fast float %9103, %9100
  %9106 = fmul fast float %9103, %9101
  %9107 = fcmp fast ogt float %9059, 0x3FEFFF2E40000000
  %9108 = fsub fast float 1.000000e+00, %9090
  %9109 = fsub fast float 1.000000e+00, %9059
  %9110 = fdiv fast float %9108, %9109
  %9111 = call float @dx.op.unary.f32(i32 7, float %9110)  ; Saturate(value)
  %9112 = select i1 %9107, float 0.000000e+00, float %9111
  %9113 = fmul fast float %9104, %9112
  %9114 = fmul fast float %9105, %9112
  %9115 = fmul fast float %9106, %9112
  br label %9116

; <label>:9116                                    ; preds = %9097, %9088
  %9117 = phi float [ 0.000000e+00, %9088 ], [ %9113, %9097 ]
  %9118 = phi float [ 0.000000e+00, %9088 ], [ %9114, %9097 ]
  %9119 = phi float [ 0.000000e+00, %9088 ], [ %9115, %9097 ]
  %9120 = fmul fast float %9117, %7694
  %9121 = fmul fast float %9118, %7694
  %9122 = fmul fast float %9119, %7694
  %9123 = fmul fast float %9090, %8752
  %9124 = call float @dx.op.dot3.f32(i32 55, float %9090, float %9090, float %9090, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9125 = call float @dx.op.dot3.f32(i32 55, float %9120, float %9121, float %9122, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9126 = select i1 %250, float %9124, float %9090
  %9127 = select i1 %250, float 1.000000e+00, float %9090
  %9128 = select i1 %250, float %9125, float %9120
  %9129 = select i1 %250, float 0.000000e+00, float %9121
  %9130 = select i1 %250, float 0.000000e+00, float %9122
  %9131 = fmul fast float %9126, %8764
  %9132 = fmul fast float %9126, %8765
  %9133 = fmul fast float %9127, %8766
  %9134 = fadd fast float %9131, %9128
  %9135 = fadd fast float %9132, %9129
  %9136 = fadd fast float %9130, %9133
  %9137 = fmul fast float %9126, %8767
  %9138 = fmul fast float %9126, %8768
  %9139 = fmul fast float %9127, %8769
  br label %9140

; <label>:9140                                    ; preds = %9116, %8773, %8742, %7974
  %9141 = phi float [ %7979, %7974 ], [ %8764, %8742 ], [ %9134, %9116 ], [ %8764, %8773 ]
  %9142 = phi float [ %7980, %7974 ], [ %8765, %8742 ], [ %9135, %9116 ], [ %8765, %8773 ]
  %9143 = phi float [ %7981, %7974 ], [ %8766, %8742 ], [ %9136, %9116 ], [ %8766, %8773 ]
  %9144 = phi float [ %7982, %7974 ], [ %8767, %8742 ], [ %9137, %9116 ], [ %8767, %8773 ]
  %9145 = phi float [ %7983, %7974 ], [ %8768, %8742 ], [ %9138, %9116 ], [ %8768, %8773 ]
  %9146 = phi float [ %7984, %7974 ], [ %8769, %8742 ], [ %9139, %9116 ], [ %8769, %8773 ]
  %9147 = phi float [ %7985, %7974 ], [ %8752, %8742 ], [ %9123, %9116 ], [ %8752, %8773 ]
  %9148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9149 = extractvalue %dx.types.CBufRet.f32 %9148, 2
  %9150 = extractvalue %dx.types.CBufRet.f32 %9148, 3
  %9151 = fmul fast float %9149, %102
  %9152 = fmul fast float %9150, %103
  %9153 = call float @dx.op.unary.f32(i32 7, float %9151)  ; Saturate(value)
  %9154 = call float @dx.op.unary.f32(i32 7, float %9152)  ; Saturate(value)
  %9155 = select i1 %7716, i32 2, i32 0
  %9156 = or i32 %9155, 1
  %9157 = uitofp i32 %9156 to float
  %9158 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9153, float %9154, float %9157, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9159 = extractvalue %dx.types.ResRet.f32 %9158, 0
  %9160 = extractvalue %dx.types.ResRet.f32 %9158, 1
  %9161 = extractvalue %dx.types.ResRet.f32 %9158, 2
  %9162 = extractvalue %dx.types.ResRet.f32 %9158, 3
  %9163 = add nuw nsw i32 %9155, 2
  %9164 = uitofp i32 %9163 to float
  %9165 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9153, float %9154, float %9164, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9166 = extractvalue %dx.types.ResRet.f32 %9165, 0
  %9167 = extractvalue %dx.types.ResRet.f32 %9165, 1
  %9168 = extractvalue %dx.types.ResRet.f32 %9165, 2
  %9169 = extractvalue %dx.types.ResRet.f32 %9165, 3
  %9170 = call float @dx.op.binary.f32(i32 35, float %9160, float %9161)  ; FMax(a,b)
  %9171 = call float @dx.op.binary.f32(i32 35, float %9159, float %9170)  ; FMax(a,b)
  %9172 = call float @dx.op.binary.f32(i32 35, float %9171, float %9162)  ; FMax(a,b)
  %9173 = call float @dx.op.binary.f32(i32 36, float %9167, float %9168)  ; FMin(a,b)
  %9174 = call float @dx.op.binary.f32(i32 36, float %9166, float %9173)  ; FMin(a,b)
  %9175 = call float @dx.op.binary.f32(i32 36, float %9174, float %9169)  ; FMin(a,b)
  %9176 = fmul fast float %9172, 2.550000e+02
  %9177 = fadd fast float %9176, 0x3F70101020000000
  %9178 = fptoui float %9177 to i32
  %9179 = fmul fast float %9175, 2.550000e+02
  %9180 = fadd fast float %9179, 0x3F70101020000000
  %9181 = fptoui float %9180 to i32
  %9182 = icmp ult i32 %9178, %9181
  br i1 %9182, label %9183, label %9352

; <label>:9183                                    ; preds = %9140
  %9184 = fcmp fast ogt float %88, 9.843750e-01
  %9185 = fadd fast float %7978, -4.000000e+00
  %9186 = select i1 %9184, float -4.000000e+00, float %9185
  %9187 = call float @dx.op.binary.f32(i32 35, float %9186, float 0.000000e+00)  ; FMax(a,b)
  %9188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9189 = extractvalue %dx.types.CBufRet.f32 %9188, 0
  %9190 = fadd fast float %9189, %9187
  %9191 = extractvalue %dx.types.CBufRet.f32 %9188, 2
  %9192 = fmul fast float %9190, %9191
  %9193 = call float @dx.op.unary.f32(i32 23, float %9192)  ; Log(value)
  %9194 = extractvalue %dx.types.CBufRet.f32 %9188, 3
  %9195 = fmul fast float %9194, %9193
  %9196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9197 = extractvalue %dx.types.CBufRet.f32 %9196, 2
  %9198 = fmul fast float %9195, %9197
  %9199 = call float @dx.op.unary.f32(i32 7, float %9198)  ; Saturate(value)
  %9200 = uitofp i32 %9178 to float
  %9201 = uitofp i32 %9181 to float
  %9202 = fadd fast float %9200, 5.000000e-01
  %9203 = fadd fast float %9201, 5.000000e-01
  %9204 = fmul fast float %9197, %9202
  %9205 = fmul fast float %9197, %9203
  %9206 = fadd fast float %9204, 0x3F0FFB4800000000
  %9207 = fadd fast float %9205, 0xBF0FFB4800000000
  %9208 = call float @dx.op.binary.f32(i32 35, float %9199, float %9206)  ; FMax(a,b)
  %9209 = call float @dx.op.binary.f32(i32 36, float %9208, float %9207)  ; FMin(a,b)
  %9210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9211 = extractvalue %dx.types.CBufRet.f32 %9210, 1
  %9212 = extractvalue %dx.types.CBufRet.f32 %9210, 2
  %9213 = extractvalue %dx.types.CBufRet.f32 %9210, 0
  %9214 = select i1 %7716, float %9213, float 0.000000e+00
  %9215 = fmul fast float %9211, %9209
  %9216 = fadd fast float %9214, %9215
  %9217 = fadd fast float %9214, %9212
  %9218 = fsub fast float %9211, %9212
  %9219 = fadd fast float %9218, %9214
  %9220 = call float @dx.op.binary.f32(i32 35, float %9216, float %9217)  ; FMax(a,b)
  %9221 = call float @dx.op.binary.f32(i32 36, float %9220, float %9219)  ; FMin(a,b)
  %9222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %9153, float %9154, float %9221, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9223 = extractvalue %dx.types.ResRet.f32 %9222, 0
  %9224 = extractvalue %dx.types.ResRet.f32 %9222, 1
  %9225 = extractvalue %dx.types.ResRet.f32 %9222, 2
  %9226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9227 = extractvalue %dx.types.CBufRet.i32 %9226, 0
  %9228 = extractvalue %dx.types.CBufRet.i32 %9226, 1
  %9229 = uitofp i32 %9227 to float
  %9230 = uitofp i32 %9228 to float
  %9231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9232 = extractvalue %dx.types.CBufRet.f32 %9231, 0
  %9233 = extractvalue %dx.types.CBufRet.f32 %9231, 1
  %9234 = fmul fast float %9229, %9153
  %9235 = fmul fast float %9230, %9154
  %9236 = fadd fast float %9234, -5.000000e-01
  %9237 = fadd fast float %9235, -5.000000e-01
  %9238 = call float @dx.op.unary.f32(i32 22, float %9236)  ; Frc(value)
  %9239 = call float @dx.op.unary.f32(i32 22, float %9237)  ; Frc(value)
  %9240 = fmul fast float %9238, %9238
  %9241 = fmul fast float %9240, %9238
  %9242 = fsub fast float 3.000000e+00, %9238
  %9243 = fmul fast float %9240, %9242
  %9244 = fmul fast float %9238, 3.000000e+00
  %9245 = fmul fast float %9241, 3.000000e+00
  %9246 = fmul fast float %9240, 6.000000e+00
  %9247 = fsub fast float %9245, %9246
  %9248 = fadd fast float %9247, 4.000000e+00
  %9249 = fmul fast float %9248, 0x3FC5555560000000
  %9250 = fmul fast float %9241, -3.000000e+00
  %9251 = fadd fast float %9240, %9238
  %9252 = fmul fast float %9251, 3.000000e+00
  %9253 = fadd fast float %9250, 1.000000e+00
  %9254 = fadd fast float %9253, %9252
  %9255 = fmul fast float %9241, 0x3FC5555560000000
  %9256 = fmul fast float %9239, %9239
  %9257 = fmul fast float %9256, %9239
  %9258 = fsub fast float 3.000000e+00, %9239
  %9259 = fmul fast float %9256, %9258
  %9260 = fmul fast float %9239, 3.000000e+00
  %9261 = fmul fast float %9257, 3.000000e+00
  %9262 = fmul fast float %9256, 6.000000e+00
  %9263 = fsub fast float %9261, %9262
  %9264 = fadd fast float %9263, 4.000000e+00
  %9265 = fmul fast float %9264, 0x3FC5555560000000
  %9266 = fmul fast float %9257, -3.000000e+00
  %9267 = fadd fast float %9256, %9239
  %9268 = fmul fast float %9267, 3.000000e+00
  %9269 = fadd fast float %9266, 1.000000e+00
  %9270 = fadd fast float %9269, %9268
  %9271 = fmul fast float %9257, 0x3FC5555560000000
  %9272 = fadd fast float %9238, 1.000000e+00
  %9273 = fsub fast float 1.000000e+00, %9244
  %9274 = fadd fast float %9273, %9243
  %9275 = fadd fast float %9274, %9248
  %9276 = fmul fast float %9275, 0x3FC5555560000000
  %9277 = fdiv fast float %9249, %9276
  %9278 = fsub fast float %9272, %9277
  %9279 = fsub fast float 1.000000e+00, %9238
  %9280 = fadd fast float %9254, %9241
  %9281 = fmul fast float %9280, 0x3FC5555560000000
  %9282 = fdiv fast float %9255, %9281
  %9283 = fadd fast float %9279, %9282
  %9284 = fadd fast float %9239, 1.000000e+00
  %9285 = fsub fast float 1.000000e+00, %9260
  %9286 = fadd fast float %9285, %9259
  %9287 = fadd fast float %9286, %9264
  %9288 = fmul fast float %9287, 0x3FC5555560000000
  %9289 = fdiv fast float %9265, %9288
  %9290 = fsub fast float %9284, %9289
  %9291 = fsub fast float 1.000000e+00, %9239
  %9292 = fadd fast float %9270, %9257
  %9293 = fmul fast float %9292, 0x3FC5555560000000
  %9294 = fdiv fast float %9271, %9293
  %9295 = fadd fast float %9294, %9291
  %9296 = fmul fast float %9278, %9232
  %9297 = fsub fast float %9153, %9296
  %9298 = fmul fast float %9283, %9232
  %9299 = fadd fast float %9298, %9153
  %9300 = fmul fast float %9295, %9233
  %9301 = fadd fast float %9300, %9154
  %9302 = fmul fast float %9290, %9233
  %9303 = fsub fast float %9154, %9302
  %9304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9297, float %9303, float %9221, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9305 = extractvalue %dx.types.ResRet.f32 %9304, 0
  %9306 = extractvalue %dx.types.ResRet.f32 %9304, 1
  %9307 = extractvalue %dx.types.ResRet.f32 %9304, 2
  %9308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9299, float %9303, float %9221, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9309 = extractvalue %dx.types.ResRet.f32 %9308, 0
  %9310 = extractvalue %dx.types.ResRet.f32 %9308, 1
  %9311 = extractvalue %dx.types.ResRet.f32 %9308, 2
  %9312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9297, float %9301, float %9221, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9313 = extractvalue %dx.types.ResRet.f32 %9312, 0
  %9314 = extractvalue %dx.types.ResRet.f32 %9312, 1
  %9315 = extractvalue %dx.types.ResRet.f32 %9312, 2
  %9316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9299, float %9301, float %9221, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9317 = extractvalue %dx.types.ResRet.f32 %9316, 0
  %9318 = extractvalue %dx.types.ResRet.f32 %9316, 1
  %9319 = extractvalue %dx.types.ResRet.f32 %9316, 2
  %9320 = fsub fast float %9313, %9305
  %9321 = fsub fast float %9314, %9306
  %9322 = fsub fast float %9315, %9307
  %9323 = fmul fast float %9320, %9293
  %9324 = fmul fast float %9321, %9293
  %9325 = fmul fast float %9322, %9293
  %9326 = fadd fast float %9323, %9305
  %9327 = fadd fast float %9324, %9306
  %9328 = fadd fast float %9325, %9307
  %9329 = fsub fast float %9317, %9309
  %9330 = fsub fast float %9318, %9310
  %9331 = fsub fast float %9319, %9311
  %9332 = fmul fast float %9329, %9293
  %9333 = fmul fast float %9330, %9293
  %9334 = fmul fast float %9331, %9293
  %9335 = fsub fast float %9309, %9326
  %9336 = fadd fast float %9335, %9332
  %9337 = fsub fast float %9310, %9327
  %9338 = fadd fast float %9337, %9333
  %9339 = fsub fast float %9311, %9328
  %9340 = fadd fast float %9339, %9334
  %9341 = fmul fast float %9336, %9281
  %9342 = fmul fast float %9338, %9281
  %9343 = fmul fast float %9340, %9281
  %9344 = fadd fast float %9341, %9326
  %9345 = fadd fast float %9342, %9327
  %9346 = fadd fast float %9343, %9328
  %9347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9348 = extractvalue %dx.types.CBufRet.f32 %9347, 1
  %9349 = fmul fast float %9344, %9348
  %9350 = fmul fast float %9345, %9348
  %9351 = fmul fast float %9346, %9348
  br label %9352

; <label>:9352                                    ; preds = %9183, %9140
  %9353 = phi float [ %9223, %9183 ], [ 1.000000e+00, %9140 ]
  %9354 = phi float [ %9224, %9183 ], [ 1.000000e+00, %9140 ]
  %9355 = phi float [ %9225, %9183 ], [ 1.000000e+00, %9140 ]
  %9356 = phi float [ %9349, %9183 ], [ 0.000000e+00, %9140 ]
  %9357 = phi float [ %9350, %9183 ], [ 0.000000e+00, %9140 ]
  %9358 = phi float [ %9351, %9183 ], [ 0.000000e+00, %9140 ]
  %9359 = fmul fast float %9356, %7694
  %9360 = fmul fast float %9357, %7694
  %9361 = fmul fast float %9358, %7694
  %9362 = fmul fast float %9353, %9147
  %9363 = call float @dx.op.dot3.f32(i32 55, float %9353, float %9354, float %9355, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9364 = call float @dx.op.dot3.f32(i32 55, float %9359, float %9360, float %9361, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9365 = select i1 %250, float %9363, float %9353
  %9366 = select i1 %250, float %9363, float %9354
  %9367 = select i1 %250, float 1.000000e+00, float %9355
  %9368 = select i1 %250, float %9364, float %9359
  %9369 = select i1 %250, float 0.000000e+00, float %9360
  %9370 = select i1 %250, float 0.000000e+00, float %9361
  %9371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9372 = extractvalue %dx.types.CBufRet.i32 %9371, 3
  %9373 = and i32 %9372, 3
  %9374 = icmp ne i32 %9373, 0
  %9375 = and i32 %9372, 4
  %9376 = icmp ne i32 %9375, 0
  %9377 = and i1 %9374, %9376
  %9378 = and i1 %250, %9377
  br i1 %9378, label %9379, label %9385

; <label>:9379                                    ; preds = %9352
  %9380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9381 = extractvalue %dx.types.CBufRet.f32 %9380, 1
  %9382 = fadd fast float %9362, -1.000000e+00
  %9383 = fmul fast float %9381, %9382
  %9384 = fadd fast float %9383, 1.000000e+00
  br label %9385

; <label>:9385                                    ; preds = %9379, %9352
  %9386 = phi float [ %9384, %9379 ], [ %9362, %9352 ]
  %9387 = fadd fast float %9144, %9141
  %9388 = fmul fast float %9365, %9387
  %9389 = fadd fast float %9388, %9368
  %9390 = fadd fast float %9145, %9142
  %9391 = fmul fast float %9366, %9390
  %9392 = fadd fast float %9391, %9369
  %9393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9394 = extractvalue %dx.types.CBufRet.f32 %9393, 0
  br i1 %250, label %9395, label %9418

; <label>:9395                                    ; preds = %9385
  %9396 = fadd fast float %9389, %9392
  %9397 = fmul fast float %9394, %9396
  %9398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9399 = extractvalue %dx.types.CBufRet.f32 %9398, 3
  %9400 = extractvalue %dx.types.CBufRet.f32 %7698, 1
  %9401 = fsub fast float %7703, %7697
  %9402 = fadd fast float %9401, %7704
  %9403 = fsub fast float %9402, %9400
  %9404 = extractvalue %dx.types.CBufRet.f32 %7698, 2
  %9405 = fmul fast float %9403, %9404
  %9406 = call float @dx.op.unary.f32(i32 7, float %9405)  ; Saturate(value)
  %9407 = fsub fast float %9406, %9399
  %9408 = fmul fast float %9407, %9386
  %9409 = fadd fast float %9408, %9399
  %9410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9411 = extractvalue %dx.types.CBufRet.f32 %9410, 0
  %9412 = fsub fast float %9409, %9411
  %9413 = fmul fast float %9412, 1.000000e+01
  %9414 = call float @dx.op.unary.f32(i32 7, float %9413)  ; Saturate(value)
  %9415 = fmul fast float %9414, %7693
  %9416 = fadd fast float %9415, %7694
  %9417 = fmul fast float %9416, %9409
  br label %9442

; <label>:9418                                    ; preds = %9385
  %9419 = fadd fast float %9146, %9143
  %9420 = fmul fast float %9367, %9419
  %9421 = fadd fast float %9420, %9370
  %9422 = fmul fast float %9394, %9389
  %9423 = fmul fast float %9394, %9392
  %9424 = fmul fast float %9394, %9421
  %9425 = call float @dx.op.binary.f32(i32 35, float %9423, float %9424)  ; FMax(a,b)
  %9426 = call float @dx.op.binary.f32(i32 35, float %9422, float %9425)  ; FMax(a,b)
  %9427 = call float @dx.op.binary.f32(i32 35, float %9426, float %7694)  ; FMax(a,b)
  %9428 = fcmp fast ugt float %9427, 0x3F10000000000000
  br i1 %9428, label %9430, label %9429

; <label>:9429                                    ; preds = %9418
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9430

; <label>:9430                                    ; preds = %9429, %9418
  %9431 = add i32 %48, 356
  %9432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %9431, i32 undef)  ; BufferLoad(srv,index,wot)
  %9433 = extractvalue %dx.types.ResRet.i32 %9432, 0
  %9434 = and i32 %9433, 32
  %9435 = icmp eq i32 %9434, 0
  br i1 %9435, label %9442, label %9436

; <label>:9436                                    ; preds = %9430
  %9437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9438 = extractvalue %dx.types.CBufRet.f32 %9437, 0
  %9439 = fmul fast float %9438, 0x3FE99999A0000000
  %9440 = fadd fast float %9438, %9422
  %9441 = fadd fast float %9439, %9424
  br label %9442

; <label>:9442                                    ; preds = %9436, %9430, %9395
  %9443 = phi float [ %9397, %9395 ], [ %9440, %9436 ], [ %9422, %9430 ]
  %9444 = phi float [ %9417, %9395 ], [ %9423, %9436 ], [ %9423, %9430 ]
  %9445 = phi float [ %9416, %9395 ], [ %9441, %9436 ], [ %9424, %9430 ]
  %9446 = phi float [ %9416, %9395 ], [ %7694, %9436 ], [ %7694, %9430 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9447 = call float @dx.op.binary.f32(i32 36, float %9443, float 3.225500e+04)  ; FMin(a,b)
  %9448 = call float @dx.op.binary.f32(i32 36, float %9444, float 3.225500e+04)  ; FMin(a,b)
  %9449 = call float @dx.op.binary.f32(i32 36, float %9445, float 3.225500e+04)  ; FMin(a,b)
  %9450 = call float @dx.op.binary.f32(i32 36, float %9446, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9447)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9448)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9449)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9450)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

