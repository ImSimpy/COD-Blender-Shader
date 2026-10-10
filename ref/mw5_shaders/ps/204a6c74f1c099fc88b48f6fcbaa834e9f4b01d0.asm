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
; shader hash: 1799e48eee75bd81c14e8ac6b5a0afa9
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
  br i1 %215, label %744, label %216

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
  %322 = add i32 %35, 152
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
  %345 = add i32 %35, 172
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
  %526 = add i32 %35, 116
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
  br i1 %538, label %679, label %539

; <label>:539                                     ; preds = %517
  %540 = add i32 %35, 44
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = add i32 %35, 156
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = add i32 %545, 0
  %547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %546, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %548 = add i32 %35, 120
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = extractvalue %dx.types.ResRet.i32 %549, 1
  %552 = extractvalue %dx.types.ResRet.i32 %549, 2
  %553 = extractvalue %dx.types.ResRet.i32 %549, 3
  %554 = bitcast i32 %551 to float
  %555 = bitcast i32 %552 to float
  %556 = bitcast i32 %553 to float
  %557 = add i32 %35, 136
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = extractvalue %dx.types.ResRet.i32 %558, 1
  %561 = extractvalue %dx.types.ResRet.i32 %558, 2
  %562 = extractvalue %dx.types.ResRet.i32 %558, 3
  %563 = bitcast i32 %560 to float
  %564 = bitcast i32 %561 to float
  %565 = bitcast i32 %562 to float
  %566 = fmul fast float %554, %317
  %567 = fmul fast float %554, %318
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 3
  %570 = fmul fast float %569, %555
  %571 = fmul fast float %569, %556
  %572 = fadd fast float %570, %566
  %573 = fadd fast float %571, %567
  %574 = fmul fast float %563, %317
  %575 = fmul fast float %563, %318
  %576 = fmul fast float %569, %564
  %577 = fmul fast float %569, %565
  %578 = fadd fast float %576, %574
  %579 = fadd fast float %577, %575
  %580 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %547, i32 0)  ; GetDimensions(handle,mipLevel)
  %581 = extractvalue %dx.types.Dimensions %580, 3
  %582 = sitofp i32 %581 to float
  %583 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %547, %dx.types.Handle %51, float %572, float %573, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %584 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %547, %dx.types.Handle %51, float %578, float %579, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %547, %dx.types.Handle %51, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  %587 = extractvalue %dx.types.ResRet.f32 %585, 1
  %588 = extractvalue %dx.types.ResRet.f32 %585, 2
  %589 = extractvalue %dx.types.ResRet.f32 %585, 3
  %590 = and i32 %542, 255
  %591 = uitofp i32 %590 to float
  %592 = lshr i32 %542, 8
  %593 = and i32 %592, 255
  %594 = uitofp i32 %593 to float
  %595 = lshr i32 %542, 16
  %596 = and i32 %595, 255
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %597, 0x3F70101000000000
  %599 = fmul fast float %586, %591
  %600 = fadd fast float %599, %594
  %601 = fadd fast float %587, -5.000000e-01
  %602 = fadd fast float %589, -5.000000e-01
  %603 = fmul fast float %601, %598
  %604 = fmul fast float %602, %598
  %605 = fadd fast float %603, 5.000000e-01
  %606 = fadd fast float %604, 5.000000e-01
  %607 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %547, %dx.types.Handle %51, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = extractvalue %dx.types.ResRet.f32 %607, 1
  %610 = extractvalue %dx.types.ResRet.f32 %607, 2
  %611 = extractvalue %dx.types.ResRet.f32 %607, 3
  %612 = fmul fast float %608, %591
  %613 = fadd fast float %612, %594
  %614 = fadd fast float %609, -5.000000e-01
  %615 = fadd fast float %611, -5.000000e-01
  %616 = fmul fast float %614, %598
  %617 = fmul fast float %615, %598
  %618 = fadd fast float %616, 5.000000e-01
  %619 = fadd fast float %617, 5.000000e-01
  %620 = fmul fast float %605, 2.000000e+00
  %621 = fadd fast float %620, -1.000000e+00
  %622 = fmul fast float %606, 2.000000e+00
  %623 = fadd fast float %622, -1.000000e+00
  %624 = fadd fast float %621, %623
  %625 = fmul fast float %624, 5.000000e-01
  %626 = fsub fast float %621, %623
  %627 = fmul fast float %626, 5.000000e-01
  %628 = call float @dx.op.unary.f32(i32 6, float %625)  ; FAbs(value)
  %629 = fsub fast float 1.000000e+00, %628
  %630 = call float @dx.op.unary.f32(i32 6, float %627)  ; FAbs(value)
  %631 = fsub fast float %629, %630
  %632 = call float @dx.op.dot3.f32(i32 55, float %625, float %627, float %631, float %625, float %627, float %631)  ; Dot3(ax,ay,az,bx,by,bz)
  %633 = call float @dx.op.unary.f32(i32 25, float %632)  ; Rsqrt(value)
  %634 = fmul fast float %618, 2.000000e+00
  %635 = fadd fast float %634, -1.000000e+00
  %636 = fmul fast float %619, 2.000000e+00
  %637 = fadd fast float %636, -1.000000e+00
  %638 = fadd fast float %635, %637
  %639 = fmul fast float %638, 5.000000e-01
  %640 = fsub fast float %635, %637
  %641 = fmul fast float %640, 5.000000e-01
  %642 = call float @dx.op.unary.f32(i32 6, float %639)  ; FAbs(value)
  %643 = fsub fast float 1.000000e+00, %642
  %644 = call float @dx.op.unary.f32(i32 6, float %641)  ; FAbs(value)
  %645 = fsub fast float %643, %644
  %646 = call float @dx.op.dot3.f32(i32 55, float %639, float %641, float %645, float %639, float %641, float %645)  ; Dot3(ax,ay,az,bx,by,bz)
  %647 = call float @dx.op.unary.f32(i32 25, float %646)  ; Rsqrt(value)
  %648 = fadd fast float %582, -1.000000e+00
  %649 = fsub fast float %648, %583
  %650 = fmul fast float %649, 5.000000e-01
  %651 = call float @dx.op.unary.f32(i32 7, float %650)  ; Saturate(value)
  %652 = fsub fast float %648, %584
  %653 = fmul fast float %652, 5.000000e-01
  %654 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  %655 = bitcast i32 %550 to float
  %656 = bitcast i32 %559 to float
  %657 = fmul fast float %625, %655
  %658 = fmul fast float %657, %633
  %659 = fmul fast float %658, %651
  %660 = fmul fast float %627, %655
  %661 = fmul fast float %660, %633
  %662 = fmul fast float %661, %651
  %663 = fmul fast float %647, %656
  %664 = fmul fast float %663, %639
  %665 = fmul fast float %664, %654
  %666 = fmul fast float %663, %641
  %667 = fmul fast float %666, %654
  %668 = fadd fast float %665, %659
  %669 = fadd fast float %667, %662
  %670 = fmul fast float %588, %655
  %671 = fmul fast float %610, %656
  %672 = fadd fast float %671, %670
  %673 = fmul fast float %600, %655
  %674 = fmul fast float %613, %656
  %675 = fadd fast float %674, %673
  %676 = fmul fast float %675, 0x3F70101000000000
  %677 = call float @dx.op.dot2.f32(i32 54, float %668, float %669, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %678 = call float @dx.op.dot2.f32(i32 54, float %668, float %669, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %679

; <label>:679                                     ; preds = %539, %517
  %680 = phi float [ %676, %539 ], [ 0x3FD6666660000000, %517 ]
  %681 = phi float [ %677, %539 ], [ 0.000000e+00, %517 ]
  %682 = phi float [ %678, %539 ], [ 0.000000e+00, %517 ]
  %683 = phi float [ %672, %539 ], [ 1.000000e+00, %517 ]
  %684 = add i32 %35, 64
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %684, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = lshr i32 %686, 22
  %688 = shl nuw nsw i32 %687, 5
  %689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %688)  ; LegacyF16ToF32(value)
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = and i32 %691, 64
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %727, label %694

; <label>:694                                     ; preds = %679
  %695 = add i32 %35, 160
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = add i32 %697, 0
  %699 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %698, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = and i32 %701, 131072
  %703 = icmp eq i32 %702, 0
  %704 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %699, %dx.types.Handle %51, float %317, float %318, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = extractvalue %dx.types.ResRet.f32 %704, 1
  %707 = extractvalue %dx.types.ResRet.f32 %704, 2
  %708 = fmul fast float %705, %181
  %709 = fmul fast float %706, %184
  %710 = fmul fast float %707, %187
  br i1 %703, label %717, label %711

; <label>:711                                     ; preds = %694
  %712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.f32 %712, 0
  %714 = fmul fast float %713, %708
  %715 = fmul fast float %713, %709
  %716 = fmul fast float %713, %710
  br label %717

; <label>:717                                     ; preds = %711, %694
  %718 = phi float [ %714, %711 ], [ %708, %694 ]
  %719 = phi float [ %715, %711 ], [ %709, %694 ]
  %720 = phi float [ %716, %711 ], [ %710, %694 ]
  %721 = fmul fast float %718, %689
  %722 = select i1 %175, float %721, float %718
  %723 = call float @dx.op.dot3.f32(i32 55, float %722, float %719, float %720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %724 = select i1 %175, float 0.000000e+00, float %718
  %725 = select i1 %175, float %723, float %719
  %726 = select i1 %175, float 0.000000e+00, float %720
  br label %727

; <label>:727                                     ; preds = %717, %679
  %728 = phi float [ %724, %717 ], [ 0.000000e+00, %679 ]
  %729 = phi float [ %725, %717 ], [ 0.000000e+00, %679 ]
  %730 = phi float [ %726, %717 ], [ 0.000000e+00, %679 ]
  %731 = add i32 %35, 48
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = and i32 %733, 255
  %735 = uitofp i32 %734 to float
  %736 = lshr i32 %733, 8
  %737 = and i32 %736, 255
  %738 = uitofp i32 %737 to float
  %739 = call float @dx.op.dot3.f32(i32 55, float %532, float %533, float %534, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %740 = fmul fast float %738, %739
  %741 = fadd fast float %740, %735
  %742 = fmul fast float %741, 0x3F70101020000000
  %743 = call float @dx.op.unary.f32(i32 7, float %742)  ; Saturate(value)
  br label %744

; <label>:744                                     ; preds = %727, %174
  %745 = phi float [ 0.000000e+00, %174 ], [ %681, %727 ]
  %746 = phi float [ 0.000000e+00, %174 ], [ %682, %727 ]
  %747 = phi float [ 0.000000e+00, %174 ], [ %532, %727 ]
  %748 = phi float [ 0.000000e+00, %174 ], [ %533, %727 ]
  %749 = phi float [ 0.000000e+00, %174 ], [ %534, %727 ]
  %750 = phi float [ 0.000000e+00, %174 ], [ %728, %727 ]
  %751 = phi float [ 0.000000e+00, %174 ], [ %729, %727 ]
  %752 = phi float [ 0.000000e+00, %174 ], [ %730, %727 ]
  %753 = phi float [ 0.000000e+00, %174 ], [ %518, %727 ]
  %754 = phi float [ 0.000000e+00, %174 ], [ 1.000000e+00, %727 ]
  %755 = phi float [ 0.000000e+00, %174 ], [ %680, %727 ]
  %756 = phi float [ 0.000000e+00, %174 ], [ %683, %727 ]
  %757 = phi float [ 0.000000e+00, %174 ], [ %743, %727 ]
  %758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %759 = extractvalue %dx.types.CBufRet.f32 %758, 0
  %760 = call float @dx.op.dot2.f32(i32 54, float %745, float %746, float %745, float %746)  ; Dot2(ax,ay,bx,by)
  %761 = fmul fast float %760, 0x3FE3333340000000
  %762 = fsub fast float 1.000000e+00, %761
  %763 = call float @dx.op.dot3.f32(i32 55, float %745, float %746, float %762, float %745, float %746, float %762)  ; Dot3(ax,ay,az,bx,by,bz)
  %764 = call float @dx.op.unary.f32(i32 25, float %763)  ; Rsqrt(value)
  %765 = fmul fast float %764, %745
  %766 = fmul fast float %764, %746
  %767 = fmul fast float %762, %764
  %768 = fmul fast float %767, %40
  %769 = fmul fast float %767, %41
  %770 = fmul fast float %767, %42
  %771 = fmul fast float %765, %36
  %772 = fmul fast float %765, %37
  %773 = fmul fast float %765, %38
  %774 = fadd fast float %768, %771
  %775 = fadd fast float %769, %772
  %776 = fadd fast float %770, %773
  %777 = fmul fast float %766, %66
  %778 = fmul fast float %766, %67
  %779 = fmul fast float %766, %68
  %780 = fadd fast float %774, %777
  %781 = fadd fast float %775, %778
  %782 = fadd fast float %776, %779
  %783 = call float @dx.op.dot3.f32(i32 55, float %780, float %781, float %782, float %780, float %781, float %782)  ; Dot3(ax,ay,az,bx,by,bz)
  %784 = call float @dx.op.unary.f32(i32 25, float %783)  ; Rsqrt(value)
  %785 = fmul fast float %780, %784
  %786 = fmul fast float %781, %784
  %787 = fmul fast float %782, %784
  %788 = fadd fast float %753, 0xBFB99999A0000000
  %789 = call float @dx.op.unary.f32(i32 7, float %788)  ; Saturate(value)
  %790 = fmul fast float %789, 0x3FF1C71C80000000
  %791 = call float @dx.op.binary.f32(i32 36, float %753, float 0x3FB99999A0000000)  ; FMin(a,b)
  %792 = fsub fast float 1.000000e+00, %790
  %793 = call float @dx.op.unary.f32(i32 7, float %792)  ; Saturate(value)
  %794 = fmul fast float %793, %747
  %795 = fmul fast float %793, %748
  %796 = fmul fast float %793, %749
  %797 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  %798 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  %799 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  %800 = fmul fast float %790, %747
  %801 = fmul fast float %790, %748
  %802 = fmul fast float %790, %749
  %803 = fadd fast float %800, %791
  %804 = fadd fast float %801, %791
  %805 = fadd fast float %802, %791
  %806 = call float @dx.op.unary.f32(i32 7, float %803)  ; Saturate(value)
  %807 = call float @dx.op.unary.f32(i32 7, float %804)  ; Saturate(value)
  %808 = call float @dx.op.unary.f32(i32 7, float %805)  ; Saturate(value)
  %809 = call float @dx.op.unary.f32(i32 7, float %755)  ; Saturate(value)
  %810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %811 = extractvalue %dx.types.CBufRet.i32 %810, 3
  %812 = and i32 %811, 8
  %813 = icmp ne i32 %812, 0
  %814 = call float @dx.op.binary.f32(i32 35, float %797, float %747)  ; FMax(a,b)
  %815 = call float @dx.op.binary.f32(i32 35, float %798, float %747)  ; FMax(a,b)
  %816 = call float @dx.op.binary.f32(i32 35, float %799, float %747)  ; FMax(a,b)
  %817 = call float @dx.op.dot3.f32(i32 55, float %797, float %798, float %799, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %818 = select i1 %175, float %747, float %797
  %819 = select i1 %175, float %817, float %798
  %820 = select i1 %175, float 1.000000e+00, float %799
  %821 = select i1 %813, float %814, float %818
  %822 = select i1 %813, float %815, float %819
  %823 = select i1 %813, float %816, float %820
  %824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.f32 %824, 0
  %826 = extractvalue %dx.types.CBufRet.f32 %824, 1
  %827 = extractvalue %dx.types.CBufRet.f32 %824, 2
  %828 = fadd fast float %825, %102
  %829 = fadd fast float %826, %103
  %830 = fadd fast float %827, %104
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 0
  %833 = extractvalue %dx.types.CBufRet.f32 %831, 1
  %834 = fsub fast float %828, %832
  %835 = fsub fast float %829, %833
  %836 = fmul fast float %834, %834
  %837 = fmul fast float %835, %835
  %838 = fadd fast float %836, %837
  %839 = call float @dx.op.unary.f32(i32 24, float %838)  ; Sqrt(value)
  %840 = extractvalue %dx.types.CBufRet.f32 %831, 2
  %841 = fcmp fast olt float %839, %840
  br i1 %841, label %842, label %909

; <label>:842                                     ; preds = %744
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 0
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 0
  %849 = extractvalue %dx.types.CBufRet.f32 %843, 1
  %850 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %851 = extractvalue %dx.types.CBufRet.f32 %847, 1
  %852 = extractvalue %dx.types.CBufRet.f32 %843, 3
  %853 = extractvalue %dx.types.CBufRet.f32 %845, 3
  %854 = extractvalue %dx.types.CBufRet.f32 %847, 3
  %855 = fadd fast float %852, %828
  %856 = fadd fast float %853, %829
  %857 = fadd fast float %854, %830
  %858 = fmul fast float %855, %844
  %859 = call float @dx.op.tertiary.f32(i32 46, float %856, float %846, float %858)  ; FMad(a,b,c)
  %860 = call float @dx.op.tertiary.f32(i32 46, float %857, float %848, float %859)  ; FMad(a,b,c)
  %861 = fmul fast float %855, %849
  %862 = call float @dx.op.tertiary.f32(i32 46, float %856, float %850, float %861)  ; FMad(a,b,c)
  %863 = call float @dx.op.tertiary.f32(i32 46, float %857, float %851, float %862)  ; FMad(a,b,c)
  %864 = fsub fast float %860, %852
  %865 = fsub fast float %863, %853
  %866 = fsub fast float %864, %832
  %867 = fadd fast float %866, %840
  %868 = fsub fast float %865, %833
  %869 = fadd fast float %868, %840
  %870 = extractvalue %dx.types.CBufRet.f32 %831, 3
  %871 = fmul fast float %867, %870
  %872 = fmul fast float %869, %870
  %873 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  %874 = call float @dx.op.unary.f32(i32 7, float %872)  ; Saturate(value)
  %875 = fsub fast float 1.000000e+00, %873
  %876 = fsub fast float 1.000000e+00, %874
  %877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %31, float %875, float %876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = fcmp fast ugt float %878, 0.000000e+00
  br i1 %879, label %880, label %1183

; <label>:880                                     ; preds = %842
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 2
  %883 = fmul fast float %882, %878
  %884 = extractvalue %dx.types.CBufRet.f32 %881, 3
  %885 = fadd fast float %884, %883
  %886 = extractvalue %dx.types.CBufRet.f32 %847, 2
  %887 = fadd fast float %885, %854
  %888 = fmul fast float %860, %848
  %889 = call float @dx.op.tertiary.f32(i32 46, float %863, float %851, float %888)  ; FMad(a,b,c)
  %890 = call float @dx.op.tertiary.f32(i32 46, float %887, float %886, float %889)  ; FMad(a,b,c)
  %891 = fsub fast float %890, %854
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %894 = fsub fast float %891, %893
  %895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %31, float %875, float %876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %896 = extractvalue %dx.types.ResRet.f32 %895, 0
  %897 = extractvalue %dx.types.ResRet.f32 %895, 1
  %898 = extractvalue %dx.types.ResRet.f32 %895, 2
  %899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %31, float %875, float %876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 0
  %901 = extractvalue %dx.types.ResRet.f32 %899, 1
  %902 = extractvalue %dx.types.ResRet.f32 %899, 2
  %903 = fadd fast float %900, %896
  %904 = fmul fast float %903, 0x3F847AE140000000
  %905 = fadd fast float %901, %897
  %906 = fmul fast float %905, 0x3F847AE140000000
  %907 = fadd fast float %902, %898
  %908 = fmul fast float %907, 0x3F847AE140000000
  br label %1183

; <label>:909                                     ; preds = %744
  %910 = and i32 %149, 1
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %1183, label %912

; <label>:912                                     ; preds = %909
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.f32 %915, 0
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 0
  %919 = extractvalue %dx.types.CBufRet.f32 %913, 1
  %920 = extractvalue %dx.types.CBufRet.f32 %915, 1
  %921 = extractvalue %dx.types.CBufRet.f32 %917, 1
  %922 = extractvalue %dx.types.CBufRet.f32 %913, 3
  %923 = extractvalue %dx.types.CBufRet.f32 %915, 3
  %924 = extractvalue %dx.types.CBufRet.f32 %917, 3
  %925 = fadd fast float %922, %828
  %926 = fadd fast float %923, %829
  %927 = fadd fast float %924, %830
  %928 = fmul fast float %925, %914
  %929 = call float @dx.op.tertiary.f32(i32 46, float %926, float %916, float %928)  ; FMad(a,b,c)
  %930 = call float @dx.op.tertiary.f32(i32 46, float %927, float %918, float %929)  ; FMad(a,b,c)
  %931 = fmul fast float %925, %919
  %932 = call float @dx.op.tertiary.f32(i32 46, float %926, float %920, float %931)  ; FMad(a,b,c)
  %933 = call float @dx.op.tertiary.f32(i32 46, float %927, float %921, float %932)  ; FMad(a,b,c)
  %934 = fsub fast float %930, %922
  %935 = fsub fast float %933, %923
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 0
  %938 = extractvalue %dx.types.CBufRet.f32 %936, 1
  %939 = extractvalue %dx.types.CBufRet.f32 %936, 2
  %940 = extractvalue %dx.types.CBufRet.f32 %936, 3
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 3
  %943 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.i32 %943, 0
  %945 = extractvalue %dx.types.CBufRet.i32 %943, 1
  %946 = udiv i32 %945, %944
  %947 = fsub fast float %934, %937
  %948 = fsub fast float %935, %938
  %949 = call float @dx.op.binary.f32(i32 35, float %947, float 0.000000e+00)  ; FMax(a,b)
  %950 = call float @dx.op.binary.f32(i32 35, float %948, float 0.000000e+00)  ; FMax(a,b)
  %951 = call float @dx.op.binary.f32(i32 36, float %949, float %939)  ; FMin(a,b)
  %952 = call float @dx.op.binary.f32(i32 36, float %950, float %940)  ; FMin(a,b)
  %953 = add i32 %944, -1
  %954 = add i32 %946, -1
  %955 = fmul fast float %951, %942
  %956 = fmul fast float %952, %942
  %957 = fptoui float %955 to i32
  %958 = fptoui float %956 to i32
  %959 = call i32 @dx.op.binary.i32(i32 40, i32 %957, i32 %953)  ; UMin(a,b)
  %960 = call i32 @dx.op.binary.i32(i32 40, i32 %958, i32 %954)  ; UMin(a,b)
  %961 = mul i32 %960, %944
  %962 = add i32 %961, %959
  %963 = shl i32 %962, 2
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = icmp eq i32 %965, -1
  br i1 %966, label %1183, label %967

; <label>:967                                     ; preds = %912
  %968 = mul i32 %965, 148
  %969 = add i32 %968, 4
  %970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.f32 %970, 0
  %972 = add i32 %968, 8
  %973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.f32 %973, 0
  %975 = add i32 %968, 36
  %976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 0
  %978 = add i32 %968, 60
  %979 = add i32 %968, 92
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = add i32 %968, 116
  %983 = fsub fast float %934, %971
  %984 = fsub fast float %935, %974
  %985 = fmul fast float %942, %983
  %986 = fmul fast float %942, %984
  %987 = call float @dx.op.unary.f32(i32 7, float %985)  ; Saturate(value)
  %988 = call float @dx.op.unary.f32(i32 7, float %986)  ; Saturate(value)
  %989 = fsub fast float 1.000000e+00, %988
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 2
  %992 = call float @dx.op.unary.f32(i32 83, float %987)  ; DerivCoarseX(value)
  %993 = call float @dx.op.unary.f32(i32 83, float %989)  ; DerivCoarseX(value)
  %994 = call float @dx.op.unary.f32(i32 84, float %987)  ; DerivCoarseY(value)
  %995 = call float @dx.op.unary.f32(i32 84, float %989)  ; DerivCoarseY(value)
  %996 = fmul fast float %992, %991
  %997 = fmul fast float %993, %991
  %998 = fmul fast float %994, %991
  %999 = fmul fast float %995, %991
  %1000 = call float @dx.op.dot2.f32(i32 54, float %998, float %999, float %998, float %999)  ; Dot2(ax,ay,bx,by)
  %1001 = call float @dx.op.dot2.f32(i32 54, float %996, float %997, float %996, float %997)  ; Dot2(ax,ay,bx,by)
  %1002 = call float @dx.op.binary.f32(i32 35, float %1001, float %1000)  ; FMax(a,b)
  %1003 = call float @dx.op.unary.f32(i32 23, float %1002)  ; Log(value)
  %1004 = fmul fast float %1003, 5.000000e-01
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 1
  %1007 = fadd fast float %1006, %1004
  %1008 = call float @dx.op.binary.f32(i32 35, float %1007, float 0.000000e+00)  ; FMax(a,b)
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 3
  %1011 = fadd fast float %1010, %1008
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 3
  %1014 = fadd fast float %1011, %1013
  %1015 = add i32 %981, 0
  %1016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1015, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1017 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1016, i32 0)  ; GetDimensions(handle,mipLevel)
  %1018 = extractvalue %dx.types.Dimensions %1017, 0
  %1019 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1018)  ; FirstbitLo(value)
  %1020 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.i32 %1020, 1
  %1022 = sub nsw i32 %1021, %1019
  %1023 = sitofp i32 %1022 to float
  %1024 = fsub fast float %1014, %1023
  %1025 = call float @dx.op.binary.f32(i32 35, float %1024, float 0.000000e+00)  ; FMax(a,b)
  %1026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1016, %dx.types.Handle %30, float %987, float %989, float %977, float undef, i32 0, i32 0, i32 undef, float %1025)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1027 = extractvalue %dx.types.ResRet.f32 %1026, 0
  %1028 = fcmp ule float %1027, 0x3FE0101020000000
  %1029 = extractvalue %dx.types.CBufRet.i32 %1020, 0
  %1030 = and i32 %1029, 128
  %1031 = icmp ne i32 %1030, 0
  %1032 = and i1 %1028, %1031
  br i1 %1032, label %1183, label %1033

; <label>:1033                                    ; preds = %967
  %1034 = add i32 %968, 20
  %1035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = add i32 %968, 24
  %1038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.f32 %1038, 0
  %1040 = add i32 %968, 40
  %1041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = add i32 %968, 96
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 2
  %1048 = fmul fast float %1047, %987
  %1049 = fmul fast float %1047, %989
  %1050 = extractvalue %dx.types.CBufRet.f32 %1046, 3
  %1051 = fadd fast float %1048, %1050
  %1052 = fadd fast float %1049, %1050
  %1053 = add i32 %1045, 0
  %1054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1053, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1055 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1054, i32 0)  ; GetDimensions(handle,mipLevel)
  %1056 = extractvalue %dx.types.Dimensions %1055, 0
  %1057 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1056)  ; FirstbitLo(value)
  %1058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.i32 %1058, 1
  %1060 = sub nsw i32 %1059, %1057
  %1061 = sitofp i32 %1060 to float
  %1062 = fsub fast float %1011, %1061
  %1063 = call float @dx.op.binary.f32(i32 35, float %1062, float 0.000000e+00)  ; FMax(a,b)
  %1064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1054, %dx.types.Handle %30, float %1051, float %1052, float %1042, float undef, i32 0, i32 0, i32 undef, float %1063)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1065 = extractvalue %dx.types.ResRet.f32 %1064, 0
  %1066 = fmul fast float %1065, %1036
  %1067 = fadd fast float %1066, %1039
  %1068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.f32 %1068, 0
  %1070 = extractvalue %dx.types.CBufRet.f32 %1068, 1
  %1071 = extractvalue %dx.types.CBufRet.f32 %1068, 2
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 3
  %1074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.f32 %1074, 3
  %1076 = extractvalue %dx.types.CBufRet.f32 %1068, 3
  %1077 = fadd fast float %1073, %934
  %1078 = fadd fast float %1075, %935
  %1079 = fadd fast float %1067, %1076
  %1080 = fmul fast float %1077, %1069
  %1081 = call float @dx.op.tertiary.f32(i32 46, float %1078, float %1070, float %1080)  ; FMad(a,b,c)
  %1082 = call float @dx.op.tertiary.f32(i32 46, float %1079, float %1071, float %1081)  ; FMad(a,b,c)
  %1083 = fsub fast float %1082, %1076
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1086 = fsub fast float %1083, %1085
  %1087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.i32 %1087, 0
  %1089 = call i32 @dx.op.binary.i32(i32 40, i32 %965, i32 %1088)  ; UMin(a,b)
  %1090 = mul i32 %1089, 36
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = add i32 %1090, 4
  %1094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.f32 %1094, 0
  %1096 = fmul fast float %1095, %987
  %1097 = fmul fast float %1095, %989
  %1098 = extractvalue %dx.types.CBufRet.f32 %1094, 1
  %1099 = fadd fast float %1096, %1098
  %1100 = fadd fast float %1097, %1098
  %1101 = icmp eq i32 %1092, 0
  br i1 %1101, label %1170, label %1102

