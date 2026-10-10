;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; TEXCOORDS                0   xy          1     NONE   float   xy  
; LMAPCOORDS               0   xyz         2     NONE   float   xyz 
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           5     NONE    uint   x   
; TRANSIENT_INDEX          0    y          5     NONE    uint    y  
; SV_IsFrontFace           0     z         5    FFACE    uint     z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 3b602b196ec8bed7316987ac8952171f
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
; TEXCOORDS                0                 linear       
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; MATERIAL_DATA_OFFSET     0        nointerpolation       
; TRANSIENT_INDEX          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     f32     2darray      T6     t16,space2     1
;                                   texture     f32          3d      T7     t15,space2     1
;                                   texture     f32          2d      T8     t14,space2     1
;                                   texture     f32          2d      T9     t13,space2     1
;                                   texture     u32          2d     T10     t17,space2     1
;                                   texture     f32          3d     T11     t18,space2     1
;                                   texture     f32     2darray     T12     t23,space2     1
;                                   texture     f32     2darray     T13     t24,space2     1
;                                   texture     f32     2darray     T14     t25,space2     1
;                                   texture    byte         r/o     T15     t66,space1     1
;                                   texture    byte         r/o     T16     t16,space1     1
;                                   texture    byte         r/o     T17     t17,space1     1
;                                   texture     u32     2darray     T18     t11,space2     1
;                                   texture     f32     2darray     T19     t10,space2     1
;                                   texture     f32          2d     T20     t69,space2     1
;                                   texture    byte         r/o     T21     t49,space1     1
;                                   texture    byte         r/o     T22     t50,space1     1
;                                   texture    byte         r/o     T23     t51,space1     1
;                                   texture    byte         r/o     T24     t52,space1     1
;                                   texture     f32          2d     T25     t58,space2     1
;                                   texture     f32          2d     T26     t59,space2     1
;                                   texture     f32          2d     T27     t60,space2     1
;                                   texture    byte         r/o     T28     t45,space1     1
;                                   texture    byte         r/o     T29     t46,space1     1
;                                   texture    byte         r/o     T30     t47,space1     1
;                                   texture    byte         r/o     T31     t48,space1     1
;                                   texture     f32          2d     T32     t57,space2     1
;                                   texture    byte         r/o     T33     t69,space1     1
;                                   texture     f32          2d     T34     t34,space2     1
;                                   texture    byte         r/o     T35     t10,space1     1
;                                   texture    byte         r/o     T36     t68,space1     1
;                                   texture     f32          2d     T37      t0,space2     1
;                                   texture    byte         r/o     T38     t11,space1     1
;                                   texture    byte         r/o     T39     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 23, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
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

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = icmp ne i32 %43, 0
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = fmul fast float %65, %59
  %67 = fmul fast float %65, %60
  %68 = select i1 %44, float 1.000000e+00, float -1.000000e+00
  %69 = fmul fast float %51, %68
  %70 = fmul fast float %52, %68
  %71 = fmul fast float %53, %68
  %72 = fmul fast float %47, %68
  %73 = fmul fast float %48, %68
  %74 = fmul fast float %49, %68
  %75 = fmul fast float %52, %49
  %76 = fmul fast float %53, %48
  %77 = fsub fast float %75, %76
  %78 = fmul fast float %53, %47
  %79 = fmul fast float %51, %49
  %80 = fsub fast float %78, %79
  %81 = fmul fast float %51, %48
  %82 = fmul fast float %52, %47
  %83 = fsub fast float %81, %82
  %84 = fmul fast float %50, %68
  %85 = fmul fast float %84, %77
  %86 = fmul fast float %84, %80
  %87 = fmul fast float %84, %83
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 3
  %91 = fmul fast float %89, 2.000000e+00
  %92 = fmul fast float %91, %66
  %93 = fmul fast float %90, 2.000000e+00
  %94 = fmul fast float %93, %67
  %95 = fsub fast float 1.000000e+00, %92
  %96 = fsub fast float 1.000000e+00, %94
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 1
  %100 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %101 = fmul fast float %95, %98
  %102 = fmul fast float %95, %99
  %103 = fmul fast float %95, %100
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %107 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %108 = fmul fast float %96, %105
  %109 = fmul fast float %96, %106
  %110 = fmul fast float %96, %107
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %114 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %115 = fadd fast float %108, %112
  %116 = fadd fast float %115, %101
  %117 = fadd fast float %109, %113
  %118 = fadd fast float %117, %102
  %119 = fadd fast float %110, %114
  %120 = fadd fast float %119, %103
  %121 = fmul fast float %116, %61
  %122 = fmul fast float %118, %61
  %123 = fmul fast float %120, %61
  %124 = fadd fast float %56, 5.000000e-01
  %125 = fptoui float %124 to i32
  %126 = shl i32 %125, 3
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = or i32 %126, 4
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = and i32 %128, 8191
  %133 = lshr i32 %128, 13
  %134 = and i32 %133, 8191
  %135 = lshr i32 %128, 26
  %136 = and i32 %131, 65535
  %137 = lshr i32 %131, 16
  %138 = uitofp i32 %136 to float
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %141 = uitofp i32 %137 to float
  %142 = uitofp i32 %132 to float
  %143 = fmul fast float %140, %142
  %144 = uitofp i32 %134 to float
  %145 = fmul fast float %140, %144
  %146 = fmul fast float %140, %54
  %147 = fmul fast float %146, %138
  %148 = fmul fast float %140, %55
  %149 = fmul fast float %148, %141
  %150 = fadd fast float %147, %143
  %151 = fadd fast float %145, %149
  %152 = uitofp i32 %135 to float
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %156 = fmul fast float %154, %66
  %157 = fmul fast float %155, %67
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = and i32 %159, 114688
  %161 = icmp ne i32 %160, 0
  %162 = select i1 %161, float %156, float 0.000000e+00
  %163 = select i1 %161, float %157, float 0.000000e+00
  %164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = fmul fast float %165, 2.550000e+02
  %167 = fptoui float %166 to i32
  %168 = select i1 %161, i32 %167, i32 0
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.i32 %170, 3
  %172 = and i32 %171, 3
  %173 = icmp ne i32 %172, 0
  %174 = and i32 %171, 4
  %175 = icmp ne i32 %174, 0
  %176 = and i1 %173, %175
  br i1 %176, label %177, label %188

; <label>:177                                     ; preds = %0
  %178 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %179 = fmul fast float %178, %67
  %180 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %181 = fmul fast float %180, %66
  %182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %181, float %179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = fsub fast float 1.000000e+00, %183
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = fcmp fast olt float %184, %186
  br label %191

; <label>:188                                     ; preds = %0
  %189 = icmp eq i32 %174, 0
  %190 = and i1 %173, %189
  br label %191

; <label>:191                                     ; preds = %188, %177
  %192 = phi i1 [ %187, %177 ], [ %190, %188 ]
  %193 = add i32 %46, 92
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = shl i32 %195, 4
  %197 = and i32 %196, 32752
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = lshr i32 %195, 7
  %200 = and i32 %199, 32752
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %195, 22
  %203 = shl nuw nsw i32 %202, 5
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = add i32 %46, 120
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = and i32 %207, 255
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %209, 0x3F70101020000000
  %211 = lshr i32 %207, 8
  %212 = and i32 %211, 255
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F70101020000000
  %215 = lshr i32 %207, 16
  %216 = and i32 %215, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F70101020000000
  %219 = add i32 %46, 36
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = and i32 %221, 65535
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %221, 16
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = add i32 %46, 160
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 65535
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %228, 16
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = fmul fast float %230, 0x3F50624DE0000000
  %234 = fmul fast float %232, 0x3F50624DE0000000
  %235 = add i32 %46, 108
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = shl i32 %237, 4
  %239 = and i32 %238, 32752
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %237, 7
  %242 = and i32 %241, 32752
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %237, 22
  %245 = shl nuw nsw i32 %244, 5
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = add i32 %46, 136
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = lshr i32 %249, 8
  %254 = and i32 %253, 255
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F70101020000000
  %257 = lshr i32 %249, 16
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = add i32 %46, 52
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %263, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = add i32 %46, 176
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 65535
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %270, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = fmul fast float %272, 0x3F50624DE0000000
  %276 = fmul fast float %274, 0x3F50624DE0000000
  %277 = add i32 %46, 188
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 2
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %290, label %282

; <label>:282                                     ; preds = %191
  %283 = add i32 %46, 256
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = add i32 %285, 0
  %287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %286, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %287, %dx.types.Handle %63, float %57, float %58, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  br label %290

; <label>:290                                     ; preds = %282, %191
  %291 = phi float [ 1.000000e+00, %191 ], [ %289, %282 ]
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 2
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %303, label %296

; <label>:296                                     ; preds = %290
  %297 = add i32 %46, 44
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 1
  %301 = icmp ne i32 %300, 0
  %302 = select i1 %301, float %291, float 1.000000e+00
  br label %303

; <label>:303                                     ; preds = %296, %290
  %304 = phi float [ %291, %290 ], [ %302, %296 ]
  %305 = lshr i32 %293, 20
  %306 = and i32 %305, 3
  %307 = add nuw nsw i32 %306, 1
  %308 = add i32 %46, 24
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = add i32 %46, 28
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = or i32 %313, %310
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %766, label %316

; <label>:316                                     ; preds = %303
  %317 = add i32 %46, 156
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = lshr i32 %319, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = fmul fast float %321, 0x3F50624DE0000000
  %323 = add i32 %46, 56
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = lshr i32 %325, 16
  %327 = and i32 %326, 255
  %328 = lshr i32 %325, 24
  %329 = add i32 %46, 164
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 65535
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %331, 16
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = add i32 %46, 32
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = lshr i32 %338, 22
  %340 = shl nuw nsw i32 %339, 5
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = shl i32 %338, 4
  %343 = and i32 %342, 32752
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %338, 7
  %346 = and i32 %345, 32752
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 3
  %350 = fmul fast float %349, 1.000000e+03
  %351 = fmul fast float %233, %350
  %352 = call float @dx.op.unary.f32(i32 22, float %351)  ; Frc(value)
  %353 = fadd fast float %352, %223
  %354 = fmul fast float %234, %350
  %355 = call float @dx.op.unary.f32(i32 22, float %354)  ; Frc(value)
  %356 = fadd fast float %355, %225
  %357 = fmul fast float %322, %350
  %358 = call float @dx.op.unary.f32(i32 22, float %357)  ; Frc(value)
  %359 = fmul fast float %358, 0x401921FB60000000
  %360 = fadd fast float %359, %341
  %361 = call float @dx.op.unary.f32(i32 13, float %360)  ; Sin(value)
  %362 = call float @dx.op.unary.f32(i32 12, float %360)  ; Cos(value)
  %363 = fsub fast float -0.000000e+00, %361
  %364 = fadd fast float %57, -5.000000e-01
  %365 = fadd fast float %58, -5.000000e-01
  %366 = fmul fast float %333, %364
  %367 = fmul fast float %335, %365
  %368 = fadd fast float %366, 5.000000e-01
  %369 = fadd fast float %367, 5.000000e-01
  %370 = fmul fast float %344, %368
  %371 = fmul fast float %347, %369
  %372 = fmul fast float %362, %370
  %373 = call float @dx.op.tertiary.f32(i32 46, float %363, float %371, float %372)  ; FMad(a,b,c)
  %374 = fmul fast float %361, %370
  %375 = call float @dx.op.tertiary.f32(i32 46, float %362, float %371, float %374)  ; FMad(a,b,c)
  %376 = fadd fast float %353, %373
  %377 = fadd fast float %356, %375
  %378 = icmp ugt i32 %327, 1
  %379 = icmp ugt i32 %325, 33554431
  %380 = or i1 %379, %378
  br i1 %380, label %381, label %406

; <label>:381                                     ; preds = %316
  %382 = add i32 %46, 132
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = lshr i32 %384, 16
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = fmul fast float %349, %386
  %388 = call float @dx.op.unary.f32(i32 22, float %387)  ; Frc(value)
  %389 = mul nuw nsw i32 %327, %328
  %390 = uitofp i32 %389 to float
  %391 = fmul fast float %388, %390
  %392 = call float @dx.op.unary.f32(i32 27, float %391)  ; Round_ni(value)
  %393 = fptoui float %392 to i32
  %394 = urem i32 %393, %327
  %395 = udiv i32 %393, %328
  %396 = call float @dx.op.unary.f32(i32 22, float %376)  ; Frc(value)
  %397 = call float @dx.op.unary.f32(i32 22, float %377)  ; Frc(value)
  %398 = uitofp i32 %394 to float
  %399 = uitofp i32 %395 to float
  %400 = fadd fast float %396, %398
  %401 = fadd fast float %397, %399
  %402 = uitofp i32 %327 to float
  %403 = uitofp i32 %328 to float
  %404 = fdiv fast float %400, %402
  %405 = fdiv fast float %401, %403
  br label %406

; <label>:406                                     ; preds = %381, %316
  %407 = phi float [ %404, %381 ], [ %376, %316 ]
  %408 = phi float [ %405, %381 ], [ %377, %316 ]
  %409 = and i32 %310, 16
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %607, label %411

; <label>:411                                     ; preds = %406
  %412 = add i32 %46, 200
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = add i32 %414, 0
  %416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %415, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %417 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %416, %dx.types.Handle %62, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = extractvalue %dx.types.ResRet.f32 %417, 1
  %420 = extractvalue %dx.types.ResRet.f32 %417, 2
  %421 = extractvalue %dx.types.ResRet.f32 %417, 3
  %422 = and i32 %325, 255
  %423 = uitofp i32 %422 to float
  %424 = lshr i32 %325, 8
  %425 = and i32 %424, 255
  %426 = uitofp i32 %425 to float
  %427 = fmul fast float %421, %423
  %428 = fadd fast float %427, %426
  %429 = fmul fast float %428, 0x3F70101000000000
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 512
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %442, label %434

; <label>:434                                     ; preds = %411
  %435 = add i32 %46, 240
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = add i32 %437, 0
  %439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %440 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %439, %dx.types.Handle %63, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  br label %442

; <label>:442                                     ; preds = %434, %411
  %443 = phi float [ %441, %434 ], [ 1.000000e+00, %411 ]
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 33554432
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %554, label %448

; <label>:448                                     ; preds = %442
  %449 = add i32 %46, 128
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 65535
  %453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %452)  ; LegacyF16ToF32(value)
  %454 = lshr i32 %451, 16
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = add i32 %46, 132
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 65535
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = lshr i32 %462, 24
  %464 = uitofp i32 %463 to float
  %465 = fmul fast float %464, 0x3F70101020000000
  %466 = and i32 %462, 255
  %467 = uitofp i32 %466 to float
  %468 = fmul fast float %467, 0x3F70101020000000
  %469 = lshr i32 %462, 8
  %470 = and i32 %469, 255
  %471 = uitofp i32 %470 to float
  %472 = fmul fast float %471, 0x3F70101020000000
  %473 = lshr i32 %462, 16
  %474 = and i32 %473, 255
  %475 = uitofp i32 %474 to float
  %476 = fmul fast float %475, 0x3F70101020000000
  %477 = add i32 %46, 124
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = lshr i32 %479, 24
  %481 = uitofp i32 %480 to float
  %482 = fmul fast float %481, 0x3F70101020000000
  %483 = and i32 %479, 255
  %484 = uitofp i32 %483 to float
  %485 = fmul fast float %484, 0x3F70101020000000
  %486 = lshr i32 %479, 8
  %487 = and i32 %486, 255
  %488 = uitofp i32 %487 to float
  %489 = fmul fast float %488, 0x3F70101020000000
  %490 = lshr i32 %479, 16
  %491 = and i32 %490, 255
  %492 = uitofp i32 %491 to float
  %493 = fmul fast float %492, 0x3F70101020000000
  %494 = bitcast float %418 to i32
  %495 = ashr i32 %494, 1
  %496 = sub nsw i32 1597463174, %495
  %497 = bitcast i32 %496 to float
  %498 = fmul fast float %418, 5.000000e-01
  %499 = fmul fast float %497, %497
  %500 = fmul fast float %499, %498
  %501 = fsub fast float 1.500000e+00, %500
  %502 = fmul fast float %497, %418
  %503 = fmul fast float %502, %501
  %504 = bitcast float %419 to i32
  %505 = ashr i32 %504, 1
  %506 = sub nsw i32 1597463174, %505
  %507 = bitcast i32 %506 to float
  %508 = fmul fast float %419, 5.000000e-01
  %509 = fmul fast float %507, %507
  %510 = fmul fast float %509, %508
  %511 = fsub fast float 1.500000e+00, %510
  %512 = fmul fast float %507, %419
  %513 = fmul fast float %512, %511
  %514 = bitcast float %420 to i32
  %515 = ashr i32 %514, 1
  %516 = sub nsw i32 1597463174, %515
  %517 = bitcast i32 %516 to float
  %518 = fmul fast float %420, 5.000000e-01
  %519 = fmul fast float %517, %517
  %520 = fmul fast float %519, %518
  %521 = fsub fast float 1.500000e+00, %520
  %522 = fmul fast float %517, %420
  %523 = fmul fast float %522, %521
  %524 = fsub fast float %503, %485
  %525 = fsub fast float %513, %489
  %526 = fsub fast float %523, %493
  %527 = fmul fast float %524, %453
  %528 = fmul fast float %525, %455
  %529 = fmul fast float %526, %460
  %530 = fadd fast float %527, %468
  %531 = fadd fast float %528, %472
  %532 = fadd fast float %529, %476
  %533 = call float @dx.op.unary.f32(i32 7, float %530)  ; Saturate(value)
  %534 = call float @dx.op.unary.f32(i32 7, float %531)  ; Saturate(value)
  %535 = call float @dx.op.unary.f32(i32 7, float %532)  ; Saturate(value)
  %536 = fmul fast float %533, %533
  %537 = fmul fast float %534, %534
  %538 = fmul fast float %535, %535
  %539 = fsub fast float %536, %418
  %540 = fsub fast float %537, %419
  %541 = fsub fast float %538, %420
  %542 = fmul fast float %539, %443
  %543 = fmul fast float %540, %443
  %544 = fmul fast float %541, %443
  %545 = fadd fast float %542, %418
  %546 = fadd fast float %543, %419
  %547 = fadd fast float %544, %420
  %548 = fadd fast float %465, %429
  %549 = fsub fast float %548, %482
  %550 = call float @dx.op.unary.f32(i32 7, float %549)  ; Saturate(value)
  %551 = fsub fast float %550, %429
  %552 = fmul fast float %551, %443
  %553 = fadd fast float %552, %429
  br label %607

; <label>:554                                     ; preds = %442
  %555 = and i32 %445, 134217728
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %591, label %557

; <label>:557                                     ; preds = %554
  %558 = call float @dx.op.unary.f32(i32 24, float %210)  ; Sqrt(value)
  %559 = call float @dx.op.unary.f32(i32 24, float %214)  ; Sqrt(value)
  %560 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %561 = fadd fast float %558, -5.000000e-01
  %562 = fadd fast float %559, -5.000000e-01
  %563 = fadd fast float %560, -5.000000e-01
  %564 = fmul fast float %561, %443
  %565 = fmul fast float %562, %443
  %566 = fmul fast float %563, %443
  %567 = fadd fast float %564, 5.000000e-01
  %568 = fadd fast float %565, 5.000000e-01
  %569 = fadd fast float %566, 5.000000e-01
  %570 = call float @dx.op.unary.f32(i32 24, float %418)  ; Sqrt(value)
  %571 = call float @dx.op.unary.f32(i32 24, float %419)  ; Sqrt(value)
  %572 = call float @dx.op.unary.f32(i32 24, float %420)  ; Sqrt(value)
  %573 = fmul fast float %567, 2.000000e+00
  %574 = fsub fast float 1.000000e+00, %573
  %575 = fmul fast float %574, %570
  %576 = fadd fast float %575, %573
  %577 = fmul fast float %576, %570
  %578 = fmul fast float %568, 2.000000e+00
  %579 = fsub fast float 1.000000e+00, %578
  %580 = fmul fast float %579, %571
  %581 = fadd fast float %580, %578
  %582 = fmul fast float %581, %571
  %583 = fmul fast float %569, 2.000000e+00
  %584 = fsub fast float 1.000000e+00, %583
  %585 = fmul fast float %584, %572
  %586 = fadd fast float %585, %583
  %587 = fmul fast float %586, %572
  %588 = fmul fast float %577, %577
  %589 = fmul fast float %582, %582
  %590 = fmul fast float %587, %587
  br label %607

; <label>:591                                     ; preds = %554
  %592 = fmul fast float %210, %210
  %593 = fmul fast float %214, %214
  %594 = fmul fast float %218, %218
  %595 = fadd fast float %592, -1.000000e+00
  %596 = fadd fast float %593, -1.000000e+00
  %597 = fadd fast float %594, -1.000000e+00
  %598 = fmul fast float %443, %595
  %599 = fmul fast float %443, %596
  %600 = fmul fast float %443, %597
  %601 = fadd fast float %598, 1.000000e+00
  %602 = fadd fast float %599, 1.000000e+00
  %603 = fadd fast float %600, 1.000000e+00
  %604 = fmul fast float %601, %418
  %605 = fmul fast float %602, %419
  %606 = fmul fast float %603, %420
  br label %607

; <label>:607                                     ; preds = %591, %557, %448, %406
  %608 = phi float [ %553, %448 ], [ %429, %557 ], [ %429, %591 ], [ 0x3FA23C0BE0000000, %406 ]
  %609 = phi float [ %545, %448 ], [ %588, %557 ], [ %604, %591 ], [ 1.000000e+00, %406 ]
  %610 = phi float [ %546, %448 ], [ %589, %557 ], [ %605, %591 ], [ 1.000000e+00, %406 ]
  %611 = phi float [ %547, %448 ], [ %590, %557 ], [ %606, %591 ], [ 1.000000e+00, %406 ]
  %612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.i32 %612, 1
  %614 = and i32 %613, 1
  %615 = icmp ne i32 %614, 0
  %616 = add i32 %46, 196
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = and i32 %618, 32
  %620 = icmp ne i32 %619, 0
  %621 = and i1 %615, %620
  %622 = select i1 %621, float 1.000000e+00, float %609
  %623 = select i1 %621, float 0x3FD3333340000000, float %610
  %624 = select i1 %621, float 0x3FD3333340000000, float %611
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = and i32 %626, 32
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %701, label %629

; <label>:629                                     ; preds = %607
  %630 = add i32 %46, 60
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = add i32 %46, 208
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = add i32 %635, 0
  %637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %638 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %637, %dx.types.Handle %62, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = extractvalue %dx.types.ResRet.f32 %638, 1
  %641 = extractvalue %dx.types.ResRet.f32 %638, 2
  %642 = extractvalue %dx.types.ResRet.f32 %638, 3
  %643 = and i32 %632, 255
  %644 = uitofp i32 %643 to float
  %645 = lshr i32 %632, 8
  %646 = and i32 %645, 255
  %647 = uitofp i32 %646 to float
  %648 = lshr i32 %632, 16
  %649 = and i32 %648, 255
  %650 = uitofp i32 %649 to float
  %651 = fmul fast float %650, 0x3F70101000000000
  %652 = fmul fast float %639, %644
  %653 = fadd fast float %652, %647
  %654 = fmul fast float %653, 0x3F70101000000000
  %655 = fadd fast float %640, -5.000000e-01
  %656 = fadd fast float %642, -5.000000e-01
  %657 = fmul fast float %655, %651
  %658 = fmul fast float %656, %651
  %659 = fadd fast float %657, 5.000000e-01
  %660 = fadd fast float %658, 5.000000e-01
  %661 = fmul fast float %659, 2.000000e+00
  %662 = fadd fast float %661, -1.000000e+00
  %663 = fmul fast float %660, 2.000000e+00
  %664 = fadd fast float %663, -1.000000e+00
  %665 = fadd fast float %662, %664
  %666 = fmul fast float %665, 5.000000e-01
  %667 = fsub fast float %662, %664
  %668 = fmul fast float %667, 5.000000e-01
  %669 = call float @dx.op.unary.f32(i32 6, float %666)  ; FAbs(value)
  %670 = fsub fast float 1.000000e+00, %669
  %671 = call float @dx.op.unary.f32(i32 6, float %668)  ; FAbs(value)
  %672 = fsub fast float %670, %671
  %673 = call float @dx.op.dot3.f32(i32 55, float %666, float %668, float %672, float %666, float %668, float %672)  ; Dot3(ax,ay,az,bx,by,bz)
  %674 = call float @dx.op.unary.f32(i32 25, float %673)  ; Rsqrt(value)
  %675 = fmul fast float %666, %674
  %676 = fmul fast float %668, %674
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = and i32 %678, 67108864
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %697, label %681

; <label>:681                                     ; preds = %629
  %682 = add i32 %46, 152
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %682, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 65535
  %686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %685)  ; LegacyF16ToF32(value)
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = and i32 %688, 65535
  %690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %689)  ; LegacyF16ToF32(value)
  %691 = lshr i32 %684, 16
  %692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %691)  ; LegacyF16ToF32(value)
  %693 = fsub fast float %654, %692
  %694 = fmul fast float %693, %686
  %695 = fadd fast float %694, %690
  %696 = call float @dx.op.unary.f32(i32 7, float %695)  ; Saturate(value)
  br label %697

; <label>:697                                     ; preds = %681, %629
  %698 = phi float [ %696, %681 ], [ %654, %629 ]
  %699 = call float @dx.op.dot2.f32(i32 54, float %675, float %676, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %700 = call float @dx.op.dot2.f32(i32 54, float %675, float %676, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %701

; <label>:701                                     ; preds = %697, %607
  %702 = phi float [ %698, %697 ], [ 0x3FD6666660000000, %607 ]
  %703 = phi float [ %699, %697 ], [ 0.000000e+00, %607 ]
  %704 = phi float [ %700, %697 ], [ 0.000000e+00, %607 ]
  %705 = phi float [ %641, %697 ], [ 1.000000e+00, %607 ]
  %706 = add i32 %46, 96
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = lshr i32 %708, 22
  %710 = shl nuw nsw i32 %709, 5
  %711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %710)  ; LegacyF16ToF32(value)
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = and i32 %713, 64
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %749, label %716

; <label>:716                                     ; preds = %701
  %717 = add i32 %46, 216
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = add i32 %719, 0
  %721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %720, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = and i32 %723, 131072
  %725 = icmp eq i32 %724, 0
  %726 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %721, %dx.types.Handle %62, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %727 = extractvalue %dx.types.ResRet.f32 %726, 0
  %728 = extractvalue %dx.types.ResRet.f32 %726, 1
  %729 = extractvalue %dx.types.ResRet.f32 %726, 2
  %730 = fmul fast float %727, %198
  %731 = fmul fast float %728, %201
  %732 = fmul fast float %729, %204
  br i1 %725, label %739, label %733

; <label>:733                                     ; preds = %716
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 0
  %736 = fmul fast float %735, %730
  %737 = fmul fast float %735, %731
  %738 = fmul fast float %735, %732
  br label %739

; <label>:739                                     ; preds = %733, %716
  %740 = phi float [ %736, %733 ], [ %730, %716 ]
  %741 = phi float [ %737, %733 ], [ %731, %716 ]
  %742 = phi float [ %738, %733 ], [ %732, %716 ]
  %743 = fmul fast float %740, %711
  %744 = select i1 %192, float %743, float %740
  %745 = call float @dx.op.dot3.f32(i32 55, float %744, float %741, float %742, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %746 = select i1 %192, float 0.000000e+00, float %740
  %747 = select i1 %192, float %745, float %741
  %748 = select i1 %192, float 0.000000e+00, float %742
  br label %749

; <label>:749                                     ; preds = %739, %701
  %750 = phi float [ %746, %739 ], [ 0.000000e+00, %701 ]
  %751 = phi float [ %747, %739 ], [ 0.000000e+00, %701 ]
  %752 = phi float [ %748, %739 ], [ 0.000000e+00, %701 ]
  %753 = add i32 %46, 64
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = and i32 %755, 255
  %757 = uitofp i32 %756 to float
  %758 = lshr i32 %755, 8
  %759 = and i32 %758, 255
  %760 = uitofp i32 %759 to float
  %761 = call float @dx.op.dot3.f32(i32 55, float %622, float %623, float %624, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %762 = fmul fast float %760, %761
  %763 = fadd fast float %762, %757
  %764 = fmul fast float %763, 0x3F70101020000000
  %765 = call float @dx.op.unary.f32(i32 7, float %764)  ; Saturate(value)
  br label %766

; <label>:766                                     ; preds = %749, %303
  %767 = phi float [ %703, %749 ], [ 0.000000e+00, %303 ]
  %768 = phi float [ %704, %749 ], [ 0.000000e+00, %303 ]
  %769 = phi float [ %622, %749 ], [ 0.000000e+00, %303 ]
  %770 = phi float [ %623, %749 ], [ 0.000000e+00, %303 ]
  %771 = phi float [ %624, %749 ], [ 0.000000e+00, %303 ]
  %772 = phi float [ %750, %749 ], [ 0.000000e+00, %303 ]
  %773 = phi float [ %751, %749 ], [ 0.000000e+00, %303 ]
  %774 = phi float [ %752, %749 ], [ 0.000000e+00, %303 ]
  %775 = phi float [ %608, %749 ], [ 0.000000e+00, %303 ]
  %776 = phi float [ 1.000000e+00, %749 ], [ 0.000000e+00, %303 ]
  %777 = phi float [ %702, %749 ], [ 0.000000e+00, %303 ]
  %778 = phi float [ %705, %749 ], [ 0.000000e+00, %303 ]
  %779 = phi float [ %765, %749 ], [ 0.000000e+00, %303 ]
  %780 = icmp ult i32 %307, 2
  %781 = add i32 %46, 40
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = add i32 %46, 44
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %784, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = or i32 %786, %783
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %1612, label %789

; <label>:789                                     ; preds = %766
  %790 = add i32 %46, 172
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = lshr i32 %792, 16
  %794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %793)  ; LegacyF16ToF32(value)
  %795 = fmul fast float %794, 0x3F50624DE0000000
  %796 = add i32 %46, 72
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = lshr i32 %798, 16
  %800 = and i32 %799, 255
  %801 = lshr i32 %798, 24
  %802 = add i32 %46, 180
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = and i32 %804, 65535
  %806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %805)  ; LegacyF16ToF32(value)
  %807 = lshr i32 %804, 16
  %808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %807)  ; LegacyF16ToF32(value)
  %809 = add i32 %46, 48
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = lshr i32 %811, 22
  %813 = shl nuw nsw i32 %812, 5
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = shl i32 %811, 4
  %816 = and i32 %815, 32752
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = lshr i32 %811, 7
  %819 = and i32 %818, 32752
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 3
  %823 = fmul fast float %822, 1.000000e+03
  %824 = fmul fast float %275, %823
  %825 = call float @dx.op.unary.f32(i32 22, float %824)  ; Frc(value)
  %826 = fadd fast float %825, %265
  %827 = fmul fast float %276, %823
  %828 = call float @dx.op.unary.f32(i32 22, float %827)  ; Frc(value)
  %829 = fadd fast float %828, %267
  %830 = fmul fast float %795, %823
  %831 = call float @dx.op.unary.f32(i32 22, float %830)  ; Frc(value)
  %832 = fmul fast float %831, 0x401921FB60000000
  %833 = fadd fast float %832, %814
  %834 = call float @dx.op.unary.f32(i32 13, float %833)  ; Sin(value)
  %835 = call float @dx.op.unary.f32(i32 12, float %833)  ; Cos(value)
  %836 = fsub fast float -0.000000e+00, %834
  %837 = fadd fast float %57, -5.000000e-01
  %838 = fadd fast float %58, -5.000000e-01
  %839 = fmul fast float %806, %837
  %840 = fmul fast float %808, %838
  %841 = fadd fast float %839, 5.000000e-01
  %842 = fadd fast float %840, 5.000000e-01
  %843 = fmul fast float %817, %841
  %844 = fmul fast float %820, %842
  %845 = fmul fast float %835, %843
  %846 = call float @dx.op.tertiary.f32(i32 46, float %836, float %844, float %845)  ; FMad(a,b,c)
  %847 = fmul fast float %834, %843
  %848 = call float @dx.op.tertiary.f32(i32 46, float %835, float %844, float %847)  ; FMad(a,b,c)
  %849 = fadd fast float %826, %846
  %850 = fadd fast float %829, %848
  %851 = icmp ugt i32 %800, 1
  %852 = icmp ugt i32 %798, 33554431
  %853 = or i1 %852, %851
  br i1 %853, label %854, label %879

; <label>:854                                     ; preds = %789
  %855 = add i32 %46, 148
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %855, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = lshr i32 %857, 16
  %859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %858)  ; LegacyF16ToF32(value)
  %860 = fmul fast float %822, %859
  %861 = call float @dx.op.unary.f32(i32 22, float %860)  ; Frc(value)
  %862 = mul nuw nsw i32 %800, %801
  %863 = uitofp i32 %862 to float
  %864 = fmul fast float %861, %863
  %865 = call float @dx.op.unary.f32(i32 27, float %864)  ; Round_ni(value)
  %866 = fptoui float %865 to i32
  %867 = urem i32 %866, %800
  %868 = udiv i32 %866, %801
  %869 = call float @dx.op.unary.f32(i32 22, float %849)  ; Frc(value)
  %870 = call float @dx.op.unary.f32(i32 22, float %850)  ; Frc(value)
  %871 = uitofp i32 %867 to float
  %872 = uitofp i32 %868 to float
  %873 = fadd fast float %869, %871
  %874 = fadd fast float %870, %872
  %875 = uitofp i32 %800 to float
  %876 = uitofp i32 %801 to float
  %877 = fdiv fast float %873, %875
  %878 = fdiv fast float %874, %876
  br label %879

; <label>:879                                     ; preds = %854, %789
  %880 = phi float [ %877, %854 ], [ %849, %789 ]
  %881 = phi float [ %878, %854 ], [ %850, %789 ]
  %882 = and i32 %783, 16777216
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %993, label %884

; <label>:884                                     ; preds = %879
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 0
  %887 = extractvalue %dx.types.CBufRet.f32 %885, 1
  %888 = extractvalue %dx.types.CBufRet.f32 %885, 2
  %889 = fadd fast float %886, %121
  %890 = fadd fast float %887, %122
  %891 = fadd fast float %888, %123
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %894 = call float @dx.op.unary.f32(i32 7, float %893)  ; Saturate(value)
  %895 = icmp eq i32 %45, 65535
  br i1 %895, label %990, label %896

; <label>:896                                     ; preds = %884
  %897 = lshr i32 %45, 1
  %898 = shl i32 %897, 2
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = and i32 %45, 1
  %902 = icmp ne i32 %901, 0
  %903 = lshr i32 %900, 16
  %904 = and i32 %900, 65535
  %905 = select i1 %902, i32 %903, i32 %904
  %906 = icmp eq i32 %905, 65535
  br i1 %906, label %986, label %907

