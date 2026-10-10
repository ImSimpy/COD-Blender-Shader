;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; NORMAL                   0   xyz         1     NONE   float   xyz 
; FOAMMASK                 0      w        1     NONE   float      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; WATER_SUBTILE_ID         0   x           3     NONE    uint   x   
; SV_IsFrontFace           0    y          3    FFACE    uint    y  
; SV_ClipDistance          0   x           4  CLIPDST   float       
; SV_ClipDistance          1    y          4  CLIPDST   float       
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 41c53e6ceb9881e6a001ac9be806b45a
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
; NORMAL                   0                 linear       
; TEXCOORD                 0                 linear       
; FOAMMASK                 0                 linear       
; WATER_SUBTILE_ID         0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
; SV_ClipDistance          0                 linear       
; SV_ClipDistance          1                 linear       
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
;   [3376 x i8] (type annotation not present)
;
; }
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
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   cbuffer      NA          NA     CB2            cb2     1
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture     f32     2darray      T1      t0,space6unbounded
;                                   texture     f32          2d      T2     t69,space2     1
;                                   texture    byte         r/o      T3             t0     1
;                                   textureunorm_f32          2d      T4             t1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture    byte         r/o      T6     t45,space1     1
;                                   texture    byte         r/o      T7     t46,space1     1
;                                   texture    byte         r/o      T8     t47,space1     1
;                                   texture    byte         r/o      T9             t2     1
;                                   texture    byte         r/o     T10             t3     1
;                                   texture     f32     2darray     T11     t16,space2     1
;                                   texture     f32          3d     T12     t15,space2     1
;                                   texture     f32          2d     T13     t13,space2     1
;                                   texture     u32          2d     T14     t17,space2     1
;                                   texture     f32          3d     T15     t18,space2     1
;                                   texture     f32          2d     T16     t37,space2     1
;                                   texture    byte         r/o     T17     t10,space1     1
;                                   texture    byte         r/o     T18      t1,space1     1
;                                   texture     f32          1d     T19     t32,space2     1
;                                   texture     f32          3d     T20     t82,space2     1
;                                   texture     f32     2darray     T21      t8,space2     1
;                                   texture    byte         r/o     T22     t68,space1     1
;                                   texture     f32          2d     T23      t0,space2     1
;                                   texture    byte         r/o     T24     t11,space1     1
;                                   texture    byte         r/o     T25     t13,space1     1
;                                   texture    byte         r/o     T26     t16,space1     1
;                                   texture    byte         r/o     T27     t17,space1     1
;                                   texture     f32          2d     T28             t8     1
;                                   texture     f32     2darray     T29             t4     1
;
;
; ViewId state:
;
; Number of inputs: 18, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = alloca [4 x float], align 4
  %37 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = icmp ne i32 %37, 0
  %39 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 0
  %51 = fmul fast float %50, %46
  %52 = fmul fast float %50, %47
  %53 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %54 = call float @dx.op.unary.f32(i32 25, float %53)  ; Rsqrt(value)
  %55 = select i1 %38, float 1.000000e+00, float -1.000000e+00
  %56 = fmul fast float %43, %55
  %57 = fmul fast float %56, %54
  %58 = fmul fast float %44, %55
  %59 = fmul fast float %58, %54
  %60 = fmul fast float %45, %55
  %61 = fmul fast float %60, %54
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 3
  %65 = fmul fast float %51, 2.000000e+00
  %66 = fmul fast float %65, %63
  %67 = fmul fast float %52, 2.000000e+00
  %68 = fmul fast float %67, %64
  %69 = fsub fast float 1.000000e+00, %66
  %70 = fsub fast float 1.000000e+00, %68
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = fmul fast float %69, %72
  %76 = fmul fast float %69, %73
  %77 = fmul fast float %69, %74
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = extractvalue %dx.types.CBufRet.f32 %78, 1
  %81 = extractvalue %dx.types.CBufRet.f32 %78, 2
  %82 = fmul fast float %70, %79
  %83 = fmul fast float %70, %80
  %84 = fmul fast float %70, %81
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %88 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %89 = fadd fast float %82, %86
  %90 = fadd fast float %89, %75
  %91 = fadd fast float %83, %87
  %92 = fadd fast float %91, %76
  %93 = fadd fast float %84, %88
  %94 = fadd fast float %93, %77
  %95 = fmul fast float %90, %48
  %96 = fmul fast float %92, %48
  %97 = fmul fast float %94, %48
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %100 = call float @dx.op.unary.f32(i32 83, float %41)  ; DerivCoarseX(value)
  %101 = call float @dx.op.unary.f32(i32 83, float %42)  ; DerivCoarseX(value)
  %102 = call float @dx.op.unary.f32(i32 84, float %41)  ; DerivCoarseY(value)
  %103 = call float @dx.op.unary.f32(i32 84, float %42)  ; DerivCoarseY(value)
  %104 = fmul fast float %100, %99
  %105 = fmul fast float %101, %99
  %106 = fmul fast float %102, %99
  %107 = fmul fast float %103, %99
  %108 = call float @dx.op.dot2.f32(i32 54, float %106, float %107, float %106, float %107)  ; Dot2(ax,ay,bx,by)
  %109 = call float @dx.op.dot2.f32(i32 54, float %104, float %105, float %104, float %105)  ; Dot2(ax,ay,bx,by)
  %110 = call float @dx.op.binary.f32(i32 35, float %109, float %108)  ; FMax(a,b)
  %111 = call float @dx.op.unary.f32(i32 23, float %110)  ; Log(value)
  %112 = fmul fast float %111, 5.000000e-01
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %115 = fadd fast float %114, %112
  %116 = call float @dx.op.binary.f32(i32 35, float %115, float 0.000000e+00)  ; FMax(a,b)
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 3
  %119 = fadd fast float %118, %116
  %120 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %121 = shl i32 %120, 16
  %122 = or i32 %121, %120
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = fadd fast float %124, %95
  %127 = fadd fast float %125, %96
  %128 = fmul fast float %126, 0x3F53C37960000000
  %129 = fmul fast float %127, 0x3F53C37960000000
  %130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %130, float %128, float %129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 0
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %135 = fmul fast float %134, %132
  %136 = shl i32 %39, 3
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %136, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = and i32 %138, 16383
  %140 = shl i32 %39, 2
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %140, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = and i32 %142, 255
  %144 = mul nuw nsw i32 %139, 148
  %145 = add nuw nsw i32 %144, 4
  %146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %145, i32 undef)  ; BufferLoad(srv,index,wot)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = add nuw nsw i32 %144, 8
  %149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  %151 = add nuw nsw i32 %144, 60
  %152 = add nuw nsw i32 %144, 116
  %153 = fsub fast float 1.000000e+00, %42
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %156 = fmul fast float %155, %41
  %157 = fmul fast float %155, %153
  %158 = fadd fast float %156, %147
  %159 = fadd fast float %157, %150
  %160 = add nuw nsw i32 %144, 48
  %161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %160, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = add nuw nsw i32 %144, 52
  %164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %163, i32 undef)  ; BufferLoad(srv,index,wot)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = add nuw nsw i32 %144, 104
  %167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %166, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.i32 %167, 0
  %169 = add nuw nsw i32 %144, 108
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = fmul fast float %173, %41
  %175 = fmul fast float %173, %42
  %176 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %177 = fadd fast float %174, %176
  %178 = fadd fast float %175, %176
  %179 = add i32 %168, 0
  %180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %179, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %181 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %180, i32 0)  ; GetDimensions(handle,mipLevel)
  %182 = extractvalue %dx.types.Dimensions %181, 0
  %183 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %182)  ; FirstbitLo(value)
  %184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.i32 %184, 1
  %186 = sub nsw i32 %185, %183
  %187 = sitofp i32 %186 to float
  %188 = fsub fast float %119, %187
  %189 = call float @dx.op.binary.f32(i32 35, float %188, float 0.000000e+00)  ; FMax(a,b)
  %190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %180, %dx.types.Handle %29, float %177, float %178, float %162, float undef, i32 0, i32 0, i32 undef, float %189)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = extractvalue %dx.types.ResRet.f32 %190, 1
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 3
  %195 = fmul fast float %194, 2.000000e+00
  %196 = fmul fast float %195, %191
  %197 = fmul fast float %195, %192
  %198 = fsub fast float %196, %194
  %199 = fsub fast float %197, %194
  %200 = fmul fast float %198, %198
  %201 = fmul fast float %199, %199
  %202 = fadd fast float %200, %201
  %203 = call float @dx.op.unary.f32(i32 24, float %202)  ; Sqrt(value)
  %204 = add i32 %171, 0
  %205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %204, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %206 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %205, i32 0)  ; GetDimensions(handle,mipLevel)
  %207 = extractvalue %dx.types.Dimensions %206, 0
  %208 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %207)  ; FirstbitLo(value)
  %209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.i32 %209, 1
  %211 = sub nsw i32 %210, %208
  %212 = sitofp i32 %211 to float
  %213 = fsub fast float %119, %212
  %214 = call float @dx.op.binary.f32(i32 35, float %213, float 0.000000e+00)  ; FMax(a,b)
  %215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %205, %dx.types.Handle %29, float %177, float %178, float %165, float undef, i32 0, i32 0, i32 undef, float %214)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.i32 %217, 0
  %219 = call i32 @dx.op.binary.i32(i32 40, i32 %139, i32 %218)  ; UMin(a,b)
  %220 = mul i32 %219, 36
  %221 = add i32 %220, 4
  %222 = icmp eq i32 %143, 0
  br i1 %222, label %870, label %223

; <label>:223                                     ; preds = %0
  br label %224

; <label>:224                                     ; preds = %862, %223
  %225 = phi float [ %863, %862 ], [ 0.000000e+00, %223 ]
  %226 = phi float [ %864, %862 ], [ 0.000000e+00, %223 ]
  %227 = phi i32 [ %235, %862 ], [ %143, %223 ]
  %228 = phi i32 [ %865, %862 ], [ %122, %223 ]
  %229 = phi i32 [ %866, %862 ], [ %122, %223 ]
  %230 = phi i32 [ %867, %862 ], [ %122, %223 ]
  %231 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %227)  ; FirstbitLo(value)
  %232 = and i32 %231, 31
  %233 = shl i32 1, %232
  %234 = xor i32 %233, -1
  %235 = and i32 %227, %234
  %236 = shl i32 %231, 2
  %237 = add i32 %151, %236
  %238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 0
  %242 = fmul fast float %241, %41
  %243 = fmul fast float %241, %42
  %244 = extractvalue %dx.types.CBufRet.f32 %240, 1
  %245 = fadd fast float %242, %244
  %246 = fadd fast float %243, %244
  %247 = add i32 %152, %236
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = add i32 %249, 0
  %251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %250, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %252 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %251, i32 0)  ; GetDimensions(handle,mipLevel)
  %253 = extractvalue %dx.types.Dimensions %252, 0
  %254 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %253)  ; FirstbitLo(value)
  %255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.i32 %255, 1
  %257 = sub nsw i32 %256, %254
  %258 = sitofp i32 %257 to float
  %259 = fsub fast float %119, %258
  %260 = call float @dx.op.binary.f32(i32 35, float %259, float 0.000000e+00)  ; FMax(a,b)
  %261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %251, %dx.types.Handle %29, float %245, float %246, float %239, float undef, i32 0, i32 0, i32 undef, float %260)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = fcmp fast ogt float %262, 0.000000e+00
  br i1 %263, label %264, label %862

; <label>:264                                     ; preds = %224
  %265 = add i32 %221, %236
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = and i32 %267, 32767
  %269 = mul nuw nsw i32 %268, 928
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = or i32 %269, 8
  %273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = or i32 %269, 12
  %276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 1
  %278 = or i32 %269, 20
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = or i32 %269, 24
  %282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = extractvalue %dx.types.ResRet.f32 %282, 1
  %285 = extractvalue %dx.types.ResRet.f32 %282, 2
  %286 = extractvalue %dx.types.ResRet.f32 %282, 3
  %287 = add nuw nsw i32 %269, 40
  %288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = add nuw nsw i32 %269, 80
  %291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = add nuw nsw i32 %269, 228
  %294 = add nuw nsw i32 %269, 564
  %295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.f32 %295, 0
  %297 = extractvalue %dx.types.ResRet.f32 %295, 1
  %298 = extractvalue %dx.types.ResRet.f32 %295, 2
  %299 = extractvalue %dx.types.ResRet.f32 %295, 3
  %300 = add nuw nsw i32 %269, 580
  %301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 0
  %303 = extractvalue %dx.types.ResRet.f32 %301, 1
  %304 = extractvalue %dx.types.ResRet.f32 %301, 2
  %305 = extractvalue %dx.types.ResRet.f32 %301, 3
  %306 = add nuw nsw i32 %269, 596
  %307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = extractvalue %dx.types.ResRet.f32 %307, 1
  %310 = add nuw nsw i32 %269, 620
  %311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = extractvalue %dx.types.ResRet.f32 %311, 1
  %314 = add nuw nsw i32 %269, 628
  %315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = extractvalue %dx.types.ResRet.f32 %315, 2
  %319 = extractvalue %dx.types.ResRet.f32 %315, 3
  %320 = add nuw nsw i32 %269, 648
  %321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.f32 %321, 0
  %323 = add nuw nsw i32 %269, 812
  %324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = add nuw nsw i32 %269, 816
  %327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 1
  %329 = add nuw nsw i32 %269, 852
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = add nuw nsw i32 %269, 860
  %333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = extractvalue %dx.types.ResRet.f32 %333, 1
  %336 = extractvalue %dx.types.ResRet.f32 %333, 2
  %337 = add nuw nsw i32 %269, 896
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = add nuw nsw i32 %269, 900
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = add nuw nsw i32 %269, 904
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = and i32 %271, 512
  %347 = fcmp fast ole float %40, 0x3FA4B5DCC0000000
  %348 = fmul fast float %40, 0x3FB3D07220000000
  %349 = fadd fast float %40, 0x3FAC28F5C0000000
  %350 = fmul fast float %349, 0x3FEE54EDE0000000
  %351 = call float @dx.op.unary.f32(i32 23, float %350)  ; Log(value)
  %352 = fmul fast float %351, 0x4003333340000000
  %353 = call float @dx.op.unary.f32(i32 21, float %352)  ; Exp(value)
  %354 = select i1 %347, float %348, float %353
  %355 = call float @dx.op.unary.f32(i32 7, float %354)  ; Saturate(value)
  %356 = fmul fast float %308, %216
  %357 = fadd fast float %356, %309
  %358 = call float @dx.op.unary.f32(i32 7, float %357)  ; Saturate(value)
  %359 = call float @dx.op.binary.f32(i32 35, float %355, float %358)  ; FMax(a,b)
  %360 = add i32 %342, 0
  %361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %360, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %366 = extractvalue %dx.types.CBufRet.f32 %364, 1
  %367 = fadd fast float %365, %95
  %368 = fadd fast float %366, %96
  %369 = fmul fast float %95, %95
  %370 = fmul fast float %96, %96
  %371 = fadd fast float %369, %370
  %372 = fmul fast float %97, %97
  %373 = fadd fast float %371, %372
  %374 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %377 = fcmp fast ogt float %374, %376
  %378 = zext i1 %377 to i32
  %379 = extractvalue %dx.types.CBufRet.f32 %375, 1
  %380 = fcmp fast ogt float %374, %379
  %381 = zext i1 %380 to i32
  %382 = add nuw nsw i32 %381, %378
  %383 = extractvalue %dx.types.CBufRet.f32 %375, 2
  %384 = fcmp fast ogt float %374, %383
  %385 = zext i1 %384 to i32
  %386 = add nuw nsw i32 %382, %385
  %387 = icmp ult i32 %386, 3
  %388 = zext i1 %387 to i32
  %389 = shl nuw nsw i32 %386, 2
  %390 = add nuw nsw i32 %389, 48
  %391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %390)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.f32 %391, 1
  %393 = fcmp fast ogt float %374, %392
  %394 = zext i1 %393 to i32
  %395 = or i32 %389, 1
  %396 = add nuw nsw i32 %395, 48
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %396)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %399 = fcmp fast ogt float %374, %398
  %400 = zext i1 %399 to i32
  %401 = add nuw nsw i32 %400, %394
  %402 = or i32 %389, 2
  %403 = add nuw nsw i32 %402, 48
  %404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %403)  ; CBufferLoadLegacy(handle,regIndex)
  %405 = extractvalue %dx.types.CBufRet.f32 %404, 1
  %406 = fcmp fast ogt float %374, %405
  %407 = zext i1 %406 to i32
  %408 = add nuw nsw i32 %401, %407
  %409 = add i32 %280, -1
  %410 = call i32 @dx.op.binary.i32(i32 40, i32 %408, i32 %409)  ; UMin(a,b)
  %411 = add i32 %389, %410
  %412 = call i32 @dx.op.binary.i32(i32 40, i32 %411, i32 12)  ; UMin(a,b)
  %413 = add i32 %412, 48
  %414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %413)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.f32 %414, 0
  %416 = fcmp fast oge float %374, %415
  %417 = zext i1 %416 to i32
  %418 = call i32 @dx.op.binary.i32(i32 40, i32 %280, i32 %388)  ; UMin(a,b)
  %419 = call i32 @dx.op.binary.i32(i32 40, i32 %417, i32 %418)  ; UMin(a,b)
  %420 = add i32 %419, %280
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %600, label %422

; <label>:422                                     ; preds = %264
  br label %423

; <label>:423                                     ; preds = %423, %422
  %424 = phi float [ %596, %423 ], [ 0.000000e+00, %422 ]
  %425 = phi float [ %588, %423 ], [ 0.000000e+00, %422 ]
  %426 = phi float [ %589, %423 ], [ 0.000000e+00, %422 ]
  %427 = phi i32 [ %435, %423 ], [ %412, %422 ]
  %428 = phi i32 [ %597, %423 ], [ 0, %422 ]
  %429 = add i32 %428, %427
  %430 = and i32 %429, -4
  %431 = add i32 %430, %280
  %432 = icmp uge i32 %429, %431
  %433 = sub i32 4, %280
  %434 = select i1 %432, i32 %433, i32 0
  %435 = add i32 %434, %427
  %436 = add i32 %434, %429
  %437 = and i32 %436, 3
  %438 = lshr i32 %436, 2
  %439 = add i32 %436, 32
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %439)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 0
  %442 = extractvalue %dx.types.CBufRet.f32 %440, 1
  %443 = extractvalue %dx.types.CBufRet.f32 %440, 2
  %444 = extractvalue %dx.types.CBufRet.f32 %440, 3
  %445 = fmul fast float %441, %374
  %446 = fadd fast float %445, %442
  %447 = call float @dx.op.unary.f32(i32 7, float %446)  ; Saturate(value)
  %448 = fmul fast float %443, %374
  %449 = fadd fast float %448, %444
  %450 = call float @dx.op.unary.f32(i32 7, float %449)  ; Saturate(value)
  %451 = call float @dx.op.binary.f32(i32 36, float %447, float %450)  ; FMin(a,b)
  %452 = mul nuw nsw i32 %437, 72
  %453 = add nuw nsw i32 %293, %452
  %454 = add nuw nsw i32 %453, 16
  %455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = extractvalue %dx.types.ResRet.f32 %455, 1
  %458 = extractvalue %dx.types.ResRet.f32 %455, 2
  %459 = extractvalue %dx.types.ResRet.f32 %455, 3
  %460 = add nuw nsw i32 %453, 36
  %461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = add nuw nsw i32 %453, 56
  %464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = fmul fast float %203, 3.906250e-03
  %467 = fmul fast float %466, %292
  %468 = fmul fast float %467, %462
  %469 = fmul fast float %468, %465
  %470 = extractvalue %dx.types.ResRet.f32 %464, 1
  %471 = fadd fast float %469, %470
  %472 = call float @dx.op.binary.f32(i32 35, float %471, float 0.000000e+00)  ; FMax(a,b)
  %473 = add nuw nsw i32 %453, 32
  %474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = fmul fast float %462, %198
  %477 = fmul fast float %462, %199
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 1
  %480 = add nuw nsw i32 %453, 40
  %481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = extractvalue %dx.types.ResRet.f32 %481, 3
  %486 = fadd fast float %479, %135
  %487 = fadd fast float %486, %484
  %488 = fmul fast float %486, %483
  %489 = call float @dx.op.unary.f32(i32 29, float %488)  ; Round_z(value)
  %490 = fmul fast float %482, %489
  %491 = fsub fast float %486, %490
  %492 = fmul fast float %487, %483
  %493 = call float @dx.op.unary.f32(i32 29, float %492)  ; Round_z(value)
  %494 = fmul fast float %493, %482
  %495 = fsub fast float %487, %494
  %496 = fmul fast float %491, %476
  %497 = fmul fast float %491, %477
  %498 = fmul fast float %495, %476
  %499 = fmul fast float %495, %477
  %500 = fsub fast float %367, %496
  %501 = fsub fast float %368, %497
  %502 = fsub fast float %367, %498
  %503 = fsub fast float %368, %499
  %504 = fsub fast float %484, %491
  %505 = call float @dx.op.unary.f32(i32 6, float %504)  ; FAbs(value)
  %506 = fmul fast float %505, %485
  %507 = call float @dx.op.unary.f32(i32 7, float %506)  ; Saturate(value)
  %508 = fmul fast float %274, 4.000000e+00
  %509 = uitofp i32 %438 to float
  %510 = fadd fast float %509, %508
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %513 = extractvalue %dx.types.CBufRet.f32 %511, 1
  %514 = extractvalue %dx.types.CBufRet.f32 %511, 2
  %515 = extractvalue %dx.types.CBufRet.f32 %511, 3
  %516 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 0
  store float %512, float* %516, align 4
  %517 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 1
  store float %513, float* %517, align 4
  %518 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 2
  store float %514, float* %518, align 4
  %519 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 3
  store float %515, float* %519, align 4
  %520 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 %438
  %521 = load float, float* %520, align 4, !tbaa !72, !noalias !76
  %522 = fmul fast float %521, %277
  %523 = fmul fast float %500, %456
  %524 = call float @dx.op.tertiary.f32(i32 46, float %457, float %501, float %523)  ; FMad(a,b,c)
  %525 = fmul fast float %500, %458
  %526 = call float @dx.op.tertiary.f32(i32 46, float %459, float %501, float %525)  ; FMad(a,b,c)
  %527 = add nuw nsw i32 %453, 8
  %528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = extractvalue %dx.types.ResRet.f32 %528, 1
  %531 = fadd fast float %529, %524
  %532 = fadd fast float %530, %526
  %533 = fmul fast float %531, %522
  %534 = fmul fast float %532, %522
  %535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.f32 %535, 0
  %537 = extractvalue %dx.types.ResRet.f32 %535, 1
  %538 = fmul fast float %533, %536
  %539 = fmul fast float %534, %537
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 2
  %542 = fadd fast float %538, %541
  %543 = fadd fast float %539, %541
  %544 = fmul fast float %502, %456
  %545 = call float @dx.op.tertiary.f32(i32 46, float %457, float %503, float %544)  ; FMad(a,b,c)
  %546 = fmul fast float %502, %458
  %547 = call float @dx.op.tertiary.f32(i32 46, float %459, float %503, float %546)  ; FMad(a,b,c)
  %548 = fadd fast float %529, %545
  %549 = fadd fast float %530, %547
  %550 = fmul fast float %548, %522
  %551 = fmul fast float %549, %522
  %552 = fmul fast float %550, %536
  %553 = fmul fast float %551, %537
  %554 = fadd fast float %552, %541
  %555 = fadd fast float %553, %541
  %556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %30, float %542, float %543, float %510, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = extractvalue %dx.types.ResRet.f32 %556, 1
  %559 = extractvalue %dx.types.ResRet.f32 %556, 3
  %560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %30, float %554, float %555, float %510, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = extractvalue %dx.types.ResRet.f32 %560, 1
  %563 = extractvalue %dx.types.ResRet.f32 %560, 3
  %564 = fsub fast float %561, %557
  %565 = fsub fast float %562, %558
  %566 = fsub fast float %563, %559
  %567 = fmul fast float %564, %507
  %568 = fmul fast float %565, %507
  %569 = fmul fast float %566, %507
  %570 = fadd fast float %567, %557
  %571 = fadd fast float %568, %558
  %572 = fadd fast float %569, %559
  %573 = fmul fast float %570, 2.000000e+00
  %574 = fmul fast float %571, 2.000000e+00
  %575 = fadd fast float %573, -1.000000e+00
  %576 = fadd fast float %574, -1.000000e+00
  %577 = fmul fast float %575, %456
  %578 = call float @dx.op.tertiary.f32(i32 46, float %576, float %458, float %577)  ; FMad(a,b,c)
  %579 = fmul fast float %575, %457
  %580 = call float @dx.op.tertiary.f32(i32 46, float %576, float %459, float %579)  ; FMad(a,b,c)
  %581 = fmul fast float %451, %363
  %582 = fmul fast float %581, %472
  %583 = fmul fast float %582, %475
  %584 = fmul fast float %578, %583
  %585 = fmul fast float %584, %536
  %586 = fmul fast float %580, %583
  %587 = fmul fast float %586, %537
  %588 = fadd fast float %585, %425
  %589 = fadd fast float %587, %426
  %590 = add nuw nsw i32 %453, 64
  %591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = fmul fast float %592, %572
  %594 = extractvalue %dx.types.ResRet.f32 %591, 1
  %595 = fadd fast float %593, %594
  %596 = call float @dx.op.binary.f32(i32 35, float %424, float %595)  ; FMax(a,b)
  %597 = add nuw i32 %428, 1
  %598 = icmp eq i32 %597, %420
  br i1 %598, label %599, label %423