; <label>:1102                                    ; preds = %1033
  br label %1103

; <label>:1103                                    ; preds = %1160, %1102
  %1104 = phi float [ %1161, %1160 ], [ 0.000000e+00, %1102 ]
  %1105 = phi float [ %1162, %1160 ], [ 0.000000e+00, %1102 ]
  %1106 = phi float [ %1163, %1160 ], [ 0.000000e+00, %1102 ]
  %1107 = phi float [ %1164, %1160 ], [ 0.000000e+00, %1102 ]
  %1108 = phi float [ %1165, %1160 ], [ 0.000000e+00, %1102 ]
  %1109 = phi float [ %1166, %1160 ], [ 0.000000e+00, %1102 ]
  %1110 = phi i32 [ %1167, %1160 ], [ 0, %1102 ]
  %1111 = shl i32 %1110, 2
  %1112 = add i32 %978, %1111
  %1113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.f32 %1113, 0
  %1115 = add i32 %982, %1111
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = add i32 %1117, 0
  %1119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1118, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1120 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1119, i32 0)  ; GetDimensions(handle,mipLevel)
  %1121 = extractvalue %dx.types.Dimensions %1120, 0
  %1122 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1121)  ; FirstbitLo(value)
  %1123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.i32 %1123, 1
  %1125 = sub nsw i32 %1124, %1122
  %1126 = sitofp i32 %1125 to float
  %1127 = fsub fast float %1011, %1126
  %1128 = call float @dx.op.binary.f32(i32 35, float %1127, float 0.000000e+00)  ; FMax(a,b)
  %1129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1119, %dx.types.Handle %30, float %1099, float %1100, float %1114, float undef, i32 0, i32 0, i32 undef, float %1128)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1130 = extractvalue %dx.types.ResRet.f32 %1129, 0
  %1131 = fcmp fast ogt float %1130, 0.000000e+00
  br i1 %1131, label %1132, label %1160

; <label>:1132                                    ; preds = %1103
  %1133 = add i32 %1093, %1111
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = and i32 %1135, 32767
  %1137 = mul nuw nsw i32 %1136, 928
  %1138 = add nuw nsw i32 %1137, 48
  %1139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = add nuw nsw i32 %1137, 60
  %1144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.ResRet.f32 %1144, 1
  %1147 = extractvalue %dx.types.ResRet.f32 %1144, 2
  %1148 = fmul fast float %1140, %1130
  %1149 = fmul fast float %1141, %1130
  %1150 = fmul fast float %1142, %1130
  %1151 = fadd fast float %1148, %1104
  %1152 = fadd fast float %1149, %1105
  %1153 = fadd fast float %1150, %1106
  %1154 = fmul fast float %1145, %1130
  %1155 = fmul fast float %1146, %1130
  %1156 = fmul fast float %1147, %1130
  %1157 = fadd fast float %1154, %1107
  %1158 = fadd fast float %1155, %1108
  %1159 = fadd fast float %1156, %1109
  br label %1160

; <label>:1160                                    ; preds = %1132, %1103
  %1161 = phi float [ %1151, %1132 ], [ %1104, %1103 ]
  %1162 = phi float [ %1152, %1132 ], [ %1105, %1103 ]
  %1163 = phi float [ %1153, %1132 ], [ %1106, %1103 ]
  %1164 = phi float [ %1157, %1132 ], [ %1107, %1103 ]
  %1165 = phi float [ %1158, %1132 ], [ %1108, %1103 ]
  %1166 = phi float [ %1159, %1132 ], [ %1109, %1103 ]
  %1167 = add nuw i32 %1110, 1
  %1168 = icmp eq i32 %1167, %1092
  br i1 %1168, label %1169, label %1103

; <label>:1169                                    ; preds = %1160
  br label %1170

; <label>:1170                                    ; preds = %1169, %1033
  %1171 = phi float [ 0.000000e+00, %1033 ], [ %1161, %1169 ]
  %1172 = phi float [ 0.000000e+00, %1033 ], [ %1162, %1169 ]
  %1173 = phi float [ 0.000000e+00, %1033 ], [ %1163, %1169 ]
  %1174 = phi float [ 0.000000e+00, %1033 ], [ %1164, %1169 ]
  %1175 = phi float [ 0.000000e+00, %1033 ], [ %1165, %1169 ]
  %1176 = phi float [ 0.000000e+00, %1033 ], [ %1166, %1169 ]
  %1177 = fadd fast float %1174, %1171
  %1178 = fmul fast float %1177, 0x3F847AE140000000
  %1179 = fadd fast float %1175, %1172
  %1180 = fmul fast float %1179, 0x3F847AE140000000
  %1181 = fadd fast float %1176, %1173
  %1182 = fmul fast float %1181, 0x3F847AE140000000
  br label %1183

; <label>:1183                                    ; preds = %1170, %967, %912, %909, %880, %842
  %1184 = phi float [ %894, %880 ], [ -1.310720e+05, %842 ], [ %1086, %1170 ], [ -1.310720e+05, %912 ], [ -1.310720e+05, %967 ], [ -1.310720e+05, %909 ]
  %1185 = phi float [ %904, %880 ], [ 0.000000e+00, %842 ], [ %1178, %1170 ], [ 0.000000e+00, %912 ], [ 0.000000e+00, %967 ], [ 0.000000e+00, %909 ]
  %1186 = phi float [ %906, %880 ], [ 0.000000e+00, %842 ], [ %1180, %1170 ], [ 0.000000e+00, %912 ], [ 0.000000e+00, %967 ], [ 0.000000e+00, %909 ]
  %1187 = phi float [ %908, %880 ], [ 0.000000e+00, %842 ], [ %1182, %1170 ], [ 0.000000e+00, %912 ], [ 0.000000e+00, %967 ], [ 0.000000e+00, %909 ]
  %1188 = phi i1 [ true, %880 ], [ false, %842 ], [ true, %1170 ], [ false, %912 ], [ false, %967 ], [ false, %909 ]
  %1189 = and i32 %149, 3
  %1190 = icmp eq i32 %1189, 1
  %1191 = select i1 %1190, float 1.000000e+00, float 0.000000e+00
  %1192 = fsub fast float %1184, %104
  %1193 = call float @dx.op.unary.f32(i32 7, float %1192)  ; Saturate(value)
  %1194 = select i1 %1188, float %1193, float 1.000000e+00
  %1195 = fmul fast float %1194, %1191
  %1196 = icmp eq i32 %1189, 3
  %1197 = select i1 %1196, float 1.000000e+00, float %1195
  %1198 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1197)  ; FMax(a,b)
  %1199 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1200 = fcmp fast une float %1199, 0.000000e+00
  %1201 = call float @dx.op.dot3.f32(i32 55, float %102, float %103, float %104, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %1202 = call float @dx.op.unary.f32(i32 25, float %1201)  ; Rsqrt(value)
  br i1 %1200, label %1210, label %1203

; <label>:1203                                    ; preds = %1183
  %1204 = fmul fast float %1202, %102
  %1205 = fmul fast float %1202, %103
  %1206 = fmul fast float %1202, %104
  %1207 = fsub fast float -0.000000e+00, %1204
  %1208 = fsub fast float -0.000000e+00, %1205
  %1209 = fsub fast float -0.000000e+00, %1206
  br label %1378

; <label>:1210                                    ; preds = %1183
  %1211 = fmul fast float %102, %1202
  %1212 = fsub fast float -0.000000e+00, %1211
  %1213 = fmul fast float %103, %1202
  %1214 = fsub fast float -0.000000e+00, %1213
  %1215 = fmul fast float %104, %1202
  %1216 = fsub fast float -0.000000e+00, %1215
  %1217 = call float @dx.op.dot3.f32(i32 55, float %1212, float %1214, float %1216, float %40, float %41, float %42)  ; Dot3(ax,ay,az,bx,by,bz)
  %1218 = fmul fast float %1199, 2.500000e+00
  %1219 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  %1220 = fmul fast float %1199, 0x4013FFFFE0000000
  %1221 = fadd fast float %1220, 0xBFFFFFFFE0000000
  %1222 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1223 = fmul fast float %1199, 0x4004000020000000
  %1224 = fadd fast float %1223, 0xBFF8000040000000
  %1225 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1226 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1227 = fmul fast float %788, 1.000000e+01
  %1228 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1229 = fmul fast float %1228, 2.000000e+00
  %1230 = fsub fast float 3.000000e+00, %1229
  %1231 = fmul fast float %1228, %1228
  %1232 = fmul fast float %1231, %1230
  %1233 = fsub fast float 1.000000e+00, %1232
  %1234 = fsub fast float 0x3FE3333340000000, %809
  %1235 = fmul fast float %1234, 0x400AAAAAA0000000
  %1236 = call float @dx.op.unary.f32(i32 7, float %1235)  ; Saturate(value)
  %1237 = fmul fast float %1233, %1236
  %1238 = fmul fast float %821, 0x3FEA2B8620000000
  %1239 = fmul fast float %822, 0x3FEA2B8620000000
  %1240 = fmul fast float %823, 0x3FEA2B8620000000
  %1241 = fadd fast float %1238, 0x3FC81DFBA0000000
  %1242 = fmul fast float %1241, %821
  %1243 = fadd fast float %1242, 0x3F910E6020000000
  %1244 = fadd fast float %1239, 0x3FC81DFBA0000000
  %1245 = fmul fast float %1244, %822
  %1246 = fadd fast float %1245, 0x3F910E6020000000
  %1247 = fadd fast float %1240, 0x3FC81DFBA0000000
  %1248 = fmul fast float %1247, %823
  %1249 = fadd fast float %1248, 0x3F910E6020000000
  %1250 = call float @dx.op.unary.f32(i32 7, float %1243)  ; Saturate(value)
  %1251 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1252 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1253 = fsub fast float %1250, %821
  %1254 = fsub fast float %1251, %822
  %1255 = fsub fast float %1252, %823
  %1256 = fmul fast float %1253, %1226
  %1257 = fmul fast float %1256, %1237
  %1258 = fmul fast float %1254, %1226
  %1259 = fmul fast float %1258, %1237
  %1260 = fmul fast float %1255, %1226
  %1261 = fmul fast float %1260, %1237
  %1262 = fadd fast float %1257, %821
  %1263 = fadd fast float %1259, %822
  %1264 = fadd fast float %1261, %823
  %1265 = fmul fast float %756, %756
  %1266 = fmul fast float %1265, %1265
  %1267 = fadd fast float %1222, 1.000000e+00
  %1268 = fsub fast float %1267, %1237
  %1269 = call float @dx.op.unary.f32(i32 7, float %1268)  ; Saturate(value)
  %1270 = call float @dx.op.dot3.f32(i32 55, float %40, float %41, float %42, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1271 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1272 = fsub fast float 1.000000e+00, %1266
  %1273 = call float @dx.op.binary.f32(i32 36, float %1269, float %1272)  ; FMin(a,b)
  %1274 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1275 = call float @dx.op.binary.f32(i32 35, float %1273, float %1274)  ; FMax(a,b)
  %1276 = fadd fast float %1271, 0xBFE4CCCCC0000000
  %1277 = fmul fast float %1276, 0x4006DB6DA0000000
  %1278 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1279 = fmul fast float %1278, 2.000000e+00
  %1280 = fsub fast float 3.000000e+00, %1279
  %1281 = bitcast float %806 to i32
  %1282 = ashr i32 %1281, 1
  %1283 = add nsw i32 %1282, 532487669
  %1284 = bitcast i32 %1283 to float
  %1285 = fsub fast float 1.000000e+00, %1284
  %1286 = bitcast float %1285 to i32
  %1287 = sub nsw i32 2129859010, %1286
  %1288 = bitcast i32 %1287 to float
  %1289 = fmul fast float %1288, 2.000000e+00
  %1290 = bitcast float %807 to i32
  %1291 = ashr i32 %1290, 1
  %1292 = add nsw i32 %1291, 532487669
  %1293 = bitcast i32 %1292 to float
  %1294 = fsub fast float 1.000000e+00, %1293
  %1295 = bitcast float %1294 to i32
  %1296 = sub nsw i32 2129859010, %1295
  %1297 = bitcast i32 %1296 to float
  %1298 = fmul fast float %1297, 2.000000e+00
  %1299 = bitcast float %808 to i32
  %1300 = ashr i32 %1299, 1
  %1301 = add nsw i32 %1300, 532487669
  %1302 = bitcast i32 %1301 to float
  %1303 = fsub fast float 1.000000e+00, %1302
  %1304 = bitcast float %1303 to i32
  %1305 = sub nsw i32 2129859010, %1304
  %1306 = bitcast i32 %1305 to float
  %1307 = fmul fast float %1306, 2.000000e+00
  %1308 = fsub fast float 0x4002A9FBE0000000, %1289
  %1309 = fadd fast float %1289, 0x3FD54FDF00000000
  %1310 = bitcast float %1309 to i32
  %1311 = sub nsw i32 2129859010, %1310
  %1312 = bitcast i32 %1311 to float
  %1313 = fmul fast float %1312, %1308
  %1314 = fmul fast float %1313, %1313
  %1315 = fsub fast float 0x4002A9FBE0000000, %1298
  %1316 = fadd fast float %1298, 0x3FD54FDF00000000
  %1317 = bitcast float %1316 to i32
  %1318 = sub nsw i32 2129859010, %1317
  %1319 = bitcast i32 %1318 to float
  %1320 = fmul fast float %1319, %1315
  %1321 = fmul fast float %1320, %1320
  %1322 = fsub fast float 0x4002A9FBE0000000, %1307
  %1323 = fadd fast float %1307, 0x3FD54FDF00000000
  %1324 = bitcast float %1323 to i32
  %1325 = sub nsw i32 2129859010, %1324
  %1326 = bitcast i32 %1325 to float
  %1327 = fmul fast float %1326, %1322
  %1328 = fmul fast float %1327, %1327
  %1329 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1314)  ; FMax(a,b)
  %1330 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1321)  ; FMax(a,b)
  %1331 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1328)  ; FMax(a,b)
  %1332 = fsub fast float 1.000000e+00, %1217
  %1333 = fadd fast float %1332, %1233
  %1334 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1335 = fsub fast float 1.000000e+00, %1197
  %1336 = fmul fast float %1275, %1335
  %1337 = fmul fast float %1278, %1278
  %1338 = fmul fast float %1337, %1336
  %1339 = fmul fast float %1338, %1280
  %1340 = fmul fast float %1335, 0xBFE99999A0000000
  %1341 = fmul fast float %1340, %1226
  %1342 = fmul fast float %1341, %1237
  %1343 = fadd fast float %1342, 1.000000e+00
  %1344 = fadd fast float %809, -1.000000e+00
  %1345 = fmul fast float %1343, %1344
  %1346 = fadd fast float %1345, 1.000000e+00
  %1347 = fsub fast float %1329, %806
  %1348 = fsub fast float %1330, %807
  %1349 = fsub fast float %1331, %808
  %1350 = fmul fast float %1339, %1347
  %1351 = fmul fast float %1339, %1348
  %1352 = fmul fast float %1339, %1349
  %1353 = fadd fast float %1350, %806
  %1354 = fadd fast float %1351, %807
  %1355 = fadd fast float %1352, %808
  %1356 = fsub fast float %40, %785
  %1357 = fsub fast float %41, %786
  %1358 = fsub fast float %42, %787
  %1359 = fmul fast float %1339, %1356
  %1360 = fmul fast float %1339, %1357
  %1361 = fmul fast float %1339, %1358
  %1362 = fadd fast float %1359, %785
  %1363 = fadd fast float %1360, %786
  %1364 = fadd fast float %1361, %787
  %1365 = fmul fast float %1339, %1334
  %1366 = call float @dx.op.unary.f32(i32 7, float %1346)  ; Saturate(value)
  %1367 = fsub fast float 1.000000e+00, %1366
  %1368 = fmul fast float %1365, %1367
  %1369 = fadd fast float %1368, %1366
  %1370 = fsub fast float 1.000000e+00, %756
  %1371 = fmul fast float %1339, %1370
  %1372 = fadd fast float %1371, %756
  %1373 = call float @dx.op.dot3.f32(i32 55, float %1362, float %1363, float %1364, float %1362, float %1363, float %1364)  ; Dot3(ax,ay,az,bx,by,bz)
  %1374 = call float @dx.op.unary.f32(i32 25, float %1373)  ; Rsqrt(value)
  %1375 = fmul fast float %1362, %1374
  %1376 = fmul fast float %1363, %1374
  %1377 = fmul fast float %1364, %1374
  br label %1378