; <label>:907                                     ; preds = %896
  %908 = mul nuw nsw i32 %905, 40
  %909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.f32 %909, 0
  %911 = extractvalue %dx.types.ResRet.f32 %909, 1
  %912 = extractvalue %dx.types.ResRet.f32 %909, 2
  %913 = add nuw nsw i32 %908, 12
  %914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  %916 = extractvalue %dx.types.ResRet.f32 %914, 1
  %917 = extractvalue %dx.types.ResRet.f32 %914, 2
  %918 = add nuw nsw i32 %908, 24
  %919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.f32 %919, 0
  %921 = extractvalue %dx.types.ResRet.f32 %919, 1
  %922 = extractvalue %dx.types.ResRet.f32 %919, 2
  %923 = add nuw nsw i32 %908, 36
  %924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  %926 = fsub fast float %889, %910
  %927 = fsub fast float %890, %911
  %928 = fsub fast float %891, %912
  %929 = fmul fast float %925, %926
  %930 = fmul fast float %925, %927
  %931 = fmul fast float %925, %928
  %932 = call float @dx.op.unary.f32(i32 27, float %929)  ; Round_ni(value)
  %933 = call float @dx.op.unary.f32(i32 27, float %930)  ; Round_ni(value)
  %934 = call float @dx.op.unary.f32(i32 27, float %931)  ; Round_ni(value)
  %935 = fadd fast float %932, 5.000000e-01
  %936 = fadd fast float %933, 5.000000e-01
  %937 = fadd fast float %934, 5.000000e-01
  %938 = fmul fast float %935, %915
  %939 = fmul fast float %936, %916
  %940 = fmul fast float %937, %917
  %941 = shl i32 %45, 2
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = add i32 %943, 0
  %945 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %944, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %946 = call float @dx.op.unary.f32(i32 22, float %938)  ; Frc(value)
  %947 = call float @dx.op.unary.f32(i32 22, float %939)  ; Frc(value)
  %948 = call float @dx.op.unary.f32(i32 22, float %940)  ; Frc(value)
  %949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %945, %dx.types.Handle %40, float %946, float %947, float %948, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  %951 = extractvalue %dx.types.ResRet.f32 %949, 1
  %952 = extractvalue %dx.types.ResRet.f32 %949, 2
  %953 = fmul fast float %950, 1.023000e+03
  %954 = fmul fast float %951, 1.023000e+03
  %955 = fmul fast float %952, 1.023000e+03
  %956 = fadd fast float %953, 5.000000e-01
  %957 = fadd fast float %954, 5.000000e-01
  %958 = fadd fast float %955, 5.000000e-01
  %959 = call float @dx.op.unary.f32(i32 27, float %956)  ; Round_ni(value)
  %960 = call float @dx.op.unary.f32(i32 27, float %957)  ; Round_ni(value)
  %961 = call float @dx.op.unary.f32(i32 27, float %958)  ; Round_ni(value)
  %962 = fsub fast float %929, %932
  %963 = fsub fast float %930, %933
  %964 = fsub fast float %931, %934
  %965 = fmul fast float %962, 7.500000e-01
  %966 = fmul fast float %963, 7.500000e-01
  %967 = fmul fast float %964, 7.500000e-01
  %968 = fadd fast float %932, 1.250000e-01
  %969 = fadd fast float %968, %965
  %970 = fadd fast float %969, %959
  %971 = fadd fast float %933, 1.250000e-01
  %972 = fadd fast float %971, %966
  %973 = fadd fast float %972, %960
  %974 = fadd fast float %934, 1.250000e-01
  %975 = fadd fast float %974, %967
  %976 = fadd fast float %975, %961
  %977 = fmul fast float %970, %920
  %978 = fmul fast float %973, %921
  %979 = fmul fast float %976, %922
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = add i32 %981, 0
  %983 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %982, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %983, %dx.types.Handle %38, float %977, float %978, float %979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %985 = extractvalue %dx.types.ResRet.f32 %984, 0
  br label %986

; <label>:986                                     ; preds = %907, %896
  %987 = phi float [ %985, %907 ], [ -1.000000e+00, %896 ]
  %988 = fadd fast float %987, %894
  %989 = call float @dx.op.unary.f32(i32 7, float %988)  ; Saturate(value)
  br label %990

; <label>:990                                     ; preds = %986, %884
  %991 = phi float [ %989, %986 ], [ %894, %884 ]
  %992 = fmul fast float %991, %304
  br label %993

; <label>:993                                     ; preds = %990, %879
  %994 = phi float [ %992, %990 ], [ %304, %879 ]
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = and i32 %996, 256
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %1045, label %999

; <label>:999                                     ; preds = %993
  %1000 = add i32 %46, 236
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = add i32 %1002, 0
  %1004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1003, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1005 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1004, %dx.types.Handle %63, float %880, float %881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = add i32 %46, 84
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = shl i32 %1009, 4
  %1011 = and i32 %1010, 32752
  %1012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1011)  ; LegacyF16ToF32(value)
  %1013 = lshr i32 %1009, 7
  %1014 = and i32 %1013, 32752
  %1015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1014)  ; LegacyF16ToF32(value)
  %1016 = fsub fast float 1.000000e+00, %994
  %1017 = call float @dx.op.binary.f32(i32 35, float %1016, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1018 = bitcast float %994 to i32
  %1019 = sitofp i32 %1018 to float
  %1020 = fadd fast float %1019, 0xC1CFBF8940000000
  %1021 = fmul fast float %1015, %1020
  %1022 = fadd fast float %1021, 0x41CFBF8940000000
  %1023 = fptosi float %1022 to i32
  %1024 = bitcast i32 %1023 to float
  %1025 = bitcast float %1017 to i32
  %1026 = sitofp i32 %1025 to float
  %1027 = fadd fast float %1026, 0xC1CFBF8940000000
  %1028 = fmul fast float %1027, %1015
  %1029 = fadd fast float %1028, 0x41CFBF8940000000
  %1030 = fptosi float %1029 to i32
  %1031 = bitcast i32 %1030 to float
  %1032 = fmul fast float %1024, %1012
  %1033 = fmul fast float %1031, %1012
  %1034 = fsub fast float %1017, %1032
  %1035 = fadd fast float %1033, %1017
  %1036 = call float @dx.op.unary.f32(i32 7, float %1034)  ; Saturate(value)
  %1037 = call float @dx.op.unary.f32(i32 7, float %1035)  ; Saturate(value)
  %1038 = fsub fast float %1006, %1036
  %1039 = fsub fast float %1037, %1036
  %1040 = bitcast float %1039 to i32
  %1041 = sub nsw i32 2129859010, %1040
  %1042 = bitcast i32 %1041 to float
  %1043 = fmul fast float %1042, %1038
  %1044 = call float @dx.op.unary.f32(i32 7, float %1043)  ; Saturate(value)
  br label %1045

; <label>:1045                                    ; preds = %999, %993
  %1046 = phi float [ %1044, %999 ], [ %994, %993 ]
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = and i32 %1048, 128
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1067, label %1051

; <label>:1051                                    ; preds = %1045
  %1052 = add i32 %46, 228
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = add i32 %1054, 0
  %1056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1057 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1056, %dx.types.Handle %63, float %880, float %881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = and i32 %1060, 524288
  %1062 = icmp ne i32 %1061, 0
  %1063 = fcmp fast ogt float %1058, 0x3FE0101020000000
  %1064 = select i1 %1063, float 1.000000e+00, float 0.000000e+00
  %1065 = select i1 %1062, float %1064, float %1058
  %1066 = fmul fast float %1065, %1046
  br label %1067

; <label>:1067                                    ; preds = %1051, %1045
  %1068 = phi float [ %1066, %1051 ], [ %1046, %1045 ]
  %1069 = fcmp fast ult float %1068, 0x3F70101020000000
  br i1 %1069, label %1612, label %1070

; <label>:1070                                    ; preds = %1067
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = and i32 %1072, 16
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1273, label %1075

; <label>:1075                                    ; preds = %1070
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = add i32 %46, 204
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = add i32 %1080, 0
  %1082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1081, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1083 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1082, %dx.types.Handle %62, float %880, float %881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = extractvalue %dx.types.ResRet.f32 %1083, 3
  %1088 = and i32 %1077, 255
  %1089 = uitofp i32 %1088 to float
  %1090 = lshr i32 %1077, 8
  %1091 = and i32 %1090, 255
  %1092 = uitofp i32 %1091 to float
  %1093 = fmul fast float %1087, %1089
  %1094 = fadd fast float %1093, %1092
  %1095 = fmul fast float %1094, 0x3F70101000000000
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = and i32 %1097, 512
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1108, label %1100

; <label>:1100                                    ; preds = %1075
  %1101 = add i32 %46, 244
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = add i32 %1103, 0
  %1105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1104, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1106 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1105, %dx.types.Handle %63, float %880, float %881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  br label %1108

; <label>:1108                                    ; preds = %1100, %1075
  %1109 = phi float [ %1107, %1100 ], [ 1.000000e+00, %1075 ]
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 33554432
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1220, label %1114

; <label>:1114                                    ; preds = %1108
  %1115 = add i32 %46, 144
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = and i32 %1117, 65535
  %1119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1118)  ; LegacyF16ToF32(value)
  %1120 = lshr i32 %1117, 16
  %1121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1120)  ; LegacyF16ToF32(value)
  %1122 = add i32 %46, 148
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = and i32 %1124, 65535
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = lshr i32 %1128, 24
  %1130 = uitofp i32 %1129 to float
  %1131 = fmul fast float %1130, 0x3F70101020000000
  %1132 = and i32 %1128, 255
  %1133 = uitofp i32 %1132 to float
  %1134 = fmul fast float %1133, 0x3F70101020000000
  %1135 = lshr i32 %1128, 8
  %1136 = and i32 %1135, 255
  %1137 = uitofp i32 %1136 to float
  %1138 = fmul fast float %1137, 0x3F70101020000000
  %1139 = lshr i32 %1128, 16
  %1140 = and i32 %1139, 255
  %1141 = uitofp i32 %1140 to float
  %1142 = fmul fast float %1141, 0x3F70101020000000
  %1143 = add i32 %46, 140
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = lshr i32 %1145, 24
  %1147 = uitofp i32 %1146 to float
  %1148 = fmul fast float %1147, 0x3F70101020000000
  %1149 = and i32 %1145, 255
  %1150 = uitofp i32 %1149 to float
  %1151 = fmul fast float %1150, 0x3F70101020000000
  %1152 = lshr i32 %1145, 8
  %1153 = and i32 %1152, 255
  %1154 = uitofp i32 %1153 to float
  %1155 = fmul fast float %1154, 0x3F70101020000000
  %1156 = lshr i32 %1145, 16
  %1157 = and i32 %1156, 255
  %1158 = uitofp i32 %1157 to float
  %1159 = fmul fast float %1158, 0x3F70101020000000
  %1160 = bitcast float %1084 to i32
  %1161 = ashr i32 %1160, 1
  %1162 = sub nsw i32 1597463174, %1161
  %1163 = bitcast i32 %1162 to float
  %1164 = fmul fast float %1084, 5.000000e-01
  %1165 = fmul fast float %1163, %1163
  %1166 = fmul fast float %1165, %1164
  %1167 = fsub fast float 1.500000e+00, %1166
  %1168 = fmul fast float %1163, %1084
  %1169 = fmul fast float %1168, %1167
  %1170 = bitcast float %1085 to i32
  %1171 = ashr i32 %1170, 1
  %1172 = sub nsw i32 1597463174, %1171
  %1173 = bitcast i32 %1172 to float
  %1174 = fmul fast float %1085, 5.000000e-01
  %1175 = fmul fast float %1173, %1173
  %1176 = fmul fast float %1175, %1174
  %1177 = fsub fast float 1.500000e+00, %1176
  %1178 = fmul fast float %1173, %1085
  %1179 = fmul fast float %1178, %1177
  %1180 = bitcast float %1086 to i32
  %1181 = ashr i32 %1180, 1
  %1182 = sub nsw i32 1597463174, %1181
  %1183 = bitcast i32 %1182 to float
  %1184 = fmul fast float %1086, 5.000000e-01
  %1185 = fmul fast float %1183, %1183
  %1186 = fmul fast float %1185, %1184
  %1187 = fsub fast float 1.500000e+00, %1186
  %1188 = fmul fast float %1183, %1086
  %1189 = fmul fast float %1188, %1187
  %1190 = fsub fast float %1169, %1151
  %1191 = fsub fast float %1179, %1155
  %1192 = fsub fast float %1189, %1159
  %1193 = fmul fast float %1190, %1119
  %1194 = fmul fast float %1191, %1121
  %1195 = fmul fast float %1192, %1126
  %1196 = fadd fast float %1193, %1134
  %1197 = fadd fast float %1194, %1138
  %1198 = fadd fast float %1195, %1142
  %1199 = call float @dx.op.unary.f32(i32 7, float %1196)  ; Saturate(value)
  %1200 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1201 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1202 = fmul fast float %1199, %1199
  %1203 = fmul fast float %1200, %1200
  %1204 = fmul fast float %1201, %1201
  %1205 = fsub fast float %1202, %1084
  %1206 = fsub fast float %1203, %1085
  %1207 = fsub fast float %1204, %1086
  %1208 = fmul fast float %1205, %1109
  %1209 = fmul fast float %1206, %1109
  %1210 = fmul fast float %1207, %1109
  %1211 = fadd fast float %1208, %1084
  %1212 = fadd fast float %1209, %1085
  %1213 = fadd fast float %1210, %1086
  %1214 = fadd fast float %1131, %1095
  %1215 = fsub fast float %1214, %1148
  %1216 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1217 = fsub fast float %1216, %1095
  %1218 = fmul fast float %1217, %1109
  %1219 = fadd fast float %1218, %1095
  br label %1273

; <label>:1220                                    ; preds = %1108
  %1221 = and i32 %1111, 134217728
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1257, label %1223

; <label>:1223                                    ; preds = %1220
  %1224 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %1225 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %1226 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %1227 = fadd fast float %1224, -5.000000e-01
  %1228 = fadd fast float %1225, -5.000000e-01
  %1229 = fadd fast float %1226, -5.000000e-01
  %1230 = fmul fast float %1227, %1109
  %1231 = fmul fast float %1228, %1109
  %1232 = fmul fast float %1229, %1109
  %1233 = fadd fast float %1230, 5.000000e-01
  %1234 = fadd fast float %1231, 5.000000e-01
  %1235 = fadd fast float %1232, 5.000000e-01
  %1236 = call float @dx.op.unary.f32(i32 24, float %1084)  ; Sqrt(value)
  %1237 = call float @dx.op.unary.f32(i32 24, float %1085)  ; Sqrt(value)
  %1238 = call float @dx.op.unary.f32(i32 24, float %1086)  ; Sqrt(value)
  %1239 = fmul fast float %1233, 2.000000e+00
  %1240 = fsub fast float 1.000000e+00, %1239
  %1241 = fmul fast float %1240, %1236
  %1242 = fadd fast float %1241, %1239
  %1243 = fmul fast float %1242, %1236
  %1244 = fmul fast float %1234, 2.000000e+00
  %1245 = fsub fast float 1.000000e+00, %1244
  %1246 = fmul fast float %1245, %1237
  %1247 = fadd fast float %1246, %1244
  %1248 = fmul fast float %1247, %1237
  %1249 = fmul fast float %1235, 2.000000e+00
  %1250 = fsub fast float 1.000000e+00, %1249
  %1251 = fmul fast float %1250, %1238
  %1252 = fadd fast float %1251, %1249
  %1253 = fmul fast float %1252, %1238
  %1254 = fmul fast float %1243, %1243
  %1255 = fmul fast float %1248, %1248
  %1256 = fmul fast float %1253, %1253
  br label %1273

; <label>:1257                                    ; preds = %1220
  %1258 = fmul fast float %252, %252
  %1259 = fmul fast float %256, %256
  %1260 = fmul fast float %260, %260
  %1261 = fadd fast float %1258, -1.000000e+00
  %1262 = fadd fast float %1259, -1.000000e+00
  %1263 = fadd fast float %1260, -1.000000e+00
  %1264 = fmul fast float %1109, %1261
  %1265 = fmul fast float %1109, %1262
  %1266 = fmul fast float %1109, %1263
  %1267 = fadd fast float %1264, 1.000000e+00
  %1268 = fadd fast float %1265, 1.000000e+00
  %1269 = fadd fast float %1266, 1.000000e+00
  %1270 = fmul fast float %1267, %1084
  %1271 = fmul fast float %1268, %1085
  %1272 = fmul fast float %1269, %1086
  br label %1273

; <label>:1273                                    ; preds = %1257, %1223, %1114, %1070
  %1274 = phi float [ %1219, %1114 ], [ %1095, %1223 ], [ %1095, %1257 ], [ 0x3FA23C0BE0000000, %1070 ]
  %1275 = phi float [ %1211, %1114 ], [ %1254, %1223 ], [ %1270, %1257 ], [ 1.000000e+00, %1070 ]
  %1276 = phi float [ %1212, %1114 ], [ %1255, %1223 ], [ %1271, %1257 ], [ 1.000000e+00, %1070 ]
  %1277 = phi float [ %1213, %1114 ], [ %1256, %1223 ], [ %1272, %1257 ], [ 1.000000e+00, %1070 ]
  %1278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.i32 %1278, 1
  %1280 = and i32 %1279, 1
  %1281 = icmp ne i32 %1280, 0
  %1282 = add i32 %46, 196
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = and i32 %1284, 32
  %1286 = icmp ne i32 %1285, 0
  %1287 = and i1 %1281, %1286
  %1288 = select i1 %1287, float 1.000000e+00, float %1275
  %1289 = select i1 %1287, float 0x3FD3333340000000, float %1276
  %1290 = select i1 %1287, float 0x3FD3333340000000, float %1277
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = and i32 %1292, 32
  %1294 = icmp eq i32 %1293, 0
  br i1 %1294, label %1367, label %1295

; <label>:1295                                    ; preds = %1273
  %1296 = add i32 %46, 76
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = add i32 %46, 212
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = add i32 %1301, 0
  %1303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1303, %dx.types.Handle %62, float %880, float %881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.ResRet.f32 %1304, 1
  %1307 = extractvalue %dx.types.ResRet.f32 %1304, 2
  %1308 = extractvalue %dx.types.ResRet.f32 %1304, 3
  %1309 = and i32 %1298, 255
  %1310 = uitofp i32 %1309 to float
  %1311 = lshr i32 %1298, 8
  %1312 = and i32 %1311, 255
  %1313 = uitofp i32 %1312 to float
  %1314 = lshr i32 %1298, 16
  %1315 = and i32 %1314, 255
  %1316 = uitofp i32 %1315 to float
  %1317 = fmul fast float %1316, 0x3F70101000000000
  %1318 = fmul fast float %1305, %1310
  %1319 = fadd fast float %1318, %1313
  %1320 = fmul fast float %1319, 0x3F70101000000000
  %1321 = fadd fast float %1306, -5.000000e-01
  %1322 = fadd fast float %1308, -5.000000e-01
  %1323 = fmul fast float %1321, %1317
  %1324 = fmul fast float %1322, %1317
  %1325 = fadd fast float %1323, 5.000000e-01
  %1326 = fadd fast float %1324, 5.000000e-01
  %1327 = fmul fast float %1325, 2.000000e+00
  %1328 = fadd fast float %1327, -1.000000e+00
  %1329 = fmul fast float %1326, 2.000000e+00
  %1330 = fadd fast float %1329, -1.000000e+00
  %1331 = fadd fast float %1328, %1330
  %1332 = fmul fast float %1331, 5.000000e-01
  %1333 = fsub fast float %1328, %1330
  %1334 = fmul fast float %1333, 5.000000e-01
  %1335 = call float @dx.op.unary.f32(i32 6, float %1332)  ; FAbs(value)
  %1336 = fsub fast float 1.000000e+00, %1335
  %1337 = call float @dx.op.unary.f32(i32 6, float %1334)  ; FAbs(value)
  %1338 = fsub fast float %1336, %1337
  %1339 = call float @dx.op.dot3.f32(i32 55, float %1332, float %1334, float %1338, float %1332, float %1334, float %1338)  ; Dot3(ax,ay,az,bx,by,bz)
  %1340 = call float @dx.op.unary.f32(i32 25, float %1339)  ; Rsqrt(value)
  %1341 = fmul fast float %1332, %1340
  %1342 = fmul fast float %1334, %1340
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = and i32 %1344, 67108864
  %1346 = icmp eq i32 %1345, 0
  br i1 %1346, label %1363, label %1347

; <label>:1347                                    ; preds = %1295
  %1348 = add i32 %46, 168
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = and i32 %1350, 65535
  %1352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1351)  ; LegacyF16ToF32(value)
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = and i32 %1354, 65535
  %1356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1355)  ; LegacyF16ToF32(value)
  %1357 = lshr i32 %1350, 16
  %1358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1357)  ; LegacyF16ToF32(value)
  %1359 = fsub fast float %1320, %1358
  %1360 = fmul fast float %1359, %1352
  %1361 = fadd fast float %1360, %1356
  %1362 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  br label %1363

