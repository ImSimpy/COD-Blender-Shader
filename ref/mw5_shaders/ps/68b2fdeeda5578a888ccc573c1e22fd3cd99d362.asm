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
; shader hash: eac2c5a95605c0efb9daa1894ccfdb1b
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
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32     2darray      T1      t0,space6unbounded
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          2d      T3     t33,space2     1
;                                   texture     f32     2darray      T4     t16,space2     1
;                                   texture     f32          3d      T5     t15,space2     1
;                                   texture     f32          2d      T6     t14,space2     1
;                                   texture     f32          2d      T7     t13,space2     1
;                                   texture     u32          2d      T8     t17,space2     1
;                                   texture     f32          3d      T9     t18,space2     1
;                                   texture     f32     2darray     T10     t23,space2     1
;                                   texture     f32     2darray     T11     t24,space2     1
;                                   texture     f32     2darray     T12     t25,space2     1
;                                   texture    byte         r/o     T13     t66,space1     1
;                                   texture     u32     2darray     T14     t11,space2     1
;                                   texture     f32     2darray     T15     t10,space2     1
;                                   texture     f32          2d     T16     t69,space2     1
;                                   texture     f32          2d     T17     t58,space2     1
;                                   texture     f32          2d     T18     t59,space2     1
;                                   texture     f32          2d     T19     t60,space2     1
;                                   texture    byte         r/o     T20     t45,space1     1
;                                   texture    byte         r/o     T21     t46,space1     1
;                                   texture    byte         r/o     T22     t47,space1     1
;                                   texture    byte         r/o     T23     t48,space1     1
;                                   texture     f32          2d     T24     t57,space2     1
;                                   texture    byte         r/o     T25     t69,space1     1
;                                   texture    byte         r/o     T26     t10,space1     1
;                                   texture    byte         r/o     T27     t68,space1     1
;                                   texture     f32          2d     T28      t0,space2     1
;                                   texture    byte         r/o     T29     t11,space1     1
;                                   texture    byte         r/o     T30     t13,space1     1
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = fmul fast float %54, %48
  %56 = fmul fast float %54, %49
  %57 = fmul fast float %41, %38
  %58 = fmul fast float %42, %37
  %59 = fsub fast float %57, %58
  %60 = fmul fast float %42, %36
  %61 = fmul fast float %40, %38
  %62 = fsub fast float %60, %61
  %63 = fmul fast float %40, %37
  %64 = fmul fast float %41, %36
  %65 = fsub fast float %63, %64
  %66 = fmul fast float %59, %39
  %67 = fmul fast float %62, %39
  %68 = fmul fast float %65, %39
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 3
  %72 = fmul fast float %70, 2.000000e+00
  %73 = fmul fast float %72, %55
  %74 = fmul fast float %71, 2.000000e+00
  %75 = fmul fast float %74, %56
  %76 = fsub fast float 1.000000e+00, %73
  %77 = fsub fast float 1.000000e+00, %75
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = extractvalue %dx.types.CBufRet.f32 %78, 1
  %81 = extractvalue %dx.types.CBufRet.f32 %78, 2
  %82 = fmul fast float %76, %79
  %83 = fmul fast float %76, %80
  %84 = fmul fast float %76, %81
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %88 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %89 = fmul fast float %77, %86
  %90 = fmul fast float %77, %87
  %91 = fmul fast float %77, %88
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = fadd fast float %89, %93
  %97 = fadd fast float %96, %82
  %98 = fadd fast float %90, %94
  %99 = fadd fast float %98, %83
  %100 = fadd fast float %91, %95
  %101 = fadd fast float %100, %84
  %102 = fmul fast float %97, %50
  %103 = fmul fast float %99, %50
  %104 = fmul fast float %101, %50
  %105 = fadd fast float %45, 5.000000e-01
  %106 = fptoui float %105 to i32
  %107 = shl i32 %106, 3
  %108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %107, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.i32 %108, 0
  %110 = or i32 %107, 4
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %110, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = and i32 %109, 8191
  %114 = lshr i32 %109, 13
  %115 = and i32 %114, 8191
  %116 = lshr i32 %109, 26
  %117 = and i32 %112, 65535
  %118 = lshr i32 %112, 16
  %119 = uitofp i32 %117 to float
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %122 = uitofp i32 %118 to float
  %123 = uitofp i32 %113 to float
  %124 = fmul fast float %121, %123
  %125 = uitofp i32 %115 to float
  %126 = fmul fast float %121, %125
  %127 = fmul fast float %121, %43
  %128 = fmul fast float %127, %119
  %129 = fmul fast float %121, %44
  %130 = fmul fast float %129, %122
  %131 = fadd fast float %128, %124
  %132 = fadd fast float %126, %130
  %133 = uitofp i32 %116 to float
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %135, %55
  %138 = fmul fast float %136, %56
  %139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = and i32 %140, 114688
  %142 = icmp ne i32 %141, 0
  %143 = select i1 %142, float %137, float 0.000000e+00
  %144 = select i1 %142, float %138, float 0.000000e+00
  %145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %32, float %143, float %144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = fmul fast float %146, 2.550000e+02
  %148 = fptoui float %147 to i32
  %149 = select i1 %142, i32 %148, i32 0
  %150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.i32 %150, 3
  %152 = and i32 %151, 3
  %153 = icmp ne i32 %152, 0
  %154 = and i32 %151, 4
  %155 = icmp ne i32 %154, 0
  %156 = and i1 %153, %155
  br i1 %156, label %157, label %166

; <label>:157                                     ; preds = %0
  %158 = fmul fast float %71, %56
  %159 = fmul fast float %70, %55
  %160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %31, float %159, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %161 = extractvalue %dx.types.ResRet.f32 %160, 0
  %162 = fsub fast float 1.000000e+00, %161
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = fcmp fast olt float %162, %164
  br label %174

; <label>:166                                     ; preds = %0
  %167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.i32 %167, 3
  %169 = and i32 %168, 3
  %170 = icmp ne i32 %169, 0
  %171 = and i32 %168, 4
  %172 = icmp eq i32 %171, 0
  %173 = and i1 %170, %172
  br label %174

; <label>:174                                     ; preds = %166, %157
  %175 = phi i1 [ %165, %157 ], [ %173, %166 ]
  %176 = add i32 %35, 60
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = shl i32 %178, 4
  %180 = and i32 %179, 32752
  %181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %180)  ; LegacyF16ToF32(value)
  %182 = lshr i32 %178, 7
  %183 = and i32 %182, 32752
  %184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %183)  ; LegacyF16ToF32(value)
  %185 = lshr i32 %178, 22
  %186 = shl nuw nsw i32 %185, 5
  %187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %186)  ; LegacyF16ToF32(value)
  %188 = add i32 %35, 72
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %190, 255
  %192 = uitofp i32 %191 to float
  %193 = fmul fast float %192, 0x3F70101020000000
  %194 = lshr i32 %190, 8
  %195 = and i32 %194, 255
  %196 = uitofp i32 %195 to float
  %197 = fmul fast float %196, 0x3F70101020000000
  %198 = lshr i32 %190, 16
  %199 = and i32 %198, 255
  %200 = uitofp i32 %199 to float
  %201 = fmul fast float %200, 0x3F70101020000000
  %202 = add i32 %35, 36
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = add i32 %35, 96
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = add i32 %35, 24
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = add i32 %35, 28
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = or i32 %213, %210
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %676, label %216

; <label>:216                                     ; preds = %174
  %217 = lshr i32 %207, 16
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = fmul fast float %218, 0x3F50624DE0000000
  %220 = and i32 %207, 65535
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = fmul fast float %221, 0x3F50624DE0000000
  %223 = lshr i32 %204, 16
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = and i32 %204, 65535
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = add i32 %35, 92
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = lshr i32 %229, 16
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = fmul fast float %231, 0x3F50624DE0000000
  %233 = add i32 %35, 40
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = lshr i32 %235, 16
  %237 = and i32 %236, 255
  %238 = lshr i32 %235, 24
  %239 = add i32 %35, 100
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = and i32 %241, 65535
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %241, 16
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = add i32 %35, 32
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = lshr i32 %248, 22
  %250 = shl nuw nsw i32 %249, 5
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = shl i32 %248, 4
  %253 = and i32 %252, 32752
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = lshr i32 %248, 7
  %256 = and i32 %255, 32752
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 3
  %260 = fmul fast float %259, 1.000000e+03
  %261 = fmul fast float %222, %260
  %262 = call float @dx.op.unary.f32(i32 22, float %261)  ; Frc(value)
  %263 = fadd fast float %262, %226
  %264 = fmul fast float %219, %260
  %265 = call float @dx.op.unary.f32(i32 22, float %264)  ; Frc(value)
  %266 = fadd fast float %265, %224
  %267 = fmul fast float %232, %260
  %268 = call float @dx.op.unary.f32(i32 22, float %267)  ; Frc(value)
  %269 = fmul fast float %268, 0x401921FB60000000
  %270 = fadd fast float %269, %251
  %271 = call float @dx.op.unary.f32(i32 13, float %270)  ; Sin(value)
  %272 = call float @dx.op.unary.f32(i32 12, float %270)  ; Cos(value)
  %273 = fsub fast float -0.000000e+00, %271
  %274 = fadd fast float %46, -5.000000e-01
  %275 = fadd fast float %47, -5.000000e-01
  %276 = fmul fast float %243, %274
  %277 = fmul fast float %245, %275
  %278 = fadd fast float %276, 5.000000e-01
  %279 = fadd fast float %277, 5.000000e-01
  %280 = fmul fast float %254, %278
  %281 = fmul fast float %257, %279
  %282 = fmul fast float %272, %280
  %283 = call float @dx.op.tertiary.f32(i32 46, float %273, float %281, float %282)  ; FMad(a,b,c)
  %284 = fmul fast float %271, %280
  %285 = call float @dx.op.tertiary.f32(i32 46, float %272, float %281, float %284)  ; FMad(a,b,c)
  %286 = fadd fast float %263, %283
  %287 = fadd fast float %266, %285
  %288 = icmp ugt i32 %237, 1
  %289 = icmp ugt i32 %235, 33554431
  %290 = or i1 %289, %288
  br i1 %290, label %291, label %316

; <label>:291                                     ; preds = %216
  %292 = add i32 %35, 84
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = lshr i32 %294, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = fmul fast float %259, %296
  %298 = call float @dx.op.unary.f32(i32 22, float %297)  ; Frc(value)
  %299 = mul nuw nsw i32 %237, %238
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %298, %300
  %302 = call float @dx.op.unary.f32(i32 27, float %301)  ; Round_ni(value)
  %303 = fptoui float %302 to i32
  %304 = urem i32 %303, %237
  %305 = udiv i32 %303, %238
  %306 = call float @dx.op.unary.f32(i32 22, float %286)  ; Frc(value)
  %307 = call float @dx.op.unary.f32(i32 22, float %287)  ; Frc(value)
  %308 = uitofp i32 %304 to float
  %309 = uitofp i32 %305 to float
  %310 = fadd fast float %306, %308
  %311 = fadd fast float %307, %309
  %312 = uitofp i32 %237 to float
  %313 = uitofp i32 %238 to float
  %314 = fdiv fast float %310, %312
  %315 = fdiv fast float %311, %313
  br label %316

; <label>:316                                     ; preds = %291, %216
  %317 = phi float [ %314, %291 ], [ %286, %216 ]
  %318 = phi float [ %315, %291 ], [ %287, %216 ]
  %319 = and i32 %210, 16
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %517, label %321

; <label>:321                                     ; preds = %316
  %322 = add i32 %35, 136
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = add i32 %324, 0
  %326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %325, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %327 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %326, %dx.types.Handle %51, float %317, float %318, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = extractvalue %dx.types.ResRet.f32 %327, 1
  %330 = extractvalue %dx.types.ResRet.f32 %327, 2
  %331 = extractvalue %dx.types.ResRet.f32 %327, 3
  %332 = and i32 %235, 255
  %333 = uitofp i32 %332 to float
  %334 = lshr i32 %235, 8
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %331, %333
  %338 = fadd fast float %337, %336
  %339 = fmul fast float %338, 0x3F70101000000000
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 512
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %352, label %344

; <label>:344                                     ; preds = %321
  %345 = add i32 %35, 156
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = add i32 %347, 0
  %349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %348, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %350 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %349, %dx.types.Handle %52, float %317, float %318, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %351 = extractvalue %dx.types.ResRet.f32 %350, 0
  br label %352

; <label>:352                                     ; preds = %344, %321
  %353 = phi float [ %351, %344 ], [ 1.000000e+00, %321 ]
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 33554432
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %464, label %358

; <label>:358                                     ; preds = %352
  %359 = add i32 %35, 80
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = add i32 %35, 84
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 65535
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = lshr i32 %372, 24
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F70101020000000
  %376 = and i32 %372, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = lshr i32 %372, 8
  %380 = and i32 %379, 255
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F70101020000000
  %383 = lshr i32 %372, 16
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = add i32 %35, 76
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = lshr i32 %389, 24
  %391 = uitofp i32 %390 to float
  %392 = fmul fast float %391, 0x3F70101020000000
  %393 = and i32 %389, 255
  %394 = uitofp i32 %393 to float
  %395 = fmul fast float %394, 0x3F70101020000000
  %396 = lshr i32 %389, 8
  %397 = and i32 %396, 255
  %398 = uitofp i32 %397 to float
  %399 = fmul fast float %398, 0x3F70101020000000
  %400 = lshr i32 %389, 16
  %401 = and i32 %400, 255
  %402 = uitofp i32 %401 to float
  %403 = fmul fast float %402, 0x3F70101020000000
  %404 = bitcast float %328 to i32
  %405 = ashr i32 %404, 1
  %406 = sub nsw i32 1597463174, %405
  %407 = bitcast i32 %406 to float
  %408 = fmul fast float %328, 5.000000e-01
  %409 = fmul fast float %407, %407
  %410 = fmul fast float %409, %408
  %411 = fsub fast float 1.500000e+00, %410
  %412 = fmul fast float %407, %328
  %413 = fmul fast float %412, %411
  %414 = bitcast float %329 to i32
  %415 = ashr i32 %414, 1
  %416 = sub nsw i32 1597463174, %415
  %417 = bitcast i32 %416 to float
  %418 = fmul fast float %329, 5.000000e-01
  %419 = fmul fast float %417, %417
  %420 = fmul fast float %419, %418
  %421 = fsub fast float 1.500000e+00, %420
  %422 = fmul fast float %417, %329
  %423 = fmul fast float %422, %421
  %424 = bitcast float %330 to i32
  %425 = ashr i32 %424, 1
  %426 = sub nsw i32 1597463174, %425
  %427 = bitcast i32 %426 to float
  %428 = fmul fast float %330, 5.000000e-01
  %429 = fmul fast float %427, %427
  %430 = fmul fast float %429, %428
  %431 = fsub fast float 1.500000e+00, %430
  %432 = fmul fast float %427, %330
  %433 = fmul fast float %432, %431
  %434 = fsub fast float %413, %395
  %435 = fsub fast float %423, %399
  %436 = fsub fast float %433, %403
  %437 = fmul fast float %434, %363
  %438 = fmul fast float %435, %365
  %439 = fmul fast float %436, %370
  %440 = fadd fast float %437, %378
  %441 = fadd fast float %438, %382
  %442 = fadd fast float %439, %386
  %443 = call float @dx.op.unary.f32(i32 7, float %440)  ; Saturate(value)
  %444 = call float @dx.op.unary.f32(i32 7, float %441)  ; Saturate(value)
  %445 = call float @dx.op.unary.f32(i32 7, float %442)  ; Saturate(value)
  %446 = fmul fast float %443, %443
  %447 = fmul fast float %444, %444
  %448 = fmul fast float %445, %445
  %449 = fsub fast float %446, %328
  %450 = fsub fast float %447, %329
  %451 = fsub fast float %448, %330
  %452 = fmul fast float %449, %353
  %453 = fmul fast float %450, %353
  %454 = fmul fast float %451, %353
  %455 = fadd fast float %452, %328
  %456 = fadd fast float %453, %329
  %457 = fadd fast float %454, %330
  %458 = fadd fast float %375, %339
  %459 = fsub fast float %458, %392
  %460 = call float @dx.op.unary.f32(i32 7, float %459)  ; Saturate(value)
  %461 = fsub fast float %460, %339
  %462 = fmul fast float %461, %353
  %463 = fadd fast float %462, %339
  br label %517

; <label>:464                                     ; preds = %352
  %465 = and i32 %355, 134217728
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %501, label %467

; <label>:467                                     ; preds = %464
  %468 = call float @dx.op.unary.f32(i32 24, float %193)  ; Sqrt(value)
  %469 = call float @dx.op.unary.f32(i32 24, float %197)  ; Sqrt(value)
  %470 = call float @dx.op.unary.f32(i32 24, float %201)  ; Sqrt(value)
  %471 = fadd fast float %468, -5.000000e-01
  %472 = fadd fast float %469, -5.000000e-01
  %473 = fadd fast float %470, -5.000000e-01
  %474 = fmul fast float %471, %353
  %475 = fmul fast float %472, %353
  %476 = fmul fast float %473, %353
  %477 = fadd fast float %474, 5.000000e-01
  %478 = fadd fast float %475, 5.000000e-01
  %479 = fadd fast float %476, 5.000000e-01
  %480 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %481 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %482 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %483 = fmul fast float %477, 2.000000e+00
  %484 = fsub fast float 1.000000e+00, %483
  %485 = fmul fast float %484, %480
  %486 = fadd fast float %485, %483
  %487 = fmul fast float %486, %480
  %488 = fmul fast float %478, 2.000000e+00
  %489 = fsub fast float 1.000000e+00, %488
  %490 = fmul fast float %489, %481
  %491 = fadd fast float %490, %488
  %492 = fmul fast float %491, %481
  %493 = fmul fast float %479, 2.000000e+00
  %494 = fsub fast float 1.000000e+00, %493
  %495 = fmul fast float %494, %482
  %496 = fadd fast float %495, %493
  %497 = fmul fast float %496, %482
  %498 = fmul fast float %487, %487
  %499 = fmul fast float %492, %492
  %500 = fmul fast float %497, %497
  br label %517

; <label>:501                                     ; preds = %464
  %502 = fmul fast float %193, %193
  %503 = fmul fast float %197, %197
  %504 = fmul fast float %201, %201
  %505 = fadd fast float %502, -1.000000e+00
  %506 = fadd fast float %503, -1.000000e+00
  %507 = fadd fast float %504, -1.000000e+00
  %508 = fmul fast float %353, %505
  %509 = fmul fast float %353, %506
  %510 = fmul fast float %353, %507
  %511 = fadd fast float %508, 1.000000e+00
  %512 = fadd fast float %509, 1.000000e+00
  %513 = fadd fast float %510, 1.000000e+00
  %514 = fmul fast float %511, %328
  %515 = fmul fast float %512, %329
  %516 = fmul fast float %513, %330
  br label %517

; <label>:517                                     ; preds = %501, %467, %358, %316
  %518 = phi float [ %463, %358 ], [ %339, %467 ], [ %339, %501 ], [ 0x3FA23C0BE0000000, %316 ]
  %519 = phi float [ %455, %358 ], [ %498, %467 ], [ %514, %501 ], [ 1.000000e+00, %316 ]
  %520 = phi float [ %456, %358 ], [ %499, %467 ], [ %515, %501 ], [ 1.000000e+00, %316 ]
  %521 = phi float [ %457, %358 ], [ %500, %467 ], [ %516, %501 ], [ 1.000000e+00, %316 ]
  %522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.i32 %522, 1
  %524 = and i32 %523, 1
  %525 = icmp ne i32 %524, 0
  %526 = add i32 %35, 132
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = and i32 %528, 32
  %530 = icmp ne i32 %529, 0
  %531 = and i1 %525, %530
  %532 = select i1 %531, float 1.000000e+00, float %519
  %533 = select i1 %531, float 0x3FD3333340000000, float %520
  %534 = select i1 %531, float 0x3FD3333340000000, float %521
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = and i32 %536, 32
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %611, label %539

; <label>:539                                     ; preds = %517
  %540 = add i32 %35, 44
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = add i32 %35, 140
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = add i32 %545, 0
  %547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %546, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %548 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %547, %dx.types.Handle %51, float %317, float %318, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = extractvalue %dx.types.ResRet.f32 %548, 1
  %551 = extractvalue %dx.types.ResRet.f32 %548, 2
  %552 = extractvalue %dx.types.ResRet.f32 %548, 3
  %553 = and i32 %542, 255
  %554 = uitofp i32 %553 to float
  %555 = lshr i32 %542, 8
  %556 = and i32 %555, 255
  %557 = uitofp i32 %556 to float
  %558 = lshr i32 %542, 16
  %559 = and i32 %558, 255
  %560 = uitofp i32 %559 to float
  %561 = fmul fast float %560, 0x3F70101000000000
  %562 = fmul fast float %549, %554
  %563 = fadd fast float %562, %557
  %564 = fmul fast float %563, 0x3F70101000000000
  %565 = fadd fast float %550, -5.000000e-01
  %566 = fadd fast float %552, -5.000000e-01
  %567 = fmul fast float %565, %561
  %568 = fmul fast float %566, %561
  %569 = fadd fast float %567, 5.000000e-01
  %570 = fadd fast float %568, 5.000000e-01
  %571 = fmul fast float %569, 2.000000e+00
  %572 = fadd fast float %571, -1.000000e+00
  %573 = fmul fast float %570, 2.000000e+00
  %574 = fadd fast float %573, -1.000000e+00
  %575 = fadd fast float %572, %574
  %576 = fmul fast float %575, 5.000000e-01
  %577 = fsub fast float %572, %574
  %578 = fmul fast float %577, 5.000000e-01
  %579 = call float @dx.op.unary.f32(i32 6, float %576)  ; FAbs(value)
  %580 = fsub fast float 1.000000e+00, %579
  %581 = call float @dx.op.unary.f32(i32 6, float %578)  ; FAbs(value)
  %582 = fsub fast float %580, %581
  %583 = call float @dx.op.dot3.f32(i32 55, float %576, float %578, float %582, float %576, float %578, float %582)  ; Dot3(ax,ay,az,bx,by,bz)
  %584 = call float @dx.op.unary.f32(i32 25, float %583)  ; Rsqrt(value)
  %585 = fmul fast float %576, %584
  %586 = fmul fast float %578, %584
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 67108864
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %607, label %591

; <label>:591                                     ; preds = %539
  %592 = add i32 %35, 88
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = and i32 %594, 65535
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = and i32 %598, 65535
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = lshr i32 %594, 16
  %602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %601)  ; LegacyF16ToF32(value)
  %603 = fsub fast float %564, %602
  %604 = fmul fast float %603, %596
  %605 = fadd fast float %604, %600
  %606 = call float @dx.op.unary.f32(i32 7, float %605)  ; Saturate(value)
  br label %607

