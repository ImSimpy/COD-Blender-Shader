;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float       
; TEXCOORDS                0   xy          2     NONE   float   xy  
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           6     NONE    uint   x   
; TRANSIENT_INDEX          0    y          6     NONE    uint       
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 1fb44f23873bdb786222f8e81ea11224
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
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; MATERIAL_DATA_OFFSET     0        nointerpolation       
; TRANSIENT_INDEX          0        nointerpolation       
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
;   [208 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32     2darray      T5     t16,space2     1
;                                   texture     f32          3d      T6     t15,space2     1
;                                   texture     f32          2d      T7     t14,space2     1
;                                   texture     f32          2d      T8     t13,space2     1
;                                   texture     u32          2d      T9     t17,space2     1
;                                   texture     f32          3d     T10     t18,space2     1
;                                   texture     f32     2darray     T11     t23,space2     1
;                                   texture     f32     2darray     T12     t24,space2     1
;                                   texture     f32     2darray     T13     t25,space2     1
;                                   texture    byte         r/o     T14     t66,space1     1
;                                   texture    byte         r/o     T15     t16,space1     1
;                                   texture    byte         r/o     T16     t17,space1     1
;                                   texture     u32     2darray     T17     t11,space2     1
;                                   texture     f32     2darray     T18     t10,space2     1
;                                   texture     f32          2d     T19     t69,space2     1
;                                   texture     f32          2d     T20     t58,space2     1
;                                   texture     f32          2d     T21     t59,space2     1
;                                   texture     f32          2d     T22     t60,space2     1
;                                   texture    byte         r/o     T23     t45,space1     1
;                                   texture    byte         r/o     T24     t46,space1     1
;                                   texture    byte         r/o     T25     t47,space1     1
;                                   texture    byte         r/o     T26     t48,space1     1
;                                   texture     f32          2d     T27     t57,space2     1
;                                   texture    byte         r/o     T28     t69,space1     1
;                                   texture     f32          2d     T29     t34,space2     1
;                                   texture    byte         r/o     T30     t10,space1     1
;                                   texture    byte         r/o     T31     t68,space1     1
;                                   texture     f32          2d     T32      t0,space2     1
;                                   texture    byte         r/o     T33     t11,space1     1
;                                   texture    byte         r/o     T34     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 26, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24 }
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
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = fmul fast float %57, %51
  %59 = fmul fast float %57, %52
  %60 = fmul fast float %44, %41
  %61 = fmul fast float %45, %40
  %62 = fsub fast float %60, %61
  %63 = fmul fast float %45, %39
  %64 = fmul fast float %43, %41
  %65 = fsub fast float %63, %64
  %66 = fmul fast float %43, %40
  %67 = fmul fast float %44, %39
  %68 = fsub fast float %66, %67
  %69 = fmul fast float %62, %42
  %70 = fmul fast float %65, %42
  %71 = fmul fast float %68, %42
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 3
  %75 = fmul fast float %73, 2.000000e+00
  %76 = fmul fast float %75, %58
  %77 = fmul fast float %74, 2.000000e+00
  %78 = fmul fast float %77, %59
  %79 = fsub fast float 1.000000e+00, %76
  %80 = fsub fast float 1.000000e+00, %78
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = fmul fast float %79, %82
  %86 = fmul fast float %79, %83
  %87 = fmul fast float %79, %84
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %92 = fmul fast float %80, %89
  %93 = fmul fast float %80, %90
  %94 = fmul fast float %80, %91
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = extractvalue %dx.types.CBufRet.f32 %95, 1
  %98 = extractvalue %dx.types.CBufRet.f32 %95, 2
  %99 = fadd fast float %92, %96
  %100 = fadd fast float %99, %85
  %101 = fadd fast float %93, %97
  %102 = fadd fast float %101, %86
  %103 = fadd fast float %94, %98
  %104 = fadd fast float %103, %87
  %105 = fmul fast float %100, %53
  %106 = fmul fast float %102, %53
  %107 = fmul fast float %104, %53
  %108 = fadd fast float %48, 5.000000e-01
  %109 = fptoui float %108 to i32
  %110 = shl i32 %109, 3
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %110, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = or i32 %110, 4
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = and i32 %112, 8191
  %117 = lshr i32 %112, 13
  %118 = and i32 %117, 8191
  %119 = lshr i32 %112, 26
  %120 = and i32 %115, 65535
  %121 = lshr i32 %115, 16
  %122 = uitofp i32 %120 to float
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %125 = uitofp i32 %121 to float
  %126 = uitofp i32 %116 to float
  %127 = fmul fast float %124, %126
  %128 = uitofp i32 %118 to float
  %129 = fmul fast float %124, %128
  %130 = fmul fast float %124, %46
  %131 = fmul fast float %130, %122
  %132 = fmul fast float %124, %47
  %133 = fmul fast float %132, %125
  %134 = fadd fast float %131, %127
  %135 = fadd fast float %129, %133
  %136 = uitofp i32 %119 to float
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %138, %58
  %141 = fmul fast float %139, %59
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = and i32 %143, 114688
  %145 = icmp ne i32 %144, 0
  %146 = select i1 %145, float %140, float 0.000000e+00
  %147 = select i1 %145, float %141, float 0.000000e+00
  %148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %146, float %147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = fmul fast float %149, 2.550000e+02
  %151 = fptoui float %150 to i32
  %152 = select i1 %145, i32 %151, i32 0
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.i32 %154, 3
  %156 = and i32 %155, 3
  %157 = icmp ne i32 %156, 0
  %158 = and i32 %155, 4
  %159 = icmp ne i32 %158, 0
  %160 = and i1 %157, %159
  br i1 %160, label %161, label %172

; <label>:161                                     ; preds = %0
  %162 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %163 = fmul fast float %162, %59
  %164 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %165 = fmul fast float %164, %58
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %34, float %165, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = fsub fast float 1.000000e+00, %167
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = fcmp fast olt float %168, %170
  br label %175

; <label>:172                                     ; preds = %0
  %173 = icmp eq i32 %158, 0
  %174 = and i1 %157, %173
  br label %175

; <label>:175                                     ; preds = %172, %161
  %176 = phi i1 [ %171, %161 ], [ %174, %172 ]
  %177 = add i32 %38, 60
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = shl i32 %179, 4
  %181 = and i32 %180, 32752
  %182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %181)  ; LegacyF16ToF32(value)
  %183 = lshr i32 %179, 7
  %184 = and i32 %183, 32752
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = lshr i32 %179, 22
  %187 = shl nuw nsw i32 %186, 5
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187)  ; LegacyF16ToF32(value)
  %189 = add i32 %38, 72
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = and i32 %191, 255
  %193 = uitofp i32 %192 to float
  %194 = fmul fast float %193, 0x3F70101020000000
  %195 = lshr i32 %191, 8
  %196 = and i32 %195, 255
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %197, 0x3F70101020000000
  %199 = lshr i32 %191, 16
  %200 = and i32 %199, 255
  %201 = uitofp i32 %200 to float
  %202 = fmul fast float %201, 0x3F70101020000000
  %203 = add i32 %38, 36
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = add i32 %38, 96
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = add i32 %38, 24
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = add i32 %38, 28
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = or i32 %214, %211
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %677, label %217

; <label>:217                                     ; preds = %175
  %218 = lshr i32 %208, 16
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = fmul fast float %219, 0x3F50624DE0000000
  %221 = and i32 %208, 65535
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = fmul fast float %222, 0x3F50624DE0000000
  %224 = lshr i32 %205, 16
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = and i32 %205, 65535
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = add i32 %38, 92
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = lshr i32 %230, 16
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = fmul fast float %232, 0x3F50624DE0000000
  %234 = add i32 %38, 40
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = lshr i32 %236, 16
  %238 = and i32 %237, 255
  %239 = lshr i32 %236, 24
  %240 = add i32 %38, 100
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 65535
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %242, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = add i32 %38, 32
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = lshr i32 %249, 22
  %251 = shl nuw nsw i32 %250, 5
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = shl i32 %249, 4
  %254 = and i32 %253, 32752
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %249, 7
  %257 = and i32 %256, 32752
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 3
  %261 = fmul fast float %260, 1.000000e+03
  %262 = fmul fast float %223, %261
  %263 = call float @dx.op.unary.f32(i32 22, float %262)  ; Frc(value)
  %264 = fadd fast float %263, %227
  %265 = fmul fast float %220, %261
  %266 = call float @dx.op.unary.f32(i32 22, float %265)  ; Frc(value)
  %267 = fadd fast float %266, %225
  %268 = fmul fast float %233, %261
  %269 = call float @dx.op.unary.f32(i32 22, float %268)  ; Frc(value)
  %270 = fmul fast float %269, 0x401921FB60000000
  %271 = fadd fast float %270, %252
  %272 = call float @dx.op.unary.f32(i32 13, float %271)  ; Sin(value)
  %273 = call float @dx.op.unary.f32(i32 12, float %271)  ; Cos(value)
  %274 = fsub fast float -0.000000e+00, %272
  %275 = fadd fast float %49, -5.000000e-01
  %276 = fadd fast float %50, -5.000000e-01
  %277 = fmul fast float %244, %275
  %278 = fmul fast float %246, %276
  %279 = fadd fast float %277, 5.000000e-01
  %280 = fadd fast float %278, 5.000000e-01
  %281 = fmul fast float %255, %279
  %282 = fmul fast float %258, %280
  %283 = fmul fast float %273, %281
  %284 = call float @dx.op.tertiary.f32(i32 46, float %274, float %282, float %283)  ; FMad(a,b,c)
  %285 = fmul fast float %272, %281
  %286 = call float @dx.op.tertiary.f32(i32 46, float %273, float %282, float %285)  ; FMad(a,b,c)
  %287 = fadd fast float %264, %284
  %288 = fadd fast float %267, %286
  %289 = icmp ugt i32 %238, 1
  %290 = icmp ugt i32 %236, 33554431
  %291 = or i1 %290, %289
  br i1 %291, label %292, label %317

; <label>:292                                     ; preds = %217
  %293 = add i32 %38, 84
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = lshr i32 %295, 16
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = fmul fast float %260, %297
  %299 = call float @dx.op.unary.f32(i32 22, float %298)  ; Frc(value)
  %300 = mul nuw nsw i32 %238, %239
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %299, %301
  %303 = call float @dx.op.unary.f32(i32 27, float %302)  ; Round_ni(value)
  %304 = fptoui float %303 to i32
  %305 = urem i32 %304, %238
  %306 = udiv i32 %304, %239
  %307 = call float @dx.op.unary.f32(i32 22, float %287)  ; Frc(value)
  %308 = call float @dx.op.unary.f32(i32 22, float %288)  ; Frc(value)
  %309 = uitofp i32 %305 to float
  %310 = uitofp i32 %306 to float
  %311 = fadd fast float %307, %309
  %312 = fadd fast float %308, %310
  %313 = uitofp i32 %238 to float
  %314 = uitofp i32 %239 to float
  %315 = fdiv fast float %311, %313
  %316 = fdiv fast float %312, %314
  br label %317

; <label>:317                                     ; preds = %292, %217
  %318 = phi float [ %315, %292 ], [ %287, %217 ]
  %319 = phi float [ %316, %292 ], [ %288, %217 ]
  %320 = and i32 %211, 16
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %518, label %322

; <label>:322                                     ; preds = %317
  %323 = add i32 %38, 136
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = add i32 %325, 0
  %327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %326, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %328 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %327, %dx.types.Handle %54, float %318, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = extractvalue %dx.types.ResRet.f32 %328, 1
  %331 = extractvalue %dx.types.ResRet.f32 %328, 2
  %332 = extractvalue %dx.types.ResRet.f32 %328, 3
  %333 = and i32 %236, 255
  %334 = uitofp i32 %333 to float
  %335 = lshr i32 %236, 8
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %332, %334
  %339 = fadd fast float %338, %337
  %340 = fmul fast float %339, 0x3F70101000000000
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 512
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %353, label %345

; <label>:345                                     ; preds = %322
  %346 = add i32 %38, 156
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = add i32 %348, 0
  %350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %349, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %351 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %350, %dx.types.Handle %55, float %318, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %352 = extractvalue %dx.types.ResRet.f32 %351, 0
  br label %353

; <label>:353                                     ; preds = %345, %322
  %354 = phi float [ %352, %345 ], [ 1.000000e+00, %322 ]
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 33554432
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %465, label %359

; <label>:359                                     ; preds = %353
  %360 = add i32 %38, 80
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %38, 84
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 65535
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = lshr i32 %373, 24
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = and i32 %373, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F70101020000000
  %380 = lshr i32 %373, 8
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = lshr i32 %373, 16
  %385 = and i32 %384, 255
  %386 = uitofp i32 %385 to float
  %387 = fmul fast float %386, 0x3F70101020000000
  %388 = add i32 %38, 76
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = lshr i32 %390, 24
  %392 = uitofp i32 %391 to float
  %393 = fmul fast float %392, 0x3F70101020000000
  %394 = and i32 %390, 255
  %395 = uitofp i32 %394 to float
  %396 = fmul fast float %395, 0x3F70101020000000
  %397 = lshr i32 %390, 8
  %398 = and i32 %397, 255
  %399 = uitofp i32 %398 to float
  %400 = fmul fast float %399, 0x3F70101020000000
  %401 = lshr i32 %390, 16
  %402 = and i32 %401, 255
  %403 = uitofp i32 %402 to float
  %404 = fmul fast float %403, 0x3F70101020000000
  %405 = bitcast float %329 to i32
  %406 = ashr i32 %405, 1
  %407 = sub nsw i32 1597463174, %406
  %408 = bitcast i32 %407 to float
  %409 = fmul fast float %329, 5.000000e-01
  %410 = fmul fast float %408, %408
  %411 = fmul fast float %410, %409
  %412 = fsub fast float 1.500000e+00, %411
  %413 = fmul fast float %408, %329
  %414 = fmul fast float %413, %412
  %415 = bitcast float %330 to i32
  %416 = ashr i32 %415, 1
  %417 = sub nsw i32 1597463174, %416
  %418 = bitcast i32 %417 to float
  %419 = fmul fast float %330, 5.000000e-01
  %420 = fmul fast float %418, %418
  %421 = fmul fast float %420, %419
  %422 = fsub fast float 1.500000e+00, %421
  %423 = fmul fast float %418, %330
  %424 = fmul fast float %423, %422
  %425 = bitcast float %331 to i32
  %426 = ashr i32 %425, 1
  %427 = sub nsw i32 1597463174, %426
  %428 = bitcast i32 %427 to float
  %429 = fmul fast float %331, 5.000000e-01
  %430 = fmul fast float %428, %428
  %431 = fmul fast float %430, %429
  %432 = fsub fast float 1.500000e+00, %431
  %433 = fmul fast float %428, %331
  %434 = fmul fast float %433, %432
  %435 = fsub fast float %414, %396
  %436 = fsub fast float %424, %400
  %437 = fsub fast float %434, %404
  %438 = fmul fast float %435, %364
  %439 = fmul fast float %436, %366
  %440 = fmul fast float %437, %371
  %441 = fadd fast float %438, %379
  %442 = fadd fast float %439, %383
  %443 = fadd fast float %440, %387
  %444 = call float @dx.op.unary.f32(i32 7, float %441)  ; Saturate(value)
  %445 = call float @dx.op.unary.f32(i32 7, float %442)  ; Saturate(value)
  %446 = call float @dx.op.unary.f32(i32 7, float %443)  ; Saturate(value)
  %447 = fmul fast float %444, %444
  %448 = fmul fast float %445, %445
  %449 = fmul fast float %446, %446
  %450 = fsub fast float %447, %329
  %451 = fsub fast float %448, %330
  %452 = fsub fast float %449, %331
  %453 = fmul fast float %450, %354
  %454 = fmul fast float %451, %354
  %455 = fmul fast float %452, %354
  %456 = fadd fast float %453, %329
  %457 = fadd fast float %454, %330
  %458 = fadd fast float %455, %331
  %459 = fadd fast float %376, %340
  %460 = fsub fast float %459, %393
  %461 = call float @dx.op.unary.f32(i32 7, float %460)  ; Saturate(value)
  %462 = fsub fast float %461, %340
  %463 = fmul fast float %462, %354
  %464 = fadd fast float %463, %340
  br label %518

; <label>:465                                     ; preds = %353
  %466 = and i32 %356, 134217728
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %502, label %468

; <label>:468                                     ; preds = %465
  %469 = call float @dx.op.unary.f32(i32 24, float %194)  ; Sqrt(value)
  %470 = call float @dx.op.unary.f32(i32 24, float %198)  ; Sqrt(value)
  %471 = call float @dx.op.unary.f32(i32 24, float %202)  ; Sqrt(value)
  %472 = fadd fast float %469, -5.000000e-01
  %473 = fadd fast float %470, -5.000000e-01
  %474 = fadd fast float %471, -5.000000e-01
  %475 = fmul fast float %472, %354
  %476 = fmul fast float %473, %354
  %477 = fmul fast float %474, %354
  %478 = fadd fast float %475, 5.000000e-01
  %479 = fadd fast float %476, 5.000000e-01
  %480 = fadd fast float %477, 5.000000e-01
  %481 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %482 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %483 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %484 = fmul fast float %478, 2.000000e+00
  %485 = fsub fast float 1.000000e+00, %484
  %486 = fmul fast float %485, %481
  %487 = fadd fast float %486, %484
  %488 = fmul fast float %487, %481
  %489 = fmul fast float %479, 2.000000e+00
  %490 = fsub fast float 1.000000e+00, %489
  %491 = fmul fast float %490, %482
  %492 = fadd fast float %491, %489
  %493 = fmul fast float %492, %482
  %494 = fmul fast float %480, 2.000000e+00
  %495 = fsub fast float 1.000000e+00, %494
  %496 = fmul fast float %495, %483
  %497 = fadd fast float %496, %494
  %498 = fmul fast float %497, %483
  %499 = fmul fast float %488, %488
  %500 = fmul fast float %493, %493
  %501 = fmul fast float %498, %498
  br label %518

; <label>:502                                     ; preds = %465
  %503 = fmul fast float %194, %194
  %504 = fmul fast float %198, %198
  %505 = fmul fast float %202, %202
  %506 = fadd fast float %503, -1.000000e+00
  %507 = fadd fast float %504, -1.000000e+00
  %508 = fadd fast float %505, -1.000000e+00
  %509 = fmul fast float %354, %506
  %510 = fmul fast float %354, %507
  %511 = fmul fast float %354, %508
  %512 = fadd fast float %509, 1.000000e+00
  %513 = fadd fast float %510, 1.000000e+00
  %514 = fadd fast float %511, 1.000000e+00
  %515 = fmul fast float %512, %329
  %516 = fmul fast float %513, %330
  %517 = fmul fast float %514, %331
  br label %518

; <label>:518                                     ; preds = %502, %468, %359, %317
  %519 = phi float [ %464, %359 ], [ %340, %468 ], [ %340, %502 ], [ 0x3FA23C0BE0000000, %317 ]
  %520 = phi float [ %456, %359 ], [ %499, %468 ], [ %515, %502 ], [ 1.000000e+00, %317 ]
  %521 = phi float [ %457, %359 ], [ %500, %468 ], [ %516, %502 ], [ 1.000000e+00, %317 ]
  %522 = phi float [ %458, %359 ], [ %501, %468 ], [ %517, %502 ], [ 1.000000e+00, %317 ]
  %523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.i32 %523, 1
  %525 = and i32 %524, 1
  %526 = icmp ne i32 %525, 0
  %527 = add i32 %38, 132
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = and i32 %529, 32
  %531 = icmp ne i32 %530, 0
  %532 = and i1 %526, %531
  %533 = select i1 %532, float 1.000000e+00, float %520
  %534 = select i1 %532, float 0x3FD3333340000000, float %521
  %535 = select i1 %532, float 0x3FD3333340000000, float %522
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = and i32 %537, 32
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %612, label %540

; <label>:540                                     ; preds = %518
  %541 = add i32 %38, 44
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = add i32 %38, 140
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = add i32 %546, 0
  %548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %548, %dx.types.Handle %54, float %318, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = extractvalue %dx.types.ResRet.f32 %549, 1
  %552 = extractvalue %dx.types.ResRet.f32 %549, 2
  %553 = extractvalue %dx.types.ResRet.f32 %549, 3
  %554 = and i32 %543, 255
  %555 = uitofp i32 %554 to float
  %556 = lshr i32 %543, 8
  %557 = and i32 %556, 255
  %558 = uitofp i32 %557 to float
  %559 = lshr i32 %543, 16
  %560 = and i32 %559, 255
  %561 = uitofp i32 %560 to float
  %562 = fmul fast float %561, 0x3F70101000000000
  %563 = fmul fast float %550, %555
  %564 = fadd fast float %563, %558
  %565 = fmul fast float %564, 0x3F70101000000000
  %566 = fadd fast float %551, -5.000000e-01
  %567 = fadd fast float %553, -5.000000e-01
  %568 = fmul fast float %566, %562
  %569 = fmul fast float %567, %562
  %570 = fadd fast float %568, 5.000000e-01
  %571 = fadd fast float %569, 5.000000e-01
  %572 = fmul fast float %570, 2.000000e+00
  %573 = fadd fast float %572, -1.000000e+00
  %574 = fmul fast float %571, 2.000000e+00
  %575 = fadd fast float %574, -1.000000e+00
  %576 = fadd fast float %573, %575
  %577 = fmul fast float %576, 5.000000e-01
  %578 = fsub fast float %573, %575
  %579 = fmul fast float %578, 5.000000e-01
  %580 = call float @dx.op.unary.f32(i32 6, float %577)  ; FAbs(value)
  %581 = fsub fast float 1.000000e+00, %580
  %582 = call float @dx.op.unary.f32(i32 6, float %579)  ; FAbs(value)
  %583 = fsub fast float %581, %582
  %584 = call float @dx.op.dot3.f32(i32 55, float %577, float %579, float %583, float %577, float %579, float %583)  ; Dot3(ax,ay,az,bx,by,bz)
  %585 = call float @dx.op.unary.f32(i32 25, float %584)  ; Rsqrt(value)
  %586 = fmul fast float %577, %585
  %587 = fmul fast float %579, %585
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = and i32 %589, 67108864
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %608, label %592

; <label>:592                                     ; preds = %540
  %593 = add i32 %38, 88
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = and i32 %595, 65535
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = and i32 %599, 65535
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = lshr i32 %595, 16
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = fsub fast float %565, %603
  %605 = fmul fast float %604, %597
  %606 = fadd fast float %605, %601
  %607 = call float @dx.op.unary.f32(i32 7, float %606)  ; Saturate(value)
  br label %608