; <label>:1363                                    ; preds = %1347, %1295
  %1364 = phi float [ %1362, %1347 ], [ %1320, %1295 ]
  %1365 = call float @dx.op.dot2.f32(i32 54, float %1341, float %1342, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %1366 = call float @dx.op.dot2.f32(i32 54, float %1341, float %1342, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %1367

; <label>:1367                                    ; preds = %1363, %1273
  %1368 = phi float [ %1364, %1363 ], [ 0x3FD6666660000000, %1273 ]
  %1369 = phi float [ %1365, %1363 ], [ 0.000000e+00, %1273 ]
  %1370 = phi float [ %1366, %1363 ], [ 0.000000e+00, %1273 ]
  %1371 = phi float [ %1307, %1363 ], [ 1.000000e+00, %1273 ]
  %1372 = add i32 %46, 112
  %1373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.i32 %1373, 0
  %1375 = lshr i32 %1374, 22
  %1376 = shl nuw nsw i32 %1375, 5
  %1377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1376)  ; LegacyF16ToF32(value)
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = and i32 %1379, 64
  %1381 = icmp eq i32 %1380, 0
  br i1 %1381, label %1415, label %1382

; <label>:1382                                    ; preds = %1367
  %1383 = add i32 %46, 220
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = add i32 %1385, 0
  %1387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = and i32 %1389, 131072
  %1391 = icmp eq i32 %1390, 0
  %1392 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1387, %dx.types.Handle %62, float %880, float %881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.ResRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.ResRet.f32 %1392, 2
  %1396 = fmul fast float %1393, %240
  %1397 = fmul fast float %1394, %243
  %1398 = fmul fast float %1395, %246
  br i1 %1391, label %1405, label %1399

; <label>:1399                                    ; preds = %1382
  %1400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.f32 %1400, 0
  %1402 = fmul fast float %1401, %1396
  %1403 = fmul fast float %1401, %1397
  %1404 = fmul fast float %1401, %1398
  br label %1405

; <label>:1405                                    ; preds = %1399, %1382
  %1406 = phi float [ %1402, %1399 ], [ %1396, %1382 ]
  %1407 = phi float [ %1403, %1399 ], [ %1397, %1382 ]
  %1408 = phi float [ %1404, %1399 ], [ %1398, %1382 ]
  %1409 = fmul fast float %1406, %1377
  %1410 = select i1 %192, float %1409, float %1406
  %1411 = call float @dx.op.dot3.f32(i32 55, float %1410, float %1407, float %1408, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1412 = select i1 %192, float 0.000000e+00, float %1406
  %1413 = select i1 %192, float %1411, float %1407
  %1414 = select i1 %192, float 0.000000e+00, float %1408
  br label %1415

; <label>:1415                                    ; preds = %1405, %1367
  %1416 = phi float [ %1412, %1405 ], [ 0.000000e+00, %1367 ]
  %1417 = phi float [ %1413, %1405 ], [ 0.000000e+00, %1367 ]
  %1418 = phi float [ %1414, %1405 ], [ 0.000000e+00, %1367 ]
  %1419 = add i32 %46, 80
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = and i32 %1421, 255
  %1423 = uitofp i32 %1422 to float
  %1424 = lshr i32 %1421, 8
  %1425 = and i32 %1424, 255
  %1426 = uitofp i32 %1425 to float
  %1427 = call float @dx.op.dot3.f32(i32 55, float %1288, float %1289, float %1290, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1428 = fmul fast float %1426, %1427
  %1429 = fadd fast float %1428, %1423
  %1430 = fmul fast float %1429, 0x3F70101020000000
  %1431 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  br i1 %780, label %1432, label %1440

; <label>:1432                                    ; preds = %1415
  %1433 = fsub fast float 1.000000e+00, %1068
  %1434 = fmul fast float %1433, %769
  %1435 = fmul fast float %1433, %770
  %1436 = fmul fast float %1433, %771
  %1437 = fmul fast float %1433, %772
  %1438 = fmul fast float %1433, %773
  %1439 = fmul fast float %1433, %774
  br label %1440

; <label>:1440                                    ; preds = %1432, %1415
  %1441 = phi float [ %1434, %1432 ], [ %769, %1415 ]
  %1442 = phi float [ %1435, %1432 ], [ %770, %1415 ]
  %1443 = phi float [ %1436, %1432 ], [ %771, %1415 ]
  %1444 = phi float [ %1437, %1432 ], [ %772, %1415 ]
  %1445 = phi float [ %1438, %1432 ], [ %773, %1415 ]
  %1446 = phi float [ %1439, %1432 ], [ %774, %1415 ]
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = and i32 %1448, 3
  %1450 = icmp eq i32 %1449, 3
  br i1 %1450, label %1529, label %1451

; <label>:1451                                    ; preds = %1440
  %1452 = and i32 %1448, 16
  %1453 = icmp ne i32 %1452, 0
  %1454 = select i1 %1453, float %1068, float 0.000000e+00
  %1455 = icmp eq i32 %1449, 0
  br i1 %1455, label %1456, label %1484

; <label>:1456                                    ; preds = %1451
  %1457 = and i32 %1448, 64
  %1458 = icmp ne i32 %1457, 0
  %1459 = select i1 %1458, float %1068, float 0.000000e+00
  %1460 = fsub fast float %1288, %1441
  %1461 = fsub fast float %1289, %1442
  %1462 = fsub fast float %1290, %1443
  %1463 = fmul fast float %1454, %1460
  %1464 = fmul fast float %1454, %1461
  %1465 = fmul fast float %1454, %1462
  %1466 = fadd fast float %1463, %1441
  %1467 = fadd fast float %1464, %1442
  %1468 = fadd fast float %1465, %1443
  %1469 = fsub fast float %1274, %775
  %1470 = fmul fast float %1454, %1469
  %1471 = fadd fast float %1470, %775
  %1472 = fsub fast float %1416, %1444
  %1473 = fsub fast float %1417, %1445
  %1474 = fsub fast float %1418, %1446
  %1475 = fmul fast float %1459, %1472
  %1476 = fmul fast float %1459, %1473
  %1477 = fmul fast float %1459, %1474
  %1478 = fadd fast float %1475, %1444
  %1479 = fadd fast float %1476, %1445
  %1480 = fadd fast float %1477, %1446
  %1481 = fsub fast float %1431, %779
  %1482 = fmul fast float %1454, %1481
  %1483 = fadd fast float %1482, %779
  br label %1529

; <label>:1484                                    ; preds = %1451
  %1485 = icmp eq i32 %1449, 1
  br i1 %1485, label %1486, label %1499

; <label>:1486                                    ; preds = %1484
  %1487 = fadd fast float %1288, -1.000000e+00
  %1488 = fadd fast float %1289, -1.000000e+00
  %1489 = fadd fast float %1290, -1.000000e+00
  %1490 = fmul fast float %1454, %1487
  %1491 = fmul fast float %1454, %1488
  %1492 = fmul fast float %1454, %1489
  %1493 = fadd fast float %1490, 1.000000e+00
  %1494 = fadd fast float %1491, 1.000000e+00
  %1495 = fadd fast float %1492, 1.000000e+00
  %1496 = fmul fast float %1493, %1441
  %1497 = fmul fast float %1494, %1442
  %1498 = fmul fast float %1495, %1443
  br label %1529

; <label>:1499                                    ; preds = %1484
  %1500 = icmp eq i32 %1449, 2
  br i1 %1500, label %1501, label %1529

; <label>:1501                                    ; preds = %1499
  %1502 = call float @dx.op.unary.f32(i32 24, float %1288)  ; Sqrt(value)
  %1503 = call float @dx.op.unary.f32(i32 24, float %1289)  ; Sqrt(value)
  %1504 = call float @dx.op.unary.f32(i32 24, float %1290)  ; Sqrt(value)
  %1505 = fadd fast float %1502, -5.000000e-01
  %1506 = fadd fast float %1503, -5.000000e-01
  %1507 = fadd fast float %1504, -5.000000e-01
  %1508 = fmul fast float %1505, %1454
  %1509 = fmul fast float %1506, %1454
  %1510 = fmul fast float %1507, %1454
  %1511 = fadd fast float %1508, 5.000000e-01
  %1512 = fadd fast float %1509, 5.000000e-01
  %1513 = fadd fast float %1510, 5.000000e-01
  %1514 = fmul fast float %1511, 2.000000e+00
  %1515 = fsub fast float 1.000000e+00, %1514
  %1516 = fmul fast float %1515, %1441
  %1517 = fadd fast float %1516, %1514
  %1518 = fmul fast float %1517, %1441
  %1519 = fmul fast float %1512, 2.000000e+00
  %1520 = fsub fast float 1.000000e+00, %1519
  %1521 = fmul fast float %1520, %1442
  %1522 = fadd fast float %1521, %1519
  %1523 = fmul fast float %1522, %1442
  %1524 = fmul fast float %1513, 2.000000e+00
  %1525 = fsub fast float 1.000000e+00, %1524
  %1526 = fmul fast float %1525, %1443
  %1527 = fadd fast float %1526, %1524
  %1528 = fmul fast float %1527, %1443
  br label %1529

; <label>:1529                                    ; preds = %1501, %1499, %1486, %1456, %1440
  %1530 = phi float [ %1441, %1440 ], [ %1518, %1501 ], [ %1441, %1499 ], [ %1496, %1486 ], [ %1466, %1456 ]
  %1531 = phi float [ %1442, %1440 ], [ %1523, %1501 ], [ %1442, %1499 ], [ %1497, %1486 ], [ %1467, %1456 ]
  %1532 = phi float [ %1443, %1440 ], [ %1528, %1501 ], [ %1443, %1499 ], [ %1498, %1486 ], [ %1468, %1456 ]
  %1533 = phi float [ %1444, %1440 ], [ %1444, %1501 ], [ %1444, %1499 ], [ %1444, %1486 ], [ %1478, %1456 ]
  %1534 = phi float [ %1445, %1440 ], [ %1445, %1501 ], [ %1445, %1499 ], [ %1445, %1486 ], [ %1479, %1456 ]
  %1535 = phi float [ %1446, %1440 ], [ %1446, %1501 ], [ %1446, %1499 ], [ %1446, %1486 ], [ %1480, %1456 ]
  %1536 = phi float [ %775, %1440 ], [ %775, %1501 ], [ %775, %1499 ], [ %775, %1486 ], [ %1471, %1456 ]
  %1537 = phi float [ %779, %1440 ], [ %779, %1501 ], [ %779, %1499 ], [ %779, %1486 ], [ %1483, %1456 ]
  %1538 = and i32 %1448, 12
  %1539 = icmp eq i32 %1538, 12
  br i1 %1539, label %1612, label %1540

; <label>:1540                                    ; preds = %1529
  %1541 = and i32 %1448, 2097184
  %1542 = icmp eq i32 %1541, 2097184
  %1543 = select i1 %1542, float %1068, float 0.000000e+00
  %1544 = and i32 %1448, 4194336
  %1545 = icmp eq i32 %1544, 4194336
  %1546 = select i1 %1545, float %1068, float 0.000000e+00
  %1547 = and i32 %1448, 8388640
  %1548 = icmp eq i32 %1547, 8388640
  %1549 = select i1 %1548, float %1068, float 0.000000e+00
  %1550 = icmp eq i32 %1538, 0
  br i1 %1550, label %1551, label %1564

; <label>:1551                                    ; preds = %1540
  %1552 = fsub fast float %1369, %767
  %1553 = fsub fast float %1370, %768
  %1554 = fmul fast float %1543, %1552
  %1555 = fmul fast float %1543, %1553
  %1556 = fadd fast float %1554, %767
  %1557 = fadd fast float %1555, %768
  %1558 = fsub fast float %1371, %778
  %1559 = fmul fast float %1546, %1558
  %1560 = fadd fast float %1559, %778
  %1561 = fsub fast float %1368, %777
  %1562 = fmul fast float %1549, %1561
  %1563 = fadd fast float %1562, %777
  br label %1612

; <label>:1564                                    ; preds = %1540
  %1565 = icmp eq i32 %1538, 4
  br i1 %1565, label %1566, label %1598

; <label>:1566                                    ; preds = %1564
  %1567 = fmul fast float %1543, %1369
  %1568 = fmul fast float %1543, %1370
  %1569 = fadd fast float %1567, %767
  %1570 = fadd fast float %1568, %768
  %1571 = call float @dx.op.binary.f32(i32 36, float %778, float %1371)  ; FMin(a,b)
  %1572 = fsub fast float %1571, %778
  %1573 = fmul fast float %1572, %1546
  %1574 = fadd fast float %1573, %778
  %1575 = fadd fast float %1368, %777
  %1576 = fmul fast float %1575, 0x3FF337FAE0000000
  %1577 = fmul fast float %777, %777
  %1578 = fmul fast float %1368, %1368
  %1579 = fadd fast float %1578, %1577
  %1580 = fmul fast float %1579, 0x3FE5152B00000000
  %1581 = fmul fast float %777, 0xBFCC1F85E0000000
  %1582 = fmul fast float %1581, %1368
  %1583 = fadd fast float %1582, 0xBFE1363700000000
  %1584 = fadd fast float %1583, %1576
  %1585 = fsub fast float %1584, %1580
  %1586 = fmul fast float %1575, 0x3FBA6F0D00000000
  %1587 = fmul fast float %1579, 0x3FD0432880000000
  %1588 = fmul fast float %777, 0xBFEF110800000000
  %1589 = fmul fast float %1588, %1368
  %1590 = fadd fast float %1589, 1.000000e+00
  %1591 = fsub fast float %1590, %1586
  %1592 = fadd fast float %1591, %1587
  %1593 = fdiv fast float %1585, %1592
  %1594 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1595 = fsub fast float %1594, %777
  %1596 = fmul fast float %1595, %1549
  %1597 = fadd fast float %1596, %777
  br label %1612

; <label>:1598                                    ; preds = %1564
  %1599 = icmp eq i32 %1538, 8
  br i1 %1599, label %1600, label %1612

; <label>:1600                                    ; preds = %1598
  %1601 = fmul fast float %1543, %1369
  %1602 = fmul fast float %1543, %1370
  %1603 = fadd fast float %1601, %767
  %1604 = fadd fast float %1602, %768
  %1605 = call float @dx.op.binary.f32(i32 36, float %778, float %1371)  ; FMin(a,b)
  %1606 = fsub fast float %1605, %778
  %1607 = fmul fast float %1606, %1546
  %1608 = fadd fast float %1607, %778
  %1609 = fsub fast float %1368, %777
  %1610 = fmul fast float %1549, %1609
  %1611 = fadd fast float %1610, %777
  br label %1612

; <label>:1612                                    ; preds = %1600, %1598, %1566, %1551, %1529, %1067, %766
  %1613 = phi float [ %767, %1529 ], [ %767, %1067 ], [ %767, %766 ], [ %1556, %1551 ], [ %1569, %1566 ], [ %767, %1598 ], [ %1603, %1600 ]
  %1614 = phi float [ %768, %1529 ], [ %768, %1067 ], [ %768, %766 ], [ %1557, %1551 ], [ %1570, %1566 ], [ %768, %1598 ], [ %1604, %1600 ]
  %1615 = phi float [ %1530, %1529 ], [ %769, %1067 ], [ %769, %766 ], [ %1530, %1551 ], [ %1530, %1566 ], [ %1530, %1598 ], [ %1530, %1600 ]
  %1616 = phi float [ %1531, %1529 ], [ %770, %1067 ], [ %770, %766 ], [ %1531, %1551 ], [ %1531, %1566 ], [ %1531, %1598 ], [ %1531, %1600 ]
  %1617 = phi float [ %1532, %1529 ], [ %771, %1067 ], [ %771, %766 ], [ %1532, %1551 ], [ %1532, %1566 ], [ %1532, %1598 ], [ %1532, %1600 ]
  %1618 = phi float [ %1533, %1529 ], [ %772, %1067 ], [ %772, %766 ], [ %1533, %1551 ], [ %1533, %1566 ], [ %1533, %1598 ], [ %1533, %1600 ]
  %1619 = phi float [ %1534, %1529 ], [ %773, %1067 ], [ %773, %766 ], [ %1534, %1551 ], [ %1534, %1566 ], [ %1534, %1598 ], [ %1534, %1600 ]
  %1620 = phi float [ %1535, %1529 ], [ %774, %1067 ], [ %774, %766 ], [ %1535, %1551 ], [ %1535, %1566 ], [ %1535, %1598 ], [ %1535, %1600 ]
  %1621 = phi float [ %1536, %1529 ], [ %775, %1067 ], [ %775, %766 ], [ %1536, %1551 ], [ %1536, %1566 ], [ %1536, %1598 ], [ %1536, %1600 ]
  %1622 = phi float [ %777, %1529 ], [ %777, %1067 ], [ %777, %766 ], [ %1563, %1551 ], [ %1597, %1566 ], [ %777, %1598 ], [ %1611, %1600 ]
  %1623 = phi float [ %778, %1529 ], [ %778, %1067 ], [ %778, %766 ], [ %1560, %1551 ], [ %1574, %1566 ], [ %778, %1598 ], [ %1608, %1600 ]
  %1624 = phi float [ %1537, %1529 ], [ %779, %1067 ], [ %779, %766 ], [ %1537, %1551 ], [ %1537, %1566 ], [ %1537, %1598 ], [ %1537, %1600 ]
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 0
  %1627 = call float @dx.op.dot2.f32(i32 54, float %1613, float %1614, float %1613, float %1614)  ; Dot2(ax,ay,bx,by)
  %1628 = fmul fast float %1627, 0x3FE3333340000000
  %1629 = fsub fast float 1.000000e+00, %1628
  %1630 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1614, float %1629, float %1613, float %1614, float %1629)  ; Dot3(ax,ay,az,bx,by,bz)
  %1631 = call float @dx.op.unary.f32(i32 25, float %1630)  ; Rsqrt(value)
  %1632 = fmul fast float %1631, %1613
  %1633 = fmul fast float %1631, %1614
  %1634 = fmul fast float %1629, %1631
  %1635 = fmul fast float %1634, %69
  %1636 = fmul fast float %1634, %70
  %1637 = fmul fast float %1634, %71
  %1638 = fmul fast float %1632, %72
  %1639 = fmul fast float %1632, %73
  %1640 = fmul fast float %1632, %74
  %1641 = fadd fast float %1635, %1638
  %1642 = fadd fast float %1636, %1639
  %1643 = fadd fast float %1637, %1640
  %1644 = fmul fast float %1633, %85
  %1645 = fmul fast float %1633, %86
  %1646 = fmul fast float %1633, %87
  %1647 = fadd fast float %1641, %1644
  %1648 = fadd fast float %1642, %1645
  %1649 = fadd fast float %1643, %1646
  %1650 = call float @dx.op.dot3.f32(i32 55, float %1647, float %1648, float %1649, float %1647, float %1648, float %1649)  ; Dot3(ax,ay,az,bx,by,bz)
  %1651 = call float @dx.op.unary.f32(i32 25, float %1650)  ; Rsqrt(value)
  %1652 = fmul fast float %1647, %1651
  %1653 = fmul fast float %1648, %1651
  %1654 = fmul fast float %1649, %1651
  %1655 = call float @dx.op.unary.f32(i32 83, float %121)  ; DerivCoarseX(value)
  %1656 = call float @dx.op.unary.f32(i32 83, float %122)  ; DerivCoarseX(value)
  %1657 = call float @dx.op.unary.f32(i32 83, float %123)  ; DerivCoarseX(value)
  %1658 = call float @dx.op.unary.f32(i32 84, float %121)  ; DerivCoarseY(value)
  %1659 = call float @dx.op.unary.f32(i32 84, float %122)  ; DerivCoarseY(value)
  %1660 = call float @dx.op.unary.f32(i32 84, float %123)  ; DerivCoarseY(value)
  %1661 = fadd fast float %1655, %121
  %1662 = fadd fast float %1656, %122
  %1663 = fadd fast float %1657, %123
  %1664 = fadd fast float %1658, %121
  %1665 = fadd fast float %1659, %122
  %1666 = fadd fast float %1660, %123
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 0
  %1669 = extractvalue %dx.types.CBufRet.f32 %1667, 1
  %1670 = extractvalue %dx.types.CBufRet.f32 %1667, 2
  %1671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1672 = extractvalue %dx.types.CBufRet.f32 %1671, 2
  %1673 = extractvalue %dx.types.CBufRet.f32 %1671, 3
  %1674 = fmul fast float %1668, %66
  %1675 = fmul fast float %1674, %1672
  %1676 = fmul fast float %1669, %67
  %1677 = fmul fast float %1676, %1673
  %1678 = fptoui float %1675 to i32
  %1679 = fptoui float %1677 to i32
  %1680 = fadd fast float %1668, -1.000000e+00
  %1681 = fadd fast float %1669, -1.000000e+00
  %1682 = fptoui float %1680 to i32
  %1683 = fptoui float %1681 to i32
  %1684 = call i32 @dx.op.binary.i32(i32 40, i32 %1678, i32 %1682)  ; UMin(a,b)
  %1685 = call i32 @dx.op.binary.i32(i32 40, i32 %1679, i32 %1683)  ; UMin(a,b)
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 2
  %1688 = extractvalue %dx.types.CBufRet.f32 %1686, 3
  %1689 = fmul fast float %1687, %61
  %1690 = fsub fast float %1689, %1688
  %1691 = fadd fast float %1670, -1.000000e+00
  %1692 = call float @dx.op.binary.f32(i32 36, float %1690, float %1691)  ; FMin(a,b)
  %1693 = fptoui float %1692 to i32
  %1694 = fptoui float %1668 to i32
  %1695 = fptoui float %1669 to i32
  %1696 = mul i32 %1693, %1695
  %1697 = add i32 %1696, %1685
  %1698 = mul i32 %1697, %1694
  %1699 = add i32 %1698, %1684
  %1700 = shl i32 %1699, 2
  %1701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1702 = extractvalue %dx.types.ResRet.i32 %1701, 0
  %1703 = and i32 %1702, 1023
  %1704 = lshr i32 %1702, 10
  %1705 = icmp eq i32 %1703, 0
  br i1 %1705, label %2131, label %1706

; <label>:1706                                    ; preds = %1612
  %1707 = and i32 %1702, 1023
  br label %1708

; <label>:1708                                    ; preds = %1834, %1706
  %1709 = phi float [ %1835, %1834 ], [ 0.000000e+00, %1706 ]
  %1710 = phi float [ %1836, %1834 ], [ %1626, %1706 ]
  %1711 = phi float [ %1837, %1834 ], [ %1624, %1706 ]
  %1712 = phi float [ %1838, %1834 ], [ 0.000000e+00, %1706 ]
  %1713 = phi float [ %1839, %1834 ], [ 0.000000e+00, %1706 ]
  %1714 = phi float [ %1840, %1834 ], [ %1618, %1706 ]
  %1715 = phi float [ %1841, %1834 ], [ %1619, %1706 ]
  %1716 = phi float [ %1842, %1834 ], [ %1620, %1706 ]
  %1717 = phi float [ %1843, %1834 ], [ %1652, %1706 ]
  %1718 = phi float [ %1844, %1834 ], [ %1653, %1706 ]
  %1719 = phi float [ %1845, %1834 ], [ %1654, %1706 ]
  %1720 = phi float [ %1846, %1834 ], [ %1623, %1706 ]
  %1721 = phi float [ %1847, %1834 ], [ %1622, %1706 ]
  %1722 = phi float [ %1848, %1834 ], [ 0.000000e+00, %1706 ]
  %1723 = phi float [ %1849, %1834 ], [ %1621, %1706 ]
  %1724 = phi float [ %1850, %1834 ], [ %1615, %1706 ]
  %1725 = phi float [ %1851, %1834 ], [ %1616, %1706 ]
  %1726 = phi float [ %1852, %1834 ], [ %1617, %1706 ]
  %1727 = phi i32 [ %1784, %1834 ], [ 0, %1706 ]
  %1728 = add nuw nsw i32 %1727, %1704
  %1729 = shl i32 %1728, 2
  %1730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.i32 %1730, 0
  %1732 = shl i32 %1731, 8
  %1733 = or i32 %1732, 48
  %1734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.f32 %1734, 0
  %1736 = extractvalue %dx.types.ResRet.f32 %1734, 1
  %1737 = extractvalue %dx.types.ResRet.f32 %1734, 2
  %1738 = extractvalue %dx.types.ResRet.f32 %1734, 3
  %1739 = or i32 %1732, 64
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = extractvalue %dx.types.ResRet.i32 %1740, 1
  %1743 = or i32 %1732, 80
  %1744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.f32 %1744, 2
  %1746 = extractvalue %dx.types.ResRet.f32 %1744, 3
  %1747 = or i32 %1732, 96
  %1748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.f32 %1748, 0
  %1750 = extractvalue %dx.types.ResRet.f32 %1748, 1
  %1751 = extractvalue %dx.types.ResRet.f32 %1748, 2
  %1752 = extractvalue %dx.types.ResRet.f32 %1748, 3
  %1753 = or i32 %1732, 112
  %1754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.f32 %1754, 2
  %1756 = or i32 %1732, 128
  %1757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.f32 %1757, 0
  %1759 = extractvalue %dx.types.ResRet.f32 %1757, 1
  %1760 = extractvalue %dx.types.ResRet.f32 %1757, 2
  %1761 = extractvalue %dx.types.ResRet.f32 %1757, 3
  %1762 = or i32 %1732, 144
  %1763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.ResRet.f32 %1763, 1
  %1766 = extractvalue %dx.types.ResRet.f32 %1763, 2
  %1767 = extractvalue %dx.types.ResRet.f32 %1763, 3
  %1768 = or i32 %1732, 160
  %1769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.f32 %1769, 0
  %1771 = extractvalue %dx.types.ResRet.f32 %1769, 1
  %1772 = extractvalue %dx.types.ResRet.f32 %1769, 2
  %1773 = extractvalue %dx.types.ResRet.f32 %1769, 3
  %1774 = or i32 %1732, 192
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = or i32 %1732, 208
  %1778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.f32 %1778, 0
  %1780 = or i32 %1732, 248
  %1781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.f32 %1781, 0
  %1783 = extractvalue %dx.types.ResRet.f32 %1781, 1
  %1784 = add nuw nsw i32 %1727, 1
  %1785 = bitcast float %1738 to i32
  %1786 = and i32 %1785, 2560
  %1787 = icmp eq i32 %1786, 0
  %1788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.ResRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.ResRet.f32 %1788, 2
  %1792 = extractvalue %dx.types.ResRet.f32 %1788, 3
  %1793 = call float @dx.op.dot4.f32(i32 56, float %1789, float %1790, float %1791, float %1792, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1794 = or i32 %1732, 16
  %1795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.f32 %1795, 0
  %1797 = extractvalue %dx.types.ResRet.f32 %1795, 1
  %1798 = extractvalue %dx.types.ResRet.f32 %1795, 2
  %1799 = extractvalue %dx.types.ResRet.f32 %1795, 3
  %1800 = call float @dx.op.dot4.f32(i32 56, float %1796, float %1797, float %1798, float %1799, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1801 = or i32 %1732, 32
  %1802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.f32 %1802, 0
  %1804 = extractvalue %dx.types.ResRet.f32 %1802, 1
  %1805 = extractvalue %dx.types.ResRet.f32 %1802, 2
  %1806 = extractvalue %dx.types.ResRet.f32 %1802, 3
  %1807 = call float @dx.op.dot4.f32(i32 56, float %1803, float %1804, float %1805, float %1806, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1808 = call float @dx.op.unary.f32(i32 27, float %1793)  ; Round_ni(value)
  %1809 = call float @dx.op.unary.f32(i32 6, float %1808)  ; FAbs(value)
  %1810 = call float @dx.op.unary.f32(i32 27, float %1800)  ; Round_ni(value)
  %1811 = call float @dx.op.unary.f32(i32 6, float %1810)  ; FAbs(value)
  %1812 = call float @dx.op.unary.f32(i32 6, float %1807)  ; FAbs(value)
  %1813 = call float @dx.op.unary.f32(i32 27, float %1812)  ; Round_ni(value)
  %1814 = fadd fast float %1811, %1809
  %1815 = fadd fast float %1814, %1813
  %1816 = fcmp fast oeq float %1815, 0.000000e+00
  %1817 = call float @dx.op.dot4.f32(i32 56, float %1789, float %1790, float %1791, float %1792, float %1661, float %1662, float %1663, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1818 = call float @dx.op.dot4.f32(i32 56, float %1796, float %1797, float %1798, float %1799, float %1661, float %1662, float %1663, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1819 = call float @dx.op.dot4.f32(i32 56, float %1789, float %1790, float %1791, float %1792, float %1664, float %1665, float %1666, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1820 = call float @dx.op.dot4.f32(i32 56, float %1796, float %1797, float %1798, float %1799, float %1664, float %1665, float %1666, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1821 = fsub fast float %1817, %1793
  %1822 = fsub fast float %1819, %1793
  %1823 = fsub fast float %1818, %1800
  %1824 = fsub fast float %1820, %1800
  %1825 = call float @dx.op.dot3.f32(i32 55, float %1735, float %1736, float %1737, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 2
  %1828 = fadd fast float %1827, %1825
  %1829 = call float @dx.op.unary.f32(i32 7, float %1828)  ; Saturate(value)
  %1830 = extractvalue %dx.types.CBufRet.f32 %1826, 0
  %1831 = fcmp fast ogt float %1829, %1830
  %1832 = and i1 %1816, %1831
  %1833 = and i1 %1787, %1832
  br i1 %1833, label %1854, label %1834

; <label>:1834                                    ; preds = %2117, %1935, %1854, %1708
  %1835 = phi float [ %1709, %1854 ], [ %1938, %1935 ], [ %1938, %2117 ], [ %1709, %1708 ]
  %1836 = phi float [ %1710, %1854 ], [ %1710, %1935 ], [ %2092, %2117 ], [ %1710, %1708 ]
  %1837 = phi float [ %1711, %1854 ], [ %1711, %1935 ], [ %2090, %2117 ], [ %1711, %1708 ]
  %1838 = phi float [ %1712, %1854 ], [ %1712, %1935 ], [ %2062, %2117 ], [ %1712, %1708 ]
  %1839 = phi float [ %1713, %1854 ], [ %1713, %1935 ], [ %2060, %2117 ], [ %1713, %1708 ]
  %1840 = phi float [ %1714, %1854 ], [ %1714, %1935 ], [ %2127, %2117 ], [ %1714, %1708 ]
  %1841 = phi float [ %1715, %1854 ], [ %1715, %1935 ], [ %2128, %2117 ], [ %1715, %1708 ]
  %1842 = phi float [ %1716, %1854 ], [ %1716, %1935 ], [ %2129, %2117 ], [ %1716, %1708 ]
  %1843 = phi float [ %1717, %1854 ], [ %1717, %1935 ], [ %2041, %2117 ], [ %1717, %1708 ]
  %1844 = phi float [ %1718, %1854 ], [ %1718, %1935 ], [ %2042, %2117 ], [ %1718, %1708 ]
  %1845 = phi float [ %1719, %1854 ], [ %1719, %1935 ], [ %2043, %2117 ], [ %1719, %1708 ]
  %1846 = phi float [ %1720, %1854 ], [ %1720, %1935 ], [ %2070, %2117 ], [ %1720, %1708 ]
  %1847 = phi float [ %1721, %1854 ], [ %1721, %1935 ], [ %2067, %2117 ], [ %1721, %1708 ]
  %1848 = phi float [ %1722, %1854 ], [ %1722, %1935 ], [ %2064, %2117 ], [ %1722, %1708 ]
  %1849 = phi float [ %1723, %1854 ], [ %1723, %1935 ], [ %2058, %2117 ], [ %1723, %1708 ]
  %1850 = phi float [ %1724, %1854 ], [ %1724, %1935 ], [ %2053, %2117 ], [ %1724, %1708 ]
  %1851 = phi float [ %1725, %1854 ], [ %1725, %1935 ], [ %2054, %2117 ], [ %1725, %1708 ]
  %1852 = phi float [ %1726, %1854 ], [ %1726, %1935 ], [ %2055, %2117 ], [ %1726, %1708 ]
  %1853 = icmp eq i32 %1784, %1707
  br i1 %1853, label %2130, label %1708

; <label>:1854                                    ; preds = %1708
  %1855 = extractvalue %dx.types.ResRet.f32 %1754, 3
  %1856 = extractvalue %dx.types.ResRet.f32 %1754, 1
  %1857 = extractvalue %dx.types.ResRet.f32 %1754, 0
  %1858 = extractvalue %dx.types.ResRet.f32 %1744, 1
  %1859 = extractvalue %dx.types.ResRet.f32 %1744, 0
  %1860 = extractvalue %dx.types.ResRet.i32 %1740, 3
  %1861 = extractvalue %dx.types.ResRet.i32 %1740, 2
  %1862 = add i32 %1860, 0
  %1863 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1862, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1864 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1865 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1863, %dx.types.Handle %1864, float %1793, float %1800, float undef, float undef, i32 0, i32 0, i32 undef, float %1821, float %1823, float undef, float %1822, float %1824, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1866 = extractvalue %dx.types.ResRet.f32 %1865, 0
  %1867 = fmul fast float %1866, %1859
  %1868 = fadd fast float %1867, %1858
  %1869 = call float @dx.op.unary.f32(i32 7, float %1868)  ; Saturate(value)
  %1870 = fmul fast float %1793, %1749
  %1871 = call float @dx.op.tertiary.f32(i32 46, float %1750, float %1800, float %1870)  ; FMad(a,b,c)
  %1872 = fadd fast float %1871, %1857
  %1873 = fmul fast float %1793, %1751
  %1874 = call float @dx.op.tertiary.f32(i32 46, float %1752, float %1800, float %1873)  ; FMad(a,b,c)
  %1875 = fadd fast float %1874, %1856
  %1876 = fmul fast float %1821, %1749
  %1877 = call float @dx.op.tertiary.f32(i32 46, float %1750, float %1823, float %1876)  ; FMad(a,b,c)
  %1878 = fmul fast float %1821, %1751
  %1879 = call float @dx.op.tertiary.f32(i32 46, float %1752, float %1823, float %1878)  ; FMad(a,b,c)
  %1880 = fmul fast float %1822, %1749
  %1881 = call float @dx.op.tertiary.f32(i32 46, float %1750, float %1824, float %1880)  ; FMad(a,b,c)
  %1882 = fmul fast float %1822, %1751
  %1883 = call float @dx.op.tertiary.f32(i32 46, float %1752, float %1824, float %1882)  ; FMad(a,b,c)
  %1884 = add i32 %1861, 0
  %1885 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1884, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1886 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1885, %dx.types.Handle %1864, float %1872, float %1875, float undef, float undef, i32 0, i32 0, i32 undef, float %1877, float %1879, float undef, float %1881, float %1883, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1887 = extractvalue %dx.types.ResRet.f32 %1886, 0
  %1888 = and i32 %1785, 1024
  %1889 = icmp ne i32 %1888, 0
  %1890 = fcmp fast ogt float %1887, 0x3FE0101020000000
  %1891 = uitofp i1 %1890 to float
  %1892 = select i1 %1889, float %1891, float %1887
  %1893 = and i32 %1785, 8192
  %1894 = icmp ne i32 %1893, 0
  %1895 = select i1 %1894, float %1855, float 1.000000e+00
  %1896 = fmul fast float %1793, 2.000000e+00
  %1897 = fadd fast float %1896, -1.000000e+00
  %1898 = call float @dx.op.unary.f32(i32 6, float %1897)  ; FAbs(value)
  %1899 = fmul fast float %1898, %1782
  %1900 = fsub fast float %1899, %1782
  %1901 = call float @dx.op.unary.f32(i32 7, float %1900)  ; Saturate(value)
  %1902 = fmul fast float %1800, 2.000000e+00
  %1903 = fadd fast float %1902, -1.000000e+00
  %1904 = call float @dx.op.unary.f32(i32 6, float %1903)  ; FAbs(value)
  %1905 = fmul fast float %1904, %1783
  %1906 = fsub fast float %1905, %1783
  %1907 = call float @dx.op.unary.f32(i32 7, float %1906)  ; Saturate(value)
  %1908 = fmul fast float %1812, %1745
  %1909 = fsub fast float %1908, %1745
  %1910 = call float @dx.op.unary.f32(i32 7, float %1909)  ; Saturate(value)
  %1911 = fmul fast float %1869, %1895
  %1912 = fmul fast float %1911, %1866
  %1913 = fmul fast float %1912, %1901
  %1914 = fmul fast float %1913, %1892
  %1915 = fmul fast float %1914, %1907
  %1916 = fmul fast float %1915, %1910
  %1917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1918 = extractvalue %dx.types.CBufRet.f32 %1917, 1
  %1919 = extractvalue %dx.types.CBufRet.f32 %1917, 0
  %1920 = fsub fast float %1829, %1919
  %1921 = fmul fast float %1920, %1918
  %1922 = call float @dx.op.unary.f32(i32 7, float %1921)  ; Saturate(value)
  %1923 = fmul fast float %1916, %1746
  %1924 = fadd fast float %1916, %1746
  %1925 = fmul fast float %1924, %1755
  %1926 = fsub fast float %1925, %1755
  %1927 = call float @dx.op.unary.f32(i32 7, float %1926)  ; Saturate(value)
  %1928 = and i32 %1785, 128
  %1929 = icmp ne i32 %1928, 0
  %1930 = select i1 %1929, float %1927, float %1923
  %1931 = fmul fast float %1930, %1922
  %1932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1933 = extractvalue %dx.types.CBufRet.f32 %1932, 0
  %1934 = fcmp fast ugt float %1931, %1933
  br i1 %1934, label %1935, label %1834

; <label>:1935                                    ; preds = %1854
  %1936 = select i1 %1894, float %1931, float 0.000000e+00
  %1937 = fadd fast float %1936, %1709
  %1938 = call float @dx.op.unary.f32(i32 7, float %1937)  ; Saturate(value)
  br i1 %1894, label %1834, label %1939

; <label>:1939                                    ; preds = %1935
  %1940 = and i32 %1785, 4
  %1941 = and i32 %1785, 8
  %1942 = add i32 %1741, 0
  %1943 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1942, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1944 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1945 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1943, %dx.types.Handle %1944, float %1872, float %1875, float undef, float undef, i32 0, i32 0, i32 undef, float %1877, float %1879, float undef, float %1881, float %1883, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1946 = extractvalue %dx.types.ResRet.f32 %1945, 0
  %1947 = extractvalue %dx.types.ResRet.f32 %1945, 1
  %1948 = extractvalue %dx.types.ResRet.f32 %1945, 2
  %1949 = extractvalue %dx.types.ResRet.f32 %1945, 3
  %1950 = bitcast float %1767 to i32
  %1951 = and i32 %1950, 255
  %1952 = uitofp i32 %1951 to float
  %1953 = lshr i32 %1950, 8
  %1954 = and i32 %1953, 255
  %1955 = uitofp i32 %1954 to float
  %1956 = fmul fast float %1949, %1952
  %1957 = fadd fast float %1956, %1955
  %1958 = fmul fast float %1957, 0x3F70101000000000
  %1959 = add i32 %1742, 0
  %1960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1959, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1961 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1960, %dx.types.Handle %1944, float %1872, float %1875, float undef, float undef, i32 0, i32 0, i32 undef, float %1877, float %1879, float undef, float %1881, float %1883, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1962 = extractvalue %dx.types.ResRet.f32 %1961, 0
  %1963 = extractvalue %dx.types.ResRet.f32 %1961, 1
  %1964 = extractvalue %dx.types.ResRet.f32 %1961, 2
  %1965 = extractvalue %dx.types.ResRet.f32 %1961, 3
  %1966 = bitcast float %1761 to i32
  %1967 = and i32 %1966, 255
  %1968 = uitofp i32 %1967 to float
  %1969 = lshr i32 %1966, 8
  %1970 = and i32 %1969, 255
  %1971 = uitofp i32 %1970 to float
  %1972 = lshr i32 %1966, 16
  %1973 = and i32 %1972, 255
  %1974 = uitofp i32 %1973 to float
  %1975 = fmul fast float %1974, 0x3F70101000000000
  %1976 = fmul fast float %1962, %1968
  %1977 = fadd fast float %1976, %1971
  %1978 = fmul fast float %1977, 0x3F70101000000000
  %1979 = fadd fast float %1963, -5.000000e-01
  %1980 = fadd fast float %1965, -5.000000e-01
  %1981 = fmul fast float %1979, %1975
  %1982 = fmul fast float %1980, %1975
  %1983 = fadd fast float %1981, 5.000000e-01
  %1984 = fadd fast float %1982, 5.000000e-01
  %1985 = fmul fast float %1946, %1770
  %1986 = fmul fast float %1947, %1771
  %1987 = fmul fast float %1948, %1772
  %1988 = fmul fast float %1983, 2.000000e+00
  %1989 = fadd fast float %1988, -1.000000e+00
  %1990 = fmul fast float %1984, 2.000000e+00
  %1991 = fadd fast float %1990, -1.000000e+00
  %1992 = fadd fast float %1989, %1991
  %1993 = fmul fast float %1992, 5.000000e-01
  %1994 = fsub fast float %1989, %1991
  %1995 = fmul fast float %1994, 5.000000e-01
  %1996 = call float @dx.op.unary.f32(i32 6, float %1993)  ; FAbs(value)
  %1997 = fsub fast float 1.000000e+00, %1996
  %1998 = call float @dx.op.unary.f32(i32 6, float %1995)  ; FAbs(value)
  %1999 = fsub fast float %1997, %1998
  %2000 = call float @dx.op.dot3.f32(i32 55, float %1993, float %1995, float %1999, float %1993, float %1995, float %1999)  ; Dot3(ax,ay,az,bx,by,bz)
  %2001 = call float @dx.op.unary.f32(i32 25, float %2000)  ; Rsqrt(value)
  %2002 = fmul fast float %1993, %2001
  %2003 = fmul fast float %1995, %2001
  %2004 = fmul fast float %2001, %1999
  %2005 = fmul fast float %2004, %1735
  %2006 = fmul fast float %2004, %1736
  %2007 = fmul fast float %2004, %1737
  %2008 = fmul fast float %2002, %1758
  %2009 = fmul fast float %2002, %1759
  %2010 = fmul fast float %2002, %1760
  %2011 = fadd fast float %2008, %2005
  %2012 = fadd fast float %2009, %2006
  %2013 = fadd fast float %2010, %2007
  %2014 = fmul fast float %2003, %1764
  %2015 = fmul fast float %2003, %1765
  %2016 = fmul fast float %2003, %1766
  %2017 = fadd fast float %2011, %2014
  %2018 = fadd fast float %2012, %2015
  %2019 = fadd fast float %2013, %2016
  %2020 = call float @dx.op.dot3.f32(i32 55, float %2017, float %2018, float %2019, float %2017, float %2018, float %2019)  ; Dot3(ax,ay,az,bx,by,bz)
  %2021 = call float @dx.op.unary.f32(i32 25, float %2020)  ; Rsqrt(value)
  %2022 = fmul fast float %2017, %2021
  %2023 = fmul fast float %2018, %2021
  %2024 = fmul fast float %2019, %2021
  %2025 = icmp ne i32 %1941, 0
  %2026 = select i1 %2025, float 1.000000e+00, float 0.000000e+00
  %2027 = fmul fast float %1931, %2026
  %2028 = and i32 %1785, 1
  %2029 = icmp eq i32 %2028, 0
  br i1 %2029, label %2030, label %2034

; <label>:2030                                    ; preds = %1939
  %2031 = fsub fast float %2022, %1717
  %2032 = fsub fast float %2023, %1718
  %2033 = fsub fast float %2024, %1719
  br label %2034

; <label>:2034                                    ; preds = %2030, %1939
  %2035 = phi float [ %2031, %2030 ], [ %2022, %1939 ]
  %2036 = phi float [ %2032, %2030 ], [ %2023, %1939 ]
  %2037 = phi float [ %2033, %2030 ], [ %2024, %1939 ]
  %2038 = fmul float %2037, %2027
  %2039 = fmul float %2036, %2027
  %2040 = fmul float %2035, %2027
  %2041 = fadd fast float %2040, %1717
  %2042 = fadd fast float %2039, %1718
  %2043 = fadd fast float %2038, %1719
  %2044 = icmp ne i32 %1940, 0
  %2045 = select i1 %2044, float 1.000000e+00, float 0.000000e+00
  %2046 = fmul fast float %1931, %2045
  %2047 = fsub fast float %1985, %1724
  %2048 = fsub fast float %1986, %1725
  %2049 = fsub fast float %1987, %1726
  %2050 = fmul fast float %2047, %2046
  %2051 = fmul fast float %2048, %2046
  %2052 = fmul fast float %2049, %2046
  %2053 = fadd fast float %2050, %1724
  %2054 = fadd fast float %2051, %1725
  %2055 = fadd fast float %2052, %1726
  %2056 = fsub fast float %1958, %1723
  %2057 = fmul fast float %2056, %2046
  %2058 = fadd fast float %2057, %1723
  %2059 = fmul fast float %2046, %1713
  %2060 = fsub fast float %1713, %2059
  %2061 = fmul fast float %2046, %1712
  %2062 = fsub fast float %1712, %2061
  %2063 = fadd fast float %1931, %1722
  %2064 = call float @dx.op.unary.f32(i32 7, float %2063)  ; Saturate(value)
  %2065 = fsub fast float %1978, %1721
  %2066 = fmul fast float %2065, %2027
  %2067 = fadd fast float %2066, %1721
  %2068 = fsub fast float %1964, %1720
  %2069 = fmul fast float %2068, %2027
  %2070 = fadd fast float %2069, %1720
  %2071 = call float @dx.op.dot3.f32(i32 55, float %1985, float %1986, float %1987, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.CBufRet.f32 %2072, 1
  %2075 = fmul fast float %2074, %2071
  %2076 = fadd fast float %2075, %2073
  %2077 = call float @dx.op.unary.f32(i32 7, float %2076)  ; Saturate(value)
  %2078 = bitcast float %1773 to i32
  %2079 = and i32 %2078, 65535
  %2080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2079)  ; LegacyF16ToF32(value)
  %2081 = lshr i32 %2078, 16
  %2082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2081)  ; LegacyF16ToF32(value)
  %2083 = fcmp fast oge float %2080, 0.000000e+00
  %2084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2085 = extractvalue %dx.types.CBufRet.f32 %2084, 0
  %2086 = select i1 %2083, float %2080, float %2085
  %2087 = fadd fast float %2086, %2082
  %2088 = fsub fast float %2077, %1711
  %2089 = fmul fast float %2088, %1931
  %2090 = fadd fast float %2089, %1711
  %2091 = fmul fast float %2087, %1931
  %2092 = call float @dx.op.binary.f32(i32 35, float %1710, float %2091)  ; FMax(a,b)
  %2093 = and i32 %1785, 16
  %2094 = icmp eq i32 %2093, 0
  br i1 %2094, label %2117, label %2095

; <label>:2095                                    ; preds = %2034
  %2096 = bitcast float %1779 to i32
  %2097 = add i32 %1776, 0
  %2098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2097, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2099 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2098, %dx.types.Handle %1944, float %1872, float %1875, float undef, float undef, i32 0, i32 0, i32 undef, float %1877, float %1879, float undef, float %1881, float %1883, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2100 = extractvalue %dx.types.ResRet.f32 %2099, 0
  %2101 = extractvalue %dx.types.ResRet.f32 %2099, 1
  %2102 = extractvalue %dx.types.ResRet.f32 %2099, 2
  %2103 = and i32 %2096, 65535
  %2104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2103)  ; LegacyF16ToF32(value)
  %2105 = fmul fast float %2100, %1770
  %2106 = fmul fast float %2101, %1771
  %2107 = fmul fast float %2102, %1772
  %2108 = and i32 %1785, 16384
  %2109 = icmp ne i32 %2108, 0
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2112 = select i1 %2109, float %2111, float 1.000000e+00
  %2113 = fmul fast float %2112, %2104
  %2114 = fmul fast float %2105, %2113
  %2115 = fmul fast float %2106, %2113
  %2116 = fmul fast float %2107, %2113
  br label %2117

; <label>:2117                                    ; preds = %2095, %2034
  %2118 = phi float [ %2114, %2095 ], [ 0.000000e+00, %2034 ]
  %2119 = phi float [ %2115, %2095 ], [ 0.000000e+00, %2034 ]
  %2120 = phi float [ %2116, %2095 ], [ 0.000000e+00, %2034 ]
  %2121 = fsub fast float %2118, %1714
  %2122 = fsub fast float %2119, %1715
  %2123 = fsub fast float %2120, %1716
  %2124 = fmul fast float %2121, %1931
  %2125 = fmul fast float %2122, %1931
  %2126 = fmul fast float %2123, %1931
  %2127 = fadd fast float %2124, %1714
  %2128 = fadd fast float %2125, %1715
  %2129 = fadd fast float %2126, %1716
  br label %1834

; <label>:2130                                    ; preds = %1834
  br label %2131

; <label>:2131                                    ; preds = %2130, %1612
  %2132 = phi float [ 0.000000e+00, %1612 ], [ %1835, %2130 ]
  %2133 = phi float [ %1626, %1612 ], [ %1836, %2130 ]
  %2134 = phi float [ %1624, %1612 ], [ %1837, %2130 ]
  %2135 = phi float [ 0.000000e+00, %1612 ], [ %1838, %2130 ]
  %2136 = phi float [ 0.000000e+00, %1612 ], [ %1839, %2130 ]
  %2137 = phi float [ %1618, %1612 ], [ %1840, %2130 ]
  %2138 = phi float [ %1619, %1612 ], [ %1841, %2130 ]
  %2139 = phi float [ %1620, %1612 ], [ %1842, %2130 ]
  %2140 = phi float [ %1652, %1612 ], [ %1843, %2130 ]
  %2141 = phi float [ %1653, %1612 ], [ %1844, %2130 ]
  %2142 = phi float [ %1654, %1612 ], [ %1845, %2130 ]
  %2143 = phi float [ %1623, %1612 ], [ %1846, %2130 ]
  %2144 = phi float [ %1622, %1612 ], [ %1847, %2130 ]
  %2145 = phi float [ 0.000000e+00, %1612 ], [ %1848, %2130 ]
  %2146 = phi float [ %1621, %1612 ], [ %1849, %2130 ]
  %2147 = phi float [ %1615, %1612 ], [ %1850, %2130 ]
  %2148 = phi float [ %1616, %1612 ], [ %1851, %2130 ]
  %2149 = phi float [ %1617, %1612 ], [ %1852, %2130 ]
  %2150 = call float @dx.op.dot3.f32(i32 55, float %2140, float %2141, float %2142, float %2140, float %2141, float %2142)  ; Dot3(ax,ay,az,bx,by,bz)
  %2151 = call float @dx.op.unary.f32(i32 25, float %2150)  ; Rsqrt(value)
  %2152 = fmul fast float %2151, %2140
  %2153 = fmul fast float %2151, %2141
  %2154 = fmul fast float %2151, %2142
  %2155 = fadd fast float %2145, %776
  %2156 = call float @dx.op.unary.f32(i32 7, float %2155)  ; Saturate(value)
  %2157 = call float @dx.op.dot3.f32(i32 55, float %2152, float %2153, float %2154, float %2152, float %2153, float %2154)  ; Dot3(ax,ay,az,bx,by,bz)
  %2158 = call float @dx.op.unary.f32(i32 25, float %2157)  ; Rsqrt(value)
  %2159 = fmul fast float %2158, %2152
  %2160 = fmul fast float %2158, %2153
  %2161 = fmul fast float %2158, %2154
  %2162 = fadd fast float %2146, 0xBFB99999A0000000
  %2163 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2164 = fmul fast float %2163, 0x3FF1C71C80000000
  %2165 = call float @dx.op.binary.f32(i32 36, float %2146, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2166 = fsub fast float 1.000000e+00, %2164
  %2167 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  %2168 = fmul fast float %2167, %2147
  %2169 = fmul fast float %2167, %2148
  %2170 = fmul fast float %2167, %2149
  %2171 = call float @dx.op.unary.f32(i32 7, float %2168)  ; Saturate(value)
  %2172 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2173 = call float @dx.op.unary.f32(i32 7, float %2170)  ; Saturate(value)
  %2174 = fmul fast float %2164, %2147
  %2175 = fmul fast float %2164, %2148
  %2176 = fmul fast float %2164, %2149
  %2177 = fadd fast float %2174, %2165
  %2178 = fadd fast float %2175, %2165
  %2179 = fadd fast float %2176, %2165
  %2180 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  %2181 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  %2182 = call float @dx.op.unary.f32(i32 7, float %2179)  ; Saturate(value)
  %2183 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2185 = extractvalue %dx.types.CBufRet.i32 %2184, 3
  %2186 = and i32 %2185, 8
  %2187 = icmp ne i32 %2186, 0
  %2188 = call float @dx.op.binary.f32(i32 35, float %2171, float %2147)  ; FMax(a,b)
  %2189 = call float @dx.op.binary.f32(i32 35, float %2172, float %2147)  ; FMax(a,b)
  %2190 = call float @dx.op.binary.f32(i32 35, float %2173, float %2147)  ; FMax(a,b)
  %2191 = call float @dx.op.dot3.f32(i32 55, float %2171, float %2172, float %2173, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2192 = select i1 %192, float %2147, float %2171
  %2193 = select i1 %192, float %2191, float %2172
  %2194 = select i1 %192, float 1.000000e+00, float %2173
  %2195 = select i1 %2187, float %2188, float %2192
  %2196 = select i1 %2187, float %2189, float %2193
  %2197 = select i1 %2187, float %2190, float %2194
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 0
  %2200 = extractvalue %dx.types.CBufRet.f32 %2198, 1
  %2201 = extractvalue %dx.types.CBufRet.f32 %2198, 2
  %2202 = fadd fast float %2199, %121
  %2203 = fadd fast float %2200, %122
  %2204 = fadd fast float %2201, %123
  %2205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2206 = extractvalue %dx.types.CBufRet.f32 %2205, 0
  %2207 = extractvalue %dx.types.CBufRet.f32 %2205, 1
  %2208 = fsub fast float %2202, %2206
  %2209 = fsub fast float %2203, %2207
  %2210 = fmul fast float %2208, %2208
  %2211 = fmul fast float %2209, %2209
  %2212 = fadd fast float %2210, %2211
  %2213 = call float @dx.op.unary.f32(i32 24, float %2212)  ; Sqrt(value)
  %2214 = extractvalue %dx.types.CBufRet.f32 %2205, 2
  %2215 = fcmp fast olt float %2213, %2214
  br i1 %2215, label %2216, label %2283

; <label>:2216                                    ; preds = %2131
  %2217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2218 = extractvalue %dx.types.CBufRet.f32 %2217, 0
  %2219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2220 = extractvalue %dx.types.CBufRet.f32 %2219, 0
  %2221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2222 = extractvalue %dx.types.CBufRet.f32 %2221, 0
  %2223 = extractvalue %dx.types.CBufRet.f32 %2217, 1
  %2224 = extractvalue %dx.types.CBufRet.f32 %2219, 1
  %2225 = extractvalue %dx.types.CBufRet.f32 %2221, 1
  %2226 = extractvalue %dx.types.CBufRet.f32 %2217, 3
  %2227 = extractvalue %dx.types.CBufRet.f32 %2219, 3
  %2228 = extractvalue %dx.types.CBufRet.f32 %2221, 3
  %2229 = fadd fast float %2226, %2202
  %2230 = fadd fast float %2227, %2203
  %2231 = fadd fast float %2228, %2204
  %2232 = fmul fast float %2229, %2218
  %2233 = call float @dx.op.tertiary.f32(i32 46, float %2230, float %2220, float %2232)  ; FMad(a,b,c)
  %2234 = call float @dx.op.tertiary.f32(i32 46, float %2231, float %2222, float %2233)  ; FMad(a,b,c)
  %2235 = fmul fast float %2229, %2223
  %2236 = call float @dx.op.tertiary.f32(i32 46, float %2230, float %2224, float %2235)  ; FMad(a,b,c)
  %2237 = call float @dx.op.tertiary.f32(i32 46, float %2231, float %2225, float %2236)  ; FMad(a,b,c)
  %2238 = fsub fast float %2234, %2226
  %2239 = fsub fast float %2237, %2227
  %2240 = fsub fast float %2238, %2206
  %2241 = fadd fast float %2240, %2214
  %2242 = fsub fast float %2239, %2207
  %2243 = fadd fast float %2242, %2214
  %2244 = extractvalue %dx.types.CBufRet.f32 %2205, 3
  %2245 = fmul fast float %2241, %2244
  %2246 = fmul fast float %2243, %2244
  %2247 = call float @dx.op.unary.f32(i32 7, float %2245)  ; Saturate(value)
  %2248 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  %2249 = fsub fast float 1.000000e+00, %2247
  %2250 = fsub fast float 1.000000e+00, %2248
  %2251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2249, float %2250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2252 = extractvalue %dx.types.ResRet.f32 %2251, 0
  %2253 = fcmp fast ugt float %2252, 0.000000e+00
  br i1 %2253, label %2254, label %2557

; <label>:2254                                    ; preds = %2216
  %2255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2256 = extractvalue %dx.types.CBufRet.f32 %2255, 2
  %2257 = fmul fast float %2256, %2252
  %2258 = extractvalue %dx.types.CBufRet.f32 %2255, 3
  %2259 = fadd fast float %2258, %2257
  %2260 = extractvalue %dx.types.CBufRet.f32 %2221, 2
  %2261 = fadd fast float %2259, %2228
  %2262 = fmul fast float %2234, %2222
  %2263 = call float @dx.op.tertiary.f32(i32 46, float %2237, float %2225, float %2262)  ; FMad(a,b,c)
  %2264 = call float @dx.op.tertiary.f32(i32 46, float %2261, float %2260, float %2263)  ; FMad(a,b,c)
  %2265 = fsub fast float %2264, %2228
  %2266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2267 = extractvalue %dx.types.CBufRet.f32 %2266, 2
  %2268 = fsub fast float %2265, %2267
  %2269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %2249, float %2250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2270 = extractvalue %dx.types.ResRet.f32 %2269, 0
  %2271 = extractvalue %dx.types.ResRet.f32 %2269, 1
  %2272 = extractvalue %dx.types.ResRet.f32 %2269, 2
  %2273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %2249, float %2250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2274 = extractvalue %dx.types.ResRet.f32 %2273, 0
  %2275 = extractvalue %dx.types.ResRet.f32 %2273, 1
  %2276 = extractvalue %dx.types.ResRet.f32 %2273, 2
  %2277 = fadd fast float %2274, %2270
  %2278 = fmul fast float %2277, 0x3F847AE140000000
  %2279 = fadd fast float %2275, %2271
  %2280 = fmul fast float %2279, 0x3F847AE140000000
  %2281 = fadd fast float %2276, %2272
  %2282 = fmul fast float %2281, 0x3F847AE140000000
  br label %2557

; <label>:2283                                    ; preds = %2131
  %2284 = and i32 %168, 1
  %2285 = icmp eq i32 %2284, 0
  br i1 %2285, label %2557, label %2286

; <label>:2286                                    ; preds = %2283
  %2287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2288 = extractvalue %dx.types.CBufRet.f32 %2287, 0
  %2289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2290 = extractvalue %dx.types.CBufRet.f32 %2289, 0
  %2291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2292 = extractvalue %dx.types.CBufRet.f32 %2291, 0
  %2293 = extractvalue %dx.types.CBufRet.f32 %2287, 1
  %2294 = extractvalue %dx.types.CBufRet.f32 %2289, 1
  %2295 = extractvalue %dx.types.CBufRet.f32 %2291, 1
  %2296 = extractvalue %dx.types.CBufRet.f32 %2287, 3
  %2297 = extractvalue %dx.types.CBufRet.f32 %2289, 3
  %2298 = extractvalue %dx.types.CBufRet.f32 %2291, 3
  %2299 = fadd fast float %2296, %2202
  %2300 = fadd fast float %2297, %2203
  %2301 = fadd fast float %2298, %2204
  %2302 = fmul fast float %2299, %2288
  %2303 = call float @dx.op.tertiary.f32(i32 46, float %2300, float %2290, float %2302)  ; FMad(a,b,c)
  %2304 = call float @dx.op.tertiary.f32(i32 46, float %2301, float %2292, float %2303)  ; FMad(a,b,c)
  %2305 = fmul fast float %2299, %2293
  %2306 = call float @dx.op.tertiary.f32(i32 46, float %2300, float %2294, float %2305)  ; FMad(a,b,c)
  %2307 = call float @dx.op.tertiary.f32(i32 46, float %2301, float %2295, float %2306)  ; FMad(a,b,c)
  %2308 = fsub fast float %2304, %2296
  %2309 = fsub fast float %2307, %2297
  %2310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2311 = extractvalue %dx.types.CBufRet.f32 %2310, 0
  %2312 = extractvalue %dx.types.CBufRet.f32 %2310, 1
  %2313 = extractvalue %dx.types.CBufRet.f32 %2310, 2
  %2314 = extractvalue %dx.types.CBufRet.f32 %2310, 3
  %2315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2316 = extractvalue %dx.types.CBufRet.f32 %2315, 3
  %2317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2318 = extractvalue %dx.types.CBufRet.i32 %2317, 0
  %2319 = extractvalue %dx.types.CBufRet.i32 %2317, 1
  %2320 = udiv i32 %2319, %2318
  %2321 = fsub fast float %2308, %2311
  %2322 = fsub fast float %2309, %2312
  %2323 = call float @dx.op.binary.f32(i32 35, float %2321, float 0.000000e+00)  ; FMax(a,b)
  %2324 = call float @dx.op.binary.f32(i32 35, float %2322, float 0.000000e+00)  ; FMax(a,b)
  %2325 = call float @dx.op.binary.f32(i32 36, float %2323, float %2313)  ; FMin(a,b)
  %2326 = call float @dx.op.binary.f32(i32 36, float %2324, float %2314)  ; FMin(a,b)
  %2327 = add i32 %2318, -1
  %2328 = add i32 %2320, -1
  %2329 = fmul fast float %2325, %2316
  %2330 = fmul fast float %2326, %2316
  %2331 = fptoui float %2329 to i32
  %2332 = fptoui float %2330 to i32
  %2333 = call i32 @dx.op.binary.i32(i32 40, i32 %2331, i32 %2327)  ; UMin(a,b)
  %2334 = call i32 @dx.op.binary.i32(i32 40, i32 %2332, i32 %2328)  ; UMin(a,b)
  %2335 = mul i32 %2334, %2318
  %2336 = add i32 %2335, %2333
  %2337 = shl i32 %2336, 2
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = icmp eq i32 %2339, -1
  br i1 %2340, label %2557, label %2341

; <label>:2341                                    ; preds = %2286
  %2342 = mul i32 %2339, 148
  %2343 = add i32 %2342, 4
  %2344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.f32 %2344, 0
  %2346 = add i32 %2342, 8
  %2347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.f32 %2347, 0
  %2349 = add i32 %2342, 36
  %2350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.f32 %2350, 0
  %2352 = add i32 %2342, 60
  %2353 = add i32 %2342, 92
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = add i32 %2342, 116
  %2357 = fsub fast float %2308, %2345
  %2358 = fsub fast float %2309, %2348
  %2359 = fmul fast float %2316, %2357
  %2360 = fmul fast float %2316, %2358
  %2361 = call float @dx.op.unary.f32(i32 7, float %2359)  ; Saturate(value)
  %2362 = call float @dx.op.unary.f32(i32 7, float %2360)  ; Saturate(value)
  %2363 = fsub fast float 1.000000e+00, %2362
  %2364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.f32 %2364, 2
  %2366 = call float @dx.op.unary.f32(i32 83, float %2361)  ; DerivCoarseX(value)
  %2367 = call float @dx.op.unary.f32(i32 83, float %2363)  ; DerivCoarseX(value)
  %2368 = call float @dx.op.unary.f32(i32 84, float %2361)  ; DerivCoarseY(value)
  %2369 = call float @dx.op.unary.f32(i32 84, float %2363)  ; DerivCoarseY(value)
  %2370 = fmul fast float %2366, %2365
  %2371 = fmul fast float %2367, %2365
  %2372 = fmul fast float %2368, %2365
  %2373 = fmul fast float %2369, %2365
  %2374 = call float @dx.op.dot2.f32(i32 54, float %2372, float %2373, float %2372, float %2373)  ; Dot2(ax,ay,bx,by)
  %2375 = call float @dx.op.dot2.f32(i32 54, float %2370, float %2371, float %2370, float %2371)  ; Dot2(ax,ay,bx,by)
  %2376 = call float @dx.op.binary.f32(i32 35, float %2375, float %2374)  ; FMax(a,b)
  %2377 = call float @dx.op.unary.f32(i32 23, float %2376)  ; Log(value)
  %2378 = fmul fast float %2377, 5.000000e-01
  %2379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2380 = extractvalue %dx.types.CBufRet.f32 %2379, 1
  %2381 = fadd fast float %2380, %2378
  %2382 = call float @dx.op.binary.f32(i32 35, float %2381, float 0.000000e+00)  ; FMax(a,b)
  %2383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2384 = extractvalue %dx.types.CBufRet.f32 %2383, 3
  %2385 = fadd fast float %2384, %2382
  %2386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.f32 %2386, 3
  %2388 = fadd fast float %2385, %2387
  %2389 = add i32 %2355, 0
  %2390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2389, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2391 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2390, i32 0)  ; GetDimensions(handle,mipLevel)
  %2392 = extractvalue %dx.types.Dimensions %2391, 0
  %2393 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2392)  ; FirstbitLo(value)
  %2394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.i32 %2394, 1
  %2396 = sub nsw i32 %2395, %2393
  %2397 = sitofp i32 %2396 to float
  %2398 = fsub fast float %2388, %2397
  %2399 = call float @dx.op.binary.f32(i32 35, float %2398, float 0.000000e+00)  ; FMax(a,b)
  %2400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2390, %dx.types.Handle %37, float %2361, float %2363, float %2351, float undef, i32 0, i32 0, i32 undef, float %2399)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2401 = extractvalue %dx.types.ResRet.f32 %2400, 0
  %2402 = fcmp ule float %2401, 0x3FE0101020000000
  %2403 = extractvalue %dx.types.CBufRet.i32 %2394, 0
  %2404 = and i32 %2403, 128
  %2405 = icmp ne i32 %2404, 0
  %2406 = and i1 %2402, %2405
  br i1 %2406, label %2557, label %2407

; <label>:2407                                    ; preds = %2341
  %2408 = add i32 %2342, 20
  %2409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.f32 %2409, 0
  %2411 = add i32 %2342, 24
  %2412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.f32 %2412, 0
  %2414 = add i32 %2342, 40
  %2415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2414, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.f32 %2415, 0
  %2417 = add i32 %2342, 96
  %2418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2419 = extractvalue %dx.types.ResRet.i32 %2418, 0
  %2420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2421 = extractvalue %dx.types.CBufRet.f32 %2420, 2
  %2422 = fmul fast float %2421, %2361
  %2423 = fmul fast float %2421, %2363
  %2424 = extractvalue %dx.types.CBufRet.f32 %2420, 3
  %2425 = fadd fast float %2422, %2424
  %2426 = fadd fast float %2423, %2424
  %2427 = add i32 %2419, 0
  %2428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2427, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2429 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2428, i32 0)  ; GetDimensions(handle,mipLevel)
  %2430 = extractvalue %dx.types.Dimensions %2429, 0
  %2431 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2430)  ; FirstbitLo(value)
  %2432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.i32 %2432, 1
  %2434 = sub nsw i32 %2433, %2431
  %2435 = sitofp i32 %2434 to float
  %2436 = fsub fast float %2385, %2435
  %2437 = call float @dx.op.binary.f32(i32 35, float %2436, float 0.000000e+00)  ; FMax(a,b)
  %2438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2428, %dx.types.Handle %37, float %2425, float %2426, float %2416, float undef, i32 0, i32 0, i32 undef, float %2437)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2439 = extractvalue %dx.types.ResRet.f32 %2438, 0
  %2440 = fmul fast float %2439, %2410
  %2441 = fadd fast float %2440, %2413
  %2442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2443 = extractvalue %dx.types.CBufRet.f32 %2442, 0
  %2444 = extractvalue %dx.types.CBufRet.f32 %2442, 1
  %2445 = extractvalue %dx.types.CBufRet.f32 %2442, 2
  %2446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2447 = extractvalue %dx.types.CBufRet.f32 %2446, 3
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 3
  %2450 = extractvalue %dx.types.CBufRet.f32 %2442, 3
  %2451 = fadd fast float %2447, %2308
  %2452 = fadd fast float %2449, %2309
  %2453 = fadd fast float %2441, %2450
  %2454 = fmul fast float %2451, %2443
  %2455 = call float @dx.op.tertiary.f32(i32 46, float %2452, float %2444, float %2454)  ; FMad(a,b,c)
  %2456 = call float @dx.op.tertiary.f32(i32 46, float %2453, float %2445, float %2455)  ; FMad(a,b,c)
  %2457 = fsub fast float %2456, %2450
  %2458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2459 = extractvalue %dx.types.CBufRet.f32 %2458, 2
  %2460 = fsub fast float %2457, %2459
  %2461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2462 = extractvalue %dx.types.CBufRet.i32 %2461, 0
  %2463 = call i32 @dx.op.binary.i32(i32 40, i32 %2339, i32 %2462)  ; UMin(a,b)
  %2464 = mul i32 %2463, 36
  %2465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2464, i32 undef)  ; BufferLoad(srv,index,wot)
  %2466 = extractvalue %dx.types.ResRet.i32 %2465, 0
  %2467 = add i32 %2464, 4
  %2468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2469 = extractvalue %dx.types.CBufRet.f32 %2468, 0
  %2470 = fmul fast float %2469, %2361
  %2471 = fmul fast float %2469, %2363
  %2472 = extractvalue %dx.types.CBufRet.f32 %2468, 1
  %2473 = fadd fast float %2470, %2472
  %2474 = fadd fast float %2471, %2472
  %2475 = icmp eq i32 %2466, 0
  br i1 %2475, label %2544, label %2476

; <label>:2476                                    ; preds = %2407
  br label %2477

; <label>:2477                                    ; preds = %2534, %2476
  %2478 = phi float [ %2535, %2534 ], [ 0.000000e+00, %2476 ]
  %2479 = phi float [ %2536, %2534 ], [ 0.000000e+00, %2476 ]
  %2480 = phi float [ %2537, %2534 ], [ 0.000000e+00, %2476 ]
  %2481 = phi float [ %2538, %2534 ], [ 0.000000e+00, %2476 ]
  %2482 = phi float [ %2539, %2534 ], [ 0.000000e+00, %2476 ]
  %2483 = phi float [ %2540, %2534 ], [ 0.000000e+00, %2476 ]
  %2484 = phi i32 [ %2541, %2534 ], [ 0, %2476 ]
  %2485 = shl i32 %2484, 2
  %2486 = add i32 %2352, %2485
  %2487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2486, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.f32 %2487, 0
  %2489 = add i32 %2356, %2485
  %2490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2489, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.i32 %2490, 0
  %2492 = add i32 %2491, 0
  %2493 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2492, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2494 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2493, i32 0)  ; GetDimensions(handle,mipLevel)
  %2495 = extractvalue %dx.types.Dimensions %2494, 0
  %2496 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2495)  ; FirstbitLo(value)
  %2497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2498 = extractvalue %dx.types.CBufRet.i32 %2497, 1
  %2499 = sub nsw i32 %2498, %2496
  %2500 = sitofp i32 %2499 to float
  %2501 = fsub fast float %2385, %2500
  %2502 = call float @dx.op.binary.f32(i32 35, float %2501, float 0.000000e+00)  ; FMax(a,b)
  %2503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2493, %dx.types.Handle %37, float %2473, float %2474, float %2488, float undef, i32 0, i32 0, i32 undef, float %2502)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2504 = extractvalue %dx.types.ResRet.f32 %2503, 0
  %2505 = fcmp fast ogt float %2504, 0.000000e+00
  br i1 %2505, label %2506, label %2534