; <label>:599                                     ; preds = %423
  br label %600

; <label>:600                                     ; preds = %599, %264
  %601 = phi float [ 0.000000e+00, %264 ], [ %596, %599 ]
  %602 = phi float [ 0.000000e+00, %264 ], [ %588, %599 ]
  %603 = phi float [ 0.000000e+00, %264 ], [ %589, %599 ]
  %604 = call float @dx.op.dot3.f32(i32 55, float %602, float %603, float 1.000000e+00, float %602, float %603, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %605 = call float @dx.op.unary.f32(i32 25, float %604)  ; Rsqrt(value)
  %606 = fmul fast float %601, %312
  %607 = fadd fast float %606, %313
  %608 = call float @dx.op.unary.f32(i32 7, float %607)  ; Saturate(value)
  %609 = fmul fast float %602, %262
  %610 = fmul fast float %609, %605
  %611 = fmul fast float %603, %262
  %612 = fmul fast float %611, %605
  %613 = fadd fast float %610, %225
  %614 = fadd fast float %612, %226
  %615 = fadd fast float %608, %359
  %616 = icmp ne i32 %346, 0
  %617 = icmp ne i32 %331, 0
  %618 = and i1 %616, %617
  br i1 %618, label %619, label %687

; <label>:619                                     ; preds = %600
  %620 = add i32 %331, 0
  %621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %620, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 1
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %626 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %627 = fadd fast float %625, %95
  %628 = fadd fast float %626, %96
  %629 = fmul fast float %627, %297
  %630 = fmul fast float %628, %297
  %631 = fmul fast float %623, %298
  %632 = fmul fast float %623, %299
  %633 = fadd fast float %629, %631
  %634 = fadd fast float %630, %632
  %635 = fmul fast float %627, %303
  %636 = fmul fast float %628, %303
  %637 = fmul fast float %623, %304
  %638 = fmul fast float %623, %305
  %639 = fadd fast float %635, %637
  %640 = fadd fast float %636, %638
  %641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %642 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %621, %dx.types.Handle %641, float %633, float %634, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = extractvalue %dx.types.ResRet.f32 %642, 3
  %647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %621, %dx.types.Handle %641, float %639, float %640, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = extractvalue %dx.types.ResRet.f32 %647, 3
  %652 = fmul fast float %643, %334
  %653 = fadd fast float %652, %335
  %654 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  %655 = fadd fast float %644, %646
  %656 = fmul fast float %655, %336
  %657 = fsub fast float %656, %336
  %658 = fsub fast float %644, %646
  %659 = fmul fast float %658, %336
  %660 = fmul fast float %648, %334
  %661 = fadd fast float %660, %335
  %662 = call float @dx.op.unary.f32(i32 7, float %661)  ; Saturate(value)
  %663 = fadd fast float %649, %651
  %664 = fmul fast float %663, %336
  %665 = fsub fast float %664, %336
  %666 = fsub fast float %649, %651
  %667 = fmul fast float %666, %336
  %668 = fmul fast float %657, %296
  %669 = fmul fast float %659, %296
  %670 = fmul fast float %665, %302
  %671 = fmul fast float %667, %302
  %672 = fadd fast float %670, %668
  %673 = fadd fast float %671, %669
  %674 = fmul fast float %645, %296
  %675 = fmul fast float %650, %302
  %676 = fadd fast float %675, %674
  %677 = fmul fast float %654, %296
  %678 = fmul fast float %662, %302
  %679 = fadd fast float %678, %677
  %680 = fmul fast float %672, %262
  %681 = fmul fast float %673, %262
  %682 = fadd fast float %680, %613
  %683 = fadd fast float %681, %614
  %684 = fmul fast float %676, %262
  %685 = fadd fast float %684, 1.000000e+00
  %686 = fmul fast float %679, %262
  br label %687

; <label>:687                                     ; preds = %619, %600
  %688 = phi float [ %682, %619 ], [ %613, %600 ]
  %689 = phi float [ %683, %619 ], [ %614, %600 ]
  %690 = phi float [ %685, %619 ], [ 1.000000e+00, %600 ]
  %691 = phi float [ %686, %619 ], [ %289, %600 ]
  %692 = and i32 %271, 16
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %760, label %694

; <label>:694                                     ; preds = %687
  %695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %696 = extractvalue %dx.types.CBufRet.f32 %695, 0
  %697 = extractvalue %dx.types.CBufRet.f32 %695, 1
  %698 = fadd fast float %696, %95
  %699 = fadd fast float %697, %96
  %700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.f32 %700, 0
  %702 = extractvalue %dx.types.CBufRet.f32 %700, 1
  %703 = fsub fast float %698, %701
  %704 = fsub fast float %699, %702
  %705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %706 = extractvalue %dx.types.CBufRet.f32 %705, 2
  %707 = fmul fast float %703, %706
  %708 = fmul fast float %704, %706
  %709 = fadd fast float %707, 5.000000e-01
  %710 = fadd fast float %708, 5.000000e-01
  %711 = fcmp fast olt float %709, 0.000000e+00
  %712 = fcmp fast olt float %710, 0.000000e+00
  %713 = or i1 %711, %712
  %714 = fcmp fast oge float %709, 1.000000e+00
  %715 = fcmp fast oge float %710, 1.000000e+00
  %716 = or i1 %714, %715
  %717 = or i1 %713, %716
  br i1 %717, label %751, label %718

; <label>:718                                     ; preds = %694
  %719 = extractvalue %dx.types.CBufRet.f32 %695, 2
  %720 = fadd fast float %719, %97
  %721 = fmul fast float %706, %698
  %722 = fmul fast float %706, %699
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 2
  %725 = fsub fast float %720, %724
  %726 = extractvalue %dx.types.CBufRet.f32 %723, 1
  %727 = fmul fast float %725, %726
  %728 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %729 = call float @dx.op.binary.f32(i32 36, float %710, float %728)  ; FMin(a,b)
  %730 = call float @dx.op.binary.f32(i32 36, float %709, float %729)  ; FMin(a,b)
  %731 = call float @dx.op.binary.f32(i32 35, float %710, float %728)  ; FMax(a,b)
  %732 = call float @dx.op.binary.f32(i32 35, float %709, float %731)  ; FMax(a,b)
  %733 = fsub fast float 1.000000e+00, %732
  %734 = call float @dx.op.binary.f32(i32 36, float %730, float %733)  ; FMin(a,b)
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 3
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 1
  %739 = call float @dx.op.binary.f32(i32 35, float %738, float %736)  ; FMax(a,b)
  %740 = fsub fast float %739, %738
  %741 = fsub fast float %734, %738
  %742 = fdiv fast float %741, %740
  %743 = call float @dx.op.unary.f32(i32 7, float %742)  ; Saturate(value)
  %744 = fmul fast float %743, 2.000000e+00
  %745 = fsub fast float 3.000000e+00, %744
  %746 = fmul fast float %743, %743
  %747 = fmul fast float %746, %745
  %748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %30, float %721, float %722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 0
  %750 = fmul fast float %747, %749
  br label %751

; <label>:751                                     ; preds = %718, %694
  %752 = phi float [ %750, %718 ], [ 0.000000e+00, %694 ]
  %753 = fmul fast float %328, %158
  %754 = fmul fast float %328, %159
  %755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %756 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %361, %dx.types.Handle %755, float %753, float %754, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %757 = extractvalue %dx.types.ResRet.f32 %756, 0
  %758 = fmul fast float %757, %752
  %759 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %758)  ; FMax(a,b)
  br label %760

; <label>:760                                     ; preds = %751, %687
  %761 = phi float [ %759, %751 ], [ 0.000000e+00, %687 ]
  %762 = and i32 %271, 8
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %780, label %764

; <label>:764                                     ; preds = %760
  %765 = fadd fast float %325, 1.000000e+00
  %766 = fmul fast float %615, %765
  %767 = fsub fast float %766, %325
  %768 = fsub fast float %765, %767
  %769 = call float @dx.op.unary.f32(i32 7, float %768)  ; Saturate(value)
  %770 = fsub fast float 1.000000e+00, %766
  %771 = call float @dx.op.unary.f32(i32 7, float %770)  ; Saturate(value)
  %772 = fsub fast float %769, %771
  %773 = fsub fast float %761, %771
  %774 = fdiv fast float %773, %772
  %775 = call float @dx.op.unary.f32(i32 7, float %774)  ; Saturate(value)
  %776 = fmul fast float %775, 2.000000e+00
  %777 = fsub fast float 3.000000e+00, %776
  %778 = fmul fast float %775, %775
  %779 = fmul fast float %778, %777
  br label %780

; <label>:780                                     ; preds = %764, %760
  %781 = phi float [ %779, %764 ], [ %761, %760 ]
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 3
  %784 = fmul fast float %783, %781
  %785 = and i32 %271, 32
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %803, label %787

; <label>:787                                     ; preds = %780
  %788 = add i32 %345, 0
  %789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %788, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %789, %dx.types.Handle %31, float %784, float %322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  %792 = extractvalue %dx.types.ResRet.f32 %790, 1
  %793 = extractvalue %dx.types.ResRet.f32 %790, 2
  %794 = extractvalue %dx.types.ResRet.f32 %790, 3
  %795 = and i32 %339, 255
  %796 = uitofp i32 %795 to float
  %797 = lshr i32 %339, 8
  %798 = and i32 %797, 255
  %799 = uitofp i32 %798 to float
  %800 = fmul fast float %794, %796
  %801 = fadd fast float %800, %799
  %802 = fmul fast float %801, 0x3F70101000000000
  br label %803

; <label>:803                                     ; preds = %787, %780
  %804 = phi float [ %791, %787 ], [ %316, %780 ]
  %805 = phi float [ %792, %787 ], [ %317, %780 ]
  %806 = phi float [ %793, %787 ], [ %318, %780 ]
  %807 = phi float [ %802, %787 ], [ %319, %780 ]
  %808 = fsub fast float %804, %283
  %809 = fsub fast float %805, %284
  %810 = fsub fast float %806, %285
  %811 = fmul fast float %808, %784
  %812 = fmul fast float %809, %784
  %813 = fmul fast float %810, %784
  %814 = fadd fast float %811, %283
  %815 = fadd fast float %812, %284
  %816 = fadd fast float %813, %285
  %817 = fsub fast float %807, %286
  %818 = fmul fast float %817, %784
  %819 = fadd fast float %818, %286
  %820 = fsub fast float %289, %691
  %821 = fmul fast float %784, %820
  %822 = fadd fast float %821, %691
  %823 = fsub fast float 1.000000e+00, %690
  %824 = fmul fast float %784, %823
  %825 = fadd fast float %824, %690
  %826 = and i32 %228, 65535
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = lshr i32 %228, 16
  %829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %828)  ; LegacyF16ToF32(value)
  %830 = and i32 %229, 65535
  %831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %830)  ; LegacyF16ToF32(value)
  %832 = lshr i32 %229, 16
  %833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %832)  ; LegacyF16ToF32(value)
  %834 = fmul fast float %814, %262
  %835 = fmul fast float %815, %262
  %836 = fmul fast float %816, %262
  %837 = fmul fast float %819, %262
  %838 = fadd fast float %827, %834
  %839 = fadd fast float %829, %835
  %840 = fadd fast float %831, %836
  %841 = fadd fast float %833, %837
  %842 = call i32 @dx.op.legacyF32ToF16(i32 130, float %838)  ; LegacyF32ToF16(value)
  %843 = call i32 @dx.op.legacyF32ToF16(i32 130, float %839)  ; LegacyF32ToF16(value)
  %844 = shl i32 %843, 16
  %845 = or i32 %844, %842
  %846 = call i32 @dx.op.legacyF32ToF16(i32 130, float %840)  ; LegacyF32ToF16(value)
  %847 = call i32 @dx.op.legacyF32ToF16(i32 130, float %841)  ; LegacyF32ToF16(value)
  %848 = shl i32 %847, 16
  %849 = or i32 %848, %846
  %850 = and i32 %230, 65535
  %851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %850)  ; LegacyF16ToF32(value)
  %852 = lshr i32 %230, 16
  %853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %852)  ; LegacyF16ToF32(value)
  %854 = fmul fast float %825, %262
  %855 = fmul fast float %822, %262
  %856 = fadd fast float %851, %854
  %857 = fadd fast float %853, %855
  %858 = call i32 @dx.op.legacyF32ToF16(i32 130, float %856)  ; LegacyF32ToF16(value)
  %859 = call i32 @dx.op.legacyF32ToF16(i32 130, float %857)  ; LegacyF32ToF16(value)
  %860 = shl i32 %859, 16
  %861 = or i32 %860, %858
  br label %862

; <label>:862                                     ; preds = %803, %224
  %863 = phi float [ %688, %803 ], [ %225, %224 ]
  %864 = phi float [ %689, %803 ], [ %226, %224 ]
  %865 = phi i32 [ %845, %803 ], [ %228, %224 ]
  %866 = phi i32 [ %849, %803 ], [ %229, %224 ]
  %867 = phi i32 [ %861, %803 ], [ %230, %224 ]
  %868 = icmp eq i32 %235, 0
  br i1 %868, label %869, label %224

; <label>:869                                     ; preds = %862
  br label %870

; <label>:870                                     ; preds = %869, %0
  %871 = phi float [ 0.000000e+00, %0 ], [ %863, %869 ]
  %872 = phi float [ 0.000000e+00, %0 ], [ %864, %869 ]
  %873 = phi i32 [ %122, %0 ], [ %865, %869 ]
  %874 = phi i32 [ %122, %0 ], [ %866, %869 ]
  %875 = phi i32 [ %122, %0 ], [ %867, %869 ]
  %876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.f32 %876, 2
  %878 = fmul fast float %877, 0x3FE3C6EF40000000
  %879 = frem fast float %51, 2.560000e+02
  %880 = frem fast float %52, 2.560000e+02
  %881 = fptoui float %879 to i32
  %882 = fptoui float %880 to i32
  %883 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %881, i32 %882, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %884 = extractvalue %dx.types.ResRet.f32 %883, 0
  %885 = fadd fast float %884, %878
  %886 = call float @dx.op.unary.f32(i32 22, float %885)  ; Frc(value)
  %887 = fcmp fast ogt float %61, 0.000000e+00
  %888 = fcmp fast olt float %61, 0.000000e+00
  %889 = zext i1 %887 to i32
  %890 = zext i1 %888 to i32
  %891 = sub nsw i32 %889, %890
  %892 = sitofp i32 %891 to float
  %893 = fadd fast float %892, %61
  %894 = fdiv fast float -1.000000e+00, %893
  %895 = fmul fast float %57, %59
  %896 = fmul fast float %895, %894
  %897 = fmul fast float %57, %57
  %898 = fmul fast float %897, %892
  %899 = fmul fast float %898, %894
  %900 = fadd fast float %899, 1.000000e+00
  %901 = fmul fast float %896, %892
  %902 = fmul fast float %57, %892
  %903 = fsub fast float -0.000000e+00, %902
  %904 = fmul fast float %59, %59
  %905 = fmul fast float %904, %894
  %906 = fadd fast float %905, %892
  %907 = fsub fast float -0.000000e+00, %59
  %908 = and i32 %873, 65535
  %909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %908)  ; LegacyF16ToF32(value)
  %910 = lshr i32 %873, 16
  %911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %910)  ; LegacyF16ToF32(value)
  %912 = and i32 %874, 65535
  %913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %912)  ; LegacyF16ToF32(value)
  %914 = lshr i32 %874, 16
  %915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %914)  ; LegacyF16ToF32(value)
  %916 = and i32 %875, 65535
  %917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %916)  ; LegacyF16ToF32(value)
  %918 = lshr i32 %875, 16
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  %921 = call float @dx.op.unary.f32(i32 83, float %95)  ; DerivCoarseX(value)
  %922 = call float @dx.op.unary.f32(i32 83, float %96)  ; DerivCoarseX(value)
  %923 = call float @dx.op.unary.f32(i32 83, float %97)  ; DerivCoarseX(value)
  %924 = call float @dx.op.unary.f32(i32 84, float %95)  ; DerivCoarseY(value)
  %925 = call float @dx.op.unary.f32(i32 84, float %96)  ; DerivCoarseY(value)
  %926 = call float @dx.op.unary.f32(i32 84, float %97)  ; DerivCoarseY(value)
  %927 = fadd fast float %921, %95
  %928 = fadd fast float %922, %96
  %929 = fadd fast float %923, %97
  %930 = fadd fast float %924, %95
  %931 = fadd fast float %925, %96
  %932 = fadd fast float %926, %97
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 0
  %935 = extractvalue %dx.types.CBufRet.f32 %933, 1
  %936 = extractvalue %dx.types.CBufRet.f32 %933, 2
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 2
  %939 = extractvalue %dx.types.CBufRet.f32 %937, 3
  %940 = fmul fast float %934, %51
  %941 = fmul fast float %940, %938
  %942 = fmul fast float %935, %52
  %943 = fmul fast float %942, %939
  %944 = fptoui float %941 to i32
  %945 = fptoui float %943 to i32
  %946 = fadd fast float %934, -1.000000e+00
  %947 = fadd fast float %935, -1.000000e+00
  %948 = fptoui float %946 to i32
  %949 = fptoui float %947 to i32
  %950 = call i32 @dx.op.binary.i32(i32 40, i32 %944, i32 %948)  ; UMin(a,b)
  %951 = call i32 @dx.op.binary.i32(i32 40, i32 %945, i32 %949)  ; UMin(a,b)
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 2
  %954 = extractvalue %dx.types.CBufRet.f32 %952, 3
  %955 = fmul fast float %953, %48
  %956 = fsub fast float %955, %954
  %957 = fadd fast float %936, -1.000000e+00
  %958 = call float @dx.op.binary.f32(i32 36, float %956, float %957)  ; FMin(a,b)
  %959 = fptoui float %958 to i32
  %960 = fptoui float %934 to i32
  %961 = fptoui float %935 to i32
  %962 = mul i32 %959, %961
  %963 = add i32 %962, %951
  %964 = mul i32 %963, %960
  %965 = add i32 %964, %950
  %966 = shl i32 %965, 2
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = and i32 %968, 1023
  %970 = lshr i32 %968, 10
  %971 = icmp eq i32 %969, 0
  br i1 %971, label %1361, label %972

; <label>:972                                     ; preds = %870
  %973 = and i32 %968, 1023
  br label %974