; <label>:607                                     ; preds = %591, %539
  %608 = phi float [ %606, %591 ], [ %564, %539 ]
  %609 = call float @dx.op.dot2.f32(i32 54, float %585, float %586, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %610 = call float @dx.op.dot2.f32(i32 54, float %585, float %586, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %611

; <label>:611                                     ; preds = %607, %517
  %612 = phi float [ %608, %607 ], [ 0x3FD6666660000000, %517 ]
  %613 = phi float [ %609, %607 ], [ 0.000000e+00, %517 ]
  %614 = phi float [ %610, %607 ], [ 0.000000e+00, %517 ]
  %615 = phi float [ %551, %607 ], [ 1.000000e+00, %517 ]
  %616 = add i32 %35, 64
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = lshr i32 %618, 22
  %620 = shl nuw nsw i32 %619, 5
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = and i32 %623, 64
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %659, label %626

; <label>:626                                     ; preds = %611
  %627 = add i32 %35, 144
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = add i32 %629, 0
  %631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = and i32 %633, 131072
  %635 = icmp eq i32 %634, 0
  %636 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %631, %dx.types.Handle %51, float %317, float %318, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %637 = extractvalue %dx.types.ResRet.f32 %636, 0
  %638 = extractvalue %dx.types.ResRet.f32 %636, 1
  %639 = extractvalue %dx.types.ResRet.f32 %636, 2
  %640 = fmul fast float %637, %181
  %641 = fmul fast float %638, %184
  %642 = fmul fast float %639, %187
  br i1 %635, label %649, label %643

; <label>:643                                     ; preds = %626
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 0
  %646 = fmul fast float %645, %640
  %647 = fmul fast float %645, %641
  %648 = fmul fast float %645, %642
  br label %649

; <label>:649                                     ; preds = %643, %626
  %650 = phi float [ %646, %643 ], [ %640, %626 ]
  %651 = phi float [ %647, %643 ], [ %641, %626 ]
  %652 = phi float [ %648, %643 ], [ %642, %626 ]
  %653 = fmul fast float %650, %621
  %654 = select i1 %175, float %653, float %650
  %655 = call float @dx.op.dot3.f32(i32 55, float %654, float %651, float %652, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %656 = select i1 %175, float 0.000000e+00, float %650
  %657 = select i1 %175, float %655, float %651
  %658 = select i1 %175, float 0.000000e+00, float %652
  br label %659

; <label>:659                                     ; preds = %649, %611
  %660 = phi float [ %656, %649 ], [ 0.000000e+00, %611 ]
  %661 = phi float [ %657, %649 ], [ 0.000000e+00, %611 ]
  %662 = phi float [ %658, %649 ], [ 0.000000e+00, %611 ]
  %663 = add i32 %35, 48
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = and i32 %665, 255
  %667 = uitofp i32 %666 to float
  %668 = lshr i32 %665, 8
  %669 = and i32 %668, 255
  %670 = uitofp i32 %669 to float
  %671 = call float @dx.op.dot3.f32(i32 55, float %532, float %533, float %534, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %672 = fmul fast float %670, %671
  %673 = fadd fast float %672, %667
  %674 = fmul fast float %673, 0x3F70101020000000
  %675 = call float @dx.op.unary.f32(i32 7, float %674)  ; Saturate(value)
  br label %676

; <label>:676                                     ; preds = %659, %174
  %677 = phi float [ 0.000000e+00, %174 ], [ %613, %659 ]
  %678 = phi float [ 0.000000e+00, %174 ], [ %614, %659 ]
  %679 = phi float [ 0.000000e+00, %174 ], [ %660, %659 ]
  %680 = phi float [ 0.000000e+00, %174 ], [ %661, %659 ]
  %681 = phi float [ 0.000000e+00, %174 ], [ %662, %659 ]
  %682 = phi float [ 0.000000e+00, %174 ], [ %532, %659 ]
  %683 = phi float [ 0.000000e+00, %174 ], [ %533, %659 ]
  %684 = phi float [ 0.000000e+00, %174 ], [ %534, %659 ]
  %685 = phi float [ 0.000000e+00, %174 ], [ %518, %659 ]
  %686 = phi float [ 0.000000e+00, %174 ], [ 1.000000e+00, %659 ]
  %687 = phi float [ 0.000000e+00, %174 ], [ %612, %659 ]
  %688 = phi float [ 0.000000e+00, %174 ], [ %615, %659 ]
  %689 = phi float [ 0.000000e+00, %174 ], [ %675, %659 ]
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 0
  %692 = call float @dx.op.dot2.f32(i32 54, float %677, float %678, float %677, float %678)  ; Dot2(ax,ay,bx,by)
  %693 = fmul fast float %692, 0x3FE3333340000000
  %694 = fsub fast float 1.000000e+00, %693
  %695 = call float @dx.op.dot3.f32(i32 55, float %677, float %678, float %694, float %677, float %678, float %694)  ; Dot3(ax,ay,az,bx,by,bz)
  %696 = call float @dx.op.unary.f32(i32 25, float %695)  ; Rsqrt(value)
  %697 = fmul fast float %696, %677
  %698 = fmul fast float %696, %678
  %699 = fmul fast float %694, %696
  %700 = fmul fast float %699, %40
  %701 = fmul fast float %699, %41
  %702 = fmul fast float %699, %42
  %703 = fmul fast float %697, %36
  %704 = fmul fast float %697, %37
  %705 = fmul fast float %697, %38
  %706 = fadd fast float %700, %703
  %707 = fadd fast float %701, %704
  %708 = fadd fast float %702, %705
  %709 = fmul fast float %698, %66
  %710 = fmul fast float %698, %67
  %711 = fmul fast float %698, %68
  %712 = fadd fast float %706, %709
  %713 = fadd fast float %707, %710
  %714 = fadd fast float %708, %711
  %715 = call float @dx.op.dot3.f32(i32 55, float %712, float %713, float %714, float %712, float %713, float %714)  ; Dot3(ax,ay,az,bx,by,bz)
  %716 = call float @dx.op.unary.f32(i32 25, float %715)  ; Rsqrt(value)
  %717 = fmul fast float %712, %716
  %718 = fmul fast float %713, %716
  %719 = fmul fast float %714, %716
  %720 = fadd fast float %685, 0xBFB99999A0000000
  %721 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  %722 = fmul fast float %721, 0x3FF1C71C80000000
  %723 = call float @dx.op.binary.f32(i32 36, float %685, float 0x3FB99999A0000000)  ; FMin(a,b)
  %724 = fsub fast float 1.000000e+00, %722
  %725 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %726 = fmul fast float %725, %682
  %727 = fmul fast float %725, %683
  %728 = fmul fast float %725, %684
  %729 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  %730 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %731 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %732 = fmul fast float %722, %682
  %733 = fmul fast float %722, %683
  %734 = fmul fast float %722, %684
  %735 = fadd fast float %732, %723
  %736 = fadd fast float %733, %723
  %737 = fadd fast float %734, %723
  %738 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  %739 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %740 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  %741 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  %742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.i32 %742, 3
  %744 = and i32 %743, 8
  %745 = icmp ne i32 %744, 0
  %746 = call float @dx.op.binary.f32(i32 35, float %729, float %682)  ; FMax(a,b)
  %747 = call float @dx.op.binary.f32(i32 35, float %730, float %682)  ; FMax(a,b)
  %748 = call float @dx.op.binary.f32(i32 35, float %731, float %682)  ; FMax(a,b)
  %749 = call float @dx.op.dot3.f32(i32 55, float %729, float %730, float %731, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %750 = select i1 %175, float %682, float %729
  %751 = select i1 %175, float %749, float %730
  %752 = select i1 %175, float 1.000000e+00, float %731
  %753 = select i1 %745, float %746, float %750
  %754 = select i1 %745, float %747, float %751
  %755 = select i1 %745, float %748, float %752
  %756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.f32 %756, 0
  %758 = extractvalue %dx.types.CBufRet.f32 %756, 1
  %759 = extractvalue %dx.types.CBufRet.f32 %756, 2
  %760 = fadd fast float %757, %102
  %761 = fadd fast float %758, %103
  %762 = fadd fast float %759, %104
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 0
  %765 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %766 = fsub fast float %760, %764
  %767 = fsub fast float %761, %765
  %768 = fmul fast float %766, %766
  %769 = fmul fast float %767, %767
  %770 = fadd fast float %768, %769
  %771 = call float @dx.op.unary.f32(i32 24, float %770)  ; Sqrt(value)
  %772 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %773 = fcmp fast olt float %771, %772
  br i1 %773, label %774, label %841

; <label>:774                                     ; preds = %676
  %775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.f32 %775, 0
  %777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %778 = extractvalue %dx.types.CBufRet.f32 %777, 0
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 0
  %781 = extractvalue %dx.types.CBufRet.f32 %775, 1
  %782 = extractvalue %dx.types.CBufRet.f32 %777, 1
  %783 = extractvalue %dx.types.CBufRet.f32 %779, 1
  %784 = extractvalue %dx.types.CBufRet.f32 %775, 3
  %785 = extractvalue %dx.types.CBufRet.f32 %777, 3
  %786 = extractvalue %dx.types.CBufRet.f32 %779, 3
  %787 = fadd fast float %784, %760
  %788 = fadd fast float %785, %761
  %789 = fadd fast float %786, %762
  %790 = fmul fast float %787, %776
  %791 = call float @dx.op.tertiary.f32(i32 46, float %788, float %778, float %790)  ; FMad(a,b,c)
  %792 = call float @dx.op.tertiary.f32(i32 46, float %789, float %780, float %791)  ; FMad(a,b,c)
  %793 = fmul fast float %787, %781
  %794 = call float @dx.op.tertiary.f32(i32 46, float %788, float %782, float %793)  ; FMad(a,b,c)
  %795 = call float @dx.op.tertiary.f32(i32 46, float %789, float %783, float %794)  ; FMad(a,b,c)
  %796 = fsub fast float %792, %784
  %797 = fsub fast float %795, %785
  %798 = fsub fast float %796, %764
  %799 = fadd fast float %798, %772
  %800 = fsub fast float %797, %765
  %801 = fadd fast float %800, %772
  %802 = extractvalue %dx.types.CBufRet.f32 %763, 3
  %803 = fmul fast float %799, %802
  %804 = fmul fast float %801, %802
  %805 = call float @dx.op.unary.f32(i32 7, float %803)  ; Saturate(value)
  %806 = call float @dx.op.unary.f32(i32 7, float %804)  ; Saturate(value)
  %807 = fsub fast float 1.000000e+00, %805
  %808 = fsub fast float 1.000000e+00, %806
  %809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %31, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %810 = extractvalue %dx.types.ResRet.f32 %809, 0
  %811 = fcmp fast ugt float %810, 0.000000e+00
  br i1 %811, label %812, label %1115

; <label>:812                                     ; preds = %774
  %813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.f32 %813, 2
  %815 = fmul fast float %814, %810
  %816 = extractvalue %dx.types.CBufRet.f32 %813, 3
  %817 = fadd fast float %816, %815
  %818 = extractvalue %dx.types.CBufRet.f32 %779, 2
  %819 = fadd fast float %817, %786
  %820 = fmul fast float %792, %780
  %821 = call float @dx.op.tertiary.f32(i32 46, float %795, float %783, float %820)  ; FMad(a,b,c)
  %822 = call float @dx.op.tertiary.f32(i32 46, float %819, float %818, float %821)  ; FMad(a,b,c)
  %823 = fsub fast float %822, %786
  %824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.f32 %824, 2
  %826 = fsub fast float %823, %825
  %827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %31, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 0
  %829 = extractvalue %dx.types.ResRet.f32 %827, 1
  %830 = extractvalue %dx.types.ResRet.f32 %827, 2
  %831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %31, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = extractvalue %dx.types.ResRet.f32 %831, 1
  %834 = extractvalue %dx.types.ResRet.f32 %831, 2
  %835 = fadd fast float %832, %828
  %836 = fmul fast float %835, 0x3F847AE140000000
  %837 = fadd fast float %833, %829
  %838 = fmul fast float %837, 0x3F847AE140000000
  %839 = fadd fast float %834, %830
  %840 = fmul fast float %839, 0x3F847AE140000000
  br label %1115

; <label>:841                                     ; preds = %676
  %842 = and i32 %149, 1
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %1115, label %844

; <label>:844                                     ; preds = %841
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 0
  %849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %850 = extractvalue %dx.types.CBufRet.f32 %849, 0
  %851 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %852 = extractvalue %dx.types.CBufRet.f32 %847, 1
  %853 = extractvalue %dx.types.CBufRet.f32 %849, 1
  %854 = extractvalue %dx.types.CBufRet.f32 %845, 3
  %855 = extractvalue %dx.types.CBufRet.f32 %847, 3
  %856 = extractvalue %dx.types.CBufRet.f32 %849, 3
  %857 = fadd fast float %854, %760
  %858 = fadd fast float %855, %761
  %859 = fadd fast float %856, %762
  %860 = fmul fast float %857, %846
  %861 = call float @dx.op.tertiary.f32(i32 46, float %858, float %848, float %860)  ; FMad(a,b,c)
  %862 = call float @dx.op.tertiary.f32(i32 46, float %859, float %850, float %861)  ; FMad(a,b,c)
  %863 = fmul fast float %857, %851
  %864 = call float @dx.op.tertiary.f32(i32 46, float %858, float %852, float %863)  ; FMad(a,b,c)
  %865 = call float @dx.op.tertiary.f32(i32 46, float %859, float %853, float %864)  ; FMad(a,b,c)
  %866 = fsub fast float %862, %854
  %867 = fsub fast float %865, %855
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 0
  %870 = extractvalue %dx.types.CBufRet.f32 %868, 1
  %871 = extractvalue %dx.types.CBufRet.f32 %868, 2
  %872 = extractvalue %dx.types.CBufRet.f32 %868, 3
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 3
  %875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.i32 %875, 0
  %877 = extractvalue %dx.types.CBufRet.i32 %875, 1
  %878 = udiv i32 %877, %876
  %879 = fsub fast float %866, %869
  %880 = fsub fast float %867, %870
  %881 = call float @dx.op.binary.f32(i32 35, float %879, float 0.000000e+00)  ; FMax(a,b)
  %882 = call float @dx.op.binary.f32(i32 35, float %880, float 0.000000e+00)  ; FMax(a,b)
  %883 = call float @dx.op.binary.f32(i32 36, float %881, float %871)  ; FMin(a,b)
  %884 = call float @dx.op.binary.f32(i32 36, float %882, float %872)  ; FMin(a,b)
  %885 = add i32 %876, -1
  %886 = add i32 %878, -1
  %887 = fmul fast float %883, %874
  %888 = fmul fast float %884, %874
  %889 = fptoui float %887 to i32
  %890 = fptoui float %888 to i32
  %891 = call i32 @dx.op.binary.i32(i32 40, i32 %889, i32 %885)  ; UMin(a,b)
  %892 = call i32 @dx.op.binary.i32(i32 40, i32 %890, i32 %886)  ; UMin(a,b)
  %893 = mul i32 %892, %876
  %894 = add i32 %893, %891
  %895 = shl i32 %894, 2
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = icmp eq i32 %897, -1
  br i1 %898, label %1115, label %899

; <label>:899                                     ; preds = %844
  %900 = mul i32 %897, 148
  %901 = add i32 %900, 4
  %902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.f32 %902, 0
  %904 = add i32 %900, 8
  %905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.f32 %905, 0
  %907 = add i32 %900, 36
  %908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 0
  %910 = add i32 %900, 60
  %911 = add i32 %900, 92
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = add i32 %900, 116
  %915 = fsub fast float %866, %903
  %916 = fsub fast float %867, %906
  %917 = fmul fast float %874, %915
  %918 = fmul fast float %874, %916
  %919 = call float @dx.op.unary.f32(i32 7, float %917)  ; Saturate(value)
  %920 = call float @dx.op.unary.f32(i32 7, float %918)  ; Saturate(value)
  %921 = fsub fast float 1.000000e+00, %920
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 2
  %924 = call float @dx.op.unary.f32(i32 83, float %919)  ; DerivCoarseX(value)
  %925 = call float @dx.op.unary.f32(i32 83, float %921)  ; DerivCoarseX(value)
  %926 = call float @dx.op.unary.f32(i32 84, float %919)  ; DerivCoarseY(value)
  %927 = call float @dx.op.unary.f32(i32 84, float %921)  ; DerivCoarseY(value)
  %928 = fmul fast float %924, %923
  %929 = fmul fast float %925, %923
  %930 = fmul fast float %926, %923
  %931 = fmul fast float %927, %923
  %932 = call float @dx.op.dot2.f32(i32 54, float %930, float %931, float %930, float %931)  ; Dot2(ax,ay,bx,by)
  %933 = call float @dx.op.dot2.f32(i32 54, float %928, float %929, float %928, float %929)  ; Dot2(ax,ay,bx,by)
  %934 = call float @dx.op.binary.f32(i32 35, float %933, float %932)  ; FMax(a,b)
  %935 = call float @dx.op.unary.f32(i32 23, float %934)  ; Log(value)
  %936 = fmul fast float %935, 5.000000e-01
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 1
  %939 = fadd fast float %938, %936
  %940 = call float @dx.op.binary.f32(i32 35, float %939, float 0.000000e+00)  ; FMax(a,b)
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 3
  %943 = fadd fast float %942, %940
  %944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.f32 %944, 3
  %946 = fadd fast float %943, %945
  %947 = add i32 %913, 0
  %948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %947, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %949 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %948, i32 0)  ; GetDimensions(handle,mipLevel)
  %950 = extractvalue %dx.types.Dimensions %949, 0
  %951 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %950)  ; FirstbitLo(value)
  %952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.i32 %952, 1
  %954 = sub nsw i32 %953, %951
  %955 = sitofp i32 %954 to float
  %956 = fsub fast float %946, %955
  %957 = call float @dx.op.binary.f32(i32 35, float %956, float 0.000000e+00)  ; FMax(a,b)
  %958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %948, %dx.types.Handle %30, float %919, float %921, float %909, float undef, i32 0, i32 0, i32 undef, float %957)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %959 = extractvalue %dx.types.ResRet.f32 %958, 0
  %960 = fcmp ule float %959, 0x3FE0101020000000
  %961 = extractvalue %dx.types.CBufRet.i32 %952, 0
  %962 = and i32 %961, 128
  %963 = icmp ne i32 %962, 0
  %964 = and i1 %960, %963
  br i1 %964, label %1115, label %965

; <label>:965                                     ; preds = %899
  %966 = add i32 %900, 20
  %967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.f32 %967, 0
  %969 = add i32 %900, 24
  %970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.f32 %970, 0
  %972 = add i32 %900, 40
  %973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.f32 %973, 0
  %975 = add i32 %900, 96
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 2
  %980 = fmul fast float %979, %919
  %981 = fmul fast float %979, %921
  %982 = extractvalue %dx.types.CBufRet.f32 %978, 3
  %983 = fadd fast float %980, %982
  %984 = fadd fast float %981, %982
  %985 = add i32 %977, 0
  %986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %985, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %987 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %986, i32 0)  ; GetDimensions(handle,mipLevel)
  %988 = extractvalue %dx.types.Dimensions %987, 0
  %989 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %988)  ; FirstbitLo(value)
  %990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.i32 %990, 1
  %992 = sub nsw i32 %991, %989
  %993 = sitofp i32 %992 to float
  %994 = fsub fast float %943, %993
  %995 = call float @dx.op.binary.f32(i32 35, float %994, float 0.000000e+00)  ; FMax(a,b)
  %996 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %986, %dx.types.Handle %30, float %983, float %984, float %974, float undef, i32 0, i32 0, i32 undef, float %995)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %997 = extractvalue %dx.types.ResRet.f32 %996, 0
  %998 = fmul fast float %997, %968
  %999 = fadd fast float %998, %971
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.CBufRet.f32 %1000, 2
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 3
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 3
  %1008 = extractvalue %dx.types.CBufRet.f32 %1000, 3
  %1009 = fadd fast float %1005, %866
  %1010 = fadd fast float %1007, %867
  %1011 = fadd fast float %999, %1008
  %1012 = fmul fast float %1009, %1001
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %1010, float %1002, float %1012)  ; FMad(a,b,c)
  %1014 = call float @dx.op.tertiary.f32(i32 46, float %1011, float %1003, float %1013)  ; FMad(a,b,c)
  %1015 = fsub fast float %1014, %1008
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 2
  %1018 = fsub fast float %1015, %1017
  %1019 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.i32 %1019, 0
  %1021 = call i32 @dx.op.binary.i32(i32 40, i32 %897, i32 %1020)  ; UMin(a,b)
  %1022 = mul i32 %1021, 36
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = add i32 %1022, 4
  %1026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.f32 %1026, 0
  %1028 = fmul fast float %1027, %919
  %1029 = fmul fast float %1027, %921
  %1030 = extractvalue %dx.types.CBufRet.f32 %1026, 1
  %1031 = fadd fast float %1028, %1030
  %1032 = fadd fast float %1029, %1030
  %1033 = icmp eq i32 %1024, 0
  br i1 %1033, label %1102, label %1034

; <label>:1034                                    ; preds = %965
  br label %1035

; <label>:1035                                    ; preds = %1092, %1034
  %1036 = phi float [ %1093, %1092 ], [ 0.000000e+00, %1034 ]
  %1037 = phi float [ %1094, %1092 ], [ 0.000000e+00, %1034 ]
  %1038 = phi float [ %1095, %1092 ], [ 0.000000e+00, %1034 ]
  %1039 = phi float [ %1096, %1092 ], [ 0.000000e+00, %1034 ]
  %1040 = phi float [ %1097, %1092 ], [ 0.000000e+00, %1034 ]
  %1041 = phi float [ %1098, %1092 ], [ 0.000000e+00, %1034 ]
  %1042 = phi i32 [ %1099, %1092 ], [ 0, %1034 ]
  %1043 = shl i32 %1042, 2
  %1044 = add i32 %910, %1043
  %1045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1047 = add i32 %914, %1043
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = add i32 %1049, 0
  %1051 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1050, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1052 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1051, i32 0)  ; GetDimensions(handle,mipLevel)
  %1053 = extractvalue %dx.types.Dimensions %1052, 0
  %1054 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1053)  ; FirstbitLo(value)
  %1055 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1056 = extractvalue %dx.types.CBufRet.i32 %1055, 1
  %1057 = sub nsw i32 %1056, %1054
  %1058 = sitofp i32 %1057 to float
  %1059 = fsub fast float %943, %1058
  %1060 = call float @dx.op.binary.f32(i32 35, float %1059, float 0.000000e+00)  ; FMax(a,b)
  %1061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1051, %dx.types.Handle %30, float %1031, float %1032, float %1046, float undef, i32 0, i32 0, i32 undef, float %1060)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = fcmp fast ogt float %1062, 0.000000e+00
  br i1 %1063, label %1064, label %1092