; <label>:2506                                    ; preds = %2477
  %2507 = add i32 %2467, %2485
  %2508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2507, i32 undef)  ; BufferLoad(srv,index,wot)
  %2509 = extractvalue %dx.types.ResRet.i32 %2508, 0
  %2510 = and i32 %2509, 32767
  %2511 = mul nuw nsw i32 %2510, 928
  %2512 = add nuw nsw i32 %2511, 48
  %2513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.f32 %2513, 0
  %2515 = extractvalue %dx.types.ResRet.f32 %2513, 1
  %2516 = extractvalue %dx.types.ResRet.f32 %2513, 2
  %2517 = add nuw nsw i32 %2511, 60
  %2518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2517, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.f32 %2518, 0
  %2520 = extractvalue %dx.types.ResRet.f32 %2518, 1
  %2521 = extractvalue %dx.types.ResRet.f32 %2518, 2
  %2522 = fmul fast float %2514, %2504
  %2523 = fmul fast float %2515, %2504
  %2524 = fmul fast float %2516, %2504
  %2525 = fadd fast float %2522, %2478
  %2526 = fadd fast float %2523, %2479
  %2527 = fadd fast float %2524, %2480
  %2528 = fmul fast float %2519, %2504
  %2529 = fmul fast float %2520, %2504
  %2530 = fmul fast float %2521, %2504
  %2531 = fadd fast float %2528, %2481
  %2532 = fadd fast float %2529, %2482
  %2533 = fadd fast float %2530, %2483
  br label %2534

; <label>:2534                                    ; preds = %2506, %2477
  %2535 = phi float [ %2525, %2506 ], [ %2478, %2477 ]
  %2536 = phi float [ %2526, %2506 ], [ %2479, %2477 ]
  %2537 = phi float [ %2527, %2506 ], [ %2480, %2477 ]
  %2538 = phi float [ %2531, %2506 ], [ %2481, %2477 ]
  %2539 = phi float [ %2532, %2506 ], [ %2482, %2477 ]
  %2540 = phi float [ %2533, %2506 ], [ %2483, %2477 ]
  %2541 = add nuw i32 %2484, 1
  %2542 = icmp eq i32 %2541, %2466
  br i1 %2542, label %2543, label %2477

; <label>:2543                                    ; preds = %2534
  br label %2544

; <label>:2544                                    ; preds = %2543, %2407
  %2545 = phi float [ 0.000000e+00, %2407 ], [ %2535, %2543 ]
  %2546 = phi float [ 0.000000e+00, %2407 ], [ %2536, %2543 ]
  %2547 = phi float [ 0.000000e+00, %2407 ], [ %2537, %2543 ]
  %2548 = phi float [ 0.000000e+00, %2407 ], [ %2538, %2543 ]
  %2549 = phi float [ 0.000000e+00, %2407 ], [ %2539, %2543 ]
  %2550 = phi float [ 0.000000e+00, %2407 ], [ %2540, %2543 ]
  %2551 = fadd fast float %2548, %2545
  %2552 = fmul fast float %2551, 0x3F847AE140000000
  %2553 = fadd fast float %2549, %2546
  %2554 = fmul fast float %2553, 0x3F847AE140000000
  %2555 = fadd fast float %2550, %2547
  %2556 = fmul fast float %2555, 0x3F847AE140000000
  br label %2557

; <label>:2557                                    ; preds = %2544, %2341, %2286, %2283, %2254, %2216
  %2558 = phi float [ %2268, %2254 ], [ -1.310720e+05, %2216 ], [ %2460, %2544 ], [ -1.310720e+05, %2286 ], [ -1.310720e+05, %2341 ], [ -1.310720e+05, %2283 ]
  %2559 = phi float [ %2278, %2254 ], [ 0.000000e+00, %2216 ], [ %2552, %2544 ], [ 0.000000e+00, %2286 ], [ 0.000000e+00, %2341 ], [ 0.000000e+00, %2283 ]
  %2560 = phi float [ %2280, %2254 ], [ 0.000000e+00, %2216 ], [ %2554, %2544 ], [ 0.000000e+00, %2286 ], [ 0.000000e+00, %2341 ], [ 0.000000e+00, %2283 ]
  %2561 = phi float [ %2282, %2254 ], [ 0.000000e+00, %2216 ], [ %2556, %2544 ], [ 0.000000e+00, %2286 ], [ 0.000000e+00, %2341 ], [ 0.000000e+00, %2283 ]
  %2562 = phi i1 [ true, %2254 ], [ false, %2216 ], [ true, %2544 ], [ false, %2286 ], [ false, %2341 ], [ false, %2283 ]
  %2563 = and i32 %168, 3
  %2564 = icmp eq i32 %2563, 1
  %2565 = select i1 %2564, float 1.000000e+00, float 0.000000e+00
  %2566 = fsub fast float %2558, %123
  %2567 = call float @dx.op.unary.f32(i32 7, float %2566)  ; Saturate(value)
  %2568 = select i1 %2562, float %2567, float 1.000000e+00
  %2569 = fmul fast float %2568, %2565
  %2570 = icmp eq i32 %2563, 3
  %2571 = select i1 %2570, float 1.000000e+00, float %2569
  %2572 = call float @dx.op.binary.f32(i32 35, float %2132, float %2571)  ; FMax(a,b)
  %2573 = call float @dx.op.unary.f32(i32 7, float %2572)  ; Saturate(value)
  %2574 = fcmp fast une float %2573, 0.000000e+00
  %2575 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %2576 = call float @dx.op.unary.f32(i32 25, float %2575)  ; Rsqrt(value)
  br i1 %2574, label %2584, label %2577

; <label>:2577                                    ; preds = %2557
  %2578 = fmul fast float %2576, %121
  %2579 = fmul fast float %2576, %122
  %2580 = fmul fast float %2576, %123
  %2581 = fsub fast float -0.000000e+00, %2578
  %2582 = fsub fast float -0.000000e+00, %2579
  %2583 = fsub fast float -0.000000e+00, %2580
  br label %2752

; <label>:2584                                    ; preds = %2557
  %2585 = fmul fast float %121, %2576
  %2586 = fsub fast float -0.000000e+00, %2585
  %2587 = fmul fast float %122, %2576
  %2588 = fsub fast float -0.000000e+00, %2587
  %2589 = fmul fast float %123, %2576
  %2590 = fsub fast float -0.000000e+00, %2589
  %2591 = call float @dx.op.dot3.f32(i32 55, float %2586, float %2588, float %2590, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %2592 = fmul fast float %2573, 2.500000e+00
  %2593 = call float @dx.op.unary.f32(i32 7, float %2592)  ; Saturate(value)
  %2594 = fmul fast float %2573, 0x4013FFFFE0000000
  %2595 = fadd fast float %2594, 0xBFFFFFFFE0000000
  %2596 = call float @dx.op.unary.f32(i32 7, float %2595)  ; Saturate(value)
  %2597 = fmul fast float %2573, 0x4004000020000000
  %2598 = fadd fast float %2597, 0xBFF8000040000000
  %2599 = call float @dx.op.unary.f32(i32 7, float %2598)  ; Saturate(value)
  %2600 = call float @dx.op.unary.f32(i32 7, float %2593)  ; Saturate(value)
  %2601 = fmul fast float %2162, 1.000000e+01
  %2602 = call float @dx.op.unary.f32(i32 7, float %2601)  ; Saturate(value)
  %2603 = fmul fast float %2602, 2.000000e+00
  %2604 = fsub fast float 3.000000e+00, %2603
  %2605 = fmul fast float %2602, %2602
  %2606 = fmul fast float %2605, %2604
  %2607 = fsub fast float 1.000000e+00, %2606
  %2608 = fsub fast float 0x3FE3333340000000, %2183
  %2609 = fmul fast float %2608, 0x400AAAAAA0000000
  %2610 = call float @dx.op.unary.f32(i32 7, float %2609)  ; Saturate(value)
  %2611 = fmul fast float %2607, %2610
  %2612 = fmul fast float %2195, 0x3FEA2B8620000000
  %2613 = fmul fast float %2196, 0x3FEA2B8620000000
  %2614 = fmul fast float %2197, 0x3FEA2B8620000000
  %2615 = fadd fast float %2612, 0x3FC81DFBA0000000
  %2616 = fmul fast float %2615, %2195
  %2617 = fadd fast float %2616, 0x3F910E6020000000
  %2618 = fadd fast float %2613, 0x3FC81DFBA0000000
  %2619 = fmul fast float %2618, %2196
  %2620 = fadd fast float %2619, 0x3F910E6020000000
  %2621 = fadd fast float %2614, 0x3FC81DFBA0000000
  %2622 = fmul fast float %2621, %2197
  %2623 = fadd fast float %2622, 0x3F910E6020000000
  %2624 = call float @dx.op.unary.f32(i32 7, float %2617)  ; Saturate(value)
  %2625 = call float @dx.op.unary.f32(i32 7, float %2620)  ; Saturate(value)
  %2626 = call float @dx.op.unary.f32(i32 7, float %2623)  ; Saturate(value)
  %2627 = fsub fast float %2624, %2195
  %2628 = fsub fast float %2625, %2196
  %2629 = fsub fast float %2626, %2197
  %2630 = fmul fast float %2627, %2600
  %2631 = fmul fast float %2630, %2611
  %2632 = fmul fast float %2628, %2600
  %2633 = fmul fast float %2632, %2611
  %2634 = fmul fast float %2629, %2600
  %2635 = fmul fast float %2634, %2611
  %2636 = fadd fast float %2631, %2195
  %2637 = fadd fast float %2633, %2196
  %2638 = fadd fast float %2635, %2197
  %2639 = fmul fast float %2143, %2143
  %2640 = fmul fast float %2639, %2639
  %2641 = fadd fast float %2596, 1.000000e+00
  %2642 = fsub fast float %2641, %2611
  %2643 = call float @dx.op.unary.f32(i32 7, float %2642)  ; Saturate(value)
  %2644 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2645 = call float @dx.op.unary.f32(i32 7, float %2644)  ; Saturate(value)
  %2646 = fsub fast float 1.000000e+00, %2640
  %2647 = call float @dx.op.binary.f32(i32 36, float %2643, float %2646)  ; FMin(a,b)
  %2648 = call float @dx.op.unary.f32(i32 7, float %2599)  ; Saturate(value)
  %2649 = call float @dx.op.binary.f32(i32 35, float %2647, float %2648)  ; FMax(a,b)
  %2650 = fadd fast float %2645, 0xBFE4CCCCC0000000
  %2651 = fmul fast float %2650, 0x4006DB6DA0000000
  %2652 = call float @dx.op.unary.f32(i32 7, float %2651)  ; Saturate(value)
  %2653 = fmul fast float %2652, 2.000000e+00
  %2654 = fsub fast float 3.000000e+00, %2653
  %2655 = bitcast float %2180 to i32
  %2656 = ashr i32 %2655, 1
  %2657 = add nsw i32 %2656, 532487669
  %2658 = bitcast i32 %2657 to float
  %2659 = fsub fast float 1.000000e+00, %2658
  %2660 = bitcast float %2659 to i32
  %2661 = sub nsw i32 2129859010, %2660
  %2662 = bitcast i32 %2661 to float
  %2663 = fmul fast float %2662, 2.000000e+00
  %2664 = bitcast float %2181 to i32
  %2665 = ashr i32 %2664, 1
  %2666 = add nsw i32 %2665, 532487669
  %2667 = bitcast i32 %2666 to float
  %2668 = fsub fast float 1.000000e+00, %2667
  %2669 = bitcast float %2668 to i32
  %2670 = sub nsw i32 2129859010, %2669
  %2671 = bitcast i32 %2670 to float
  %2672 = fmul fast float %2671, 2.000000e+00
  %2673 = bitcast float %2182 to i32
  %2674 = ashr i32 %2673, 1
  %2675 = add nsw i32 %2674, 532487669
  %2676 = bitcast i32 %2675 to float
  %2677 = fsub fast float 1.000000e+00, %2676
  %2678 = bitcast float %2677 to i32
  %2679 = sub nsw i32 2129859010, %2678
  %2680 = bitcast i32 %2679 to float
  %2681 = fmul fast float %2680, 2.000000e+00
  %2682 = fsub fast float 0x4002A9FBE0000000, %2663
  %2683 = fadd fast float %2663, 0x3FD54FDF00000000
  %2684 = bitcast float %2683 to i32
  %2685 = sub nsw i32 2129859010, %2684
  %2686 = bitcast i32 %2685 to float
  %2687 = fmul fast float %2686, %2682
  %2688 = fmul fast float %2687, %2687
  %2689 = fsub fast float 0x4002A9FBE0000000, %2672
  %2690 = fadd fast float %2672, 0x3FD54FDF00000000
  %2691 = bitcast float %2690 to i32
  %2692 = sub nsw i32 2129859010, %2691
  %2693 = bitcast i32 %2692 to float
  %2694 = fmul fast float %2693, %2689
  %2695 = fmul fast float %2694, %2694
  %2696 = fsub fast float 0x4002A9FBE0000000, %2681
  %2697 = fadd fast float %2681, 0x3FD54FDF00000000
  %2698 = bitcast float %2697 to i32
  %2699 = sub nsw i32 2129859010, %2698
  %2700 = bitcast i32 %2699 to float
  %2701 = fmul fast float %2700, %2696
  %2702 = fmul fast float %2701, %2701
  %2703 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2688)  ; FMax(a,b)
  %2704 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2695)  ; FMax(a,b)
  %2705 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2702)  ; FMax(a,b)
  %2706 = fsub fast float 1.000000e+00, %2591
  %2707 = fadd fast float %2706, %2607
  %2708 = call float @dx.op.unary.f32(i32 7, float %2707)  ; Saturate(value)
  %2709 = fsub fast float 1.000000e+00, %2571
  %2710 = fmul fast float %2649, %2709
  %2711 = fmul fast float %2652, %2652
  %2712 = fmul fast float %2711, %2710
  %2713 = fmul fast float %2712, %2654
  %2714 = fmul fast float %2709, 0xBFE99999A0000000
  %2715 = fmul fast float %2714, %2600
  %2716 = fmul fast float %2715, %2611
  %2717 = fadd fast float %2716, 1.000000e+00
  %2718 = fadd fast float %2183, -1.000000e+00
  %2719 = fmul fast float %2717, %2718
  %2720 = fadd fast float %2719, 1.000000e+00
  %2721 = fsub fast float %2703, %2180
  %2722 = fsub fast float %2704, %2181
  %2723 = fsub fast float %2705, %2182
  %2724 = fmul fast float %2713, %2721
  %2725 = fmul fast float %2713, %2722
  %2726 = fmul fast float %2713, %2723
  %2727 = fadd fast float %2724, %2180
  %2728 = fadd fast float %2725, %2181
  %2729 = fadd fast float %2726, %2182
  %2730 = fsub fast float %69, %2159
  %2731 = fsub fast float %70, %2160
  %2732 = fsub fast float %71, %2161
  %2733 = fmul fast float %2713, %2730
  %2734 = fmul fast float %2713, %2731
  %2735 = fmul fast float %2713, %2732
  %2736 = fadd fast float %2733, %2159
  %2737 = fadd fast float %2734, %2160
  %2738 = fadd fast float %2735, %2161
  %2739 = fmul fast float %2713, %2708
  %2740 = call float @dx.op.unary.f32(i32 7, float %2720)  ; Saturate(value)
  %2741 = fsub fast float 1.000000e+00, %2740
  %2742 = fmul fast float %2739, %2741
  %2743 = fadd fast float %2742, %2740
  %2744 = fsub fast float 1.000000e+00, %2143
  %2745 = fmul fast float %2713, %2744
  %2746 = fadd fast float %2745, %2143
  %2747 = call float @dx.op.dot3.f32(i32 55, float %2736, float %2737, float %2738, float %2736, float %2737, float %2738)  ; Dot3(ax,ay,az,bx,by,bz)
  %2748 = call float @dx.op.unary.f32(i32 25, float %2747)  ; Rsqrt(value)
  %2749 = fmul fast float %2736, %2748
  %2750 = fmul fast float %2737, %2748
  %2751 = fmul fast float %2738, %2748
  br label %2752