; <label>:608                                     ; preds = %592, %540
  %609 = phi float [ %607, %592 ], [ %565, %540 ]
  %610 = call float @dx.op.dot2.f32(i32 54, float %586, float %587, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %611 = call float @dx.op.dot2.f32(i32 54, float %586, float %587, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %612

; <label>:612                                     ; preds = %608, %518
  %613 = phi float [ %609, %608 ], [ 0x3FD6666660000000, %518 ]
  %614 = phi float [ %610, %608 ], [ 0.000000e+00, %518 ]
  %615 = phi float [ %611, %608 ], [ 0.000000e+00, %518 ]
  %616 = phi float [ %552, %608 ], [ 1.000000e+00, %518 ]
  %617 = add i32 %38, 64
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = lshr i32 %619, 22
  %621 = shl nuw nsw i32 %620, 5
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %624, 64
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %660, label %627

; <label>:627                                     ; preds = %612
  %628 = add i32 %38, 144
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = add i32 %630, 0
  %632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 131072
  %636 = icmp eq i32 %635, 0
  %637 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %632, %dx.types.Handle %54, float %318, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 0
  %639 = extractvalue %dx.types.ResRet.f32 %637, 1
  %640 = extractvalue %dx.types.ResRet.f32 %637, 2
  %641 = fmul fast float %638, %182
  %642 = fmul fast float %639, %185
  %643 = fmul fast float %640, %188
  br i1 %636, label %650, label %644

; <label>:644                                     ; preds = %627
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %647 = fmul fast float %646, %641
  %648 = fmul fast float %646, %642
  %649 = fmul fast float %646, %643
  br label %650

; <label>:650                                     ; preds = %644, %627
  %651 = phi float [ %647, %644 ], [ %641, %627 ]
  %652 = phi float [ %648, %644 ], [ %642, %627 ]
  %653 = phi float [ %649, %644 ], [ %643, %627 ]
  %654 = fmul fast float %651, %622
  %655 = select i1 %176, float %654, float %651
  %656 = call float @dx.op.dot3.f32(i32 55, float %655, float %652, float %653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %657 = select i1 %176, float 0.000000e+00, float %651
  %658 = select i1 %176, float %656, float %652
  %659 = select i1 %176, float 0.000000e+00, float %653
  br label %660

; <label>:660                                     ; preds = %650, %612
  %661 = phi float [ %657, %650 ], [ 0.000000e+00, %612 ]
  %662 = phi float [ %658, %650 ], [ 0.000000e+00, %612 ]
  %663 = phi float [ %659, %650 ], [ 0.000000e+00, %612 ]
  %664 = add i32 %38, 48
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = and i32 %666, 255
  %668 = uitofp i32 %667 to float
  %669 = lshr i32 %666, 8
  %670 = and i32 %669, 255
  %671 = uitofp i32 %670 to float
  %672 = call float @dx.op.dot3.f32(i32 55, float %533, float %534, float %535, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %673 = fmul fast float %671, %672
  %674 = fadd fast float %673, %668
  %675 = fmul fast float %674, 0x3F70101020000000
  %676 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  br label %677

; <label>:677                                     ; preds = %660, %175
  %678 = phi float [ 0.000000e+00, %175 ], [ %614, %660 ]
  %679 = phi float [ 0.000000e+00, %175 ], [ %615, %660 ]
  %680 = phi float [ 0.000000e+00, %175 ], [ %533, %660 ]
  %681 = phi float [ 0.000000e+00, %175 ], [ %534, %660 ]
  %682 = phi float [ 0.000000e+00, %175 ], [ %535, %660 ]
  %683 = phi float [ 0.000000e+00, %175 ], [ %661, %660 ]
  %684 = phi float [ 0.000000e+00, %175 ], [ %662, %660 ]
  %685 = phi float [ 0.000000e+00, %175 ], [ %663, %660 ]
  %686 = phi float [ 0.000000e+00, %175 ], [ %519, %660 ]
  %687 = phi float [ 0.000000e+00, %175 ], [ 1.000000e+00, %660 ]
  %688 = phi float [ 0.000000e+00, %175 ], [ %613, %660 ]
  %689 = phi float [ 0.000000e+00, %175 ], [ %616, %660 ]
  %690 = phi float [ 0.000000e+00, %175 ], [ %676, %660 ]
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 0
  %693 = call float @dx.op.dot2.f32(i32 54, float %678, float %679, float %678, float %679)  ; Dot2(ax,ay,bx,by)
  %694 = fmul fast float %693, 0x3FE3333340000000
  %695 = fsub fast float 1.000000e+00, %694
  %696 = call float @dx.op.dot3.f32(i32 55, float %678, float %679, float %695, float %678, float %679, float %695)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = call float @dx.op.unary.f32(i32 25, float %696)  ; Rsqrt(value)
  %698 = fmul fast float %697, %678
  %699 = fmul fast float %697, %679
  %700 = fmul fast float %695, %697
  %701 = fmul fast float %700, %43
  %702 = fmul fast float %700, %44
  %703 = fmul fast float %700, %45
  %704 = fmul fast float %698, %39
  %705 = fmul fast float %698, %40
  %706 = fmul fast float %698, %41
  %707 = fadd fast float %701, %704
  %708 = fadd fast float %702, %705
  %709 = fadd fast float %703, %706
  %710 = fmul fast float %699, %69
  %711 = fmul fast float %699, %70
  %712 = fmul fast float %699, %71
  %713 = fadd fast float %707, %710
  %714 = fadd fast float %708, %711
  %715 = fadd fast float %709, %712
  %716 = call float @dx.op.dot3.f32(i32 55, float %713, float %714, float %715, float %713, float %714, float %715)  ; Dot3(ax,ay,az,bx,by,bz)
  %717 = call float @dx.op.unary.f32(i32 25, float %716)  ; Rsqrt(value)
  %718 = fmul fast float %713, %717
  %719 = fmul fast float %714, %717
  %720 = fmul fast float %715, %717
  %721 = call float @dx.op.unary.f32(i32 83, float %105)  ; DerivCoarseX(value)
  %722 = call float @dx.op.unary.f32(i32 83, float %106)  ; DerivCoarseX(value)
  %723 = call float @dx.op.unary.f32(i32 83, float %107)  ; DerivCoarseX(value)
  %724 = call float @dx.op.unary.f32(i32 84, float %105)  ; DerivCoarseY(value)
  %725 = call float @dx.op.unary.f32(i32 84, float %106)  ; DerivCoarseY(value)
  %726 = call float @dx.op.unary.f32(i32 84, float %107)  ; DerivCoarseY(value)
  %727 = fadd fast float %721, %105
  %728 = fadd fast float %722, %106
  %729 = fadd fast float %723, %107
  %730 = fadd fast float %724, %105
  %731 = fadd fast float %725, %106
  %732 = fadd fast float %726, %107
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 0
  %735 = extractvalue %dx.types.CBufRet.f32 %733, 1
  %736 = extractvalue %dx.types.CBufRet.f32 %733, 2
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 2
  %739 = extractvalue %dx.types.CBufRet.f32 %737, 3
  %740 = fmul fast float %734, %58
  %741 = fmul fast float %740, %738
  %742 = fmul fast float %735, %59
  %743 = fmul fast float %742, %739
  %744 = fptoui float %741 to i32
  %745 = fptoui float %743 to i32
  %746 = fadd fast float %734, -1.000000e+00
  %747 = fadd fast float %735, -1.000000e+00
  %748 = fptoui float %746 to i32
  %749 = fptoui float %747 to i32
  %750 = call i32 @dx.op.binary.i32(i32 40, i32 %744, i32 %748)  ; UMin(a,b)
  %751 = call i32 @dx.op.binary.i32(i32 40, i32 %745, i32 %749)  ; UMin(a,b)
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 2
  %754 = extractvalue %dx.types.CBufRet.f32 %752, 3
  %755 = fmul fast float %753, %53
  %756 = fsub fast float %755, %754
  %757 = fadd fast float %736, -1.000000e+00
  %758 = call float @dx.op.binary.f32(i32 36, float %756, float %757)  ; FMin(a,b)
  %759 = fptoui float %758 to i32
  %760 = fptoui float %734 to i32
  %761 = fptoui float %735 to i32
  %762 = mul i32 %759, %761
  %763 = add i32 %762, %751
  %764 = mul i32 %763, %760
  %765 = add i32 %764, %750
  %766 = shl i32 %765, 2
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = and i32 %768, 1023
  %770 = lshr i32 %768, 10
  %771 = icmp eq i32 %769, 0
  br i1 %771, label %1200, label %772

; <label>:772                                     ; preds = %677
  %773 = and i32 %768, 1023
  br label %774

; <label>:774                                     ; preds = %901, %772
  %775 = phi float [ %902, %901 ], [ 0.000000e+00, %772 ]
  %776 = phi float [ %903, %901 ], [ %687, %772 ]
  %777 = phi float [ %904, %901 ], [ %692, %772 ]
  %778 = phi float [ %905, %901 ], [ %690, %772 ]
  %779 = phi float [ %906, %901 ], [ 0.000000e+00, %772 ]
  %780 = phi float [ %907, %901 ], [ 0.000000e+00, %772 ]
  %781 = phi float [ %908, %901 ], [ %683, %772 ]
  %782 = phi float [ %909, %901 ], [ %684, %772 ]
  %783 = phi float [ %910, %901 ], [ %685, %772 ]
  %784 = phi float [ %911, %901 ], [ %718, %772 ]
  %785 = phi float [ %912, %901 ], [ %719, %772 ]
  %786 = phi float [ %913, %901 ], [ %720, %772 ]
  %787 = phi float [ %914, %901 ], [ %689, %772 ]
  %788 = phi float [ %915, %901 ], [ %688, %772 ]
  %789 = phi float [ %916, %901 ], [ 0.000000e+00, %772 ]
  %790 = phi float [ %917, %901 ], [ %686, %772 ]
  %791 = phi float [ %918, %901 ], [ %680, %772 ]
  %792 = phi float [ %919, %901 ], [ %681, %772 ]
  %793 = phi float [ %920, %901 ], [ %682, %772 ]
  %794 = phi i32 [ %851, %901 ], [ 0, %772 ]
  %795 = add nuw nsw i32 %794, %770
  %796 = shl i32 %795, 2
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = shl i32 %798, 8
  %800 = or i32 %799, 48
  %801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  %803 = extractvalue %dx.types.ResRet.f32 %801, 1
  %804 = extractvalue %dx.types.ResRet.f32 %801, 2
  %805 = extractvalue %dx.types.ResRet.f32 %801, 3
  %806 = or i32 %799, 64
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = extractvalue %dx.types.ResRet.i32 %807, 1
  %810 = or i32 %799, 80
  %811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.f32 %811, 2
  %813 = extractvalue %dx.types.ResRet.f32 %811, 3
  %814 = or i32 %799, 96
  %815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  %817 = extractvalue %dx.types.ResRet.f32 %815, 1
  %818 = extractvalue %dx.types.ResRet.f32 %815, 2
  %819 = extractvalue %dx.types.ResRet.f32 %815, 3
  %820 = or i32 %799, 112
  %821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 2
  %823 = or i32 %799, 128
  %824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = extractvalue %dx.types.ResRet.f32 %824, 2
  %828 = extractvalue %dx.types.ResRet.f32 %824, 3
  %829 = or i32 %799, 144
  %830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = extractvalue %dx.types.ResRet.f32 %830, 1
  %833 = extractvalue %dx.types.ResRet.f32 %830, 2
  %834 = extractvalue %dx.types.ResRet.f32 %830, 3
  %835 = or i32 %799, 160
  %836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.f32 %836, 0
  %838 = extractvalue %dx.types.ResRet.f32 %836, 1
  %839 = extractvalue %dx.types.ResRet.f32 %836, 2
  %840 = extractvalue %dx.types.ResRet.f32 %836, 3
  %841 = or i32 %799, 192
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = or i32 %799, 208
  %845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.f32 %845, 0
  %847 = or i32 %799, 248
  %848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.f32 %848, 0
  %850 = extractvalue %dx.types.ResRet.f32 %848, 1
  %851 = add nuw nsw i32 %794, 1
  %852 = bitcast float %805 to i32
  %853 = and i32 %852, 2560
  %854 = icmp eq i32 %853, 0
  %855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = extractvalue %dx.types.ResRet.f32 %855, 1
  %858 = extractvalue %dx.types.ResRet.f32 %855, 2
  %859 = extractvalue %dx.types.ResRet.f32 %855, 3
  %860 = call float @dx.op.dot4.f32(i32 56, float %856, float %857, float %858, float %859, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %861 = or i32 %799, 16
  %862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.f32 %862, 0
  %864 = extractvalue %dx.types.ResRet.f32 %862, 1
  %865 = extractvalue %dx.types.ResRet.f32 %862, 2
  %866 = extractvalue %dx.types.ResRet.f32 %862, 3
  %867 = call float @dx.op.dot4.f32(i32 56, float %863, float %864, float %865, float %866, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %868 = or i32 %799, 32
  %869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %868, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.f32 %869, 0
  %871 = extractvalue %dx.types.ResRet.f32 %869, 1
  %872 = extractvalue %dx.types.ResRet.f32 %869, 2
  %873 = extractvalue %dx.types.ResRet.f32 %869, 3
  %874 = call float @dx.op.dot4.f32(i32 56, float %870, float %871, float %872, float %873, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %875 = call float @dx.op.unary.f32(i32 27, float %860)  ; Round_ni(value)
  %876 = call float @dx.op.unary.f32(i32 6, float %875)  ; FAbs(value)
  %877 = call float @dx.op.unary.f32(i32 27, float %867)  ; Round_ni(value)
  %878 = call float @dx.op.unary.f32(i32 6, float %877)  ; FAbs(value)
  %879 = call float @dx.op.unary.f32(i32 6, float %874)  ; FAbs(value)
  %880 = call float @dx.op.unary.f32(i32 27, float %879)  ; Round_ni(value)
  %881 = fadd fast float %878, %876
  %882 = fadd fast float %881, %880
  %883 = fcmp fast oeq float %882, 0.000000e+00
  %884 = call float @dx.op.dot4.f32(i32 56, float %856, float %857, float %858, float %859, float %727, float %728, float %729, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %885 = call float @dx.op.dot4.f32(i32 56, float %863, float %864, float %865, float %866, float %727, float %728, float %729, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %886 = call float @dx.op.dot4.f32(i32 56, float %856, float %857, float %858, float %859, float %730, float %731, float %732, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %887 = call float @dx.op.dot4.f32(i32 56, float %863, float %864, float %865, float %866, float %730, float %731, float %732, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %888 = fsub fast float %884, %860
  %889 = fsub fast float %886, %860
  %890 = fsub fast float %885, %867
  %891 = fsub fast float %887, %867
  %892 = call float @dx.op.dot3.f32(i32 55, float %802, float %803, float %804, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 2
  %895 = fadd fast float %894, %892
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %897 = extractvalue %dx.types.CBufRet.f32 %893, 0
  %898 = fcmp fast ogt float %896, %897
  %899 = and i1 %883, %898
  %900 = and i1 %854, %899
  br i1 %900, label %922, label %901

; <label>:901                                     ; preds = %1186, %1003, %922, %774
  %902 = phi float [ %775, %922 ], [ %1006, %1003 ], [ %1006, %1186 ], [ %775, %774 ]
  %903 = phi float [ %776, %922 ], [ %776, %1003 ], [ %1161, %1186 ], [ %776, %774 ]
  %904 = phi float [ %777, %922 ], [ %777, %1003 ], [ %1160, %1186 ], [ %777, %774 ]
  %905 = phi float [ %778, %922 ], [ %778, %1003 ], [ %1158, %1186 ], [ %778, %774 ]
  %906 = phi float [ %779, %922 ], [ %779, %1003 ], [ %1130, %1186 ], [ %779, %774 ]
  %907 = phi float [ %780, %922 ], [ %780, %1003 ], [ %1128, %1186 ], [ %780, %774 ]
  %908 = phi float [ %781, %922 ], [ %781, %1003 ], [ %1196, %1186 ], [ %781, %774 ]
  %909 = phi float [ %782, %922 ], [ %782, %1003 ], [ %1197, %1186 ], [ %782, %774 ]
  %910 = phi float [ %783, %922 ], [ %783, %1003 ], [ %1198, %1186 ], [ %783, %774 ]
  %911 = phi float [ %784, %922 ], [ %784, %1003 ], [ %1109, %1186 ], [ %784, %774 ]
  %912 = phi float [ %785, %922 ], [ %785, %1003 ], [ %1110, %1186 ], [ %785, %774 ]
  %913 = phi float [ %786, %922 ], [ %786, %1003 ], [ %1111, %1186 ], [ %786, %774 ]
  %914 = phi float [ %787, %922 ], [ %787, %1003 ], [ %1138, %1186 ], [ %787, %774 ]
  %915 = phi float [ %788, %922 ], [ %788, %1003 ], [ %1135, %1186 ], [ %788, %774 ]
  %916 = phi float [ %789, %922 ], [ %789, %1003 ], [ %1132, %1186 ], [ %789, %774 ]
  %917 = phi float [ %790, %922 ], [ %790, %1003 ], [ %1126, %1186 ], [ %790, %774 ]
  %918 = phi float [ %791, %922 ], [ %791, %1003 ], [ %1121, %1186 ], [ %791, %774 ]
  %919 = phi float [ %792, %922 ], [ %792, %1003 ], [ %1122, %1186 ], [ %792, %774 ]
  %920 = phi float [ %793, %922 ], [ %793, %1003 ], [ %1123, %1186 ], [ %793, %774 ]
  %921 = icmp eq i32 %851, %773
  br i1 %921, label %1199, label %774

; <label>:922                                     ; preds = %774
  %923 = extractvalue %dx.types.ResRet.f32 %821, 3
  %924 = extractvalue %dx.types.ResRet.f32 %821, 1
  %925 = extractvalue %dx.types.ResRet.f32 %821, 0
  %926 = extractvalue %dx.types.ResRet.f32 %811, 1
  %927 = extractvalue %dx.types.ResRet.f32 %811, 0
  %928 = extractvalue %dx.types.ResRet.i32 %807, 3
  %929 = extractvalue %dx.types.ResRet.i32 %807, 2
  %930 = add i32 %928, 0
  %931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %930, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %933 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %931, %dx.types.Handle %932, float %860, float %867, float undef, float undef, i32 0, i32 0, i32 undef, float %888, float %890, float undef, float %889, float %891, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %934 = extractvalue %dx.types.ResRet.f32 %933, 0
  %935 = fmul fast float %934, %927
  %936 = fadd fast float %935, %926
  %937 = call float @dx.op.unary.f32(i32 7, float %936)  ; Saturate(value)
  %938 = fmul fast float %860, %816
  %939 = call float @dx.op.tertiary.f32(i32 46, float %817, float %867, float %938)  ; FMad(a,b,c)
  %940 = fadd fast float %939, %925
  %941 = fmul fast float %860, %818
  %942 = call float @dx.op.tertiary.f32(i32 46, float %819, float %867, float %941)  ; FMad(a,b,c)
  %943 = fadd fast float %942, %924
  %944 = fmul fast float %888, %816
  %945 = call float @dx.op.tertiary.f32(i32 46, float %817, float %890, float %944)  ; FMad(a,b,c)
  %946 = fmul fast float %888, %818
  %947 = call float @dx.op.tertiary.f32(i32 46, float %819, float %890, float %946)  ; FMad(a,b,c)
  %948 = fmul fast float %889, %816
  %949 = call float @dx.op.tertiary.f32(i32 46, float %817, float %891, float %948)  ; FMad(a,b,c)
  %950 = fmul fast float %889, %818
  %951 = call float @dx.op.tertiary.f32(i32 46, float %819, float %891, float %950)  ; FMad(a,b,c)
  %952 = add i32 %929, 0
  %953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %952, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %954 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %953, %dx.types.Handle %932, float %940, float %943, float undef, float undef, i32 0, i32 0, i32 undef, float %945, float %947, float undef, float %949, float %951, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %955 = extractvalue %dx.types.ResRet.f32 %954, 0
  %956 = and i32 %852, 1024
  %957 = icmp ne i32 %956, 0
  %958 = fcmp fast ogt float %955, 0x3FE0101020000000
  %959 = uitofp i1 %958 to float
  %960 = select i1 %957, float %959, float %955
  %961 = and i32 %852, 8192
  %962 = icmp ne i32 %961, 0
  %963 = select i1 %962, float %923, float 1.000000e+00
  %964 = fmul fast float %860, 2.000000e+00
  %965 = fadd fast float %964, -1.000000e+00
  %966 = call float @dx.op.unary.f32(i32 6, float %965)  ; FAbs(value)
  %967 = fmul fast float %966, %849
  %968 = fsub fast float %967, %849
  %969 = call float @dx.op.unary.f32(i32 7, float %968)  ; Saturate(value)
  %970 = fmul fast float %867, 2.000000e+00
  %971 = fadd fast float %970, -1.000000e+00
  %972 = call float @dx.op.unary.f32(i32 6, float %971)  ; FAbs(value)
  %973 = fmul fast float %972, %850
  %974 = fsub fast float %973, %850
  %975 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  %976 = fmul fast float %879, %812
  %977 = fsub fast float %976, %812
  %978 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  %979 = fmul fast float %937, %963
  %980 = fmul fast float %979, %934
  %981 = fmul fast float %980, %969
  %982 = fmul fast float %981, %960
  %983 = fmul fast float %982, %975
  %984 = fmul fast float %983, %978
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 1
  %987 = extractvalue %dx.types.CBufRet.f32 %985, 0
  %988 = fsub fast float %896, %987
  %989 = fmul fast float %988, %986
  %990 = call float @dx.op.unary.f32(i32 7, float %989)  ; Saturate(value)
  %991 = fmul fast float %984, %813
  %992 = fadd fast float %984, %813
  %993 = fmul fast float %992, %822
  %994 = fsub fast float %993, %822
  %995 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  %996 = and i32 %852, 128
  %997 = icmp ne i32 %996, 0
  %998 = select i1 %997, float %995, float %991
  %999 = fmul fast float %998, %990
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1002 = fcmp fast ugt float %999, %1001
  br i1 %1002, label %1003, label %901

; <label>:1003                                    ; preds = %922
  %1004 = select i1 %962, float %999, float 0.000000e+00
  %1005 = fadd fast float %1004, %775
  %1006 = call float @dx.op.unary.f32(i32 7, float %1005)  ; Saturate(value)
  br i1 %962, label %901, label %1007

; <label>:1007                                    ; preds = %1003
  %1008 = and i32 %852, 4
  %1009 = and i32 %852, 8
  %1010 = add i32 %808, 0
  %1011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1010, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1013 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1011, %dx.types.Handle %1012, float %940, float %943, float undef, float undef, i32 0, i32 0, i32 undef, float %945, float %947, float undef, float %949, float %951, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1014 = extractvalue %dx.types.ResRet.f32 %1013, 0
  %1015 = extractvalue %dx.types.ResRet.f32 %1013, 1
  %1016 = extractvalue %dx.types.ResRet.f32 %1013, 2
  %1017 = extractvalue %dx.types.ResRet.f32 %1013, 3
  %1018 = bitcast float %834 to i32
  %1019 = and i32 %1018, 255
  %1020 = uitofp i32 %1019 to float
  %1021 = lshr i32 %1018, 8
  %1022 = and i32 %1021, 255
  %1023 = uitofp i32 %1022 to float
  %1024 = fmul fast float %1017, %1020
  %1025 = fadd fast float %1024, %1023
  %1026 = fmul fast float %1025, 0x3F70101000000000
  %1027 = add i32 %809, 0
  %1028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1027, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1029 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1028, %dx.types.Handle %1012, float %940, float %943, float undef, float undef, i32 0, i32 0, i32 undef, float %945, float %947, float undef, float %949, float %951, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1033 = extractvalue %dx.types.ResRet.f32 %1029, 3
  %1034 = bitcast float %828 to i32
  %1035 = and i32 %1034, 255
  %1036 = uitofp i32 %1035 to float
  %1037 = lshr i32 %1034, 8
  %1038 = and i32 %1037, 255
  %1039 = uitofp i32 %1038 to float
  %1040 = lshr i32 %1034, 16
  %1041 = and i32 %1040, 255
  %1042 = uitofp i32 %1041 to float
  %1043 = fmul fast float %1042, 0x3F70101000000000
  %1044 = fmul fast float %1030, %1036
  %1045 = fadd fast float %1044, %1039
  %1046 = fmul fast float %1045, 0x3F70101000000000
  %1047 = fadd fast float %1031, -5.000000e-01
  %1048 = fadd fast float %1033, -5.000000e-01
  %1049 = fmul fast float %1047, %1043
  %1050 = fmul fast float %1048, %1043
  %1051 = fadd fast float %1049, 5.000000e-01
  %1052 = fadd fast float %1050, 5.000000e-01
  %1053 = fmul fast float %1014, %837
  %1054 = fmul fast float %1015, %838
  %1055 = fmul fast float %1016, %839
  %1056 = fmul fast float %1051, 2.000000e+00
  %1057 = fadd fast float %1056, -1.000000e+00
  %1058 = fmul fast float %1052, 2.000000e+00
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
  %1072 = fmul fast float %1069, %1067
  %1073 = fmul fast float %1072, %802
  %1074 = fmul fast float %1072, %803
  %1075 = fmul fast float %1072, %804
  %1076 = fmul fast float %1070, %825
  %1077 = fmul fast float %1070, %826
  %1078 = fmul fast float %1070, %827
  %1079 = fadd fast float %1076, %1073
  %1080 = fadd fast float %1077, %1074
  %1081 = fadd fast float %1078, %1075
  %1082 = fmul fast float %1071, %831
  %1083 = fmul fast float %1071, %832
  %1084 = fmul fast float %1071, %833
  %1085 = fadd fast float %1079, %1082
  %1086 = fadd fast float %1080, %1083
  %1087 = fadd fast float %1081, %1084
  %1088 = call float @dx.op.dot3.f32(i32 55, float %1085, float %1086, float %1087, float %1085, float %1086, float %1087)  ; Dot3(ax,ay,az,bx,by,bz)
  %1089 = call float @dx.op.unary.f32(i32 25, float %1088)  ; Rsqrt(value)
  %1090 = fmul fast float %1085, %1089
  %1091 = fmul fast float %1086, %1089
  %1092 = fmul fast float %1087, %1089
  %1093 = icmp ne i32 %1009, 0
  %1094 = select i1 %1093, float 1.000000e+00, float 0.000000e+00
  %1095 = fmul fast float %999, %1094
  %1096 = and i32 %852, 1
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1098, label %1102

; <label>:1098                                    ; preds = %1007
  %1099 = fsub fast float %1090, %784
  %1100 = fsub fast float %1091, %785
  %1101 = fsub fast float %1092, %786
  br label %1102

; <label>:1102                                    ; preds = %1098, %1007
  %1103 = phi float [ %1099, %1098 ], [ %1090, %1007 ]
  %1104 = phi float [ %1100, %1098 ], [ %1091, %1007 ]
  %1105 = phi float [ %1101, %1098 ], [ %1092, %1007 ]
  %1106 = fmul float %1105, %1095
  %1107 = fmul float %1104, %1095
  %1108 = fmul float %1103, %1095
  %1109 = fadd fast float %1108, %784
  %1110 = fadd fast float %1107, %785
  %1111 = fadd fast float %1106, %786
  %1112 = icmp ne i32 %1008, 0
  %1113 = select i1 %1112, float 1.000000e+00, float 0.000000e+00
  %1114 = fmul fast float %999, %1113
  %1115 = fsub fast float %1053, %791
  %1116 = fsub fast float %1054, %792
  %1117 = fsub fast float %1055, %793
  %1118 = fmul fast float %1115, %1114
  %1119 = fmul fast float %1116, %1114
  %1120 = fmul fast float %1117, %1114
  %1121 = fadd fast float %1118, %791
  %1122 = fadd fast float %1119, %792
  %1123 = fadd fast float %1120, %793
  %1124 = fsub fast float %1026, %790
  %1125 = fmul fast float %1124, %1114
  %1126 = fadd fast float %1125, %790
  %1127 = fmul fast float %1114, %780
  %1128 = fsub fast float %780, %1127
  %1129 = fmul fast float %1114, %779
  %1130 = fsub fast float %779, %1129
  %1131 = fadd fast float %999, %789
  %1132 = call float @dx.op.unary.f32(i32 7, float %1131)  ; Saturate(value)
  %1133 = fsub fast float %1046, %788
  %1134 = fmul fast float %1133, %1095
  %1135 = fadd fast float %1134, %788
  %1136 = fsub fast float %1032, %787
  %1137 = fmul fast float %1136, %1095
  %1138 = fadd fast float %1137, %787
  %1139 = call float @dx.op.dot3.f32(i32 55, float %1053, float %1054, float %1055, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.CBufRet.f32 %1140, 1
  %1143 = fmul fast float %1142, %1139
  %1144 = fadd fast float %1143, %1141
  %1145 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  %1146 = bitcast float %840 to i32
  %1147 = and i32 %1146, 65535
  %1148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1147)  ; LegacyF16ToF32(value)
  %1149 = lshr i32 %1146, 16
  %1150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1149)  ; LegacyF16ToF32(value)
  %1151 = fcmp fast oge float %1148, 0.000000e+00
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 0
  %1154 = select i1 %1151, float %1148, float %1153
  %1155 = fadd fast float %1154, %1150
  %1156 = fsub fast float %1145, %778
  %1157 = fmul fast float %1156, %999
  %1158 = fadd fast float %1157, %778
  %1159 = fmul fast float %1155, %999
  %1160 = call float @dx.op.binary.f32(i32 35, float %777, float %1159)  ; FMax(a,b)
  %1161 = call float @dx.op.binary.f32(i32 35, float %776, float %999)  ; FMax(a,b)
  %1162 = and i32 %852, 16
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1186, label %1164

; <label>:1164                                    ; preds = %1102
  %1165 = bitcast float %846 to i32
  %1166 = add i32 %843, 0
  %1167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1166, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1168 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1167, %dx.types.Handle %1012, float %940, float %943, float undef, float undef, i32 0, i32 0, i32 undef, float %945, float %947, float undef, float %949, float %951, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = extractvalue %dx.types.ResRet.f32 %1168, 1
  %1171 = extractvalue %dx.types.ResRet.f32 %1168, 2
  %1172 = and i32 %1165, 65535
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = fmul fast float %1169, %837
  %1175 = fmul fast float %1170, %838
  %1176 = fmul fast float %1171, %839
  %1177 = and i32 %852, 16384
  %1178 = icmp ne i32 %1177, 0
  %1179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1180 = extractvalue %dx.types.CBufRet.f32 %1179, 0
  %1181 = select i1 %1178, float %1180, float 1.000000e+00
  %1182 = fmul fast float %1181, %1173
  %1183 = fmul fast float %1174, %1182
  %1184 = fmul fast float %1175, %1182
  %1185 = fmul fast float %1176, %1182
  br label %1186

; <label>:1186                                    ; preds = %1164, %1102
  %1187 = phi float [ %1183, %1164 ], [ 0.000000e+00, %1102 ]
  %1188 = phi float [ %1184, %1164 ], [ 0.000000e+00, %1102 ]
  %1189 = phi float [ %1185, %1164 ], [ 0.000000e+00, %1102 ]
  %1190 = fsub fast float %1187, %781
  %1191 = fsub fast float %1188, %782
  %1192 = fsub fast float %1189, %783
  %1193 = fmul fast float %1190, %999
  %1194 = fmul fast float %1191, %999
  %1195 = fmul fast float %1192, %999
  %1196 = fadd fast float %1193, %781
  %1197 = fadd fast float %1194, %782
  %1198 = fadd fast float %1195, %783
  br label %901

; <label>:1199                                    ; preds = %901
  br label %1200

; <label>:1200                                    ; preds = %1199, %677
  %1201 = phi float [ 0.000000e+00, %677 ], [ %902, %1199 ]
  %1202 = phi float [ %687, %677 ], [ %903, %1199 ]
  %1203 = phi float [ %692, %677 ], [ %904, %1199 ]
  %1204 = phi float [ %690, %677 ], [ %905, %1199 ]
  %1205 = phi float [ 0.000000e+00, %677 ], [ %906, %1199 ]
  %1206 = phi float [ 0.000000e+00, %677 ], [ %907, %1199 ]
  %1207 = phi float [ %683, %677 ], [ %908, %1199 ]
  %1208 = phi float [ %684, %677 ], [ %909, %1199 ]
  %1209 = phi float [ %685, %677 ], [ %910, %1199 ]
  %1210 = phi float [ %718, %677 ], [ %911, %1199 ]
  %1211 = phi float [ %719, %677 ], [ %912, %1199 ]
  %1212 = phi float [ %720, %677 ], [ %913, %1199 ]
  %1213 = phi float [ %689, %677 ], [ %914, %1199 ]
  %1214 = phi float [ %688, %677 ], [ %915, %1199 ]
  %1215 = phi float [ 0.000000e+00, %677 ], [ %916, %1199 ]
  %1216 = phi float [ %686, %677 ], [ %917, %1199 ]
  %1217 = phi float [ %680, %677 ], [ %918, %1199 ]
  %1218 = phi float [ %681, %677 ], [ %919, %1199 ]
  %1219 = phi float [ %682, %677 ], [ %920, %1199 ]
  %1220 = call float @dx.op.dot3.f32(i32 55, float %1210, float %1211, float %1212, float %1210, float %1211, float %1212)  ; Dot3(ax,ay,az,bx,by,bz)
  %1221 = call float @dx.op.unary.f32(i32 25, float %1220)  ; Rsqrt(value)
  %1222 = fmul fast float %1221, %1210
  %1223 = fmul fast float %1221, %1211
  %1224 = fmul fast float %1221, %1212
  %1225 = fadd fast float %1215, %687
  %1226 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1227 = call float @dx.op.dot3.f32(i32 55, float %1222, float %1223, float %1224, float %1222, float %1223, float %1224)  ; Dot3(ax,ay,az,bx,by,bz)
  %1228 = call float @dx.op.unary.f32(i32 25, float %1227)  ; Rsqrt(value)
  %1229 = fmul fast float %1228, %1222
  %1230 = fmul fast float %1228, %1223
  %1231 = fmul fast float %1228, %1224
  %1232 = fadd fast float %1216, 0xBFB99999A0000000
  %1233 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  %1234 = fmul fast float %1233, 0x3FF1C71C80000000
  %1235 = call float @dx.op.binary.f32(i32 36, float %1216, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1236 = fsub fast float 1.000000e+00, %1234
  %1237 = call float @dx.op.unary.f32(i32 7, float %1236)  ; Saturate(value)
  %1238 = fmul fast float %1237, %1217
  %1239 = fmul fast float %1237, %1218
  %1240 = fmul fast float %1237, %1219
  %1241 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  %1242 = call float @dx.op.unary.f32(i32 7, float %1239)  ; Saturate(value)
  %1243 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1244 = fmul fast float %1234, %1217
  %1245 = fmul fast float %1234, %1218
  %1246 = fmul fast float %1234, %1219
  %1247 = fadd fast float %1244, %1235
  %1248 = fadd fast float %1245, %1235
  %1249 = fadd fast float %1246, %1235
  %1250 = call float @dx.op.unary.f32(i32 7, float %1247)  ; Saturate(value)
  %1251 = call float @dx.op.unary.f32(i32 7, float %1248)  ; Saturate(value)
  %1252 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1253 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.i32 %1254, 3
  %1256 = and i32 %1255, 8
  %1257 = icmp ne i32 %1256, 0
  %1258 = call float @dx.op.binary.f32(i32 35, float %1241, float %1217)  ; FMax(a,b)
  %1259 = call float @dx.op.binary.f32(i32 35, float %1242, float %1217)  ; FMax(a,b)
  %1260 = call float @dx.op.binary.f32(i32 35, float %1243, float %1217)  ; FMax(a,b)
  %1261 = call float @dx.op.dot3.f32(i32 55, float %1241, float %1242, float %1243, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1262 = select i1 %176, float %1217, float %1241
  %1263 = select i1 %176, float %1261, float %1242
  %1264 = select i1 %176, float 1.000000e+00, float %1243
  %1265 = select i1 %1257, float %1258, float %1262
  %1266 = select i1 %1257, float %1259, float %1263
  %1267 = select i1 %1257, float %1260, float %1264
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 0
  %1270 = extractvalue %dx.types.CBufRet.f32 %1268, 1
  %1271 = extractvalue %dx.types.CBufRet.f32 %1268, 2
  %1272 = fadd fast float %1269, %105
  %1273 = fadd fast float %1270, %106
  %1274 = fadd fast float %1271, %107
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 0
  %1277 = extractvalue %dx.types.CBufRet.f32 %1275, 1
  %1278 = fsub fast float %1272, %1276
  %1279 = fsub fast float %1273, %1277
  %1280 = fmul fast float %1278, %1278
  %1281 = fmul fast float %1279, %1279
  %1282 = fadd fast float %1280, %1281
  %1283 = call float @dx.op.unary.f32(i32 24, float %1282)  ; Sqrt(value)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1275, 2
  %1285 = fcmp fast olt float %1283, %1284
  br i1 %1285, label %1286, label %1353

; <label>:1286                                    ; preds = %1200
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 0
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 0
  %1291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.CBufRet.f32 %1287, 1
  %1294 = extractvalue %dx.types.CBufRet.f32 %1289, 1
  %1295 = extractvalue %dx.types.CBufRet.f32 %1291, 1
  %1296 = extractvalue %dx.types.CBufRet.f32 %1287, 3
  %1297 = extractvalue %dx.types.CBufRet.f32 %1289, 3
  %1298 = extractvalue %dx.types.CBufRet.f32 %1291, 3
  %1299 = fadd fast float %1296, %1272
  %1300 = fadd fast float %1297, %1273
  %1301 = fadd fast float %1298, %1274
  %1302 = fmul fast float %1299, %1288
  %1303 = call float @dx.op.tertiary.f32(i32 46, float %1300, float %1290, float %1302)  ; FMad(a,b,c)
  %1304 = call float @dx.op.tertiary.f32(i32 46, float %1301, float %1292, float %1303)  ; FMad(a,b,c)
  %1305 = fmul fast float %1299, %1293
  %1306 = call float @dx.op.tertiary.f32(i32 46, float %1300, float %1294, float %1305)  ; FMad(a,b,c)
  %1307 = call float @dx.op.tertiary.f32(i32 46, float %1301, float %1295, float %1306)  ; FMad(a,b,c)
  %1308 = fsub fast float %1304, %1296
  %1309 = fsub fast float %1307, %1297
  %1310 = fsub fast float %1308, %1276
  %1311 = fadd fast float %1310, %1284
  %1312 = fsub fast float %1309, %1277
  %1313 = fadd fast float %1312, %1284
  %1314 = extractvalue %dx.types.CBufRet.f32 %1275, 3
  %1315 = fmul fast float %1311, %1314
  %1316 = fmul fast float %1313, %1314
  %1317 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  %1318 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1319 = fsub fast float 1.000000e+00, %1317
  %1320 = fsub fast float 1.000000e+00, %1318
  %1321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %1319, float %1320, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1322 = extractvalue %dx.types.ResRet.f32 %1321, 0
  %1323 = fcmp fast ugt float %1322, 0.000000e+00
  br i1 %1323, label %1324, label %1627

; <label>:1324                                    ; preds = %1286
  %1325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1326 = extractvalue %dx.types.CBufRet.f32 %1325, 2
  %1327 = fmul fast float %1326, %1322
  %1328 = extractvalue %dx.types.CBufRet.f32 %1325, 3
  %1329 = fadd fast float %1328, %1327
  %1330 = extractvalue %dx.types.CBufRet.f32 %1291, 2
  %1331 = fadd fast float %1329, %1298
  %1332 = fmul fast float %1304, %1292
  %1333 = call float @dx.op.tertiary.f32(i32 46, float %1307, float %1295, float %1332)  ; FMad(a,b,c)
  %1334 = call float @dx.op.tertiary.f32(i32 46, float %1331, float %1330, float %1333)  ; FMad(a,b,c)
  %1335 = fsub fast float %1334, %1298
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 2
  %1338 = fsub fast float %1335, %1337
  %1339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %1319, float %1320, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1340 = extractvalue %dx.types.ResRet.f32 %1339, 0
  %1341 = extractvalue %dx.types.ResRet.f32 %1339, 1
  %1342 = extractvalue %dx.types.ResRet.f32 %1339, 2
  %1343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %1319, float %1320, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1344 = extractvalue %dx.types.ResRet.f32 %1343, 0
  %1345 = extractvalue %dx.types.ResRet.f32 %1343, 1
  %1346 = extractvalue %dx.types.ResRet.f32 %1343, 2
  %1347 = fadd fast float %1344, %1340
  %1348 = fmul fast float %1347, 0x3F847AE140000000
  %1349 = fadd fast float %1345, %1341
  %1350 = fmul fast float %1349, 0x3F847AE140000000
  %1351 = fadd fast float %1346, %1342
  %1352 = fmul fast float %1351, 0x3F847AE140000000
  br label %1627

; <label>:1353                                    ; preds = %1200
  %1354 = and i32 %152, 1
  %1355 = icmp eq i32 %1354, 0
  br i1 %1355, label %1627, label %1356

; <label>:1356                                    ; preds = %1353
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 0
  %1359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.f32 %1359, 0
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1364 = extractvalue %dx.types.CBufRet.f32 %1359, 1
  %1365 = extractvalue %dx.types.CBufRet.f32 %1361, 1
  %1366 = extractvalue %dx.types.CBufRet.f32 %1357, 3
  %1367 = extractvalue %dx.types.CBufRet.f32 %1359, 3
  %1368 = extractvalue %dx.types.CBufRet.f32 %1361, 3
  %1369 = fadd fast float %1366, %1272
  %1370 = fadd fast float %1367, %1273
  %1371 = fadd fast float %1368, %1274
  %1372 = fmul fast float %1369, %1358
  %1373 = call float @dx.op.tertiary.f32(i32 46, float %1370, float %1360, float %1372)  ; FMad(a,b,c)
  %1374 = call float @dx.op.tertiary.f32(i32 46, float %1371, float %1362, float %1373)  ; FMad(a,b,c)
  %1375 = fmul fast float %1369, %1363
  %1376 = call float @dx.op.tertiary.f32(i32 46, float %1370, float %1364, float %1375)  ; FMad(a,b,c)
  %1377 = call float @dx.op.tertiary.f32(i32 46, float %1371, float %1365, float %1376)  ; FMad(a,b,c)
  %1378 = fsub fast float %1374, %1366
  %1379 = fsub fast float %1377, %1367
  %1380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.f32 %1380, 0
  %1382 = extractvalue %dx.types.CBufRet.f32 %1380, 1
  %1383 = extractvalue %dx.types.CBufRet.f32 %1380, 2
  %1384 = extractvalue %dx.types.CBufRet.f32 %1380, 3
  %1385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.f32 %1385, 3
  %1387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.i32 %1387, 0
  %1389 = extractvalue %dx.types.CBufRet.i32 %1387, 1
  %1390 = udiv i32 %1389, %1388
  %1391 = fsub fast float %1378, %1381
  %1392 = fsub fast float %1379, %1382
  %1393 = call float @dx.op.binary.f32(i32 35, float %1391, float 0.000000e+00)  ; FMax(a,b)
  %1394 = call float @dx.op.binary.f32(i32 35, float %1392, float 0.000000e+00)  ; FMax(a,b)
  %1395 = call float @dx.op.binary.f32(i32 36, float %1393, float %1383)  ; FMin(a,b)
  %1396 = call float @dx.op.binary.f32(i32 36, float %1394, float %1384)  ; FMin(a,b)
  %1397 = add i32 %1388, -1
  %1398 = add i32 %1390, -1
  %1399 = fmul fast float %1395, %1386
  %1400 = fmul fast float %1396, %1386
  %1401 = fptoui float %1399 to i32
  %1402 = fptoui float %1400 to i32
  %1403 = call i32 @dx.op.binary.i32(i32 40, i32 %1401, i32 %1397)  ; UMin(a,b)
  %1404 = call i32 @dx.op.binary.i32(i32 40, i32 %1402, i32 %1398)  ; UMin(a,b)
  %1405 = mul i32 %1404, %1388
  %1406 = add i32 %1405, %1403
  %1407 = shl i32 %1406, 2
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1407, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = icmp eq i32 %1409, -1
  br i1 %1410, label %1627, label %1411

; <label>:1411                                    ; preds = %1356
  %1412 = mul i32 %1409, 148
  %1413 = add i32 %1412, 4
  %1414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1413, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.f32 %1414, 0
  %1416 = add i32 %1412, 8
  %1417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1416, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.f32 %1417, 0
  %1419 = add i32 %1412, 36
  %1420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = add i32 %1412, 60
  %1423 = add i32 %1412, 92
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = add i32 %1412, 116
  %1427 = fsub fast float %1378, %1415
  %1428 = fsub fast float %1379, %1418
  %1429 = fmul fast float %1386, %1427
  %1430 = fmul fast float %1386, %1428
  %1431 = call float @dx.op.unary.f32(i32 7, float %1429)  ; Saturate(value)
  %1432 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1433 = fsub fast float 1.000000e+00, %1432
  %1434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.f32 %1434, 2
  %1436 = call float @dx.op.unary.f32(i32 83, float %1431)  ; DerivCoarseX(value)
  %1437 = call float @dx.op.unary.f32(i32 83, float %1433)  ; DerivCoarseX(value)
  %1438 = call float @dx.op.unary.f32(i32 84, float %1431)  ; DerivCoarseY(value)
  %1439 = call float @dx.op.unary.f32(i32 84, float %1433)  ; DerivCoarseY(value)
  %1440 = fmul fast float %1436, %1435
  %1441 = fmul fast float %1437, %1435
  %1442 = fmul fast float %1438, %1435
  %1443 = fmul fast float %1439, %1435
  %1444 = call float @dx.op.dot2.f32(i32 54, float %1442, float %1443, float %1442, float %1443)  ; Dot2(ax,ay,bx,by)
  %1445 = call float @dx.op.dot2.f32(i32 54, float %1440, float %1441, float %1440, float %1441)  ; Dot2(ax,ay,bx,by)
  %1446 = call float @dx.op.binary.f32(i32 35, float %1445, float %1444)  ; FMax(a,b)
  %1447 = call float @dx.op.unary.f32(i32 23, float %1446)  ; Log(value)
  %1448 = fmul fast float %1447, 5.000000e-01
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 1
  %1451 = fadd fast float %1450, %1448
  %1452 = call float @dx.op.binary.f32(i32 35, float %1451, float 0.000000e+00)  ; FMax(a,b)
  %1453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1454 = extractvalue %dx.types.CBufRet.f32 %1453, 3
  %1455 = fadd fast float %1454, %1452
  %1456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.f32 %1456, 3
  %1458 = fadd fast float %1455, %1457
  %1459 = add i32 %1425, 0
  %1460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1459, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1461 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1460, i32 0)  ; GetDimensions(handle,mipLevel)
  %1462 = extractvalue %dx.types.Dimensions %1461, 0
  %1463 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1462)  ; FirstbitLo(value)
  %1464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.i32 %1464, 1
  %1466 = sub nsw i32 %1465, %1463
  %1467 = sitofp i32 %1466 to float
  %1468 = fsub fast float %1458, %1467
  %1469 = call float @dx.op.binary.f32(i32 35, float %1468, float 0.000000e+00)  ; FMax(a,b)
  %1470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1460, %dx.types.Handle %33, float %1431, float %1433, float %1421, float undef, i32 0, i32 0, i32 undef, float %1469)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1471 = extractvalue %dx.types.ResRet.f32 %1470, 0
  %1472 = fcmp ule float %1471, 0x3FE0101020000000
  %1473 = extractvalue %dx.types.CBufRet.i32 %1464, 0
  %1474 = and i32 %1473, 128
  %1475 = icmp ne i32 %1474, 0
  %1476 = and i1 %1472, %1475
  br i1 %1476, label %1627, label %1477

; <label>:1477                                    ; preds = %1411
  %1478 = add i32 %1412, 20
  %1479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.f32 %1479, 0
  %1481 = add i32 %1412, 24
  %1482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 0
  %1484 = add i32 %1412, 40
  %1485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.f32 %1485, 0
  %1487 = add i32 %1412, 96
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 2
  %1492 = fmul fast float %1491, %1431
  %1493 = fmul fast float %1491, %1433
  %1494 = extractvalue %dx.types.CBufRet.f32 %1490, 3
  %1495 = fadd fast float %1492, %1494
  %1496 = fadd fast float %1493, %1494
  %1497 = add i32 %1489, 0
  %1498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1497, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1499 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1498, i32 0)  ; GetDimensions(handle,mipLevel)
  %1500 = extractvalue %dx.types.Dimensions %1499, 0
  %1501 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1500)  ; FirstbitLo(value)
  %1502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1503 = extractvalue %dx.types.CBufRet.i32 %1502, 1
  %1504 = sub nsw i32 %1503, %1501
  %1505 = sitofp i32 %1504 to float
  %1506 = fsub fast float %1455, %1505
  %1507 = call float @dx.op.binary.f32(i32 35, float %1506, float 0.000000e+00)  ; FMax(a,b)
  %1508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1498, %dx.types.Handle %33, float %1495, float %1496, float %1486, float undef, i32 0, i32 0, i32 undef, float %1507)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1509 = extractvalue %dx.types.ResRet.f32 %1508, 0
  %1510 = fmul fast float %1509, %1480
  %1511 = fadd fast float %1510, %1483
  %1512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1513 = extractvalue %dx.types.CBufRet.f32 %1512, 0
  %1514 = extractvalue %dx.types.CBufRet.f32 %1512, 1
  %1515 = extractvalue %dx.types.CBufRet.f32 %1512, 2
  %1516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1517 = extractvalue %dx.types.CBufRet.f32 %1516, 3
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 3
  %1520 = extractvalue %dx.types.CBufRet.f32 %1512, 3
  %1521 = fadd fast float %1517, %1378
  %1522 = fadd fast float %1519, %1379
  %1523 = fadd fast float %1511, %1520
  %1524 = fmul fast float %1521, %1513
  %1525 = call float @dx.op.tertiary.f32(i32 46, float %1522, float %1514, float %1524)  ; FMad(a,b,c)
  %1526 = call float @dx.op.tertiary.f32(i32 46, float %1523, float %1515, float %1525)  ; FMad(a,b,c)
  %1527 = fsub fast float %1526, %1520
  %1528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1529 = extractvalue %dx.types.CBufRet.f32 %1528, 2
  %1530 = fsub fast float %1527, %1529
  %1531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1532 = extractvalue %dx.types.CBufRet.i32 %1531, 0
  %1533 = call i32 @dx.op.binary.i32(i32 40, i32 %1409, i32 %1532)  ; UMin(a,b)
  %1534 = mul i32 %1533, 36
  %1535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1534, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.i32 %1535, 0
  %1537 = add i32 %1534, 4
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 0
  %1540 = fmul fast float %1539, %1431
  %1541 = fmul fast float %1539, %1433
  %1542 = extractvalue %dx.types.CBufRet.f32 %1538, 1
  %1543 = fadd fast float %1540, %1542
  %1544 = fadd fast float %1541, %1542
  %1545 = icmp eq i32 %1536, 0
  br i1 %1545, label %1614, label %1546

; <label>:1546                                    ; preds = %1477
  br label %1547

; <label>:1547                                    ; preds = %1604, %1546
  %1548 = phi float [ %1605, %1604 ], [ 0.000000e+00, %1546 ]
  %1549 = phi float [ %1606, %1604 ], [ 0.000000e+00, %1546 ]
  %1550 = phi float [ %1607, %1604 ], [ 0.000000e+00, %1546 ]
  %1551 = phi float [ %1608, %1604 ], [ 0.000000e+00, %1546 ]
  %1552 = phi float [ %1609, %1604 ], [ 0.000000e+00, %1546 ]
  %1553 = phi float [ %1610, %1604 ], [ 0.000000e+00, %1546 ]
  %1554 = phi i32 [ %1611, %1604 ], [ 0, %1546 ]
  %1555 = shl i32 %1554, 2
  %1556 = add i32 %1422, %1555
  %1557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 0
  %1559 = add i32 %1426, %1555
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1559, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = add i32 %1561, 0
  %1563 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1562, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1564 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1563, i32 0)  ; GetDimensions(handle,mipLevel)
  %1565 = extractvalue %dx.types.Dimensions %1564, 0
  %1566 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1565)  ; FirstbitLo(value)
  %1567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.i32 %1567, 1
  %1569 = sub nsw i32 %1568, %1566
  %1570 = sitofp i32 %1569 to float
  %1571 = fsub fast float %1455, %1570
  %1572 = call float @dx.op.binary.f32(i32 35, float %1571, float 0.000000e+00)  ; FMax(a,b)
  %1573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1563, %dx.types.Handle %33, float %1543, float %1544, float %1558, float undef, i32 0, i32 0, i32 undef, float %1572)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1574 = extractvalue %dx.types.ResRet.f32 %1573, 0
  %1575 = fcmp fast ogt float %1574, 0.000000e+00
  br i1 %1575, label %1576, label %1604

; <label>:1576                                    ; preds = %1547
  %1577 = add i32 %1537, %1555
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = and i32 %1579, 32767
  %1581 = mul nuw nsw i32 %1580, 928
  %1582 = add nuw nsw i32 %1581, 48
  %1583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.f32 %1583, 0
  %1585 = extractvalue %dx.types.ResRet.f32 %1583, 1
  %1586 = extractvalue %dx.types.ResRet.f32 %1583, 2
  %1587 = add nuw nsw i32 %1581, 60
  %1588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1587, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.f32 %1588, 0
  %1590 = extractvalue %dx.types.ResRet.f32 %1588, 1
  %1591 = extractvalue %dx.types.ResRet.f32 %1588, 2
  %1592 = fmul fast float %1584, %1574
  %1593 = fmul fast float %1585, %1574
  %1594 = fmul fast float %1586, %1574
  %1595 = fadd fast float %1592, %1548
  %1596 = fadd fast float %1593, %1549
  %1597 = fadd fast float %1594, %1550
  %1598 = fmul fast float %1589, %1574
  %1599 = fmul fast float %1590, %1574
  %1600 = fmul fast float %1591, %1574
  %1601 = fadd fast float %1598, %1551
  %1602 = fadd fast float %1599, %1552
  %1603 = fadd fast float %1600, %1553
  br label %1604

; <label>:1604                                    ; preds = %1576, %1547
  %1605 = phi float [ %1595, %1576 ], [ %1548, %1547 ]
  %1606 = phi float [ %1596, %1576 ], [ %1549, %1547 ]
  %1607 = phi float [ %1597, %1576 ], [ %1550, %1547 ]
  %1608 = phi float [ %1601, %1576 ], [ %1551, %1547 ]
  %1609 = phi float [ %1602, %1576 ], [ %1552, %1547 ]
  %1610 = phi float [ %1603, %1576 ], [ %1553, %1547 ]
  %1611 = add nuw i32 %1554, 1
  %1612 = icmp eq i32 %1611, %1536
  br i1 %1612, label %1613, label %1547

; <label>:1613                                    ; preds = %1604
  br label %1614

; <label>:1614                                    ; preds = %1613, %1477
  %1615 = phi float [ 0.000000e+00, %1477 ], [ %1605, %1613 ]
  %1616 = phi float [ 0.000000e+00, %1477 ], [ %1606, %1613 ]
  %1617 = phi float [ 0.000000e+00, %1477 ], [ %1607, %1613 ]
  %1618 = phi float [ 0.000000e+00, %1477 ], [ %1608, %1613 ]
  %1619 = phi float [ 0.000000e+00, %1477 ], [ %1609, %1613 ]
  %1620 = phi float [ 0.000000e+00, %1477 ], [ %1610, %1613 ]
  %1621 = fadd fast float %1618, %1615
  %1622 = fmul fast float %1621, 0x3F847AE140000000
  %1623 = fadd fast float %1619, %1616
  %1624 = fmul fast float %1623, 0x3F847AE140000000
  %1625 = fadd fast float %1620, %1617
  %1626 = fmul fast float %1625, 0x3F847AE140000000
  br label %1627

; <label>:1627                                    ; preds = %1614, %1411, %1356, %1353, %1324, %1286
  %1628 = phi float [ %1338, %1324 ], [ -1.310720e+05, %1286 ], [ %1530, %1614 ], [ -1.310720e+05, %1356 ], [ -1.310720e+05, %1411 ], [ -1.310720e+05, %1353 ]
  %1629 = phi float [ %1348, %1324 ], [ 0.000000e+00, %1286 ], [ %1622, %1614 ], [ 0.000000e+00, %1356 ], [ 0.000000e+00, %1411 ], [ 0.000000e+00, %1353 ]
  %1630 = phi float [ %1350, %1324 ], [ 0.000000e+00, %1286 ], [ %1624, %1614 ], [ 0.000000e+00, %1356 ], [ 0.000000e+00, %1411 ], [ 0.000000e+00, %1353 ]
  %1631 = phi float [ %1352, %1324 ], [ 0.000000e+00, %1286 ], [ %1626, %1614 ], [ 0.000000e+00, %1356 ], [ 0.000000e+00, %1411 ], [ 0.000000e+00, %1353 ]
  %1632 = phi i1 [ true, %1324 ], [ false, %1286 ], [ true, %1614 ], [ false, %1356 ], [ false, %1411 ], [ false, %1353 ]
  %1633 = and i32 %152, 3
  %1634 = icmp eq i32 %1633, 1
  %1635 = select i1 %1634, float 1.000000e+00, float 0.000000e+00
  %1636 = fsub fast float %1628, %107
  %1637 = call float @dx.op.unary.f32(i32 7, float %1636)  ; Saturate(value)
  %1638 = select i1 %1632, float %1637, float 1.000000e+00
  %1639 = fmul fast float %1638, %1635
  %1640 = icmp eq i32 %1633, 3
  %1641 = select i1 %1640, float 1.000000e+00, float %1639
  %1642 = call float @dx.op.binary.f32(i32 35, float %1201, float %1641)  ; FMax(a,b)
  %1643 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  %1644 = fcmp fast une float %1643, 0.000000e+00
  %1645 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %1646 = call float @dx.op.unary.f32(i32 25, float %1645)  ; Rsqrt(value)
  br i1 %1644, label %1654, label %1647

; <label>:1647                                    ; preds = %1627
  %1648 = fmul fast float %1646, %105
  %1649 = fmul fast float %1646, %106
  %1650 = fmul fast float %1646, %107
  %1651 = fsub fast float -0.000000e+00, %1648
  %1652 = fsub fast float -0.000000e+00, %1649
  %1653 = fsub fast float -0.000000e+00, %1650
  br label %1822

; <label>:1654                                    ; preds = %1627
  %1655 = fmul fast float %105, %1646
  %1656 = fsub fast float -0.000000e+00, %1655
  %1657 = fmul fast float %106, %1646
  %1658 = fsub fast float -0.000000e+00, %1657
  %1659 = fmul fast float %107, %1646
  %1660 = fsub fast float -0.000000e+00, %1659
  %1661 = call float @dx.op.dot3.f32(i32 55, float %1656, float %1658, float %1660, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %1662 = fmul fast float %1643, 2.500000e+00
  %1663 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  %1664 = fmul fast float %1643, 0x4013FFFFE0000000
  %1665 = fadd fast float %1664, 0xBFFFFFFFE0000000
  %1666 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  %1667 = fmul fast float %1643, 0x4004000020000000
  %1668 = fadd fast float %1667, 0xBFF8000040000000
  %1669 = call float @dx.op.unary.f32(i32 7, float %1668)  ; Saturate(value)
  %1670 = call float @dx.op.unary.f32(i32 7, float %1663)  ; Saturate(value)
  %1671 = fmul fast float %1232, 1.000000e+01
  %1672 = call float @dx.op.unary.f32(i32 7, float %1671)  ; Saturate(value)
  %1673 = fmul fast float %1672, 2.000000e+00
  %1674 = fsub fast float 3.000000e+00, %1673
  %1675 = fmul fast float %1672, %1672
  %1676 = fmul fast float %1675, %1674
  %1677 = fsub fast float 1.000000e+00, %1676
  %1678 = fsub fast float 0x3FE3333340000000, %1253
  %1679 = fmul fast float %1678, 0x400AAAAAA0000000
  %1680 = call float @dx.op.unary.f32(i32 7, float %1679)  ; Saturate(value)
  %1681 = fmul fast float %1677, %1680
  %1682 = fmul fast float %1265, 0x3FEA2B8620000000
  %1683 = fmul fast float %1266, 0x3FEA2B8620000000
  %1684 = fmul fast float %1267, 0x3FEA2B8620000000
  %1685 = fadd fast float %1682, 0x3FC81DFBA0000000
  %1686 = fmul fast float %1685, %1265
  %1687 = fadd fast float %1686, 0x3F910E6020000000
  %1688 = fadd fast float %1683, 0x3FC81DFBA0000000
  %1689 = fmul fast float %1688, %1266
  %1690 = fadd fast float %1689, 0x3F910E6020000000
  %1691 = fadd fast float %1684, 0x3FC81DFBA0000000
  %1692 = fmul fast float %1691, %1267
  %1693 = fadd fast float %1692, 0x3F910E6020000000
  %1694 = call float @dx.op.unary.f32(i32 7, float %1687)  ; Saturate(value)
  %1695 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1696 = call float @dx.op.unary.f32(i32 7, float %1693)  ; Saturate(value)
  %1697 = fsub fast float %1694, %1265
  %1698 = fsub fast float %1695, %1266
  %1699 = fsub fast float %1696, %1267
  %1700 = fmul fast float %1697, %1670
  %1701 = fmul fast float %1700, %1681
  %1702 = fmul fast float %1698, %1670
  %1703 = fmul fast float %1702, %1681
  %1704 = fmul fast float %1699, %1670
  %1705 = fmul fast float %1704, %1681
  %1706 = fadd fast float %1701, %1265
  %1707 = fadd fast float %1703, %1266
  %1708 = fadd fast float %1705, %1267
  %1709 = fmul fast float %1213, %1213
  %1710 = fmul fast float %1709, %1709
  %1711 = fadd fast float %1666, 1.000000e+00
  %1712 = fsub fast float %1711, %1681
  %1713 = call float @dx.op.unary.f32(i32 7, float %1712)  ; Saturate(value)
  %1714 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1715 = call float @dx.op.unary.f32(i32 7, float %1714)  ; Saturate(value)
  %1716 = fsub fast float 1.000000e+00, %1710
  %1717 = call float @dx.op.binary.f32(i32 36, float %1713, float %1716)  ; FMin(a,b)
  %1718 = call float @dx.op.unary.f32(i32 7, float %1669)  ; Saturate(value)
  %1719 = call float @dx.op.binary.f32(i32 35, float %1717, float %1718)  ; FMax(a,b)
  %1720 = fadd fast float %1715, 0xBFE4CCCCC0000000
  %1721 = fmul fast float %1720, 0x4006DB6DA0000000
  %1722 = call float @dx.op.unary.f32(i32 7, float %1721)  ; Saturate(value)
  %1723 = fmul fast float %1722, 2.000000e+00
  %1724 = fsub fast float 3.000000e+00, %1723
  %1725 = bitcast float %1250 to i32
  %1726 = ashr i32 %1725, 1
  %1727 = add nsw i32 %1726, 532487669
  %1728 = bitcast i32 %1727 to float
  %1729 = fsub fast float 1.000000e+00, %1728
  %1730 = bitcast float %1729 to i32
  %1731 = sub nsw i32 2129859010, %1730
  %1732 = bitcast i32 %1731 to float
  %1733 = fmul fast float %1732, 2.000000e+00
  %1734 = bitcast float %1251 to i32
  %1735 = ashr i32 %1734, 1
  %1736 = add nsw i32 %1735, 532487669
  %1737 = bitcast i32 %1736 to float
  %1738 = fsub fast float 1.000000e+00, %1737
  %1739 = bitcast float %1738 to i32
  %1740 = sub nsw i32 2129859010, %1739
  %1741 = bitcast i32 %1740 to float
  %1742 = fmul fast float %1741, 2.000000e+00
  %1743 = bitcast float %1252 to i32
  %1744 = ashr i32 %1743, 1
  %1745 = add nsw i32 %1744, 532487669
  %1746 = bitcast i32 %1745 to float
  %1747 = fsub fast float 1.000000e+00, %1746
  %1748 = bitcast float %1747 to i32
  %1749 = sub nsw i32 2129859010, %1748
  %1750 = bitcast i32 %1749 to float
  %1751 = fmul fast float %1750, 2.000000e+00
  %1752 = fsub fast float 0x4002A9FBE0000000, %1733
  %1753 = fadd fast float %1733, 0x3FD54FDF00000000
  %1754 = bitcast float %1753 to i32
  %1755 = sub nsw i32 2129859010, %1754
  %1756 = bitcast i32 %1755 to float
  %1757 = fmul fast float %1756, %1752
  %1758 = fmul fast float %1757, %1757
  %1759 = fsub fast float 0x4002A9FBE0000000, %1742
  %1760 = fadd fast float %1742, 0x3FD54FDF00000000
  %1761 = bitcast float %1760 to i32
  %1762 = sub nsw i32 2129859010, %1761
  %1763 = bitcast i32 %1762 to float
  %1764 = fmul fast float %1763, %1759
  %1765 = fmul fast float %1764, %1764
  %1766 = fsub fast float 0x4002A9FBE0000000, %1751
  %1767 = fadd fast float %1751, 0x3FD54FDF00000000
  %1768 = bitcast float %1767 to i32
  %1769 = sub nsw i32 2129859010, %1768
  %1770 = bitcast i32 %1769 to float
  %1771 = fmul fast float %1770, %1766
  %1772 = fmul fast float %1771, %1771
  %1773 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1758)  ; FMax(a,b)
  %1774 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1765)  ; FMax(a,b)
  %1775 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1772)  ; FMax(a,b)
  %1776 = fsub fast float 1.000000e+00, %1661
  %1777 = fadd fast float %1776, %1677
  %1778 = call float @dx.op.unary.f32(i32 7, float %1777)  ; Saturate(value)
  %1779 = fsub fast float 1.000000e+00, %1641
  %1780 = fmul fast float %1719, %1779
  %1781 = fmul fast float %1722, %1722
  %1782 = fmul fast float %1781, %1780
  %1783 = fmul fast float %1782, %1724
  %1784 = fmul fast float %1779, 0xBFE99999A0000000
  %1785 = fmul fast float %1784, %1670
  %1786 = fmul fast float %1785, %1681
  %1787 = fadd fast float %1786, 1.000000e+00
  %1788 = fadd fast float %1253, -1.000000e+00
  %1789 = fmul fast float %1787, %1788
  %1790 = fadd fast float %1789, 1.000000e+00
  %1791 = fsub fast float %1773, %1250
  %1792 = fsub fast float %1774, %1251
  %1793 = fsub fast float %1775, %1252
  %1794 = fmul fast float %1783, %1791
  %1795 = fmul fast float %1783, %1792
  %1796 = fmul fast float %1783, %1793
  %1797 = fadd fast float %1794, %1250
  %1798 = fadd fast float %1795, %1251
  %1799 = fadd fast float %1796, %1252
  %1800 = fsub fast float %43, %1229
  %1801 = fsub fast float %44, %1230
  %1802 = fsub fast float %45, %1231
  %1803 = fmul fast float %1783, %1800
  %1804 = fmul fast float %1783, %1801
  %1805 = fmul fast float %1783, %1802
  %1806 = fadd fast float %1803, %1229
  %1807 = fadd fast float %1804, %1230
  %1808 = fadd fast float %1805, %1231
  %1809 = fmul fast float %1783, %1778
  %1810 = call float @dx.op.unary.f32(i32 7, float %1790)  ; Saturate(value)
  %1811 = fsub fast float 1.000000e+00, %1810
  %1812 = fmul fast float %1809, %1811
  %1813 = fadd fast float %1812, %1810
  %1814 = fsub fast float 1.000000e+00, %1213
  %1815 = fmul fast float %1783, %1814
  %1816 = fadd fast float %1815, %1213
  %1817 = call float @dx.op.dot3.f32(i32 55, float %1806, float %1807, float %1808, float %1806, float %1807, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1818 = call float @dx.op.unary.f32(i32 25, float %1817)  ; Rsqrt(value)
  %1819 = fmul fast float %1806, %1818
  %1820 = fmul fast float %1807, %1818
  %1821 = fmul fast float %1808, %1818
  br label %1822

; <label>:1822                                    ; preds = %1654, %1647
  %1823 = phi float [ %1653, %1647 ], [ %1660, %1654 ]
  %1824 = phi float [ %1652, %1647 ], [ %1658, %1654 ]
  %1825 = phi float [ %1651, %1647 ], [ %1656, %1654 ]
  %1826 = phi float [ %1650, %1647 ], [ %1659, %1654 ]
  %1827 = phi float [ %1649, %1647 ], [ %1657, %1654 ]
  %1828 = phi float [ %1648, %1647 ], [ %1655, %1654 ]
  %1829 = phi float [ %1250, %1647 ], [ %1797, %1654 ]
  %1830 = phi float [ %1251, %1647 ], [ %1798, %1654 ]
  %1831 = phi float [ %1252, %1647 ], [ %1799, %1654 ]
  %1832 = phi float [ %1265, %1647 ], [ %1706, %1654 ]
  %1833 = phi float [ %1266, %1647 ], [ %1707, %1654 ]
  %1834 = phi float [ %1267, %1647 ], [ %1708, %1654 ]
  %1835 = phi float [ %1229, %1647 ], [ %1819, %1654 ]
  %1836 = phi float [ %1230, %1647 ], [ %1820, %1654 ]
  %1837 = phi float [ %1231, %1647 ], [ %1821, %1654 ]
  %1838 = phi float [ %1253, %1647 ], [ %1813, %1654 ]
  %1839 = phi float [ %1213, %1647 ], [ %1816, %1654 ]
  %1840 = select i1 %176, float 0.000000e+00, float %1831
  %1841 = call float @dx.op.dot3.f32(i32 55, float %1835, float %1836, float %1837, float %1825, float %1824, float %1823)  ; Dot3(ax,ay,az,bx,by,bz)
  %1842 = call float @dx.op.unary.f32(i32 7, float %1841)  ; Saturate(value)
  %1843 = call float @dx.op.dot3.f32(i32 55, float %1828, float %1827, float %1826, float %1835, float %1836, float %1837)  ; Dot3(ax,ay,az,bx,by,bz)
  %1844 = fmul fast float %1843, 2.000000e+00
  %1845 = fmul fast float %1844, %1835
  %1846 = fmul fast float %1844, %1836
  %1847 = fmul fast float %1844, %1837
  %1848 = fsub fast float %1828, %1845
  %1849 = fsub fast float %1827, %1846
  %1850 = fsub fast float %1826, %1847
  %1851 = call float @dx.op.binary.f32(i32 36, float %1839, float 1.000000e+00)  ; FMin(a,b)
  %1852 = fsub fast float 1.000000e+00, %1839
  %1853 = bitcast float %1852 to i32
  %1854 = sub nsw i32 2129859010, %1853
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 0
  %1857 = extractvalue %dx.types.CBufRet.f32 %1855, 1
  %1858 = fadd fast float %1856, %105
  %1859 = fadd fast float %1857, %106
  %1860 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.i32 %1860, 0
  %1862 = icmp eq i32 %1861, 1
  br i1 %1862, label %1863, label %1898

; <label>:1863                                    ; preds = %1822
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 0
  %1866 = extractvalue %dx.types.CBufRet.f32 %1864, 1
  %1867 = fsub fast float %1858, %1865
  %1868 = fsub fast float %1859, %1866
  %1869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1870 = extractvalue %dx.types.CBufRet.f32 %1869, 0
  %1871 = extractvalue %dx.types.CBufRet.f32 %1869, 1
  %1872 = fmul fast float %1867, %1870
  %1873 = fmul fast float %1868, %1871
  %1874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %1872, float %1873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1875 = extractvalue %dx.types.ResRet.f32 %1874, 0
  %1876 = fcmp fast ogt float %1875, 0.000000e+00
  %1877 = extractvalue %dx.types.CBufRet.i32 %1860, 3
  %1878 = icmp ne i32 %1877, 0
  %1879 = and i1 %1876, %1878
  br i1 %1879, label %1880, label %1898, !dx.controlflow.hints !73

; <label>:1880                                    ; preds = %1863
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.CBufRet.f32 %1881, 1
  %1884 = fsub fast float %1858, %1882
  %1885 = fsub fast float %1859, %1883
  %1886 = fmul fast float %1884, %1884
  %1887 = fmul fast float %1885, %1885
  %1888 = fadd fast float %1886, %1887
  %1889 = uitofp i32 %1877 to float
  %1890 = fmul fast float %1889, %1889
  %1891 = fcmp fast ogt float %1888, %1890
  br i1 %1891, label %1898, label %1892

; <label>:1892                                    ; preds = %1880
  %1893 = call float @dx.op.unary.f32(i32 24, float %1888)  ; Sqrt(value)
  %1894 = fsub fast float %1889, %1893
  %1895 = fmul fast float %1894, 0x3F75555560000000
  %1896 = call float @dx.op.unary.f32(i32 7, float %1895)  ; Saturate(value)
  %1897 = call float @dx.op.binary.f32(i32 36, float %1896, float %1875)  ; FMin(a,b)
  br label %1898

; <label>:1898                                    ; preds = %1892, %1880, %1863, %1822
  %1899 = phi float [ 1.000000e+00, %1822 ], [ %1897, %1892 ], [ %1875, %1863 ], [ 0.000000e+00, %1880 ]
  %1900 = fcmp fast ogt float %1899, 0.000000e+00
  br i1 %1900, label %1901, label %1999, !dx.controlflow.hints !74

; <label>:1901                                    ; preds = %1898
  %1902 = fadd fast float %136, 5.000000e-01
  %1903 = call float @dx.op.unary.f32(i32 27, float %1902)  ; Round_ni(value)
  %1904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %134, float %135, float %1903, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1905 = extractvalue %dx.types.ResRet.f32 %1904, 0
  %1906 = extractvalue %dx.types.ResRet.f32 %1904, 1
  %1907 = extractvalue %dx.types.ResRet.f32 %1904, 2
  %1908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1909 = extractvalue %dx.types.CBufRet.f32 %1908, 3
  %1910 = fmul fast float %1909, %1905
  %1911 = fmul fast float %1909, %1906
  %1912 = fmul fast float %1909, %1907
  %1913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %134, float %135, float %1903, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1914 = extractvalue %dx.types.ResRet.f32 %1913, 0
  %1915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %134, float %135, float %1903, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1916 = extractvalue %dx.types.ResRet.f32 %1915, 0
  %1917 = extractvalue %dx.types.ResRet.f32 %1915, 1
  %1918 = fmul fast float %1916, 2.000000e+00
  %1919 = fmul fast float %1917, 2.000000e+00
  %1920 = fadd fast float %1918, -1.000000e+00
  %1921 = fadd fast float %1919, -1.000000e+00
  %1922 = fadd fast float %1920, %1921
  %1923 = fmul fast float %1922, 5.000000e-01
  %1924 = fsub fast float %1920, %1921
  %1925 = fmul fast float %1924, 5.000000e-01
  %1926 = call float @dx.op.unary.f32(i32 6, float %1923)  ; FAbs(value)
  %1927 = fsub fast float 1.000000e+00, %1926
  %1928 = call float @dx.op.unary.f32(i32 6, float %1925)  ; FAbs(value)
  %1929 = fsub fast float %1927, %1928
  %1930 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1929)  ; FMax(a,b)
  %1931 = call float @dx.op.dot3.f32(i32 55, float %1923, float %1925, float %1930, float %1923, float %1925, float %1930)  ; Dot3(ax,ay,az,bx,by,bz)
  %1932 = bitcast float %1931 to i32
  %1933 = ashr i32 %1932, 1
  %1934 = sub nsw i32 1597250115, %1933
  %1935 = bitcast i32 %1934 to float
  %1936 = fmul fast float %1935, %1923
  %1937 = fmul fast float %1935, %1925
  %1938 = fmul fast float %1935, %1930
  %1939 = fsub fast float 1.000000e+00, %1914
  %1940 = fdiv fast float %1939, %1938
  %1941 = fmul fast float %1938, %43
  %1942 = fmul fast float %1938, %44
  %1943 = fmul fast float %1938, %45
  %1944 = fmul fast float %1936, %39
  %1945 = fmul fast float %1936, %40
  %1946 = fmul fast float %1936, %41
  %1947 = fadd fast float %1941, %1944
  %1948 = fadd fast float %1942, %1945
  %1949 = fadd fast float %1943, %1946
  %1950 = fmul fast float %1937, %69
  %1951 = fmul fast float %1937, %70
  %1952 = fmul fast float %1937, %71
  %1953 = fadd fast float %1947, %1950
  %1954 = fadd fast float %1948, %1951
  %1955 = fadd fast float %1949, %1952
  %1956 = call float @dx.op.dot3.f32(i32 55, float %1953, float %1954, float %1955, float %1953, float %1954, float %1955)  ; Dot3(ax,ay,az,bx,by,bz)
  %1957 = call float @dx.op.unary.f32(i32 25, float %1956)  ; Rsqrt(value)
  %1958 = fmul fast float %1953, %1957
  %1959 = fmul fast float %1954, %1957
  %1960 = fmul fast float %1955, %1957
  %1961 = call float @dx.op.dot3.f32(i32 55, float %1835, float %1836, float %1837, float %1835, float %1836, float %1837)  ; Dot3(ax,ay,az,bx,by,bz)
  %1962 = call float @dx.op.unary.f32(i32 7, float %1961)  ; Saturate(value)
  %1963 = fmul fast float %1962, 5.000000e-01
  %1964 = fadd fast float %1963, 5.000000e-01
  %1965 = fmul fast float %1964, %1914
  %1966 = call float @dx.op.dot3.f32(i32 55, float %1835, float %1836, float %1837, float %1958, float %1959, float %1960)  ; Dot3(ax,ay,az,bx,by,bz)
  %1967 = call float @dx.op.unary.f32(i32 7, float %1966)  ; Saturate(value)
  %1968 = fmul fast float %1967, %1940
  %1969 = fadd fast float %1965, %1968
  %1970 = fsub fast float 5.000000e-01, %1963
  %1971 = fmul fast float %1970, %1832
  %1972 = fmul fast float %1970, %1833
  %1973 = fmul fast float %1970, %1834
  %1974 = fadd fast float %1969, %1971
  %1975 = fmul fast float %1974, %1910
  %1976 = fadd fast float %1969, %1972
  %1977 = fmul fast float %1976, %1911
  %1978 = fadd fast float %1969, %1973
  %1979 = fmul fast float %1978, %1912
  %1980 = call float @dx.op.dot3.f32(i32 55, float %1848, float %1849, float %1850, float %1835, float %1836, float %1837)  ; Dot3(ax,ay,az,bx,by,bz)
  %1981 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  %1982 = fmul fast float %1981, 5.000000e-01
  %1983 = fadd fast float %1982, 5.000000e-01
  %1984 = fmul fast float %1983, %1914
  %1985 = call float @dx.op.dot3.f32(i32 55, float %1848, float %1849, float %1850, float %1958, float %1959, float %1960)  ; Dot3(ax,ay,az,bx,by,bz)
  %1986 = call float @dx.op.unary.f32(i32 7, float %1985)  ; Saturate(value)
  %1987 = fmul fast float %1986, %1940
  %1988 = fadd fast float %1984, %1987
  %1989 = fsub fast float 5.000000e-01, %1982
  %1990 = fmul fast float %1989, %1832
  %1991 = fmul fast float %1989, %1833
  %1992 = fmul fast float %1989, %1834
  %1993 = fadd fast float %1988, %1990
  %1994 = fmul fast float %1993, %1910
  %1995 = fadd fast float %1988, %1991
  %1996 = fmul fast float %1995, %1911
  %1997 = fadd fast float %1988, %1992
  %1998 = fmul fast float %1997, %1912
  br label %1999

; <label>:1999                                    ; preds = %1901, %1898
  %2000 = phi float [ %1994, %1901 ], [ 0.000000e+00, %1898 ]
  %2001 = phi float [ %1996, %1901 ], [ 0.000000e+00, %1898 ]
  %2002 = phi float [ %1998, %1901 ], [ 0.000000e+00, %1898 ]
  %2003 = phi float [ %1975, %1901 ], [ 0.000000e+00, %1898 ]
  %2004 = phi float [ %1977, %1901 ], [ 0.000000e+00, %1898 ]
  %2005 = phi float [ %1979, %1901 ], [ 0.000000e+00, %1898 ]
  %2006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2007 = extractvalue %dx.types.CBufRet.f32 %2006, 0
  %2008 = fcmp fast ogt float %2007, 0.000000e+00
  %2009 = and i1 %1900, %2008
  br i1 %2009, label %2010, label %2214, !dx.controlflow.hints !75

; <label>:2010                                    ; preds = %1999
  %2011 = extractvalue %dx.types.CBufRet.f32 %1855, 2
  %2012 = fadd fast float %2011, %107
  %2013 = fmul fast float %1835, 3.200000e+01
  %2014 = fmul fast float %1836, 3.200000e+01
  %2015 = fadd fast float %1858, %2013
  %2016 = fadd fast float %1859, %2014
  %2017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2018 = extractvalue %dx.types.CBufRet.f32 %2017, 0
  %2019 = extractvalue %dx.types.CBufRet.f32 %2017, 1
  %2020 = fsub fast float %2015, %2018
  %2021 = fsub fast float %2016, %2019
  %2022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.f32 %2022, 0
  %2024 = extractvalue %dx.types.CBufRet.f32 %2022, 1
  %2025 = fmul fast float %2020, %2023
  %2026 = fmul fast float %2021, %2024
  %2027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2028 = extractvalue %dx.types.CBufRet.f32 %2027, 0
  %2029 = extractvalue %dx.types.CBufRet.f32 %2027, 1
  %2030 = fsub fast float %1858, %2028
  %2031 = fsub fast float %1859, %2029
  %2032 = fmul fast float %2030, %2030
  %2033 = fmul fast float %2031, %2031
  %2034 = fadd fast float %2032, %2033
  %2035 = call float @dx.op.unary.f32(i32 24, float %2034)  ; Sqrt(value)
  %2036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2037 = extractvalue %dx.types.CBufRet.f32 %2036, 0
  %2038 = extractvalue %dx.types.CBufRet.f32 %2036, 1
  %2039 = fsub fast float %2035, %2037
  %2040 = fdiv fast float %2039, %2038
  %2041 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  %2042 = fmul fast float %2041, 2.000000e+00
  %2043 = fsub fast float 3.000000e+00, %2042
  %2044 = fmul fast float %2041, %2041
  %2045 = fmul fast float %2044, %2043
  %2046 = fcmp fast oge float %2025, 0.000000e+00
  %2047 = fcmp fast ole float %2025, 1.000000e+00
  %2048 = and i1 %2047, %2046
  %2049 = fcmp fast oge float %2026, 0.000000e+00
  %2050 = and i1 %2049, %2048
  %2051 = fcmp fast ole float %2026, 1.000000e+00
  %2052 = and i1 %2051, %2050
  %2053 = fcmp fast ogt float %2045, 0.000000e+00
  %2054 = and i1 %2053, %2052
  br i1 %2054, label %2055, label %2178, !dx.controlflow.hints !76

; <label>:2055                                    ; preds = %2010
  %2056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2057 = extractvalue %dx.types.CBufRet.f32 %2056, 2
  %2058 = extractvalue %dx.types.CBufRet.f32 %2056, 3
  %2059 = fmul fast float %2057, %2025
  %2060 = fmul fast float %2058, %2026
  %2061 = call float @dx.op.unary.f32(i32 27, float %2059)  ; Round_ni(value)
  %2062 = call float @dx.op.unary.f32(i32 27, float %2060)  ; Round_ni(value)
  %2063 = fptosi float %2061 to i32
  %2064 = fptosi float %2062 to i32
  %2065 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2063, i32 %2064, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2066 = extractvalue %dx.types.ResRet.i32 %2065, 0
  %2067 = lshr i32 %2066, 16
  %2068 = icmp eq i32 %2067, 65535
  br i1 %2068, label %2178, label %2069

; <label>:2069                                    ; preds = %2055
  %2070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2071 = extractvalue %dx.types.CBufRet.f32 %2070, 0
  %2072 = fmul fast float %2071, %2025
  %2073 = extractvalue %dx.types.CBufRet.f32 %2070, 1
  %2074 = fadd fast float %2072, %2073
  %2075 = extractvalue %dx.types.CBufRet.f32 %2070, 2
  %2076 = fmul fast float %2075, %2026
  %2077 = extractvalue %dx.types.CBufRet.f32 %2070, 3
  %2078 = fadd fast float %2076, %2077
  %2079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2074, float %2078, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2080 = extractvalue %dx.types.ResRet.f32 %2079, 0
  %2081 = extractvalue %dx.types.ResRet.f32 %2079, 1
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 1
  %2084 = extractvalue %dx.types.CBufRet.f32 %2082, 0
  %2085 = fsub fast float %2083, %2084
  %2086 = fmul fast float %2085, %2080
  %2087 = fadd fast float %2086, %2084
  %2088 = extractvalue %dx.types.CBufRet.f32 %2082, 3
  %2089 = extractvalue %dx.types.CBufRet.f32 %2082, 2
  %2090 = fsub fast float %2088, %2089
  %2091 = fmul fast float %2090, %2081
  %2092 = fadd fast float %2091, %2089
  %2093 = fsub fast float %2012, %2087
  %2094 = fsub fast float %2092, %2087
  %2095 = fdiv fast float %2093, %2094
  %2096 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  %2097 = extractvalue %dx.types.CBufRet.f32 %2006, 1
  %2098 = extractvalue %dx.types.CBufRet.f32 %2056, 0
  %2099 = extractvalue %dx.types.CBufRet.f32 %2056, 1
  %2100 = fmul fast float %2098, %2025
  %2101 = fmul fast float %2099, %2026
  %2102 = fmul fast float %2100, 1.250000e-01
  %2103 = fmul fast float %2101, 1.250000e-01
  %2104 = call float @dx.op.unary.f32(i32 27, float %2102)  ; Round_ni(value)
  %2105 = call float @dx.op.unary.f32(i32 27, float %2103)  ; Round_ni(value)
  %2106 = fmul fast float %2104, 8.000000e+00
  %2107 = fmul fast float %2105, 8.000000e+00
  %2108 = fsub fast float %2100, %2106
  %2109 = fsub fast float %2101, %2107
  %2110 = fadd fast float %2108, 5.000000e-01
  %2111 = fadd fast float %2109, 5.000000e-01
  %2112 = and i32 %2067, 255
  %2113 = lshr i32 %2066, 24
  %2114 = mul nuw nsw i32 %2112, 9
  %2115 = uitofp i32 %2114 to float
  %2116 = mul nuw nsw i32 %2113, 9
  %2117 = uitofp i32 %2116 to float
  %2118 = fadd fast float %2110, %2115
  %2119 = fadd fast float %2111, %2117
  %2120 = fdiv fast float %2118, %2007
  %2121 = fdiv fast float %2119, %2097
  %2122 = fmul fast float %2096, 4.375000e-01
  %2123 = fadd fast float %2122, 3.125000e-02
  %2124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2120, float %2121, float %2123, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2125 = extractvalue %dx.types.ResRet.f32 %2124, 0
  %2126 = extractvalue %dx.types.ResRet.f32 %2124, 1
  %2127 = extractvalue %dx.types.ResRet.f32 %2124, 2
  %2128 = fadd fast float %2122, 5.312500e-01
  %2129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2120, float %2121, float %2128, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2130 = extractvalue %dx.types.ResRet.f32 %2129, 0
  %2131 = extractvalue %dx.types.ResRet.f32 %2129, 1
  %2132 = extractvalue %dx.types.ResRet.f32 %2129, 2
  %2133 = fmul fast float %2130, 2.000000e+00
  %2134 = fmul fast float %2131, 2.000000e+00
  %2135 = fmul fast float %2132, 2.000000e+00
  %2136 = fadd fast float %2133, -1.000000e+00
  %2137 = fadd fast float %2134, -1.000000e+00
  %2138 = fadd fast float %2135, -1.000000e+00
  %2139 = fmul fast float %2136, %2136
  %2140 = fmul fast float %2137, %2137
  %2141 = fadd fast float %2139, %2140
  %2142 = fmul fast float %2138, %2138
  %2143 = fadd fast float %2141, %2142
  %2144 = call float @dx.op.unary.f32(i32 24, float %2143)  ; Sqrt(value)
  %2145 = fcmp fast ogt float %2144, 0.000000e+00
  br i1 %2145, label %2146, label %2150

; <label>:2146                                    ; preds = %2069
  %2147 = fdiv fast float %2136, %2144
  %2148 = fdiv fast float %2137, %2144
  %2149 = fdiv fast float %2138, %2144
  br label %2150

; <label>:2150                                    ; preds = %2146, %2069
  %2151 = phi float [ %2147, %2146 ], [ 0.000000e+00, %2069 ]
  %2152 = phi float [ %2148, %2146 ], [ 0.000000e+00, %2069 ]
  %2153 = phi float [ %2149, %2146 ], [ 0.000000e+00, %2069 ]
  %2154 = call float @dx.op.dot3.f32(i32 55, float %2151, float %2152, float %2153, float %1835, float %1836, float %1837)  ; Dot3(ax,ay,az,bx,by,bz)
  %2155 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2154)  ; FMax(a,b)
  %2156 = fmul fast float %2155, 0x400C5BF8A0000000
  %2157 = fmul fast float %2125, %2045
  %2158 = fmul fast float %2157, %2156
  %2159 = fmul fast float %2126, %2045
  %2160 = fmul fast float %2159, %2156
  %2161 = fmul fast float %2127, %2045
  %2162 = fmul fast float %2161, %2156
  %2163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2164 = extractvalue %dx.types.CBufRet.f32 %2163, 3
  %2165 = fmul fast float %2158, %2164
  %2166 = fmul fast float %2160, %2164
  %2167 = fmul fast float %2162, %2164
  %2168 = fcmp fast ogt float %2012, %2092
  br i1 %2168, label %2169, label %2178

; <label>:2169                                    ; preds = %2150
  %2170 = fmul fast float %2094, 0x3FC24924A0000000
  %2171 = fsub fast float %2012, %2092
  %2172 = fdiv fast float %2171, %2170
  %2173 = call float @dx.op.unary.f32(i32 7, float %2172)  ; Saturate(value)
  %2174 = fsub fast float 1.000000e+00, %2173
  %2175 = fmul fast float %2174, %2165
  %2176 = fmul fast float %2174, %2166
  %2177 = fmul fast float %2174, %2167
  br label %2178

; <label>:2178                                    ; preds = %2169, %2150, %2055, %2010
  %2179 = phi float [ %2177, %2169 ], [ %2167, %2150 ], [ 0.000000e+00, %2055 ], [ 0.000000e+00, %2010 ]
  %2180 = phi float [ %2176, %2169 ], [ %2166, %2150 ], [ 0.000000e+00, %2055 ], [ 0.000000e+00, %2010 ]
  %2181 = phi float [ %2175, %2169 ], [ %2165, %2150 ], [ 0.000000e+00, %2055 ], [ 0.000000e+00, %2010 ]
  %2182 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2181)  ; FMax(a,b)
  %2183 = fmul fast float %2182, 0x3FD20DD760000000
  %2184 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1848, float %1849, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %2185 = fmul fast float %2184, 0x3FDF454380000000
  %2186 = fmul fast float %2184, %2184
  %2187 = fmul fast float %2186, 0x3FEE471020000000
  %2188 = fadd fast float %2187, 0xBFD42F6020000000
  %2189 = call float @dx.op.dot3.f32(i32 55, float %2182, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2185, float %2188)  ; Dot3(ax,ay,az,bx,by,bz)
  %2190 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2180)  ; FMax(a,b)
  %2191 = fmul fast float %2190, 0x3FD20DD760000000
  %2192 = call float @dx.op.dot3.f32(i32 55, float %2190, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2185, float %2188)  ; Dot3(ax,ay,az,bx,by,bz)
  %2193 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2179)  ; FMax(a,b)
  %2194 = fmul fast float %2193, 0x3FD20DD760000000
  %2195 = call float @dx.op.dot3.f32(i32 55, float %2193, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2185, float %2188)  ; Dot3(ax,ay,az,bx,by,bz)
  %2196 = call float @dx.op.binary.f32(i32 35, float %2183, float 0.000000e+00)  ; FMax(a,b)
  %2197 = call float @dx.op.binary.f32(i32 35, float %2191, float 0.000000e+00)  ; FMax(a,b)
  %2198 = call float @dx.op.binary.f32(i32 35, float %2194, float 0.000000e+00)  ; FMax(a,b)
  %2199 = call float @dx.op.binary.f32(i32 35, float %2189, float 0.000000e+00)  ; FMax(a,b)
  %2200 = call float @dx.op.binary.f32(i32 35, float %2192, float 0.000000e+00)  ; FMax(a,b)
  %2201 = call float @dx.op.binary.f32(i32 35, float %2195, float 0.000000e+00)  ; FMax(a,b)
  %2202 = fmul fast float %2196, %1899
  %2203 = fmul fast float %2197, %1899
  %2204 = fmul fast float %2198, %1899
  %2205 = fadd fast float %2202, %2003
  %2206 = fadd fast float %2203, %2004
  %2207 = fadd fast float %2204, %2005
  %2208 = fmul fast float %2199, %1899
  %2209 = fmul fast float %2200, %1899
  %2210 = fmul fast float %2201, %1899
  %2211 = fadd fast float %2208, %2000
  %2212 = fadd fast float %2209, %2001
  %2213 = fadd fast float %2210, %2002
  br label %2214