; <label>:1378                                    ; preds = %1210, %1203
  %1379 = phi float [ %1209, %1203 ], [ %1216, %1210 ]
  %1380 = phi float [ %1208, %1203 ], [ %1214, %1210 ]
  %1381 = phi float [ %1207, %1203 ], [ %1212, %1210 ]
  %1382 = phi float [ %1206, %1203 ], [ %1215, %1210 ]
  %1383 = phi float [ %1205, %1203 ], [ %1213, %1210 ]
  %1384 = phi float [ %1204, %1203 ], [ %1211, %1210 ]
  %1385 = phi float [ %821, %1203 ], [ %1262, %1210 ]
  %1386 = phi float [ %822, %1203 ], [ %1263, %1210 ]
  %1387 = phi float [ %823, %1203 ], [ %1264, %1210 ]
  %1388 = phi float [ %806, %1203 ], [ %1353, %1210 ]
  %1389 = phi float [ %807, %1203 ], [ %1354, %1210 ]
  %1390 = phi float [ %808, %1203 ], [ %1355, %1210 ]
  %1391 = phi float [ %785, %1203 ], [ %1375, %1210 ]
  %1392 = phi float [ %786, %1203 ], [ %1376, %1210 ]
  %1393 = phi float [ %787, %1203 ], [ %1377, %1210 ]
  %1394 = phi float [ %809, %1203 ], [ %1369, %1210 ]
  %1395 = phi float [ %756, %1203 ], [ %1372, %1210 ]
  %1396 = select i1 %175, float 0.000000e+00, float %1390
  %1397 = call float @dx.op.dot3.f32(i32 55, float %1391, float %1392, float %1393, float %1381, float %1380, float %1379)  ; Dot3(ax,ay,az,bx,by,bz)
  %1398 = call float @dx.op.unary.f32(i32 7, float %1397)  ; Saturate(value)
  %1399 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1383, float %1382, float %1391, float %1392, float %1393)  ; Dot3(ax,ay,az,bx,by,bz)
  %1400 = fmul fast float %1399, 2.000000e+00
  %1401 = fmul fast float %1400, %1391
  %1402 = fmul fast float %1400, %1392
  %1403 = fmul fast float %1400, %1393
  %1404 = fsub fast float %1384, %1401
  %1405 = fsub fast float %1383, %1402
  %1406 = fsub fast float %1382, %1403
  %1407 = call float @dx.op.binary.f32(i32 36, float %1395, float 1.000000e+00)  ; FMin(a,b)
  %1408 = fsub fast float 1.000000e+00, %1395
  %1409 = bitcast float %1408 to i32
  %1410 = sub nsw i32 2129859010, %1409
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 0
  %1413 = extractvalue %dx.types.CBufRet.f32 %1411, 1
  %1414 = fadd fast float %1412, %102
  %1415 = fadd fast float %1413, %103
  %1416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.i32 %1416, 0
  %1418 = icmp eq i32 %1417, 1
  br i1 %1418, label %1419, label %1454

; <label>:1419                                    ; preds = %1378
  %1420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1421 = extractvalue %dx.types.CBufRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.CBufRet.f32 %1420, 1
  %1423 = fsub fast float %1414, %1421
  %1424 = fsub fast float %1415, %1422
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 0
  %1427 = extractvalue %dx.types.CBufRet.f32 %1425, 1
  %1428 = fmul fast float %1423, %1426
  %1429 = fmul fast float %1424, %1427
  %1430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %1428, float %1429, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = fcmp fast ogt float %1431, 0.000000e+00
  %1433 = extractvalue %dx.types.CBufRet.i32 %1416, 3
  %1434 = icmp ne i32 %1433, 0
  %1435 = and i1 %1432, %1434
  br i1 %1435, label %1436, label %1454, !dx.controlflow.hints !69

; <label>:1436                                    ; preds = %1419
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 0
  %1439 = extractvalue %dx.types.CBufRet.f32 %1437, 1
  %1440 = fsub fast float %1414, %1438
  %1441 = fsub fast float %1415, %1439
  %1442 = fmul fast float %1440, %1440
  %1443 = fmul fast float %1441, %1441
  %1444 = fadd fast float %1442, %1443
  %1445 = uitofp i32 %1433 to float
  %1446 = fmul fast float %1445, %1445
  %1447 = fcmp fast ogt float %1444, %1446
  br i1 %1447, label %1454, label %1448

; <label>:1448                                    ; preds = %1436
  %1449 = call float @dx.op.unary.f32(i32 24, float %1444)  ; Sqrt(value)
  %1450 = fsub fast float %1445, %1449
  %1451 = fmul fast float %1450, 0x3F75555560000000
  %1452 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  %1453 = call float @dx.op.binary.f32(i32 36, float %1452, float %1431)  ; FMin(a,b)
  br label %1454

; <label>:1454                                    ; preds = %1448, %1436, %1419, %1378
  %1455 = phi float [ 1.000000e+00, %1378 ], [ %1453, %1448 ], [ %1431, %1419 ], [ 0.000000e+00, %1436 ]
  %1456 = fcmp fast ogt float %1455, 0.000000e+00
  br i1 %1456, label %1457, label %1555, !dx.controlflow.hints !70

; <label>:1457                                    ; preds = %1454
  %1458 = fadd fast float %133, 5.000000e-01
  %1459 = call float @dx.op.unary.f32(i32 27, float %1458)  ; Round_ni(value)
  %1460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %31, float %131, float %132, float %1459, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1461 = extractvalue %dx.types.ResRet.f32 %1460, 0
  %1462 = extractvalue %dx.types.ResRet.f32 %1460, 1
  %1463 = extractvalue %dx.types.ResRet.f32 %1460, 2
  %1464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.f32 %1464, 3
  %1466 = fmul fast float %1465, %1461
  %1467 = fmul fast float %1465, %1462
  %1468 = fmul fast float %1465, %1463
  %1469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %131, float %132, float %1459, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %31, float %131, float %132, float %1459, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = extractvalue %dx.types.ResRet.f32 %1471, 1
  %1474 = fmul fast float %1472, 2.000000e+00
  %1475 = fmul fast float %1473, 2.000000e+00
  %1476 = fadd fast float %1474, -1.000000e+00
  %1477 = fadd fast float %1475, -1.000000e+00
  %1478 = fadd fast float %1476, %1477
  %1479 = fmul fast float %1478, 5.000000e-01
  %1480 = fsub fast float %1476, %1477
  %1481 = fmul fast float %1480, 5.000000e-01
  %1482 = call float @dx.op.unary.f32(i32 6, float %1479)  ; FAbs(value)
  %1483 = fsub fast float 1.000000e+00, %1482
  %1484 = call float @dx.op.unary.f32(i32 6, float %1481)  ; FAbs(value)
  %1485 = fsub fast float %1483, %1484
  %1486 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1485)  ; FMax(a,b)
  %1487 = call float @dx.op.dot3.f32(i32 55, float %1479, float %1481, float %1486, float %1479, float %1481, float %1486)  ; Dot3(ax,ay,az,bx,by,bz)
  %1488 = bitcast float %1487 to i32
  %1489 = ashr i32 %1488, 1
  %1490 = sub nsw i32 1597250115, %1489
  %1491 = bitcast i32 %1490 to float
  %1492 = fmul fast float %1491, %1479
  %1493 = fmul fast float %1491, %1481
  %1494 = fmul fast float %1491, %1486
  %1495 = fsub fast float 1.000000e+00, %1470
  %1496 = fdiv fast float %1495, %1494
  %1497 = fmul fast float %1494, %40
  %1498 = fmul fast float %1494, %41
  %1499 = fmul fast float %1494, %42
  %1500 = fmul fast float %1492, %36
  %1501 = fmul fast float %1492, %37
  %1502 = fmul fast float %1492, %38
  %1503 = fadd fast float %1497, %1500
  %1504 = fadd fast float %1498, %1501
  %1505 = fadd fast float %1499, %1502
  %1506 = fmul fast float %1493, %66
  %1507 = fmul fast float %1493, %67
  %1508 = fmul fast float %1493, %68
  %1509 = fadd fast float %1503, %1506
  %1510 = fadd fast float %1504, %1507
  %1511 = fadd fast float %1505, %1508
  %1512 = call float @dx.op.dot3.f32(i32 55, float %1509, float %1510, float %1511, float %1509, float %1510, float %1511)  ; Dot3(ax,ay,az,bx,by,bz)
  %1513 = call float @dx.op.unary.f32(i32 25, float %1512)  ; Rsqrt(value)
  %1514 = fmul fast float %1509, %1513
  %1515 = fmul fast float %1510, %1513
  %1516 = fmul fast float %1511, %1513
  %1517 = call float @dx.op.dot3.f32(i32 55, float %1391, float %1392, float %1393, float %1391, float %1392, float %1393)  ; Dot3(ax,ay,az,bx,by,bz)
  %1518 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1519 = fmul fast float %1518, 5.000000e-01
  %1520 = fadd fast float %1519, 5.000000e-01
  %1521 = fmul fast float %1520, %1470
  %1522 = call float @dx.op.dot3.f32(i32 55, float %1391, float %1392, float %1393, float %1514, float %1515, float %1516)  ; Dot3(ax,ay,az,bx,by,bz)
  %1523 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  %1524 = fmul fast float %1523, %1496
  %1525 = fadd fast float %1521, %1524
  %1526 = fsub fast float 5.000000e-01, %1519
  %1527 = fmul fast float %1526, %1385
  %1528 = fmul fast float %1526, %1386
  %1529 = fmul fast float %1526, %1387
  %1530 = fadd fast float %1525, %1527
  %1531 = fmul fast float %1530, %1466
  %1532 = fadd fast float %1525, %1528
  %1533 = fmul fast float %1532, %1467
  %1534 = fadd fast float %1525, %1529
  %1535 = fmul fast float %1534, %1468
  %1536 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %1391, float %1392, float %1393)  ; Dot3(ax,ay,az,bx,by,bz)
  %1537 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1538 = fmul fast float %1537, 5.000000e-01
  %1539 = fadd fast float %1538, 5.000000e-01
  %1540 = fmul fast float %1539, %1470
  %1541 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %1514, float %1515, float %1516)  ; Dot3(ax,ay,az,bx,by,bz)
  %1542 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  %1543 = fmul fast float %1542, %1496
  %1544 = fadd fast float %1540, %1543
  %1545 = fsub fast float 5.000000e-01, %1538
  %1546 = fmul fast float %1545, %1385
  %1547 = fmul fast float %1545, %1386
  %1548 = fmul fast float %1545, %1387
  %1549 = fadd fast float %1544, %1546
  %1550 = fmul fast float %1549, %1466
  %1551 = fadd fast float %1544, %1547
  %1552 = fmul fast float %1551, %1467
  %1553 = fadd fast float %1544, %1548
  %1554 = fmul fast float %1553, %1468
  br label %1555

; <label>:1555                                    ; preds = %1457, %1454
  %1556 = phi float [ %1550, %1457 ], [ 0.000000e+00, %1454 ]
  %1557 = phi float [ %1552, %1457 ], [ 0.000000e+00, %1454 ]
  %1558 = phi float [ %1554, %1457 ], [ 0.000000e+00, %1454 ]
  %1559 = phi float [ %1531, %1457 ], [ 0.000000e+00, %1454 ]
  %1560 = phi float [ %1533, %1457 ], [ 0.000000e+00, %1454 ]
  %1561 = phi float [ %1535, %1457 ], [ 0.000000e+00, %1454 ]
  %1562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1562, 0
  %1564 = fcmp fast ogt float %1563, 0.000000e+00
  %1565 = and i1 %1456, %1564
  br i1 %1565, label %1566, label %1770, !dx.controlflow.hints !71

; <label>:1566                                    ; preds = %1555
  %1567 = extractvalue %dx.types.CBufRet.f32 %1411, 2
  %1568 = fadd fast float %1567, %104
  %1569 = fmul fast float %1391, 3.200000e+01
  %1570 = fmul fast float %1392, 3.200000e+01
  %1571 = fadd fast float %1414, %1569
  %1572 = fadd fast float %1415, %1570
  %1573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.f32 %1573, 0
  %1575 = extractvalue %dx.types.CBufRet.f32 %1573, 1
  %1576 = fsub fast float %1571, %1574
  %1577 = fsub fast float %1572, %1575
  %1578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1579 = extractvalue %dx.types.CBufRet.f32 %1578, 0
  %1580 = extractvalue %dx.types.CBufRet.f32 %1578, 1
  %1581 = fmul fast float %1576, %1579
  %1582 = fmul fast float %1577, %1580
  %1583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1584 = extractvalue %dx.types.CBufRet.f32 %1583, 0
  %1585 = extractvalue %dx.types.CBufRet.f32 %1583, 1
  %1586 = fsub fast float %1414, %1584
  %1587 = fsub fast float %1415, %1585
  %1588 = fmul fast float %1586, %1586
  %1589 = fmul fast float %1587, %1587
  %1590 = fadd fast float %1588, %1589
  %1591 = call float @dx.op.unary.f32(i32 24, float %1590)  ; Sqrt(value)
  %1592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1593 = extractvalue %dx.types.CBufRet.f32 %1592, 0
  %1594 = extractvalue %dx.types.CBufRet.f32 %1592, 1
  %1595 = fsub fast float %1591, %1593
  %1596 = fdiv fast float %1595, %1594
  %1597 = call float @dx.op.unary.f32(i32 7, float %1596)  ; Saturate(value)
  %1598 = fmul fast float %1597, 2.000000e+00
  %1599 = fsub fast float 3.000000e+00, %1598
  %1600 = fmul fast float %1597, %1597
  %1601 = fmul fast float %1600, %1599
  %1602 = fcmp fast oge float %1581, 0.000000e+00
  %1603 = fcmp fast ole float %1581, 1.000000e+00
  %1604 = and i1 %1603, %1602
  %1605 = fcmp fast oge float %1582, 0.000000e+00
  %1606 = and i1 %1605, %1604
  %1607 = fcmp fast ole float %1582, 1.000000e+00
  %1608 = and i1 %1607, %1606
  %1609 = fcmp fast ogt float %1601, 0.000000e+00
  %1610 = and i1 %1609, %1608
  br i1 %1610, label %1611, label %1734, !dx.controlflow.hints !72

; <label>:1611                                    ; preds = %1566
  %1612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.f32 %1612, 2
  %1614 = extractvalue %dx.types.CBufRet.f32 %1612, 3
  %1615 = fmul fast float %1613, %1581
  %1616 = fmul fast float %1614, %1582
  %1617 = call float @dx.op.unary.f32(i32 27, float %1615)  ; Round_ni(value)
  %1618 = call float @dx.op.unary.f32(i32 27, float %1616)  ; Round_ni(value)
  %1619 = fptosi float %1617 to i32
  %1620 = fptosi float %1618 to i32
  %1621 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %1619, i32 %1620, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = lshr i32 %1622, 16
  %1624 = icmp eq i32 %1623, 65535
  br i1 %1624, label %1734, label %1625