; <label>:2752                                    ; preds = %2584, %2577
  %2753 = phi float [ %2583, %2577 ], [ %2590, %2584 ]
  %2754 = phi float [ %2582, %2577 ], [ %2588, %2584 ]
  %2755 = phi float [ %2581, %2577 ], [ %2586, %2584 ]
  %2756 = phi float [ %2580, %2577 ], [ %2589, %2584 ]
  %2757 = phi float [ %2579, %2577 ], [ %2587, %2584 ]
  %2758 = phi float [ %2578, %2577 ], [ %2585, %2584 ]
  %2759 = phi float [ %2180, %2577 ], [ %2727, %2584 ]
  %2760 = phi float [ %2181, %2577 ], [ %2728, %2584 ]
  %2761 = phi float [ %2182, %2577 ], [ %2729, %2584 ]
  %2762 = phi float [ %2195, %2577 ], [ %2636, %2584 ]
  %2763 = phi float [ %2196, %2577 ], [ %2637, %2584 ]
  %2764 = phi float [ %2197, %2577 ], [ %2638, %2584 ]
  %2765 = phi float [ %2159, %2577 ], [ %2749, %2584 ]
  %2766 = phi float [ %2160, %2577 ], [ %2750, %2584 ]
  %2767 = phi float [ %2161, %2577 ], [ %2751, %2584 ]
  %2768 = phi float [ %2183, %2577 ], [ %2743, %2584 ]
  %2769 = phi float [ %2143, %2577 ], [ %2746, %2584 ]
  %2770 = select i1 %192, float 0.000000e+00, float %2761
  %2771 = call float @dx.op.dot3.f32(i32 55, float %2765, float %2766, float %2767, float %2755, float %2754, float %2753)  ; Dot3(ax,ay,az,bx,by,bz)
  %2772 = call float @dx.op.unary.f32(i32 7, float %2771)  ; Saturate(value)
  %2773 = call float @dx.op.dot3.f32(i32 55, float %2758, float %2757, float %2756, float %2765, float %2766, float %2767)  ; Dot3(ax,ay,az,bx,by,bz)
  %2774 = fmul fast float %2773, 2.000000e+00
  %2775 = fmul fast float %2774, %2765
  %2776 = fmul fast float %2774, %2766
  %2777 = fmul fast float %2774, %2767
  %2778 = fsub fast float %2758, %2775
  %2779 = fsub fast float %2757, %2776
  %2780 = fsub fast float %2756, %2777
  %2781 = call float @dx.op.binary.f32(i32 36, float %2769, float 1.000000e+00)  ; FMin(a,b)
  %2782 = fsub fast float 1.000000e+00, %2769
  %2783 = bitcast float %2782 to i32
  %2784 = sub nsw i32 2129859010, %2783
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 0
  %2787 = extractvalue %dx.types.CBufRet.f32 %2785, 1
  %2788 = fadd fast float %2786, %121
  %2789 = fadd fast float %2787, %122
  %2790 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2791 = extractvalue %dx.types.CBufRet.i32 %2790, 0
  %2792 = icmp eq i32 %2791, 1
  br i1 %2792, label %2793, label %2828

; <label>:2793                                    ; preds = %2752
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.CBufRet.f32 %2794, 1
  %2797 = fsub fast float %2788, %2795
  %2798 = fsub fast float %2789, %2796
  %2799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2800 = extractvalue %dx.types.CBufRet.f32 %2799, 0
  %2801 = extractvalue %dx.types.CBufRet.f32 %2799, 1
  %2802 = fmul fast float %2797, %2800
  %2803 = fmul fast float %2798, %2801
  %2804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2802, float %2803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2805 = extractvalue %dx.types.ResRet.f32 %2804, 0
  %2806 = fcmp fast ogt float %2805, 0.000000e+00
  %2807 = extractvalue %dx.types.CBufRet.i32 %2790, 3
  %2808 = icmp ne i32 %2807, 0
  %2809 = and i1 %2806, %2808
  br i1 %2809, label %2810, label %2828, !dx.controlflow.hints !79

; <label>:2810                                    ; preds = %2793
  %2811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2812 = extractvalue %dx.types.CBufRet.f32 %2811, 0
  %2813 = extractvalue %dx.types.CBufRet.f32 %2811, 1
  %2814 = fsub fast float %2788, %2812
  %2815 = fsub fast float %2789, %2813
  %2816 = fmul fast float %2814, %2814
  %2817 = fmul fast float %2815, %2815
  %2818 = fadd fast float %2816, %2817
  %2819 = uitofp i32 %2807 to float
  %2820 = fmul fast float %2819, %2819
  %2821 = fcmp fast ogt float %2818, %2820
  br i1 %2821, label %2828, label %2822

; <label>:2822                                    ; preds = %2810
  %2823 = call float @dx.op.unary.f32(i32 24, float %2818)  ; Sqrt(value)
  %2824 = fsub fast float %2819, %2823
  %2825 = fmul fast float %2824, 0x3F75555560000000
  %2826 = call float @dx.op.unary.f32(i32 7, float %2825)  ; Saturate(value)
  %2827 = call float @dx.op.binary.f32(i32 36, float %2826, float %2805)  ; FMin(a,b)
  br label %2828

; <label>:2828                                    ; preds = %2822, %2810, %2793, %2752
  %2829 = phi float [ 1.000000e+00, %2752 ], [ %2827, %2822 ], [ %2805, %2793 ], [ 0.000000e+00, %2810 ]
  %2830 = fcmp fast ogt float %2829, 0.000000e+00
  br i1 %2830, label %2831, label %2929, !dx.controlflow.hints !80

; <label>:2831                                    ; preds = %2828
  %2832 = fadd fast float %152, 5.000000e-01
  %2833 = call float @dx.op.unary.f32(i32 27, float %2832)  ; Round_ni(value)
  %2834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %150, float %151, float %2833, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2835 = extractvalue %dx.types.ResRet.f32 %2834, 0
  %2836 = extractvalue %dx.types.ResRet.f32 %2834, 1
  %2837 = extractvalue %dx.types.ResRet.f32 %2834, 2
  %2838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2839 = extractvalue %dx.types.CBufRet.f32 %2838, 3
  %2840 = fmul fast float %2839, %2835
  %2841 = fmul fast float %2839, %2836
  %2842 = fmul fast float %2839, %2837
  %2843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %150, float %151, float %2833, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2844 = extractvalue %dx.types.ResRet.f32 %2843, 0
  %2845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %150, float %151, float %2833, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2846 = extractvalue %dx.types.ResRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.ResRet.f32 %2845, 1
  %2848 = fmul fast float %2846, 2.000000e+00
  %2849 = fmul fast float %2847, 2.000000e+00
  %2850 = fadd fast float %2848, -1.000000e+00
  %2851 = fadd fast float %2849, -1.000000e+00
  %2852 = fadd fast float %2850, %2851
  %2853 = fmul fast float %2852, 5.000000e-01
  %2854 = fsub fast float %2850, %2851
  %2855 = fmul fast float %2854, 5.000000e-01
  %2856 = call float @dx.op.unary.f32(i32 6, float %2853)  ; FAbs(value)
  %2857 = fsub fast float 1.000000e+00, %2856
  %2858 = call float @dx.op.unary.f32(i32 6, float %2855)  ; FAbs(value)
  %2859 = fsub fast float %2857, %2858
  %2860 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2859)  ; FMax(a,b)
  %2861 = call float @dx.op.dot3.f32(i32 55, float %2853, float %2855, float %2860, float %2853, float %2855, float %2860)  ; Dot3(ax,ay,az,bx,by,bz)
  %2862 = bitcast float %2861 to i32
  %2863 = ashr i32 %2862, 1
  %2864 = sub nsw i32 1597250115, %2863
  %2865 = bitcast i32 %2864 to float
  %2866 = fmul fast float %2865, %2853
  %2867 = fmul fast float %2865, %2855
  %2868 = fmul fast float %2865, %2860
  %2869 = fsub fast float 1.000000e+00, %2844
  %2870 = fdiv fast float %2869, %2868
  %2871 = fmul fast float %2868, %69
  %2872 = fmul fast float %2868, %70
  %2873 = fmul fast float %2868, %71
  %2874 = fmul fast float %2866, %72
  %2875 = fmul fast float %2866, %73
  %2876 = fmul fast float %2866, %74
  %2877 = fadd fast float %2871, %2874
  %2878 = fadd fast float %2872, %2875
  %2879 = fadd fast float %2873, %2876
  %2880 = fmul fast float %2867, %85
  %2881 = fmul fast float %2867, %86
  %2882 = fmul fast float %2867, %87
  %2883 = fadd fast float %2877, %2880
  %2884 = fadd fast float %2878, %2881
  %2885 = fadd fast float %2879, %2882
  %2886 = call float @dx.op.dot3.f32(i32 55, float %2883, float %2884, float %2885, float %2883, float %2884, float %2885)  ; Dot3(ax,ay,az,bx,by,bz)
  %2887 = call float @dx.op.unary.f32(i32 25, float %2886)  ; Rsqrt(value)
  %2888 = fmul fast float %2883, %2887
  %2889 = fmul fast float %2884, %2887
  %2890 = fmul fast float %2885, %2887
  %2891 = call float @dx.op.dot3.f32(i32 55, float %2765, float %2766, float %2767, float %2765, float %2766, float %2767)  ; Dot3(ax,ay,az,bx,by,bz)
  %2892 = call float @dx.op.unary.f32(i32 7, float %2891)  ; Saturate(value)
  %2893 = fmul fast float %2892, 5.000000e-01
  %2894 = fadd fast float %2893, 5.000000e-01
  %2895 = fmul fast float %2894, %2844
  %2896 = call float @dx.op.dot3.f32(i32 55, float %2765, float %2766, float %2767, float %2888, float %2889, float %2890)  ; Dot3(ax,ay,az,bx,by,bz)
  %2897 = call float @dx.op.unary.f32(i32 7, float %2896)  ; Saturate(value)
  %2898 = fmul fast float %2897, %2870
  %2899 = fadd fast float %2895, %2898
  %2900 = fsub fast float 5.000000e-01, %2893
  %2901 = fmul fast float %2900, %2762
  %2902 = fmul fast float %2900, %2763
  %2903 = fmul fast float %2900, %2764
  %2904 = fadd fast float %2899, %2901
  %2905 = fmul fast float %2904, %2840
  %2906 = fadd fast float %2899, %2902
  %2907 = fmul fast float %2906, %2841
  %2908 = fadd fast float %2899, %2903
  %2909 = fmul fast float %2908, %2842
  %2910 = call float @dx.op.dot3.f32(i32 55, float %2778, float %2779, float %2780, float %2765, float %2766, float %2767)  ; Dot3(ax,ay,az,bx,by,bz)
  %2911 = call float @dx.op.unary.f32(i32 7, float %2910)  ; Saturate(value)
  %2912 = fmul fast float %2911, 5.000000e-01
  %2913 = fadd fast float %2912, 5.000000e-01
  %2914 = fmul fast float %2913, %2844
  %2915 = call float @dx.op.dot3.f32(i32 55, float %2778, float %2779, float %2780, float %2888, float %2889, float %2890)  ; Dot3(ax,ay,az,bx,by,bz)
  %2916 = call float @dx.op.unary.f32(i32 7, float %2915)  ; Saturate(value)
  %2917 = fmul fast float %2916, %2870
  %2918 = fadd fast float %2914, %2917
  %2919 = fsub fast float 5.000000e-01, %2912
  %2920 = fmul fast float %2919, %2762
  %2921 = fmul fast float %2919, %2763
  %2922 = fmul fast float %2919, %2764
  %2923 = fadd fast float %2918, %2920
  %2924 = fmul fast float %2923, %2840
  %2925 = fadd fast float %2918, %2921
  %2926 = fmul fast float %2925, %2841
  %2927 = fadd fast float %2918, %2922
  %2928 = fmul fast float %2927, %2842
  br label %2929

; <label>:2929                                    ; preds = %2831, %2828
  %2930 = phi float [ %2924, %2831 ], [ 0.000000e+00, %2828 ]
  %2931 = phi float [ %2926, %2831 ], [ 0.000000e+00, %2828 ]
  %2932 = phi float [ %2928, %2831 ], [ 0.000000e+00, %2828 ]
  %2933 = phi float [ %2905, %2831 ], [ 0.000000e+00, %2828 ]
  %2934 = phi float [ %2907, %2831 ], [ 0.000000e+00, %2828 ]
  %2935 = phi float [ %2909, %2831 ], [ 0.000000e+00, %2828 ]
  %2936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.f32 %2936, 0
  %2938 = fcmp fast ogt float %2937, 0.000000e+00
  %2939 = and i1 %2830, %2938
  br i1 %2939, label %2940, label %3144, !dx.controlflow.hints !81

; <label>:2940                                    ; preds = %2929
  %2941 = extractvalue %dx.types.CBufRet.f32 %2785, 2
  %2942 = fadd fast float %2941, %123
  %2943 = fmul fast float %2765, 3.200000e+01
  %2944 = fmul fast float %2766, 3.200000e+01
  %2945 = fadd fast float %2788, %2943
  %2946 = fadd fast float %2789, %2944
  %2947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.CBufRet.f32 %2947, 1
  %2950 = fsub fast float %2945, %2948
  %2951 = fsub fast float %2946, %2949
  %2952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2953 = extractvalue %dx.types.CBufRet.f32 %2952, 0
  %2954 = extractvalue %dx.types.CBufRet.f32 %2952, 1
  %2955 = fmul fast float %2950, %2953
  %2956 = fmul fast float %2951, %2954
  %2957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2958 = extractvalue %dx.types.CBufRet.f32 %2957, 0
  %2959 = extractvalue %dx.types.CBufRet.f32 %2957, 1
  %2960 = fsub fast float %2788, %2958
  %2961 = fsub fast float %2789, %2959
  %2962 = fmul fast float %2960, %2960
  %2963 = fmul fast float %2961, %2961
  %2964 = fadd fast float %2962, %2963
  %2965 = call float @dx.op.unary.f32(i32 24, float %2964)  ; Sqrt(value)
  %2966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2967 = extractvalue %dx.types.CBufRet.f32 %2966, 0
  %2968 = extractvalue %dx.types.CBufRet.f32 %2966, 1
  %2969 = fsub fast float %2965, %2967
  %2970 = fdiv fast float %2969, %2968
  %2971 = call float @dx.op.unary.f32(i32 7, float %2970)  ; Saturate(value)
  %2972 = fmul fast float %2971, 2.000000e+00
  %2973 = fsub fast float 3.000000e+00, %2972
  %2974 = fmul fast float %2971, %2971
  %2975 = fmul fast float %2974, %2973
  %2976 = fcmp fast oge float %2955, 0.000000e+00
  %2977 = fcmp fast ole float %2955, 1.000000e+00
  %2978 = and i1 %2977, %2976
  %2979 = fcmp fast oge float %2956, 0.000000e+00
  %2980 = and i1 %2979, %2978
  %2981 = fcmp fast ole float %2956, 1.000000e+00
  %2982 = and i1 %2981, %2980
  %2983 = fcmp fast ogt float %2975, 0.000000e+00
  %2984 = and i1 %2983, %2982
  br i1 %2984, label %2985, label %3108, !dx.controlflow.hints !82

; <label>:2985                                    ; preds = %2940
  %2986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2987 = extractvalue %dx.types.CBufRet.f32 %2986, 2
  %2988 = extractvalue %dx.types.CBufRet.f32 %2986, 3
  %2989 = fmul fast float %2987, %2955
  %2990 = fmul fast float %2988, %2956
  %2991 = call float @dx.op.unary.f32(i32 27, float %2989)  ; Round_ni(value)
  %2992 = call float @dx.op.unary.f32(i32 27, float %2990)  ; Round_ni(value)
  %2993 = fptosi float %2991 to i32
  %2994 = fptosi float %2992 to i32
  %2995 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %2993, i32 %2994, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = lshr i32 %2996, 16
  %2998 = icmp eq i32 %2997, 65535
  br i1 %2998, label %3108, label %2999

; <label>:2999                                    ; preds = %2985
  %3000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3001 = extractvalue %dx.types.CBufRet.f32 %3000, 0
  %3002 = fmul fast float %3001, %2955
  %3003 = extractvalue %dx.types.CBufRet.f32 %3000, 1
  %3004 = fadd fast float %3002, %3003
  %3005 = extractvalue %dx.types.CBufRet.f32 %3000, 2
  %3006 = fmul fast float %3005, %2956
  %3007 = extractvalue %dx.types.CBufRet.f32 %3000, 3
  %3008 = fadd fast float %3006, %3007
  %3009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3004, float %3008, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3010 = extractvalue %dx.types.ResRet.f32 %3009, 0
  %3011 = extractvalue %dx.types.ResRet.f32 %3009, 1
  %3012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3013 = extractvalue %dx.types.CBufRet.f32 %3012, 1
  %3014 = extractvalue %dx.types.CBufRet.f32 %3012, 0
  %3015 = fsub fast float %3013, %3014
  %3016 = fmul fast float %3015, %3010
  %3017 = fadd fast float %3016, %3014
  %3018 = extractvalue %dx.types.CBufRet.f32 %3012, 3
  %3019 = extractvalue %dx.types.CBufRet.f32 %3012, 2
  %3020 = fsub fast float %3018, %3019
  %3021 = fmul fast float %3020, %3011
  %3022 = fadd fast float %3021, %3019
  %3023 = fsub fast float %2942, %3017
  %3024 = fsub fast float %3022, %3017
  %3025 = fdiv fast float %3023, %3024
  %3026 = call float @dx.op.unary.f32(i32 7, float %3025)  ; Saturate(value)
  %3027 = extractvalue %dx.types.CBufRet.f32 %2936, 1
  %3028 = extractvalue %dx.types.CBufRet.f32 %2986, 0
  %3029 = extractvalue %dx.types.CBufRet.f32 %2986, 1
  %3030 = fmul fast float %3028, %2955
  %3031 = fmul fast float %3029, %2956
  %3032 = fmul fast float %3030, 1.250000e-01
  %3033 = fmul fast float %3031, 1.250000e-01
  %3034 = call float @dx.op.unary.f32(i32 27, float %3032)  ; Round_ni(value)
  %3035 = call float @dx.op.unary.f32(i32 27, float %3033)  ; Round_ni(value)
  %3036 = fmul fast float %3034, 8.000000e+00
  %3037 = fmul fast float %3035, 8.000000e+00
  %3038 = fsub fast float %3030, %3036
  %3039 = fsub fast float %3031, %3037
  %3040 = fadd fast float %3038, 5.000000e-01
  %3041 = fadd fast float %3039, 5.000000e-01
  %3042 = and i32 %2997, 255
  %3043 = lshr i32 %2996, 24
  %3044 = mul nuw nsw i32 %3042, 9
  %3045 = uitofp i32 %3044 to float
  %3046 = mul nuw nsw i32 %3043, 9
  %3047 = uitofp i32 %3046 to float
  %3048 = fadd fast float %3040, %3045
  %3049 = fadd fast float %3041, %3047
  %3050 = fdiv fast float %3048, %2937
  %3051 = fdiv fast float %3049, %3027
  %3052 = fmul fast float %3026, 4.375000e-01
  %3053 = fadd fast float %3052, 3.125000e-02
  %3054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3050, float %3051, float %3053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3055 = extractvalue %dx.types.ResRet.f32 %3054, 0
  %3056 = extractvalue %dx.types.ResRet.f32 %3054, 1
  %3057 = extractvalue %dx.types.ResRet.f32 %3054, 2
  %3058 = fadd fast float %3052, 5.312500e-01
  %3059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3050, float %3051, float %3058, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3060 = extractvalue %dx.types.ResRet.f32 %3059, 0
  %3061 = extractvalue %dx.types.ResRet.f32 %3059, 1
  %3062 = extractvalue %dx.types.ResRet.f32 %3059, 2
  %3063 = fmul fast float %3060, 2.000000e+00
  %3064 = fmul fast float %3061, 2.000000e+00
  %3065 = fmul fast float %3062, 2.000000e+00
  %3066 = fadd fast float %3063, -1.000000e+00
  %3067 = fadd fast float %3064, -1.000000e+00
  %3068 = fadd fast float %3065, -1.000000e+00
  %3069 = fmul fast float %3066, %3066
  %3070 = fmul fast float %3067, %3067
  %3071 = fadd fast float %3069, %3070
  %3072 = fmul fast float %3068, %3068
  %3073 = fadd fast float %3071, %3072
  %3074 = call float @dx.op.unary.f32(i32 24, float %3073)  ; Sqrt(value)
  %3075 = fcmp fast ogt float %3074, 0.000000e+00
  br i1 %3075, label %3076, label %3080

; <label>:3076                                    ; preds = %2999
  %3077 = fdiv fast float %3066, %3074
  %3078 = fdiv fast float %3067, %3074
  %3079 = fdiv fast float %3068, %3074
  br label %3080

; <label>:3080                                    ; preds = %3076, %2999
  %3081 = phi float [ %3077, %3076 ], [ 0.000000e+00, %2999 ]
  %3082 = phi float [ %3078, %3076 ], [ 0.000000e+00, %2999 ]
  %3083 = phi float [ %3079, %3076 ], [ 0.000000e+00, %2999 ]
  %3084 = call float @dx.op.dot3.f32(i32 55, float %3081, float %3082, float %3083, float %2765, float %2766, float %2767)  ; Dot3(ax,ay,az,bx,by,bz)
  %3085 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3084)  ; FMax(a,b)
  %3086 = fmul fast float %3085, 0x400C5BF8A0000000
  %3087 = fmul fast float %3055, %2975
  %3088 = fmul fast float %3087, %3086
  %3089 = fmul fast float %3056, %2975
  %3090 = fmul fast float %3089, %3086
  %3091 = fmul fast float %3057, %2975
  %3092 = fmul fast float %3091, %3086
  %3093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3094 = extractvalue %dx.types.CBufRet.f32 %3093, 3
  %3095 = fmul fast float %3088, %3094
  %3096 = fmul fast float %3090, %3094
  %3097 = fmul fast float %3092, %3094
  %3098 = fcmp fast ogt float %2942, %3022
  br i1 %3098, label %3099, label %3108

; <label>:3099                                    ; preds = %3080
  %3100 = fmul fast float %3024, 0x3FC24924A0000000
  %3101 = fsub fast float %2942, %3022
  %3102 = fdiv fast float %3101, %3100
  %3103 = call float @dx.op.unary.f32(i32 7, float %3102)  ; Saturate(value)
  %3104 = fsub fast float 1.000000e+00, %3103
  %3105 = fmul fast float %3104, %3095
  %3106 = fmul fast float %3104, %3096
  %3107 = fmul fast float %3104, %3097
  br label %3108

; <label>:3108                                    ; preds = %3099, %3080, %2985, %2940
  %3109 = phi float [ %3107, %3099 ], [ %3097, %3080 ], [ 0.000000e+00, %2985 ], [ 0.000000e+00, %2940 ]
  %3110 = phi float [ %3106, %3099 ], [ %3096, %3080 ], [ 0.000000e+00, %2985 ], [ 0.000000e+00, %2940 ]
  %3111 = phi float [ %3105, %3099 ], [ %3095, %3080 ], [ 0.000000e+00, %2985 ], [ 0.000000e+00, %2940 ]
  %3112 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3111)  ; FMax(a,b)
  %3113 = fmul fast float %3112, 0x3FD20DD760000000
  %3114 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2778, float %2779, float %2780)  ; Dot3(ax,ay,az,bx,by,bz)
  %3115 = fmul fast float %3114, 0x3FDF454380000000
  %3116 = fmul fast float %3114, %3114
  %3117 = fmul fast float %3116, 0x3FEE471020000000
  %3118 = fadd fast float %3117, 0xBFD42F6020000000
  %3119 = call float @dx.op.dot3.f32(i32 55, float %3112, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3115, float %3118)  ; Dot3(ax,ay,az,bx,by,bz)
  %3120 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3110)  ; FMax(a,b)
  %3121 = fmul fast float %3120, 0x3FD20DD760000000
  %3122 = call float @dx.op.dot3.f32(i32 55, float %3120, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3115, float %3118)  ; Dot3(ax,ay,az,bx,by,bz)
  %3123 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3109)  ; FMax(a,b)
  %3124 = fmul fast float %3123, 0x3FD20DD760000000
  %3125 = call float @dx.op.dot3.f32(i32 55, float %3123, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3115, float %3118)  ; Dot3(ax,ay,az,bx,by,bz)
  %3126 = call float @dx.op.binary.f32(i32 35, float %3113, float 0.000000e+00)  ; FMax(a,b)
  %3127 = call float @dx.op.binary.f32(i32 35, float %3121, float 0.000000e+00)  ; FMax(a,b)
  %3128 = call float @dx.op.binary.f32(i32 35, float %3124, float 0.000000e+00)  ; FMax(a,b)
  %3129 = call float @dx.op.binary.f32(i32 35, float %3119, float 0.000000e+00)  ; FMax(a,b)
  %3130 = call float @dx.op.binary.f32(i32 35, float %3122, float 0.000000e+00)  ; FMax(a,b)
  %3131 = call float @dx.op.binary.f32(i32 35, float %3125, float 0.000000e+00)  ; FMax(a,b)
  %3132 = fmul fast float %3126, %2829
  %3133 = fmul fast float %3127, %2829
  %3134 = fmul fast float %3128, %2829
  %3135 = fadd fast float %3132, %2933
  %3136 = fadd fast float %3133, %2934
  %3137 = fadd fast float %3134, %2935
  %3138 = fmul fast float %3129, %2829
  %3139 = fmul fast float %3130, %2829
  %3140 = fmul fast float %3131, %2829
  %3141 = fadd fast float %3138, %2930
  %3142 = fadd fast float %3139, %2931
  %3143 = fadd fast float %3140, %2932
  br label %3144

; <label>:3144                                    ; preds = %3108, %2929
  %3145 = phi float [ %3141, %3108 ], [ %2930, %2929 ]
  %3146 = phi float [ %3142, %3108 ], [ %2931, %2929 ]
  %3147 = phi float [ %3143, %3108 ], [ %2932, %2929 ]
  %3148 = phi float [ %3135, %3108 ], [ %2933, %2929 ]
  %3149 = phi float [ %3136, %3108 ], [ %2934, %2929 ]
  %3150 = phi float [ %3137, %3108 ], [ %2935, %2929 ]
  %3151 = fcmp fast olt float %2829, 1.000000e+00
  br i1 %3151, label %3152, label %3970, !dx.controlflow.hints !83

