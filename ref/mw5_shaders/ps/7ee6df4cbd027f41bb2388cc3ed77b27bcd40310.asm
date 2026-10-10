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
; shader hash: ee1671383f979c4bf9d94872aeb8a253
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
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
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
;                                       UAV  struct         r/w      U0             u9     1
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
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
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
@"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim" = internal constant [8 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = alloca [4 x float], align 4
  %38 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = icmp ne i32 %38, 0
  %40 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = alloca [4 x float], align 4
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = fmul fast float %52, %47
  %54 = fmul fast float %52, %48
  %55 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float %44, float %45, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %56 = call float @dx.op.unary.f32(i32 25, float %55)  ; Rsqrt(value)
  %57 = select i1 %39, float 1.000000e+00, float -1.000000e+00
  %58 = fmul fast float %44, %57
  %59 = fmul fast float %58, %56
  %60 = fmul fast float %45, %57
  %61 = fmul fast float %60, %56
  %62 = fmul fast float %46, %57
  %63 = fmul fast float %62, %56
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %67 = fmul fast float %53, 2.000000e+00
  %68 = fmul fast float %67, %65
  %69 = fmul fast float %54, 2.000000e+00
  %70 = fmul fast float %69, %66
  %71 = fsub fast float 1.000000e+00, %68
  %72 = fsub fast float 1.000000e+00, %70
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = fmul fast float %71, %74
  %78 = fmul fast float %71, %75
  %79 = fmul fast float %71, %76
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %84 = fmul fast float %72, %81
  %85 = fmul fast float %72, %82
  %86 = fmul fast float %72, %83
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = fadd fast float %84, %88
  %92 = fadd fast float %91, %77
  %93 = fadd fast float %85, %89
  %94 = fadd fast float %93, %78
  %95 = fadd fast float %86, %90
  %96 = fadd fast float %95, %79
  %97 = fmul fast float %92, %49
  %98 = fmul fast float %94, %49
  %99 = fmul fast float %96, %49
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %102 = call float @dx.op.unary.f32(i32 83, float %42)  ; DerivCoarseX(value)
  %103 = call float @dx.op.unary.f32(i32 83, float %43)  ; DerivCoarseX(value)
  %104 = call float @dx.op.unary.f32(i32 84, float %42)  ; DerivCoarseY(value)
  %105 = call float @dx.op.unary.f32(i32 84, float %43)  ; DerivCoarseY(value)
  %106 = fmul fast float %102, %101
  %107 = fmul fast float %103, %101
  %108 = fmul fast float %104, %101
  %109 = fmul fast float %105, %101
  %110 = call float @dx.op.dot2.f32(i32 54, float %108, float %109, float %108, float %109)  ; Dot2(ax,ay,bx,by)
  %111 = call float @dx.op.dot2.f32(i32 54, float %106, float %107, float %106, float %107)  ; Dot2(ax,ay,bx,by)
  %112 = call float @dx.op.binary.f32(i32 35, float %111, float %110)  ; FMax(a,b)
  %113 = call float @dx.op.unary.f32(i32 23, float %112)  ; Log(value)
  %114 = fmul fast float %113, 5.000000e-01
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %117 = fadd fast float %116, %114
  %118 = call float @dx.op.binary.f32(i32 35, float %117, float 0.000000e+00)  ; FMax(a,b)
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 3
  %121 = fadd fast float %120, %118
  %122 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %123 = shl i32 %122, 16
  %124 = or i32 %123, %122
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = fadd fast float %126, %97
  %129 = fadd fast float %127, %98
  %130 = fmul fast float %128, 0x3F53C37960000000
  %131 = fmul fast float %129, 0x3F53C37960000000
  %132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %132, float %130, float %131, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = fmul fast float %136, %134
  %138 = shl i32 %40, 3
  %139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %138, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = and i32 %140, 16383
  %142 = shl i32 %40, 2
  %143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %142, i32 undef)  ; BufferLoad(srv,index,wot)
  %144 = extractvalue %dx.types.ResRet.i32 %143, 0
  %145 = and i32 %144, 255
  %146 = mul nuw nsw i32 %141, 148
  %147 = add nuw nsw i32 %146, 4
  %148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = add nuw nsw i32 %146, 8
  %151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = add nuw nsw i32 %146, 48
  %154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = add nuw nsw i32 %146, 60
  %157 = add nuw nsw i32 %146, 104
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = add nuw nsw i32 %146, 116
  %161 = fsub fast float 1.000000e+00, %43
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %164 = fmul fast float %163, %42
  %165 = fmul fast float %163, %161
  %166 = fadd fast float %164, %149
  %167 = fadd fast float %165, %152
  %168 = add nuw nsw i32 %146, 20
  %169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = add nuw nsw i32 %146, 24
  %172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.f32 %172, 0
  %174 = add nuw nsw i32 %146, 40
  %175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 0
  %179 = add nuw nsw i32 %146, 52
  %180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = add nuw nsw i32 %146, 96
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = add nuw nsw i32 %146, 108
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %192 = fmul fast float %191, %42
  %193 = fmul fast float %191, %43
  %194 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %195 = fadd fast float %192, %194
  %196 = fadd fast float %193, %194
  %197 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %198 = fmul fast float %197, %42
  %199 = fmul fast float %197, %43
  %200 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %201 = fadd fast float %198, %200
  %202 = fadd fast float %199, %200
  %203 = add i32 %184, 0
  %204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %203, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %205 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %204, i32 0)  ; GetDimensions(handle,mipLevel)
  %206 = extractvalue %dx.types.Dimensions %205, 0
  %207 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %206)  ; FirstbitLo(value)
  %208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.i32 %208, 1
  %210 = sub nsw i32 %209, %207
  %211 = sitofp i32 %210 to float
  %212 = fsub fast float %121, %211
  %213 = call float @dx.op.binary.f32(i32 35, float %212, float 0.000000e+00)  ; FMax(a,b)
  %214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %204, %dx.types.Handle %30, float %195, float %196, float %176, float undef, i32 0, i32 0, i32 undef, float %213)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = fmul fast float %215, %170
  %217 = add i32 %186, 0
  %218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %217, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %219 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %218, i32 0)  ; GetDimensions(handle,mipLevel)
  %220 = extractvalue %dx.types.Dimensions %219, 0
  %221 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %220)  ; FirstbitLo(value)
  %222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.i32 %222, 1
  %224 = sub nsw i32 %223, %221
  %225 = sitofp i32 %224 to float
  %226 = fsub fast float %121, %225
  %227 = call float @dx.op.binary.f32(i32 35, float %226, float 0.000000e+00)  ; FMax(a,b)
  %228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %218, %dx.types.Handle %30, float %201, float %202, float %178, float undef, i32 0, i32 0, i32 undef, float %227)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = extractvalue %dx.types.ResRet.f32 %228, 1
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %233 = fmul fast float %232, 2.000000e+00
  %234 = fmul fast float %233, %229
  %235 = fmul fast float %233, %230
  %236 = fsub fast float %234, %232
  %237 = fsub fast float %235, %232
  %238 = fmul fast float %236, %236
  %239 = fmul fast float %237, %237
  %240 = fadd fast float %238, %239
  %241 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %242 = add i32 %189, 0
  %243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %242, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %244 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %243, i32 0)  ; GetDimensions(handle,mipLevel)
  %245 = extractvalue %dx.types.Dimensions %244, 0
  %246 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %245)  ; FirstbitLo(value)
  %247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.i32 %247, 1
  %249 = sub nsw i32 %248, %246
  %250 = sitofp i32 %249 to float
  %251 = fsub fast float %121, %250
  %252 = call float @dx.op.binary.f32(i32 35, float %251, float 0.000000e+00)  ; FMax(a,b)
  %253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %243, %dx.types.Handle %30, float %201, float %202, float %181, float undef, i32 0, i32 0, i32 undef, float %252)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.i32 %255, 0
  %257 = call i32 @dx.op.binary.i32(i32 40, i32 %141, i32 %256)  ; UMin(a,b)
  %258 = mul i32 %257, 36
  %259 = add i32 %258, 4
  %260 = icmp eq i32 %145, 0
  br i1 %260, label %1325, label %261

; <label>:261                                     ; preds = %0
  br label %262

; <label>:262                                     ; preds = %1314, %261
  %263 = phi float [ %1315, %1314 ], [ 0.000000e+00, %261 ]
  %264 = phi float [ %1316, %1314 ], [ 0.000000e+00, %261 ]
  %265 = phi float [ %1317, %1314 ], [ 0.000000e+00, %261 ]
  %266 = phi i32 [ %1318, %1314 ], [ -1, %261 ]
  %267 = phi float [ %1319, %1314 ], [ 0.000000e+00, %261 ]
  %268 = phi i32 [ %276, %1314 ], [ %145, %261 ]
  %269 = phi i32 [ %1320, %1314 ], [ %124, %261 ]
  %270 = phi i32 [ %1321, %1314 ], [ %124, %261 ]
  %271 = phi i32 [ %1322, %1314 ], [ %124, %261 ]
  %272 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %268)  ; FirstbitLo(value)
  %273 = and i32 %272, 31
  %274 = shl i32 1, %273
  %275 = xor i32 %274, -1
  %276 = and i32 %268, %275
  %277 = shl i32 %272, 2
  %278 = add i32 %259, %277
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 32767
  %282 = add i32 %156, %277
  %283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 0
  %287 = fmul fast float %286, %42
  %288 = fmul fast float %286, %43
  %289 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %290 = fadd fast float %287, %289
  %291 = fadd fast float %288, %289
  %292 = add i32 %160, %277
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = add i32 %294, 0
  %296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %295, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %297 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %296, i32 0)  ; GetDimensions(handle,mipLevel)
  %298 = extractvalue %dx.types.Dimensions %297, 0
  %299 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %298)  ; FirstbitLo(value)
  %300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.i32 %300, 1
  %302 = sub nsw i32 %301, %299
  %303 = sitofp i32 %302 to float
  %304 = fsub fast float %121, %303
  %305 = call float @dx.op.binary.f32(i32 35, float %304, float 0.000000e+00)  ; FMax(a,b)
  %306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %296, %dx.types.Handle %30, float %290, float %291, float %284, float undef, i32 0, i32 0, i32 undef, float %305)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = fcmp fast ogt float %307, 0.000000e+00
  br i1 %308, label %309, label %1314

; <label>:309                                     ; preds = %262
  %310 = mul nuw nsw i32 %281, 928
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = or i32 %310, 8
  %314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.f32 %314, 0
  %316 = or i32 %310, 12
  %317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 1
  %319 = or i32 %310, 20
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = or i32 %310, 24
  %323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 0
  %325 = extractvalue %dx.types.ResRet.f32 %323, 1
  %326 = extractvalue %dx.types.ResRet.f32 %323, 2
  %327 = extractvalue %dx.types.ResRet.f32 %323, 3
  %328 = add nuw nsw i32 %310, 40
  %329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = add nuw nsw i32 %310, 80
  %332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.f32 %332, 0
  %334 = add nuw nsw i32 %310, 228
  %335 = add nuw nsw i32 %310, 516
  %336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 1
  %338 = add nuw nsw i32 %310, 552
  %339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.f32 %339, 0
  %341 = extractvalue %dx.types.ResRet.f32 %339, 1
  %342 = extractvalue %dx.types.ResRet.f32 %339, 2
  %343 = add nuw nsw i32 %310, 564
  %344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.f32 %344, 0
  %346 = extractvalue %dx.types.ResRet.f32 %344, 1
  %347 = extractvalue %dx.types.ResRet.f32 %344, 2
  %348 = extractvalue %dx.types.ResRet.f32 %344, 3
  %349 = add nuw nsw i32 %310, 580
  %350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.f32 %350, 0
  %352 = extractvalue %dx.types.ResRet.f32 %350, 1
  %353 = extractvalue %dx.types.ResRet.f32 %350, 2
  %354 = extractvalue %dx.types.ResRet.f32 %350, 3
  %355 = add nuw nsw i32 %310, 596
  %356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = extractvalue %dx.types.ResRet.f32 %356, 1
  %359 = add nuw nsw i32 %310, 620
  %360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = extractvalue %dx.types.ResRet.f32 %360, 1
  %363 = add nuw nsw i32 %310, 628
  %364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = extractvalue %dx.types.ResRet.f32 %364, 2
  %368 = extractvalue %dx.types.ResRet.f32 %364, 3
  %369 = add nuw nsw i32 %310, 644
  %370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = add nuw nsw i32 %310, 648
  %373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = add nuw nsw i32 %310, 664
  %376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = extractvalue %dx.types.ResRet.f32 %376, 1
  %379 = add nuw nsw i32 %310, 696
  %380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 0
  %382 = extractvalue %dx.types.ResRet.f32 %380, 1
  %383 = add nuw nsw i32 %310, 704
  %384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = add nuw nsw i32 %310, 708
  %387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = extractvalue %dx.types.ResRet.f32 %387, 1
  %390 = add nuw nsw i32 %310, 716
  %391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = add nuw nsw i32 %310, 720
  %394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.f32 %394, 0
  %396 = extractvalue %dx.types.ResRet.f32 %394, 1
  %397 = add nuw nsw i32 %310, 732
  %398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.f32 %398, 1
  %400 = add nuw nsw i32 %310, 744
  %401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = add nuw nsw i32 %310, 748
  %404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 0
  %406 = add nuw nsw i32 %310, 752
  %407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = add nuw nsw i32 %310, 756
  %410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 0
  %412 = extractvalue %dx.types.ResRet.f32 %410, 1
  %413 = extractvalue %dx.types.ResRet.f32 %410, 2
  %414 = extractvalue %dx.types.ResRet.f32 %410, 3
  %415 = add nuw nsw i32 %310, 780
  %416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = add nuw nsw i32 %310, 792
  %420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = extractvalue %dx.types.ResRet.f32 %420, 1
  %423 = add nuw nsw i32 %310, 812
  %424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = add nuw nsw i32 %310, 816
  %427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 1
  %429 = add nuw nsw i32 %310, 852
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = add nuw nsw i32 %310, 860
  %433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.f32 %433, 0
  %435 = extractvalue %dx.types.ResRet.f32 %433, 1
  %436 = extractvalue %dx.types.ResRet.f32 %433, 2
  %437 = add nuw nsw i32 %310, 896
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = add nuw nsw i32 %310, 900
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = add nuw nsw i32 %310, 904
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = add nuw nsw i32 %310, 916
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %312, 512
  %450 = fcmp fast ogt float %307, %267
  %451 = select i1 %450, i32 %281, i32 %266
  %452 = select i1 %450, float %307, float %267
  %453 = fcmp fast ole float %41, 0x3FA4B5DCC0000000
  %454 = fmul fast float %41, 0x3FB3D07220000000
  %455 = fadd fast float %41, 0x3FAC28F5C0000000
  %456 = fmul fast float %455, 0x3FEE54EDE0000000
  %457 = call float @dx.op.unary.f32(i32 23, float %456)  ; Log(value)
  %458 = fmul fast float %457, 0x4003333340000000
  %459 = call float @dx.op.unary.f32(i32 21, float %458)  ; Exp(value)
  %460 = select i1 %453, float %454, float %459
  %461 = call float @dx.op.unary.f32(i32 7, float %460)  ; Saturate(value)
  %462 = fmul fast float %357, %254
  %463 = fadd fast float %462, %358
  %464 = call float @dx.op.unary.f32(i32 7, float %463)  ; Saturate(value)
  %465 = call float @dx.op.binary.f32(i32 35, float %461, float %464)  ; FMax(a,b)
  %466 = add i32 %442, 0
  %467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %466, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.f32 %468, 0
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 0
  %472 = extractvalue %dx.types.CBufRet.f32 %470, 1
  %473 = fadd fast float %471, %97
  %474 = fadd fast float %472, %98
  %475 = fmul fast float %97, %97
  %476 = fmul fast float %98, %98
  %477 = fadd fast float %475, %476
  %478 = fmul fast float %99, %99
  %479 = fadd fast float %477, %478
  %480 = call float @dx.op.unary.f32(i32 24, float %479)  ; Sqrt(value)
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 0
  %483 = fcmp fast ogt float %480, %482
  %484 = zext i1 %483 to i32
  %485 = extractvalue %dx.types.CBufRet.f32 %481, 1
  %486 = fcmp fast ogt float %480, %485
  %487 = zext i1 %486 to i32
  %488 = add nuw nsw i32 %487, %484
  %489 = extractvalue %dx.types.CBufRet.f32 %481, 2
  %490 = fcmp fast ogt float %480, %489
  %491 = zext i1 %490 to i32
  %492 = add nuw nsw i32 %488, %491
  %493 = icmp ult i32 %492, 3
  %494 = zext i1 %493 to i32
  %495 = shl nuw nsw i32 %492, 2
  %496 = add nuw nsw i32 %495, 48
  %497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 %496)  ; CBufferLoadLegacy(handle,regIndex)
  %498 = extractvalue %dx.types.CBufRet.f32 %497, 1
  %499 = fcmp fast ogt float %480, %498
  %500 = zext i1 %499 to i32
  %501 = or i32 %495, 1
  %502 = add nuw nsw i32 %501, 48
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 %502)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 1
  %505 = fcmp fast ogt float %480, %504
  %506 = zext i1 %505 to i32
  %507 = add nuw nsw i32 %506, %500
  %508 = or i32 %495, 2
  %509 = add nuw nsw i32 %508, 48
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 %509)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 1
  %512 = fcmp fast ogt float %480, %511
  %513 = zext i1 %512 to i32
  %514 = add nuw nsw i32 %507, %513
  %515 = add i32 %321, -1
  %516 = call i32 @dx.op.binary.i32(i32 40, i32 %514, i32 %515)  ; UMin(a,b)
  %517 = add i32 %495, %516
  %518 = call i32 @dx.op.binary.i32(i32 40, i32 %517, i32 12)  ; UMin(a,b)
  %519 = add i32 %518, 48
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 %519)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 0
  %522 = fcmp fast oge float %480, %521
  %523 = zext i1 %522 to i32
  %524 = call i32 @dx.op.binary.i32(i32 40, i32 %321, i32 %494)  ; UMin(a,b)
  %525 = call i32 @dx.op.binary.i32(i32 40, i32 %523, i32 %524)  ; UMin(a,b)
  %526 = add i32 %525, %321
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %706, label %528

; <label>:528                                     ; preds = %309
  br label %529

; <label>:529                                     ; preds = %529, %528
  %530 = phi float [ %702, %529 ], [ 0.000000e+00, %528 ]
  %531 = phi float [ %694, %529 ], [ 0.000000e+00, %528 ]
  %532 = phi float [ %695, %529 ], [ 0.000000e+00, %528 ]
  %533 = phi i32 [ %541, %529 ], [ %518, %528 ]
  %534 = phi i32 [ %703, %529 ], [ 0, %528 ]
  %535 = add i32 %534, %533
  %536 = and i32 %535, -4
  %537 = add i32 %536, %321
  %538 = icmp uge i32 %535, %537
  %539 = sub i32 4, %321
  %540 = select i1 %538, i32 %539, i32 0
  %541 = add i32 %540, %533
  %542 = add i32 %540, %535
  %543 = and i32 %542, 3
  %544 = lshr i32 %542, 2
  %545 = add i32 %542, 32
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 %545)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 0
  %548 = extractvalue %dx.types.CBufRet.f32 %546, 1
  %549 = extractvalue %dx.types.CBufRet.f32 %546, 2
  %550 = extractvalue %dx.types.CBufRet.f32 %546, 3
  %551 = fmul fast float %547, %480
  %552 = fadd fast float %551, %548
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %554 = fmul fast float %549, %480
  %555 = fadd fast float %554, %550
  %556 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  %557 = call float @dx.op.binary.f32(i32 36, float %553, float %556)  ; FMin(a,b)
  %558 = mul nuw nsw i32 %543, 72
  %559 = add nuw nsw i32 %334, %558
  %560 = add nuw nsw i32 %559, 16
  %561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  %563 = extractvalue %dx.types.ResRet.f32 %561, 1
  %564 = extractvalue %dx.types.ResRet.f32 %561, 2
  %565 = extractvalue %dx.types.ResRet.f32 %561, 3
  %566 = add nuw nsw i32 %559, 36
  %567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 0
  %569 = add nuw nsw i32 %559, 56
  %570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  %572 = fmul fast float %241, 3.906250e-03
  %573 = fmul fast float %572, %333
  %574 = fmul fast float %573, %568
  %575 = fmul fast float %574, %571
  %576 = extractvalue %dx.types.ResRet.f32 %570, 1
  %577 = fadd fast float %575, %576
  %578 = call float @dx.op.binary.f32(i32 35, float %577, float 0.000000e+00)  ; FMax(a,b)
  %579 = add nuw nsw i32 %559, 32
  %580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.f32 %580, 0
  %582 = fmul fast float %568, %236
  %583 = fmul fast float %568, %237
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %586 = add nuw nsw i32 %559, 40
  %587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.f32 %587, 0
  %589 = extractvalue %dx.types.ResRet.f32 %587, 1
  %590 = extractvalue %dx.types.ResRet.f32 %587, 2
  %591 = extractvalue %dx.types.ResRet.f32 %587, 3
  %592 = fadd fast float %585, %137
  %593 = fadd fast float %592, %590
  %594 = fmul fast float %592, %589
  %595 = call float @dx.op.unary.f32(i32 29, float %594)  ; Round_z(value)
  %596 = fmul fast float %588, %595
  %597 = fsub fast float %592, %596
  %598 = fmul fast float %593, %589
  %599 = call float @dx.op.unary.f32(i32 29, float %598)  ; Round_z(value)
  %600 = fmul fast float %599, %588
  %601 = fsub fast float %593, %600
  %602 = fmul fast float %597, %582
  %603 = fmul fast float %597, %583
  %604 = fmul fast float %601, %582
  %605 = fmul fast float %601, %583
  %606 = fsub fast float %473, %602
  %607 = fsub fast float %474, %603
  %608 = fsub fast float %473, %604
  %609 = fsub fast float %474, %605
  %610 = fsub fast float %590, %597
  %611 = call float @dx.op.unary.f32(i32 6, float %610)  ; FAbs(value)
  %612 = fmul fast float %611, %591
  %613 = call float @dx.op.unary.f32(i32 7, float %612)  ; Saturate(value)
  %614 = fmul fast float %315, 4.000000e+00
  %615 = uitofp i32 %544 to float
  %616 = fadd fast float %615, %614
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 0
  %619 = extractvalue %dx.types.CBufRet.f32 %617, 1
  %620 = extractvalue %dx.types.CBufRet.f32 %617, 2
  %621 = extractvalue %dx.types.CBufRet.f32 %617, 3
  %622 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 0
  store float %618, float* %622, align 4
  %623 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 1
  store float %619, float* %623, align 4
  %624 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 2
  store float %620, float* %624, align 4
  %625 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 3
  store float %621, float* %625, align 4
  %626 = getelementptr inbounds [4 x float], [4 x float]* %37, i32 0, i32 %544
  %627 = load float, float* %626, align 4, !tbaa !75, !noalias !79
  %628 = fmul fast float %627, %318
  %629 = fmul fast float %606, %562
  %630 = call float @dx.op.tertiary.f32(i32 46, float %563, float %607, float %629)  ; FMad(a,b,c)
  %631 = fmul fast float %606, %564
  %632 = call float @dx.op.tertiary.f32(i32 46, float %565, float %607, float %631)  ; FMad(a,b,c)
  %633 = add nuw nsw i32 %559, 8
  %634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  %636 = extractvalue %dx.types.ResRet.f32 %634, 1
  %637 = fadd fast float %635, %630
  %638 = fadd fast float %636, %632
  %639 = fmul fast float %637, %628
  %640 = fmul fast float %638, %628
  %641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = extractvalue %dx.types.ResRet.f32 %641, 1
  %644 = fmul fast float %639, %642
  %645 = fmul fast float %640, %643
  %646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %647 = extractvalue %dx.types.CBufRet.f32 %646, 2
  %648 = fadd fast float %644, %647
  %649 = fadd fast float %645, %647
  %650 = fmul fast float %608, %562
  %651 = call float @dx.op.tertiary.f32(i32 46, float %563, float %609, float %650)  ; FMad(a,b,c)
  %652 = fmul fast float %608, %564
  %653 = call float @dx.op.tertiary.f32(i32 46, float %565, float %609, float %652)  ; FMad(a,b,c)
  %654 = fadd fast float %635, %651
  %655 = fadd fast float %636, %653
  %656 = fmul fast float %654, %628
  %657 = fmul fast float %655, %628
  %658 = fmul fast float %656, %642
  %659 = fmul fast float %657, %643
  %660 = fadd fast float %658, %647
  %661 = fadd fast float %659, %647
  %662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %31, float %648, float %649, float %616, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %663 = extractvalue %dx.types.ResRet.f32 %662, 0
  %664 = extractvalue %dx.types.ResRet.f32 %662, 1
  %665 = extractvalue %dx.types.ResRet.f32 %662, 3
  %666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %31, float %660, float %661, float %616, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = extractvalue %dx.types.ResRet.f32 %666, 1
  %669 = extractvalue %dx.types.ResRet.f32 %666, 3
  %670 = fsub fast float %667, %663
  %671 = fsub fast float %668, %664
  %672 = fsub fast float %669, %665
  %673 = fmul fast float %670, %613
  %674 = fmul fast float %671, %613
  %675 = fmul fast float %672, %613
  %676 = fadd fast float %673, %663
  %677 = fadd fast float %674, %664
  %678 = fadd fast float %675, %665
  %679 = fmul fast float %676, 2.000000e+00
  %680 = fmul fast float %677, 2.000000e+00
  %681 = fadd fast float %679, -1.000000e+00
  %682 = fadd fast float %680, -1.000000e+00
  %683 = fmul fast float %681, %562
  %684 = call float @dx.op.tertiary.f32(i32 46, float %682, float %564, float %683)  ; FMad(a,b,c)
  %685 = fmul fast float %681, %563
  %686 = call float @dx.op.tertiary.f32(i32 46, float %682, float %565, float %685)  ; FMad(a,b,c)
  %687 = fmul fast float %557, %469
  %688 = fmul fast float %687, %578
  %689 = fmul fast float %688, %581
  %690 = fmul fast float %684, %689
  %691 = fmul fast float %690, %642
  %692 = fmul fast float %686, %689
  %693 = fmul fast float %692, %643
  %694 = fadd fast float %691, %531
  %695 = fadd fast float %693, %532
  %696 = add nuw nsw i32 %559, 64
  %697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.f32 %697, 0
  %699 = fmul fast float %698, %678
  %700 = extractvalue %dx.types.ResRet.f32 %697, 1
  %701 = fadd fast float %699, %700
  %702 = call float @dx.op.binary.f32(i32 35, float %530, float %701)  ; FMax(a,b)
  %703 = add nuw i32 %534, 1
  %704 = icmp eq i32 %703, %526
  br i1 %704, label %705, label %529

; <label>:705                                     ; preds = %529
  br label %706