; <label>:1625                                    ; preds = %1611
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 0
  %1628 = fmul fast float %1627, %1581
  %1629 = extractvalue %dx.types.CBufRet.f32 %1626, 1
  %1630 = fadd fast float %1628, %1629
  %1631 = extractvalue %dx.types.CBufRet.f32 %1626, 2
  %1632 = fmul fast float %1631, %1582
  %1633 = extractvalue %dx.types.CBufRet.f32 %1626, 3
  %1634 = fadd fast float %1632, %1633
  %1635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %1630, float %1634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1636 = extractvalue %dx.types.ResRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.ResRet.f32 %1635, 1
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1640 = extractvalue %dx.types.CBufRet.f32 %1638, 0
  %1641 = fsub fast float %1639, %1640
  %1642 = fmul fast float %1641, %1636
  %1643 = fadd fast float %1642, %1640
  %1644 = extractvalue %dx.types.CBufRet.f32 %1638, 3
  %1645 = extractvalue %dx.types.CBufRet.f32 %1638, 2
  %1646 = fsub fast float %1644, %1645
  %1647 = fmul fast float %1646, %1637
  %1648 = fadd fast float %1647, %1645
  %1649 = fsub fast float %1568, %1643
  %1650 = fsub fast float %1648, %1643
  %1651 = fdiv fast float %1649, %1650
  %1652 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1562, 1
  %1654 = extractvalue %dx.types.CBufRet.f32 %1612, 0
  %1655 = extractvalue %dx.types.CBufRet.f32 %1612, 1
  %1656 = fmul fast float %1654, %1581
  %1657 = fmul fast float %1655, %1582
  %1658 = fmul fast float %1656, 1.250000e-01
  %1659 = fmul fast float %1657, 1.250000e-01
  %1660 = call float @dx.op.unary.f32(i32 27, float %1658)  ; Round_ni(value)
  %1661 = call float @dx.op.unary.f32(i32 27, float %1659)  ; Round_ni(value)
  %1662 = fmul fast float %1660, 8.000000e+00
  %1663 = fmul fast float %1661, 8.000000e+00
  %1664 = fsub fast float %1656, %1662
  %1665 = fsub fast float %1657, %1663
  %1666 = fadd fast float %1664, 5.000000e-01
  %1667 = fadd fast float %1665, 5.000000e-01
  %1668 = and i32 %1623, 255
  %1669 = lshr i32 %1622, 24
  %1670 = mul nuw nsw i32 %1668, 9
  %1671 = uitofp i32 %1670 to float
  %1672 = mul nuw nsw i32 %1669, 9
  %1673 = uitofp i32 %1672 to float
  %1674 = fadd fast float %1666, %1671
  %1675 = fadd fast float %1667, %1673
  %1676 = fdiv fast float %1674, %1563
  %1677 = fdiv fast float %1675, %1653
  %1678 = fmul fast float %1652, 4.375000e-01
  %1679 = fadd fast float %1678, 3.125000e-02
  %1680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %1676, float %1677, float %1679, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1681 = extractvalue %dx.types.ResRet.f32 %1680, 0
  %1682 = extractvalue %dx.types.ResRet.f32 %1680, 1
  %1683 = extractvalue %dx.types.ResRet.f32 %1680, 2
  %1684 = fadd fast float %1678, 5.312500e-01
  %1685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %1676, float %1677, float %1684, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1686 = extractvalue %dx.types.ResRet.f32 %1685, 0
  %1687 = extractvalue %dx.types.ResRet.f32 %1685, 1
  %1688 = extractvalue %dx.types.ResRet.f32 %1685, 2
  %1689 = fmul fast float %1686, 2.000000e+00
  %1690 = fmul fast float %1687, 2.000000e+00
  %1691 = fmul fast float %1688, 2.000000e+00
  %1692 = fadd fast float %1689, -1.000000e+00
  %1693 = fadd fast float %1690, -1.000000e+00
  %1694 = fadd fast float %1691, -1.000000e+00
  %1695 = fmul fast float %1692, %1692
  %1696 = fmul fast float %1693, %1693
  %1697 = fadd fast float %1695, %1696
  %1698 = fmul fast float %1694, %1694
  %1699 = fadd fast float %1697, %1698
  %1700 = call float @dx.op.unary.f32(i32 24, float %1699)  ; Sqrt(value)
  %1701 = fcmp fast ogt float %1700, 0.000000e+00
  br i1 %1701, label %1702, label %1706

; <label>:1702                                    ; preds = %1625
  %1703 = fdiv fast float %1692, %1700
  %1704 = fdiv fast float %1693, %1700
  %1705 = fdiv fast float %1694, %1700
  br label %1706

; <label>:1706                                    ; preds = %1702, %1625
  %1707 = phi float [ %1703, %1702 ], [ 0.000000e+00, %1625 ]
  %1708 = phi float [ %1704, %1702 ], [ 0.000000e+00, %1625 ]
  %1709 = phi float [ %1705, %1702 ], [ 0.000000e+00, %1625 ]
  %1710 = call float @dx.op.dot3.f32(i32 55, float %1707, float %1708, float %1709, float %1391, float %1392, float %1393)  ; Dot3(ax,ay,az,bx,by,bz)
  %1711 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1710)  ; FMax(a,b)
  %1712 = fmul fast float %1711, 0x400C5BF8A0000000
  %1713 = fmul fast float %1681, %1601
  %1714 = fmul fast float %1713, %1712
  %1715 = fmul fast float %1682, %1601
  %1716 = fmul fast float %1715, %1712
  %1717 = fmul fast float %1683, %1601
  %1718 = fmul fast float %1717, %1712
  %1719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1720 = extractvalue %dx.types.CBufRet.f32 %1719, 3
  %1721 = fmul fast float %1714, %1720
  %1722 = fmul fast float %1716, %1720
  %1723 = fmul fast float %1718, %1720
  %1724 = fcmp fast ogt float %1568, %1648
  br i1 %1724, label %1725, label %1734

; <label>:1725                                    ; preds = %1706
  %1726 = fmul fast float %1650, 0x3FC24924A0000000
  %1727 = fsub fast float %1568, %1648
  %1728 = fdiv fast float %1727, %1726
  %1729 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  %1730 = fsub fast float 1.000000e+00, %1729
  %1731 = fmul fast float %1730, %1721
  %1732 = fmul fast float %1730, %1722
  %1733 = fmul fast float %1730, %1723
  br label %1734

; <label>:1734                                    ; preds = %1725, %1706, %1611, %1566
  %1735 = phi float [ %1733, %1725 ], [ %1723, %1706 ], [ 0.000000e+00, %1611 ], [ 0.000000e+00, %1566 ]
  %1736 = phi float [ %1732, %1725 ], [ %1722, %1706 ], [ 0.000000e+00, %1611 ], [ 0.000000e+00, %1566 ]
  %1737 = phi float [ %1731, %1725 ], [ %1721, %1706 ], [ 0.000000e+00, %1611 ], [ 0.000000e+00, %1566 ]
  %1738 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1737)  ; FMax(a,b)
  %1739 = fmul fast float %1738, 0x3FD20DD760000000
  %1740 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1404, float %1405, float %1406)  ; Dot3(ax,ay,az,bx,by,bz)
  %1741 = fmul fast float %1740, 0x3FDF454380000000
  %1742 = fmul fast float %1740, %1740
  %1743 = fmul fast float %1742, 0x3FEE471020000000
  %1744 = fadd fast float %1743, 0xBFD42F6020000000
  %1745 = call float @dx.op.dot3.f32(i32 55, float %1738, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1741, float %1744)  ; Dot3(ax,ay,az,bx,by,bz)
  %1746 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1736)  ; FMax(a,b)
  %1747 = fmul fast float %1746, 0x3FD20DD760000000
  %1748 = call float @dx.op.dot3.f32(i32 55, float %1746, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1741, float %1744)  ; Dot3(ax,ay,az,bx,by,bz)
  %1749 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1735)  ; FMax(a,b)
  %1750 = fmul fast float %1749, 0x3FD20DD760000000
  %1751 = call float @dx.op.dot3.f32(i32 55, float %1749, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1741, float %1744)  ; Dot3(ax,ay,az,bx,by,bz)
  %1752 = call float @dx.op.binary.f32(i32 35, float %1739, float 0.000000e+00)  ; FMax(a,b)
  %1753 = call float @dx.op.binary.f32(i32 35, float %1747, float 0.000000e+00)  ; FMax(a,b)
  %1754 = call float @dx.op.binary.f32(i32 35, float %1750, float 0.000000e+00)  ; FMax(a,b)
  %1755 = call float @dx.op.binary.f32(i32 35, float %1745, float 0.000000e+00)  ; FMax(a,b)
  %1756 = call float @dx.op.binary.f32(i32 35, float %1748, float 0.000000e+00)  ; FMax(a,b)
  %1757 = call float @dx.op.binary.f32(i32 35, float %1751, float 0.000000e+00)  ; FMax(a,b)
  %1758 = fmul fast float %1752, %1455
  %1759 = fmul fast float %1753, %1455
  %1760 = fmul fast float %1754, %1455
  %1761 = fadd fast float %1758, %1559
  %1762 = fadd fast float %1759, %1560
  %1763 = fadd fast float %1760, %1561
  %1764 = fmul fast float %1755, %1455
  %1765 = fmul fast float %1756, %1455
  %1766 = fmul fast float %1757, %1455
  %1767 = fadd fast float %1764, %1556
  %1768 = fadd fast float %1765, %1557
  %1769 = fadd fast float %1766, %1558
  br label %1770

; <label>:1770                                    ; preds = %1734, %1555
  %1771 = phi float [ %1767, %1734 ], [ %1556, %1555 ]
  %1772 = phi float [ %1768, %1734 ], [ %1557, %1555 ]
  %1773 = phi float [ %1769, %1734 ], [ %1558, %1555 ]
  %1774 = phi float [ %1761, %1734 ], [ %1559, %1555 ]
  %1775 = phi float [ %1762, %1734 ], [ %1560, %1555 ]
  %1776 = phi float [ %1763, %1734 ], [ %1561, %1555 ]
  %1777 = fcmp fast olt float %1455, 1.000000e+00
  br i1 %1777, label %1778, label %2596, !dx.controlflow.hints !73

; <label>:1778                                    ; preds = %1770
  %1779 = extractvalue %dx.types.CBufRet.f32 %1411, 2
  %1780 = fadd fast float %1779, %104
  %1781 = fmul fast float %1391, 3.200000e+01
  %1782 = fmul fast float %1392, 3.200000e+01
  %1783 = fadd fast float %1414, %1781
  %1784 = fadd fast float %1415, %1782
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %1787 = extractvalue %dx.types.CBufRet.f32 %1785, 1
  %1788 = fsub fast float %1783, %1786
  %1789 = fsub fast float %1784, %1787
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 0
  %1792 = extractvalue %dx.types.CBufRet.f32 %1790, 1
  %1793 = fmul fast float %1788, %1791
  %1794 = fmul fast float %1789, %1792
  %1795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1796 = extractvalue %dx.types.CBufRet.f32 %1795, 0
  %1797 = fmul fast float %1793, %1796
  %1798 = extractvalue %dx.types.CBufRet.f32 %1795, 1
  %1799 = fadd fast float %1797, %1798
  %1800 = extractvalue %dx.types.CBufRet.f32 %1795, 2
  %1801 = fmul fast float %1800, %1794
  %1802 = extractvalue %dx.types.CBufRet.f32 %1795, 3
  %1803 = fadd fast float %1801, %1802
  %1804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %1799, float %1803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1805 = extractvalue %dx.types.ResRet.f32 %1804, 0
  %1806 = extractvalue %dx.types.ResRet.f32 %1804, 1
  %1807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1808 = extractvalue %dx.types.CBufRet.f32 %1807, 1
  %1809 = extractvalue %dx.types.CBufRet.f32 %1807, 0
  %1810 = fsub fast float %1808, %1809
  %1811 = fmul fast float %1810, %1805
  %1812 = fadd fast float %1811, %1809
  %1813 = extractvalue %dx.types.CBufRet.f32 %1807, 3
  %1814 = extractvalue %dx.types.CBufRet.f32 %1807, 2
  %1815 = fsub fast float %1813, %1814
  %1816 = fmul fast float %1815, %1806
  %1817 = fadd fast float %1816, %1814
  %1818 = fsub fast float %1780, %1812
  %1819 = fsub fast float %1817, %1812
  %1820 = fdiv fast float %1818, %1819
  %1821 = call float @dx.op.unary.f32(i32 7, float %1820)  ; Saturate(value)
  %1822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1823 = extractvalue %dx.types.CBufRet.f32 %1822, 0
  %1824 = fmul fast float %1823, %1821
  %1825 = extractvalue %dx.types.CBufRet.f32 %1822, 1
  %1826 = fadd fast float %1824, %1825
  %1827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %1799, float %1803, float %1826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1828 = extractvalue %dx.types.ResRet.f32 %1827, 0
  %1829 = extractvalue %dx.types.ResRet.f32 %1827, 1
  %1830 = extractvalue %dx.types.ResRet.f32 %1827, 2
  %1831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1832 = extractvalue %dx.types.CBufRet.f32 %1831, 0
  %1833 = extractvalue %dx.types.CBufRet.f32 %1831, 1
  %1834 = extractvalue %dx.types.CBufRet.f32 %1831, 2
  %1835 = fmul fast float %1832, %1828
  %1836 = fmul fast float %1833, %1829
  %1837 = fmul fast float %1834, %1830
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 0
  %1840 = extractvalue %dx.types.CBufRet.f32 %1838, 1
  %1841 = extractvalue %dx.types.CBufRet.f32 %1838, 2
  %1842 = fadd fast float %1835, %1839
  %1843 = fadd fast float %1836, %1840
  %1844 = fadd fast float %1837, %1841
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 0
  %1847 = fmul fast float %1846, %1793
  %1848 = extractvalue %dx.types.CBufRet.f32 %1845, 1
  %1849 = fadd fast float %1847, %1848
  %1850 = extractvalue %dx.types.CBufRet.f32 %1845, 2
  %1851 = fmul fast float %1850, %1794
  %1852 = extractvalue %dx.types.CBufRet.f32 %1845, 3
  %1853 = fadd fast float %1851, %1852
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 0
  %1856 = extractvalue %dx.types.CBufRet.f32 %1854, 1
  %1857 = extractvalue %dx.types.CBufRet.f32 %1854, 2
  %1858 = extractvalue %dx.types.CBufRet.f32 %1854, 3
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 0
  %1861 = extractvalue %dx.types.CBufRet.f32 %1859, 1
  %1862 = extractvalue %dx.types.CBufRet.f32 %1859, 2
  %1863 = extractvalue %dx.types.CBufRet.f32 %1859, 3
  %1864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %1849, float %1853, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1865 = extractvalue %dx.types.ResRet.f32 %1864, 0
  %1866 = extractvalue %dx.types.ResRet.f32 %1864, 1
  %1867 = extractvalue %dx.types.ResRet.f32 %1864, 2
  %1868 = extractvalue %dx.types.ResRet.f32 %1864, 3
  %1869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %1849, float %1853, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1870 = extractvalue %dx.types.ResRet.f32 %1869, 0
  %1871 = extractvalue %dx.types.ResRet.f32 %1869, 1
  %1872 = extractvalue %dx.types.ResRet.f32 %1869, 2
  %1873 = extractvalue %dx.types.ResRet.f32 %1869, 3
  %1874 = fmul fast float %1865, %1842
  %1875 = fmul fast float %1870, %1842
  %1876 = fmul fast float %1872, %1842
  %1877 = fmul fast float %1868, %1842
  %1878 = fadd fast float %1874, %1855
  %1879 = fadd fast float %1875, %1856
  %1880 = fadd fast float %1876, %1857
  %1881 = fadd fast float %1877, %1858
  %1882 = fmul fast float %1866, %1842
  %1883 = fmul fast float %1871, %1842
  %1884 = fadd fast float %1882, %1860
  %1885 = fadd fast float %1883, %1861
  %1886 = fmul fast float %1867, %1842
  %1887 = fmul fast float %1873, %1842
  %1888 = fadd fast float %1886, %1862
  %1889 = fadd fast float %1887, %1863
  %1890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %1849, float %1853, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1891 = extractvalue %dx.types.ResRet.f32 %1890, 0
  %1892 = extractvalue %dx.types.ResRet.f32 %1890, 1
  %1893 = extractvalue %dx.types.ResRet.f32 %1890, 2
  %1894 = extractvalue %dx.types.ResRet.f32 %1890, 3
  %1895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %1849, float %1853, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1896 = extractvalue %dx.types.ResRet.f32 %1895, 0
  %1897 = extractvalue %dx.types.ResRet.f32 %1895, 1
  %1898 = extractvalue %dx.types.ResRet.f32 %1895, 2
  %1899 = extractvalue %dx.types.ResRet.f32 %1895, 3
  %1900 = fmul fast float %1891, %1843
  %1901 = fmul fast float %1896, %1843
  %1902 = fmul fast float %1898, %1843
  %1903 = fmul fast float %1894, %1843
  %1904 = fadd fast float %1878, %1900
  %1905 = fadd fast float %1879, %1901
  %1906 = fadd fast float %1880, %1902
  %1907 = fadd fast float %1881, %1903
  %1908 = fmul fast float %1892, %1843
  %1909 = fmul fast float %1897, %1843
  %1910 = fadd fast float %1884, %1908
  %1911 = fadd fast float %1885, %1909
  %1912 = fmul fast float %1893, %1843
  %1913 = fmul fast float %1899, %1843
  %1914 = fadd fast float %1888, %1912
  %1915 = fadd fast float %1889, %1913
  %1916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %1849, float %1853, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = extractvalue %dx.types.ResRet.f32 %1916, 1
  %1919 = extractvalue %dx.types.ResRet.f32 %1916, 2
  %1920 = extractvalue %dx.types.ResRet.f32 %1916, 3
  %1921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %1849, float %1853, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1922 = extractvalue %dx.types.ResRet.f32 %1921, 0
  %1923 = extractvalue %dx.types.ResRet.f32 %1921, 1
  %1924 = extractvalue %dx.types.ResRet.f32 %1921, 2
  %1925 = extractvalue %dx.types.ResRet.f32 %1921, 3
  %1926 = fmul fast float %1917, %1844
  %1927 = fmul fast float %1922, %1844
  %1928 = fmul fast float %1924, %1844
  %1929 = fmul fast float %1920, %1844
  %1930 = fadd fast float %1904, %1926
  %1931 = fadd fast float %1905, %1927
  %1932 = fadd fast float %1906, %1928
  %1933 = fadd fast float %1907, %1929
  %1934 = fmul fast float %1918, %1844
  %1935 = fmul fast float %1923, %1844
  %1936 = fadd fast float %1910, %1934
  %1937 = fadd fast float %1911, %1935
  %1938 = fmul fast float %1919, %1844
  %1939 = fmul fast float %1925, %1844
  %1940 = fadd fast float %1914, %1938
  %1941 = fadd fast float %1915, %1939
  %1942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1943 = extractvalue %dx.types.CBufRet.f32 %1942, 0
  %1944 = fsub fast float %1414, %1943
  %1945 = fsub fast float %1786, %1414
  %1946 = call float @dx.op.binary.f32(i32 35, float %1945, float %1944)  ; FMax(a,b)
  %1947 = extractvalue %dx.types.CBufRet.f32 %1942, 1
  %1948 = fsub fast float %1415, %1947
  %1949 = fsub fast float %1787, %1415
  %1950 = call float @dx.op.binary.f32(i32 35, float %1949, float %1948)  ; FMax(a,b)
  %1951 = call float @dx.op.binary.f32(i32 35, float %1946, float %1950)  ; FMax(a,b)
  %1952 = extractvalue %dx.types.CBufRet.f32 %1790, 3
  %1953 = fmul fast float %1952, %1951
  %1954 = call float @dx.op.unary.f32(i32 7, float %1953)  ; Saturate(value)
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 0
  %1957 = extractvalue %dx.types.CBufRet.f32 %1955, 1
  %1958 = extractvalue %dx.types.CBufRet.f32 %1955, 2
  %1959 = extractvalue %dx.types.CBufRet.f32 %1955, 3
  %1960 = fsub fast float %1956, %1930
  %1961 = fsub fast float %1957, %1931
  %1962 = fsub fast float %1958, %1932
  %1963 = fsub fast float %1959, %1933
  %1964 = fmul fast float %1960, %1954
  %1965 = fmul fast float %1961, %1954
  %1966 = fmul fast float %1962, %1954
  %1967 = fmul fast float %1963, %1954
  %1968 = fadd fast float %1964, %1930
  %1969 = fadd fast float %1965, %1931
  %1970 = fadd fast float %1966, %1932
  %1971 = fadd fast float %1967, %1933
  %1972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1973 = extractvalue %dx.types.CBufRet.f32 %1972, 0
  %1974 = extractvalue %dx.types.CBufRet.f32 %1972, 1
  %1975 = fsub fast float %1973, %1936
  %1976 = fsub fast float %1974, %1937
  %1977 = fmul fast float %1975, %1954
  %1978 = fmul fast float %1976, %1954
  %1979 = fadd fast float %1977, %1936
  %1980 = fadd fast float %1978, %1937
  %1981 = extractvalue %dx.types.CBufRet.f32 %1972, 2
  %1982 = extractvalue %dx.types.CBufRet.f32 %1972, 3
  %1983 = fsub fast float %1981, %1940
  %1984 = fsub fast float %1982, %1941
  %1985 = fmul fast float %1983, %1954
  %1986 = fmul fast float %1984, %1954
  %1987 = fadd fast float %1985, %1940
  %1988 = fadd fast float %1986, %1941
  %1989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1990 = extractvalue %dx.types.CBufRet.f32 %1989, 0
  %1991 = fmul fast float %1990, %1968
  %1992 = fmul fast float %1990, %1969
  %1993 = fmul fast float %1990, %1970
  %1994 = fmul fast float %1990, %1971
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 0
  %1997 = fmul fast float %1996, %1979
  %1998 = fmul fast float %1996, %1980
  %1999 = fadd fast float %1997, %1991
  %2000 = fadd fast float %1998, %1993
  %2001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2002 = extractvalue %dx.types.CBufRet.f32 %2001, 0
  %2003 = fmul fast float %2002, %1987
  %2004 = fmul fast float %2002, %1988
  %2005 = fadd fast float %1999, %2003
  %2006 = fadd fast float %2000, %2004
  %2007 = extractvalue %dx.types.CBufRet.f32 %1989, 1
  %2008 = fmul fast float %2007, %1968
  %2009 = fmul fast float %2007, %1969
  %2010 = fmul fast float %2007, %1970
  %2011 = fmul fast float %2007, %1971
  %2012 = extractvalue %dx.types.CBufRet.f32 %1995, 1
  %2013 = fmul fast float %2012, %1979
  %2014 = fmul fast float %2012, %1980
  %2015 = fadd fast float %2013, %2008
  %2016 = fadd fast float %2014, %2010
  %2017 = extractvalue %dx.types.CBufRet.f32 %2001, 1
  %2018 = fmul fast float %2017, %1987
  %2019 = fmul fast float %2017, %1988
  %2020 = fadd fast float %2015, %2018
  %2021 = fadd fast float %2016, %2019
  %2022 = extractvalue %dx.types.CBufRet.f32 %1989, 2
  %2023 = fmul fast float %2022, %1968
  %2024 = fmul fast float %2022, %1969
  %2025 = fmul fast float %2022, %1970
  %2026 = fmul fast float %2022, %1971
  %2027 = extractvalue %dx.types.CBufRet.f32 %1995, 2
  %2028 = fmul fast float %2027, %1979
  %2029 = fmul fast float %2027, %1980
  %2030 = fadd fast float %2028, %2023
  %2031 = fadd fast float %2029, %2025
  %2032 = extractvalue %dx.types.CBufRet.f32 %2001, 2
  %2033 = fmul fast float %2032, %1987
  %2034 = fmul fast float %2032, %1988
  %2035 = fadd fast float %2030, %2033
  %2036 = fadd fast float %2031, %2034
  %2037 = fmul fast float %2024, %2024
  %2038 = fmul fast float %2036, %2036
  %2039 = fmul fast float %2026, %2026
  %2040 = fadd fast float %2039, %2037
  %2041 = fadd fast float %2040, %2038
  %2042 = call float @dx.op.unary.f32(i32 24, float %2041)  ; Sqrt(value)
  %2043 = fcmp fast ugt float %2042, 0.000000e+00
  br i1 %2043, label %2044, label %2059