; <label>:3152                                    ; preds = %3144
  %3153 = extractvalue %dx.types.CBufRet.f32 %2785, 2
  %3154 = fadd fast float %3153, %123
  %3155 = fmul fast float %2765, 3.200000e+01
  %3156 = fmul fast float %2766, 3.200000e+01
  %3157 = fadd fast float %2788, %3155
  %3158 = fadd fast float %2789, %3156
  %3159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3160 = extractvalue %dx.types.CBufRet.f32 %3159, 0
  %3161 = extractvalue %dx.types.CBufRet.f32 %3159, 1
  %3162 = fsub fast float %3157, %3160
  %3163 = fsub fast float %3158, %3161
  %3164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3165 = extractvalue %dx.types.CBufRet.f32 %3164, 0
  %3166 = extractvalue %dx.types.CBufRet.f32 %3164, 1
  %3167 = fmul fast float %3162, %3165
  %3168 = fmul fast float %3163, %3166
  %3169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3170 = extractvalue %dx.types.CBufRet.f32 %3169, 0
  %3171 = fmul fast float %3167, %3170
  %3172 = extractvalue %dx.types.CBufRet.f32 %3169, 1
  %3173 = fadd fast float %3171, %3172
  %3174 = extractvalue %dx.types.CBufRet.f32 %3169, 2
  %3175 = fmul fast float %3174, %3168
  %3176 = extractvalue %dx.types.CBufRet.f32 %3169, 3
  %3177 = fadd fast float %3175, %3176
  %3178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3173, float %3177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3179 = extractvalue %dx.types.ResRet.f32 %3178, 0
  %3180 = extractvalue %dx.types.ResRet.f32 %3178, 1
  %3181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3182 = extractvalue %dx.types.CBufRet.f32 %3181, 1
  %3183 = extractvalue %dx.types.CBufRet.f32 %3181, 0
  %3184 = fsub fast float %3182, %3183
  %3185 = fmul fast float %3184, %3179
  %3186 = fadd fast float %3185, %3183
  %3187 = extractvalue %dx.types.CBufRet.f32 %3181, 3
  %3188 = extractvalue %dx.types.CBufRet.f32 %3181, 2
  %3189 = fsub fast float %3187, %3188
  %3190 = fmul fast float %3189, %3180
  %3191 = fadd fast float %3190, %3188
  %3192 = fsub fast float %3154, %3186
  %3193 = fsub fast float %3191, %3186
  %3194 = fdiv fast float %3192, %3193
  %3195 = call float @dx.op.unary.f32(i32 7, float %3194)  ; Saturate(value)
  %3196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3197 = extractvalue %dx.types.CBufRet.f32 %3196, 0
  %3198 = fmul fast float %3197, %3195
  %3199 = extractvalue %dx.types.CBufRet.f32 %3196, 1
  %3200 = fadd fast float %3198, %3199
  %3201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3173, float %3177, float %3200, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3202 = extractvalue %dx.types.ResRet.f32 %3201, 0
  %3203 = extractvalue %dx.types.ResRet.f32 %3201, 1
  %3204 = extractvalue %dx.types.ResRet.f32 %3201, 2
  %3205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3206 = extractvalue %dx.types.CBufRet.f32 %3205, 0
  %3207 = extractvalue %dx.types.CBufRet.f32 %3205, 1
  %3208 = extractvalue %dx.types.CBufRet.f32 %3205, 2
  %3209 = fmul fast float %3206, %3202
  %3210 = fmul fast float %3207, %3203
  %3211 = fmul fast float %3208, %3204
  %3212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3213 = extractvalue %dx.types.CBufRet.f32 %3212, 0
  %3214 = extractvalue %dx.types.CBufRet.f32 %3212, 1
  %3215 = extractvalue %dx.types.CBufRet.f32 %3212, 2
  %3216 = fadd fast float %3209, %3213
  %3217 = fadd fast float %3210, %3214
  %3218 = fadd fast float %3211, %3215
  %3219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3220 = extractvalue %dx.types.CBufRet.f32 %3219, 0
  %3221 = fmul fast float %3220, %3167
  %3222 = extractvalue %dx.types.CBufRet.f32 %3219, 1
  %3223 = fadd fast float %3221, %3222
  %3224 = extractvalue %dx.types.CBufRet.f32 %3219, 2
  %3225 = fmul fast float %3224, %3168
  %3226 = extractvalue %dx.types.CBufRet.f32 %3219, 3
  %3227 = fadd fast float %3225, %3226
  %3228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3229 = extractvalue %dx.types.CBufRet.f32 %3228, 0
  %3230 = extractvalue %dx.types.CBufRet.f32 %3228, 1
  %3231 = extractvalue %dx.types.CBufRet.f32 %3228, 2
  %3232 = extractvalue %dx.types.CBufRet.f32 %3228, 3
  %3233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3234 = extractvalue %dx.types.CBufRet.f32 %3233, 0
  %3235 = extractvalue %dx.types.CBufRet.f32 %3233, 1
  %3236 = extractvalue %dx.types.CBufRet.f32 %3233, 2
  %3237 = extractvalue %dx.types.CBufRet.f32 %3233, 3
  %3238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3223, float %3227, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3239 = extractvalue %dx.types.ResRet.f32 %3238, 0
  %3240 = extractvalue %dx.types.ResRet.f32 %3238, 1
  %3241 = extractvalue %dx.types.ResRet.f32 %3238, 2
  %3242 = extractvalue %dx.types.ResRet.f32 %3238, 3
  %3243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3223, float %3227, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3244 = extractvalue %dx.types.ResRet.f32 %3243, 0
  %3245 = extractvalue %dx.types.ResRet.f32 %3243, 1
  %3246 = extractvalue %dx.types.ResRet.f32 %3243, 2
  %3247 = extractvalue %dx.types.ResRet.f32 %3243, 3
  %3248 = fmul fast float %3239, %3216
  %3249 = fmul fast float %3244, %3216
  %3250 = fmul fast float %3246, %3216
  %3251 = fmul fast float %3242, %3216
  %3252 = fadd fast float %3248, %3229
  %3253 = fadd fast float %3249, %3230
  %3254 = fadd fast float %3250, %3231
  %3255 = fadd fast float %3251, %3232
  %3256 = fmul fast float %3240, %3216
  %3257 = fmul fast float %3245, %3216
  %3258 = fadd fast float %3256, %3234
  %3259 = fadd fast float %3257, %3235
  %3260 = fmul fast float %3241, %3216
  %3261 = fmul fast float %3247, %3216
  %3262 = fadd fast float %3260, %3236
  %3263 = fadd fast float %3261, %3237
  %3264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3223, float %3227, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3265 = extractvalue %dx.types.ResRet.f32 %3264, 0
  %3266 = extractvalue %dx.types.ResRet.f32 %3264, 1
  %3267 = extractvalue %dx.types.ResRet.f32 %3264, 2
  %3268 = extractvalue %dx.types.ResRet.f32 %3264, 3
  %3269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3223, float %3227, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3270 = extractvalue %dx.types.ResRet.f32 %3269, 0
  %3271 = extractvalue %dx.types.ResRet.f32 %3269, 1
  %3272 = extractvalue %dx.types.ResRet.f32 %3269, 2
  %3273 = extractvalue %dx.types.ResRet.f32 %3269, 3
  %3274 = fmul fast float %3265, %3217
  %3275 = fmul fast float %3270, %3217
  %3276 = fmul fast float %3272, %3217
  %3277 = fmul fast float %3268, %3217
  %3278 = fadd fast float %3252, %3274
  %3279 = fadd fast float %3253, %3275
  %3280 = fadd fast float %3254, %3276
  %3281 = fadd fast float %3255, %3277
  %3282 = fmul fast float %3266, %3217
  %3283 = fmul fast float %3271, %3217
  %3284 = fadd fast float %3258, %3282
  %3285 = fadd fast float %3259, %3283
  %3286 = fmul fast float %3267, %3217
  %3287 = fmul fast float %3273, %3217
  %3288 = fadd fast float %3262, %3286
  %3289 = fadd fast float %3263, %3287
  %3290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3223, float %3227, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3291 = extractvalue %dx.types.ResRet.f32 %3290, 0
  %3292 = extractvalue %dx.types.ResRet.f32 %3290, 1
  %3293 = extractvalue %dx.types.ResRet.f32 %3290, 2
  %3294 = extractvalue %dx.types.ResRet.f32 %3290, 3
  %3295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3223, float %3227, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3296 = extractvalue %dx.types.ResRet.f32 %3295, 0
  %3297 = extractvalue %dx.types.ResRet.f32 %3295, 1
  %3298 = extractvalue %dx.types.ResRet.f32 %3295, 2
  %3299 = extractvalue %dx.types.ResRet.f32 %3295, 3
  %3300 = fmul fast float %3291, %3218
  %3301 = fmul fast float %3296, %3218
  %3302 = fmul fast float %3298, %3218
  %3303 = fmul fast float %3294, %3218
  %3304 = fadd fast float %3278, %3300
  %3305 = fadd fast float %3279, %3301
  %3306 = fadd fast float %3280, %3302
  %3307 = fadd fast float %3281, %3303
  %3308 = fmul fast float %3292, %3218
  %3309 = fmul fast float %3297, %3218
  %3310 = fadd fast float %3284, %3308
  %3311 = fadd fast float %3285, %3309
  %3312 = fmul fast float %3293, %3218
  %3313 = fmul fast float %3299, %3218
  %3314 = fadd fast float %3288, %3312
  %3315 = fadd fast float %3289, %3313
  %3316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3317 = extractvalue %dx.types.CBufRet.f32 %3316, 0
  %3318 = fsub fast float %2788, %3317
  %3319 = fsub fast float %3160, %2788
  %3320 = call float @dx.op.binary.f32(i32 35, float %3319, float %3318)  ; FMax(a,b)
  %3321 = extractvalue %dx.types.CBufRet.f32 %3316, 1
  %3322 = fsub fast float %2789, %3321
  %3323 = fsub fast float %3161, %2789
  %3324 = call float @dx.op.binary.f32(i32 35, float %3323, float %3322)  ; FMax(a,b)
  %3325 = call float @dx.op.binary.f32(i32 35, float %3320, float %3324)  ; FMax(a,b)
  %3326 = extractvalue %dx.types.CBufRet.f32 %3164, 3
  %3327 = fmul fast float %3326, %3325
  %3328 = call float @dx.op.unary.f32(i32 7, float %3327)  ; Saturate(value)
  %3329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3330 = extractvalue %dx.types.CBufRet.f32 %3329, 0
  %3331 = extractvalue %dx.types.CBufRet.f32 %3329, 1
  %3332 = extractvalue %dx.types.CBufRet.f32 %3329, 2
  %3333 = extractvalue %dx.types.CBufRet.f32 %3329, 3
  %3334 = fsub fast float %3330, %3304
  %3335 = fsub fast float %3331, %3305
  %3336 = fsub fast float %3332, %3306
  %3337 = fsub fast float %3333, %3307
  %3338 = fmul fast float %3334, %3328
  %3339 = fmul fast float %3335, %3328
  %3340 = fmul fast float %3336, %3328
  %3341 = fmul fast float %3337, %3328
  %3342 = fadd fast float %3338, %3304
  %3343 = fadd fast float %3339, %3305
  %3344 = fadd fast float %3340, %3306
  %3345 = fadd fast float %3341, %3307
  %3346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3347 = extractvalue %dx.types.CBufRet.f32 %3346, 0
  %3348 = extractvalue %dx.types.CBufRet.f32 %3346, 1
  %3349 = fsub fast float %3347, %3310
  %3350 = fsub fast float %3348, %3311
  %3351 = fmul fast float %3349, %3328
  %3352 = fmul fast float %3350, %3328
  %3353 = fadd fast float %3351, %3310
  %3354 = fadd fast float %3352, %3311
  %3355 = extractvalue %dx.types.CBufRet.f32 %3346, 2
  %3356 = extractvalue %dx.types.CBufRet.f32 %3346, 3
  %3357 = fsub fast float %3355, %3314
  %3358 = fsub fast float %3356, %3315
  %3359 = fmul fast float %3357, %3328
  %3360 = fmul fast float %3358, %3328
  %3361 = fadd fast float %3359, %3314
  %3362 = fadd fast float %3360, %3315
  %3363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3364 = extractvalue %dx.types.CBufRet.f32 %3363, 0
  %3365 = fmul fast float %3364, %3342
  %3366 = fmul fast float %3364, %3343
  %3367 = fmul fast float %3364, %3344
  %3368 = fmul fast float %3364, %3345
  %3369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3370 = extractvalue %dx.types.CBufRet.f32 %3369, 0
  %3371 = fmul fast float %3370, %3353
  %3372 = fmul fast float %3370, %3354
  %3373 = fadd fast float %3371, %3365
  %3374 = fadd fast float %3372, %3367
  %3375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3376 = extractvalue %dx.types.CBufRet.f32 %3375, 0
  %3377 = fmul fast float %3376, %3361
  %3378 = fmul fast float %3376, %3362
  %3379 = fadd fast float %3373, %3377
  %3380 = fadd fast float %3374, %3378
  %3381 = extractvalue %dx.types.CBufRet.f32 %3363, 1
  %3382 = fmul fast float %3381, %3342
  %3383 = fmul fast float %3381, %3343
  %3384 = fmul fast float %3381, %3344
  %3385 = fmul fast float %3381, %3345
  %3386 = extractvalue %dx.types.CBufRet.f32 %3369, 1
  %3387 = fmul fast float %3386, %3353
  %3388 = fmul fast float %3386, %3354
  %3389 = fadd fast float %3387, %3382
  %3390 = fadd fast float %3388, %3384
  %3391 = extractvalue %dx.types.CBufRet.f32 %3375, 1
  %3392 = fmul fast float %3391, %3361
  %3393 = fmul fast float %3391, %3362
  %3394 = fadd fast float %3389, %3392
  %3395 = fadd fast float %3390, %3393
  %3396 = extractvalue %dx.types.CBufRet.f32 %3363, 2
  %3397 = fmul fast float %3396, %3342
  %3398 = fmul fast float %3396, %3343
  %3399 = fmul fast float %3396, %3344
  %3400 = fmul fast float %3396, %3345
  %3401 = extractvalue %dx.types.CBufRet.f32 %3369, 2
  %3402 = fmul fast float %3401, %3353
  %3403 = fmul fast float %3401, %3354
  %3404 = fadd fast float %3402, %3397
  %3405 = fadd fast float %3403, %3399
  %3406 = extractvalue %dx.types.CBufRet.f32 %3375, 2
  %3407 = fmul fast float %3406, %3361
  %3408 = fmul fast float %3406, %3362
  %3409 = fadd fast float %3404, %3407
  %3410 = fadd fast float %3405, %3408
  %3411 = fmul fast float %3398, %3398
  %3412 = fmul fast float %3410, %3410
  %3413 = fmul fast float %3400, %3400
  %3414 = fadd fast float %3413, %3411
  %3415 = fadd fast float %3414, %3412
  %3416 = call float @dx.op.unary.f32(i32 24, float %3415)  ; Sqrt(value)
  %3417 = fcmp fast ugt float %3416, 0.000000e+00
  br i1 %3417, label %3418, label %3433

; <label>:3418                                    ; preds = %3152
  %3419 = fsub fast float -0.000000e+00, %3400
  %3420 = fdiv fast float %3419, %3416
  %3421 = fsub fast float -0.000000e+00, %3398
  %3422 = fdiv fast float %3421, %3416
  %3423 = fdiv fast float %3410, %3416
  %3424 = fmul fast float %3409, 0x3FE279A760000000
  %3425 = fmul fast float %3422, %3398
  %3426 = fmul fast float %3423, %3410
  %3427 = fmul fast float %3420, %3400
  %3428 = fadd fast float %3425, %3427
  %3429 = fsub fast float %3428, %3426
  %3430 = call float @dx.op.unary.f32(i32 6, float %3429)  ; FAbs(value)
  %3431 = fadd fast float %3430, 0x3DDB7CDFE0000000
  %3432 = fdiv fast float %3424, %3431
  br label %3433

; <label>:3433                                    ; preds = %3418, %3152
  %3434 = phi float [ %3432, %3418 ], [ 1.000000e+00, %3152 ]
  %3435 = fmul fast float %3383, %3383
  %3436 = fmul fast float %3395, %3395
  %3437 = fmul fast float %3385, %3385
  %3438 = fadd fast float %3437, %3435
  %3439 = fadd fast float %3438, %3436
  %3440 = call float @dx.op.unary.f32(i32 24, float %3439)  ; Sqrt(value)
  %3441 = fcmp fast ugt float %3440, 0.000000e+00
  br i1 %3441, label %3442, label %3457

; <label>:3442                                    ; preds = %3433
  %3443 = fsub fast float -0.000000e+00, %3385
  %3444 = fdiv fast float %3443, %3440
  %3445 = fsub fast float -0.000000e+00, %3383
  %3446 = fdiv fast float %3445, %3440
  %3447 = fdiv fast float %3395, %3440
  %3448 = fmul fast float %3394, 0x3FE279A760000000
  %3449 = fmul fast float %3446, %3383
  %3450 = fmul fast float %3447, %3395
  %3451 = fmul fast float %3444, %3385
  %3452 = fadd fast float %3449, %3451
  %3453 = fsub fast float %3452, %3450
  %3454 = call float @dx.op.unary.f32(i32 6, float %3453)  ; FAbs(value)
  %3455 = fadd fast float %3454, 0x3DDB7CDFE0000000
  %3456 = fdiv fast float %3448, %3455
  br label %3457

; <label>:3457                                    ; preds = %3442, %3433
  %3458 = phi float [ %3456, %3442 ], [ 1.000000e+00, %3433 ]
  %3459 = call float @dx.op.binary.f32(i32 36, float %3458, float %3434)  ; FMin(a,b)
  %3460 = fmul fast float %3366, %3366
  %3461 = fmul fast float %3380, %3380
  %3462 = fmul fast float %3368, %3368
  %3463 = fadd fast float %3462, %3460
  %3464 = fadd fast float %3463, %3461
  %3465 = call float @dx.op.unary.f32(i32 24, float %3464)  ; Sqrt(value)
  %3466 = fcmp fast ugt float %3465, 0.000000e+00
  br i1 %3466, label %3467, label %3482

; <label>:3467                                    ; preds = %3457
  %3468 = fsub fast float -0.000000e+00, %3368
  %3469 = fdiv fast float %3468, %3465
  %3470 = fsub fast float -0.000000e+00, %3366
  %3471 = fdiv fast float %3470, %3465
  %3472 = fdiv fast float %3380, %3465
  %3473 = fmul fast float %3379, 0x3FE279A760000000
  %3474 = fmul fast float %3471, %3366
  %3475 = fmul fast float %3472, %3380
  %3476 = fmul fast float %3469, %3368
  %3477 = fadd fast float %3474, %3476
  %3478 = fsub fast float %3477, %3475
  %3479 = call float @dx.op.unary.f32(i32 6, float %3478)  ; FAbs(value)
  %3480 = fadd fast float %3479, 0x3DDB7CDFE0000000
  %3481 = fdiv fast float %3473, %3480
  br label %3482

; <label>:3482                                    ; preds = %3467, %3457
  %3483 = phi float [ %3481, %3467 ], [ 1.000000e+00, %3457 ]
  %3484 = call float @dx.op.binary.f32(i32 36, float %3483, float %3459)  ; FMin(a,b)
  %3485 = call float @dx.op.unary.f32(i32 7, float %3484)  ; Saturate(value)
  %3486 = fcmp fast olt float %3485, 1.000000e+00
  br i1 %3486, label %3487, label %3497

; <label>:3487                                    ; preds = %3482
  %3488 = fmul fast float %3485, %3366
  %3489 = fmul fast float %3485, %3380
  %3490 = fmul fast float %3485, %3368
  %3491 = fmul fast float %3485, %3383
  %3492 = fmul fast float %3485, %3395
  %3493 = fmul fast float %3485, %3385
  %3494 = fmul fast float %3485, %3398
  %3495 = fmul fast float %3485, %3410
  %3496 = fmul fast float %3485, %3400
  br label %3497

; <label>:3497                                    ; preds = %3487, %3482
  %3498 = phi float [ %3494, %3487 ], [ %3398, %3482 ]
  %3499 = phi float [ %3495, %3487 ], [ %3410, %3482 ]
  %3500 = phi float [ %3496, %3487 ], [ %3400, %3482 ]
  %3501 = phi float [ %3491, %3487 ], [ %3383, %3482 ]
  %3502 = phi float [ %3492, %3487 ], [ %3395, %3482 ]
  %3503 = phi float [ %3493, %3487 ], [ %3385, %3482 ]
  %3504 = phi float [ %3488, %3487 ], [ %3366, %3482 ]
  %3505 = phi float [ %3489, %3487 ], [ %3380, %3482 ]
  %3506 = phi float [ %3490, %3487 ], [ %3368, %3482 ]
  %3507 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3379)  ; FMax(a,b)
  %3508 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3394)  ; FMax(a,b)
  %3509 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3409)  ; FMax(a,b)
  %3510 = fcmp fast oge float %3167, 0.000000e+00
  %3511 = and i1 %3510, %2938
  %3512 = fcmp fast ole float %3167, 1.000000e+00
  %3513 = and i1 %3512, %3511
  %3514 = fcmp fast oge float %3168, 0.000000e+00
  %3515 = and i1 %3514, %3513
  %3516 = fcmp fast ole float %3168, 1.000000e+00
  %3517 = and i1 %3516, %3515
  br i1 %3517, label %3518, label %3663, !dx.controlflow.hints !84

; <label>:3518                                    ; preds = %3497
  %3519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3519, 2
  %3521 = extractvalue %dx.types.CBufRet.f32 %3519, 3
  %3522 = fmul fast float %3520, %3167
  %3523 = fmul fast float %3521, %3168
  %3524 = call float @dx.op.unary.f32(i32 27, float %3522)  ; Round_ni(value)
  %3525 = call float @dx.op.unary.f32(i32 27, float %3523)  ; Round_ni(value)
  %3526 = fptosi float %3524 to i32
  %3527 = fptosi float %3525 to i32
  %3528 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3526, i32 %3527, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = and i32 %3529, 65535
  %3531 = lshr i32 %3529, 16
  %3532 = icmp eq i32 %3530, 65535
  br i1 %3532, label %3569, label %3533

; <label>:3533                                    ; preds = %3518
  %3534 = extractvalue %dx.types.CBufRet.f32 %2936, 1
  %3535 = extractvalue %dx.types.CBufRet.f32 %3519, 0
  %3536 = extractvalue %dx.types.CBufRet.f32 %3519, 1
  %3537 = fmul fast float %3535, %3167
  %3538 = fmul fast float %3536, %3168
  %3539 = fmul fast float %3537, 1.250000e-01
  %3540 = fmul fast float %3538, 1.250000e-01
  %3541 = call float @dx.op.unary.f32(i32 27, float %3539)  ; Round_ni(value)
  %3542 = call float @dx.op.unary.f32(i32 27, float %3540)  ; Round_ni(value)
  %3543 = fmul fast float %3541, 8.000000e+00
  %3544 = fmul fast float %3542, 8.000000e+00
  %3545 = and i32 %3529, 255
  %3546 = lshr i32 %3529, 8
  %3547 = and i32 %3546, 255
  %3548 = mul nuw nsw i32 %3545, 9
  %3549 = uitofp i32 %3548 to float
  %3550 = mul nuw nsw i32 %3547, 9
  %3551 = uitofp i32 %3550 to float
  %3552 = fadd fast float %3549, 5.000000e-01
  %3553 = fadd fast float %3552, %3537
  %3554 = fsub fast float %3553, %3543
  %3555 = fadd fast float %3551, 5.000000e-01
  %3556 = fadd fast float %3555, %3538
  %3557 = fsub fast float %3556, %3544
  %3558 = fdiv fast float %3554, %2937
  %3559 = fdiv fast float %3557, %3534
  %3560 = fmul fast float %3195, 4.375000e-01
  %3561 = fadd fast float %3560, 3.125000e-02
  %3562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3558, float %3559, float %3561, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3563 = extractvalue %dx.types.ResRet.f32 %3562, 0
  %3564 = extractvalue %dx.types.ResRet.f32 %3562, 1
  %3565 = extractvalue %dx.types.ResRet.f32 %3562, 2
  %3566 = fadd fast float %3563, %3507
  %3567 = fadd fast float %3564, %3508
  %3568 = fadd fast float %3565, %3509
  br label %3569

; <label>:3569                                    ; preds = %3533, %3518
  %3570 = phi float [ %3568, %3533 ], [ %3509, %3518 ]
  %3571 = phi float [ %3567, %3533 ], [ %3508, %3518 ]
  %3572 = phi float [ %3566, %3533 ], [ %3507, %3518 ]
  %3573 = icmp eq i32 %3531, 65535
  br i1 %3573, label %3663, label %3574

; <label>:3574                                    ; preds = %3569
  %3575 = extractvalue %dx.types.CBufRet.f32 %2936, 1
  %3576 = extractvalue %dx.types.CBufRet.f32 %3519, 0
  %3577 = extractvalue %dx.types.CBufRet.f32 %3519, 1
  %3578 = fmul fast float %3576, %3167
  %3579 = fmul fast float %3577, %3168
  %3580 = fmul fast float %3578, 1.250000e-01
  %3581 = fmul fast float %3579, 1.250000e-01
  %3582 = call float @dx.op.unary.f32(i32 27, float %3580)  ; Round_ni(value)
  %3583 = call float @dx.op.unary.f32(i32 27, float %3581)  ; Round_ni(value)
  %3584 = fmul fast float %3582, 8.000000e+00
  %3585 = fmul fast float %3583, 8.000000e+00
  %3586 = fsub fast float %3578, %3584
  %3587 = fsub fast float %3579, %3585
  %3588 = fadd fast float %3586, 5.000000e-01
  %3589 = fadd fast float %3587, 5.000000e-01
  %3590 = and i32 %3531, 255
  %3591 = lshr i32 %3529, 24
  %3592 = mul nuw nsw i32 %3590, 9
  %3593 = uitofp i32 %3592 to float
  %3594 = mul nuw nsw i32 %3591, 9
  %3595 = uitofp i32 %3594 to float
  %3596 = fadd fast float %3588, %3593
  %3597 = fadd fast float %3589, %3595
  %3598 = fdiv fast float %3596, %2937
  %3599 = fdiv fast float %3597, %3575
  %3600 = fmul fast float %3195, 4.375000e-01
  %3601 = fadd fast float %3600, 3.125000e-02
  %3602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3598, float %3599, float %3601, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3605 = extractvalue %dx.types.ResRet.f32 %3602, 2
  %3606 = fadd fast float %3600, 5.312500e-01
  %3607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3598, float %3599, float %3606, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3609 = extractvalue %dx.types.ResRet.f32 %3607, 1
  %3610 = extractvalue %dx.types.ResRet.f32 %3607, 2
  %3611 = fmul fast float %3608, 2.000000e+00
  %3612 = fmul fast float %3609, 2.000000e+00
  %3613 = fmul fast float %3610, 2.000000e+00
  %3614 = fadd fast float %3611, -1.000000e+00
  %3615 = fadd fast float %3612, -1.000000e+00
  %3616 = fadd fast float %3613, -1.000000e+00
  %3617 = fmul fast float %3614, %3614
  %3618 = fmul fast float %3615, %3615
  %3619 = fadd fast float %3617, %3618
  %3620 = fmul fast float %3616, %3616
  %3621 = fadd fast float %3619, %3620
  %3622 = call float @dx.op.unary.f32(i32 24, float %3621)  ; Sqrt(value)
  %3623 = fcmp fast ogt float %3622, 0.000000e+00
  br i1 %3623, label %3624, label %3628

; <label>:3624                                    ; preds = %3574
  %3625 = fdiv fast float %3614, %3622
  %3626 = fdiv fast float %3615, %3622
  %3627 = fdiv fast float %3616, %3622
  br label %3628

; <label>:3628                                    ; preds = %3624, %3574
  %3629 = phi float [ %3625, %3624 ], [ 0.000000e+00, %3574 ]
  %3630 = phi float [ %3626, %3624 ], [ 0.000000e+00, %3574 ]
  %3631 = phi float [ %3627, %3624 ], [ 0.000000e+00, %3574 ]
  %3632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3633 = extractvalue %dx.types.CBufRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.CBufRet.f32 %3632, 1
  %3635 = fsub fast float %2788, %3633
  %3636 = fsub fast float %2789, %3634
  %3637 = fmul fast float %3635, %3635
  %3638 = fmul fast float %3636, %3636
  %3639 = fadd fast float %3637, %3638
  %3640 = call float @dx.op.unary.f32(i32 24, float %3639)  ; Sqrt(value)
  %3641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3642 = extractvalue %dx.types.CBufRet.f32 %3641, 0
  %3643 = extractvalue %dx.types.CBufRet.f32 %3641, 1
  %3644 = fsub fast float %3640, %3642
  %3645 = fdiv fast float %3644, %3643
  %3646 = call float @dx.op.unary.f32(i32 7, float %3645)  ; Saturate(value)
  %3647 = fmul fast float %3646, 2.000000e+00
  %3648 = fsub fast float 3.000000e+00, %3647
  %3649 = fmul fast float %3646, %3646
  %3650 = fmul fast float %3649, %3648
  %3651 = call float @dx.op.dot3.f32(i32 55, float %3629, float %3630, float %3631, float %2765, float %2766, float %2767)  ; Dot3(ax,ay,az,bx,by,bz)
  %3652 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3651)  ; FMax(a,b)
  %3653 = fmul fast float %3652, 0x400C5BF8A0000000
  %3654 = fmul fast float %3650, %3603
  %3655 = fmul fast float %3654, %3653
  %3656 = fadd fast float %3655, %3572
  %3657 = fmul fast float %3650, %3604
  %3658 = fmul fast float %3657, %3653
  %3659 = fadd fast float %3658, %3571
  %3660 = fmul fast float %3650, %3605
  %3661 = fmul fast float %3660, %3653
  %3662 = fadd fast float %3661, %3570
  br label %3663

; <label>:3663                                    ; preds = %3628, %3569, %3497
  %3664 = phi float [ %3662, %3628 ], [ %3570, %3569 ], [ %3509, %3497 ]
  %3665 = phi float [ %3659, %3628 ], [ %3571, %3569 ], [ %3508, %3497 ]
  %3666 = phi float [ %3656, %3628 ], [ %3572, %3569 ], [ %3507, %3497 ]
  %3667 = fcmp fast ogt float %3154, %3191
  %3668 = and i1 %3510, %3667
  %3669 = and i1 %3512, %3668
  %3670 = and i1 %3514, %3669
  %3671 = and i1 %3516, %3670
  br i1 %3671, label %3672, label %3729, !dx.controlflow.hints !85

; <label>:3672                                    ; preds = %3663
  %3673 = fmul fast float %3193, 0x3FC24924A0000000
  %3674 = fsub fast float %3154, %3191
  %3675 = fdiv fast float %3674, %3673
  %3676 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  %3677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3678 = extractvalue %dx.types.CBufRet.f32 %3677, 0
  %3679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3679, 0
  %3681 = extractvalue %dx.types.CBufRet.f32 %3679, 1
  %3682 = extractvalue %dx.types.CBufRet.f32 %3679, 2
  %3683 = fsub fast float %3678, %3666
  %3684 = fsub fast float %3680, %3504
  %3685 = fsub fast float %3681, %3505
  %3686 = fsub fast float %3682, %3506
  %3687 = fmul fast float %3683, %3676
  %3688 = fmul fast float %3684, %3676
  %3689 = fmul fast float %3685, %3676
  %3690 = fmul fast float %3686, %3676
  %3691 = fadd fast float %3687, %3666
  %3692 = fadd fast float %3688, %3504
  %3693 = fadd fast float %3689, %3505
  %3694 = fadd fast float %3690, %3506
  %3695 = extractvalue %dx.types.CBufRet.f32 %3677, 1
  %3696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3697 = extractvalue %dx.types.CBufRet.f32 %3696, 0
  %3698 = extractvalue %dx.types.CBufRet.f32 %3696, 1
  %3699 = extractvalue %dx.types.CBufRet.f32 %3696, 2
  %3700 = fsub fast float %3695, %3665
  %3701 = fsub fast float %3697, %3501
  %3702 = fsub fast float %3698, %3502
  %3703 = fsub fast float %3699, %3503
  %3704 = fmul fast float %3700, %3676
  %3705 = fmul fast float %3701, %3676
  %3706 = fmul fast float %3702, %3676
  %3707 = fmul fast float %3703, %3676
  %3708 = fadd fast float %3704, %3665
  %3709 = fadd fast float %3705, %3501
  %3710 = fadd fast float %3706, %3502
  %3711 = fadd fast float %3707, %3503
  %3712 = extractvalue %dx.types.CBufRet.f32 %3677, 2
  %3713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3714 = extractvalue %dx.types.CBufRet.f32 %3713, 0
  %3715 = extractvalue %dx.types.CBufRet.f32 %3713, 1
  %3716 = extractvalue %dx.types.CBufRet.f32 %3713, 2
  %3717 = fsub fast float %3712, %3664
  %3718 = fsub fast float %3714, %3498
  %3719 = fsub fast float %3715, %3499
  %3720 = fsub fast float %3716, %3500
  %3721 = fmul fast float %3717, %3676
  %3722 = fmul fast float %3718, %3676
  %3723 = fmul fast float %3719, %3676
  %3724 = fmul fast float %3720, %3676
  %3725 = fadd fast float %3721, %3664
  %3726 = fadd fast float %3722, %3498
  %3727 = fadd fast float %3723, %3499
  %3728 = fadd fast float %3724, %3500
  br label %3729

; <label>:3729                                    ; preds = %3672, %3663
  %3730 = phi float [ %3725, %3672 ], [ %3664, %3663 ]
  %3731 = phi float [ %3726, %3672 ], [ %3498, %3663 ]
  %3732 = phi float [ %3727, %3672 ], [ %3499, %3663 ]
  %3733 = phi float [ %3728, %3672 ], [ %3500, %3663 ]
  %3734 = phi float [ %3708, %3672 ], [ %3665, %3663 ]
  %3735 = phi float [ %3709, %3672 ], [ %3501, %3663 ]
  %3736 = phi float [ %3710, %3672 ], [ %3502, %3663 ]
  %3737 = phi float [ %3711, %3672 ], [ %3503, %3663 ]
  %3738 = phi float [ %3691, %3672 ], [ %3666, %3663 ]
  %3739 = phi float [ %3692, %3672 ], [ %3504, %3663 ]
  %3740 = phi float [ %3693, %3672 ], [ %3505, %3663 ]
  %3741 = phi float [ %3694, %3672 ], [ %3506, %3663 ]
  %3742 = extractvalue %dx.types.CBufRet.f32 %3316, 3
  %3743 = fmul fast float %3742, %3738
  %3744 = fmul fast float %3742, %3734
  %3745 = fmul fast float %3742, %3730
  %3746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3747 = extractvalue %dx.types.CBufRet.f32 %3746, 3
  %3748 = fmul fast float %3743, %3747
  %3749 = fmul fast float %3744, %3747
  %3750 = fmul fast float %3745, %3747
  %3751 = fmul fast float %3739, 1.500000e+00
  %3752 = fmul fast float %3751, %3742
  %3753 = fmul fast float %3752, %3747
  %3754 = fmul fast float %3740, 1.500000e+00
  %3755 = fmul fast float %3754, %3742
  %3756 = fmul fast float %3755, %3747
  %3757 = fmul fast float %3741, 1.500000e+00
  %3758 = fmul fast float %3757, %3742
  %3759 = fmul fast float %3758, %3747
  %3760 = fmul fast float %3735, 1.500000e+00
  %3761 = fmul fast float %3760, %3742
  %3762 = fmul fast float %3761, %3747
  %3763 = fmul fast float %3736, 1.500000e+00
  %3764 = fmul fast float %3763, %3742
  %3765 = fmul fast float %3764, %3747
  %3766 = fmul fast float %3737, 1.500000e+00
  %3767 = fmul fast float %3766, %3742
  %3768 = fmul fast float %3767, %3747
  %3769 = fmul fast float %3731, 1.500000e+00
  %3770 = fmul fast float %3769, %3742
  %3771 = fmul fast float %3770, %3747
  %3772 = fmul fast float %3732, 1.500000e+00
  %3773 = fmul fast float %3772, %3742
  %3774 = fmul fast float %3773, %3747
  %3775 = fmul fast float %3733, 1.500000e+00
  %3776 = fmul fast float %3775, %3742
  %3777 = fmul fast float %3776, %3747
  %3778 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3748)  ; FMax(a,b)
  %3779 = call float @dx.op.dot3.f32(i32 55, float %3753, float %3756, float %3759, float %3753, float %3756, float %3759)  ; Dot3(ax,ay,az,bx,by,bz)
  %3780 = fcmp fast oeq float %3779, 0.000000e+00
  %3781 = fcmp fast oeq float %3778, 0.000000e+00
  %3782 = or i1 %3781, %3780
  br i1 %3782, label %3812, label %3783