; <label>:2214                                    ; preds = %2178, %1999
  %2215 = phi float [ %2211, %2178 ], [ %2000, %1999 ]
  %2216 = phi float [ %2212, %2178 ], [ %2001, %1999 ]
  %2217 = phi float [ %2213, %2178 ], [ %2002, %1999 ]
  %2218 = phi float [ %2205, %2178 ], [ %2003, %1999 ]
  %2219 = phi float [ %2206, %2178 ], [ %2004, %1999 ]
  %2220 = phi float [ %2207, %2178 ], [ %2005, %1999 ]
  %2221 = fcmp fast olt float %1899, 1.000000e+00
  br i1 %2221, label %2222, label %3040, !dx.controlflow.hints !77

; <label>:2222                                    ; preds = %2214
  %2223 = extractvalue %dx.types.CBufRet.f32 %1855, 2
  %2224 = fadd fast float %2223, %107
  %2225 = fmul fast float %1835, 3.200000e+01
  %2226 = fmul fast float %1836, 3.200000e+01
  %2227 = fadd fast float %1858, %2225
  %2228 = fadd fast float %1859, %2226
  %2229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2230 = extractvalue %dx.types.CBufRet.f32 %2229, 0
  %2231 = extractvalue %dx.types.CBufRet.f32 %2229, 1
  %2232 = fsub fast float %2227, %2230
  %2233 = fsub fast float %2228, %2231
  %2234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.f32 %2234, 0
  %2236 = extractvalue %dx.types.CBufRet.f32 %2234, 1
  %2237 = fmul fast float %2232, %2235
  %2238 = fmul fast float %2233, %2236
  %2239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2240 = extractvalue %dx.types.CBufRet.f32 %2239, 0
  %2241 = fmul fast float %2237, %2240
  %2242 = extractvalue %dx.types.CBufRet.f32 %2239, 1
  %2243 = fadd fast float %2241, %2242
  %2244 = extractvalue %dx.types.CBufRet.f32 %2239, 2
  %2245 = fmul fast float %2244, %2238
  %2246 = extractvalue %dx.types.CBufRet.f32 %2239, 3
  %2247 = fadd fast float %2245, %2246
  %2248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2243, float %2247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2249 = extractvalue %dx.types.ResRet.f32 %2248, 0
  %2250 = extractvalue %dx.types.ResRet.f32 %2248, 1
  %2251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2252 = extractvalue %dx.types.CBufRet.f32 %2251, 1
  %2253 = extractvalue %dx.types.CBufRet.f32 %2251, 0
  %2254 = fsub fast float %2252, %2253
  %2255 = fmul fast float %2254, %2249
  %2256 = fadd fast float %2255, %2253
  %2257 = extractvalue %dx.types.CBufRet.f32 %2251, 3
  %2258 = extractvalue %dx.types.CBufRet.f32 %2251, 2
  %2259 = fsub fast float %2257, %2258
  %2260 = fmul fast float %2259, %2250
  %2261 = fadd fast float %2260, %2258
  %2262 = fsub fast float %2224, %2256
  %2263 = fsub fast float %2261, %2256
  %2264 = fdiv fast float %2262, %2263
  %2265 = call float @dx.op.unary.f32(i32 7, float %2264)  ; Saturate(value)
  %2266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2267 = extractvalue %dx.types.CBufRet.f32 %2266, 0
  %2268 = fmul fast float %2267, %2265
  %2269 = extractvalue %dx.types.CBufRet.f32 %2266, 1
  %2270 = fadd fast float %2268, %2269
  %2271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %2243, float %2247, float %2270, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2272 = extractvalue %dx.types.ResRet.f32 %2271, 0
  %2273 = extractvalue %dx.types.ResRet.f32 %2271, 1
  %2274 = extractvalue %dx.types.ResRet.f32 %2271, 2
  %2275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2276 = extractvalue %dx.types.CBufRet.f32 %2275, 0
  %2277 = extractvalue %dx.types.CBufRet.f32 %2275, 1
  %2278 = extractvalue %dx.types.CBufRet.f32 %2275, 2
  %2279 = fmul fast float %2276, %2272
  %2280 = fmul fast float %2277, %2273
  %2281 = fmul fast float %2278, %2274
  %2282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2283 = extractvalue %dx.types.CBufRet.f32 %2282, 0
  %2284 = extractvalue %dx.types.CBufRet.f32 %2282, 1
  %2285 = extractvalue %dx.types.CBufRet.f32 %2282, 2
  %2286 = fadd fast float %2279, %2283
  %2287 = fadd fast float %2280, %2284
  %2288 = fadd fast float %2281, %2285
  %2289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2290 = extractvalue %dx.types.CBufRet.f32 %2289, 0
  %2291 = fmul fast float %2290, %2237
  %2292 = extractvalue %dx.types.CBufRet.f32 %2289, 1
  %2293 = fadd fast float %2291, %2292
  %2294 = extractvalue %dx.types.CBufRet.f32 %2289, 2
  %2295 = fmul fast float %2294, %2238
  %2296 = extractvalue %dx.types.CBufRet.f32 %2289, 3
  %2297 = fadd fast float %2295, %2296
  %2298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.f32 %2298, 0
  %2300 = extractvalue %dx.types.CBufRet.f32 %2298, 1
  %2301 = extractvalue %dx.types.CBufRet.f32 %2298, 2
  %2302 = extractvalue %dx.types.CBufRet.f32 %2298, 3
  %2303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2304 = extractvalue %dx.types.CBufRet.f32 %2303, 0
  %2305 = extractvalue %dx.types.CBufRet.f32 %2303, 1
  %2306 = extractvalue %dx.types.CBufRet.f32 %2303, 2
  %2307 = extractvalue %dx.types.CBufRet.f32 %2303, 3
  %2308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2293, float %2297, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2309 = extractvalue %dx.types.ResRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.ResRet.f32 %2308, 1
  %2311 = extractvalue %dx.types.ResRet.f32 %2308, 2
  %2312 = extractvalue %dx.types.ResRet.f32 %2308, 3
  %2313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2293, float %2297, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2314 = extractvalue %dx.types.ResRet.f32 %2313, 0
  %2315 = extractvalue %dx.types.ResRet.f32 %2313, 1
  %2316 = extractvalue %dx.types.ResRet.f32 %2313, 2
  %2317 = extractvalue %dx.types.ResRet.f32 %2313, 3
  %2318 = fmul fast float %2309, %2286
  %2319 = fmul fast float %2314, %2286
  %2320 = fmul fast float %2316, %2286
  %2321 = fmul fast float %2312, %2286
  %2322 = fadd fast float %2318, %2299
  %2323 = fadd fast float %2319, %2300
  %2324 = fadd fast float %2320, %2301
  %2325 = fadd fast float %2321, %2302
  %2326 = fmul fast float %2310, %2286
  %2327 = fmul fast float %2315, %2286
  %2328 = fadd fast float %2326, %2304
  %2329 = fadd fast float %2327, %2305
  %2330 = fmul fast float %2311, %2286
  %2331 = fmul fast float %2317, %2286
  %2332 = fadd fast float %2330, %2306
  %2333 = fadd fast float %2331, %2307
  %2334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2293, float %2297, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2335 = extractvalue %dx.types.ResRet.f32 %2334, 0
  %2336 = extractvalue %dx.types.ResRet.f32 %2334, 1
  %2337 = extractvalue %dx.types.ResRet.f32 %2334, 2
  %2338 = extractvalue %dx.types.ResRet.f32 %2334, 3
  %2339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2293, float %2297, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2340 = extractvalue %dx.types.ResRet.f32 %2339, 0
  %2341 = extractvalue %dx.types.ResRet.f32 %2339, 1
  %2342 = extractvalue %dx.types.ResRet.f32 %2339, 2
  %2343 = extractvalue %dx.types.ResRet.f32 %2339, 3
  %2344 = fmul fast float %2335, %2287
  %2345 = fmul fast float %2340, %2287
  %2346 = fmul fast float %2342, %2287
  %2347 = fmul fast float %2338, %2287
  %2348 = fadd fast float %2322, %2344
  %2349 = fadd fast float %2323, %2345
  %2350 = fadd fast float %2324, %2346
  %2351 = fadd fast float %2325, %2347
  %2352 = fmul fast float %2336, %2287
  %2353 = fmul fast float %2341, %2287
  %2354 = fadd fast float %2328, %2352
  %2355 = fadd fast float %2329, %2353
  %2356 = fmul fast float %2337, %2287
  %2357 = fmul fast float %2343, %2287
  %2358 = fadd fast float %2332, %2356
  %2359 = fadd fast float %2333, %2357
  %2360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2293, float %2297, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2361 = extractvalue %dx.types.ResRet.f32 %2360, 0
  %2362 = extractvalue %dx.types.ResRet.f32 %2360, 1
  %2363 = extractvalue %dx.types.ResRet.f32 %2360, 2
  %2364 = extractvalue %dx.types.ResRet.f32 %2360, 3
  %2365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2293, float %2297, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2366 = extractvalue %dx.types.ResRet.f32 %2365, 0
  %2367 = extractvalue %dx.types.ResRet.f32 %2365, 1
  %2368 = extractvalue %dx.types.ResRet.f32 %2365, 2
  %2369 = extractvalue %dx.types.ResRet.f32 %2365, 3
  %2370 = fmul fast float %2361, %2288
  %2371 = fmul fast float %2366, %2288
  %2372 = fmul fast float %2368, %2288
  %2373 = fmul fast float %2364, %2288
  %2374 = fadd fast float %2348, %2370
  %2375 = fadd fast float %2349, %2371
  %2376 = fadd fast float %2350, %2372
  %2377 = fadd fast float %2351, %2373
  %2378 = fmul fast float %2362, %2288
  %2379 = fmul fast float %2367, %2288
  %2380 = fadd fast float %2354, %2378
  %2381 = fadd fast float %2355, %2379
  %2382 = fmul fast float %2363, %2288
  %2383 = fmul fast float %2369, %2288
  %2384 = fadd fast float %2358, %2382
  %2385 = fadd fast float %2359, %2383
  %2386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.f32 %2386, 0
  %2388 = fsub fast float %1858, %2387
  %2389 = fsub fast float %2230, %1858
  %2390 = call float @dx.op.binary.f32(i32 35, float %2389, float %2388)  ; FMax(a,b)
  %2391 = extractvalue %dx.types.CBufRet.f32 %2386, 1
  %2392 = fsub fast float %1859, %2391
  %2393 = fsub fast float %2231, %1859
  %2394 = call float @dx.op.binary.f32(i32 35, float %2393, float %2392)  ; FMax(a,b)
  %2395 = call float @dx.op.binary.f32(i32 35, float %2390, float %2394)  ; FMax(a,b)
  %2396 = extractvalue %dx.types.CBufRet.f32 %2234, 3
  %2397 = fmul fast float %2396, %2395
  %2398 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  %2399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2400 = extractvalue %dx.types.CBufRet.f32 %2399, 0
  %2401 = extractvalue %dx.types.CBufRet.f32 %2399, 1
  %2402 = extractvalue %dx.types.CBufRet.f32 %2399, 2
  %2403 = extractvalue %dx.types.CBufRet.f32 %2399, 3
  %2404 = fsub fast float %2400, %2374
  %2405 = fsub fast float %2401, %2375
  %2406 = fsub fast float %2402, %2376
  %2407 = fsub fast float %2403, %2377
  %2408 = fmul fast float %2404, %2398
  %2409 = fmul fast float %2405, %2398
  %2410 = fmul fast float %2406, %2398
  %2411 = fmul fast float %2407, %2398
  %2412 = fadd fast float %2408, %2374
  %2413 = fadd fast float %2409, %2375
  %2414 = fadd fast float %2410, %2376
  %2415 = fadd fast float %2411, %2377
  %2416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2417 = extractvalue %dx.types.CBufRet.f32 %2416, 0
  %2418 = extractvalue %dx.types.CBufRet.f32 %2416, 1
  %2419 = fsub fast float %2417, %2380
  %2420 = fsub fast float %2418, %2381
  %2421 = fmul fast float %2419, %2398
  %2422 = fmul fast float %2420, %2398
  %2423 = fadd fast float %2421, %2380
  %2424 = fadd fast float %2422, %2381
  %2425 = extractvalue %dx.types.CBufRet.f32 %2416, 2
  %2426 = extractvalue %dx.types.CBufRet.f32 %2416, 3
  %2427 = fsub fast float %2425, %2384
  %2428 = fsub fast float %2426, %2385
  %2429 = fmul fast float %2427, %2398
  %2430 = fmul fast float %2428, %2398
  %2431 = fadd fast float %2429, %2384
  %2432 = fadd fast float %2430, %2385
  %2433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2433, 0
  %2435 = fmul fast float %2434, %2412
  %2436 = fmul fast float %2434, %2413
  %2437 = fmul fast float %2434, %2414
  %2438 = fmul fast float %2434, %2415
  %2439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2440 = extractvalue %dx.types.CBufRet.f32 %2439, 0
  %2441 = fmul fast float %2440, %2423
  %2442 = fmul fast float %2440, %2424
  %2443 = fadd fast float %2441, %2435
  %2444 = fadd fast float %2442, %2437
  %2445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2446 = extractvalue %dx.types.CBufRet.f32 %2445, 0
  %2447 = fmul fast float %2446, %2431
  %2448 = fmul fast float %2446, %2432
  %2449 = fadd fast float %2443, %2447
  %2450 = fadd fast float %2444, %2448
  %2451 = extractvalue %dx.types.CBufRet.f32 %2433, 1
  %2452 = fmul fast float %2451, %2412
  %2453 = fmul fast float %2451, %2413
  %2454 = fmul fast float %2451, %2414
  %2455 = fmul fast float %2451, %2415
  %2456 = extractvalue %dx.types.CBufRet.f32 %2439, 1
  %2457 = fmul fast float %2456, %2423
  %2458 = fmul fast float %2456, %2424
  %2459 = fadd fast float %2457, %2452
  %2460 = fadd fast float %2458, %2454
  %2461 = extractvalue %dx.types.CBufRet.f32 %2445, 1
  %2462 = fmul fast float %2461, %2431
  %2463 = fmul fast float %2461, %2432
  %2464 = fadd fast float %2459, %2462
  %2465 = fadd fast float %2460, %2463
  %2466 = extractvalue %dx.types.CBufRet.f32 %2433, 2
  %2467 = fmul fast float %2466, %2412
  %2468 = fmul fast float %2466, %2413
  %2469 = fmul fast float %2466, %2414
  %2470 = fmul fast float %2466, %2415
  %2471 = extractvalue %dx.types.CBufRet.f32 %2439, 2
  %2472 = fmul fast float %2471, %2423
  %2473 = fmul fast float %2471, %2424
  %2474 = fadd fast float %2472, %2467
  %2475 = fadd fast float %2473, %2469
  %2476 = extractvalue %dx.types.CBufRet.f32 %2445, 2
  %2477 = fmul fast float %2476, %2431
  %2478 = fmul fast float %2476, %2432
  %2479 = fadd fast float %2474, %2477
  %2480 = fadd fast float %2475, %2478
  %2481 = fmul fast float %2468, %2468
  %2482 = fmul fast float %2480, %2480
  %2483 = fmul fast float %2470, %2470
  %2484 = fadd fast float %2483, %2481
  %2485 = fadd fast float %2484, %2482
  %2486 = call float @dx.op.unary.f32(i32 24, float %2485)  ; Sqrt(value)
  %2487 = fcmp fast ugt float %2486, 0.000000e+00
  br i1 %2487, label %2488, label %2503