; <label>:974                                     ; preds = %1093, %972
  %975 = phi float [ %1094, %1093 ], [ 0.000000e+00, %972 ]
  %976 = phi float [ %1095, %1093 ], [ 0.000000e+00, %972 ]
  %977 = phi float [ %1096, %1093 ], [ 0.000000e+00, %972 ]
  %978 = phi float [ %1097, %1093 ], [ %871, %972 ]
  %979 = phi float [ %1098, %1093 ], [ %872, %972 ]
  %980 = phi float [ %1099, %1093 ], [ %917, %972 ]
  %981 = phi float [ %1100, %1093 ], [ %920, %972 ]
  %982 = phi float [ %1101, %1093 ], [ %915, %972 ]
  %983 = phi float [ %1102, %1093 ], [ %909, %972 ]
  %984 = phi float [ %1103, %1093 ], [ %911, %972 ]
  %985 = phi float [ %1104, %1093 ], [ %913, %972 ]
  %986 = phi i32 [ %1042, %1093 ], [ 0, %972 ]
  %987 = add nuw nsw i32 %986, %970
  %988 = shl i32 %987, 2
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = shl i32 %990, 8
  %992 = or i32 %991, 48
  %993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.f32 %993, 0
  %995 = extractvalue %dx.types.ResRet.f32 %993, 1
  %996 = extractvalue %dx.types.ResRet.f32 %993, 2
  %997 = extractvalue %dx.types.ResRet.f32 %993, 3
  %998 = or i32 %991, 64
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = extractvalue %dx.types.ResRet.i32 %999, 1
  %1002 = or i32 %991, 80
  %1003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 2
  %1005 = extractvalue %dx.types.ResRet.f32 %1003, 3
  %1006 = or i32 %991, 96
  %1007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.ResRet.f32 %1007, 1
  %1010 = extractvalue %dx.types.ResRet.f32 %1007, 2
  %1011 = extractvalue %dx.types.ResRet.f32 %1007, 3
  %1012 = or i32 %991, 112
  %1013 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.f32 %1013, 2
  %1015 = or i32 %991, 128
  %1016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.f32 %1016, 0
  %1018 = extractvalue %dx.types.ResRet.f32 %1016, 1
  %1019 = extractvalue %dx.types.ResRet.f32 %1016, 2
  %1020 = extractvalue %dx.types.ResRet.f32 %1016, 3
  %1021 = or i32 %991, 144
  %1022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.ResRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.ResRet.f32 %1022, 2
  %1026 = extractvalue %dx.types.ResRet.f32 %1022, 3
  %1027 = or i32 %991, 160
  %1028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.ResRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.ResRet.f32 %1028, 2
  %1032 = or i32 %991, 192
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = or i32 %991, 208
  %1036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  %1038 = or i32 %991, 248
  %1039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1042 = add nuw nsw i32 %986, 1
  %1043 = bitcast float %997 to i32
  %1044 = and i32 %1043, 512
  %1045 = icmp ne i32 %1044, 0
  %1046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.ResRet.f32 %1046, 1
  %1049 = extractvalue %dx.types.ResRet.f32 %1046, 2
  %1050 = extractvalue %dx.types.ResRet.f32 %1046, 3
  %1051 = call float @dx.op.dot4.f32(i32 56, float %1047, float %1048, float %1049, float %1050, float %95, float %96, float %97, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1052 = or i32 %991, 16
  %1053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.ResRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.ResRet.f32 %1053, 2
  %1057 = extractvalue %dx.types.ResRet.f32 %1053, 3
  %1058 = call float @dx.op.dot4.f32(i32 56, float %1054, float %1055, float %1056, float %1057, float %95, float %96, float %97, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1059 = or i32 %991, 32
  %1060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1064 = extractvalue %dx.types.ResRet.f32 %1060, 3
  %1065 = call float @dx.op.dot4.f32(i32 56, float %1061, float %1062, float %1063, float %1064, float %95, float %96, float %97, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1066 = call float @dx.op.unary.f32(i32 27, float %1051)  ; Round_ni(value)
  %1067 = call float @dx.op.unary.f32(i32 6, float %1066)  ; FAbs(value)
  %1068 = call float @dx.op.unary.f32(i32 27, float %1058)  ; Round_ni(value)
  %1069 = call float @dx.op.unary.f32(i32 6, float %1068)  ; FAbs(value)
  %1070 = call float @dx.op.unary.f32(i32 6, float %1065)  ; FAbs(value)
  %1071 = call float @dx.op.unary.f32(i32 27, float %1070)  ; Round_ni(value)
  %1072 = fadd fast float %1069, %1067
  %1073 = fadd fast float %1072, %1071
  %1074 = fcmp fast oeq float %1073, 0.000000e+00
  %1075 = call float @dx.op.dot4.f32(i32 56, float %1047, float %1048, float %1049, float %1050, float %927, float %928, float %929, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1076 = call float @dx.op.dot4.f32(i32 56, float %1054, float %1055, float %1056, float %1057, float %927, float %928, float %929, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1077 = call float @dx.op.dot4.f32(i32 56, float %1047, float %1048, float %1049, float %1050, float %930, float %931, float %932, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1078 = call float @dx.op.dot4.f32(i32 56, float %1054, float %1055, float %1056, float %1057, float %930, float %931, float %932, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1079 = fsub fast float %1075, %1051
  %1080 = fsub fast float %1077, %1051
  %1081 = fsub fast float %1076, %1058
  %1082 = fsub fast float %1078, %1058
  %1083 = call float @dx.op.dot3.f32(i32 55, float %994, float %995, float %996, float %57, float %59, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1086 = call float @dx.op.unary.f32(i32 6, float %1083)  ; FAbs(value)
  %1087 = fadd fast float %1086, %1085
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1084, 0
  %1090 = fcmp fast ogt float %1088, %1089
  %1091 = and i1 %1074, %1090
  %1092 = and i1 %1045, %1091
  br i1 %1092, label %1106, label %1093

; <label>:1093                                    ; preds = %1347, %1187, %1106, %974
  %1094 = phi float [ %975, %1106 ], [ %975, %1187 ], [ %1357, %1347 ], [ %975, %974 ]
  %1095 = phi float [ %976, %1106 ], [ %976, %1187 ], [ %1358, %1347 ], [ %976, %974 ]
  %1096 = phi float [ %977, %1106 ], [ %977, %1187 ], [ %1359, %1347 ], [ %977, %974 ]
  %1097 = phi float [ %978, %1106 ], [ %978, %1187 ], [ %1321, %1347 ], [ %978, %974 ]
  %1098 = phi float [ %979, %1106 ], [ %979, %1187 ], [ %1322, %1347 ], [ %979, %974 ]
  %1099 = phi float [ %980, %1106 ], [ %980, %1187 ], [ %1316, %1347 ], [ %980, %974 ]
  %1100 = phi float [ %981, %1106 ], [ %981, %1187 ], [ %1313, %1347 ], [ %981, %974 ]
  %1101 = phi float [ %982, %1106 ], [ %982, %1187 ], [ %1310, %1347 ], [ %982, %974 ]
  %1102 = phi float [ %983, %1106 ], [ %983, %1187 ], [ %1305, %1347 ], [ %983, %974 ]
  %1103 = phi float [ %984, %1106 ], [ %984, %1187 ], [ %1306, %1347 ], [ %984, %974 ]
  %1104 = phi float [ %985, %1106 ], [ %985, %1187 ], [ %1307, %1347 ], [ %985, %974 ]
  %1105 = icmp eq i32 %1042, %973
  br i1 %1105, label %1360, label %974

; <label>:1106                                    ; preds = %974
  %1107 = extractvalue %dx.types.ResRet.f32 %1013, 3
  %1108 = extractvalue %dx.types.ResRet.f32 %1013, 1
  %1109 = extractvalue %dx.types.ResRet.f32 %1013, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1003, 1
  %1111 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1112 = extractvalue %dx.types.ResRet.i32 %999, 3
  %1113 = extractvalue %dx.types.ResRet.i32 %999, 2
  %1114 = add i32 %1112, 0
  %1115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1114, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1117 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1115, %dx.types.Handle %1116, float %1051, float %1058, float undef, float undef, i32 0, i32 0, i32 undef, float %1079, float %1081, float undef, float %1080, float %1082, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  %1119 = fmul fast float %1118, %1111
  %1120 = fadd fast float %1119, %1110
  %1121 = call float @dx.op.unary.f32(i32 7, float %1120)  ; Saturate(value)
  %1122 = fmul fast float %1051, %1008
  %1123 = call float @dx.op.tertiary.f32(i32 46, float %1009, float %1058, float %1122)  ; FMad(a,b,c)
  %1124 = fadd fast float %1123, %1109
  %1125 = fmul fast float %1051, %1010
  %1126 = call float @dx.op.tertiary.f32(i32 46, float %1011, float %1058, float %1125)  ; FMad(a,b,c)
  %1127 = fadd fast float %1126, %1108
  %1128 = fmul fast float %1079, %1008
  %1129 = call float @dx.op.tertiary.f32(i32 46, float %1009, float %1081, float %1128)  ; FMad(a,b,c)
  %1130 = fmul fast float %1079, %1010
  %1131 = call float @dx.op.tertiary.f32(i32 46, float %1011, float %1081, float %1130)  ; FMad(a,b,c)
  %1132 = fmul fast float %1080, %1008
  %1133 = call float @dx.op.tertiary.f32(i32 46, float %1009, float %1082, float %1132)  ; FMad(a,b,c)
  %1134 = fmul fast float %1080, %1010
  %1135 = call float @dx.op.tertiary.f32(i32 46, float %1011, float %1082, float %1134)  ; FMad(a,b,c)
  %1136 = add i32 %1113, 0
  %1137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1136, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1138 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1137, %dx.types.Handle %1116, float %1124, float %1127, float undef, float undef, i32 0, i32 0, i32 undef, float %1129, float %1131, float undef, float %1133, float %1135, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = and i32 %1043, 1024
  %1141 = icmp ne i32 %1140, 0
  %1142 = fcmp fast ogt float %1139, 0x3FE0101020000000
  %1143 = uitofp i1 %1142 to float
  %1144 = select i1 %1141, float %1143, float %1139
  %1145 = and i32 %1043, 8192
  %1146 = icmp ne i32 %1145, 0
  %1147 = select i1 %1146, float %1107, float 1.000000e+00
  %1148 = fmul fast float %1051, 2.000000e+00
  %1149 = fadd fast float %1148, -1.000000e+00
  %1150 = call float @dx.op.unary.f32(i32 6, float %1149)  ; FAbs(value)
  %1151 = fmul fast float %1150, %1040
  %1152 = fsub fast float %1151, %1040
  %1153 = call float @dx.op.unary.f32(i32 7, float %1152)  ; Saturate(value)
  %1154 = fmul fast float %1058, 2.000000e+00
  %1155 = fadd fast float %1154, -1.000000e+00
  %1156 = call float @dx.op.unary.f32(i32 6, float %1155)  ; FAbs(value)
  %1157 = fmul fast float %1156, %1041
  %1158 = fsub fast float %1157, %1041
  %1159 = call float @dx.op.unary.f32(i32 7, float %1158)  ; Saturate(value)
  %1160 = fmul fast float %1070, %1004
  %1161 = fsub fast float %1160, %1004
  %1162 = call float @dx.op.unary.f32(i32 7, float %1161)  ; Saturate(value)
  %1163 = fmul fast float %1121, %1147
  %1164 = fmul fast float %1163, %1118
  %1165 = fmul fast float %1164, %1153
  %1166 = fmul fast float %1165, %1144
  %1167 = fmul fast float %1166, %1159
  %1168 = fmul fast float %1167, %1162
  %1169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1170 = extractvalue %dx.types.CBufRet.f32 %1169, 1
  %1171 = extractvalue %dx.types.CBufRet.f32 %1169, 0
  %1172 = fsub fast float %1088, %1171
  %1173 = fmul fast float %1172, %1170
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1175 = fmul fast float %1168, %1005
  %1176 = fadd fast float %1168, %1005
  %1177 = fmul fast float %1176, %1014
  %1178 = fsub fast float %1177, %1014
  %1179 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1180 = and i32 %1043, 128
  %1181 = icmp ne i32 %1180, 0
  %1182 = select i1 %1181, float %1179, float %1175
  %1183 = fmul fast float %1182, %1174
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 0
  %1186 = fcmp fast ugt float %1183, %1185
  br i1 %1186, label %1187, label %1093

; <label>:1187                                    ; preds = %1106
  br i1 %1146, label %1093, label %1188

; <label>:1188                                    ; preds = %1187
  %1189 = and i32 %1043, 4
  %1190 = and i32 %1043, 8
  %1191 = add i32 %1000, 0
  %1192 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1191, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1194 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1192, %dx.types.Handle %1193, float %1124, float %1127, float undef, float undef, i32 0, i32 0, i32 undef, float %1129, float %1131, float undef, float %1133, float %1135, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.ResRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.ResRet.f32 %1194, 2
  %1198 = extractvalue %dx.types.ResRet.f32 %1194, 3
  %1199 = bitcast float %1026 to i32
  %1200 = and i32 %1199, 255
  %1201 = uitofp i32 %1200 to float
  %1202 = lshr i32 %1199, 8
  %1203 = and i32 %1202, 255
  %1204 = uitofp i32 %1203 to float
  %1205 = fmul fast float %1198, %1201
  %1206 = fadd fast float %1205, %1204
  %1207 = fmul fast float %1206, 0x3F70101000000000
  %1208 = add i32 %1001, 0
  %1209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1208, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1210 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1209, %dx.types.Handle %1193, float %1124, float %1127, float undef, float undef, i32 0, i32 0, i32 undef, float %1129, float %1131, float undef, float %1133, float %1135, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.ResRet.f32 %1210, 1
  %1213 = extractvalue %dx.types.ResRet.f32 %1210, 2
  %1214 = extractvalue %dx.types.ResRet.f32 %1210, 3
  %1215 = bitcast float %1020 to i32
  %1216 = and i32 %1215, 255
  %1217 = uitofp i32 %1216 to float
  %1218 = lshr i32 %1215, 8
  %1219 = and i32 %1218, 255
  %1220 = uitofp i32 %1219 to float
  %1221 = lshr i32 %1215, 16
  %1222 = and i32 %1221, 255
  %1223 = uitofp i32 %1222 to float
  %1224 = fmul fast float %1223, 0x3F70101000000000
  %1225 = fmul fast float %1211, %1217
  %1226 = fadd fast float %1225, %1220
  %1227 = fmul fast float %1226, 0x3F70101000000000
  %1228 = fadd fast float %1212, -5.000000e-01
  %1229 = fadd fast float %1214, -5.000000e-01
  %1230 = fmul fast float %1228, %1224
  %1231 = fmul fast float %1229, %1224
  %1232 = fadd fast float %1230, 5.000000e-01
  %1233 = fadd fast float %1231, 5.000000e-01
  %1234 = fmul fast float %1195, %1029
  %1235 = fmul fast float %1196, %1030
  %1236 = fmul fast float %1197, %1031
  %1237 = fmul fast float %1232, 2.000000e+00
  %1238 = fadd fast float %1237, -1.000000e+00
  %1239 = fmul fast float %1233, 2.000000e+00
  %1240 = fadd fast float %1239, -1.000000e+00
  %1241 = fadd fast float %1238, %1240
  %1242 = fmul fast float %1241, 5.000000e-01
  %1243 = fsub fast float %1238, %1240
  %1244 = fmul fast float %1243, 5.000000e-01
  %1245 = call float @dx.op.unary.f32(i32 6, float %1242)  ; FAbs(value)
  %1246 = fsub fast float 1.000000e+00, %1245
  %1247 = call float @dx.op.unary.f32(i32 6, float %1244)  ; FAbs(value)
  %1248 = fsub fast float %1246, %1247
  %1249 = call float @dx.op.dot3.f32(i32 55, float %1242, float %1244, float %1248, float %1242, float %1244, float %1248)  ; Dot3(ax,ay,az,bx,by,bz)
  %1250 = call float @dx.op.unary.f32(i32 25, float %1249)  ; Rsqrt(value)
  %1251 = fmul fast float %1242, %1250
  %1252 = fmul fast float %1244, %1250
  %1253 = fmul fast float %1250, %1248
  %1254 = fmul fast float %1253, %994
  %1255 = fmul fast float %1253, %995
  %1256 = fmul fast float %1253, %996
  %1257 = fmul fast float %1251, %1017
  %1258 = fmul fast float %1251, %1018
  %1259 = fmul fast float %1251, %1019
  %1260 = fadd fast float %1257, %1254
  %1261 = fadd fast float %1258, %1255
  %1262 = fadd fast float %1259, %1256
  %1263 = fmul fast float %1252, %1023
  %1264 = fmul fast float %1252, %1024
  %1265 = fmul fast float %1252, %1025
  %1266 = fadd fast float %1260, %1263
  %1267 = fadd fast float %1261, %1264
  %1268 = fadd fast float %1262, %1265
  %1269 = call float @dx.op.dot3.f32(i32 55, float %1266, float %1267, float %1268, float %1266, float %1267, float %1268)  ; Dot3(ax,ay,az,bx,by,bz)
  %1270 = call float @dx.op.unary.f32(i32 25, float %1269)  ; Rsqrt(value)
  %1271 = fmul fast float %1266, %1270
  %1272 = fmul fast float %1267, %1270
  %1273 = fmul fast float %1268, %1270
  %1274 = fcmp fast ogt float %1083, %1089
  %1275 = fsub fast float -0.000000e+00, %1271
  %1276 = fsub fast float -0.000000e+00, %1272
  %1277 = fsub fast float -0.000000e+00, %1273
  %1278 = select i1 %1274, float %1271, float %1275
  %1279 = select i1 %1274, float %1272, float %1276
  %1280 = select i1 %1274, float %1273, float %1277
  %1281 = fmul fast float %1278, %900
  %1282 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %901, float %1281)  ; FMad(a,b,c)
  %1283 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %903, float %1282)  ; FMad(a,b,c)
  %1284 = fmul fast float %1278, %896
  %1285 = call float @dx.op.tertiary.f32(i32 46, float %1279, float %906, float %1284)  ; FMad(a,b,c)
  %1286 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %907, float %1285)  ; FMad(a,b,c)
  %1287 = icmp ne i32 %1190, 0
  %1288 = select i1 %1287, float 1.000000e+00, float 0.000000e+00
  %1289 = fmul fast float %1183, %1288
  %1290 = and i32 %1043, 1
  %1291 = icmp ne i32 %1290, 0
  %1292 = fadd fast float %1283, %978
  %1293 = fadd fast float %1286, %979
  %1294 = select i1 %1291, float %1292, float %1283
  %1295 = select i1 %1291, float %1293, float %1286
  %1296 = icmp ne i32 %1189, 0
  %1297 = select i1 %1296, float 1.000000e+00, float 0.000000e+00
  %1298 = fmul fast float %1183, %1297
  %1299 = fsub fast float %1234, %983
  %1300 = fsub fast float %1235, %984
  %1301 = fsub fast float %1236, %985
  %1302 = fmul fast float %1299, %1298
  %1303 = fmul fast float %1300, %1298
  %1304 = fmul fast float %1301, %1298
  %1305 = fadd fast float %1302, %983
  %1306 = fadd fast float %1303, %984
  %1307 = fadd fast float %1304, %985
  %1308 = fsub fast float %1207, %982
  %1309 = fmul fast float %1308, %1298
  %1310 = fadd fast float %1309, %982
  %1311 = fsub fast float %1227, %981
  %1312 = fmul fast float %1311, %1289
  %1313 = fadd fast float %1312, %981
  %1314 = fsub fast float %1213, %980
  %1315 = fmul fast float %1314, %1289
  %1316 = fadd fast float %1315, %980
  %1317 = fsub fast float %1294, %978
  %1318 = fsub fast float %1295, %979
  %1319 = fmul fast float %1317, %1289
  %1320 = fmul fast float %1318, %1289
  %1321 = fadd fast float %1319, %978
  %1322 = fadd fast float %1320, %979
  %1323 = and i32 %1043, 16
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %1347, label %1325

; <label>:1325                                    ; preds = %1188
  %1326 = bitcast float %1037 to i32
  %1327 = add i32 %1034, 0
  %1328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1327, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1329 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1328, %dx.types.Handle %1193, float %1124, float %1127, float undef, float undef, i32 0, i32 0, i32 undef, float %1129, float %1131, float undef, float %1133, float %1135, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1330 = extractvalue %dx.types.ResRet.f32 %1329, 0
  %1331 = extractvalue %dx.types.ResRet.f32 %1329, 1
  %1332 = extractvalue %dx.types.ResRet.f32 %1329, 2
  %1333 = and i32 %1326, 65535
  %1334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1333)  ; LegacyF16ToF32(value)
  %1335 = fmul fast float %1330, %1029
  %1336 = fmul fast float %1331, %1030
  %1337 = fmul fast float %1332, %1031
  %1338 = and i32 %1043, 16384
  %1339 = icmp ne i32 %1338, 0
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 0
  %1342 = select i1 %1339, float %1341, float 1.000000e+00
  %1343 = fmul fast float %1342, %1334
  %1344 = fmul fast float %1335, %1343
  %1345 = fmul fast float %1336, %1343
  %1346 = fmul fast float %1337, %1343
  br label %1347

; <label>:1347                                    ; preds = %1325, %1188
  %1348 = phi float [ %1344, %1325 ], [ 0.000000e+00, %1188 ]
  %1349 = phi float [ %1345, %1325 ], [ 0.000000e+00, %1188 ]
  %1350 = phi float [ %1346, %1325 ], [ 0.000000e+00, %1188 ]
  %1351 = fsub fast float %1348, %975
  %1352 = fsub fast float %1349, %976
  %1353 = fsub fast float %1350, %977
  %1354 = fmul fast float %1351, %1183
  %1355 = fmul fast float %1352, %1183
  %1356 = fmul fast float %1353, %1183
  %1357 = fadd fast float %1354, %975
  %1358 = fadd fast float %1355, %976
  %1359 = fadd fast float %1356, %977
  br label %1093

; <label>:1360                                    ; preds = %1093
  br label %1361

; <label>:1361                                    ; preds = %1360, %870
  %1362 = phi float [ 0.000000e+00, %870 ], [ %1094, %1360 ]
  %1363 = phi float [ 0.000000e+00, %870 ], [ %1095, %1360 ]
  %1364 = phi float [ 0.000000e+00, %870 ], [ %1096, %1360 ]
  %1365 = phi float [ %871, %870 ], [ %1097, %1360 ]
  %1366 = phi float [ %872, %870 ], [ %1098, %1360 ]
  %1367 = phi float [ %917, %870 ], [ %1099, %1360 ]
  %1368 = phi float [ %920, %870 ], [ %1100, %1360 ]
  %1369 = phi float [ %915, %870 ], [ %1101, %1360 ]
  %1370 = phi float [ %909, %870 ], [ %1102, %1360 ]
  %1371 = phi float [ %911, %870 ], [ %1103, %1360 ]
  %1372 = phi float [ %913, %870 ], [ %1104, %1360 ]
  %1373 = call float @dx.op.dot2.f32(i32 54, float %1365, float %1366, float %1365, float %1366)  ; Dot2(ax,ay,bx,by)
  %1374 = fmul fast float %1373, 0x3FE3333340000000
  %1375 = fsub fast float 1.000000e+00, %1374
  %1376 = call float @dx.op.dot3.f32(i32 55, float %1365, float %1366, float %1375, float %1365, float %1366, float %1375)  ; Dot3(ax,ay,az,bx,by,bz)
  %1377 = call float @dx.op.unary.f32(i32 25, float %1376)  ; Rsqrt(value)
  %1378 = fmul fast float %1377, %1365
  %1379 = fmul fast float %1377, %1366
  %1380 = fmul fast float %1375, %1377
  %1381 = fmul fast float %1380, %57
  %1382 = fmul fast float %1380, %59
  %1383 = fmul fast float %1380, %61
  %1384 = fmul fast float %1378, %900
  %1385 = fmul fast float %1378, %901
  %1386 = fmul fast float %1378, %903
  %1387 = fadd fast float %1381, %1384
  %1388 = fadd fast float %1382, %1385
  %1389 = fadd fast float %1383, %1386
  %1390 = fmul fast float %1379, %896
  %1391 = fmul fast float %1379, %906
  %1392 = fmul fast float %1379, %907
  %1393 = fadd fast float %1387, %1390
  %1394 = fadd fast float %1388, %1391
  %1395 = fadd fast float %1389, %1392
  %1396 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %1397 = call float @dx.op.unary.f32(i32 25, float %1396)  ; Rsqrt(value)
  %1398 = fmul fast float %1393, %1397
  %1399 = fmul fast float %1394, %1397
  %1400 = fmul fast float %1395, %1397
  %1401 = fadd fast float %1369, 0xBFB99999A0000000
  %1402 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1403 = fmul fast float %1402, 0x3FF1C71C80000000
  %1404 = call float @dx.op.binary.f32(i32 36, float %1369, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1405 = fsub fast float 1.000000e+00, %1403
  %1406 = call float @dx.op.unary.f32(i32 7, float %1405)  ; Saturate(value)
  %1407 = fmul fast float %1406, %1370
  %1408 = fmul fast float %1406, %1371
  %1409 = fmul fast float %1406, %1372
  %1410 = call float @dx.op.unary.f32(i32 7, float %1407)  ; Saturate(value)
  %1411 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1412 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  %1413 = fmul fast float %1403, %1370
  %1414 = fmul fast float %1403, %1371
  %1415 = fmul fast float %1403, %1372
  %1416 = fadd fast float %1413, %1404
  %1417 = fadd fast float %1414, %1404
  %1418 = fadd fast float %1415, %1404
  %1419 = call float @dx.op.unary.f32(i32 7, float %1416)  ; Saturate(value)
  %1420 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  %1421 = call float @dx.op.unary.f32(i32 7, float %1418)  ; Saturate(value)
  %1422 = fmul fast float %1420, 0x401CF23780000000
  %1423 = fadd fast float %1422, 0x3FF32641C0000000
  %1424 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %1425 = call float @dx.op.unary.f32(i32 25, float %1424)  ; Rsqrt(value)
  %1426 = fmul fast float %1425, %95
  %1427 = fmul fast float %1425, %96
  %1428 = fmul fast float %1425, %97
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 0
  %1431 = fdiv fast float 1.000000e+00, %1423
  %1432 = select i1 %38, float %1431, float %1423
  %1433 = fadd fast float %1432, -1.000000e+00
  %1434 = fadd fast float %1432, 1.000000e+00
  %1435 = fdiv fast float %1433, %1434
  %1436 = fmul fast float %1435, %1435
  %1437 = call float @dx.op.dot3.f32(i32 55, float %1426, float %1427, float %1428, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %1438 = select i1 %38, float 0.000000e+00, float %1430
  %1439 = fadd fast float %1437, %1438
  %1440 = call float @dx.op.binary.f32(i32 35, float %1439, float -1.000000e+00)  ; FMax(a,b)
  %1441 = call float @dx.op.binary.f32(i32 36, float %1440, float 1.000000e+00)  ; FMin(a,b)
  %1442 = fmul fast float %1432, %1432
  %1443 = fmul fast float %1441, %1441
  %1444 = fsub fast float 1.000000e+00, %1443
  %1445 = fmul fast float %1442, %1444
  %1446 = fsub fast float 1.000000e+00, %1445
  %1447 = fcmp fast olt float %1432, 1.000000e+00
  %1448 = select i1 %1447, float %1443, float %1446
  %1449 = fcmp fast ogt float %1446, 0.000000e+00
  %1450 = fsub fast float 1.000000e+00, %1436
  %1451 = call float @dx.op.unary.f32(i32 24, float %1448)  ; Sqrt(value)
  %1452 = fsub fast float 1.000000e+00, %1451
  %1453 = call float @dx.op.unary.f32(i32 23, float %1452)  ; Log(value)
  %1454 = fmul fast float %1453, 5.000000e+00
  %1455 = call float @dx.op.unary.f32(i32 21, float %1454)  ; Exp(value)
  %1456 = fmul fast float %1455, %1450
  %1457 = fadd fast float %1456, %1436
  %1458 = select i1 %1449, float %1457, float 1.000000e+00
  %1459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.f32 %1459, 3
  %1461 = fmul fast float %1460, %1368
  %1462 = call float @dx.op.unary.f32(i32 7, float %1461)  ; Saturate(value)
  %1463 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1464 = fmul fast float %41, 6.553500e+04
  %1465 = call float @dx.op.unary.f32(i32 26, float %1464)  ; Round_ne(value)
  %1466 = fptosi float %1465 to i32
  %1467 = call i32 @dx.op.binary.i32(i32 37, i32 %1466, i32 0)  ; IMax(a,b)
  %1468 = call i32 @dx.op.binary.i32(i32 38, i32 %1467, i32 65535)  ; IMin(a,b)
  %1469 = fmul fast float %42, 6.553500e+04
  %1470 = call float @dx.op.unary.f32(i32 26, float %1469)  ; Round_ne(value)
  %1471 = fptosi float %1470 to i32
  %1472 = call i32 @dx.op.binary.i32(i32 37, i32 %1471, i32 0)  ; IMax(a,b)
  %1473 = call i32 @dx.op.binary.i32(i32 38, i32 %1472, i32 65535)  ; IMin(a,b)
  %1474 = shl i32 %1473, 16
  %1475 = or i32 %1474, %1468
  %1476 = call float @dx.op.dot3.f32(i32 55, float %1419, float %1420, float %1421, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1477 = fsub fast float 1.000000e+00, %1476
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = and i32 %1479, 255
  %1481 = uitofp i32 %1480 to float
  %1482 = lshr i32 %1479, 8
  %1483 = and i32 %1482, 255
  %1484 = uitofp i32 %1483 to float
  %1485 = fmul fast float %1484, %1477
  %1486 = fadd fast float %1485, %1481
  %1487 = fmul fast float %1486, 0x3F70101020000000
  %1488 = call float @dx.op.unary.f32(i32 7, float %1487)  ; Saturate(value)
  %1489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1490 = extractvalue %dx.types.CBufRet.f32 %1489, 0
  %1491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.i32 %1492, 3
  %1494 = and i32 %1493, 3
  %1495 = icmp ne i32 %1494, 0
  %1496 = and i32 %1493, 4
  %1497 = icmp ne i32 %1496, 0
  %1498 = and i1 %1495, %1497
  br i1 %1498, label %1499, label %1510

; <label>:1499                                    ; preds = %1361
  %1500 = extractvalue %dx.types.CBufRet.f32 %1491, 3
  %1501 = fmul fast float %1500, %52
  %1502 = extractvalue %dx.types.CBufRet.f32 %1491, 2
  %1503 = fmul fast float %1502, %51
  %1504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %31, float %1503, float %1501, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1505 = extractvalue %dx.types.ResRet.f32 %1504, 0
  %1506 = fsub fast float 1.000000e+00, %1505
  %1507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.f32 %1507, 0
  %1509 = fcmp fast olt float %1506, %1508
  br label %1513

; <label>:1510                                    ; preds = %1361
  %1511 = icmp eq i32 %1496, 0
  %1512 = and i1 %1495, %1511
  br label %1513

; <label>:1513                                    ; preds = %1510, %1499
  %1514 = phi i1 [ %1509, %1499 ], [ %1512, %1510 ]
  %1515 = fsub fast float -0.000000e+00, %1426
  %1516 = fsub fast float -0.000000e+00, %1427
  %1517 = fsub fast float -0.000000e+00, %1428
  %1518 = select i1 %1514, float 0.000000e+00, float %1421
  %1519 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %1515, float %1516, float %1517)  ; Dot3(ax,ay,az,bx,by,bz)
  %1520 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1521 = call float @dx.op.binary.f32(i32 36, float %1463, float 1.000000e+00)  ; FMin(a,b)
  %1522 = fsub fast float 1.000000e+00, %1463
  %1523 = bitcast float %1522 to i32
  %1524 = sub nsw i32 2129859010, %1523
  %1525 = bitcast i32 %1524 to float
  %1526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.f32 %1526, 0
  %1528 = extractvalue %dx.types.CBufRet.f32 %1526, 1
  %1529 = extractvalue %dx.types.CBufRet.f32 %1526, 2
  %1530 = fadd fast float %1527, %95
  %1531 = fadd fast float %1528, %96
  %1532 = fadd fast float %1529, %97
  %1533 = fmul fast float %1398, 3.200000e+01
  %1534 = fmul fast float %1399, 3.200000e+01
  %1535 = fadd fast float %1530, %1533
  %1536 = fadd fast float %1531, %1534
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1539 = extractvalue %dx.types.CBufRet.f32 %1537, 1
  %1540 = fsub fast float %1535, %1538
  %1541 = fsub fast float %1536, %1539
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 0
  %1544 = extractvalue %dx.types.CBufRet.f32 %1542, 1
  %1545 = fmul fast float %1540, %1543
  %1546 = fmul fast float %1541, %1544
  %1547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1548 = extractvalue %dx.types.CBufRet.f32 %1547, 0
  %1549 = fmul fast float %1545, %1548
  %1550 = extractvalue %dx.types.CBufRet.f32 %1547, 1
  %1551 = fadd fast float %1549, %1550
  %1552 = extractvalue %dx.types.CBufRet.f32 %1547, 2
  %1553 = fmul fast float %1552, %1546
  %1554 = extractvalue %dx.types.CBufRet.f32 %1547, 3
  %1555 = fadd fast float %1553, %1554
  %1556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %31, float %1551, float %1555, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1557 = extractvalue %dx.types.ResRet.f32 %1556, 0
  %1558 = extractvalue %dx.types.ResRet.f32 %1556, 1
  %1559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1560 = extractvalue %dx.types.CBufRet.f32 %1559, 1
  %1561 = extractvalue %dx.types.CBufRet.f32 %1559, 0
  %1562 = fsub fast float %1560, %1561
  %1563 = fmul fast float %1562, %1557
  %1564 = fadd fast float %1563, %1561
  %1565 = extractvalue %dx.types.CBufRet.f32 %1559, 3
  %1566 = extractvalue %dx.types.CBufRet.f32 %1559, 2
  %1567 = fsub fast float %1565, %1566
  %1568 = fmul fast float %1567, %1558
  %1569 = fadd fast float %1568, %1566
  %1570 = fsub fast float %1532, %1564
  %1571 = fsub fast float %1569, %1564
  %1572 = fdiv fast float %1570, %1571
  %1573 = call float @dx.op.unary.f32(i32 7, float %1572)  ; Saturate(value)
  %1574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1575 = extractvalue %dx.types.CBufRet.f32 %1574, 0
  %1576 = fmul fast float %1575, %1573
  %1577 = extractvalue %dx.types.CBufRet.f32 %1574, 1
  %1578 = fadd fast float %1576, %1577
  %1579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %31, float %1551, float %1555, float %1578, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1580 = extractvalue %dx.types.ResRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.ResRet.f32 %1579, 1
  %1582 = extractvalue %dx.types.ResRet.f32 %1579, 2
  %1583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1584 = extractvalue %dx.types.CBufRet.f32 %1583, 0
  %1585 = extractvalue %dx.types.CBufRet.f32 %1583, 1
  %1586 = extractvalue %dx.types.CBufRet.f32 %1583, 2
  %1587 = fmul fast float %1584, %1580
  %1588 = fmul fast float %1585, %1581
  %1589 = fmul fast float %1586, %1582
  %1590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1591 = extractvalue %dx.types.CBufRet.f32 %1590, 0
  %1592 = extractvalue %dx.types.CBufRet.f32 %1590, 1
  %1593 = extractvalue %dx.types.CBufRet.f32 %1590, 2
  %1594 = fadd fast float %1587, %1591
  %1595 = fadd fast float %1588, %1592
  %1596 = fadd fast float %1589, %1593
  %1597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.f32 %1597, 0
  %1599 = fmul fast float %1598, %1545
  %1600 = extractvalue %dx.types.CBufRet.f32 %1597, 1
  %1601 = fadd fast float %1599, %1600
  %1602 = extractvalue %dx.types.CBufRet.f32 %1597, 2
  %1603 = fmul fast float %1602, %1546
  %1604 = extractvalue %dx.types.CBufRet.f32 %1597, 3
  %1605 = fadd fast float %1603, %1604
  %1606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1607 = extractvalue %dx.types.CBufRet.f32 %1606, 0
  %1608 = extractvalue %dx.types.CBufRet.f32 %1606, 1
  %1609 = extractvalue %dx.types.CBufRet.f32 %1606, 2
  %1610 = extractvalue %dx.types.CBufRet.f32 %1606, 3
  %1611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1612 = extractvalue %dx.types.CBufRet.f32 %1611, 0
  %1613 = extractvalue %dx.types.CBufRet.f32 %1611, 1
  %1614 = extractvalue %dx.types.CBufRet.f32 %1611, 2
  %1615 = extractvalue %dx.types.CBufRet.f32 %1611, 3
  %1616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %31, float %1601, float %1605, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1617 = extractvalue %dx.types.ResRet.f32 %1616, 0
  %1618 = extractvalue %dx.types.ResRet.f32 %1616, 1
  %1619 = extractvalue %dx.types.ResRet.f32 %1616, 2
  %1620 = extractvalue %dx.types.ResRet.f32 %1616, 3
  %1621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %31, float %1601, float %1605, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1622 = extractvalue %dx.types.ResRet.f32 %1621, 0
  %1623 = extractvalue %dx.types.ResRet.f32 %1621, 1
  %1624 = extractvalue %dx.types.ResRet.f32 %1621, 2
  %1625 = extractvalue %dx.types.ResRet.f32 %1621, 3
  %1626 = fmul fast float %1617, %1594
  %1627 = fmul fast float %1622, %1594
  %1628 = fmul fast float %1624, %1594
  %1629 = fmul fast float %1620, %1594
  %1630 = fadd fast float %1626, %1607
  %1631 = fadd fast float %1627, %1608
  %1632 = fadd fast float %1628, %1609
  %1633 = fadd fast float %1629, %1610
  %1634 = fmul fast float %1618, %1594
  %1635 = fmul fast float %1623, %1594
  %1636 = fadd fast float %1634, %1612
  %1637 = fadd fast float %1635, %1613
  %1638 = fmul fast float %1619, %1594
  %1639 = fmul fast float %1625, %1594
  %1640 = fadd fast float %1638, %1614
  %1641 = fadd fast float %1639, %1615
  %1642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %31, float %1601, float %1605, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1643 = extractvalue %dx.types.ResRet.f32 %1642, 0
  %1644 = extractvalue %dx.types.ResRet.f32 %1642, 1
  %1645 = extractvalue %dx.types.ResRet.f32 %1642, 2
  %1646 = extractvalue %dx.types.ResRet.f32 %1642, 3
  %1647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %31, float %1601, float %1605, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1648 = extractvalue %dx.types.ResRet.f32 %1647, 0
  %1649 = extractvalue %dx.types.ResRet.f32 %1647, 1
  %1650 = extractvalue %dx.types.ResRet.f32 %1647, 2
  %1651 = extractvalue %dx.types.ResRet.f32 %1647, 3
  %1652 = fmul fast float %1643, %1595
  %1653 = fmul fast float %1648, %1595
  %1654 = fmul fast float %1650, %1595
  %1655 = fmul fast float %1646, %1595
  %1656 = fadd fast float %1630, %1652
  %1657 = fadd fast float %1631, %1653
  %1658 = fadd fast float %1632, %1654
  %1659 = fadd fast float %1633, %1655
  %1660 = fmul fast float %1644, %1595
  %1661 = fmul fast float %1649, %1595
  %1662 = fadd fast float %1636, %1660
  %1663 = fadd fast float %1637, %1661
  %1664 = fmul fast float %1645, %1595
  %1665 = fmul fast float %1651, %1595
  %1666 = fadd fast float %1640, %1664
  %1667 = fadd fast float %1641, %1665
  %1668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %31, float %1601, float %1605, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1669 = extractvalue %dx.types.ResRet.f32 %1668, 0
  %1670 = extractvalue %dx.types.ResRet.f32 %1668, 1
  %1671 = extractvalue %dx.types.ResRet.f32 %1668, 2
  %1672 = extractvalue %dx.types.ResRet.f32 %1668, 3
  %1673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %31, float %1601, float %1605, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1674 = extractvalue %dx.types.ResRet.f32 %1673, 0
  %1675 = extractvalue %dx.types.ResRet.f32 %1673, 1
  %1676 = extractvalue %dx.types.ResRet.f32 %1673, 2
  %1677 = extractvalue %dx.types.ResRet.f32 %1673, 3
  %1678 = fmul fast float %1669, %1596
  %1679 = fmul fast float %1674, %1596
  %1680 = fmul fast float %1676, %1596
  %1681 = fmul fast float %1672, %1596
  %1682 = fadd fast float %1656, %1678
  %1683 = fadd fast float %1657, %1679
  %1684 = fadd fast float %1658, %1680
  %1685 = fadd fast float %1659, %1681
  %1686 = fmul fast float %1670, %1596
  %1687 = fmul fast float %1675, %1596
  %1688 = fadd fast float %1662, %1686
  %1689 = fadd fast float %1663, %1687
  %1690 = fmul fast float %1671, %1596
  %1691 = fmul fast float %1677, %1596
  %1692 = fadd fast float %1666, %1690
  %1693 = fadd fast float %1667, %1691
  %1694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.f32 %1694, 0
  %1696 = fsub fast float %1530, %1695
  %1697 = fsub fast float %1538, %1530
  %1698 = call float @dx.op.binary.f32(i32 35, float %1697, float %1696)  ; FMax(a,b)
  %1699 = extractvalue %dx.types.CBufRet.f32 %1694, 1
  %1700 = fsub fast float %1531, %1699
  %1701 = fsub fast float %1539, %1531
  %1702 = call float @dx.op.binary.f32(i32 35, float %1701, float %1700)  ; FMax(a,b)
  %1703 = call float @dx.op.binary.f32(i32 35, float %1698, float %1702)  ; FMax(a,b)
  %1704 = extractvalue %dx.types.CBufRet.f32 %1542, 3
  %1705 = fmul fast float %1704, %1703
  %1706 = call float @dx.op.unary.f32(i32 7, float %1705)  ; Saturate(value)
  %1707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.f32 %1707, 0
  %1709 = extractvalue %dx.types.CBufRet.f32 %1707, 1
  %1710 = extractvalue %dx.types.CBufRet.f32 %1707, 2
  %1711 = extractvalue %dx.types.CBufRet.f32 %1707, 3
  %1712 = fsub fast float %1708, %1682
  %1713 = fsub fast float %1709, %1683
  %1714 = fsub fast float %1710, %1684
  %1715 = fsub fast float %1711, %1685
  %1716 = fmul fast float %1712, %1706
  %1717 = fmul fast float %1713, %1706
  %1718 = fmul fast float %1714, %1706
  %1719 = fmul fast float %1715, %1706
  %1720 = fadd fast float %1716, %1682
  %1721 = fadd fast float %1717, %1683
  %1722 = fadd fast float %1718, %1684
  %1723 = fadd fast float %1719, %1685
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 0
  %1726 = extractvalue %dx.types.CBufRet.f32 %1724, 1
  %1727 = fsub fast float %1725, %1688
  %1728 = fsub fast float %1726, %1689
  %1729 = fmul fast float %1727, %1706
  %1730 = fmul fast float %1728, %1706
  %1731 = fadd fast float %1729, %1688
  %1732 = fadd fast float %1730, %1689
  %1733 = extractvalue %dx.types.CBufRet.f32 %1724, 2
  %1734 = extractvalue %dx.types.CBufRet.f32 %1724, 3
  %1735 = fsub fast float %1733, %1692
  %1736 = fsub fast float %1734, %1693
  %1737 = fmul fast float %1735, %1706
  %1738 = fmul fast float %1736, %1706
  %1739 = fadd fast float %1737, %1692
  %1740 = fadd fast float %1738, %1693
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 0
  %1743 = fmul fast float %1742, %1720
  %1744 = fmul fast float %1742, %1721
  %1745 = fmul fast float %1742, %1722
  %1746 = fmul fast float %1742, %1723
  %1747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1748 = extractvalue %dx.types.CBufRet.f32 %1747, 0
  %1749 = fmul fast float %1748, %1731
  %1750 = fmul fast float %1748, %1732
  %1751 = fadd fast float %1749, %1743
  %1752 = fadd fast float %1750, %1745
  %1753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.f32 %1753, 0
  %1755 = fmul fast float %1754, %1739
  %1756 = fmul fast float %1754, %1740
  %1757 = fadd fast float %1751, %1755
  %1758 = fadd fast float %1752, %1756
  %1759 = extractvalue %dx.types.CBufRet.f32 %1741, 1
  %1760 = fmul fast float %1759, %1720
  %1761 = fmul fast float %1759, %1721
  %1762 = fmul fast float %1759, %1722
  %1763 = fmul fast float %1759, %1723
  %1764 = extractvalue %dx.types.CBufRet.f32 %1747, 1
  %1765 = fmul fast float %1764, %1731
  %1766 = fmul fast float %1764, %1732
  %1767 = fadd fast float %1765, %1760
  %1768 = fadd fast float %1766, %1762
  %1769 = extractvalue %dx.types.CBufRet.f32 %1753, 1
  %1770 = fmul fast float %1769, %1739
  %1771 = fmul fast float %1769, %1740
  %1772 = fadd fast float %1767, %1770
  %1773 = fadd fast float %1768, %1771
  %1774 = extractvalue %dx.types.CBufRet.f32 %1741, 2
  %1775 = fmul fast float %1774, %1720
  %1776 = fmul fast float %1774, %1721
  %1777 = fmul fast float %1774, %1722
  %1778 = fmul fast float %1774, %1723
  %1779 = extractvalue %dx.types.CBufRet.f32 %1747, 2
  %1780 = fmul fast float %1779, %1731
  %1781 = fmul fast float %1779, %1732
  %1782 = fadd fast float %1780, %1775
  %1783 = fadd fast float %1781, %1777
  %1784 = extractvalue %dx.types.CBufRet.f32 %1753, 2
  %1785 = fmul fast float %1784, %1739
  %1786 = fmul fast float %1784, %1740
  %1787 = fadd fast float %1782, %1785
  %1788 = fadd fast float %1783, %1786
  %1789 = fmul fast float %1776, %1776
  %1790 = fmul fast float %1788, %1788
  %1791 = fmul fast float %1778, %1778
  %1792 = fadd fast float %1791, %1789
  %1793 = fadd fast float %1792, %1790
  %1794 = call float @dx.op.unary.f32(i32 24, float %1793)  ; Sqrt(value)
  %1795 = fcmp fast ugt float %1794, 0.000000e+00
  br i1 %1795, label %1796, label %1811

; <label>:1796                                    ; preds = %1513
  %1797 = fsub fast float -0.000000e+00, %1778
  %1798 = fdiv fast float %1797, %1794
  %1799 = fsub fast float -0.000000e+00, %1776
  %1800 = fdiv fast float %1799, %1794
  %1801 = fdiv fast float %1788, %1794
  %1802 = fmul fast float %1787, 0x3FE279A760000000
  %1803 = fmul fast float %1800, %1776
  %1804 = fmul fast float %1801, %1788
  %1805 = fmul fast float %1798, %1778
  %1806 = fadd fast float %1803, %1805
  %1807 = fsub fast float %1806, %1804
  %1808 = call float @dx.op.unary.f32(i32 6, float %1807)  ; FAbs(value)
  %1809 = fadd fast float %1808, 0x3DDB7CDFE0000000
  %1810 = fdiv fast float %1802, %1809
  br label %1811

; <label>:1811                                    ; preds = %1796, %1513
  %1812 = phi float [ %1810, %1796 ], [ 1.000000e+00, %1513 ]
  %1813 = fmul fast float %1761, %1761
  %1814 = fmul fast float %1773, %1773
  %1815 = fmul fast float %1763, %1763
  %1816 = fadd fast float %1815, %1813
  %1817 = fadd fast float %1816, %1814
  %1818 = call float @dx.op.unary.f32(i32 24, float %1817)  ; Sqrt(value)
  %1819 = fcmp fast ugt float %1818, 0.000000e+00
  br i1 %1819, label %1820, label %1835

; <label>:1820                                    ; preds = %1811
  %1821 = fsub fast float -0.000000e+00, %1763
  %1822 = fdiv fast float %1821, %1818
  %1823 = fsub fast float -0.000000e+00, %1761
  %1824 = fdiv fast float %1823, %1818
  %1825 = fdiv fast float %1773, %1818
  %1826 = fmul fast float %1772, 0x3FE279A760000000
  %1827 = fmul fast float %1824, %1761
  %1828 = fmul fast float %1825, %1773
  %1829 = fmul fast float %1822, %1763
  %1830 = fadd fast float %1827, %1829
  %1831 = fsub fast float %1830, %1828
  %1832 = call float @dx.op.unary.f32(i32 6, float %1831)  ; FAbs(value)
  %1833 = fadd fast float %1832, 0x3DDB7CDFE0000000
  %1834 = fdiv fast float %1826, %1833
  br label %1835

; <label>:1835                                    ; preds = %1820, %1811
  %1836 = phi float [ %1834, %1820 ], [ 1.000000e+00, %1811 ]
  %1837 = call float @dx.op.binary.f32(i32 36, float %1836, float %1812)  ; FMin(a,b)
  %1838 = fmul fast float %1744, %1744
  %1839 = fmul fast float %1758, %1758
  %1840 = fmul fast float %1746, %1746
  %1841 = fadd fast float %1840, %1838
  %1842 = fadd fast float %1841, %1839
  %1843 = call float @dx.op.unary.f32(i32 24, float %1842)  ; Sqrt(value)
  %1844 = fcmp fast ugt float %1843, 0.000000e+00
  br i1 %1844, label %1845, label %1860

; <label>:1845                                    ; preds = %1835
  %1846 = fsub fast float -0.000000e+00, %1746
  %1847 = fdiv fast float %1846, %1843
  %1848 = fsub fast float -0.000000e+00, %1744
  %1849 = fdiv fast float %1848, %1843
  %1850 = fdiv fast float %1758, %1843
  %1851 = fmul fast float %1757, 0x3FE279A760000000
  %1852 = fmul fast float %1849, %1744
  %1853 = fmul fast float %1850, %1758
  %1854 = fmul fast float %1847, %1746
  %1855 = fadd fast float %1852, %1854
  %1856 = fsub fast float %1855, %1853
  %1857 = call float @dx.op.unary.f32(i32 6, float %1856)  ; FAbs(value)
  %1858 = fadd fast float %1857, 0x3DDB7CDFE0000000
  %1859 = fdiv fast float %1851, %1858
  br label %1860

; <label>:1860                                    ; preds = %1845, %1835
  %1861 = phi float [ %1859, %1845 ], [ 1.000000e+00, %1835 ]
  %1862 = call float @dx.op.binary.f32(i32 36, float %1861, float %1837)  ; FMin(a,b)
  %1863 = call float @dx.op.unary.f32(i32 7, float %1862)  ; Saturate(value)
  %1864 = fcmp fast olt float %1863, 1.000000e+00
  br i1 %1864, label %1865, label %1875

; <label>:1865                                    ; preds = %1860
  %1866 = fmul fast float %1863, %1744
  %1867 = fmul fast float %1863, %1758
  %1868 = fmul fast float %1863, %1746
  %1869 = fmul fast float %1863, %1761
  %1870 = fmul fast float %1863, %1773
  %1871 = fmul fast float %1863, %1763
  %1872 = fmul fast float %1863, %1776
  %1873 = fmul fast float %1863, %1788
  %1874 = fmul fast float %1863, %1778
  br label %1875

; <label>:1875                                    ; preds = %1865, %1860
  %1876 = phi float [ %1872, %1865 ], [ %1776, %1860 ]
  %1877 = phi float [ %1873, %1865 ], [ %1788, %1860 ]
  %1878 = phi float [ %1874, %1865 ], [ %1778, %1860 ]
  %1879 = phi float [ %1869, %1865 ], [ %1761, %1860 ]
  %1880 = phi float [ %1870, %1865 ], [ %1773, %1860 ]
  %1881 = phi float [ %1871, %1865 ], [ %1763, %1860 ]
  %1882 = phi float [ %1866, %1865 ], [ %1744, %1860 ]
  %1883 = phi float [ %1867, %1865 ], [ %1758, %1860 ]
  %1884 = phi float [ %1868, %1865 ], [ %1746, %1860 ]
  %1885 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1757)  ; FMax(a,b)
  %1886 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1772)  ; FMax(a,b)
  %1887 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1787)  ; FMax(a,b)
  %1888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1889 = extractvalue %dx.types.CBufRet.f32 %1888, 0
  %1890 = fcmp fast ogt float %1889, 0.000000e+00
  %1891 = fcmp fast oge float %1545, 0.000000e+00
  %1892 = and i1 %1891, %1890
  %1893 = fcmp fast ole float %1545, 1.000000e+00
  %1894 = and i1 %1893, %1892
  %1895 = fcmp fast oge float %1546, 0.000000e+00
  %1896 = and i1 %1895, %1894
  %1897 = fcmp fast ole float %1546, 1.000000e+00
  %1898 = and i1 %1897, %1896
  br i1 %1898, label %1899, label %2039, !dx.controlflow.hints !81

; <label>:1899                                    ; preds = %1875
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1902 = extractvalue %dx.types.CBufRet.f32 %1900, 3
  %1903 = fmul fast float %1901, %1545
  %1904 = fmul fast float %1902, %1546
  %1905 = call float @dx.op.unary.f32(i32 27, float %1903)  ; Round_ni(value)
  %1906 = call float @dx.op.unary.f32(i32 27, float %1904)  ; Round_ni(value)
  %1907 = fptosi float %1905 to i32
  %1908 = fptosi float %1906 to i32
  %1909 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %16, i32 0, i32 %1907, i32 %1908, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = and i32 %1910, 65535
  %1912 = lshr i32 %1910, 16
  %1913 = icmp eq i32 %1911, 65535
  br i1 %1913, label %1950, label %1914

; <label>:1914                                    ; preds = %1899
  %1915 = extractvalue %dx.types.CBufRet.f32 %1888, 1
  %1916 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1917 = extractvalue %dx.types.CBufRet.f32 %1900, 1
  %1918 = fmul fast float %1916, %1545
  %1919 = fmul fast float %1917, %1546
  %1920 = fmul fast float %1918, 1.250000e-01
  %1921 = fmul fast float %1919, 1.250000e-01
  %1922 = call float @dx.op.unary.f32(i32 27, float %1920)  ; Round_ni(value)
  %1923 = call float @dx.op.unary.f32(i32 27, float %1921)  ; Round_ni(value)
  %1924 = fmul fast float %1922, 8.000000e+00
  %1925 = fmul fast float %1923, 8.000000e+00
  %1926 = and i32 %1910, 255
  %1927 = lshr i32 %1910, 8
  %1928 = and i32 %1927, 255
  %1929 = mul nuw nsw i32 %1926, 9
  %1930 = uitofp i32 %1929 to float
  %1931 = mul nuw nsw i32 %1928, 9
  %1932 = uitofp i32 %1931 to float
  %1933 = fadd fast float %1930, 5.000000e-01
  %1934 = fadd fast float %1933, %1918
  %1935 = fsub fast float %1934, %1924
  %1936 = fadd fast float %1932, 5.000000e-01
  %1937 = fadd fast float %1936, %1919
  %1938 = fsub fast float %1937, %1925
  %1939 = fdiv fast float %1935, %1889
  %1940 = fdiv fast float %1938, %1915
  %1941 = fmul fast float %1573, 4.375000e-01
  %1942 = fadd fast float %1941, 3.125000e-02
  %1943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %31, float %1939, float %1940, float %1942, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1944 = extractvalue %dx.types.ResRet.f32 %1943, 0
  %1945 = extractvalue %dx.types.ResRet.f32 %1943, 1
  %1946 = extractvalue %dx.types.ResRet.f32 %1943, 2
  %1947 = fadd fast float %1944, %1885
  %1948 = fadd fast float %1945, %1886
  %1949 = fadd fast float %1946, %1887
  br label %1950

; <label>:1950                                    ; preds = %1914, %1899
  %1951 = phi float [ %1949, %1914 ], [ %1887, %1899 ]
  %1952 = phi float [ %1948, %1914 ], [ %1886, %1899 ]
  %1953 = phi float [ %1947, %1914 ], [ %1885, %1899 ]
  %1954 = icmp eq i32 %1912, 65535
  br i1 %1954, label %2039, label %1955

; <label>:1955                                    ; preds = %1950
  %1956 = extractvalue %dx.types.CBufRet.f32 %1888, 1
  %1957 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1958 = extractvalue %dx.types.CBufRet.f32 %1900, 1
  %1959 = fmul fast float %1957, %1545
  %1960 = fmul fast float %1958, %1546
  %1961 = fmul fast float %1959, 1.250000e-01
  %1962 = fmul fast float %1960, 1.250000e-01
  %1963 = call float @dx.op.unary.f32(i32 27, float %1961)  ; Round_ni(value)
  %1964 = call float @dx.op.unary.f32(i32 27, float %1962)  ; Round_ni(value)
  %1965 = fmul fast float %1963, 8.000000e+00
  %1966 = fmul fast float %1964, 8.000000e+00
  %1967 = fsub fast float %1959, %1965
  %1968 = fsub fast float %1960, %1966
  %1969 = fadd fast float %1967, 5.000000e-01
  %1970 = fadd fast float %1968, 5.000000e-01
  %1971 = and i32 %1912, 255
  %1972 = lshr i32 %1910, 24
  %1973 = mul nuw nsw i32 %1971, 9
  %1974 = uitofp i32 %1973 to float
  %1975 = mul nuw nsw i32 %1972, 9
  %1976 = uitofp i32 %1975 to float
  %1977 = fadd fast float %1969, %1974
  %1978 = fadd fast float %1970, %1976
  %1979 = fdiv fast float %1977, %1889
  %1980 = fdiv fast float %1978, %1956
  %1981 = fmul fast float %1573, 4.375000e-01
  %1982 = fadd fast float %1981, 3.125000e-02
  %1983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %31, float %1979, float %1980, float %1982, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1984 = extractvalue %dx.types.ResRet.f32 %1983, 0
  %1985 = extractvalue %dx.types.ResRet.f32 %1983, 1
  %1986 = extractvalue %dx.types.ResRet.f32 %1983, 2
  %1987 = fadd fast float %1981, 5.312500e-01
  %1988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %31, float %1979, float %1980, float %1987, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1989 = extractvalue %dx.types.ResRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.ResRet.f32 %1988, 1
  %1991 = extractvalue %dx.types.ResRet.f32 %1988, 2
  %1992 = fmul fast float %1989, 2.000000e+00
  %1993 = fmul fast float %1990, 2.000000e+00
  %1994 = fmul fast float %1991, 2.000000e+00
  %1995 = fadd fast float %1992, -1.000000e+00
  %1996 = fadd fast float %1993, -1.000000e+00
  %1997 = fadd fast float %1994, -1.000000e+00
  %1998 = fmul fast float %1995, %1995
  %1999 = fmul fast float %1996, %1996
  %2000 = fadd fast float %1998, %1999
  %2001 = fmul fast float %1997, %1997
  %2002 = fadd fast float %2000, %2001
  %2003 = call float @dx.op.unary.f32(i32 24, float %2002)  ; Sqrt(value)
  %2004 = fcmp fast ogt float %2003, 0.000000e+00
  br i1 %2004, label %2005, label %2009

; <label>:2005                                    ; preds = %1955
  %2006 = fdiv fast float %1995, %2003
  %2007 = fdiv fast float %1996, %2003
  %2008 = fdiv fast float %1997, %2003
  br label %2009

; <label>:2009                                    ; preds = %2005, %1955
  %2010 = phi float [ %2006, %2005 ], [ 0.000000e+00, %1955 ]
  %2011 = phi float [ %2007, %2005 ], [ 0.000000e+00, %1955 ]
  %2012 = phi float [ %2008, %2005 ], [ 0.000000e+00, %1955 ]
  %2013 = fmul fast float %95, %95
  %2014 = fmul fast float %96, %96
  %2015 = fadd fast float %2013, %2014
  %2016 = call float @dx.op.unary.f32(i32 24, float %2015)  ; Sqrt(value)
  %2017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2018 = extractvalue %dx.types.CBufRet.f32 %2017, 0
  %2019 = extractvalue %dx.types.CBufRet.f32 %2017, 1
  %2020 = fsub fast float %2016, %2018
  %2021 = fdiv fast float %2020, %2019
  %2022 = call float @dx.op.unary.f32(i32 7, float %2021)  ; Saturate(value)
  %2023 = fmul fast float %2022, 2.000000e+00
  %2024 = fsub fast float 3.000000e+00, %2023
  %2025 = fmul fast float %2022, %2022
  %2026 = fmul fast float %2025, %2024
  %2027 = call float @dx.op.dot3.f32(i32 55, float %2010, float %2011, float %2012, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %2028 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2027)  ; FMax(a,b)
  %2029 = fmul fast float %2028, 0x400C5BF8A0000000
  %2030 = fmul fast float %2026, %1984
  %2031 = fmul fast float %2030, %2029
  %2032 = fadd fast float %2031, %1953
  %2033 = fmul fast float %2026, %1985
  %2034 = fmul fast float %2033, %2029
  %2035 = fadd fast float %2034, %1952
  %2036 = fmul fast float %2026, %1986
  %2037 = fmul fast float %2036, %2029
  %2038 = fadd fast float %2037, %1951
  br label %2039

; <label>:2039                                    ; preds = %2009, %1950, %1875
  %2040 = phi float [ %2038, %2009 ], [ %1951, %1950 ], [ %1887, %1875 ]
  %2041 = phi float [ %2035, %2009 ], [ %1952, %1950 ], [ %1886, %1875 ]
  %2042 = phi float [ %2032, %2009 ], [ %1953, %1950 ], [ %1885, %1875 ]
  %2043 = fcmp fast ogt float %1532, %1569
  %2044 = and i1 %1891, %2043
  %2045 = and i1 %1893, %2044
  %2046 = and i1 %1895, %2045
  %2047 = and i1 %1897, %2046
  br i1 %2047, label %2048, label %2105, !dx.controlflow.hints !82

; <label>:2048                                    ; preds = %2039
  %2049 = fmul fast float %1571, 0x3FC24924A0000000
  %2050 = fsub fast float %1532, %1569
  %2051 = fdiv fast float %2050, %2049
  %2052 = call float @dx.op.unary.f32(i32 7, float %2051)  ; Saturate(value)
  %2053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.f32 %2053, 0
  %2055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.f32 %2055, 0
  %2057 = extractvalue %dx.types.CBufRet.f32 %2055, 1
  %2058 = extractvalue %dx.types.CBufRet.f32 %2055, 2
  %2059 = fsub fast float %2054, %2042
  %2060 = fsub fast float %2056, %1882
  %2061 = fsub fast float %2057, %1883
  %2062 = fsub fast float %2058, %1884
  %2063 = fmul fast float %2059, %2052
  %2064 = fmul fast float %2060, %2052
  %2065 = fmul fast float %2061, %2052
  %2066 = fmul fast float %2062, %2052
  %2067 = fadd fast float %2063, %2042
  %2068 = fadd fast float %2064, %1882
  %2069 = fadd fast float %2065, %1883
  %2070 = fadd fast float %2066, %1884
  %2071 = extractvalue %dx.types.CBufRet.f32 %2053, 1
  %2072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.CBufRet.f32 %2072, 1
  %2075 = extractvalue %dx.types.CBufRet.f32 %2072, 2
  %2076 = fsub fast float %2071, %2041
  %2077 = fsub fast float %2073, %1879
  %2078 = fsub fast float %2074, %1880
  %2079 = fsub fast float %2075, %1881
  %2080 = fmul fast float %2076, %2052
  %2081 = fmul fast float %2077, %2052
  %2082 = fmul fast float %2078, %2052
  %2083 = fmul fast float %2079, %2052
  %2084 = fadd fast float %2080, %2041
  %2085 = fadd fast float %2081, %1879
  %2086 = fadd fast float %2082, %1880
  %2087 = fadd fast float %2083, %1881
  %2088 = extractvalue %dx.types.CBufRet.f32 %2053, 2
  %2089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2090 = extractvalue %dx.types.CBufRet.f32 %2089, 0
  %2091 = extractvalue %dx.types.CBufRet.f32 %2089, 1
  %2092 = extractvalue %dx.types.CBufRet.f32 %2089, 2
  %2093 = fsub fast float %2088, %2040
  %2094 = fsub fast float %2090, %1876
  %2095 = fsub fast float %2091, %1877
  %2096 = fsub fast float %2092, %1878
  %2097 = fmul fast float %2093, %2052
  %2098 = fmul fast float %2094, %2052
  %2099 = fmul fast float %2095, %2052
  %2100 = fmul fast float %2096, %2052
  %2101 = fadd fast float %2097, %2040
  %2102 = fadd fast float %2098, %1876
  %2103 = fadd fast float %2099, %1877
  %2104 = fadd fast float %2100, %1878
  br label %2105

; <label>:2105                                    ; preds = %2048, %2039
  %2106 = phi float [ %2101, %2048 ], [ %2040, %2039 ]
  %2107 = phi float [ %2102, %2048 ], [ %1876, %2039 ]
  %2108 = phi float [ %2103, %2048 ], [ %1877, %2039 ]
  %2109 = phi float [ %2104, %2048 ], [ %1878, %2039 ]
  %2110 = phi float [ %2084, %2048 ], [ %2041, %2039 ]
  %2111 = phi float [ %2085, %2048 ], [ %1879, %2039 ]
  %2112 = phi float [ %2086, %2048 ], [ %1880, %2039 ]
  %2113 = phi float [ %2087, %2048 ], [ %1881, %2039 ]
  %2114 = phi float [ %2067, %2048 ], [ %2042, %2039 ]
  %2115 = phi float [ %2068, %2048 ], [ %1882, %2039 ]
  %2116 = phi float [ %2069, %2048 ], [ %1883, %2039 ]
  %2117 = phi float [ %2070, %2048 ], [ %1884, %2039 ]
  %2118 = extractvalue %dx.types.CBufRet.f32 %1694, 3
  %2119 = fmul fast float %2118, %2114
  %2120 = fmul fast float %2118, %2110
  %2121 = fmul fast float %2118, %2106
  %2122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2123 = extractvalue %dx.types.CBufRet.f32 %2122, 3
  %2124 = fmul fast float %2119, %2123
  %2125 = fmul fast float %2120, %2123
  %2126 = fmul fast float %2121, %2123
  %2127 = fmul fast float %2115, 1.500000e+00
  %2128 = fmul fast float %2127, %2118
  %2129 = fmul fast float %2128, %2123
  %2130 = fmul fast float %2116, 1.500000e+00
  %2131 = fmul fast float %2130, %2118
  %2132 = fmul fast float %2131, %2123
  %2133 = fmul fast float %2117, 1.500000e+00
  %2134 = fmul fast float %2133, %2118
  %2135 = fmul fast float %2134, %2123
  %2136 = fmul fast float %2111, 1.500000e+00
  %2137 = fmul fast float %2136, %2118
  %2138 = fmul fast float %2137, %2123
  %2139 = fmul fast float %2112, 1.500000e+00
  %2140 = fmul fast float %2139, %2118
  %2141 = fmul fast float %2140, %2123
  %2142 = fmul fast float %2113, 1.500000e+00
  %2143 = fmul fast float %2142, %2118
  %2144 = fmul fast float %2143, %2123
  %2145 = fmul fast float %2107, 1.500000e+00
  %2146 = fmul fast float %2145, %2118
  %2147 = fmul fast float %2146, %2123
  %2148 = fmul fast float %2108, 1.500000e+00
  %2149 = fmul fast float %2148, %2118
  %2150 = fmul fast float %2149, %2123
  %2151 = fmul fast float %2109, 1.500000e+00
  %2152 = fmul fast float %2151, %2118
  %2153 = fmul fast float %2152, %2123
  %2154 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2124)  ; FMax(a,b)
  %2155 = call float @dx.op.dot3.f32(i32 55, float %2129, float %2132, float %2135, float %2129, float %2132, float %2135)  ; Dot3(ax,ay,az,bx,by,bz)
  %2156 = fcmp fast oeq float %2155, 0.000000e+00
  %2157 = fcmp fast oeq float %2154, 0.000000e+00
  %2158 = or i1 %2157, %2156
  br i1 %2158, label %2189, label %2159

; <label>:2159                                    ; preds = %2105
  %2160 = fsub fast float -0.000000e+00, %2135
  %2161 = fsub fast float -0.000000e+00, %2129
  %2162 = call float @dx.op.unary.f32(i32 24, float %2155)  ; Sqrt(value)
  %2163 = fdiv fast float %2162, %2154
  %2164 = fcmp fast ogt float %2163, 0x3FFB6F8900000000
  %2165 = select i1 %2164, float 0x3FFB6F8900000000, float %2163
  %2166 = fmul fast float %2165, 0x3FE8A23460000000
  %2167 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  %2168 = call float @dx.op.binary.f32(i32 35, float %2165, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2169 = fmul fast float %2167, %2154
  %2170 = fmul fast float %2168, 0x3FF279A740000000
  %2171 = fadd fast float %2170, -1.000000e+00
  %2172 = call float @dx.op.dot3.f32(i32 55, float %2160, float %2161, float %2132, float %2160, float %2161, float %2132)  ; Dot3(ax,ay,az,bx,by,bz)
  %2173 = call float @dx.op.unary.f32(i32 25, float %2172)  ; Rsqrt(value)
  %2174 = fmul fast float %2173, %2160
  %2175 = fmul fast float %2173, %2161
  %2176 = fmul fast float %2173, %2132
  %2177 = fmul fast float %2171, %2171
  %2178 = fsub fast float 1.000000e+00, %2177
  %2179 = fmul fast float %2168, 0x40005F8BE0000000
  %2180 = fsub fast float 0x400C5BF8A0000000, %2179
  %2181 = fdiv fast float %2169, %2180
  %2182 = fmul fast float %2181, 0x3FEE31C3C0000000
  %2183 = fmul fast float %2182, %2178
  %2184 = fmul fast float %2168, 0x3FDACB7480000000
  %2185 = fadd fast float %2184, 0xBFD7347680000000
  %2186 = fmul fast float %2185, %2181
  %2187 = fmul fast float %2186, %2178
  %2188 = fmul float %2183, 0x3FDF454380000000
  br label %2189

; <label>:2189                                    ; preds = %2159, %2105
  %2190 = phi float [ %2174, %2159 ], [ 0.000000e+00, %2105 ]
  %2191 = phi float [ %2175, %2159 ], [ 0.000000e+00, %2105 ]
  %2192 = phi float [ %2176, %2159 ], [ 0.000000e+00, %2105 ]
  %2193 = phi float [ %2188, %2159 ], [ 0.000000e+00, %2105 ]
  %2194 = phi float [ %2187, %2159 ], [ 0.000000e+00, %2105 ]
  %2195 = call float @dx.op.dot3.f32(i32 55, float %2190, float %2191, float %2192, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %2196 = fmul fast float %2195, %2195
  %2197 = fmul fast float %2196, 0x3FEE471020000000
  %2198 = fadd fast float %2197, 0xBFD42F6020000000
  %2199 = fmul fast float %2154, 0x3FD20DD760000000
  %2200 = fmul fast float %2198, %2194
  %2201 = fmul fast float %2193, %2195
  %2202 = fadd fast float %2201, %2199
  %2203 = fadd fast float %2202, %2200
  %2204 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2125)  ; FMax(a,b)
  %2205 = call float @dx.op.dot3.f32(i32 55, float %2138, float %2141, float %2144, float %2138, float %2141, float %2144)  ; Dot3(ax,ay,az,bx,by,bz)
  %2206 = fcmp fast oeq float %2205, 0.000000e+00
  %2207 = fcmp fast oeq float %2204, 0.000000e+00
  %2208 = or i1 %2207, %2206
  br i1 %2208, label %2239, label %2209

; <label>:2209                                    ; preds = %2189
  %2210 = fsub fast float -0.000000e+00, %2144
  %2211 = fsub fast float -0.000000e+00, %2138
  %2212 = call float @dx.op.unary.f32(i32 24, float %2205)  ; Sqrt(value)
  %2213 = fdiv fast float %2212, %2204
  %2214 = fcmp fast ogt float %2213, 0x3FFB6F8900000000
  %2215 = select i1 %2214, float 0x3FFB6F8900000000, float %2213
  %2216 = fmul fast float %2215, 0x3FE8A23460000000
  %2217 = call float @dx.op.unary.f32(i32 7, float %2216)  ; Saturate(value)
  %2218 = call float @dx.op.binary.f32(i32 35, float %2215, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2219 = fmul fast float %2217, %2204
  %2220 = fmul fast float %2218, 0x3FF279A740000000
  %2221 = fadd fast float %2220, -1.000000e+00
  %2222 = call float @dx.op.dot3.f32(i32 55, float %2210, float %2211, float %2141, float %2210, float %2211, float %2141)  ; Dot3(ax,ay,az,bx,by,bz)
  %2223 = call float @dx.op.unary.f32(i32 25, float %2222)  ; Rsqrt(value)
  %2224 = fmul fast float %2223, %2210
  %2225 = fmul fast float %2223, %2211
  %2226 = fmul fast float %2223, %2141
  %2227 = fmul fast float %2221, %2221
  %2228 = fsub fast float 1.000000e+00, %2227
  %2229 = fmul fast float %2218, 0x40005F8BE0000000
  %2230 = fsub fast float 0x400C5BF8A0000000, %2229
  %2231 = fdiv fast float %2219, %2230
  %2232 = fmul fast float %2231, 0x3FEE31C3C0000000
  %2233 = fmul fast float %2232, %2228
  %2234 = fmul fast float %2218, 0x3FDACB7480000000
  %2235 = fadd fast float %2234, 0xBFD7347680000000
  %2236 = fmul fast float %2235, %2231
  %2237 = fmul fast float %2236, %2228
  %2238 = fmul float %2233, 0x3FDF454380000000
  br label %2239

; <label>:2239                                    ; preds = %2209, %2189
  %2240 = phi float [ %2224, %2209 ], [ 0.000000e+00, %2189 ]
  %2241 = phi float [ %2225, %2209 ], [ 0.000000e+00, %2189 ]
  %2242 = phi float [ %2226, %2209 ], [ 0.000000e+00, %2189 ]
  %2243 = phi float [ %2238, %2209 ], [ 0.000000e+00, %2189 ]
  %2244 = phi float [ %2237, %2209 ], [ 0.000000e+00, %2189 ]
  %2245 = call float @dx.op.dot3.f32(i32 55, float %2240, float %2241, float %2242, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %2246 = fmul fast float %2245, %2245
  %2247 = fmul fast float %2246, 0x3FEE471020000000
  %2248 = fadd fast float %2247, 0xBFD42F6020000000
  %2249 = fmul fast float %2204, 0x3FD20DD760000000
  %2250 = fmul fast float %2248, %2244
  %2251 = fmul fast float %2243, %2245
  %2252 = fadd fast float %2251, %2249
  %2253 = fadd fast float %2252, %2250
  %2254 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2126)  ; FMax(a,b)
  %2255 = call float @dx.op.dot3.f32(i32 55, float %2147, float %2150, float %2153, float %2147, float %2150, float %2153)  ; Dot3(ax,ay,az,bx,by,bz)
  %2256 = fcmp fast oeq float %2255, 0.000000e+00
  %2257 = fcmp fast oeq float %2254, 0.000000e+00
  %2258 = or i1 %2257, %2256
  br i1 %2258, label %2289, label %2259

; <label>:2259                                    ; preds = %2239
  %2260 = fsub fast float -0.000000e+00, %2153
  %2261 = fsub fast float -0.000000e+00, %2147
  %2262 = call float @dx.op.unary.f32(i32 24, float %2255)  ; Sqrt(value)
  %2263 = fdiv fast float %2262, %2254
  %2264 = fcmp fast ogt float %2263, 0x3FFB6F8900000000
  %2265 = select i1 %2264, float 0x3FFB6F8900000000, float %2263
  %2266 = fmul fast float %2265, 0x3FE8A23460000000
  %2267 = call float @dx.op.unary.f32(i32 7, float %2266)  ; Saturate(value)
  %2268 = call float @dx.op.binary.f32(i32 35, float %2265, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2269 = fmul fast float %2267, %2254
  %2270 = fmul fast float %2268, 0x3FF279A740000000
  %2271 = fadd fast float %2270, -1.000000e+00
  %2272 = call float @dx.op.dot3.f32(i32 55, float %2260, float %2261, float %2150, float %2260, float %2261, float %2150)  ; Dot3(ax,ay,az,bx,by,bz)
  %2273 = call float @dx.op.unary.f32(i32 25, float %2272)  ; Rsqrt(value)
  %2274 = fmul fast float %2273, %2260
  %2275 = fmul fast float %2273, %2261
  %2276 = fmul fast float %2273, %2150
  %2277 = fmul fast float %2271, %2271
  %2278 = fsub fast float 1.000000e+00, %2277
  %2279 = fmul fast float %2268, 0x40005F8BE0000000
  %2280 = fsub fast float 0x400C5BF8A0000000, %2279
  %2281 = fdiv fast float %2269, %2280
  %2282 = fmul fast float %2281, 0x3FEE31C3C0000000
  %2283 = fmul fast float %2282, %2278
  %2284 = fmul fast float %2268, 0x3FDACB7480000000
  %2285 = fadd fast float %2284, 0xBFD7347680000000
  %2286 = fmul fast float %2285, %2281
  %2287 = fmul fast float %2286, %2278
  %2288 = fmul float %2283, 0x3FDF454380000000
  br label %2289

; <label>:2289                                    ; preds = %2259, %2239
  %2290 = phi float [ %2274, %2259 ], [ 0.000000e+00, %2239 ]
  %2291 = phi float [ %2275, %2259 ], [ 0.000000e+00, %2239 ]
  %2292 = phi float [ %2276, %2259 ], [ 0.000000e+00, %2239 ]
  %2293 = phi float [ %2288, %2259 ], [ 0.000000e+00, %2239 ]
  %2294 = phi float [ %2287, %2259 ], [ 0.000000e+00, %2239 ]
  %2295 = call float @dx.op.dot3.f32(i32 55, float %2290, float %2291, float %2292, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %2296 = fmul fast float %2295, %2295
  %2297 = fmul fast float %2296, 0x3FEE471020000000
  %2298 = fadd fast float %2297, 0xBFD42F6020000000
  %2299 = fmul fast float %2254, 0x3FD20DD760000000
  %2300 = fmul fast float %2298, %2294
  %2301 = fmul fast float %2293, %2295
  %2302 = fadd fast float %2301, %2299
  %2303 = fadd fast float %2302, %2300
  %2304 = call float @dx.op.binary.f32(i32 35, float %2203, float 0.000000e+00)  ; FMax(a,b)
  %2305 = call float @dx.op.binary.f32(i32 35, float %2253, float 0.000000e+00)  ; FMax(a,b)
  %2306 = call float @dx.op.binary.f32(i32 35, float %2303, float 0.000000e+00)  ; FMax(a,b)
  %2307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2308 = extractvalue %dx.types.CBufRet.f32 %2307, 0
  %2309 = call float @dx.op.binary.f32(i32 36, float %1410, float %2308)  ; FMin(a,b)
  %2310 = fsub fast float 1.000000e+00, %1521
  %2311 = fmul fast float %2309, %2310
  %2312 = fsub fast float 1.000000e+00, %2311
  %2313 = bitcast float %2312 to i32
  %2314 = sub nsw i32 2129859010, %2313
  %2315 = bitcast i32 %2314 to float
  %2316 = call float @dx.op.binary.f32(i32 36, float %1411, float %2308)  ; FMin(a,b)
  %2317 = fmul fast float %2316, %2310
  %2318 = fsub fast float 1.000000e+00, %2317
  %2319 = bitcast float %2318 to i32
  %2320 = sub nsw i32 2129859010, %2319
  %2321 = bitcast i32 %2320 to float
  %2322 = call float @dx.op.binary.f32(i32 36, float %1412, float %2308)  ; FMin(a,b)
  %2323 = fmul fast float %2322, %2310
  %2324 = fsub fast float 1.000000e+00, %2323
  %2325 = bitcast float %2324 to i32
  %2326 = sub nsw i32 2129859010, %2325
  %2327 = bitcast i32 %2326 to float
  %2328 = fmul fast float %2304, %1521
  %2329 = fmul fast float %2328, %2315
  %2330 = fmul fast float %2305, %1521
  %2331 = fmul fast float %2330, %2321
  %2332 = fmul fast float %2306, %1521
  %2333 = fmul fast float %2332, %2327
  %2334 = call float @dx.op.dot3.f32(i32 55, float %2329, float %2331, float %2333, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2335 = select i1 %1514, float 0.000000e+00, float %2329
  %2336 = select i1 %1514, float %2334, float %2331
  %2337 = select i1 %1514, float 0.000000e+00, float %2333
  %2338 = fsub fast float 1.000000e+00, %1419
  %2339 = fsub fast float 1.000000e+00, %1420
  %2340 = fsub fast float 1.000000e+00, %1518
  %2341 = fmul fast float %1458, %2338
  %2342 = fmul fast float %1458, %2339
  %2343 = fmul fast float %2340, %1458
  %2344 = fadd fast float %2341, %1419
  %2345 = fadd fast float %2342, %1420
  %2346 = fadd fast float %2343, %1518
  %2347 = call float @dx.op.binary.f32(i32 35, float %2345, float %2346)  ; FMax(a,b)
  %2348 = call float @dx.op.binary.f32(i32 35, float %2344, float %2347)  ; FMax(a,b)
  %2349 = fsub fast float 1.000000e+00, %2348
  %2350 = fmul fast float %2335, %2349
  %2351 = fmul fast float %2336, %2349
  %2352 = fmul fast float %2337, %2349
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 3
  %2355 = fcmp fast oeq float %2354, 0.000000e+00
  br i1 %2355, label %2507, label %2356

; <label>:2356                                    ; preds = %2289
  %2357 = extractvalue %dx.types.CBufRet.f32 %2353, 0
  %2358 = extractvalue %dx.types.CBufRet.f32 %2353, 1
  %2359 = extractvalue %dx.types.CBufRet.f32 %2353, 2
  %2360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2361 = extractvalue %dx.types.CBufRet.f32 %2360, 0
  %2362 = extractvalue %dx.types.CBufRet.f32 %2360, 1
  %2363 = extractvalue %dx.types.CBufRet.f32 %2360, 2
  %2364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.f32 %2364, 0
  %2366 = extractvalue %dx.types.CBufRet.f32 %2364, 1
  %2367 = call float @dx.op.dot3.f32(i32 55, float %2361, float %2362, float %2363, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2368 = select i1 %1514, float %2365, float %2361
  %2369 = select i1 %1514, float %2367, float %2362
  %2370 = select i1 %1514, float %2366, float %2363
  %2371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2372 = extractvalue %dx.types.CBufRet.f32 %2371, 1
  %2373 = fcmp fast une float %2372, 0.000000e+00
  br i1 %2373, label %2374, label %2391

; <label>:2374                                    ; preds = %2356
  %2375 = fptoui float %51 to i32
  %2376 = fptoui float %52 to i32
  %2377 = lshr i32 %2375, 4
  %2378 = lshr i32 %2376, 4
  %2379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2380 = extractvalue %dx.types.CBufRet.f32 %2379, 0
  %2381 = fptoui float %2380 to i32
  %2382 = add i32 %2381, 15
  %2383 = lshr i32 %2382, 4
  %2384 = mul i32 %2383, %2378
  %2385 = add i32 %2384, %2377
  %2386 = shl i32 %2385, 3
  %2387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %2386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.i32 %2387, 0
  %2389 = and i32 %2388, -268435456
  %2390 = icmp eq i32 %2389, -1342177280
  br i1 %2390, label %2401, label %2391

; <label>:2391                                    ; preds = %2374, %2356
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 2
  %2394 = extractvalue %dx.types.CBufRet.f32 %2392, 3
  %2395 = fmul fast float %2393, %51
  %2396 = fmul fast float %2394, %52
  %2397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %32, float %2395, float %2396, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2398 = extractvalue %dx.types.ResRet.f32 %2397, 0
  %2399 = extractvalue %dx.types.ResRet.f32 %2397, 1
  %2400 = extractvalue %dx.types.ResRet.f32 %2397, 2
  br label %2401

; <label>:2401                                    ; preds = %2391, %2374
  %2402 = phi float [ %2398, %2391 ], [ 0.000000e+00, %2374 ]
  %2403 = phi float [ %2399, %2391 ], [ 0.000000e+00, %2374 ]
  %2404 = phi float [ %2400, %2391 ], [ 0.000000e+00, %2374 ]
  %2405 = call float @dx.op.binary.f32(i32 36, float %2403, float %2404)  ; FMin(a,b)
  %2406 = call float @dx.op.binary.f32(i32 36, float %2402, float %2405)  ; FMin(a,b)
  %2407 = fcmp fast ogt float %2406, 0.000000e+00
  br i1 %2407, label %2408, label %2507, !dx.controlflow.hints !83

; <label>:2408                                    ; preds = %2401
  %2409 = fmul fast float %2402, %2368
  %2410 = fmul fast float %2403, %2369
  %2411 = fmul fast float %2404, %2370
  %2412 = fsub fast float %2357, %1426
  %2413 = fsub fast float %2358, %1427
  %2414 = fsub fast float %2359, %1428
  %2415 = call float @dx.op.dot3.f32(i32 55, float %2412, float %2413, float %2414, float %2412, float %2413, float %2414)  ; Dot3(ax,ay,az,bx,by,bz)
  %2416 = call float @dx.op.unary.f32(i32 25, float %2415)  ; Rsqrt(value)
  %2417 = fmul fast float %2416, %2412
  %2418 = fmul fast float %2416, %2413
  %2419 = fmul fast float %2416, %2414
  %2420 = call float @dx.op.dot3.f32(i32 55, float %2357, float %2358, float %2359, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %2421 = call float @dx.op.dot3.f32(i32 55, float %1515, float %1516, float %1517, float %2417, float %2418, float %2419)  ; Dot3(ax,ay,az,bx,by,bz)
  %2422 = call float @dx.op.unary.f32(i32 7, float %2420)  ; Saturate(value)
  %2423 = fmul fast float %2422, %2422
  %2424 = fmul fast float %2423, %1525
  %2425 = call float @dx.op.unary.f32(i32 7, float %2424)  ; Saturate(value)
  %2426 = fmul fast float %2425, %2422
  %2427 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %2417, float %2418, float %2419)  ; Dot3(ax,ay,az,bx,by,bz)
  %2428 = fmul fast float %2427, %2427
  %2429 = call float @dx.op.unary.f32(i32 6, float %2420)  ; FAbs(value)
  %2430 = fsub fast float 1.000000e+00, %1462
  %2431 = call float @dx.op.binary.f32(i32 35, float %2430, float 0x3F847AE140000000)  ; FMax(a,b)
  %2432 = fmul fast float %2431, %2431
  %2433 = fmul fast float %2432, %2432
  %2434 = fsub fast float 1.000000e+00, %2433
  %2435 = fmul fast float %1520, %1520
  %2436 = fmul fast float %2435, %2434
  %2437 = fadd fast float %2436, %2433
  %2438 = bitcast float %2437 to i32
  %2439 = ashr i32 %2438, 1
  %2440 = add nsw i32 %2439, 532487669
  %2441 = bitcast i32 %2440 to float
  %2442 = fadd fast float %2441, %1520
  %2443 = fmul fast float %2433, %2428
  %2444 = fsub fast float 1.000000e+00, %2428
  %2445 = fadd fast float %2444, %2443
  %2446 = fmul fast float %2429, %2429
  %2447 = fmul fast float %2446, %2434
  %2448 = fadd fast float %2447, %2433
  %2449 = bitcast float %2448 to i32
  %2450 = ashr i32 %2449, 1
  %2451 = add nsw i32 %2450, 532487669
  %2452 = bitcast i32 %2451 to float
  %2453 = fadd fast float %2452, %2429
  %2454 = fmul fast float %2445, %2445
  %2455 = fmul fast float %2454, %2442
  %2456 = fmul fast float %2455, %2453
  %2457 = fdiv fast float 0x3FF0A00000000000, %2456
  %2458 = fmul fast float %2457, %2433
  %2459 = call float @dx.op.unary.f32(i32 6, float %2421)  ; FAbs(value)
  %2460 = fsub fast float 1.000000e+00, %2459
  %2461 = bitcast float %2460 to i32
  %2462 = sitofp i32 %2461 to float
  %2463 = fmul fast float %2462, 5.000000e+00
  %2464 = fadd fast float %2463, 0xC1EFBF8940000000
  %2465 = fptosi float %2464 to i32
  %2466 = bitcast i32 %2465 to float
  %2467 = fmul fast float %2466, %2338
  %2468 = fmul fast float %2466, %2339
  %2469 = fmul fast float %2466, %2340
  %2470 = fadd fast float %2467, %1419
  %2471 = fadd fast float %2468, %1420
  %2472 = fadd fast float %2469, %1518
  %2473 = fmul fast float %2420, 9.843750e-01
  %2474 = fmul fast float %1462, 9.843750e-01
  %2475 = fadd fast float %2473, 7.812500e-03
  %2476 = fadd fast float %2474, 7.812500e-03
  %2477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %2475, float %2476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2478 = extractvalue %dx.types.ResRet.f32 %2477, 2
  %2479 = extractvalue %dx.types.ResRet.f32 %2477, 3
  %2480 = fmul fast float %2478, %1419
  %2481 = fmul fast float %2478, %1420
  %2482 = fmul fast float %2478, %1518
  %2483 = fadd fast float %2480, %2479
  %2484 = fadd fast float %2481, %2479
  %2485 = fadd fast float %2482, %2479
  %2486 = call float @dx.op.binary.f32(i32 35, float %2484, float %2485)  ; FMax(a,b)
  %2487 = call float @dx.op.binary.f32(i32 35, float %2483, float %2486)  ; FMax(a,b)
  %2488 = fsub fast float 1.000000e+00, %2487
  %2489 = fmul fast float %2426, %2409
  %2490 = fmul fast float %2489, %2488
  %2491 = fmul fast float %2426, %2410
  %2492 = fmul fast float %2491, %2488
  %2493 = fmul fast float %2426, %2411
  %2494 = fmul fast float %2493, %2488
  %2495 = fadd fast float %2490, %2350
  %2496 = fadd fast float %2492, %2351
  %2497 = fadd fast float %2494, %2352
  %2498 = fmul fast float %2489, %2458
  %2499 = fmul fast float %2498, %2470
  %2500 = fmul fast float %2491, %2458
  %2501 = fmul fast float %2500, %2471
  %2502 = fmul fast float %2493, %2458
  %2503 = fmul fast float %2502, %2472
  %2504 = fadd fast float %2499, %1362
  %2505 = fadd fast float %2501, %1363
  %2506 = fadd fast float %2503, %1364
  br label %2507

; <label>:2507                                    ; preds = %2408, %2401, %2289
  %2508 = phi float [ %2402, %2408 ], [ 0.000000e+00, %2289 ], [ 0.000000e+00, %2401 ]
  %2509 = phi float [ %2504, %2408 ], [ %1362, %2289 ], [ %1362, %2401 ]
  %2510 = phi float [ %2505, %2408 ], [ %1363, %2289 ], [ %1363, %2401 ]
  %2511 = phi float [ %2506, %2408 ], [ %1364, %2289 ], [ %1364, %2401 ]
  %2512 = phi float [ %2495, %2408 ], [ %2350, %2289 ], [ %2350, %2401 ]
  %2513 = phi float [ %2496, %2408 ], [ %2351, %2289 ], [ %2351, %2401 ]
  %2514 = phi float [ %2497, %2408 ], [ %2352, %2289 ], [ %2352, %2401 ]
  %2515 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.i32 %2515, 0
  %2517 = icmp eq i32 %2516, 0
  br i1 %2517, label %3000, label %2518

; <label>:2518                                    ; preds = %2507
  %2519 = fptoui float %51 to i32
  %2520 = fptoui float %52 to i32
  %2521 = lshr i32 %2519, 4
  %2522 = lshr i32 %2520, 4
  %2523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2524 = extractvalue %dx.types.CBufRet.i32 %2523, 0
  %2525 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2522, i32 %2524, i32 %2521)  ; UMad(a,b,c)
  %2526 = add nsw i32 %2516, -1
  %2527 = call i32 @dx.op.binary.i32(i32 37, i32 %2526, i32 0)  ; IMax(a,b)
  %2528 = call float @dx.op.binary.f32(i32 35, float %48, float 0.000000e+00)  ; FMax(a,b)
  %2529 = fptoui float %2528 to i32
  %2530 = lshr i32 %2529, 5
  %2531 = call i32 @dx.op.binary.i32(i32 40, i32 %2530, i32 8191)  ; UMin(a,b)
  %2532 = shl i32 %2531, 2
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = lshr i32 %2534, 16
  %2536 = and i32 %2534, 65535
  %2537 = lshr i32 %2534, 21
  %2538 = lshr i32 %2536, 5
  %2539 = call i32 @dx.op.binary.i32(i32 40, i32 %2538, i32 %2527)  ; UMin(a,b)
  %2540 = icmp ugt i32 %2537, %2539
  br i1 %2540, label %3000, label %2541

; <label>:2541                                    ; preds = %2518
  br label %2542

; <label>:2542                                    ; preds = %2990, %2541
  %2543 = phi i32 [ %2997, %2990 ], [ %2537, %2541 ]
  %2544 = phi float [ %2991, %2990 ], [ %2509, %2541 ]
  %2545 = phi float [ %2992, %2990 ], [ %2510, %2541 ]
  %2546 = phi float [ %2993, %2990 ], [ %2511, %2541 ]
  %2547 = phi float [ %2994, %2990 ], [ %2512, %2541 ]
  %2548 = phi float [ %2995, %2990 ], [ %2513, %2541 ]
  %2549 = phi float [ %2996, %2990 ], [ %2514, %2541 ]
  %2550 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2551 = extractvalue %dx.types.CBufRet.i32 %2550, 0
  %2552 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2525, i32 %2551, i32 %2543)  ; UMad(a,b,c)
  %2553 = shl i32 %2552, 2
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2553, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = shl i32 %2543, 5
  %2557 = sub nsw i32 %2535, %2556
  %2558 = call i32 @dx.op.binary.i32(i32 37, i32 %2557, i32 0)  ; IMax(a,b)
  %2559 = call i32 @dx.op.binary.i32(i32 38, i32 %2558, i32 31)  ; IMin(a,b)
  %2560 = sub nsw i32 1, %2535
  %2561 = add nsw i32 %2560, %2536
  %2562 = call i32 @dx.op.binary.i32(i32 37, i32 %2561, i32 0)  ; IMax(a,b)
  %2563 = call i32 @dx.op.binary.i32(i32 38, i32 %2562, i32 32)  ; IMin(a,b)
  %2564 = and i32 %2563, 31
  %2565 = shl i32 -1, %2564
  %2566 = xor i32 %2565, -1
  %2567 = and i32 %2559, 31
  %2568 = shl i32 %2566, %2567
  %2569 = icmp eq i32 %2563, 32
  %2570 = select i1 %2569, i32 -1, i32 %2568
  %2571 = and i32 %2570, %2555
  %2572 = icmp eq i32 %2571, 0
  br i1 %2572, label %2990, label %2573

; <label>:2573                                    ; preds = %2542
  br label %2574

; <label>:2574                                    ; preds = %2708, %2573
  %2575 = phi i32 [ %2586, %2708 ], [ %2571, %2573 ]
  %2576 = phi float [ %2709, %2708 ], [ %2544, %2573 ]
  %2577 = phi float [ %2710, %2708 ], [ %2545, %2573 ]
  %2578 = phi float [ %2711, %2708 ], [ %2546, %2573 ]
  %2579 = phi float [ %2712, %2708 ], [ %2547, %2573 ]
  %2580 = phi float [ %2713, %2708 ], [ %2548, %2573 ]
  %2581 = phi float [ %2714, %2708 ], [ %2549, %2573 ]
  %2582 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2575)  ; FirstbitLo(value)
  %2583 = add i32 %2582, %2556
  %2584 = and i32 %2582, 31
  %2585 = shl i32 1, %2584
  %2586 = xor i32 %2585, %2575
  %2587 = mul i32 %2583, 112
  %2588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2587, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.f32 %2588, 0
  %2590 = extractvalue %dx.types.ResRet.f32 %2588, 1
  %2591 = extractvalue %dx.types.ResRet.f32 %2588, 2
  %2592 = or i32 %2587, 12
  %2593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.f32 %2593, 0
  %2595 = add i32 %2587, 16
  %2596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.f32 %2596, 0
  %2598 = extractvalue %dx.types.ResRet.f32 %2596, 1
  %2599 = extractvalue %dx.types.ResRet.f32 %2596, 2
  %2600 = add i32 %2587, 28
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = add i32 %2587, 44
  %2604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.f32 %2604, 0
  %2606 = add i32 %2587, 48
  %2607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2606, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.f32 %2607, 0
  %2609 = extractvalue %dx.types.ResRet.f32 %2607, 1
  %2610 = extractvalue %dx.types.ResRet.f32 %2607, 2
  %2611 = extractvalue %dx.types.ResRet.f32 %2607, 3
  %2612 = add i32 %2587, 64
  %2613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.f32 %2613, 0
  %2615 = extractvalue %dx.types.ResRet.f32 %2613, 1
  %2616 = extractvalue %dx.types.ResRet.f32 %2613, 2
  %2617 = extractvalue %dx.types.ResRet.f32 %2613, 3
  %2618 = add i32 %2587, 80
  %2619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.f32 %2619, 1
  %2621 = extractvalue %dx.types.ResRet.f32 %2619, 2
  %2622 = add i32 %2587, 92
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %2622, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = call float @dx.op.dot3.f32(i32 55, float %2589, float %2590, float %2591, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2626 = select i1 %1514, float %2620, float %2589
  %2627 = select i1 %1514, float %2625, float %2590
  %2628 = select i1 %1514, float %2621, float %2591
  %2629 = and i32 %2624, 65535
  %2630 = uitofp i32 %2629 to float
  %2631 = lshr i32 %2624, 16
  %2632 = uitofp i32 %2631 to float
  %2633 = and i32 %2602, 65535
  %2634 = and i32 %2602, 50331648
  %2635 = icmp eq i32 %2634, 33554432
  %2636 = fsub fast float %2608, %95
  %2637 = fsub fast float %2609, %96
  %2638 = fsub fast float %2610, %97
  %2639 = call float @dx.op.dot3.f32(i32 55, float %2636, float %2637, float %2638, float %2636, float %2637, float %2638)  ; Dot3(ax,ay,az,bx,by,bz)
  %2640 = call float @dx.op.unary.f32(i32 24, float %2639)  ; Sqrt(value)
  %2641 = fdiv fast float 1.000000e+00, %2640
  %2642 = fmul fast float %2641, %2636
  %2643 = fmul fast float %2641, %2637
  %2644 = fmul fast float %2641, %2638
  %2645 = fadd fast float %2640, %2594
  %2646 = fdiv fast float 1.000000e+00, %2645
  %2647 = fmul float %2605, %2646
  %2648 = fmul float %2647, %2647
  %2649 = call float @dx.op.unary.f32(i32 7, float %2648)  ; Saturate(value)
  br i1 %2635, label %2650, label %2671

; <label>:2650                                    ; preds = %2574
  %2651 = fmul fast float %2616, %2597
  %2652 = fmul fast float %2616, %2598
  %2653 = fmul fast float %2616, %2599
  %2654 = fadd fast float %2636, %2651
  %2655 = fadd fast float %2637, %2652
  %2656 = fadd fast float %2638, %2653
  %2657 = call float @dx.op.dot3.f32(i32 55, float %2654, float %2655, float %2656, float %2654, float %2655, float %2656)  ; Dot3(ax,ay,az,bx,by,bz)
  %2658 = call float @dx.op.unary.f32(i32 25, float %2657)  ; Rsqrt(value)
  %2659 = fmul fast float %2658, %2654
  %2660 = fmul fast float %2658, %2655
  %2661 = fmul fast float %2658, %2656
  %2662 = fsub fast float %95, %2608
  %2663 = fsub fast float %96, %2609
  %2664 = fsub fast float %97, %2610
  %2665 = fsub fast float -0.000000e+00, %2662
  %2666 = fsub fast float -0.000000e+00, %2663
  %2667 = fsub fast float -0.000000e+00, %2664
  %2668 = call float @dx.op.dot3.f32(i32 55, float %2665, float %2666, float %2667, float %2597, float %2598, float %2599)  ; Dot3(ax,ay,az,bx,by,bz)
  %2669 = fcmp fast ogt float %2668, 0.000000e+00
  %2670 = uitofp i1 %2669 to float
  br label %2671

; <label>:2671                                    ; preds = %2650, %2574
  %2672 = phi float [ %2670, %2650 ], [ 1.000000e+00, %2574 ]
  %2673 = phi float [ %2659, %2650 ], [ %2642, %2574 ]
  %2674 = phi float [ %2660, %2650 ], [ %2643, %2574 ]
  %2675 = phi float [ %2661, %2650 ], [ %2644, %2574 ]
  %2676 = call float @dx.op.dot3.f32(i32 55, float %2597, float %2598, float %2599, float %2673, float %2674, float %2675)  ; Dot3(ax,ay,az,bx,by,bz)
  %2677 = fmul fast float %2676, %2676
  %2678 = call float @dx.op.unary.f32(i32 7, float %2677)  ; Saturate(value)
  %2679 = fsub fast float 1.000000e+00, %2678
  %2680 = fmul fast float %2679, 5.000000e-01
  %2681 = fcmp fast ogt float %2676, 0.000000e+00
  %2682 = fsub fast float 1.000000e+00, %2680
  %2683 = select i1 %2681, float %2680, float %2682
  %2684 = fmul fast float %2683, %2632
  %2685 = fadd fast float %2684, %2630
  %2686 = fmul fast float %2685, 0x3EF0001000000000
  %2687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %31, float %2686, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2688 = extractvalue %dx.types.ResRet.f32 %2687, 0
  %2689 = fmul fast float %2676, %2614
  %2690 = fadd fast float %2689, %2615
  %2691 = call float @dx.op.unary.f32(i32 7, float %2690)  ; Saturate(value)
  %2692 = select i1 %2635, float 1.000000e+00, float %2691
  %2693 = select i1 %2635, float %2691, float 1.000000e+00
  %2694 = fmul fast float %2640, %2611
  %2695 = fsub fast float 1.000000e+00, %2694
  %2696 = fmul fast float %2695, %2617
  %2697 = call float @dx.op.unary.f32(i32 7, float %2696)  ; Saturate(value)
  %2698 = fmul fast float %2697, %2693
  %2699 = fmul fast float %2698, 2.000000e+00
  %2700 = fsub fast float 3.000000e+00, %2699
  %2701 = fmul fast float %2688, %2672
  %2702 = fmul fast float %2698, %2698
  %2703 = fmul fast float %2702, %2701
  %2704 = fmul fast float %2703, %2700
  %2705 = call float @dx.op.binary.f32(i32 36, float %2704, float %2704)  ; FMin(a,b)
  %2706 = call float @dx.op.binary.f32(i32 36, float %2704, float %2705)  ; FMin(a,b)
  %2707 = fcmp fast ogt float %2706, 0.000000e+00
  br i1 %2707, label %2716, label %2708, !dx.controlflow.hints !84

; <label>:2708                                    ; preds = %2860, %2855, %2671
  %2709 = phi float [ %2576, %2855 ], [ %2576, %2671 ], [ %2986, %2860 ]
  %2710 = phi float [ %2577, %2855 ], [ %2577, %2671 ], [ %2987, %2860 ]
  %2711 = phi float [ %2578, %2855 ], [ %2578, %2671 ], [ %2988, %2860 ]
  %2712 = phi float [ %2579, %2855 ], [ %2579, %2671 ], [ %2977, %2860 ]
  %2713 = phi float [ %2580, %2855 ], [ %2580, %2671 ], [ %2978, %2860 ]
  %2714 = phi float [ %2581, %2855 ], [ %2581, %2671 ], [ %2979, %2860 ]
  %2715 = icmp eq i32 %2575, %2585
  br i1 %2715, label %2989, label %2574

; <label>:2716                                    ; preds = %2671
  %2717 = icmp eq i32 %2633, 255
  br i1 %2717, label %2855, label %2718, !dx.controlflow.hints !85

; <label>:2718                                    ; preds = %2716
  %2719 = mul nuw nsw i32 %2633, 176
  %2720 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.f32 %2720, 0
  %2722 = extractvalue %dx.types.ResRet.f32 %2720, 1
  %2723 = extractvalue %dx.types.ResRet.f32 %2720, 2
  %2724 = extractvalue %dx.types.ResRet.f32 %2720, 3
  %2725 = add nuw nsw i32 %2719, 16
  %2726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.f32 %2726, 0
  %2728 = extractvalue %dx.types.ResRet.f32 %2726, 1
  %2729 = add nuw nsw i32 %2719, 32
  %2730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.f32 %2730, 0
  %2732 = extractvalue %dx.types.ResRet.f32 %2730, 1
  %2733 = add nuw nsw i32 %2719, 48
  %2734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.f32 %2734, 0
  %2736 = extractvalue %dx.types.ResRet.f32 %2734, 1
  %2737 = extractvalue %dx.types.ResRet.f32 %2734, 2
  %2738 = extractvalue %dx.types.ResRet.f32 %2734, 3
  %2739 = add nuw nsw i32 %2719, 64
  %2740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.f32 %2740, 0
  %2742 = extractvalue %dx.types.ResRet.f32 %2740, 1
  %2743 = extractvalue %dx.types.ResRet.f32 %2740, 2
  %2744 = extractvalue %dx.types.ResRet.f32 %2740, 3
  %2745 = add nuw nsw i32 %2719, 80
  %2746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.f32 %2746, 0
  %2748 = extractvalue %dx.types.ResRet.f32 %2746, 1
  %2749 = extractvalue %dx.types.ResRet.f32 %2746, 2
  %2750 = extractvalue %dx.types.ResRet.f32 %2746, 3
  %2751 = add nuw nsw i32 %2719, 96
  %2752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.ResRet.f32 %2752, 1
  %2755 = extractvalue %dx.types.ResRet.f32 %2752, 2
  %2756 = extractvalue %dx.types.ResRet.f32 %2752, 3
  %2757 = bitcast float %2728 to i32
  %2758 = fmul fast float %2735, %95
  %2759 = call float @dx.op.tertiary.f32(i32 46, float %96, float %2741, float %2758)  ; FMad(a,b,c)
  %2760 = call float @dx.op.tertiary.f32(i32 46, float %97, float %2747, float %2759)  ; FMad(a,b,c)
  %2761 = fadd fast float %2760, %2753
  %2762 = fmul fast float %2736, %95
  %2763 = call float @dx.op.tertiary.f32(i32 46, float %96, float %2742, float %2762)  ; FMad(a,b,c)
  %2764 = call float @dx.op.tertiary.f32(i32 46, float %97, float %2748, float %2763)  ; FMad(a,b,c)
  %2765 = fadd fast float %2764, %2754
  %2766 = fmul fast float %2737, %95
  %2767 = call float @dx.op.tertiary.f32(i32 46, float %96, float %2743, float %2766)  ; FMad(a,b,c)
  %2768 = call float @dx.op.tertiary.f32(i32 46, float %97, float %2749, float %2767)  ; FMad(a,b,c)
  %2769 = fadd fast float %2768, %2755
  %2770 = fmul fast float %2738, %95
  %2771 = call float @dx.op.tertiary.f32(i32 46, float %96, float %2744, float %2770)  ; FMad(a,b,c)
  %2772 = call float @dx.op.tertiary.f32(i32 46, float %97, float %2750, float %2771)  ; FMad(a,b,c)
  %2773 = fadd fast float %2772, %2756
  %2774 = fdiv fast float %2761, %2773
  %2775 = fdiv fast float %2765, %2773
  %2776 = fdiv fast float %2769, %2773
  %2777 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %2776)  ; FMax(a,b)
  %2778 = fmul fast float %886, 0x401921FB60000000
  %2779 = call float @dx.op.unary.f32(i32 13, float %2778)  ; Sin(value)
  %2780 = call float @dx.op.unary.f32(i32 12, float %2778)  ; Cos(value)
  %2781 = fmul fast float %2780, %2732
  %2782 = call float @dx.op.tertiary.f32(i32 46, float %2779, float %2732, float 0.000000e+00)  ; FMad(a,b,c)
  %2783 = fmul fast float %2732, %2779
  %2784 = fsub fast float -0.000000e+00, %2783
  %2785 = call float @dx.op.tertiary.f32(i32 46, float %2780, float %2732, float 0.000000e+00)  ; FMad(a,b,c)
  br label %2786

; <label>:2786                                    ; preds = %2786, %2718
  %2787 = phi float [ 0.000000e+00, %2718 ], [ %2819, %2786 ]
  %2788 = phi float [ 0.000000e+00, %2718 ], [ %2821, %2786 ]
  %2789 = phi i32 [ 0, %2718 ], [ %2822, %2786 ]
  %2790 = mul i32 %2789, 2
  %2791 = add i32 0, %2790
  %2792 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2791
  %2793 = load float, float* %2792, align 4
  %2794 = mul i32 %2789, 2
  %2795 = add i32 1, %2794
  %2796 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2795
  %2797 = load float, float* %2796, align 4
  %2798 = fmul fast float %2781, %2793
  %2799 = call float @dx.op.tertiary.f32(i32 46, float %2797, float %2784, float %2798)  ; FMad(a,b,c)
  %2800 = fmul fast float %2793, %2782
  %2801 = call float @dx.op.tertiary.f32(i32 46, float %2797, float %2785, float %2800)  ; FMad(a,b,c)
  %2802 = fadd fast float %2799, %2774
  %2803 = fadd fast float %2801, %2775
  %2804 = fmul fast float %2802, %2727
  %2805 = fmul fast float %2803, %2727
  %2806 = call float @dx.op.binary.f32(i32 35, float %2804, float %2723)  ; FMax(a,b)
  %2807 = call float @dx.op.binary.f32(i32 35, float %2805, float %2723)  ; FMax(a,b)
  %2808 = call float @dx.op.binary.f32(i32 36, float %2806, float %2724)  ; FMin(a,b)
  %2809 = call float @dx.op.binary.f32(i32 36, float %2807, float %2724)  ; FMin(a,b)
  %2810 = fadd fast float %2808, %2721
  %2811 = fadd fast float %2809, %2722
  %2812 = uitofp i32 %2757 to float
  %2813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %32, float %2810, float %2811, float %2812, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2814 = extractvalue %dx.types.ResRet.f32 %2813, 0
  %2815 = fsub fast float %2814, %2777
  %2816 = fsub fast float %2815, %2731
  %2817 = fcmp fast ogt float %2816, 0.000000e+00
  %2818 = select i1 %2817, float 1.000000e+00, float 0.000000e+00
  %2819 = fadd fast float %2818, %2787
  %2820 = select i1 %2817, float %2816, float 0.000000e+00
  %2821 = fadd fast float %2820, %2788
  %2822 = add nuw nsw i32 %2789, 1
  %2823 = icmp eq i32 %2822, 8
  br i1 %2823, label %2824, label %2786

; <label>:2824                                    ; preds = %2786
  %2825 = fdiv fast float 1.000000e+00, %2819
  %2826 = fmul fast float %2825, %2821
  %2827 = fdiv fast float 1.000000e+00, %2777
  %2828 = fmul fast float %2826, %2827
  %2829 = call float @dx.op.unary.f32(i32 7, float %2828)  ; Saturate(value)
  %2830 = call float @dx.op.binary.f32(i32 35, float %2829, float 0.000000e+00)  ; FMax(a,b)
  %2831 = fmul fast float %2819, 1.250000e-01
  %2832 = call float @dx.op.unary.f32(i32 7, float %2831)  ; Saturate(value)
  %2833 = fmul fast float %2832, 2.000000e+00
  %2834 = fadd fast float %2833, -1.000000e+00
  %2835 = fcmp fast ogt float %2834, 0.000000e+00
  %2836 = fcmp fast olt float %2834, 0.000000e+00
  %2837 = zext i1 %2835 to i32
  %2838 = zext i1 %2836 to i32
  %2839 = sub nsw i32 %2837, %2838
  %2840 = sitofp i32 %2839 to float
  %2841 = fmul fast float %2840, %2834
  %2842 = fsub fast float 1.000000e+00, %2841
  %2843 = fmul fast float %2842, %2842
  %2844 = fmul fast float %2843, %2842
  %2845 = fsub fast float %2842, %2844
  %2846 = fmul fast float %2845, %2830
  %2847 = fsub fast float 1.000000e+00, %2844
  %2848 = fsub fast float %2847, %2846
  %2849 = fmul fast float %2840, 5.000000e-01
  %2850 = fmul fast float %2849, %2848
  %2851 = fsub fast float -5.000000e-01, %2850
  %2852 = fmul fast float %2851, %2692
  %2853 = fadd fast float %2852, 1.000000e+00
  %2854 = fmul fast float %2853, %2704
  br label %2855

; <label>:2855                                    ; preds = %2824, %2716
  %2856 = phi float [ %2854, %2824 ], [ %2704, %2716 ]
  %2857 = call float @dx.op.binary.f32(i32 36, float %2856, float %2856)  ; FMin(a,b)
  %2858 = call float @dx.op.binary.f32(i32 36, float %2856, float %2857)  ; FMin(a,b)
  %2859 = fcmp fast ogt float %2858, 0.000000e+00
  br i1 %2859, label %2860, label %2708, !dx.controlflow.hints !86

; <label>:2860                                    ; preds = %2855
  %2861 = fmul fast float %2856, %2626
  %2862 = fmul fast float %2856, %2627
  %2863 = fmul fast float %2856, %2628
  %2864 = fsub fast float %2642, %1426
  %2865 = fsub fast float %2643, %1427
  %2866 = fsub fast float %2644, %1428
  %2867 = call float @dx.op.dot3.f32(i32 55, float %2864, float %2865, float %2866, float %2864, float %2865, float %2866)  ; Dot3(ax,ay,az,bx,by,bz)
  %2868 = call float @dx.op.unary.f32(i32 25, float %2867)  ; Rsqrt(value)
  %2869 = fmul fast float %2868, %2864
  %2870 = fmul fast float %2868, %2865
  %2871 = fmul fast float %2868, %2866
  %2872 = call float @dx.op.dot3.f32(i32 55, float %2642, float %2643, float %2644, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %2873 = call float @dx.op.dot3.f32(i32 55, float %1515, float %1516, float %1517, float %2869, float %2870, float %2871)  ; Dot3(ax,ay,az,bx,by,bz)
  %2874 = call float @dx.op.unary.f32(i32 7, float %2872)  ; Saturate(value)
  %2875 = fmul fast float %2874, %2649
  %2876 = fmul fast float %2874, %2874
  %2877 = fmul fast float %2876, %1525
  %2878 = call float @dx.op.unary.f32(i32 7, float %2877)  ; Saturate(value)
  %2879 = fmul fast float %2875, %2878
  %2880 = bitcast float %2639 to i32
  %2881 = ashr i32 %2880, 1
  %2882 = sub nsw i32 1597463007, %2881
  %2883 = bitcast i32 %2882 to float
  %2884 = fmul fast float %2883, %2636
  %2885 = fmul fast float %2883, %2637
  %2886 = fmul fast float %2883, %2638
  %2887 = fsub fast float %2884, %1426
  %2888 = fsub fast float %2885, %1427
  %2889 = fsub fast float %2886, %1428
  %2890 = call float @dx.op.dot3.f32(i32 55, float %2887, float %2888, float %2889, float %2887, float %2888, float %2889)  ; Dot3(ax,ay,az,bx,by,bz)
  %2891 = call float @dx.op.unary.f32(i32 25, float %2890)  ; Rsqrt(value)
  %2892 = fmul fast float %2887, %2891
  %2893 = fmul fast float %2888, %2891
  %2894 = fmul fast float %2889, %2891
  %2895 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %2892, float %2893, float %2894)  ; Dot3(ax,ay,az,bx,by,bz)
  %2896 = fmul fast float %2895, %2895
  %2897 = call float @dx.op.unary.f32(i32 6, float %2872)  ; FAbs(value)
  %2898 = fsub fast float 1.000000e+00, %1462
  %2899 = call float @dx.op.binary.f32(i32 35, float %2898, float 0x3F847AE140000000)  ; FMax(a,b)
  %2900 = fmul fast float %2899, %2899
  %2901 = fmul fast float %2900, %2900
  %2902 = fsub fast float 1.000000e+00, %2901
  %2903 = fmul fast float %1520, %1520
  %2904 = fmul fast float %2903, %2902
  %2905 = fadd fast float %2904, %2901
  %2906 = bitcast float %2905 to i32
  %2907 = ashr i32 %2906, 1
  %2908 = add nsw i32 %2907, 532487669
  %2909 = bitcast i32 %2908 to float
  %2910 = fadd fast float %2909, %1520
  %2911 = fmul fast float %2901, %2896
  %2912 = fsub fast float 1.000000e+00, %2896
  %2913 = fadd fast float %2912, %2911
  %2914 = fmul fast float %2897, %2897
  %2915 = fmul fast float %2914, %2902
  %2916 = fadd fast float %2915, %2901
  %2917 = bitcast float %2916 to i32
  %2918 = ashr i32 %2917, 1
  %2919 = add nsw i32 %2918, 532487669
  %2920 = bitcast i32 %2919 to float
  %2921 = fadd fast float %2920, %2897
  %2922 = fmul fast float %2913, %2913
  %2923 = fmul fast float %2922, %2910
  %2924 = fmul fast float %2923, %2921
  %2925 = fdiv fast float 1.000000e+00, %2924
  %2926 = bitcast float %2901 to i32
  %2927 = sitofp i32 %2926 to float
  %2928 = fmul fast float %2927, 0x3FE7F73180000000
  %2929 = fadd fast float %2928, 0x41AFE27C40000000
  %2930 = fptosi float %2929 to i32
  %2931 = bitcast i32 %2930 to float
  %2932 = fmul fast float %2605, 0x3FD80E9D60000000
  %2933 = fmul fast float %2932, %2883
  %2934 = fadd fast float %2931, %2933
  %2935 = bitcast float %2934 to i32
  %2936 = sub nsw i32 2129859010, %2935
  %2937 = bitcast i32 %2936 to float
  %2938 = fmul fast float %2901, %2925
  %2939 = fmul fast float %2938, %2931
  %2940 = fmul fast float %2939, %2937
  %2941 = call float @dx.op.unary.f32(i32 6, float %2873)  ; FAbs(value)
  %2942 = fsub fast float 1.000000e+00, %2941
  %2943 = bitcast float %2942 to i32
  %2944 = sitofp i32 %2943 to float
  %2945 = fmul fast float %2944, 5.000000e+00
  %2946 = fadd fast float %2945, 0xC1EFBF8940000000
  %2947 = fptosi float %2946 to i32
  %2948 = bitcast i32 %2947 to float
  %2949 = fmul fast float %2948, %2338
  %2950 = fmul fast float %2948, %2339
  %2951 = fmul fast float %2948, %2340
  %2952 = fadd fast float %2949, %1419
  %2953 = fadd fast float %2950, %1420
  %2954 = fadd fast float %2951, %1518
  %2955 = fmul fast float %2872, 9.843750e-01
  %2956 = fmul fast float %1462, 9.843750e-01
  %2957 = fadd fast float %2955, 7.812500e-03
  %2958 = fadd fast float %2956, 7.812500e-03
  %2959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %2957, float %2958, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2960 = extractvalue %dx.types.ResRet.f32 %2959, 2
  %2961 = extractvalue %dx.types.ResRet.f32 %2959, 3
  %2962 = fmul fast float %2960, %1419
  %2963 = fmul fast float %2960, %1420
  %2964 = fmul fast float %2960, %1518
  %2965 = fadd fast float %2962, %2961
  %2966 = fadd fast float %2963, %2961
  %2967 = fadd fast float %2964, %2961
  %2968 = call float @dx.op.binary.f32(i32 35, float %2966, float %2967)  ; FMax(a,b)
  %2969 = call float @dx.op.binary.f32(i32 35, float %2965, float %2968)  ; FMax(a,b)
  %2970 = fsub fast float 1.000000e+00, %2969
  %2971 = fmul fast float %2879, %2861
  %2972 = fmul fast float %2971, %2970
  %2973 = fmul fast float %2879, %2862
  %2974 = fmul fast float %2973, %2970
  %2975 = fmul fast float %2879, %2863
  %2976 = fmul fast float %2975, %2970
  %2977 = fadd fast float %2972, %2579
  %2978 = fadd fast float %2974, %2580
  %2979 = fadd fast float %2976, %2581
  %2980 = fmul fast float %2971, %2952
  %2981 = fmul fast float %2980, %2940
  %2982 = fmul fast float %2973, %2953
  %2983 = fmul fast float %2982, %2940
  %2984 = fmul fast float %2975, %2954
  %2985 = fmul fast float %2984, %2940
  %2986 = fadd fast float %2981, %2576
  %2987 = fadd fast float %2983, %2577
  %2988 = fadd fast float %2985, %2578
  br label %2708

; <label>:2989                                    ; preds = %2708
  br label %2990

; <label>:2990                                    ; preds = %2989, %2542
  %2991 = phi float [ %2544, %2542 ], [ %2709, %2989 ]
  %2992 = phi float [ %2545, %2542 ], [ %2710, %2989 ]
  %2993 = phi float [ %2546, %2542 ], [ %2711, %2989 ]
  %2994 = phi float [ %2547, %2542 ], [ %2712, %2989 ]
  %2995 = phi float [ %2548, %2542 ], [ %2713, %2989 ]
  %2996 = phi float [ %2549, %2542 ], [ %2714, %2989 ]
  %2997 = add i32 %2543, 1
  %2998 = icmp ugt i32 %2997, %2539
  br i1 %2998, label %2999, label %2542

; <label>:2999                                    ; preds = %2990
  br label %3000

; <label>:3000                                    ; preds = %2999, %2518, %2507
  %3001 = phi float [ %2509, %2507 ], [ %2509, %2518 ], [ %2991, %2999 ]
  %3002 = phi float [ %2510, %2507 ], [ %2510, %2518 ], [ %2992, %2999 ]
  %3003 = phi float [ %2511, %2507 ], [ %2511, %2518 ], [ %2993, %2999 ]
  %3004 = phi float [ %2512, %2507 ], [ %2512, %2518 ], [ %2994, %2999 ]
  %3005 = phi float [ %2513, %2507 ], [ %2513, %2518 ], [ %2995, %2999 ]
  %3006 = phi float [ %2514, %2507 ], [ %2514, %2518 ], [ %2996, %2999 ]
  br i1 %38, label %3007, label %3226

; <label>:3007                                    ; preds = %3000
  %3008 = and i32 %1468, 65535
  %3009 = uitofp i32 %3008 to float
  %3010 = fmul fast float %3009, 0x3EF0001000000000
  %3011 = lshr i32 %1475, 16
  %3012 = uitofp i32 %3011 to float
  %3013 = fmul fast float %3012, 0x3EF0001000000000
  %3014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3015 = extractvalue %dx.types.CBufRet.f32 %3014, 3
  %3016 = fadd fast float %3015, 3.000000e+00
  %3017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3018 = extractvalue %dx.types.CBufRet.i32 %3017, 0
  %3019 = call i32 @dx.op.binary.i32(i32 40, i32 %139, i32 %3018)  ; UMin(a,b)
  %3020 = mul i32 %3019, 36
  %3021 = add i32 %3020, 4
  %3022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3023 = extractvalue %dx.types.CBufRet.f32 %3022, 0
  %3024 = fmul fast float %3010, %3023
  %3025 = fmul fast float %3013, %3023
  %3026 = extractvalue %dx.types.CBufRet.f32 %3022, 1
  %3027 = fadd fast float %3024, %3026
  %3028 = fadd fast float %3025, %3026
  br i1 %222, label %3089, label %3029

; <label>:3029                                    ; preds = %3007
  br label %3030

; <label>:3030                                    ; preds = %3030, %3029
  %3031 = phi float [ %3074, %3030 ], [ 0.000000e+00, %3029 ]
  %3032 = phi float [ %3084, %3030 ], [ 0.000000e+00, %3029 ]
  %3033 = phi float [ %3085, %3030 ], [ 0.000000e+00, %3029 ]
  %3034 = phi float [ %3086, %3030 ], [ 0.000000e+00, %3029 ]
  %3035 = phi float [ %3078, %3030 ], [ 0.000000e+00, %3029 ]
  %3036 = phi float [ %3079, %3030 ], [ 0.000000e+00, %3029 ]
  %3037 = phi float [ %3080, %3030 ], [ 0.000000e+00, %3029 ]
  %3038 = phi i32 [ %3043, %3030 ], [ %143, %3029 ]
  %3039 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3038)  ; FirstbitLo(value)
  %3040 = and i32 %3039, 31
  %3041 = shl i32 1, %3040
  %3042 = xor i32 %3041, -1
  %3043 = and i32 %3038, %3042
  %3044 = shl i32 %3039, 2
  %3045 = add i32 %3021, %3044
  %3046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3045, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.i32 %3046, 0
  %3048 = and i32 %3047, 32767
  %3049 = add i32 %151, %3044
  %3050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3049, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.f32 %3050, 0
  %3052 = add i32 %152, %3044
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = add i32 %3054, 0
  %3056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3055, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3056, %dx.types.Handle %29, float %3027, float %3028, float %3051, float undef, i32 0, i32 0, i32 undef, float %3016)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3058 = extractvalue %dx.types.ResRet.f32 %3057, 0
  %3059 = mul nuw nsw i32 %3048, 928
  %3060 = add nuw nsw i32 %3059, 44
  %3061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.f32 %3061, 0
  %3063 = add nuw nsw i32 %3059, 48
  %3064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3063, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.f32 %3064, 0
  %3066 = extractvalue %dx.types.ResRet.f32 %3064, 1
  %3067 = extractvalue %dx.types.ResRet.f32 %3064, 2
  %3068 = add nuw nsw i32 %3059, 60
  %3069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3068, i32 undef)  ; BufferLoad(srv,index,wot)
  %3070 = extractvalue %dx.types.ResRet.f32 %3069, 0
  %3071 = extractvalue %dx.types.ResRet.f32 %3069, 1
  %3072 = extractvalue %dx.types.ResRet.f32 %3069, 2
  %3073 = fmul fast float %3062, %3058
  %3074 = fadd fast float %3073, %3031
  %3075 = fmul fast float %3065, %3058
  %3076 = fmul fast float %3066, %3058
  %3077 = fmul fast float %3067, %3058
  %3078 = fadd fast float %3075, %3035
  %3079 = fadd fast float %3076, %3036
  %3080 = fadd fast float %3077, %3037
  %3081 = fmul fast float %3070, %3058
  %3082 = fmul fast float %3071, %3058
  %3083 = fmul fast float %3072, %3058
  %3084 = fadd fast float %3081, %3032
  %3085 = fadd fast float %3082, %3033
  %3086 = fadd fast float %3083, %3034
  %3087 = icmp eq i32 %3043, 0
  br i1 %3087, label %3088, label %3030

; <label>:3088                                    ; preds = %3030
  br label %3089

; <label>:3089                                    ; preds = %3088, %3007
  %3090 = phi float [ 0.000000e+00, %3007 ], [ %3074, %3088 ]
  %3091 = phi float [ 0.000000e+00, %3007 ], [ %3084, %3088 ]
  %3092 = phi float [ 0.000000e+00, %3007 ], [ %3085, %3088 ]
  %3093 = phi float [ 0.000000e+00, %3007 ], [ %3086, %3088 ]
  %3094 = phi float [ 0.000000e+00, %3007 ], [ %3078, %3088 ]
  %3095 = phi float [ 0.000000e+00, %3007 ], [ %3079, %3088 ]
  %3096 = phi float [ 0.000000e+00, %3007 ], [ %3080, %3088 ]
  %3097 = fmul fast float %3094, 0x3F847AE140000000
  %3098 = fmul fast float %3095, 0x3F847AE140000000
  %3099 = fmul fast float %3096, 0x3F847AE140000000
  %3100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3101 = extractvalue %dx.types.CBufRet.f32 %3100, 0
  %3102 = extractvalue %dx.types.CBufRet.f32 %3100, 1
  %3103 = extractvalue %dx.types.CBufRet.f32 %3100, 2
  %3104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3105 = extractvalue %dx.types.CBufRet.f32 %3104, 0
  %3106 = extractvalue %dx.types.CBufRet.f32 %3104, 1
  %3107 = call float @dx.op.dot3.f32(i32 55, float %3101, float %3102, float %3103, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3108 = select i1 %1514, float %3105, float %3101
  %3109 = select i1 %1514, float %3107, float %3102
  %3110 = select i1 %1514, float %3106, float %3103
  %3111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3112 = extractvalue %dx.types.CBufRet.f32 %3111, 0
  %3113 = extractvalue %dx.types.CBufRet.f32 %3111, 1
  %3114 = extractvalue %dx.types.CBufRet.f32 %3111, 2
  %3115 = fadd fast float %3094, %3091
  %3116 = fmul fast float %3115, 0x3F847AE140000000
  %3117 = fadd fast float %3095, %3092
  %3118 = fmul fast float %3117, 0x3F847AE140000000
  %3119 = fadd fast float %3096, %3093
  %3120 = fmul fast float %3119, 0x3F847AE140000000
  %3121 = call float @dx.op.dot3.f32(i32 55, float %3112, float %3113, float %3114, float %1426, float %1427, float %1428)  ; Dot3(ax,ay,az,bx,by,bz)
  %3122 = fcmp fast ogt float %3090, 0.000000e+00
  %3123 = select i1 %3122, float 1.000000e+00, float -1.000000e+00
  %3124 = fmul fast float %3123, 5.000000e-01
  %3125 = fmul fast float %3124, %3121
  %3126 = fmul fast float %3123, %3090
  %3127 = fadd fast float %3125, 4.921875e-01
  %3128 = fadd fast float %3126, -3.125000e-02
  %3129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %31, float %3127, float 0x3FB25F3060000000, float %3128, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3130 = extractvalue %dx.types.ResRet.f32 %3129, 0
  %3131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3132 = extractvalue %dx.types.CBufRet.f32 %3131, 0
  %3133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %3134 = extractvalue %dx.types.CBufRet.f32 %3133, 0
  %3135 = fmul fast float %3134, %3132
  %3136 = extractvalue %dx.types.CBufRet.f32 %3133, 1
  %3137 = fadd fast float %3135, %3136
  %3138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %3139 = extractvalue %dx.types.CBufRet.f32 %3138, 0
  %3140 = fmul fast float %3139, %2508
  %3141 = extractvalue %dx.types.CBufRet.f32 %3138, 1
  %3142 = fadd fast float %3140, %3141
  %3143 = call float @dx.op.unary.f32(i32 7, float %3142)  ; Saturate(value)
  %3144 = extractvalue %dx.types.CBufRet.f32 %3131, 3
  %3145 = extractvalue %dx.types.CBufRet.f32 %3133, 2
  %3146 = fmul fast float %3145, %3144
  %3147 = extractvalue %dx.types.CBufRet.f32 %3133, 3
  %3148 = fadd fast float %3146, %3147
  %3149 = fmul fast float %3130, 0x400921FB60000000
  %3150 = fmul fast float %3149, %3137
  %3151 = fmul fast float %3150, %3143
  %3152 = call float @dx.op.binary.f32(i32 35, float %3116, float 0x3F10000000000000)  ; FMax(a,b)
  %3153 = call float @dx.op.binary.f32(i32 35, float %3118, float 0x3F10000000000000)  ; FMax(a,b)
  %3154 = call float @dx.op.binary.f32(i32 35, float %3120, float 0x3F10000000000000)  ; FMax(a,b)
  %3155 = fdiv fast float 1.000000e+00, %3152
  %3156 = fdiv fast float 1.000000e+00, %3153
  %3157 = fdiv fast float 1.000000e+00, %3154
  %3158 = fmul fast float %3115, 0xBF8D8BE060000000
  %3159 = fmul fast float %3117, 0xBF8D8BE060000000
  %3160 = fmul fast float %3119, 0xBF8D8BE060000000
  %3161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %3162 = extractvalue %dx.types.CBufRet.f32 %3161, 3
  %3163 = call float @dx.op.dot3.f32(i32 55, float %3155, float %3156, float %3157, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3164 = fmul fast float %3162, %3163
  %3165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %3166 = extractvalue %dx.types.CBufRet.f32 %3165, 3
  %3167 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3166)  ; Dot3(ax,ay,az,bx,by,bz)
  %3168 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1515, float %1516, float %1517)  ; Dot3(ax,ay,az,bx,by,bz)
  %3169 = fdiv fast float 1.000000e+00, %3168
  %3170 = fmul fast float %3169, %3167
  %3171 = fcmp ogt float %1428, -0.000000e+00
  %3172 = select i1 %3171, float %3166, float %3170
  %3173 = call float @dx.op.binary.f32(i32 36, float %3172, float %3164)  ; FMin(a,b)
  %3174 = extractvalue %dx.types.CBufRet.f32 %3165, 0
  %3175 = fmul fast float %3174, %3173
  %3176 = fmul fast float %3175, %3158
  %3177 = fmul fast float %3175, %3159
  %3178 = fmul fast float %3175, %3160
  %3179 = call float @dx.op.unary.f32(i32 21, float %3176)  ; Exp(value)
  %3180 = call float @dx.op.unary.f32(i32 21, float %3177)  ; Exp(value)
  %3181 = call float @dx.op.unary.f32(i32 21, float %3178)  ; Exp(value)
  %3182 = fmul fast float %3151, %3108
  %3183 = fmul fast float %3182, %3179
  %3184 = fmul fast float %3151, %3109
  %3185 = fmul fast float %3184, %3180
  %3186 = fmul fast float %3151, %3110
  %3187 = fmul fast float %3186, %3181
  %3188 = extractvalue %dx.types.CBufRet.f32 %3165, 1
  %3189 = fmul fast float %3188, %3173
  %3190 = fmul fast float %3189, %3158
  %3191 = fmul fast float %3189, %3159
  %3192 = fmul fast float %3189, %3160
  %3193 = call float @dx.op.unary.f32(i32 21, float %3190)  ; Exp(value)
  %3194 = call float @dx.op.unary.f32(i32 21, float %3191)  ; Exp(value)
  %3195 = call float @dx.op.unary.f32(i32 21, float %3192)  ; Exp(value)
  %3196 = fmul fast float %3148, %2335
  %3197 = fmul fast float %3196, %3193
  %3198 = fmul fast float %3148, %2336
  %3199 = fmul fast float %3198, %3194
  %3200 = fmul fast float %3148, %2337
  %3201 = fmul fast float %3200, %3195
  %3202 = fadd fast float %3197, %3183
  %3203 = fmul fast float %3097, %3202
  %3204 = fadd fast float %3199, %3185
  %3205 = fmul fast float %3098, %3204
  %3206 = fadd fast float %3201, %3187
  %3207 = fmul fast float %3099, %3206
  %3208 = fmul fast float %3172, %3158
  %3209 = fmul fast float %3172, %3159
  %3210 = fmul fast float %3172, %3160
  %3211 = call float @dx.op.unary.f32(i32 21, float %3208)  ; Exp(value)
  %3212 = call float @dx.op.unary.f32(i32 21, float %3209)  ; Exp(value)
  %3213 = call float @dx.op.unary.f32(i32 21, float %3210)  ; Exp(value)
  %3214 = call float @dx.op.unary.f32(i32 7, float %3211)  ; Saturate(value)
  %3215 = call float @dx.op.unary.f32(i32 7, float %3212)  ; Saturate(value)
  %3216 = call float @dx.op.unary.f32(i32 7, float %3213)  ; Saturate(value)
  %3217 = fmul fast float %3214, %3203
  %3218 = fmul fast float %3215, %3205
  %3219 = fmul fast float %3216, %3207
  %3220 = fsub fast float %3203, %3217
  %3221 = fsub fast float %3205, %3218
  %3222 = fsub fast float %3207, %3219
  %3223 = fmul fast float %3220, %3155
  %3224 = fmul fast float %3221, %3156
  %3225 = fmul fast float %3222, %3157
  br label %3226

; <label>:3226                                    ; preds = %3089, %3000
  %3227 = phi float [ 0.000000e+00, %3000 ], [ %3223, %3089 ]
  %3228 = phi float [ 0.000000e+00, %3000 ], [ %3224, %3089 ]
  %3229 = phi float [ 0.000000e+00, %3000 ], [ %3225, %3089 ]
  %3230 = fmul fast float %3227, %2349
  %3231 = fmul fast float %3228, %2349
  %3232 = fmul fast float %3229, %2349
  %3233 = fadd fast float %3230, %3001
  %3234 = fadd fast float %3231, %3002
  %3235 = fadd fast float %3232, %3003
  %3236 = call float @dx.op.unary.f32(i32 24, float %1410)  ; Sqrt(value)
  %3237 = call float @dx.op.unary.f32(i32 24, float %1411)  ; Sqrt(value)
  %3238 = call float @dx.op.unary.f32(i32 24, float %1412)  ; Sqrt(value)
  %3239 = fmul fast float %3236, %3004
  %3240 = fmul fast float %3237, %3005
  %3241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3242 = extractvalue %dx.types.CBufRet.f32 %3241, 0
  br i1 %1514, label %3243, label %3269

; <label>:3243                                    ; preds = %3226
  %3244 = fadd fast float %3006, %1490
  %3245 = fmul fast float %3244, %1488
  %3246 = fsub fast float 1.000000e+00, %1488
  %3247 = call float @dx.op.unary.f32(i32 7, float %3246)  ; Saturate(value)
  %3248 = fmul fast float %1400, 2.000000e+00
  %3249 = fmul fast float %3248, %1437
  %3250 = fsub fast float %1428, %3249
  %3251 = call float @dx.op.unary.f32(i32 7, float %3250)  ; Saturate(value)
  %3252 = fsub fast float 1.000000e+00, %3251
  %3253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3254 = extractvalue %dx.types.CBufRet.f32 %3253, 3
  %3255 = fmul fast float %3252, %3247
  %3256 = fmul fast float %3255, %3254
  %3257 = fadd fast float %3256, %3245
  %3258 = fsub fast float 1.000000e+00, %1520
  %3259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3260 = extractvalue %dx.types.CBufRet.f32 %3259, 0
  %3261 = fmul fast float %3260, %3258
  %3262 = fsub fast float %3257, %3261
  %3263 = fadd fast float %3240, %3239
  %3264 = extractvalue %dx.types.CBufRet.f32 %3253, 1
  %3265 = fsub fast float %3262, %3264
  %3266 = extractvalue %dx.types.CBufRet.f32 %3253, 2
  %3267 = fmul fast float %3265, %3266
  %3268 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  br label %3273

; <label>:3269                                    ; preds = %3226
  %3270 = fmul fast float %3238, %3006
  %3271 = fmul fast float %3242, %3240
  %3272 = fmul fast float %3270, %3242
  br label %3273

; <label>:3273                                    ; preds = %3269, %3243
  %3274 = phi float [ %3263, %3243 ], [ %3239, %3269 ]
  %3275 = phi float [ %3268, %3243 ], [ %3271, %3269 ]
  %3276 = phi float [ 1.000000e+00, %3243 ], [ %3272, %3269 ]
  %3277 = fmul float %3242, %3274
  %3278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.f32 %3278, 0
  %3280 = fmul fast float %3279, %3234
  %3281 = fmul fast float %3279, %3235
  %3282 = fadd fast float %3234, %3233
  %3283 = select i1 %1514, float %3282, float %3233
  %3284 = fmul float %3283, %3279
  %3285 = select i1 %1514, float 0.000000e+00, float %3280
  %3286 = select i1 %1514, float 0.000000e+00, float %3281
  %3287 = fadd fast float %886, 0x3FE3C6EF40000000
  %3288 = call float @dx.op.unary.f32(i32 22, float %3287)  ; Frc(value)
  %3289 = call float @dx.op.unary.f32(i32 23, float %3277)  ; Log(value)
  %3290 = fadd fast float %3289, -7.000000e+00
  %3291 = call float @dx.op.unary.f32(i32 21, float %3290)  ; Exp(value)
  %3292 = fmul fast float %3288, 2.000000e+00
  %3293 = fadd fast float %3292, -1.000000e+00
  %3294 = fmul fast float %3291, %3293
  %3295 = fcmp fast ogt float %3277, 0.000000e+00
  %3296 = select i1 %3295, float %3294, float 0.000000e+00
  %3297 = fadd fast float %3296, %3277
  %3298 = fadd fast float %886, 0x3FF3C6EF40000000
  %3299 = call float @dx.op.unary.f32(i32 22, float %3298)  ; Frc(value)
  %3300 = call float @dx.op.unary.f32(i32 23, float %3275)  ; Log(value)
  %3301 = fadd fast float %3300, -7.000000e+00
  %3302 = call float @dx.op.unary.f32(i32 21, float %3301)  ; Exp(value)
  %3303 = fmul fast float %3299, 2.000000e+00
  %3304 = fadd fast float %3303, -1.000000e+00
  %3305 = fmul fast float %3302, %3304
  %3306 = fcmp fast ogt float %3275, 0.000000e+00
  %3307 = select i1 %3306, float %3305, float 0.000000e+00
  %3308 = fadd fast float %3307, %3275
  %3309 = fadd fast float %886, 0x3FFDAA66E0000000
  %3310 = call float @dx.op.unary.f32(i32 22, float %3309)  ; Frc(value)
  %3311 = call float @dx.op.unary.f32(i32 23, float %3276)  ; Log(value)
  %3312 = fadd fast float %3311, -6.000000e+00
  %3313 = call float @dx.op.unary.f32(i32 21, float %3312)  ; Exp(value)
  %3314 = fmul fast float %3310, 2.000000e+00
  %3315 = fadd fast float %3314, -1.000000e+00
  %3316 = fmul fast float %3313, %3315
  %3317 = fcmp fast ogt float %3276, 0.000000e+00
  %3318 = select i1 %3317, float %3316, float 0.000000e+00
  %3319 = fadd fast float %3318, %3276
  %3320 = fmul fast float %3297, %3236
  %3321 = fmul fast float %3308, %3237
  %3322 = fmul fast float %3319, %3238
  %3323 = fadd fast float %3320, %3284
  %3324 = fadd fast float %3321, %3285
  %3325 = fadd fast float %3322, %3286
  %3326 = select i1 %1514, float %3308, float %3324
  %3327 = select i1 %1514, float %3319, float %3325
  %3328 = call float @dx.op.binary.f32(i32 36, float %3323, float 3.225500e+04)  ; FMin(a,b)
  %3329 = call float @dx.op.binary.f32(i32 36, float %3326, float 3.225500e+04)  ; FMin(a,b)
  %3330 = call float @dx.op.binary.f32(i32 36, float %3327, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3328)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3329)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3330)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!49}