; <label>:1064                                    ; preds = %1035
  %1065 = add i32 %1025, %1043
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %1067, 32767
  %1069 = mul nuw nsw i32 %1068, 928
  %1070 = add nuw nsw i32 %1069, 48
  %1071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.ResRet.f32 %1071, 2
  %1075 = add nuw nsw i32 %1069, 60
  %1076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = fmul fast float %1072, %1062
  %1081 = fmul fast float %1073, %1062
  %1082 = fmul fast float %1074, %1062
  %1083 = fadd fast float %1080, %1036
  %1084 = fadd fast float %1081, %1037
  %1085 = fadd fast float %1082, %1038
  %1086 = fmul fast float %1077, %1062
  %1087 = fmul fast float %1078, %1062
  %1088 = fmul fast float %1079, %1062
  %1089 = fadd fast float %1086, %1039
  %1090 = fadd fast float %1087, %1040
  %1091 = fadd fast float %1088, %1041
  br label %1092

; <label>:1092                                    ; preds = %1064, %1035
  %1093 = phi float [ %1083, %1064 ], [ %1036, %1035 ]
  %1094 = phi float [ %1084, %1064 ], [ %1037, %1035 ]
  %1095 = phi float [ %1085, %1064 ], [ %1038, %1035 ]
  %1096 = phi float [ %1089, %1064 ], [ %1039, %1035 ]
  %1097 = phi float [ %1090, %1064 ], [ %1040, %1035 ]
  %1098 = phi float [ %1091, %1064 ], [ %1041, %1035 ]
  %1099 = add nuw i32 %1042, 1
  %1100 = icmp eq i32 %1099, %1024
  br i1 %1100, label %1101, label %1035

; <label>:1101                                    ; preds = %1092
  br label %1102

; <label>:1102                                    ; preds = %1101, %965
  %1103 = phi float [ 0.000000e+00, %965 ], [ %1093, %1101 ]
  %1104 = phi float [ 0.000000e+00, %965 ], [ %1094, %1101 ]
  %1105 = phi float [ 0.000000e+00, %965 ], [ %1095, %1101 ]
  %1106 = phi float [ 0.000000e+00, %965 ], [ %1096, %1101 ]
  %1107 = phi float [ 0.000000e+00, %965 ], [ %1097, %1101 ]
  %1108 = phi float [ 0.000000e+00, %965 ], [ %1098, %1101 ]
  %1109 = fadd fast float %1106, %1103
  %1110 = fmul fast float %1109, 0x3F847AE140000000
  %1111 = fadd fast float %1107, %1104
  %1112 = fmul fast float %1111, 0x3F847AE140000000
  %1113 = fadd fast float %1108, %1105
  %1114 = fmul fast float %1113, 0x3F847AE140000000
  br label %1115

; <label>:1115                                    ; preds = %1102, %899, %844, %841, %812, %774
  %1116 = phi float [ %826, %812 ], [ -1.310720e+05, %774 ], [ %1018, %1102 ], [ -1.310720e+05, %844 ], [ -1.310720e+05, %899 ], [ -1.310720e+05, %841 ]
  %1117 = phi float [ %836, %812 ], [ 0.000000e+00, %774 ], [ %1110, %1102 ], [ 0.000000e+00, %844 ], [ 0.000000e+00, %899 ], [ 0.000000e+00, %841 ]
  %1118 = phi float [ %838, %812 ], [ 0.000000e+00, %774 ], [ %1112, %1102 ], [ 0.000000e+00, %844 ], [ 0.000000e+00, %899 ], [ 0.000000e+00, %841 ]
  %1119 = phi float [ %840, %812 ], [ 0.000000e+00, %774 ], [ %1114, %1102 ], [ 0.000000e+00, %844 ], [ 0.000000e+00, %899 ], [ 0.000000e+00, %841 ]
  %1120 = phi i1 [ true, %812 ], [ false, %774 ], [ true, %1102 ], [ false, %844 ], [ false, %899 ], [ false, %841 ]
  %1121 = and i32 %149, 3
  %1122 = icmp eq i32 %1121, 1
  %1123 = select i1 %1122, float 1.000000e+00, float 0.000000e+00
  %1124 = fsub fast float %1116, %104
  %1125 = call float @dx.op.unary.f32(i32 7, float %1124)  ; Saturate(value)
  %1126 = select i1 %1120, float %1125, float 1.000000e+00
  %1127 = fmul fast float %1126, %1123
  %1128 = icmp eq i32 %1121, 3
  %1129 = select i1 %1128, float 1.000000e+00, float %1127
  %1130 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1129)  ; FMax(a,b)
  %1131 = call float @dx.op.unary.f32(i32 7, float %1130)  ; Saturate(value)
  %1132 = fcmp fast une float %1131, 0.000000e+00
  %1133 = call float @dx.op.dot3.f32(i32 55, float %102, float %103, float %104, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %1134 = call float @dx.op.unary.f32(i32 25, float %1133)  ; Rsqrt(value)
  br i1 %1132, label %1142, label %1135

; <label>:1135                                    ; preds = %1115
  %1136 = fmul fast float %1134, %102
  %1137 = fmul fast float %1134, %103
  %1138 = fmul fast float %1134, %104
  %1139 = fsub fast float -0.000000e+00, %1136
  %1140 = fsub fast float -0.000000e+00, %1137
  %1141 = fsub fast float -0.000000e+00, %1138
  br label %1310

; <label>:1142                                    ; preds = %1115
  %1143 = fmul fast float %102, %1134
  %1144 = fsub fast float -0.000000e+00, %1143
  %1145 = fmul fast float %103, %1134
  %1146 = fsub fast float -0.000000e+00, %1145
  %1147 = fmul fast float %104, %1134
  %1148 = fsub fast float -0.000000e+00, %1147
  %1149 = call float @dx.op.dot3.f32(i32 55, float %1144, float %1146, float %1148, float %40, float %41, float %42)  ; Dot3(ax,ay,az,bx,by,bz)
  %1150 = fmul fast float %1131, 2.500000e+00
  %1151 = call float @dx.op.unary.f32(i32 7, float %1150)  ; Saturate(value)
  %1152 = fmul fast float %1131, 0x4013FFFFE0000000
  %1153 = fadd fast float %1152, 0xBFFFFFFFE0000000
  %1154 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  %1155 = fmul fast float %1131, 0x4004000020000000
  %1156 = fadd fast float %1155, 0xBFF8000040000000
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  %1158 = call float @dx.op.unary.f32(i32 7, float %1151)  ; Saturate(value)
  %1159 = fmul fast float %720, 1.000000e+01
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1161 = fmul fast float %1160, 2.000000e+00
  %1162 = fsub fast float 3.000000e+00, %1161
  %1163 = fmul fast float %1160, %1160
  %1164 = fmul fast float %1163, %1162
  %1165 = fsub fast float 1.000000e+00, %1164
  %1166 = fsub fast float 0x3FE3333340000000, %741
  %1167 = fmul fast float %1166, 0x400AAAAAA0000000
  %1168 = call float @dx.op.unary.f32(i32 7, float %1167)  ; Saturate(value)
  %1169 = fmul fast float %1165, %1168
  %1170 = fmul fast float %753, 0x3FEA2B8620000000
  %1171 = fmul fast float %754, 0x3FEA2B8620000000
  %1172 = fmul fast float %755, 0x3FEA2B8620000000
  %1173 = fadd fast float %1170, 0x3FC81DFBA0000000
  %1174 = fmul fast float %1173, %753
  %1175 = fadd fast float %1174, 0x3F910E6020000000
  %1176 = fadd fast float %1171, 0x3FC81DFBA0000000
  %1177 = fmul fast float %1176, %754
  %1178 = fadd fast float %1177, 0x3F910E6020000000
  %1179 = fadd fast float %1172, 0x3FC81DFBA0000000
  %1180 = fmul fast float %1179, %755
  %1181 = fadd fast float %1180, 0x3F910E6020000000
  %1182 = call float @dx.op.unary.f32(i32 7, float %1175)  ; Saturate(value)
  %1183 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1184 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1185 = fsub fast float %1182, %753
  %1186 = fsub fast float %1183, %754
  %1187 = fsub fast float %1184, %755
  %1188 = fmul fast float %1185, %1158
  %1189 = fmul fast float %1188, %1169
  %1190 = fmul fast float %1186, %1158
  %1191 = fmul fast float %1190, %1169
  %1192 = fmul fast float %1187, %1158
  %1193 = fmul fast float %1192, %1169
  %1194 = fadd fast float %1189, %753
  %1195 = fadd fast float %1191, %754
  %1196 = fadd fast float %1193, %755
  %1197 = fmul fast float %688, %688
  %1198 = fmul fast float %1197, %1197
  %1199 = fadd fast float %1154, 1.000000e+00
  %1200 = fsub fast float %1199, %1169
  %1201 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1202 = call float @dx.op.dot3.f32(i32 55, float %40, float %41, float %42, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1203 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1204 = fsub fast float 1.000000e+00, %1198
  %1205 = call float @dx.op.binary.f32(i32 36, float %1201, float %1204)  ; FMin(a,b)
  %1206 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1207 = call float @dx.op.binary.f32(i32 35, float %1205, float %1206)  ; FMax(a,b)
  %1208 = fadd fast float %1203, 0xBFE4CCCCC0000000
  %1209 = fmul fast float %1208, 0x4006DB6DA0000000
  %1210 = call float @dx.op.unary.f32(i32 7, float %1209)  ; Saturate(value)
  %1211 = fmul fast float %1210, 2.000000e+00
  %1212 = fsub fast float 3.000000e+00, %1211
  %1213 = bitcast float %738 to i32
  %1214 = ashr i32 %1213, 1
  %1215 = add nsw i32 %1214, 532487669
  %1216 = bitcast i32 %1215 to float
  %1217 = fsub fast float 1.000000e+00, %1216
  %1218 = bitcast float %1217 to i32
  %1219 = sub nsw i32 2129859010, %1218
  %1220 = bitcast i32 %1219 to float
  %1221 = fmul fast float %1220, 2.000000e+00
  %1222 = bitcast float %739 to i32
  %1223 = ashr i32 %1222, 1
  %1224 = add nsw i32 %1223, 532487669
  %1225 = bitcast i32 %1224 to float
  %1226 = fsub fast float 1.000000e+00, %1225
  %1227 = bitcast float %1226 to i32
  %1228 = sub nsw i32 2129859010, %1227
  %1229 = bitcast i32 %1228 to float
  %1230 = fmul fast float %1229, 2.000000e+00
  %1231 = bitcast float %740 to i32
  %1232 = ashr i32 %1231, 1
  %1233 = add nsw i32 %1232, 532487669
  %1234 = bitcast i32 %1233 to float
  %1235 = fsub fast float 1.000000e+00, %1234
  %1236 = bitcast float %1235 to i32
  %1237 = sub nsw i32 2129859010, %1236
  %1238 = bitcast i32 %1237 to float
  %1239 = fmul fast float %1238, 2.000000e+00
  %1240 = fsub fast float 0x4002A9FBE0000000, %1221
  %1241 = fadd fast float %1221, 0x3FD54FDF00000000
  %1242 = bitcast float %1241 to i32
  %1243 = sub nsw i32 2129859010, %1242
  %1244 = bitcast i32 %1243 to float
  %1245 = fmul fast float %1244, %1240
  %1246 = fmul fast float %1245, %1245
  %1247 = fsub fast float 0x4002A9FBE0000000, %1230
  %1248 = fadd fast float %1230, 0x3FD54FDF00000000
  %1249 = bitcast float %1248 to i32
  %1250 = sub nsw i32 2129859010, %1249
  %1251 = bitcast i32 %1250 to float
  %1252 = fmul fast float %1251, %1247
  %1253 = fmul fast float %1252, %1252
  %1254 = fsub fast float 0x4002A9FBE0000000, %1239
  %1255 = fadd fast float %1239, 0x3FD54FDF00000000
  %1256 = bitcast float %1255 to i32
  %1257 = sub nsw i32 2129859010, %1256
  %1258 = bitcast i32 %1257 to float
  %1259 = fmul fast float %1258, %1254
  %1260 = fmul fast float %1259, %1259
  %1261 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1246)  ; FMax(a,b)
  %1262 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1253)  ; FMax(a,b)
  %1263 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1260)  ; FMax(a,b)
  %1264 = fsub fast float 1.000000e+00, %1149
  %1265 = fadd fast float %1264, %1165
  %1266 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1267 = fsub fast float 1.000000e+00, %1129
  %1268 = fmul fast float %1207, %1267
  %1269 = fmul fast float %1210, %1210
  %1270 = fmul fast float %1269, %1268
  %1271 = fmul fast float %1270, %1212
  %1272 = fmul fast float %1267, 0xBFE99999A0000000
  %1273 = fmul fast float %1272, %1158
  %1274 = fmul fast float %1273, %1169
  %1275 = fadd fast float %1274, 1.000000e+00
  %1276 = fadd fast float %741, -1.000000e+00
  %1277 = fmul fast float %1275, %1276
  %1278 = fadd fast float %1277, 1.000000e+00
  %1279 = fsub fast float %1261, %738
  %1280 = fsub fast float %1262, %739
  %1281 = fsub fast float %1263, %740
  %1282 = fmul fast float %1271, %1279
  %1283 = fmul fast float %1271, %1280
  %1284 = fmul fast float %1271, %1281
  %1285 = fadd fast float %1282, %738
  %1286 = fadd fast float %1283, %739
  %1287 = fadd fast float %1284, %740
  %1288 = fsub fast float %40, %717
  %1289 = fsub fast float %41, %718
  %1290 = fsub fast float %42, %719
  %1291 = fmul fast float %1271, %1288
  %1292 = fmul fast float %1271, %1289
  %1293 = fmul fast float %1271, %1290
  %1294 = fadd fast float %1291, %717
  %1295 = fadd fast float %1292, %718
  %1296 = fadd fast float %1293, %719
  %1297 = fmul fast float %1271, %1266
  %1298 = call float @dx.op.unary.f32(i32 7, float %1278)  ; Saturate(value)
  %1299 = fsub fast float 1.000000e+00, %1298
  %1300 = fmul fast float %1297, %1299
  %1301 = fadd fast float %1300, %1298
  %1302 = fsub fast float 1.000000e+00, %688
  %1303 = fmul fast float %1271, %1302
  %1304 = fadd fast float %1303, %688
  %1305 = call float @dx.op.dot3.f32(i32 55, float %1294, float %1295, float %1296, float %1294, float %1295, float %1296)  ; Dot3(ax,ay,az,bx,by,bz)
  %1306 = call float @dx.op.unary.f32(i32 25, float %1305)  ; Rsqrt(value)
  %1307 = fmul fast float %1294, %1306
  %1308 = fmul fast float %1295, %1306
  %1309 = fmul fast float %1296, %1306
  br label %1310

; <label>:1310                                    ; preds = %1142, %1135
  %1311 = phi float [ %1141, %1135 ], [ %1148, %1142 ]
  %1312 = phi float [ %1140, %1135 ], [ %1146, %1142 ]
  %1313 = phi float [ %1139, %1135 ], [ %1144, %1142 ]
  %1314 = phi float [ %1138, %1135 ], [ %1147, %1142 ]
  %1315 = phi float [ %1137, %1135 ], [ %1145, %1142 ]
  %1316 = phi float [ %1136, %1135 ], [ %1143, %1142 ]
  %1317 = phi float [ %738, %1135 ], [ %1285, %1142 ]
  %1318 = phi float [ %739, %1135 ], [ %1286, %1142 ]
  %1319 = phi float [ %740, %1135 ], [ %1287, %1142 ]
  %1320 = phi float [ %753, %1135 ], [ %1194, %1142 ]
  %1321 = phi float [ %754, %1135 ], [ %1195, %1142 ]
  %1322 = phi float [ %755, %1135 ], [ %1196, %1142 ]
  %1323 = phi float [ %717, %1135 ], [ %1307, %1142 ]
  %1324 = phi float [ %718, %1135 ], [ %1308, %1142 ]
  %1325 = phi float [ %719, %1135 ], [ %1309, %1142 ]
  %1326 = phi float [ %741, %1135 ], [ %1301, %1142 ]
  %1327 = phi float [ %688, %1135 ], [ %1304, %1142 ]
  %1328 = select i1 %175, float 0.000000e+00, float %1319
  %1329 = call float @dx.op.dot3.f32(i32 55, float %1323, float %1324, float %1325, float %1313, float %1312, float %1311)  ; Dot3(ax,ay,az,bx,by,bz)
  %1330 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1331 = call float @dx.op.dot3.f32(i32 55, float %1316, float %1315, float %1314, float %1323, float %1324, float %1325)  ; Dot3(ax,ay,az,bx,by,bz)
  %1332 = fmul fast float %1331, 2.000000e+00
  %1333 = fmul fast float %1332, %1323
  %1334 = fmul fast float %1332, %1324
  %1335 = fmul fast float %1332, %1325
  %1336 = fsub fast float %1316, %1333
  %1337 = fsub fast float %1315, %1334
  %1338 = fsub fast float %1314, %1335
  %1339 = call float @dx.op.binary.f32(i32 36, float %1327, float 1.000000e+00)  ; FMin(a,b)
  %1340 = fsub fast float 1.000000e+00, %1327
  %1341 = bitcast float %1340 to i32
  %1342 = sub nsw i32 2129859010, %1341
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1345 = extractvalue %dx.types.CBufRet.f32 %1343, 1
  %1346 = fadd fast float %1344, %102
  %1347 = fadd fast float %1345, %103
  %1348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1349 = extractvalue %dx.types.CBufRet.i32 %1348, 0
  %1350 = icmp eq i32 %1349, 1
  br i1 %1350, label %1351, label %1386

; <label>:1351                                    ; preds = %1310
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.CBufRet.f32 %1352, 1
  %1355 = fsub fast float %1346, %1353
  %1356 = fsub fast float %1347, %1354
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 0
  %1359 = extractvalue %dx.types.CBufRet.f32 %1357, 1
  %1360 = fmul fast float %1355, %1358
  %1361 = fmul fast float %1356, %1359
  %1362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %1360, float %1361, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = fcmp fast ogt float %1363, 0.000000e+00
  %1365 = extractvalue %dx.types.CBufRet.i32 %1348, 3
  %1366 = icmp ne i32 %1365, 0
  %1367 = and i1 %1364, %1366
  br i1 %1367, label %1368, label %1386, !dx.controlflow.hints !69

; <label>:1368                                    ; preds = %1351
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 0
  %1371 = extractvalue %dx.types.CBufRet.f32 %1369, 1
  %1372 = fsub fast float %1346, %1370
  %1373 = fsub fast float %1347, %1371
  %1374 = fmul fast float %1372, %1372
  %1375 = fmul fast float %1373, %1373
  %1376 = fadd fast float %1374, %1375
  %1377 = uitofp i32 %1365 to float
  %1378 = fmul fast float %1377, %1377
  %1379 = fcmp fast ogt float %1376, %1378
  br i1 %1379, label %1386, label %1380

; <label>:1380                                    ; preds = %1368
  %1381 = call float @dx.op.unary.f32(i32 24, float %1376)  ; Sqrt(value)
  %1382 = fsub fast float %1377, %1381
  %1383 = fmul fast float %1382, 0x3F75555560000000
  %1384 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  %1385 = call float @dx.op.binary.f32(i32 36, float %1384, float %1363)  ; FMin(a,b)
  br label %1386

; <label>:1386                                    ; preds = %1380, %1368, %1351, %1310
  %1387 = phi float [ 1.000000e+00, %1310 ], [ %1385, %1380 ], [ %1363, %1351 ], [ 0.000000e+00, %1368 ]
  %1388 = fcmp fast ogt float %1387, 0.000000e+00
  br i1 %1388, label %1389, label %1487, !dx.controlflow.hints !70