; <label>:706                                     ; preds = %705, %309
  %707 = phi float [ 0.000000e+00, %309 ], [ %702, %705 ]
  %708 = phi float [ 0.000000e+00, %309 ], [ %694, %705 ]
  %709 = phi float [ 0.000000e+00, %309 ], [ %695, %705 ]
  %710 = call float @dx.op.dot3.f32(i32 55, float %708, float %709, float 1.000000e+00, float %708, float %709, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %711 = call float @dx.op.unary.f32(i32 25, float %710)  ; Rsqrt(value)
  %712 = fmul fast float %707, %361
  %713 = fadd fast float %712, %362
  %714 = call float @dx.op.unary.f32(i32 7, float %713)  ; Saturate(value)
  %715 = fmul fast float %708, %307
  %716 = fmul fast float %715, %711
  %717 = fmul fast float %709, %307
  %718 = fmul fast float %717, %711
  %719 = fadd fast float %716, %263
  %720 = fadd fast float %718, %264
  %721 = fadd fast float %714, %465
  %722 = icmp ne i32 %449, 0
  %723 = icmp ne i32 %431, 0
  %724 = and i1 %722, %723
  br i1 %724, label %725, label %793

; <label>:725                                     ; preds = %706
  %726 = add i32 %431, 0
  %727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %726, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 1
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %733 = fadd fast float %731, %97
  %734 = fadd fast float %732, %98
  %735 = fmul fast float %733, %346
  %736 = fmul fast float %734, %346
  %737 = fmul fast float %729, %347
  %738 = fmul fast float %729, %348
  %739 = fadd fast float %735, %737
  %740 = fadd fast float %736, %738
  %741 = fmul fast float %733, %352
  %742 = fmul fast float %734, %352
  %743 = fmul fast float %729, %353
  %744 = fmul fast float %729, %354
  %745 = fadd fast float %741, %743
  %746 = fadd fast float %742, %744
  %747 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %748 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %727, %dx.types.Handle %747, float %739, float %740, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 0
  %750 = extractvalue %dx.types.ResRet.f32 %748, 1
  %751 = extractvalue %dx.types.ResRet.f32 %748, 2
  %752 = extractvalue %dx.types.ResRet.f32 %748, 3
  %753 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %727, %dx.types.Handle %747, float %745, float %746, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = extractvalue %dx.types.ResRet.f32 %753, 1
  %756 = extractvalue %dx.types.ResRet.f32 %753, 2
  %757 = extractvalue %dx.types.ResRet.f32 %753, 3
  %758 = fmul fast float %749, %434
  %759 = fadd fast float %758, %435
  %760 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %761 = fadd fast float %750, %752
  %762 = fmul fast float %761, %436
  %763 = fsub fast float %762, %436
  %764 = fsub fast float %750, %752
  %765 = fmul fast float %764, %436
  %766 = fmul fast float %754, %434
  %767 = fadd fast float %766, %435
  %768 = call float @dx.op.unary.f32(i32 7, float %767)  ; Saturate(value)
  %769 = fadd fast float %755, %757
  %770 = fmul fast float %769, %436
  %771 = fsub fast float %770, %436
  %772 = fsub fast float %755, %757
  %773 = fmul fast float %772, %436
  %774 = fmul fast float %763, %345
  %775 = fmul fast float %765, %345
  %776 = fmul fast float %771, %351
  %777 = fmul fast float %773, %351
  %778 = fadd fast float %776, %774
  %779 = fadd fast float %777, %775
  %780 = fmul fast float %751, %345
  %781 = fmul fast float %756, %351
  %782 = fadd fast float %781, %780
  %783 = fmul fast float %760, %345
  %784 = fmul fast float %768, %351
  %785 = fadd fast float %784, %783
  %786 = fmul fast float %778, %307
  %787 = fmul fast float %779, %307
  %788 = fadd fast float %786, %719
  %789 = fadd fast float %787, %720
  %790 = fmul fast float %782, %307
  %791 = fadd fast float %790, 1.000000e+00
  %792 = fmul fast float %785, %307
  br label %793

; <label>:793                                     ; preds = %725, %706
  %794 = phi float [ %788, %725 ], [ %719, %706 ]
  %795 = phi float [ %789, %725 ], [ %720, %706 ]
  %796 = phi float [ %791, %725 ], [ 1.000000e+00, %706 ]
  %797 = phi float [ %792, %725 ], [ %330, %706 ]
  %798 = fmul fast float %388, %241
  %799 = fadd fast float %798, %389
  %800 = call float @dx.op.binary.f32(i32 35, float %799, float 0.000000e+00)  ; FMax(a,b)
  %801 = fmul fast float %800, %381
  %802 = fadd fast float %801, %382
  %803 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %804 = fmul fast float %803, %721
  %805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.f32 %805, 1
  %807 = fcmp fast oge float %804, %806
  %808 = and i32 %312, 514
  %809 = icmp eq i32 %808, 2
  %810 = and i1 %809, %807
  br i1 %810, label %811, label %944

; <label>:811                                     ; preds = %793
  %812 = add i32 %159, 0
  %813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %812, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %814 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %813, i32 0)  ; GetDimensions(handle,mipLevel)
  %815 = extractvalue %dx.types.Dimensions %814, 0
  %816 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %815)  ; FirstbitLo(value)
  %817 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.i32 %817, 1
  %819 = sub nsw i32 %818, %816
  %820 = sitofp i32 %819 to float
  %821 = fsub fast float %342, %820
  %822 = call float @dx.op.binary.f32(i32 35, float %821, float 0.000000e+00)  ; FMax(a,b)
  %823 = fmul fast float %337, %166
  %824 = fmul fast float %337, %167
  %825 = fmul fast float %340, %42
  %826 = fmul fast float %340, %43
  %827 = call float @dx.op.unary.f32(i32 22, float %825)  ; Frc(value)
  %828 = call float @dx.op.unary.f32(i32 22, float %826)  ; Frc(value)
  %829 = fmul fast float %827, 2.000000e+00
  %830 = fmul fast float %828, 2.000000e+00
  %831 = fadd fast float %829, -1.000000e+00
  %832 = fadd fast float %830, -1.000000e+00
  %833 = call float @dx.op.unary.f32(i32 6, float %831)  ; FAbs(value)
  %834 = call float @dx.op.unary.f32(i32 6, float %832)  ; FAbs(value)
  %835 = fsub fast float 1.000000e+00, %833
  %836 = fmul fast float %835, %834
  %837 = fsub fast float %835, %836
  %838 = getelementptr [4 x float], [4 x float]* %50, i32 0, i32 0
  store float %837, float* %838, align 4, !tbaa !75, !noalias !84
  %839 = fmul fast float %834, %833
  %840 = fsub fast float %833, %839
  %841 = getelementptr [4 x float], [4 x float]* %50, i32 0, i32 1
  store float %840, float* %841, align 4, !tbaa !75, !noalias !84
  %842 = getelementptr [4 x float], [4 x float]* %50, i32 0, i32 2
  store float %836, float* %842, align 4, !tbaa !75, !noalias !84
  %843 = getelementptr [4 x float], [4 x float]* %50, i32 0, i32 3
  store float %839, float* %843, align 4, !tbaa !75, !noalias !84
  br label %844

; <label>:844                                     ; preds = %929, %811
  %845 = phi float [ 0.000000e+00, %811 ], [ %930, %929 ]
  %846 = phi float [ 0.000000e+00, %811 ], [ %931, %929 ]
  %847 = phi float [ 0.000000e+00, %811 ], [ %932, %929 ]
  %848 = phi i32 [ 0, %811 ], [ %933, %929 ]
  %849 = mul i32 %848, 2
  %850 = add i32 0, %849
  %851 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %850
  %852 = load float, float* %851, align 4
  %853 = mul i32 %848, 2
  %854 = add i32 1, %853
  %855 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %854
  %856 = load float, float* %855, align 4
  %857 = fmul fast float %852, 5.000000e-01
  %858 = fmul fast float %856, 5.000000e-01
  %859 = fsub fast float 1.000000e+00, %852
  %860 = fsub fast float 1.000000e+00, %856
  %861 = fmul fast float %859, 5.000000e-01
  %862 = fmul fast float %860, 5.000000e-01
  %863 = fadd fast float %857, %825
  %864 = fadd fast float %858, %826
  %865 = call float @dx.op.unary.f32(i32 27, float %863)  ; Round_ni(value)
  %866 = call float @dx.op.unary.f32(i32 27, float %864)  ; Round_ni(value)
  %867 = fadd fast float %865, %861
  %868 = fadd fast float %866, %862
  %869 = fmul fast float %867, %341
  %870 = fmul fast float %868, %341
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 0
  %873 = fmul fast float %869, %872
  %874 = fmul fast float %870, %872
  %875 = extractvalue %dx.types.CBufRet.f32 %871, 1
  %876 = fadd fast float %873, %875
  %877 = fadd fast float %874, %875
  %878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %813, %dx.types.Handle %33, float %876, float %877, float %155, float undef, i32 0, i32 0, i32 undef, float %822)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = extractvalue %dx.types.ResRet.f32 %878, 1
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 3
  %883 = fmul fast float %882, 2.000000e+00
  %884 = fmul fast float %883, %879
  %885 = fmul fast float %883, %880
  %886 = fsub fast float %884, %882
  %887 = fsub fast float %885, %882
  %888 = fmul fast float %886, %886
  %889 = fmul fast float %887, %887
  %890 = fadd fast float %888, %889
  %891 = call float @dx.op.unary.f32(i32 24, float %890)  ; Sqrt(value)
  %892 = fcmp fast ogt float %891, 0.000000e+00
  %893 = fdiv fast float 1.000000e+00, %891
  %894 = fmul fast float %886, %893
  %895 = fmul fast float %887, %893
  %896 = select i1 %892, float %894, float 0.000000e+00
  %897 = select i1 %892, float %895, float 0.000000e+00
  %898 = and i32 %312, 2
  %899 = icmp ne i32 %898, 0
  %900 = fcmp fast ogt float %721, 0.000000e+00
  %901 = and i1 %899, %900
  br i1 %901, label %902, label %929

; <label>:902                                     ; preds = %844
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 1
  %905 = fmul fast float %385, %337
  %906 = fmul fast float %905, %891
  %907 = fsub fast float -0.000000e+00, %896
  %908 = fmul fast float %897, %823
  %909 = call float @dx.op.tertiary.f32(i32 46, float %907, float %824, float %908)  ; FMad(a,b,c)
  %910 = fmul fast float %896, %823
  %911 = call float @dx.op.tertiary.f32(i32 46, float %897, float %824, float %910)  ; FMad(a,b,c)
  %912 = fmul fast float %906, %904
  %913 = fsub fast float %911, %912
  %914 = fmul fast float %909, %377
  %915 = fmul fast float %913, %378
  %916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %917 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %467, %dx.types.Handle %916, float %914, float %915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 0
  %919 = fmul fast float %801, %918
  %920 = fadd fast float %919, %382
  %921 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %922 = getelementptr [4 x float], [4 x float]* %50, i32 0, i32 %848
  %923 = load float, float* %922, align 4, !tbaa !75, !noalias !84
  %924 = fmul fast float %923, %921
  %925 = fadd fast float %924, %845
  %926 = fmul fast float %924, %371
  %927 = fadd fast float %926, %846
  %928 = fadd fast float %924, %847
  br label %929

; <label>:929                                     ; preds = %902, %844
  %930 = phi float [ %925, %902 ], [ %845, %844 ]
  %931 = phi float [ %927, %902 ], [ %846, %844 ]
  %932 = phi float [ %928, %902 ], [ %847, %844 ]
  %933 = add nuw nsw i32 %848, 1
  %934 = icmp eq i32 %933, 4
  br i1 %934, label %935, label %844, !llvm.loop !90

; <label>:935                                     ; preds = %929
  %936 = fmul fast float %932, %721
  %937 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %936)  ; FMax(a,b)
  %938 = fadd fast float %930, -1.000000e+00
  %939 = fmul fast float %932, %938
  %940 = fadd fast float %939, 1.000000e+00
  %941 = fsub fast float %931, %330
  %942 = fmul fast float %932, %941
  %943 = fadd fast float %942, %330
  br label %944

; <label>:944                                     ; preds = %935, %793
  %945 = phi float [ %937, %935 ], [ 0.000000e+00, %793 ]
  %946 = phi float [ %940, %935 ], [ 1.000000e+00, %793 ]
  %947 = phi float [ %943, %935 ], [ %330, %793 ]
  %948 = fmul fast float %421, %241
  %949 = fadd fast float %948, %422
  %950 = call float @dx.op.binary.f32(i32 35, float %949, float 0.000000e+00)  ; FMax(a,b)
  %951 = fmul fast float %950, %417
  %952 = fadd fast float %951, %418
  %953 = call float @dx.op.unary.f32(i32 7, float %952)  ; Saturate(value)
  %954 = fmul fast float %953, %721
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 1
  %957 = fcmp fast oge float %954, %956
  %958 = and i32 %312, 4
  %959 = icmp ne i32 %958, 0
  %960 = and i1 %959, %957
  br i1 %960, label %961, label %1137

; <label>:961                                     ; preds = %944
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 0
  %964 = extractvalue %dx.types.CBufRet.f32 %962, 1
  %965 = fsub fast float %97, %166
  %966 = fadd fast float %965, %963
  %967 = fsub fast float %98, %167
  %968 = fadd fast float %967, %964
  %969 = fmul fast float %966, %392
  %970 = fmul fast float %968, %392
  %971 = fadd fast float %969, %166
  %972 = fadd fast float %970, %167
  %973 = add i32 %448, 0
  %974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %973, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %975 = fmul fast float %971, %399
  %976 = fmul fast float %972, %399
  %977 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %978 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %974, %dx.types.Handle %977, float %975, float %976, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %979 = extractvalue %dx.types.ResRet.f32 %978, 0
  %980 = extractvalue %dx.types.ResRet.f32 %978, 1
  %981 = extractvalue %dx.types.ResRet.f32 %978, 2
  %982 = fmul fast float %979, 2.000000e+00
  %983 = fmul fast float %980, 2.000000e+00
  %984 = fadd fast float %982, -1.000000e+00
  %985 = fadd fast float %983, -1.000000e+00
  %986 = fmul fast float %981, %395
  %987 = fmul fast float %986, %408
  %988 = fmul fast float %987, %984
  %989 = fmul fast float %987, %985
  %990 = fsub fast float %236, %988
  %991 = fsub fast float %237, %989
  %992 = fmul fast float %990, %405
  %993 = fmul fast float %991, %405
  %994 = fadd fast float %992, %988
  %995 = fadd fast float %993, %989
  %996 = fmul fast float %994, %408
  %997 = fmul fast float %995, %408
  %998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.f32 %998, 1
  %1000 = fmul fast float %408, %137
  %1001 = fadd fast float %999, %1000
  %1002 = fadd fast float %1001, %413
  %1003 = fmul fast float %1001, %412
  %1004 = call float @dx.op.unary.f32(i32 29, float %1003)  ; Round_z(value)
  %1005 = fmul fast float %1004, %411
  %1006 = fsub fast float %1001, %1005
  %1007 = fmul fast float %1002, %412
  %1008 = call float @dx.op.unary.f32(i32 29, float %1007)  ; Round_z(value)
  %1009 = fmul fast float %1008, %411
  %1010 = fsub fast float %1002, %1009
  %1011 = fmul fast float %996, %1006
  %1012 = fmul fast float %997, %1006
  %1013 = fmul fast float %996, %1010
  %1014 = fmul fast float %997, %1010
  %1015 = fsub fast float %971, %1011
  %1016 = fsub fast float %972, %1012
  %1017 = fsub fast float %971, %1013
  %1018 = fsub fast float %972, %1014
  %1019 = fsub fast float %413, %1006
  %1020 = call float @dx.op.unary.f32(i32 6, float %1019)  ; FAbs(value)
  %1021 = fmul fast float %1020, %414
  %1022 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  %1023 = fmul fast float %1015, %396
  %1024 = fmul fast float %1016, %396
  %1025 = fmul fast float %1017, %396
  %1026 = fmul fast float %1018, %396
  %1027 = fcmp fast ogt float %402, 0.000000e+00
  br i1 %1027, label %1028, label %1115

; <label>:1028                                    ; preds = %961
  %1029 = fmul fast float %402, %137
  %1030 = fmul fast float %1029, 5.000000e-01
  %1031 = fadd fast float %1030, 5.000000e-01
  %1032 = call float @dx.op.unary.f32(i32 22, float %1031)  ; Frc(value)
  %1033 = call float @dx.op.unary.f32(i32 22, float %1030)  ; Frc(value)
  %1034 = call float @dx.op.unary.f32(i32 27, float %1031)  ; Round_ni(value)
  %1035 = call float @dx.op.unary.f32(i32 27, float %1030)  ; Round_ni(value)
  %1036 = fmul fast float %1034, 2.000000e+00
  %1037 = fmul fast float %1035, 2.000000e+00
  %1038 = fadd fast float %1037, 1.000000e+00
  %1039 = fsub fast float 1.000000e+00, %1032
  %1040 = fsub fast float 1.000000e+00, %1033
  %1041 = call float @dx.op.binary.f32(i32 36, float %1032, float %1039)  ; FMin(a,b)
  %1042 = call float @dx.op.binary.f32(i32 36, float %1033, float %1040)  ; FMin(a,b)
  %1043 = fmul fast float %1041, 2.000000e+00
  %1044 = fmul fast float %1042, 2.000000e+00
  %1045 = call float @dx.op.dot3.f32(i32 55, float %1036, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1046 = call float @dx.op.dot3.f32(i32 55, float %1036, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1047 = call float @dx.op.dot3.f32(i32 55, float %1036, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1048 = call float @dx.op.unary.f32(i32 13, float %1045)  ; Sin(value)
  %1049 = call float @dx.op.unary.f32(i32 13, float %1046)  ; Sin(value)
  %1050 = call float @dx.op.unary.f32(i32 13, float %1047)  ; Sin(value)
  %1051 = fmul fast float %1048, 0x40E55DD180000000
  %1052 = fmul fast float %1049, 0x40E55DD180000000
  %1053 = fmul fast float %1050, 0x40E55DD180000000
  %1054 = call float @dx.op.unary.f32(i32 22, float %1051)  ; Frc(value)
  %1055 = call float @dx.op.unary.f32(i32 22, float %1052)  ; Frc(value)
  %1056 = call float @dx.op.unary.f32(i32 22, float %1053)  ; Frc(value)
  %1057 = fmul fast float %1054, 0x401921FB60000000
  %1058 = call float @dx.op.unary.f32(i32 12, float %1057)  ; Cos(value)
  %1059 = call float @dx.op.unary.f32(i32 13, float %1057)  ; Sin(value)
  %1060 = fsub fast float -0.000000e+00, %1059
  %1061 = call float @dx.op.dot3.f32(i32 55, float %1038, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1062 = call float @dx.op.dot3.f32(i32 55, float %1038, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1063 = call float @dx.op.dot3.f32(i32 55, float %1038, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1064 = call float @dx.op.unary.f32(i32 13, float %1061)  ; Sin(value)
  %1065 = call float @dx.op.unary.f32(i32 13, float %1062)  ; Sin(value)
  %1066 = call float @dx.op.unary.f32(i32 13, float %1063)  ; Sin(value)
  %1067 = fmul fast float %1064, 0x40E55DD180000000
  %1068 = fmul fast float %1065, 0x40E55DD180000000
  %1069 = fmul fast float %1066, 0x40E55DD180000000
  %1070 = call float @dx.op.unary.f32(i32 22, float %1067)  ; Frc(value)
  %1071 = call float @dx.op.unary.f32(i32 22, float %1068)  ; Frc(value)
  %1072 = call float @dx.op.unary.f32(i32 22, float %1069)  ; Frc(value)
  %1073 = fmul fast float %1070, 0x401921FB60000000
  %1074 = call float @dx.op.unary.f32(i32 12, float %1073)  ; Cos(value)
  %1075 = call float @dx.op.unary.f32(i32 13, float %1073)  ; Sin(value)
  %1076 = fsub fast float -0.000000e+00, %1075
  %1077 = fmul fast float %1058, %1023
  %1078 = call float @dx.op.tertiary.f32(i32 46, float %1024, float %1060, float %1077)  ; FMad(a,b,c)
  %1079 = fmul fast float %1059, %1023
  %1080 = call float @dx.op.tertiary.f32(i32 46, float %1024, float %1058, float %1079)  ; FMad(a,b,c)
  %1081 = fadd fast float %1078, %1055
  %1082 = fadd fast float %1080, %1056
  %1083 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %467, %dx.types.Handle %977, float %1081, float %1082, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = fmul fast float %1084, %1043
  %1086 = fmul fast float %1074, %1023
  %1087 = call float @dx.op.tertiary.f32(i32 46, float %1024, float %1076, float %1086)  ; FMad(a,b,c)
  %1088 = fmul fast float %1075, %1023
  %1089 = call float @dx.op.tertiary.f32(i32 46, float %1024, float %1074, float %1088)  ; FMad(a,b,c)
  %1090 = fadd fast float %1087, %1071
  %1091 = fadd fast float %1089, %1072
  %1092 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %467, %dx.types.Handle %977, float %1090, float %1091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = fmul fast float %1093, %1044
  %1095 = fadd fast float %1094, %1085
  %1096 = fmul fast float %1058, %1025
  %1097 = call float @dx.op.tertiary.f32(i32 46, float %1026, float %1060, float %1096)  ; FMad(a,b,c)
  %1098 = fmul fast float %1059, %1025
  %1099 = call float @dx.op.tertiary.f32(i32 46, float %1026, float %1058, float %1098)  ; FMad(a,b,c)
  %1100 = fadd fast float %1097, %1055
  %1101 = fadd fast float %1099, %1056
  %1102 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %467, %dx.types.Handle %977, float %1100, float %1101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = fmul fast float %1103, %1043
  %1105 = fmul fast float %1074, %1025
  %1106 = call float @dx.op.tertiary.f32(i32 46, float %1026, float %1076, float %1105)  ; FMad(a,b,c)
  %1107 = fmul fast float %1075, %1025
  %1108 = call float @dx.op.tertiary.f32(i32 46, float %1026, float %1074, float %1107)  ; FMad(a,b,c)
  %1109 = fadd fast float %1106, %1071
  %1110 = fadd fast float %1108, %1072
  %1111 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %467, %dx.types.Handle %977, float %1109, float %1110, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = fmul fast float %1112, %1044
  %1114 = fadd fast float %1113, %1104
  br label %1120

; <label>:1115                                    ; preds = %961
  %1116 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %467, %dx.types.Handle %977, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %467, %dx.types.Handle %977, float %1025, float %1026, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  br label %1120

; <label>:1120                                    ; preds = %1115, %1028
  %1121 = phi float [ %1095, %1028 ], [ %1117, %1115 ]
  %1122 = phi float [ %1114, %1028 ], [ %1119, %1115 ]
  %1123 = fsub fast float %1122, %1121
  %1124 = fmul fast float %1123, %1022
  %1125 = fadd fast float %1124, %1121
  %1126 = fmul fast float %951, %1125
  %1127 = fadd fast float %1126, %418
  %1128 = call float @dx.op.unary.f32(i32 7, float %1127)  ; Saturate(value)
  %1129 = fsub fast float 1.000000e+00, %946
  %1130 = fmul fast float %1128, %1129
  %1131 = fadd fast float %1130, %946
  %1132 = fsub fast float %371, %947
  %1133 = fmul fast float %1128, %1132
  %1134 = fadd fast float %1133, %947
  %1135 = fmul fast float %1128, %721
  %1136 = call float @dx.op.binary.f32(i32 35, float %945, float %1135)  ; FMax(a,b)
  br label %1137

; <label>:1137                                    ; preds = %1120, %944
  %1138 = phi float [ %1136, %1120 ], [ %945, %944 ]
  %1139 = phi float [ %1131, %1120 ], [ %946, %944 ]
  %1140 = phi float [ %1134, %1120 ], [ %947, %944 ]
  %1141 = and i32 %312, 16
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1209, label %1143

; <label>:1143                                    ; preds = %1137
  %1144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.CBufRet.f32 %1144, 1
  %1147 = fadd fast float %1145, %97
  %1148 = fadd fast float %1146, %98
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.CBufRet.f32 %1149, 1
  %1152 = fsub fast float %1147, %1150
  %1153 = fsub fast float %1148, %1151
  %1154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1155 = extractvalue %dx.types.CBufRet.f32 %1154, 2
  %1156 = fmul fast float %1152, %1155
  %1157 = fmul fast float %1153, %1155
  %1158 = fadd fast float %1156, 5.000000e-01
  %1159 = fadd fast float %1157, 5.000000e-01
  %1160 = fcmp fast olt float %1158, 0.000000e+00
  %1161 = fcmp fast olt float %1159, 0.000000e+00
  %1162 = or i1 %1160, %1161
  %1163 = fcmp fast oge float %1158, 1.000000e+00
  %1164 = fcmp fast oge float %1159, 1.000000e+00
  %1165 = or i1 %1163, %1164
  %1166 = or i1 %1162, %1165
  br i1 %1166, label %1200, label %1167

; <label>:1167                                    ; preds = %1143
  %1168 = extractvalue %dx.types.CBufRet.f32 %1144, 2
  %1169 = fadd fast float %1168, %99
  %1170 = fmul fast float %1155, %1147
  %1171 = fmul fast float %1155, %1148
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 2
  %1174 = fsub fast float %1169, %1173
  %1175 = extractvalue %dx.types.CBufRet.f32 %1172, 1
  %1176 = fmul fast float %1174, %1175
  %1177 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  %1178 = call float @dx.op.binary.f32(i32 36, float %1159, float %1177)  ; FMin(a,b)
  %1179 = call float @dx.op.binary.f32(i32 36, float %1158, float %1178)  ; FMin(a,b)
  %1180 = call float @dx.op.binary.f32(i32 35, float %1159, float %1177)  ; FMax(a,b)
  %1181 = call float @dx.op.binary.f32(i32 35, float %1158, float %1180)  ; FMax(a,b)
  %1182 = fsub fast float 1.000000e+00, %1181
  %1183 = call float @dx.op.binary.f32(i32 36, float %1179, float %1182)  ; FMin(a,b)
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 3
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 1
  %1188 = call float @dx.op.binary.f32(i32 35, float %1187, float %1185)  ; FMax(a,b)
  %1189 = fsub fast float %1188, %1187
  %1190 = fsub fast float %1183, %1187
  %1191 = fdiv fast float %1190, %1189
  %1192 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  %1193 = fmul fast float %1192, 2.000000e+00
  %1194 = fsub fast float 3.000000e+00, %1193
  %1195 = fmul fast float %1192, %1192
  %1196 = fmul fast float %1195, %1194
  %1197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %1170, float %1171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1198 = extractvalue %dx.types.ResRet.f32 %1197, 0
  %1199 = fmul fast float %1196, %1198
  br label %1200

; <label>:1200                                    ; preds = %1167, %1143
  %1201 = phi float [ %1199, %1167 ], [ 0.000000e+00, %1143 ]
  %1202 = fmul fast float %428, %166
  %1203 = fmul fast float %428, %167
  %1204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %467, %dx.types.Handle %1204, float %1202, float %1203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = fmul fast float %1206, %1201
  %1208 = call float @dx.op.binary.f32(i32 35, float %1138, float %1207)  ; FMax(a,b)
  br label %1209

; <label>:1209                                    ; preds = %1200, %1137
  %1210 = phi float [ %1208, %1200 ], [ %1138, %1137 ]
  %1211 = and i32 %312, 8
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1229, label %1213

; <label>:1213                                    ; preds = %1209
  %1214 = fadd fast float %425, 1.000000e+00
  %1215 = fmul fast float %721, %1214
  %1216 = fsub fast float %1215, %425
  %1217 = fsub fast float %1214, %1216
  %1218 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1219 = fsub fast float 1.000000e+00, %1215
  %1220 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1221 = fsub fast float %1218, %1220
  %1222 = fsub fast float %1210, %1220
  %1223 = fdiv fast float %1222, %1221
  %1224 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  %1225 = fmul fast float %1224, 2.000000e+00
  %1226 = fsub fast float 3.000000e+00, %1225
  %1227 = fmul fast float %1224, %1224
  %1228 = fmul fast float %1227, %1226
  br label %1229

; <label>:1229                                    ; preds = %1213, %1209
  %1230 = phi float [ %1228, %1213 ], [ %1210, %1209 ]
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 3
  %1233 = fmul fast float %1232, %1230
  %1234 = fmul fast float %1233, %307
  %1235 = fadd fast float %1234, %265
  %1236 = call float @dx.op.unary.f32(i32 7, float %1235)  ; Saturate(value)
  %1237 = and i32 %312, 32
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1255, label %1239

; <label>:1239                                    ; preds = %1229
  %1240 = add i32 %445, 0
  %1241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1240, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1241, %dx.types.Handle %32, float %1233, float %374, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.ResRet.f32 %1242, 1
  %1245 = extractvalue %dx.types.ResRet.f32 %1242, 2
  %1246 = extractvalue %dx.types.ResRet.f32 %1242, 3
  %1247 = and i32 %439, 255
  %1248 = uitofp i32 %1247 to float
  %1249 = lshr i32 %439, 8
  %1250 = and i32 %1249, 255
  %1251 = uitofp i32 %1250 to float
  %1252 = fmul fast float %1246, %1248
  %1253 = fadd fast float %1252, %1251
  %1254 = fmul fast float %1253, 0x3F70101000000000
  br label %1255

; <label>:1255                                    ; preds = %1239, %1229
  %1256 = phi float [ %1243, %1239 ], [ %365, %1229 ]
  %1257 = phi float [ %1244, %1239 ], [ %366, %1229 ]
  %1258 = phi float [ %1245, %1239 ], [ %367, %1229 ]
  %1259 = phi float [ %1254, %1239 ], [ %368, %1229 ]
  %1260 = fsub fast float %1256, %324
  %1261 = fsub fast float %1257, %325
  %1262 = fsub fast float %1258, %326
  %1263 = fmul fast float %1260, %1233
  %1264 = fmul fast float %1261, %1233
  %1265 = fmul fast float %1262, %1233
  %1266 = fadd fast float %1263, %324
  %1267 = fadd fast float %1264, %325
  %1268 = fadd fast float %1265, %326
  %1269 = fsub fast float %1259, %327
  %1270 = fmul fast float %1269, %1233
  %1271 = fadd fast float %1270, %327
  %1272 = fsub fast float %1140, %797
  %1273 = fmul fast float %1233, %1272
  %1274 = fadd fast float %1273, %797
  %1275 = fsub fast float %1139, %796
  %1276 = fmul fast float %1233, %1275
  %1277 = fadd fast float %1276, %796
  %1278 = and i32 %269, 65535
  %1279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1278)  ; LegacyF16ToF32(value)
  %1280 = lshr i32 %269, 16
  %1281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1280)  ; LegacyF16ToF32(value)
  %1282 = and i32 %270, 65535
  %1283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1282)  ; LegacyF16ToF32(value)
  %1284 = lshr i32 %270, 16
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = fmul fast float %1266, %307
  %1287 = fmul fast float %1267, %307
  %1288 = fmul fast float %1268, %307
  %1289 = fmul fast float %1271, %307
  %1290 = fadd fast float %1279, %1286
  %1291 = fadd fast float %1281, %1287
  %1292 = fadd fast float %1283, %1288
  %1293 = fadd fast float %1285, %1289
  %1294 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1290)  ; LegacyF32ToF16(value)
  %1295 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1291)  ; LegacyF32ToF16(value)
  %1296 = shl i32 %1295, 16
  %1297 = or i32 %1296, %1294
  %1298 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1292)  ; LegacyF32ToF16(value)
  %1299 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1293)  ; LegacyF32ToF16(value)
  %1300 = shl i32 %1299, 16
  %1301 = or i32 %1300, %1298
  %1302 = and i32 %271, 65535
  %1303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1302)  ; LegacyF16ToF32(value)
  %1304 = lshr i32 %271, 16
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = fmul fast float %1277, %307
  %1307 = fmul fast float %1274, %307
  %1308 = fadd fast float %1303, %1306
  %1309 = fadd fast float %1305, %1307
  %1310 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1308)  ; LegacyF32ToF16(value)
  %1311 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1309)  ; LegacyF32ToF16(value)
  %1312 = shl i32 %1311, 16
  %1313 = or i32 %1312, %1310
  br label %1314