; <label>:2488                                    ; preds = %2222
  %2489 = fsub fast float -0.000000e+00, %2470
  %2490 = fdiv fast float %2489, %2486
  %2491 = fsub fast float -0.000000e+00, %2468
  %2492 = fdiv fast float %2491, %2486
  %2493 = fdiv fast float %2480, %2486
  %2494 = fmul fast float %2479, 0x3FE279A760000000
  %2495 = fmul fast float %2492, %2468
  %2496 = fmul fast float %2493, %2480
  %2497 = fmul fast float %2490, %2470
  %2498 = fadd fast float %2495, %2497
  %2499 = fsub fast float %2498, %2496
  %2500 = call float @dx.op.unary.f32(i32 6, float %2499)  ; FAbs(value)
  %2501 = fadd fast float %2500, 0x3DDB7CDFE0000000
  %2502 = fdiv fast float %2494, %2501
  br label %2503

; <label>:2503                                    ; preds = %2488, %2222
  %2504 = phi float [ %2502, %2488 ], [ 1.000000e+00, %2222 ]
  %2505 = fmul fast float %2453, %2453
  %2506 = fmul fast float %2465, %2465
  %2507 = fmul fast float %2455, %2455
  %2508 = fadd fast float %2507, %2505
  %2509 = fadd fast float %2508, %2506
  %2510 = call float @dx.op.unary.f32(i32 24, float %2509)  ; Sqrt(value)
  %2511 = fcmp fast ugt float %2510, 0.000000e+00
  br i1 %2511, label %2512, label %2527