; <label>:1389                                    ; preds = %1386
  %1390 = fadd fast float %133, 5.000000e-01
  %1391 = call float @dx.op.unary.f32(i32 27, float %1390)  ; Round_ni(value)
  %1392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %31, float %131, float %132, float %1391, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.ResRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.ResRet.f32 %1392, 2
  %1396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1397 = extractvalue %dx.types.CBufRet.f32 %1396, 3
  %1398 = fmul fast float %1397, %1393
  %1399 = fmul fast float %1397, %1394
  %1400 = fmul fast float %1397, %1395
  %1401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %131, float %132, float %1391, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1402 = extractvalue %dx.types.ResRet.f32 %1401, 0
  %1403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %31, float %131, float %132, float %1391, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = extractvalue %dx.types.ResRet.f32 %1403, 1
  %1406 = fmul fast float %1404, 2.000000e+00
  %1407 = fmul fast float %1405, 2.000000e+00
  %1408 = fadd fast float %1406, -1.000000e+00
  %1409 = fadd fast float %1407, -1.000000e+00
  %1410 = fadd fast float %1408, %1409
  %1411 = fmul fast float %1410, 5.000000e-01
  %1412 = fsub fast float %1408, %1409
  %1413 = fmul fast float %1412, 5.000000e-01
  %1414 = call float @dx.op.unary.f32(i32 6, float %1411)  ; FAbs(value)
  %1415 = fsub fast float 1.000000e+00, %1414
  %1416 = call float @dx.op.unary.f32(i32 6, float %1413)  ; FAbs(value)
  %1417 = fsub fast float %1415, %1416
  %1418 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1417)  ; FMax(a,b)
  %1419 = call float @dx.op.dot3.f32(i32 55, float %1411, float %1413, float %1418, float %1411, float %1413, float %1418)  ; Dot3(ax,ay,az,bx,by,bz)
  %1420 = bitcast float %1419 to i32
  %1421 = ashr i32 %1420, 1
  %1422 = sub nsw i32 1597250115, %1421
  %1423 = bitcast i32 %1422 to float
  %1424 = fmul fast float %1423, %1411
  %1425 = fmul fast float %1423, %1413
  %1426 = fmul fast float %1423, %1418
  %1427 = fsub fast float 1.000000e+00, %1402
  %1428 = fdiv fast float %1427, %1426
  %1429 = fmul fast float %1426, %40
  %1430 = fmul fast float %1426, %41
  %1431 = fmul fast float %1426, %42
  %1432 = fmul fast float %1424, %36
  %1433 = fmul fast float %1424, %37
  %1434 = fmul fast float %1424, %38
  %1435 = fadd fast float %1429, %1432
  %1436 = fadd fast float %1430, %1433
  %1437 = fadd fast float %1431, %1434
  %1438 = fmul fast float %1425, %66
  %1439 = fmul fast float %1425, %67
  %1440 = fmul fast float %1425, %68
  %1441 = fadd fast float %1435, %1438
  %1442 = fadd fast float %1436, %1439
  %1443 = fadd fast float %1437, %1440
  %1444 = call float @dx.op.dot3.f32(i32 55, float %1441, float %1442, float %1443, float %1441, float %1442, float %1443)  ; Dot3(ax,ay,az,bx,by,bz)
  %1445 = call float @dx.op.unary.f32(i32 25, float %1444)  ; Rsqrt(value)
  %1446 = fmul fast float %1441, %1445
  %1447 = fmul fast float %1442, %1445
  %1448 = fmul fast float %1443, %1445
  %1449 = call float @dx.op.dot3.f32(i32 55, float %1323, float %1324, float %1325, float %1323, float %1324, float %1325)  ; Dot3(ax,ay,az,bx,by,bz)
  %1450 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  %1451 = fmul fast float %1450, 5.000000e-01
  %1452 = fadd fast float %1451, 5.000000e-01
  %1453 = fmul fast float %1452, %1402
  %1454 = call float @dx.op.dot3.f32(i32 55, float %1323, float %1324, float %1325, float %1446, float %1447, float %1448)  ; Dot3(ax,ay,az,bx,by,bz)
  %1455 = call float @dx.op.unary.f32(i32 7, float %1454)  ; Saturate(value)
  %1456 = fmul fast float %1455, %1428
  %1457 = fadd fast float %1453, %1456
  %1458 = fsub fast float 5.000000e-01, %1451
  %1459 = fmul fast float %1458, %1320
  %1460 = fmul fast float %1458, %1321
  %1461 = fmul fast float %1458, %1322
  %1462 = fadd fast float %1457, %1459
  %1463 = fmul fast float %1462, %1398
  %1464 = fadd fast float %1457, %1460
  %1465 = fmul fast float %1464, %1399
  %1466 = fadd fast float %1457, %1461
  %1467 = fmul fast float %1466, %1400
  %1468 = call float @dx.op.dot3.f32(i32 55, float %1336, float %1337, float %1338, float %1323, float %1324, float %1325)  ; Dot3(ax,ay,az,bx,by,bz)
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1470 = fmul fast float %1469, 5.000000e-01
  %1471 = fadd fast float %1470, 5.000000e-01
  %1472 = fmul fast float %1471, %1402
  %1473 = call float @dx.op.dot3.f32(i32 55, float %1336, float %1337, float %1338, float %1446, float %1447, float %1448)  ; Dot3(ax,ay,az,bx,by,bz)
  %1474 = call float @dx.op.unary.f32(i32 7, float %1473)  ; Saturate(value)
  %1475 = fmul fast float %1474, %1428
  %1476 = fadd fast float %1472, %1475
  %1477 = fsub fast float 5.000000e-01, %1470
  %1478 = fmul fast float %1477, %1320
  %1479 = fmul fast float %1477, %1321
  %1480 = fmul fast float %1477, %1322
  %1481 = fadd fast float %1476, %1478
  %1482 = fmul fast float %1481, %1398
  %1483 = fadd fast float %1476, %1479
  %1484 = fmul fast float %1483, %1399
  %1485 = fadd fast float %1476, %1480
  %1486 = fmul fast float %1485, %1400
  br label %1487

; <label>:1487                                    ; preds = %1389, %1386
  %1488 = phi float [ %1482, %1389 ], [ 0.000000e+00, %1386 ]
  %1489 = phi float [ %1484, %1389 ], [ 0.000000e+00, %1386 ]
  %1490 = phi float [ %1486, %1389 ], [ 0.000000e+00, %1386 ]
  %1491 = phi float [ %1463, %1389 ], [ 0.000000e+00, %1386 ]
  %1492 = phi float [ %1465, %1389 ], [ 0.000000e+00, %1386 ]
  %1493 = phi float [ %1467, %1389 ], [ 0.000000e+00, %1386 ]
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 0
  %1496 = fcmp fast ogt float %1495, 0.000000e+00
  %1497 = and i1 %1388, %1496
  br i1 %1497, label %1498, label %1702, !dx.controlflow.hints !71

; <label>:1498                                    ; preds = %1487
  %1499 = extractvalue %dx.types.CBufRet.f32 %1343, 2
  %1500 = fadd fast float %1499, %104
  %1501 = fmul fast float %1323, 3.200000e+01
  %1502 = fmul fast float %1324, 3.200000e+01
  %1503 = fadd fast float %1346, %1501
  %1504 = fadd fast float %1347, %1502
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 0
  %1507 = extractvalue %dx.types.CBufRet.f32 %1505, 1
  %1508 = fsub fast float %1503, %1506
  %1509 = fsub fast float %1504, %1507
  %1510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1510, 0
  %1512 = extractvalue %dx.types.CBufRet.f32 %1510, 1
  %1513 = fmul fast float %1508, %1511
  %1514 = fmul fast float %1509, %1512
  %1515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.CBufRet.f32 %1515, 1
  %1518 = fsub fast float %1346, %1516
  %1519 = fsub fast float %1347, %1517
  %1520 = fmul fast float %1518, %1518
  %1521 = fmul fast float %1519, %1519
  %1522 = fadd fast float %1520, %1521
  %1523 = call float @dx.op.unary.f32(i32 24, float %1522)  ; Sqrt(value)
  %1524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1525 = extractvalue %dx.types.CBufRet.f32 %1524, 0
  %1526 = extractvalue %dx.types.CBufRet.f32 %1524, 1
  %1527 = fsub fast float %1523, %1525
  %1528 = fdiv fast float %1527, %1526
  %1529 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1530 = fmul fast float %1529, 2.000000e+00
  %1531 = fsub fast float 3.000000e+00, %1530
  %1532 = fmul fast float %1529, %1529
  %1533 = fmul fast float %1532, %1531
  %1534 = fcmp fast oge float %1513, 0.000000e+00
  %1535 = fcmp fast ole float %1513, 1.000000e+00
  %1536 = and i1 %1535, %1534
  %1537 = fcmp fast oge float %1514, 0.000000e+00
  %1538 = and i1 %1537, %1536
  %1539 = fcmp fast ole float %1514, 1.000000e+00
  %1540 = and i1 %1539, %1538
  %1541 = fcmp fast ogt float %1533, 0.000000e+00
  %1542 = and i1 %1541, %1540
  br i1 %1542, label %1543, label %1666, !dx.controlflow.hints !72

; <label>:1543                                    ; preds = %1498
  %1544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.f32 %1544, 2
  %1546 = extractvalue %dx.types.CBufRet.f32 %1544, 3
  %1547 = fmul fast float %1545, %1513
  %1548 = fmul fast float %1546, %1514
  %1549 = call float @dx.op.unary.f32(i32 27, float %1547)  ; Round_ni(value)
  %1550 = call float @dx.op.unary.f32(i32 27, float %1548)  ; Round_ni(value)
  %1551 = fptosi float %1549 to i32
  %1552 = fptosi float %1550 to i32
  %1553 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %1551, i32 %1552, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = lshr i32 %1554, 16
  %1556 = icmp eq i32 %1555, 65535
  br i1 %1556, label %1666, label %1557

; <label>:1557                                    ; preds = %1543
  %1558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1559 = extractvalue %dx.types.CBufRet.f32 %1558, 0
  %1560 = fmul fast float %1559, %1513
  %1561 = extractvalue %dx.types.CBufRet.f32 %1558, 1
  %1562 = fadd fast float %1560, %1561
  %1563 = extractvalue %dx.types.CBufRet.f32 %1558, 2
  %1564 = fmul fast float %1563, %1514
  %1565 = extractvalue %dx.types.CBufRet.f32 %1558, 3
  %1566 = fadd fast float %1564, %1565
  %1567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %1562, float %1566, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1568 = extractvalue %dx.types.ResRet.f32 %1567, 0
  %1569 = extractvalue %dx.types.ResRet.f32 %1567, 1
  %1570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1571 = extractvalue %dx.types.CBufRet.f32 %1570, 1
  %1572 = extractvalue %dx.types.CBufRet.f32 %1570, 0
  %1573 = fsub fast float %1571, %1572
  %1574 = fmul fast float %1573, %1568
  %1575 = fadd fast float %1574, %1572
  %1576 = extractvalue %dx.types.CBufRet.f32 %1570, 3
  %1577 = extractvalue %dx.types.CBufRet.f32 %1570, 2
  %1578 = fsub fast float %1576, %1577
  %1579 = fmul fast float %1578, %1569
  %1580 = fadd fast float %1579, %1577
  %1581 = fsub fast float %1500, %1575
  %1582 = fsub fast float %1580, %1575
  %1583 = fdiv fast float %1581, %1582
  %1584 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  %1585 = extractvalue %dx.types.CBufRet.f32 %1494, 1
  %1586 = extractvalue %dx.types.CBufRet.f32 %1544, 0
  %1587 = extractvalue %dx.types.CBufRet.f32 %1544, 1
  %1588 = fmul fast float %1586, %1513
  %1589 = fmul fast float %1587, %1514
  %1590 = fmul fast float %1588, 1.250000e-01
  %1591 = fmul fast float %1589, 1.250000e-01
  %1592 = call float @dx.op.unary.f32(i32 27, float %1590)  ; Round_ni(value)
  %1593 = call float @dx.op.unary.f32(i32 27, float %1591)  ; Round_ni(value)
  %1594 = fmul fast float %1592, 8.000000e+00
  %1595 = fmul fast float %1593, 8.000000e+00
  %1596 = fsub fast float %1588, %1594
  %1597 = fsub fast float %1589, %1595
  %1598 = fadd fast float %1596, 5.000000e-01
  %1599 = fadd fast float %1597, 5.000000e-01
  %1600 = and i32 %1555, 255
  %1601 = lshr i32 %1554, 24
  %1602 = mul nuw nsw i32 %1600, 9
  %1603 = uitofp i32 %1602 to float
  %1604 = mul nuw nsw i32 %1601, 9
  %1605 = uitofp i32 %1604 to float
  %1606 = fadd fast float %1598, %1603
  %1607 = fadd fast float %1599, %1605
  %1608 = fdiv fast float %1606, %1495
  %1609 = fdiv fast float %1607, %1585
  %1610 = fmul fast float %1584, 4.375000e-01
  %1611 = fadd fast float %1610, 3.125000e-02
  %1612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %1608, float %1609, float %1611, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1613 = extractvalue %dx.types.ResRet.f32 %1612, 0
  %1614 = extractvalue %dx.types.ResRet.f32 %1612, 1
  %1615 = extractvalue %dx.types.ResRet.f32 %1612, 2
  %1616 = fadd fast float %1610, 5.312500e-01
  %1617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %1608, float %1609, float %1616, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1618 = extractvalue %dx.types.ResRet.f32 %1617, 0
  %1619 = extractvalue %dx.types.ResRet.f32 %1617, 1
  %1620 = extractvalue %dx.types.ResRet.f32 %1617, 2
  %1621 = fmul fast float %1618, 2.000000e+00
  %1622 = fmul fast float %1619, 2.000000e+00
  %1623 = fmul fast float %1620, 2.000000e+00
  %1624 = fadd fast float %1621, -1.000000e+00
  %1625 = fadd fast float %1622, -1.000000e+00
  %1626 = fadd fast float %1623, -1.000000e+00
  %1627 = fmul fast float %1624, %1624
  %1628 = fmul fast float %1625, %1625
  %1629 = fadd fast float %1627, %1628
  %1630 = fmul fast float %1626, %1626
  %1631 = fadd fast float %1629, %1630
  %1632 = call float @dx.op.unary.f32(i32 24, float %1631)  ; Sqrt(value)
  %1633 = fcmp fast ogt float %1632, 0.000000e+00
  br i1 %1633, label %1634, label %1638

; <label>:1634                                    ; preds = %1557
  %1635 = fdiv fast float %1624, %1632
  %1636 = fdiv fast float %1625, %1632
  %1637 = fdiv fast float %1626, %1632
  br label %1638

; <label>:1638                                    ; preds = %1634, %1557
  %1639 = phi float [ %1635, %1634 ], [ 0.000000e+00, %1557 ]
  %1640 = phi float [ %1636, %1634 ], [ 0.000000e+00, %1557 ]
  %1641 = phi float [ %1637, %1634 ], [ 0.000000e+00, %1557 ]
  %1642 = call float @dx.op.dot3.f32(i32 55, float %1639, float %1640, float %1641, float %1323, float %1324, float %1325)  ; Dot3(ax,ay,az,bx,by,bz)
  %1643 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1642)  ; FMax(a,b)
  %1644 = fmul fast float %1643, 0x400C5BF8A0000000
  %1645 = fmul fast float %1613, %1533
  %1646 = fmul fast float %1645, %1644
  %1647 = fmul fast float %1614, %1533
  %1648 = fmul fast float %1647, %1644
  %1649 = fmul fast float %1615, %1533
  %1650 = fmul fast float %1649, %1644
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 3
  %1653 = fmul fast float %1646, %1652
  %1654 = fmul fast float %1648, %1652
  %1655 = fmul fast float %1650, %1652
  %1656 = fcmp fast ogt float %1500, %1580
  br i1 %1656, label %1657, label %1666

; <label>:1657                                    ; preds = %1638
  %1658 = fmul fast float %1582, 0x3FC24924A0000000
  %1659 = fsub fast float %1500, %1580
  %1660 = fdiv fast float %1659, %1658
  %1661 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  %1662 = fsub fast float 1.000000e+00, %1661
  %1663 = fmul fast float %1662, %1653
  %1664 = fmul fast float %1662, %1654
  %1665 = fmul fast float %1662, %1655
  br label %1666

; <label>:1666                                    ; preds = %1657, %1638, %1543, %1498
  %1667 = phi float [ %1665, %1657 ], [ %1655, %1638 ], [ 0.000000e+00, %1543 ], [ 0.000000e+00, %1498 ]
  %1668 = phi float [ %1664, %1657 ], [ %1654, %1638 ], [ 0.000000e+00, %1543 ], [ 0.000000e+00, %1498 ]
  %1669 = phi float [ %1663, %1657 ], [ %1653, %1638 ], [ 0.000000e+00, %1543 ], [ 0.000000e+00, %1498 ]
  %1670 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1669)  ; FMax(a,b)
  %1671 = fmul fast float %1670, 0x3FD20DD760000000
  %1672 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1336, float %1337, float %1338)  ; Dot3(ax,ay,az,bx,by,bz)
  %1673 = fmul fast float %1672, 0x3FDF454380000000
  %1674 = fmul fast float %1672, %1672
  %1675 = fmul fast float %1674, 0x3FEE471020000000
  %1676 = fadd fast float %1675, 0xBFD42F6020000000
  %1677 = call float @dx.op.dot3.f32(i32 55, float %1670, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1673, float %1676)  ; Dot3(ax,ay,az,bx,by,bz)
  %1678 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1668)  ; FMax(a,b)
  %1679 = fmul fast float %1678, 0x3FD20DD760000000
  %1680 = call float @dx.op.dot3.f32(i32 55, float %1678, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1673, float %1676)  ; Dot3(ax,ay,az,bx,by,bz)
  %1681 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1667)  ; FMax(a,b)
  %1682 = fmul fast float %1681, 0x3FD20DD760000000
  %1683 = call float @dx.op.dot3.f32(i32 55, float %1681, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1673, float %1676)  ; Dot3(ax,ay,az,bx,by,bz)
  %1684 = call float @dx.op.binary.f32(i32 35, float %1671, float 0.000000e+00)  ; FMax(a,b)
  %1685 = call float @dx.op.binary.f32(i32 35, float %1679, float 0.000000e+00)  ; FMax(a,b)
  %1686 = call float @dx.op.binary.f32(i32 35, float %1682, float 0.000000e+00)  ; FMax(a,b)
  %1687 = call float @dx.op.binary.f32(i32 35, float %1677, float 0.000000e+00)  ; FMax(a,b)
  %1688 = call float @dx.op.binary.f32(i32 35, float %1680, float 0.000000e+00)  ; FMax(a,b)
  %1689 = call float @dx.op.binary.f32(i32 35, float %1683, float 0.000000e+00)  ; FMax(a,b)
  %1690 = fmul fast float %1684, %1387
  %1691 = fmul fast float %1685, %1387
  %1692 = fmul fast float %1686, %1387
  %1693 = fadd fast float %1690, %1491
  %1694 = fadd fast float %1691, %1492
  %1695 = fadd fast float %1692, %1493
  %1696 = fmul fast float %1687, %1387
  %1697 = fmul fast float %1688, %1387
  %1698 = fmul fast float %1689, %1387
  %1699 = fadd fast float %1696, %1488
  %1700 = fadd fast float %1697, %1489
  %1701 = fadd fast float %1698, %1490
  br label %1702

; <label>:1702                                    ; preds = %1666, %1487
  %1703 = phi float [ %1699, %1666 ], [ %1488, %1487 ]
  %1704 = phi float [ %1700, %1666 ], [ %1489, %1487 ]
  %1705 = phi float [ %1701, %1666 ], [ %1490, %1487 ]
  %1706 = phi float [ %1693, %1666 ], [ %1491, %1487 ]
  %1707 = phi float [ %1694, %1666 ], [ %1492, %1487 ]
  %1708 = phi float [ %1695, %1666 ], [ %1493, %1487 ]
  %1709 = fcmp fast olt float %1387, 1.000000e+00
  br i1 %1709, label %1710, label %2528, !dx.controlflow.hints !73