; <label>:1314                                    ; preds = %1255, %262
  %1315 = phi float [ %794, %1255 ], [ %263, %262 ]
  %1316 = phi float [ %795, %1255 ], [ %264, %262 ]
  %1317 = phi float [ %1236, %1255 ], [ %265, %262 ]
  %1318 = phi i32 [ %451, %1255 ], [ %266, %262 ]
  %1319 = phi float [ %452, %1255 ], [ %267, %262 ]
  %1320 = phi i32 [ %1297, %1255 ], [ %269, %262 ]
  %1321 = phi i32 [ %1301, %1255 ], [ %270, %262 ]
  %1322 = phi i32 [ %1313, %1255 ], [ %271, %262 ]
  %1323 = icmp eq i32 %276, 0
  br i1 %1323, label %1324, label %262

; <label>:1324                                    ; preds = %1314
  br label %1325

; <label>:1325                                    ; preds = %1324, %0
  %1326 = phi float [ 0.000000e+00, %0 ], [ %1315, %1324 ]
  %1327 = phi float [ 0.000000e+00, %0 ], [ %1316, %1324 ]
  %1328 = phi float [ 0.000000e+00, %0 ], [ %1317, %1324 ]
  %1329 = phi i32 [ -1, %0 ], [ %1318, %1324 ]
  %1330 = phi i32 [ %124, %0 ], [ %1320, %1324 ]
  %1331 = phi i32 [ %124, %0 ], [ %1321, %1324 ]
  %1332 = phi i32 [ %124, %0 ], [ %1322, %1324 ]
  %1333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1334 = extractvalue %dx.types.CBufRet.f32 %1333, 0
  %1335 = extractvalue %dx.types.CBufRet.f32 %1333, 1
  %1336 = extractvalue %dx.types.CBufRet.f32 %1333, 2
  %1337 = fadd fast float %1334, %97
  %1338 = fadd fast float %1335, %98
  %1339 = fadd fast float %1336, %99
  %1340 = call float @dx.op.unary.f32(i32 83, float %1337)  ; DerivCoarseX(value)
  %1341 = call float @dx.op.unary.f32(i32 83, float %1338)  ; DerivCoarseX(value)
  %1342 = call float @dx.op.unary.f32(i32 83, float %1339)  ; DerivCoarseX(value)
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 2
  %1345 = fmul fast float %1344, %1340
  %1346 = fmul fast float %1344, %1341
  %1347 = fmul fast float %1344, %1342
  %1348 = call float @dx.op.unary.f32(i32 84, float %1337)  ; DerivCoarseY(value)
  %1349 = call float @dx.op.unary.f32(i32 84, float %1338)  ; DerivCoarseY(value)
  %1350 = call float @dx.op.unary.f32(i32 84, float %1339)  ; DerivCoarseY(value)
  %1351 = fmul fast float %1344, %1348
  %1352 = fmul fast float %1344, %1349
  %1353 = fmul fast float %1344, %1350
  %1354 = fmul fast float %1353, %1346
  %1355 = fmul fast float %1352, %1347
  %1356 = fsub fast float %1354, %1355
  %1357 = fmul fast float %1351, %1347
  %1358 = fmul fast float %1353, %1345
  %1359 = fsub fast float %1357, %1358
  %1360 = fmul fast float %1352, %1345
  %1361 = fmul fast float %1351, %1346
  %1362 = fsub fast float %1360, %1361
  %1363 = fmul fast float %1356, %1356
  %1364 = fmul fast float %1359, %1359
  %1365 = fadd fast float %1363, %1364
  %1366 = fmul fast float %1362, %1362
  %1367 = fadd fast float %1365, %1366
  %1368 = call float @dx.op.unary.f32(i32 24, float %1367)  ; Sqrt(value)
  %1369 = icmp eq i32 %1329, -1
  br i1 %1369, label %1460, label %1370

; <label>:1370                                    ; preds = %1325
  %1371 = mul i32 %1329, 928
  %1372 = add i32 %1371, 832
  %1373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.f32 %1373, 0
  %1375 = add i32 %1371, 836
  %1376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 0
  %1380 = fmul fast float %1379, %1377
  %1381 = extractvalue %dx.types.CBufRet.f32 %1378, 1
  %1382 = fadd fast float %1380, %1381
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 210)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 0
  %1385 = fadd fast float %1384, %1374
  %1386 = fcmp fast ogt float %1382, 0.000000e+00
  %1387 = fcmp fast ogt float %1328, %1385
  %1388 = and i1 %1386, %1387
  br i1 %1388, label %1389, label %1460

; <label>:1389                                    ; preds = %1370
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 3
  %1392 = fmul fast float %1337, 7.000000e+00
  %1393 = fadd fast float %1392, 9.175040e+05
  %1394 = fmul fast float %1338, 9.000000e+00
  %1395 = fadd fast float %1394, 1.179648e+06
  %1396 = fmul fast float %1391, 1.370000e+02
  %1397 = bitcast float %1393 to i32
  %1398 = bitcast float %1395 to i32
  %1399 = bitcast float %1396 to i32
  %1400 = shl i32 %1398, 17
  %1401 = xor i32 %1400, %1397
  %1402 = xor i32 %1401, %1399
  %1403 = xor i32 %1402, 61
  %1404 = lshr i32 %1402, 16
  %1405 = xor i32 %1403, %1404
  %1406 = mul i32 %1405, 9
  %1407 = lshr i32 %1406, 4
  %1408 = xor i32 %1407, %1406
  %1409 = mul i32 %1408, 668265261
  %1410 = lshr i32 %1409, 15
  %1411 = xor i32 %1410, %1409
  %1412 = uitofp i32 %1411 to float
  %1413 = fmul fast float %1412, 0x3DF0000000000000
  %1414 = fmul fast float %1382, %1368
  %1415 = fcmp fast ugt float %1413, %1414
  br i1 %1415, label %1460, label %1416

; <label>:1416                                    ; preds = %1389
  %1417 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 6)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1418 = add i32 %1417, 6
  %1419 = icmp ugt i32 %1418, 4095
  br i1 %1419, label %1420, label %1423

; <label>:1420                                    ; preds = %1416
  %1421 = icmp ult i32 %1417, 4096
  br i1 %1421, label %1422, label %1423

; <label>:1422                                    ; preds = %1420
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1417, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1423

; <label>:1423                                    ; preds = %1422, %1420, %1416
  %1424 = phi i32 [ %1417, %1416 ], [ 0, %1422 ], [ 0, %1420 ]
  %1425 = icmp eq i32 %1424, 0
  br i1 %1425, label %1460, label %1426

; <label>:1426                                    ; preds = %1423
  %1427 = fsub fast float -0.000000e+00, %173
  %1428 = fsub fast float %1427, %216
  %1429 = fadd fast float %1428, %1339
  %1430 = shl i32 %1329, 16
  %1431 = or i32 %1430, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1424, i32 0, i32 %1431, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1432 = bitcast float %1429 to i32
  %1433 = add i32 %1424, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1433, i32 0, i32 %1432, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1434 = bitcast float %1337 to i32
  %1435 = add i32 %1424, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1435, i32 0, i32 %1434, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1436 = bitcast float %1338 to i32
  %1437 = add i32 %1424, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1437, i32 0, i32 %1436, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1438 = bitcast float %1339 to i32
  %1439 = add i32 %1424, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1439, i32 0, i32 %1438, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1440 = fadd fast float %59, 1.000000e+00
  %1441 = fadd fast float %61, 1.000000e+00
  %1442 = fadd fast float %63, 1.000000e+00
  %1443 = fmul fast float %1440, 5.000000e-01
  %1444 = fmul fast float %1441, 5.000000e-01
  %1445 = fmul fast float %1442, 5.000000e-01
  %1446 = call float @dx.op.unary.f32(i32 7, float %1443)  ; Saturate(value)
  %1447 = call float @dx.op.unary.f32(i32 7, float %1444)  ; Saturate(value)
  %1448 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1449 = fmul fast float %1446, 1.023000e+03
  %1450 = fmul fast float %1447, 1.023000e+03
  %1451 = fmul fast float %1448, 1.023000e+03
  %1452 = fptoui float %1449 to i32
  %1453 = fptoui float %1450 to i32
  %1454 = fptoui float %1451 to i32
  %1455 = shl i32 %1453, 10
  %1456 = or i32 %1455, %1452
  %1457 = shl i32 %1454, 20
  %1458 = or i32 %1456, %1457
  %1459 = add i32 %1424, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1459, i32 0, i32 %1458, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1460

; <label>:1460                                    ; preds = %1426, %1423, %1389, %1370, %1325
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 2
  %1463 = fmul fast float %1462, 0x3FE3C6EF40000000
  %1464 = frem fast float %53, 2.560000e+02
  %1465 = frem fast float %54, 2.560000e+02
  %1466 = fptoui float %1464 to i32
  %1467 = fptoui float %1465 to i32
  %1468 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %1466, i32 %1467, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  %1470 = fadd fast float %1469, %1463
  %1471 = call float @dx.op.unary.f32(i32 22, float %1470)  ; Frc(value)
  %1472 = fcmp fast ogt float %63, 0.000000e+00
  %1473 = fcmp fast olt float %63, 0.000000e+00
  %1474 = zext i1 %1472 to i32
  %1475 = zext i1 %1473 to i32
  %1476 = sub nsw i32 %1474, %1475
  %1477 = sitofp i32 %1476 to float
  %1478 = fadd fast float %1477, %63
  %1479 = fdiv fast float -1.000000e+00, %1478
  %1480 = fmul fast float %59, %61
  %1481 = fmul fast float %1480, %1479
  %1482 = fmul fast float %59, %59
  %1483 = fmul fast float %1482, %1477
  %1484 = fmul fast float %1483, %1479
  %1485 = fadd fast float %1484, 1.000000e+00
  %1486 = fmul fast float %1481, %1477
  %1487 = fmul fast float %59, %1477
  %1488 = fsub fast float -0.000000e+00, %1487
  %1489 = fmul fast float %61, %61
  %1490 = fmul fast float %1489, %1479
  %1491 = fadd fast float %1490, %1477
  %1492 = fsub fast float -0.000000e+00, %61
  %1493 = and i32 %1330, 65535
  %1494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1493)  ; LegacyF16ToF32(value)
  %1495 = lshr i32 %1330, 16
  %1496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1495)  ; LegacyF16ToF32(value)
  %1497 = and i32 %1331, 65535
  %1498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1497)  ; LegacyF16ToF32(value)
  %1499 = lshr i32 %1331, 16
  %1500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1499)  ; LegacyF16ToF32(value)
  %1501 = and i32 %1332, 65535
  %1502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1501)  ; LegacyF16ToF32(value)
  %1503 = lshr i32 %1332, 16
  %1504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1503)  ; LegacyF16ToF32(value)
  %1505 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  %1506 = call float @dx.op.unary.f32(i32 83, float %97)  ; DerivCoarseX(value)
  %1507 = call float @dx.op.unary.f32(i32 83, float %98)  ; DerivCoarseX(value)
  %1508 = call float @dx.op.unary.f32(i32 83, float %99)  ; DerivCoarseX(value)
  %1509 = call float @dx.op.unary.f32(i32 84, float %97)  ; DerivCoarseY(value)
  %1510 = call float @dx.op.unary.f32(i32 84, float %98)  ; DerivCoarseY(value)
  %1511 = call float @dx.op.unary.f32(i32 84, float %99)  ; DerivCoarseY(value)
  %1512 = fadd fast float %1506, %97
  %1513 = fadd fast float %1507, %98
  %1514 = fadd fast float %1508, %99
  %1515 = fadd fast float %1509, %97
  %1516 = fadd fast float %1510, %98
  %1517 = fadd fast float %1511, %99
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 0
  %1520 = extractvalue %dx.types.CBufRet.f32 %1518, 1
  %1521 = extractvalue %dx.types.CBufRet.f32 %1518, 2
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 2
  %1524 = extractvalue %dx.types.CBufRet.f32 %1522, 3
  %1525 = fmul fast float %1519, %53
  %1526 = fmul fast float %1525, %1523
  %1527 = fmul fast float %1520, %54
  %1528 = fmul fast float %1527, %1524
  %1529 = fptoui float %1526 to i32
  %1530 = fptoui float %1528 to i32
  %1531 = fadd fast float %1519, -1.000000e+00
  %1532 = fadd fast float %1520, -1.000000e+00
  %1533 = fptoui float %1531 to i32
  %1534 = fptoui float %1532 to i32
  %1535 = call i32 @dx.op.binary.i32(i32 40, i32 %1529, i32 %1533)  ; UMin(a,b)
  %1536 = call i32 @dx.op.binary.i32(i32 40, i32 %1530, i32 %1534)  ; UMin(a,b)
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 2
  %1539 = extractvalue %dx.types.CBufRet.f32 %1537, 3
  %1540 = fmul fast float %1538, %49
  %1541 = fsub fast float %1540, %1539
  %1542 = fadd fast float %1521, -1.000000e+00
  %1543 = call float @dx.op.binary.f32(i32 36, float %1541, float %1542)  ; FMin(a,b)
  %1544 = fptoui float %1543 to i32
  %1545 = fptoui float %1519 to i32
  %1546 = fptoui float %1520 to i32
  %1547 = mul i32 %1544, %1546
  %1548 = add i32 %1547, %1536
  %1549 = mul i32 %1548, %1545
  %1550 = add i32 %1549, %1535
  %1551 = shl i32 %1550, 2
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = and i32 %1553, 1023
  %1555 = lshr i32 %1553, 10
  %1556 = icmp eq i32 %1554, 0
  br i1 %1556, label %1946, label %1557

; <label>:1557                                    ; preds = %1460
  %1558 = and i32 %1553, 1023
  br label %1559