; <label>:2512                                    ; preds = %2503
  %2513 = fsub fast float -0.000000e+00, %2455
  %2514 = fdiv fast float %2513, %2510
  %2515 = fsub fast float -0.000000e+00, %2453
  %2516 = fdiv fast float %2515, %2510
  %2517 = fdiv fast float %2465, %2510
  %2518 = fmul fast float %2464, 0x3FE279A760000000
  %2519 = fmul fast float %2516, %2453
  %2520 = fmul fast float %2517, %2465
  %2521 = fmul fast float %2514, %2455
  %2522 = fadd fast float %2519, %2521
  %2523 = fsub fast float %2522, %2520
  %2524 = call float @dx.op.unary.f32(i32 6, float %2523)  ; FAbs(value)
  %2525 = fadd fast float %2524, 0x3DDB7CDFE0000000
  %2526 = fdiv fast float %2518, %2525
  br label %2527

; <label>:2527                                    ; preds = %2512, %2503
  %2528 = phi float [ %2526, %2512 ], [ 1.000000e+00, %2503 ]
  %2529 = call float @dx.op.binary.f32(i32 36, float %2528, float %2504)  ; FMin(a,b)
  %2530 = fmul fast float %2436, %2436
  %2531 = fmul fast float %2450, %2450
  %2532 = fmul fast float %2438, %2438
  %2533 = fadd fast float %2532, %2530
  %2534 = fadd fast float %2533, %2531
  %2535 = call float @dx.op.unary.f32(i32 24, float %2534)  ; Sqrt(value)
  %2536 = fcmp fast ugt float %2535, 0.000000e+00
  br i1 %2536, label %2537, label %2552

; <label>:2537                                    ; preds = %2527
  %2538 = fsub fast float -0.000000e+00, %2438
  %2539 = fdiv fast float %2538, %2535
  %2540 = fsub fast float -0.000000e+00, %2436
  %2541 = fdiv fast float %2540, %2535
  %2542 = fdiv fast float %2450, %2535
  %2543 = fmul fast float %2449, 0x3FE279A760000000
  %2544 = fmul fast float %2541, %2436
  %2545 = fmul fast float %2542, %2450
  %2546 = fmul fast float %2539, %2438
  %2547 = fadd fast float %2544, %2546
  %2548 = fsub fast float %2547, %2545
  %2549 = call float @dx.op.unary.f32(i32 6, float %2548)  ; FAbs(value)
  %2550 = fadd fast float %2549, 0x3DDB7CDFE0000000
  %2551 = fdiv fast float %2543, %2550
  br label %2552

; <label>:2552                                    ; preds = %2537, %2527
  %2553 = phi float [ %2551, %2537 ], [ 1.000000e+00, %2527 ]
  %2554 = call float @dx.op.binary.f32(i32 36, float %2553, float %2529)  ; FMin(a,b)
  %2555 = call float @dx.op.unary.f32(i32 7, float %2554)  ; Saturate(value)
  %2556 = fcmp fast olt float %2555, 1.000000e+00
  br i1 %2556, label %2557, label %2567

; <label>:2557                                    ; preds = %2552
  %2558 = fmul fast float %2555, %2436
  %2559 = fmul fast float %2555, %2450
  %2560 = fmul fast float %2555, %2438
  %2561 = fmul fast float %2555, %2453
  %2562 = fmul fast float %2555, %2465
  %2563 = fmul fast float %2555, %2455
  %2564 = fmul fast float %2555, %2468
  %2565 = fmul fast float %2555, %2480
  %2566 = fmul fast float %2555, %2470
  br label %2567

; <label>:2567                                    ; preds = %2557, %2552
  %2568 = phi float [ %2564, %2557 ], [ %2468, %2552 ]
  %2569 = phi float [ %2565, %2557 ], [ %2480, %2552 ]
  %2570 = phi float [ %2566, %2557 ], [ %2470, %2552 ]
  %2571 = phi float [ %2561, %2557 ], [ %2453, %2552 ]
  %2572 = phi float [ %2562, %2557 ], [ %2465, %2552 ]
  %2573 = phi float [ %2563, %2557 ], [ %2455, %2552 ]
  %2574 = phi float [ %2558, %2557 ], [ %2436, %2552 ]
  %2575 = phi float [ %2559, %2557 ], [ %2450, %2552 ]
  %2576 = phi float [ %2560, %2557 ], [ %2438, %2552 ]
  %2577 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2449)  ; FMax(a,b)
  %2578 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2464)  ; FMax(a,b)
  %2579 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2479)  ; FMax(a,b)
  %2580 = fcmp fast oge float %2237, 0.000000e+00
  %2581 = and i1 %2580, %2008
  %2582 = fcmp fast ole float %2237, 1.000000e+00
  %2583 = and i1 %2582, %2581
  %2584 = fcmp fast oge float %2238, 0.000000e+00
  %2585 = and i1 %2584, %2583
  %2586 = fcmp fast ole float %2238, 1.000000e+00
  %2587 = and i1 %2586, %2585
  br i1 %2587, label %2588, label %2733, !dx.controlflow.hints !78

; <label>:2588                                    ; preds = %2567
  %2589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2590 = extractvalue %dx.types.CBufRet.f32 %2589, 2
  %2591 = extractvalue %dx.types.CBufRet.f32 %2589, 3
  %2592 = fmul fast float %2590, %2237
  %2593 = fmul fast float %2591, %2238
  %2594 = call float @dx.op.unary.f32(i32 27, float %2592)  ; Round_ni(value)
  %2595 = call float @dx.op.unary.f32(i32 27, float %2593)  ; Round_ni(value)
  %2596 = fptosi float %2594 to i32
  %2597 = fptosi float %2595 to i32
  %2598 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2596, i32 %2597, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = and i32 %2599, 65535
  %2601 = lshr i32 %2599, 16
  %2602 = icmp eq i32 %2600, 65535
  br i1 %2602, label %2639, label %2603

; <label>:2603                                    ; preds = %2588
  %2604 = extractvalue %dx.types.CBufRet.f32 %2006, 1
  %2605 = extractvalue %dx.types.CBufRet.f32 %2589, 0
  %2606 = extractvalue %dx.types.CBufRet.f32 %2589, 1
  %2607 = fmul fast float %2605, %2237
  %2608 = fmul fast float %2606, %2238
  %2609 = fmul fast float %2607, 1.250000e-01
  %2610 = fmul fast float %2608, 1.250000e-01
  %2611 = call float @dx.op.unary.f32(i32 27, float %2609)  ; Round_ni(value)
  %2612 = call float @dx.op.unary.f32(i32 27, float %2610)  ; Round_ni(value)
  %2613 = fmul fast float %2611, 8.000000e+00
  %2614 = fmul fast float %2612, 8.000000e+00
  %2615 = and i32 %2599, 255
  %2616 = lshr i32 %2599, 8
  %2617 = and i32 %2616, 255
  %2618 = mul nuw nsw i32 %2615, 9
  %2619 = uitofp i32 %2618 to float
  %2620 = mul nuw nsw i32 %2617, 9
  %2621 = uitofp i32 %2620 to float
  %2622 = fadd fast float %2619, 5.000000e-01
  %2623 = fadd fast float %2622, %2607
  %2624 = fsub fast float %2623, %2613
  %2625 = fadd fast float %2621, 5.000000e-01
  %2626 = fadd fast float %2625, %2608
  %2627 = fsub fast float %2626, %2614
  %2628 = fdiv fast float %2624, %2007
  %2629 = fdiv fast float %2627, %2604
  %2630 = fmul fast float %2265, 4.375000e-01
  %2631 = fadd fast float %2630, 3.125000e-02
  %2632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2628, float %2629, float %2631, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2633 = extractvalue %dx.types.ResRet.f32 %2632, 0
  %2634 = extractvalue %dx.types.ResRet.f32 %2632, 1
  %2635 = extractvalue %dx.types.ResRet.f32 %2632, 2
  %2636 = fadd fast float %2633, %2577
  %2637 = fadd fast float %2634, %2578
  %2638 = fadd fast float %2635, %2579
  br label %2639

; <label>:2639                                    ; preds = %2603, %2588
  %2640 = phi float [ %2638, %2603 ], [ %2579, %2588 ]
  %2641 = phi float [ %2637, %2603 ], [ %2578, %2588 ]
  %2642 = phi float [ %2636, %2603 ], [ %2577, %2588 ]
  %2643 = icmp eq i32 %2601, 65535
  br i1 %2643, label %2733, label %2644