; <label>:1710                                    ; preds = %1702
  %1711 = extractvalue %dx.types.CBufRet.f32 %1343, 2
  %1712 = fadd fast float %1711, %104
  %1713 = fmul fast float %1323, 3.200000e+01
  %1714 = fmul fast float %1324, 3.200000e+01
  %1715 = fadd fast float %1346, %1713
  %1716 = fadd fast float %1347, %1714
  %1717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1718 = extractvalue %dx.types.CBufRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.CBufRet.f32 %1717, 1
  %1720 = fsub fast float %1715, %1718
  %1721 = fsub fast float %1716, %1719
  %1722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1723 = extractvalue %dx.types.CBufRet.f32 %1722, 0
  %1724 = extractvalue %dx.types.CBufRet.f32 %1722, 1
  %1725 = fmul fast float %1720, %1723
  %1726 = fmul fast float %1721, %1724
  %1727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1728 = extractvalue %dx.types.CBufRet.f32 %1727, 0
  %1729 = fmul fast float %1725, %1728
  %1730 = extractvalue %dx.types.CBufRet.f32 %1727, 1
  %1731 = fadd fast float %1729, %1730
  %1732 = extractvalue %dx.types.CBufRet.f32 %1727, 2
  %1733 = fmul fast float %1732, %1726
  %1734 = extractvalue %dx.types.CBufRet.f32 %1727, 3
  %1735 = fadd fast float %1733, %1734
  %1736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %1731, float %1735, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1737 = extractvalue %dx.types.ResRet.f32 %1736, 0
  %1738 = extractvalue %dx.types.ResRet.f32 %1736, 1
  %1739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1740 = extractvalue %dx.types.CBufRet.f32 %1739, 1
  %1741 = extractvalue %dx.types.CBufRet.f32 %1739, 0
  %1742 = fsub fast float %1740, %1741
  %1743 = fmul fast float %1742, %1737
  %1744 = fadd fast float %1743, %1741
  %1745 = extractvalue %dx.types.CBufRet.f32 %1739, 3
  %1746 = extractvalue %dx.types.CBufRet.f32 %1739, 2
  %1747 = fsub fast float %1745, %1746
  %1748 = fmul fast float %1747, %1738
  %1749 = fadd fast float %1748, %1746
  %1750 = fsub fast float %1712, %1744
  %1751 = fsub fast float %1749, %1744
  %1752 = fdiv fast float %1750, %1751
  %1753 = call float @dx.op.unary.f32(i32 7, float %1752)  ; Saturate(value)
  %1754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.f32 %1754, 0
  %1756 = fmul fast float %1755, %1753
  %1757 = extractvalue %dx.types.CBufRet.f32 %1754, 1
  %1758 = fadd fast float %1756, %1757
  %1759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %1731, float %1735, float %1758, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1760 = extractvalue %dx.types.ResRet.f32 %1759, 0
  %1761 = extractvalue %dx.types.ResRet.f32 %1759, 1
  %1762 = extractvalue %dx.types.ResRet.f32 %1759, 2
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.CBufRet.f32 %1763, 1
  %1766 = extractvalue %dx.types.CBufRet.f32 %1763, 2
  %1767 = fmul fast float %1764, %1760
  %1768 = fmul fast float %1765, %1761
  %1769 = fmul fast float %1766, %1762
  %1770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.CBufRet.f32 %1770, 1
  %1773 = extractvalue %dx.types.CBufRet.f32 %1770, 2
  %1774 = fadd fast float %1767, %1771
  %1775 = fadd fast float %1768, %1772
  %1776 = fadd fast float %1769, %1773
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 0
  %1779 = fmul fast float %1778, %1725
  %1780 = extractvalue %dx.types.CBufRet.f32 %1777, 1
  %1781 = fadd fast float %1779, %1780
  %1782 = extractvalue %dx.types.CBufRet.f32 %1777, 2
  %1783 = fmul fast float %1782, %1726
  %1784 = extractvalue %dx.types.CBufRet.f32 %1777, 3
  %1785 = fadd fast float %1783, %1784
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 0
  %1788 = extractvalue %dx.types.CBufRet.f32 %1786, 1
  %1789 = extractvalue %dx.types.CBufRet.f32 %1786, 2
  %1790 = extractvalue %dx.types.CBufRet.f32 %1786, 3
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 0
  %1793 = extractvalue %dx.types.CBufRet.f32 %1791, 1
  %1794 = extractvalue %dx.types.CBufRet.f32 %1791, 2
  %1795 = extractvalue %dx.types.CBufRet.f32 %1791, 3
  %1796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %1781, float %1785, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1797 = extractvalue %dx.types.ResRet.f32 %1796, 0
  %1798 = extractvalue %dx.types.ResRet.f32 %1796, 1
  %1799 = extractvalue %dx.types.ResRet.f32 %1796, 2
  %1800 = extractvalue %dx.types.ResRet.f32 %1796, 3
  %1801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %1781, float %1785, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1802 = extractvalue %dx.types.ResRet.f32 %1801, 0
  %1803 = extractvalue %dx.types.ResRet.f32 %1801, 1
  %1804 = extractvalue %dx.types.ResRet.f32 %1801, 2
  %1805 = extractvalue %dx.types.ResRet.f32 %1801, 3
  %1806 = fmul fast float %1797, %1774
  %1807 = fmul fast float %1802, %1774
  %1808 = fmul fast float %1804, %1774
  %1809 = fmul fast float %1800, %1774
  %1810 = fadd fast float %1806, %1787
  %1811 = fadd fast float %1807, %1788
  %1812 = fadd fast float %1808, %1789
  %1813 = fadd fast float %1809, %1790
  %1814 = fmul fast float %1798, %1774
  %1815 = fmul fast float %1803, %1774
  %1816 = fadd fast float %1814, %1792
  %1817 = fadd fast float %1815, %1793
  %1818 = fmul fast float %1799, %1774
  %1819 = fmul fast float %1805, %1774
  %1820 = fadd fast float %1818, %1794
  %1821 = fadd fast float %1819, %1795
  %1822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %1781, float %1785, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1823 = extractvalue %dx.types.ResRet.f32 %1822, 0
  %1824 = extractvalue %dx.types.ResRet.f32 %1822, 1
  %1825 = extractvalue %dx.types.ResRet.f32 %1822, 2
  %1826 = extractvalue %dx.types.ResRet.f32 %1822, 3
  %1827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %1781, float %1785, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1828 = extractvalue %dx.types.ResRet.f32 %1827, 0
  %1829 = extractvalue %dx.types.ResRet.f32 %1827, 1
  %1830 = extractvalue %dx.types.ResRet.f32 %1827, 2
  %1831 = extractvalue %dx.types.ResRet.f32 %1827, 3
  %1832 = fmul fast float %1823, %1775
  %1833 = fmul fast float %1828, %1775
  %1834 = fmul fast float %1830, %1775
  %1835 = fmul fast float %1826, %1775
  %1836 = fadd fast float %1810, %1832
  %1837 = fadd fast float %1811, %1833
  %1838 = fadd fast float %1812, %1834
  %1839 = fadd fast float %1813, %1835
  %1840 = fmul fast float %1824, %1775
  %1841 = fmul fast float %1829, %1775
  %1842 = fadd fast float %1816, %1840
  %1843 = fadd fast float %1817, %1841
  %1844 = fmul fast float %1825, %1775
  %1845 = fmul fast float %1831, %1775
  %1846 = fadd fast float %1820, %1844
  %1847 = fadd fast float %1821, %1845
  %1848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %1781, float %1785, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1849 = extractvalue %dx.types.ResRet.f32 %1848, 0
  %1850 = extractvalue %dx.types.ResRet.f32 %1848, 1
  %1851 = extractvalue %dx.types.ResRet.f32 %1848, 2
  %1852 = extractvalue %dx.types.ResRet.f32 %1848, 3
  %1853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %1781, float %1785, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1854 = extractvalue %dx.types.ResRet.f32 %1853, 0
  %1855 = extractvalue %dx.types.ResRet.f32 %1853, 1
  %1856 = extractvalue %dx.types.ResRet.f32 %1853, 2
  %1857 = extractvalue %dx.types.ResRet.f32 %1853, 3
  %1858 = fmul fast float %1849, %1776
  %1859 = fmul fast float %1854, %1776
  %1860 = fmul fast float %1856, %1776
  %1861 = fmul fast float %1852, %1776
  %1862 = fadd fast float %1836, %1858
  %1863 = fadd fast float %1837, %1859
  %1864 = fadd fast float %1838, %1860
  %1865 = fadd fast float %1839, %1861
  %1866 = fmul fast float %1850, %1776
  %1867 = fmul fast float %1855, %1776
  %1868 = fadd fast float %1842, %1866
  %1869 = fadd fast float %1843, %1867
  %1870 = fmul fast float %1851, %1776
  %1871 = fmul fast float %1857, %1776
  %1872 = fadd fast float %1846, %1870
  %1873 = fadd fast float %1847, %1871
  %1874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1875 = extractvalue %dx.types.CBufRet.f32 %1874, 0
  %1876 = fsub fast float %1346, %1875
  %1877 = fsub fast float %1718, %1346
  %1878 = call float @dx.op.binary.f32(i32 35, float %1877, float %1876)  ; FMax(a,b)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1874, 1
  %1880 = fsub fast float %1347, %1879
  %1881 = fsub fast float %1719, %1347
  %1882 = call float @dx.op.binary.f32(i32 35, float %1881, float %1880)  ; FMax(a,b)
  %1883 = call float @dx.op.binary.f32(i32 35, float %1878, float %1882)  ; FMax(a,b)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1722, 3
  %1885 = fmul fast float %1884, %1883
  %1886 = call float @dx.op.unary.f32(i32 7, float %1885)  ; Saturate(value)
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 0
  %1889 = extractvalue %dx.types.CBufRet.f32 %1887, 1
  %1890 = extractvalue %dx.types.CBufRet.f32 %1887, 2
  %1891 = extractvalue %dx.types.CBufRet.f32 %1887, 3
  %1892 = fsub fast float %1888, %1862
  %1893 = fsub fast float %1889, %1863
  %1894 = fsub fast float %1890, %1864
  %1895 = fsub fast float %1891, %1865
  %1896 = fmul fast float %1892, %1886
  %1897 = fmul fast float %1893, %1886
  %1898 = fmul fast float %1894, %1886
  %1899 = fmul fast float %1895, %1886
  %1900 = fadd fast float %1896, %1862
  %1901 = fadd fast float %1897, %1863
  %1902 = fadd fast float %1898, %1864
  %1903 = fadd fast float %1899, %1865
  %1904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1905 = extractvalue %dx.types.CBufRet.f32 %1904, 0
  %1906 = extractvalue %dx.types.CBufRet.f32 %1904, 1
  %1907 = fsub fast float %1905, %1868
  %1908 = fsub fast float %1906, %1869
  %1909 = fmul fast float %1907, %1886
  %1910 = fmul fast float %1908, %1886
  %1911 = fadd fast float %1909, %1868
  %1912 = fadd fast float %1910, %1869
  %1913 = extractvalue %dx.types.CBufRet.f32 %1904, 2
  %1914 = extractvalue %dx.types.CBufRet.f32 %1904, 3
  %1915 = fsub fast float %1913, %1872
  %1916 = fsub fast float %1914, %1873
  %1917 = fmul fast float %1915, %1886
  %1918 = fmul fast float %1916, %1886
  %1919 = fadd fast float %1917, %1872
  %1920 = fadd fast float %1918, %1873
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 0
  %1923 = fmul fast float %1922, %1900
  %1924 = fmul fast float %1922, %1901
  %1925 = fmul fast float %1922, %1902
  %1926 = fmul fast float %1922, %1903
  %1927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1928 = extractvalue %dx.types.CBufRet.f32 %1927, 0
  %1929 = fmul fast float %1928, %1911
  %1930 = fmul fast float %1928, %1912
  %1931 = fadd fast float %1929, %1923
  %1932 = fadd fast float %1930, %1925
  %1933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1934 = extractvalue %dx.types.CBufRet.f32 %1933, 0
  %1935 = fmul fast float %1934, %1919
  %1936 = fmul fast float %1934, %1920
  %1937 = fadd fast float %1931, %1935
  %1938 = fadd fast float %1932, %1936
  %1939 = extractvalue %dx.types.CBufRet.f32 %1921, 1
  %1940 = fmul fast float %1939, %1900
  %1941 = fmul fast float %1939, %1901
  %1942 = fmul fast float %1939, %1902
  %1943 = fmul fast float %1939, %1903
  %1944 = extractvalue %dx.types.CBufRet.f32 %1927, 1
  %1945 = fmul fast float %1944, %1911
  %1946 = fmul fast float %1944, %1912
  %1947 = fadd fast float %1945, %1940
  %1948 = fadd fast float %1946, %1942
  %1949 = extractvalue %dx.types.CBufRet.f32 %1933, 1
  %1950 = fmul fast float %1949, %1919
  %1951 = fmul fast float %1949, %1920
  %1952 = fadd fast float %1947, %1950
  %1953 = fadd fast float %1948, %1951
  %1954 = extractvalue %dx.types.CBufRet.f32 %1921, 2
  %1955 = fmul fast float %1954, %1900
  %1956 = fmul fast float %1954, %1901
  %1957 = fmul fast float %1954, %1902
  %1958 = fmul fast float %1954, %1903
  %1959 = extractvalue %dx.types.CBufRet.f32 %1927, 2
  %1960 = fmul fast float %1959, %1911
  %1961 = fmul fast float %1959, %1912
  %1962 = fadd fast float %1960, %1955
  %1963 = fadd fast float %1961, %1957
  %1964 = extractvalue %dx.types.CBufRet.f32 %1933, 2
  %1965 = fmul fast float %1964, %1919
  %1966 = fmul fast float %1964, %1920
  %1967 = fadd fast float %1962, %1965
  %1968 = fadd fast float %1963, %1966
  %1969 = fmul fast float %1956, %1956
  %1970 = fmul fast float %1968, %1968
  %1971 = fmul fast float %1958, %1958
  %1972 = fadd fast float %1971, %1969
  %1973 = fadd fast float %1972, %1970
  %1974 = call float @dx.op.unary.f32(i32 24, float %1973)  ; Sqrt(value)
  %1975 = fcmp fast ugt float %1974, 0.000000e+00
  br i1 %1975, label %1976, label %1991

; <label>:1976                                    ; preds = %1710
  %1977 = fsub fast float -0.000000e+00, %1958
  %1978 = fdiv fast float %1977, %1974
  %1979 = fsub fast float -0.000000e+00, %1956
  %1980 = fdiv fast float %1979, %1974
  %1981 = fdiv fast float %1968, %1974
  %1982 = fmul fast float %1967, 0x3FE279A760000000
  %1983 = fmul fast float %1980, %1956
  %1984 = fmul fast float %1981, %1968
  %1985 = fmul fast float %1978, %1958
  %1986 = fadd fast float %1983, %1985
  %1987 = fsub fast float %1986, %1984
  %1988 = call float @dx.op.unary.f32(i32 6, float %1987)  ; FAbs(value)
  %1989 = fadd fast float %1988, 0x3DDB7CDFE0000000
  %1990 = fdiv fast float %1982, %1989
  br label %1991

; <label>:1991                                    ; preds = %1976, %1710
  %1992 = phi float [ %1990, %1976 ], [ 1.000000e+00, %1710 ]
  %1993 = fmul fast float %1941, %1941
  %1994 = fmul fast float %1953, %1953
  %1995 = fmul fast float %1943, %1943
  %1996 = fadd fast float %1995, %1993
  %1997 = fadd fast float %1996, %1994
  %1998 = call float @dx.op.unary.f32(i32 24, float %1997)  ; Sqrt(value)
  %1999 = fcmp fast ugt float %1998, 0.000000e+00
  br i1 %1999, label %2000, label %2015

; <label>:2000                                    ; preds = %1991
  %2001 = fsub fast float -0.000000e+00, %1943
  %2002 = fdiv fast float %2001, %1998
  %2003 = fsub fast float -0.000000e+00, %1941
  %2004 = fdiv fast float %2003, %1998
  %2005 = fdiv fast float %1953, %1998
  %2006 = fmul fast float %1952, 0x3FE279A760000000
  %2007 = fmul fast float %2004, %1941
  %2008 = fmul fast float %2005, %1953
  %2009 = fmul fast float %2002, %1943
  %2010 = fadd fast float %2007, %2009
  %2011 = fsub fast float %2010, %2008
  %2012 = call float @dx.op.unary.f32(i32 6, float %2011)  ; FAbs(value)
  %2013 = fadd fast float %2012, 0x3DDB7CDFE0000000
  %2014 = fdiv fast float %2006, %2013
  br label %2015

; <label>:2015                                    ; preds = %2000, %1991
  %2016 = phi float [ %2014, %2000 ], [ 1.000000e+00, %1991 ]
  %2017 = call float @dx.op.binary.f32(i32 36, float %2016, float %1992)  ; FMin(a,b)
  %2018 = fmul fast float %1924, %1924
  %2019 = fmul fast float %1938, %1938
  %2020 = fmul fast float %1926, %1926
  %2021 = fadd fast float %2020, %2018
  %2022 = fadd fast float %2021, %2019
  %2023 = call float @dx.op.unary.f32(i32 24, float %2022)  ; Sqrt(value)
  %2024 = fcmp fast ugt float %2023, 0.000000e+00
  br i1 %2024, label %2025, label %2040

; <label>:2025                                    ; preds = %2015
  %2026 = fsub fast float -0.000000e+00, %1926
  %2027 = fdiv fast float %2026, %2023
  %2028 = fsub fast float -0.000000e+00, %1924
  %2029 = fdiv fast float %2028, %2023
  %2030 = fdiv fast float %1938, %2023
  %2031 = fmul fast float %1937, 0x3FE279A760000000
  %2032 = fmul fast float %2029, %1924
  %2033 = fmul fast float %2030, %1938
  %2034 = fmul fast float %2027, %1926
  %2035 = fadd fast float %2032, %2034
  %2036 = fsub fast float %2035, %2033
  %2037 = call float @dx.op.unary.f32(i32 6, float %2036)  ; FAbs(value)
  %2038 = fadd fast float %2037, 0x3DDB7CDFE0000000
  %2039 = fdiv fast float %2031, %2038
  br label %2040

; <label>:2040                                    ; preds = %2025, %2015
  %2041 = phi float [ %2039, %2025 ], [ 1.000000e+00, %2015 ]
  %2042 = call float @dx.op.binary.f32(i32 36, float %2041, float %2017)  ; FMin(a,b)
  %2043 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2044 = fcmp fast olt float %2043, 1.000000e+00
  br i1 %2044, label %2045, label %2055

; <label>:2045                                    ; preds = %2040
  %2046 = fmul fast float %2043, %1924
  %2047 = fmul fast float %2043, %1938
  %2048 = fmul fast float %2043, %1926
  %2049 = fmul fast float %2043, %1941
  %2050 = fmul fast float %2043, %1953
  %2051 = fmul fast float %2043, %1943
  %2052 = fmul fast float %2043, %1956
  %2053 = fmul fast float %2043, %1968
  %2054 = fmul fast float %2043, %1958
  br label %2055

; <label>:2055                                    ; preds = %2045, %2040
  %2056 = phi float [ %2052, %2045 ], [ %1956, %2040 ]
  %2057 = phi float [ %2053, %2045 ], [ %1968, %2040 ]
  %2058 = phi float [ %2054, %2045 ], [ %1958, %2040 ]
  %2059 = phi float [ %2049, %2045 ], [ %1941, %2040 ]
  %2060 = phi float [ %2050, %2045 ], [ %1953, %2040 ]
  %2061 = phi float [ %2051, %2045 ], [ %1943, %2040 ]
  %2062 = phi float [ %2046, %2045 ], [ %1924, %2040 ]
  %2063 = phi float [ %2047, %2045 ], [ %1938, %2040 ]
  %2064 = phi float [ %2048, %2045 ], [ %1926, %2040 ]
  %2065 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1937)  ; FMax(a,b)
  %2066 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1952)  ; FMax(a,b)
  %2067 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1967)  ; FMax(a,b)
  %2068 = fcmp fast oge float %1725, 0.000000e+00
  %2069 = and i1 %2068, %1496
  %2070 = fcmp fast ole float %1725, 1.000000e+00
  %2071 = and i1 %2070, %2069
  %2072 = fcmp fast oge float %1726, 0.000000e+00
  %2073 = and i1 %2072, %2071
  %2074 = fcmp fast ole float %1726, 1.000000e+00
  %2075 = and i1 %2074, %2073
  br i1 %2075, label %2076, label %2221, !dx.controlflow.hints !74

; <label>:2076                                    ; preds = %2055
  %2077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2078 = extractvalue %dx.types.CBufRet.f32 %2077, 2
  %2079 = extractvalue %dx.types.CBufRet.f32 %2077, 3
  %2080 = fmul fast float %2078, %1725
  %2081 = fmul fast float %2079, %1726
  %2082 = call float @dx.op.unary.f32(i32 27, float %2080)  ; Round_ni(value)
  %2083 = call float @dx.op.unary.f32(i32 27, float %2081)  ; Round_ni(value)
  %2084 = fptosi float %2082 to i32
  %2085 = fptosi float %2083 to i32
  %2086 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %2084, i32 %2085, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = and i32 %2087, 65535
  %2089 = lshr i32 %2087, 16
  %2090 = icmp eq i32 %2088, 65535
  br i1 %2090, label %2127, label %2091

; <label>:2091                                    ; preds = %2076
  %2092 = extractvalue %dx.types.CBufRet.f32 %1494, 1
  %2093 = extractvalue %dx.types.CBufRet.f32 %2077, 0
  %2094 = extractvalue %dx.types.CBufRet.f32 %2077, 1
  %2095 = fmul fast float %2093, %1725
  %2096 = fmul fast float %2094, %1726
  %2097 = fmul fast float %2095, 1.250000e-01
  %2098 = fmul fast float %2096, 1.250000e-01
  %2099 = call float @dx.op.unary.f32(i32 27, float %2097)  ; Round_ni(value)
  %2100 = call float @dx.op.unary.f32(i32 27, float %2098)  ; Round_ni(value)
  %2101 = fmul fast float %2099, 8.000000e+00
  %2102 = fmul fast float %2100, 8.000000e+00
  %2103 = and i32 %2087, 255
  %2104 = lshr i32 %2087, 8
  %2105 = and i32 %2104, 255
  %2106 = mul nuw nsw i32 %2103, 9
  %2107 = uitofp i32 %2106 to float
  %2108 = mul nuw nsw i32 %2105, 9
  %2109 = uitofp i32 %2108 to float
  %2110 = fadd fast float %2107, 5.000000e-01
  %2111 = fadd fast float %2110, %2095
  %2112 = fsub fast float %2111, %2101
  %2113 = fadd fast float %2109, 5.000000e-01
  %2114 = fadd fast float %2113, %2096
  %2115 = fsub fast float %2114, %2102
  %2116 = fdiv fast float %2112, %1495
  %2117 = fdiv fast float %2115, %2092
  %2118 = fmul fast float %1753, 4.375000e-01
  %2119 = fadd fast float %2118, 3.125000e-02
  %2120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %2116, float %2117, float %2119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2121 = extractvalue %dx.types.ResRet.f32 %2120, 0
  %2122 = extractvalue %dx.types.ResRet.f32 %2120, 1
  %2123 = extractvalue %dx.types.ResRet.f32 %2120, 2
  %2124 = fadd fast float %2121, %2065
  %2125 = fadd fast float %2122, %2066
  %2126 = fadd fast float %2123, %2067
  br label %2127

; <label>:2127                                    ; preds = %2091, %2076
  %2128 = phi float [ %2126, %2091 ], [ %2067, %2076 ]
  %2129 = phi float [ %2125, %2091 ], [ %2066, %2076 ]
  %2130 = phi float [ %2124, %2091 ], [ %2065, %2076 ]
  %2131 = icmp eq i32 %2089, 65535
  br i1 %2131, label %2221, label %2132

; <label>:2132                                    ; preds = %2127
  %2133 = extractvalue %dx.types.CBufRet.f32 %1494, 1
  %2134 = extractvalue %dx.types.CBufRet.f32 %2077, 0
  %2135 = extractvalue %dx.types.CBufRet.f32 %2077, 1
  %2136 = fmul fast float %2134, %1725
  %2137 = fmul fast float %2135, %1726
  %2138 = fmul fast float %2136, 1.250000e-01
  %2139 = fmul fast float %2137, 1.250000e-01
  %2140 = call float @dx.op.unary.f32(i32 27, float %2138)  ; Round_ni(value)
  %2141 = call float @dx.op.unary.f32(i32 27, float %2139)  ; Round_ni(value)
  %2142 = fmul fast float %2140, 8.000000e+00
  %2143 = fmul fast float %2141, 8.000000e+00
  %2144 = fsub fast float %2136, %2142
  %2145 = fsub fast float %2137, %2143
  %2146 = fadd fast float %2144, 5.000000e-01
  %2147 = fadd fast float %2145, 5.000000e-01
  %2148 = and i32 %2089, 255
  %2149 = lshr i32 %2087, 24
  %2150 = mul nuw nsw i32 %2148, 9
  %2151 = uitofp i32 %2150 to float
  %2152 = mul nuw nsw i32 %2149, 9
  %2153 = uitofp i32 %2152 to float
  %2154 = fadd fast float %2146, %2151
  %2155 = fadd fast float %2147, %2153
  %2156 = fdiv fast float %2154, %1495
  %2157 = fdiv fast float %2155, %2133
  %2158 = fmul fast float %1753, 4.375000e-01
  %2159 = fadd fast float %2158, 3.125000e-02
  %2160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %2156, float %2157, float %2159, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2161 = extractvalue %dx.types.ResRet.f32 %2160, 0
  %2162 = extractvalue %dx.types.ResRet.f32 %2160, 1
  %2163 = extractvalue %dx.types.ResRet.f32 %2160, 2
  %2164 = fadd fast float %2158, 5.312500e-01
  %2165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %2156, float %2157, float %2164, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2166 = extractvalue %dx.types.ResRet.f32 %2165, 0
  %2167 = extractvalue %dx.types.ResRet.f32 %2165, 1
  %2168 = extractvalue %dx.types.ResRet.f32 %2165, 2
  %2169 = fmul fast float %2166, 2.000000e+00
  %2170 = fmul fast float %2167, 2.000000e+00
  %2171 = fmul fast float %2168, 2.000000e+00
  %2172 = fadd fast float %2169, -1.000000e+00
  %2173 = fadd fast float %2170, -1.000000e+00
  %2174 = fadd fast float %2171, -1.000000e+00
  %2175 = fmul fast float %2172, %2172
  %2176 = fmul fast float %2173, %2173
  %2177 = fadd fast float %2175, %2176
  %2178 = fmul fast float %2174, %2174
  %2179 = fadd fast float %2177, %2178
  %2180 = call float @dx.op.unary.f32(i32 24, float %2179)  ; Sqrt(value)
  %2181 = fcmp fast ogt float %2180, 0.000000e+00
  br i1 %2181, label %2182, label %2186

; <label>:2182                                    ; preds = %2132
  %2183 = fdiv fast float %2172, %2180
  %2184 = fdiv fast float %2173, %2180
  %2185 = fdiv fast float %2174, %2180
  br label %2186