; <label>:1559                                    ; preds = %1678, %1557
  %1560 = phi float [ %1679, %1678 ], [ 0.000000e+00, %1557 ]
  %1561 = phi float [ %1680, %1678 ], [ 0.000000e+00, %1557 ]
  %1562 = phi float [ %1681, %1678 ], [ 0.000000e+00, %1557 ]
  %1563 = phi float [ %1682, %1678 ], [ %1326, %1557 ]
  %1564 = phi float [ %1683, %1678 ], [ %1327, %1557 ]
  %1565 = phi float [ %1684, %1678 ], [ %1502, %1557 ]
  %1566 = phi float [ %1685, %1678 ], [ %1505, %1557 ]
  %1567 = phi float [ %1686, %1678 ], [ %1500, %1557 ]
  %1568 = phi float [ %1687, %1678 ], [ %1494, %1557 ]
  %1569 = phi float [ %1688, %1678 ], [ %1496, %1557 ]
  %1570 = phi float [ %1689, %1678 ], [ %1498, %1557 ]
  %1571 = phi i32 [ %1627, %1678 ], [ 0, %1557 ]
  %1572 = add nuw nsw i32 %1571, %1555
  %1573 = shl i32 %1572, 2
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1573, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = shl i32 %1575, 8
  %1577 = or i32 %1576, 48
  %1578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.f32 %1578, 0
  %1580 = extractvalue %dx.types.ResRet.f32 %1578, 1
  %1581 = extractvalue %dx.types.ResRet.f32 %1578, 2
  %1582 = extractvalue %dx.types.ResRet.f32 %1578, 3
  %1583 = or i32 %1576, 64
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1583, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = extractvalue %dx.types.ResRet.i32 %1584, 1
  %1587 = or i32 %1576, 80
  %1588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1587, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.f32 %1588, 2
  %1590 = extractvalue %dx.types.ResRet.f32 %1588, 3
  %1591 = or i32 %1576, 96
  %1592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1591, i32 undef)  ; BufferLoad(srv,index,wot)
  %1593 = extractvalue %dx.types.ResRet.f32 %1592, 0
  %1594 = extractvalue %dx.types.ResRet.f32 %1592, 1
  %1595 = extractvalue %dx.types.ResRet.f32 %1592, 2
  %1596 = extractvalue %dx.types.ResRet.f32 %1592, 3
  %1597 = or i32 %1576, 112
  %1598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1597, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.f32 %1598, 2
  %1600 = or i32 %1576, 128
  %1601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1600, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.f32 %1601, 0
  %1603 = extractvalue %dx.types.ResRet.f32 %1601, 1
  %1604 = extractvalue %dx.types.ResRet.f32 %1601, 2
  %1605 = extractvalue %dx.types.ResRet.f32 %1601, 3
  %1606 = or i32 %1576, 144
  %1607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1606, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.f32 %1607, 0
  %1609 = extractvalue %dx.types.ResRet.f32 %1607, 1
  %1610 = extractvalue %dx.types.ResRet.f32 %1607, 2
  %1611 = extractvalue %dx.types.ResRet.f32 %1607, 3
  %1612 = or i32 %1576, 160
  %1613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1612, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.f32 %1613, 0
  %1615 = extractvalue %dx.types.ResRet.f32 %1613, 1
  %1616 = extractvalue %dx.types.ResRet.f32 %1613, 2
  %1617 = or i32 %1576, 192
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1617, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = or i32 %1576, 208
  %1621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1620, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.f32 %1621, 0
  %1623 = or i32 %1576, 248
  %1624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1623, i32 undef)  ; BufferLoad(srv,index,wot)
  %1625 = extractvalue %dx.types.ResRet.f32 %1624, 0
  %1626 = extractvalue %dx.types.ResRet.f32 %1624, 1
  %1627 = add nuw nsw i32 %1571, 1
  %1628 = bitcast float %1582 to i32
  %1629 = and i32 %1628, 512
  %1630 = icmp ne i32 %1629, 0
  %1631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1576, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.f32 %1631, 0
  %1633 = extractvalue %dx.types.ResRet.f32 %1631, 1
  %1634 = extractvalue %dx.types.ResRet.f32 %1631, 2
  %1635 = extractvalue %dx.types.ResRet.f32 %1631, 3
  %1636 = call float @dx.op.dot4.f32(i32 56, float %1632, float %1633, float %1634, float %1635, float %97, float %98, float %99, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1637 = or i32 %1576, 16
  %1638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1637, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.f32 %1638, 0
  %1640 = extractvalue %dx.types.ResRet.f32 %1638, 1
  %1641 = extractvalue %dx.types.ResRet.f32 %1638, 2
  %1642 = extractvalue %dx.types.ResRet.f32 %1638, 3
  %1643 = call float @dx.op.dot4.f32(i32 56, float %1639, float %1640, float %1641, float %1642, float %97, float %98, float %99, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1644 = or i32 %1576, 32
  %1645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1644, i32 undef)  ; BufferLoad(srv,index,wot)
  %1646 = extractvalue %dx.types.ResRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.ResRet.f32 %1645, 1
  %1648 = extractvalue %dx.types.ResRet.f32 %1645, 2
  %1649 = extractvalue %dx.types.ResRet.f32 %1645, 3
  %1650 = call float @dx.op.dot4.f32(i32 56, float %1646, float %1647, float %1648, float %1649, float %97, float %98, float %99, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1651 = call float @dx.op.unary.f32(i32 27, float %1636)  ; Round_ni(value)
  %1652 = call float @dx.op.unary.f32(i32 6, float %1651)  ; FAbs(value)
  %1653 = call float @dx.op.unary.f32(i32 27, float %1643)  ; Round_ni(value)
  %1654 = call float @dx.op.unary.f32(i32 6, float %1653)  ; FAbs(value)
  %1655 = call float @dx.op.unary.f32(i32 6, float %1650)  ; FAbs(value)
  %1656 = call float @dx.op.unary.f32(i32 27, float %1655)  ; Round_ni(value)
  %1657 = fadd fast float %1654, %1652
  %1658 = fadd fast float %1657, %1656
  %1659 = fcmp fast oeq float %1658, 0.000000e+00
  %1660 = call float @dx.op.dot4.f32(i32 56, float %1632, float %1633, float %1634, float %1635, float %1512, float %1513, float %1514, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1661 = call float @dx.op.dot4.f32(i32 56, float %1639, float %1640, float %1641, float %1642, float %1512, float %1513, float %1514, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1662 = call float @dx.op.dot4.f32(i32 56, float %1632, float %1633, float %1634, float %1635, float %1515, float %1516, float %1517, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1663 = call float @dx.op.dot4.f32(i32 56, float %1639, float %1640, float %1641, float %1642, float %1515, float %1516, float %1517, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1664 = fsub fast float %1660, %1636
  %1665 = fsub fast float %1662, %1636
  %1666 = fsub fast float %1661, %1643
  %1667 = fsub fast float %1663, %1643
  %1668 = call float @dx.op.dot3.f32(i32 55, float %1579, float %1580, float %1581, float %59, float %61, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %1669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1669, 2
  %1671 = call float @dx.op.unary.f32(i32 6, float %1668)  ; FAbs(value)
  %1672 = fadd fast float %1671, %1670
  %1673 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1674 = extractvalue %dx.types.CBufRet.f32 %1669, 0
  %1675 = fcmp fast ogt float %1673, %1674
  %1676 = and i1 %1659, %1675
  %1677 = and i1 %1630, %1676
  br i1 %1677, label %1691, label %1678

; <label>:1678                                    ; preds = %1932, %1772, %1691, %1559
  %1679 = phi float [ %1560, %1691 ], [ %1560, %1772 ], [ %1942, %1932 ], [ %1560, %1559 ]
  %1680 = phi float [ %1561, %1691 ], [ %1561, %1772 ], [ %1943, %1932 ], [ %1561, %1559 ]
  %1681 = phi float [ %1562, %1691 ], [ %1562, %1772 ], [ %1944, %1932 ], [ %1562, %1559 ]
  %1682 = phi float [ %1563, %1691 ], [ %1563, %1772 ], [ %1906, %1932 ], [ %1563, %1559 ]
  %1683 = phi float [ %1564, %1691 ], [ %1564, %1772 ], [ %1907, %1932 ], [ %1564, %1559 ]
  %1684 = phi float [ %1565, %1691 ], [ %1565, %1772 ], [ %1901, %1932 ], [ %1565, %1559 ]
  %1685 = phi float [ %1566, %1691 ], [ %1566, %1772 ], [ %1898, %1932 ], [ %1566, %1559 ]
  %1686 = phi float [ %1567, %1691 ], [ %1567, %1772 ], [ %1895, %1932 ], [ %1567, %1559 ]
  %1687 = phi float [ %1568, %1691 ], [ %1568, %1772 ], [ %1890, %1932 ], [ %1568, %1559 ]
  %1688 = phi float [ %1569, %1691 ], [ %1569, %1772 ], [ %1891, %1932 ], [ %1569, %1559 ]
  %1689 = phi float [ %1570, %1691 ], [ %1570, %1772 ], [ %1892, %1932 ], [ %1570, %1559 ]
  %1690 = icmp eq i32 %1627, %1558
  br i1 %1690, label %1945, label %1559

; <label>:1691                                    ; preds = %1559
  %1692 = extractvalue %dx.types.ResRet.f32 %1598, 3
  %1693 = extractvalue %dx.types.ResRet.f32 %1598, 1
  %1694 = extractvalue %dx.types.ResRet.f32 %1598, 0
  %1695 = extractvalue %dx.types.ResRet.f32 %1588, 1
  %1696 = extractvalue %dx.types.ResRet.f32 %1588, 0
  %1697 = extractvalue %dx.types.ResRet.i32 %1584, 3
  %1698 = extractvalue %dx.types.ResRet.i32 %1584, 2
  %1699 = add i32 %1697, 0
  %1700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1699, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1701 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1702 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1700, %dx.types.Handle %1701, float %1636, float %1643, float undef, float undef, i32 0, i32 0, i32 undef, float %1664, float %1666, float undef, float %1665, float %1667, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1703 = extractvalue %dx.types.ResRet.f32 %1702, 0
  %1704 = fmul fast float %1703, %1696
  %1705 = fadd fast float %1704, %1695
  %1706 = call float @dx.op.unary.f32(i32 7, float %1705)  ; Saturate(value)
  %1707 = fmul fast float %1636, %1593
  %1708 = call float @dx.op.tertiary.f32(i32 46, float %1594, float %1643, float %1707)  ; FMad(a,b,c)
  %1709 = fadd fast float %1708, %1694
  %1710 = fmul fast float %1636, %1595
  %1711 = call float @dx.op.tertiary.f32(i32 46, float %1596, float %1643, float %1710)  ; FMad(a,b,c)
  %1712 = fadd fast float %1711, %1693
  %1713 = fmul fast float %1664, %1593
  %1714 = call float @dx.op.tertiary.f32(i32 46, float %1594, float %1666, float %1713)  ; FMad(a,b,c)
  %1715 = fmul fast float %1664, %1595
  %1716 = call float @dx.op.tertiary.f32(i32 46, float %1596, float %1666, float %1715)  ; FMad(a,b,c)
  %1717 = fmul fast float %1665, %1593
  %1718 = call float @dx.op.tertiary.f32(i32 46, float %1594, float %1667, float %1717)  ; FMad(a,b,c)
  %1719 = fmul fast float %1665, %1595
  %1720 = call float @dx.op.tertiary.f32(i32 46, float %1596, float %1667, float %1719)  ; FMad(a,b,c)
  %1721 = add i32 %1698, 0
  %1722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1721, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1723 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1722, %dx.types.Handle %1701, float %1709, float %1712, float undef, float undef, i32 0, i32 0, i32 undef, float %1714, float %1716, float undef, float %1718, float %1720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1724 = extractvalue %dx.types.ResRet.f32 %1723, 0
  %1725 = and i32 %1628, 1024
  %1726 = icmp ne i32 %1725, 0
  %1727 = fcmp fast ogt float %1724, 0x3FE0101020000000
  %1728 = uitofp i1 %1727 to float
  %1729 = select i1 %1726, float %1728, float %1724
  %1730 = and i32 %1628, 8192
  %1731 = icmp ne i32 %1730, 0
  %1732 = select i1 %1731, float %1692, float 1.000000e+00
  %1733 = fmul fast float %1636, 2.000000e+00
  %1734 = fadd fast float %1733, -1.000000e+00
  %1735 = call float @dx.op.unary.f32(i32 6, float %1734)  ; FAbs(value)
  %1736 = fmul fast float %1735, %1625
  %1737 = fsub fast float %1736, %1625
  %1738 = call float @dx.op.unary.f32(i32 7, float %1737)  ; Saturate(value)
  %1739 = fmul fast float %1643, 2.000000e+00
  %1740 = fadd fast float %1739, -1.000000e+00
  %1741 = call float @dx.op.unary.f32(i32 6, float %1740)  ; FAbs(value)
  %1742 = fmul fast float %1741, %1626
  %1743 = fsub fast float %1742, %1626
  %1744 = call float @dx.op.unary.f32(i32 7, float %1743)  ; Saturate(value)
  %1745 = fmul fast float %1655, %1589
  %1746 = fsub fast float %1745, %1589
  %1747 = call float @dx.op.unary.f32(i32 7, float %1746)  ; Saturate(value)
  %1748 = fmul fast float %1706, %1732
  %1749 = fmul fast float %1748, %1703
  %1750 = fmul fast float %1749, %1738
  %1751 = fmul fast float %1750, %1729
  %1752 = fmul fast float %1751, %1744
  %1753 = fmul fast float %1752, %1747
  %1754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.f32 %1754, 1
  %1756 = extractvalue %dx.types.CBufRet.f32 %1754, 0
  %1757 = fsub fast float %1673, %1756
  %1758 = fmul fast float %1757, %1755
  %1759 = call float @dx.op.unary.f32(i32 7, float %1758)  ; Saturate(value)
  %1760 = fmul fast float %1753, %1590
  %1761 = fadd fast float %1753, %1590
  %1762 = fmul fast float %1761, %1599
  %1763 = fsub fast float %1762, %1599
  %1764 = call float @dx.op.unary.f32(i32 7, float %1763)  ; Saturate(value)
  %1765 = and i32 %1628, 128
  %1766 = icmp ne i32 %1765, 0
  %1767 = select i1 %1766, float %1764, float %1760
  %1768 = fmul fast float %1767, %1759
  %1769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1770 = extractvalue %dx.types.CBufRet.f32 %1769, 0
  %1771 = fcmp fast ugt float %1768, %1770
  br i1 %1771, label %1772, label %1678

; <label>:1772                                    ; preds = %1691
  br i1 %1731, label %1678, label %1773

; <label>:1773                                    ; preds = %1772
  %1774 = and i32 %1628, 4
  %1775 = and i32 %1628, 8
  %1776 = add i32 %1585, 0
  %1777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1776, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1779 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1777, %dx.types.Handle %1778, float %1709, float %1712, float undef, float undef, i32 0, i32 0, i32 undef, float %1714, float %1716, float undef, float %1718, float %1720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1780 = extractvalue %dx.types.ResRet.f32 %1779, 0
  %1781 = extractvalue %dx.types.ResRet.f32 %1779, 1
  %1782 = extractvalue %dx.types.ResRet.f32 %1779, 2
  %1783 = extractvalue %dx.types.ResRet.f32 %1779, 3
  %1784 = bitcast float %1611 to i32
  %1785 = and i32 %1784, 255
  %1786 = uitofp i32 %1785 to float
  %1787 = lshr i32 %1784, 8
  %1788 = and i32 %1787, 255
  %1789 = uitofp i32 %1788 to float
  %1790 = fmul fast float %1783, %1786
  %1791 = fadd fast float %1790, %1789
  %1792 = fmul fast float %1791, 0x3F70101000000000
  %1793 = add i32 %1586, 0
  %1794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1793, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1795 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1794, %dx.types.Handle %1778, float %1709, float %1712, float undef, float undef, i32 0, i32 0, i32 undef, float %1714, float %1716, float undef, float %1718, float %1720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1796 = extractvalue %dx.types.ResRet.f32 %1795, 0
  %1797 = extractvalue %dx.types.ResRet.f32 %1795, 1
  %1798 = extractvalue %dx.types.ResRet.f32 %1795, 2
  %1799 = extractvalue %dx.types.ResRet.f32 %1795, 3
  %1800 = bitcast float %1605 to i32
  %1801 = and i32 %1800, 255
  %1802 = uitofp i32 %1801 to float
  %1803 = lshr i32 %1800, 8
  %1804 = and i32 %1803, 255
  %1805 = uitofp i32 %1804 to float
  %1806 = lshr i32 %1800, 16
  %1807 = and i32 %1806, 255
  %1808 = uitofp i32 %1807 to float
  %1809 = fmul fast float %1808, 0x3F70101000000000
  %1810 = fmul fast float %1796, %1802
  %1811 = fadd fast float %1810, %1805
  %1812 = fmul fast float %1811, 0x3F70101000000000
  %1813 = fadd fast float %1797, -5.000000e-01
  %1814 = fadd fast float %1799, -5.000000e-01
  %1815 = fmul fast float %1813, %1809
  %1816 = fmul fast float %1814, %1809
  %1817 = fadd fast float %1815, 5.000000e-01
  %1818 = fadd fast float %1816, 5.000000e-01
  %1819 = fmul fast float %1780, %1614
  %1820 = fmul fast float %1781, %1615
  %1821 = fmul fast float %1782, %1616
  %1822 = fmul fast float %1817, 2.000000e+00
  %1823 = fadd fast float %1822, -1.000000e+00
  %1824 = fmul fast float %1818, 2.000000e+00
  %1825 = fadd fast float %1824, -1.000000e+00
  %1826 = fadd fast float %1823, %1825
  %1827 = fmul fast float %1826, 5.000000e-01
  %1828 = fsub fast float %1823, %1825
  %1829 = fmul fast float %1828, 5.000000e-01
  %1830 = call float @dx.op.unary.f32(i32 6, float %1827)  ; FAbs(value)
  %1831 = fsub fast float 1.000000e+00, %1830
  %1832 = call float @dx.op.unary.f32(i32 6, float %1829)  ; FAbs(value)
  %1833 = fsub fast float %1831, %1832
  %1834 = call float @dx.op.dot3.f32(i32 55, float %1827, float %1829, float %1833, float %1827, float %1829, float %1833)  ; Dot3(ax,ay,az,bx,by,bz)
  %1835 = call float @dx.op.unary.f32(i32 25, float %1834)  ; Rsqrt(value)
  %1836 = fmul fast float %1827, %1835
  %1837 = fmul fast float %1829, %1835
  %1838 = fmul fast float %1835, %1833
  %1839 = fmul fast float %1838, %1579
  %1840 = fmul fast float %1838, %1580
  %1841 = fmul fast float %1838, %1581
  %1842 = fmul fast float %1836, %1602
  %1843 = fmul fast float %1836, %1603
  %1844 = fmul fast float %1836, %1604
  %1845 = fadd fast float %1842, %1839
  %1846 = fadd fast float %1843, %1840
  %1847 = fadd fast float %1844, %1841
  %1848 = fmul fast float %1837, %1608
  %1849 = fmul fast float %1837, %1609
  %1850 = fmul fast float %1837, %1610
  %1851 = fadd fast float %1845, %1848
  %1852 = fadd fast float %1846, %1849
  %1853 = fadd fast float %1847, %1850
  %1854 = call float @dx.op.dot3.f32(i32 55, float %1851, float %1852, float %1853, float %1851, float %1852, float %1853)  ; Dot3(ax,ay,az,bx,by,bz)
  %1855 = call float @dx.op.unary.f32(i32 25, float %1854)  ; Rsqrt(value)
  %1856 = fmul fast float %1851, %1855
  %1857 = fmul fast float %1852, %1855
  %1858 = fmul fast float %1853, %1855
  %1859 = fcmp fast ogt float %1668, %1674
  %1860 = fsub fast float -0.000000e+00, %1856
  %1861 = fsub fast float -0.000000e+00, %1857
  %1862 = fsub fast float -0.000000e+00, %1858
  %1863 = select i1 %1859, float %1856, float %1860
  %1864 = select i1 %1859, float %1857, float %1861
  %1865 = select i1 %1859, float %1858, float %1862
  %1866 = fmul fast float %1863, %1485
  %1867 = call float @dx.op.tertiary.f32(i32 46, float %1864, float %1486, float %1866)  ; FMad(a,b,c)
  %1868 = call float @dx.op.tertiary.f32(i32 46, float %1865, float %1488, float %1867)  ; FMad(a,b,c)
  %1869 = fmul fast float %1863, %1481
  %1870 = call float @dx.op.tertiary.f32(i32 46, float %1864, float %1491, float %1869)  ; FMad(a,b,c)
  %1871 = call float @dx.op.tertiary.f32(i32 46, float %1865, float %1492, float %1870)  ; FMad(a,b,c)
  %1872 = icmp ne i32 %1775, 0
  %1873 = select i1 %1872, float 1.000000e+00, float 0.000000e+00
  %1874 = fmul fast float %1768, %1873
  %1875 = and i32 %1628, 1
  %1876 = icmp ne i32 %1875, 0
  %1877 = fadd fast float %1868, %1563
  %1878 = fadd fast float %1871, %1564
  %1879 = select i1 %1876, float %1877, float %1868
  %1880 = select i1 %1876, float %1878, float %1871
  %1881 = icmp ne i32 %1774, 0
  %1882 = select i1 %1881, float 1.000000e+00, float 0.000000e+00
  %1883 = fmul fast float %1768, %1882
  %1884 = fsub fast float %1819, %1568
  %1885 = fsub fast float %1820, %1569
  %1886 = fsub fast float %1821, %1570
  %1887 = fmul fast float %1884, %1883
  %1888 = fmul fast float %1885, %1883
  %1889 = fmul fast float %1886, %1883
  %1890 = fadd fast float %1887, %1568
  %1891 = fadd fast float %1888, %1569
  %1892 = fadd fast float %1889, %1570
  %1893 = fsub fast float %1792, %1567
  %1894 = fmul fast float %1893, %1883
  %1895 = fadd fast float %1894, %1567
  %1896 = fsub fast float %1812, %1566
  %1897 = fmul fast float %1896, %1874
  %1898 = fadd fast float %1897, %1566
  %1899 = fsub fast float %1798, %1565
  %1900 = fmul fast float %1899, %1874
  %1901 = fadd fast float %1900, %1565
  %1902 = fsub fast float %1879, %1563
  %1903 = fsub fast float %1880, %1564
  %1904 = fmul fast float %1902, %1874
  %1905 = fmul fast float %1903, %1874
  %1906 = fadd fast float %1904, %1563
  %1907 = fadd fast float %1905, %1564
  %1908 = and i32 %1628, 16
  %1909 = icmp eq i32 %1908, 0
  br i1 %1909, label %1932, label %1910

; <label>:1910                                    ; preds = %1773
  %1911 = bitcast float %1622 to i32
  %1912 = add i32 %1619, 0
  %1913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1912, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1914 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1913, %dx.types.Handle %1778, float %1709, float %1712, float undef, float undef, i32 0, i32 0, i32 undef, float %1714, float %1716, float undef, float %1718, float %1720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1915 = extractvalue %dx.types.ResRet.f32 %1914, 0
  %1916 = extractvalue %dx.types.ResRet.f32 %1914, 1
  %1917 = extractvalue %dx.types.ResRet.f32 %1914, 2
  %1918 = and i32 %1911, 65535
  %1919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1918)  ; LegacyF16ToF32(value)
  %1920 = fmul fast float %1915, %1614
  %1921 = fmul fast float %1916, %1615
  %1922 = fmul fast float %1917, %1616
  %1923 = and i32 %1628, 16384
  %1924 = icmp ne i32 %1923, 0
  %1925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1926 = extractvalue %dx.types.CBufRet.f32 %1925, 0
  %1927 = select i1 %1924, float %1926, float 1.000000e+00
  %1928 = fmul fast float %1927, %1919
  %1929 = fmul fast float %1920, %1928
  %1930 = fmul fast float %1921, %1928
  %1931 = fmul fast float %1922, %1928
  br label %1932

; <label>:1932                                    ; preds = %1910, %1773
  %1933 = phi float [ %1929, %1910 ], [ 0.000000e+00, %1773 ]
  %1934 = phi float [ %1930, %1910 ], [ 0.000000e+00, %1773 ]
  %1935 = phi float [ %1931, %1910 ], [ 0.000000e+00, %1773 ]
  %1936 = fsub fast float %1933, %1560
  %1937 = fsub fast float %1934, %1561
  %1938 = fsub fast float %1935, %1562
  %1939 = fmul fast float %1936, %1768
  %1940 = fmul fast float %1937, %1768
  %1941 = fmul fast float %1938, %1768
  %1942 = fadd fast float %1939, %1560
  %1943 = fadd fast float %1940, %1561
  %1944 = fadd fast float %1941, %1562
  br label %1678

; <label>:1945                                    ; preds = %1678
  br label %1946

; <label>:1946                                    ; preds = %1945, %1460
  %1947 = phi float [ 0.000000e+00, %1460 ], [ %1679, %1945 ]
  %1948 = phi float [ 0.000000e+00, %1460 ], [ %1680, %1945 ]
  %1949 = phi float [ 0.000000e+00, %1460 ], [ %1681, %1945 ]
  %1950 = phi float [ %1326, %1460 ], [ %1682, %1945 ]
  %1951 = phi float [ %1327, %1460 ], [ %1683, %1945 ]
  %1952 = phi float [ %1502, %1460 ], [ %1684, %1945 ]
  %1953 = phi float [ %1505, %1460 ], [ %1685, %1945 ]
  %1954 = phi float [ %1500, %1460 ], [ %1686, %1945 ]
  %1955 = phi float [ %1494, %1460 ], [ %1687, %1945 ]
  %1956 = phi float [ %1496, %1460 ], [ %1688, %1945 ]
  %1957 = phi float [ %1498, %1460 ], [ %1689, %1945 ]
  %1958 = call float @dx.op.dot2.f32(i32 54, float %1950, float %1951, float %1950, float %1951)  ; Dot2(ax,ay,bx,by)
  %1959 = fmul fast float %1958, 0x3FE3333340000000
  %1960 = fsub fast float 1.000000e+00, %1959
  %1961 = call float @dx.op.dot3.f32(i32 55, float %1950, float %1951, float %1960, float %1950, float %1951, float %1960)  ; Dot3(ax,ay,az,bx,by,bz)
  %1962 = call float @dx.op.unary.f32(i32 25, float %1961)  ; Rsqrt(value)
  %1963 = fmul fast float %1962, %1950
  %1964 = fmul fast float %1962, %1951
  %1965 = fmul fast float %1960, %1962
  %1966 = fmul fast float %1965, %59
  %1967 = fmul fast float %1965, %61
  %1968 = fmul fast float %1965, %63
  %1969 = fmul fast float %1963, %1485
  %1970 = fmul fast float %1963, %1486
  %1971 = fmul fast float %1963, %1488
  %1972 = fadd fast float %1966, %1969
  %1973 = fadd fast float %1967, %1970
  %1974 = fadd fast float %1968, %1971
  %1975 = fmul fast float %1964, %1481
  %1976 = fmul fast float %1964, %1491
  %1977 = fmul fast float %1964, %1492
  %1978 = fadd fast float %1972, %1975
  %1979 = fadd fast float %1973, %1976
  %1980 = fadd fast float %1974, %1977
  %1981 = call float @dx.op.dot3.f32(i32 55, float %1978, float %1979, float %1980, float %1978, float %1979, float %1980)  ; Dot3(ax,ay,az,bx,by,bz)
  %1982 = call float @dx.op.unary.f32(i32 25, float %1981)  ; Rsqrt(value)
  %1983 = fmul fast float %1978, %1982
  %1984 = fmul fast float %1979, %1982
  %1985 = fmul fast float %1980, %1982
  %1986 = fadd fast float %1954, 0xBFB99999A0000000
  %1987 = call float @dx.op.unary.f32(i32 7, float %1986)  ; Saturate(value)
  %1988 = fmul fast float %1987, 0x3FF1C71C80000000
  %1989 = call float @dx.op.binary.f32(i32 36, float %1954, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1990 = fsub fast float 1.000000e+00, %1988
  %1991 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1992 = fmul fast float %1991, %1955
  %1993 = fmul fast float %1991, %1956
  %1994 = fmul fast float %1991, %1957
  %1995 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1996 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1997 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1998 = fmul fast float %1988, %1955
  %1999 = fmul fast float %1988, %1956
  %2000 = fmul fast float %1988, %1957
  %2001 = fadd fast float %1998, %1989
  %2002 = fadd fast float %1999, %1989
  %2003 = fadd fast float %2000, %1989
  %2004 = call float @dx.op.unary.f32(i32 7, float %2001)  ; Saturate(value)
  %2005 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2006 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  %2007 = fmul fast float %2005, 0x401CF23780000000
  %2008 = fadd fast float %2007, 0x3FF32641C0000000
  %2009 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %2010 = call float @dx.op.unary.f32(i32 25, float %2009)  ; Rsqrt(value)
  %2011 = fmul fast float %2010, %97
  %2012 = fmul fast float %2010, %98
  %2013 = fmul fast float %2010, %99
  %2014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2015 = extractvalue %dx.types.CBufRet.f32 %2014, 0
  %2016 = fdiv fast float 1.000000e+00, %2008
  %2017 = select i1 %39, float %2016, float %2008
  %2018 = fadd fast float %2017, -1.000000e+00
  %2019 = fadd fast float %2017, 1.000000e+00
  %2020 = fdiv fast float %2018, %2019
  %2021 = fmul fast float %2020, %2020
  %2022 = call float @dx.op.dot3.f32(i32 55, float %2011, float %2012, float %2013, float %1983, float %1984, float %1985)  ; Dot3(ax,ay,az,bx,by,bz)
  %2023 = select i1 %39, float 0.000000e+00, float %2015
  %2024 = fadd fast float %2022, %2023
  %2025 = call float @dx.op.binary.f32(i32 35, float %2024, float -1.000000e+00)  ; FMax(a,b)
  %2026 = call float @dx.op.binary.f32(i32 36, float %2025, float 1.000000e+00)  ; FMin(a,b)
  %2027 = fmul fast float %2017, %2017
  %2028 = fmul fast float %2026, %2026
  %2029 = fsub fast float 1.000000e+00, %2028
  %2030 = fmul fast float %2027, %2029
  %2031 = fsub fast float 1.000000e+00, %2030
  %2032 = fcmp fast olt float %2017, 1.000000e+00
  %2033 = select i1 %2032, float %2028, float %2031
  %2034 = fcmp fast ogt float %2031, 0.000000e+00
  %2035 = fsub fast float 1.000000e+00, %2021
  %2036 = call float @dx.op.unary.f32(i32 24, float %2033)  ; Sqrt(value)
  %2037 = fsub fast float 1.000000e+00, %2036
  %2038 = call float @dx.op.unary.f32(i32 23, float %2037)  ; Log(value)
  %2039 = fmul fast float %2038, 5.000000e+00
  %2040 = call float @dx.op.unary.f32(i32 21, float %2039)  ; Exp(value)
  %2041 = fmul fast float %2040, %2035
  %2042 = fadd fast float %2041, %2021
  %2043 = select i1 %2034, float %2042, float 1.000000e+00
  %2044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2045 = extractvalue %dx.types.CBufRet.f32 %2044, 3
  %2046 = fmul fast float %2045, %1953
  %2047 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  %2048 = call float @dx.op.unary.f32(i32 7, float %1952)  ; Saturate(value)
  %2049 = fmul fast float %42, 6.553500e+04
  %2050 = call float @dx.op.unary.f32(i32 26, float %2049)  ; Round_ne(value)
  %2051 = fptosi float %2050 to i32
  %2052 = call i32 @dx.op.binary.i32(i32 37, i32 %2051, i32 0)  ; IMax(a,b)
  %2053 = call i32 @dx.op.binary.i32(i32 38, i32 %2052, i32 65535)  ; IMin(a,b)
  %2054 = fmul fast float %43, 6.553500e+04
  %2055 = call float @dx.op.unary.f32(i32 26, float %2054)  ; Round_ne(value)
  %2056 = fptosi float %2055 to i32
  %2057 = call i32 @dx.op.binary.i32(i32 37, i32 %2056, i32 0)  ; IMax(a,b)
  %2058 = call i32 @dx.op.binary.i32(i32 38, i32 %2057, i32 65535)  ; IMin(a,b)
  %2059 = shl i32 %2058, 16
  %2060 = or i32 %2059, %2053
  %2061 = call float @dx.op.dot3.f32(i32 55, float %2004, float %2005, float %2006, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2062 = fsub fast float 1.000000e+00, %2061
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = and i32 %2064, 255
  %2066 = uitofp i32 %2065 to float
  %2067 = lshr i32 %2064, 8
  %2068 = and i32 %2067, 255
  %2069 = uitofp i32 %2068 to float
  %2070 = fmul fast float %2069, %2062
  %2071 = fadd fast float %2070, %2066
  %2072 = fmul fast float %2071, 0x3F70101020000000
  %2073 = call float @dx.op.unary.f32(i32 7, float %2072)  ; Saturate(value)
  %2074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2075 = extractvalue %dx.types.CBufRet.f32 %2074, 0
  %2076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2077 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2078 = extractvalue %dx.types.CBufRet.i32 %2077, 3
  %2079 = and i32 %2078, 3
  %2080 = icmp ne i32 %2079, 0
  %2081 = and i32 %2078, 4
  %2082 = icmp ne i32 %2081, 0
  %2083 = and i1 %2080, %2082
  br i1 %2083, label %2084, label %2095

; <label>:2084                                    ; preds = %1946
  %2085 = extractvalue %dx.types.CBufRet.f32 %2076, 3
  %2086 = fmul fast float %2085, %54
  %2087 = extractvalue %dx.types.CBufRet.f32 %2076, 2
  %2088 = fmul fast float %2087, %53
  %2089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %32, float %2088, float %2086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2090 = extractvalue %dx.types.ResRet.f32 %2089, 0
  %2091 = fsub fast float 1.000000e+00, %2090
  %2092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2092, 0
  %2094 = fcmp fast olt float %2091, %2093
  br label %2098

; <label>:2095                                    ; preds = %1946
  %2096 = icmp eq i32 %2081, 0
  %2097 = and i1 %2080, %2096
  br label %2098

; <label>:2098                                    ; preds = %2095, %2084
  %2099 = phi i1 [ %2094, %2084 ], [ %2097, %2095 ]
  %2100 = fsub fast float -0.000000e+00, %2011
  %2101 = fsub fast float -0.000000e+00, %2012
  %2102 = fsub fast float -0.000000e+00, %2013
  %2103 = select i1 %2099, float 0.000000e+00, float %2006
  %2104 = call float @dx.op.dot3.f32(i32 55, float %1983, float %1984, float %1985, float %2100, float %2101, float %2102)  ; Dot3(ax,ay,az,bx,by,bz)
  %2105 = call float @dx.op.unary.f32(i32 7, float %2104)  ; Saturate(value)
  %2106 = call float @dx.op.binary.f32(i32 36, float %2048, float 1.000000e+00)  ; FMin(a,b)
  %2107 = fsub fast float 1.000000e+00, %2048
  %2108 = bitcast float %2107 to i32
  %2109 = sub nsw i32 2129859010, %2108
  %2110 = bitcast i32 %2109 to float
  %2111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.f32 %2111, 0
  %2113 = extractvalue %dx.types.CBufRet.f32 %2111, 1
  %2114 = extractvalue %dx.types.CBufRet.f32 %2111, 2
  %2115 = fadd fast float %2112, %97
  %2116 = fadd fast float %2113, %98
  %2117 = fadd fast float %2114, %99
  %2118 = fmul fast float %1983, 3.200000e+01
  %2119 = fmul fast float %1984, 3.200000e+01
  %2120 = fadd fast float %2115, %2118
  %2121 = fadd fast float %2116, %2119
  %2122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2123 = extractvalue %dx.types.CBufRet.f32 %2122, 0
  %2124 = extractvalue %dx.types.CBufRet.f32 %2122, 1
  %2125 = fsub fast float %2120, %2123
  %2126 = fsub fast float %2121, %2124
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 0
  %2129 = extractvalue %dx.types.CBufRet.f32 %2127, 1
  %2130 = fmul fast float %2125, %2128
  %2131 = fmul fast float %2126, %2129
  %2132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2133 = extractvalue %dx.types.CBufRet.f32 %2132, 0
  %2134 = fmul fast float %2130, %2133
  %2135 = extractvalue %dx.types.CBufRet.f32 %2132, 1
  %2136 = fadd fast float %2134, %2135
  %2137 = extractvalue %dx.types.CBufRet.f32 %2132, 2
  %2138 = fmul fast float %2137, %2131
  %2139 = extractvalue %dx.types.CBufRet.f32 %2132, 3
  %2140 = fadd fast float %2138, %2139
  %2141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %32, float %2136, float %2140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.ResRet.f32 %2141, 1
  %2144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.f32 %2144, 1
  %2146 = extractvalue %dx.types.CBufRet.f32 %2144, 0
  %2147 = fsub fast float %2145, %2146
  %2148 = fmul fast float %2147, %2142
  %2149 = fadd fast float %2148, %2146
  %2150 = extractvalue %dx.types.CBufRet.f32 %2144, 3
  %2151 = extractvalue %dx.types.CBufRet.f32 %2144, 2
  %2152 = fsub fast float %2150, %2151
  %2153 = fmul fast float %2152, %2143
  %2154 = fadd fast float %2153, %2151
  %2155 = fsub fast float %2117, %2149
  %2156 = fsub fast float %2154, %2149
  %2157 = fdiv fast float %2155, %2156
  %2158 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2160 = extractvalue %dx.types.CBufRet.f32 %2159, 0
  %2161 = fmul fast float %2160, %2158
  %2162 = extractvalue %dx.types.CBufRet.f32 %2159, 1
  %2163 = fadd fast float %2161, %2162
  %2164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %32, float %2136, float %2140, float %2163, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2165 = extractvalue %dx.types.ResRet.f32 %2164, 0
  %2166 = extractvalue %dx.types.ResRet.f32 %2164, 1
  %2167 = extractvalue %dx.types.ResRet.f32 %2164, 2
  %2168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2169 = extractvalue %dx.types.CBufRet.f32 %2168, 0
  %2170 = extractvalue %dx.types.CBufRet.f32 %2168, 1
  %2171 = extractvalue %dx.types.CBufRet.f32 %2168, 2
  %2172 = fmul fast float %2169, %2165
  %2173 = fmul fast float %2170, %2166
  %2174 = fmul fast float %2171, %2167
  %2175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2176 = extractvalue %dx.types.CBufRet.f32 %2175, 0
  %2177 = extractvalue %dx.types.CBufRet.f32 %2175, 1
  %2178 = extractvalue %dx.types.CBufRet.f32 %2175, 2
  %2179 = fadd fast float %2172, %2176
  %2180 = fadd fast float %2173, %2177
  %2181 = fadd fast float %2174, %2178
  %2182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2183 = extractvalue %dx.types.CBufRet.f32 %2182, 0
  %2184 = fmul fast float %2183, %2130
  %2185 = extractvalue %dx.types.CBufRet.f32 %2182, 1
  %2186 = fadd fast float %2184, %2185
  %2187 = extractvalue %dx.types.CBufRet.f32 %2182, 2
  %2188 = fmul fast float %2187, %2131
  %2189 = extractvalue %dx.types.CBufRet.f32 %2182, 3
  %2190 = fadd fast float %2188, %2189
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.CBufRet.f32 %2191, 1
  %2194 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %2195 = extractvalue %dx.types.CBufRet.f32 %2191, 3
  %2196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.f32 %2196, 0
  %2198 = extractvalue %dx.types.CBufRet.f32 %2196, 1
  %2199 = extractvalue %dx.types.CBufRet.f32 %2196, 2
  %2200 = extractvalue %dx.types.CBufRet.f32 %2196, 3
  %2201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %32, float %2186, float %2190, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2202 = extractvalue %dx.types.ResRet.f32 %2201, 0
  %2203 = extractvalue %dx.types.ResRet.f32 %2201, 1
  %2204 = extractvalue %dx.types.ResRet.f32 %2201, 2
  %2205 = extractvalue %dx.types.ResRet.f32 %2201, 3
  %2206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %32, float %2186, float %2190, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  %2208 = extractvalue %dx.types.ResRet.f32 %2206, 1
  %2209 = extractvalue %dx.types.ResRet.f32 %2206, 2
  %2210 = extractvalue %dx.types.ResRet.f32 %2206, 3
  %2211 = fmul fast float %2202, %2179
  %2212 = fmul fast float %2207, %2179
  %2213 = fmul fast float %2209, %2179
  %2214 = fmul fast float %2205, %2179
  %2215 = fadd fast float %2211, %2192
  %2216 = fadd fast float %2212, %2193
  %2217 = fadd fast float %2213, %2194
  %2218 = fadd fast float %2214, %2195
  %2219 = fmul fast float %2203, %2179
  %2220 = fmul fast float %2208, %2179
  %2221 = fadd fast float %2219, %2197
  %2222 = fadd fast float %2220, %2198
  %2223 = fmul fast float %2204, %2179
  %2224 = fmul fast float %2210, %2179
  %2225 = fadd fast float %2223, %2199
  %2226 = fadd fast float %2224, %2200
  %2227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %32, float %2186, float %2190, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2228 = extractvalue %dx.types.ResRet.f32 %2227, 0
  %2229 = extractvalue %dx.types.ResRet.f32 %2227, 1
  %2230 = extractvalue %dx.types.ResRet.f32 %2227, 2
  %2231 = extractvalue %dx.types.ResRet.f32 %2227, 3
  %2232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %32, float %2186, float %2190, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2233 = extractvalue %dx.types.ResRet.f32 %2232, 0
  %2234 = extractvalue %dx.types.ResRet.f32 %2232, 1
  %2235 = extractvalue %dx.types.ResRet.f32 %2232, 2
  %2236 = extractvalue %dx.types.ResRet.f32 %2232, 3
  %2237 = fmul fast float %2228, %2180
  %2238 = fmul fast float %2233, %2180
  %2239 = fmul fast float %2235, %2180
  %2240 = fmul fast float %2231, %2180
  %2241 = fadd fast float %2215, %2237
  %2242 = fadd fast float %2216, %2238
  %2243 = fadd fast float %2217, %2239
  %2244 = fadd fast float %2218, %2240
  %2245 = fmul fast float %2229, %2180
  %2246 = fmul fast float %2234, %2180
  %2247 = fadd fast float %2221, %2245
  %2248 = fadd fast float %2222, %2246
  %2249 = fmul fast float %2230, %2180
  %2250 = fmul fast float %2236, %2180
  %2251 = fadd fast float %2225, %2249
  %2252 = fadd fast float %2226, %2250
  %2253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %32, float %2186, float %2190, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2254 = extractvalue %dx.types.ResRet.f32 %2253, 0
  %2255 = extractvalue %dx.types.ResRet.f32 %2253, 1
  %2256 = extractvalue %dx.types.ResRet.f32 %2253, 2
  %2257 = extractvalue %dx.types.ResRet.f32 %2253, 3
  %2258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %32, float %2186, float %2190, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2259 = extractvalue %dx.types.ResRet.f32 %2258, 0
  %2260 = extractvalue %dx.types.ResRet.f32 %2258, 1
  %2261 = extractvalue %dx.types.ResRet.f32 %2258, 2
  %2262 = extractvalue %dx.types.ResRet.f32 %2258, 3
  %2263 = fmul fast float %2254, %2181
  %2264 = fmul fast float %2259, %2181
  %2265 = fmul fast float %2261, %2181
  %2266 = fmul fast float %2257, %2181
  %2267 = fadd fast float %2241, %2263
  %2268 = fadd fast float %2242, %2264
  %2269 = fadd fast float %2243, %2265
  %2270 = fadd fast float %2244, %2266
  %2271 = fmul fast float %2255, %2181
  %2272 = fmul fast float %2260, %2181
  %2273 = fadd fast float %2247, %2271
  %2274 = fadd fast float %2248, %2272
  %2275 = fmul fast float %2256, %2181
  %2276 = fmul fast float %2262, %2181
  %2277 = fadd fast float %2251, %2275
  %2278 = fadd fast float %2252, %2276
  %2279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2280 = extractvalue %dx.types.CBufRet.f32 %2279, 0
  %2281 = fsub fast float %2115, %2280
  %2282 = fsub fast float %2123, %2115
  %2283 = call float @dx.op.binary.f32(i32 35, float %2282, float %2281)  ; FMax(a,b)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2279, 1
  %2285 = fsub fast float %2116, %2284
  %2286 = fsub fast float %2124, %2116
  %2287 = call float @dx.op.binary.f32(i32 35, float %2286, float %2285)  ; FMax(a,b)
  %2288 = call float @dx.op.binary.f32(i32 35, float %2283, float %2287)  ; FMax(a,b)
  %2289 = extractvalue %dx.types.CBufRet.f32 %2127, 3
  %2290 = fmul fast float %2289, %2288
  %2291 = call float @dx.op.unary.f32(i32 7, float %2290)  ; Saturate(value)
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 0
  %2294 = extractvalue %dx.types.CBufRet.f32 %2292, 1
  %2295 = extractvalue %dx.types.CBufRet.f32 %2292, 2
  %2296 = extractvalue %dx.types.CBufRet.f32 %2292, 3
  %2297 = fsub fast float %2293, %2267
  %2298 = fsub fast float %2294, %2268
  %2299 = fsub fast float %2295, %2269
  %2300 = fsub fast float %2296, %2270
  %2301 = fmul fast float %2297, %2291
  %2302 = fmul fast float %2298, %2291
  %2303 = fmul fast float %2299, %2291
  %2304 = fmul fast float %2300, %2291
  %2305 = fadd fast float %2301, %2267
  %2306 = fadd fast float %2302, %2268
  %2307 = fadd fast float %2303, %2269
  %2308 = fadd fast float %2304, %2270
  %2309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2310 = extractvalue %dx.types.CBufRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.CBufRet.f32 %2309, 1
  %2312 = fsub fast float %2310, %2273
  %2313 = fsub fast float %2311, %2274
  %2314 = fmul fast float %2312, %2291
  %2315 = fmul fast float %2313, %2291
  %2316 = fadd fast float %2314, %2273
  %2317 = fadd fast float %2315, %2274
  %2318 = extractvalue %dx.types.CBufRet.f32 %2309, 2
  %2319 = extractvalue %dx.types.CBufRet.f32 %2309, 3
  %2320 = fsub fast float %2318, %2277
  %2321 = fsub fast float %2319, %2278
  %2322 = fmul fast float %2320, %2291
  %2323 = fmul fast float %2321, %2291
  %2324 = fadd fast float %2322, %2277
  %2325 = fadd fast float %2323, %2278
  %2326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2327 = extractvalue %dx.types.CBufRet.f32 %2326, 0
  %2328 = fmul fast float %2327, %2305
  %2329 = fmul fast float %2327, %2306
  %2330 = fmul fast float %2327, %2307
  %2331 = fmul fast float %2327, %2308
  %2332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2333 = extractvalue %dx.types.CBufRet.f32 %2332, 0
  %2334 = fmul fast float %2333, %2316
  %2335 = fmul fast float %2333, %2317
  %2336 = fadd fast float %2334, %2328
  %2337 = fadd fast float %2335, %2330
  %2338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2339 = extractvalue %dx.types.CBufRet.f32 %2338, 0
  %2340 = fmul fast float %2339, %2324
  %2341 = fmul fast float %2339, %2325
  %2342 = fadd fast float %2336, %2340
  %2343 = fadd fast float %2337, %2341
  %2344 = extractvalue %dx.types.CBufRet.f32 %2326, 1
  %2345 = fmul fast float %2344, %2305
  %2346 = fmul fast float %2344, %2306
  %2347 = fmul fast float %2344, %2307
  %2348 = fmul fast float %2344, %2308
  %2349 = extractvalue %dx.types.CBufRet.f32 %2332, 1
  %2350 = fmul fast float %2349, %2316
  %2351 = fmul fast float %2349, %2317
  %2352 = fadd fast float %2350, %2345
  %2353 = fadd fast float %2351, %2347
  %2354 = extractvalue %dx.types.CBufRet.f32 %2338, 1
  %2355 = fmul fast float %2354, %2324
  %2356 = fmul fast float %2354, %2325
  %2357 = fadd fast float %2352, %2355
  %2358 = fadd fast float %2353, %2356
  %2359 = extractvalue %dx.types.CBufRet.f32 %2326, 2
  %2360 = fmul fast float %2359, %2305
  %2361 = fmul fast float %2359, %2306
  %2362 = fmul fast float %2359, %2307
  %2363 = fmul fast float %2359, %2308
  %2364 = extractvalue %dx.types.CBufRet.f32 %2332, 2
  %2365 = fmul fast float %2364, %2316
  %2366 = fmul fast float %2364, %2317
  %2367 = fadd fast float %2365, %2360
  %2368 = fadd fast float %2366, %2362
  %2369 = extractvalue %dx.types.CBufRet.f32 %2338, 2
  %2370 = fmul fast float %2369, %2324
  %2371 = fmul fast float %2369, %2325
  %2372 = fadd fast float %2367, %2370
  %2373 = fadd fast float %2368, %2371
  %2374 = fmul fast float %2361, %2361
  %2375 = fmul fast float %2373, %2373
  %2376 = fmul fast float %2363, %2363
  %2377 = fadd fast float %2376, %2374
  %2378 = fadd fast float %2377, %2375
  %2379 = call float @dx.op.unary.f32(i32 24, float %2378)  ; Sqrt(value)
  %2380 = fcmp fast ugt float %2379, 0.000000e+00
  br i1 %2380, label %2381, label %2396

; <label>:2381                                    ; preds = %2098
  %2382 = fsub fast float -0.000000e+00, %2363
  %2383 = fdiv fast float %2382, %2379
  %2384 = fsub fast float -0.000000e+00, %2361
  %2385 = fdiv fast float %2384, %2379
  %2386 = fdiv fast float %2373, %2379
  %2387 = fmul fast float %2372, 0x3FE279A760000000
  %2388 = fmul fast float %2385, %2361
  %2389 = fmul fast float %2386, %2373
  %2390 = fmul fast float %2383, %2363
  %2391 = fadd fast float %2388, %2390
  %2392 = fsub fast float %2391, %2389
  %2393 = call float @dx.op.unary.f32(i32 6, float %2392)  ; FAbs(value)
  %2394 = fadd fast float %2393, 0x3DDB7CDFE0000000
  %2395 = fdiv fast float %2387, %2394
  br label %2396

; <label>:2396                                    ; preds = %2381, %2098
  %2397 = phi float [ %2395, %2381 ], [ 1.000000e+00, %2098 ]
  %2398 = fmul fast float %2346, %2346
  %2399 = fmul fast float %2358, %2358
  %2400 = fmul fast float %2348, %2348
  %2401 = fadd fast float %2400, %2398
  %2402 = fadd fast float %2401, %2399
  %2403 = call float @dx.op.unary.f32(i32 24, float %2402)  ; Sqrt(value)
  %2404 = fcmp fast ugt float %2403, 0.000000e+00
  br i1 %2404, label %2405, label %2420

; <label>:2405                                    ; preds = %2396
  %2406 = fsub fast float -0.000000e+00, %2348
  %2407 = fdiv fast float %2406, %2403
  %2408 = fsub fast float -0.000000e+00, %2346
  %2409 = fdiv fast float %2408, %2403
  %2410 = fdiv fast float %2358, %2403
  %2411 = fmul fast float %2357, 0x3FE279A760000000
  %2412 = fmul fast float %2409, %2346
  %2413 = fmul fast float %2410, %2358
  %2414 = fmul fast float %2407, %2348
  %2415 = fadd fast float %2412, %2414
  %2416 = fsub fast float %2415, %2413
  %2417 = call float @dx.op.unary.f32(i32 6, float %2416)  ; FAbs(value)
  %2418 = fadd fast float %2417, 0x3DDB7CDFE0000000
  %2419 = fdiv fast float %2411, %2418
  br label %2420

; <label>:2420                                    ; preds = %2405, %2396
  %2421 = phi float [ %2419, %2405 ], [ 1.000000e+00, %2396 ]
  %2422 = call float @dx.op.binary.f32(i32 36, float %2421, float %2397)  ; FMin(a,b)
  %2423 = fmul fast float %2329, %2329
  %2424 = fmul fast float %2343, %2343
  %2425 = fmul fast float %2331, %2331
  %2426 = fadd fast float %2425, %2423
  %2427 = fadd fast float %2426, %2424
  %2428 = call float @dx.op.unary.f32(i32 24, float %2427)  ; Sqrt(value)
  %2429 = fcmp fast ugt float %2428, 0.000000e+00
  br i1 %2429, label %2430, label %2445

; <label>:2430                                    ; preds = %2420
  %2431 = fsub fast float -0.000000e+00, %2331
  %2432 = fdiv fast float %2431, %2428
  %2433 = fsub fast float -0.000000e+00, %2329
  %2434 = fdiv fast float %2433, %2428
  %2435 = fdiv fast float %2343, %2428
  %2436 = fmul fast float %2342, 0x3FE279A760000000
  %2437 = fmul fast float %2434, %2329
  %2438 = fmul fast float %2435, %2343
  %2439 = fmul fast float %2432, %2331
  %2440 = fadd fast float %2437, %2439
  %2441 = fsub fast float %2440, %2438
  %2442 = call float @dx.op.unary.f32(i32 6, float %2441)  ; FAbs(value)
  %2443 = fadd fast float %2442, 0x3DDB7CDFE0000000
  %2444 = fdiv fast float %2436, %2443
  br label %2445

; <label>:2445                                    ; preds = %2430, %2420
  %2446 = phi float [ %2444, %2430 ], [ 1.000000e+00, %2420 ]
  %2447 = call float @dx.op.binary.f32(i32 36, float %2446, float %2422)  ; FMin(a,b)
  %2448 = call float @dx.op.unary.f32(i32 7, float %2447)  ; Saturate(value)
  %2449 = fcmp fast olt float %2448, 1.000000e+00
  br i1 %2449, label %2450, label %2460

; <label>:2450                                    ; preds = %2445
  %2451 = fmul fast float %2448, %2329
  %2452 = fmul fast float %2448, %2343
  %2453 = fmul fast float %2448, %2331
  %2454 = fmul fast float %2448, %2346
  %2455 = fmul fast float %2448, %2358
  %2456 = fmul fast float %2448, %2348
  %2457 = fmul fast float %2448, %2361
  %2458 = fmul fast float %2448, %2373
  %2459 = fmul fast float %2448, %2363
  br label %2460

; <label>:2460                                    ; preds = %2450, %2445
  %2461 = phi float [ %2457, %2450 ], [ %2361, %2445 ]
  %2462 = phi float [ %2458, %2450 ], [ %2373, %2445 ]
  %2463 = phi float [ %2459, %2450 ], [ %2363, %2445 ]
  %2464 = phi float [ %2454, %2450 ], [ %2346, %2445 ]
  %2465 = phi float [ %2455, %2450 ], [ %2358, %2445 ]
  %2466 = phi float [ %2456, %2450 ], [ %2348, %2445 ]
  %2467 = phi float [ %2451, %2450 ], [ %2329, %2445 ]
  %2468 = phi float [ %2452, %2450 ], [ %2343, %2445 ]
  %2469 = phi float [ %2453, %2450 ], [ %2331, %2445 ]
  %2470 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2342)  ; FMax(a,b)
  %2471 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2357)  ; FMax(a,b)
  %2472 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2372)  ; FMax(a,b)
  %2473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.f32 %2473, 0
  %2475 = fcmp fast ogt float %2474, 0.000000e+00
  %2476 = fcmp fast oge float %2130, 0.000000e+00
  %2477 = and i1 %2476, %2475
  %2478 = fcmp fast ole float %2130, 1.000000e+00
  %2479 = and i1 %2478, %2477
  %2480 = fcmp fast oge float %2131, 0.000000e+00
  %2481 = and i1 %2480, %2479
  %2482 = fcmp fast ole float %2131, 1.000000e+00
  %2483 = and i1 %2482, %2481
  br i1 %2483, label %2484, label %2624, !dx.controlflow.hints !92

; <label>:2484                                    ; preds = %2460
  %2485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2486 = extractvalue %dx.types.CBufRet.f32 %2485, 2
  %2487 = extractvalue %dx.types.CBufRet.f32 %2485, 3
  %2488 = fmul fast float %2486, %2130
  %2489 = fmul fast float %2487, %2131
  %2490 = call float @dx.op.unary.f32(i32 27, float %2488)  ; Round_ni(value)
  %2491 = call float @dx.op.unary.f32(i32 27, float %2489)  ; Round_ni(value)
  %2492 = fptosi float %2490 to i32
  %2493 = fptosi float %2491 to i32
  %2494 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %17, i32 0, i32 %2492, i32 %2493, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = and i32 %2495, 65535
  %2497 = lshr i32 %2495, 16
  %2498 = icmp eq i32 %2496, 65535
  br i1 %2498, label %2535, label %2499

; <label>:2499                                    ; preds = %2484
  %2500 = extractvalue %dx.types.CBufRet.f32 %2473, 1
  %2501 = extractvalue %dx.types.CBufRet.f32 %2485, 0
  %2502 = extractvalue %dx.types.CBufRet.f32 %2485, 1
  %2503 = fmul fast float %2501, %2130
  %2504 = fmul fast float %2502, %2131
  %2505 = fmul fast float %2503, 1.250000e-01
  %2506 = fmul fast float %2504, 1.250000e-01
  %2507 = call float @dx.op.unary.f32(i32 27, float %2505)  ; Round_ni(value)
  %2508 = call float @dx.op.unary.f32(i32 27, float %2506)  ; Round_ni(value)
  %2509 = fmul fast float %2507, 8.000000e+00
  %2510 = fmul fast float %2508, 8.000000e+00
  %2511 = and i32 %2495, 255
  %2512 = lshr i32 %2495, 8
  %2513 = and i32 %2512, 255
  %2514 = mul nuw nsw i32 %2511, 9
  %2515 = uitofp i32 %2514 to float
  %2516 = mul nuw nsw i32 %2513, 9
  %2517 = uitofp i32 %2516 to float
  %2518 = fadd fast float %2515, 5.000000e-01
  %2519 = fadd fast float %2518, %2503
  %2520 = fsub fast float %2519, %2509
  %2521 = fadd fast float %2517, 5.000000e-01
  %2522 = fadd fast float %2521, %2504
  %2523 = fsub fast float %2522, %2510
  %2524 = fdiv fast float %2520, %2474
  %2525 = fdiv fast float %2523, %2500
  %2526 = fmul fast float %2158, 4.375000e-01
  %2527 = fadd fast float %2526, 3.125000e-02
  %2528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %32, float %2524, float %2525, float %2527, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2529 = extractvalue %dx.types.ResRet.f32 %2528, 0
  %2530 = extractvalue %dx.types.ResRet.f32 %2528, 1
  %2531 = extractvalue %dx.types.ResRet.f32 %2528, 2
  %2532 = fadd fast float %2529, %2470
  %2533 = fadd fast float %2530, %2471
  %2534 = fadd fast float %2531, %2472
  br label %2535

; <label>:2535                                    ; preds = %2499, %2484
  %2536 = phi float [ %2534, %2499 ], [ %2472, %2484 ]
  %2537 = phi float [ %2533, %2499 ], [ %2471, %2484 ]
  %2538 = phi float [ %2532, %2499 ], [ %2470, %2484 ]
  %2539 = icmp eq i32 %2497, 65535
  br i1 %2539, label %2624, label %2540

; <label>:2540                                    ; preds = %2535
  %2541 = extractvalue %dx.types.CBufRet.f32 %2473, 1
  %2542 = extractvalue %dx.types.CBufRet.f32 %2485, 0
  %2543 = extractvalue %dx.types.CBufRet.f32 %2485, 1
  %2544 = fmul fast float %2542, %2130
  %2545 = fmul fast float %2543, %2131
  %2546 = fmul fast float %2544, 1.250000e-01
  %2547 = fmul fast float %2545, 1.250000e-01
  %2548 = call float @dx.op.unary.f32(i32 27, float %2546)  ; Round_ni(value)
  %2549 = call float @dx.op.unary.f32(i32 27, float %2547)  ; Round_ni(value)
  %2550 = fmul fast float %2548, 8.000000e+00
  %2551 = fmul fast float %2549, 8.000000e+00
  %2552 = fsub fast float %2544, %2550
  %2553 = fsub fast float %2545, %2551
  %2554 = fadd fast float %2552, 5.000000e-01
  %2555 = fadd fast float %2553, 5.000000e-01
  %2556 = and i32 %2497, 255
  %2557 = lshr i32 %2495, 24
  %2558 = mul nuw nsw i32 %2556, 9
  %2559 = uitofp i32 %2558 to float
  %2560 = mul nuw nsw i32 %2557, 9
  %2561 = uitofp i32 %2560 to float
  %2562 = fadd fast float %2554, %2559
  %2563 = fadd fast float %2555, %2561
  %2564 = fdiv fast float %2562, %2474
  %2565 = fdiv fast float %2563, %2541
  %2566 = fmul fast float %2158, 4.375000e-01
  %2567 = fadd fast float %2566, 3.125000e-02
  %2568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %32, float %2564, float %2565, float %2567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2569 = extractvalue %dx.types.ResRet.f32 %2568, 0
  %2570 = extractvalue %dx.types.ResRet.f32 %2568, 1
  %2571 = extractvalue %dx.types.ResRet.f32 %2568, 2
  %2572 = fadd fast float %2566, 5.312500e-01
  %2573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %32, float %2564, float %2565, float %2572, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2574 = extractvalue %dx.types.ResRet.f32 %2573, 0
  %2575 = extractvalue %dx.types.ResRet.f32 %2573, 1
  %2576 = extractvalue %dx.types.ResRet.f32 %2573, 2
  %2577 = fmul fast float %2574, 2.000000e+00
  %2578 = fmul fast float %2575, 2.000000e+00
  %2579 = fmul fast float %2576, 2.000000e+00
  %2580 = fadd fast float %2577, -1.000000e+00
  %2581 = fadd fast float %2578, -1.000000e+00
  %2582 = fadd fast float %2579, -1.000000e+00
  %2583 = fmul fast float %2580, %2580
  %2584 = fmul fast float %2581, %2581
  %2585 = fadd fast float %2583, %2584
  %2586 = fmul fast float %2582, %2582
  %2587 = fadd fast float %2585, %2586
  %2588 = call float @dx.op.unary.f32(i32 24, float %2587)  ; Sqrt(value)
  %2589 = fcmp fast ogt float %2588, 0.000000e+00
  br i1 %2589, label %2590, label %2594

; <label>:2590                                    ; preds = %2540
  %2591 = fdiv fast float %2580, %2588
  %2592 = fdiv fast float %2581, %2588
  %2593 = fdiv fast float %2582, %2588
  br label %2594

; <label>:2594                                    ; preds = %2590, %2540
  %2595 = phi float [ %2591, %2590 ], [ 0.000000e+00, %2540 ]
  %2596 = phi float [ %2592, %2590 ], [ 0.000000e+00, %2540 ]
  %2597 = phi float [ %2593, %2590 ], [ 0.000000e+00, %2540 ]
  %2598 = fmul fast float %97, %97
  %2599 = fmul fast float %98, %98
  %2600 = fadd fast float %2598, %2599
  %2601 = call float @dx.op.unary.f32(i32 24, float %2600)  ; Sqrt(value)
  %2602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2603 = extractvalue %dx.types.CBufRet.f32 %2602, 0
  %2604 = extractvalue %dx.types.CBufRet.f32 %2602, 1
  %2605 = fsub fast float %2601, %2603
  %2606 = fdiv fast float %2605, %2604
  %2607 = call float @dx.op.unary.f32(i32 7, float %2606)  ; Saturate(value)
  %2608 = fmul fast float %2607, 2.000000e+00
  %2609 = fsub fast float 3.000000e+00, %2608
  %2610 = fmul fast float %2607, %2607
  %2611 = fmul fast float %2610, %2609
  %2612 = call float @dx.op.dot3.f32(i32 55, float %2595, float %2596, float %2597, float %1983, float %1984, float %1985)  ; Dot3(ax,ay,az,bx,by,bz)
  %2613 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2612)  ; FMax(a,b)
  %2614 = fmul fast float %2613, 0x400C5BF8A0000000
  %2615 = fmul fast float %2611, %2569
  %2616 = fmul fast float %2615, %2614
  %2617 = fadd fast float %2616, %2538
  %2618 = fmul fast float %2611, %2570
  %2619 = fmul fast float %2618, %2614
  %2620 = fadd fast float %2619, %2537
  %2621 = fmul fast float %2611, %2571
  %2622 = fmul fast float %2621, %2614
  %2623 = fadd fast float %2622, %2536
  br label %2624

; <label>:2624                                    ; preds = %2594, %2535, %2460
  %2625 = phi float [ %2623, %2594 ], [ %2536, %2535 ], [ %2472, %2460 ]
  %2626 = phi float [ %2620, %2594 ], [ %2537, %2535 ], [ %2471, %2460 ]
  %2627 = phi float [ %2617, %2594 ], [ %2538, %2535 ], [ %2470, %2460 ]
  %2628 = fcmp fast ogt float %2117, %2154
  %2629 = and i1 %2476, %2628
  %2630 = and i1 %2478, %2629
  %2631 = and i1 %2480, %2630
  %2632 = and i1 %2482, %2631
  br i1 %2632, label %2633, label %2690, !dx.controlflow.hints !93

; <label>:2633                                    ; preds = %2624
  %2634 = fmul fast float %2156, 0x3FC24924A0000000
  %2635 = fsub fast float %2117, %2154
  %2636 = fdiv fast float %2635, %2634
  %2637 = call float @dx.op.unary.f32(i32 7, float %2636)  ; Saturate(value)
  %2638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2639 = extractvalue %dx.types.CBufRet.f32 %2638, 0
  %2640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2641 = extractvalue %dx.types.CBufRet.f32 %2640, 0
  %2642 = extractvalue %dx.types.CBufRet.f32 %2640, 1
  %2643 = extractvalue %dx.types.CBufRet.f32 %2640, 2
  %2644 = fsub fast float %2639, %2627
  %2645 = fsub fast float %2641, %2467
  %2646 = fsub fast float %2642, %2468
  %2647 = fsub fast float %2643, %2469
  %2648 = fmul fast float %2644, %2637
  %2649 = fmul fast float %2645, %2637
  %2650 = fmul fast float %2646, %2637
  %2651 = fmul fast float %2647, %2637
  %2652 = fadd fast float %2648, %2627
  %2653 = fadd fast float %2649, %2467
  %2654 = fadd fast float %2650, %2468
  %2655 = fadd fast float %2651, %2469
  %2656 = extractvalue %dx.types.CBufRet.f32 %2638, 1
  %2657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2658 = extractvalue %dx.types.CBufRet.f32 %2657, 0
  %2659 = extractvalue %dx.types.CBufRet.f32 %2657, 1
  %2660 = extractvalue %dx.types.CBufRet.f32 %2657, 2
  %2661 = fsub fast float %2656, %2626
  %2662 = fsub fast float %2658, %2464
  %2663 = fsub fast float %2659, %2465
  %2664 = fsub fast float %2660, %2466
  %2665 = fmul fast float %2661, %2637
  %2666 = fmul fast float %2662, %2637
  %2667 = fmul fast float %2663, %2637
  %2668 = fmul fast float %2664, %2637
  %2669 = fadd fast float %2665, %2626
  %2670 = fadd fast float %2666, %2464
  %2671 = fadd fast float %2667, %2465
  %2672 = fadd fast float %2668, %2466
  %2673 = extractvalue %dx.types.CBufRet.f32 %2638, 2
  %2674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2675 = extractvalue %dx.types.CBufRet.f32 %2674, 0
  %2676 = extractvalue %dx.types.CBufRet.f32 %2674, 1
  %2677 = extractvalue %dx.types.CBufRet.f32 %2674, 2
  %2678 = fsub fast float %2673, %2625
  %2679 = fsub fast float %2675, %2461
  %2680 = fsub fast float %2676, %2462
  %2681 = fsub fast float %2677, %2463
  %2682 = fmul fast float %2678, %2637
  %2683 = fmul fast float %2679, %2637
  %2684 = fmul fast float %2680, %2637
  %2685 = fmul fast float %2681, %2637
  %2686 = fadd fast float %2682, %2625
  %2687 = fadd fast float %2683, %2461
  %2688 = fadd fast float %2684, %2462
  %2689 = fadd fast float %2685, %2463
  br label %2690

; <label>:2690                                    ; preds = %2633, %2624
  %2691 = phi float [ %2686, %2633 ], [ %2625, %2624 ]
  %2692 = phi float [ %2687, %2633 ], [ %2461, %2624 ]
  %2693 = phi float [ %2688, %2633 ], [ %2462, %2624 ]
  %2694 = phi float [ %2689, %2633 ], [ %2463, %2624 ]
  %2695 = phi float [ %2669, %2633 ], [ %2626, %2624 ]
  %2696 = phi float [ %2670, %2633 ], [ %2464, %2624 ]
  %2697 = phi float [ %2671, %2633 ], [ %2465, %2624 ]
  %2698 = phi float [ %2672, %2633 ], [ %2466, %2624 ]
  %2699 = phi float [ %2652, %2633 ], [ %2627, %2624 ]
  %2700 = phi float [ %2653, %2633 ], [ %2467, %2624 ]
  %2701 = phi float [ %2654, %2633 ], [ %2468, %2624 ]
  %2702 = phi float [ %2655, %2633 ], [ %2469, %2624 ]
  %2703 = extractvalue %dx.types.CBufRet.f32 %2279, 3
  %2704 = fmul fast float %2703, %2699
  %2705 = fmul fast float %2703, %2695
  %2706 = fmul fast float %2703, %2691
  %2707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2708 = extractvalue %dx.types.CBufRet.f32 %2707, 3
  %2709 = fmul fast float %2704, %2708
  %2710 = fmul fast float %2705, %2708
  %2711 = fmul fast float %2706, %2708
  %2712 = fmul fast float %2700, 1.500000e+00
  %2713 = fmul fast float %2712, %2703
  %2714 = fmul fast float %2713, %2708
  %2715 = fmul fast float %2701, 1.500000e+00
  %2716 = fmul fast float %2715, %2703
  %2717 = fmul fast float %2716, %2708
  %2718 = fmul fast float %2702, 1.500000e+00
  %2719 = fmul fast float %2718, %2703
  %2720 = fmul fast float %2719, %2708
  %2721 = fmul fast float %2696, 1.500000e+00
  %2722 = fmul fast float %2721, %2703
  %2723 = fmul fast float %2722, %2708
  %2724 = fmul fast float %2697, 1.500000e+00
  %2725 = fmul fast float %2724, %2703
  %2726 = fmul fast float %2725, %2708
  %2727 = fmul fast float %2698, 1.500000e+00
  %2728 = fmul fast float %2727, %2703
  %2729 = fmul fast float %2728, %2708
  %2730 = fmul fast float %2692, 1.500000e+00
  %2731 = fmul fast float %2730, %2703
  %2732 = fmul fast float %2731, %2708
  %2733 = fmul fast float %2693, 1.500000e+00
  %2734 = fmul fast float %2733, %2703
  %2735 = fmul fast float %2734, %2708
  %2736 = fmul fast float %2694, 1.500000e+00
  %2737 = fmul fast float %2736, %2703
  %2738 = fmul fast float %2737, %2708
  %2739 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2709)  ; FMax(a,b)
  %2740 = call float @dx.op.dot3.f32(i32 55, float %2714, float %2717, float %2720, float %2714, float %2717, float %2720)  ; Dot3(ax,ay,az,bx,by,bz)
  %2741 = fcmp fast oeq float %2740, 0.000000e+00
  %2742 = fcmp fast oeq float %2739, 0.000000e+00
  %2743 = or i1 %2742, %2741
  br i1 %2743, label %2774, label %2744

; <label>:2744                                    ; preds = %2690
  %2745 = fsub fast float -0.000000e+00, %2720
  %2746 = fsub fast float -0.000000e+00, %2714
  %2747 = call float @dx.op.unary.f32(i32 24, float %2740)  ; Sqrt(value)
  %2748 = fdiv fast float %2747, %2739
  %2749 = fcmp fast ogt float %2748, 0x3FFB6F8900000000
  %2750 = select i1 %2749, float 0x3FFB6F8900000000, float %2748
  %2751 = fmul fast float %2750, 0x3FE8A23460000000
  %2752 = call float @dx.op.unary.f32(i32 7, float %2751)  ; Saturate(value)
  %2753 = call float @dx.op.binary.f32(i32 35, float %2750, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2754 = fmul fast float %2752, %2739
  %2755 = fmul fast float %2753, 0x3FF279A740000000
  %2756 = fadd fast float %2755, -1.000000e+00
  %2757 = call float @dx.op.dot3.f32(i32 55, float %2745, float %2746, float %2717, float %2745, float %2746, float %2717)  ; Dot3(ax,ay,az,bx,by,bz)
  %2758 = call float @dx.op.unary.f32(i32 25, float %2757)  ; Rsqrt(value)
  %2759 = fmul fast float %2758, %2745
  %2760 = fmul fast float %2758, %2746
  %2761 = fmul fast float %2758, %2717
  %2762 = fmul fast float %2756, %2756
  %2763 = fsub fast float 1.000000e+00, %2762
  %2764 = fmul fast float %2753, 0x40005F8BE0000000
  %2765 = fsub fast float 0x400C5BF8A0000000, %2764
  %2766 = fdiv fast float %2754, %2765
  %2767 = fmul fast float %2766, 0x3FEE31C3C0000000
  %2768 = fmul fast float %2767, %2763
  %2769 = fmul fast float %2753, 0x3FDACB7480000000
  %2770 = fadd fast float %2769, 0xBFD7347680000000
  %2771 = fmul fast float %2770, %2766
  %2772 = fmul fast float %2771, %2763
  %2773 = fmul float %2768, 0x3FDF454380000000
  br label %2774

; <label>:2774                                    ; preds = %2744, %2690
  %2775 = phi float [ %2759, %2744 ], [ 0.000000e+00, %2690 ]
  %2776 = phi float [ %2760, %2744 ], [ 0.000000e+00, %2690 ]
  %2777 = phi float [ %2761, %2744 ], [ 0.000000e+00, %2690 ]
  %2778 = phi float [ %2773, %2744 ], [ 0.000000e+00, %2690 ]
  %2779 = phi float [ %2772, %2744 ], [ 0.000000e+00, %2690 ]
  %2780 = call float @dx.op.dot3.f32(i32 55, float %2775, float %2776, float %2777, float %1983, float %1984, float %1985)  ; Dot3(ax,ay,az,bx,by,bz)
  %2781 = fmul fast float %2780, %2780
  %2782 = fmul fast float %2781, 0x3FEE471020000000
  %2783 = fadd fast float %2782, 0xBFD42F6020000000
  %2784 = fmul fast float %2739, 0x3FD20DD760000000
  %2785 = fmul fast float %2783, %2779
  %2786 = fmul fast float %2778, %2780
  %2787 = fadd fast float %2786, %2784
  %2788 = fadd fast float %2787, %2785
  %2789 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2710)  ; FMax(a,b)
  %2790 = call float @dx.op.dot3.f32(i32 55, float %2723, float %2726, float %2729, float %2723, float %2726, float %2729)  ; Dot3(ax,ay,az,bx,by,bz)
  %2791 = fcmp fast oeq float %2790, 0.000000e+00
  %2792 = fcmp fast oeq float %2789, 0.000000e+00
  %2793 = or i1 %2792, %2791
  br i1 %2793, label %2824, label %2794

; <label>:2794                                    ; preds = %2774
  %2795 = fsub fast float -0.000000e+00, %2729
  %2796 = fsub fast float -0.000000e+00, %2723
  %2797 = call float @dx.op.unary.f32(i32 24, float %2790)  ; Sqrt(value)
  %2798 = fdiv fast float %2797, %2789
  %2799 = fcmp fast ogt float %2798, 0x3FFB6F8900000000
  %2800 = select i1 %2799, float 0x3FFB6F8900000000, float %2798
  %2801 = fmul fast float %2800, 0x3FE8A23460000000
  %2802 = call float @dx.op.unary.f32(i32 7, float %2801)  ; Saturate(value)
  %2803 = call float @dx.op.binary.f32(i32 35, float %2800, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2804 = fmul fast float %2802, %2789
  %2805 = fmul fast float %2803, 0x3FF279A740000000
  %2806 = fadd fast float %2805, -1.000000e+00
  %2807 = call float @dx.op.dot3.f32(i32 55, float %2795, float %2796, float %2726, float %2795, float %2796, float %2726)  ; Dot3(ax,ay,az,bx,by,bz)
  %2808 = call float @dx.op.unary.f32(i32 25, float %2807)  ; Rsqrt(value)
  %2809 = fmul fast float %2808, %2795
  %2810 = fmul fast float %2808, %2796
  %2811 = fmul fast float %2808, %2726
  %2812 = fmul fast float %2806, %2806
  %2813 = fsub fast float 1.000000e+00, %2812
  %2814 = fmul fast float %2803, 0x40005F8BE0000000
  %2815 = fsub fast float 0x400C5BF8A0000000, %2814
  %2816 = fdiv fast float %2804, %2815
  %2817 = fmul fast float %2816, 0x3FEE31C3C0000000
  %2818 = fmul fast float %2817, %2813
  %2819 = fmul fast float %2803, 0x3FDACB7480000000
  %2820 = fadd fast float %2819, 0xBFD7347680000000
  %2821 = fmul fast float %2820, %2816
  %2822 = fmul fast float %2821, %2813
  %2823 = fmul float %2818, 0x3FDF454380000000
  br label %2824

; <label>:2824                                    ; preds = %2794, %2774
  %2825 = phi float [ %2809, %2794 ], [ 0.000000e+00, %2774 ]
  %2826 = phi float [ %2810, %2794 ], [ 0.000000e+00, %2774 ]
  %2827 = phi float [ %2811, %2794 ], [ 0.000000e+00, %2774 ]
  %2828 = phi float [ %2823, %2794 ], [ 0.000000e+00, %2774 ]
  %2829 = phi float [ %2822, %2794 ], [ 0.000000e+00, %2774 ]
  %2830 = call float @dx.op.dot3.f32(i32 55, float %2825, float %2826, float %2827, float %1983, float %1984, float %1985)  ; Dot3(ax,ay,az,bx,by,bz)
  %2831 = fmul fast float %2830, %2830
  %2832 = fmul fast float %2831, 0x3FEE471020000000
  %2833 = fadd fast float %2832, 0xBFD42F6020000000
  %2834 = fmul fast float %2789, 0x3FD20DD760000000
  %2835 = fmul fast float %2833, %2829
  %2836 = fmul fast float %2828, %2830
  %2837 = fadd fast float %2836, %2834
  %2838 = fadd fast float %2837, %2835
  %2839 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2711)  ; FMax(a,b)
  %2840 = call float @dx.op.dot3.f32(i32 55, float %2732, float %2735, float %2738, float %2732, float %2735, float %2738)  ; Dot3(ax,ay,az,bx,by,bz)
  %2841 = fcmp fast oeq float %2840, 0.000000e+00
  %2842 = fcmp fast oeq float %2839, 0.000000e+00
  %2843 = or i1 %2842, %2841
  br i1 %2843, label %2874, label %2844

; <label>:2844                                    ; preds = %2824
  %2845 = fsub fast float -0.000000e+00, %2738
  %2846 = fsub fast float -0.000000e+00, %2732
  %2847 = call float @dx.op.unary.f32(i32 24, float %2840)  ; Sqrt(value)
  %2848 = fdiv fast float %2847, %2839
  %2849 = fcmp fast ogt float %2848, 0x3FFB6F8900000000
  %2850 = select i1 %2849, float 0x3FFB6F8900000000, float %2848
  %2851 = fmul fast float %2850, 0x3FE8A23460000000
  %2852 = call float @dx.op.unary.f32(i32 7, float %2851)  ; Saturate(value)
  %2853 = call float @dx.op.binary.f32(i32 35, float %2850, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2854 = fmul fast float %2852, %2839
  %2855 = fmul fast float %2853, 0x3FF279A740000000
  %2856 = fadd fast float %2855, -1.000000e+00
  %2857 = call float @dx.op.dot3.f32(i32 55, float %2845, float %2846, float %2735, float %2845, float %2846, float %2735)  ; Dot3(ax,ay,az,bx,by,bz)
  %2858 = call float @dx.op.unary.f32(i32 25, float %2857)  ; Rsqrt(value)
  %2859 = fmul fast float %2858, %2845
  %2860 = fmul fast float %2858, %2846
  %2861 = fmul fast float %2858, %2735
  %2862 = fmul fast float %2856, %2856
  %2863 = fsub fast float 1.000000e+00, %2862
  %2864 = fmul fast float %2853, 0x40005F8BE0000000
  %2865 = fsub fast float 0x400C5BF8A0000000, %2864
  %2866 = fdiv fast float %2854, %2865
  %2867 = fmul fast float %2866, 0x3FEE31C3C0000000
  %2868 = fmul fast float %2867, %2863
  %2869 = fmul fast float %2853, 0x3FDACB7480000000
  %2870 = fadd fast float %2869, 0xBFD7347680000000
  %2871 = fmul fast float %2870, %2866
  %2872 = fmul fast float %2871, %2863
  %2873 = fmul float %2868, 0x3FDF454380000000
  br label %2874

; <label>:2874                                    ; preds = %2844, %2824
  %2875 = phi float [ %2859, %2844 ], [ 0.000000e+00, %2824 ]
  %2876 = phi float [ %2860, %2844 ], [ 0.000000e+00, %2824 ]
  %2877 = phi float [ %2861, %2844 ], [ 0.000000e+00, %2824 ]
  %2878 = phi float [ %2873, %2844 ], [ 0.000000e+00, %2824 ]
  %2879 = phi float [ %2872, %2844 ], [ 0.000000e+00, %2824 ]
  %2880 = call float @dx.op.dot3.f32(i32 55, float %2875, float %2876, float %2877, float %1983, float %1984, float %1985)  ; Dot3(ax,ay,az,bx,by,bz)
  %2881 = fmul fast float %2880, %2880
  %2882 = fmul fast float %2881, 0x3FEE471020000000
  %2883 = fadd fast float %2882, 0xBFD42F6020000000
  %2884 = fmul fast float %2839, 0x3FD20DD760000000
  %2885 = fmul fast float %2883, %2879
  %2886 = fmul fast float %2878, %2880
  %2887 = fadd fast float %2886, %2884
  %2888 = fadd fast float %2887, %2885
  %2889 = call float @dx.op.binary.f32(i32 35, float %2788, float 0.000000e+00)  ; FMax(a,b)
  %2890 = call float @dx.op.binary.f32(i32 35, float %2838, float 0.000000e+00)  ; FMax(a,b)
  %2891 = call float @dx.op.binary.f32(i32 35, float %2888, float 0.000000e+00)  ; FMax(a,b)
  %2892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2893 = extractvalue %dx.types.CBufRet.f32 %2892, 0
  %2894 = call float @dx.op.binary.f32(i32 36, float %1995, float %2893)  ; FMin(a,b)
  %2895 = fsub fast float 1.000000e+00, %2106
  %2896 = fmul fast float %2894, %2895
  %2897 = fsub fast float 1.000000e+00, %2896
  %2898 = bitcast float %2897 to i32
  %2899 = sub nsw i32 2129859010, %2898
  %2900 = bitcast i32 %2899 to float
  %2901 = call float @dx.op.binary.f32(i32 36, float %1996, float %2893)  ; FMin(a,b)
  %2902 = fmul fast float %2901, %2895
  %2903 = fsub fast float 1.000000e+00, %2902
  %2904 = bitcast float %2903 to i32
  %2905 = sub nsw i32 2129859010, %2904
  %2906 = bitcast i32 %2905 to float
  %2907 = call float @dx.op.binary.f32(i32 36, float %1997, float %2893)  ; FMin(a,b)
  %2908 = fmul fast float %2907, %2895
  %2909 = fsub fast float 1.000000e+00, %2908
  %2910 = bitcast float %2909 to i32
  %2911 = sub nsw i32 2129859010, %2910
  %2912 = bitcast i32 %2911 to float
  %2913 = fmul fast float %2889, %2106
  %2914 = fmul fast float %2913, %2900
  %2915 = fmul fast float %2890, %2106
  %2916 = fmul fast float %2915, %2906
  %2917 = fmul fast float %2891, %2106
  %2918 = fmul fast float %2917, %2912
  %2919 = call float @dx.op.dot3.f32(i32 55, float %2914, float %2916, float %2918, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2920 = select i1 %2099, float 0.000000e+00, float %2914
  %2921 = select i1 %2099, float %2919, float %2916
  %2922 = select i1 %2099, float 0.000000e+00, float %2918
  %2923 = fsub fast float 1.000000e+00, %2004
  %2924 = fsub fast float 1.000000e+00, %2005
  %2925 = fsub fast float 1.000000e+00, %2103
  %2926 = fmul fast float %2043, %2923
  %2927 = fmul fast float %2043, %2924
  %2928 = fmul fast float %2925, %2043
  %2929 = fadd fast float %2926, %2004
  %2930 = fadd fast float %2927, %2005
  %2931 = fadd fast float %2928, %2103
  %2932 = call float @dx.op.binary.f32(i32 35, float %2930, float %2931)  ; FMax(a,b)
  %2933 = call float @dx.op.binary.f32(i32 35, float %2929, float %2932)  ; FMax(a,b)
  %2934 = fsub fast float 1.000000e+00, %2933
  %2935 = fmul fast float %2920, %2934
  %2936 = fmul fast float %2921, %2934
  %2937 = fmul fast float %2922, %2934
  %2938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2939 = extractvalue %dx.types.CBufRet.f32 %2938, 3
  %2940 = fcmp fast oeq float %2939, 0.000000e+00
  br i1 %2940, label %3092, label %2941

; <label>:2941                                    ; preds = %2874
  %2942 = extractvalue %dx.types.CBufRet.f32 %2938, 0
  %2943 = extractvalue %dx.types.CBufRet.f32 %2938, 1
  %2944 = extractvalue %dx.types.CBufRet.f32 %2938, 2
  %2945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2946 = extractvalue %dx.types.CBufRet.f32 %2945, 0
  %2947 = extractvalue %dx.types.CBufRet.f32 %2945, 1
  %2948 = extractvalue %dx.types.CBufRet.f32 %2945, 2
  %2949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2950 = extractvalue %dx.types.CBufRet.f32 %2949, 0
  %2951 = extractvalue %dx.types.CBufRet.f32 %2949, 1
  %2952 = call float @dx.op.dot3.f32(i32 55, float %2946, float %2947, float %2948, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2953 = select i1 %2099, float %2950, float %2946
  %2954 = select i1 %2099, float %2952, float %2947
  %2955 = select i1 %2099, float %2951, float %2948
  %2956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2957 = extractvalue %dx.types.CBufRet.f32 %2956, 1
  %2958 = fcmp fast une float %2957, 0.000000e+00
  br i1 %2958, label %2959, label %2976

; <label>:2959                                    ; preds = %2941
  %2960 = fptoui float %53 to i32
  %2961 = fptoui float %54 to i32
  %2962 = lshr i32 %2960, 4
  %2963 = lshr i32 %2961, 4
  %2964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2965 = extractvalue %dx.types.CBufRet.f32 %2964, 0
  %2966 = fptoui float %2965 to i32
  %2967 = add i32 %2966, 15
  %2968 = lshr i32 %2967, 4
  %2969 = mul i32 %2968, %2963
  %2970 = add i32 %2969, %2962
  %2971 = shl i32 %2970, 3
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = and i32 %2973, -268435456
  %2975 = icmp eq i32 %2974, -1342177280
  br i1 %2975, label %2986, label %2976

; <label>:2976                                    ; preds = %2959, %2941
  %2977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2978 = extractvalue %dx.types.CBufRet.f32 %2977, 2
  %2979 = extractvalue %dx.types.CBufRet.f32 %2977, 3
  %2980 = fmul fast float %2978, %53
  %2981 = fmul fast float %2979, %54
  %2982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %33, float %2980, float %2981, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2983 = extractvalue %dx.types.ResRet.f32 %2982, 0
  %2984 = extractvalue %dx.types.ResRet.f32 %2982, 1
  %2985 = extractvalue %dx.types.ResRet.f32 %2982, 2
  br label %2986

; <label>:2986                                    ; preds = %2976, %2959
  %2987 = phi float [ %2983, %2976 ], [ 0.000000e+00, %2959 ]
  %2988 = phi float [ %2984, %2976 ], [ 0.000000e+00, %2959 ]
  %2989 = phi float [ %2985, %2976 ], [ 0.000000e+00, %2959 ]
  %2990 = call float @dx.op.binary.f32(i32 36, float %2988, float %2989)  ; FMin(a,b)
  %2991 = call float @dx.op.binary.f32(i32 36, float %2987, float %2990)  ; FMin(a,b)
  %2992 = fcmp fast ogt float %2991, 0.000000e+00
  br i1 %2992, label %2993, label %3092, !dx.controlflow.hints !94

; <label>:2993                                    ; preds = %2986
  %2994 = fmul fast float %2987, %2953
  %2995 = fmul fast float %2988, %2954
  %2996 = fmul fast float %2989, %2955
  %2997 = fsub fast float %2942, %2011
  %2998 = fsub fast float %2943, %2012
  %2999 = fsub fast float %2944, %2013
  %3000 = call float @dx.op.dot3.f32(i32 55, float %2997, float %2998, float %2999, float %2997, float %2998, float %2999)  ; Dot3(ax,ay,az,bx,by,bz)
  %3001 = call float @dx.op.unary.f32(i32 25, float %3000)  ; Rsqrt(value)
  %3002 = fmul fast float %3001, %2997
  %3003 = fmul fast float %3001, %2998
  %3004 = fmul fast float %3001, %2999
  %3005 = call float @dx.op.dot3.f32(i32 55, float %2942, float %2943, float %2944, float %1983, float %1984, float %1985)  ; Dot3(ax,ay,az,bx,by,bz)
  %3006 = call float @dx.op.dot3.f32(i32 55, float %2100, float %2101, float %2102, float %3002, float %3003, float %3004)  ; Dot3(ax,ay,az,bx,by,bz)
  %3007 = call float @dx.op.unary.f32(i32 7, float %3005)  ; Saturate(value)
  %3008 = fmul fast float %3007, %3007
  %3009 = fmul fast float %3008, %2110
  %3010 = call float @dx.op.unary.f32(i32 7, float %3009)  ; Saturate(value)
  %3011 = fmul fast float %3010, %3007
  %3012 = call float @dx.op.dot3.f32(i32 55, float %1983, float %1984, float %1985, float %3002, float %3003, float %3004)  ; Dot3(ax,ay,az,bx,by,bz)
  %3013 = fmul fast float %3012, %3012
  %3014 = call float @dx.op.unary.f32(i32 6, float %3005)  ; FAbs(value)
  %3015 = fsub fast float 1.000000e+00, %2047
  %3016 = call float @dx.op.binary.f32(i32 35, float %3015, float 0x3F847AE140000000)  ; FMax(a,b)
  %3017 = fmul fast float %3016, %3016
  %3018 = fmul fast float %3017, %3017
  %3019 = fsub fast float 1.000000e+00, %3018
  %3020 = fmul fast float %2105, %2105
  %3021 = fmul fast float %3020, %3019
  %3022 = fadd fast float %3021, %3018
  %3023 = bitcast float %3022 to i32
  %3024 = ashr i32 %3023, 1
  %3025 = add nsw i32 %3024, 532487669
  %3026 = bitcast i32 %3025 to float
  %3027 = fadd fast float %3026, %2105
  %3028 = fmul fast float %3018, %3013
  %3029 = fsub fast float 1.000000e+00, %3013
  %3030 = fadd fast float %3029, %3028
  %3031 = fmul fast float %3014, %3014
  %3032 = fmul fast float %3031, %3019
  %3033 = fadd fast float %3032, %3018
  %3034 = bitcast float %3033 to i32
  %3035 = ashr i32 %3034, 1
  %3036 = add nsw i32 %3035, 532487669
  %3037 = bitcast i32 %3036 to float
  %3038 = fadd fast float %3037, %3014
  %3039 = fmul fast float %3030, %3030
  %3040 = fmul fast float %3039, %3027
  %3041 = fmul fast float %3040, %3038
  %3042 = fdiv fast float 0x3FF0A00000000000, %3041
  %3043 = fmul fast float %3042, %3018
  %3044 = call float @dx.op.unary.f32(i32 6, float %3006)  ; FAbs(value)
  %3045 = fsub fast float 1.000000e+00, %3044
  %3046 = bitcast float %3045 to i32
  %3047 = sitofp i32 %3046 to float
  %3048 = fmul fast float %3047, 5.000000e+00
  %3049 = fadd fast float %3048, 0xC1EFBF8940000000
  %3050 = fptosi float %3049 to i32
  %3051 = bitcast i32 %3050 to float
  %3052 = fmul fast float %3051, %2923
  %3053 = fmul fast float %3051, %2924
  %3054 = fmul fast float %3051, %2925
  %3055 = fadd fast float %3052, %2004
  %3056 = fadd fast float %3053, %2005
  %3057 = fadd fast float %3054, %2103
  %3058 = fmul fast float %3005, 9.843750e-01
  %3059 = fmul fast float %2047, 9.843750e-01
  %3060 = fadd fast float %3058, 7.812500e-03
  %3061 = fadd fast float %3059, 7.812500e-03
  %3062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %32, float %3060, float %3061, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3063 = extractvalue %dx.types.ResRet.f32 %3062, 2
  %3064 = extractvalue %dx.types.ResRet.f32 %3062, 3
  %3065 = fmul fast float %3063, %2004
  %3066 = fmul fast float %3063, %2005
  %3067 = fmul fast float %3063, %2103
  %3068 = fadd fast float %3065, %3064
  %3069 = fadd fast float %3066, %3064
  %3070 = fadd fast float %3067, %3064
  %3071 = call float @dx.op.binary.f32(i32 35, float %3069, float %3070)  ; FMax(a,b)
  %3072 = call float @dx.op.binary.f32(i32 35, float %3068, float %3071)  ; FMax(a,b)
  %3073 = fsub fast float 1.000000e+00, %3072
  %3074 = fmul fast float %3011, %2994
  %3075 = fmul fast float %3074, %3073
  %3076 = fmul fast float %3011, %2995
  %3077 = fmul fast float %3076, %3073
  %3078 = fmul fast float %3011, %2996
  %3079 = fmul fast float %3078, %3073
  %3080 = fadd fast float %3075, %2935
  %3081 = fadd fast float %3077, %2936
  %3082 = fadd fast float %3079, %2937
  %3083 = fmul fast float %3074, %3043
  %3084 = fmul fast float %3083, %3055
  %3085 = fmul fast float %3076, %3043
  %3086 = fmul fast float %3085, %3056
  %3087 = fmul fast float %3078, %3043
  %3088 = fmul fast float %3087, %3057
  %3089 = fadd fast float %3084, %1947
  %3090 = fadd fast float %3086, %1948
  %3091 = fadd fast float %3088, %1949
  br label %3092

; <label>:3092                                    ; preds = %2993, %2986, %2874
  %3093 = phi float [ %2987, %2993 ], [ 0.000000e+00, %2874 ], [ 0.000000e+00, %2986 ]
  %3094 = phi float [ %3089, %2993 ], [ %1947, %2874 ], [ %1947, %2986 ]
  %3095 = phi float [ %3090, %2993 ], [ %1948, %2874 ], [ %1948, %2986 ]
  %3096 = phi float [ %3091, %2993 ], [ %1949, %2874 ], [ %1949, %2986 ]
  %3097 = phi float [ %3080, %2993 ], [ %2935, %2874 ], [ %2935, %2986 ]
  %3098 = phi float [ %3081, %2993 ], [ %2936, %2874 ], [ %2936, %2986 ]
  %3099 = phi float [ %3082, %2993 ], [ %2937, %2874 ], [ %2937, %2986 ]
  %3100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3101 = extractvalue %dx.types.CBufRet.i32 %3100, 0
  %3102 = icmp eq i32 %3101, 0
  br i1 %3102, label %3585, label %3103

; <label>:3103                                    ; preds = %3092
  %3104 = fptoui float %53 to i32
  %3105 = fptoui float %54 to i32
  %3106 = lshr i32 %3104, 4
  %3107 = lshr i32 %3105, 4
  %3108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3109 = extractvalue %dx.types.CBufRet.i32 %3108, 0
  %3110 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3107, i32 %3109, i32 %3106)  ; UMad(a,b,c)
  %3111 = add nsw i32 %3101, -1
  %3112 = call i32 @dx.op.binary.i32(i32 37, i32 %3111, i32 0)  ; IMax(a,b)
  %3113 = call float @dx.op.binary.f32(i32 35, float %49, float 0.000000e+00)  ; FMax(a,b)
  %3114 = fptoui float %3113 to i32
  %3115 = lshr i32 %3114, 5
  %3116 = call i32 @dx.op.binary.i32(i32 40, i32 %3115, i32 8191)  ; UMin(a,b)
  %3117 = shl i32 %3116, 2
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = lshr i32 %3119, 16
  %3121 = and i32 %3119, 65535
  %3122 = lshr i32 %3119, 21
  %3123 = lshr i32 %3121, 5
  %3124 = call i32 @dx.op.binary.i32(i32 40, i32 %3123, i32 %3112)  ; UMin(a,b)
  %3125 = icmp ugt i32 %3122, %3124
  br i1 %3125, label %3585, label %3126

; <label>:3126                                    ; preds = %3103
  br label %3127

; <label>:3127                                    ; preds = %3575, %3126
  %3128 = phi i32 [ %3582, %3575 ], [ %3122, %3126 ]
  %3129 = phi float [ %3576, %3575 ], [ %3094, %3126 ]
  %3130 = phi float [ %3577, %3575 ], [ %3095, %3126 ]
  %3131 = phi float [ %3578, %3575 ], [ %3096, %3126 ]
  %3132 = phi float [ %3579, %3575 ], [ %3097, %3126 ]
  %3133 = phi float [ %3580, %3575 ], [ %3098, %3126 ]
  %3134 = phi float [ %3581, %3575 ], [ %3099, %3126 ]
  %3135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3136 = extractvalue %dx.types.CBufRet.i32 %3135, 0
  %3137 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3110, i32 %3136, i32 %3128)  ; UMad(a,b,c)
  %3138 = shl i32 %3137, 2
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = shl i32 %3128, 5
  %3142 = sub nsw i32 %3120, %3141
  %3143 = call i32 @dx.op.binary.i32(i32 37, i32 %3142, i32 0)  ; IMax(a,b)
  %3144 = call i32 @dx.op.binary.i32(i32 38, i32 %3143, i32 31)  ; IMin(a,b)
  %3145 = sub nsw i32 1, %3120
  %3146 = add nsw i32 %3145, %3121
  %3147 = call i32 @dx.op.binary.i32(i32 37, i32 %3146, i32 0)  ; IMax(a,b)
  %3148 = call i32 @dx.op.binary.i32(i32 38, i32 %3147, i32 32)  ; IMin(a,b)
  %3149 = and i32 %3148, 31
  %3150 = shl i32 -1, %3149
  %3151 = xor i32 %3150, -1
  %3152 = and i32 %3144, 31
  %3153 = shl i32 %3151, %3152
  %3154 = icmp eq i32 %3148, 32
  %3155 = select i1 %3154, i32 -1, i32 %3153
  %3156 = and i32 %3155, %3140
  %3157 = icmp eq i32 %3156, 0
  br i1 %3157, label %3575, label %3158

; <label>:3158                                    ; preds = %3127
  br label %3159

; <label>:3159                                    ; preds = %3293, %3158
  %3160 = phi i32 [ %3171, %3293 ], [ %3156, %3158 ]
  %3161 = phi float [ %3294, %3293 ], [ %3129, %3158 ]
  %3162 = phi float [ %3295, %3293 ], [ %3130, %3158 ]
  %3163 = phi float [ %3296, %3293 ], [ %3131, %3158 ]
  %3164 = phi float [ %3297, %3293 ], [ %3132, %3158 ]
  %3165 = phi float [ %3298, %3293 ], [ %3133, %3158 ]
  %3166 = phi float [ %3299, %3293 ], [ %3134, %3158 ]
  %3167 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3160)  ; FirstbitLo(value)
  %3168 = add i32 %3167, %3141
  %3169 = and i32 %3167, 31
  %3170 = shl i32 1, %3169
  %3171 = xor i32 %3170, %3160
  %3172 = mul i32 %3168, 112
  %3173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3172, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.f32 %3173, 0
  %3175 = extractvalue %dx.types.ResRet.f32 %3173, 1
  %3176 = extractvalue %dx.types.ResRet.f32 %3173, 2
  %3177 = or i32 %3172, 12
  %3178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3177, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.f32 %3178, 0
  %3180 = add i32 %3172, 16
  %3181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3180, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.f32 %3181, 0
  %3183 = extractvalue %dx.types.ResRet.f32 %3181, 1
  %3184 = extractvalue %dx.types.ResRet.f32 %3181, 2
  %3185 = add i32 %3172, 28
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3185, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = add i32 %3172, 44
  %3189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3188, i32 undef)  ; BufferLoad(srv,index,wot)
  %3190 = extractvalue %dx.types.ResRet.f32 %3189, 0
  %3191 = add i32 %3172, 48
  %3192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3191, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.f32 %3192, 0
  %3194 = extractvalue %dx.types.ResRet.f32 %3192, 1
  %3195 = extractvalue %dx.types.ResRet.f32 %3192, 2
  %3196 = extractvalue %dx.types.ResRet.f32 %3192, 3
  %3197 = add i32 %3172, 64
  %3198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.f32 %3198, 0
  %3200 = extractvalue %dx.types.ResRet.f32 %3198, 1
  %3201 = extractvalue %dx.types.ResRet.f32 %3198, 2
  %3202 = extractvalue %dx.types.ResRet.f32 %3198, 3
  %3203 = add i32 %3172, 80
  %3204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3203, i32 undef)  ; BufferLoad(srv,index,wot)
  %3205 = extractvalue %dx.types.ResRet.f32 %3204, 1
  %3206 = extractvalue %dx.types.ResRet.f32 %3204, 2
  %3207 = add i32 %3172, 92
  %3208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3207, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.i32 %3208, 0
  %3210 = call float @dx.op.dot3.f32(i32 55, float %3174, float %3175, float %3176, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3211 = select i1 %2099, float %3205, float %3174
  %3212 = select i1 %2099, float %3210, float %3175
  %3213 = select i1 %2099, float %3206, float %3176
  %3214 = and i32 %3209, 65535
  %3215 = uitofp i32 %3214 to float
  %3216 = lshr i32 %3209, 16
  %3217 = uitofp i32 %3216 to float
  %3218 = and i32 %3187, 65535
  %3219 = and i32 %3187, 50331648
  %3220 = icmp eq i32 %3219, 33554432
  %3221 = fsub fast float %3193, %97
  %3222 = fsub fast float %3194, %98
  %3223 = fsub fast float %3195, %99
  %3224 = call float @dx.op.dot3.f32(i32 55, float %3221, float %3222, float %3223, float %3221, float %3222, float %3223)  ; Dot3(ax,ay,az,bx,by,bz)
  %3225 = call float @dx.op.unary.f32(i32 24, float %3224)  ; Sqrt(value)
  %3226 = fdiv fast float 1.000000e+00, %3225
  %3227 = fmul fast float %3226, %3221
  %3228 = fmul fast float %3226, %3222
  %3229 = fmul fast float %3226, %3223
  %3230 = fadd fast float %3225, %3179
  %3231 = fdiv fast float 1.000000e+00, %3230
  %3232 = fmul float %3190, %3231
  %3233 = fmul float %3232, %3232
  %3234 = call float @dx.op.unary.f32(i32 7, float %3233)  ; Saturate(value)
  br i1 %3220, label %3235, label %3256

; <label>:3235                                    ; preds = %3159
  %3236 = fmul fast float %3201, %3182
  %3237 = fmul fast float %3201, %3183
  %3238 = fmul fast float %3201, %3184
  %3239 = fadd fast float %3221, %3236
  %3240 = fadd fast float %3222, %3237
  %3241 = fadd fast float %3223, %3238
  %3242 = call float @dx.op.dot3.f32(i32 55, float %3239, float %3240, float %3241, float %3239, float %3240, float %3241)  ; Dot3(ax,ay,az,bx,by,bz)
  %3243 = call float @dx.op.unary.f32(i32 25, float %3242)  ; Rsqrt(value)
  %3244 = fmul fast float %3243, %3239
  %3245 = fmul fast float %3243, %3240
  %3246 = fmul fast float %3243, %3241
  %3247 = fsub fast float %97, %3193
  %3248 = fsub fast float %98, %3194
  %3249 = fsub fast float %99, %3195
  %3250 = fsub fast float -0.000000e+00, %3247
  %3251 = fsub fast float -0.000000e+00, %3248
  %3252 = fsub fast float -0.000000e+00, %3249
  %3253 = call float @dx.op.dot3.f32(i32 55, float %3250, float %3251, float %3252, float %3182, float %3183, float %3184)  ; Dot3(ax,ay,az,bx,by,bz)
  %3254 = fcmp fast ogt float %3253, 0.000000e+00
  %3255 = uitofp i1 %3254 to float
  br label %3256

; <label>:3256                                    ; preds = %3235, %3159
  %3257 = phi float [ %3255, %3235 ], [ 1.000000e+00, %3159 ]
  %3258 = phi float [ %3244, %3235 ], [ %3227, %3159 ]
  %3259 = phi float [ %3245, %3235 ], [ %3228, %3159 ]
  %3260 = phi float [ %3246, %3235 ], [ %3229, %3159 ]
  %3261 = call float @dx.op.dot3.f32(i32 55, float %3182, float %3183, float %3184, float %3258, float %3259, float %3260)  ; Dot3(ax,ay,az,bx,by,bz)
  %3262 = fmul fast float %3261, %3261
  %3263 = call float @dx.op.unary.f32(i32 7, float %3262)  ; Saturate(value)
  %3264 = fsub fast float 1.000000e+00, %3263
  %3265 = fmul fast float %3264, 5.000000e-01
  %3266 = fcmp fast ogt float %3261, 0.000000e+00
  %3267 = fsub fast float 1.000000e+00, %3265
  %3268 = select i1 %3266, float %3265, float %3267
  %3269 = fmul fast float %3268, %3217
  %3270 = fadd fast float %3269, %3215
  %3271 = fmul fast float %3270, 0x3EF0001000000000
  %3272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %32, float %3271, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3273 = extractvalue %dx.types.ResRet.f32 %3272, 0
  %3274 = fmul fast float %3261, %3199
  %3275 = fadd fast float %3274, %3200
  %3276 = call float @dx.op.unary.f32(i32 7, float %3275)  ; Saturate(value)
  %3277 = select i1 %3220, float 1.000000e+00, float %3276
  %3278 = select i1 %3220, float %3276, float 1.000000e+00
  %3279 = fmul fast float %3225, %3196
  %3280 = fsub fast float 1.000000e+00, %3279
  %3281 = fmul fast float %3280, %3202
  %3282 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  %3283 = fmul fast float %3282, %3278
  %3284 = fmul fast float %3283, 2.000000e+00
  %3285 = fsub fast float 3.000000e+00, %3284
  %3286 = fmul fast float %3273, %3257
  %3287 = fmul fast float %3283, %3283
  %3288 = fmul fast float %3287, %3286
  %3289 = fmul fast float %3288, %3285
  %3290 = call float @dx.op.binary.f32(i32 36, float %3289, float %3289)  ; FMin(a,b)
  %3291 = call float @dx.op.binary.f32(i32 36, float %3289, float %3290)  ; FMin(a,b)
  %3292 = fcmp fast ogt float %3291, 0.000000e+00
  br i1 %3292, label %3301, label %3293, !dx.controlflow.hints !95

; <label>:3293                                    ; preds = %3445, %3440, %3256
  %3294 = phi float [ %3161, %3440 ], [ %3161, %3256 ], [ %3571, %3445 ]
  %3295 = phi float [ %3162, %3440 ], [ %3162, %3256 ], [ %3572, %3445 ]
  %3296 = phi float [ %3163, %3440 ], [ %3163, %3256 ], [ %3573, %3445 ]
  %3297 = phi float [ %3164, %3440 ], [ %3164, %3256 ], [ %3562, %3445 ]
  %3298 = phi float [ %3165, %3440 ], [ %3165, %3256 ], [ %3563, %3445 ]
  %3299 = phi float [ %3166, %3440 ], [ %3166, %3256 ], [ %3564, %3445 ]
  %3300 = icmp eq i32 %3160, %3170
  br i1 %3300, label %3574, label %3159

; <label>:3301                                    ; preds = %3256
  %3302 = icmp eq i32 %3218, 255
  br i1 %3302, label %3440, label %3303, !dx.controlflow.hints !96

; <label>:3303                                    ; preds = %3301
  %3304 = mul nuw nsw i32 %3218, 176
  %3305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3304, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.f32 %3305, 0
  %3307 = extractvalue %dx.types.ResRet.f32 %3305, 1
  %3308 = extractvalue %dx.types.ResRet.f32 %3305, 2
  %3309 = extractvalue %dx.types.ResRet.f32 %3305, 3
  %3310 = add nuw nsw i32 %3304, 16
  %3311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.f32 %3311, 0
  %3313 = extractvalue %dx.types.ResRet.f32 %3311, 1
  %3314 = add nuw nsw i32 %3304, 32
  %3315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.f32 %3315, 0
  %3317 = extractvalue %dx.types.ResRet.f32 %3315, 1
  %3318 = add nuw nsw i32 %3304, 48
  %3319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3318, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.f32 %3319, 0
  %3321 = extractvalue %dx.types.ResRet.f32 %3319, 1
  %3322 = extractvalue %dx.types.ResRet.f32 %3319, 2
  %3323 = extractvalue %dx.types.ResRet.f32 %3319, 3
  %3324 = add nuw nsw i32 %3304, 64
  %3325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.f32 %3325, 0
  %3327 = extractvalue %dx.types.ResRet.f32 %3325, 1
  %3328 = extractvalue %dx.types.ResRet.f32 %3325, 2
  %3329 = extractvalue %dx.types.ResRet.f32 %3325, 3
  %3330 = add nuw nsw i32 %3304, 80
  %3331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.f32 %3331, 0
  %3333 = extractvalue %dx.types.ResRet.f32 %3331, 1
  %3334 = extractvalue %dx.types.ResRet.f32 %3331, 2
  %3335 = extractvalue %dx.types.ResRet.f32 %3331, 3
  %3336 = add nuw nsw i32 %3304, 96
  %3337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.f32 %3337, 0
  %3339 = extractvalue %dx.types.ResRet.f32 %3337, 1
  %3340 = extractvalue %dx.types.ResRet.f32 %3337, 2
  %3341 = extractvalue %dx.types.ResRet.f32 %3337, 3
  %3342 = bitcast float %3313 to i32
  %3343 = fmul fast float %3320, %97
  %3344 = call float @dx.op.tertiary.f32(i32 46, float %98, float %3326, float %3343)  ; FMad(a,b,c)
  %3345 = call float @dx.op.tertiary.f32(i32 46, float %99, float %3332, float %3344)  ; FMad(a,b,c)
  %3346 = fadd fast float %3345, %3338
  %3347 = fmul fast float %3321, %97
  %3348 = call float @dx.op.tertiary.f32(i32 46, float %98, float %3327, float %3347)  ; FMad(a,b,c)
  %3349 = call float @dx.op.tertiary.f32(i32 46, float %99, float %3333, float %3348)  ; FMad(a,b,c)
  %3350 = fadd fast float %3349, %3339
  %3351 = fmul fast float %3322, %97
  %3352 = call float @dx.op.tertiary.f32(i32 46, float %98, float %3328, float %3351)  ; FMad(a,b,c)
  %3353 = call float @dx.op.tertiary.f32(i32 46, float %99, float %3334, float %3352)  ; FMad(a,b,c)
  %3354 = fadd fast float %3353, %3340
  %3355 = fmul fast float %3323, %97
  %3356 = call float @dx.op.tertiary.f32(i32 46, float %98, float %3329, float %3355)  ; FMad(a,b,c)
  %3357 = call float @dx.op.tertiary.f32(i32 46, float %99, float %3335, float %3356)  ; FMad(a,b,c)
  %3358 = fadd fast float %3357, %3341
  %3359 = fdiv fast float %3346, %3358
  %3360 = fdiv fast float %3350, %3358
  %3361 = fdiv fast float %3354, %3358
  %3362 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %3361)  ; FMax(a,b)
  %3363 = fmul fast float %1471, 0x401921FB60000000
  %3364 = call float @dx.op.unary.f32(i32 13, float %3363)  ; Sin(value)
  %3365 = call float @dx.op.unary.f32(i32 12, float %3363)  ; Cos(value)
  %3366 = fmul fast float %3365, %3317
  %3367 = call float @dx.op.tertiary.f32(i32 46, float %3364, float %3317, float 0.000000e+00)  ; FMad(a,b,c)
  %3368 = fmul fast float %3317, %3364
  %3369 = fsub fast float -0.000000e+00, %3368
  %3370 = call float @dx.op.tertiary.f32(i32 46, float %3365, float %3317, float 0.000000e+00)  ; FMad(a,b,c)
  br label %3371

; <label>:3371                                    ; preds = %3371, %3303
  %3372 = phi float [ 0.000000e+00, %3303 ], [ %3404, %3371 ]
  %3373 = phi float [ 0.000000e+00, %3303 ], [ %3406, %3371 ]
  %3374 = phi i32 [ 0, %3303 ], [ %3407, %3371 ]
  %3375 = mul i32 %3374, 2
  %3376 = add i32 0, %3375
  %3377 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3376
  %3378 = load float, float* %3377, align 4
  %3379 = mul i32 %3374, 2
  %3380 = add i32 1, %3379
  %3381 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3380
  %3382 = load float, float* %3381, align 4
  %3383 = fmul fast float %3366, %3378
  %3384 = call float @dx.op.tertiary.f32(i32 46, float %3382, float %3369, float %3383)  ; FMad(a,b,c)
  %3385 = fmul fast float %3378, %3367
  %3386 = call float @dx.op.tertiary.f32(i32 46, float %3382, float %3370, float %3385)  ; FMad(a,b,c)
  %3387 = fadd fast float %3384, %3359
  %3388 = fadd fast float %3386, %3360
  %3389 = fmul fast float %3387, %3312
  %3390 = fmul fast float %3388, %3312
  %3391 = call float @dx.op.binary.f32(i32 35, float %3389, float %3308)  ; FMax(a,b)
  %3392 = call float @dx.op.binary.f32(i32 35, float %3390, float %3308)  ; FMax(a,b)
  %3393 = call float @dx.op.binary.f32(i32 36, float %3391, float %3309)  ; FMin(a,b)
  %3394 = call float @dx.op.binary.f32(i32 36, float %3392, float %3309)  ; FMin(a,b)
  %3395 = fadd fast float %3393, %3306
  %3396 = fadd fast float %3394, %3307
  %3397 = uitofp i32 %3342 to float
  %3398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %33, float %3395, float %3396, float %3397, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3399 = extractvalue %dx.types.ResRet.f32 %3398, 0
  %3400 = fsub fast float %3399, %3362
  %3401 = fsub fast float %3400, %3316
  %3402 = fcmp fast ogt float %3401, 0.000000e+00
  %3403 = select i1 %3402, float 1.000000e+00, float 0.000000e+00
  %3404 = fadd fast float %3403, %3372
  %3405 = select i1 %3402, float %3401, float 0.000000e+00
  %3406 = fadd fast float %3405, %3373
  %3407 = add nuw nsw i32 %3374, 1
  %3408 = icmp eq i32 %3407, 8
  br i1 %3408, label %3409, label %3371

; <label>:3409                                    ; preds = %3371
  %3410 = fdiv fast float 1.000000e+00, %3404
  %3411 = fmul fast float %3410, %3406
  %3412 = fdiv fast float 1.000000e+00, %3362
  %3413 = fmul fast float %3411, %3412
  %3414 = call float @dx.op.unary.f32(i32 7, float %3413)  ; Saturate(value)
  %3415 = call float @dx.op.binary.f32(i32 35, float %3414, float 0.000000e+00)  ; FMax(a,b)
  %3416 = fmul fast float %3404, 1.250000e-01
  %3417 = call float @dx.op.unary.f32(i32 7, float %3416)  ; Saturate(value)
  %3418 = fmul fast float %3417, 2.000000e+00
  %3419 = fadd fast float %3418, -1.000000e+00
  %3420 = fcmp fast ogt float %3419, 0.000000e+00
  %3421 = fcmp fast olt float %3419, 0.000000e+00
  %3422 = zext i1 %3420 to i32
  %3423 = zext i1 %3421 to i32
  %3424 = sub nsw i32 %3422, %3423
  %3425 = sitofp i32 %3424 to float
  %3426 = fmul fast float %3425, %3419
  %3427 = fsub fast float 1.000000e+00, %3426
  %3428 = fmul fast float %3427, %3427
  %3429 = fmul fast float %3428, %3427
  %3430 = fsub fast float %3427, %3429
  %3431 = fmul fast float %3430, %3415
  %3432 = fsub fast float 1.000000e+00, %3429
  %3433 = fsub fast float %3432, %3431
  %3434 = fmul fast float %3425, 5.000000e-01
  %3435 = fmul fast float %3434, %3433
  %3436 = fsub fast float -5.000000e-01, %3435
  %3437 = fmul fast float %3436, %3277
  %3438 = fadd fast float %3437, 1.000000e+00
  %3439 = fmul fast float %3438, %3289
  br label %3440

; <label>:3440                                    ; preds = %3409, %3301
  %3441 = phi float [ %3439, %3409 ], [ %3289, %3301 ]
  %3442 = call float @dx.op.binary.f32(i32 36, float %3441, float %3441)  ; FMin(a,b)
  %3443 = call float @dx.op.binary.f32(i32 36, float %3441, float %3442)  ; FMin(a,b)
  %3444 = fcmp fast ogt float %3443, 0.000000e+00
  br i1 %3444, label %3445, label %3293, !dx.controlflow.hints !97

; <label>:3445                                    ; preds = %3440
  %3446 = fmul fast float %3441, %3211
  %3447 = fmul fast float %3441, %3212
  %3448 = fmul fast float %3441, %3213
  %3449 = fsub fast float %3227, %2011
  %3450 = fsub fast float %3228, %2012
  %3451 = fsub fast float %3229, %2013
  %3452 = call float @dx.op.dot3.f32(i32 55, float %3449, float %3450, float %3451, float %3449, float %3450, float %3451)  ; Dot3(ax,ay,az,bx,by,bz)
  %3453 = call float @dx.op.unary.f32(i32 25, float %3452)  ; Rsqrt(value)
  %3454 = fmul fast float %3453, %3449
  %3455 = fmul fast float %3453, %3450
  %3456 = fmul fast float %3453, %3451
  %3457 = call float @dx.op.dot3.f32(i32 55, float %3227, float %3228, float %3229, float %1983, float %1984, float %1985)  ; Dot3(ax,ay,az,bx,by,bz)
  %3458 = call float @dx.op.dot3.f32(i32 55, float %2100, float %2101, float %2102, float %3454, float %3455, float %3456)  ; Dot3(ax,ay,az,bx,by,bz)
  %3459 = call float @dx.op.unary.f32(i32 7, float %3457)  ; Saturate(value)
  %3460 = fmul fast float %3459, %3234
  %3461 = fmul fast float %3459, %3459
  %3462 = fmul fast float %3461, %2110
  %3463 = call float @dx.op.unary.f32(i32 7, float %3462)  ; Saturate(value)
  %3464 = fmul fast float %3460, %3463
  %3465 = bitcast float %3224 to i32
  %3466 = ashr i32 %3465, 1
  %3467 = sub nsw i32 1597463007, %3466
  %3468 = bitcast i32 %3467 to float
  %3469 = fmul fast float %3468, %3221
  %3470 = fmul fast float %3468, %3222
  %3471 = fmul fast float %3468, %3223
  %3472 = fsub fast float %3469, %2011
  %3473 = fsub fast float %3470, %2012
  %3474 = fsub fast float %3471, %2013
  %3475 = call float @dx.op.dot3.f32(i32 55, float %3472, float %3473, float %3474, float %3472, float %3473, float %3474)  ; Dot3(ax,ay,az,bx,by,bz)
  %3476 = call float @dx.op.unary.f32(i32 25, float %3475)  ; Rsqrt(value)
  %3477 = fmul fast float %3472, %3476
  %3478 = fmul fast float %3473, %3476
  %3479 = fmul fast float %3474, %3476
  %3480 = call float @dx.op.dot3.f32(i32 55, float %1983, float %1984, float %1985, float %3477, float %3478, float %3479)  ; Dot3(ax,ay,az,bx,by,bz)
  %3481 = fmul fast float %3480, %3480
  %3482 = call float @dx.op.unary.f32(i32 6, float %3457)  ; FAbs(value)
  %3483 = fsub fast float 1.000000e+00, %2047
  %3484 = call float @dx.op.binary.f32(i32 35, float %3483, float 0x3F847AE140000000)  ; FMax(a,b)
  %3485 = fmul fast float %3484, %3484
  %3486 = fmul fast float %3485, %3485
  %3487 = fsub fast float 1.000000e+00, %3486
  %3488 = fmul fast float %2105, %2105
  %3489 = fmul fast float %3488, %3487
  %3490 = fadd fast float %3489, %3486
  %3491 = bitcast float %3490 to i32
  %3492 = ashr i32 %3491, 1
  %3493 = add nsw i32 %3492, 532487669
  %3494 = bitcast i32 %3493 to float
  %3495 = fadd fast float %3494, %2105
  %3496 = fmul fast float %3486, %3481
  %3497 = fsub fast float 1.000000e+00, %3481
  %3498 = fadd fast float %3497, %3496
  %3499 = fmul fast float %3482, %3482
  %3500 = fmul fast float %3499, %3487
  %3501 = fadd fast float %3500, %3486
  %3502 = bitcast float %3501 to i32
  %3503 = ashr i32 %3502, 1
  %3504 = add nsw i32 %3503, 532487669
  %3505 = bitcast i32 %3504 to float
  %3506 = fadd fast float %3505, %3482
  %3507 = fmul fast float %3498, %3498
  %3508 = fmul fast float %3507, %3495
  %3509 = fmul fast float %3508, %3506
  %3510 = fdiv fast float 1.000000e+00, %3509
  %3511 = bitcast float %3486 to i32
  %3512 = sitofp i32 %3511 to float
  %3513 = fmul fast float %3512, 0x3FE7F73180000000
  %3514 = fadd fast float %3513, 0x41AFE27C40000000
  %3515 = fptosi float %3514 to i32
  %3516 = bitcast i32 %3515 to float
  %3517 = fmul fast float %3190, 0x3FD80E9D60000000
  %3518 = fmul fast float %3517, %3468
  %3519 = fadd fast float %3516, %3518
  %3520 = bitcast float %3519 to i32
  %3521 = sub nsw i32 2129859010, %3520
  %3522 = bitcast i32 %3521 to float
  %3523 = fmul fast float %3486, %3510
  %3524 = fmul fast float %3523, %3516
  %3525 = fmul fast float %3524, %3522
  %3526 = call float @dx.op.unary.f32(i32 6, float %3458)  ; FAbs(value)
  %3527 = fsub fast float 1.000000e+00, %3526
  %3528 = bitcast float %3527 to i32
  %3529 = sitofp i32 %3528 to float
  %3530 = fmul fast float %3529, 5.000000e+00
  %3531 = fadd fast float %3530, 0xC1EFBF8940000000
  %3532 = fptosi float %3531 to i32
  %3533 = bitcast i32 %3532 to float
  %3534 = fmul fast float %3533, %2923
  %3535 = fmul fast float %3533, %2924
  %3536 = fmul fast float %3533, %2925
  %3537 = fadd fast float %3534, %2004
  %3538 = fadd fast float %3535, %2005
  %3539 = fadd fast float %3536, %2103
  %3540 = fmul fast float %3457, 9.843750e-01
  %3541 = fmul fast float %2047, 9.843750e-01
  %3542 = fadd fast float %3540, 7.812500e-03
  %3543 = fadd fast float %3541, 7.812500e-03
  %3544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %32, float %3542, float %3543, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3545 = extractvalue %dx.types.ResRet.f32 %3544, 2
  %3546 = extractvalue %dx.types.ResRet.f32 %3544, 3
  %3547 = fmul fast float %3545, %2004
  %3548 = fmul fast float %3545, %2005
  %3549 = fmul fast float %3545, %2103
  %3550 = fadd fast float %3547, %3546
  %3551 = fadd fast float %3548, %3546
  %3552 = fadd fast float %3549, %3546
  %3553 = call float @dx.op.binary.f32(i32 35, float %3551, float %3552)  ; FMax(a,b)
  %3554 = call float @dx.op.binary.f32(i32 35, float %3550, float %3553)  ; FMax(a,b)
  %3555 = fsub fast float 1.000000e+00, %3554
  %3556 = fmul fast float %3464, %3446
  %3557 = fmul fast float %3556, %3555
  %3558 = fmul fast float %3464, %3447
  %3559 = fmul fast float %3558, %3555
  %3560 = fmul fast float %3464, %3448
  %3561 = fmul fast float %3560, %3555
  %3562 = fadd fast float %3557, %3164
  %3563 = fadd fast float %3559, %3165
  %3564 = fadd fast float %3561, %3166
  %3565 = fmul fast float %3556, %3537
  %3566 = fmul fast float %3565, %3525
  %3567 = fmul fast float %3558, %3538
  %3568 = fmul fast float %3567, %3525
  %3569 = fmul fast float %3560, %3539
  %3570 = fmul fast float %3569, %3525
  %3571 = fadd fast float %3566, %3161
  %3572 = fadd fast float %3568, %3162
  %3573 = fadd fast float %3570, %3163
  br label %3293

; <label>:3574                                    ; preds = %3293
  br label %3575

; <label>:3575                                    ; preds = %3574, %3127
  %3576 = phi float [ %3129, %3127 ], [ %3294, %3574 ]
  %3577 = phi float [ %3130, %3127 ], [ %3295, %3574 ]
  %3578 = phi float [ %3131, %3127 ], [ %3296, %3574 ]
  %3579 = phi float [ %3132, %3127 ], [ %3297, %3574 ]
  %3580 = phi float [ %3133, %3127 ], [ %3298, %3574 ]
  %3581 = phi float [ %3134, %3127 ], [ %3299, %3574 ]
  %3582 = add i32 %3128, 1
  %3583 = icmp ugt i32 %3582, %3124
  br i1 %3583, label %3584, label %3127

; <label>:3584                                    ; preds = %3575
  br label %3585

; <label>:3585                                    ; preds = %3584, %3103, %3092
  %3586 = phi float [ %3094, %3092 ], [ %3094, %3103 ], [ %3576, %3584 ]
  %3587 = phi float [ %3095, %3092 ], [ %3095, %3103 ], [ %3577, %3584 ]
  %3588 = phi float [ %3096, %3092 ], [ %3096, %3103 ], [ %3578, %3584 ]
  %3589 = phi float [ %3097, %3092 ], [ %3097, %3103 ], [ %3579, %3584 ]
  %3590 = phi float [ %3098, %3092 ], [ %3098, %3103 ], [ %3580, %3584 ]
  %3591 = phi float [ %3099, %3092 ], [ %3099, %3103 ], [ %3581, %3584 ]
  br i1 %39, label %3592, label %3811

; <label>:3592                                    ; preds = %3585
  %3593 = and i32 %2053, 65535
  %3594 = uitofp i32 %3593 to float
  %3595 = fmul fast float %3594, 0x3EF0001000000000
  %3596 = lshr i32 %2060, 16
  %3597 = uitofp i32 %3596 to float
  %3598 = fmul fast float %3597, 0x3EF0001000000000
  %3599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3600 = extractvalue %dx.types.CBufRet.f32 %3599, 3
  %3601 = fadd fast float %3600, 3.000000e+00
  %3602 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3603 = extractvalue %dx.types.CBufRet.i32 %3602, 0
  %3604 = call i32 @dx.op.binary.i32(i32 40, i32 %141, i32 %3603)  ; UMin(a,b)
  %3605 = mul i32 %3604, 36
  %3606 = add i32 %3605, 4
  %3607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3608 = extractvalue %dx.types.CBufRet.f32 %3607, 0
  %3609 = fmul fast float %3595, %3608
  %3610 = fmul fast float %3598, %3608
  %3611 = extractvalue %dx.types.CBufRet.f32 %3607, 1
  %3612 = fadd fast float %3609, %3611
  %3613 = fadd fast float %3610, %3611
  br i1 %260, label %3674, label %3614

; <label>:3614                                    ; preds = %3592
  br label %3615

; <label>:3615                                    ; preds = %3615, %3614
  %3616 = phi float [ %3659, %3615 ], [ 0.000000e+00, %3614 ]
  %3617 = phi float [ %3669, %3615 ], [ 0.000000e+00, %3614 ]
  %3618 = phi float [ %3670, %3615 ], [ 0.000000e+00, %3614 ]
  %3619 = phi float [ %3671, %3615 ], [ 0.000000e+00, %3614 ]
  %3620 = phi float [ %3663, %3615 ], [ 0.000000e+00, %3614 ]
  %3621 = phi float [ %3664, %3615 ], [ 0.000000e+00, %3614 ]
  %3622 = phi float [ %3665, %3615 ], [ 0.000000e+00, %3614 ]
  %3623 = phi i32 [ %3628, %3615 ], [ %145, %3614 ]
  %3624 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3623)  ; FirstbitLo(value)
  %3625 = and i32 %3624, 31
  %3626 = shl i32 1, %3625
  %3627 = xor i32 %3626, -1
  %3628 = and i32 %3623, %3627
  %3629 = shl i32 %3624, 2
  %3630 = add i32 %3606, %3629
  %3631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3630, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.i32 %3631, 0
  %3633 = and i32 %3632, 32767
  %3634 = add i32 %156, %3629
  %3635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3634, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.f32 %3635, 0
  %3637 = add i32 %160, %3629
  %3638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3637, i32 undef)  ; BufferLoad(srv,index,wot)
  %3639 = extractvalue %dx.types.ResRet.i32 %3638, 0
  %3640 = add i32 %3639, 0
  %3641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3640, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3641, %dx.types.Handle %30, float %3612, float %3613, float %3636, float undef, i32 0, i32 0, i32 undef, float %3601)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3643 = extractvalue %dx.types.ResRet.f32 %3642, 0
  %3644 = mul nuw nsw i32 %3633, 928
  %3645 = add nuw nsw i32 %3644, 44
  %3646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.f32 %3646, 0
  %3648 = add nuw nsw i32 %3644, 48
  %3649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = extractvalue %dx.types.ResRet.f32 %3649, 1
  %3652 = extractvalue %dx.types.ResRet.f32 %3649, 2
  %3653 = add nuw nsw i32 %3644, 60
  %3654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.f32 %3654, 0
  %3656 = extractvalue %dx.types.ResRet.f32 %3654, 1
  %3657 = extractvalue %dx.types.ResRet.f32 %3654, 2
  %3658 = fmul fast float %3647, %3643
  %3659 = fadd fast float %3658, %3616
  %3660 = fmul fast float %3650, %3643
  %3661 = fmul fast float %3651, %3643
  %3662 = fmul fast float %3652, %3643
  %3663 = fadd fast float %3660, %3620
  %3664 = fadd fast float %3661, %3621
  %3665 = fadd fast float %3662, %3622
  %3666 = fmul fast float %3655, %3643
  %3667 = fmul fast float %3656, %3643
  %3668 = fmul fast float %3657, %3643
  %3669 = fadd fast float %3666, %3617
  %3670 = fadd fast float %3667, %3618
  %3671 = fadd fast float %3668, %3619
  %3672 = icmp eq i32 %3628, 0
  br i1 %3672, label %3673, label %3615