; <label>:2644                                    ; preds = %2639
  %2645 = extractvalue %dx.types.CBufRet.f32 %2006, 1
  %2646 = extractvalue %dx.types.CBufRet.f32 %2589, 0
  %2647 = extractvalue %dx.types.CBufRet.f32 %2589, 1
  %2648 = fmul fast float %2646, %2237
  %2649 = fmul fast float %2647, %2238
  %2650 = fmul fast float %2648, 1.250000e-01
  %2651 = fmul fast float %2649, 1.250000e-01
  %2652 = call float @dx.op.unary.f32(i32 27, float %2650)  ; Round_ni(value)
  %2653 = call float @dx.op.unary.f32(i32 27, float %2651)  ; Round_ni(value)
  %2654 = fmul fast float %2652, 8.000000e+00
  %2655 = fmul fast float %2653, 8.000000e+00
  %2656 = fsub fast float %2648, %2654
  %2657 = fsub fast float %2649, %2655
  %2658 = fadd fast float %2656, 5.000000e-01
  %2659 = fadd fast float %2657, 5.000000e-01
  %2660 = and i32 %2601, 255
  %2661 = lshr i32 %2599, 24
  %2662 = mul nuw nsw i32 %2660, 9
  %2663 = uitofp i32 %2662 to float
  %2664 = mul nuw nsw i32 %2661, 9
  %2665 = uitofp i32 %2664 to float
  %2666 = fadd fast float %2658, %2663
  %2667 = fadd fast float %2659, %2665
  %2668 = fdiv fast float %2666, %2007
  %2669 = fdiv fast float %2667, %2645
  %2670 = fmul fast float %2265, 4.375000e-01
  %2671 = fadd fast float %2670, 3.125000e-02
  %2672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2668, float %2669, float %2671, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2673 = extractvalue %dx.types.ResRet.f32 %2672, 0
  %2674 = extractvalue %dx.types.ResRet.f32 %2672, 1
  %2675 = extractvalue %dx.types.ResRet.f32 %2672, 2
  %2676 = fadd fast float %2670, 5.312500e-01
  %2677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2668, float %2669, float %2676, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2678 = extractvalue %dx.types.ResRet.f32 %2677, 0
  %2679 = extractvalue %dx.types.ResRet.f32 %2677, 1
  %2680 = extractvalue %dx.types.ResRet.f32 %2677, 2
  %2681 = fmul fast float %2678, 2.000000e+00
  %2682 = fmul fast float %2679, 2.000000e+00
  %2683 = fmul fast float %2680, 2.000000e+00
  %2684 = fadd fast float %2681, -1.000000e+00
  %2685 = fadd fast float %2682, -1.000000e+00
  %2686 = fadd fast float %2683, -1.000000e+00
  %2687 = fmul fast float %2684, %2684
  %2688 = fmul fast float %2685, %2685
  %2689 = fadd fast float %2687, %2688
  %2690 = fmul fast float %2686, %2686
  %2691 = fadd fast float %2689, %2690
  %2692 = call float @dx.op.unary.f32(i32 24, float %2691)  ; Sqrt(value)
  %2693 = fcmp fast ogt float %2692, 0.000000e+00
  br i1 %2693, label %2694, label %2698

; <label>:2694                                    ; preds = %2644
  %2695 = fdiv fast float %2684, %2692
  %2696 = fdiv fast float %2685, %2692
  %2697 = fdiv fast float %2686, %2692
  br label %2698

; <label>:2698                                    ; preds = %2694, %2644
  %2699 = phi float [ %2695, %2694 ], [ 0.000000e+00, %2644 ]
  %2700 = phi float [ %2696, %2694 ], [ 0.000000e+00, %2644 ]
  %2701 = phi float [ %2697, %2694 ], [ 0.000000e+00, %2644 ]
  %2702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2703 = extractvalue %dx.types.CBufRet.f32 %2702, 0
  %2704 = extractvalue %dx.types.CBufRet.f32 %2702, 1
  %2705 = fsub fast float %1858, %2703
  %2706 = fsub fast float %1859, %2704
  %2707 = fmul fast float %2705, %2705
  %2708 = fmul fast float %2706, %2706
  %2709 = fadd fast float %2707, %2708
  %2710 = call float @dx.op.unary.f32(i32 24, float %2709)  ; Sqrt(value)
  %2711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2712 = extractvalue %dx.types.CBufRet.f32 %2711, 0
  %2713 = extractvalue %dx.types.CBufRet.f32 %2711, 1
  %2714 = fsub fast float %2710, %2712
  %2715 = fdiv fast float %2714, %2713
  %2716 = call float @dx.op.unary.f32(i32 7, float %2715)  ; Saturate(value)
  %2717 = fmul fast float %2716, 2.000000e+00
  %2718 = fsub fast float 3.000000e+00, %2717
  %2719 = fmul fast float %2716, %2716
  %2720 = fmul fast float %2719, %2718
  %2721 = call float @dx.op.dot3.f32(i32 55, float %2699, float %2700, float %2701, float %1835, float %1836, float %1837)  ; Dot3(ax,ay,az,bx,by,bz)
  %2722 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2721)  ; FMax(a,b)
  %2723 = fmul fast float %2722, 0x400C5BF8A0000000
  %2724 = fmul fast float %2720, %2673
  %2725 = fmul fast float %2724, %2723
  %2726 = fadd fast float %2725, %2642
  %2727 = fmul fast float %2720, %2674
  %2728 = fmul fast float %2727, %2723
  %2729 = fadd fast float %2728, %2641
  %2730 = fmul fast float %2720, %2675
  %2731 = fmul fast float %2730, %2723
  %2732 = fadd fast float %2731, %2640
  br label %2733

; <label>:2733                                    ; preds = %2698, %2639, %2567
  %2734 = phi float [ %2732, %2698 ], [ %2640, %2639 ], [ %2579, %2567 ]
  %2735 = phi float [ %2729, %2698 ], [ %2641, %2639 ], [ %2578, %2567 ]
  %2736 = phi float [ %2726, %2698 ], [ %2642, %2639 ], [ %2577, %2567 ]
  %2737 = fcmp fast ogt float %2224, %2261
  %2738 = and i1 %2580, %2737
  %2739 = and i1 %2582, %2738
  %2740 = and i1 %2584, %2739
  %2741 = and i1 %2586, %2740
  br i1 %2741, label %2742, label %2799, !dx.controlflow.hints !79

; <label>:2742                                    ; preds = %2733
  %2743 = fmul fast float %2263, 0x3FC24924A0000000
  %2744 = fsub fast float %2224, %2261
  %2745 = fdiv fast float %2744, %2743
  %2746 = call float @dx.op.unary.f32(i32 7, float %2745)  ; Saturate(value)
  %2747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2748 = extractvalue %dx.types.CBufRet.f32 %2747, 0
  %2749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2750 = extractvalue %dx.types.CBufRet.f32 %2749, 0
  %2751 = extractvalue %dx.types.CBufRet.f32 %2749, 1
  %2752 = extractvalue %dx.types.CBufRet.f32 %2749, 2
  %2753 = fsub fast float %2748, %2736
  %2754 = fsub fast float %2750, %2574
  %2755 = fsub fast float %2751, %2575
  %2756 = fsub fast float %2752, %2576
  %2757 = fmul fast float %2753, %2746
  %2758 = fmul fast float %2754, %2746
  %2759 = fmul fast float %2755, %2746
  %2760 = fmul fast float %2756, %2746
  %2761 = fadd fast float %2757, %2736
  %2762 = fadd fast float %2758, %2574
  %2763 = fadd fast float %2759, %2575
  %2764 = fadd fast float %2760, %2576
  %2765 = extractvalue %dx.types.CBufRet.f32 %2747, 1
  %2766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2767 = extractvalue %dx.types.CBufRet.f32 %2766, 0
  %2768 = extractvalue %dx.types.CBufRet.f32 %2766, 1
  %2769 = extractvalue %dx.types.CBufRet.f32 %2766, 2
  %2770 = fsub fast float %2765, %2735
  %2771 = fsub fast float %2767, %2571
  %2772 = fsub fast float %2768, %2572
  %2773 = fsub fast float %2769, %2573
  %2774 = fmul fast float %2770, %2746
  %2775 = fmul fast float %2771, %2746
  %2776 = fmul fast float %2772, %2746
  %2777 = fmul fast float %2773, %2746
  %2778 = fadd fast float %2774, %2735
  %2779 = fadd fast float %2775, %2571
  %2780 = fadd fast float %2776, %2572
  %2781 = fadd fast float %2777, %2573
  %2782 = extractvalue %dx.types.CBufRet.f32 %2747, 2
  %2783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2784 = extractvalue %dx.types.CBufRet.f32 %2783, 0
  %2785 = extractvalue %dx.types.CBufRet.f32 %2783, 1
  %2786 = extractvalue %dx.types.CBufRet.f32 %2783, 2
  %2787 = fsub fast float %2782, %2734
  %2788 = fsub fast float %2784, %2568
  %2789 = fsub fast float %2785, %2569
  %2790 = fsub fast float %2786, %2570
  %2791 = fmul fast float %2787, %2746
  %2792 = fmul fast float %2788, %2746
  %2793 = fmul fast float %2789, %2746
  %2794 = fmul fast float %2790, %2746
  %2795 = fadd fast float %2791, %2734
  %2796 = fadd fast float %2792, %2568
  %2797 = fadd fast float %2793, %2569
  %2798 = fadd fast float %2794, %2570
  br label %2799

; <label>:2799                                    ; preds = %2742, %2733
  %2800 = phi float [ %2795, %2742 ], [ %2734, %2733 ]
  %2801 = phi float [ %2796, %2742 ], [ %2568, %2733 ]
  %2802 = phi float [ %2797, %2742 ], [ %2569, %2733 ]
  %2803 = phi float [ %2798, %2742 ], [ %2570, %2733 ]
  %2804 = phi float [ %2778, %2742 ], [ %2735, %2733 ]
  %2805 = phi float [ %2779, %2742 ], [ %2571, %2733 ]
  %2806 = phi float [ %2780, %2742 ], [ %2572, %2733 ]
  %2807 = phi float [ %2781, %2742 ], [ %2573, %2733 ]
  %2808 = phi float [ %2761, %2742 ], [ %2736, %2733 ]
  %2809 = phi float [ %2762, %2742 ], [ %2574, %2733 ]
  %2810 = phi float [ %2763, %2742 ], [ %2575, %2733 ]
  %2811 = phi float [ %2764, %2742 ], [ %2576, %2733 ]
  %2812 = extractvalue %dx.types.CBufRet.f32 %2386, 3
  %2813 = fmul fast float %2812, %2808
  %2814 = fmul fast float %2812, %2804
  %2815 = fmul fast float %2812, %2800
  %2816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2817 = extractvalue %dx.types.CBufRet.f32 %2816, 3
  %2818 = fmul fast float %2813, %2817
  %2819 = fmul fast float %2814, %2817
  %2820 = fmul fast float %2815, %2817
  %2821 = fmul fast float %2809, 1.500000e+00
  %2822 = fmul fast float %2821, %2812
  %2823 = fmul fast float %2822, %2817
  %2824 = fmul fast float %2810, 1.500000e+00
  %2825 = fmul fast float %2824, %2812
  %2826 = fmul fast float %2825, %2817
  %2827 = fmul fast float %2811, 1.500000e+00
  %2828 = fmul fast float %2827, %2812
  %2829 = fmul fast float %2828, %2817
  %2830 = fmul fast float %2805, 1.500000e+00
  %2831 = fmul fast float %2830, %2812
  %2832 = fmul fast float %2831, %2817
  %2833 = fmul fast float %2806, 1.500000e+00
  %2834 = fmul fast float %2833, %2812
  %2835 = fmul fast float %2834, %2817
  %2836 = fmul fast float %2807, 1.500000e+00
  %2837 = fmul fast float %2836, %2812
  %2838 = fmul fast float %2837, %2817
  %2839 = fmul fast float %2801, 1.500000e+00
  %2840 = fmul fast float %2839, %2812
  %2841 = fmul fast float %2840, %2817
  %2842 = fmul fast float %2802, 1.500000e+00
  %2843 = fmul fast float %2842, %2812
  %2844 = fmul fast float %2843, %2817
  %2845 = fmul fast float %2803, 1.500000e+00
  %2846 = fmul fast float %2845, %2812
  %2847 = fmul fast float %2846, %2817
  %2848 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2818)  ; FMax(a,b)
  %2849 = call float @dx.op.dot3.f32(i32 55, float %2823, float %2826, float %2829, float %2823, float %2826, float %2829)  ; Dot3(ax,ay,az,bx,by,bz)
  %2850 = fcmp fast oeq float %2849, 0.000000e+00
  %2851 = fcmp fast oeq float %2848, 0.000000e+00
  %2852 = or i1 %2851, %2850
  br i1 %2852, label %2882, label %2853