; <label>:2186                                    ; preds = %2182, %2132
  %2187 = phi float [ %2183, %2182 ], [ 0.000000e+00, %2132 ]
  %2188 = phi float [ %2184, %2182 ], [ 0.000000e+00, %2132 ]
  %2189 = phi float [ %2185, %2182 ], [ 0.000000e+00, %2132 ]
  %2190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.f32 %2190, 0
  %2192 = extractvalue %dx.types.CBufRet.f32 %2190, 1
  %2193 = fsub fast float %1346, %2191
  %2194 = fsub fast float %1347, %2192
  %2195 = fmul fast float %2193, %2193
  %2196 = fmul fast float %2194, %2194
  %2197 = fadd fast float %2195, %2196
  %2198 = call float @dx.op.unary.f32(i32 24, float %2197)  ; Sqrt(value)
  %2199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2200 = extractvalue %dx.types.CBufRet.f32 %2199, 0
  %2201 = extractvalue %dx.types.CBufRet.f32 %2199, 1
  %2202 = fsub fast float %2198, %2200
  %2203 = fdiv fast float %2202, %2201
  %2204 = call float @dx.op.unary.f32(i32 7, float %2203)  ; Saturate(value)
  %2205 = fmul fast float %2204, 2.000000e+00
  %2206 = fsub fast float 3.000000e+00, %2205
  %2207 = fmul fast float %2204, %2204
  %2208 = fmul fast float %2207, %2206
  %2209 = call float @dx.op.dot3.f32(i32 55, float %2187, float %2188, float %2189, float %1323, float %1324, float %1325)  ; Dot3(ax,ay,az,bx,by,bz)
  %2210 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2209)  ; FMax(a,b)
  %2211 = fmul fast float %2210, 0x400C5BF8A0000000
  %2212 = fmul fast float %2208, %2161
  %2213 = fmul fast float %2212, %2211
  %2214 = fadd fast float %2213, %2130
  %2215 = fmul fast float %2208, %2162
  %2216 = fmul fast float %2215, %2211
  %2217 = fadd fast float %2216, %2129
  %2218 = fmul fast float %2208, %2163
  %2219 = fmul fast float %2218, %2211
  %2220 = fadd fast float %2219, %2128
  br label %2221

; <label>:2221                                    ; preds = %2186, %2127, %2055
  %2222 = phi float [ %2220, %2186 ], [ %2128, %2127 ], [ %2067, %2055 ]
  %2223 = phi float [ %2217, %2186 ], [ %2129, %2127 ], [ %2066, %2055 ]
  %2224 = phi float [ %2214, %2186 ], [ %2130, %2127 ], [ %2065, %2055 ]
  %2225 = fcmp fast ogt float %1712, %1749
  %2226 = and i1 %2068, %2225
  %2227 = and i1 %2070, %2226
  %2228 = and i1 %2072, %2227
  %2229 = and i1 %2074, %2228
  br i1 %2229, label %2230, label %2287, !dx.controlflow.hints !75

; <label>:2230                                    ; preds = %2221
  %2231 = fmul fast float %1751, 0x3FC24924A0000000
  %2232 = fsub fast float %1712, %1749
  %2233 = fdiv fast float %2232, %2231
  %2234 = call float @dx.op.unary.f32(i32 7, float %2233)  ; Saturate(value)
  %2235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2236 = extractvalue %dx.types.CBufRet.f32 %2235, 0
  %2237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2237, 0
  %2239 = extractvalue %dx.types.CBufRet.f32 %2237, 1
  %2240 = extractvalue %dx.types.CBufRet.f32 %2237, 2
  %2241 = fsub fast float %2236, %2224
  %2242 = fsub fast float %2238, %2062
  %2243 = fsub fast float %2239, %2063
  %2244 = fsub fast float %2240, %2064
  %2245 = fmul fast float %2241, %2234
  %2246 = fmul fast float %2242, %2234
  %2247 = fmul fast float %2243, %2234
  %2248 = fmul fast float %2244, %2234
  %2249 = fadd fast float %2245, %2224
  %2250 = fadd fast float %2246, %2062
  %2251 = fadd fast float %2247, %2063
  %2252 = fadd fast float %2248, %2064
  %2253 = extractvalue %dx.types.CBufRet.f32 %2235, 1
  %2254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2255 = extractvalue %dx.types.CBufRet.f32 %2254, 0
  %2256 = extractvalue %dx.types.CBufRet.f32 %2254, 1
  %2257 = extractvalue %dx.types.CBufRet.f32 %2254, 2
  %2258 = fsub fast float %2253, %2223
  %2259 = fsub fast float %2255, %2059
  %2260 = fsub fast float %2256, %2060
  %2261 = fsub fast float %2257, %2061
  %2262 = fmul fast float %2258, %2234
  %2263 = fmul fast float %2259, %2234
  %2264 = fmul fast float %2260, %2234
  %2265 = fmul fast float %2261, %2234
  %2266 = fadd fast float %2262, %2223
  %2267 = fadd fast float %2263, %2059
  %2268 = fadd fast float %2264, %2060
  %2269 = fadd fast float %2265, %2061
  %2270 = extractvalue %dx.types.CBufRet.f32 %2235, 2
  %2271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.f32 %2271, 0
  %2273 = extractvalue %dx.types.CBufRet.f32 %2271, 1
  %2274 = extractvalue %dx.types.CBufRet.f32 %2271, 2
  %2275 = fsub fast float %2270, %2222
  %2276 = fsub fast float %2272, %2056
  %2277 = fsub fast float %2273, %2057
  %2278 = fsub fast float %2274, %2058
  %2279 = fmul fast float %2275, %2234
  %2280 = fmul fast float %2276, %2234
  %2281 = fmul fast float %2277, %2234
  %2282 = fmul fast float %2278, %2234
  %2283 = fadd fast float %2279, %2222
  %2284 = fadd fast float %2280, %2056
  %2285 = fadd fast float %2281, %2057
  %2286 = fadd fast float %2282, %2058
  br label %2287

; <label>:2287                                    ; preds = %2230, %2221
  %2288 = phi float [ %2283, %2230 ], [ %2222, %2221 ]
  %2289 = phi float [ %2284, %2230 ], [ %2056, %2221 ]
  %2290 = phi float [ %2285, %2230 ], [ %2057, %2221 ]
  %2291 = phi float [ %2286, %2230 ], [ %2058, %2221 ]
  %2292 = phi float [ %2266, %2230 ], [ %2223, %2221 ]
  %2293 = phi float [ %2267, %2230 ], [ %2059, %2221 ]
  %2294 = phi float [ %2268, %2230 ], [ %2060, %2221 ]
  %2295 = phi float [ %2269, %2230 ], [ %2061, %2221 ]
  %2296 = phi float [ %2249, %2230 ], [ %2224, %2221 ]
  %2297 = phi float [ %2250, %2230 ], [ %2062, %2221 ]
  %2298 = phi float [ %2251, %2230 ], [ %2063, %2221 ]
  %2299 = phi float [ %2252, %2230 ], [ %2064, %2221 ]
  %2300 = extractvalue %dx.types.CBufRet.f32 %1874, 3
  %2301 = fmul fast float %2300, %2296
  %2302 = fmul fast float %2300, %2292
  %2303 = fmul fast float %2300, %2288
  %2304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2305 = extractvalue %dx.types.CBufRet.f32 %2304, 3
  %2306 = fmul fast float %2301, %2305
  %2307 = fmul fast float %2302, %2305
  %2308 = fmul fast float %2303, %2305
  %2309 = fmul fast float %2297, 1.500000e+00
  %2310 = fmul fast float %2309, %2300
  %2311 = fmul fast float %2310, %2305
  %2312 = fmul fast float %2298, 1.500000e+00
  %2313 = fmul fast float %2312, %2300
  %2314 = fmul fast float %2313, %2305
  %2315 = fmul fast float %2299, 1.500000e+00
  %2316 = fmul fast float %2315, %2300
  %2317 = fmul fast float %2316, %2305
  %2318 = fmul fast float %2293, 1.500000e+00
  %2319 = fmul fast float %2318, %2300
  %2320 = fmul fast float %2319, %2305
  %2321 = fmul fast float %2294, 1.500000e+00
  %2322 = fmul fast float %2321, %2300
  %2323 = fmul fast float %2322, %2305
  %2324 = fmul fast float %2295, 1.500000e+00
  %2325 = fmul fast float %2324, %2300
  %2326 = fmul fast float %2325, %2305
  %2327 = fmul fast float %2289, 1.500000e+00
  %2328 = fmul fast float %2327, %2300
  %2329 = fmul fast float %2328, %2305
  %2330 = fmul fast float %2290, 1.500000e+00
  %2331 = fmul fast float %2330, %2300
  %2332 = fmul fast float %2331, %2305
  %2333 = fmul fast float %2291, 1.500000e+00
  %2334 = fmul fast float %2333, %2300
  %2335 = fmul fast float %2334, %2305
  %2336 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2306)  ; FMax(a,b)
  %2337 = call float @dx.op.dot3.f32(i32 55, float %2311, float %2314, float %2317, float %2311, float %2314, float %2317)  ; Dot3(ax,ay,az,bx,by,bz)
  %2338 = fcmp fast oeq float %2337, 0.000000e+00
  %2339 = fcmp fast oeq float %2336, 0.000000e+00
  %2340 = or i1 %2339, %2338
  br i1 %2340, label %2370, label %2341

; <label>:2341                                    ; preds = %2287
  %2342 = fsub fast float -0.000000e+00, %2317
  %2343 = fsub fast float -0.000000e+00, %2311
  %2344 = call float @dx.op.unary.f32(i32 24, float %2337)  ; Sqrt(value)
  %2345 = fdiv fast float %2344, %2336
  %2346 = fcmp fast ogt float %2345, 0x3FFB6F8900000000
  %2347 = select i1 %2346, float 0x3FFB6F8900000000, float %2345
  %2348 = fmul fast float %2347, 0x3FE8A23460000000
  %2349 = call float @dx.op.unary.f32(i32 7, float %2348)  ; Saturate(value)
  %2350 = call float @dx.op.binary.f32(i32 35, float %2347, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2351 = fmul fast float %2349, %2336
  %2352 = fmul fast float %2350, 0x3FF279A740000000
  %2353 = fadd fast float %2352, -1.000000e+00
  %2354 = call float @dx.op.dot3.f32(i32 55, float %2342, float %2343, float %2314, float %2342, float %2343, float %2314)  ; Dot3(ax,ay,az,bx,by,bz)
  %2355 = call float @dx.op.unary.f32(i32 25, float %2354)  ; Rsqrt(value)
  %2356 = fmul fast float %2355, %2342
  %2357 = fmul fast float %2355, %2343
  %2358 = fmul fast float %2355, %2314
  %2359 = fmul fast float %2353, %2353
  %2360 = fsub fast float 1.000000e+00, %2359
  %2361 = fmul fast float %2350, 0x40005F8BE0000000
  %2362 = fsub fast float 0x400C5BF8A0000000, %2361
  %2363 = fdiv fast float %2351, %2362
  %2364 = fmul fast float %2363, 0x3FEE31C3C0000000
  %2365 = fmul fast float %2364, %2360
  %2366 = fmul fast float %2350, 0x3FDACB7480000000
  %2367 = fadd fast float %2366, 0xBFD7347680000000
  %2368 = fmul fast float %2367, %2363
  %2369 = fmul fast float %2368, %2360
  br label %2370

; <label>:2370                                    ; preds = %2341, %2287
  %2371 = phi float [ %2356, %2341 ], [ 0.000000e+00, %2287 ]
  %2372 = phi float [ %2357, %2341 ], [ 0.000000e+00, %2287 ]
  %2373 = phi float [ %2358, %2341 ], [ 0.000000e+00, %2287 ]
  %2374 = phi float [ %2365, %2341 ], [ 0.000000e+00, %2287 ]
  %2375 = phi float [ %2369, %2341 ], [ 0.000000e+00, %2287 ]
  %2376 = call float @dx.op.dot3.f32(i32 55, float %2371, float %2372, float %2373, float %1323, float %1324, float %1325)  ; Dot3(ax,ay,az,bx,by,bz)
  %2377 = fmul fast float %2376, %2376
  %2378 = fmul fast float %2377, 0x3FEE471020000000
  %2379 = fadd fast float %2378, 0xBFD42F6020000000
  %2380 = fmul fast float %2336, 0x3FD20DD760000000
  %2381 = fmul fast float %2379, %2375
  %2382 = fmul fast float %2374, 0x3FDF454380000000
  %2383 = fmul fast float %2382, %2376
  %2384 = fadd fast float %2383, %2380
  %2385 = fadd fast float %2384, %2381
  %2386 = call float @dx.op.dot3.f32(i32 55, float %2371, float %2372, float %2373, float %1336, float %1337, float %1338)  ; Dot3(ax,ay,az,bx,by,bz)
  %2387 = fmul fast float %2386, 0x3FDF454380000000
  %2388 = fmul fast float %2386, %2386
  %2389 = fmul fast float %2388, 0x3FEE471020000000
  %2390 = fadd fast float %2389, 0xBFD42F6020000000
  %2391 = call float @dx.op.dot3.f32(i32 55, float %2336, float %2374, float %2375, float 0x3FD20DD760000000, float %2387, float %2390)  ; Dot3(ax,ay,az,bx,by,bz)
  %2392 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2307)  ; FMax(a,b)
  %2393 = call float @dx.op.dot3.f32(i32 55, float %2320, float %2323, float %2326, float %2320, float %2323, float %2326)  ; Dot3(ax,ay,az,bx,by,bz)
  %2394 = fcmp fast oeq float %2393, 0.000000e+00
  %2395 = fcmp fast oeq float %2392, 0.000000e+00
  %2396 = or i1 %2395, %2394
  br i1 %2396, label %2426, label %2397

; <label>:2397                                    ; preds = %2370
  %2398 = fsub fast float -0.000000e+00, %2326
  %2399 = fsub fast float -0.000000e+00, %2320
  %2400 = call float @dx.op.unary.f32(i32 24, float %2393)  ; Sqrt(value)
  %2401 = fdiv fast float %2400, %2392
  %2402 = fcmp fast ogt float %2401, 0x3FFB6F8900000000
  %2403 = select i1 %2402, float 0x3FFB6F8900000000, float %2401
  %2404 = fmul fast float %2403, 0x3FE8A23460000000
  %2405 = call float @dx.op.unary.f32(i32 7, float %2404)  ; Saturate(value)
  %2406 = call float @dx.op.binary.f32(i32 35, float %2403, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2407 = fmul fast float %2405, %2392
  %2408 = fmul fast float %2406, 0x3FF279A740000000
  %2409 = fadd fast float %2408, -1.000000e+00
  %2410 = call float @dx.op.dot3.f32(i32 55, float %2398, float %2399, float %2323, float %2398, float %2399, float %2323)  ; Dot3(ax,ay,az,bx,by,bz)
  %2411 = call float @dx.op.unary.f32(i32 25, float %2410)  ; Rsqrt(value)
  %2412 = fmul fast float %2411, %2398
  %2413 = fmul fast float %2411, %2399
  %2414 = fmul fast float %2411, %2323
  %2415 = fmul fast float %2409, %2409
  %2416 = fsub fast float 1.000000e+00, %2415
  %2417 = fmul fast float %2406, 0x40005F8BE0000000
  %2418 = fsub fast float 0x400C5BF8A0000000, %2417
  %2419 = fdiv fast float %2407, %2418
  %2420 = fmul fast float %2419, 0x3FEE31C3C0000000
  %2421 = fmul fast float %2420, %2416
  %2422 = fmul fast float %2406, 0x3FDACB7480000000
  %2423 = fadd fast float %2422, 0xBFD7347680000000
  %2424 = fmul fast float %2423, %2419
  %2425 = fmul fast float %2424, %2416
  br label %2426

; <label>:2426                                    ; preds = %2397, %2370
  %2427 = phi float [ %2412, %2397 ], [ 0.000000e+00, %2370 ]
  %2428 = phi float [ %2413, %2397 ], [ 0.000000e+00, %2370 ]
  %2429 = phi float [ %2414, %2397 ], [ 0.000000e+00, %2370 ]
  %2430 = phi float [ %2421, %2397 ], [ 0.000000e+00, %2370 ]
  %2431 = phi float [ %2425, %2397 ], [ 0.000000e+00, %2370 ]
  %2432 = call float @dx.op.dot3.f32(i32 55, float %2427, float %2428, float %2429, float %1323, float %1324, float %1325)  ; Dot3(ax,ay,az,bx,by,bz)
  %2433 = fmul fast float %2432, %2432
  %2434 = fmul fast float %2433, 0x3FEE471020000000
  %2435 = fadd fast float %2434, 0xBFD42F6020000000
  %2436 = fmul fast float %2392, 0x3FD20DD760000000
  %2437 = fmul fast float %2435, %2431
  %2438 = fmul fast float %2430, 0x3FDF454380000000
  %2439 = fmul fast float %2438, %2432
  %2440 = fadd fast float %2439, %2436
  %2441 = fadd fast float %2440, %2437
  %2442 = call float @dx.op.dot3.f32(i32 55, float %2427, float %2428, float %2429, float %1336, float %1337, float %1338)  ; Dot3(ax,ay,az,bx,by,bz)
  %2443 = fmul fast float %2442, 0x3FDF454380000000
  %2444 = fmul fast float %2442, %2442
  %2445 = fmul fast float %2444, 0x3FEE471020000000
  %2446 = fadd fast float %2445, 0xBFD42F6020000000
  %2447 = call float @dx.op.dot3.f32(i32 55, float %2392, float %2430, float %2431, float 0x3FD20DD760000000, float %2443, float %2446)  ; Dot3(ax,ay,az,bx,by,bz)
  %2448 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2308)  ; FMax(a,b)
  %2449 = call float @dx.op.dot3.f32(i32 55, float %2329, float %2332, float %2335, float %2329, float %2332, float %2335)  ; Dot3(ax,ay,az,bx,by,bz)
  %2450 = fcmp fast oeq float %2449, 0.000000e+00
  %2451 = fcmp fast oeq float %2448, 0.000000e+00
  %2452 = or i1 %2451, %2450
  br i1 %2452, label %2482, label %2453