; <label>:3673                                    ; preds = %3615
  br label %3674

; <label>:3674                                    ; preds = %3673, %3592
  %3675 = phi float [ 0.000000e+00, %3592 ], [ %3659, %3673 ]
  %3676 = phi float [ 0.000000e+00, %3592 ], [ %3669, %3673 ]
  %3677 = phi float [ 0.000000e+00, %3592 ], [ %3670, %3673 ]
  %3678 = phi float [ 0.000000e+00, %3592 ], [ %3671, %3673 ]
  %3679 = phi float [ 0.000000e+00, %3592 ], [ %3663, %3673 ]
  %3680 = phi float [ 0.000000e+00, %3592 ], [ %3664, %3673 ]
  %3681 = phi float [ 0.000000e+00, %3592 ], [ %3665, %3673 ]
  %3682 = fmul fast float %3679, 0x3F847AE140000000
  %3683 = fmul fast float %3680, 0x3F847AE140000000
  %3684 = fmul fast float %3681, 0x3F847AE140000000
  %3685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3686 = extractvalue %dx.types.CBufRet.f32 %3685, 0
  %3687 = extractvalue %dx.types.CBufRet.f32 %3685, 1
  %3688 = extractvalue %dx.types.CBufRet.f32 %3685, 2
  %3689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3690 = extractvalue %dx.types.CBufRet.f32 %3689, 0
  %3691 = extractvalue %dx.types.CBufRet.f32 %3689, 1
  %3692 = call float @dx.op.dot3.f32(i32 55, float %3686, float %3687, float %3688, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3693 = select i1 %2099, float %3690, float %3686
  %3694 = select i1 %2099, float %3692, float %3687
  %3695 = select i1 %2099, float %3691, float %3688
  %3696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3697 = extractvalue %dx.types.CBufRet.f32 %3696, 0
  %3698 = extractvalue %dx.types.CBufRet.f32 %3696, 1
  %3699 = extractvalue %dx.types.CBufRet.f32 %3696, 2
  %3700 = fadd fast float %3679, %3676
  %3701 = fmul fast float %3700, 0x3F847AE140000000
  %3702 = fadd fast float %3680, %3677
  %3703 = fmul fast float %3702, 0x3F847AE140000000
  %3704 = fadd fast float %3681, %3678
  %3705 = fmul fast float %3704, 0x3F847AE140000000
  %3706 = call float @dx.op.dot3.f32(i32 55, float %3697, float %3698, float %3699, float %2011, float %2012, float %2013)  ; Dot3(ax,ay,az,bx,by,bz)
  %3707 = fcmp fast ogt float %3675, 0.000000e+00
  %3708 = select i1 %3707, float 1.000000e+00, float -1.000000e+00
  %3709 = fmul fast float %3708, 5.000000e-01
  %3710 = fmul fast float %3709, %3706
  %3711 = fmul fast float %3708, %3675
  %3712 = fadd fast float %3710, 4.921875e-01
  %3713 = fadd fast float %3711, -3.125000e-02
  %3714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %32, float %3712, float 0x3FB25F3060000000, float %3713, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3715 = extractvalue %dx.types.ResRet.f32 %3714, 0
  %3716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %3717 = extractvalue %dx.types.CBufRet.f32 %3716, 0
  %3718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %3719 = extractvalue %dx.types.CBufRet.f32 %3718, 0
  %3720 = fmul fast float %3719, %3717
  %3721 = extractvalue %dx.types.CBufRet.f32 %3718, 1
  %3722 = fadd fast float %3720, %3721
  %3723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %3724 = extractvalue %dx.types.CBufRet.f32 %3723, 0
  %3725 = fmul fast float %3724, %3093
  %3726 = extractvalue %dx.types.CBufRet.f32 %3723, 1
  %3727 = fadd fast float %3725, %3726
  %3728 = call float @dx.op.unary.f32(i32 7, float %3727)  ; Saturate(value)
  %3729 = extractvalue %dx.types.CBufRet.f32 %3716, 3
  %3730 = extractvalue %dx.types.CBufRet.f32 %3718, 2
  %3731 = fmul fast float %3730, %3729
  %3732 = extractvalue %dx.types.CBufRet.f32 %3718, 3
  %3733 = fadd fast float %3731, %3732
  %3734 = fmul fast float %3715, 0x400921FB60000000
  %3735 = fmul fast float %3734, %3722
  %3736 = fmul fast float %3735, %3728
  %3737 = call float @dx.op.binary.f32(i32 35, float %3701, float 0x3F10000000000000)  ; FMax(a,b)
  %3738 = call float @dx.op.binary.f32(i32 35, float %3703, float 0x3F10000000000000)  ; FMax(a,b)
  %3739 = call float @dx.op.binary.f32(i32 35, float %3705, float 0x3F10000000000000)  ; FMax(a,b)
  %3740 = fdiv fast float 1.000000e+00, %3737
  %3741 = fdiv fast float 1.000000e+00, %3738
  %3742 = fdiv fast float 1.000000e+00, %3739
  %3743 = fmul fast float %3700, 0xBF8D8BE060000000
  %3744 = fmul fast float %3702, 0xBF8D8BE060000000
  %3745 = fmul fast float %3704, 0xBF8D8BE060000000
  %3746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %3747 = extractvalue %dx.types.CBufRet.f32 %3746, 3
  %3748 = call float @dx.op.dot3.f32(i32 55, float %3740, float %3741, float %3742, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3749 = fmul fast float %3747, %3748
  %3750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %3751 = extractvalue %dx.types.CBufRet.f32 %3750, 3
  %3752 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3751)  ; Dot3(ax,ay,az,bx,by,bz)
  %3753 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2100, float %2101, float %2102)  ; Dot3(ax,ay,az,bx,by,bz)
  %3754 = fdiv fast float 1.000000e+00, %3753
  %3755 = fmul fast float %3754, %3752
  %3756 = fcmp ogt float %2013, -0.000000e+00
  %3757 = select i1 %3756, float %3751, float %3755
  %3758 = call float @dx.op.binary.f32(i32 36, float %3757, float %3749)  ; FMin(a,b)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3750, 0
  %3760 = fmul fast float %3759, %3758
  %3761 = fmul fast float %3760, %3743
  %3762 = fmul fast float %3760, %3744
  %3763 = fmul fast float %3760, %3745
  %3764 = call float @dx.op.unary.f32(i32 21, float %3761)  ; Exp(value)
  %3765 = call float @dx.op.unary.f32(i32 21, float %3762)  ; Exp(value)
  %3766 = call float @dx.op.unary.f32(i32 21, float %3763)  ; Exp(value)
  %3767 = fmul fast float %3736, %3693
  %3768 = fmul fast float %3767, %3764
  %3769 = fmul fast float %3736, %3694
  %3770 = fmul fast float %3769, %3765
  %3771 = fmul fast float %3736, %3695
  %3772 = fmul fast float %3771, %3766
  %3773 = extractvalue %dx.types.CBufRet.f32 %3750, 1
  %3774 = fmul fast float %3773, %3758
  %3775 = fmul fast float %3774, %3743
  %3776 = fmul fast float %3774, %3744
  %3777 = fmul fast float %3774, %3745
  %3778 = call float @dx.op.unary.f32(i32 21, float %3775)  ; Exp(value)
  %3779 = call float @dx.op.unary.f32(i32 21, float %3776)  ; Exp(value)
  %3780 = call float @dx.op.unary.f32(i32 21, float %3777)  ; Exp(value)
  %3781 = fmul fast float %3733, %2920
  %3782 = fmul fast float %3781, %3778
  %3783 = fmul fast float %3733, %2921
  %3784 = fmul fast float %3783, %3779
  %3785 = fmul fast float %3733, %2922
  %3786 = fmul fast float %3785, %3780
  %3787 = fadd fast float %3782, %3768
  %3788 = fmul fast float %3682, %3787
  %3789 = fadd fast float %3784, %3770
  %3790 = fmul fast float %3683, %3789
  %3791 = fadd fast float %3786, %3772
  %3792 = fmul fast float %3684, %3791
  %3793 = fmul fast float %3757, %3743
  %3794 = fmul fast float %3757, %3744
  %3795 = fmul fast float %3757, %3745
  %3796 = call float @dx.op.unary.f32(i32 21, float %3793)  ; Exp(value)
  %3797 = call float @dx.op.unary.f32(i32 21, float %3794)  ; Exp(value)
  %3798 = call float @dx.op.unary.f32(i32 21, float %3795)  ; Exp(value)
  %3799 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3800 = call float @dx.op.unary.f32(i32 7, float %3797)  ; Saturate(value)
  %3801 = call float @dx.op.unary.f32(i32 7, float %3798)  ; Saturate(value)
  %3802 = fmul fast float %3799, %3788
  %3803 = fmul fast float %3800, %3790
  %3804 = fmul fast float %3801, %3792
  %3805 = fsub fast float %3788, %3802
  %3806 = fsub fast float %3790, %3803
  %3807 = fsub fast float %3792, %3804
  %3808 = fmul fast float %3805, %3740
  %3809 = fmul fast float %3806, %3741
  %3810 = fmul fast float %3807, %3742
  br label %3811