; <label>:2044                                    ; preds = %1778
  %2045 = fsub fast float -0.000000e+00, %2026
  %2046 = fdiv fast float %2045, %2042
  %2047 = fsub fast float -0.000000e+00, %2024
  %2048 = fdiv fast float %2047, %2042
  %2049 = fdiv fast float %2036, %2042
  %2050 = fmul fast float %2035, 0x3FE279A760000000
  %2051 = fmul fast float %2048, %2024
  %2052 = fmul fast float %2049, %2036
  %2053 = fmul fast float %2046, %2026
  %2054 = fadd fast float %2051, %2053
  %2055 = fsub fast float %2054, %2052
  %2056 = call float @dx.op.unary.f32(i32 6, float %2055)  ; FAbs(value)
  %2057 = fadd fast float %2056, 0x3DDB7CDFE0000000
  %2058 = fdiv fast float %2050, %2057
  br label %2059

; <label>:2059                                    ; preds = %2044, %1778
  %2060 = phi float [ %2058, %2044 ], [ 1.000000e+00, %1778 ]
  %2061 = fmul fast float %2009, %2009
  %2062 = fmul fast float %2021, %2021
  %2063 = fmul fast float %2011, %2011
  %2064 = fadd fast float %2063, %2061
  %2065 = fadd fast float %2064, %2062
  %2066 = call float @dx.op.unary.f32(i32 24, float %2065)  ; Sqrt(value)
  %2067 = fcmp fast ugt float %2066, 0.000000e+00
  br i1 %2067, label %2068, label %2083

; <label>:2068                                    ; preds = %2059
  %2069 = fsub fast float -0.000000e+00, %2011
  %2070 = fdiv fast float %2069, %2066
  %2071 = fsub fast float -0.000000e+00, %2009
  %2072 = fdiv fast float %2071, %2066
  %2073 = fdiv fast float %2021, %2066
  %2074 = fmul fast float %2020, 0x3FE279A760000000
  %2075 = fmul fast float %2072, %2009
  %2076 = fmul fast float %2073, %2021
  %2077 = fmul fast float %2070, %2011
  %2078 = fadd fast float %2075, %2077
  %2079 = fsub fast float %2078, %2076
  %2080 = call float @dx.op.unary.f32(i32 6, float %2079)  ; FAbs(value)
  %2081 = fadd fast float %2080, 0x3DDB7CDFE0000000
  %2082 = fdiv fast float %2074, %2081
  br label %2083

; <label>:2083                                    ; preds = %2068, %2059
  %2084 = phi float [ %2082, %2068 ], [ 1.000000e+00, %2059 ]
  %2085 = call float @dx.op.binary.f32(i32 36, float %2084, float %2060)  ; FMin(a,b)
  %2086 = fmul fast float %1992, %1992
  %2087 = fmul fast float %2006, %2006
  %2088 = fmul fast float %1994, %1994
  %2089 = fadd fast float %2088, %2086
  %2090 = fadd fast float %2089, %2087
  %2091 = call float @dx.op.unary.f32(i32 24, float %2090)  ; Sqrt(value)
  %2092 = fcmp fast ugt float %2091, 0.000000e+00
  br i1 %2092, label %2093, label %2108

; <label>:2093                                    ; preds = %2083
  %2094 = fsub fast float -0.000000e+00, %1994
  %2095 = fdiv fast float %2094, %2091
  %2096 = fsub fast float -0.000000e+00, %1992
  %2097 = fdiv fast float %2096, %2091
  %2098 = fdiv fast float %2006, %2091
  %2099 = fmul fast float %2005, 0x3FE279A760000000
  %2100 = fmul fast float %2097, %1992
  %2101 = fmul fast float %2098, %2006
  %2102 = fmul fast float %2095, %1994
  %2103 = fadd fast float %2100, %2102
  %2104 = fsub fast float %2103, %2101
  %2105 = call float @dx.op.unary.f32(i32 6, float %2104)  ; FAbs(value)
  %2106 = fadd fast float %2105, 0x3DDB7CDFE0000000
  %2107 = fdiv fast float %2099, %2106
  br label %2108

; <label>:2108                                    ; preds = %2093, %2083
  %2109 = phi float [ %2107, %2093 ], [ 1.000000e+00, %2083 ]
  %2110 = call float @dx.op.binary.f32(i32 36, float %2109, float %2085)  ; FMin(a,b)
  %2111 = call float @dx.op.unary.f32(i32 7, float %2110)  ; Saturate(value)
  %2112 = fcmp fast olt float %2111, 1.000000e+00
  br i1 %2112, label %2113, label %2123

; <label>:2113                                    ; preds = %2108
  %2114 = fmul fast float %2111, %1992
  %2115 = fmul fast float %2111, %2006
  %2116 = fmul fast float %2111, %1994
  %2117 = fmul fast float %2111, %2009
  %2118 = fmul fast float %2111, %2021
  %2119 = fmul fast float %2111, %2011
  %2120 = fmul fast float %2111, %2024
  %2121 = fmul fast float %2111, %2036
  %2122 = fmul fast float %2111, %2026
  br label %2123

; <label>:2123                                    ; preds = %2113, %2108
  %2124 = phi float [ %2120, %2113 ], [ %2024, %2108 ]
  %2125 = phi float [ %2121, %2113 ], [ %2036, %2108 ]
  %2126 = phi float [ %2122, %2113 ], [ %2026, %2108 ]
  %2127 = phi float [ %2117, %2113 ], [ %2009, %2108 ]
  %2128 = phi float [ %2118, %2113 ], [ %2021, %2108 ]
  %2129 = phi float [ %2119, %2113 ], [ %2011, %2108 ]
  %2130 = phi float [ %2114, %2113 ], [ %1992, %2108 ]
  %2131 = phi float [ %2115, %2113 ], [ %2006, %2108 ]
  %2132 = phi float [ %2116, %2113 ], [ %1994, %2108 ]
  %2133 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2005)  ; FMax(a,b)
  %2134 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2020)  ; FMax(a,b)
  %2135 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2035)  ; FMax(a,b)
  %2136 = fcmp fast oge float %1793, 0.000000e+00
  %2137 = and i1 %2136, %1564
  %2138 = fcmp fast ole float %1793, 1.000000e+00
  %2139 = and i1 %2138, %2137
  %2140 = fcmp fast oge float %1794, 0.000000e+00
  %2141 = and i1 %2140, %2139
  %2142 = fcmp fast ole float %1794, 1.000000e+00
  %2143 = and i1 %2142, %2141
  br i1 %2143, label %2144, label %2289, !dx.controlflow.hints !74

; <label>:2144                                    ; preds = %2123
  %2145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.f32 %2145, 2
  %2147 = extractvalue %dx.types.CBufRet.f32 %2145, 3
  %2148 = fmul fast float %2146, %1793
  %2149 = fmul fast float %2147, %1794
  %2150 = call float @dx.op.unary.f32(i32 27, float %2148)  ; Round_ni(value)
  %2151 = call float @dx.op.unary.f32(i32 27, float %2149)  ; Round_ni(value)
  %2152 = fptosi float %2150 to i32
  %2153 = fptosi float %2151 to i32
  %2154 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %2152, i32 %2153, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = and i32 %2155, 65535
  %2157 = lshr i32 %2155, 16
  %2158 = icmp eq i32 %2156, 65535
  br i1 %2158, label %2195, label %2159

; <label>:2159                                    ; preds = %2144
  %2160 = extractvalue %dx.types.CBufRet.f32 %1562, 1
  %2161 = extractvalue %dx.types.CBufRet.f32 %2145, 0
  %2162 = extractvalue %dx.types.CBufRet.f32 %2145, 1
  %2163 = fmul fast float %2161, %1793
  %2164 = fmul fast float %2162, %1794
  %2165 = fmul fast float %2163, 1.250000e-01
  %2166 = fmul fast float %2164, 1.250000e-01
  %2167 = call float @dx.op.unary.f32(i32 27, float %2165)  ; Round_ni(value)
  %2168 = call float @dx.op.unary.f32(i32 27, float %2166)  ; Round_ni(value)
  %2169 = fmul fast float %2167, 8.000000e+00
  %2170 = fmul fast float %2168, 8.000000e+00
  %2171 = and i32 %2155, 255
  %2172 = lshr i32 %2155, 8
  %2173 = and i32 %2172, 255
  %2174 = mul nuw nsw i32 %2171, 9
  %2175 = uitofp i32 %2174 to float
  %2176 = mul nuw nsw i32 %2173, 9
  %2177 = uitofp i32 %2176 to float
  %2178 = fadd fast float %2175, 5.000000e-01
  %2179 = fadd fast float %2178, %2163
  %2180 = fsub fast float %2179, %2169
  %2181 = fadd fast float %2177, 5.000000e-01
  %2182 = fadd fast float %2181, %2164
  %2183 = fsub fast float %2182, %2170
  %2184 = fdiv fast float %2180, %1563
  %2185 = fdiv fast float %2183, %2160
  %2186 = fmul fast float %1821, 4.375000e-01
  %2187 = fadd fast float %2186, 3.125000e-02
  %2188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %2184, float %2185, float %2187, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2189 = extractvalue %dx.types.ResRet.f32 %2188, 0
  %2190 = extractvalue %dx.types.ResRet.f32 %2188, 1
  %2191 = extractvalue %dx.types.ResRet.f32 %2188, 2
  %2192 = fadd fast float %2189, %2133
  %2193 = fadd fast float %2190, %2134
  %2194 = fadd fast float %2191, %2135
  br label %2195

; <label>:2195                                    ; preds = %2159, %2144
  %2196 = phi float [ %2194, %2159 ], [ %2135, %2144 ]
  %2197 = phi float [ %2193, %2159 ], [ %2134, %2144 ]
  %2198 = phi float [ %2192, %2159 ], [ %2133, %2144 ]
  %2199 = icmp eq i32 %2157, 65535
  br i1 %2199, label %2289, label %2200

; <label>:2200                                    ; preds = %2195
  %2201 = extractvalue %dx.types.CBufRet.f32 %1562, 1
  %2202 = extractvalue %dx.types.CBufRet.f32 %2145, 0
  %2203 = extractvalue %dx.types.CBufRet.f32 %2145, 1
  %2204 = fmul fast float %2202, %1793
  %2205 = fmul fast float %2203, %1794
  %2206 = fmul fast float %2204, 1.250000e-01
  %2207 = fmul fast float %2205, 1.250000e-01
  %2208 = call float @dx.op.unary.f32(i32 27, float %2206)  ; Round_ni(value)
  %2209 = call float @dx.op.unary.f32(i32 27, float %2207)  ; Round_ni(value)
  %2210 = fmul fast float %2208, 8.000000e+00
  %2211 = fmul fast float %2209, 8.000000e+00
  %2212 = fsub fast float %2204, %2210
  %2213 = fsub fast float %2205, %2211
  %2214 = fadd fast float %2212, 5.000000e-01
  %2215 = fadd fast float %2213, 5.000000e-01
  %2216 = and i32 %2157, 255
  %2217 = lshr i32 %2155, 24
  %2218 = mul nuw nsw i32 %2216, 9
  %2219 = uitofp i32 %2218 to float
  %2220 = mul nuw nsw i32 %2217, 9
  %2221 = uitofp i32 %2220 to float
  %2222 = fadd fast float %2214, %2219
  %2223 = fadd fast float %2215, %2221
  %2224 = fdiv fast float %2222, %1563
  %2225 = fdiv fast float %2223, %2201
  %2226 = fmul fast float %1821, 4.375000e-01
  %2227 = fadd fast float %2226, 3.125000e-02
  %2228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %2224, float %2225, float %2227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2229 = extractvalue %dx.types.ResRet.f32 %2228, 0
  %2230 = extractvalue %dx.types.ResRet.f32 %2228, 1
  %2231 = extractvalue %dx.types.ResRet.f32 %2228, 2
  %2232 = fadd fast float %2226, 5.312500e-01
  %2233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %2224, float %2225, float %2232, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2234 = extractvalue %dx.types.ResRet.f32 %2233, 0
  %2235 = extractvalue %dx.types.ResRet.f32 %2233, 1
  %2236 = extractvalue %dx.types.ResRet.f32 %2233, 2
  %2237 = fmul fast float %2234, 2.000000e+00
  %2238 = fmul fast float %2235, 2.000000e+00
  %2239 = fmul fast float %2236, 2.000000e+00
  %2240 = fadd fast float %2237, -1.000000e+00
  %2241 = fadd fast float %2238, -1.000000e+00
  %2242 = fadd fast float %2239, -1.000000e+00
  %2243 = fmul fast float %2240, %2240
  %2244 = fmul fast float %2241, %2241
  %2245 = fadd fast float %2243, %2244
  %2246 = fmul fast float %2242, %2242
  %2247 = fadd fast float %2245, %2246
  %2248 = call float @dx.op.unary.f32(i32 24, float %2247)  ; Sqrt(value)
  %2249 = fcmp fast ogt float %2248, 0.000000e+00
  br i1 %2249, label %2250, label %2254

; <label>:2250                                    ; preds = %2200
  %2251 = fdiv fast float %2240, %2248
  %2252 = fdiv fast float %2241, %2248
  %2253 = fdiv fast float %2242, %2248
  br label %2254

; <label>:2254                                    ; preds = %2250, %2200
  %2255 = phi float [ %2251, %2250 ], [ 0.000000e+00, %2200 ]
  %2256 = phi float [ %2252, %2250 ], [ 0.000000e+00, %2200 ]
  %2257 = phi float [ %2253, %2250 ], [ 0.000000e+00, %2200 ]
  %2258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2259 = extractvalue %dx.types.CBufRet.f32 %2258, 0
  %2260 = extractvalue %dx.types.CBufRet.f32 %2258, 1
  %2261 = fsub fast float %1414, %2259
  %2262 = fsub fast float %1415, %2260
  %2263 = fmul fast float %2261, %2261
  %2264 = fmul fast float %2262, %2262
  %2265 = fadd fast float %2263, %2264
  %2266 = call float @dx.op.unary.f32(i32 24, float %2265)  ; Sqrt(value)
  %2267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.f32 %2267, 0
  %2269 = extractvalue %dx.types.CBufRet.f32 %2267, 1
  %2270 = fsub fast float %2266, %2268
  %2271 = fdiv fast float %2270, %2269
  %2272 = call float @dx.op.unary.f32(i32 7, float %2271)  ; Saturate(value)
  %2273 = fmul fast float %2272, 2.000000e+00
  %2274 = fsub fast float 3.000000e+00, %2273
  %2275 = fmul fast float %2272, %2272
  %2276 = fmul fast float %2275, %2274
  %2277 = call float @dx.op.dot3.f32(i32 55, float %2255, float %2256, float %2257, float %1391, float %1392, float %1393)  ; Dot3(ax,ay,az,bx,by,bz)
  %2278 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2277)  ; FMax(a,b)
  %2279 = fmul fast float %2278, 0x400C5BF8A0000000
  %2280 = fmul fast float %2276, %2229
  %2281 = fmul fast float %2280, %2279
  %2282 = fadd fast float %2281, %2198
  %2283 = fmul fast float %2276, %2230
  %2284 = fmul fast float %2283, %2279
  %2285 = fadd fast float %2284, %2197
  %2286 = fmul fast float %2276, %2231
  %2287 = fmul fast float %2286, %2279
  %2288 = fadd fast float %2287, %2196
  br label %2289

; <label>:2289                                    ; preds = %2254, %2195, %2123
  %2290 = phi float [ %2288, %2254 ], [ %2196, %2195 ], [ %2135, %2123 ]
  %2291 = phi float [ %2285, %2254 ], [ %2197, %2195 ], [ %2134, %2123 ]
  %2292 = phi float [ %2282, %2254 ], [ %2198, %2195 ], [ %2133, %2123 ]
  %2293 = fcmp fast ogt float %1780, %1817
  %2294 = and i1 %2136, %2293
  %2295 = and i1 %2138, %2294
  %2296 = and i1 %2140, %2295
  %2297 = and i1 %2142, %2296
  br i1 %2297, label %2298, label %2355, !dx.controlflow.hints !75

; <label>:2298                                    ; preds = %2289
  %2299 = fmul fast float %1819, 0x3FC24924A0000000
  %2300 = fsub fast float %1780, %1817
  %2301 = fdiv fast float %2300, %2299
  %2302 = call float @dx.op.unary.f32(i32 7, float %2301)  ; Saturate(value)
  %2303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2304 = extractvalue %dx.types.CBufRet.f32 %2303, 0
  %2305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2306 = extractvalue %dx.types.CBufRet.f32 %2305, 0
  %2307 = extractvalue %dx.types.CBufRet.f32 %2305, 1
  %2308 = extractvalue %dx.types.CBufRet.f32 %2305, 2
  %2309 = fsub fast float %2304, %2292
  %2310 = fsub fast float %2306, %2130
  %2311 = fsub fast float %2307, %2131
  %2312 = fsub fast float %2308, %2132
  %2313 = fmul fast float %2309, %2302
  %2314 = fmul fast float %2310, %2302
  %2315 = fmul fast float %2311, %2302
  %2316 = fmul fast float %2312, %2302
  %2317 = fadd fast float %2313, %2292
  %2318 = fadd fast float %2314, %2130
  %2319 = fadd fast float %2315, %2131
  %2320 = fadd fast float %2316, %2132
  %2321 = extractvalue %dx.types.CBufRet.f32 %2303, 1
  %2322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2323 = extractvalue %dx.types.CBufRet.f32 %2322, 0
  %2324 = extractvalue %dx.types.CBufRet.f32 %2322, 1
  %2325 = extractvalue %dx.types.CBufRet.f32 %2322, 2
  %2326 = fsub fast float %2321, %2291
  %2327 = fsub fast float %2323, %2127
  %2328 = fsub fast float %2324, %2128
  %2329 = fsub fast float %2325, %2129
  %2330 = fmul fast float %2326, %2302
  %2331 = fmul fast float %2327, %2302
  %2332 = fmul fast float %2328, %2302
  %2333 = fmul fast float %2329, %2302
  %2334 = fadd fast float %2330, %2291
  %2335 = fadd fast float %2331, %2127
  %2336 = fadd fast float %2332, %2128
  %2337 = fadd fast float %2333, %2129
  %2338 = extractvalue %dx.types.CBufRet.f32 %2303, 2
  %2339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2340 = extractvalue %dx.types.CBufRet.f32 %2339, 0
  %2341 = extractvalue %dx.types.CBufRet.f32 %2339, 1
  %2342 = extractvalue %dx.types.CBufRet.f32 %2339, 2
  %2343 = fsub fast float %2338, %2290
  %2344 = fsub fast float %2340, %2124
  %2345 = fsub fast float %2341, %2125
  %2346 = fsub fast float %2342, %2126
  %2347 = fmul fast float %2343, %2302
  %2348 = fmul fast float %2344, %2302
  %2349 = fmul fast float %2345, %2302
  %2350 = fmul fast float %2346, %2302
  %2351 = fadd fast float %2347, %2290
  %2352 = fadd fast float %2348, %2124
  %2353 = fadd fast float %2349, %2125
  %2354 = fadd fast float %2350, %2126
  br label %2355