; <label>:2453                                    ; preds = %2426
  %2454 = fsub fast float -0.000000e+00, %2335
  %2455 = fsub fast float -0.000000e+00, %2329
  %2456 = call float @dx.op.unary.f32(i32 24, float %2449)  ; Sqrt(value)
  %2457 = fdiv fast float %2456, %2448
  %2458 = fcmp fast ogt float %2457, 0x3FFB6F8900000000
  %2459 = select i1 %2458, float 0x3FFB6F8900000000, float %2457
  %2460 = fmul fast float %2459, 0x3FE8A23460000000
  %2461 = call float @dx.op.unary.f32(i32 7, float %2460)  ; Saturate(value)
  %2462 = call float @dx.op.binary.f32(i32 35, float %2459, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2463 = fmul fast float %2461, %2448
  %2464 = fmul fast float %2462, 0x3FF279A740000000
  %2465 = fadd fast float %2464, -1.000000e+00
  %2466 = call float @dx.op.dot3.f32(i32 55, float %2454, float %2455, float %2332, float %2454, float %2455, float %2332)  ; Dot3(ax,ay,az,bx,by,bz)
  %2467 = call float @dx.op.unary.f32(i32 25, float %2466)  ; Rsqrt(value)
  %2468 = fmul fast float %2467, %2454
  %2469 = fmul fast float %2467, %2455
  %2470 = fmul fast float %2467, %2332
  %2471 = fmul fast float %2465, %2465
  %2472 = fsub fast float 1.000000e+00, %2471
  %2473 = fmul fast float %2462, 0x40005F8BE0000000
  %2474 = fsub fast float 0x400C5BF8A0000000, %2473
  %2475 = fdiv fast float %2463, %2474
  %2476 = fmul fast float %2475, 0x3FEE31C3C0000000
  %2477 = fmul fast float %2476, %2472
  %2478 = fmul fast float %2462, 0x3FDACB7480000000
  %2479 = fadd fast float %2478, 0xBFD7347680000000
  %2480 = fmul fast float %2479, %2475
  %2481 = fmul fast float %2480, %2472
  br label %2482

; <label>:2482                                    ; preds = %2453, %2426
  %2483 = phi float [ %2468, %2453 ], [ 0.000000e+00, %2426 ]
  %2484 = phi float [ %2469, %2453 ], [ 0.000000e+00, %2426 ]
  %2485 = phi float [ %2470, %2453 ], [ 0.000000e+00, %2426 ]
  %2486 = phi float [ %2477, %2453 ], [ 0.000000e+00, %2426 ]
  %2487 = phi float [ %2481, %2453 ], [ 0.000000e+00, %2426 ]
  %2488 = call float @dx.op.dot3.f32(i32 55, float %2483, float %2484, float %2485, float %1323, float %1324, float %1325)  ; Dot3(ax,ay,az,bx,by,bz)
  %2489 = fmul fast float %2488, %2488
  %2490 = fmul fast float %2489, 0x3FEE471020000000
  %2491 = fadd fast float %2490, 0xBFD42F6020000000
  %2492 = fmul fast float %2448, 0x3FD20DD760000000
  %2493 = fmul fast float %2491, %2487
  %2494 = fmul fast float %2486, 0x3FDF454380000000
  %2495 = fmul fast float %2494, %2488
  %2496 = fadd fast float %2495, %2492
  %2497 = fadd fast float %2496, %2493
  %2498 = call float @dx.op.dot3.f32(i32 55, float %2483, float %2484, float %2485, float %1336, float %1337, float %1338)  ; Dot3(ax,ay,az,bx,by,bz)
  %2499 = fmul fast float %2498, 0x3FDF454380000000
  %2500 = fmul fast float %2498, %2498
  %2501 = fmul fast float %2500, 0x3FEE471020000000
  %2502 = fadd fast float %2501, 0xBFD42F6020000000
  %2503 = call float @dx.op.dot3.f32(i32 55, float %2448, float %2486, float %2487, float 0x3FD20DD760000000, float %2499, float %2502)  ; Dot3(ax,ay,az,bx,by,bz)
  %2504 = call float @dx.op.binary.f32(i32 35, float %2385, float 0.000000e+00)  ; FMax(a,b)
  %2505 = call float @dx.op.binary.f32(i32 35, float %2441, float 0.000000e+00)  ; FMax(a,b)
  %2506 = call float @dx.op.binary.f32(i32 35, float %2497, float 0.000000e+00)  ; FMax(a,b)
  %2507 = call float @dx.op.binary.f32(i32 35, float %2391, float 0.000000e+00)  ; FMax(a,b)
  %2508 = call float @dx.op.binary.f32(i32 35, float %2447, float 0.000000e+00)  ; FMax(a,b)
  %2509 = call float @dx.op.binary.f32(i32 35, float %2503, float 0.000000e+00)  ; FMax(a,b)
  %2510 = fsub fast float %1706, %2504
  %2511 = fsub fast float %1707, %2505
  %2512 = fsub fast float %1708, %2506
  %2513 = fmul fast float %2510, %1387
  %2514 = fmul fast float %2511, %1387
  %2515 = fmul fast float %2512, %1387
  %2516 = fadd fast float %2513, %2504
  %2517 = fadd fast float %2514, %2505
  %2518 = fadd fast float %2515, %2506
  %2519 = fsub fast float %1703, %2507
  %2520 = fsub fast float %1704, %2508
  %2521 = fsub fast float %1705, %2509
  %2522 = fmul fast float %2519, %1387
  %2523 = fmul fast float %2520, %1387
  %2524 = fmul fast float %2521, %1387
  %2525 = fadd fast float %2522, %2507
  %2526 = fadd fast float %2523, %2508
  %2527 = fadd fast float %2524, %2509
  br label %2528

; <label>:2528                                    ; preds = %2482, %1702
  %2529 = phi float [ %2525, %2482 ], [ %1703, %1702 ]
  %2530 = phi float [ %2526, %2482 ], [ %1704, %1702 ]
  %2531 = phi float [ %2527, %2482 ], [ %1705, %1702 ]
  %2532 = phi float [ %2516, %2482 ], [ %1706, %1702 ]
  %2533 = phi float [ %2517, %2482 ], [ %1707, %1702 ]
  %2534 = phi float [ %2518, %2482 ], [ %1708, %1702 ]
  %2535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2536 = extractvalue %dx.types.CBufRet.f32 %2535, 0
  %2537 = call float @dx.op.binary.f32(i32 36, float %1320, float %2536)  ; FMin(a,b)
  %2538 = fsub fast float 1.000000e+00, %1339
  %2539 = fmul fast float %2537, %2538
  %2540 = fsub fast float 1.000000e+00, %2539
  %2541 = bitcast float %2540 to i32
  %2542 = sub nsw i32 2129859010, %2541
  %2543 = bitcast i32 %2542 to float
  %2544 = call float @dx.op.binary.f32(i32 36, float %1321, float %2536)  ; FMin(a,b)
  %2545 = fmul fast float %2544, %2538
  %2546 = fsub fast float 1.000000e+00, %2545
  %2547 = bitcast float %2546 to i32
  %2548 = sub nsw i32 2129859010, %2547
  %2549 = bitcast i32 %2548 to float
  %2550 = call float @dx.op.binary.f32(i32 36, float %1322, float %2536)  ; FMin(a,b)
  %2551 = fmul fast float %2550, %2538
  %2552 = fsub fast float 1.000000e+00, %2551
  %2553 = bitcast float %2552 to i32
  %2554 = sub nsw i32 2129859010, %2553
  %2555 = bitcast i32 %2554 to float
  %2556 = fmul fast float %2532, %1339
  %2557 = fmul fast float %2556, %2543
  %2558 = fmul fast float %2533, %1339
  %2559 = fmul fast float %2558, %2549
  %2560 = fmul fast float %2534, %1339
  %2561 = fmul fast float %2560, %2555
  %2562 = call float @dx.op.binary.f32(i32 36, float %1317, float %2536)  ; FMin(a,b)
  %2563 = fmul fast float %2562, %2538
  %2564 = fsub fast float 1.000000e+00, %2563
  %2565 = bitcast float %2564 to i32
  %2566 = sub nsw i32 2129859010, %2565
  %2567 = bitcast i32 %2566 to float
  %2568 = call float @dx.op.binary.f32(i32 36, float %1318, float %2536)  ; FMin(a,b)
  %2569 = fmul fast float %2568, %2538
  %2570 = fsub fast float 1.000000e+00, %2569
  %2571 = bitcast float %2570 to i32
  %2572 = sub nsw i32 2129859010, %2571
  %2573 = bitcast i32 %2572 to float
  %2574 = call float @dx.op.binary.f32(i32 36, float %1328, float %2536)  ; FMin(a,b)
  %2575 = fmul fast float %2574, %2538
  %2576 = fsub fast float 1.000000e+00, %2575
  %2577 = bitcast float %2576 to i32
  %2578 = sub nsw i32 2129859010, %2577
  %2579 = bitcast i32 %2578 to float
  %2580 = fmul fast float %2529, %1339
  %2581 = fmul fast float %2580, %2567
  %2582 = fmul fast float %2530, %1339
  %2583 = fmul fast float %2582, %2573
  %2584 = fmul fast float %2531, %1339
  %2585 = fmul fast float %2584, %2579
  %2586 = call float @dx.op.dot3.f32(i32 55, float %2557, float %2559, float %2561, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2587 = select i1 %175, float 0.000000e+00, float %2557
  %2588 = select i1 %175, float %2586, float %2559
  %2589 = select i1 %175, float 0.000000e+00, float %2561
  %2590 = call float @dx.op.dot3.f32(i32 55, float %2581, float %2583, float %2585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2591 = select i1 %175, float 0.000000e+00, float %2581
  %2592 = select i1 %175, float %2590, float %2583
  %2593 = select i1 %175, float 0.000000e+00, float %2585
  %2594 = fmul fast float %1330, 9.843750e-01
  %2595 = fmul fast float %1326, 9.843750e-01
  %2596 = fadd fast float %2594, 7.812500e-03
  %2597 = fadd fast float %2595, 7.812500e-03
  %2598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %31, float %2596, float %2597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2599 = extractvalue %dx.types.ResRet.f32 %2598, 2
  %2600 = extractvalue %dx.types.ResRet.f32 %2598, 3
  %2601 = fmul fast float %2599, %1317
  %2602 = fmul fast float %2599, %1318
  %2603 = fmul fast float %2599, %1328
  %2604 = fadd fast float %2601, %2600
  %2605 = fadd fast float %2602, %2600
  %2606 = fadd fast float %2603, %2600
  %2607 = call float @dx.op.binary.f32(i32 35, float %2605, float %2606)  ; FMax(a,b)
  %2608 = call float @dx.op.binary.f32(i32 35, float %2604, float %2607)  ; FMax(a,b)
  %2609 = fsub fast float 1.000000e+00, %2608
  %2610 = fmul fast float %2609, %2587
  %2611 = fmul fast float %2609, %2588
  %2612 = fmul fast float %2609, %2589
  %2613 = fmul fast float %2604, %2591
  %2614 = fmul fast float %2605, %2592
  %2615 = fmul fast float %2606, %2593
  %2616 = fmul fast float %2610, %686
  %2617 = fmul fast float %2611, %686
  %2618 = fmul fast float %2612, %686
  %2619 = fadd fast float %2613, %679
  %2620 = fmul fast float %2619, %686
  %2621 = fadd fast float %2614, %680
  %2622 = fmul fast float %2621, %686
  %2623 = fadd fast float %2615, %681
  %2624 = fmul fast float %2623, %686
  %2625 = bitcast i32 %1342 to float
  %2626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2627 = extractvalue %dx.types.CBufRet.f32 %2626, 3
  %2628 = fcmp fast oeq float %2627, 0.000000e+00
  br i1 %2628, label %2787, label %2629

; <label>:2629                                    ; preds = %2528
  %2630 = extractvalue %dx.types.CBufRet.f32 %2626, 0
  %2631 = extractvalue %dx.types.CBufRet.f32 %2626, 1
  %2632 = extractvalue %dx.types.CBufRet.f32 %2626, 2
  %2633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2634 = extractvalue %dx.types.CBufRet.f32 %2633, 0
  %2635 = extractvalue %dx.types.CBufRet.f32 %2633, 1
  %2636 = extractvalue %dx.types.CBufRet.f32 %2633, 2
  %2637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2638 = extractvalue %dx.types.CBufRet.f32 %2637, 0
  %2639 = extractvalue %dx.types.CBufRet.f32 %2637, 1
  %2640 = call float @dx.op.dot3.f32(i32 55, float %2634, float %2635, float %2636, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2641 = select i1 %175, float %2638, float %2634
  %2642 = select i1 %175, float %2640, float %2635
  %2643 = select i1 %175, float %2639, float %2636
  %2644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2645 = extractvalue %dx.types.CBufRet.f32 %2644, 1
  %2646 = fcmp fast une float %2645, 0.000000e+00
  br i1 %2646, label %2647, label %2664

; <label>:2647                                    ; preds = %2629
  %2648 = fptoui float %55 to i32
  %2649 = fptoui float %56 to i32
  %2650 = lshr i32 %2648, 4
  %2651 = lshr i32 %2649, 4
  %2652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2653 = extractvalue %dx.types.CBufRet.f32 %2652, 0
  %2654 = fptoui float %2653 to i32
  %2655 = add i32 %2654, 15
  %2656 = lshr i32 %2655, 4
  %2657 = mul i32 %2656, %2651
  %2658 = add i32 %2657, %2650
  %2659 = shl i32 %2658, 3
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = and i32 %2661, -268435456
  %2663 = icmp eq i32 %2662, -1342177280
  br i1 %2663, label %2674, label %2664

; <label>:2664                                    ; preds = %2647, %2629
  %2665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2666 = extractvalue %dx.types.CBufRet.f32 %2665, 2
  %2667 = extractvalue %dx.types.CBufRet.f32 %2665, 3
  %2668 = fmul fast float %2666, %55
  %2669 = fmul fast float %2667, %56
  %2670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %32, float %2668, float %2669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2671 = extractvalue %dx.types.ResRet.f32 %2670, 0
  %2672 = extractvalue %dx.types.ResRet.f32 %2670, 1
  %2673 = extractvalue %dx.types.ResRet.f32 %2670, 2
  br label %2674

; <label>:2674                                    ; preds = %2664, %2647
  %2675 = phi float [ %2671, %2664 ], [ 0.000000e+00, %2647 ]
  %2676 = phi float [ %2672, %2664 ], [ 0.000000e+00, %2647 ]
  %2677 = phi float [ %2673, %2664 ], [ 0.000000e+00, %2647 ]
  %2678 = call float @dx.op.binary.f32(i32 36, float %2676, float %2677)  ; FMin(a,b)
  %2679 = call float @dx.op.binary.f32(i32 36, float %2675, float %2678)  ; FMin(a,b)
  %2680 = fcmp fast ogt float %2679, 0.000000e+00
  br i1 %2680, label %2681, label %2787, !dx.controlflow.hints !76

; <label>:2681                                    ; preds = %2674
  %2682 = fmul fast float %2675, %2641
  %2683 = fmul fast float %2676, %2642
  %2684 = fmul fast float %2677, %2643
  %2685 = fsub fast float %2630, %1316
  %2686 = fsub fast float %2631, %1315
  %2687 = fsub fast float %2632, %1314
  %2688 = call float @dx.op.dot3.f32(i32 55, float %2685, float %2686, float %2687, float %2685, float %2686, float %2687)  ; Dot3(ax,ay,az,bx,by,bz)
  %2689 = call float @dx.op.unary.f32(i32 25, float %2688)  ; Rsqrt(value)
  %2690 = fmul fast float %2689, %2685
  %2691 = fmul fast float %2689, %2686
  %2692 = fmul fast float %2689, %2687
  %2693 = call float @dx.op.dot3.f32(i32 55, float %2630, float %2631, float %2632, float %1323, float %1324, float %1325)  ; Dot3(ax,ay,az,bx,by,bz)
  %2694 = call float @dx.op.dot3.f32(i32 55, float %1313, float %1312, float %1311, float %2690, float %2691, float %2692)  ; Dot3(ax,ay,az,bx,by,bz)
  %2695 = call float @dx.op.unary.f32(i32 7, float %2693)  ; Saturate(value)
  %2696 = fmul fast float %2695, %2695
  %2697 = fmul fast float %2696, %2625
  %2698 = call float @dx.op.unary.f32(i32 7, float %2697)  ; Saturate(value)
  %2699 = fmul fast float %2698, %2695
  %2700 = call float @dx.op.dot3.f32(i32 55, float %1323, float %1324, float %1325, float %2690, float %2691, float %2692)  ; Dot3(ax,ay,az,bx,by,bz)
  %2701 = fmul fast float %2700, %2700
  %2702 = call float @dx.op.unary.f32(i32 6, float %2693)  ; FAbs(value)
  %2703 = fsub fast float 1.000000e+00, %1326
  %2704 = call float @dx.op.binary.f32(i32 35, float %2703, float 0x3F847AE140000000)  ; FMax(a,b)
  %2705 = fmul fast float %2704, %2704
  %2706 = fmul fast float %2705, %2705
  %2707 = fsub fast float 1.000000e+00, %2706
  %2708 = fmul fast float %1330, %1330
  %2709 = fmul fast float %2708, %2707
  %2710 = fadd fast float %2709, %2706
  %2711 = bitcast float %2710 to i32
  %2712 = ashr i32 %2711, 1
  %2713 = add nsw i32 %2712, 532487669
  %2714 = bitcast i32 %2713 to float
  %2715 = fadd fast float %2714, %1330
  %2716 = fmul fast float %2706, %2701
  %2717 = fsub fast float 1.000000e+00, %2701
  %2718 = fadd fast float %2717, %2716
  %2719 = fmul fast float %2702, %2702
  %2720 = fmul fast float %2719, %2707
  %2721 = fadd fast float %2720, %2706
  %2722 = bitcast float %2721 to i32
  %2723 = ashr i32 %2722, 1
  %2724 = add nsw i32 %2723, 532487669
  %2725 = bitcast i32 %2724 to float
  %2726 = fadd fast float %2725, %2702
  %2727 = fmul fast float %2718, %2718
  %2728 = fmul fast float %2727, %2715
  %2729 = fmul fast float %2728, %2726
  %2730 = fdiv fast float 0x3FF0A00000000000, %2729
  %2731 = fmul fast float %2730, %2706
  %2732 = call float @dx.op.unary.f32(i32 6, float %2694)  ; FAbs(value)
  %2733 = fsub fast float 1.000000e+00, %2732
  %2734 = bitcast float %2733 to i32
  %2735 = sitofp i32 %2734 to float
  %2736 = fmul fast float %2735, 5.000000e+00
  %2737 = fadd fast float %2736, 0xC1EFBF8940000000
  %2738 = fptosi float %2737 to i32
  %2739 = bitcast i32 %2738 to float
  %2740 = fsub fast float 1.000000e+00, %1317
  %2741 = fsub fast float 1.000000e+00, %1318
  %2742 = fsub fast float 1.000000e+00, %1328
  %2743 = fmul fast float %2739, %2740
  %2744 = fmul fast float %2739, %2741
  %2745 = fmul fast float %2739, %2742
  %2746 = fadd fast float %2743, %1317
  %2747 = fadd fast float %2744, %1318
  %2748 = fadd fast float %2745, %1328
  %2749 = fmul fast float %2693, 9.843750e-01
  %2750 = fadd fast float %2749, 7.812500e-03
  %2751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %31, float %2750, float %2597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2752 = extractvalue %dx.types.ResRet.f32 %2751, 2
  %2753 = extractvalue %dx.types.ResRet.f32 %2751, 3
  %2754 = fmul fast float %2752, %1317
  %2755 = fmul fast float %2752, %1318
  %2756 = fmul fast float %2752, %1328
  %2757 = fadd fast float %2754, %2753
  %2758 = fadd fast float %2755, %2753
  %2759 = fadd fast float %2756, %2753
  %2760 = call float @dx.op.binary.f32(i32 35, float %2758, float %2759)  ; FMax(a,b)
  %2761 = call float @dx.op.binary.f32(i32 35, float %2757, float %2760)  ; FMax(a,b)
  %2762 = fsub fast float 1.000000e+00, %2761
  %2763 = fmul fast float %2699, %2682
  %2764 = fmul fast float %2763, %2762
  %2765 = fmul fast float %2699, %2683
  %2766 = fmul fast float %2765, %2762
  %2767 = fmul fast float %2699, %2684
  %2768 = fmul fast float %2767, %2762
  %2769 = fmul fast float %2763, %2731
  %2770 = fmul fast float %2769, %2746
  %2771 = fmul fast float %2765, %2731
  %2772 = fmul fast float %2771, %2747
  %2773 = fmul fast float %2767, %2731
  %2774 = fmul fast float %2773, %2748
  %2775 = fadd fast float %2764, %2610
  %2776 = fmul fast float %2775, %686
  %2777 = fadd fast float %2766, %2611
  %2778 = fmul fast float %2777, %686
  %2779 = fadd fast float %2768, %2612
  %2780 = fmul fast float %2779, %686
  %2781 = fadd fast float %2770, %2619
  %2782 = fmul fast float %2781, %686
  %2783 = fadd fast float %2772, %2621
  %2784 = fmul fast float %2783, %686
  %2785 = fadd fast float %2774, %2623
  %2786 = fmul fast float %2785, %686
  br label %2787

; <label>:2787                                    ; preds = %2681, %2674, %2528
  %2788 = phi float [ %2620, %2528 ], [ %2620, %2674 ], [ %2782, %2681 ]
  %2789 = phi float [ %2622, %2528 ], [ %2622, %2674 ], [ %2784, %2681 ]
  %2790 = phi float [ %2624, %2528 ], [ %2624, %2674 ], [ %2786, %2681 ]
  %2791 = phi float [ %2616, %2528 ], [ %2616, %2674 ], [ %2776, %2681 ]
  %2792 = phi float [ %2617, %2528 ], [ %2617, %2674 ], [ %2778, %2681 ]
  %2793 = phi float [ %2618, %2528 ], [ %2618, %2674 ], [ %2780, %2681 ]
  %2794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.i32 %2794, 0
  %2796 = icmp eq i32 %2795, 0
  br i1 %2796, label %3162, label %2797

; <label>:2797                                    ; preds = %2787
  %2798 = fptoui float %55 to i32
  %2799 = fptoui float %56 to i32
  %2800 = lshr i32 %2798, 4
  %2801 = lshr i32 %2799, 4
  %2802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2803 = extractvalue %dx.types.CBufRet.i32 %2802, 0
  %2804 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2801, i32 %2803, i32 %2800)  ; UMad(a,b,c)
  %2805 = add nsw i32 %2795, -1
  %2806 = call i32 @dx.op.binary.i32(i32 37, i32 %2805, i32 0)  ; IMax(a,b)
  %2807 = call float @dx.op.binary.f32(i32 35, float %50, float 0.000000e+00)  ; FMax(a,b)
  %2808 = fptoui float %2807 to i32
  %2809 = lshr i32 %2808, 5
  %2810 = call i32 @dx.op.binary.i32(i32 40, i32 %2809, i32 8191)  ; UMin(a,b)
  %2811 = shl i32 %2810, 2
  %2812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2813 = extractvalue %dx.types.ResRet.i32 %2812, 0
  %2814 = lshr i32 %2813, 16
  %2815 = and i32 %2813, 65535
  %2816 = lshr i32 %2813, 21
  %2817 = lshr i32 %2815, 5
  %2818 = call i32 @dx.op.binary.i32(i32 40, i32 %2817, i32 %2806)  ; UMin(a,b)
  %2819 = icmp ugt i32 %2816, %2818
  br i1 %2819, label %3162, label %2820

; <label>:2820                                    ; preds = %2797
  br label %2821

; <label>:2821                                    ; preds = %3152, %2820
  %2822 = phi i32 [ %3159, %3152 ], [ %2816, %2820 ]
  %2823 = phi float [ %3153, %3152 ], [ %2788, %2820 ]
  %2824 = phi float [ %3154, %3152 ], [ %2789, %2820 ]
  %2825 = phi float [ %3155, %3152 ], [ %2790, %2820 ]
  %2826 = phi float [ %3156, %3152 ], [ %2791, %2820 ]
  %2827 = phi float [ %3157, %3152 ], [ %2792, %2820 ]
  %2828 = phi float [ %3158, %3152 ], [ %2793, %2820 ]
  %2829 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2830 = extractvalue %dx.types.CBufRet.i32 %2829, 0
  %2831 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2804, i32 %2830, i32 %2822)  ; UMad(a,b,c)
  %2832 = shl i32 %2831, 2
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = shl i32 %2822, 5
  %2836 = sub nsw i32 %2814, %2835
  %2837 = call i32 @dx.op.binary.i32(i32 37, i32 %2836, i32 0)  ; IMax(a,b)
  %2838 = call i32 @dx.op.binary.i32(i32 38, i32 %2837, i32 31)  ; IMin(a,b)
  %2839 = sub nsw i32 1, %2814
  %2840 = add nsw i32 %2839, %2815
  %2841 = call i32 @dx.op.binary.i32(i32 37, i32 %2840, i32 0)  ; IMax(a,b)
  %2842 = call i32 @dx.op.binary.i32(i32 38, i32 %2841, i32 32)  ; IMin(a,b)
  %2843 = and i32 %2842, 31
  %2844 = shl i32 -1, %2843
  %2845 = xor i32 %2844, -1
  %2846 = and i32 %2838, 31
  %2847 = shl i32 %2845, %2846
  %2848 = icmp eq i32 %2842, 32
  %2849 = select i1 %2848, i32 -1, i32 %2847
  %2850 = and i32 %2849, %2834
  %2851 = icmp eq i32 %2850, 0
  br i1 %2851, label %3152, label %2852

; <label>:2852                                    ; preds = %2821
  br label %2853

; <label>:2853                                    ; preds = %2933, %2852
  %2854 = phi i32 [ %2865, %2933 ], [ %2850, %2852 ]
  %2855 = phi float [ %2934, %2933 ], [ %2823, %2852 ]
  %2856 = phi float [ %2935, %2933 ], [ %2824, %2852 ]
  %2857 = phi float [ %2936, %2933 ], [ %2825, %2852 ]
  %2858 = phi float [ %2937, %2933 ], [ %2826, %2852 ]
  %2859 = phi float [ %2938, %2933 ], [ %2827, %2852 ]
  %2860 = phi float [ %2939, %2933 ], [ %2828, %2852 ]
  %2861 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2854)  ; FirstbitLo(value)
  %2862 = add i32 %2861, %2835
  %2863 = and i32 %2861, 31
  %2864 = shl i32 1, %2863
  %2865 = xor i32 %2864, %2854
  %2866 = mul i32 %2862, 112
  %2867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.f32 %2867, 0
  %2869 = extractvalue %dx.types.ResRet.f32 %2867, 1
  %2870 = extractvalue %dx.types.ResRet.f32 %2867, 2
  %2871 = or i32 %2866, 12
  %2872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.f32 %2872, 0
  %2874 = add i32 %2866, 44
  %2875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.f32 %2875, 0
  %2877 = add i32 %2866, 48
  %2878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.f32 %2878, 0
  %2880 = extractvalue %dx.types.ResRet.f32 %2878, 1
  %2881 = extractvalue %dx.types.ResRet.f32 %2878, 2
  %2882 = add i32 %2866, 80
  %2883 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.f32 %2883, 1
  %2885 = extractvalue %dx.types.ResRet.f32 %2883, 2
  %2886 = call float @dx.op.dot3.f32(i32 55, float %2868, float %2869, float %2870, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2887 = select i1 %175, float %2884, float %2868
  %2888 = select i1 %175, float %2886, float %2869
  %2889 = select i1 %175, float %2885, float %2870
  %2890 = fsub fast float %2879, %102
  %2891 = fsub fast float %2880, %103
  %2892 = fsub fast float %2881, %104
  %2893 = call float @dx.op.dot3.f32(i32 55, float %2890, float %2891, float %2892, float %2890, float %2891, float %2892)  ; Dot3(ax,ay,az,bx,by,bz)
  %2894 = call float @dx.op.unary.f32(i32 24, float %2893)  ; Sqrt(value)
  %2895 = fdiv fast float 1.000000e+00, %2894
  %2896 = fmul fast float %2895, %2890
  %2897 = fmul fast float %2895, %2891
  %2898 = fmul fast float %2895, %2892
  %2899 = fadd fast float %2894, %2873
  %2900 = fdiv fast float 1.000000e+00, %2899
  %2901 = fmul float %2876, %2900
  %2902 = fmul float %2901, %2901
  %2903 = call float @dx.op.unary.f32(i32 7, float %2902)  ; Saturate(value)
  %2904 = and i32 %2864, %2850
  %2905 = icmp eq i32 %2904, 0
  br i1 %2905, label %2928, label %2906, !dx.controlflow.hints !77

; <label>:2906                                    ; preds = %2853
  %2907 = lshr i32 %2798, 5
  %2908 = lshr i32 %2799, 5
  %2909 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %17, i32 0, i32 %2907, i32 %2908, i32 %2862, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = and i32 %2910, 3
  %2912 = icmp eq i32 %2911, 0
  %2913 = select i1 %2912, float 1.000000e+00, float 0.000000e+00
  %2914 = icmp eq i32 %2911, 3
  br i1 %2914, label %2915, label %2928

; <label>:2915                                    ; preds = %2906
  %2916 = lshr i32 %2910, 10
  %2917 = and i32 %2916, 8160
  %2918 = and i32 %2799, 31
  %2919 = or i32 %2917, %2918
  %2920 = lshr i32 %2910, 1
  %2921 = and i32 %2920, 16352
  %2922 = and i32 %2798, 31
  %2923 = or i32 %2921, %2922
  %2924 = lshr i32 %2910, 23
  %2925 = and i32 %2924, 255
  %2926 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %2923, i32 %2919, i32 %2925, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2927 = extractvalue %dx.types.ResRet.f32 %2926, 0
  br label %2928

; <label>:2928                                    ; preds = %2915, %2906, %2853
  %2929 = phi float [ %2927, %2915 ], [ %2913, %2906 ], [ 0.000000e+00, %2853 ]
  %2930 = call float @dx.op.binary.f32(i32 36, float %2929, float %2929)  ; FMin(a,b)
  %2931 = call float @dx.op.binary.f32(i32 36, float %2929, float %2930)  ; FMin(a,b)
  %2932 = fcmp fast ogt float %2931, 0.000000e+00
  br i1 %2932, label %2941, label %2933, !dx.controlflow.hints !78

; <label>:2933                                    ; preds = %3002, %2928
  %2934 = phi float [ %2855, %2928 ], [ %3148, %3002 ]
  %2935 = phi float [ %2856, %2928 ], [ %3149, %3002 ]
  %2936 = phi float [ %2857, %2928 ], [ %3150, %3002 ]
  %2937 = phi float [ %2858, %2928 ], [ %3139, %3002 ]
  %2938 = phi float [ %2859, %2928 ], [ %3140, %3002 ]
  %2939 = phi float [ %2860, %2928 ], [ %3141, %3002 ]
  %2940 = icmp eq i32 %2854, %2864
  br i1 %2940, label %3151, label %2853

; <label>:2941                                    ; preds = %2928
  %2942 = fmul fast float %2929, %2887
  %2943 = fmul fast float %2929, %2888
  %2944 = fmul fast float %2929, %2889
  %2945 = fsub fast float %2881, %1116
  %2946 = fcmp fast ogt float %2945, 0.000000e+00
  %2947 = fsub fast float %104, %1116
  %2948 = fcmp fast ogt float %2947, 0.000000e+00
  %2949 = xor i1 %2948, %2946
  %2950 = fsub fast float %1116, %2881
  %2951 = fmul fast float %2950, 2.000000e+00
  %2952 = fadd fast float %2951, %2881
  %2953 = select i1 %2949, float %2881, float %2952
  %2954 = fsub fast float %2953, %104
  %2955 = call float @dx.op.dot3.f32(i32 55, float %2890, float %2891, float %2954, float %2890, float %2891, float %2954)  ; Dot3(ax,ay,az,bx,by,bz)
  %2956 = call float @dx.op.unary.f32(i32 25, float %2955)  ; Rsqrt(value)
  %2957 = fmul fast float %2956, %2890
  %2958 = fmul fast float %2956, %2891
  %2959 = fmul fast float %2956, %2954
  %2960 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1124)  ; Dot3(ax,ay,az,bx,by,bz)
  %2961 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2957, float %2958, float %2959)  ; Dot3(ax,ay,az,bx,by,bz)
  %2962 = fdiv fast float 1.000000e+00, %2961
  %2963 = fmul fast float %2962, %2960
  %2964 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2947, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2965 = fcmp fast ogt float %2964, 0.000000e+00
  %2966 = fcmp fast olt float %2964, 0.000000e+00
  %2967 = zext i1 %2965 to i32
  %2968 = zext i1 %2966 to i32
  %2969 = sub nsw i32 %2967, %2968
  %2970 = sitofp i32 %2969 to float
  %2971 = fsub fast float %2953, %1116
  %2972 = call float @dx.op.dot3.f32(i32 55, float %2890, float %2891, float %2971, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2973 = fcmp fast ogt float %2972, 0.000000e+00
  %2974 = fcmp fast olt float %2972, 0.000000e+00
  %2975 = zext i1 %2973 to i32
  %2976 = zext i1 %2974 to i32
  %2977 = sub nsw i32 %2975, %2976
  %2978 = sitofp i32 %2977 to float
  %2979 = fcmp fast une float %2970, %2978
  br i1 %2979, label %2980, label %2990

; <label>:2980                                    ; preds = %2941
  %2981 = fmul fast float %2963, %2959
  %2982 = fmul fast float %2963, %2958
  %2983 = fmul fast float %2963, %2957
  %2984 = fmul fast float %2983, %2983
  %2985 = fmul fast float %2982, %2982
  %2986 = fadd fast float %2984, %2985
  %2987 = fmul fast float %2981, %2981
  %2988 = fadd fast float %2986, %2987
  %2989 = call float @dx.op.unary.f32(i32 24, float %2988)  ; Sqrt(value)
  br label %3002

; <label>:2990                                    ; preds = %2941
  %2991 = icmp slt i32 %2969, 0
  br i1 %2991, label %2992, label %3002

; <label>:2992                                    ; preds = %2990
  %2993 = fsub fast float %102, %2879
  %2994 = fsub fast float %103, %2880
  %2995 = fsub fast float %104, %2953
  %2996 = fmul fast float %2993, %2993
  %2997 = fmul fast float %2994, %2994
  %2998 = fadd fast float %2996, %2997
  %2999 = fmul fast float %2995, %2995
  %3000 = fadd fast float %2998, %2999
  %3001 = call float @dx.op.unary.f32(i32 24, float %3000)  ; Sqrt(value)
  br label %3002

; <label>:3002                                    ; preds = %2992, %2990, %2980
  %3003 = phi float [ %2989, %2980 ], [ %3001, %2992 ], [ 0.000000e+00, %2990 ]
  %3004 = and i1 %2948, %2946
  %3005 = fsub fast float -0.000000e+00, %3003
  %3006 = select i1 %3004, float -0.000000e+00, float %3005
  %3007 = fmul fast float %1117, 0x3FF7154760000000
  %3008 = fmul fast float %3007, %3006
  %3009 = fmul fast float %1118, 0x3FF7154760000000
  %3010 = fmul fast float %3009, %3006
  %3011 = fmul fast float %1119, 0x3FF7154760000000
  %3012 = fmul fast float %3011, %3006
  %3013 = call float @dx.op.unary.f32(i32 21, float %3008)  ; Exp(value)
  %3014 = call float @dx.op.unary.f32(i32 21, float %3010)  ; Exp(value)
  %3015 = call float @dx.op.unary.f32(i32 21, float %3012)  ; Exp(value)
  %3016 = call float @dx.op.unary.f32(i32 7, float %3013)  ; Saturate(value)
  %3017 = call float @dx.op.unary.f32(i32 7, float %3014)  ; Saturate(value)
  %3018 = call float @dx.op.unary.f32(i32 7, float %3015)  ; Saturate(value)
  %3019 = fmul fast float %2942, %3016
  %3020 = fmul fast float %2943, %3017
  %3021 = fmul fast float %2944, %3018
  %3022 = fsub fast float %2896, %1316
  %3023 = fsub fast float %2897, %1315
  %3024 = fsub fast float %2898, %1314
  %3025 = call float @dx.op.dot3.f32(i32 55, float %3022, float %3023, float %3024, float %3022, float %3023, float %3024)  ; Dot3(ax,ay,az,bx,by,bz)
  %3026 = call float @dx.op.unary.f32(i32 25, float %3025)  ; Rsqrt(value)
  %3027 = fmul fast float %3026, %3022
  %3028 = fmul fast float %3026, %3023
  %3029 = fmul fast float %3026, %3024
  %3030 = call float @dx.op.dot3.f32(i32 55, float %2896, float %2897, float %2898, float %1323, float %1324, float %1325)  ; Dot3(ax,ay,az,bx,by,bz)
  %3031 = call float @dx.op.dot3.f32(i32 55, float %1313, float %1312, float %1311, float %3027, float %3028, float %3029)  ; Dot3(ax,ay,az,bx,by,bz)
  %3032 = call float @dx.op.unary.f32(i32 7, float %3030)  ; Saturate(value)
  %3033 = fmul fast float %3032, %2903
  %3034 = fmul fast float %3032, %3032
  %3035 = fmul fast float %3034, %2625
  %3036 = call float @dx.op.unary.f32(i32 7, float %3035)  ; Saturate(value)
  %3037 = fmul fast float %3033, %3036
  %3038 = bitcast float %2893 to i32
  %3039 = ashr i32 %3038, 1
  %3040 = sub nsw i32 1597463007, %3039
  %3041 = bitcast i32 %3040 to float
  %3042 = fmul fast float %3041, %2890
  %3043 = fmul fast float %3041, %2891
  %3044 = fmul fast float %3041, %2892
  %3045 = fsub fast float %3042, %1316
  %3046 = fsub fast float %3043, %1315
  %3047 = fsub fast float %3044, %1314
  %3048 = call float @dx.op.dot3.f32(i32 55, float %3045, float %3046, float %3047, float %3045, float %3046, float %3047)  ; Dot3(ax,ay,az,bx,by,bz)
  %3049 = call float @dx.op.unary.f32(i32 25, float %3048)  ; Rsqrt(value)
  %3050 = fmul fast float %3045, %3049
  %3051 = fmul fast float %3046, %3049
  %3052 = fmul fast float %3047, %3049
  %3053 = call float @dx.op.dot3.f32(i32 55, float %1323, float %1324, float %1325, float %3050, float %3051, float %3052)  ; Dot3(ax,ay,az,bx,by,bz)
  %3054 = fmul fast float %3053, %3053
  %3055 = call float @dx.op.unary.f32(i32 6, float %3030)  ; FAbs(value)
  %3056 = fsub fast float 1.000000e+00, %1326
  %3057 = call float @dx.op.binary.f32(i32 35, float %3056, float 0x3F847AE140000000)  ; FMax(a,b)
  %3058 = fmul fast float %3057, %3057
  %3059 = fmul fast float %3058, %3058
  %3060 = fsub fast float 1.000000e+00, %3059
  %3061 = fmul fast float %1330, %1330
  %3062 = fmul fast float %3061, %3060
  %3063 = fadd fast float %3062, %3059
  %3064 = bitcast float %3063 to i32
  %3065 = ashr i32 %3064, 1
  %3066 = add nsw i32 %3065, 532487669
  %3067 = bitcast i32 %3066 to float
  %3068 = fadd fast float %3067, %1330
  %3069 = fmul fast float %3059, %3054
  %3070 = fsub fast float 1.000000e+00, %3054
  %3071 = fadd fast float %3070, %3069
  %3072 = fmul fast float %3055, %3055
  %3073 = fmul fast float %3072, %3060
  %3074 = fadd fast float %3073, %3059
  %3075 = bitcast float %3074 to i32
  %3076 = ashr i32 %3075, 1
  %3077 = add nsw i32 %3076, 532487669
  %3078 = bitcast i32 %3077 to float
  %3079 = fadd fast float %3078, %3055
  %3080 = fmul fast float %3071, %3071
  %3081 = fmul fast float %3080, %3068
  %3082 = fmul fast float %3081, %3079
  %3083 = fdiv fast float 1.000000e+00, %3082
  %3084 = bitcast float %3059 to i32
  %3085 = sitofp i32 %3084 to float
  %3086 = fmul fast float %3085, 0x3FE7F73180000000
  %3087 = fadd fast float %3086, 0x41AFE27C40000000
  %3088 = fptosi float %3087 to i32
  %3089 = bitcast i32 %3088 to float
  %3090 = fmul fast float %2876, 0x3FD80E9D60000000
  %3091 = fmul fast float %3090, %3041
  %3092 = fadd fast float %3089, %3091
  %3093 = bitcast float %3092 to i32
  %3094 = sub nsw i32 2129859010, %3093
  %3095 = bitcast i32 %3094 to float
  %3096 = fmul fast float %3059, %3083
  %3097 = fmul fast float %3096, %3089
  %3098 = fmul fast float %3097, %3095
  %3099 = call float @dx.op.unary.f32(i32 6, float %3031)  ; FAbs(value)
  %3100 = fsub fast float 1.000000e+00, %3099
  %3101 = bitcast float %3100 to i32
  %3102 = sitofp i32 %3101 to float
  %3103 = fmul fast float %3102, 5.000000e+00
  %3104 = fadd fast float %3103, 0xC1EFBF8940000000
  %3105 = fptosi float %3104 to i32
  %3106 = bitcast i32 %3105 to float
  %3107 = fsub fast float 1.000000e+00, %1317
  %3108 = fsub fast float 1.000000e+00, %1318
  %3109 = fsub fast float 1.000000e+00, %1328
  %3110 = fmul fast float %3106, %3107
  %3111 = fmul fast float %3106, %3108
  %3112 = fmul fast float %3106, %3109
  %3113 = fadd fast float %3110, %1317
  %3114 = fadd fast float %3111, %1318
  %3115 = fadd fast float %3112, %1328
  %3116 = fmul fast float %3030, 9.843750e-01
  %3117 = fadd fast float %3116, 7.812500e-03
  %3118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %31, float %3117, float %2597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3119 = extractvalue %dx.types.ResRet.f32 %3118, 2
  %3120 = extractvalue %dx.types.ResRet.f32 %3118, 3
  %3121 = fmul fast float %3119, %1317
  %3122 = fmul fast float %3119, %1318
  %3123 = fmul fast float %3119, %1328
  %3124 = fadd fast float %3121, %3120
  %3125 = fadd fast float %3122, %3120
  %3126 = fadd fast float %3123, %3120
  %3127 = call float @dx.op.binary.f32(i32 35, float %3125, float %3126)  ; FMax(a,b)
  %3128 = call float @dx.op.binary.f32(i32 35, float %3124, float %3127)  ; FMax(a,b)
  %3129 = fsub fast float 1.000000e+00, %3128
  %3130 = fmul fast float %3019, %686
  %3131 = fmul fast float %3130, %3037
  %3132 = fmul fast float %3131, %3129
  %3133 = fmul fast float %3020, %686
  %3134 = fmul fast float %3133, %3037
  %3135 = fmul fast float %3134, %3129
  %3136 = fmul fast float %3021, %686
  %3137 = fmul fast float %3136, %3037
  %3138 = fmul fast float %3137, %3129
  %3139 = fadd fast float %3132, %2858
  %3140 = fadd fast float %3135, %2859
  %3141 = fadd fast float %3138, %2860
  %3142 = fmul fast float %3131, %3113
  %3143 = fmul fast float %3142, %3098
  %3144 = fmul fast float %3134, %3114
  %3145 = fmul fast float %3144, %3098
  %3146 = fmul fast float %3137, %3115
  %3147 = fmul fast float %3146, %3098
  %3148 = fadd fast float %3143, %2855
  %3149 = fadd fast float %3145, %2856
  %3150 = fadd fast float %3147, %2857
  br label %2933

; <label>:3151                                    ; preds = %2933
  br label %3152

; <label>:3152                                    ; preds = %3151, %2821
  %3153 = phi float [ %2823, %2821 ], [ %2934, %3151 ]
  %3154 = phi float [ %2824, %2821 ], [ %2935, %3151 ]
  %3155 = phi float [ %2825, %2821 ], [ %2936, %3151 ]
  %3156 = phi float [ %2826, %2821 ], [ %2937, %3151 ]
  %3157 = phi float [ %2827, %2821 ], [ %2938, %3151 ]
  %3158 = phi float [ %2828, %2821 ], [ %2939, %3151 ]
  %3159 = add i32 %2822, 1
  %3160 = icmp ugt i32 %3159, %2818
  br i1 %3160, label %3161, label %2821

; <label>:3161                                    ; preds = %3152
  br label %3162

; <label>:3162                                    ; preds = %3161, %2797, %2787
  %3163 = phi float [ %2788, %2787 ], [ %2788, %2797 ], [ %3153, %3161 ]
  %3164 = phi float [ %2789, %2787 ], [ %2789, %2797 ], [ %3154, %3161 ]
  %3165 = phi float [ %2790, %2787 ], [ %2790, %2797 ], [ %3155, %3161 ]
  %3166 = phi float [ %2791, %2787 ], [ %2791, %2797 ], [ %3156, %3161 ]
  %3167 = phi float [ %2792, %2787 ], [ %2792, %2797 ], [ %3157, %3161 ]
  %3168 = phi float [ %2793, %2787 ], [ %2793, %2797 ], [ %3158, %3161 ]
  %3169 = call float @dx.op.unary.f32(i32 24, float %1320)  ; Sqrt(value)
  %3170 = call float @dx.op.unary.f32(i32 24, float %1321)  ; Sqrt(value)
  %3171 = call float @dx.op.unary.f32(i32 24, float %1322)  ; Sqrt(value)
  %3172 = fmul fast float %3169, %3166
  %3173 = fmul fast float %3170, %3167
  %3174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3175 = extractvalue %dx.types.CBufRet.f32 %3174, 0
  br i1 %175, label %3176, label %3197

; <label>:3176                                    ; preds = %3162
  %3177 = fadd fast float %3168, %691
  %3178 = fmul fast float %3177, %689
  %3179 = fsub fast float 1.000000e+00, %689
  %3180 = call float @dx.op.unary.f32(i32 7, float %3179)  ; Saturate(value)
  %3181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3182 = extractvalue %dx.types.CBufRet.f32 %3181, 3
  %3183 = fmul fast float %3182, %3180
  %3184 = fadd fast float %3183, %3178
  %3185 = fsub fast float 1.000000e+00, %1330
  %3186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3187 = extractvalue %dx.types.CBufRet.f32 %3186, 0
  %3188 = fmul fast float %3187, %3185
  %3189 = fsub fast float %3184, %3188
  %3190 = fadd fast float %3173, %3172
  %3191 = fmul fast float %3175, %3190
  %3192 = extractvalue %dx.types.CBufRet.f32 %3181, 1
  %3193 = fsub fast float %3189, %3192
  %3194 = extractvalue %dx.types.CBufRet.f32 %3181, 2
  %3195 = fmul fast float %3193, %3194
  %3196 = call float @dx.op.unary.f32(i32 7, float %3195)  ; Saturate(value)
  br label %3213

; <label>:3197                                    ; preds = %3162
  %3198 = fmul fast float %3171, %3168
  %3199 = fmul fast float %3175, %3172
  %3200 = fmul fast float %3175, %3173
  %3201 = fmul fast float %3198, %3175
  %3202 = add i32 %35, 132
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3202, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = and i32 %3204, 32
  %3206 = icmp eq i32 %3205, 0
  br i1 %3206, label %3213, label %3207

; <label>:3207                                    ; preds = %3197
  %3208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3209 = extractvalue %dx.types.CBufRet.f32 %3208, 0
  %3210 = fmul fast float %3209, 0x3FE99999A0000000
  %3211 = fadd fast float %3209, %3199
  %3212 = fadd fast float %3210, %3201
  br label %3213

; <label>:3213                                    ; preds = %3207, %3197, %3176
  %3214 = phi float [ %3191, %3176 ], [ %3211, %3207 ], [ %3199, %3197 ]
  %3215 = phi float [ %3196, %3176 ], [ %3200, %3207 ], [ %3200, %3197 ]
  %3216 = phi float [ 1.000000e+00, %3176 ], [ %3212, %3207 ], [ %3201, %3197 ]
  %3217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3218 = extractvalue %dx.types.CBufRet.f32 %3217, 0
  %3219 = fmul fast float %3218, %3164
  %3220 = fmul fast float %3218, %3165
  %3221 = fadd fast float %3164, %3163
  %3222 = select i1 %175, float %3221, float %3163
  %3223 = fmul float %3222, %3218
  %3224 = select i1 %175, float 0.000000e+00, float %3219
  %3225 = select i1 %175, float 0.000000e+00, float %3220
  %3226 = fmul fast float %3214, %3169
  %3227 = fmul fast float %3215, %3170
  %3228 = fmul fast float %3216, %3171
  %3229 = fadd fast float %3223, %3226
  %3230 = fadd fast float %3224, %3227
  %3231 = fadd fast float %3225, %3228
  %3232 = select i1 %175, float %3215, float %3230
  %3233 = select i1 %175, float %3216, float %3231
  %3234 = call float @dx.op.binary.f32(i32 36, float %3229, float 3.225500e+04)  ; FMin(a,b)
  %3235 = call float @dx.op.binary.f32(i32 36, float %3232, float 3.225500e+04)  ; FMin(a,b)
  %3236 = call float @dx.op.binary.f32(i32 36, float %3233, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3234)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3235)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3236)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!47}