; <label>:3811                                    ; preds = %3674, %3585
  %3812 = phi float [ 0.000000e+00, %3585 ], [ %3808, %3674 ]
  %3813 = phi float [ 0.000000e+00, %3585 ], [ %3809, %3674 ]
  %3814 = phi float [ 0.000000e+00, %3585 ], [ %3810, %3674 ]
  %3815 = fmul fast float %3812, %2934
  %3816 = fmul fast float %3813, %2934
  %3817 = fmul fast float %3814, %2934
  %3818 = fadd fast float %3815, %3586
  %3819 = fadd fast float %3816, %3587
  %3820 = fadd fast float %3817, %3588
  %3821 = call float @dx.op.unary.f32(i32 24, float %1995)  ; Sqrt(value)
  %3822 = call float @dx.op.unary.f32(i32 24, float %1996)  ; Sqrt(value)
  %3823 = call float @dx.op.unary.f32(i32 24, float %1997)  ; Sqrt(value)
  %3824 = fmul fast float %3821, %3589
  %3825 = fmul fast float %3822, %3590
  %3826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3827 = extractvalue %dx.types.CBufRet.f32 %3826, 0
  br i1 %2099, label %3828, label %3854

; <label>:3828                                    ; preds = %3811
  %3829 = fadd fast float %3591, %2075
  %3830 = fmul fast float %3829, %2073
  %3831 = fsub fast float 1.000000e+00, %2073
  %3832 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  %3833 = fmul fast float %1985, 2.000000e+00
  %3834 = fmul fast float %3833, %2022
  %3835 = fsub fast float %2013, %3834
  %3836 = call float @dx.op.unary.f32(i32 7, float %3835)  ; Saturate(value)
  %3837 = fsub fast float 1.000000e+00, %3836
  %3838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3839 = extractvalue %dx.types.CBufRet.f32 %3838, 3
  %3840 = fmul fast float %3837, %3832
  %3841 = fmul fast float %3840, %3839
  %3842 = fadd fast float %3841, %3830
  %3843 = fsub fast float 1.000000e+00, %2105
  %3844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3845 = extractvalue %dx.types.CBufRet.f32 %3844, 0
  %3846 = fmul fast float %3845, %3843
  %3847 = fsub fast float %3842, %3846
  %3848 = fadd fast float %3825, %3824
  %3849 = extractvalue %dx.types.CBufRet.f32 %3838, 1
  %3850 = fsub fast float %3847, %3849
  %3851 = extractvalue %dx.types.CBufRet.f32 %3838, 2
  %3852 = fmul fast float %3850, %3851
  %3853 = call float @dx.op.unary.f32(i32 7, float %3852)  ; Saturate(value)
  br label %3858