; <label>:2355                                    ; preds = %2298, %2289
  %2356 = phi float [ %2351, %2298 ], [ %2290, %2289 ]
  %2357 = phi float [ %2352, %2298 ], [ %2124, %2289 ]
  %2358 = phi float [ %2353, %2298 ], [ %2125, %2289 ]
  %2359 = phi float [ %2354, %2298 ], [ %2126, %2289 ]
  %2360 = phi float [ %2334, %2298 ], [ %2291, %2289 ]
  %2361 = phi float [ %2335, %2298 ], [ %2127, %2289 ]
  %2362 = phi float [ %2336, %2298 ], [ %2128, %2289 ]
  %2363 = phi float [ %2337, %2298 ], [ %2129, %2289 ]
  %2364 = phi float [ %2317, %2298 ], [ %2292, %2289 ]
  %2365 = phi float [ %2318, %2298 ], [ %2130, %2289 ]
  %2366 = phi float [ %2319, %2298 ], [ %2131, %2289 ]
  %2367 = phi float [ %2320, %2298 ], [ %2132, %2289 ]
  %2368 = extractvalue %dx.types.CBufRet.f32 %1942, 3
  %2369 = fmul fast float %2368, %2364
  %2370 = fmul fast float %2368, %2360
  %2371 = fmul fast float %2368, %2356
  %2372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2373 = extractvalue %dx.types.CBufRet.f32 %2372, 3
  %2374 = fmul fast float %2369, %2373
  %2375 = fmul fast float %2370, %2373
  %2376 = fmul fast float %2371, %2373
  %2377 = fmul fast float %2365, 1.500000e+00
  %2378 = fmul fast float %2377, %2368
  %2379 = fmul fast float %2378, %2373
  %2380 = fmul fast float %2366, 1.500000e+00
  %2381 = fmul fast float %2380, %2368
  %2382 = fmul fast float %2381, %2373
  %2383 = fmul fast float %2367, 1.500000e+00
  %2384 = fmul fast float %2383, %2368
  %2385 = fmul fast float %2384, %2373
  %2386 = fmul fast float %2361, 1.500000e+00
  %2387 = fmul fast float %2386, %2368
  %2388 = fmul fast float %2387, %2373
  %2389 = fmul fast float %2362, 1.500000e+00
  %2390 = fmul fast float %2389, %2368
  %2391 = fmul fast float %2390, %2373
  %2392 = fmul fast float %2363, 1.500000e+00
  %2393 = fmul fast float %2392, %2368
  %2394 = fmul fast float %2393, %2373
  %2395 = fmul fast float %2357, 1.500000e+00
  %2396 = fmul fast float %2395, %2368
  %2397 = fmul fast float %2396, %2373
  %2398 = fmul fast float %2358, 1.500000e+00
  %2399 = fmul fast float %2398, %2368
  %2400 = fmul fast float %2399, %2373
  %2401 = fmul fast float %2359, 1.500000e+00
  %2402 = fmul fast float %2401, %2368
  %2403 = fmul fast float %2402, %2373
  %2404 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2374)  ; FMax(a,b)
  %2405 = call float @dx.op.dot3.f32(i32 55, float %2379, float %2382, float %2385, float %2379, float %2382, float %2385)  ; Dot3(ax,ay,az,bx,by,bz)
  %2406 = fcmp fast oeq float %2405, 0.000000e+00
  %2407 = fcmp fast oeq float %2404, 0.000000e+00
  %2408 = or i1 %2407, %2406
  br i1 %2408, label %2438, label %2409

; <label>:2409                                    ; preds = %2355
  %2410 = fsub fast float -0.000000e+00, %2385
  %2411 = fsub fast float -0.000000e+00, %2379
  %2412 = call float @dx.op.unary.f32(i32 24, float %2405)  ; Sqrt(value)
  %2413 = fdiv fast float %2412, %2404
  %2414 = fcmp fast ogt float %2413, 0x3FFB6F8900000000
  %2415 = select i1 %2414, float 0x3FFB6F8900000000, float %2413
  %2416 = fmul fast float %2415, 0x3FE8A23460000000
  %2417 = call float @dx.op.unary.f32(i32 7, float %2416)  ; Saturate(value)
  %2418 = call float @dx.op.binary.f32(i32 35, float %2415, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2419 = fmul fast float %2417, %2404
  %2420 = fmul fast float %2418, 0x3FF279A740000000
  %2421 = fadd fast float %2420, -1.000000e+00
  %2422 = call float @dx.op.dot3.f32(i32 55, float %2410, float %2411, float %2382, float %2410, float %2411, float %2382)  ; Dot3(ax,ay,az,bx,by,bz)
  %2423 = call float @dx.op.unary.f32(i32 25, float %2422)  ; Rsqrt(value)
  %2424 = fmul fast float %2423, %2410
  %2425 = fmul fast float %2423, %2411
  %2426 = fmul fast float %2423, %2382
  %2427 = fmul fast float %2421, %2421
  %2428 = fsub fast float 1.000000e+00, %2427
  %2429 = fmul fast float %2418, 0x40005F8BE0000000
  %2430 = fsub fast float 0x400C5BF8A0000000, %2429
  %2431 = fdiv fast float %2419, %2430
  %2432 = fmul fast float %2431, 0x3FEE31C3C0000000
  %2433 = fmul fast float %2432, %2428
  %2434 = fmul fast float %2418, 0x3FDACB7480000000
  %2435 = fadd fast float %2434, 0xBFD7347680000000
  %2436 = fmul fast float %2435, %2431
  %2437 = fmul fast float %2436, %2428
  br label %2438

; <label>:2438                                    ; preds = %2409, %2355
  %2439 = phi float [ %2424, %2409 ], [ 0.000000e+00, %2355 ]
  %2440 = phi float [ %2425, %2409 ], [ 0.000000e+00, %2355 ]
  %2441 = phi float [ %2426, %2409 ], [ 0.000000e+00, %2355 ]
  %2442 = phi float [ %2433, %2409 ], [ 0.000000e+00, %2355 ]
  %2443 = phi float [ %2437, %2409 ], [ 0.000000e+00, %2355 ]
  %2444 = call float @dx.op.dot3.f32(i32 55, float %2439, float %2440, float %2441, float %1391, float %1392, float %1393)  ; Dot3(ax,ay,az,bx,by,bz)
  %2445 = fmul fast float %2444, %2444
  %2446 = fmul fast float %2445, 0x3FEE471020000000
  %2447 = fadd fast float %2446, 0xBFD42F6020000000
  %2448 = fmul fast float %2404, 0x3FD20DD760000000
  %2449 = fmul fast float %2447, %2443
  %2450 = fmul fast float %2442, 0x3FDF454380000000
  %2451 = fmul fast float %2450, %2444
  %2452 = fadd fast float %2451, %2448
  %2453 = fadd fast float %2452, %2449
  %2454 = call float @dx.op.dot3.f32(i32 55, float %2439, float %2440, float %2441, float %1404, float %1405, float %1406)  ; Dot3(ax,ay,az,bx,by,bz)
  %2455 = fmul fast float %2454, 0x3FDF454380000000
  %2456 = fmul fast float %2454, %2454
  %2457 = fmul fast float %2456, 0x3FEE471020000000
  %2458 = fadd fast float %2457, 0xBFD42F6020000000
  %2459 = call float @dx.op.dot3.f32(i32 55, float %2404, float %2442, float %2443, float 0x3FD20DD760000000, float %2455, float %2458)  ; Dot3(ax,ay,az,bx,by,bz)
  %2460 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2375)  ; FMax(a,b)
  %2461 = call float @dx.op.dot3.f32(i32 55, float %2388, float %2391, float %2394, float %2388, float %2391, float %2394)  ; Dot3(ax,ay,az,bx,by,bz)
  %2462 = fcmp fast oeq float %2461, 0.000000e+00
  %2463 = fcmp fast oeq float %2460, 0.000000e+00
  %2464 = or i1 %2463, %2462
  br i1 %2464, label %2494, label %2465

; <label>:2465                                    ; preds = %2438
  %2466 = fsub fast float -0.000000e+00, %2394
  %2467 = fsub fast float -0.000000e+00, %2388
  %2468 = call float @dx.op.unary.f32(i32 24, float %2461)  ; Sqrt(value)
  %2469 = fdiv fast float %2468, %2460
  %2470 = fcmp fast ogt float %2469, 0x3FFB6F8900000000
  %2471 = select i1 %2470, float 0x3FFB6F8900000000, float %2469
  %2472 = fmul fast float %2471, 0x3FE8A23460000000
  %2473 = call float @dx.op.unary.f32(i32 7, float %2472)  ; Saturate(value)
  %2474 = call float @dx.op.binary.f32(i32 35, float %2471, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2475 = fmul fast float %2473, %2460
  %2476 = fmul fast float %2474, 0x3FF279A740000000
  %2477 = fadd fast float %2476, -1.000000e+00
  %2478 = call float @dx.op.dot3.f32(i32 55, float %2466, float %2467, float %2391, float %2466, float %2467, float %2391)  ; Dot3(ax,ay,az,bx,by,bz)
  %2479 = call float @dx.op.unary.f32(i32 25, float %2478)  ; Rsqrt(value)
  %2480 = fmul fast float %2479, %2466
  %2481 = fmul fast float %2479, %2467
  %2482 = fmul fast float %2479, %2391
  %2483 = fmul fast float %2477, %2477
  %2484 = fsub fast float 1.000000e+00, %2483
  %2485 = fmul fast float %2474, 0x40005F8BE0000000
  %2486 = fsub fast float 0x400C5BF8A0000000, %2485
  %2487 = fdiv fast float %2475, %2486
  %2488 = fmul fast float %2487, 0x3FEE31C3C0000000
  %2489 = fmul fast float %2488, %2484
  %2490 = fmul fast float %2474, 0x3FDACB7480000000
  %2491 = fadd fast float %2490, 0xBFD7347680000000
  %2492 = fmul fast float %2491, %2487
  %2493 = fmul fast float %2492, %2484
  br label %2494

; <label>:2494                                    ; preds = %2465, %2438
  %2495 = phi float [ %2480, %2465 ], [ 0.000000e+00, %2438 ]
  %2496 = phi float [ %2481, %2465 ], [ 0.000000e+00, %2438 ]
  %2497 = phi float [ %2482, %2465 ], [ 0.000000e+00, %2438 ]
  %2498 = phi float [ %2489, %2465 ], [ 0.000000e+00, %2438 ]
  %2499 = phi float [ %2493, %2465 ], [ 0.000000e+00, %2438 ]
  %2500 = call float @dx.op.dot3.f32(i32 55, float %2495, float %2496, float %2497, float %1391, float %1392, float %1393)  ; Dot3(ax,ay,az,bx,by,bz)
  %2501 = fmul fast float %2500, %2500
  %2502 = fmul fast float %2501, 0x3FEE471020000000
  %2503 = fadd fast float %2502, 0xBFD42F6020000000
  %2504 = fmul fast float %2460, 0x3FD20DD760000000
  %2505 = fmul fast float %2503, %2499
  %2506 = fmul fast float %2498, 0x3FDF454380000000
  %2507 = fmul fast float %2506, %2500
  %2508 = fadd fast float %2507, %2504
  %2509 = fadd fast float %2508, %2505
  %2510 = call float @dx.op.dot3.f32(i32 55, float %2495, float %2496, float %2497, float %1404, float %1405, float %1406)  ; Dot3(ax,ay,az,bx,by,bz)
  %2511 = fmul fast float %2510, 0x3FDF454380000000
  %2512 = fmul fast float %2510, %2510
  %2513 = fmul fast float %2512, 0x3FEE471020000000
  %2514 = fadd fast float %2513, 0xBFD42F6020000000
  %2515 = call float @dx.op.dot3.f32(i32 55, float %2460, float %2498, float %2499, float 0x3FD20DD760000000, float %2511, float %2514)  ; Dot3(ax,ay,az,bx,by,bz)
  %2516 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2376)  ; FMax(a,b)
  %2517 = call float @dx.op.dot3.f32(i32 55, float %2397, float %2400, float %2403, float %2397, float %2400, float %2403)  ; Dot3(ax,ay,az,bx,by,bz)
  %2518 = fcmp fast oeq float %2517, 0.000000e+00
  %2519 = fcmp fast oeq float %2516, 0.000000e+00
  %2520 = or i1 %2519, %2518
  br i1 %2520, label %2550, label %2521