; <label>:3783                                    ; preds = %3729
  %3784 = fsub fast float -0.000000e+00, %3759
  %3785 = fsub fast float -0.000000e+00, %3753
  %3786 = call float @dx.op.unary.f32(i32 24, float %3779)  ; Sqrt(value)
  %3787 = fdiv fast float %3786, %3778
  %3788 = fcmp fast ogt float %3787, 0x3FFB6F8900000000
  %3789 = select i1 %3788, float 0x3FFB6F8900000000, float %3787
  %3790 = fmul fast float %3789, 0x3FE8A23460000000
  %3791 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  %3792 = call float @dx.op.binary.f32(i32 35, float %3789, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3793 = fmul fast float %3791, %3778
  %3794 = fmul fast float %3792, 0x3FF279A740000000
  %3795 = fadd fast float %3794, -1.000000e+00
  %3796 = call float @dx.op.dot3.f32(i32 55, float %3784, float %3785, float %3756, float %3784, float %3785, float %3756)  ; Dot3(ax,ay,az,bx,by,bz)
  %3797 = call float @dx.op.unary.f32(i32 25, float %3796)  ; Rsqrt(value)
  %3798 = fmul fast float %3797, %3784
  %3799 = fmul fast float %3797, %3785
  %3800 = fmul fast float %3797, %3756
  %3801 = fmul fast float %3795, %3795
  %3802 = fsub fast float 1.000000e+00, %3801
  %3803 = fmul fast float %3792, 0x40005F8BE0000000
  %3804 = fsub fast float 0x400C5BF8A0000000, %3803
  %3805 = fdiv fast float %3793, %3804
  %3806 = fmul fast float %3805, 0x3FEE31C3C0000000
  %3807 = fmul fast float %3806, %3802
  %3808 = fmul fast float %3792, 0x3FDACB7480000000
  %3809 = fadd fast float %3808, 0xBFD7347680000000
  %3810 = fmul fast float %3809, %3805
  %3811 = fmul fast float %3810, %3802
  br label %3812

; <label>:3812                                    ; preds = %3783, %3729
  %3813 = phi float [ %3798, %3783 ], [ 0.000000e+00, %3729 ]
  %3814 = phi float [ %3799, %3783 ], [ 0.000000e+00, %3729 ]
  %3815 = phi float [ %3800, %3783 ], [ 0.000000e+00, %3729 ]
  %3816 = phi float [ %3807, %3783 ], [ 0.000000e+00, %3729 ]
  %3817 = phi float [ %3811, %3783 ], [ 0.000000e+00, %3729 ]
  %3818 = call float @dx.op.dot3.f32(i32 55, float %3813, float %3814, float %3815, float %2765, float %2766, float %2767)  ; Dot3(ax,ay,az,bx,by,bz)
  %3819 = fmul fast float %3818, %3818
  %3820 = fmul fast float %3819, 0x3FEE471020000000
  %3821 = fadd fast float %3820, 0xBFD42F6020000000
  %3822 = fmul fast float %3778, 0x3FD20DD760000000
  %3823 = fmul fast float %3821, %3817
  %3824 = fmul fast float %3816, 0x3FDF454380000000
  %3825 = fmul fast float %3824, %3818
  %3826 = fadd fast float %3825, %3822
  %3827 = fadd fast float %3826, %3823
  %3828 = call float @dx.op.dot3.f32(i32 55, float %3813, float %3814, float %3815, float %2778, float %2779, float %2780)  ; Dot3(ax,ay,az,bx,by,bz)
  %3829 = fmul fast float %3828, 0x3FDF454380000000
  %3830 = fmul fast float %3828, %3828
  %3831 = fmul fast float %3830, 0x3FEE471020000000
  %3832 = fadd fast float %3831, 0xBFD42F6020000000
  %3833 = call float @dx.op.dot3.f32(i32 55, float %3778, float %3816, float %3817, float 0x3FD20DD760000000, float %3829, float %3832)  ; Dot3(ax,ay,az,bx,by,bz)
  %3834 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3749)  ; FMax(a,b)
  %3835 = call float @dx.op.dot3.f32(i32 55, float %3762, float %3765, float %3768, float %3762, float %3765, float %3768)  ; Dot3(ax,ay,az,bx,by,bz)
  %3836 = fcmp fast oeq float %3835, 0.000000e+00
  %3837 = fcmp fast oeq float %3834, 0.000000e+00
  %3838 = or i1 %3837, %3836
  br i1 %3838, label %3868, label %3839

; <label>:3839                                    ; preds = %3812
  %3840 = fsub fast float -0.000000e+00, %3768
  %3841 = fsub fast float -0.000000e+00, %3762
  %3842 = call float @dx.op.unary.f32(i32 24, float %3835)  ; Sqrt(value)
  %3843 = fdiv fast float %3842, %3834
  %3844 = fcmp fast ogt float %3843, 0x3FFB6F8900000000
  %3845 = select i1 %3844, float 0x3FFB6F8900000000, float %3843
  %3846 = fmul fast float %3845, 0x3FE8A23460000000
  %3847 = call float @dx.op.unary.f32(i32 7, float %3846)  ; Saturate(value)
  %3848 = call float @dx.op.binary.f32(i32 35, float %3845, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3849 = fmul fast float %3847, %3834
  %3850 = fmul fast float %3848, 0x3FF279A740000000
  %3851 = fadd fast float %3850, -1.000000e+00
  %3852 = call float @dx.op.dot3.f32(i32 55, float %3840, float %3841, float %3765, float %3840, float %3841, float %3765)  ; Dot3(ax,ay,az,bx,by,bz)
  %3853 = call float @dx.op.unary.f32(i32 25, float %3852)  ; Rsqrt(value)
  %3854 = fmul fast float %3853, %3840
  %3855 = fmul fast float %3853, %3841
  %3856 = fmul fast float %3853, %3765
  %3857 = fmul fast float %3851, %3851
  %3858 = fsub fast float 1.000000e+00, %3857
  %3859 = fmul fast float %3848, 0x40005F8BE0000000
  %3860 = fsub fast float 0x400C5BF8A0000000, %3859
  %3861 = fdiv fast float %3849, %3860
  %3862 = fmul fast float %3861, 0x3FEE31C3C0000000
  %3863 = fmul fast float %3862, %3858
  %3864 = fmul fast float %3848, 0x3FDACB7480000000
  %3865 = fadd fast float %3864, 0xBFD7347680000000
  %3866 = fmul fast float %3865, %3861
  %3867 = fmul fast float %3866, %3858
  br label %3868

; <label>:3868                                    ; preds = %3839, %3812
  %3869 = phi float [ %3854, %3839 ], [ 0.000000e+00, %3812 ]
  %3870 = phi float [ %3855, %3839 ], [ 0.000000e+00, %3812 ]
  %3871 = phi float [ %3856, %3839 ], [ 0.000000e+00, %3812 ]
  %3872 = phi float [ %3863, %3839 ], [ 0.000000e+00, %3812 ]
  %3873 = phi float [ %3867, %3839 ], [ 0.000000e+00, %3812 ]
  %3874 = call float @dx.op.dot3.f32(i32 55, float %3869, float %3870, float %3871, float %2765, float %2766, float %2767)  ; Dot3(ax,ay,az,bx,by,bz)
  %3875 = fmul fast float %3874, %3874
  %3876 = fmul fast float %3875, 0x3FEE471020000000
  %3877 = fadd fast float %3876, 0xBFD42F6020000000
  %3878 = fmul fast float %3834, 0x3FD20DD760000000
  %3879 = fmul fast float %3877, %3873
  %3880 = fmul fast float %3872, 0x3FDF454380000000
  %3881 = fmul fast float %3880, %3874
  %3882 = fadd fast float %3881, %3878
  %3883 = fadd fast float %3882, %3879
  %3884 = call float @dx.op.dot3.f32(i32 55, float %3869, float %3870, float %3871, float %2778, float %2779, float %2780)  ; Dot3(ax,ay,az,bx,by,bz)
  %3885 = fmul fast float %3884, 0x3FDF454380000000
  %3886 = fmul fast float %3884, %3884
  %3887 = fmul fast float %3886, 0x3FEE471020000000
  %3888 = fadd fast float %3887, 0xBFD42F6020000000
  %3889 = call float @dx.op.dot3.f32(i32 55, float %3834, float %3872, float %3873, float 0x3FD20DD760000000, float %3885, float %3888)  ; Dot3(ax,ay,az,bx,by,bz)
  %3890 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3750)  ; FMax(a,b)
  %3891 = call float @dx.op.dot3.f32(i32 55, float %3771, float %3774, float %3777, float %3771, float %3774, float %3777)  ; Dot3(ax,ay,az,bx,by,bz)
  %3892 = fcmp fast oeq float %3891, 0.000000e+00
  %3893 = fcmp fast oeq float %3890, 0.000000e+00
  %3894 = or i1 %3893, %3892
  br i1 %3894, label %3924, label %3895