; <label>:3854                                    ; preds = %3811
  %3855 = fmul fast float %3823, %3591
  %3856 = fmul fast float %3827, %3825
  %3857 = fmul fast float %3855, %3827
  br label %3858

; <label>:3858                                    ; preds = %3854, %3828
  %3859 = phi float [ %3848, %3828 ], [ %3824, %3854 ]
  %3860 = phi float [ %3853, %3828 ], [ %3856, %3854 ]
  %3861 = phi float [ 1.000000e+00, %3828 ], [ %3857, %3854 ]
  %3862 = fmul float %3827, %3859
  %3863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3864 = extractvalue %dx.types.CBufRet.f32 %3863, 0
  %3865 = fmul fast float %3864, %3819
  %3866 = fmul fast float %3864, %3820
  %3867 = fadd fast float %3819, %3818
  %3868 = select i1 %2099, float %3867, float %3818
  %3869 = fmul float %3868, %3864
  %3870 = select i1 %2099, float 0.000000e+00, float %3865
  %3871 = select i1 %2099, float 0.000000e+00, float %3866
  %3872 = fadd fast float %1471, 0x3FE3C6EF40000000
  %3873 = call float @dx.op.unary.f32(i32 22, float %3872)  ; Frc(value)
  %3874 = call float @dx.op.unary.f32(i32 23, float %3862)  ; Log(value)
  %3875 = fadd fast float %3874, -7.000000e+00
  %3876 = call float @dx.op.unary.f32(i32 21, float %3875)  ; Exp(value)
  %3877 = fmul fast float %3873, 2.000000e+00
  %3878 = fadd fast float %3877, -1.000000e+00
  %3879 = fmul fast float %3876, %3878
  %3880 = fcmp fast ogt float %3862, 0.000000e+00
  %3881 = select i1 %3880, float %3879, float 0.000000e+00
  %3882 = fadd fast float %3881, %3862
  %3883 = fadd fast float %1471, 0x3FF3C6EF40000000
  %3884 = call float @dx.op.unary.f32(i32 22, float %3883)  ; Frc(value)
  %3885 = call float @dx.op.unary.f32(i32 23, float %3860)  ; Log(value)
  %3886 = fadd fast float %3885, -7.000000e+00
  %3887 = call float @dx.op.unary.f32(i32 21, float %3886)  ; Exp(value)
  %3888 = fmul fast float %3884, 2.000000e+00
  %3889 = fadd fast float %3888, -1.000000e+00
  %3890 = fmul fast float %3887, %3889
  %3891 = fcmp fast ogt float %3860, 0.000000e+00
  %3892 = select i1 %3891, float %3890, float 0.000000e+00
  %3893 = fadd fast float %3892, %3860
  %3894 = fadd fast float %1471, 0x3FFDAA66E0000000
  %3895 = call float @dx.op.unary.f32(i32 22, float %3894)  ; Frc(value)
  %3896 = call float @dx.op.unary.f32(i32 23, float %3861)  ; Log(value)
  %3897 = fadd fast float %3896, -6.000000e+00
  %3898 = call float @dx.op.unary.f32(i32 21, float %3897)  ; Exp(value)
  %3899 = fmul fast float %3895, 2.000000e+00
  %3900 = fadd fast float %3899, -1.000000e+00
  %3901 = fmul fast float %3898, %3900
  %3902 = fcmp fast ogt float %3861, 0.000000e+00
  %3903 = select i1 %3902, float %3901, float 0.000000e+00
  %3904 = fadd fast float %3903, %3861
  %3905 = fmul fast float %3882, %3821
  %3906 = fmul fast float %3893, %3822
  %3907 = fmul fast float %3904, %3823
  %3908 = fadd fast float %3905, %3869
  %3909 = fadd fast float %3906, %3870
  %3910 = fadd fast float %3907, %3871
  %3911 = select i1 %2099, float %3893, float %3909
  %3912 = select i1 %2099, float %3904, float %3910
  %3913 = call float @dx.op.binary.f32(i32 36, float %3908, float 3.225500e+04)  ; FMin(a,b)
  %3914 = call float @dx.op.binary.f32(i32 36, float %3911, float 3.225500e+04)  ; FMin(a,b)
  %3915 = call float @dx.op.binary.f32(i32 36, float %3912, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3913)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3914)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3915)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!52}