!dx.entryPoints = !{!48}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !39, !42}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !16}
!23 = !{i32 15, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!39 = !{!40, !41}
!40 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!41 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!42 = !{!43, !44, !45, !46}
!43 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!44 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!45 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!46 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!47 = !{[28 x i32] [i32 26, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0]}
!48 = !{void ()* @ps_main, !"ps_main", !49, !4, !68}
!49 = !{!50, !66, null}
!50 = !{!51, !54, !55, !57, !59, !60, !62, !64, !65}
!51 = !{i32 0, !"SV_Position", i8 9, i8 3, !52, i8 4, i32 1, i8 4, i32 0, i8 0, !53}
!52 = !{i32 0}
!53 = !{i32 3, i32 11}
!54 = !{i32 1, !"COLOR", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!55 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 2, i32 2, i8 0, !56}
!56 = !{i32 3, i32 3}
!57 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 3, i8 0, !58}
!58 = !{i32 3, i32 7}
!59 = !{i32 4, !"NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 4, i8 0, !58}
!60 = !{i32 5, !"TANGENT", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 5, i8 0, !61}
!61 = !{i32 3, i32 15}
!62 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !52, i8 1, i32 1, i8 1, i32 6, i8 0, !63}
!63 = !{i32 3, i32 1}
!64 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !52, i8 1, i32 1, i8 1, i32 6, i8 1, null}
!65 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!66 = !{!67}
!67 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!68 = !{i32 0, i64 24}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}