; <label>:2521                                    ; preds = %2494
  %2522 = fsub fast float -0.000000e+00, %2403
  %2523 = fsub fast float -0.000000e+00, %2397
  %2524 = call float @dx.op.unary.f32(i32 24, float %2517)  ; Sqrt(value)
  %2525 = fdiv fast float %2524, %2516
  %2526 = fcmp fast ogt float %2525, 0x3FFB6F8900000000
  %2527 = select i1 %2526, float 0x3FFB6F8900000000, float %2525
  %2528 = fmul fast float %2527, 0x3FE8A23460000000
  %2529 = call float @dx.op.unary.f32(i32 7, float %2528)  ; Saturate(value)
  %2530 = call float @dx.op.binary.f32(i32 35, float %2527, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2531 = fmul fast float %2529, %2516
  %2532 = fmul fast float %2530, 0x3FF279A740000000
  %2533 = fadd fast float %2532, -1.000000e+00
  %2534 = call float @dx.op.dot3.f32(i32 55, float %2522, float %2523, float %2400, float %2522, float %2523, float %2400)  ; Dot3(ax,ay,az,bx,by,bz)
  %2535 = call float @dx.op.unary.f32(i32 25, float %2534)  ; Rsqrt(value)
  %2536 = fmul fast float %2535, %2522
  %2537 = fmul fast float %2535, %2523
  %2538 = fmul fast float %2535, %2400
  %2539 = fmul fast float %2533, %2533
  %2540 = fsub fast float 1.000000e+00, %2539
  %2541 = fmul fast float %2530, 0x40005F8BE0000000
  %2542 = fsub fast float 0x400C5BF8A0000000, %2541
  %2543 = fdiv fast float %2531, %2542
  %2544 = fmul fast float %2543, 0x3FEE31C3C0000000
  %2545 = fmul fast float %2544, %2540
  %2546 = fmul fast float %2530, 0x3FDACB7480000000
  %2547 = fadd fast float %2546, 0xBFD7347680000000
  %2548 = fmul fast float %2547, %2543
  %2549 = fmul fast float %2548, %2540
  br label %2550

; <label>:2550                                    ; preds = %2521, %2494
  %2551 = phi float [ %2536, %2521 ], [ 0.000000e+00, %2494 ]
  %2552 = phi float [ %2537, %2521 ], [ 0.000000e+00, %2494 ]
  %2553 = phi float [ %2538, %2521 ], [ 0.000000e+00, %2494 ]
  %2554 = phi float [ %2545, %2521 ], [ 0.000000e+00, %2494 ]
  %2555 = phi float [ %2549, %2521 ], [ 0.000000e+00, %2494 ]
  %2556 = call float @dx.op.dot3.f32(i32 55, float %2551, float %2552, float %2553, float %1391, float %1392, float %1393)  ; Dot3(ax,ay,az,bx,by,bz)
  %2557 = fmul fast float %2556, %2556
  %2558 = fmul fast float %2557, 0x3FEE471020000000
  %2559 = fadd fast float %2558, 0xBFD42F6020000000
  %2560 = fmul fast float %2516, 0x3FD20DD760000000
  %2561 = fmul fast float %2559, %2555
  %2562 = fmul fast float %2554, 0x3FDF454380000000
  %2563 = fmul fast float %2562, %2556
  %2564 = fadd fast float %2563, %2560
  %2565 = fadd fast float %2564, %2561
  %2566 = call float @dx.op.dot3.f32(i32 55, float %2551, float %2552, float %2553, float %1404, float %1405, float %1406)  ; Dot3(ax,ay,az,bx,by,bz)
  %2567 = fmul fast float %2566, 0x3FDF454380000000
  %2568 = fmul fast float %2566, %2566
  %2569 = fmul fast float %2568, 0x3FEE471020000000
  %2570 = fadd fast float %2569, 0xBFD42F6020000000
  %2571 = call float @dx.op.dot3.f32(i32 55, float %2516, float %2554, float %2555, float 0x3FD20DD760000000, float %2567, float %2570)  ; Dot3(ax,ay,az,bx,by,bz)
  %2572 = call float @dx.op.binary.f32(i32 35, float %2453, float 0.000000e+00)  ; FMax(a,b)
  %2573 = call float @dx.op.binary.f32(i32 35, float %2509, float 0.000000e+00)  ; FMax(a,b)
  %2574 = call float @dx.op.binary.f32(i32 35, float %2565, float 0.000000e+00)  ; FMax(a,b)
  %2575 = call float @dx.op.binary.f32(i32 35, float %2459, float 0.000000e+00)  ; FMax(a,b)
  %2576 = call float @dx.op.binary.f32(i32 35, float %2515, float 0.000000e+00)  ; FMax(a,b)
  %2577 = call float @dx.op.binary.f32(i32 35, float %2571, float 0.000000e+00)  ; FMax(a,b)
  %2578 = fsub fast float %1774, %2572
  %2579 = fsub fast float %1775, %2573
  %2580 = fsub fast float %1776, %2574
  %2581 = fmul fast float %2578, %1455
  %2582 = fmul fast float %2579, %1455
  %2583 = fmul fast float %2580, %1455
  %2584 = fadd fast float %2581, %2572
  %2585 = fadd fast float %2582, %2573
  %2586 = fadd fast float %2583, %2574
  %2587 = fsub fast float %1771, %2575
  %2588 = fsub fast float %1772, %2576
  %2589 = fsub fast float %1773, %2577
  %2590 = fmul fast float %2587, %1455
  %2591 = fmul fast float %2588, %1455
  %2592 = fmul fast float %2589, %1455
  %2593 = fadd fast float %2590, %2575
  %2594 = fadd fast float %2591, %2576
  %2595 = fadd fast float %2592, %2577
  br label %2596

; <label>:2596                                    ; preds = %2550, %1770
  %2597 = phi float [ %2593, %2550 ], [ %1771, %1770 ]
  %2598 = phi float [ %2594, %2550 ], [ %1772, %1770 ]
  %2599 = phi float [ %2595, %2550 ], [ %1773, %1770 ]
  %2600 = phi float [ %2584, %2550 ], [ %1774, %1770 ]
  %2601 = phi float [ %2585, %2550 ], [ %1775, %1770 ]
  %2602 = phi float [ %2586, %2550 ], [ %1776, %1770 ]
  %2603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2604 = extractvalue %dx.types.CBufRet.f32 %2603, 0
  %2605 = call float @dx.op.binary.f32(i32 36, float %1385, float %2604)  ; FMin(a,b)
  %2606 = fsub fast float 1.000000e+00, %1407
  %2607 = fmul fast float %2605, %2606
  %2608 = fsub fast float 1.000000e+00, %2607
  %2609 = bitcast float %2608 to i32
  %2610 = sub nsw i32 2129859010, %2609
  %2611 = bitcast i32 %2610 to float
  %2612 = call float @dx.op.binary.f32(i32 36, float %1386, float %2604)  ; FMin(a,b)
  %2613 = fmul fast float %2612, %2606
  %2614 = fsub fast float 1.000000e+00, %2613
  %2615 = bitcast float %2614 to i32
  %2616 = sub nsw i32 2129859010, %2615
  %2617 = bitcast i32 %2616 to float
  %2618 = call float @dx.op.binary.f32(i32 36, float %1387, float %2604)  ; FMin(a,b)
  %2619 = fmul fast float %2618, %2606
  %2620 = fsub fast float 1.000000e+00, %2619
  %2621 = bitcast float %2620 to i32
  %2622 = sub nsw i32 2129859010, %2621
  %2623 = bitcast i32 %2622 to float
  %2624 = fmul fast float %2600, %1407
  %2625 = fmul fast float %2624, %2611
  %2626 = fmul fast float %2601, %1407
  %2627 = fmul fast float %2626, %2617
  %2628 = fmul fast float %2602, %1407
  %2629 = fmul fast float %2628, %2623
  %2630 = call float @dx.op.binary.f32(i32 36, float %1388, float %2604)  ; FMin(a,b)
  %2631 = fmul fast float %2630, %2606
  %2632 = fsub fast float 1.000000e+00, %2631
  %2633 = bitcast float %2632 to i32
  %2634 = sub nsw i32 2129859010, %2633
  %2635 = bitcast i32 %2634 to float
  %2636 = call float @dx.op.binary.f32(i32 36, float %1389, float %2604)  ; FMin(a,b)
  %2637 = fmul fast float %2636, %2606
  %2638 = fsub fast float 1.000000e+00, %2637
  %2639 = bitcast float %2638 to i32
  %2640 = sub nsw i32 2129859010, %2639
  %2641 = bitcast i32 %2640 to float
  %2642 = call float @dx.op.binary.f32(i32 36, float %1396, float %2604)  ; FMin(a,b)
  %2643 = fmul fast float %2642, %2606
  %2644 = fsub fast float 1.000000e+00, %2643
  %2645 = bitcast float %2644 to i32
  %2646 = sub nsw i32 2129859010, %2645
  %2647 = bitcast i32 %2646 to float
  %2648 = fmul fast float %2597, %1407
  %2649 = fmul fast float %2648, %2635
  %2650 = fmul fast float %2598, %1407
  %2651 = fmul fast float %2650, %2641
  %2652 = fmul fast float %2599, %1407
  %2653 = fmul fast float %2652, %2647
  %2654 = call float @dx.op.dot3.f32(i32 55, float %2625, float %2627, float %2629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2655 = select i1 %175, float 0.000000e+00, float %2625
  %2656 = select i1 %175, float %2654, float %2627
  %2657 = select i1 %175, float 0.000000e+00, float %2629
  %2658 = call float @dx.op.dot3.f32(i32 55, float %2649, float %2651, float %2653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2659 = select i1 %175, float 0.000000e+00, float %2649
  %2660 = select i1 %175, float %2658, float %2651
  %2661 = select i1 %175, float 0.000000e+00, float %2653
  %2662 = fmul fast float %1398, 9.843750e-01
  %2663 = fmul fast float %1394, 9.843750e-01
  %2664 = fadd fast float %2662, 7.812500e-03
  %2665 = fadd fast float %2663, 7.812500e-03
  %2666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %31, float %2664, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2667 = extractvalue %dx.types.ResRet.f32 %2666, 2
  %2668 = extractvalue %dx.types.ResRet.f32 %2666, 3
  %2669 = fmul fast float %2667, %1388
  %2670 = fmul fast float %2667, %1389
  %2671 = fmul fast float %2667, %1396
  %2672 = fadd fast float %2669, %2668
  %2673 = fadd fast float %2670, %2668
  %2674 = fadd fast float %2671, %2668
  %2675 = call float @dx.op.binary.f32(i32 35, float %2673, float %2674)  ; FMax(a,b)
  %2676 = call float @dx.op.binary.f32(i32 35, float %2672, float %2675)  ; FMax(a,b)
  %2677 = fsub fast float 1.000000e+00, %2676
  %2678 = fmul fast float %2677, %2655
  %2679 = fmul fast float %2677, %2656
  %2680 = fmul fast float %2677, %2657
  %2681 = fmul fast float %2672, %2659
  %2682 = fmul fast float %2673, %2660
  %2683 = fmul fast float %2674, %2661
  %2684 = fmul fast float %2678, %754
  %2685 = fmul fast float %2679, %754
  %2686 = fmul fast float %2680, %754
  %2687 = fadd fast float %2681, %750
  %2688 = fmul fast float %2687, %754
  %2689 = fadd fast float %2682, %751
  %2690 = fmul fast float %2689, %754
  %2691 = fadd fast float %2683, %752
  %2692 = fmul fast float %2691, %754
  %2693 = bitcast i32 %1410 to float
  %2694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2695 = extractvalue %dx.types.CBufRet.f32 %2694, 3
  %2696 = fcmp fast oeq float %2695, 0.000000e+00
  br i1 %2696, label %2855, label %2697

; <label>:2697                                    ; preds = %2596
  %2698 = extractvalue %dx.types.CBufRet.f32 %2694, 0
  %2699 = extractvalue %dx.types.CBufRet.f32 %2694, 1
  %2700 = extractvalue %dx.types.CBufRet.f32 %2694, 2
  %2701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2702 = extractvalue %dx.types.CBufRet.f32 %2701, 0
  %2703 = extractvalue %dx.types.CBufRet.f32 %2701, 1
  %2704 = extractvalue %dx.types.CBufRet.f32 %2701, 2
  %2705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2706 = extractvalue %dx.types.CBufRet.f32 %2705, 0
  %2707 = extractvalue %dx.types.CBufRet.f32 %2705, 1
  %2708 = call float @dx.op.dot3.f32(i32 55, float %2702, float %2703, float %2704, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2709 = select i1 %175, float %2706, float %2702
  %2710 = select i1 %175, float %2708, float %2703
  %2711 = select i1 %175, float %2707, float %2704
  %2712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2713 = extractvalue %dx.types.CBufRet.f32 %2712, 1
  %2714 = fcmp fast une float %2713, 0.000000e+00
  br i1 %2714, label %2715, label %2732

; <label>:2715                                    ; preds = %2697
  %2716 = fptoui float %55 to i32
  %2717 = fptoui float %56 to i32
  %2718 = lshr i32 %2716, 4
  %2719 = lshr i32 %2717, 4
  %2720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2721 = extractvalue %dx.types.CBufRet.f32 %2720, 0
  %2722 = fptoui float %2721 to i32
  %2723 = add i32 %2722, 15
  %2724 = lshr i32 %2723, 4
  %2725 = mul i32 %2724, %2719
  %2726 = add i32 %2725, %2718
  %2727 = shl i32 %2726, 3
  %2728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.i32 %2728, 0
  %2730 = and i32 %2729, -268435456
  %2731 = icmp eq i32 %2730, -1342177280
  br i1 %2731, label %2742, label %2732

; <label>:2732                                    ; preds = %2715, %2697
  %2733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.f32 %2733, 2
  %2735 = extractvalue %dx.types.CBufRet.f32 %2733, 3
  %2736 = fmul fast float %2734, %55
  %2737 = fmul fast float %2735, %56
  %2738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %32, float %2736, float %2737, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2739 = extractvalue %dx.types.ResRet.f32 %2738, 0
  %2740 = extractvalue %dx.types.ResRet.f32 %2738, 1
  %2741 = extractvalue %dx.types.ResRet.f32 %2738, 2
  br label %2742

; <label>:2742                                    ; preds = %2732, %2715
  %2743 = phi float [ %2739, %2732 ], [ 0.000000e+00, %2715 ]
  %2744 = phi float [ %2740, %2732 ], [ 0.000000e+00, %2715 ]
  %2745 = phi float [ %2741, %2732 ], [ 0.000000e+00, %2715 ]
  %2746 = call float @dx.op.binary.f32(i32 36, float %2744, float %2745)  ; FMin(a,b)
  %2747 = call float @dx.op.binary.f32(i32 36, float %2743, float %2746)  ; FMin(a,b)
  %2748 = fcmp fast ogt float %2747, 0.000000e+00
  br i1 %2748, label %2749, label %2855, !dx.controlflow.hints !76

; <label>:2749                                    ; preds = %2742
  %2750 = fmul fast float %2743, %2709
  %2751 = fmul fast float %2744, %2710
  %2752 = fmul fast float %2745, %2711
  %2753 = fsub fast float %2698, %1384
  %2754 = fsub fast float %2699, %1383
  %2755 = fsub fast float %2700, %1382
  %2756 = call float @dx.op.dot3.f32(i32 55, float %2753, float %2754, float %2755, float %2753, float %2754, float %2755)  ; Dot3(ax,ay,az,bx,by,bz)
  %2757 = call float @dx.op.unary.f32(i32 25, float %2756)  ; Rsqrt(value)
  %2758 = fmul fast float %2757, %2753
  %2759 = fmul fast float %2757, %2754
  %2760 = fmul fast float %2757, %2755
  %2761 = call float @dx.op.dot3.f32(i32 55, float %2698, float %2699, float %2700, float %1391, float %1392, float %1393)  ; Dot3(ax,ay,az,bx,by,bz)
  %2762 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1380, float %1379, float %2758, float %2759, float %2760)  ; Dot3(ax,ay,az,bx,by,bz)
  %2763 = call float @dx.op.unary.f32(i32 7, float %2761)  ; Saturate(value)
  %2764 = fmul fast float %2763, %2763
  %2765 = fmul fast float %2764, %2693
  %2766 = call float @dx.op.unary.f32(i32 7, float %2765)  ; Saturate(value)
  %2767 = fmul fast float %2766, %2763
  %2768 = call float @dx.op.dot3.f32(i32 55, float %1391, float %1392, float %1393, float %2758, float %2759, float %2760)  ; Dot3(ax,ay,az,bx,by,bz)
  %2769 = fmul fast float %2768, %2768
  %2770 = call float @dx.op.unary.f32(i32 6, float %2761)  ; FAbs(value)
  %2771 = fsub fast float 1.000000e+00, %1394
  %2772 = call float @dx.op.binary.f32(i32 35, float %2771, float 0x3F847AE140000000)  ; FMax(a,b)
  %2773 = fmul fast float %2772, %2772
  %2774 = fmul fast float %2773, %2773
  %2775 = fsub fast float 1.000000e+00, %2774
  %2776 = fmul fast float %1398, %1398
  %2777 = fmul fast float %2776, %2775
  %2778 = fadd fast float %2777, %2774
  %2779 = bitcast float %2778 to i32
  %2780 = ashr i32 %2779, 1
  %2781 = add nsw i32 %2780, 532487669
  %2782 = bitcast i32 %2781 to float
  %2783 = fadd fast float %2782, %1398
  %2784 = fmul fast float %2774, %2769
  %2785 = fsub fast float 1.000000e+00, %2769
  %2786 = fadd fast float %2785, %2784
  %2787 = fmul fast float %2770, %2770
  %2788 = fmul fast float %2787, %2775
  %2789 = fadd fast float %2788, %2774
  %2790 = bitcast float %2789 to i32
  %2791 = ashr i32 %2790, 1
  %2792 = add nsw i32 %2791, 532487669
  %2793 = bitcast i32 %2792 to float
  %2794 = fadd fast float %2793, %2770
  %2795 = fmul fast float %2786, %2786
  %2796 = fmul fast float %2795, %2783
  %2797 = fmul fast float %2796, %2794
  %2798 = fdiv fast float 0x3FF0A00000000000, %2797
  %2799 = fmul fast float %2798, %2774
  %2800 = call float @dx.op.unary.f32(i32 6, float %2762)  ; FAbs(value)
  %2801 = fsub fast float 1.000000e+00, %2800
  %2802 = bitcast float %2801 to i32
  %2803 = sitofp i32 %2802 to float
  %2804 = fmul fast float %2803, 5.000000e+00
  %2805 = fadd fast float %2804, 0xC1EFBF8940000000
  %2806 = fptosi float %2805 to i32
  %2807 = bitcast i32 %2806 to float
  %2808 = fsub fast float 1.000000e+00, %1388
  %2809 = fsub fast float 1.000000e+00, %1389
  %2810 = fsub fast float 1.000000e+00, %1396
  %2811 = fmul fast float %2807, %2808
  %2812 = fmul fast float %2807, %2809
  %2813 = fmul fast float %2807, %2810
  %2814 = fadd fast float %2811, %1388
  %2815 = fadd fast float %2812, %1389
  %2816 = fadd fast float %2813, %1396
  %2817 = fmul fast float %2761, 9.843750e-01
  %2818 = fadd fast float %2817, 7.812500e-03
  %2819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %31, float %2818, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2820 = extractvalue %dx.types.ResRet.f32 %2819, 2
  %2821 = extractvalue %dx.types.ResRet.f32 %2819, 3
  %2822 = fmul fast float %2820, %1388
  %2823 = fmul fast float %2820, %1389
  %2824 = fmul fast float %2820, %1396
  %2825 = fadd fast float %2822, %2821
  %2826 = fadd fast float %2823, %2821
  %2827 = fadd fast float %2824, %2821
  %2828 = call float @dx.op.binary.f32(i32 35, float %2826, float %2827)  ; FMax(a,b)
  %2829 = call float @dx.op.binary.f32(i32 35, float %2825, float %2828)  ; FMax(a,b)
  %2830 = fsub fast float 1.000000e+00, %2829
  %2831 = fmul fast float %2767, %2750
  %2832 = fmul fast float %2831, %2830
  %2833 = fmul fast float %2767, %2751
  %2834 = fmul fast float %2833, %2830
  %2835 = fmul fast float %2767, %2752
  %2836 = fmul fast float %2835, %2830
  %2837 = fmul fast float %2831, %2799
  %2838 = fmul fast float %2837, %2814
  %2839 = fmul fast float %2833, %2799
  %2840 = fmul fast float %2839, %2815
  %2841 = fmul fast float %2835, %2799
  %2842 = fmul fast float %2841, %2816
  %2843 = fadd fast float %2832, %2678
  %2844 = fmul fast float %2843, %754
  %2845 = fadd fast float %2834, %2679
  %2846 = fmul fast float %2845, %754
  %2847 = fadd fast float %2836, %2680
  %2848 = fmul fast float %2847, %754
  %2849 = fadd fast float %2838, %2687
  %2850 = fmul fast float %2849, %754
  %2851 = fadd fast float %2840, %2689
  %2852 = fmul fast float %2851, %754
  %2853 = fadd fast float %2842, %2691
  %2854 = fmul fast float %2853, %754
  br label %2855

; <label>:2855                                    ; preds = %2749, %2742, %2596
  %2856 = phi float [ %2688, %2596 ], [ %2688, %2742 ], [ %2850, %2749 ]
  %2857 = phi float [ %2690, %2596 ], [ %2690, %2742 ], [ %2852, %2749 ]
  %2858 = phi float [ %2692, %2596 ], [ %2692, %2742 ], [ %2854, %2749 ]
  %2859 = phi float [ %2684, %2596 ], [ %2684, %2742 ], [ %2844, %2749 ]
  %2860 = phi float [ %2685, %2596 ], [ %2685, %2742 ], [ %2846, %2749 ]
  %2861 = phi float [ %2686, %2596 ], [ %2686, %2742 ], [ %2848, %2749 ]
  %2862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2863 = extractvalue %dx.types.CBufRet.i32 %2862, 0
  %2864 = icmp eq i32 %2863, 0
  br i1 %2864, label %3230, label %2865

; <label>:2865                                    ; preds = %2855
  %2866 = fptoui float %55 to i32
  %2867 = fptoui float %56 to i32
  %2868 = lshr i32 %2866, 4
  %2869 = lshr i32 %2867, 4
  %2870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2871 = extractvalue %dx.types.CBufRet.i32 %2870, 0
  %2872 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2869, i32 %2871, i32 %2868)  ; UMad(a,b,c)
  %2873 = add nsw i32 %2863, -1
  %2874 = call i32 @dx.op.binary.i32(i32 37, i32 %2873, i32 0)  ; IMax(a,b)
  %2875 = call float @dx.op.binary.f32(i32 35, float %50, float 0.000000e+00)  ; FMax(a,b)
  %2876 = fptoui float %2875 to i32
  %2877 = lshr i32 %2876, 5
  %2878 = call i32 @dx.op.binary.i32(i32 40, i32 %2877, i32 8191)  ; UMin(a,b)
  %2879 = shl i32 %2878, 2
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = lshr i32 %2881, 16
  %2883 = and i32 %2881, 65535
  %2884 = lshr i32 %2881, 21
  %2885 = lshr i32 %2883, 5
  %2886 = call i32 @dx.op.binary.i32(i32 40, i32 %2885, i32 %2874)  ; UMin(a,b)
  %2887 = icmp ugt i32 %2884, %2886
  br i1 %2887, label %3230, label %2888

; <label>:2888                                    ; preds = %2865
  br label %2889

; <label>:2889                                    ; preds = %3220, %2888
  %2890 = phi i32 [ %3227, %3220 ], [ %2884, %2888 ]
  %2891 = phi float [ %3221, %3220 ], [ %2856, %2888 ]
  %2892 = phi float [ %3222, %3220 ], [ %2857, %2888 ]
  %2893 = phi float [ %3223, %3220 ], [ %2858, %2888 ]
  %2894 = phi float [ %3224, %3220 ], [ %2859, %2888 ]
  %2895 = phi float [ %3225, %3220 ], [ %2860, %2888 ]
  %2896 = phi float [ %3226, %3220 ], [ %2861, %2888 ]
  %2897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2898 = extractvalue %dx.types.CBufRet.i32 %2897, 0
  %2899 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2872, i32 %2898, i32 %2890)  ; UMad(a,b,c)
  %2900 = shl i32 %2899, 2
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = shl i32 %2890, 5
  %2904 = sub nsw i32 %2882, %2903
  %2905 = call i32 @dx.op.binary.i32(i32 37, i32 %2904, i32 0)  ; IMax(a,b)
  %2906 = call i32 @dx.op.binary.i32(i32 38, i32 %2905, i32 31)  ; IMin(a,b)
  %2907 = sub nsw i32 1, %2882
  %2908 = add nsw i32 %2907, %2883
  %2909 = call i32 @dx.op.binary.i32(i32 37, i32 %2908, i32 0)  ; IMax(a,b)
  %2910 = call i32 @dx.op.binary.i32(i32 38, i32 %2909, i32 32)  ; IMin(a,b)
  %2911 = and i32 %2910, 31
  %2912 = shl i32 -1, %2911
  %2913 = xor i32 %2912, -1
  %2914 = and i32 %2906, 31
  %2915 = shl i32 %2913, %2914
  %2916 = icmp eq i32 %2910, 32
  %2917 = select i1 %2916, i32 -1, i32 %2915
  %2918 = and i32 %2917, %2902
  %2919 = icmp eq i32 %2918, 0
  br i1 %2919, label %3220, label %2920

; <label>:2920                                    ; preds = %2889
  br label %2921

; <label>:2921                                    ; preds = %3001, %2920
  %2922 = phi i32 [ %2933, %3001 ], [ %2918, %2920 ]
  %2923 = phi float [ %3002, %3001 ], [ %2891, %2920 ]
  %2924 = phi float [ %3003, %3001 ], [ %2892, %2920 ]
  %2925 = phi float [ %3004, %3001 ], [ %2893, %2920 ]
  %2926 = phi float [ %3005, %3001 ], [ %2894, %2920 ]
  %2927 = phi float [ %3006, %3001 ], [ %2895, %2920 ]
  %2928 = phi float [ %3007, %3001 ], [ %2896, %2920 ]
  %2929 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2922)  ; FirstbitLo(value)
  %2930 = add i32 %2929, %2903
  %2931 = and i32 %2929, 31
  %2932 = shl i32 1, %2931
  %2933 = xor i32 %2932, %2922
  %2934 = mul i32 %2930, 112
  %2935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.f32 %2935, 0
  %2937 = extractvalue %dx.types.ResRet.f32 %2935, 1
  %2938 = extractvalue %dx.types.ResRet.f32 %2935, 2
  %2939 = or i32 %2934, 12
  %2940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.f32 %2940, 0
  %2942 = add i32 %2934, 44
  %2943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2942, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.f32 %2943, 0
  %2945 = add i32 %2934, 48
  %2946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.f32 %2946, 0
  %2948 = extractvalue %dx.types.ResRet.f32 %2946, 1
  %2949 = extractvalue %dx.types.ResRet.f32 %2946, 2
  %2950 = add i32 %2934, 80
  %2951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.f32 %2951, 1
  %2953 = extractvalue %dx.types.ResRet.f32 %2951, 2
  %2954 = call float @dx.op.dot3.f32(i32 55, float %2936, float %2937, float %2938, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2955 = select i1 %175, float %2952, float %2936
  %2956 = select i1 %175, float %2954, float %2937
  %2957 = select i1 %175, float %2953, float %2938
  %2958 = fsub fast float %2947, %102
  %2959 = fsub fast float %2948, %103
  %2960 = fsub fast float %2949, %104
  %2961 = call float @dx.op.dot3.f32(i32 55, float %2958, float %2959, float %2960, float %2958, float %2959, float %2960)  ; Dot3(ax,ay,az,bx,by,bz)
  %2962 = call float @dx.op.unary.f32(i32 24, float %2961)  ; Sqrt(value)
  %2963 = fdiv fast float 1.000000e+00, %2962
  %2964 = fmul fast float %2963, %2958
  %2965 = fmul fast float %2963, %2959
  %2966 = fmul fast float %2963, %2960
  %2967 = fadd fast float %2962, %2941
  %2968 = fdiv fast float 1.000000e+00, %2967
  %2969 = fmul float %2944, %2968
  %2970 = fmul float %2969, %2969
  %2971 = call float @dx.op.unary.f32(i32 7, float %2970)  ; Saturate(value)
  %2972 = and i32 %2932, %2918
  %2973 = icmp eq i32 %2972, 0
  br i1 %2973, label %2996, label %2974, !dx.controlflow.hints !77

; <label>:2974                                    ; preds = %2921
  %2975 = lshr i32 %2866, 5
  %2976 = lshr i32 %2867, 5
  %2977 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %17, i32 0, i32 %2975, i32 %2976, i32 %2930, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = and i32 %2978, 3
  %2980 = icmp eq i32 %2979, 0
  %2981 = select i1 %2980, float 1.000000e+00, float 0.000000e+00
  %2982 = icmp eq i32 %2979, 3
  br i1 %2982, label %2983, label %2996

; <label>:2983                                    ; preds = %2974
  %2984 = lshr i32 %2978, 10
  %2985 = and i32 %2984, 8160
  %2986 = and i32 %2867, 31
  %2987 = or i32 %2985, %2986
  %2988 = lshr i32 %2978, 1
  %2989 = and i32 %2988, 16352
  %2990 = and i32 %2866, 31
  %2991 = or i32 %2989, %2990
  %2992 = lshr i32 %2978, 23
  %2993 = and i32 %2992, 255
  %2994 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %2991, i32 %2987, i32 %2993, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2995 = extractvalue %dx.types.ResRet.f32 %2994, 0
  br label %2996

; <label>:2996                                    ; preds = %2983, %2974, %2921
  %2997 = phi float [ %2995, %2983 ], [ %2981, %2974 ], [ 0.000000e+00, %2921 ]
  %2998 = call float @dx.op.binary.f32(i32 36, float %2997, float %2997)  ; FMin(a,b)
  %2999 = call float @dx.op.binary.f32(i32 36, float %2997, float %2998)  ; FMin(a,b)
  %3000 = fcmp fast ogt float %2999, 0.000000e+00
  br i1 %3000, label %3009, label %3001, !dx.controlflow.hints !78

; <label>:3001                                    ; preds = %3070, %2996
  %3002 = phi float [ %2923, %2996 ], [ %3216, %3070 ]
  %3003 = phi float [ %2924, %2996 ], [ %3217, %3070 ]
  %3004 = phi float [ %2925, %2996 ], [ %3218, %3070 ]
  %3005 = phi float [ %2926, %2996 ], [ %3207, %3070 ]
  %3006 = phi float [ %2927, %2996 ], [ %3208, %3070 ]
  %3007 = phi float [ %2928, %2996 ], [ %3209, %3070 ]
  %3008 = icmp eq i32 %2922, %2932
  br i1 %3008, label %3219, label %2921

; <label>:3009                                    ; preds = %2996
  %3010 = fmul fast float %2997, %2955
  %3011 = fmul fast float %2997, %2956
  %3012 = fmul fast float %2997, %2957
  %3013 = fsub fast float %2949, %1184
  %3014 = fcmp fast ogt float %3013, 0.000000e+00
  %3015 = fsub fast float %104, %1184
  %3016 = fcmp fast ogt float %3015, 0.000000e+00
  %3017 = xor i1 %3016, %3014
  %3018 = fsub fast float %1184, %2949
  %3019 = fmul fast float %3018, 2.000000e+00
  %3020 = fadd fast float %3019, %2949
  %3021 = select i1 %3017, float %2949, float %3020
  %3022 = fsub fast float %3021, %104
  %3023 = call float @dx.op.dot3.f32(i32 55, float %2958, float %2959, float %3022, float %2958, float %2959, float %3022)  ; Dot3(ax,ay,az,bx,by,bz)
  %3024 = call float @dx.op.unary.f32(i32 25, float %3023)  ; Rsqrt(value)
  %3025 = fmul fast float %3024, %2958
  %3026 = fmul fast float %3024, %2959
  %3027 = fmul fast float %3024, %3022
  %3028 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1192)  ; Dot3(ax,ay,az,bx,by,bz)
  %3029 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3025, float %3026, float %3027)  ; Dot3(ax,ay,az,bx,by,bz)
  %3030 = fdiv fast float 1.000000e+00, %3029
  %3031 = fmul fast float %3030, %3028
  %3032 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3015, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3033 = fcmp fast ogt float %3032, 0.000000e+00
  %3034 = fcmp fast olt float %3032, 0.000000e+00
  %3035 = zext i1 %3033 to i32
  %3036 = zext i1 %3034 to i32
  %3037 = sub nsw i32 %3035, %3036
  %3038 = sitofp i32 %3037 to float
  %3039 = fsub fast float %3021, %1184
  %3040 = call float @dx.op.dot3.f32(i32 55, float %2958, float %2959, float %3039, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3041 = fcmp fast ogt float %3040, 0.000000e+00
  %3042 = fcmp fast olt float %3040, 0.000000e+00
  %3043 = zext i1 %3041 to i32
  %3044 = zext i1 %3042 to i32
  %3045 = sub nsw i32 %3043, %3044
  %3046 = sitofp i32 %3045 to float
  %3047 = fcmp fast une float %3038, %3046
  br i1 %3047, label %3048, label %3058

; <label>:3048                                    ; preds = %3009
  %3049 = fmul fast float %3031, %3027
  %3050 = fmul fast float %3031, %3026
  %3051 = fmul fast float %3031, %3025
  %3052 = fmul fast float %3051, %3051
  %3053 = fmul fast float %3050, %3050
  %3054 = fadd fast float %3052, %3053
  %3055 = fmul fast float %3049, %3049
  %3056 = fadd fast float %3054, %3055
  %3057 = call float @dx.op.unary.f32(i32 24, float %3056)  ; Sqrt(value)
  br label %3070

; <label>:3058                                    ; preds = %3009
  %3059 = icmp slt i32 %3037, 0
  br i1 %3059, label %3060, label %3070

; <label>:3060                                    ; preds = %3058
  %3061 = fsub fast float %102, %2947
  %3062 = fsub fast float %103, %2948
  %3063 = fsub fast float %104, %3021
  %3064 = fmul fast float %3061, %3061
  %3065 = fmul fast float %3062, %3062
  %3066 = fadd fast float %3064, %3065
  %3067 = fmul fast float %3063, %3063
  %3068 = fadd fast float %3066, %3067
  %3069 = call float @dx.op.unary.f32(i32 24, float %3068)  ; Sqrt(value)
  br label %3070

; <label>:3070                                    ; preds = %3060, %3058, %3048
  %3071 = phi float [ %3057, %3048 ], [ %3069, %3060 ], [ 0.000000e+00, %3058 ]
  %3072 = and i1 %3016, %3014
  %3073 = fsub fast float -0.000000e+00, %3071
  %3074 = select i1 %3072, float -0.000000e+00, float %3073
  %3075 = fmul fast float %1185, 0x3FF7154760000000
  %3076 = fmul fast float %3075, %3074
  %3077 = fmul fast float %1186, 0x3FF7154760000000
  %3078 = fmul fast float %3077, %3074
  %3079 = fmul fast float %1187, 0x3FF7154760000000
  %3080 = fmul fast float %3079, %3074
  %3081 = call float @dx.op.unary.f32(i32 21, float %3076)  ; Exp(value)
  %3082 = call float @dx.op.unary.f32(i32 21, float %3078)  ; Exp(value)
  %3083 = call float @dx.op.unary.f32(i32 21, float %3080)  ; Exp(value)
  %3084 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  %3085 = call float @dx.op.unary.f32(i32 7, float %3082)  ; Saturate(value)
  %3086 = call float @dx.op.unary.f32(i32 7, float %3083)  ; Saturate(value)
  %3087 = fmul fast float %3010, %3084
  %3088 = fmul fast float %3011, %3085
  %3089 = fmul fast float %3012, %3086
  %3090 = fsub fast float %2964, %1384
  %3091 = fsub fast float %2965, %1383
  %3092 = fsub fast float %2966, %1382
  %3093 = call float @dx.op.dot3.f32(i32 55, float %3090, float %3091, float %3092, float %3090, float %3091, float %3092)  ; Dot3(ax,ay,az,bx,by,bz)
  %3094 = call float @dx.op.unary.f32(i32 25, float %3093)  ; Rsqrt(value)
  %3095 = fmul fast float %3094, %3090
  %3096 = fmul fast float %3094, %3091
  %3097 = fmul fast float %3094, %3092
  %3098 = call float @dx.op.dot3.f32(i32 55, float %2964, float %2965, float %2966, float %1391, float %1392, float %1393)  ; Dot3(ax,ay,az,bx,by,bz)
  %3099 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1380, float %1379, float %3095, float %3096, float %3097)  ; Dot3(ax,ay,az,bx,by,bz)
  %3100 = call float @dx.op.unary.f32(i32 7, float %3098)  ; Saturate(value)
  %3101 = fmul fast float %3100, %2971
  %3102 = fmul fast float %3100, %3100
  %3103 = fmul fast float %3102, %2693
  %3104 = call float @dx.op.unary.f32(i32 7, float %3103)  ; Saturate(value)
  %3105 = fmul fast float %3101, %3104
  %3106 = bitcast float %2961 to i32
  %3107 = ashr i32 %3106, 1
  %3108 = sub nsw i32 1597463007, %3107
  %3109 = bitcast i32 %3108 to float
  %3110 = fmul fast float %3109, %2958
  %3111 = fmul fast float %3109, %2959
  %3112 = fmul fast float %3109, %2960
  %3113 = fsub fast float %3110, %1384
  %3114 = fsub fast float %3111, %1383
  %3115 = fsub fast float %3112, %1382
  %3116 = call float @dx.op.dot3.f32(i32 55, float %3113, float %3114, float %3115, float %3113, float %3114, float %3115)  ; Dot3(ax,ay,az,bx,by,bz)
  %3117 = call float @dx.op.unary.f32(i32 25, float %3116)  ; Rsqrt(value)
  %3118 = fmul fast float %3113, %3117
  %3119 = fmul fast float %3114, %3117
  %3120 = fmul fast float %3115, %3117
  %3121 = call float @dx.op.dot3.f32(i32 55, float %1391, float %1392, float %1393, float %3118, float %3119, float %3120)  ; Dot3(ax,ay,az,bx,by,bz)
  %3122 = fmul fast float %3121, %3121
  %3123 = call float @dx.op.unary.f32(i32 6, float %3098)  ; FAbs(value)
  %3124 = fsub fast float 1.000000e+00, %1394
  %3125 = call float @dx.op.binary.f32(i32 35, float %3124, float 0x3F847AE140000000)  ; FMax(a,b)
  %3126 = fmul fast float %3125, %3125
  %3127 = fmul fast float %3126, %3126
  %3128 = fsub fast float 1.000000e+00, %3127
  %3129 = fmul fast float %1398, %1398
  %3130 = fmul fast float %3129, %3128
  %3131 = fadd fast float %3130, %3127
  %3132 = bitcast float %3131 to i32
  %3133 = ashr i32 %3132, 1
  %3134 = add nsw i32 %3133, 532487669
  %3135 = bitcast i32 %3134 to float
  %3136 = fadd fast float %3135, %1398
  %3137 = fmul fast float %3127, %3122
  %3138 = fsub fast float 1.000000e+00, %3122
  %3139 = fadd fast float %3138, %3137
  %3140 = fmul fast float %3123, %3123
  %3141 = fmul fast float %3140, %3128
  %3142 = fadd fast float %3141, %3127
  %3143 = bitcast float %3142 to i32
  %3144 = ashr i32 %3143, 1
  %3145 = add nsw i32 %3144, 532487669
  %3146 = bitcast i32 %3145 to float
  %3147 = fadd fast float %3146, %3123
  %3148 = fmul fast float %3139, %3139
  %3149 = fmul fast float %3148, %3136
  %3150 = fmul fast float %3149, %3147
  %3151 = fdiv fast float 1.000000e+00, %3150
  %3152 = bitcast float %3127 to i32
  %3153 = sitofp i32 %3152 to float
  %3154 = fmul fast float %3153, 0x3FE7F73180000000
  %3155 = fadd fast float %3154, 0x41AFE27C40000000
  %3156 = fptosi float %3155 to i32
  %3157 = bitcast i32 %3156 to float
  %3158 = fmul fast float %2944, 0x3FD80E9D60000000
  %3159 = fmul fast float %3158, %3109
  %3160 = fadd fast float %3157, %3159
  %3161 = bitcast float %3160 to i32
  %3162 = sub nsw i32 2129859010, %3161
  %3163 = bitcast i32 %3162 to float
  %3164 = fmul fast float %3127, %3151
  %3165 = fmul fast float %3164, %3157
  %3166 = fmul fast float %3165, %3163
  %3167 = call float @dx.op.unary.f32(i32 6, float %3099)  ; FAbs(value)
  %3168 = fsub fast float 1.000000e+00, %3167
  %3169 = bitcast float %3168 to i32
  %3170 = sitofp i32 %3169 to float
  %3171 = fmul fast float %3170, 5.000000e+00
  %3172 = fadd fast float %3171, 0xC1EFBF8940000000
  %3173 = fptosi float %3172 to i32
  %3174 = bitcast i32 %3173 to float
  %3175 = fsub fast float 1.000000e+00, %1388
  %3176 = fsub fast float 1.000000e+00, %1389
  %3177 = fsub fast float 1.000000e+00, %1396
  %3178 = fmul fast float %3174, %3175
  %3179 = fmul fast float %3174, %3176
  %3180 = fmul fast float %3174, %3177
  %3181 = fadd fast float %3178, %1388
  %3182 = fadd fast float %3179, %1389
  %3183 = fadd fast float %3180, %1396
  %3184 = fmul fast float %3098, 9.843750e-01
  %3185 = fadd fast float %3184, 7.812500e-03
  %3186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %31, float %3185, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3187 = extractvalue %dx.types.ResRet.f32 %3186, 2
  %3188 = extractvalue %dx.types.ResRet.f32 %3186, 3
  %3189 = fmul fast float %3187, %1388
  %3190 = fmul fast float %3187, %1389
  %3191 = fmul fast float %3187, %1396
  %3192 = fadd fast float %3189, %3188
  %3193 = fadd fast float %3190, %3188
  %3194 = fadd fast float %3191, %3188
  %3195 = call float @dx.op.binary.f32(i32 35, float %3193, float %3194)  ; FMax(a,b)
  %3196 = call float @dx.op.binary.f32(i32 35, float %3192, float %3195)  ; FMax(a,b)
  %3197 = fsub fast float 1.000000e+00, %3196
  %3198 = fmul fast float %3087, %754
  %3199 = fmul fast float %3198, %3105
  %3200 = fmul fast float %3199, %3197
  %3201 = fmul fast float %3088, %754
  %3202 = fmul fast float %3201, %3105
  %3203 = fmul fast float %3202, %3197
  %3204 = fmul fast float %3089, %754
  %3205 = fmul fast float %3204, %3105
  %3206 = fmul fast float %3205, %3197
  %3207 = fadd fast float %3200, %2926
  %3208 = fadd fast float %3203, %2927
  %3209 = fadd fast float %3206, %2928
  %3210 = fmul fast float %3199, %3181
  %3211 = fmul fast float %3210, %3166
  %3212 = fmul fast float %3202, %3182
  %3213 = fmul fast float %3212, %3166
  %3214 = fmul fast float %3205, %3183
  %3215 = fmul fast float %3214, %3166
  %3216 = fadd fast float %3211, %2923
  %3217 = fadd fast float %3213, %2924
  %3218 = fadd fast float %3215, %2925
  br label %3001