; <label>:3895                                    ; preds = %3868
  %3896 = fsub fast float -0.000000e+00, %3777
  %3897 = fsub fast float -0.000000e+00, %3771
  %3898 = call float @dx.op.unary.f32(i32 24, float %3891)  ; Sqrt(value)
  %3899 = fdiv fast float %3898, %3890
  %3900 = fcmp fast ogt float %3899, 0x3FFB6F8900000000
  %3901 = select i1 %3900, float 0x3FFB6F8900000000, float %3899
  %3902 = fmul fast float %3901, 0x3FE8A23460000000
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = call float @dx.op.binary.f32(i32 35, float %3901, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3905 = fmul fast float %3903, %3890
  %3906 = fmul fast float %3904, 0x3FF279A740000000
  %3907 = fadd fast float %3906, -1.000000e+00
  %3908 = call float @dx.op.dot3.f32(i32 55, float %3896, float %3897, float %3774, float %3896, float %3897, float %3774)  ; Dot3(ax,ay,az,bx,by,bz)
  %3909 = call float @dx.op.unary.f32(i32 25, float %3908)  ; Rsqrt(value)
  %3910 = fmul fast float %3909, %3896
  %3911 = fmul fast float %3909, %3897
  %3912 = fmul fast float %3909, %3774
  %3913 = fmul fast float %3907, %3907
  %3914 = fsub fast float 1.000000e+00, %3913
  %3915 = fmul fast float %3904, 0x40005F8BE0000000
  %3916 = fsub fast float 0x400C5BF8A0000000, %3915
  %3917 = fdiv fast float %3905, %3916
  %3918 = fmul fast float %3917, 0x3FEE31C3C0000000
  %3919 = fmul fast float %3918, %3914
  %3920 = fmul fast float %3904, 0x3FDACB7480000000
  %3921 = fadd fast float %3920, 0xBFD7347680000000
  %3922 = fmul fast float %3921, %3917
  %3923 = fmul fast float %3922, %3914
  br label %3924

; <label>:3924                                    ; preds = %3895, %3868
  %3925 = phi float [ %3910, %3895 ], [ 0.000000e+00, %3868 ]
  %3926 = phi float [ %3911, %3895 ], [ 0.000000e+00, %3868 ]
  %3927 = phi float [ %3912, %3895 ], [ 0.000000e+00, %3868 ]
  %3928 = phi float [ %3919, %3895 ], [ 0.000000e+00, %3868 ]
  %3929 = phi float [ %3923, %3895 ], [ 0.000000e+00, %3868 ]
  %3930 = call float @dx.op.dot3.f32(i32 55, float %3925, float %3926, float %3927, float %2765, float %2766, float %2767)  ; Dot3(ax,ay,az,bx,by,bz)
  %3931 = fmul fast float %3930, %3930
  %3932 = fmul fast float %3931, 0x3FEE471020000000
  %3933 = fadd fast float %3932, 0xBFD42F6020000000
  %3934 = fmul fast float %3890, 0x3FD20DD760000000
  %3935 = fmul fast float %3933, %3929
  %3936 = fmul fast float %3928, 0x3FDF454380000000
  %3937 = fmul fast float %3936, %3930
  %3938 = fadd fast float %3937, %3934
  %3939 = fadd fast float %3938, %3935
  %3940 = call float @dx.op.dot3.f32(i32 55, float %3925, float %3926, float %3927, float %2778, float %2779, float %2780)  ; Dot3(ax,ay,az,bx,by,bz)
  %3941 = fmul fast float %3940, 0x3FDF454380000000
  %3942 = fmul fast float %3940, %3940
  %3943 = fmul fast float %3942, 0x3FEE471020000000
  %3944 = fadd fast float %3943, 0xBFD42F6020000000
  %3945 = call float @dx.op.dot3.f32(i32 55, float %3890, float %3928, float %3929, float 0x3FD20DD760000000, float %3941, float %3944)  ; Dot3(ax,ay,az,bx,by,bz)
  %3946 = call float @dx.op.binary.f32(i32 35, float %3827, float 0.000000e+00)  ; FMax(a,b)
  %3947 = call float @dx.op.binary.f32(i32 35, float %3883, float 0.000000e+00)  ; FMax(a,b)
  %3948 = call float @dx.op.binary.f32(i32 35, float %3939, float 0.000000e+00)  ; FMax(a,b)
  %3949 = call float @dx.op.binary.f32(i32 35, float %3833, float 0.000000e+00)  ; FMax(a,b)
  %3950 = call float @dx.op.binary.f32(i32 35, float %3889, float 0.000000e+00)  ; FMax(a,b)
  %3951 = call float @dx.op.binary.f32(i32 35, float %3945, float 0.000000e+00)  ; FMax(a,b)
  %3952 = fsub fast float %3148, %3946
  %3953 = fsub fast float %3149, %3947
  %3954 = fsub fast float %3150, %3948
  %3955 = fmul fast float %3952, %2829
  %3956 = fmul fast float %3953, %2829
  %3957 = fmul fast float %3954, %2829
  %3958 = fadd fast float %3955, %3946
  %3959 = fadd fast float %3956, %3947
  %3960 = fadd fast float %3957, %3948
  %3961 = fsub fast float %3145, %3949
  %3962 = fsub fast float %3146, %3950
  %3963 = fsub fast float %3147, %3951
  %3964 = fmul fast float %3961, %2829
  %3965 = fmul fast float %3962, %2829
  %3966 = fmul fast float %3963, %2829
  %3967 = fadd fast float %3964, %3949
  %3968 = fadd fast float %3965, %3950
  %3969 = fadd fast float %3966, %3951
  br label %3970

; <label>:3970                                    ; preds = %3924, %3144
  %3971 = phi float [ %3967, %3924 ], [ %3145, %3144 ]
  %3972 = phi float [ %3968, %3924 ], [ %3146, %3144 ]
  %3973 = phi float [ %3969, %3924 ], [ %3147, %3144 ]
  %3974 = phi float [ %3958, %3924 ], [ %3148, %3144 ]
  %3975 = phi float [ %3959, %3924 ], [ %3149, %3144 ]
  %3976 = phi float [ %3960, %3924 ], [ %3150, %3144 ]
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 0
  %3979 = call float @dx.op.binary.f32(i32 36, float %2762, float %3978)  ; FMin(a,b)
  %3980 = fsub fast float 1.000000e+00, %2781
  %3981 = fmul fast float %3979, %3980
  %3982 = fsub fast float 1.000000e+00, %3981
  %3983 = bitcast float %3982 to i32
  %3984 = sub nsw i32 2129859010, %3983
  %3985 = bitcast i32 %3984 to float
  %3986 = call float @dx.op.binary.f32(i32 36, float %2763, float %3978)  ; FMin(a,b)
  %3987 = fmul fast float %3986, %3980
  %3988 = fsub fast float 1.000000e+00, %3987
  %3989 = bitcast float %3988 to i32
  %3990 = sub nsw i32 2129859010, %3989
  %3991 = bitcast i32 %3990 to float
  %3992 = call float @dx.op.binary.f32(i32 36, float %2764, float %3978)  ; FMin(a,b)
  %3993 = fmul fast float %3992, %3980
  %3994 = fsub fast float 1.000000e+00, %3993
  %3995 = bitcast float %3994 to i32
  %3996 = sub nsw i32 2129859010, %3995
  %3997 = bitcast i32 %3996 to float
  %3998 = fmul fast float %3974, %2781
  %3999 = fmul fast float %3998, %3985
  %4000 = fmul fast float %3975, %2781
  %4001 = fmul fast float %4000, %3991
  %4002 = fmul fast float %3976, %2781
  %4003 = fmul fast float %4002, %3997
  %4004 = call float @dx.op.binary.f32(i32 36, float %2759, float %3978)  ; FMin(a,b)
  %4005 = fmul fast float %4004, %3980
  %4006 = fsub fast float 1.000000e+00, %4005
  %4007 = bitcast float %4006 to i32
  %4008 = sub nsw i32 2129859010, %4007
  %4009 = bitcast i32 %4008 to float
  %4010 = call float @dx.op.binary.f32(i32 36, float %2760, float %3978)  ; FMin(a,b)
  %4011 = fmul fast float %4010, %3980
  %4012 = fsub fast float 1.000000e+00, %4011
  %4013 = bitcast float %4012 to i32
  %4014 = sub nsw i32 2129859010, %4013
  %4015 = bitcast i32 %4014 to float
  %4016 = call float @dx.op.binary.f32(i32 36, float %2770, float %3978)  ; FMin(a,b)
  %4017 = fmul fast float %4016, %3980
  %4018 = fsub fast float 1.000000e+00, %4017
  %4019 = bitcast float %4018 to i32
  %4020 = sub nsw i32 2129859010, %4019
  %4021 = bitcast i32 %4020 to float
  %4022 = fmul fast float %3971, %2781
  %4023 = fmul fast float %4022, %4009
  %4024 = fmul fast float %3972, %2781
  %4025 = fmul fast float %4024, %4015
  %4026 = fmul fast float %3973, %2781
  %4027 = fmul fast float %4026, %4021
  %4028 = call float @dx.op.dot3.f32(i32 55, float %3999, float %4001, float %4003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4029 = select i1 %192, float 0.000000e+00, float %3999
  %4030 = select i1 %192, float %4028, float %4001
  %4031 = select i1 %192, float 0.000000e+00, float %4003
  %4032 = call float @dx.op.dot3.f32(i32 55, float %4023, float %4025, float %4027, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4033 = select i1 %192, float 0.000000e+00, float %4023
  %4034 = select i1 %192, float %4032, float %4025
  %4035 = select i1 %192, float 0.000000e+00, float %4027
  %4036 = fmul fast float %2772, 9.843750e-01
  %4037 = fmul fast float %2768, 9.843750e-01
  %4038 = fadd fast float %4036, 7.812500e-03
  %4039 = fadd fast float %4037, 7.812500e-03
  %4040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4038, float %4039, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4041 = extractvalue %dx.types.ResRet.f32 %4040, 2
  %4042 = extractvalue %dx.types.ResRet.f32 %4040, 3
  %4043 = fmul fast float %4041, %2759
  %4044 = fmul fast float %4041, %2760
  %4045 = fmul fast float %4041, %2770
  %4046 = fadd fast float %4043, %4042
  %4047 = fadd fast float %4044, %4042
  %4048 = fadd fast float %4045, %4042
  %4049 = fcmp fast ogt float %2136, 0.000000e+00
  br i1 %4049, label %4050, label %4076

; <label>:4050                                    ; preds = %3970
  %4051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2136, float %2772, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4052 = extractvalue %dx.types.ResRet.f32 %4051, 0
  %4053 = extractvalue %dx.types.ResRet.f32 %4051, 1
  %4054 = extractvalue %dx.types.ResRet.f32 %4051, 2
  %4055 = fadd fast float %4052, -5.000000e-01
  %4056 = fadd fast float %4053, -5.000000e-01
  %4057 = fadd fast float %4054, -5.000000e-01
  %4058 = fsub fast float 1.000000e+00, %2759
  %4059 = fsub fast float 1.000000e+00, %2760
  %4060 = fsub fast float 1.000000e+00, %2770
  %4061 = fmul fast float %2759, 4.000000e+00
  %4062 = fmul fast float %4061, %4058
  %4063 = fmul fast float %4062, %4055
  %4064 = fmul fast float %2760, 4.000000e+00
  %4065 = fmul fast float %4064, %4059
  %4066 = fmul fast float %4065, %4056
  %4067 = fmul fast float %2770, 4.000000e+00
  %4068 = fmul fast float %4067, %4060
  %4069 = fmul fast float %4068, %4057
  %4070 = fadd fast float %4063, %4046
  %4071 = fadd fast float %4066, %4047
  %4072 = fadd fast float %4069, %4048
  %4073 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4074 = call float @dx.op.unary.f32(i32 7, float %4071)  ; Saturate(value)
  %4075 = call float @dx.op.unary.f32(i32 7, float %4072)  ; Saturate(value)
  br label %4076

; <label>:4076                                    ; preds = %4050, %3970
  %4077 = phi float [ %4073, %4050 ], [ %4046, %3970 ]
  %4078 = phi float [ %4074, %4050 ], [ %4047, %3970 ]
  %4079 = phi float [ %4075, %4050 ], [ %4048, %3970 ]
  %4080 = call float @dx.op.binary.f32(i32 35, float %4078, float %4079)  ; FMax(a,b)
  %4081 = call float @dx.op.binary.f32(i32 35, float %4077, float %4080)  ; FMax(a,b)
  %4082 = fsub fast float 1.000000e+00, %4081
  %4083 = fmul fast float %4082, %4029
  %4084 = fmul fast float %4082, %4030
  %4085 = fmul fast float %4082, %4031
  %4086 = call float @dx.op.dot3.f32(i32 55, float %2762, float %2763, float %2764, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4087 = fcmp fast ogt float %4086, 0x3E7FF19E20000000
  %4088 = fdiv fast float 1.000000e+00, %4086
  %4089 = select i1 %4087, float %4088, float 0.000000e+00
  %4090 = fmul fast float %4089, %2762
  %4091 = fmul fast float %4089, %2763
  %4092 = fmul fast float %4089, %2764
  %4093 = fadd fast float %4090, -1.000000e+00
  %4094 = fadd fast float %4091, -1.000000e+00
  %4095 = fadd fast float %4092, -1.000000e+00
  %4096 = fmul fast float %4093, 5.000000e-01
  %4097 = fmul fast float %4094, 5.000000e-01
  %4098 = fmul fast float %4095, 5.000000e-01
  %4099 = fadd fast float %4096, 1.000000e+00
  %4100 = fadd fast float %4097, 1.000000e+00
  %4101 = fadd fast float %4098, 1.000000e+00
  %4102 = fmul fast float %4077, %4033
  %4103 = fmul fast float %4078, %4034
  %4104 = fmul fast float %4079, %4035
  %4105 = fsub fast float 1.000000e+00, %2772
  %4106 = bitcast float %4105 to i32
  %4107 = sitofp i32 %4106 to float
  %4108 = fmul fast float %4107, 5.000000e+00
  %4109 = fadd fast float %4108, 0xC1EFBF8940000000
  %4110 = fptosi float %4109 to i32
  %4111 = bitcast i32 %4110 to float
  %4112 = fmul fast float %4111, %2135
  %4113 = fmul fast float %4029, %4112
  %4114 = fmul fast float %4113, %4082
  %4115 = fmul fast float %4114, %4099
  %4116 = fmul fast float %4030, %4112
  %4117 = fmul fast float %4116, %4082
  %4118 = fmul fast float %4117, %4100
  %4119 = fmul fast float %4031, %4112
  %4120 = fmul fast float %4119, %4082
  %4121 = fmul fast float %4120, %4101
  %4122 = fmul fast float %4083, %2156
  %4123 = fmul fast float %4084, %2156
  %4124 = fmul fast float %4085, %2156
  %4125 = fadd fast float %4102, %2137
  %4126 = fadd fast float %4125, %4115
  %4127 = fmul fast float %4126, %2156
  %4128 = fadd fast float %4103, %2138
  %4129 = fadd fast float %4128, %4118
  %4130 = fmul fast float %4129, %2156
  %4131 = fadd fast float %4104, %2139
  %4132 = fadd fast float %4131, %4121
  %4133 = fmul fast float %4132, %2156
  %4134 = bitcast i32 %2784 to float
  %4135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.f32 %4135, 3
  %4137 = fcmp fast oeq float %4136, 0.000000e+00
  br i1 %4137, label %4365, label %4138

; <label>:4138                                    ; preds = %4076
  %4139 = extractvalue %dx.types.CBufRet.f32 %4135, 0
  %4140 = extractvalue %dx.types.CBufRet.f32 %4135, 1
  %4141 = extractvalue %dx.types.CBufRet.f32 %4135, 2
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 0
  %4144 = extractvalue %dx.types.CBufRet.f32 %4142, 1
  %4145 = extractvalue %dx.types.CBufRet.f32 %4142, 2
  %4146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4146, 0
  %4148 = extractvalue %dx.types.CBufRet.f32 %4146, 1
  %4149 = call float @dx.op.dot3.f32(i32 55, float %4143, float %4144, float %4145, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4150 = select i1 %192, float %4147, float %4143
  %4151 = select i1 %192, float %4149, float %4144
  %4152 = select i1 %192, float %4148, float %4145
  %4153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4154 = extractvalue %dx.types.CBufRet.f32 %4153, 1
  %4155 = fcmp fast une float %4154, 0.000000e+00
  br i1 %4155, label %4156, label %4173

; <label>:4156                                    ; preds = %4138
  %4157 = fptoui float %66 to i32
  %4158 = fptoui float %67 to i32
  %4159 = lshr i32 %4157, 4
  %4160 = lshr i32 %4158, 4
  %4161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.f32 %4161, 0
  %4163 = fptoui float %4162 to i32
  %4164 = add i32 %4163, 15
  %4165 = lshr i32 %4164, 4
  %4166 = mul i32 %4165, %4160
  %4167 = add i32 %4166, %4159
  %4168 = shl i32 %4167, 3
  %4169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4168, i32 undef)  ; BufferLoad(srv,index,wot)
  %4170 = extractvalue %dx.types.ResRet.i32 %4169, 0
  %4171 = and i32 %4170, -268435456
  %4172 = icmp eq i32 %4171, -1342177280
  br i1 %4172, label %4183, label %4173

; <label>:4173                                    ; preds = %4156, %4138
  %4174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4175 = extractvalue %dx.types.CBufRet.f32 %4174, 2
  %4176 = extractvalue %dx.types.CBufRet.f32 %4174, 3
  %4177 = fmul fast float %4175, %66
  %4178 = fmul fast float %4176, %67
  %4179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4177, float %4178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.ResRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.ResRet.f32 %4179, 2
  br label %4183

; <label>:4183                                    ; preds = %4173, %4156
  %4184 = phi float [ %4180, %4173 ], [ 0.000000e+00, %4156 ]
  %4185 = phi float [ %4181, %4173 ], [ 0.000000e+00, %4156 ]
  %4186 = phi float [ %4182, %4173 ], [ 0.000000e+00, %4156 ]
  %4187 = call float @dx.op.binary.f32(i32 36, float %4185, float %4186)  ; FMin(a,b)
  %4188 = call float @dx.op.binary.f32(i32 36, float %4184, float %4187)  ; FMin(a,b)
  %4189 = fcmp fast ogt float %4188, 0.000000e+00
  br i1 %4189, label %4190, label %4365, !dx.controlflow.hints !86

; <label>:4190                                    ; preds = %4183
  %4191 = fmul fast float %4184, %4150
  %4192 = fmul fast float %4185, %4151
  %4193 = fmul fast float %4186, %4152
  %4194 = fsub fast float %4139, %2758
  %4195 = fsub fast float %4140, %2757
  %4196 = fsub fast float %4141, %2756
  %4197 = call float @dx.op.dot3.f32(i32 55, float %4194, float %4195, float %4196, float %4194, float %4195, float %4196)  ; Dot3(ax,ay,az,bx,by,bz)
  %4198 = call float @dx.op.unary.f32(i32 25, float %4197)  ; Rsqrt(value)
  %4199 = fmul fast float %4198, %4194
  %4200 = fmul fast float %4198, %4195
  %4201 = fmul fast float %4198, %4196
  %4202 = call float @dx.op.dot3.f32(i32 55, float %4139, float %4140, float %4141, float %2765, float %2766, float %2767)  ; Dot3(ax,ay,az,bx,by,bz)
  %4203 = call float @dx.op.dot3.f32(i32 55, float %2755, float %2754, float %2753, float %4199, float %4200, float %4201)  ; Dot3(ax,ay,az,bx,by,bz)
  %4204 = call float @dx.op.unary.f32(i32 7, float %4202)  ; Saturate(value)
  %4205 = fmul fast float %4204, %4204
  %4206 = fmul fast float %4205, %4134
  %4207 = call float @dx.op.unary.f32(i32 7, float %4206)  ; Saturate(value)
  %4208 = fmul fast float %4207, %4204
  %4209 = call float @dx.op.dot3.f32(i32 55, float %2765, float %2766, float %2767, float %4199, float %4200, float %4201)  ; Dot3(ax,ay,az,bx,by,bz)
  %4210 = fmul fast float %4209, %4209
  %4211 = call float @dx.op.unary.f32(i32 6, float %4202)  ; FAbs(value)
  %4212 = fsub fast float 1.000000e+00, %2768
  %4213 = call float @dx.op.binary.f32(i32 35, float %4212, float 0x3F847AE140000000)  ; FMax(a,b)
  %4214 = fmul fast float %4213, %4213
  %4215 = fmul fast float %4214, %4214
  %4216 = fsub fast float 1.000000e+00, %4215
  %4217 = fmul fast float %2772, %2772
  %4218 = fmul fast float %4217, %4216
  %4219 = fadd fast float %4218, %4215
  %4220 = bitcast float %4219 to i32
  %4221 = ashr i32 %4220, 1
  %4222 = add nsw i32 %4221, 532487669
  %4223 = bitcast i32 %4222 to float
  %4224 = fadd fast float %4223, %2772
  %4225 = fmul fast float %4215, %4210
  %4226 = fsub fast float 1.000000e+00, %4210
  %4227 = fadd fast float %4226, %4225
  %4228 = fmul fast float %4211, %4211
  %4229 = fmul fast float %4228, %4216
  %4230 = fadd fast float %4229, %4215
  %4231 = bitcast float %4230 to i32
  %4232 = ashr i32 %4231, 1
  %4233 = add nsw i32 %4232, 532487669
  %4234 = bitcast i32 %4233 to float
  %4235 = fadd fast float %4234, %4211
  %4236 = fmul fast float %4227, %4227
  %4237 = fmul fast float %4236, %4224
  %4238 = fmul fast float %4237, %4235
  %4239 = fdiv fast float 0x3FF0A00000000000, %4238
  %4240 = fmul fast float %4239, %4215
  %4241 = call float @dx.op.unary.f32(i32 6, float %4203)  ; FAbs(value)
  %4242 = fsub fast float 1.000000e+00, %4241
  %4243 = bitcast float %4242 to i32
  %4244 = sitofp i32 %4243 to float
  %4245 = fmul fast float %4244, 5.000000e+00
  %4246 = fadd fast float %4245, 0xC1EFBF8940000000
  %4247 = fptosi float %4246 to i32
  %4248 = bitcast i32 %4247 to float
  %4249 = fsub fast float 1.000000e+00, %2759
  %4250 = fsub fast float 1.000000e+00, %2760
  %4251 = fsub fast float 1.000000e+00, %2770
  %4252 = fmul fast float %4248, %4249
  %4253 = fmul fast float %4248, %4250
  %4254 = fmul fast float %4248, %4251
  %4255 = fadd fast float %4252, %2759
  %4256 = fadd fast float %4253, %2760
  %4257 = fadd fast float %4254, %2770
  br i1 %4049, label %4258, label %4281

; <label>:4258                                    ; preds = %4190
  %4259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2136, float %4241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4260 = extractvalue %dx.types.ResRet.f32 %4259, 0
  %4261 = extractvalue %dx.types.ResRet.f32 %4259, 1
  %4262 = extractvalue %dx.types.ResRet.f32 %4259, 2
  %4263 = fadd fast float %4260, -5.000000e-01
  %4264 = fadd fast float %4261, -5.000000e-01
  %4265 = fadd fast float %4262, -5.000000e-01
  %4266 = fmul fast float %2759, 4.000000e+00
  %4267 = fmul fast float %4266, %4249
  %4268 = fmul fast float %4267, %4263
  %4269 = fmul fast float %2760, 4.000000e+00
  %4270 = fmul fast float %4269, %4250
  %4271 = fmul fast float %4270, %4264
  %4272 = fmul fast float %2770, 4.000000e+00
  %4273 = fmul fast float %4272, %4251
  %4274 = fmul fast float %4273, %4265
  %4275 = fadd fast float %4268, %4255
  %4276 = fadd fast float %4271, %4256
  %4277 = fadd fast float %4274, %4257
  %4278 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4279 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4280 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  br label %4281

; <label>:4281                                    ; preds = %4258, %4190
  %4282 = phi float [ %4278, %4258 ], [ %4255, %4190 ]
  %4283 = phi float [ %4279, %4258 ], [ %4256, %4190 ]
  %4284 = phi float [ %4280, %4258 ], [ %4257, %4190 ]
  %4285 = fmul fast float %4202, 9.843750e-01
  %4286 = fadd fast float %4285, 7.812500e-03
  %4287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4286, float %4039, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4288 = extractvalue %dx.types.ResRet.f32 %4287, 2
  %4289 = extractvalue %dx.types.ResRet.f32 %4287, 3
  %4290 = fmul fast float %4288, %2759
  %4291 = fmul fast float %4288, %2760
  %4292 = fmul fast float %4288, %2770
  %4293 = fadd fast float %4290, %4289
  %4294 = fadd fast float %4291, %4289
  %4295 = fadd fast float %4292, %4289
  br i1 %4049, label %4296, label %4319

; <label>:4296                                    ; preds = %4281
  %4297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2136, float %4202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4298 = extractvalue %dx.types.ResRet.f32 %4297, 0
  %4299 = extractvalue %dx.types.ResRet.f32 %4297, 1
  %4300 = extractvalue %dx.types.ResRet.f32 %4297, 2
  %4301 = fadd fast float %4298, -5.000000e-01
  %4302 = fadd fast float %4299, -5.000000e-01
  %4303 = fadd fast float %4300, -5.000000e-01
  %4304 = fmul fast float %2759, 4.000000e+00
  %4305 = fmul fast float %4304, %4249
  %4306 = fmul fast float %4305, %4301
  %4307 = fmul fast float %2760, 4.000000e+00
  %4308 = fmul fast float %4307, %4250
  %4309 = fmul fast float %4308, %4302
  %4310 = fmul fast float %2770, 4.000000e+00
  %4311 = fmul fast float %4310, %4251
  %4312 = fmul fast float %4311, %4303
  %4313 = fadd fast float %4306, %4293
  %4314 = fadd fast float %4309, %4294
  %4315 = fadd fast float %4312, %4295
  %4316 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4317 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4318 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  br label %4319

; <label>:4319                                    ; preds = %4296, %4281
  %4320 = phi float [ %4316, %4296 ], [ %4293, %4281 ]
  %4321 = phi float [ %4317, %4296 ], [ %4294, %4281 ]
  %4322 = phi float [ %4318, %4296 ], [ %4295, %4281 ]
  %4323 = call float @dx.op.binary.f32(i32 35, float %4321, float %4322)  ; FMax(a,b)
  %4324 = call float @dx.op.binary.f32(i32 35, float %4320, float %4323)  ; FMax(a,b)
  %4325 = fsub fast float 1.000000e+00, %4324
  %4326 = fmul fast float %4282, %4240
  %4327 = fmul fast float %4283, %4240
  %4328 = fmul fast float %4284, %4240
  %4329 = fsub fast float 1.000000e+00, %4203
  %4330 = bitcast float %4329 to i32
  %4331 = sitofp i32 %4330 to float
  %4332 = fmul fast float %4331, 5.000000e+00
  %4333 = fadd fast float %4332, 0xC1EFBF8940000000
  %4334 = fptosi float %4333 to i32
  %4335 = bitcast i32 %4334 to float
  %4336 = fmul fast float %4335, %2135
  %4337 = fmul fast float %4325, %4336
  %4338 = fmul fast float %4337, %4099
  %4339 = fmul fast float %4337, %4100
  %4340 = fmul fast float %4337, %4101
  %4341 = fadd fast float %4338, %4326
  %4342 = fadd fast float %4339, %4327
  %4343 = fadd fast float %4340, %4328
  %4344 = fmul fast float %4208, %4191
  %4345 = fmul fast float %4344, %4325
  %4346 = fmul fast float %4208, %4192
  %4347 = fmul fast float %4346, %4325
  %4348 = fmul fast float %4208, %4193
  %4349 = fmul fast float %4348, %4325
  %4350 = fmul fast float %4344, %4341
  %4351 = fmul fast float %4346, %4342
  %4352 = fmul fast float %4348, %4343
  %4353 = fadd fast float %4345, %4083
  %4354 = fmul fast float %4353, %2156
  %4355 = fadd fast float %4347, %4084
  %4356 = fmul fast float %4355, %2156
  %4357 = fadd fast float %4349, %4085
  %4358 = fmul fast float %4357, %2156
  %4359 = fadd fast float %4350, %4126
  %4360 = fmul fast float %4359, %2156
  %4361 = fadd fast float %4351, %4129
  %4362 = fmul fast float %4361, %2156
  %4363 = fadd fast float %4352, %4132
  %4364 = fmul fast float %4363, %2156
  br label %4365

; <label>:4365                                    ; preds = %4319, %4183, %4076
  %4366 = phi float [ %4127, %4076 ], [ %4127, %4183 ], [ %4360, %4319 ]
  %4367 = phi float [ %4130, %4076 ], [ %4130, %4183 ], [ %4362, %4319 ]
  %4368 = phi float [ %4133, %4076 ], [ %4133, %4183 ], [ %4364, %4319 ]
  %4369 = phi float [ %4122, %4076 ], [ %4122, %4183 ], [ %4354, %4319 ]
  %4370 = phi float [ %4123, %4076 ], [ %4123, %4183 ], [ %4356, %4319 ]
  %4371 = phi float [ %4124, %4076 ], [ %4124, %4183 ], [ %4358, %4319 ]
  %4372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.i32 %4372, 0
  %4374 = icmp eq i32 %4373, 0
  br i1 %4374, label %4809, label %4375

; <label>:4375                                    ; preds = %4365
  %4376 = fptoui float %66 to i32
  %4377 = fptoui float %67 to i32
  %4378 = lshr i32 %4376, 4
  %4379 = lshr i32 %4377, 4
  %4380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.i32 %4380, 0
  %4382 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4379, i32 %4381, i32 %4378)  ; UMad(a,b,c)
  %4383 = add nsw i32 %4373, -1
  %4384 = call i32 @dx.op.binary.i32(i32 37, i32 %4383, i32 0)  ; IMax(a,b)
  %4385 = call float @dx.op.binary.f32(i32 35, float %61, float 0.000000e+00)  ; FMax(a,b)
  %4386 = fptoui float %4385 to i32
  %4387 = lshr i32 %4386, 5
  %4388 = call i32 @dx.op.binary.i32(i32 40, i32 %4387, i32 8191)  ; UMin(a,b)
  %4389 = shl i32 %4388, 2
  %4390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4391 = extractvalue %dx.types.ResRet.i32 %4390, 0
  %4392 = lshr i32 %4391, 16
  %4393 = and i32 %4391, 65535
  %4394 = lshr i32 %4391, 21
  %4395 = lshr i32 %4393, 5
  %4396 = call i32 @dx.op.binary.i32(i32 40, i32 %4395, i32 %4384)  ; UMin(a,b)
  %4397 = icmp ugt i32 %4394, %4396
  br i1 %4397, label %4809, label %4398

; <label>:4398                                    ; preds = %4375
  br label %4399

; <label>:4399                                    ; preds = %4799, %4398
  %4400 = phi i32 [ %4806, %4799 ], [ %4394, %4398 ]
  %4401 = phi float [ %4800, %4799 ], [ %4366, %4398 ]
  %4402 = phi float [ %4801, %4799 ], [ %4367, %4398 ]
  %4403 = phi float [ %4802, %4799 ], [ %4368, %4398 ]
  %4404 = phi float [ %4803, %4799 ], [ %4369, %4398 ]
  %4405 = phi float [ %4804, %4799 ], [ %4370, %4398 ]
  %4406 = phi float [ %4805, %4799 ], [ %4371, %4398 ]
  %4407 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4408 = extractvalue %dx.types.CBufRet.i32 %4407, 0
  %4409 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4382, i32 %4408, i32 %4400)  ; UMad(a,b,c)
  %4410 = shl i32 %4409, 2
  %4411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4410, i32 undef)  ; BufferLoad(srv,index,wot)
  %4412 = extractvalue %dx.types.ResRet.i32 %4411, 0
  %4413 = shl i32 %4400, 5
  %4414 = sub nsw i32 %4392, %4413
  %4415 = call i32 @dx.op.binary.i32(i32 37, i32 %4414, i32 0)  ; IMax(a,b)
  %4416 = call i32 @dx.op.binary.i32(i32 38, i32 %4415, i32 31)  ; IMin(a,b)
  %4417 = sub nsw i32 1, %4392
  %4418 = add nsw i32 %4417, %4393
  %4419 = call i32 @dx.op.binary.i32(i32 37, i32 %4418, i32 0)  ; IMax(a,b)
  %4420 = call i32 @dx.op.binary.i32(i32 38, i32 %4419, i32 32)  ; IMin(a,b)
  %4421 = and i32 %4420, 31
  %4422 = shl i32 -1, %4421
  %4423 = xor i32 %4422, -1
  %4424 = and i32 %4416, 31
  %4425 = shl i32 %4423, %4424
  %4426 = icmp eq i32 %4420, 32
  %4427 = select i1 %4426, i32 -1, i32 %4425
  %4428 = and i32 %4427, %4412
  %4429 = icmp eq i32 %4428, 0
  br i1 %4429, label %4799, label %4430

; <label>:4430                                    ; preds = %4399
  br label %4431

; <label>:4431                                    ; preds = %4511, %4430
  %4432 = phi i32 [ %4443, %4511 ], [ %4428, %4430 ]
  %4433 = phi float [ %4512, %4511 ], [ %4401, %4430 ]
  %4434 = phi float [ %4513, %4511 ], [ %4402, %4430 ]
  %4435 = phi float [ %4514, %4511 ], [ %4403, %4430 ]
  %4436 = phi float [ %4515, %4511 ], [ %4404, %4430 ]
  %4437 = phi float [ %4516, %4511 ], [ %4405, %4430 ]
  %4438 = phi float [ %4517, %4511 ], [ %4406, %4430 ]
  %4439 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4432)  ; FirstbitLo(value)
  %4440 = add i32 %4439, %4413
  %4441 = and i32 %4439, 31
  %4442 = shl i32 1, %4441
  %4443 = xor i32 %4442, %4432
  %4444 = mul i32 %4440, 112
  %4445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4444, i32 undef)  ; BufferLoad(srv,index,wot)
  %4446 = extractvalue %dx.types.ResRet.f32 %4445, 0
  %4447 = extractvalue %dx.types.ResRet.f32 %4445, 1
  %4448 = extractvalue %dx.types.ResRet.f32 %4445, 2
  %4449 = or i32 %4444, 12
  %4450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4449, i32 undef)  ; BufferLoad(srv,index,wot)
  %4451 = extractvalue %dx.types.ResRet.f32 %4450, 0
  %4452 = add i32 %4444, 44
  %4453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4452, i32 undef)  ; BufferLoad(srv,index,wot)
  %4454 = extractvalue %dx.types.ResRet.f32 %4453, 0
  %4455 = add i32 %4444, 48
  %4456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4455, i32 undef)  ; BufferLoad(srv,index,wot)
  %4457 = extractvalue %dx.types.ResRet.f32 %4456, 0
  %4458 = extractvalue %dx.types.ResRet.f32 %4456, 1
  %4459 = extractvalue %dx.types.ResRet.f32 %4456, 2
  %4460 = add i32 %4444, 80
  %4461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4460, i32 undef)  ; BufferLoad(srv,index,wot)
  %4462 = extractvalue %dx.types.ResRet.f32 %4461, 1
  %4463 = extractvalue %dx.types.ResRet.f32 %4461, 2
  %4464 = call float @dx.op.dot3.f32(i32 55, float %4446, float %4447, float %4448, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4465 = select i1 %192, float %4462, float %4446
  %4466 = select i1 %192, float %4464, float %4447
  %4467 = select i1 %192, float %4463, float %4448
  %4468 = fsub fast float %4457, %121
  %4469 = fsub fast float %4458, %122
  %4470 = fsub fast float %4459, %123
  %4471 = call float @dx.op.dot3.f32(i32 55, float %4468, float %4469, float %4470, float %4468, float %4469, float %4470)  ; Dot3(ax,ay,az,bx,by,bz)
  %4472 = call float @dx.op.unary.f32(i32 24, float %4471)  ; Sqrt(value)
  %4473 = fdiv fast float 1.000000e+00, %4472
  %4474 = fmul fast float %4473, %4468
  %4475 = fmul fast float %4473, %4469
  %4476 = fmul fast float %4473, %4470
  %4477 = fadd fast float %4472, %4451
  %4478 = fdiv fast float 1.000000e+00, %4477
  %4479 = fmul float %4454, %4478
  %4480 = fmul float %4479, %4479
  %4481 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4482 = and i32 %4442, %4428
  %4483 = icmp eq i32 %4482, 0
  br i1 %4483, label %4506, label %4484, !dx.controlflow.hints !87

; <label>:4484                                    ; preds = %4431
  %4485 = lshr i32 %4376, 5
  %4486 = lshr i32 %4377, 5
  %4487 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %4485, i32 %4486, i32 %4440, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4488 = extractvalue %dx.types.ResRet.i32 %4487, 0
  %4489 = and i32 %4488, 3
  %4490 = icmp eq i32 %4489, 0
  %4491 = select i1 %4490, float 1.000000e+00, float 0.000000e+00
  %4492 = icmp eq i32 %4489, 3
  br i1 %4492, label %4493, label %4506

; <label>:4493                                    ; preds = %4484
  %4494 = lshr i32 %4488, 10
  %4495 = and i32 %4494, 8160
  %4496 = and i32 %4377, 31
  %4497 = or i32 %4495, %4496
  %4498 = lshr i32 %4488, 1
  %4499 = and i32 %4498, 16352
  %4500 = and i32 %4376, 31
  %4501 = or i32 %4499, %4500
  %4502 = lshr i32 %4488, 23
  %4503 = and i32 %4502, 255
  %4504 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %4501, i32 %4497, i32 %4503, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4505 = extractvalue %dx.types.ResRet.f32 %4504, 0
  br label %4506

; <label>:4506                                    ; preds = %4493, %4484, %4431
  %4507 = phi float [ %4505, %4493 ], [ %4491, %4484 ], [ 0.000000e+00, %4431 ]
  %4508 = call float @dx.op.binary.f32(i32 36, float %4507, float %4507)  ; FMin(a,b)
  %4509 = call float @dx.op.binary.f32(i32 36, float %4507, float %4508)  ; FMin(a,b)
  %4510 = fcmp fast ogt float %4509, 0.000000e+00
  br i1 %4510, label %4519, label %4511, !dx.controlflow.hints !88

; <label>:4511                                    ; preds = %4755, %4506
  %4512 = phi float [ %4433, %4506 ], [ %4795, %4755 ]
  %4513 = phi float [ %4434, %4506 ], [ %4796, %4755 ]
  %4514 = phi float [ %4435, %4506 ], [ %4797, %4755 ]
  %4515 = phi float [ %4436, %4506 ], [ %4789, %4755 ]
  %4516 = phi float [ %4437, %4506 ], [ %4790, %4755 ]
  %4517 = phi float [ %4438, %4506 ], [ %4791, %4755 ]
  %4518 = icmp eq i32 %4432, %4442
  br i1 %4518, label %4798, label %4431

; <label>:4519                                    ; preds = %4506
  %4520 = fmul fast float %4507, %4465
  %4521 = fmul fast float %4507, %4466
  %4522 = fmul fast float %4507, %4467
  %4523 = fsub fast float %4459, %2558
  %4524 = fcmp fast ogt float %4523, 0.000000e+00
  %4525 = fsub fast float %123, %2558
  %4526 = fcmp fast ogt float %4525, 0.000000e+00
  %4527 = xor i1 %4526, %4524
  %4528 = fsub fast float %2558, %4459
  %4529 = fmul fast float %4528, 2.000000e+00
  %4530 = fadd fast float %4529, %4459
  %4531 = select i1 %4527, float %4459, float %4530
  %4532 = fsub fast float %4531, %123
  %4533 = call float @dx.op.dot3.f32(i32 55, float %4468, float %4469, float %4532, float %4468, float %4469, float %4532)  ; Dot3(ax,ay,az,bx,by,bz)
  %4534 = call float @dx.op.unary.f32(i32 25, float %4533)  ; Rsqrt(value)
  %4535 = fmul fast float %4534, %4468
  %4536 = fmul fast float %4534, %4469
  %4537 = fmul fast float %4534, %4532
  %4538 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2566)  ; Dot3(ax,ay,az,bx,by,bz)
  %4539 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4535, float %4536, float %4537)  ; Dot3(ax,ay,az,bx,by,bz)
  %4540 = fdiv fast float 1.000000e+00, %4539
  %4541 = fmul fast float %4540, %4538
  %4542 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4525, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4543 = fcmp fast ogt float %4542, 0.000000e+00
  %4544 = fcmp fast olt float %4542, 0.000000e+00
  %4545 = zext i1 %4543 to i32
  %4546 = zext i1 %4544 to i32
  %4547 = sub nsw i32 %4545, %4546
  %4548 = sitofp i32 %4547 to float
  %4549 = fsub fast float %4531, %2558
  %4550 = call float @dx.op.dot3.f32(i32 55, float %4468, float %4469, float %4549, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4551 = fcmp fast ogt float %4550, 0.000000e+00
  %4552 = fcmp fast olt float %4550, 0.000000e+00
  %4553 = zext i1 %4551 to i32
  %4554 = zext i1 %4552 to i32
  %4555 = sub nsw i32 %4553, %4554
  %4556 = sitofp i32 %4555 to float
  %4557 = fcmp fast une float %4548, %4556
  br i1 %4557, label %4558, label %4568

; <label>:4558                                    ; preds = %4519
  %4559 = fmul fast float %4541, %4537
  %4560 = fmul fast float %4541, %4536
  %4561 = fmul fast float %4541, %4535
  %4562 = fmul fast float %4561, %4561
  %4563 = fmul fast float %4560, %4560
  %4564 = fadd fast float %4562, %4563
  %4565 = fmul fast float %4559, %4559
  %4566 = fadd fast float %4564, %4565
  %4567 = call float @dx.op.unary.f32(i32 24, float %4566)  ; Sqrt(value)
  br label %4580

; <label>:4568                                    ; preds = %4519
  %4569 = icmp slt i32 %4547, 0
  br i1 %4569, label %4570, label %4580

; <label>:4570                                    ; preds = %4568
  %4571 = fsub fast float %121, %4457
  %4572 = fsub fast float %122, %4458
  %4573 = fsub fast float %123, %4531
  %4574 = fmul fast float %4571, %4571
  %4575 = fmul fast float %4572, %4572
  %4576 = fadd fast float %4574, %4575
  %4577 = fmul fast float %4573, %4573
  %4578 = fadd fast float %4576, %4577
  %4579 = call float @dx.op.unary.f32(i32 24, float %4578)  ; Sqrt(value)
  br label %4580

; <label>:4580                                    ; preds = %4570, %4568, %4558
  %4581 = phi float [ %4567, %4558 ], [ %4579, %4570 ], [ 0.000000e+00, %4568 ]
  %4582 = and i1 %4526, %4524
  %4583 = fsub fast float -0.000000e+00, %4581
  %4584 = select i1 %4582, float -0.000000e+00, float %4583
  %4585 = fmul fast float %2559, 0x3FF7154760000000
  %4586 = fmul fast float %4585, %4584
  %4587 = fmul fast float %2560, 0x3FF7154760000000
  %4588 = fmul fast float %4587, %4584
  %4589 = fmul fast float %2561, 0x3FF7154760000000
  %4590 = fmul fast float %4589, %4584
  %4591 = call float @dx.op.unary.f32(i32 21, float %4586)  ; Exp(value)
  %4592 = call float @dx.op.unary.f32(i32 21, float %4588)  ; Exp(value)
  %4593 = call float @dx.op.unary.f32(i32 21, float %4590)  ; Exp(value)
  %4594 = call float @dx.op.unary.f32(i32 7, float %4591)  ; Saturate(value)
  %4595 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4596 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4597 = fmul fast float %4520, %4594
  %4598 = fmul fast float %4521, %4595
  %4599 = fmul fast float %4522, %4596
  %4600 = fsub fast float %4474, %2758
  %4601 = fsub fast float %4475, %2757
  %4602 = fsub fast float %4476, %2756
  %4603 = call float @dx.op.dot3.f32(i32 55, float %4600, float %4601, float %4602, float %4600, float %4601, float %4602)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = call float @dx.op.unary.f32(i32 25, float %4603)  ; Rsqrt(value)
  %4605 = fmul fast float %4604, %4600
  %4606 = fmul fast float %4604, %4601
  %4607 = fmul fast float %4604, %4602
  %4608 = call float @dx.op.dot3.f32(i32 55, float %4474, float %4475, float %4476, float %2765, float %2766, float %2767)  ; Dot3(ax,ay,az,bx,by,bz)
  %4609 = call float @dx.op.dot3.f32(i32 55, float %2755, float %2754, float %2753, float %4605, float %4606, float %4607)  ; Dot3(ax,ay,az,bx,by,bz)
  %4610 = call float @dx.op.unary.f32(i32 7, float %4608)  ; Saturate(value)
  %4611 = fmul fast float %4610, %4481
  %4612 = fmul fast float %4610, %4610
  %4613 = fmul fast float %4612, %4134
  %4614 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4615 = fmul fast float %4611, %4614
  %4616 = bitcast float %4471 to i32
  %4617 = ashr i32 %4616, 1
  %4618 = sub nsw i32 1597463007, %4617
  %4619 = bitcast i32 %4618 to float
  %4620 = fmul fast float %4619, %4468
  %4621 = fmul fast float %4619, %4469
  %4622 = fmul fast float %4619, %4470
  %4623 = fsub fast float %4620, %2758
  %4624 = fsub fast float %4621, %2757
  %4625 = fsub fast float %4622, %2756
  %4626 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4625, float %4623, float %4624, float %4625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = call float @dx.op.unary.f32(i32 25, float %4626)  ; Rsqrt(value)
  %4628 = fmul fast float %4623, %4627
  %4629 = fmul fast float %4624, %4627
  %4630 = fmul fast float %4625, %4627
  %4631 = call float @dx.op.dot3.f32(i32 55, float %2765, float %2766, float %2767, float %4628, float %4629, float %4630)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = fmul fast float %4631, %4631
  %4633 = call float @dx.op.unary.f32(i32 6, float %4608)  ; FAbs(value)
  %4634 = fsub fast float 1.000000e+00, %2768
  %4635 = call float @dx.op.binary.f32(i32 35, float %4634, float 0x3F847AE140000000)  ; FMax(a,b)
  %4636 = fmul fast float %4635, %4635
  %4637 = fmul fast float %4636, %4636
  %4638 = fsub fast float 1.000000e+00, %4637
  %4639 = fmul fast float %2772, %2772
  %4640 = fmul fast float %4639, %4638
  %4641 = fadd fast float %4640, %4637
  %4642 = bitcast float %4641 to i32
  %4643 = ashr i32 %4642, 1
  %4644 = add nsw i32 %4643, 532487669
  %4645 = bitcast i32 %4644 to float
  %4646 = fadd fast float %4645, %2772
  %4647 = fmul fast float %4637, %4632
  %4648 = fsub fast float 1.000000e+00, %4632
  %4649 = fadd fast float %4648, %4647
  %4650 = fmul fast float %4633, %4633
  %4651 = fmul fast float %4650, %4638
  %4652 = fadd fast float %4651, %4637
  %4653 = bitcast float %4652 to i32
  %4654 = ashr i32 %4653, 1
  %4655 = add nsw i32 %4654, 532487669
  %4656 = bitcast i32 %4655 to float
  %4657 = fadd fast float %4656, %4633
  %4658 = fmul fast float %4649, %4649
  %4659 = fmul fast float %4658, %4646
  %4660 = fmul fast float %4659, %4657
  %4661 = fdiv fast float 1.000000e+00, %4660
  %4662 = bitcast float %4637 to i32
  %4663 = sitofp i32 %4662 to float
  %4664 = fmul fast float %4663, 0x3FE7F73180000000
  %4665 = fadd fast float %4664, 0x41AFE27C40000000
  %4666 = fptosi float %4665 to i32
  %4667 = bitcast i32 %4666 to float
  %4668 = fmul fast float %4454, 0x3FD80E9D60000000
  %4669 = fmul fast float %4668, %4619
  %4670 = fadd fast float %4667, %4669
  %4671 = bitcast float %4670 to i32
  %4672 = sub nsw i32 2129859010, %4671
  %4673 = bitcast i32 %4672 to float
  %4674 = fmul fast float %4637, %4661
  %4675 = fmul fast float %4674, %4667
  %4676 = fmul fast float %4675, %4673
  %4677 = call float @dx.op.unary.f32(i32 6, float %4609)  ; FAbs(value)
  %4678 = fsub fast float 1.000000e+00, %4677
  %4679 = bitcast float %4678 to i32
  %4680 = sitofp i32 %4679 to float
  %4681 = fmul fast float %4680, 5.000000e+00
  %4682 = fadd fast float %4681, 0xC1EFBF8940000000
  %4683 = fptosi float %4682 to i32
  %4684 = bitcast i32 %4683 to float
  %4685 = fsub fast float 1.000000e+00, %2759
  %4686 = fsub fast float 1.000000e+00, %2760
  %4687 = fsub fast float 1.000000e+00, %2770
  %4688 = fmul fast float %4684, %4685
  %4689 = fmul fast float %4684, %4686
  %4690 = fmul fast float %4684, %4687
  %4691 = fadd fast float %4688, %2759
  %4692 = fadd fast float %4689, %2760
  %4693 = fadd fast float %4690, %2770
  br i1 %4049, label %4694, label %4717

; <label>:4694                                    ; preds = %4580
  %4695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2136, float %4677, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4696 = extractvalue %dx.types.ResRet.f32 %4695, 0
  %4697 = extractvalue %dx.types.ResRet.f32 %4695, 1
  %4698 = extractvalue %dx.types.ResRet.f32 %4695, 2
  %4699 = fadd fast float %4696, -5.000000e-01
  %4700 = fadd fast float %4697, -5.000000e-01
  %4701 = fadd fast float %4698, -5.000000e-01
  %4702 = fmul fast float %2759, 4.000000e+00
  %4703 = fmul fast float %4702, %4685
  %4704 = fmul fast float %4703, %4699
  %4705 = fmul fast float %2760, 4.000000e+00
  %4706 = fmul fast float %4705, %4686
  %4707 = fmul fast float %4706, %4700
  %4708 = fmul fast float %2770, 4.000000e+00
  %4709 = fmul fast float %4708, %4687
  %4710 = fmul fast float %4709, %4701
  %4711 = fadd fast float %4704, %4691
  %4712 = fadd fast float %4707, %4692
  %4713 = fadd fast float %4710, %4693
  %4714 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4715 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4716 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  br label %4717

; <label>:4717                                    ; preds = %4694, %4580
  %4718 = phi float [ %4714, %4694 ], [ %4691, %4580 ]
  %4719 = phi float [ %4715, %4694 ], [ %4692, %4580 ]
  %4720 = phi float [ %4716, %4694 ], [ %4693, %4580 ]
  %4721 = fmul fast float %4608, 9.843750e-01
  %4722 = fadd fast float %4721, 7.812500e-03
  %4723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4722, float %4039, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4724 = extractvalue %dx.types.ResRet.f32 %4723, 2
  %4725 = extractvalue %dx.types.ResRet.f32 %4723, 3
  %4726 = fmul fast float %4724, %2759
  %4727 = fmul fast float %4724, %2760
  %4728 = fmul fast float %4724, %2770
  %4729 = fadd fast float %4726, %4725
  %4730 = fadd fast float %4727, %4725
  %4731 = fadd fast float %4728, %4725
  br i1 %4049, label %4732, label %4755

; <label>:4732                                    ; preds = %4717
  %4733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2136, float %4608, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4734 = extractvalue %dx.types.ResRet.f32 %4733, 0
  %4735 = extractvalue %dx.types.ResRet.f32 %4733, 1
  %4736 = extractvalue %dx.types.ResRet.f32 %4733, 2
  %4737 = fadd fast float %4734, -5.000000e-01
  %4738 = fadd fast float %4735, -5.000000e-01
  %4739 = fadd fast float %4736, -5.000000e-01
  %4740 = fmul fast float %2759, 4.000000e+00
  %4741 = fmul fast float %4740, %4685
  %4742 = fmul fast float %4741, %4737
  %4743 = fmul fast float %2760, 4.000000e+00
  %4744 = fmul fast float %4743, %4686
  %4745 = fmul fast float %4744, %4738
  %4746 = fmul fast float %2770, 4.000000e+00
  %4747 = fmul fast float %4746, %4687
  %4748 = fmul fast float %4747, %4739
  %4749 = fadd fast float %4742, %4729
  %4750 = fadd fast float %4745, %4730
  %4751 = fadd fast float %4748, %4731
  %4752 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4753 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4754 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  br label %4755

; <label>:4755                                    ; preds = %4732, %4717
  %4756 = phi float [ %4752, %4732 ], [ %4729, %4717 ]
  %4757 = phi float [ %4753, %4732 ], [ %4730, %4717 ]
  %4758 = phi float [ %4754, %4732 ], [ %4731, %4717 ]
  %4759 = call float @dx.op.binary.f32(i32 35, float %4757, float %4758)  ; FMax(a,b)
  %4760 = call float @dx.op.binary.f32(i32 35, float %4756, float %4759)  ; FMax(a,b)
  %4761 = fsub fast float 1.000000e+00, %4760
  %4762 = fmul fast float %4718, %4676
  %4763 = fmul fast float %4719, %4676
  %4764 = fmul fast float %4720, %4676
  %4765 = fsub fast float 1.000000e+00, %4609
  %4766 = bitcast float %4765 to i32
  %4767 = sitofp i32 %4766 to float
  %4768 = fmul fast float %4767, 5.000000e+00
  %4769 = fadd fast float %4768, 0xC1EFBF8940000000
  %4770 = fptosi float %4769 to i32
  %4771 = bitcast i32 %4770 to float
  %4772 = fmul fast float %4771, %2135
  %4773 = fmul fast float %4761, %4772
  %4774 = fmul fast float %4773, %4099
  %4775 = fmul fast float %4773, %4100
  %4776 = fmul fast float %4773, %4101
  %4777 = fadd fast float %4774, %4762
  %4778 = fadd fast float %4775, %4763
  %4779 = fadd fast float %4776, %4764
  %4780 = fmul fast float %4597, %2156
  %4781 = fmul fast float %4780, %4615
  %4782 = fmul fast float %4781, %4761
  %4783 = fmul fast float %4598, %2156
  %4784 = fmul fast float %4783, %4615
  %4785 = fmul fast float %4784, %4761
  %4786 = fmul fast float %4599, %2156
  %4787 = fmul fast float %4786, %4615
  %4788 = fmul fast float %4787, %4761
  %4789 = fadd fast float %4782, %4436
  %4790 = fadd fast float %4785, %4437
  %4791 = fadd fast float %4788, %4438
  %4792 = fmul fast float %4781, %4777
  %4793 = fmul fast float %4784, %4778
  %4794 = fmul fast float %4787, %4779
  %4795 = fadd fast float %4792, %4433
  %4796 = fadd fast float %4793, %4434
  %4797 = fadd fast float %4794, %4435
  br label %4511

; <label>:4798                                    ; preds = %4511
  br label %4799

; <label>:4799                                    ; preds = %4798, %4399
  %4800 = phi float [ %4401, %4399 ], [ %4512, %4798 ]
  %4801 = phi float [ %4402, %4399 ], [ %4513, %4798 ]
  %4802 = phi float [ %4403, %4399 ], [ %4514, %4798 ]
  %4803 = phi float [ %4404, %4399 ], [ %4515, %4798 ]
  %4804 = phi float [ %4405, %4399 ], [ %4516, %4798 ]
  %4805 = phi float [ %4406, %4399 ], [ %4517, %4798 ]
  %4806 = add i32 %4400, 1
  %4807 = icmp ugt i32 %4806, %4396
  br i1 %4807, label %4808, label %4399

; <label>:4808                                    ; preds = %4799
  br label %4809

; <label>:4809                                    ; preds = %4808, %4375, %4365
  %4810 = phi float [ %4366, %4365 ], [ %4366, %4375 ], [ %4800, %4808 ]
  %4811 = phi float [ %4367, %4365 ], [ %4367, %4375 ], [ %4801, %4808 ]
  %4812 = phi float [ %4368, %4365 ], [ %4368, %4375 ], [ %4802, %4808 ]
  %4813 = phi float [ %4369, %4365 ], [ %4369, %4375 ], [ %4803, %4808 ]
  %4814 = phi float [ %4370, %4365 ], [ %4370, %4375 ], [ %4804, %4808 ]
  %4815 = phi float [ %4371, %4365 ], [ %4371, %4375 ], [ %4805, %4808 ]
  %4816 = call float @dx.op.unary.f32(i32 24, float %2762)  ; Sqrt(value)
  %4817 = call float @dx.op.unary.f32(i32 24, float %2763)  ; Sqrt(value)
  %4818 = call float @dx.op.unary.f32(i32 24, float %2764)  ; Sqrt(value)
  %4819 = fmul fast float %4816, %4813
  %4820 = fmul fast float %4817, %4814
  %4821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.f32 %4821, 0
  br i1 %192, label %4823, label %4843

; <label>:4823                                    ; preds = %4809
  %4824 = fadd fast float %4815, %2133
  %4825 = fmul fast float %4824, %2134
  %4826 = fsub fast float 1.000000e+00, %2134
  %4827 = call float @dx.op.unary.f32(i32 7, float %4826)  ; Saturate(value)
  %4828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4829 = extractvalue %dx.types.CBufRet.f32 %4828, 3
  %4830 = fmul fast float %4829, %4827
  %4831 = fadd fast float %4830, %4825
  %4832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4833 = extractvalue %dx.types.CBufRet.f32 %4832, 0
  %4834 = fmul fast float %4833, %4105
  %4835 = fsub fast float %4831, %4834
  %4836 = fadd fast float %4820, %4819
  %4837 = fmul fast float %4822, %4836
  %4838 = extractvalue %dx.types.CBufRet.f32 %4828, 1
  %4839 = fsub fast float %4835, %4838
  %4840 = extractvalue %dx.types.CBufRet.f32 %4828, 2
  %4841 = fmul fast float %4839, %4840
  %4842 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  br label %4859

; <label>:4843                                    ; preds = %4809
  %4844 = fmul fast float %4818, %4815
  %4845 = fmul fast float %4822, %4819
  %4846 = fmul fast float %4822, %4820
  %4847 = fmul fast float %4844, %4822
  %4848 = add i32 %46, 196
  %4849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4848, i32 undef)  ; BufferLoad(srv,index,wot)
  %4850 = extractvalue %dx.types.ResRet.i32 %4849, 0
  %4851 = and i32 %4850, 32
  %4852 = icmp eq i32 %4851, 0
  br i1 %4852, label %4859, label %4853

; <label>:4853                                    ; preds = %4843
  %4854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.f32 %4854, 0
  %4856 = fmul fast float %4855, 0x3FE99999A0000000
  %4857 = fadd fast float %4855, %4845
  %4858 = fadd fast float %4856, %4847
  br label %4859

; <label>:4859                                    ; preds = %4853, %4843, %4823
  %4860 = phi float [ %4837, %4823 ], [ %4857, %4853 ], [ %4845, %4843 ]
  %4861 = phi float [ %4842, %4823 ], [ %4846, %4853 ], [ %4846, %4843 ]
  %4862 = phi float [ 1.000000e+00, %4823 ], [ %4858, %4853 ], [ %4847, %4843 ]
  %4863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4864 = extractvalue %dx.types.CBufRet.f32 %4863, 0
  %4865 = fmul fast float %4864, %4811
  %4866 = fmul fast float %4864, %4812
  %4867 = fadd fast float %4811, %4810
  %4868 = select i1 %192, float %4867, float %4810
  %4869 = fmul float %4868, %4864
  %4870 = select i1 %192, float 0.000000e+00, float %4865
  %4871 = select i1 %192, float 0.000000e+00, float %4866
  %4872 = fmul fast float %4860, %4816
  %4873 = fmul fast float %4861, %4817
  %4874 = fmul fast float %4862, %4818
  %4875 = fadd fast float %4869, %4872
  %4876 = fadd fast float %4870, %4873
  %4877 = fadd fast float %4871, %4874
  %4878 = select i1 %192, float %4861, float %4876
  %4879 = select i1 %192, float %4862, float %4877
  %4880 = call float @dx.op.binary.f32(i32 36, float %4875, float 3.225500e+04)  ; FMin(a,b)
  %4881 = call float @dx.op.binary.f32(i32 36, float %4878, float 3.225500e+04)  ; FMin(a,b)
  %4882 = call float @dx.op.binary.f32(i32 36, float %4879, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4880)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4881)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4882)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!57}
!dx.entryPoints = !{!58}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !48, !51}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!14 = !{i32 7, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !18}
!18 = !{i32 0, i32 5}
!19 = !{i32 11, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !18}
!27 = !{i32 19, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!44 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!45 = !{i32 37, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!47 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!48 = !{!49, !50}
!49 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!50 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!51 = !{!52, !53, !54, !55, !56}
!52 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!53 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!54 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!55 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!56 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!57 = !{[25 x i32] [i32 23, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !78}
!59 = !{!60, !76, null}
!60 = !{!61, !64, !66, !68, !69, !71, !73, !74, !75}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 2, i32 1, i8 0, !65}
!65 = !{i32 3, i32 3}
!66 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 2, i8 0, !67}
!67 = !{i32 3, i32 7}
!68 = !{i32 3, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 3, i8 0, !67}
!69 = !{i32 4, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 4, i8 0, !70}
!70 = !{i32 3, i32 15}
!71 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 5, i8 0, !72}
!72 = !{i32 3, i32 1}
!73 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 5, i8 1, !72}
!74 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !62, i8 1, i32 1, i8 1, i32 5, i8 2, !72}
!75 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!76 = !{!77}
!77 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !70}
!78 = !{i32 0, i64 24}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}