!dx.entryPoints = !{!53}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !39, !42, !46}
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
!39 = !{!40}
!40 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i1 false, i1 false, i1 false, !41}
!41 = !{i32 1, i32 4}
!42 = !{!43, !44, !45}
!43 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!44 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!45 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!46 = !{!47, !48, !49, !50, !51}
!47 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!48 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!49 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!50 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!51 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!52 = !{[20 x i32] [i32 18, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0]}
!53 = !{void ()* @ps_main, !"ps_main", !54, !4, !74}
!54 = !{!55, !71, null}
!55 = !{!56, !59, !61, !63, !65, !66, !67, !68, !70}
!56 = !{i32 0, !"SV_Position", i8 9, i8 3, !57, i8 4, i32 1, i8 4, i32 0, i8 0, !58}
!57 = !{i32 0}
!58 = !{i32 3, i32 11}
!59 = !{i32 1, !"NORMAL", i8 9, i8 0, !57, i8 2, i32 1, i8 3, i32 1, i8 0, !60}
!60 = !{i32 3, i32 7}
!61 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !57, i8 2, i32 1, i8 2, i32 2, i8 0, !62}
!62 = !{i32 3, i32 3}
!63 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !57, i8 2, i32 1, i8 1, i32 1, i8 3, !64}
!64 = !{i32 3, i32 1}
!65 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !57, i8 1, i32 1, i8 1, i32 3, i8 0, !64}
!66 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !57, i8 1, i32 1, i8 1, i32 3, i8 1, !64}
!67 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !57, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!68 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !69, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!69 = !{i32 1}
!70 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !57, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!71 = !{!72}
!72 = !{i32 0, !"SV_Target", i8 9, i8 16, !57, i8 0, i32 1, i8 4, i32 0, i8 0, !73}
!73 = !{i32 3, i32 15}
!74 = !{i32 0, i64 24}
!75 = !{!76, !76, i64 0}
!76 = !{!"float", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !{!80, !82, !83}
!80 = distinct !{!80, !81, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!81 = distinct !{!81, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!82 = distinct !{!82, !81, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!83 = distinct !{!83, !81, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!84 = !{!85, !87, !88, !89}
!85 = distinct !{!85, !86, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoam"}
!86 = distinct !{!86, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z"}
!87 = distinct !{!87, !86, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamNormalOffsets"}
!88 = distinct !{!88, !86, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamOcclusion"}
!89 = distinct !{!89, !86, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamGloss"}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}