; <label>:3219                                    ; preds = %3001
  br label %3220

; <label>:3220                                    ; preds = %3219, %2889
  %3221 = phi float [ %2891, %2889 ], [ %3002, %3219 ]
  %3222 = phi float [ %2892, %2889 ], [ %3003, %3219 ]
  %3223 = phi float [ %2893, %2889 ], [ %3004, %3219 ]
  %3224 = phi float [ %2894, %2889 ], [ %3005, %3219 ]
  %3225 = phi float [ %2895, %2889 ], [ %3006, %3219 ]
  %3226 = phi float [ %2896, %2889 ], [ %3007, %3219 ]
  %3227 = add i32 %2890, 1
  %3228 = icmp ugt i32 %3227, %2886
  br i1 %3228, label %3229, label %2889

; <label>:3229                                    ; preds = %3220
  br label %3230

; <label>:3230                                    ; preds = %3229, %2865, %2855
  %3231 = phi float [ %2856, %2855 ], [ %2856, %2865 ], [ %3221, %3229 ]
  %3232 = phi float [ %2857, %2855 ], [ %2857, %2865 ], [ %3222, %3229 ]
  %3233 = phi float [ %2858, %2855 ], [ %2858, %2865 ], [ %3223, %3229 ]
  %3234 = phi float [ %2859, %2855 ], [ %2859, %2865 ], [ %3224, %3229 ]
  %3235 = phi float [ %2860, %2855 ], [ %2860, %2865 ], [ %3225, %3229 ]
  %3236 = phi float [ %2861, %2855 ], [ %2861, %2865 ], [ %3226, %3229 ]
  %3237 = call float @dx.op.unary.f32(i32 24, float %1385)  ; Sqrt(value)
  %3238 = call float @dx.op.unary.f32(i32 24, float %1386)  ; Sqrt(value)
  %3239 = call float @dx.op.unary.f32(i32 24, float %1387)  ; Sqrt(value)
  %3240 = fmul fast float %3237, %3234
  %3241 = fmul fast float %3238, %3235
  %3242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3243 = extractvalue %dx.types.CBufRet.f32 %3242, 0
  br i1 %175, label %3244, label %3265

; <label>:3244                                    ; preds = %3230
  %3245 = fadd fast float %3236, %759
  %3246 = fmul fast float %3245, %757
  %3247 = fsub fast float 1.000000e+00, %757
  %3248 = call float @dx.op.unary.f32(i32 7, float %3247)  ; Saturate(value)
  %3249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.f32 %3249, 3
  %3251 = fmul fast float %3250, %3248
  %3252 = fadd fast float %3251, %3246
  %3253 = fsub fast float 1.000000e+00, %1398
  %3254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3255 = extractvalue %dx.types.CBufRet.f32 %3254, 0
  %3256 = fmul fast float %3255, %3253
  %3257 = fsub fast float %3252, %3256
  %3258 = fadd fast float %3241, %3240
  %3259 = fmul fast float %3243, %3258
  %3260 = extractvalue %dx.types.CBufRet.f32 %3249, 1
  %3261 = fsub fast float %3257, %3260
  %3262 = extractvalue %dx.types.CBufRet.f32 %3249, 2
  %3263 = fmul fast float %3261, %3262
  %3264 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  br label %3281

; <label>:3265                                    ; preds = %3230
  %3266 = fmul fast float %3239, %3236
  %3267 = fmul fast float %3243, %3240
  %3268 = fmul fast float %3243, %3241
  %3269 = fmul fast float %3266, %3243
  %3270 = add i32 %35, 116
  %3271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3270, i32 undef)  ; BufferLoad(srv,index,wot)
  %3272 = extractvalue %dx.types.ResRet.i32 %3271, 0
  %3273 = and i32 %3272, 32
  %3274 = icmp eq i32 %3273, 0
  br i1 %3274, label %3281, label %3275

; <label>:3275                                    ; preds = %3265
  %3276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3277 = extractvalue %dx.types.CBufRet.f32 %3276, 0
  %3278 = fmul fast float %3277, 0x3FE99999A0000000
  %3279 = fadd fast float %3277, %3267
  %3280 = fadd fast float %3278, %3269
  br label %3281

; <label>:3281                                    ; preds = %3275, %3265, %3244
  %3282 = phi float [ %3259, %3244 ], [ %3279, %3275 ], [ %3267, %3265 ]
  %3283 = phi float [ %3264, %3244 ], [ %3268, %3275 ], [ %3268, %3265 ]
  %3284 = phi float [ 1.000000e+00, %3244 ], [ %3280, %3275 ], [ %3269, %3265 ]
  %3285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3286 = extractvalue %dx.types.CBufRet.f32 %3285, 0
  %3287 = fmul fast float %3286, %3232
  %3288 = fmul fast float %3286, %3233
  %3289 = fadd fast float %3232, %3231
  %3290 = select i1 %175, float %3289, float %3231
  %3291 = fmul float %3290, %3286
  %3292 = select i1 %175, float 0.000000e+00, float %3287
  %3293 = select i1 %175, float 0.000000e+00, float %3288
  %3294 = fmul fast float %3282, %3237
  %3295 = fmul fast float %3283, %3238
  %3296 = fmul fast float %3284, %3239
  %3297 = fadd fast float %3291, %3294
  %3298 = fadd fast float %3292, %3295
  %3299 = fadd fast float %3293, %3296
  %3300 = select i1 %175, float %3283, float %3298
  %3301 = select i1 %175, float %3284, float %3299
  %3302 = call float @dx.op.binary.f32(i32 36, float %3297, float 3.225500e+04)  ; FMin(a,b)
  %3303 = call float @dx.op.binary.f32(i32 36, float %3300, float 3.225500e+04)  ; FMin(a,b)
  %3304 = call float @dx.op.binary.f32(i32 36, float %3301, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3302)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3303)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3304)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare float @dx.op.calculateLOD.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, i1) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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