; <label>:2853                                    ; preds = %2799
  %2854 = fsub fast float -0.000000e+00, %2829
  %2855 = fsub fast float -0.000000e+00, %2823
  %2856 = call float @dx.op.unary.f32(i32 24, float %2849)  ; Sqrt(value)
  %2857 = fdiv fast float %2856, %2848
  %2858 = fcmp fast ogt float %2857, 0x3FFB6F8900000000
  %2859 = select i1 %2858, float 0x3FFB6F8900000000, float %2857
  %2860 = fmul fast float %2859, 0x3FE8A23460000000
  %2861 = call float @dx.op.unary.f32(i32 7, float %2860)  ; Saturate(value)
  %2862 = call float @dx.op.binary.f32(i32 35, float %2859, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2863 = fmul fast float %2861, %2848
  %2864 = fmul fast float %2862, 0x3FF279A740000000
  %2865 = fadd fast float %2864, -1.000000e+00
  %2866 = call float @dx.op.dot3.f32(i32 55, float %2854, float %2855, float %2826, float %2854, float %2855, float %2826)  ; Dot3(ax,ay,az,bx,by,bz)
  %2867 = call float @dx.op.unary.f32(i32 25, float %2866)  ; Rsqrt(value)
  %2868 = fmul fast float %2867, %2854
  %2869 = fmul fast float %2867, %2855
  %2870 = fmul fast float %2867, %2826
  %2871 = fmul fast float %2865, %2865
  %2872 = fsub fast float 1.000000e+00, %2871
  %2873 = fmul fast float %2862, 0x40005F8BE0000000
  %2874 = fsub fast float 0x400C5BF8A0000000, %2873
  %2875 = fdiv fast float %2863, %2874
  %2876 = fmul fast float %2875, 0x3FEE31C3C0000000
  %2877 = fmul fast float %2876, %2872
  %2878 = fmul fast float %2862, 0x3FDACB7480000000
  %2879 = fadd fast float %2878, 0xBFD7347680000000
  %2880 = fmul fast float %2879, %2875
  %2881 = fmul fast float %2880, %2872
  br label %2882

; <label>:2882                                    ; preds = %2853, %2799
  %2883 = phi float [ %2868, %2853 ], [ 0.000000e+00, %2799 ]
  %2884 = phi float [ %2869, %2853 ], [ 0.000000e+00, %2799 ]
  %2885 = phi float [ %2870, %2853 ], [ 0.000000e+00, %2799 ]
  %2886 = phi float [ %2877, %2853 ], [ 0.000000e+00, %2799 ]
  %2887 = phi float [ %2881, %2853 ], [ 0.000000e+00, %2799 ]
  %2888 = call float @dx.op.dot3.f32(i32 55, float %2883, float %2884, float %2885, float %1835, float %1836, float %1837)  ; Dot3(ax,ay,az,bx,by,bz)
  %2889 = fmul fast float %2888, %2888
  %2890 = fmul fast float %2889, 0x3FEE471020000000
  %2891 = fadd fast float %2890, 0xBFD42F6020000000
  %2892 = fmul fast float %2848, 0x3FD20DD760000000
  %2893 = fmul fast float %2891, %2887
  %2894 = fmul fast float %2886, 0x3FDF454380000000
  %2895 = fmul fast float %2894, %2888
  %2896 = fadd fast float %2895, %2892
  %2897 = fadd fast float %2896, %2893
  %2898 = call float @dx.op.dot3.f32(i32 55, float %2883, float %2884, float %2885, float %1848, float %1849, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %2899 = fmul fast float %2898, 0x3FDF454380000000
  %2900 = fmul fast float %2898, %2898
  %2901 = fmul fast float %2900, 0x3FEE471020000000
  %2902 = fadd fast float %2901, 0xBFD42F6020000000
  %2903 = call float @dx.op.dot3.f32(i32 55, float %2848, float %2886, float %2887, float 0x3FD20DD760000000, float %2899, float %2902)  ; Dot3(ax,ay,az,bx,by,bz)
  %2904 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2819)  ; FMax(a,b)
  %2905 = call float @dx.op.dot3.f32(i32 55, float %2832, float %2835, float %2838, float %2832, float %2835, float %2838)  ; Dot3(ax,ay,az,bx,by,bz)
  %2906 = fcmp fast oeq float %2905, 0.000000e+00
  %2907 = fcmp fast oeq float %2904, 0.000000e+00
  %2908 = or i1 %2907, %2906
  br i1 %2908, label %2938, label %2909

; <label>:2909                                    ; preds = %2882
  %2910 = fsub fast float -0.000000e+00, %2838
  %2911 = fsub fast float -0.000000e+00, %2832
  %2912 = call float @dx.op.unary.f32(i32 24, float %2905)  ; Sqrt(value)
  %2913 = fdiv fast float %2912, %2904
  %2914 = fcmp fast ogt float %2913, 0x3FFB6F8900000000
  %2915 = select i1 %2914, float 0x3FFB6F8900000000, float %2913
  %2916 = fmul fast float %2915, 0x3FE8A23460000000
  %2917 = call float @dx.op.unary.f32(i32 7, float %2916)  ; Saturate(value)
  %2918 = call float @dx.op.binary.f32(i32 35, float %2915, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2919 = fmul fast float %2917, %2904
  %2920 = fmul fast float %2918, 0x3FF279A740000000
  %2921 = fadd fast float %2920, -1.000000e+00
  %2922 = call float @dx.op.dot3.f32(i32 55, float %2910, float %2911, float %2835, float %2910, float %2911, float %2835)  ; Dot3(ax,ay,az,bx,by,bz)
  %2923 = call float @dx.op.unary.f32(i32 25, float %2922)  ; Rsqrt(value)
  %2924 = fmul fast float %2923, %2910
  %2925 = fmul fast float %2923, %2911
  %2926 = fmul fast float %2923, %2835
  %2927 = fmul fast float %2921, %2921
  %2928 = fsub fast float 1.000000e+00, %2927
  %2929 = fmul fast float %2918, 0x40005F8BE0000000
  %2930 = fsub fast float 0x400C5BF8A0000000, %2929
  %2931 = fdiv fast float %2919, %2930
  %2932 = fmul fast float %2931, 0x3FEE31C3C0000000
  %2933 = fmul fast float %2932, %2928
  %2934 = fmul fast float %2918, 0x3FDACB7480000000
  %2935 = fadd fast float %2934, 0xBFD7347680000000
  %2936 = fmul fast float %2935, %2931
  %2937 = fmul fast float %2936, %2928
  br label %2938

; <label>:2938                                    ; preds = %2909, %2882
  %2939 = phi float [ %2924, %2909 ], [ 0.000000e+00, %2882 ]
  %2940 = phi float [ %2925, %2909 ], [ 0.000000e+00, %2882 ]
  %2941 = phi float [ %2926, %2909 ], [ 0.000000e+00, %2882 ]
  %2942 = phi float [ %2933, %2909 ], [ 0.000000e+00, %2882 ]
  %2943 = phi float [ %2937, %2909 ], [ 0.000000e+00, %2882 ]
  %2944 = call float @dx.op.dot3.f32(i32 55, float %2939, float %2940, float %2941, float %1835, float %1836, float %1837)  ; Dot3(ax,ay,az,bx,by,bz)
  %2945 = fmul fast float %2944, %2944
  %2946 = fmul fast float %2945, 0x3FEE471020000000
  %2947 = fadd fast float %2946, 0xBFD42F6020000000
  %2948 = fmul fast float %2904, 0x3FD20DD760000000
  %2949 = fmul fast float %2947, %2943
  %2950 = fmul fast float %2942, 0x3FDF454380000000
  %2951 = fmul fast float %2950, %2944
  %2952 = fadd fast float %2951, %2948
  %2953 = fadd fast float %2952, %2949
  %2954 = call float @dx.op.dot3.f32(i32 55, float %2939, float %2940, float %2941, float %1848, float %1849, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %2955 = fmul fast float %2954, 0x3FDF454380000000
  %2956 = fmul fast float %2954, %2954
  %2957 = fmul fast float %2956, 0x3FEE471020000000
  %2958 = fadd fast float %2957, 0xBFD42F6020000000
  %2959 = call float @dx.op.dot3.f32(i32 55, float %2904, float %2942, float %2943, float 0x3FD20DD760000000, float %2955, float %2958)  ; Dot3(ax,ay,az,bx,by,bz)
  %2960 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2820)  ; FMax(a,b)
  %2961 = call float @dx.op.dot3.f32(i32 55, float %2841, float %2844, float %2847, float %2841, float %2844, float %2847)  ; Dot3(ax,ay,az,bx,by,bz)
  %2962 = fcmp fast oeq float %2961, 0.000000e+00
  %2963 = fcmp fast oeq float %2960, 0.000000e+00
  %2964 = or i1 %2963, %2962
  br i1 %2964, label %2994, label %2965

; <label>:2965                                    ; preds = %2938
  %2966 = fsub fast float -0.000000e+00, %2847
  %2967 = fsub fast float -0.000000e+00, %2841
  %2968 = call float @dx.op.unary.f32(i32 24, float %2961)  ; Sqrt(value)
  %2969 = fdiv fast float %2968, %2960
  %2970 = fcmp fast ogt float %2969, 0x3FFB6F8900000000
  %2971 = select i1 %2970, float 0x3FFB6F8900000000, float %2969
  %2972 = fmul fast float %2971, 0x3FE8A23460000000
  %2973 = call float @dx.op.unary.f32(i32 7, float %2972)  ; Saturate(value)
  %2974 = call float @dx.op.binary.f32(i32 35, float %2971, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2975 = fmul fast float %2973, %2960
  %2976 = fmul fast float %2974, 0x3FF279A740000000
  %2977 = fadd fast float %2976, -1.000000e+00
  %2978 = call float @dx.op.dot3.f32(i32 55, float %2966, float %2967, float %2844, float %2966, float %2967, float %2844)  ; Dot3(ax,ay,az,bx,by,bz)
  %2979 = call float @dx.op.unary.f32(i32 25, float %2978)  ; Rsqrt(value)
  %2980 = fmul fast float %2979, %2966
  %2981 = fmul fast float %2979, %2967
  %2982 = fmul fast float %2979, %2844
  %2983 = fmul fast float %2977, %2977
  %2984 = fsub fast float 1.000000e+00, %2983
  %2985 = fmul fast float %2974, 0x40005F8BE0000000
  %2986 = fsub fast float 0x400C5BF8A0000000, %2985
  %2987 = fdiv fast float %2975, %2986
  %2988 = fmul fast float %2987, 0x3FEE31C3C0000000
  %2989 = fmul fast float %2988, %2984
  %2990 = fmul fast float %2974, 0x3FDACB7480000000
  %2991 = fadd fast float %2990, 0xBFD7347680000000
  %2992 = fmul fast float %2991, %2987
  %2993 = fmul fast float %2992, %2984
  br label %2994

; <label>:2994                                    ; preds = %2965, %2938
  %2995 = phi float [ %2980, %2965 ], [ 0.000000e+00, %2938 ]
  %2996 = phi float [ %2981, %2965 ], [ 0.000000e+00, %2938 ]
  %2997 = phi float [ %2982, %2965 ], [ 0.000000e+00, %2938 ]
  %2998 = phi float [ %2989, %2965 ], [ 0.000000e+00, %2938 ]
  %2999 = phi float [ %2993, %2965 ], [ 0.000000e+00, %2938 ]
  %3000 = call float @dx.op.dot3.f32(i32 55, float %2995, float %2996, float %2997, float %1835, float %1836, float %1837)  ; Dot3(ax,ay,az,bx,by,bz)
  %3001 = fmul fast float %3000, %3000
  %3002 = fmul fast float %3001, 0x3FEE471020000000
  %3003 = fadd fast float %3002, 0xBFD42F6020000000
  %3004 = fmul fast float %2960, 0x3FD20DD760000000
  %3005 = fmul fast float %3003, %2999
  %3006 = fmul fast float %2998, 0x3FDF454380000000
  %3007 = fmul fast float %3006, %3000
  %3008 = fadd fast float %3007, %3004
  %3009 = fadd fast float %3008, %3005
  %3010 = call float @dx.op.dot3.f32(i32 55, float %2995, float %2996, float %2997, float %1848, float %1849, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %3011 = fmul fast float %3010, 0x3FDF454380000000
  %3012 = fmul fast float %3010, %3010
  %3013 = fmul fast float %3012, 0x3FEE471020000000
  %3014 = fadd fast float %3013, 0xBFD42F6020000000
  %3015 = call float @dx.op.dot3.f32(i32 55, float %2960, float %2998, float %2999, float 0x3FD20DD760000000, float %3011, float %3014)  ; Dot3(ax,ay,az,bx,by,bz)
  %3016 = call float @dx.op.binary.f32(i32 35, float %2897, float 0.000000e+00)  ; FMax(a,b)
  %3017 = call float @dx.op.binary.f32(i32 35, float %2953, float 0.000000e+00)  ; FMax(a,b)
  %3018 = call float @dx.op.binary.f32(i32 35, float %3009, float 0.000000e+00)  ; FMax(a,b)
  %3019 = call float @dx.op.binary.f32(i32 35, float %2903, float 0.000000e+00)  ; FMax(a,b)
  %3020 = call float @dx.op.binary.f32(i32 35, float %2959, float 0.000000e+00)  ; FMax(a,b)
  %3021 = call float @dx.op.binary.f32(i32 35, float %3015, float 0.000000e+00)  ; FMax(a,b)
  %3022 = fsub fast float %2218, %3016
  %3023 = fsub fast float %2219, %3017
  %3024 = fsub fast float %2220, %3018
  %3025 = fmul fast float %3022, %1899
  %3026 = fmul fast float %3023, %1899
  %3027 = fmul fast float %3024, %1899
  %3028 = fadd fast float %3025, %3016
  %3029 = fadd fast float %3026, %3017
  %3030 = fadd fast float %3027, %3018
  %3031 = fsub fast float %2215, %3019
  %3032 = fsub fast float %2216, %3020
  %3033 = fsub fast float %2217, %3021
  %3034 = fmul fast float %3031, %1899
  %3035 = fmul fast float %3032, %1899
  %3036 = fmul fast float %3033, %1899
  %3037 = fadd fast float %3034, %3019
  %3038 = fadd fast float %3035, %3020
  %3039 = fadd fast float %3036, %3021
  br label %3040

; <label>:3040                                    ; preds = %2994, %2214
  %3041 = phi float [ %3037, %2994 ], [ %2215, %2214 ]
  %3042 = phi float [ %3038, %2994 ], [ %2216, %2214 ]
  %3043 = phi float [ %3039, %2994 ], [ %2217, %2214 ]
  %3044 = phi float [ %3028, %2994 ], [ %2218, %2214 ]
  %3045 = phi float [ %3029, %2994 ], [ %2219, %2214 ]
  %3046 = phi float [ %3030, %2994 ], [ %2220, %2214 ]
  %3047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3048 = extractvalue %dx.types.CBufRet.f32 %3047, 0
  %3049 = call float @dx.op.binary.f32(i32 36, float %1832, float %3048)  ; FMin(a,b)
  %3050 = fsub fast float 1.000000e+00, %1851
  %3051 = fmul fast float %3049, %3050
  %3052 = fsub fast float 1.000000e+00, %3051
  %3053 = bitcast float %3052 to i32
  %3054 = sub nsw i32 2129859010, %3053
  %3055 = bitcast i32 %3054 to float
  %3056 = call float @dx.op.binary.f32(i32 36, float %1833, float %3048)  ; FMin(a,b)
  %3057 = fmul fast float %3056, %3050
  %3058 = fsub fast float 1.000000e+00, %3057
  %3059 = bitcast float %3058 to i32
  %3060 = sub nsw i32 2129859010, %3059
  %3061 = bitcast i32 %3060 to float
  %3062 = call float @dx.op.binary.f32(i32 36, float %1834, float %3048)  ; FMin(a,b)
  %3063 = fmul fast float %3062, %3050
  %3064 = fsub fast float 1.000000e+00, %3063
  %3065 = bitcast float %3064 to i32
  %3066 = sub nsw i32 2129859010, %3065
  %3067 = bitcast i32 %3066 to float
  %3068 = fmul fast float %3044, %1851
  %3069 = fmul fast float %3068, %3055
  %3070 = fmul fast float %3045, %1851
  %3071 = fmul fast float %3070, %3061
  %3072 = fmul fast float %3046, %1851
  %3073 = fmul fast float %3072, %3067
  %3074 = call float @dx.op.binary.f32(i32 36, float %1829, float %3048)  ; FMin(a,b)
  %3075 = fmul fast float %3074, %3050
  %3076 = fsub fast float 1.000000e+00, %3075
  %3077 = bitcast float %3076 to i32
  %3078 = sub nsw i32 2129859010, %3077
  %3079 = bitcast i32 %3078 to float
  %3080 = call float @dx.op.binary.f32(i32 36, float %1830, float %3048)  ; FMin(a,b)
  %3081 = fmul fast float %3080, %3050
  %3082 = fsub fast float 1.000000e+00, %3081
  %3083 = bitcast float %3082 to i32
  %3084 = sub nsw i32 2129859010, %3083
  %3085 = bitcast i32 %3084 to float
  %3086 = call float @dx.op.binary.f32(i32 36, float %1840, float %3048)  ; FMin(a,b)
  %3087 = fmul fast float %3086, %3050
  %3088 = fsub fast float 1.000000e+00, %3087
  %3089 = bitcast float %3088 to i32
  %3090 = sub nsw i32 2129859010, %3089
  %3091 = bitcast i32 %3090 to float
  %3092 = fmul fast float %3041, %1851
  %3093 = fmul fast float %3092, %3079
  %3094 = fmul fast float %3042, %1851
  %3095 = fmul fast float %3094, %3085
  %3096 = fmul fast float %3043, %1851
  %3097 = fmul fast float %3096, %3091
  %3098 = call float @dx.op.dot3.f32(i32 55, float %3069, float %3071, float %3073, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3099 = select i1 %176, float 0.000000e+00, float %3069
  %3100 = select i1 %176, float %3098, float %3071
  %3101 = select i1 %176, float 0.000000e+00, float %3073
  %3102 = call float @dx.op.dot3.f32(i32 55, float %3093, float %3095, float %3097, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3103 = select i1 %176, float 0.000000e+00, float %3093
  %3104 = select i1 %176, float %3102, float %3095
  %3105 = select i1 %176, float 0.000000e+00, float %3097
  %3106 = fmul fast float %1842, 9.843750e-01
  %3107 = fmul fast float %1838, 9.843750e-01
  %3108 = fadd fast float %3106, 7.812500e-03
  %3109 = fadd fast float %3107, 7.812500e-03
  %3110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3108, float %3109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3111 = extractvalue %dx.types.ResRet.f32 %3110, 2
  %3112 = extractvalue %dx.types.ResRet.f32 %3110, 3
  %3113 = fmul fast float %3111, %1829
  %3114 = fmul fast float %3111, %1830
  %3115 = fmul fast float %3111, %1840
  %3116 = fadd fast float %3113, %3112
  %3117 = fadd fast float %3114, %3112
  %3118 = fadd fast float %3115, %3112
  %3119 = fcmp fast ogt float %1206, 0.000000e+00
  br i1 %3119, label %3120, label %3146

; <label>:3120                                    ; preds = %3040
  %3121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1206, float %1842, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3122 = extractvalue %dx.types.ResRet.f32 %3121, 0
  %3123 = extractvalue %dx.types.ResRet.f32 %3121, 1
  %3124 = extractvalue %dx.types.ResRet.f32 %3121, 2
  %3125 = fadd fast float %3122, -5.000000e-01
  %3126 = fadd fast float %3123, -5.000000e-01
  %3127 = fadd fast float %3124, -5.000000e-01
  %3128 = fsub fast float 1.000000e+00, %1829
  %3129 = fsub fast float 1.000000e+00, %1830
  %3130 = fsub fast float 1.000000e+00, %1840
  %3131 = fmul fast float %1829, 4.000000e+00
  %3132 = fmul fast float %3131, %3128
  %3133 = fmul fast float %3132, %3125
  %3134 = fmul fast float %1830, 4.000000e+00
  %3135 = fmul fast float %3134, %3129
  %3136 = fmul fast float %3135, %3126
  %3137 = fmul fast float %1840, 4.000000e+00
  %3138 = fmul fast float %3137, %3130
  %3139 = fmul fast float %3138, %3127
  %3140 = fadd fast float %3133, %3116
  %3141 = fadd fast float %3136, %3117
  %3142 = fadd fast float %3139, %3118
  %3143 = call float @dx.op.unary.f32(i32 7, float %3140)  ; Saturate(value)
  %3144 = call float @dx.op.unary.f32(i32 7, float %3141)  ; Saturate(value)
  %3145 = call float @dx.op.unary.f32(i32 7, float %3142)  ; Saturate(value)
  br label %3146

; <label>:3146                                    ; preds = %3120, %3040
  %3147 = phi float [ %3143, %3120 ], [ %3116, %3040 ]
  %3148 = phi float [ %3144, %3120 ], [ %3117, %3040 ]
  %3149 = phi float [ %3145, %3120 ], [ %3118, %3040 ]
  %3150 = call float @dx.op.binary.f32(i32 35, float %3148, float %3149)  ; FMax(a,b)
  %3151 = call float @dx.op.binary.f32(i32 35, float %3147, float %3150)  ; FMax(a,b)
  %3152 = fsub fast float 1.000000e+00, %3151
  %3153 = fmul fast float %3152, %3099
  %3154 = fmul fast float %3152, %3100
  %3155 = fmul fast float %3152, %3101
  %3156 = call float @dx.op.dot3.f32(i32 55, float %1832, float %1833, float %1834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3157 = fcmp fast ogt float %3156, 0x3E7FF19E20000000
  %3158 = fdiv fast float 1.000000e+00, %3156
  %3159 = select i1 %3157, float %3158, float 0.000000e+00
  %3160 = fmul fast float %3159, %1832
  %3161 = fmul fast float %3159, %1833
  %3162 = fmul fast float %3159, %1834
  %3163 = fadd fast float %3160, -1.000000e+00
  %3164 = fadd fast float %3161, -1.000000e+00
  %3165 = fadd fast float %3162, -1.000000e+00
  %3166 = fmul fast float %3163, 5.000000e-01
  %3167 = fmul fast float %3164, 5.000000e-01
  %3168 = fmul fast float %3165, 5.000000e-01
  %3169 = fadd fast float %3166, 1.000000e+00
  %3170 = fadd fast float %3167, 1.000000e+00
  %3171 = fadd fast float %3168, 1.000000e+00
  %3172 = fmul fast float %3147, %3103
  %3173 = fmul fast float %3148, %3104
  %3174 = fmul fast float %3149, %3105
  %3175 = fsub fast float 1.000000e+00, %1842
  %3176 = bitcast float %3175 to i32
  %3177 = sitofp i32 %3176 to float
  %3178 = fmul fast float %3177, 5.000000e+00
  %3179 = fadd fast float %3178, 0xC1EFBF8940000000
  %3180 = fptosi float %3179 to i32
  %3181 = bitcast i32 %3180 to float
  %3182 = fmul fast float %3181, %1205
  %3183 = fmul fast float %3099, %3182
  %3184 = fmul fast float %3183, %3152
  %3185 = fmul fast float %3184, %3169
  %3186 = fmul fast float %3100, %3182
  %3187 = fmul fast float %3186, %3152
  %3188 = fmul fast float %3187, %3170
  %3189 = fmul fast float %3101, %3182
  %3190 = fmul fast float %3189, %3152
  %3191 = fmul fast float %3190, %3171
  %3192 = fmul fast float %3153, %1226
  %3193 = fmul fast float %3154, %1226
  %3194 = fmul fast float %3155, %1226
  %3195 = fadd fast float %3172, %1207
  %3196 = fadd fast float %3195, %3185
  %3197 = fmul fast float %3196, %1226
  %3198 = fadd fast float %3173, %1208
  %3199 = fadd fast float %3198, %3188
  %3200 = fmul fast float %3199, %1226
  %3201 = fadd fast float %3174, %1209
  %3202 = fadd fast float %3201, %3191
  %3203 = fmul fast float %3202, %1226
  %3204 = bitcast i32 %1854 to float
  %3205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3206 = extractvalue %dx.types.CBufRet.f32 %3205, 3
  %3207 = fcmp fast oeq float %3206, 0.000000e+00
  br i1 %3207, label %3435, label %3208

; <label>:3208                                    ; preds = %3146
  %3209 = extractvalue %dx.types.CBufRet.f32 %3205, 0
  %3210 = extractvalue %dx.types.CBufRet.f32 %3205, 1
  %3211 = extractvalue %dx.types.CBufRet.f32 %3205, 2
  %3212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3213 = extractvalue %dx.types.CBufRet.f32 %3212, 0
  %3214 = extractvalue %dx.types.CBufRet.f32 %3212, 1
  %3215 = extractvalue %dx.types.CBufRet.f32 %3212, 2
  %3216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3217 = extractvalue %dx.types.CBufRet.f32 %3216, 0
  %3218 = extractvalue %dx.types.CBufRet.f32 %3216, 1
  %3219 = call float @dx.op.dot3.f32(i32 55, float %3213, float %3214, float %3215, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3220 = select i1 %176, float %3217, float %3213
  %3221 = select i1 %176, float %3219, float %3214
  %3222 = select i1 %176, float %3218, float %3215
  %3223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3224 = extractvalue %dx.types.CBufRet.f32 %3223, 1
  %3225 = fcmp fast une float %3224, 0.000000e+00
  br i1 %3225, label %3226, label %3243

; <label>:3226                                    ; preds = %3208
  %3227 = fptoui float %58 to i32
  %3228 = fptoui float %59 to i32
  %3229 = lshr i32 %3227, 4
  %3230 = lshr i32 %3228, 4
  %3231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3232 = extractvalue %dx.types.CBufRet.f32 %3231, 0
  %3233 = fptoui float %3232 to i32
  %3234 = add i32 %3233, 15
  %3235 = lshr i32 %3234, 4
  %3236 = mul i32 %3235, %3230
  %3237 = add i32 %3236, %3229
  %3238 = shl i32 %3237, 3
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3238, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = and i32 %3240, -268435456
  %3242 = icmp eq i32 %3241, -1342177280
  br i1 %3242, label %3253, label %3243

; <label>:3243                                    ; preds = %3226, %3208
  %3244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3245 = extractvalue %dx.types.CBufRet.f32 %3244, 2
  %3246 = extractvalue %dx.types.CBufRet.f32 %3244, 3
  %3247 = fmul fast float %3245, %58
  %3248 = fmul fast float %3246, %59
  %3249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %3247, float %3248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3250 = extractvalue %dx.types.ResRet.f32 %3249, 0
  %3251 = extractvalue %dx.types.ResRet.f32 %3249, 1
  %3252 = extractvalue %dx.types.ResRet.f32 %3249, 2
  br label %3253

; <label>:3253                                    ; preds = %3243, %3226
  %3254 = phi float [ %3250, %3243 ], [ 0.000000e+00, %3226 ]
  %3255 = phi float [ %3251, %3243 ], [ 0.000000e+00, %3226 ]
  %3256 = phi float [ %3252, %3243 ], [ 0.000000e+00, %3226 ]
  %3257 = call float @dx.op.binary.f32(i32 36, float %3255, float %3256)  ; FMin(a,b)
  %3258 = call float @dx.op.binary.f32(i32 36, float %3254, float %3257)  ; FMin(a,b)
  %3259 = fcmp fast ogt float %3258, 0.000000e+00
  br i1 %3259, label %3260, label %3435, !dx.controlflow.hints !80

; <label>:3260                                    ; preds = %3253
  %3261 = fmul fast float %3254, %3220
  %3262 = fmul fast float %3255, %3221
  %3263 = fmul fast float %3256, %3222
  %3264 = fsub fast float %3209, %1828
  %3265 = fsub fast float %3210, %1827
  %3266 = fsub fast float %3211, %1826
  %3267 = call float @dx.op.dot3.f32(i32 55, float %3264, float %3265, float %3266, float %3264, float %3265, float %3266)  ; Dot3(ax,ay,az,bx,by,bz)
  %3268 = call float @dx.op.unary.f32(i32 25, float %3267)  ; Rsqrt(value)
  %3269 = fmul fast float %3268, %3264
  %3270 = fmul fast float %3268, %3265
  %3271 = fmul fast float %3268, %3266
  %3272 = call float @dx.op.dot3.f32(i32 55, float %3209, float %3210, float %3211, float %1835, float %1836, float %1837)  ; Dot3(ax,ay,az,bx,by,bz)
  %3273 = call float @dx.op.dot3.f32(i32 55, float %1825, float %1824, float %1823, float %3269, float %3270, float %3271)  ; Dot3(ax,ay,az,bx,by,bz)
  %3274 = call float @dx.op.unary.f32(i32 7, float %3272)  ; Saturate(value)
  %3275 = fmul fast float %3274, %3274
  %3276 = fmul fast float %3275, %3204
  %3277 = call float @dx.op.unary.f32(i32 7, float %3276)  ; Saturate(value)
  %3278 = fmul fast float %3277, %3274
  %3279 = call float @dx.op.dot3.f32(i32 55, float %1835, float %1836, float %1837, float %3269, float %3270, float %3271)  ; Dot3(ax,ay,az,bx,by,bz)
  %3280 = fmul fast float %3279, %3279
  %3281 = call float @dx.op.unary.f32(i32 6, float %3272)  ; FAbs(value)
  %3282 = fsub fast float 1.000000e+00, %1838
  %3283 = call float @dx.op.binary.f32(i32 35, float %3282, float 0x3F847AE140000000)  ; FMax(a,b)
  %3284 = fmul fast float %3283, %3283
  %3285 = fmul fast float %3284, %3284
  %3286 = fsub fast float 1.000000e+00, %3285
  %3287 = fmul fast float %1842, %1842
  %3288 = fmul fast float %3287, %3286
  %3289 = fadd fast float %3288, %3285
  %3290 = bitcast float %3289 to i32
  %3291 = ashr i32 %3290, 1
  %3292 = add nsw i32 %3291, 532487669
  %3293 = bitcast i32 %3292 to float
  %3294 = fadd fast float %3293, %1842
  %3295 = fmul fast float %3285, %3280
  %3296 = fsub fast float 1.000000e+00, %3280
  %3297 = fadd fast float %3296, %3295
  %3298 = fmul fast float %3281, %3281
  %3299 = fmul fast float %3298, %3286
  %3300 = fadd fast float %3299, %3285
  %3301 = bitcast float %3300 to i32
  %3302 = ashr i32 %3301, 1
  %3303 = add nsw i32 %3302, 532487669
  %3304 = bitcast i32 %3303 to float
  %3305 = fadd fast float %3304, %3281
  %3306 = fmul fast float %3297, %3297
  %3307 = fmul fast float %3306, %3294
  %3308 = fmul fast float %3307, %3305
  %3309 = fdiv fast float 0x3FF0A00000000000, %3308
  %3310 = fmul fast float %3309, %3285
  %3311 = call float @dx.op.unary.f32(i32 6, float %3273)  ; FAbs(value)
  %3312 = fsub fast float 1.000000e+00, %3311
  %3313 = bitcast float %3312 to i32
  %3314 = sitofp i32 %3313 to float
  %3315 = fmul fast float %3314, 5.000000e+00
  %3316 = fadd fast float %3315, 0xC1EFBF8940000000
  %3317 = fptosi float %3316 to i32
  %3318 = bitcast i32 %3317 to float
  %3319 = fsub fast float 1.000000e+00, %1829
  %3320 = fsub fast float 1.000000e+00, %1830
  %3321 = fsub fast float 1.000000e+00, %1840
  %3322 = fmul fast float %3318, %3319
  %3323 = fmul fast float %3318, %3320
  %3324 = fmul fast float %3318, %3321
  %3325 = fadd fast float %3322, %1829
  %3326 = fadd fast float %3323, %1830
  %3327 = fadd fast float %3324, %1840
  br i1 %3119, label %3328, label %3351

; <label>:3328                                    ; preds = %3260
  %3329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1206, float %3311, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3330 = extractvalue %dx.types.ResRet.f32 %3329, 0
  %3331 = extractvalue %dx.types.ResRet.f32 %3329, 1
  %3332 = extractvalue %dx.types.ResRet.f32 %3329, 2
  %3333 = fadd fast float %3330, -5.000000e-01
  %3334 = fadd fast float %3331, -5.000000e-01
  %3335 = fadd fast float %3332, -5.000000e-01
  %3336 = fmul fast float %1829, 4.000000e+00
  %3337 = fmul fast float %3336, %3319
  %3338 = fmul fast float %3337, %3333
  %3339 = fmul fast float %1830, 4.000000e+00
  %3340 = fmul fast float %3339, %3320
  %3341 = fmul fast float %3340, %3334
  %3342 = fmul fast float %1840, 4.000000e+00
  %3343 = fmul fast float %3342, %3321
  %3344 = fmul fast float %3343, %3335
  %3345 = fadd fast float %3338, %3325
  %3346 = fadd fast float %3341, %3326
  %3347 = fadd fast float %3344, %3327
  %3348 = call float @dx.op.unary.f32(i32 7, float %3345)  ; Saturate(value)
  %3349 = call float @dx.op.unary.f32(i32 7, float %3346)  ; Saturate(value)
  %3350 = call float @dx.op.unary.f32(i32 7, float %3347)  ; Saturate(value)
  br label %3351

; <label>:3351                                    ; preds = %3328, %3260
  %3352 = phi float [ %3348, %3328 ], [ %3325, %3260 ]
  %3353 = phi float [ %3349, %3328 ], [ %3326, %3260 ]
  %3354 = phi float [ %3350, %3328 ], [ %3327, %3260 ]
  %3355 = fmul fast float %3272, 9.843750e-01
  %3356 = fadd fast float %3355, 7.812500e-03
  %3357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3356, float %3109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3358 = extractvalue %dx.types.ResRet.f32 %3357, 2
  %3359 = extractvalue %dx.types.ResRet.f32 %3357, 3
  %3360 = fmul fast float %3358, %1829
  %3361 = fmul fast float %3358, %1830
  %3362 = fmul fast float %3358, %1840
  %3363 = fadd fast float %3360, %3359
  %3364 = fadd fast float %3361, %3359
  %3365 = fadd fast float %3362, %3359
  br i1 %3119, label %3366, label %3389

; <label>:3366                                    ; preds = %3351
  %3367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1206, float %3272, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3368 = extractvalue %dx.types.ResRet.f32 %3367, 0
  %3369 = extractvalue %dx.types.ResRet.f32 %3367, 1
  %3370 = extractvalue %dx.types.ResRet.f32 %3367, 2
  %3371 = fadd fast float %3368, -5.000000e-01
  %3372 = fadd fast float %3369, -5.000000e-01
  %3373 = fadd fast float %3370, -5.000000e-01
  %3374 = fmul fast float %1829, 4.000000e+00
  %3375 = fmul fast float %3374, %3319
  %3376 = fmul fast float %3375, %3371
  %3377 = fmul fast float %1830, 4.000000e+00
  %3378 = fmul fast float %3377, %3320
  %3379 = fmul fast float %3378, %3372
  %3380 = fmul fast float %1840, 4.000000e+00
  %3381 = fmul fast float %3380, %3321
  %3382 = fmul fast float %3381, %3373
  %3383 = fadd fast float %3376, %3363
  %3384 = fadd fast float %3379, %3364
  %3385 = fadd fast float %3382, %3365
  %3386 = call float @dx.op.unary.f32(i32 7, float %3383)  ; Saturate(value)
  %3387 = call float @dx.op.unary.f32(i32 7, float %3384)  ; Saturate(value)
  %3388 = call float @dx.op.unary.f32(i32 7, float %3385)  ; Saturate(value)
  br label %3389

; <label>:3389                                    ; preds = %3366, %3351
  %3390 = phi float [ %3386, %3366 ], [ %3363, %3351 ]
  %3391 = phi float [ %3387, %3366 ], [ %3364, %3351 ]
  %3392 = phi float [ %3388, %3366 ], [ %3365, %3351 ]
  %3393 = call float @dx.op.binary.f32(i32 35, float %3391, float %3392)  ; FMax(a,b)
  %3394 = call float @dx.op.binary.f32(i32 35, float %3390, float %3393)  ; FMax(a,b)
  %3395 = fsub fast float 1.000000e+00, %3394
  %3396 = fmul fast float %3352, %3310
  %3397 = fmul fast float %3353, %3310
  %3398 = fmul fast float %3354, %3310
  %3399 = fsub fast float 1.000000e+00, %3273
  %3400 = bitcast float %3399 to i32
  %3401 = sitofp i32 %3400 to float
  %3402 = fmul fast float %3401, 5.000000e+00
  %3403 = fadd fast float %3402, 0xC1EFBF8940000000
  %3404 = fptosi float %3403 to i32
  %3405 = bitcast i32 %3404 to float
  %3406 = fmul fast float %3405, %1205
  %3407 = fmul fast float %3395, %3406
  %3408 = fmul fast float %3407, %3169
  %3409 = fmul fast float %3407, %3170
  %3410 = fmul fast float %3407, %3171
  %3411 = fadd fast float %3408, %3396
  %3412 = fadd fast float %3409, %3397
  %3413 = fadd fast float %3410, %3398
  %3414 = fmul fast float %3278, %3261
  %3415 = fmul fast float %3414, %3395
  %3416 = fmul fast float %3278, %3262
  %3417 = fmul fast float %3416, %3395
  %3418 = fmul fast float %3278, %3263
  %3419 = fmul fast float %3418, %3395
  %3420 = fmul fast float %3414, %3411
  %3421 = fmul fast float %3416, %3412
  %3422 = fmul fast float %3418, %3413
  %3423 = fadd fast float %3415, %3153
  %3424 = fmul fast float %3423, %1226
  %3425 = fadd fast float %3417, %3154
  %3426 = fmul fast float %3425, %1226
  %3427 = fadd fast float %3419, %3155
  %3428 = fmul fast float %3427, %1226
  %3429 = fadd fast float %3420, %3196
  %3430 = fmul fast float %3429, %1226
  %3431 = fadd fast float %3421, %3199
  %3432 = fmul fast float %3431, %1226
  %3433 = fadd fast float %3422, %3202
  %3434 = fmul fast float %3433, %1226
  br label %3435

; <label>:3435                                    ; preds = %3389, %3253, %3146
  %3436 = phi float [ %3197, %3146 ], [ %3197, %3253 ], [ %3430, %3389 ]
  %3437 = phi float [ %3200, %3146 ], [ %3200, %3253 ], [ %3432, %3389 ]
  %3438 = phi float [ %3203, %3146 ], [ %3203, %3253 ], [ %3434, %3389 ]
  %3439 = phi float [ %3192, %3146 ], [ %3192, %3253 ], [ %3424, %3389 ]
  %3440 = phi float [ %3193, %3146 ], [ %3193, %3253 ], [ %3426, %3389 ]
  %3441 = phi float [ %3194, %3146 ], [ %3194, %3253 ], [ %3428, %3389 ]
  %3442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3443 = extractvalue %dx.types.CBufRet.i32 %3442, 0
  %3444 = icmp eq i32 %3443, 0
  br i1 %3444, label %3879, label %3445

; <label>:3445                                    ; preds = %3435
  %3446 = fptoui float %58 to i32
  %3447 = fptoui float %59 to i32
  %3448 = lshr i32 %3446, 4
  %3449 = lshr i32 %3447, 4
  %3450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3451 = extractvalue %dx.types.CBufRet.i32 %3450, 0
  %3452 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3449, i32 %3451, i32 %3448)  ; UMad(a,b,c)
  %3453 = add nsw i32 %3443, -1
  %3454 = call i32 @dx.op.binary.i32(i32 37, i32 %3453, i32 0)  ; IMax(a,b)
  %3455 = call float @dx.op.binary.f32(i32 35, float %53, float 0.000000e+00)  ; FMax(a,b)
  %3456 = fptoui float %3455 to i32
  %3457 = lshr i32 %3456, 5
  %3458 = call i32 @dx.op.binary.i32(i32 40, i32 %3457, i32 8191)  ; UMin(a,b)
  %3459 = shl i32 %3458, 2
  %3460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.i32 %3460, 0
  %3462 = lshr i32 %3461, 16
  %3463 = and i32 %3461, 65535
  %3464 = lshr i32 %3461, 21
  %3465 = lshr i32 %3463, 5
  %3466 = call i32 @dx.op.binary.i32(i32 40, i32 %3465, i32 %3454)  ; UMin(a,b)
  %3467 = icmp ugt i32 %3464, %3466
  br i1 %3467, label %3879, label %3468

; <label>:3468                                    ; preds = %3445
  br label %3469

; <label>:3469                                    ; preds = %3869, %3468
  %3470 = phi i32 [ %3876, %3869 ], [ %3464, %3468 ]
  %3471 = phi float [ %3870, %3869 ], [ %3436, %3468 ]
  %3472 = phi float [ %3871, %3869 ], [ %3437, %3468 ]
  %3473 = phi float [ %3872, %3869 ], [ %3438, %3468 ]
  %3474 = phi float [ %3873, %3869 ], [ %3439, %3468 ]
  %3475 = phi float [ %3874, %3869 ], [ %3440, %3468 ]
  %3476 = phi float [ %3875, %3869 ], [ %3441, %3468 ]
  %3477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.i32 %3477, 0
  %3479 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3452, i32 %3478, i32 %3470)  ; UMad(a,b,c)
  %3480 = shl i32 %3479, 2
  %3481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3480, i32 undef)  ; BufferLoad(srv,index,wot)
  %3482 = extractvalue %dx.types.ResRet.i32 %3481, 0
  %3483 = shl i32 %3470, 5
  %3484 = sub nsw i32 %3462, %3483
  %3485 = call i32 @dx.op.binary.i32(i32 37, i32 %3484, i32 0)  ; IMax(a,b)
  %3486 = call i32 @dx.op.binary.i32(i32 38, i32 %3485, i32 31)  ; IMin(a,b)
  %3487 = sub nsw i32 1, %3462
  %3488 = add nsw i32 %3487, %3463
  %3489 = call i32 @dx.op.binary.i32(i32 37, i32 %3488, i32 0)  ; IMax(a,b)
  %3490 = call i32 @dx.op.binary.i32(i32 38, i32 %3489, i32 32)  ; IMin(a,b)
  %3491 = and i32 %3490, 31
  %3492 = shl i32 -1, %3491
  %3493 = xor i32 %3492, -1
  %3494 = and i32 %3486, 31
  %3495 = shl i32 %3493, %3494
  %3496 = icmp eq i32 %3490, 32
  %3497 = select i1 %3496, i32 -1, i32 %3495
  %3498 = and i32 %3497, %3482
  %3499 = icmp eq i32 %3498, 0
  br i1 %3499, label %3869, label %3500

; <label>:3500                                    ; preds = %3469
  br label %3501

; <label>:3501                                    ; preds = %3581, %3500
  %3502 = phi i32 [ %3513, %3581 ], [ %3498, %3500 ]
  %3503 = phi float [ %3582, %3581 ], [ %3471, %3500 ]
  %3504 = phi float [ %3583, %3581 ], [ %3472, %3500 ]
  %3505 = phi float [ %3584, %3581 ], [ %3473, %3500 ]
  %3506 = phi float [ %3585, %3581 ], [ %3474, %3500 ]
  %3507 = phi float [ %3586, %3581 ], [ %3475, %3500 ]
  %3508 = phi float [ %3587, %3581 ], [ %3476, %3500 ]
  %3509 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3502)  ; FirstbitLo(value)
  %3510 = add i32 %3509, %3483
  %3511 = and i32 %3509, 31
  %3512 = shl i32 1, %3511
  %3513 = xor i32 %3512, %3502
  %3514 = mul i32 %3510, 112
  %3515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3514, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.f32 %3515, 0
  %3517 = extractvalue %dx.types.ResRet.f32 %3515, 1
  %3518 = extractvalue %dx.types.ResRet.f32 %3515, 2
  %3519 = or i32 %3514, 12
  %3520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3519, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.f32 %3520, 0
  %3522 = add i32 %3514, 44
  %3523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3522, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.f32 %3523, 0
  %3525 = add i32 %3514, 48
  %3526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.f32 %3526, 0
  %3528 = extractvalue %dx.types.ResRet.f32 %3526, 1
  %3529 = extractvalue %dx.types.ResRet.f32 %3526, 2
  %3530 = add i32 %3514, 80
  %3531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.f32 %3531, 1
  %3533 = extractvalue %dx.types.ResRet.f32 %3531, 2
  %3534 = call float @dx.op.dot3.f32(i32 55, float %3516, float %3517, float %3518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3535 = select i1 %176, float %3532, float %3516
  %3536 = select i1 %176, float %3534, float %3517
  %3537 = select i1 %176, float %3533, float %3518
  %3538 = fsub fast float %3527, %105
  %3539 = fsub fast float %3528, %106
  %3540 = fsub fast float %3529, %107
  %3541 = call float @dx.op.dot3.f32(i32 55, float %3538, float %3539, float %3540, float %3538, float %3539, float %3540)  ; Dot3(ax,ay,az,bx,by,bz)
  %3542 = call float @dx.op.unary.f32(i32 24, float %3541)  ; Sqrt(value)
  %3543 = fdiv fast float 1.000000e+00, %3542
  %3544 = fmul fast float %3543, %3538
  %3545 = fmul fast float %3543, %3539
  %3546 = fmul fast float %3543, %3540
  %3547 = fadd fast float %3542, %3521
  %3548 = fdiv fast float 1.000000e+00, %3547
  %3549 = fmul float %3524, %3548
  %3550 = fmul float %3549, %3549
  %3551 = call float @dx.op.unary.f32(i32 7, float %3550)  ; Saturate(value)
  %3552 = and i32 %3512, %3498
  %3553 = icmp eq i32 %3552, 0
  br i1 %3553, label %3576, label %3554, !dx.controlflow.hints !81

; <label>:3554                                    ; preds = %3501
  %3555 = lshr i32 %3446, 5
  %3556 = lshr i32 %3447, 5
  %3557 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %3555, i32 %3556, i32 %3510, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3558 = extractvalue %dx.types.ResRet.i32 %3557, 0
  %3559 = and i32 %3558, 3
  %3560 = icmp eq i32 %3559, 0
  %3561 = select i1 %3560, float 1.000000e+00, float 0.000000e+00
  %3562 = icmp eq i32 %3559, 3
  br i1 %3562, label %3563, label %3576

; <label>:3563                                    ; preds = %3554
  %3564 = lshr i32 %3558, 10
  %3565 = and i32 %3564, 8160
  %3566 = and i32 %3447, 31
  %3567 = or i32 %3565, %3566
  %3568 = lshr i32 %3558, 1
  %3569 = and i32 %3568, 16352
  %3570 = and i32 %3446, 31
  %3571 = or i32 %3569, %3570
  %3572 = lshr i32 %3558, 23
  %3573 = and i32 %3572, 255
  %3574 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %3571, i32 %3567, i32 %3573, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3575 = extractvalue %dx.types.ResRet.f32 %3574, 0
  br label %3576

; <label>:3576                                    ; preds = %3563, %3554, %3501
  %3577 = phi float [ %3575, %3563 ], [ %3561, %3554 ], [ 0.000000e+00, %3501 ]
  %3578 = call float @dx.op.binary.f32(i32 36, float %3577, float %3577)  ; FMin(a,b)
  %3579 = call float @dx.op.binary.f32(i32 36, float %3577, float %3578)  ; FMin(a,b)
  %3580 = fcmp fast ogt float %3579, 0.000000e+00
  br i1 %3580, label %3589, label %3581, !dx.controlflow.hints !82

; <label>:3581                                    ; preds = %3825, %3576
  %3582 = phi float [ %3503, %3576 ], [ %3865, %3825 ]
  %3583 = phi float [ %3504, %3576 ], [ %3866, %3825 ]
  %3584 = phi float [ %3505, %3576 ], [ %3867, %3825 ]
  %3585 = phi float [ %3506, %3576 ], [ %3859, %3825 ]
  %3586 = phi float [ %3507, %3576 ], [ %3860, %3825 ]
  %3587 = phi float [ %3508, %3576 ], [ %3861, %3825 ]
  %3588 = icmp eq i32 %3502, %3512
  br i1 %3588, label %3868, label %3501

; <label>:3589                                    ; preds = %3576
  %3590 = fmul fast float %3577, %3535
  %3591 = fmul fast float %3577, %3536
  %3592 = fmul fast float %3577, %3537
  %3593 = fsub fast float %3529, %1628
  %3594 = fcmp fast ogt float %3593, 0.000000e+00
  %3595 = fsub fast float %107, %1628
  %3596 = fcmp fast ogt float %3595, 0.000000e+00
  %3597 = xor i1 %3596, %3594
  %3598 = fsub fast float %1628, %3529
  %3599 = fmul fast float %3598, 2.000000e+00
  %3600 = fadd fast float %3599, %3529
  %3601 = select i1 %3597, float %3529, float %3600
  %3602 = fsub fast float %3601, %107
  %3603 = call float @dx.op.dot3.f32(i32 55, float %3538, float %3539, float %3602, float %3538, float %3539, float %3602)  ; Dot3(ax,ay,az,bx,by,bz)
  %3604 = call float @dx.op.unary.f32(i32 25, float %3603)  ; Rsqrt(value)
  %3605 = fmul fast float %3604, %3538
  %3606 = fmul fast float %3604, %3539
  %3607 = fmul fast float %3604, %3602
  %3608 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1636)  ; Dot3(ax,ay,az,bx,by,bz)
  %3609 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3605, float %3606, float %3607)  ; Dot3(ax,ay,az,bx,by,bz)
  %3610 = fdiv fast float 1.000000e+00, %3609
  %3611 = fmul fast float %3610, %3608
  %3612 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3595, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3613 = fcmp fast ogt float %3612, 0.000000e+00
  %3614 = fcmp fast olt float %3612, 0.000000e+00
  %3615 = zext i1 %3613 to i32
  %3616 = zext i1 %3614 to i32
  %3617 = sub nsw i32 %3615, %3616
  %3618 = sitofp i32 %3617 to float
  %3619 = fsub fast float %3601, %1628
  %3620 = call float @dx.op.dot3.f32(i32 55, float %3538, float %3539, float %3619, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3621 = fcmp fast ogt float %3620, 0.000000e+00
  %3622 = fcmp fast olt float %3620, 0.000000e+00
  %3623 = zext i1 %3621 to i32
  %3624 = zext i1 %3622 to i32
  %3625 = sub nsw i32 %3623, %3624
  %3626 = sitofp i32 %3625 to float
  %3627 = fcmp fast une float %3618, %3626
  br i1 %3627, label %3628, label %3638

; <label>:3628                                    ; preds = %3589
  %3629 = fmul fast float %3611, %3607
  %3630 = fmul fast float %3611, %3606
  %3631 = fmul fast float %3611, %3605
  %3632 = fmul fast float %3631, %3631
  %3633 = fmul fast float %3630, %3630
  %3634 = fadd fast float %3632, %3633
  %3635 = fmul fast float %3629, %3629
  %3636 = fadd fast float %3634, %3635
  %3637 = call float @dx.op.unary.f32(i32 24, float %3636)  ; Sqrt(value)
  br label %3650

; <label>:3638                                    ; preds = %3589
  %3639 = icmp slt i32 %3617, 0
  br i1 %3639, label %3640, label %3650

; <label>:3640                                    ; preds = %3638
  %3641 = fsub fast float %105, %3527
  %3642 = fsub fast float %106, %3528
  %3643 = fsub fast float %107, %3601
  %3644 = fmul fast float %3641, %3641
  %3645 = fmul fast float %3642, %3642
  %3646 = fadd fast float %3644, %3645
  %3647 = fmul fast float %3643, %3643
  %3648 = fadd fast float %3646, %3647
  %3649 = call float @dx.op.unary.f32(i32 24, float %3648)  ; Sqrt(value)
  br label %3650

; <label>:3650                                    ; preds = %3640, %3638, %3628
  %3651 = phi float [ %3637, %3628 ], [ %3649, %3640 ], [ 0.000000e+00, %3638 ]
  %3652 = and i1 %3596, %3594
  %3653 = fsub fast float -0.000000e+00, %3651
  %3654 = select i1 %3652, float -0.000000e+00, float %3653
  %3655 = fmul fast float %1629, 0x3FF7154760000000
  %3656 = fmul fast float %3655, %3654
  %3657 = fmul fast float %1630, 0x3FF7154760000000
  %3658 = fmul fast float %3657, %3654
  %3659 = fmul fast float %1631, 0x3FF7154760000000
  %3660 = fmul fast float %3659, %3654
  %3661 = call float @dx.op.unary.f32(i32 21, float %3656)  ; Exp(value)
  %3662 = call float @dx.op.unary.f32(i32 21, float %3658)  ; Exp(value)
  %3663 = call float @dx.op.unary.f32(i32 21, float %3660)  ; Exp(value)
  %3664 = call float @dx.op.unary.f32(i32 7, float %3661)  ; Saturate(value)
  %3665 = call float @dx.op.unary.f32(i32 7, float %3662)  ; Saturate(value)
  %3666 = call float @dx.op.unary.f32(i32 7, float %3663)  ; Saturate(value)
  %3667 = fmul fast float %3590, %3664
  %3668 = fmul fast float %3591, %3665
  %3669 = fmul fast float %3592, %3666
  %3670 = fsub fast float %3544, %1828
  %3671 = fsub fast float %3545, %1827
  %3672 = fsub fast float %3546, %1826
  %3673 = call float @dx.op.dot3.f32(i32 55, float %3670, float %3671, float %3672, float %3670, float %3671, float %3672)  ; Dot3(ax,ay,az,bx,by,bz)
  %3674 = call float @dx.op.unary.f32(i32 25, float %3673)  ; Rsqrt(value)
  %3675 = fmul fast float %3674, %3670
  %3676 = fmul fast float %3674, %3671
  %3677 = fmul fast float %3674, %3672
  %3678 = call float @dx.op.dot3.f32(i32 55, float %3544, float %3545, float %3546, float %1835, float %1836, float %1837)  ; Dot3(ax,ay,az,bx,by,bz)
  %3679 = call float @dx.op.dot3.f32(i32 55, float %1825, float %1824, float %1823, float %3675, float %3676, float %3677)  ; Dot3(ax,ay,az,bx,by,bz)
  %3680 = call float @dx.op.unary.f32(i32 7, float %3678)  ; Saturate(value)
  %3681 = fmul fast float %3680, %3551
  %3682 = fmul fast float %3680, %3680
  %3683 = fmul fast float %3682, %3204
  %3684 = call float @dx.op.unary.f32(i32 7, float %3683)  ; Saturate(value)
  %3685 = fmul fast float %3681, %3684
  %3686 = bitcast float %3541 to i32
  %3687 = ashr i32 %3686, 1
  %3688 = sub nsw i32 1597463007, %3687
  %3689 = bitcast i32 %3688 to float
  %3690 = fmul fast float %3689, %3538
  %3691 = fmul fast float %3689, %3539
  %3692 = fmul fast float %3689, %3540
  %3693 = fsub fast float %3690, %1828
  %3694 = fsub fast float %3691, %1827
  %3695 = fsub fast float %3692, %1826
  %3696 = call float @dx.op.dot3.f32(i32 55, float %3693, float %3694, float %3695, float %3693, float %3694, float %3695)  ; Dot3(ax,ay,az,bx,by,bz)
  %3697 = call float @dx.op.unary.f32(i32 25, float %3696)  ; Rsqrt(value)
  %3698 = fmul fast float %3693, %3697
  %3699 = fmul fast float %3694, %3697
  %3700 = fmul fast float %3695, %3697
  %3701 = call float @dx.op.dot3.f32(i32 55, float %1835, float %1836, float %1837, float %3698, float %3699, float %3700)  ; Dot3(ax,ay,az,bx,by,bz)
  %3702 = fmul fast float %3701, %3701
  %3703 = call float @dx.op.unary.f32(i32 6, float %3678)  ; FAbs(value)
  %3704 = fsub fast float 1.000000e+00, %1838
  %3705 = call float @dx.op.binary.f32(i32 35, float %3704, float 0x3F847AE140000000)  ; FMax(a,b)
  %3706 = fmul fast float %3705, %3705
  %3707 = fmul fast float %3706, %3706
  %3708 = fsub fast float 1.000000e+00, %3707
  %3709 = fmul fast float %1842, %1842
  %3710 = fmul fast float %3709, %3708
  %3711 = fadd fast float %3710, %3707
  %3712 = bitcast float %3711 to i32
  %3713 = ashr i32 %3712, 1
  %3714 = add nsw i32 %3713, 532487669
  %3715 = bitcast i32 %3714 to float
  %3716 = fadd fast float %3715, %1842
  %3717 = fmul fast float %3707, %3702
  %3718 = fsub fast float 1.000000e+00, %3702
  %3719 = fadd fast float %3718, %3717
  %3720 = fmul fast float %3703, %3703
  %3721 = fmul fast float %3720, %3708
  %3722 = fadd fast float %3721, %3707
  %3723 = bitcast float %3722 to i32
  %3724 = ashr i32 %3723, 1
  %3725 = add nsw i32 %3724, 532487669
  %3726 = bitcast i32 %3725 to float
  %3727 = fadd fast float %3726, %3703
  %3728 = fmul fast float %3719, %3719
  %3729 = fmul fast float %3728, %3716
  %3730 = fmul fast float %3729, %3727
  %3731 = fdiv fast float 1.000000e+00, %3730
  %3732 = bitcast float %3707 to i32
  %3733 = sitofp i32 %3732 to float
  %3734 = fmul fast float %3733, 0x3FE7F73180000000
  %3735 = fadd fast float %3734, 0x41AFE27C40000000
  %3736 = fptosi float %3735 to i32
  %3737 = bitcast i32 %3736 to float
  %3738 = fmul fast float %3524, 0x3FD80E9D60000000
  %3739 = fmul fast float %3738, %3689
  %3740 = fadd fast float %3737, %3739
  %3741 = bitcast float %3740 to i32
  %3742 = sub nsw i32 2129859010, %3741
  %3743 = bitcast i32 %3742 to float
  %3744 = fmul fast float %3707, %3731
  %3745 = fmul fast float %3744, %3737
  %3746 = fmul fast float %3745, %3743
  %3747 = call float @dx.op.unary.f32(i32 6, float %3679)  ; FAbs(value)
  %3748 = fsub fast float 1.000000e+00, %3747
  %3749 = bitcast float %3748 to i32
  %3750 = sitofp i32 %3749 to float
  %3751 = fmul fast float %3750, 5.000000e+00
  %3752 = fadd fast float %3751, 0xC1EFBF8940000000
  %3753 = fptosi float %3752 to i32
  %3754 = bitcast i32 %3753 to float
  %3755 = fsub fast float 1.000000e+00, %1829
  %3756 = fsub fast float 1.000000e+00, %1830
  %3757 = fsub fast float 1.000000e+00, %1840
  %3758 = fmul fast float %3754, %3755
  %3759 = fmul fast float %3754, %3756
  %3760 = fmul fast float %3754, %3757
  %3761 = fadd fast float %3758, %1829
  %3762 = fadd fast float %3759, %1830
  %3763 = fadd fast float %3760, %1840
  br i1 %3119, label %3764, label %3787

; <label>:3764                                    ; preds = %3650
  %3765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1206, float %3747, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3766 = extractvalue %dx.types.ResRet.f32 %3765, 0
  %3767 = extractvalue %dx.types.ResRet.f32 %3765, 1
  %3768 = extractvalue %dx.types.ResRet.f32 %3765, 2
  %3769 = fadd fast float %3766, -5.000000e-01
  %3770 = fadd fast float %3767, -5.000000e-01
  %3771 = fadd fast float %3768, -5.000000e-01
  %3772 = fmul fast float %1829, 4.000000e+00
  %3773 = fmul fast float %3772, %3755
  %3774 = fmul fast float %3773, %3769
  %3775 = fmul fast float %1830, 4.000000e+00
  %3776 = fmul fast float %3775, %3756
  %3777 = fmul fast float %3776, %3770
  %3778 = fmul fast float %1840, 4.000000e+00
  %3779 = fmul fast float %3778, %3757
  %3780 = fmul fast float %3779, %3771
  %3781 = fadd fast float %3774, %3761
  %3782 = fadd fast float %3777, %3762
  %3783 = fadd fast float %3780, %3763
  %3784 = call float @dx.op.unary.f32(i32 7, float %3781)  ; Saturate(value)
  %3785 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  %3786 = call float @dx.op.unary.f32(i32 7, float %3783)  ; Saturate(value)
  br label %3787

; <label>:3787                                    ; preds = %3764, %3650
  %3788 = phi float [ %3784, %3764 ], [ %3761, %3650 ]
  %3789 = phi float [ %3785, %3764 ], [ %3762, %3650 ]
  %3790 = phi float [ %3786, %3764 ], [ %3763, %3650 ]
  %3791 = fmul fast float %3678, 9.843750e-01
  %3792 = fadd fast float %3791, 7.812500e-03
  %3793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3792, float %3109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3794 = extractvalue %dx.types.ResRet.f32 %3793, 2
  %3795 = extractvalue %dx.types.ResRet.f32 %3793, 3
  %3796 = fmul fast float %3794, %1829
  %3797 = fmul fast float %3794, %1830
  %3798 = fmul fast float %3794, %1840
  %3799 = fadd fast float %3796, %3795
  %3800 = fadd fast float %3797, %3795
  %3801 = fadd fast float %3798, %3795
  br i1 %3119, label %3802, label %3825

; <label>:3802                                    ; preds = %3787
  %3803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1206, float %3678, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3804 = extractvalue %dx.types.ResRet.f32 %3803, 0
  %3805 = extractvalue %dx.types.ResRet.f32 %3803, 1
  %3806 = extractvalue %dx.types.ResRet.f32 %3803, 2
  %3807 = fadd fast float %3804, -5.000000e-01
  %3808 = fadd fast float %3805, -5.000000e-01
  %3809 = fadd fast float %3806, -5.000000e-01
  %3810 = fmul fast float %1829, 4.000000e+00
  %3811 = fmul fast float %3810, %3755
  %3812 = fmul fast float %3811, %3807
  %3813 = fmul fast float %1830, 4.000000e+00
  %3814 = fmul fast float %3813, %3756
  %3815 = fmul fast float %3814, %3808
  %3816 = fmul fast float %1840, 4.000000e+00
  %3817 = fmul fast float %3816, %3757
  %3818 = fmul fast float %3817, %3809
  %3819 = fadd fast float %3812, %3799
  %3820 = fadd fast float %3815, %3800
  %3821 = fadd fast float %3818, %3801
  %3822 = call float @dx.op.unary.f32(i32 7, float %3819)  ; Saturate(value)
  %3823 = call float @dx.op.unary.f32(i32 7, float %3820)  ; Saturate(value)
  %3824 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  br label %3825

; <label>:3825                                    ; preds = %3802, %3787
  %3826 = phi float [ %3822, %3802 ], [ %3799, %3787 ]
  %3827 = phi float [ %3823, %3802 ], [ %3800, %3787 ]
  %3828 = phi float [ %3824, %3802 ], [ %3801, %3787 ]
  %3829 = call float @dx.op.binary.f32(i32 35, float %3827, float %3828)  ; FMax(a,b)
  %3830 = call float @dx.op.binary.f32(i32 35, float %3826, float %3829)  ; FMax(a,b)
  %3831 = fsub fast float 1.000000e+00, %3830
  %3832 = fmul fast float %3788, %3746
  %3833 = fmul fast float %3789, %3746
  %3834 = fmul fast float %3790, %3746
  %3835 = fsub fast float 1.000000e+00, %3679
  %3836 = bitcast float %3835 to i32
  %3837 = sitofp i32 %3836 to float
  %3838 = fmul fast float %3837, 5.000000e+00
  %3839 = fadd fast float %3838, 0xC1EFBF8940000000
  %3840 = fptosi float %3839 to i32
  %3841 = bitcast i32 %3840 to float
  %3842 = fmul fast float %3841, %1205
  %3843 = fmul fast float %3831, %3842
  %3844 = fmul fast float %3843, %3169
  %3845 = fmul fast float %3843, %3170
  %3846 = fmul fast float %3843, %3171
  %3847 = fadd fast float %3844, %3832
  %3848 = fadd fast float %3845, %3833
  %3849 = fadd fast float %3846, %3834
  %3850 = fmul fast float %3667, %1226
  %3851 = fmul fast float %3850, %3685
  %3852 = fmul fast float %3851, %3831
  %3853 = fmul fast float %3668, %1226
  %3854 = fmul fast float %3853, %3685
  %3855 = fmul fast float %3854, %3831
  %3856 = fmul fast float %3669, %1226
  %3857 = fmul fast float %3856, %3685
  %3858 = fmul fast float %3857, %3831
  %3859 = fadd fast float %3852, %3506
  %3860 = fadd fast float %3855, %3507
  %3861 = fadd fast float %3858, %3508
  %3862 = fmul fast float %3851, %3847
  %3863 = fmul fast float %3854, %3848
  %3864 = fmul fast float %3857, %3849
  %3865 = fadd fast float %3862, %3503
  %3866 = fadd fast float %3863, %3504
  %3867 = fadd fast float %3864, %3505
  br label %3581

; <label>:3868                                    ; preds = %3581
  br label %3869

; <label>:3869                                    ; preds = %3868, %3469
  %3870 = phi float [ %3471, %3469 ], [ %3582, %3868 ]
  %3871 = phi float [ %3472, %3469 ], [ %3583, %3868 ]
  %3872 = phi float [ %3473, %3469 ], [ %3584, %3868 ]
  %3873 = phi float [ %3474, %3469 ], [ %3585, %3868 ]
  %3874 = phi float [ %3475, %3469 ], [ %3586, %3868 ]
  %3875 = phi float [ %3476, %3469 ], [ %3587, %3868 ]
  %3876 = add i32 %3470, 1
  %3877 = icmp ugt i32 %3876, %3466
  br i1 %3877, label %3878, label %3469

; <label>:3878                                    ; preds = %3869
  br label %3879

; <label>:3879                                    ; preds = %3878, %3445, %3435
  %3880 = phi float [ %3436, %3435 ], [ %3436, %3445 ], [ %3870, %3878 ]
  %3881 = phi float [ %3437, %3435 ], [ %3437, %3445 ], [ %3871, %3878 ]
  %3882 = phi float [ %3438, %3435 ], [ %3438, %3445 ], [ %3872, %3878 ]
  %3883 = phi float [ %3439, %3435 ], [ %3439, %3445 ], [ %3873, %3878 ]
  %3884 = phi float [ %3440, %3435 ], [ %3440, %3445 ], [ %3874, %3878 ]
  %3885 = phi float [ %3441, %3435 ], [ %3441, %3445 ], [ %3875, %3878 ]
  %3886 = call float @dx.op.unary.f32(i32 24, float %1832)  ; Sqrt(value)
  %3887 = call float @dx.op.unary.f32(i32 24, float %1833)  ; Sqrt(value)
  %3888 = call float @dx.op.unary.f32(i32 24, float %1834)  ; Sqrt(value)
  %3889 = fmul fast float %3886, %3883
  %3890 = fmul fast float %3887, %3884
  %3891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3892 = extractvalue %dx.types.CBufRet.f32 %3891, 0
  br i1 %176, label %3893, label %3922

; <label>:3893                                    ; preds = %3879
  %3894 = fadd fast float %3885, %1203
  %3895 = fmul fast float %3894, %1204
  %3896 = fsub fast float 1.000000e+00, %1204
  %3897 = call float @dx.op.unary.f32(i32 7, float %3896)  ; Saturate(value)
  %3898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.f32 %3898, 3
  %3900 = fmul fast float %3899, %3897
  %3901 = fadd fast float %3900, %3895
  %3902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.f32 %3902, 0
  %3904 = fmul fast float %3903, %3175
  %3905 = fsub fast float %3901, %3904
  %3906 = fadd fast float %3890, %3889
  %3907 = fmul fast float %3892, %3906
  %3908 = extractvalue %dx.types.CBufRet.f32 %3898, 1
  %3909 = fsub fast float %3905, %3908
  %3910 = extractvalue %dx.types.CBufRet.f32 %3898, 2
  %3911 = fmul fast float %3909, %3910
  %3912 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3914 = extractvalue %dx.types.CBufRet.f32 %3913, 0
  %3915 = fsub fast float %3912, %3914
  %3916 = fmul fast float %3915, 1.000000e+01
  %3917 = call float @dx.op.unary.f32(i32 7, float %3916)  ; Saturate(value)
  %3918 = fadd fast float %1202, -1.000000e+00
  %3919 = fmul fast float %3917, %3918
  %3920 = fadd fast float %3919, 1.000000e+00
  %3921 = fmul fast float %3920, %3912
  br label %3938

; <label>:3922                                    ; preds = %3879
  %3923 = fmul fast float %3888, %3885
  %3924 = fmul fast float %3892, %3889
  %3925 = fmul fast float %3892, %3890
  %3926 = fmul fast float %3923, %3892
  %3927 = add i32 %38, 132
  %3928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3929 = extractvalue %dx.types.ResRet.i32 %3928, 0
  %3930 = and i32 %3929, 32
  %3931 = icmp eq i32 %3930, 0
  br i1 %3931, label %3938, label %3932

; <label>:3932                                    ; preds = %3922
  %3933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3934 = extractvalue %dx.types.CBufRet.f32 %3933, 0
  %3935 = fmul fast float %3934, 0x3FE99999A0000000
  %3936 = fadd fast float %3934, %3924
  %3937 = fadd fast float %3935, %3926
  br label %3938

; <label>:3938                                    ; preds = %3932, %3922, %3893
  %3939 = phi float [ %3907, %3893 ], [ %3936, %3932 ], [ %3924, %3922 ]
  %3940 = phi float [ %3921, %3893 ], [ %3925, %3932 ], [ %3925, %3922 ]
  %3941 = phi float [ %3920, %3893 ], [ %3937, %3932 ], [ %3926, %3922 ]
  %3942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3943 = extractvalue %dx.types.CBufRet.f32 %3942, 0
  %3944 = fmul fast float %3943, %3881
  %3945 = fmul fast float %3943, %3882
  %3946 = fadd fast float %3881, %3880
  %3947 = select i1 %176, float %3946, float %3880
  %3948 = fmul float %3947, %3943
  %3949 = select i1 %176, float 0.000000e+00, float %3944
  %3950 = select i1 %176, float 0.000000e+00, float %3945
  %3951 = fmul fast float %3939, %3886
  %3952 = fmul fast float %3940, %3887
  %3953 = fmul fast float %3941, %3888
  %3954 = fadd fast float %3948, %3951
  %3955 = fadd fast float %3949, %3952
  %3956 = fadd fast float %3950, %3953
  %3957 = select i1 %176, float %3940, float %3955
  %3958 = select i1 %176, float %3941, float %3956
  %3959 = call float @dx.op.binary.f32(i32 36, float %3954, float 3.225500e+04)  ; FMin(a,b)
  %3960 = call float @dx.op.binary.f32(i32 36, float %3957, float 3.225500e+04)  ; FMin(a,b)
  %3961 = call float @dx.op.binary.f32(i32 36, float %3958, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3959)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3960)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3961)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!51}
!dx.entryPoints = !{!52}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !43, !46}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !17}
!26 = !{i32 18, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!43 = !{!44, !45}
!44 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!45 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!46 = !{!47, !48, !49, !50}
!47 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!48 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!49 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!50 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!51 = !{[28 x i32] [i32 26, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0]}
!52 = !{void ()* @ps_main, !"ps_main", !53, !4, !72}
!53 = !{!54, !70, null}
!54 = !{!55, !58, !59, !61, !63, !64, !66, !68, !69}
!55 = !{i32 0, !"SV_Position", i8 9, i8 3, !56, i8 4, i32 1, i8 4, i32 0, i8 0, !57}
!56 = !{i32 0}
!57 = !{i32 3, i32 11}
!58 = !{i32 1, !"COLOR", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!59 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !56, i8 2, i32 1, i8 2, i32 2, i8 0, !60}
!60 = !{i32 3, i32 3}
!61 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !56, i8 2, i32 1, i8 3, i32 3, i8 0, !62}
!62 = !{i32 3, i32 7}
!63 = !{i32 4, !"NORMAL", i8 9, i8 0, !56, i8 2, i32 1, i8 3, i32 4, i8 0, !62}
!64 = !{i32 5, !"TANGENT", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 5, i8 0, !65}
!65 = !{i32 3, i32 15}
!66 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !56, i8 1, i32 1, i8 1, i32 6, i8 0, !67}
!67 = !{i32 3, i32 1}
!68 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !56, i8 1, i32 1, i8 1, i32 6, i8 1, null}
!69 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !56, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!70 = !{!71}
!71 = !{i32 0, !"SV_Target", i8 9, i8 16, !56, i8 0, i32 1, i8 4, i32 0, i8 0, !65}
!72 = !{i32 0, i64 24}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}