!dx.entryPoints = !{!50}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !39, !43}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !12}
!12 = !{i32 0, i32 14}
!13 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!15 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!16 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !23}
!23 = !{i32 0, i32 5}
!24 = !{i32 15, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!25 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!26 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!27 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!28 = !{i32 19, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!29 = !{i32 20, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!30 = !{i32 21, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!31 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!32 = !{i32 23, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!33 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!34 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!35 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!36 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!37 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!38 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 7, i32 0, !7}
!39 = !{!40, !41, !42}
!40 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!41 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!42 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!43 = !{!44, !45, !46, !47, !48}
!44 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!45 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!46 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!47 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!48 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!49 = !{[20 x i32] [i32 18, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0]}
!50 = !{void ()* @ps_main, !"ps_main", !51, !4, !71}
!51 = !{!52, !68, null}
!52 = !{!53, !56, !58, !60, !62, !63, !64, !65, !67}
!53 = !{i32 0, !"SV_Position", i8 9, i8 3, !54, i8 4, i32 1, i8 4, i32 0, i8 0, !55}
!54 = !{i32 0}
!55 = !{i32 3, i32 11}
!56 = !{i32 1, !"NORMAL", i8 9, i8 0, !54, i8 2, i32 1, i8 3, i32 1, i8 0, !57}
!57 = !{i32 3, i32 7}
!58 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !54, i8 2, i32 1, i8 2, i32 2, i8 0, !59}
!59 = !{i32 3, i32 3}
!60 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !54, i8 2, i32 1, i8 1, i32 1, i8 3, !61}
!61 = !{i32 3, i32 1}
!62 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !54, i8 1, i32 1, i8 1, i32 3, i8 0, !61}
!63 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !54, i8 1, i32 1, i8 1, i32 3, i8 1, !61}
!64 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !54, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!65 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !66, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!66 = !{i32 1}
!67 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !54, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!68 = !{!69}
!69 = !{i32 0, !"SV_Target", i8 9, i8 16, !54, i8 0, i32 1, i8 4, i32 0, i8 0, !70}
!70 = !{i32 3, i32 15}
!71 = !{i32 0, i64 24}
!72 = !{!73, !73, i64 0}
!73 = !{!"float", !74, i64 0}
!74 = !{!"omnipotent char", !75, i64 0}
!75 = !{!"Simple C/C++ TBAA"}
!76 = !{!77, !79, !80}
!77 = distinct !{!77, !78, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!78 = distinct !{!78, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!79 = distinct !{!79, !78, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!80 = distinct !{!80, !78, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}

