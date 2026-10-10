;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    y  
; TEXCOORDS                0   xyzw        2     NONE   float   xyzw
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        6     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           7     NONE    uint   x   
; TRANSIENT_INDEX          0    y          7     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: c80e293ecefb66eb64b022a654bf3661
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
; NORMAL_TRANSFORM         1                 linear       
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
; Number of inputs: 30, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
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
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = fmul fast float %70, %64
  %72 = fmul fast float %70, %65
  %73 = fmul fast float %54, %51
  %74 = fmul fast float %55, %50
  %75 = fsub fast float %73, %74
  %76 = fmul fast float %55, %49
  %77 = fmul fast float %53, %51
  %78 = fsub fast float %76, %77
  %79 = fmul fast float %53, %50
  %80 = fmul fast float %54, %49
  %81 = fsub fast float %79, %80
  %82 = fmul fast float %75, %52
  %83 = fmul fast float %78, %52
  %84 = fmul fast float %81, %52
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 3
  %88 = fmul fast float %86, 2.000000e+00
  %89 = fmul fast float %88, %71
  %90 = fmul fast float %87, 2.000000e+00
  %91 = fmul fast float %90, %72
  %92 = fsub fast float 1.000000e+00, %89
  %93 = fsub fast float 1.000000e+00, %91
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %97 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %98 = fmul fast float %92, %95
  %99 = fmul fast float %92, %96
  %100 = fmul fast float %92, %97
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = fmul fast float %93, %102
  %106 = fmul fast float %93, %103
  %107 = fmul fast float %93, %104
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = fadd fast float %105, %109
  %113 = fadd fast float %112, %98
  %114 = fadd fast float %106, %110
  %115 = fadd fast float %114, %99
  %116 = fadd fast float %107, %111
  %117 = fadd fast float %116, %100
  %118 = fmul fast float %113, %66
  %119 = fmul fast float %115, %66
  %120 = fmul fast float %117, %66
  %121 = fadd fast float %58, 5.000000e-01
  %122 = fptoui float %121 to i32
  %123 = shl i32 %122, 3
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = or i32 %123, 4
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = and i32 %125, 8191
  %130 = lshr i32 %125, 13
  %131 = and i32 %130, 8191
  %132 = lshr i32 %125, 26
  %133 = and i32 %128, 65535
  %134 = lshr i32 %128, 16
  %135 = uitofp i32 %133 to float
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %138 = uitofp i32 %134 to float
  %139 = uitofp i32 %129 to float
  %140 = fmul fast float %137, %139
  %141 = uitofp i32 %131 to float
  %142 = fmul fast float %137, %141
  %143 = fmul fast float %137, %56
  %144 = fmul fast float %143, %135
  %145 = fmul fast float %137, %57
  %146 = fmul fast float %145, %138
  %147 = fadd fast float %144, %140
  %148 = fadd fast float %142, %146
  %149 = uitofp i32 %132 to float
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %153 = fmul fast float %151, %71
  %154 = fmul fast float %152, %72
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = and i32 %156, 114688
  %158 = icmp ne i32 %157, 0
  %159 = select i1 %158, float %153, float 0.000000e+00
  %160 = select i1 %158, float %154, float 0.000000e+00
  %161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = fmul fast float %162, 2.550000e+02
  %164 = fptoui float %163 to i32
  %165 = select i1 %158, i32 %164, i32 0
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.i32 %167, 3
  %169 = and i32 %168, 3
  %170 = icmp ne i32 %169, 0
  %171 = and i32 %168, 4
  %172 = icmp ne i32 %171, 0
  %173 = and i1 %170, %172
  br i1 %173, label %174, label %185

; <label>:174                                     ; preds = %0
  %175 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %176 = fmul fast float %175, %72
  %177 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %178 = fmul fast float %177, %71
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %178, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = fsub fast float 1.000000e+00, %180
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = fcmp fast olt float %181, %183
  br label %188

; <label>:185                                     ; preds = %0
  %186 = icmp eq i32 %171, 0
  %187 = and i1 %170, %186
  br label %188

; <label>:188                                     ; preds = %185, %174
  %189 = phi i1 [ %184, %174 ], [ %187, %185 ]
  %190 = add i32 %44, 92
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = shl i32 %192, 4
  %194 = and i32 %193, 32752
  %195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %194)  ; LegacyF16ToF32(value)
  %196 = lshr i32 %192, 7
  %197 = and i32 %196, 32752
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = lshr i32 %192, 22
  %200 = shl nuw nsw i32 %199, 5
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = add i32 %44, 120
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = and i32 %204, 255
  %206 = uitofp i32 %205 to float
  %207 = fmul fast float %206, 0x3F70101020000000
  %208 = lshr i32 %204, 8
  %209 = and i32 %208, 255
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %210, 0x3F70101020000000
  %212 = lshr i32 %204, 16
  %213 = and i32 %212, 255
  %214 = uitofp i32 %213 to float
  %215 = fmul fast float %214, 0x3F70101020000000
  %216 = add i32 %44, 36
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = add i32 %44, 160
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = add i32 %44, 108
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = shl i32 %224, 4
  %226 = and i32 %225, 32752
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = lshr i32 %224, 7
  %229 = and i32 %228, 32752
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %224, 22
  %232 = shl nuw nsw i32 %231, 5
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = add i32 %44, 136
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = lshr i32 %236, 8
  %241 = and i32 %240, 255
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %242, 0x3F70101020000000
  %244 = lshr i32 %236, 16
  %245 = and i32 %244, 255
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F70101020000000
  %248 = add i32 %44, 52
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 65535
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %250, 16
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = add i32 %44, 176
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = fmul fast float %259, 0x3F50624DE0000000
  %263 = fmul fast float %261, 0x3F50624DE0000000
  %264 = add i32 %44, 188
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = lshr i32 %266, 20
  %268 = and i32 %267, 3
  %269 = add nuw nsw i32 %268, 1
  %270 = add i32 %44, 24
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = add i32 %44, 28
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = or i32 %275, %272
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %767, label %278

; <label>:278                                     ; preds = %188
  %279 = lshr i32 %221, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = fmul fast float %280, 0x3F50624DE0000000
  %282 = and i32 %221, 65535
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = fmul fast float %283, 0x3F50624DE0000000
  %285 = lshr i32 %218, 16
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = and i32 %218, 65535
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = add i32 %44, 156
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = lshr i32 %291, 16
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = fmul fast float %293, 0x3F50624DE0000000
  %295 = add i32 %44, 56
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = lshr i32 %297, 16
  %299 = and i32 %298, 255
  %300 = lshr i32 %297, 24
  %301 = add i32 %44, 164
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = add i32 %44, 32
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = lshr i32 %310, 22
  %312 = shl nuw nsw i32 %311, 5
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = shl i32 %310, 4
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %310, 7
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 3
  %322 = fmul fast float %321, 1.000000e+03
  %323 = fmul fast float %284, %322
  %324 = call float @dx.op.unary.f32(i32 22, float %323)  ; Frc(value)
  %325 = fadd fast float %324, %288
  %326 = fmul fast float %281, %322
  %327 = call float @dx.op.unary.f32(i32 22, float %326)  ; Frc(value)
  %328 = fadd fast float %327, %286
  %329 = fmul fast float %294, %322
  %330 = call float @dx.op.unary.f32(i32 22, float %329)  ; Frc(value)
  %331 = fmul fast float %330, 0x401921FB60000000
  %332 = fadd fast float %331, %313
  %333 = call float @dx.op.unary.f32(i32 13, float %332)  ; Sin(value)
  %334 = call float @dx.op.unary.f32(i32 12, float %332)  ; Cos(value)
  %335 = fsub fast float -0.000000e+00, %333
  %336 = fadd fast float %59, -5.000000e-01
  %337 = fadd fast float %60, -5.000000e-01
  %338 = fmul fast float %305, %336
  %339 = fmul fast float %307, %337
  %340 = fadd fast float %338, 5.000000e-01
  %341 = fadd fast float %339, 5.000000e-01
  %342 = fmul fast float %316, %340
  %343 = fmul fast float %319, %341
  %344 = fmul fast float %334, %342
  %345 = call float @dx.op.tertiary.f32(i32 46, float %335, float %343, float %344)  ; FMad(a,b,c)
  %346 = fmul fast float %333, %342
  %347 = call float @dx.op.tertiary.f32(i32 46, float %334, float %343, float %346)  ; FMad(a,b,c)
  %348 = fadd fast float %325, %345
  %349 = fadd fast float %328, %347
  %350 = icmp ugt i32 %299, 1
  %351 = icmp ugt i32 %297, 33554431
  %352 = or i1 %351, %350
  br i1 %352, label %353, label %378

; <label>:353                                     ; preds = %278
  %354 = add i32 %44, 132
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = lshr i32 %356, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = fmul fast float %321, %358
  %360 = call float @dx.op.unary.f32(i32 22, float %359)  ; Frc(value)
  %361 = mul nuw nsw i32 %299, %300
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %360, %362
  %364 = call float @dx.op.unary.f32(i32 27, float %363)  ; Round_ni(value)
  %365 = fptoui float %364 to i32
  %366 = urem i32 %365, %299
  %367 = udiv i32 %365, %300
  %368 = call float @dx.op.unary.f32(i32 22, float %348)  ; Frc(value)
  %369 = call float @dx.op.unary.f32(i32 22, float %349)  ; Frc(value)
  %370 = uitofp i32 %366 to float
  %371 = uitofp i32 %367 to float
  %372 = fadd fast float %368, %370
  %373 = fadd fast float %369, %371
  %374 = uitofp i32 %299 to float
  %375 = uitofp i32 %300 to float
  %376 = fdiv fast float %372, %374
  %377 = fdiv fast float %373, %375
  br label %378

; <label>:378                                     ; preds = %353, %278
  %379 = phi float [ %376, %353 ], [ %348, %278 ]
  %380 = phi float [ %377, %353 ], [ %349, %278 ]
  %381 = and i32 %272, 16
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %579, label %383

; <label>:383                                     ; preds = %378
  %384 = add i32 %44, 200
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = add i32 %386, 0
  %388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %389 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %388, %dx.types.Handle %67, float %379, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = extractvalue %dx.types.ResRet.f32 %389, 2
  %393 = extractvalue %dx.types.ResRet.f32 %389, 3
  %394 = and i32 %297, 255
  %395 = uitofp i32 %394 to float
  %396 = lshr i32 %297, 8
  %397 = and i32 %396, 255
  %398 = uitofp i32 %397 to float
  %399 = fmul fast float %393, %395
  %400 = fadd fast float %399, %398
  %401 = fmul fast float %400, 0x3F70101000000000
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 512
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %414, label %406

; <label>:406                                     ; preds = %383
  %407 = add i32 %44, 240
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = add i32 %409, 0
  %411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %410, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %412 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %411, %dx.types.Handle %68, float %379, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  br label %414

; <label>:414                                     ; preds = %406, %383
  %415 = phi float [ %413, %406 ], [ 1.000000e+00, %383 ]
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 33554432
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %526, label %420

; <label>:420                                     ; preds = %414
  %421 = add i32 %44, 128
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %423, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = add i32 %44, 132
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 65535
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = lshr i32 %434, 24
  %436 = uitofp i32 %435 to float
  %437 = fmul fast float %436, 0x3F70101020000000
  %438 = and i32 %434, 255
  %439 = uitofp i32 %438 to float
  %440 = fmul fast float %439, 0x3F70101020000000
  %441 = lshr i32 %434, 8
  %442 = and i32 %441, 255
  %443 = uitofp i32 %442 to float
  %444 = fmul fast float %443, 0x3F70101020000000
  %445 = lshr i32 %434, 16
  %446 = and i32 %445, 255
  %447 = uitofp i32 %446 to float
  %448 = fmul fast float %447, 0x3F70101020000000
  %449 = add i32 %44, 124
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = lshr i32 %451, 24
  %453 = uitofp i32 %452 to float
  %454 = fmul fast float %453, 0x3F70101020000000
  %455 = and i32 %451, 255
  %456 = uitofp i32 %455 to float
  %457 = fmul fast float %456, 0x3F70101020000000
  %458 = lshr i32 %451, 8
  %459 = and i32 %458, 255
  %460 = uitofp i32 %459 to float
  %461 = fmul fast float %460, 0x3F70101020000000
  %462 = lshr i32 %451, 16
  %463 = and i32 %462, 255
  %464 = uitofp i32 %463 to float
  %465 = fmul fast float %464, 0x3F70101020000000
  %466 = bitcast float %390 to i32
  %467 = ashr i32 %466, 1
  %468 = sub nsw i32 1597463174, %467
  %469 = bitcast i32 %468 to float
  %470 = fmul fast float %390, 5.000000e-01
  %471 = fmul fast float %469, %469
  %472 = fmul fast float %471, %470
  %473 = fsub fast float 1.500000e+00, %472
  %474 = fmul fast float %469, %390
  %475 = fmul fast float %474, %473
  %476 = bitcast float %391 to i32
  %477 = ashr i32 %476, 1
  %478 = sub nsw i32 1597463174, %477
  %479 = bitcast i32 %478 to float
  %480 = fmul fast float %391, 5.000000e-01
  %481 = fmul fast float %479, %479
  %482 = fmul fast float %481, %480
  %483 = fsub fast float 1.500000e+00, %482
  %484 = fmul fast float %479, %391
  %485 = fmul fast float %484, %483
  %486 = bitcast float %392 to i32
  %487 = ashr i32 %486, 1
  %488 = sub nsw i32 1597463174, %487
  %489 = bitcast i32 %488 to float
  %490 = fmul fast float %392, 5.000000e-01
  %491 = fmul fast float %489, %489
  %492 = fmul fast float %491, %490
  %493 = fsub fast float 1.500000e+00, %492
  %494 = fmul fast float %489, %392
  %495 = fmul fast float %494, %493
  %496 = fsub fast float %475, %457
  %497 = fsub fast float %485, %461
  %498 = fsub fast float %495, %465
  %499 = fmul fast float %496, %425
  %500 = fmul fast float %497, %427
  %501 = fmul fast float %498, %432
  %502 = fadd fast float %499, %440
  %503 = fadd fast float %500, %444
  %504 = fadd fast float %501, %448
  %505 = call float @dx.op.unary.f32(i32 7, float %502)  ; Saturate(value)
  %506 = call float @dx.op.unary.f32(i32 7, float %503)  ; Saturate(value)
  %507 = call float @dx.op.unary.f32(i32 7, float %504)  ; Saturate(value)
  %508 = fmul fast float %505, %505
  %509 = fmul fast float %506, %506
  %510 = fmul fast float %507, %507
  %511 = fsub fast float %508, %390
  %512 = fsub fast float %509, %391
  %513 = fsub fast float %510, %392
  %514 = fmul fast float %511, %415
  %515 = fmul fast float %512, %415
  %516 = fmul fast float %513, %415
  %517 = fadd fast float %514, %390
  %518 = fadd fast float %515, %391
  %519 = fadd fast float %516, %392
  %520 = fadd fast float %437, %401
  %521 = fsub fast float %520, %454
  %522 = call float @dx.op.unary.f32(i32 7, float %521)  ; Saturate(value)
  %523 = fsub fast float %522, %401
  %524 = fmul fast float %523, %415
  %525 = fadd fast float %524, %401
  br label %579

; <label>:526                                     ; preds = %414
  %527 = and i32 %417, 134217728
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %563, label %529

; <label>:529                                     ; preds = %526
  %530 = call float @dx.op.unary.f32(i32 24, float %207)  ; Sqrt(value)
  %531 = call float @dx.op.unary.f32(i32 24, float %211)  ; Sqrt(value)
  %532 = call float @dx.op.unary.f32(i32 24, float %215)  ; Sqrt(value)
  %533 = fadd fast float %530, -5.000000e-01
  %534 = fadd fast float %531, -5.000000e-01
  %535 = fadd fast float %532, -5.000000e-01
  %536 = fmul fast float %533, %415
  %537 = fmul fast float %534, %415
  %538 = fmul fast float %535, %415
  %539 = fadd fast float %536, 5.000000e-01
  %540 = fadd fast float %537, 5.000000e-01
  %541 = fadd fast float %538, 5.000000e-01
  %542 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %543 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %544 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %545 = fmul fast float %539, 2.000000e+00
  %546 = fsub fast float 1.000000e+00, %545
  %547 = fmul fast float %546, %542
  %548 = fadd fast float %547, %545
  %549 = fmul fast float %548, %542
  %550 = fmul fast float %540, 2.000000e+00
  %551 = fsub fast float 1.000000e+00, %550
  %552 = fmul fast float %551, %543
  %553 = fadd fast float %552, %550
  %554 = fmul fast float %553, %543
  %555 = fmul fast float %541, 2.000000e+00
  %556 = fsub fast float 1.000000e+00, %555
  %557 = fmul fast float %556, %544
  %558 = fadd fast float %557, %555
  %559 = fmul fast float %558, %544
  %560 = fmul fast float %549, %549
  %561 = fmul fast float %554, %554
  %562 = fmul fast float %559, %559
  br label %579

; <label>:563                                     ; preds = %526
  %564 = fmul fast float %207, %207
  %565 = fmul fast float %211, %211
  %566 = fmul fast float %215, %215
  %567 = fadd fast float %564, -1.000000e+00
  %568 = fadd fast float %565, -1.000000e+00
  %569 = fadd fast float %566, -1.000000e+00
  %570 = fmul fast float %415, %567
  %571 = fmul fast float %415, %568
  %572 = fmul fast float %415, %569
  %573 = fadd fast float %570, 1.000000e+00
  %574 = fadd fast float %571, 1.000000e+00
  %575 = fadd fast float %572, 1.000000e+00
  %576 = fmul fast float %573, %390
  %577 = fmul fast float %574, %391
  %578 = fmul fast float %575, %392
  br label %579

; <label>:579                                     ; preds = %563, %529, %420, %378
  %580 = phi float [ %525, %420 ], [ %401, %529 ], [ %401, %563 ], [ 0x3FA23C0BE0000000, %378 ]
  %581 = phi float [ %517, %420 ], [ %560, %529 ], [ %576, %563 ], [ 1.000000e+00, %378 ]
  %582 = phi float [ %518, %420 ], [ %561, %529 ], [ %577, %563 ], [ 1.000000e+00, %378 ]
  %583 = phi float [ %519, %420 ], [ %562, %529 ], [ %578, %563 ], [ 1.000000e+00, %378 ]
  %584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.i32 %584, 1
  %586 = and i32 %585, 1
  %587 = icmp ne i32 %586, 0
  %588 = add i32 %44, 196
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %590, 32
  %592 = icmp ne i32 %591, 0
  %593 = and i1 %587, %592
  %594 = select i1 %593, float 1.000000e+00, float %581
  %595 = select i1 %593, float 0x3FD3333340000000, float %582
  %596 = select i1 %593, float 0x3FD3333340000000, float %583
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = and i32 %598, 32
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %673, label %601

; <label>:601                                     ; preds = %579
  %602 = add i32 %44, 60
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = add i32 %44, 208
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = add i32 %607, 0
  %609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %610 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %609, %dx.types.Handle %67, float %379, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = extractvalue %dx.types.ResRet.f32 %610, 2
  %614 = extractvalue %dx.types.ResRet.f32 %610, 3
  %615 = and i32 %604, 255
  %616 = uitofp i32 %615 to float
  %617 = lshr i32 %604, 8
  %618 = and i32 %617, 255
  %619 = uitofp i32 %618 to float
  %620 = lshr i32 %604, 16
  %621 = and i32 %620, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101000000000
  %624 = fmul fast float %611, %616
  %625 = fadd fast float %624, %619
  %626 = fmul fast float %625, 0x3F70101000000000
  %627 = fadd fast float %612, -5.000000e-01
  %628 = fadd fast float %614, -5.000000e-01
  %629 = fmul fast float %627, %623
  %630 = fmul fast float %628, %623
  %631 = fadd fast float %629, 5.000000e-01
  %632 = fadd fast float %630, 5.000000e-01
  %633 = fmul fast float %631, 2.000000e+00
  %634 = fadd fast float %633, -1.000000e+00
  %635 = fmul fast float %632, 2.000000e+00
  %636 = fadd fast float %635, -1.000000e+00
  %637 = fadd fast float %634, %636
  %638 = fmul fast float %637, 5.000000e-01
  %639 = fsub fast float %634, %636
  %640 = fmul fast float %639, 5.000000e-01
  %641 = call float @dx.op.unary.f32(i32 6, float %638)  ; FAbs(value)
  %642 = fsub fast float 1.000000e+00, %641
  %643 = call float @dx.op.unary.f32(i32 6, float %640)  ; FAbs(value)
  %644 = fsub fast float %642, %643
  %645 = call float @dx.op.dot3.f32(i32 55, float %638, float %640, float %644, float %638, float %640, float %644)  ; Dot3(ax,ay,az,bx,by,bz)
  %646 = call float @dx.op.unary.f32(i32 25, float %645)  ; Rsqrt(value)
  %647 = fmul fast float %638, %646
  %648 = fmul fast float %640, %646
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = and i32 %650, 67108864
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %669, label %653

; <label>:653                                     ; preds = %601
  %654 = add i32 %44, 152
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = and i32 %656, 65535
  %658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %657)  ; LegacyF16ToF32(value)
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = and i32 %660, 65535
  %662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %661)  ; LegacyF16ToF32(value)
  %663 = lshr i32 %656, 16
  %664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %663)  ; LegacyF16ToF32(value)
  %665 = fsub fast float %626, %664
  %666 = fmul fast float %665, %658
  %667 = fadd fast float %666, %662
  %668 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  br label %669

; <label>:669                                     ; preds = %653, %601
  %670 = phi float [ %668, %653 ], [ %626, %601 ]
  %671 = call float @dx.op.dot2.f32(i32 54, float %647, float %648, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %672 = call float @dx.op.dot2.f32(i32 54, float %647, float %648, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %673

; <label>:673                                     ; preds = %669, %579
  %674 = phi float [ %670, %669 ], [ 0x3FD6666660000000, %579 ]
  %675 = phi float [ %671, %669 ], [ 0.000000e+00, %579 ]
  %676 = phi float [ %672, %669 ], [ 0.000000e+00, %579 ]
  %677 = phi float [ %613, %669 ], [ 1.000000e+00, %579 ]
  %678 = add i32 %44, 96
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = lshr i32 %680, 22
  %682 = shl nuw nsw i32 %681, 5
  %683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %682)  ; LegacyF16ToF32(value)
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 64
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %721, label %688

; <label>:688                                     ; preds = %673
  %689 = add i32 %44, 216
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = add i32 %691, 0
  %693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %692, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 131072
  %697 = icmp eq i32 %696, 0
  %698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %693, %dx.types.Handle %67, float %379, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = extractvalue %dx.types.ResRet.f32 %698, 1
  %701 = extractvalue %dx.types.ResRet.f32 %698, 2
  %702 = fmul fast float %699, %195
  %703 = fmul fast float %700, %198
  %704 = fmul fast float %701, %201
  br i1 %697, label %711, label %705

; <label>:705                                     ; preds = %688
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 0
  %708 = fmul fast float %707, %702
  %709 = fmul fast float %707, %703
  %710 = fmul fast float %707, %704
  br label %711

; <label>:711                                     ; preds = %705, %688
  %712 = phi float [ %708, %705 ], [ %702, %688 ]
  %713 = phi float [ %709, %705 ], [ %703, %688 ]
  %714 = phi float [ %710, %705 ], [ %704, %688 ]
  %715 = fmul fast float %712, %683
  %716 = select i1 %189, float %715, float %712
  %717 = call float @dx.op.dot3.f32(i32 55, float %716, float %713, float %714, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %718 = select i1 %189, float 0.000000e+00, float %712
  %719 = select i1 %189, float %717, float %713
  %720 = select i1 %189, float 0.000000e+00, float %714
  br label %721

; <label>:721                                     ; preds = %711, %673
  %722 = phi float [ %718, %711 ], [ 0.000000e+00, %673 ]
  %723 = phi float [ %719, %711 ], [ 0.000000e+00, %673 ]
  %724 = phi float [ %720, %711 ], [ 0.000000e+00, %673 ]
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = and i32 %726, 26624
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %752, label %729

; <label>:729                                     ; preds = %721
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = and i32 %731, 16384
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %752, label %734

; <label>:734                                     ; preds = %729
  %735 = and i32 %731, 1048576
  %736 = icmp ne i32 %735, 0
  %737 = add i32 %44, 248
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = add i32 %739, 0
  %741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %740, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %742 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %741, %dx.types.Handle %68, float %379, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 0
  %744 = add i32 %44, 64
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = lshr i32 %746, 24
  %748 = uitofp i32 %747 to float
  %749 = fmul fast float %743, 0x3F70101020000000
  %750 = select i1 %736, float 0x3F70101020000000, float %749
  %751 = fmul fast float %750, %748
  br label %752

; <label>:752                                     ; preds = %734, %729, %721
  %753 = phi float [ %751, %734 ], [ 0.000000e+00, %729 ], [ 0.000000e+00, %721 ]
  %754 = add i32 %44, 64
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = and i32 %756, 255
  %758 = uitofp i32 %757 to float
  %759 = lshr i32 %756, 8
  %760 = and i32 %759, 255
  %761 = uitofp i32 %760 to float
  %762 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %763 = fmul fast float %761, %762
  %764 = fadd fast float %763, %758
  %765 = fmul fast float %764, 0x3F70101020000000
  %766 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  br label %767

; <label>:767                                     ; preds = %752, %188
  %768 = phi float [ %675, %752 ], [ 0.000000e+00, %188 ]
  %769 = phi float [ %676, %752 ], [ 0.000000e+00, %188 ]
  %770 = phi float [ %594, %752 ], [ 0.000000e+00, %188 ]
  %771 = phi float [ %595, %752 ], [ 0.000000e+00, %188 ]
  %772 = phi float [ %596, %752 ], [ 0.000000e+00, %188 ]
  %773 = phi float [ %722, %752 ], [ 0.000000e+00, %188 ]
  %774 = phi float [ %723, %752 ], [ 0.000000e+00, %188 ]
  %775 = phi float [ %724, %752 ], [ 0.000000e+00, %188 ]
  %776 = phi float [ %580, %752 ], [ 0.000000e+00, %188 ]
  %777 = phi float [ 1.000000e+00, %752 ], [ 0.000000e+00, %188 ]
  %778 = phi float [ %674, %752 ], [ 0.000000e+00, %188 ]
  %779 = phi float [ %677, %752 ], [ 0.000000e+00, %188 ]
  %780 = phi float [ %753, %752 ], [ 0.000000e+00, %188 ]
  %781 = phi float [ %766, %752 ], [ 0.000000e+00, %188 ]
  %782 = icmp ult i32 %269, 2
  %783 = add i32 %44, 40
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = add i32 %44, 44
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = or i32 %788, %785
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %1653, label %791

; <label>:791                                     ; preds = %767
  %792 = add i32 %44, 172
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = lshr i32 %794, 16
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = fmul fast float %796, 0x3F50624DE0000000
  %798 = add i32 %44, 72
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = lshr i32 %800, 16
  %802 = and i32 %801, 255
  %803 = lshr i32 %800, 24
  %804 = add i32 %44, 180
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = and i32 %806, 65535
  %808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %807)  ; LegacyF16ToF32(value)
  %809 = lshr i32 %806, 16
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = add i32 %44, 48
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = lshr i32 %813, 22
  %815 = shl nuw nsw i32 %814, 5
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = shl i32 %813, 4
  %818 = and i32 %817, 32752
  %819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %818)  ; LegacyF16ToF32(value)
  %820 = lshr i32 %813, 7
  %821 = and i32 %820, 32752
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 3
  %825 = fmul fast float %824, 1.000000e+03
  %826 = fmul fast float %262, %825
  %827 = call float @dx.op.unary.f32(i32 22, float %826)  ; Frc(value)
  %828 = fadd fast float %827, %252
  %829 = fmul fast float %263, %825
  %830 = call float @dx.op.unary.f32(i32 22, float %829)  ; Frc(value)
  %831 = fadd fast float %830, %254
  %832 = fmul fast float %797, %825
  %833 = call float @dx.op.unary.f32(i32 22, float %832)  ; Frc(value)
  %834 = fmul fast float %833, 0x401921FB60000000
  %835 = fadd fast float %834, %816
  %836 = call float @dx.op.unary.f32(i32 13, float %835)  ; Sin(value)
  %837 = call float @dx.op.unary.f32(i32 12, float %835)  ; Cos(value)
  %838 = fsub fast float -0.000000e+00, %836
  %839 = fadd fast float %61, -5.000000e-01
  %840 = fadd fast float %62, -5.000000e-01
  %841 = fmul fast float %808, %839
  %842 = fmul fast float %810, %840
  %843 = fadd fast float %841, 5.000000e-01
  %844 = fadd fast float %842, 5.000000e-01
  %845 = fmul fast float %819, %843
  %846 = fmul fast float %822, %844
  %847 = fmul fast float %837, %845
  %848 = call float @dx.op.tertiary.f32(i32 46, float %838, float %846, float %847)  ; FMad(a,b,c)
  %849 = fmul fast float %836, %845
  %850 = call float @dx.op.tertiary.f32(i32 46, float %837, float %846, float %849)  ; FMad(a,b,c)
  %851 = fadd fast float %828, %848
  %852 = fadd fast float %831, %850
  %853 = icmp ugt i32 %802, 1
  %854 = icmp ugt i32 %800, 33554431
  %855 = or i1 %854, %853
  br i1 %855, label %856, label %881

; <label>:856                                     ; preds = %791
  %857 = add i32 %44, 148
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = lshr i32 %859, 16
  %861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %860)  ; LegacyF16ToF32(value)
  %862 = fmul fast float %824, %861
  %863 = call float @dx.op.unary.f32(i32 22, float %862)  ; Frc(value)
  %864 = mul nuw nsw i32 %802, %803
  %865 = uitofp i32 %864 to float
  %866 = fmul fast float %863, %865
  %867 = call float @dx.op.unary.f32(i32 27, float %866)  ; Round_ni(value)
  %868 = fptoui float %867 to i32
  %869 = urem i32 %868, %802
  %870 = udiv i32 %868, %803
  %871 = call float @dx.op.unary.f32(i32 22, float %851)  ; Frc(value)
  %872 = call float @dx.op.unary.f32(i32 22, float %852)  ; Frc(value)
  %873 = uitofp i32 %869 to float
  %874 = uitofp i32 %870 to float
  %875 = fadd fast float %871, %873
  %876 = fadd fast float %872, %874
  %877 = uitofp i32 %802 to float
  %878 = uitofp i32 %803 to float
  %879 = fdiv fast float %875, %877
  %880 = fdiv fast float %876, %878
  br label %881

; <label>:881                                     ; preds = %856, %791
  %882 = phi float [ %879, %856 ], [ %851, %791 ]
  %883 = phi float [ %880, %856 ], [ %852, %791 ]
  %884 = and i32 %785, 16777216
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %995, label %886

; <label>:886                                     ; preds = %881
  %887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.f32 %887, 0
  %889 = extractvalue %dx.types.CBufRet.f32 %887, 1
  %890 = extractvalue %dx.types.CBufRet.f32 %887, 2
  %891 = fadd fast float %888, %118
  %892 = fadd fast float %889, %119
  %893 = fadd fast float %890, %120
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %897 = icmp eq i32 %43, 65535
  br i1 %897, label %992, label %898

; <label>:898                                     ; preds = %886
  %899 = lshr i32 %43, 1
  %900 = shl i32 %899, 2
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = and i32 %43, 1
  %904 = icmp ne i32 %903, 0
  %905 = lshr i32 %902, 16
  %906 = and i32 %902, 65535
  %907 = select i1 %904, i32 %905, i32 %906
  %908 = icmp eq i32 %907, 65535
  br i1 %908, label %988, label %909

; <label>:909                                     ; preds = %898
  %910 = mul nuw nsw i32 %907, 40
  %911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.f32 %911, 0
  %913 = extractvalue %dx.types.ResRet.f32 %911, 1
  %914 = extractvalue %dx.types.ResRet.f32 %911, 2
  %915 = add nuw nsw i32 %910, 12
  %916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.f32 %916, 0
  %918 = extractvalue %dx.types.ResRet.f32 %916, 1
  %919 = extractvalue %dx.types.ResRet.f32 %916, 2
  %920 = add nuw nsw i32 %910, 24
  %921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %920, i32 undef)  ; BufferLoad(srv,index,wot)
  %922 = extractvalue %dx.types.ResRet.f32 %921, 0
  %923 = extractvalue %dx.types.ResRet.f32 %921, 1
  %924 = extractvalue %dx.types.ResRet.f32 %921, 2
  %925 = add nuw nsw i32 %910, 36
  %926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  %928 = fsub fast float %891, %912
  %929 = fsub fast float %892, %913
  %930 = fsub fast float %893, %914
  %931 = fmul fast float %927, %928
  %932 = fmul fast float %927, %929
  %933 = fmul fast float %927, %930
  %934 = call float @dx.op.unary.f32(i32 27, float %931)  ; Round_ni(value)
  %935 = call float @dx.op.unary.f32(i32 27, float %932)  ; Round_ni(value)
  %936 = call float @dx.op.unary.f32(i32 27, float %933)  ; Round_ni(value)
  %937 = fadd fast float %934, 5.000000e-01
  %938 = fadd fast float %935, 5.000000e-01
  %939 = fadd fast float %936, 5.000000e-01
  %940 = fmul fast float %937, %917
  %941 = fmul fast float %938, %918
  %942 = fmul fast float %939, %919
  %943 = shl i32 %43, 2
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = add i32 %945, 0
  %947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %946, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %948 = call float @dx.op.unary.f32(i32 22, float %940)  ; Frc(value)
  %949 = call float @dx.op.unary.f32(i32 22, float %941)  ; Frc(value)
  %950 = call float @dx.op.unary.f32(i32 22, float %942)  ; Frc(value)
  %951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %947, %dx.types.Handle %40, float %948, float %949, float %950, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %952 = extractvalue %dx.types.ResRet.f32 %951, 0
  %953 = extractvalue %dx.types.ResRet.f32 %951, 1
  %954 = extractvalue %dx.types.ResRet.f32 %951, 2
  %955 = fmul fast float %952, 1.023000e+03
  %956 = fmul fast float %953, 1.023000e+03
  %957 = fmul fast float %954, 1.023000e+03
  %958 = fadd fast float %955, 5.000000e-01
  %959 = fadd fast float %956, 5.000000e-01
  %960 = fadd fast float %957, 5.000000e-01
  %961 = call float @dx.op.unary.f32(i32 27, float %958)  ; Round_ni(value)
  %962 = call float @dx.op.unary.f32(i32 27, float %959)  ; Round_ni(value)
  %963 = call float @dx.op.unary.f32(i32 27, float %960)  ; Round_ni(value)
  %964 = fsub fast float %931, %934
  %965 = fsub fast float %932, %935
  %966 = fsub fast float %933, %936
  %967 = fmul fast float %964, 7.500000e-01
  %968 = fmul fast float %965, 7.500000e-01
  %969 = fmul fast float %966, 7.500000e-01
  %970 = fadd fast float %934, 1.250000e-01
  %971 = fadd fast float %970, %967
  %972 = fadd fast float %971, %961
  %973 = fadd fast float %935, 1.250000e-01
  %974 = fadd fast float %973, %968
  %975 = fadd fast float %974, %962
  %976 = fadd fast float %936, 1.250000e-01
  %977 = fadd fast float %976, %969
  %978 = fadd fast float %977, %963
  %979 = fmul fast float %972, %922
  %980 = fmul fast float %975, %923
  %981 = fmul fast float %978, %924
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = add i32 %983, 0
  %985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %985, %dx.types.Handle %38, float %979, float %980, float %981, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %987 = extractvalue %dx.types.ResRet.f32 %986, 0
  br label %988

; <label>:988                                     ; preds = %909, %898
  %989 = phi float [ %987, %909 ], [ -1.000000e+00, %898 ]
  %990 = fadd fast float %989, %896
  %991 = call float @dx.op.unary.f32(i32 7, float %990)  ; Saturate(value)
  br label %992

; <label>:992                                     ; preds = %988, %886
  %993 = phi float [ %991, %988 ], [ %896, %886 ]
  %994 = fmul fast float %993, %63
  br label %995

; <label>:995                                     ; preds = %992, %881
  %996 = phi float [ %994, %992 ], [ %63, %881 ]
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = and i32 %998, 256
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1047, label %1001

; <label>:1001                                    ; preds = %995
  %1002 = add i32 %44, 236
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = add i32 %1004, 0
  %1006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1005, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1007 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1006, %dx.types.Handle %68, float %882, float %883, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  %1009 = add i32 %44, 84
  %1010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.i32 %1010, 0
  %1012 = shl i32 %1011, 4
  %1013 = and i32 %1012, 32752
  %1014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1013)  ; LegacyF16ToF32(value)
  %1015 = lshr i32 %1011, 7
  %1016 = and i32 %1015, 32752
  %1017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1016)  ; LegacyF16ToF32(value)
  %1018 = fsub fast float 1.000000e+00, %996
  %1019 = call float @dx.op.binary.f32(i32 35, float %1018, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1020 = bitcast float %996 to i32
  %1021 = sitofp i32 %1020 to float
  %1022 = fadd fast float %1021, 0xC1CFBF8940000000
  %1023 = fmul fast float %1017, %1022
  %1024 = fadd fast float %1023, 0x41CFBF8940000000
  %1025 = fptosi float %1024 to i32
  %1026 = bitcast i32 %1025 to float
  %1027 = bitcast float %1019 to i32
  %1028 = sitofp i32 %1027 to float
  %1029 = fadd fast float %1028, 0xC1CFBF8940000000
  %1030 = fmul fast float %1029, %1017
  %1031 = fadd fast float %1030, 0x41CFBF8940000000
  %1032 = fptosi float %1031 to i32
  %1033 = bitcast i32 %1032 to float
  %1034 = fmul fast float %1026, %1014
  %1035 = fmul fast float %1033, %1014
  %1036 = fsub fast float %1019, %1034
  %1037 = fadd fast float %1035, %1019
  %1038 = call float @dx.op.unary.f32(i32 7, float %1036)  ; Saturate(value)
  %1039 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  %1040 = fsub fast float %1008, %1038
  %1041 = fsub fast float %1039, %1038
  %1042 = bitcast float %1041 to i32
  %1043 = sub nsw i32 2129859010, %1042
  %1044 = bitcast i32 %1043 to float
  %1045 = fmul fast float %1044, %1040
  %1046 = call float @dx.op.unary.f32(i32 7, float %1045)  ; Saturate(value)
  br label %1047

; <label>:1047                                    ; preds = %1001, %995
  %1048 = phi float [ %1046, %1001 ], [ %996, %995 ]
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.i32 %1049, 0
  %1051 = and i32 %1050, 128
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1069, label %1053

; <label>:1053                                    ; preds = %1047
  %1054 = add i32 %44, 228
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = add i32 %1056, 0
  %1058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1059 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1058, %dx.types.Handle %68, float %882, float %883, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = and i32 %1062, 524288
  %1064 = icmp ne i32 %1063, 0
  %1065 = fcmp fast ogt float %1060, 0x3FE0101020000000
  %1066 = select i1 %1065, float 1.000000e+00, float 0.000000e+00
  %1067 = select i1 %1064, float %1066, float %1060
  %1068 = fmul fast float %1067, %1048
  br label %1069

; <label>:1069                                    ; preds = %1053, %1047
  %1070 = phi float [ %1068, %1053 ], [ %1048, %1047 ]
  %1071 = fcmp fast ult float %1070, 0x3F70101020000000
  br i1 %1071, label %1653, label %1072

; <label>:1072                                    ; preds = %1069
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = and i32 %1074, 16
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %1275, label %1077

; <label>:1077                                    ; preds = %1072
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = add i32 %44, 204
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = add i32 %1082, 0
  %1084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1083, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1085 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1084, %dx.types.Handle %67, float %882, float %883, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1086 = extractvalue %dx.types.ResRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.ResRet.f32 %1085, 1
  %1088 = extractvalue %dx.types.ResRet.f32 %1085, 2
  %1089 = extractvalue %dx.types.ResRet.f32 %1085, 3
  %1090 = and i32 %1079, 255
  %1091 = uitofp i32 %1090 to float
  %1092 = lshr i32 %1079, 8
  %1093 = and i32 %1092, 255
  %1094 = uitofp i32 %1093 to float
  %1095 = fmul fast float %1089, %1091
  %1096 = fadd fast float %1095, %1094
  %1097 = fmul fast float %1096, 0x3F70101000000000
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = and i32 %1099, 512
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1110, label %1102

; <label>:1102                                    ; preds = %1077
  %1103 = add i32 %44, 244
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = add i32 %1105, 0
  %1107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1108 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1107, %dx.types.Handle %68, float %882, float %883, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  br label %1110

; <label>:1110                                    ; preds = %1102, %1077
  %1111 = phi float [ %1109, %1102 ], [ 1.000000e+00, %1077 ]
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = and i32 %1113, 33554432
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1222, label %1116

; <label>:1116                                    ; preds = %1110
  %1117 = add i32 %44, 144
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = and i32 %1119, 65535
  %1121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1120)  ; LegacyF16ToF32(value)
  %1122 = lshr i32 %1119, 16
  %1123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1122)  ; LegacyF16ToF32(value)
  %1124 = add i32 %44, 148
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = and i32 %1126, 65535
  %1128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1127)  ; LegacyF16ToF32(value)
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = lshr i32 %1130, 24
  %1132 = uitofp i32 %1131 to float
  %1133 = fmul fast float %1132, 0x3F70101020000000
  %1134 = and i32 %1130, 255
  %1135 = uitofp i32 %1134 to float
  %1136 = fmul fast float %1135, 0x3F70101020000000
  %1137 = lshr i32 %1130, 8
  %1138 = and i32 %1137, 255
  %1139 = uitofp i32 %1138 to float
  %1140 = fmul fast float %1139, 0x3F70101020000000
  %1141 = lshr i32 %1130, 16
  %1142 = and i32 %1141, 255
  %1143 = uitofp i32 %1142 to float
  %1144 = fmul fast float %1143, 0x3F70101020000000
  %1145 = add i32 %44, 140
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = lshr i32 %1147, 24
  %1149 = uitofp i32 %1148 to float
  %1150 = fmul fast float %1149, 0x3F70101020000000
  %1151 = and i32 %1147, 255
  %1152 = uitofp i32 %1151 to float
  %1153 = fmul fast float %1152, 0x3F70101020000000
  %1154 = lshr i32 %1147, 8
  %1155 = and i32 %1154, 255
  %1156 = uitofp i32 %1155 to float
  %1157 = fmul fast float %1156, 0x3F70101020000000
  %1158 = lshr i32 %1147, 16
  %1159 = and i32 %1158, 255
  %1160 = uitofp i32 %1159 to float
  %1161 = fmul fast float %1160, 0x3F70101020000000
  %1162 = bitcast float %1086 to i32
  %1163 = ashr i32 %1162, 1
  %1164 = sub nsw i32 1597463174, %1163
  %1165 = bitcast i32 %1164 to float
  %1166 = fmul fast float %1086, 5.000000e-01
  %1167 = fmul fast float %1165, %1165
  %1168 = fmul fast float %1167, %1166
  %1169 = fsub fast float 1.500000e+00, %1168
  %1170 = fmul fast float %1165, %1086
  %1171 = fmul fast float %1170, %1169
  %1172 = bitcast float %1087 to i32
  %1173 = ashr i32 %1172, 1
  %1174 = sub nsw i32 1597463174, %1173
  %1175 = bitcast i32 %1174 to float
  %1176 = fmul fast float %1087, 5.000000e-01
  %1177 = fmul fast float %1175, %1175
  %1178 = fmul fast float %1177, %1176
  %1179 = fsub fast float 1.500000e+00, %1178
  %1180 = fmul fast float %1175, %1087
  %1181 = fmul fast float %1180, %1179
  %1182 = bitcast float %1088 to i32
  %1183 = ashr i32 %1182, 1
  %1184 = sub nsw i32 1597463174, %1183
  %1185 = bitcast i32 %1184 to float
  %1186 = fmul fast float %1088, 5.000000e-01
  %1187 = fmul fast float %1185, %1185
  %1188 = fmul fast float %1187, %1186
  %1189 = fsub fast float 1.500000e+00, %1188
  %1190 = fmul fast float %1185, %1088
  %1191 = fmul fast float %1190, %1189
  %1192 = fsub fast float %1171, %1153
  %1193 = fsub fast float %1181, %1157
  %1194 = fsub fast float %1191, %1161
  %1195 = fmul fast float %1192, %1121
  %1196 = fmul fast float %1193, %1123
  %1197 = fmul fast float %1194, %1128
  %1198 = fadd fast float %1195, %1136
  %1199 = fadd fast float %1196, %1140
  %1200 = fadd fast float %1197, %1144
  %1201 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1202 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  %1203 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1204 = fmul fast float %1201, %1201
  %1205 = fmul fast float %1202, %1202
  %1206 = fmul fast float %1203, %1203
  %1207 = fsub fast float %1204, %1086
  %1208 = fsub fast float %1205, %1087
  %1209 = fsub fast float %1206, %1088
  %1210 = fmul fast float %1207, %1111
  %1211 = fmul fast float %1208, %1111
  %1212 = fmul fast float %1209, %1111
  %1213 = fadd fast float %1210, %1086
  %1214 = fadd fast float %1211, %1087
  %1215 = fadd fast float %1212, %1088
  %1216 = fadd fast float %1133, %1097
  %1217 = fsub fast float %1216, %1150
  %1218 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1219 = fsub fast float %1218, %1097
  %1220 = fmul fast float %1219, %1111
  %1221 = fadd fast float %1220, %1097
  br label %1275

; <label>:1222                                    ; preds = %1110
  %1223 = and i32 %1113, 134217728
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1259, label %1225

; <label>:1225                                    ; preds = %1222
  %1226 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %1227 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %1228 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %1229 = fadd fast float %1226, -5.000000e-01
  %1230 = fadd fast float %1227, -5.000000e-01
  %1231 = fadd fast float %1228, -5.000000e-01
  %1232 = fmul fast float %1229, %1111
  %1233 = fmul fast float %1230, %1111
  %1234 = fmul fast float %1231, %1111
  %1235 = fadd fast float %1232, 5.000000e-01
  %1236 = fadd fast float %1233, 5.000000e-01
  %1237 = fadd fast float %1234, 5.000000e-01
  %1238 = call float @dx.op.unary.f32(i32 24, float %1086)  ; Sqrt(value)
  %1239 = call float @dx.op.unary.f32(i32 24, float %1087)  ; Sqrt(value)
  %1240 = call float @dx.op.unary.f32(i32 24, float %1088)  ; Sqrt(value)
  %1241 = fmul fast float %1235, 2.000000e+00
  %1242 = fsub fast float 1.000000e+00, %1241
  %1243 = fmul fast float %1242, %1238
  %1244 = fadd fast float %1243, %1241
  %1245 = fmul fast float %1244, %1238
  %1246 = fmul fast float %1236, 2.000000e+00
  %1247 = fsub fast float 1.000000e+00, %1246
  %1248 = fmul fast float %1247, %1239
  %1249 = fadd fast float %1248, %1246
  %1250 = fmul fast float %1249, %1239
  %1251 = fmul fast float %1237, 2.000000e+00
  %1252 = fsub fast float 1.000000e+00, %1251
  %1253 = fmul fast float %1252, %1240
  %1254 = fadd fast float %1253, %1251
  %1255 = fmul fast float %1254, %1240
  %1256 = fmul fast float %1245, %1245
  %1257 = fmul fast float %1250, %1250
  %1258 = fmul fast float %1255, %1255
  br label %1275

; <label>:1259                                    ; preds = %1222
  %1260 = fmul fast float %239, %239
  %1261 = fmul fast float %243, %243
  %1262 = fmul fast float %247, %247
  %1263 = fadd fast float %1260, -1.000000e+00
  %1264 = fadd fast float %1261, -1.000000e+00
  %1265 = fadd fast float %1262, -1.000000e+00
  %1266 = fmul fast float %1111, %1263
  %1267 = fmul fast float %1111, %1264
  %1268 = fmul fast float %1111, %1265
  %1269 = fadd fast float %1266, 1.000000e+00
  %1270 = fadd fast float %1267, 1.000000e+00
  %1271 = fadd fast float %1268, 1.000000e+00
  %1272 = fmul fast float %1269, %1086
  %1273 = fmul fast float %1270, %1087
  %1274 = fmul fast float %1271, %1088
  br label %1275

; <label>:1275                                    ; preds = %1259, %1225, %1116, %1072
  %1276 = phi float [ %1221, %1116 ], [ %1097, %1225 ], [ %1097, %1259 ], [ 0x3FA23C0BE0000000, %1072 ]
  %1277 = phi float [ %1213, %1116 ], [ %1256, %1225 ], [ %1272, %1259 ], [ 1.000000e+00, %1072 ]
  %1278 = phi float [ %1214, %1116 ], [ %1257, %1225 ], [ %1273, %1259 ], [ 1.000000e+00, %1072 ]
  %1279 = phi float [ %1215, %1116 ], [ %1258, %1225 ], [ %1274, %1259 ], [ 1.000000e+00, %1072 ]
  %1280 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.i32 %1280, 1
  %1282 = and i32 %1281, 1
  %1283 = icmp ne i32 %1282, 0
  %1284 = add i32 %44, 196
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = and i32 %1286, 32
  %1288 = icmp ne i32 %1287, 0
  %1289 = and i1 %1283, %1288
  %1290 = select i1 %1289, float 1.000000e+00, float %1277
  %1291 = select i1 %1289, float 0x3FD3333340000000, float %1278
  %1292 = select i1 %1289, float 0x3FD3333340000000, float %1279
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = and i32 %1294, 32
  %1296 = icmp eq i32 %1295, 0
  br i1 %1296, label %1369, label %1297

; <label>:1297                                    ; preds = %1275
  %1298 = add i32 %44, 76
  %1299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.i32 %1299, 0
  %1301 = add i32 %44, 212
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = add i32 %1303, 0
  %1305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1304, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1306 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1305, %dx.types.Handle %67, float %882, float %883, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1307 = extractvalue %dx.types.ResRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.ResRet.f32 %1306, 1
  %1309 = extractvalue %dx.types.ResRet.f32 %1306, 2
  %1310 = extractvalue %dx.types.ResRet.f32 %1306, 3
  %1311 = and i32 %1300, 255
  %1312 = uitofp i32 %1311 to float
  %1313 = lshr i32 %1300, 8
  %1314 = and i32 %1313, 255
  %1315 = uitofp i32 %1314 to float
  %1316 = lshr i32 %1300, 16
  %1317 = and i32 %1316, 255
  %1318 = uitofp i32 %1317 to float
  %1319 = fmul fast float %1318, 0x3F70101000000000
  %1320 = fmul fast float %1307, %1312
  %1321 = fadd fast float %1320, %1315
  %1322 = fmul fast float %1321, 0x3F70101000000000
  %1323 = fadd fast float %1308, -5.000000e-01
  %1324 = fadd fast float %1310, -5.000000e-01
  %1325 = fmul fast float %1323, %1319
  %1326 = fmul fast float %1324, %1319
  %1327 = fadd fast float %1325, 5.000000e-01
  %1328 = fadd fast float %1326, 5.000000e-01
  %1329 = fmul fast float %1327, 2.000000e+00
  %1330 = fadd fast float %1329, -1.000000e+00
  %1331 = fmul fast float %1328, 2.000000e+00
  %1332 = fadd fast float %1331, -1.000000e+00
  %1333 = fadd fast float %1330, %1332
  %1334 = fmul fast float %1333, 5.000000e-01
  %1335 = fsub fast float %1330, %1332
  %1336 = fmul fast float %1335, 5.000000e-01
  %1337 = call float @dx.op.unary.f32(i32 6, float %1334)  ; FAbs(value)
  %1338 = fsub fast float 1.000000e+00, %1337
  %1339 = call float @dx.op.unary.f32(i32 6, float %1336)  ; FAbs(value)
  %1340 = fsub fast float %1338, %1339
  %1341 = call float @dx.op.dot3.f32(i32 55, float %1334, float %1336, float %1340, float %1334, float %1336, float %1340)  ; Dot3(ax,ay,az,bx,by,bz)
  %1342 = call float @dx.op.unary.f32(i32 25, float %1341)  ; Rsqrt(value)
  %1343 = fmul fast float %1334, %1342
  %1344 = fmul fast float %1336, %1342
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = and i32 %1346, 67108864
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1365, label %1349

; <label>:1349                                    ; preds = %1297
  %1350 = add i32 %44, 168
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = and i32 %1352, 65535
  %1354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1353)  ; LegacyF16ToF32(value)
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = and i32 %1356, 65535
  %1358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1357)  ; LegacyF16ToF32(value)
  %1359 = lshr i32 %1352, 16
  %1360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1359)  ; LegacyF16ToF32(value)
  %1361 = fsub fast float %1322, %1360
  %1362 = fmul fast float %1361, %1354
  %1363 = fadd fast float %1362, %1358
  %1364 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  br label %1365

; <label>:1365                                    ; preds = %1349, %1297
  %1366 = phi float [ %1364, %1349 ], [ %1322, %1297 ]
  %1367 = call float @dx.op.dot2.f32(i32 54, float %1343, float %1344, float %45, float %46)  ; Dot2(ax,ay,bx,by)
  %1368 = call float @dx.op.dot2.f32(i32 54, float %1343, float %1344, float %47, float %48)  ; Dot2(ax,ay,bx,by)
  br label %1369

; <label>:1369                                    ; preds = %1365, %1275
  %1370 = phi float [ %1366, %1365 ], [ 0x3FD6666660000000, %1275 ]
  %1371 = phi float [ %1367, %1365 ], [ 0.000000e+00, %1275 ]
  %1372 = phi float [ %1368, %1365 ], [ 0.000000e+00, %1275 ]
  %1373 = phi float [ %1309, %1365 ], [ 1.000000e+00, %1275 ]
  %1374 = add i32 %44, 112
  %1375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1374, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.i32 %1375, 0
  %1377 = lshr i32 %1376, 22
  %1378 = shl nuw nsw i32 %1377, 5
  %1379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1378)  ; LegacyF16ToF32(value)
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = and i32 %1381, 64
  %1383 = icmp eq i32 %1382, 0
  br i1 %1383, label %1417, label %1384

; <label>:1384                                    ; preds = %1369
  %1385 = add i32 %44, 220
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = add i32 %1387, 0
  %1389 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1388, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = and i32 %1391, 131072
  %1393 = icmp eq i32 %1392, 0
  %1394 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1389, %dx.types.Handle %67, float %882, float %883, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1395 = extractvalue %dx.types.ResRet.f32 %1394, 0
  %1396 = extractvalue %dx.types.ResRet.f32 %1394, 1
  %1397 = extractvalue %dx.types.ResRet.f32 %1394, 2
  %1398 = fmul fast float %1395, %227
  %1399 = fmul fast float %1396, %230
  %1400 = fmul fast float %1397, %233
  br i1 %1393, label %1407, label %1401

; <label>:1401                                    ; preds = %1384
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 0
  %1404 = fmul fast float %1403, %1398
  %1405 = fmul fast float %1403, %1399
  %1406 = fmul fast float %1403, %1400
  br label %1407

; <label>:1407                                    ; preds = %1401, %1384
  %1408 = phi float [ %1404, %1401 ], [ %1398, %1384 ]
  %1409 = phi float [ %1405, %1401 ], [ %1399, %1384 ]
  %1410 = phi float [ %1406, %1401 ], [ %1400, %1384 ]
  %1411 = fmul fast float %1408, %1379
  %1412 = select i1 %189, float %1411, float %1408
  %1413 = call float @dx.op.dot3.f32(i32 55, float %1412, float %1409, float %1410, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1414 = select i1 %189, float 0.000000e+00, float %1408
  %1415 = select i1 %189, float %1413, float %1409
  %1416 = select i1 %189, float 0.000000e+00, float %1410
  br label %1417

; <label>:1417                                    ; preds = %1407, %1369
  %1418 = phi float [ %1414, %1407 ], [ 0.000000e+00, %1369 ]
  %1419 = phi float [ %1415, %1407 ], [ 0.000000e+00, %1369 ]
  %1420 = phi float [ %1416, %1407 ], [ 0.000000e+00, %1369 ]
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = and i32 %1422, 26624
  %1424 = icmp eq i32 %1423, 0
  br i1 %1424, label %1448, label %1425

; <label>:1425                                    ; preds = %1417
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = and i32 %1427, 16384
  %1429 = icmp eq i32 %1428, 0
  br i1 %1429, label %1448, label %1430

; <label>:1430                                    ; preds = %1425
  %1431 = and i32 %1427, 1048576
  %1432 = icmp ne i32 %1431, 0
  %1433 = add i32 %44, 252
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = add i32 %1435, 0
  %1437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1438 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1437, %dx.types.Handle %68, float %882, float %883, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  %1440 = add i32 %44, 80
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = lshr i32 %1442, 24
  %1444 = uitofp i32 %1443 to float
  %1445 = fmul fast float %1439, 0x3F70101020000000
  %1446 = select i1 %1432, float 0x3F70101020000000, float %1445
  %1447 = fmul fast float %1446, %1444
  br label %1448

; <label>:1448                                    ; preds = %1430, %1425, %1417
  %1449 = phi float [ %1447, %1430 ], [ 0.000000e+00, %1425 ], [ 0.000000e+00, %1417 ]
  %1450 = add i32 %44, 80
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1450, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = and i32 %1452, 255
  %1454 = uitofp i32 %1453 to float
  %1455 = lshr i32 %1452, 8
  %1456 = and i32 %1455, 255
  %1457 = uitofp i32 %1456 to float
  %1458 = call float @dx.op.dot3.f32(i32 55, float %1290, float %1291, float %1292, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1459 = fmul fast float %1457, %1458
  %1460 = fadd fast float %1459, %1454
  %1461 = fmul fast float %1460, 0x3F70101020000000
  %1462 = call float @dx.op.unary.f32(i32 7, float %1461)  ; Saturate(value)
  br i1 %782, label %1463, label %1471

; <label>:1463                                    ; preds = %1448
  %1464 = fsub fast float 1.000000e+00, %1070
  %1465 = fmul fast float %1464, %770
  %1466 = fmul fast float %1464, %771
  %1467 = fmul fast float %1464, %772
  %1468 = fmul fast float %1464, %773
  %1469 = fmul fast float %1464, %774
  %1470 = fmul fast float %1464, %775
  br label %1471

; <label>:1471                                    ; preds = %1463, %1448
  %1472 = phi float [ %1465, %1463 ], [ %770, %1448 ]
  %1473 = phi float [ %1466, %1463 ], [ %771, %1448 ]
  %1474 = phi float [ %1467, %1463 ], [ %772, %1448 ]
  %1475 = phi float [ %1468, %1463 ], [ %773, %1448 ]
  %1476 = phi float [ %1469, %1463 ], [ %774, %1448 ]
  %1477 = phi float [ %1470, %1463 ], [ %775, %1448 ]
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = and i32 %1479, 3
  %1481 = icmp eq i32 %1480, 3
  br i1 %1481, label %1560, label %1482

; <label>:1482                                    ; preds = %1471
  %1483 = and i32 %1479, 16
  %1484 = icmp ne i32 %1483, 0
  %1485 = select i1 %1484, float %1070, float 0.000000e+00
  %1486 = icmp eq i32 %1480, 0
  br i1 %1486, label %1487, label %1515

; <label>:1487                                    ; preds = %1482
  %1488 = and i32 %1479, 64
  %1489 = icmp ne i32 %1488, 0
  %1490 = select i1 %1489, float %1070, float 0.000000e+00
  %1491 = fsub fast float %1290, %1472
  %1492 = fsub fast float %1291, %1473
  %1493 = fsub fast float %1292, %1474
  %1494 = fmul fast float %1485, %1491
  %1495 = fmul fast float %1485, %1492
  %1496 = fmul fast float %1485, %1493
  %1497 = fadd fast float %1494, %1472
  %1498 = fadd fast float %1495, %1473
  %1499 = fadd fast float %1496, %1474
  %1500 = fsub fast float %1276, %776
  %1501 = fmul fast float %1485, %1500
  %1502 = fadd fast float %1501, %776
  %1503 = fsub fast float %1418, %1475
  %1504 = fsub fast float %1419, %1476
  %1505 = fsub fast float %1420, %1477
  %1506 = fmul fast float %1490, %1503
  %1507 = fmul fast float %1490, %1504
  %1508 = fmul fast float %1490, %1505
  %1509 = fadd fast float %1506, %1475
  %1510 = fadd fast float %1507, %1476
  %1511 = fadd fast float %1508, %1477
  %1512 = fsub fast float %1462, %781
  %1513 = fmul fast float %1485, %1512
  %1514 = fadd fast float %1513, %781
  br label %1560

; <label>:1515                                    ; preds = %1482
  %1516 = icmp eq i32 %1480, 1
  br i1 %1516, label %1517, label %1530

; <label>:1517                                    ; preds = %1515
  %1518 = fadd fast float %1290, -1.000000e+00
  %1519 = fadd fast float %1291, -1.000000e+00
  %1520 = fadd fast float %1292, -1.000000e+00
  %1521 = fmul fast float %1485, %1518
  %1522 = fmul fast float %1485, %1519
  %1523 = fmul fast float %1485, %1520
  %1524 = fadd fast float %1521, 1.000000e+00
  %1525 = fadd fast float %1522, 1.000000e+00
  %1526 = fadd fast float %1523, 1.000000e+00
  %1527 = fmul fast float %1524, %1472
  %1528 = fmul fast float %1525, %1473
  %1529 = fmul fast float %1526, %1474
  br label %1560

; <label>:1530                                    ; preds = %1515
  %1531 = icmp eq i32 %1480, 2
  br i1 %1531, label %1532, label %1560

; <label>:1532                                    ; preds = %1530
  %1533 = call float @dx.op.unary.f32(i32 24, float %1290)  ; Sqrt(value)
  %1534 = call float @dx.op.unary.f32(i32 24, float %1291)  ; Sqrt(value)
  %1535 = call float @dx.op.unary.f32(i32 24, float %1292)  ; Sqrt(value)
  %1536 = fadd fast float %1533, -5.000000e-01
  %1537 = fadd fast float %1534, -5.000000e-01
  %1538 = fadd fast float %1535, -5.000000e-01
  %1539 = fmul fast float %1536, %1485
  %1540 = fmul fast float %1537, %1485
  %1541 = fmul fast float %1538, %1485
  %1542 = fadd fast float %1539, 5.000000e-01
  %1543 = fadd fast float %1540, 5.000000e-01
  %1544 = fadd fast float %1541, 5.000000e-01
  %1545 = fmul fast float %1542, 2.000000e+00
  %1546 = fsub fast float 1.000000e+00, %1545
  %1547 = fmul fast float %1546, %1472
  %1548 = fadd fast float %1547, %1545
  %1549 = fmul fast float %1548, %1472
  %1550 = fmul fast float %1543, 2.000000e+00
  %1551 = fsub fast float 1.000000e+00, %1550
  %1552 = fmul fast float %1551, %1473
  %1553 = fadd fast float %1552, %1550
  %1554 = fmul fast float %1553, %1473
  %1555 = fmul fast float %1544, 2.000000e+00
  %1556 = fsub fast float 1.000000e+00, %1555
  %1557 = fmul fast float %1556, %1474
  %1558 = fadd fast float %1557, %1555
  %1559 = fmul fast float %1558, %1474
  br label %1560

; <label>:1560                                    ; preds = %1532, %1530, %1517, %1487, %1471
  %1561 = phi float [ %1472, %1471 ], [ %1549, %1532 ], [ %1472, %1530 ], [ %1527, %1517 ], [ %1497, %1487 ]
  %1562 = phi float [ %1473, %1471 ], [ %1554, %1532 ], [ %1473, %1530 ], [ %1528, %1517 ], [ %1498, %1487 ]
  %1563 = phi float [ %1474, %1471 ], [ %1559, %1532 ], [ %1474, %1530 ], [ %1529, %1517 ], [ %1499, %1487 ]
  %1564 = phi float [ %1475, %1471 ], [ %1475, %1532 ], [ %1475, %1530 ], [ %1475, %1517 ], [ %1509, %1487 ]
  %1565 = phi float [ %1476, %1471 ], [ %1476, %1532 ], [ %1476, %1530 ], [ %1476, %1517 ], [ %1510, %1487 ]
  %1566 = phi float [ %1477, %1471 ], [ %1477, %1532 ], [ %1477, %1530 ], [ %1477, %1517 ], [ %1511, %1487 ]
  %1567 = phi float [ %776, %1471 ], [ %776, %1532 ], [ %776, %1530 ], [ %776, %1517 ], [ %1502, %1487 ]
  %1568 = phi float [ %781, %1471 ], [ %781, %1532 ], [ %781, %1530 ], [ %781, %1517 ], [ %1514, %1487 ]
  %1569 = and i32 %1479, 12
  %1570 = icmp eq i32 %1569, 12
  br i1 %1570, label %1653, label %1571

; <label>:1571                                    ; preds = %1560
  %1572 = and i32 %1479, 2097184
  %1573 = icmp eq i32 %1572, 2097184
  %1574 = select i1 %1573, float %1070, float 0.000000e+00
  %1575 = and i32 %1479, 4194336
  %1576 = icmp eq i32 %1575, 4194336
  %1577 = select i1 %1576, float %1070, float 0.000000e+00
  %1578 = and i32 %1479, 8388640
  %1579 = icmp eq i32 %1578, 8388640
  %1580 = select i1 %1579, float %1070, float 0.000000e+00
  %1581 = and i32 %1479, 16384
  %1582 = icmp ne i32 %1581, 0
  %1583 = select i1 %1582, float %1070, float 0.000000e+00
  %1584 = icmp eq i32 %1569, 0
  br i1 %1584, label %1585, label %1601

; <label>:1585                                    ; preds = %1571
  %1586 = fsub fast float %1371, %768
  %1587 = fsub fast float %1372, %769
  %1588 = fmul fast float %1574, %1586
  %1589 = fmul fast float %1574, %1587
  %1590 = fadd fast float %1588, %768
  %1591 = fadd fast float %1589, %769
  %1592 = fsub fast float %1373, %779
  %1593 = fmul fast float %1577, %1592
  %1594 = fadd fast float %1593, %779
  %1595 = fsub fast float %1370, %778
  %1596 = fmul fast float %1580, %1595
  %1597 = fadd fast float %1596, %778
  %1598 = fsub fast float %1449, %780
  %1599 = fmul fast float %1583, %1598
  %1600 = fadd fast float %1599, %780
  br label %1653

; <label>:1601                                    ; preds = %1571
  %1602 = icmp eq i32 %1569, 4
  br i1 %1602, label %1603, label %1637

; <label>:1603                                    ; preds = %1601
  %1604 = fmul fast float %1574, %1371
  %1605 = fmul fast float %1574, %1372
  %1606 = fadd fast float %1604, %768
  %1607 = fadd fast float %1605, %769
  %1608 = call float @dx.op.binary.f32(i32 36, float %779, float %1373)  ; FMin(a,b)
  %1609 = fsub fast float %1608, %779
  %1610 = fmul fast float %1609, %1577
  %1611 = fadd fast float %1610, %779
  %1612 = fadd fast float %1370, %778
  %1613 = fmul fast float %1612, 0x3FF337FAE0000000
  %1614 = fmul fast float %778, %778
  %1615 = fmul fast float %1370, %1370
  %1616 = fadd fast float %1615, %1614
  %1617 = fmul fast float %1616, 0x3FE5152B00000000
  %1618 = fmul fast float %778, 0xBFCC1F85E0000000
  %1619 = fmul fast float %1618, %1370
  %1620 = fadd fast float %1619, 0xBFE1363700000000
  %1621 = fadd fast float %1620, %1613
  %1622 = fsub fast float %1621, %1617
  %1623 = fmul fast float %1612, 0x3FBA6F0D00000000
  %1624 = fmul fast float %1616, 0x3FD0432880000000
  %1625 = fmul fast float %778, 0xBFEF110800000000
  %1626 = fmul fast float %1625, %1370
  %1627 = fadd fast float %1626, 1.000000e+00
  %1628 = fsub fast float %1627, %1623
  %1629 = fadd fast float %1628, %1624
  %1630 = fdiv fast float %1622, %1629
  %1631 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  %1632 = fsub fast float %1631, %778
  %1633 = fmul fast float %1632, %1580
  %1634 = fadd fast float %1633, %778
  %1635 = fmul fast float %1583, %1449
  %1636 = fadd fast float %1635, %780
  br label %1653

; <label>:1637                                    ; preds = %1601
  %1638 = icmp eq i32 %1569, 8
  br i1 %1638, label %1639, label %1653

; <label>:1639                                    ; preds = %1637
  %1640 = fmul fast float %1574, %1371
  %1641 = fmul fast float %1574, %1372
  %1642 = fadd fast float %1640, %768
  %1643 = fadd fast float %1641, %769
  %1644 = call float @dx.op.binary.f32(i32 36, float %779, float %1373)  ; FMin(a,b)
  %1645 = fsub fast float %1644, %779
  %1646 = fmul fast float %1645, %1577
  %1647 = fadd fast float %1646, %779
  %1648 = fsub fast float %1370, %778
  %1649 = fmul fast float %1580, %1648
  %1650 = fadd fast float %1649, %778
  %1651 = fmul fast float %1583, %1449
  %1652 = fadd fast float %1651, %780
  br label %1653

; <label>:1653                                    ; preds = %1639, %1637, %1603, %1585, %1560, %1069, %767
  %1654 = phi float [ %768, %1560 ], [ %768, %1069 ], [ %768, %767 ], [ %1590, %1585 ], [ %1606, %1603 ], [ %768, %1637 ], [ %1642, %1639 ]
  %1655 = phi float [ %769, %1560 ], [ %769, %1069 ], [ %769, %767 ], [ %1591, %1585 ], [ %1607, %1603 ], [ %769, %1637 ], [ %1643, %1639 ]
  %1656 = phi float [ %1561, %1560 ], [ %770, %1069 ], [ %770, %767 ], [ %1561, %1585 ], [ %1561, %1603 ], [ %1561, %1637 ], [ %1561, %1639 ]
  %1657 = phi float [ %1562, %1560 ], [ %771, %1069 ], [ %771, %767 ], [ %1562, %1585 ], [ %1562, %1603 ], [ %1562, %1637 ], [ %1562, %1639 ]
  %1658 = phi float [ %1563, %1560 ], [ %772, %1069 ], [ %772, %767 ], [ %1563, %1585 ], [ %1563, %1603 ], [ %1563, %1637 ], [ %1563, %1639 ]
  %1659 = phi float [ %1564, %1560 ], [ %773, %1069 ], [ %773, %767 ], [ %1564, %1585 ], [ %1564, %1603 ], [ %1564, %1637 ], [ %1564, %1639 ]
  %1660 = phi float [ %1565, %1560 ], [ %774, %1069 ], [ %774, %767 ], [ %1565, %1585 ], [ %1565, %1603 ], [ %1565, %1637 ], [ %1565, %1639 ]
  %1661 = phi float [ %1566, %1560 ], [ %775, %1069 ], [ %775, %767 ], [ %1566, %1585 ], [ %1566, %1603 ], [ %1566, %1637 ], [ %1566, %1639 ]
  %1662 = phi float [ %1567, %1560 ], [ %776, %1069 ], [ %776, %767 ], [ %1567, %1585 ], [ %1567, %1603 ], [ %1567, %1637 ], [ %1567, %1639 ]
  %1663 = phi float [ %778, %1560 ], [ %778, %1069 ], [ %778, %767 ], [ %1597, %1585 ], [ %1634, %1603 ], [ %778, %1637 ], [ %1650, %1639 ]
  %1664 = phi float [ %779, %1560 ], [ %779, %1069 ], [ %779, %767 ], [ %1594, %1585 ], [ %1611, %1603 ], [ %779, %1637 ], [ %1647, %1639 ]
  %1665 = phi float [ %780, %1560 ], [ %780, %1069 ], [ %780, %767 ], [ %1600, %1585 ], [ %1636, %1603 ], [ %780, %1637 ], [ %1652, %1639 ]
  %1666 = phi float [ %1568, %1560 ], [ %781, %1069 ], [ %781, %767 ], [ %1568, %1585 ], [ %1568, %1603 ], [ %1568, %1637 ], [ %1568, %1639 ]
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 0
  %1669 = call float @dx.op.dot2.f32(i32 54, float %1654, float %1655, float %1654, float %1655)  ; Dot2(ax,ay,bx,by)
  %1670 = fmul fast float %1669, 0x3FE3333340000000
  %1671 = fsub fast float 1.000000e+00, %1670
  %1672 = call float @dx.op.dot3.f32(i32 55, float %1654, float %1655, float %1671, float %1654, float %1655, float %1671)  ; Dot3(ax,ay,az,bx,by,bz)
  %1673 = call float @dx.op.unary.f32(i32 25, float %1672)  ; Rsqrt(value)
  %1674 = fmul fast float %1673, %1654
  %1675 = fmul fast float %1673, %1655
  %1676 = fmul fast float %1671, %1673
  %1677 = fmul fast float %1676, %53
  %1678 = fmul fast float %1676, %54
  %1679 = fmul fast float %1676, %55
  %1680 = fmul fast float %1674, %49
  %1681 = fmul fast float %1674, %50
  %1682 = fmul fast float %1674, %51
  %1683 = fadd fast float %1677, %1680
  %1684 = fadd fast float %1678, %1681
  %1685 = fadd fast float %1679, %1682
  %1686 = fmul fast float %1675, %82
  %1687 = fmul fast float %1675, %83
  %1688 = fmul fast float %1675, %84
  %1689 = fadd fast float %1683, %1686
  %1690 = fadd fast float %1684, %1687
  %1691 = fadd fast float %1685, %1688
  %1692 = call float @dx.op.dot3.f32(i32 55, float %1689, float %1690, float %1691, float %1689, float %1690, float %1691)  ; Dot3(ax,ay,az,bx,by,bz)
  %1693 = call float @dx.op.unary.f32(i32 25, float %1692)  ; Rsqrt(value)
  %1694 = fmul fast float %1689, %1693
  %1695 = fmul fast float %1690, %1693
  %1696 = fmul fast float %1691, %1693
  %1697 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %1698 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %1699 = call float @dx.op.unary.f32(i32 83, float %120)  ; DerivCoarseX(value)
  %1700 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %1701 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %1702 = call float @dx.op.unary.f32(i32 84, float %120)  ; DerivCoarseY(value)
  %1703 = fadd fast float %1697, %118
  %1704 = fadd fast float %1698, %119
  %1705 = fadd fast float %1699, %120
  %1706 = fadd fast float %1700, %118
  %1707 = fadd fast float %1701, %119
  %1708 = fadd fast float %1702, %120
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 0
  %1711 = extractvalue %dx.types.CBufRet.f32 %1709, 1
  %1712 = extractvalue %dx.types.CBufRet.f32 %1709, 2
  %1713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.f32 %1713, 2
  %1715 = extractvalue %dx.types.CBufRet.f32 %1713, 3
  %1716 = fmul fast float %1710, %71
  %1717 = fmul fast float %1716, %1714
  %1718 = fmul fast float %1711, %72
  %1719 = fmul fast float %1718, %1715
  %1720 = fptoui float %1717 to i32
  %1721 = fptoui float %1719 to i32
  %1722 = fadd fast float %1710, -1.000000e+00
  %1723 = fadd fast float %1711, -1.000000e+00
  %1724 = fptoui float %1722 to i32
  %1725 = fptoui float %1723 to i32
  %1726 = call i32 @dx.op.binary.i32(i32 40, i32 %1720, i32 %1724)  ; UMin(a,b)
  %1727 = call i32 @dx.op.binary.i32(i32 40, i32 %1721, i32 %1725)  ; UMin(a,b)
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 2
  %1730 = extractvalue %dx.types.CBufRet.f32 %1728, 3
  %1731 = fmul fast float %1729, %66
  %1732 = fsub fast float %1731, %1730
  %1733 = fadd fast float %1712, -1.000000e+00
  %1734 = call float @dx.op.binary.f32(i32 36, float %1732, float %1733)  ; FMin(a,b)
  %1735 = fptoui float %1734 to i32
  %1736 = fptoui float %1710 to i32
  %1737 = fptoui float %1711 to i32
  %1738 = mul i32 %1735, %1737
  %1739 = add i32 %1738, %1727
  %1740 = mul i32 %1739, %1736
  %1741 = add i32 %1740, %1726
  %1742 = shl i32 %1741, 2
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = and i32 %1744, 1023
  %1746 = lshr i32 %1744, 10
  %1747 = icmp eq i32 %1745, 0
  br i1 %1747, label %2173, label %1748

; <label>:1748                                    ; preds = %1653
  %1749 = and i32 %1744, 1023
  br label %1750

; <label>:1750                                    ; preds = %1876, %1748
  %1751 = phi float [ %1877, %1876 ], [ 0.000000e+00, %1748 ]
  %1752 = phi float [ %1878, %1876 ], [ %1668, %1748 ]
  %1753 = phi float [ %1879, %1876 ], [ %1666, %1748 ]
  %1754 = phi float [ %1880, %1876 ], [ %1665, %1748 ]
  %1755 = phi float [ %1881, %1876 ], [ 0.000000e+00, %1748 ]
  %1756 = phi float [ %1882, %1876 ], [ %1659, %1748 ]
  %1757 = phi float [ %1883, %1876 ], [ %1660, %1748 ]
  %1758 = phi float [ %1884, %1876 ], [ %1661, %1748 ]
  %1759 = phi float [ %1885, %1876 ], [ %1694, %1748 ]
  %1760 = phi float [ %1886, %1876 ], [ %1695, %1748 ]
  %1761 = phi float [ %1887, %1876 ], [ %1696, %1748 ]
  %1762 = phi float [ %1888, %1876 ], [ %1664, %1748 ]
  %1763 = phi float [ %1889, %1876 ], [ %1663, %1748 ]
  %1764 = phi float [ %1890, %1876 ], [ 0.000000e+00, %1748 ]
  %1765 = phi float [ %1891, %1876 ], [ %1662, %1748 ]
  %1766 = phi float [ %1892, %1876 ], [ %1656, %1748 ]
  %1767 = phi float [ %1893, %1876 ], [ %1657, %1748 ]
  %1768 = phi float [ %1894, %1876 ], [ %1658, %1748 ]
  %1769 = phi i32 [ %1826, %1876 ], [ 0, %1748 ]
  %1770 = add nuw nsw i32 %1769, %1746
  %1771 = shl i32 %1770, 2
  %1772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1773 = extractvalue %dx.types.ResRet.i32 %1772, 0
  %1774 = shl i32 %1773, 8
  %1775 = or i32 %1774, 48
  %1776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.f32 %1776, 0
  %1778 = extractvalue %dx.types.ResRet.f32 %1776, 1
  %1779 = extractvalue %dx.types.ResRet.f32 %1776, 2
  %1780 = extractvalue %dx.types.ResRet.f32 %1776, 3
  %1781 = or i32 %1774, 64
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = extractvalue %dx.types.ResRet.i32 %1782, 1
  %1785 = or i32 %1774, 80
  %1786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.f32 %1786, 2
  %1788 = extractvalue %dx.types.ResRet.f32 %1786, 3
  %1789 = or i32 %1774, 96
  %1790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.f32 %1790, 0
  %1792 = extractvalue %dx.types.ResRet.f32 %1790, 1
  %1793 = extractvalue %dx.types.ResRet.f32 %1790, 2
  %1794 = extractvalue %dx.types.ResRet.f32 %1790, 3
  %1795 = or i32 %1774, 112
  %1796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.f32 %1796, 2
  %1798 = or i32 %1774, 128
  %1799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.f32 %1799, 0
  %1801 = extractvalue %dx.types.ResRet.f32 %1799, 1
  %1802 = extractvalue %dx.types.ResRet.f32 %1799, 2
  %1803 = extractvalue %dx.types.ResRet.f32 %1799, 3
  %1804 = or i32 %1774, 144
  %1805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1804, i32 undef)  ; BufferLoad(srv,index,wot)
  %1806 = extractvalue %dx.types.ResRet.f32 %1805, 0
  %1807 = extractvalue %dx.types.ResRet.f32 %1805, 1
  %1808 = extractvalue %dx.types.ResRet.f32 %1805, 2
  %1809 = extractvalue %dx.types.ResRet.f32 %1805, 3
  %1810 = or i32 %1774, 160
  %1811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.f32 %1811, 0
  %1813 = extractvalue %dx.types.ResRet.f32 %1811, 1
  %1814 = extractvalue %dx.types.ResRet.f32 %1811, 2
  %1815 = extractvalue %dx.types.ResRet.f32 %1811, 3
  %1816 = or i32 %1774, 192
  %1817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.i32 %1817, 0
  %1819 = or i32 %1774, 208
  %1820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1819, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.f32 %1820, 0
  %1822 = or i32 %1774, 248
  %1823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.ResRet.f32 %1823, 1
  %1826 = add nuw nsw i32 %1769, 1
  %1827 = bitcast float %1780 to i32
  %1828 = and i32 %1827, 2560
  %1829 = icmp eq i32 %1828, 0
  %1830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.f32 %1830, 0
  %1832 = extractvalue %dx.types.ResRet.f32 %1830, 1
  %1833 = extractvalue %dx.types.ResRet.f32 %1830, 2
  %1834 = extractvalue %dx.types.ResRet.f32 %1830, 3
  %1835 = call float @dx.op.dot4.f32(i32 56, float %1831, float %1832, float %1833, float %1834, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1836 = or i32 %1774, 16
  %1837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.f32 %1837, 0
  %1839 = extractvalue %dx.types.ResRet.f32 %1837, 1
  %1840 = extractvalue %dx.types.ResRet.f32 %1837, 2
  %1841 = extractvalue %dx.types.ResRet.f32 %1837, 3
  %1842 = call float @dx.op.dot4.f32(i32 56, float %1838, float %1839, float %1840, float %1841, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1843 = or i32 %1774, 32
  %1844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1843, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.f32 %1844, 0
  %1846 = extractvalue %dx.types.ResRet.f32 %1844, 1
  %1847 = extractvalue %dx.types.ResRet.f32 %1844, 2
  %1848 = extractvalue %dx.types.ResRet.f32 %1844, 3
  %1849 = call float @dx.op.dot4.f32(i32 56, float %1845, float %1846, float %1847, float %1848, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1850 = call float @dx.op.unary.f32(i32 27, float %1835)  ; Round_ni(value)
  %1851 = call float @dx.op.unary.f32(i32 6, float %1850)  ; FAbs(value)
  %1852 = call float @dx.op.unary.f32(i32 27, float %1842)  ; Round_ni(value)
  %1853 = call float @dx.op.unary.f32(i32 6, float %1852)  ; FAbs(value)
  %1854 = call float @dx.op.unary.f32(i32 6, float %1849)  ; FAbs(value)
  %1855 = call float @dx.op.unary.f32(i32 27, float %1854)  ; Round_ni(value)
  %1856 = fadd fast float %1853, %1851
  %1857 = fadd fast float %1856, %1855
  %1858 = fcmp fast oeq float %1857, 0.000000e+00
  %1859 = call float @dx.op.dot4.f32(i32 56, float %1831, float %1832, float %1833, float %1834, float %1703, float %1704, float %1705, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1860 = call float @dx.op.dot4.f32(i32 56, float %1838, float %1839, float %1840, float %1841, float %1703, float %1704, float %1705, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1861 = call float @dx.op.dot4.f32(i32 56, float %1831, float %1832, float %1833, float %1834, float %1706, float %1707, float %1708, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1862 = call float @dx.op.dot4.f32(i32 56, float %1838, float %1839, float %1840, float %1841, float %1706, float %1707, float %1708, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1863 = fsub fast float %1859, %1835
  %1864 = fsub fast float %1861, %1835
  %1865 = fsub fast float %1860, %1842
  %1866 = fsub fast float %1862, %1842
  %1867 = call float @dx.op.dot3.f32(i32 55, float %1777, float %1778, float %1779, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %1868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1869 = extractvalue %dx.types.CBufRet.f32 %1868, 2
  %1870 = fadd fast float %1869, %1867
  %1871 = call float @dx.op.unary.f32(i32 7, float %1870)  ; Saturate(value)
  %1872 = extractvalue %dx.types.CBufRet.f32 %1868, 0
  %1873 = fcmp fast ogt float %1871, %1872
  %1874 = and i1 %1858, %1873
  %1875 = and i1 %1829, %1874
  br i1 %1875, label %1896, label %1876

; <label>:1876                                    ; preds = %2159, %1977, %1896, %1750
  %1877 = phi float [ %1751, %1896 ], [ %1980, %1977 ], [ %1980, %2159 ], [ %1751, %1750 ]
  %1878 = phi float [ %1752, %1896 ], [ %1752, %1977 ], [ %2134, %2159 ], [ %1752, %1750 ]
  %1879 = phi float [ %1753, %1896 ], [ %1753, %1977 ], [ %2132, %2159 ], [ %1753, %1750 ]
  %1880 = phi float [ %1754, %1896 ], [ %1754, %1977 ], [ %2104, %2159 ], [ %1754, %1750 ]
  %1881 = phi float [ %1755, %1896 ], [ %1755, %1977 ], [ %2102, %2159 ], [ %1755, %1750 ]
  %1882 = phi float [ %1756, %1896 ], [ %1756, %1977 ], [ %2169, %2159 ], [ %1756, %1750 ]
  %1883 = phi float [ %1757, %1896 ], [ %1757, %1977 ], [ %2170, %2159 ], [ %1757, %1750 ]
  %1884 = phi float [ %1758, %1896 ], [ %1758, %1977 ], [ %2171, %2159 ], [ %1758, %1750 ]
  %1885 = phi float [ %1759, %1896 ], [ %1759, %1977 ], [ %2083, %2159 ], [ %1759, %1750 ]
  %1886 = phi float [ %1760, %1896 ], [ %1760, %1977 ], [ %2084, %2159 ], [ %1760, %1750 ]
  %1887 = phi float [ %1761, %1896 ], [ %1761, %1977 ], [ %2085, %2159 ], [ %1761, %1750 ]
  %1888 = phi float [ %1762, %1896 ], [ %1762, %1977 ], [ %2112, %2159 ], [ %1762, %1750 ]
  %1889 = phi float [ %1763, %1896 ], [ %1763, %1977 ], [ %2109, %2159 ], [ %1763, %1750 ]
  %1890 = phi float [ %1764, %1896 ], [ %1764, %1977 ], [ %2106, %2159 ], [ %1764, %1750 ]
  %1891 = phi float [ %1765, %1896 ], [ %1765, %1977 ], [ %2100, %2159 ], [ %1765, %1750 ]
  %1892 = phi float [ %1766, %1896 ], [ %1766, %1977 ], [ %2095, %2159 ], [ %1766, %1750 ]
  %1893 = phi float [ %1767, %1896 ], [ %1767, %1977 ], [ %2096, %2159 ], [ %1767, %1750 ]
  %1894 = phi float [ %1768, %1896 ], [ %1768, %1977 ], [ %2097, %2159 ], [ %1768, %1750 ]
  %1895 = icmp eq i32 %1826, %1749
  br i1 %1895, label %2172, label %1750

; <label>:1896                                    ; preds = %1750
  %1897 = extractvalue %dx.types.ResRet.f32 %1796, 3
  %1898 = extractvalue %dx.types.ResRet.f32 %1796, 1
  %1899 = extractvalue %dx.types.ResRet.f32 %1796, 0
  %1900 = extractvalue %dx.types.ResRet.f32 %1786, 1
  %1901 = extractvalue %dx.types.ResRet.f32 %1786, 0
  %1902 = extractvalue %dx.types.ResRet.i32 %1782, 3
  %1903 = extractvalue %dx.types.ResRet.i32 %1782, 2
  %1904 = add i32 %1902, 0
  %1905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1904, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1907 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1905, %dx.types.Handle %1906, float %1835, float %1842, float undef, float undef, i32 0, i32 0, i32 undef, float %1863, float %1865, float undef, float %1864, float %1866, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1908 = extractvalue %dx.types.ResRet.f32 %1907, 0
  %1909 = fmul fast float %1908, %1901
  %1910 = fadd fast float %1909, %1900
  %1911 = call float @dx.op.unary.f32(i32 7, float %1910)  ; Saturate(value)
  %1912 = fmul fast float %1835, %1791
  %1913 = call float @dx.op.tertiary.f32(i32 46, float %1792, float %1842, float %1912)  ; FMad(a,b,c)
  %1914 = fadd fast float %1913, %1899
  %1915 = fmul fast float %1835, %1793
  %1916 = call float @dx.op.tertiary.f32(i32 46, float %1794, float %1842, float %1915)  ; FMad(a,b,c)
  %1917 = fadd fast float %1916, %1898
  %1918 = fmul fast float %1863, %1791
  %1919 = call float @dx.op.tertiary.f32(i32 46, float %1792, float %1865, float %1918)  ; FMad(a,b,c)
  %1920 = fmul fast float %1863, %1793
  %1921 = call float @dx.op.tertiary.f32(i32 46, float %1794, float %1865, float %1920)  ; FMad(a,b,c)
  %1922 = fmul fast float %1864, %1791
  %1923 = call float @dx.op.tertiary.f32(i32 46, float %1792, float %1866, float %1922)  ; FMad(a,b,c)
  %1924 = fmul fast float %1864, %1793
  %1925 = call float @dx.op.tertiary.f32(i32 46, float %1794, float %1866, float %1924)  ; FMad(a,b,c)
  %1926 = add i32 %1903, 0
  %1927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1926, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1928 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1927, %dx.types.Handle %1906, float %1914, float %1917, float undef, float undef, i32 0, i32 0, i32 undef, float %1919, float %1921, float undef, float %1923, float %1925, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1929 = extractvalue %dx.types.ResRet.f32 %1928, 0
  %1930 = and i32 %1827, 1024
  %1931 = icmp ne i32 %1930, 0
  %1932 = fcmp fast ogt float %1929, 0x3FE0101020000000
  %1933 = uitofp i1 %1932 to float
  %1934 = select i1 %1931, float %1933, float %1929
  %1935 = and i32 %1827, 8192
  %1936 = icmp ne i32 %1935, 0
  %1937 = select i1 %1936, float %1897, float 1.000000e+00
  %1938 = fmul fast float %1835, 2.000000e+00
  %1939 = fadd fast float %1938, -1.000000e+00
  %1940 = call float @dx.op.unary.f32(i32 6, float %1939)  ; FAbs(value)
  %1941 = fmul fast float %1940, %1824
  %1942 = fsub fast float %1941, %1824
  %1943 = call float @dx.op.unary.f32(i32 7, float %1942)  ; Saturate(value)
  %1944 = fmul fast float %1842, 2.000000e+00
  %1945 = fadd fast float %1944, -1.000000e+00
  %1946 = call float @dx.op.unary.f32(i32 6, float %1945)  ; FAbs(value)
  %1947 = fmul fast float %1946, %1825
  %1948 = fsub fast float %1947, %1825
  %1949 = call float @dx.op.unary.f32(i32 7, float %1948)  ; Saturate(value)
  %1950 = fmul fast float %1854, %1787
  %1951 = fsub fast float %1950, %1787
  %1952 = call float @dx.op.unary.f32(i32 7, float %1951)  ; Saturate(value)
  %1953 = fmul fast float %1911, %1937
  %1954 = fmul fast float %1953, %1908
  %1955 = fmul fast float %1954, %1943
  %1956 = fmul fast float %1955, %1934
  %1957 = fmul fast float %1956, %1949
  %1958 = fmul fast float %1957, %1952
  %1959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1960 = extractvalue %dx.types.CBufRet.f32 %1959, 1
  %1961 = extractvalue %dx.types.CBufRet.f32 %1959, 0
  %1962 = fsub fast float %1871, %1961
  %1963 = fmul fast float %1962, %1960
  %1964 = call float @dx.op.unary.f32(i32 7, float %1963)  ; Saturate(value)
  %1965 = fmul fast float %1958, %1788
  %1966 = fadd fast float %1958, %1788
  %1967 = fmul fast float %1966, %1797
  %1968 = fsub fast float %1967, %1797
  %1969 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  %1970 = and i32 %1827, 128
  %1971 = icmp ne i32 %1970, 0
  %1972 = select i1 %1971, float %1969, float %1965
  %1973 = fmul fast float %1972, %1964
  %1974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1975 = extractvalue %dx.types.CBufRet.f32 %1974, 0
  %1976 = fcmp fast ugt float %1973, %1975
  br i1 %1976, label %1977, label %1876

; <label>:1977                                    ; preds = %1896
  %1978 = select i1 %1936, float %1973, float 0.000000e+00
  %1979 = fadd fast float %1978, %1751
  %1980 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  br i1 %1936, label %1876, label %1981

; <label>:1981                                    ; preds = %1977
  %1982 = and i32 %1827, 4
  %1983 = and i32 %1827, 8
  %1984 = add i32 %1783, 0
  %1985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1984, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1987 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1985, %dx.types.Handle %1986, float %1914, float %1917, float undef, float undef, i32 0, i32 0, i32 undef, float %1919, float %1921, float undef, float %1923, float %1925, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1988 = extractvalue %dx.types.ResRet.f32 %1987, 0
  %1989 = extractvalue %dx.types.ResRet.f32 %1987, 1
  %1990 = extractvalue %dx.types.ResRet.f32 %1987, 2
  %1991 = extractvalue %dx.types.ResRet.f32 %1987, 3
  %1992 = bitcast float %1809 to i32
  %1993 = and i32 %1992, 255
  %1994 = uitofp i32 %1993 to float
  %1995 = lshr i32 %1992, 8
  %1996 = and i32 %1995, 255
  %1997 = uitofp i32 %1996 to float
  %1998 = fmul fast float %1991, %1994
  %1999 = fadd fast float %1998, %1997
  %2000 = fmul fast float %1999, 0x3F70101000000000
  %2001 = add i32 %1784, 0
  %2002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2001, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2003 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2002, %dx.types.Handle %1986, float %1914, float %1917, float undef, float undef, i32 0, i32 0, i32 undef, float %1919, float %1921, float undef, float %1923, float %1925, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2004 = extractvalue %dx.types.ResRet.f32 %2003, 0
  %2005 = extractvalue %dx.types.ResRet.f32 %2003, 1
  %2006 = extractvalue %dx.types.ResRet.f32 %2003, 2
  %2007 = extractvalue %dx.types.ResRet.f32 %2003, 3
  %2008 = bitcast float %1803 to i32
  %2009 = and i32 %2008, 255
  %2010 = uitofp i32 %2009 to float
  %2011 = lshr i32 %2008, 8
  %2012 = and i32 %2011, 255
  %2013 = uitofp i32 %2012 to float
  %2014 = lshr i32 %2008, 16
  %2015 = and i32 %2014, 255
  %2016 = uitofp i32 %2015 to float
  %2017 = fmul fast float %2016, 0x3F70101000000000
  %2018 = fmul fast float %2004, %2010
  %2019 = fadd fast float %2018, %2013
  %2020 = fmul fast float %2019, 0x3F70101000000000
  %2021 = fadd fast float %2005, -5.000000e-01
  %2022 = fadd fast float %2007, -5.000000e-01
  %2023 = fmul fast float %2021, %2017
  %2024 = fmul fast float %2022, %2017
  %2025 = fadd fast float %2023, 5.000000e-01
  %2026 = fadd fast float %2024, 5.000000e-01
  %2027 = fmul fast float %1988, %1812
  %2028 = fmul fast float %1989, %1813
  %2029 = fmul fast float %1990, %1814
  %2030 = fmul fast float %2025, 2.000000e+00
  %2031 = fadd fast float %2030, -1.000000e+00
  %2032 = fmul fast float %2026, 2.000000e+00
  %2033 = fadd fast float %2032, -1.000000e+00
  %2034 = fadd fast float %2031, %2033
  %2035 = fmul fast float %2034, 5.000000e-01
  %2036 = fsub fast float %2031, %2033
  %2037 = fmul fast float %2036, 5.000000e-01
  %2038 = call float @dx.op.unary.f32(i32 6, float %2035)  ; FAbs(value)
  %2039 = fsub fast float 1.000000e+00, %2038
  %2040 = call float @dx.op.unary.f32(i32 6, float %2037)  ; FAbs(value)
  %2041 = fsub fast float %2039, %2040
  %2042 = call float @dx.op.dot3.f32(i32 55, float %2035, float %2037, float %2041, float %2035, float %2037, float %2041)  ; Dot3(ax,ay,az,bx,by,bz)
  %2043 = call float @dx.op.unary.f32(i32 25, float %2042)  ; Rsqrt(value)
  %2044 = fmul fast float %2035, %2043
  %2045 = fmul fast float %2037, %2043
  %2046 = fmul fast float %2043, %2041
  %2047 = fmul fast float %2046, %1777
  %2048 = fmul fast float %2046, %1778
  %2049 = fmul fast float %2046, %1779
  %2050 = fmul fast float %2044, %1800
  %2051 = fmul fast float %2044, %1801
  %2052 = fmul fast float %2044, %1802
  %2053 = fadd fast float %2050, %2047
  %2054 = fadd fast float %2051, %2048
  %2055 = fadd fast float %2052, %2049
  %2056 = fmul fast float %2045, %1806
  %2057 = fmul fast float %2045, %1807
  %2058 = fmul fast float %2045, %1808
  %2059 = fadd fast float %2053, %2056
  %2060 = fadd fast float %2054, %2057
  %2061 = fadd fast float %2055, %2058
  %2062 = call float @dx.op.dot3.f32(i32 55, float %2059, float %2060, float %2061, float %2059, float %2060, float %2061)  ; Dot3(ax,ay,az,bx,by,bz)
  %2063 = call float @dx.op.unary.f32(i32 25, float %2062)  ; Rsqrt(value)
  %2064 = fmul fast float %2059, %2063
  %2065 = fmul fast float %2060, %2063
  %2066 = fmul fast float %2061, %2063
  %2067 = icmp ne i32 %1983, 0
  %2068 = select i1 %2067, float 1.000000e+00, float 0.000000e+00
  %2069 = fmul fast float %1973, %2068
  %2070 = and i32 %1827, 1
  %2071 = icmp eq i32 %2070, 0
  br i1 %2071, label %2072, label %2076

; <label>:2072                                    ; preds = %1981
  %2073 = fsub fast float %2064, %1759
  %2074 = fsub fast float %2065, %1760
  %2075 = fsub fast float %2066, %1761
  br label %2076

; <label>:2076                                    ; preds = %2072, %1981
  %2077 = phi float [ %2073, %2072 ], [ %2064, %1981 ]
  %2078 = phi float [ %2074, %2072 ], [ %2065, %1981 ]
  %2079 = phi float [ %2075, %2072 ], [ %2066, %1981 ]
  %2080 = fmul float %2079, %2069
  %2081 = fmul float %2078, %2069
  %2082 = fmul float %2077, %2069
  %2083 = fadd fast float %2082, %1759
  %2084 = fadd fast float %2081, %1760
  %2085 = fadd fast float %2080, %1761
  %2086 = icmp ne i32 %1982, 0
  %2087 = select i1 %2086, float 1.000000e+00, float 0.000000e+00
  %2088 = fmul fast float %1973, %2087
  %2089 = fsub fast float %2027, %1766
  %2090 = fsub fast float %2028, %1767
  %2091 = fsub fast float %2029, %1768
  %2092 = fmul fast float %2089, %2088
  %2093 = fmul fast float %2090, %2088
  %2094 = fmul fast float %2091, %2088
  %2095 = fadd fast float %2092, %1766
  %2096 = fadd fast float %2093, %1767
  %2097 = fadd fast float %2094, %1768
  %2098 = fsub fast float %2000, %1765
  %2099 = fmul fast float %2098, %2088
  %2100 = fadd fast float %2099, %1765
  %2101 = fmul fast float %2088, %1755
  %2102 = fsub fast float %1755, %2101
  %2103 = fmul fast float %2088, %1754
  %2104 = fsub fast float %1754, %2103
  %2105 = fadd fast float %1973, %1764
  %2106 = call float @dx.op.unary.f32(i32 7, float %2105)  ; Saturate(value)
  %2107 = fsub fast float %2020, %1763
  %2108 = fmul fast float %2107, %2069
  %2109 = fadd fast float %2108, %1763
  %2110 = fsub fast float %2006, %1762
  %2111 = fmul fast float %2110, %2069
  %2112 = fadd fast float %2111, %1762
  %2113 = call float @dx.op.dot3.f32(i32 55, float %2027, float %2028, float %2029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2115 = extractvalue %dx.types.CBufRet.f32 %2114, 0
  %2116 = extractvalue %dx.types.CBufRet.f32 %2114, 1
  %2117 = fmul fast float %2116, %2113
  %2118 = fadd fast float %2117, %2115
  %2119 = call float @dx.op.unary.f32(i32 7, float %2118)  ; Saturate(value)
  %2120 = bitcast float %1815 to i32
  %2121 = and i32 %2120, 65535
  %2122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2121)  ; LegacyF16ToF32(value)
  %2123 = lshr i32 %2120, 16
  %2124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2123)  ; LegacyF16ToF32(value)
  %2125 = fcmp fast oge float %2122, 0.000000e+00
  %2126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2127 = extractvalue %dx.types.CBufRet.f32 %2126, 0
  %2128 = select i1 %2125, float %2122, float %2127
  %2129 = fadd fast float %2128, %2124
  %2130 = fsub fast float %2119, %1753
  %2131 = fmul fast float %2130, %1973
  %2132 = fadd fast float %2131, %1753
  %2133 = fmul fast float %2129, %1973
  %2134 = call float @dx.op.binary.f32(i32 35, float %1752, float %2133)  ; FMax(a,b)
  %2135 = and i32 %1827, 16
  %2136 = icmp eq i32 %2135, 0
  br i1 %2136, label %2159, label %2137

; <label>:2137                                    ; preds = %2076
  %2138 = bitcast float %1821 to i32
  %2139 = add i32 %1818, 0
  %2140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2139, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2141 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2140, %dx.types.Handle %1986, float %1914, float %1917, float undef, float undef, i32 0, i32 0, i32 undef, float %1919, float %1921, float undef, float %1923, float %1925, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.ResRet.f32 %2141, 1
  %2144 = extractvalue %dx.types.ResRet.f32 %2141, 2
  %2145 = and i32 %2138, 65535
  %2146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2145)  ; LegacyF16ToF32(value)
  %2147 = fmul fast float %2142, %1812
  %2148 = fmul fast float %2143, %1813
  %2149 = fmul fast float %2144, %1814
  %2150 = and i32 %1827, 16384
  %2151 = icmp ne i32 %2150, 0
  %2152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2153 = extractvalue %dx.types.CBufRet.f32 %2152, 0
  %2154 = select i1 %2151, float %2153, float 1.000000e+00
  %2155 = fmul fast float %2154, %2146
  %2156 = fmul fast float %2147, %2155
  %2157 = fmul fast float %2148, %2155
  %2158 = fmul fast float %2149, %2155
  br label %2159

; <label>:2159                                    ; preds = %2137, %2076
  %2160 = phi float [ %2156, %2137 ], [ 0.000000e+00, %2076 ]
  %2161 = phi float [ %2157, %2137 ], [ 0.000000e+00, %2076 ]
  %2162 = phi float [ %2158, %2137 ], [ 0.000000e+00, %2076 ]
  %2163 = fsub fast float %2160, %1756
  %2164 = fsub fast float %2161, %1757
  %2165 = fsub fast float %2162, %1758
  %2166 = fmul fast float %2163, %1973
  %2167 = fmul fast float %2164, %1973
  %2168 = fmul fast float %2165, %1973
  %2169 = fadd fast float %2166, %1756
  %2170 = fadd fast float %2167, %1757
  %2171 = fadd fast float %2168, %1758
  br label %1876

; <label>:2172                                    ; preds = %1876
  br label %2173

; <label>:2173                                    ; preds = %2172, %1653
  %2174 = phi float [ 0.000000e+00, %1653 ], [ %1877, %2172 ]
  %2175 = phi float [ %1668, %1653 ], [ %1878, %2172 ]
  %2176 = phi float [ %1666, %1653 ], [ %1879, %2172 ]
  %2177 = phi float [ %1665, %1653 ], [ %1880, %2172 ]
  %2178 = phi float [ 0.000000e+00, %1653 ], [ %1881, %2172 ]
  %2179 = phi float [ %1659, %1653 ], [ %1882, %2172 ]
  %2180 = phi float [ %1660, %1653 ], [ %1883, %2172 ]
  %2181 = phi float [ %1661, %1653 ], [ %1884, %2172 ]
  %2182 = phi float [ %1694, %1653 ], [ %1885, %2172 ]
  %2183 = phi float [ %1695, %1653 ], [ %1886, %2172 ]
  %2184 = phi float [ %1696, %1653 ], [ %1887, %2172 ]
  %2185 = phi float [ %1664, %1653 ], [ %1888, %2172 ]
  %2186 = phi float [ %1663, %1653 ], [ %1889, %2172 ]
  %2187 = phi float [ 0.000000e+00, %1653 ], [ %1890, %2172 ]
  %2188 = phi float [ %1662, %1653 ], [ %1891, %2172 ]
  %2189 = phi float [ %1656, %1653 ], [ %1892, %2172 ]
  %2190 = phi float [ %1657, %1653 ], [ %1893, %2172 ]
  %2191 = phi float [ %1658, %1653 ], [ %1894, %2172 ]
  %2192 = call float @dx.op.dot3.f32(i32 55, float %2182, float %2183, float %2184, float %2182, float %2183, float %2184)  ; Dot3(ax,ay,az,bx,by,bz)
  %2193 = call float @dx.op.unary.f32(i32 25, float %2192)  ; Rsqrt(value)
  %2194 = fmul fast float %2193, %2182
  %2195 = fmul fast float %2193, %2183
  %2196 = fmul fast float %2193, %2184
  %2197 = fadd fast float %2187, %777
  %2198 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  %2199 = call float @dx.op.dot3.f32(i32 55, float %2194, float %2195, float %2196, float %2194, float %2195, float %2196)  ; Dot3(ax,ay,az,bx,by,bz)
  %2200 = call float @dx.op.unary.f32(i32 25, float %2199)  ; Rsqrt(value)
  %2201 = fmul fast float %2200, %2194
  %2202 = fmul fast float %2200, %2195
  %2203 = fmul fast float %2200, %2196
  %2204 = fadd fast float %2188, 0xBFB99999A0000000
  %2205 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  %2206 = fmul fast float %2205, 0x3FF1C71C80000000
  %2207 = call float @dx.op.binary.f32(i32 36, float %2188, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2208 = fsub fast float 1.000000e+00, %2206
  %2209 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  %2210 = fmul fast float %2209, %2189
  %2211 = fmul fast float %2209, %2190
  %2212 = fmul fast float %2209, %2191
  %2213 = call float @dx.op.unary.f32(i32 7, float %2210)  ; Saturate(value)
  %2214 = call float @dx.op.unary.f32(i32 7, float %2211)  ; Saturate(value)
  %2215 = call float @dx.op.unary.f32(i32 7, float %2212)  ; Saturate(value)
  %2216 = fmul fast float %2206, %2189
  %2217 = fmul fast float %2206, %2190
  %2218 = fmul fast float %2206, %2191
  %2219 = fadd fast float %2216, %2207
  %2220 = fadd fast float %2217, %2207
  %2221 = fadd fast float %2218, %2207
  %2222 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  %2223 = call float @dx.op.unary.f32(i32 7, float %2220)  ; Saturate(value)
  %2224 = call float @dx.op.unary.f32(i32 7, float %2221)  ; Saturate(value)
  %2225 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2227 = extractvalue %dx.types.CBufRet.i32 %2226, 3
  %2228 = and i32 %2227, 8
  %2229 = icmp ne i32 %2228, 0
  %2230 = call float @dx.op.binary.f32(i32 35, float %2213, float %2189)  ; FMax(a,b)
  %2231 = call float @dx.op.binary.f32(i32 35, float %2214, float %2189)  ; FMax(a,b)
  %2232 = call float @dx.op.binary.f32(i32 35, float %2215, float %2189)  ; FMax(a,b)
  %2233 = call float @dx.op.dot3.f32(i32 55, float %2213, float %2214, float %2215, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2234 = select i1 %189, float %2189, float %2213
  %2235 = select i1 %189, float %2233, float %2214
  %2236 = select i1 %189, float 1.000000e+00, float %2215
  %2237 = select i1 %2229, float %2230, float %2234
  %2238 = select i1 %2229, float %2231, float %2235
  %2239 = select i1 %2229, float %2232, float %2236
  %2240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2241 = extractvalue %dx.types.CBufRet.f32 %2240, 0
  %2242 = extractvalue %dx.types.CBufRet.f32 %2240, 1
  %2243 = extractvalue %dx.types.CBufRet.f32 %2240, 2
  %2244 = fadd fast float %2241, %118
  %2245 = fadd fast float %2242, %119
  %2246 = fadd fast float %2243, %120
  %2247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2248 = extractvalue %dx.types.CBufRet.f32 %2247, 0
  %2249 = extractvalue %dx.types.CBufRet.f32 %2247, 1
  %2250 = fsub fast float %2244, %2248
  %2251 = fsub fast float %2245, %2249
  %2252 = fmul fast float %2250, %2250
  %2253 = fmul fast float %2251, %2251
  %2254 = fadd fast float %2252, %2253
  %2255 = call float @dx.op.unary.f32(i32 24, float %2254)  ; Sqrt(value)
  %2256 = extractvalue %dx.types.CBufRet.f32 %2247, 2
  %2257 = fcmp fast olt float %2255, %2256
  br i1 %2257, label %2258, label %2325

; <label>:2258                                    ; preds = %2173
  %2259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.f32 %2259, 0
  %2261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2262 = extractvalue %dx.types.CBufRet.f32 %2261, 0
  %2263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.f32 %2263, 0
  %2265 = extractvalue %dx.types.CBufRet.f32 %2259, 1
  %2266 = extractvalue %dx.types.CBufRet.f32 %2261, 1
  %2267 = extractvalue %dx.types.CBufRet.f32 %2263, 1
  %2268 = extractvalue %dx.types.CBufRet.f32 %2259, 3
  %2269 = extractvalue %dx.types.CBufRet.f32 %2261, 3
  %2270 = extractvalue %dx.types.CBufRet.f32 %2263, 3
  %2271 = fadd fast float %2268, %2244
  %2272 = fadd fast float %2269, %2245
  %2273 = fadd fast float %2270, %2246
  %2274 = fmul fast float %2271, %2260
  %2275 = call float @dx.op.tertiary.f32(i32 46, float %2272, float %2262, float %2274)  ; FMad(a,b,c)
  %2276 = call float @dx.op.tertiary.f32(i32 46, float %2273, float %2264, float %2275)  ; FMad(a,b,c)
  %2277 = fmul fast float %2271, %2265
  %2278 = call float @dx.op.tertiary.f32(i32 46, float %2272, float %2266, float %2277)  ; FMad(a,b,c)
  %2279 = call float @dx.op.tertiary.f32(i32 46, float %2273, float %2267, float %2278)  ; FMad(a,b,c)
  %2280 = fsub fast float %2276, %2268
  %2281 = fsub fast float %2279, %2269
  %2282 = fsub fast float %2280, %2248
  %2283 = fadd fast float %2282, %2256
  %2284 = fsub fast float %2281, %2249
  %2285 = fadd fast float %2284, %2256
  %2286 = extractvalue %dx.types.CBufRet.f32 %2247, 3
  %2287 = fmul fast float %2283, %2286
  %2288 = fmul fast float %2285, %2286
  %2289 = call float @dx.op.unary.f32(i32 7, float %2287)  ; Saturate(value)
  %2290 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  %2291 = fsub fast float 1.000000e+00, %2289
  %2292 = fsub fast float 1.000000e+00, %2290
  %2293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2291, float %2292, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2294 = extractvalue %dx.types.ResRet.f32 %2293, 0
  %2295 = fcmp fast ugt float %2294, 0.000000e+00
  br i1 %2295, label %2296, label %2599

; <label>:2296                                    ; preds = %2258
  %2297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2298 = extractvalue %dx.types.CBufRet.f32 %2297, 2
  %2299 = fmul fast float %2298, %2294
  %2300 = extractvalue %dx.types.CBufRet.f32 %2297, 3
  %2301 = fadd fast float %2300, %2299
  %2302 = extractvalue %dx.types.CBufRet.f32 %2263, 2
  %2303 = fadd fast float %2301, %2270
  %2304 = fmul fast float %2276, %2264
  %2305 = call float @dx.op.tertiary.f32(i32 46, float %2279, float %2267, float %2304)  ; FMad(a,b,c)
  %2306 = call float @dx.op.tertiary.f32(i32 46, float %2303, float %2302, float %2305)  ; FMad(a,b,c)
  %2307 = fsub fast float %2306, %2270
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2309 = extractvalue %dx.types.CBufRet.f32 %2308, 2
  %2310 = fsub fast float %2307, %2309
  %2311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %2291, float %2292, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2312 = extractvalue %dx.types.ResRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.ResRet.f32 %2311, 1
  %2314 = extractvalue %dx.types.ResRet.f32 %2311, 2
  %2315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %2291, float %2292, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2316 = extractvalue %dx.types.ResRet.f32 %2315, 0
  %2317 = extractvalue %dx.types.ResRet.f32 %2315, 1
  %2318 = extractvalue %dx.types.ResRet.f32 %2315, 2
  %2319 = fadd fast float %2316, %2312
  %2320 = fmul fast float %2319, 0x3F847AE140000000
  %2321 = fadd fast float %2317, %2313
  %2322 = fmul fast float %2321, 0x3F847AE140000000
  %2323 = fadd fast float %2318, %2314
  %2324 = fmul fast float %2323, 0x3F847AE140000000
  br label %2599

; <label>:2325                                    ; preds = %2173
  %2326 = and i32 %165, 1
  %2327 = icmp eq i32 %2326, 0
  br i1 %2327, label %2599, label %2328

; <label>:2328                                    ; preds = %2325
  %2329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2330 = extractvalue %dx.types.CBufRet.f32 %2329, 0
  %2331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2332 = extractvalue %dx.types.CBufRet.f32 %2331, 0
  %2333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2334 = extractvalue %dx.types.CBufRet.f32 %2333, 0
  %2335 = extractvalue %dx.types.CBufRet.f32 %2329, 1
  %2336 = extractvalue %dx.types.CBufRet.f32 %2331, 1
  %2337 = extractvalue %dx.types.CBufRet.f32 %2333, 1
  %2338 = extractvalue %dx.types.CBufRet.f32 %2329, 3
  %2339 = extractvalue %dx.types.CBufRet.f32 %2331, 3
  %2340 = extractvalue %dx.types.CBufRet.f32 %2333, 3
  %2341 = fadd fast float %2338, %2244
  %2342 = fadd fast float %2339, %2245
  %2343 = fadd fast float %2340, %2246
  %2344 = fmul fast float %2341, %2330
  %2345 = call float @dx.op.tertiary.f32(i32 46, float %2342, float %2332, float %2344)  ; FMad(a,b,c)
  %2346 = call float @dx.op.tertiary.f32(i32 46, float %2343, float %2334, float %2345)  ; FMad(a,b,c)
  %2347 = fmul fast float %2341, %2335
  %2348 = call float @dx.op.tertiary.f32(i32 46, float %2342, float %2336, float %2347)  ; FMad(a,b,c)
  %2349 = call float @dx.op.tertiary.f32(i32 46, float %2343, float %2337, float %2348)  ; FMad(a,b,c)
  %2350 = fsub fast float %2346, %2338
  %2351 = fsub fast float %2349, %2339
  %2352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2353 = extractvalue %dx.types.CBufRet.f32 %2352, 0
  %2354 = extractvalue %dx.types.CBufRet.f32 %2352, 1
  %2355 = extractvalue %dx.types.CBufRet.f32 %2352, 2
  %2356 = extractvalue %dx.types.CBufRet.f32 %2352, 3
  %2357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2358 = extractvalue %dx.types.CBufRet.f32 %2357, 3
  %2359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.i32 %2359, 0
  %2361 = extractvalue %dx.types.CBufRet.i32 %2359, 1
  %2362 = udiv i32 %2361, %2360
  %2363 = fsub fast float %2350, %2353
  %2364 = fsub fast float %2351, %2354
  %2365 = call float @dx.op.binary.f32(i32 35, float %2363, float 0.000000e+00)  ; FMax(a,b)
  %2366 = call float @dx.op.binary.f32(i32 35, float %2364, float 0.000000e+00)  ; FMax(a,b)
  %2367 = call float @dx.op.binary.f32(i32 36, float %2365, float %2355)  ; FMin(a,b)
  %2368 = call float @dx.op.binary.f32(i32 36, float %2366, float %2356)  ; FMin(a,b)
  %2369 = add i32 %2360, -1
  %2370 = add i32 %2362, -1
  %2371 = fmul fast float %2367, %2358
  %2372 = fmul fast float %2368, %2358
  %2373 = fptoui float %2371 to i32
  %2374 = fptoui float %2372 to i32
  %2375 = call i32 @dx.op.binary.i32(i32 40, i32 %2373, i32 %2369)  ; UMin(a,b)
  %2376 = call i32 @dx.op.binary.i32(i32 40, i32 %2374, i32 %2370)  ; UMin(a,b)
  %2377 = mul i32 %2376, %2360
  %2378 = add i32 %2377, %2375
  %2379 = shl i32 %2378, 2
  %2380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2379, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.i32 %2380, 0
  %2382 = icmp eq i32 %2381, -1
  br i1 %2382, label %2599, label %2383

; <label>:2383                                    ; preds = %2328
  %2384 = mul i32 %2381, 148
  %2385 = add i32 %2384, 4
  %2386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.f32 %2386, 0
  %2388 = add i32 %2384, 8
  %2389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2388, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.f32 %2389, 0
  %2391 = add i32 %2384, 36
  %2392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2391, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.f32 %2392, 0
  %2394 = add i32 %2384, 60
  %2395 = add i32 %2384, 92
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = add i32 %2384, 116
  %2399 = fsub fast float %2350, %2387
  %2400 = fsub fast float %2351, %2390
  %2401 = fmul fast float %2358, %2399
  %2402 = fmul fast float %2358, %2400
  %2403 = call float @dx.op.unary.f32(i32 7, float %2401)  ; Saturate(value)
  %2404 = call float @dx.op.unary.f32(i32 7, float %2402)  ; Saturate(value)
  %2405 = fsub fast float 1.000000e+00, %2404
  %2406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.f32 %2406, 2
  %2408 = call float @dx.op.unary.f32(i32 83, float %2403)  ; DerivCoarseX(value)
  %2409 = call float @dx.op.unary.f32(i32 83, float %2405)  ; DerivCoarseX(value)
  %2410 = call float @dx.op.unary.f32(i32 84, float %2403)  ; DerivCoarseY(value)
  %2411 = call float @dx.op.unary.f32(i32 84, float %2405)  ; DerivCoarseY(value)
  %2412 = fmul fast float %2408, %2407
  %2413 = fmul fast float %2409, %2407
  %2414 = fmul fast float %2410, %2407
  %2415 = fmul fast float %2411, %2407
  %2416 = call float @dx.op.dot2.f32(i32 54, float %2414, float %2415, float %2414, float %2415)  ; Dot2(ax,ay,bx,by)
  %2417 = call float @dx.op.dot2.f32(i32 54, float %2412, float %2413, float %2412, float %2413)  ; Dot2(ax,ay,bx,by)
  %2418 = call float @dx.op.binary.f32(i32 35, float %2417, float %2416)  ; FMax(a,b)
  %2419 = call float @dx.op.unary.f32(i32 23, float %2418)  ; Log(value)
  %2420 = fmul fast float %2419, 5.000000e-01
  %2421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2422 = extractvalue %dx.types.CBufRet.f32 %2421, 1
  %2423 = fadd fast float %2422, %2420
  %2424 = call float @dx.op.binary.f32(i32 35, float %2423, float 0.000000e+00)  ; FMax(a,b)
  %2425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.f32 %2425, 3
  %2427 = fadd fast float %2426, %2424
  %2428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2429 = extractvalue %dx.types.CBufRet.f32 %2428, 3
  %2430 = fadd fast float %2427, %2429
  %2431 = add i32 %2397, 0
  %2432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2431, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2433 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2432, i32 0)  ; GetDimensions(handle,mipLevel)
  %2434 = extractvalue %dx.types.Dimensions %2433, 0
  %2435 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2434)  ; FirstbitLo(value)
  %2436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2437 = extractvalue %dx.types.CBufRet.i32 %2436, 1
  %2438 = sub nsw i32 %2437, %2435
  %2439 = sitofp i32 %2438 to float
  %2440 = fsub fast float %2430, %2439
  %2441 = call float @dx.op.binary.f32(i32 35, float %2440, float 0.000000e+00)  ; FMax(a,b)
  %2442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2432, %dx.types.Handle %37, float %2403, float %2405, float %2393, float undef, i32 0, i32 0, i32 undef, float %2441)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2443 = extractvalue %dx.types.ResRet.f32 %2442, 0
  %2444 = fcmp ule float %2443, 0x3FE0101020000000
  %2445 = extractvalue %dx.types.CBufRet.i32 %2436, 0
  %2446 = and i32 %2445, 128
  %2447 = icmp ne i32 %2446, 0
  %2448 = and i1 %2444, %2447
  br i1 %2448, label %2599, label %2449

; <label>:2449                                    ; preds = %2383
  %2450 = add i32 %2384, 20
  %2451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2450, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.f32 %2451, 0
  %2453 = add i32 %2384, 24
  %2454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.f32 %2454, 0
  %2456 = add i32 %2384, 40
  %2457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.f32 %2457, 0
  %2459 = add i32 %2384, 96
  %2460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2459, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.i32 %2460, 0
  %2462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2463 = extractvalue %dx.types.CBufRet.f32 %2462, 2
  %2464 = fmul fast float %2463, %2403
  %2465 = fmul fast float %2463, %2405
  %2466 = extractvalue %dx.types.CBufRet.f32 %2462, 3
  %2467 = fadd fast float %2464, %2466
  %2468 = fadd fast float %2465, %2466
  %2469 = add i32 %2461, 0
  %2470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2469, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2471 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2470, i32 0)  ; GetDimensions(handle,mipLevel)
  %2472 = extractvalue %dx.types.Dimensions %2471, 0
  %2473 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2472)  ; FirstbitLo(value)
  %2474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2475 = extractvalue %dx.types.CBufRet.i32 %2474, 1
  %2476 = sub nsw i32 %2475, %2473
  %2477 = sitofp i32 %2476 to float
  %2478 = fsub fast float %2427, %2477
  %2479 = call float @dx.op.binary.f32(i32 35, float %2478, float 0.000000e+00)  ; FMax(a,b)
  %2480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2470, %dx.types.Handle %37, float %2467, float %2468, float %2458, float undef, i32 0, i32 0, i32 undef, float %2479)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2481 = extractvalue %dx.types.ResRet.f32 %2480, 0
  %2482 = fmul fast float %2481, %2452
  %2483 = fadd fast float %2482, %2455
  %2484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2485 = extractvalue %dx.types.CBufRet.f32 %2484, 0
  %2486 = extractvalue %dx.types.CBufRet.f32 %2484, 1
  %2487 = extractvalue %dx.types.CBufRet.f32 %2484, 2
  %2488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2489 = extractvalue %dx.types.CBufRet.f32 %2488, 3
  %2490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2491 = extractvalue %dx.types.CBufRet.f32 %2490, 3
  %2492 = extractvalue %dx.types.CBufRet.f32 %2484, 3
  %2493 = fadd fast float %2489, %2350
  %2494 = fadd fast float %2491, %2351
  %2495 = fadd fast float %2483, %2492
  %2496 = fmul fast float %2493, %2485
  %2497 = call float @dx.op.tertiary.f32(i32 46, float %2494, float %2486, float %2496)  ; FMad(a,b,c)
  %2498 = call float @dx.op.tertiary.f32(i32 46, float %2495, float %2487, float %2497)  ; FMad(a,b,c)
  %2499 = fsub fast float %2498, %2492
  %2500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2500, 2
  %2502 = fsub fast float %2499, %2501
  %2503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2504 = extractvalue %dx.types.CBufRet.i32 %2503, 0
  %2505 = call i32 @dx.op.binary.i32(i32 40, i32 %2381, i32 %2504)  ; UMin(a,b)
  %2506 = mul i32 %2505, 36
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = add i32 %2506, 4
  %2510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2511 = extractvalue %dx.types.CBufRet.f32 %2510, 0
  %2512 = fmul fast float %2511, %2403
  %2513 = fmul fast float %2511, %2405
  %2514 = extractvalue %dx.types.CBufRet.f32 %2510, 1
  %2515 = fadd fast float %2512, %2514
  %2516 = fadd fast float %2513, %2514
  %2517 = icmp eq i32 %2508, 0
  br i1 %2517, label %2586, label %2518

; <label>:2518                                    ; preds = %2449
  br label %2519

; <label>:2519                                    ; preds = %2576, %2518
  %2520 = phi float [ %2577, %2576 ], [ 0.000000e+00, %2518 ]
  %2521 = phi float [ %2578, %2576 ], [ 0.000000e+00, %2518 ]
  %2522 = phi float [ %2579, %2576 ], [ 0.000000e+00, %2518 ]
  %2523 = phi float [ %2580, %2576 ], [ 0.000000e+00, %2518 ]
  %2524 = phi float [ %2581, %2576 ], [ 0.000000e+00, %2518 ]
  %2525 = phi float [ %2582, %2576 ], [ 0.000000e+00, %2518 ]
  %2526 = phi i32 [ %2583, %2576 ], [ 0, %2518 ]
  %2527 = shl i32 %2526, 2
  %2528 = add i32 %2394, %2527
  %2529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.f32 %2529, 0
  %2531 = add i32 %2398, %2527
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = add i32 %2533, 0
  %2535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2534, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2536 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2535, i32 0)  ; GetDimensions(handle,mipLevel)
  %2537 = extractvalue %dx.types.Dimensions %2536, 0
  %2538 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2537)  ; FirstbitLo(value)
  %2539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.i32 %2539, 1
  %2541 = sub nsw i32 %2540, %2538
  %2542 = sitofp i32 %2541 to float
  %2543 = fsub fast float %2427, %2542
  %2544 = call float @dx.op.binary.f32(i32 35, float %2543, float 0.000000e+00)  ; FMax(a,b)
  %2545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2535, %dx.types.Handle %37, float %2515, float %2516, float %2530, float undef, i32 0, i32 0, i32 undef, float %2544)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2546 = extractvalue %dx.types.ResRet.f32 %2545, 0
  %2547 = fcmp fast ogt float %2546, 0.000000e+00
  br i1 %2547, label %2548, label %2576

; <label>:2548                                    ; preds = %2519
  %2549 = add i32 %2509, %2527
  %2550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2549, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.i32 %2550, 0
  %2552 = and i32 %2551, 32767
  %2553 = mul nuw nsw i32 %2552, 928
  %2554 = add nuw nsw i32 %2553, 48
  %2555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.f32 %2555, 0
  %2557 = extractvalue %dx.types.ResRet.f32 %2555, 1
  %2558 = extractvalue %dx.types.ResRet.f32 %2555, 2
  %2559 = add nuw nsw i32 %2553, 60
  %2560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.f32 %2560, 0
  %2562 = extractvalue %dx.types.ResRet.f32 %2560, 1
  %2563 = extractvalue %dx.types.ResRet.f32 %2560, 2
  %2564 = fmul fast float %2556, %2546
  %2565 = fmul fast float %2557, %2546
  %2566 = fmul fast float %2558, %2546
  %2567 = fadd fast float %2564, %2520
  %2568 = fadd fast float %2565, %2521
  %2569 = fadd fast float %2566, %2522
  %2570 = fmul fast float %2561, %2546
  %2571 = fmul fast float %2562, %2546
  %2572 = fmul fast float %2563, %2546
  %2573 = fadd fast float %2570, %2523
  %2574 = fadd fast float %2571, %2524
  %2575 = fadd fast float %2572, %2525
  br label %2576

; <label>:2576                                    ; preds = %2548, %2519
  %2577 = phi float [ %2567, %2548 ], [ %2520, %2519 ]
  %2578 = phi float [ %2568, %2548 ], [ %2521, %2519 ]
  %2579 = phi float [ %2569, %2548 ], [ %2522, %2519 ]
  %2580 = phi float [ %2573, %2548 ], [ %2523, %2519 ]
  %2581 = phi float [ %2574, %2548 ], [ %2524, %2519 ]
  %2582 = phi float [ %2575, %2548 ], [ %2525, %2519 ]
  %2583 = add nuw i32 %2526, 1
  %2584 = icmp eq i32 %2583, %2508
  br i1 %2584, label %2585, label %2519

; <label>:2585                                    ; preds = %2576
  br label %2586

; <label>:2586                                    ; preds = %2585, %2449
  %2587 = phi float [ 0.000000e+00, %2449 ], [ %2577, %2585 ]
  %2588 = phi float [ 0.000000e+00, %2449 ], [ %2578, %2585 ]
  %2589 = phi float [ 0.000000e+00, %2449 ], [ %2579, %2585 ]
  %2590 = phi float [ 0.000000e+00, %2449 ], [ %2580, %2585 ]
  %2591 = phi float [ 0.000000e+00, %2449 ], [ %2581, %2585 ]
  %2592 = phi float [ 0.000000e+00, %2449 ], [ %2582, %2585 ]
  %2593 = fadd fast float %2590, %2587
  %2594 = fmul fast float %2593, 0x3F847AE140000000
  %2595 = fadd fast float %2591, %2588
  %2596 = fmul fast float %2595, 0x3F847AE140000000
  %2597 = fadd fast float %2592, %2589
  %2598 = fmul fast float %2597, 0x3F847AE140000000
  br label %2599

; <label>:2599                                    ; preds = %2586, %2383, %2328, %2325, %2296, %2258
  %2600 = phi float [ %2310, %2296 ], [ -1.310720e+05, %2258 ], [ %2502, %2586 ], [ -1.310720e+05, %2328 ], [ -1.310720e+05, %2383 ], [ -1.310720e+05, %2325 ]
  %2601 = phi float [ %2320, %2296 ], [ 0.000000e+00, %2258 ], [ %2594, %2586 ], [ 0.000000e+00, %2328 ], [ 0.000000e+00, %2383 ], [ 0.000000e+00, %2325 ]
  %2602 = phi float [ %2322, %2296 ], [ 0.000000e+00, %2258 ], [ %2596, %2586 ], [ 0.000000e+00, %2328 ], [ 0.000000e+00, %2383 ], [ 0.000000e+00, %2325 ]
  %2603 = phi float [ %2324, %2296 ], [ 0.000000e+00, %2258 ], [ %2598, %2586 ], [ 0.000000e+00, %2328 ], [ 0.000000e+00, %2383 ], [ 0.000000e+00, %2325 ]
  %2604 = phi i1 [ true, %2296 ], [ false, %2258 ], [ true, %2586 ], [ false, %2328 ], [ false, %2383 ], [ false, %2325 ]
  %2605 = and i32 %165, 3
  %2606 = icmp eq i32 %2605, 1
  %2607 = select i1 %2606, float 1.000000e+00, float 0.000000e+00
  %2608 = fsub fast float %2600, %120
  %2609 = call float @dx.op.unary.f32(i32 7, float %2608)  ; Saturate(value)
  %2610 = select i1 %2604, float %2609, float 1.000000e+00
  %2611 = fmul fast float %2610, %2607
  %2612 = icmp eq i32 %2605, 3
  %2613 = select i1 %2612, float 1.000000e+00, float %2611
  %2614 = call float @dx.op.binary.f32(i32 35, float %2174, float %2613)  ; FMax(a,b)
  %2615 = call float @dx.op.unary.f32(i32 7, float %2614)  ; Saturate(value)
  %2616 = fcmp fast une float %2615, 0.000000e+00
  %2617 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %2618 = call float @dx.op.unary.f32(i32 25, float %2617)  ; Rsqrt(value)
  br i1 %2616, label %2626, label %2619

; <label>:2619                                    ; preds = %2599
  %2620 = fmul fast float %2618, %118
  %2621 = fmul fast float %2618, %119
  %2622 = fmul fast float %2618, %120
  %2623 = fsub fast float -0.000000e+00, %2620
  %2624 = fsub fast float -0.000000e+00, %2621
  %2625 = fsub fast float -0.000000e+00, %2622
  br label %2794

; <label>:2626                                    ; preds = %2599
  %2627 = fmul fast float %118, %2618
  %2628 = fsub fast float -0.000000e+00, %2627
  %2629 = fmul fast float %119, %2618
  %2630 = fsub fast float -0.000000e+00, %2629
  %2631 = fmul fast float %120, %2618
  %2632 = fsub fast float -0.000000e+00, %2631
  %2633 = call float @dx.op.dot3.f32(i32 55, float %2628, float %2630, float %2632, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2634 = fmul fast float %2615, 2.500000e+00
  %2635 = call float @dx.op.unary.f32(i32 7, float %2634)  ; Saturate(value)
  %2636 = fmul fast float %2615, 0x4013FFFFE0000000
  %2637 = fadd fast float %2636, 0xBFFFFFFFE0000000
  %2638 = call float @dx.op.unary.f32(i32 7, float %2637)  ; Saturate(value)
  %2639 = fmul fast float %2615, 0x4004000020000000
  %2640 = fadd fast float %2639, 0xBFF8000040000000
  %2641 = call float @dx.op.unary.f32(i32 7, float %2640)  ; Saturate(value)
  %2642 = call float @dx.op.unary.f32(i32 7, float %2635)  ; Saturate(value)
  %2643 = fmul fast float %2204, 1.000000e+01
  %2644 = call float @dx.op.unary.f32(i32 7, float %2643)  ; Saturate(value)
  %2645 = fmul fast float %2644, 2.000000e+00
  %2646 = fsub fast float 3.000000e+00, %2645
  %2647 = fmul fast float %2644, %2644
  %2648 = fmul fast float %2647, %2646
  %2649 = fsub fast float 1.000000e+00, %2648
  %2650 = fsub fast float 0x3FE3333340000000, %2225
  %2651 = fmul fast float %2650, 0x400AAAAAA0000000
  %2652 = call float @dx.op.unary.f32(i32 7, float %2651)  ; Saturate(value)
  %2653 = fmul fast float %2649, %2652
  %2654 = fmul fast float %2237, 0x3FEA2B8620000000
  %2655 = fmul fast float %2238, 0x3FEA2B8620000000
  %2656 = fmul fast float %2239, 0x3FEA2B8620000000
  %2657 = fadd fast float %2654, 0x3FC81DFBA0000000
  %2658 = fmul fast float %2657, %2237
  %2659 = fadd fast float %2658, 0x3F910E6020000000
  %2660 = fadd fast float %2655, 0x3FC81DFBA0000000
  %2661 = fmul fast float %2660, %2238
  %2662 = fadd fast float %2661, 0x3F910E6020000000
  %2663 = fadd fast float %2656, 0x3FC81DFBA0000000
  %2664 = fmul fast float %2663, %2239
  %2665 = fadd fast float %2664, 0x3F910E6020000000
  %2666 = call float @dx.op.unary.f32(i32 7, float %2659)  ; Saturate(value)
  %2667 = call float @dx.op.unary.f32(i32 7, float %2662)  ; Saturate(value)
  %2668 = call float @dx.op.unary.f32(i32 7, float %2665)  ; Saturate(value)
  %2669 = fsub fast float %2666, %2237
  %2670 = fsub fast float %2667, %2238
  %2671 = fsub fast float %2668, %2239
  %2672 = fmul fast float %2669, %2642
  %2673 = fmul fast float %2672, %2653
  %2674 = fmul fast float %2670, %2642
  %2675 = fmul fast float %2674, %2653
  %2676 = fmul fast float %2671, %2642
  %2677 = fmul fast float %2676, %2653
  %2678 = fadd fast float %2673, %2237
  %2679 = fadd fast float %2675, %2238
  %2680 = fadd fast float %2677, %2239
  %2681 = fmul fast float %2185, %2185
  %2682 = fmul fast float %2681, %2681
  %2683 = fadd fast float %2638, 1.000000e+00
  %2684 = fsub fast float %2683, %2653
  %2685 = call float @dx.op.unary.f32(i32 7, float %2684)  ; Saturate(value)
  %2686 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2687 = call float @dx.op.unary.f32(i32 7, float %2686)  ; Saturate(value)
  %2688 = fsub fast float 1.000000e+00, %2682
  %2689 = call float @dx.op.binary.f32(i32 36, float %2685, float %2688)  ; FMin(a,b)
  %2690 = call float @dx.op.unary.f32(i32 7, float %2641)  ; Saturate(value)
  %2691 = call float @dx.op.binary.f32(i32 35, float %2689, float %2690)  ; FMax(a,b)
  %2692 = fadd fast float %2687, 0xBFE4CCCCC0000000
  %2693 = fmul fast float %2692, 0x4006DB6DA0000000
  %2694 = call float @dx.op.unary.f32(i32 7, float %2693)  ; Saturate(value)
  %2695 = fmul fast float %2694, 2.000000e+00
  %2696 = fsub fast float 3.000000e+00, %2695
  %2697 = bitcast float %2222 to i32
  %2698 = ashr i32 %2697, 1
  %2699 = add nsw i32 %2698, 532487669
  %2700 = bitcast i32 %2699 to float
  %2701 = fsub fast float 1.000000e+00, %2700
  %2702 = bitcast float %2701 to i32
  %2703 = sub nsw i32 2129859010, %2702
  %2704 = bitcast i32 %2703 to float
  %2705 = fmul fast float %2704, 2.000000e+00
  %2706 = bitcast float %2223 to i32
  %2707 = ashr i32 %2706, 1
  %2708 = add nsw i32 %2707, 532487669
  %2709 = bitcast i32 %2708 to float
  %2710 = fsub fast float 1.000000e+00, %2709
  %2711 = bitcast float %2710 to i32
  %2712 = sub nsw i32 2129859010, %2711
  %2713 = bitcast i32 %2712 to float
  %2714 = fmul fast float %2713, 2.000000e+00
  %2715 = bitcast float %2224 to i32
  %2716 = ashr i32 %2715, 1
  %2717 = add nsw i32 %2716, 532487669
  %2718 = bitcast i32 %2717 to float
  %2719 = fsub fast float 1.000000e+00, %2718
  %2720 = bitcast float %2719 to i32
  %2721 = sub nsw i32 2129859010, %2720
  %2722 = bitcast i32 %2721 to float
  %2723 = fmul fast float %2722, 2.000000e+00
  %2724 = fsub fast float 0x4002A9FBE0000000, %2705
  %2725 = fadd fast float %2705, 0x3FD54FDF00000000
  %2726 = bitcast float %2725 to i32
  %2727 = sub nsw i32 2129859010, %2726
  %2728 = bitcast i32 %2727 to float
  %2729 = fmul fast float %2728, %2724
  %2730 = fmul fast float %2729, %2729
  %2731 = fsub fast float 0x4002A9FBE0000000, %2714
  %2732 = fadd fast float %2714, 0x3FD54FDF00000000
  %2733 = bitcast float %2732 to i32
  %2734 = sub nsw i32 2129859010, %2733
  %2735 = bitcast i32 %2734 to float
  %2736 = fmul fast float %2735, %2731
  %2737 = fmul fast float %2736, %2736
  %2738 = fsub fast float 0x4002A9FBE0000000, %2723
  %2739 = fadd fast float %2723, 0x3FD54FDF00000000
  %2740 = bitcast float %2739 to i32
  %2741 = sub nsw i32 2129859010, %2740
  %2742 = bitcast i32 %2741 to float
  %2743 = fmul fast float %2742, %2738
  %2744 = fmul fast float %2743, %2743
  %2745 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2730)  ; FMax(a,b)
  %2746 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2737)  ; FMax(a,b)
  %2747 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2744)  ; FMax(a,b)
  %2748 = fsub fast float 1.000000e+00, %2633
  %2749 = fadd fast float %2748, %2649
  %2750 = call float @dx.op.unary.f32(i32 7, float %2749)  ; Saturate(value)
  %2751 = fsub fast float 1.000000e+00, %2613
  %2752 = fmul fast float %2691, %2751
  %2753 = fmul fast float %2694, %2694
  %2754 = fmul fast float %2753, %2752
  %2755 = fmul fast float %2754, %2696
  %2756 = fmul fast float %2751, 0xBFE99999A0000000
  %2757 = fmul fast float %2756, %2642
  %2758 = fmul fast float %2757, %2653
  %2759 = fadd fast float %2758, 1.000000e+00
  %2760 = fadd fast float %2225, -1.000000e+00
  %2761 = fmul fast float %2759, %2760
  %2762 = fadd fast float %2761, 1.000000e+00
  %2763 = fsub fast float %2745, %2222
  %2764 = fsub fast float %2746, %2223
  %2765 = fsub fast float %2747, %2224
  %2766 = fmul fast float %2755, %2763
  %2767 = fmul fast float %2755, %2764
  %2768 = fmul fast float %2755, %2765
  %2769 = fadd fast float %2766, %2222
  %2770 = fadd fast float %2767, %2223
  %2771 = fadd fast float %2768, %2224
  %2772 = fsub fast float %53, %2201
  %2773 = fsub fast float %54, %2202
  %2774 = fsub fast float %55, %2203
  %2775 = fmul fast float %2755, %2772
  %2776 = fmul fast float %2755, %2773
  %2777 = fmul fast float %2755, %2774
  %2778 = fadd fast float %2775, %2201
  %2779 = fadd fast float %2776, %2202
  %2780 = fadd fast float %2777, %2203
  %2781 = fmul fast float %2755, %2750
  %2782 = call float @dx.op.unary.f32(i32 7, float %2762)  ; Saturate(value)
  %2783 = fsub fast float 1.000000e+00, %2782
  %2784 = fmul fast float %2781, %2783
  %2785 = fadd fast float %2784, %2782
  %2786 = fsub fast float 1.000000e+00, %2185
  %2787 = fmul fast float %2755, %2786
  %2788 = fadd fast float %2787, %2185
  %2789 = call float @dx.op.dot3.f32(i32 55, float %2778, float %2779, float %2780, float %2778, float %2779, float %2780)  ; Dot3(ax,ay,az,bx,by,bz)
  %2790 = call float @dx.op.unary.f32(i32 25, float %2789)  ; Rsqrt(value)
  %2791 = fmul fast float %2778, %2790
  %2792 = fmul fast float %2779, %2790
  %2793 = fmul fast float %2780, %2790
  br label %2794

; <label>:2794                                    ; preds = %2626, %2619
  %2795 = phi float [ %2625, %2619 ], [ %2632, %2626 ]
  %2796 = phi float [ %2624, %2619 ], [ %2630, %2626 ]
  %2797 = phi float [ %2623, %2619 ], [ %2628, %2626 ]
  %2798 = phi float [ %2622, %2619 ], [ %2631, %2626 ]
  %2799 = phi float [ %2621, %2619 ], [ %2629, %2626 ]
  %2800 = phi float [ %2620, %2619 ], [ %2627, %2626 ]
  %2801 = phi float [ %2222, %2619 ], [ %2769, %2626 ]
  %2802 = phi float [ %2223, %2619 ], [ %2770, %2626 ]
  %2803 = phi float [ %2224, %2619 ], [ %2771, %2626 ]
  %2804 = phi float [ %2237, %2619 ], [ %2678, %2626 ]
  %2805 = phi float [ %2238, %2619 ], [ %2679, %2626 ]
  %2806 = phi float [ %2239, %2619 ], [ %2680, %2626 ]
  %2807 = phi float [ %2201, %2619 ], [ %2791, %2626 ]
  %2808 = phi float [ %2202, %2619 ], [ %2792, %2626 ]
  %2809 = phi float [ %2203, %2619 ], [ %2793, %2626 ]
  %2810 = phi float [ %2225, %2619 ], [ %2785, %2626 ]
  %2811 = phi float [ %2185, %2619 ], [ %2788, %2626 ]
  %2812 = select i1 %189, float 0.000000e+00, float %2803
  %2813 = call float @dx.op.dot3.f32(i32 55, float %2807, float %2808, float %2809, float %2797, float %2796, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %2814 = call float @dx.op.unary.f32(i32 7, float %2813)  ; Saturate(value)
  %2815 = call float @dx.op.dot3.f32(i32 55, float %2800, float %2799, float %2798, float %2807, float %2808, float %2809)  ; Dot3(ax,ay,az,bx,by,bz)
  %2816 = fmul fast float %2815, 2.000000e+00
  %2817 = fmul fast float %2816, %2807
  %2818 = fmul fast float %2816, %2808
  %2819 = fmul fast float %2816, %2809
  %2820 = fsub fast float %2800, %2817
  %2821 = fsub fast float %2799, %2818
  %2822 = fsub fast float %2798, %2819
  %2823 = call float @dx.op.binary.f32(i32 36, float %2811, float 1.000000e+00)  ; FMin(a,b)
  %2824 = fsub fast float 1.000000e+00, %2811
  %2825 = bitcast float %2824 to i32
  %2826 = sub nsw i32 2129859010, %2825
  %2827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2828 = extractvalue %dx.types.CBufRet.f32 %2827, 0
  %2829 = extractvalue %dx.types.CBufRet.f32 %2827, 1
  %2830 = fadd fast float %2828, %118
  %2831 = fadd fast float %2829, %119
  %2832 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2833 = extractvalue %dx.types.CBufRet.i32 %2832, 0
  %2834 = icmp eq i32 %2833, 1
  br i1 %2834, label %2835, label %2870

; <label>:2835                                    ; preds = %2794
  %2836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2837 = extractvalue %dx.types.CBufRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.CBufRet.f32 %2836, 1
  %2839 = fsub fast float %2830, %2837
  %2840 = fsub fast float %2831, %2838
  %2841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2842 = extractvalue %dx.types.CBufRet.f32 %2841, 0
  %2843 = extractvalue %dx.types.CBufRet.f32 %2841, 1
  %2844 = fmul fast float %2839, %2842
  %2845 = fmul fast float %2840, %2843
  %2846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2844, float %2845, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2847 = extractvalue %dx.types.ResRet.f32 %2846, 0
  %2848 = fcmp fast ogt float %2847, 0.000000e+00
  %2849 = extractvalue %dx.types.CBufRet.i32 %2832, 3
  %2850 = icmp ne i32 %2849, 0
  %2851 = and i1 %2848, %2850
  br i1 %2851, label %2852, label %2870, !dx.controlflow.hints !81

; <label>:2852                                    ; preds = %2835
  %2853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2854 = extractvalue %dx.types.CBufRet.f32 %2853, 0
  %2855 = extractvalue %dx.types.CBufRet.f32 %2853, 1
  %2856 = fsub fast float %2830, %2854
  %2857 = fsub fast float %2831, %2855
  %2858 = fmul fast float %2856, %2856
  %2859 = fmul fast float %2857, %2857
  %2860 = fadd fast float %2858, %2859
  %2861 = uitofp i32 %2849 to float
  %2862 = fmul fast float %2861, %2861
  %2863 = fcmp fast ogt float %2860, %2862
  br i1 %2863, label %2870, label %2864

; <label>:2864                                    ; preds = %2852
  %2865 = call float @dx.op.unary.f32(i32 24, float %2860)  ; Sqrt(value)
  %2866 = fsub fast float %2861, %2865
  %2867 = fmul fast float %2866, 0x3F75555560000000
  %2868 = call float @dx.op.unary.f32(i32 7, float %2867)  ; Saturate(value)
  %2869 = call float @dx.op.binary.f32(i32 36, float %2868, float %2847)  ; FMin(a,b)
  br label %2870

; <label>:2870                                    ; preds = %2864, %2852, %2835, %2794
  %2871 = phi float [ 1.000000e+00, %2794 ], [ %2869, %2864 ], [ %2847, %2835 ], [ 0.000000e+00, %2852 ]
  %2872 = fcmp fast ogt float %2871, 0.000000e+00
  br i1 %2872, label %2873, label %2971, !dx.controlflow.hints !82

; <label>:2873                                    ; preds = %2870
  %2874 = fadd fast float %149, 5.000000e-01
  %2875 = call float @dx.op.unary.f32(i32 27, float %2874)  ; Round_ni(value)
  %2876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %147, float %148, float %2875, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2877 = extractvalue %dx.types.ResRet.f32 %2876, 0
  %2878 = extractvalue %dx.types.ResRet.f32 %2876, 1
  %2879 = extractvalue %dx.types.ResRet.f32 %2876, 2
  %2880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2881 = extractvalue %dx.types.CBufRet.f32 %2880, 3
  %2882 = fmul fast float %2881, %2877
  %2883 = fmul fast float %2881, %2878
  %2884 = fmul fast float %2881, %2879
  %2885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %147, float %148, float %2875, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %147, float %148, float %2875, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2888 = extractvalue %dx.types.ResRet.f32 %2887, 0
  %2889 = extractvalue %dx.types.ResRet.f32 %2887, 1
  %2890 = fmul fast float %2888, 2.000000e+00
  %2891 = fmul fast float %2889, 2.000000e+00
  %2892 = fadd fast float %2890, -1.000000e+00
  %2893 = fadd fast float %2891, -1.000000e+00
  %2894 = fadd fast float %2892, %2893
  %2895 = fmul fast float %2894, 5.000000e-01
  %2896 = fsub fast float %2892, %2893
  %2897 = fmul fast float %2896, 5.000000e-01
  %2898 = call float @dx.op.unary.f32(i32 6, float %2895)  ; FAbs(value)
  %2899 = fsub fast float 1.000000e+00, %2898
  %2900 = call float @dx.op.unary.f32(i32 6, float %2897)  ; FAbs(value)
  %2901 = fsub fast float %2899, %2900
  %2902 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2901)  ; FMax(a,b)
  %2903 = call float @dx.op.dot3.f32(i32 55, float %2895, float %2897, float %2902, float %2895, float %2897, float %2902)  ; Dot3(ax,ay,az,bx,by,bz)
  %2904 = bitcast float %2903 to i32
  %2905 = ashr i32 %2904, 1
  %2906 = sub nsw i32 1597250115, %2905
  %2907 = bitcast i32 %2906 to float
  %2908 = fmul fast float %2907, %2895
  %2909 = fmul fast float %2907, %2897
  %2910 = fmul fast float %2907, %2902
  %2911 = fsub fast float 1.000000e+00, %2886
  %2912 = fdiv fast float %2911, %2910
  %2913 = fmul fast float %2910, %53
  %2914 = fmul fast float %2910, %54
  %2915 = fmul fast float %2910, %55
  %2916 = fmul fast float %2908, %49
  %2917 = fmul fast float %2908, %50
  %2918 = fmul fast float %2908, %51
  %2919 = fadd fast float %2913, %2916
  %2920 = fadd fast float %2914, %2917
  %2921 = fadd fast float %2915, %2918
  %2922 = fmul fast float %2909, %82
  %2923 = fmul fast float %2909, %83
  %2924 = fmul fast float %2909, %84
  %2925 = fadd fast float %2919, %2922
  %2926 = fadd fast float %2920, %2923
  %2927 = fadd fast float %2921, %2924
  %2928 = call float @dx.op.dot3.f32(i32 55, float %2925, float %2926, float %2927, float %2925, float %2926, float %2927)  ; Dot3(ax,ay,az,bx,by,bz)
  %2929 = call float @dx.op.unary.f32(i32 25, float %2928)  ; Rsqrt(value)
  %2930 = fmul fast float %2925, %2929
  %2931 = fmul fast float %2926, %2929
  %2932 = fmul fast float %2927, %2929
  %2933 = call float @dx.op.dot3.f32(i32 55, float %2807, float %2808, float %2809, float %2807, float %2808, float %2809)  ; Dot3(ax,ay,az,bx,by,bz)
  %2934 = call float @dx.op.unary.f32(i32 7, float %2933)  ; Saturate(value)
  %2935 = fmul fast float %2934, 5.000000e-01
  %2936 = fadd fast float %2935, 5.000000e-01
  %2937 = fmul fast float %2936, %2886
  %2938 = call float @dx.op.dot3.f32(i32 55, float %2807, float %2808, float %2809, float %2930, float %2931, float %2932)  ; Dot3(ax,ay,az,bx,by,bz)
  %2939 = call float @dx.op.unary.f32(i32 7, float %2938)  ; Saturate(value)
  %2940 = fmul fast float %2939, %2912
  %2941 = fadd fast float %2937, %2940
  %2942 = fsub fast float 5.000000e-01, %2935
  %2943 = fmul fast float %2942, %2804
  %2944 = fmul fast float %2942, %2805
  %2945 = fmul fast float %2942, %2806
  %2946 = fadd fast float %2941, %2943
  %2947 = fmul fast float %2946, %2882
  %2948 = fadd fast float %2941, %2944
  %2949 = fmul fast float %2948, %2883
  %2950 = fadd fast float %2941, %2945
  %2951 = fmul fast float %2950, %2884
  %2952 = call float @dx.op.dot3.f32(i32 55, float %2820, float %2821, float %2822, float %2807, float %2808, float %2809)  ; Dot3(ax,ay,az,bx,by,bz)
  %2953 = call float @dx.op.unary.f32(i32 7, float %2952)  ; Saturate(value)
  %2954 = fmul fast float %2953, 5.000000e-01
  %2955 = fadd fast float %2954, 5.000000e-01
  %2956 = fmul fast float %2955, %2886
  %2957 = call float @dx.op.dot3.f32(i32 55, float %2820, float %2821, float %2822, float %2930, float %2931, float %2932)  ; Dot3(ax,ay,az,bx,by,bz)
  %2958 = call float @dx.op.unary.f32(i32 7, float %2957)  ; Saturate(value)
  %2959 = fmul fast float %2958, %2912
  %2960 = fadd fast float %2956, %2959
  %2961 = fsub fast float 5.000000e-01, %2954
  %2962 = fmul fast float %2961, %2804
  %2963 = fmul fast float %2961, %2805
  %2964 = fmul fast float %2961, %2806
  %2965 = fadd fast float %2960, %2962
  %2966 = fmul fast float %2965, %2882
  %2967 = fadd fast float %2960, %2963
  %2968 = fmul fast float %2967, %2883
  %2969 = fadd fast float %2960, %2964
  %2970 = fmul fast float %2969, %2884
  br label %2971

; <label>:2971                                    ; preds = %2873, %2870
  %2972 = phi float [ %2966, %2873 ], [ 0.000000e+00, %2870 ]
  %2973 = phi float [ %2968, %2873 ], [ 0.000000e+00, %2870 ]
  %2974 = phi float [ %2970, %2873 ], [ 0.000000e+00, %2870 ]
  %2975 = phi float [ %2947, %2873 ], [ 0.000000e+00, %2870 ]
  %2976 = phi float [ %2949, %2873 ], [ 0.000000e+00, %2870 ]
  %2977 = phi float [ %2951, %2873 ], [ 0.000000e+00, %2870 ]
  %2978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2979 = extractvalue %dx.types.CBufRet.f32 %2978, 0
  %2980 = fcmp fast ogt float %2979, 0.000000e+00
  %2981 = and i1 %2872, %2980
  br i1 %2981, label %2982, label %3186, !dx.controlflow.hints !83

; <label>:2982                                    ; preds = %2971
  %2983 = extractvalue %dx.types.CBufRet.f32 %2827, 2
  %2984 = fadd fast float %2983, %120
  %2985 = fmul fast float %2807, 3.200000e+01
  %2986 = fmul fast float %2808, 3.200000e+01
  %2987 = fadd fast float %2830, %2985
  %2988 = fadd fast float %2831, %2986
  %2989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2990 = extractvalue %dx.types.CBufRet.f32 %2989, 0
  %2991 = extractvalue %dx.types.CBufRet.f32 %2989, 1
  %2992 = fsub fast float %2987, %2990
  %2993 = fsub fast float %2988, %2991
  %2994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2995 = extractvalue %dx.types.CBufRet.f32 %2994, 0
  %2996 = extractvalue %dx.types.CBufRet.f32 %2994, 1
  %2997 = fmul fast float %2992, %2995
  %2998 = fmul fast float %2993, %2996
  %2999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3000 = extractvalue %dx.types.CBufRet.f32 %2999, 0
  %3001 = extractvalue %dx.types.CBufRet.f32 %2999, 1
  %3002 = fsub fast float %2830, %3000
  %3003 = fsub fast float %2831, %3001
  %3004 = fmul fast float %3002, %3002
  %3005 = fmul fast float %3003, %3003
  %3006 = fadd fast float %3004, %3005
  %3007 = call float @dx.op.unary.f32(i32 24, float %3006)  ; Sqrt(value)
  %3008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3009 = extractvalue %dx.types.CBufRet.f32 %3008, 0
  %3010 = extractvalue %dx.types.CBufRet.f32 %3008, 1
  %3011 = fsub fast float %3007, %3009
  %3012 = fdiv fast float %3011, %3010
  %3013 = call float @dx.op.unary.f32(i32 7, float %3012)  ; Saturate(value)
  %3014 = fmul fast float %3013, 2.000000e+00
  %3015 = fsub fast float 3.000000e+00, %3014
  %3016 = fmul fast float %3013, %3013
  %3017 = fmul fast float %3016, %3015
  %3018 = fcmp fast oge float %2997, 0.000000e+00
  %3019 = fcmp fast ole float %2997, 1.000000e+00
  %3020 = and i1 %3019, %3018
  %3021 = fcmp fast oge float %2998, 0.000000e+00
  %3022 = and i1 %3021, %3020
  %3023 = fcmp fast ole float %2998, 1.000000e+00
  %3024 = and i1 %3023, %3022
  %3025 = fcmp fast ogt float %3017, 0.000000e+00
  %3026 = and i1 %3025, %3024
  br i1 %3026, label %3027, label %3150, !dx.controlflow.hints !84

; <label>:3027                                    ; preds = %2982
  %3028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3029 = extractvalue %dx.types.CBufRet.f32 %3028, 2
  %3030 = extractvalue %dx.types.CBufRet.f32 %3028, 3
  %3031 = fmul fast float %3029, %2997
  %3032 = fmul fast float %3030, %2998
  %3033 = call float @dx.op.unary.f32(i32 27, float %3031)  ; Round_ni(value)
  %3034 = call float @dx.op.unary.f32(i32 27, float %3032)  ; Round_ni(value)
  %3035 = fptosi float %3033 to i32
  %3036 = fptosi float %3034 to i32
  %3037 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3035, i32 %3036, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = lshr i32 %3038, 16
  %3040 = icmp eq i32 %3039, 65535
  br i1 %3040, label %3150, label %3041

; <label>:3041                                    ; preds = %3027
  %3042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3043 = extractvalue %dx.types.CBufRet.f32 %3042, 0
  %3044 = fmul fast float %3043, %2997
  %3045 = extractvalue %dx.types.CBufRet.f32 %3042, 1
  %3046 = fadd fast float %3044, %3045
  %3047 = extractvalue %dx.types.CBufRet.f32 %3042, 2
  %3048 = fmul fast float %3047, %2998
  %3049 = extractvalue %dx.types.CBufRet.f32 %3042, 3
  %3050 = fadd fast float %3048, %3049
  %3051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3046, float %3050, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3052 = extractvalue %dx.types.ResRet.f32 %3051, 0
  %3053 = extractvalue %dx.types.ResRet.f32 %3051, 1
  %3054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3055 = extractvalue %dx.types.CBufRet.f32 %3054, 1
  %3056 = extractvalue %dx.types.CBufRet.f32 %3054, 0
  %3057 = fsub fast float %3055, %3056
  %3058 = fmul fast float %3057, %3052
  %3059 = fadd fast float %3058, %3056
  %3060 = extractvalue %dx.types.CBufRet.f32 %3054, 3
  %3061 = extractvalue %dx.types.CBufRet.f32 %3054, 2
  %3062 = fsub fast float %3060, %3061
  %3063 = fmul fast float %3062, %3053
  %3064 = fadd fast float %3063, %3061
  %3065 = fsub fast float %2984, %3059
  %3066 = fsub fast float %3064, %3059
  %3067 = fdiv fast float %3065, %3066
  %3068 = call float @dx.op.unary.f32(i32 7, float %3067)  ; Saturate(value)
  %3069 = extractvalue %dx.types.CBufRet.f32 %2978, 1
  %3070 = extractvalue %dx.types.CBufRet.f32 %3028, 0
  %3071 = extractvalue %dx.types.CBufRet.f32 %3028, 1
  %3072 = fmul fast float %3070, %2997
  %3073 = fmul fast float %3071, %2998
  %3074 = fmul fast float %3072, 1.250000e-01
  %3075 = fmul fast float %3073, 1.250000e-01
  %3076 = call float @dx.op.unary.f32(i32 27, float %3074)  ; Round_ni(value)
  %3077 = call float @dx.op.unary.f32(i32 27, float %3075)  ; Round_ni(value)
  %3078 = fmul fast float %3076, 8.000000e+00
  %3079 = fmul fast float %3077, 8.000000e+00
  %3080 = fsub fast float %3072, %3078
  %3081 = fsub fast float %3073, %3079
  %3082 = fadd fast float %3080, 5.000000e-01
  %3083 = fadd fast float %3081, 5.000000e-01
  %3084 = and i32 %3039, 255
  %3085 = lshr i32 %3038, 24
  %3086 = mul nuw nsw i32 %3084, 9
  %3087 = uitofp i32 %3086 to float
  %3088 = mul nuw nsw i32 %3085, 9
  %3089 = uitofp i32 %3088 to float
  %3090 = fadd fast float %3082, %3087
  %3091 = fadd fast float %3083, %3089
  %3092 = fdiv fast float %3090, %2979
  %3093 = fdiv fast float %3091, %3069
  %3094 = fmul fast float %3068, 4.375000e-01
  %3095 = fadd fast float %3094, 3.125000e-02
  %3096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3092, float %3093, float %3095, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3097 = extractvalue %dx.types.ResRet.f32 %3096, 0
  %3098 = extractvalue %dx.types.ResRet.f32 %3096, 1
  %3099 = extractvalue %dx.types.ResRet.f32 %3096, 2
  %3100 = fadd fast float %3094, 5.312500e-01
  %3101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3092, float %3093, float %3100, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3102 = extractvalue %dx.types.ResRet.f32 %3101, 0
  %3103 = extractvalue %dx.types.ResRet.f32 %3101, 1
  %3104 = extractvalue %dx.types.ResRet.f32 %3101, 2
  %3105 = fmul fast float %3102, 2.000000e+00
  %3106 = fmul fast float %3103, 2.000000e+00
  %3107 = fmul fast float %3104, 2.000000e+00
  %3108 = fadd fast float %3105, -1.000000e+00
  %3109 = fadd fast float %3106, -1.000000e+00
  %3110 = fadd fast float %3107, -1.000000e+00
  %3111 = fmul fast float %3108, %3108
  %3112 = fmul fast float %3109, %3109
  %3113 = fadd fast float %3111, %3112
  %3114 = fmul fast float %3110, %3110
  %3115 = fadd fast float %3113, %3114
  %3116 = call float @dx.op.unary.f32(i32 24, float %3115)  ; Sqrt(value)
  %3117 = fcmp fast ogt float %3116, 0.000000e+00
  br i1 %3117, label %3118, label %3122

; <label>:3118                                    ; preds = %3041
  %3119 = fdiv fast float %3108, %3116
  %3120 = fdiv fast float %3109, %3116
  %3121 = fdiv fast float %3110, %3116
  br label %3122

; <label>:3122                                    ; preds = %3118, %3041
  %3123 = phi float [ %3119, %3118 ], [ 0.000000e+00, %3041 ]
  %3124 = phi float [ %3120, %3118 ], [ 0.000000e+00, %3041 ]
  %3125 = phi float [ %3121, %3118 ], [ 0.000000e+00, %3041 ]
  %3126 = call float @dx.op.dot3.f32(i32 55, float %3123, float %3124, float %3125, float %2807, float %2808, float %2809)  ; Dot3(ax,ay,az,bx,by,bz)
  %3127 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3126)  ; FMax(a,b)
  %3128 = fmul fast float %3127, 0x400C5BF8A0000000
  %3129 = fmul fast float %3097, %3017
  %3130 = fmul fast float %3129, %3128
  %3131 = fmul fast float %3098, %3017
  %3132 = fmul fast float %3131, %3128
  %3133 = fmul fast float %3099, %3017
  %3134 = fmul fast float %3133, %3128
  %3135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3136 = extractvalue %dx.types.CBufRet.f32 %3135, 3
  %3137 = fmul fast float %3130, %3136
  %3138 = fmul fast float %3132, %3136
  %3139 = fmul fast float %3134, %3136
  %3140 = fcmp fast ogt float %2984, %3064
  br i1 %3140, label %3141, label %3150

; <label>:3141                                    ; preds = %3122
  %3142 = fmul fast float %3066, 0x3FC24924A0000000
  %3143 = fsub fast float %2984, %3064
  %3144 = fdiv fast float %3143, %3142
  %3145 = call float @dx.op.unary.f32(i32 7, float %3144)  ; Saturate(value)
  %3146 = fsub fast float 1.000000e+00, %3145
  %3147 = fmul fast float %3146, %3137
  %3148 = fmul fast float %3146, %3138
  %3149 = fmul fast float %3146, %3139
  br label %3150

; <label>:3150                                    ; preds = %3141, %3122, %3027, %2982
  %3151 = phi float [ %3149, %3141 ], [ %3139, %3122 ], [ 0.000000e+00, %3027 ], [ 0.000000e+00, %2982 ]
  %3152 = phi float [ %3148, %3141 ], [ %3138, %3122 ], [ 0.000000e+00, %3027 ], [ 0.000000e+00, %2982 ]
  %3153 = phi float [ %3147, %3141 ], [ %3137, %3122 ], [ 0.000000e+00, %3027 ], [ 0.000000e+00, %2982 ]
  %3154 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3153)  ; FMax(a,b)
  %3155 = fmul fast float %3154, 0x3FD20DD760000000
  %3156 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2820, float %2821, float %2822)  ; Dot3(ax,ay,az,bx,by,bz)
  %3157 = fmul fast float %3156, 0x3FDF454380000000
  %3158 = fmul fast float %3156, %3156
  %3159 = fmul fast float %3158, 0x3FEE471020000000
  %3160 = fadd fast float %3159, 0xBFD42F6020000000
  %3161 = call float @dx.op.dot3.f32(i32 55, float %3154, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3157, float %3160)  ; Dot3(ax,ay,az,bx,by,bz)
  %3162 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3152)  ; FMax(a,b)
  %3163 = fmul fast float %3162, 0x3FD20DD760000000
  %3164 = call float @dx.op.dot3.f32(i32 55, float %3162, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3157, float %3160)  ; Dot3(ax,ay,az,bx,by,bz)
  %3165 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3151)  ; FMax(a,b)
  %3166 = fmul fast float %3165, 0x3FD20DD760000000
  %3167 = call float @dx.op.dot3.f32(i32 55, float %3165, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3157, float %3160)  ; Dot3(ax,ay,az,bx,by,bz)
  %3168 = call float @dx.op.binary.f32(i32 35, float %3155, float 0.000000e+00)  ; FMax(a,b)
  %3169 = call float @dx.op.binary.f32(i32 35, float %3163, float 0.000000e+00)  ; FMax(a,b)
  %3170 = call float @dx.op.binary.f32(i32 35, float %3166, float 0.000000e+00)  ; FMax(a,b)
  %3171 = call float @dx.op.binary.f32(i32 35, float %3161, float 0.000000e+00)  ; FMax(a,b)
  %3172 = call float @dx.op.binary.f32(i32 35, float %3164, float 0.000000e+00)  ; FMax(a,b)
  %3173 = call float @dx.op.binary.f32(i32 35, float %3167, float 0.000000e+00)  ; FMax(a,b)
  %3174 = fmul fast float %3168, %2871
  %3175 = fmul fast float %3169, %2871
  %3176 = fmul fast float %3170, %2871
  %3177 = fadd fast float %3174, %2975
  %3178 = fadd fast float %3175, %2976
  %3179 = fadd fast float %3176, %2977
  %3180 = fmul fast float %3171, %2871
  %3181 = fmul fast float %3172, %2871
  %3182 = fmul fast float %3173, %2871
  %3183 = fadd fast float %3180, %2972
  %3184 = fadd fast float %3181, %2973
  %3185 = fadd fast float %3182, %2974
  br label %3186

; <label>:3186                                    ; preds = %3150, %2971
  %3187 = phi float [ %3183, %3150 ], [ %2972, %2971 ]
  %3188 = phi float [ %3184, %3150 ], [ %2973, %2971 ]
  %3189 = phi float [ %3185, %3150 ], [ %2974, %2971 ]
  %3190 = phi float [ %3177, %3150 ], [ %2975, %2971 ]
  %3191 = phi float [ %3178, %3150 ], [ %2976, %2971 ]
  %3192 = phi float [ %3179, %3150 ], [ %2977, %2971 ]
  %3193 = fcmp fast olt float %2871, 1.000000e+00
  br i1 %3193, label %3194, label %4012, !dx.controlflow.hints !85

; <label>:3194                                    ; preds = %3186
  %3195 = extractvalue %dx.types.CBufRet.f32 %2827, 2
  %3196 = fadd fast float %3195, %120
  %3197 = fmul fast float %2807, 3.200000e+01
  %3198 = fmul fast float %2808, 3.200000e+01
  %3199 = fadd fast float %2830, %3197
  %3200 = fadd fast float %2831, %3198
  %3201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3202 = extractvalue %dx.types.CBufRet.f32 %3201, 0
  %3203 = extractvalue %dx.types.CBufRet.f32 %3201, 1
  %3204 = fsub fast float %3199, %3202
  %3205 = fsub fast float %3200, %3203
  %3206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3207 = extractvalue %dx.types.CBufRet.f32 %3206, 0
  %3208 = extractvalue %dx.types.CBufRet.f32 %3206, 1
  %3209 = fmul fast float %3204, %3207
  %3210 = fmul fast float %3205, %3208
  %3211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3212 = extractvalue %dx.types.CBufRet.f32 %3211, 0
  %3213 = fmul fast float %3209, %3212
  %3214 = extractvalue %dx.types.CBufRet.f32 %3211, 1
  %3215 = fadd fast float %3213, %3214
  %3216 = extractvalue %dx.types.CBufRet.f32 %3211, 2
  %3217 = fmul fast float %3216, %3210
  %3218 = extractvalue %dx.types.CBufRet.f32 %3211, 3
  %3219 = fadd fast float %3217, %3218
  %3220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3215, float %3219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3221 = extractvalue %dx.types.ResRet.f32 %3220, 0
  %3222 = extractvalue %dx.types.ResRet.f32 %3220, 1
  %3223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3224 = extractvalue %dx.types.CBufRet.f32 %3223, 1
  %3225 = extractvalue %dx.types.CBufRet.f32 %3223, 0
  %3226 = fsub fast float %3224, %3225
  %3227 = fmul fast float %3226, %3221
  %3228 = fadd fast float %3227, %3225
  %3229 = extractvalue %dx.types.CBufRet.f32 %3223, 3
  %3230 = extractvalue %dx.types.CBufRet.f32 %3223, 2
  %3231 = fsub fast float %3229, %3230
  %3232 = fmul fast float %3231, %3222
  %3233 = fadd fast float %3232, %3230
  %3234 = fsub fast float %3196, %3228
  %3235 = fsub fast float %3233, %3228
  %3236 = fdiv fast float %3234, %3235
  %3237 = call float @dx.op.unary.f32(i32 7, float %3236)  ; Saturate(value)
  %3238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3239 = extractvalue %dx.types.CBufRet.f32 %3238, 0
  %3240 = fmul fast float %3239, %3237
  %3241 = extractvalue %dx.types.CBufRet.f32 %3238, 1
  %3242 = fadd fast float %3240, %3241
  %3243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3215, float %3219, float %3242, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3244 = extractvalue %dx.types.ResRet.f32 %3243, 0
  %3245 = extractvalue %dx.types.ResRet.f32 %3243, 1
  %3246 = extractvalue %dx.types.ResRet.f32 %3243, 2
  %3247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3248 = extractvalue %dx.types.CBufRet.f32 %3247, 0
  %3249 = extractvalue %dx.types.CBufRet.f32 %3247, 1
  %3250 = extractvalue %dx.types.CBufRet.f32 %3247, 2
  %3251 = fmul fast float %3248, %3244
  %3252 = fmul fast float %3249, %3245
  %3253 = fmul fast float %3250, %3246
  %3254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3255 = extractvalue %dx.types.CBufRet.f32 %3254, 0
  %3256 = extractvalue %dx.types.CBufRet.f32 %3254, 1
  %3257 = extractvalue %dx.types.CBufRet.f32 %3254, 2
  %3258 = fadd fast float %3251, %3255
  %3259 = fadd fast float %3252, %3256
  %3260 = fadd fast float %3253, %3257
  %3261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3262 = extractvalue %dx.types.CBufRet.f32 %3261, 0
  %3263 = fmul fast float %3262, %3209
  %3264 = extractvalue %dx.types.CBufRet.f32 %3261, 1
  %3265 = fadd fast float %3263, %3264
  %3266 = extractvalue %dx.types.CBufRet.f32 %3261, 2
  %3267 = fmul fast float %3266, %3210
  %3268 = extractvalue %dx.types.CBufRet.f32 %3261, 3
  %3269 = fadd fast float %3267, %3268
  %3270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3271 = extractvalue %dx.types.CBufRet.f32 %3270, 0
  %3272 = extractvalue %dx.types.CBufRet.f32 %3270, 1
  %3273 = extractvalue %dx.types.CBufRet.f32 %3270, 2
  %3274 = extractvalue %dx.types.CBufRet.f32 %3270, 3
  %3275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3276 = extractvalue %dx.types.CBufRet.f32 %3275, 0
  %3277 = extractvalue %dx.types.CBufRet.f32 %3275, 1
  %3278 = extractvalue %dx.types.CBufRet.f32 %3275, 2
  %3279 = extractvalue %dx.types.CBufRet.f32 %3275, 3
  %3280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3265, float %3269, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3281 = extractvalue %dx.types.ResRet.f32 %3280, 0
  %3282 = extractvalue %dx.types.ResRet.f32 %3280, 1
  %3283 = extractvalue %dx.types.ResRet.f32 %3280, 2
  %3284 = extractvalue %dx.types.ResRet.f32 %3280, 3
  %3285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3265, float %3269, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3286 = extractvalue %dx.types.ResRet.f32 %3285, 0
  %3287 = extractvalue %dx.types.ResRet.f32 %3285, 1
  %3288 = extractvalue %dx.types.ResRet.f32 %3285, 2
  %3289 = extractvalue %dx.types.ResRet.f32 %3285, 3
  %3290 = fmul fast float %3281, %3258
  %3291 = fmul fast float %3286, %3258
  %3292 = fmul fast float %3288, %3258
  %3293 = fmul fast float %3284, %3258
  %3294 = fadd fast float %3290, %3271
  %3295 = fadd fast float %3291, %3272
  %3296 = fadd fast float %3292, %3273
  %3297 = fadd fast float %3293, %3274
  %3298 = fmul fast float %3282, %3258
  %3299 = fmul fast float %3287, %3258
  %3300 = fadd fast float %3298, %3276
  %3301 = fadd fast float %3299, %3277
  %3302 = fmul fast float %3283, %3258
  %3303 = fmul fast float %3289, %3258
  %3304 = fadd fast float %3302, %3278
  %3305 = fadd fast float %3303, %3279
  %3306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3265, float %3269, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 0
  %3308 = extractvalue %dx.types.ResRet.f32 %3306, 1
  %3309 = extractvalue %dx.types.ResRet.f32 %3306, 2
  %3310 = extractvalue %dx.types.ResRet.f32 %3306, 3
  %3311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3265, float %3269, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3312 = extractvalue %dx.types.ResRet.f32 %3311, 0
  %3313 = extractvalue %dx.types.ResRet.f32 %3311, 1
  %3314 = extractvalue %dx.types.ResRet.f32 %3311, 2
  %3315 = extractvalue %dx.types.ResRet.f32 %3311, 3
  %3316 = fmul fast float %3307, %3259
  %3317 = fmul fast float %3312, %3259
  %3318 = fmul fast float %3314, %3259
  %3319 = fmul fast float %3310, %3259
  %3320 = fadd fast float %3294, %3316
  %3321 = fadd fast float %3295, %3317
  %3322 = fadd fast float %3296, %3318
  %3323 = fadd fast float %3297, %3319
  %3324 = fmul fast float %3308, %3259
  %3325 = fmul fast float %3313, %3259
  %3326 = fadd fast float %3300, %3324
  %3327 = fadd fast float %3301, %3325
  %3328 = fmul fast float %3309, %3259
  %3329 = fmul fast float %3315, %3259
  %3330 = fadd fast float %3304, %3328
  %3331 = fadd fast float %3305, %3329
  %3332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3265, float %3269, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3333 = extractvalue %dx.types.ResRet.f32 %3332, 0
  %3334 = extractvalue %dx.types.ResRet.f32 %3332, 1
  %3335 = extractvalue %dx.types.ResRet.f32 %3332, 2
  %3336 = extractvalue %dx.types.ResRet.f32 %3332, 3
  %3337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3265, float %3269, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3338 = extractvalue %dx.types.ResRet.f32 %3337, 0
  %3339 = extractvalue %dx.types.ResRet.f32 %3337, 1
  %3340 = extractvalue %dx.types.ResRet.f32 %3337, 2
  %3341 = extractvalue %dx.types.ResRet.f32 %3337, 3
  %3342 = fmul fast float %3333, %3260
  %3343 = fmul fast float %3338, %3260
  %3344 = fmul fast float %3340, %3260
  %3345 = fmul fast float %3336, %3260
  %3346 = fadd fast float %3320, %3342
  %3347 = fadd fast float %3321, %3343
  %3348 = fadd fast float %3322, %3344
  %3349 = fadd fast float %3323, %3345
  %3350 = fmul fast float %3334, %3260
  %3351 = fmul fast float %3339, %3260
  %3352 = fadd fast float %3326, %3350
  %3353 = fadd fast float %3327, %3351
  %3354 = fmul fast float %3335, %3260
  %3355 = fmul fast float %3341, %3260
  %3356 = fadd fast float %3330, %3354
  %3357 = fadd fast float %3331, %3355
  %3358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3359 = extractvalue %dx.types.CBufRet.f32 %3358, 0
  %3360 = fsub fast float %2830, %3359
  %3361 = fsub fast float %3202, %2830
  %3362 = call float @dx.op.binary.f32(i32 35, float %3361, float %3360)  ; FMax(a,b)
  %3363 = extractvalue %dx.types.CBufRet.f32 %3358, 1
  %3364 = fsub fast float %2831, %3363
  %3365 = fsub fast float %3203, %2831
  %3366 = call float @dx.op.binary.f32(i32 35, float %3365, float %3364)  ; FMax(a,b)
  %3367 = call float @dx.op.binary.f32(i32 35, float %3362, float %3366)  ; FMax(a,b)
  %3368 = extractvalue %dx.types.CBufRet.f32 %3206, 3
  %3369 = fmul fast float %3368, %3367
  %3370 = call float @dx.op.unary.f32(i32 7, float %3369)  ; Saturate(value)
  %3371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3372 = extractvalue %dx.types.CBufRet.f32 %3371, 0
  %3373 = extractvalue %dx.types.CBufRet.f32 %3371, 1
  %3374 = extractvalue %dx.types.CBufRet.f32 %3371, 2
  %3375 = extractvalue %dx.types.CBufRet.f32 %3371, 3
  %3376 = fsub fast float %3372, %3346
  %3377 = fsub fast float %3373, %3347
  %3378 = fsub fast float %3374, %3348
  %3379 = fsub fast float %3375, %3349
  %3380 = fmul fast float %3376, %3370
  %3381 = fmul fast float %3377, %3370
  %3382 = fmul fast float %3378, %3370
  %3383 = fmul fast float %3379, %3370
  %3384 = fadd fast float %3380, %3346
  %3385 = fadd fast float %3381, %3347
  %3386 = fadd fast float %3382, %3348
  %3387 = fadd fast float %3383, %3349
  %3388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3389 = extractvalue %dx.types.CBufRet.f32 %3388, 0
  %3390 = extractvalue %dx.types.CBufRet.f32 %3388, 1
  %3391 = fsub fast float %3389, %3352
  %3392 = fsub fast float %3390, %3353
  %3393 = fmul fast float %3391, %3370
  %3394 = fmul fast float %3392, %3370
  %3395 = fadd fast float %3393, %3352
  %3396 = fadd fast float %3394, %3353
  %3397 = extractvalue %dx.types.CBufRet.f32 %3388, 2
  %3398 = extractvalue %dx.types.CBufRet.f32 %3388, 3
  %3399 = fsub fast float %3397, %3356
  %3400 = fsub fast float %3398, %3357
  %3401 = fmul fast float %3399, %3370
  %3402 = fmul fast float %3400, %3370
  %3403 = fadd fast float %3401, %3356
  %3404 = fadd fast float %3402, %3357
  %3405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3406 = extractvalue %dx.types.CBufRet.f32 %3405, 0
  %3407 = fmul fast float %3406, %3384
  %3408 = fmul fast float %3406, %3385
  %3409 = fmul fast float %3406, %3386
  %3410 = fmul fast float %3406, %3387
  %3411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3412 = extractvalue %dx.types.CBufRet.f32 %3411, 0
  %3413 = fmul fast float %3412, %3395
  %3414 = fmul fast float %3412, %3396
  %3415 = fadd fast float %3413, %3407
  %3416 = fadd fast float %3414, %3409
  %3417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3418 = extractvalue %dx.types.CBufRet.f32 %3417, 0
  %3419 = fmul fast float %3418, %3403
  %3420 = fmul fast float %3418, %3404
  %3421 = fadd fast float %3415, %3419
  %3422 = fadd fast float %3416, %3420
  %3423 = extractvalue %dx.types.CBufRet.f32 %3405, 1
  %3424 = fmul fast float %3423, %3384
  %3425 = fmul fast float %3423, %3385
  %3426 = fmul fast float %3423, %3386
  %3427 = fmul fast float %3423, %3387
  %3428 = extractvalue %dx.types.CBufRet.f32 %3411, 1
  %3429 = fmul fast float %3428, %3395
  %3430 = fmul fast float %3428, %3396
  %3431 = fadd fast float %3429, %3424
  %3432 = fadd fast float %3430, %3426
  %3433 = extractvalue %dx.types.CBufRet.f32 %3417, 1
  %3434 = fmul fast float %3433, %3403
  %3435 = fmul fast float %3433, %3404
  %3436 = fadd fast float %3431, %3434
  %3437 = fadd fast float %3432, %3435
  %3438 = extractvalue %dx.types.CBufRet.f32 %3405, 2
  %3439 = fmul fast float %3438, %3384
  %3440 = fmul fast float %3438, %3385
  %3441 = fmul fast float %3438, %3386
  %3442 = fmul fast float %3438, %3387
  %3443 = extractvalue %dx.types.CBufRet.f32 %3411, 2
  %3444 = fmul fast float %3443, %3395
  %3445 = fmul fast float %3443, %3396
  %3446 = fadd fast float %3444, %3439
  %3447 = fadd fast float %3445, %3441
  %3448 = extractvalue %dx.types.CBufRet.f32 %3417, 2
  %3449 = fmul fast float %3448, %3403
  %3450 = fmul fast float %3448, %3404
  %3451 = fadd fast float %3446, %3449
  %3452 = fadd fast float %3447, %3450
  %3453 = fmul fast float %3440, %3440
  %3454 = fmul fast float %3452, %3452
  %3455 = fmul fast float %3442, %3442
  %3456 = fadd fast float %3455, %3453
  %3457 = fadd fast float %3456, %3454
  %3458 = call float @dx.op.unary.f32(i32 24, float %3457)  ; Sqrt(value)
  %3459 = fcmp fast ugt float %3458, 0.000000e+00
  br i1 %3459, label %3460, label %3475

; <label>:3460                                    ; preds = %3194
  %3461 = fsub fast float -0.000000e+00, %3442
  %3462 = fdiv fast float %3461, %3458
  %3463 = fsub fast float -0.000000e+00, %3440
  %3464 = fdiv fast float %3463, %3458
  %3465 = fdiv fast float %3452, %3458
  %3466 = fmul fast float %3451, 0x3FE279A760000000
  %3467 = fmul fast float %3464, %3440
  %3468 = fmul fast float %3465, %3452
  %3469 = fmul fast float %3462, %3442
  %3470 = fadd fast float %3467, %3469
  %3471 = fsub fast float %3470, %3468
  %3472 = call float @dx.op.unary.f32(i32 6, float %3471)  ; FAbs(value)
  %3473 = fadd fast float %3472, 0x3DDB7CDFE0000000
  %3474 = fdiv fast float %3466, %3473
  br label %3475

; <label>:3475                                    ; preds = %3460, %3194
  %3476 = phi float [ %3474, %3460 ], [ 1.000000e+00, %3194 ]
  %3477 = fmul fast float %3425, %3425
  %3478 = fmul fast float %3437, %3437
  %3479 = fmul fast float %3427, %3427
  %3480 = fadd fast float %3479, %3477
  %3481 = fadd fast float %3480, %3478
  %3482 = call float @dx.op.unary.f32(i32 24, float %3481)  ; Sqrt(value)
  %3483 = fcmp fast ugt float %3482, 0.000000e+00
  br i1 %3483, label %3484, label %3499

; <label>:3484                                    ; preds = %3475
  %3485 = fsub fast float -0.000000e+00, %3427
  %3486 = fdiv fast float %3485, %3482
  %3487 = fsub fast float -0.000000e+00, %3425
  %3488 = fdiv fast float %3487, %3482
  %3489 = fdiv fast float %3437, %3482
  %3490 = fmul fast float %3436, 0x3FE279A760000000
  %3491 = fmul fast float %3488, %3425
  %3492 = fmul fast float %3489, %3437
  %3493 = fmul fast float %3486, %3427
  %3494 = fadd fast float %3491, %3493
  %3495 = fsub fast float %3494, %3492
  %3496 = call float @dx.op.unary.f32(i32 6, float %3495)  ; FAbs(value)
  %3497 = fadd fast float %3496, 0x3DDB7CDFE0000000
  %3498 = fdiv fast float %3490, %3497
  br label %3499

; <label>:3499                                    ; preds = %3484, %3475
  %3500 = phi float [ %3498, %3484 ], [ 1.000000e+00, %3475 ]
  %3501 = call float @dx.op.binary.f32(i32 36, float %3500, float %3476)  ; FMin(a,b)
  %3502 = fmul fast float %3408, %3408
  %3503 = fmul fast float %3422, %3422
  %3504 = fmul fast float %3410, %3410
  %3505 = fadd fast float %3504, %3502
  %3506 = fadd fast float %3505, %3503
  %3507 = call float @dx.op.unary.f32(i32 24, float %3506)  ; Sqrt(value)
  %3508 = fcmp fast ugt float %3507, 0.000000e+00
  br i1 %3508, label %3509, label %3524

; <label>:3509                                    ; preds = %3499
  %3510 = fsub fast float -0.000000e+00, %3410
  %3511 = fdiv fast float %3510, %3507
  %3512 = fsub fast float -0.000000e+00, %3408
  %3513 = fdiv fast float %3512, %3507
  %3514 = fdiv fast float %3422, %3507
  %3515 = fmul fast float %3421, 0x3FE279A760000000
  %3516 = fmul fast float %3513, %3408
  %3517 = fmul fast float %3514, %3422
  %3518 = fmul fast float %3511, %3410
  %3519 = fadd fast float %3516, %3518
  %3520 = fsub fast float %3519, %3517
  %3521 = call float @dx.op.unary.f32(i32 6, float %3520)  ; FAbs(value)
  %3522 = fadd fast float %3521, 0x3DDB7CDFE0000000
  %3523 = fdiv fast float %3515, %3522
  br label %3524

; <label>:3524                                    ; preds = %3509, %3499
  %3525 = phi float [ %3523, %3509 ], [ 1.000000e+00, %3499 ]
  %3526 = call float @dx.op.binary.f32(i32 36, float %3525, float %3501)  ; FMin(a,b)
  %3527 = call float @dx.op.unary.f32(i32 7, float %3526)  ; Saturate(value)
  %3528 = fcmp fast olt float %3527, 1.000000e+00
  br i1 %3528, label %3529, label %3539

; <label>:3529                                    ; preds = %3524
  %3530 = fmul fast float %3527, %3408
  %3531 = fmul fast float %3527, %3422
  %3532 = fmul fast float %3527, %3410
  %3533 = fmul fast float %3527, %3425
  %3534 = fmul fast float %3527, %3437
  %3535 = fmul fast float %3527, %3427
  %3536 = fmul fast float %3527, %3440
  %3537 = fmul fast float %3527, %3452
  %3538 = fmul fast float %3527, %3442
  br label %3539

; <label>:3539                                    ; preds = %3529, %3524
  %3540 = phi float [ %3536, %3529 ], [ %3440, %3524 ]
  %3541 = phi float [ %3537, %3529 ], [ %3452, %3524 ]
  %3542 = phi float [ %3538, %3529 ], [ %3442, %3524 ]
  %3543 = phi float [ %3533, %3529 ], [ %3425, %3524 ]
  %3544 = phi float [ %3534, %3529 ], [ %3437, %3524 ]
  %3545 = phi float [ %3535, %3529 ], [ %3427, %3524 ]
  %3546 = phi float [ %3530, %3529 ], [ %3408, %3524 ]
  %3547 = phi float [ %3531, %3529 ], [ %3422, %3524 ]
  %3548 = phi float [ %3532, %3529 ], [ %3410, %3524 ]
  %3549 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3421)  ; FMax(a,b)
  %3550 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3436)  ; FMax(a,b)
  %3551 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3451)  ; FMax(a,b)
  %3552 = fcmp fast oge float %3209, 0.000000e+00
  %3553 = and i1 %3552, %2980
  %3554 = fcmp fast ole float %3209, 1.000000e+00
  %3555 = and i1 %3554, %3553
  %3556 = fcmp fast oge float %3210, 0.000000e+00
  %3557 = and i1 %3556, %3555
  %3558 = fcmp fast ole float %3210, 1.000000e+00
  %3559 = and i1 %3558, %3557
  br i1 %3559, label %3560, label %3705, !dx.controlflow.hints !86

; <label>:3560                                    ; preds = %3539
  %3561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3562 = extractvalue %dx.types.CBufRet.f32 %3561, 2
  %3563 = extractvalue %dx.types.CBufRet.f32 %3561, 3
  %3564 = fmul fast float %3562, %3209
  %3565 = fmul fast float %3563, %3210
  %3566 = call float @dx.op.unary.f32(i32 27, float %3564)  ; Round_ni(value)
  %3567 = call float @dx.op.unary.f32(i32 27, float %3565)  ; Round_ni(value)
  %3568 = fptosi float %3566 to i32
  %3569 = fptosi float %3567 to i32
  %3570 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3568, i32 %3569, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3571 = extractvalue %dx.types.ResRet.i32 %3570, 0
  %3572 = and i32 %3571, 65535
  %3573 = lshr i32 %3571, 16
  %3574 = icmp eq i32 %3572, 65535
  br i1 %3574, label %3611, label %3575

; <label>:3575                                    ; preds = %3560
  %3576 = extractvalue %dx.types.CBufRet.f32 %2978, 1
  %3577 = extractvalue %dx.types.CBufRet.f32 %3561, 0
  %3578 = extractvalue %dx.types.CBufRet.f32 %3561, 1
  %3579 = fmul fast float %3577, %3209
  %3580 = fmul fast float %3578, %3210
  %3581 = fmul fast float %3579, 1.250000e-01
  %3582 = fmul fast float %3580, 1.250000e-01
  %3583 = call float @dx.op.unary.f32(i32 27, float %3581)  ; Round_ni(value)
  %3584 = call float @dx.op.unary.f32(i32 27, float %3582)  ; Round_ni(value)
  %3585 = fmul fast float %3583, 8.000000e+00
  %3586 = fmul fast float %3584, 8.000000e+00
  %3587 = and i32 %3571, 255
  %3588 = lshr i32 %3571, 8
  %3589 = and i32 %3588, 255
  %3590 = mul nuw nsw i32 %3587, 9
  %3591 = uitofp i32 %3590 to float
  %3592 = mul nuw nsw i32 %3589, 9
  %3593 = uitofp i32 %3592 to float
  %3594 = fadd fast float %3591, 5.000000e-01
  %3595 = fadd fast float %3594, %3579
  %3596 = fsub fast float %3595, %3585
  %3597 = fadd fast float %3593, 5.000000e-01
  %3598 = fadd fast float %3597, %3580
  %3599 = fsub fast float %3598, %3586
  %3600 = fdiv fast float %3596, %2979
  %3601 = fdiv fast float %3599, %3576
  %3602 = fmul fast float %3237, 4.375000e-01
  %3603 = fadd fast float %3602, 3.125000e-02
  %3604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3600, float %3601, float %3603, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 0
  %3606 = extractvalue %dx.types.ResRet.f32 %3604, 1
  %3607 = extractvalue %dx.types.ResRet.f32 %3604, 2
  %3608 = fadd fast float %3605, %3549
  %3609 = fadd fast float %3606, %3550
  %3610 = fadd fast float %3607, %3551
  br label %3611

; <label>:3611                                    ; preds = %3575, %3560
  %3612 = phi float [ %3610, %3575 ], [ %3551, %3560 ]
  %3613 = phi float [ %3609, %3575 ], [ %3550, %3560 ]
  %3614 = phi float [ %3608, %3575 ], [ %3549, %3560 ]
  %3615 = icmp eq i32 %3573, 65535
  br i1 %3615, label %3705, label %3616

; <label>:3616                                    ; preds = %3611
  %3617 = extractvalue %dx.types.CBufRet.f32 %2978, 1
  %3618 = extractvalue %dx.types.CBufRet.f32 %3561, 0
  %3619 = extractvalue %dx.types.CBufRet.f32 %3561, 1
  %3620 = fmul fast float %3618, %3209
  %3621 = fmul fast float %3619, %3210
  %3622 = fmul fast float %3620, 1.250000e-01
  %3623 = fmul fast float %3621, 1.250000e-01
  %3624 = call float @dx.op.unary.f32(i32 27, float %3622)  ; Round_ni(value)
  %3625 = call float @dx.op.unary.f32(i32 27, float %3623)  ; Round_ni(value)
  %3626 = fmul fast float %3624, 8.000000e+00
  %3627 = fmul fast float %3625, 8.000000e+00
  %3628 = fsub fast float %3620, %3626
  %3629 = fsub fast float %3621, %3627
  %3630 = fadd fast float %3628, 5.000000e-01
  %3631 = fadd fast float %3629, 5.000000e-01
  %3632 = and i32 %3573, 255
  %3633 = lshr i32 %3571, 24
  %3634 = mul nuw nsw i32 %3632, 9
  %3635 = uitofp i32 %3634 to float
  %3636 = mul nuw nsw i32 %3633, 9
  %3637 = uitofp i32 %3636 to float
  %3638 = fadd fast float %3630, %3635
  %3639 = fadd fast float %3631, %3637
  %3640 = fdiv fast float %3638, %2979
  %3641 = fdiv fast float %3639, %3617
  %3642 = fmul fast float %3237, 4.375000e-01
  %3643 = fadd fast float %3642, 3.125000e-02
  %3644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3640, float %3641, float %3643, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = extractvalue %dx.types.ResRet.f32 %3644, 1
  %3647 = extractvalue %dx.types.ResRet.f32 %3644, 2
  %3648 = fadd fast float %3642, 5.312500e-01
  %3649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3640, float %3641, float %3648, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = extractvalue %dx.types.ResRet.f32 %3649, 1
  %3652 = extractvalue %dx.types.ResRet.f32 %3649, 2
  %3653 = fmul fast float %3650, 2.000000e+00
  %3654 = fmul fast float %3651, 2.000000e+00
  %3655 = fmul fast float %3652, 2.000000e+00
  %3656 = fadd fast float %3653, -1.000000e+00
  %3657 = fadd fast float %3654, -1.000000e+00
  %3658 = fadd fast float %3655, -1.000000e+00
  %3659 = fmul fast float %3656, %3656
  %3660 = fmul fast float %3657, %3657
  %3661 = fadd fast float %3659, %3660
  %3662 = fmul fast float %3658, %3658
  %3663 = fadd fast float %3661, %3662
  %3664 = call float @dx.op.unary.f32(i32 24, float %3663)  ; Sqrt(value)
  %3665 = fcmp fast ogt float %3664, 0.000000e+00
  br i1 %3665, label %3666, label %3670

; <label>:3666                                    ; preds = %3616
  %3667 = fdiv fast float %3656, %3664
  %3668 = fdiv fast float %3657, %3664
  %3669 = fdiv fast float %3658, %3664
  br label %3670

; <label>:3670                                    ; preds = %3666, %3616
  %3671 = phi float [ %3667, %3666 ], [ 0.000000e+00, %3616 ]
  %3672 = phi float [ %3668, %3666 ], [ 0.000000e+00, %3616 ]
  %3673 = phi float [ %3669, %3666 ], [ 0.000000e+00, %3616 ]
  %3674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3675 = extractvalue %dx.types.CBufRet.f32 %3674, 0
  %3676 = extractvalue %dx.types.CBufRet.f32 %3674, 1
  %3677 = fsub fast float %2830, %3675
  %3678 = fsub fast float %2831, %3676
  %3679 = fmul fast float %3677, %3677
  %3680 = fmul fast float %3678, %3678
  %3681 = fadd fast float %3679, %3680
  %3682 = call float @dx.op.unary.f32(i32 24, float %3681)  ; Sqrt(value)
  %3683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3684 = extractvalue %dx.types.CBufRet.f32 %3683, 0
  %3685 = extractvalue %dx.types.CBufRet.f32 %3683, 1
  %3686 = fsub fast float %3682, %3684
  %3687 = fdiv fast float %3686, %3685
  %3688 = call float @dx.op.unary.f32(i32 7, float %3687)  ; Saturate(value)
  %3689 = fmul fast float %3688, 2.000000e+00
  %3690 = fsub fast float 3.000000e+00, %3689
  %3691 = fmul fast float %3688, %3688
  %3692 = fmul fast float %3691, %3690
  %3693 = call float @dx.op.dot3.f32(i32 55, float %3671, float %3672, float %3673, float %2807, float %2808, float %2809)  ; Dot3(ax,ay,az,bx,by,bz)
  %3694 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3693)  ; FMax(a,b)
  %3695 = fmul fast float %3694, 0x400C5BF8A0000000
  %3696 = fmul fast float %3692, %3645
  %3697 = fmul fast float %3696, %3695
  %3698 = fadd fast float %3697, %3614
  %3699 = fmul fast float %3692, %3646
  %3700 = fmul fast float %3699, %3695
  %3701 = fadd fast float %3700, %3613
  %3702 = fmul fast float %3692, %3647
  %3703 = fmul fast float %3702, %3695
  %3704 = fadd fast float %3703, %3612
  br label %3705

; <label>:3705                                    ; preds = %3670, %3611, %3539
  %3706 = phi float [ %3704, %3670 ], [ %3612, %3611 ], [ %3551, %3539 ]
  %3707 = phi float [ %3701, %3670 ], [ %3613, %3611 ], [ %3550, %3539 ]
  %3708 = phi float [ %3698, %3670 ], [ %3614, %3611 ], [ %3549, %3539 ]
  %3709 = fcmp fast ogt float %3196, %3233
  %3710 = and i1 %3552, %3709
  %3711 = and i1 %3554, %3710
  %3712 = and i1 %3556, %3711
  %3713 = and i1 %3558, %3712
  br i1 %3713, label %3714, label %3771, !dx.controlflow.hints !87

; <label>:3714                                    ; preds = %3705
  %3715 = fmul fast float %3235, 0x3FC24924A0000000
  %3716 = fsub fast float %3196, %3233
  %3717 = fdiv fast float %3716, %3715
  %3718 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3720 = extractvalue %dx.types.CBufRet.f32 %3719, 0
  %3721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3722 = extractvalue %dx.types.CBufRet.f32 %3721, 0
  %3723 = extractvalue %dx.types.CBufRet.f32 %3721, 1
  %3724 = extractvalue %dx.types.CBufRet.f32 %3721, 2
  %3725 = fsub fast float %3720, %3708
  %3726 = fsub fast float %3722, %3546
  %3727 = fsub fast float %3723, %3547
  %3728 = fsub fast float %3724, %3548
  %3729 = fmul fast float %3725, %3718
  %3730 = fmul fast float %3726, %3718
  %3731 = fmul fast float %3727, %3718
  %3732 = fmul fast float %3728, %3718
  %3733 = fadd fast float %3729, %3708
  %3734 = fadd fast float %3730, %3546
  %3735 = fadd fast float %3731, %3547
  %3736 = fadd fast float %3732, %3548
  %3737 = extractvalue %dx.types.CBufRet.f32 %3719, 1
  %3738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3739 = extractvalue %dx.types.CBufRet.f32 %3738, 0
  %3740 = extractvalue %dx.types.CBufRet.f32 %3738, 1
  %3741 = extractvalue %dx.types.CBufRet.f32 %3738, 2
  %3742 = fsub fast float %3737, %3707
  %3743 = fsub fast float %3739, %3543
  %3744 = fsub fast float %3740, %3544
  %3745 = fsub fast float %3741, %3545
  %3746 = fmul fast float %3742, %3718
  %3747 = fmul fast float %3743, %3718
  %3748 = fmul fast float %3744, %3718
  %3749 = fmul fast float %3745, %3718
  %3750 = fadd fast float %3746, %3707
  %3751 = fadd fast float %3747, %3543
  %3752 = fadd fast float %3748, %3544
  %3753 = fadd fast float %3749, %3545
  %3754 = extractvalue %dx.types.CBufRet.f32 %3719, 2
  %3755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3756 = extractvalue %dx.types.CBufRet.f32 %3755, 0
  %3757 = extractvalue %dx.types.CBufRet.f32 %3755, 1
  %3758 = extractvalue %dx.types.CBufRet.f32 %3755, 2
  %3759 = fsub fast float %3754, %3706
  %3760 = fsub fast float %3756, %3540
  %3761 = fsub fast float %3757, %3541
  %3762 = fsub fast float %3758, %3542
  %3763 = fmul fast float %3759, %3718
  %3764 = fmul fast float %3760, %3718
  %3765 = fmul fast float %3761, %3718
  %3766 = fmul fast float %3762, %3718
  %3767 = fadd fast float %3763, %3706
  %3768 = fadd fast float %3764, %3540
  %3769 = fadd fast float %3765, %3541
  %3770 = fadd fast float %3766, %3542
  br label %3771

; <label>:3771                                    ; preds = %3714, %3705
  %3772 = phi float [ %3767, %3714 ], [ %3706, %3705 ]
  %3773 = phi float [ %3768, %3714 ], [ %3540, %3705 ]
  %3774 = phi float [ %3769, %3714 ], [ %3541, %3705 ]
  %3775 = phi float [ %3770, %3714 ], [ %3542, %3705 ]
  %3776 = phi float [ %3750, %3714 ], [ %3707, %3705 ]
  %3777 = phi float [ %3751, %3714 ], [ %3543, %3705 ]
  %3778 = phi float [ %3752, %3714 ], [ %3544, %3705 ]
  %3779 = phi float [ %3753, %3714 ], [ %3545, %3705 ]
  %3780 = phi float [ %3733, %3714 ], [ %3708, %3705 ]
  %3781 = phi float [ %3734, %3714 ], [ %3546, %3705 ]
  %3782 = phi float [ %3735, %3714 ], [ %3547, %3705 ]
  %3783 = phi float [ %3736, %3714 ], [ %3548, %3705 ]
  %3784 = extractvalue %dx.types.CBufRet.f32 %3358, 3
  %3785 = fmul fast float %3784, %3780
  %3786 = fmul fast float %3784, %3776
  %3787 = fmul fast float %3784, %3772
  %3788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3789 = extractvalue %dx.types.CBufRet.f32 %3788, 3
  %3790 = fmul fast float %3785, %3789
  %3791 = fmul fast float %3786, %3789
  %3792 = fmul fast float %3787, %3789
  %3793 = fmul fast float %3781, 1.500000e+00
  %3794 = fmul fast float %3793, %3784
  %3795 = fmul fast float %3794, %3789
  %3796 = fmul fast float %3782, 1.500000e+00
  %3797 = fmul fast float %3796, %3784
  %3798 = fmul fast float %3797, %3789
  %3799 = fmul fast float %3783, 1.500000e+00
  %3800 = fmul fast float %3799, %3784
  %3801 = fmul fast float %3800, %3789
  %3802 = fmul fast float %3777, 1.500000e+00
  %3803 = fmul fast float %3802, %3784
  %3804 = fmul fast float %3803, %3789
  %3805 = fmul fast float %3778, 1.500000e+00
  %3806 = fmul fast float %3805, %3784
  %3807 = fmul fast float %3806, %3789
  %3808 = fmul fast float %3779, 1.500000e+00
  %3809 = fmul fast float %3808, %3784
  %3810 = fmul fast float %3809, %3789
  %3811 = fmul fast float %3773, 1.500000e+00
  %3812 = fmul fast float %3811, %3784
  %3813 = fmul fast float %3812, %3789
  %3814 = fmul fast float %3774, 1.500000e+00
  %3815 = fmul fast float %3814, %3784
  %3816 = fmul fast float %3815, %3789
  %3817 = fmul fast float %3775, 1.500000e+00
  %3818 = fmul fast float %3817, %3784
  %3819 = fmul fast float %3818, %3789
  %3820 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3790)  ; FMax(a,b)
  %3821 = call float @dx.op.dot3.f32(i32 55, float %3795, float %3798, float %3801, float %3795, float %3798, float %3801)  ; Dot3(ax,ay,az,bx,by,bz)
  %3822 = fcmp fast oeq float %3821, 0.000000e+00
  %3823 = fcmp fast oeq float %3820, 0.000000e+00
  %3824 = or i1 %3823, %3822
  br i1 %3824, label %3854, label %3825

; <label>:3825                                    ; preds = %3771
  %3826 = fsub fast float -0.000000e+00, %3801
  %3827 = fsub fast float -0.000000e+00, %3795
  %3828 = call float @dx.op.unary.f32(i32 24, float %3821)  ; Sqrt(value)
  %3829 = fdiv fast float %3828, %3820
  %3830 = fcmp fast ogt float %3829, 0x3FFB6F8900000000
  %3831 = select i1 %3830, float 0x3FFB6F8900000000, float %3829
  %3832 = fmul fast float %3831, 0x3FE8A23460000000
  %3833 = call float @dx.op.unary.f32(i32 7, float %3832)  ; Saturate(value)
  %3834 = call float @dx.op.binary.f32(i32 35, float %3831, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3835 = fmul fast float %3833, %3820
  %3836 = fmul fast float %3834, 0x3FF279A740000000
  %3837 = fadd fast float %3836, -1.000000e+00
  %3838 = call float @dx.op.dot3.f32(i32 55, float %3826, float %3827, float %3798, float %3826, float %3827, float %3798)  ; Dot3(ax,ay,az,bx,by,bz)
  %3839 = call float @dx.op.unary.f32(i32 25, float %3838)  ; Rsqrt(value)
  %3840 = fmul fast float %3839, %3826
  %3841 = fmul fast float %3839, %3827
  %3842 = fmul fast float %3839, %3798
  %3843 = fmul fast float %3837, %3837
  %3844 = fsub fast float 1.000000e+00, %3843
  %3845 = fmul fast float %3834, 0x40005F8BE0000000
  %3846 = fsub fast float 0x400C5BF8A0000000, %3845
  %3847 = fdiv fast float %3835, %3846
  %3848 = fmul fast float %3847, 0x3FEE31C3C0000000
  %3849 = fmul fast float %3848, %3844
  %3850 = fmul fast float %3834, 0x3FDACB7480000000
  %3851 = fadd fast float %3850, 0xBFD7347680000000
  %3852 = fmul fast float %3851, %3847
  %3853 = fmul fast float %3852, %3844
  br label %3854

; <label>:3854                                    ; preds = %3825, %3771
  %3855 = phi float [ %3840, %3825 ], [ 0.000000e+00, %3771 ]
  %3856 = phi float [ %3841, %3825 ], [ 0.000000e+00, %3771 ]
  %3857 = phi float [ %3842, %3825 ], [ 0.000000e+00, %3771 ]
  %3858 = phi float [ %3849, %3825 ], [ 0.000000e+00, %3771 ]
  %3859 = phi float [ %3853, %3825 ], [ 0.000000e+00, %3771 ]
  %3860 = call float @dx.op.dot3.f32(i32 55, float %3855, float %3856, float %3857, float %2807, float %2808, float %2809)  ; Dot3(ax,ay,az,bx,by,bz)
  %3861 = fmul fast float %3860, %3860
  %3862 = fmul fast float %3861, 0x3FEE471020000000
  %3863 = fadd fast float %3862, 0xBFD42F6020000000
  %3864 = fmul fast float %3820, 0x3FD20DD760000000
  %3865 = fmul fast float %3863, %3859
  %3866 = fmul fast float %3858, 0x3FDF454380000000
  %3867 = fmul fast float %3866, %3860
  %3868 = fadd fast float %3867, %3864
  %3869 = fadd fast float %3868, %3865
  %3870 = call float @dx.op.dot3.f32(i32 55, float %3855, float %3856, float %3857, float %2820, float %2821, float %2822)  ; Dot3(ax,ay,az,bx,by,bz)
  %3871 = fmul fast float %3870, 0x3FDF454380000000
  %3872 = fmul fast float %3870, %3870
  %3873 = fmul fast float %3872, 0x3FEE471020000000
  %3874 = fadd fast float %3873, 0xBFD42F6020000000
  %3875 = call float @dx.op.dot3.f32(i32 55, float %3820, float %3858, float %3859, float 0x3FD20DD760000000, float %3871, float %3874)  ; Dot3(ax,ay,az,bx,by,bz)
  %3876 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3791)  ; FMax(a,b)
  %3877 = call float @dx.op.dot3.f32(i32 55, float %3804, float %3807, float %3810, float %3804, float %3807, float %3810)  ; Dot3(ax,ay,az,bx,by,bz)
  %3878 = fcmp fast oeq float %3877, 0.000000e+00
  %3879 = fcmp fast oeq float %3876, 0.000000e+00
  %3880 = or i1 %3879, %3878
  br i1 %3880, label %3910, label %3881

; <label>:3881                                    ; preds = %3854
  %3882 = fsub fast float -0.000000e+00, %3810
  %3883 = fsub fast float -0.000000e+00, %3804
  %3884 = call float @dx.op.unary.f32(i32 24, float %3877)  ; Sqrt(value)
  %3885 = fdiv fast float %3884, %3876
  %3886 = fcmp fast ogt float %3885, 0x3FFB6F8900000000
  %3887 = select i1 %3886, float 0x3FFB6F8900000000, float %3885
  %3888 = fmul fast float %3887, 0x3FE8A23460000000
  %3889 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3890 = call float @dx.op.binary.f32(i32 35, float %3887, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3891 = fmul fast float %3889, %3876
  %3892 = fmul fast float %3890, 0x3FF279A740000000
  %3893 = fadd fast float %3892, -1.000000e+00
  %3894 = call float @dx.op.dot3.f32(i32 55, float %3882, float %3883, float %3807, float %3882, float %3883, float %3807)  ; Dot3(ax,ay,az,bx,by,bz)
  %3895 = call float @dx.op.unary.f32(i32 25, float %3894)  ; Rsqrt(value)
  %3896 = fmul fast float %3895, %3882
  %3897 = fmul fast float %3895, %3883
  %3898 = fmul fast float %3895, %3807
  %3899 = fmul fast float %3893, %3893
  %3900 = fsub fast float 1.000000e+00, %3899
  %3901 = fmul fast float %3890, 0x40005F8BE0000000
  %3902 = fsub fast float 0x400C5BF8A0000000, %3901
  %3903 = fdiv fast float %3891, %3902
  %3904 = fmul fast float %3903, 0x3FEE31C3C0000000
  %3905 = fmul fast float %3904, %3900
  %3906 = fmul fast float %3890, 0x3FDACB7480000000
  %3907 = fadd fast float %3906, 0xBFD7347680000000
  %3908 = fmul fast float %3907, %3903
  %3909 = fmul fast float %3908, %3900
  br label %3910

; <label>:3910                                    ; preds = %3881, %3854
  %3911 = phi float [ %3896, %3881 ], [ 0.000000e+00, %3854 ]
  %3912 = phi float [ %3897, %3881 ], [ 0.000000e+00, %3854 ]
  %3913 = phi float [ %3898, %3881 ], [ 0.000000e+00, %3854 ]
  %3914 = phi float [ %3905, %3881 ], [ 0.000000e+00, %3854 ]
  %3915 = phi float [ %3909, %3881 ], [ 0.000000e+00, %3854 ]
  %3916 = call float @dx.op.dot3.f32(i32 55, float %3911, float %3912, float %3913, float %2807, float %2808, float %2809)  ; Dot3(ax,ay,az,bx,by,bz)
  %3917 = fmul fast float %3916, %3916
  %3918 = fmul fast float %3917, 0x3FEE471020000000
  %3919 = fadd fast float %3918, 0xBFD42F6020000000
  %3920 = fmul fast float %3876, 0x3FD20DD760000000
  %3921 = fmul fast float %3919, %3915
  %3922 = fmul fast float %3914, 0x3FDF454380000000
  %3923 = fmul fast float %3922, %3916
  %3924 = fadd fast float %3923, %3920
  %3925 = fadd fast float %3924, %3921
  %3926 = call float @dx.op.dot3.f32(i32 55, float %3911, float %3912, float %3913, float %2820, float %2821, float %2822)  ; Dot3(ax,ay,az,bx,by,bz)
  %3927 = fmul fast float %3926, 0x3FDF454380000000
  %3928 = fmul fast float %3926, %3926
  %3929 = fmul fast float %3928, 0x3FEE471020000000
  %3930 = fadd fast float %3929, 0xBFD42F6020000000
  %3931 = call float @dx.op.dot3.f32(i32 55, float %3876, float %3914, float %3915, float 0x3FD20DD760000000, float %3927, float %3930)  ; Dot3(ax,ay,az,bx,by,bz)
  %3932 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3792)  ; FMax(a,b)
  %3933 = call float @dx.op.dot3.f32(i32 55, float %3813, float %3816, float %3819, float %3813, float %3816, float %3819)  ; Dot3(ax,ay,az,bx,by,bz)
  %3934 = fcmp fast oeq float %3933, 0.000000e+00
  %3935 = fcmp fast oeq float %3932, 0.000000e+00
  %3936 = or i1 %3935, %3934
  br i1 %3936, label %3966, label %3937

; <label>:3937                                    ; preds = %3910
  %3938 = fsub fast float -0.000000e+00, %3819
  %3939 = fsub fast float -0.000000e+00, %3813
  %3940 = call float @dx.op.unary.f32(i32 24, float %3933)  ; Sqrt(value)
  %3941 = fdiv fast float %3940, %3932
  %3942 = fcmp fast ogt float %3941, 0x3FFB6F8900000000
  %3943 = select i1 %3942, float 0x3FFB6F8900000000, float %3941
  %3944 = fmul fast float %3943, 0x3FE8A23460000000
  %3945 = call float @dx.op.unary.f32(i32 7, float %3944)  ; Saturate(value)
  %3946 = call float @dx.op.binary.f32(i32 35, float %3943, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3947 = fmul fast float %3945, %3932
  %3948 = fmul fast float %3946, 0x3FF279A740000000
  %3949 = fadd fast float %3948, -1.000000e+00
  %3950 = call float @dx.op.dot3.f32(i32 55, float %3938, float %3939, float %3816, float %3938, float %3939, float %3816)  ; Dot3(ax,ay,az,bx,by,bz)
  %3951 = call float @dx.op.unary.f32(i32 25, float %3950)  ; Rsqrt(value)
  %3952 = fmul fast float %3951, %3938
  %3953 = fmul fast float %3951, %3939
  %3954 = fmul fast float %3951, %3816
  %3955 = fmul fast float %3949, %3949
  %3956 = fsub fast float 1.000000e+00, %3955
  %3957 = fmul fast float %3946, 0x40005F8BE0000000
  %3958 = fsub fast float 0x400C5BF8A0000000, %3957
  %3959 = fdiv fast float %3947, %3958
  %3960 = fmul fast float %3959, 0x3FEE31C3C0000000
  %3961 = fmul fast float %3960, %3956
  %3962 = fmul fast float %3946, 0x3FDACB7480000000
  %3963 = fadd fast float %3962, 0xBFD7347680000000
  %3964 = fmul fast float %3963, %3959
  %3965 = fmul fast float %3964, %3956
  br label %3966

; <label>:3966                                    ; preds = %3937, %3910
  %3967 = phi float [ %3952, %3937 ], [ 0.000000e+00, %3910 ]
  %3968 = phi float [ %3953, %3937 ], [ 0.000000e+00, %3910 ]
  %3969 = phi float [ %3954, %3937 ], [ 0.000000e+00, %3910 ]
  %3970 = phi float [ %3961, %3937 ], [ 0.000000e+00, %3910 ]
  %3971 = phi float [ %3965, %3937 ], [ 0.000000e+00, %3910 ]
  %3972 = call float @dx.op.dot3.f32(i32 55, float %3967, float %3968, float %3969, float %2807, float %2808, float %2809)  ; Dot3(ax,ay,az,bx,by,bz)
  %3973 = fmul fast float %3972, %3972
  %3974 = fmul fast float %3973, 0x3FEE471020000000
  %3975 = fadd fast float %3974, 0xBFD42F6020000000
  %3976 = fmul fast float %3932, 0x3FD20DD760000000
  %3977 = fmul fast float %3975, %3971
  %3978 = fmul fast float %3970, 0x3FDF454380000000
  %3979 = fmul fast float %3978, %3972
  %3980 = fadd fast float %3979, %3976
  %3981 = fadd fast float %3980, %3977
  %3982 = call float @dx.op.dot3.f32(i32 55, float %3967, float %3968, float %3969, float %2820, float %2821, float %2822)  ; Dot3(ax,ay,az,bx,by,bz)
  %3983 = fmul fast float %3982, 0x3FDF454380000000
  %3984 = fmul fast float %3982, %3982
  %3985 = fmul fast float %3984, 0x3FEE471020000000
  %3986 = fadd fast float %3985, 0xBFD42F6020000000
  %3987 = call float @dx.op.dot3.f32(i32 55, float %3932, float %3970, float %3971, float 0x3FD20DD760000000, float %3983, float %3986)  ; Dot3(ax,ay,az,bx,by,bz)
  %3988 = call float @dx.op.binary.f32(i32 35, float %3869, float 0.000000e+00)  ; FMax(a,b)
  %3989 = call float @dx.op.binary.f32(i32 35, float %3925, float 0.000000e+00)  ; FMax(a,b)
  %3990 = call float @dx.op.binary.f32(i32 35, float %3981, float 0.000000e+00)  ; FMax(a,b)
  %3991 = call float @dx.op.binary.f32(i32 35, float %3875, float 0.000000e+00)  ; FMax(a,b)
  %3992 = call float @dx.op.binary.f32(i32 35, float %3931, float 0.000000e+00)  ; FMax(a,b)
  %3993 = call float @dx.op.binary.f32(i32 35, float %3987, float 0.000000e+00)  ; FMax(a,b)
  %3994 = fsub fast float %3190, %3988
  %3995 = fsub fast float %3191, %3989
  %3996 = fsub fast float %3192, %3990
  %3997 = fmul fast float %3994, %2871
  %3998 = fmul fast float %3995, %2871
  %3999 = fmul fast float %3996, %2871
  %4000 = fadd fast float %3997, %3988
  %4001 = fadd fast float %3998, %3989
  %4002 = fadd fast float %3999, %3990
  %4003 = fsub fast float %3187, %3991
  %4004 = fsub fast float %3188, %3992
  %4005 = fsub fast float %3189, %3993
  %4006 = fmul fast float %4003, %2871
  %4007 = fmul fast float %4004, %2871
  %4008 = fmul fast float %4005, %2871
  %4009 = fadd fast float %4006, %3991
  %4010 = fadd fast float %4007, %3992
  %4011 = fadd fast float %4008, %3993
  br label %4012

; <label>:4012                                    ; preds = %3966, %3186
  %4013 = phi float [ %4009, %3966 ], [ %3187, %3186 ]
  %4014 = phi float [ %4010, %3966 ], [ %3188, %3186 ]
  %4015 = phi float [ %4011, %3966 ], [ %3189, %3186 ]
  %4016 = phi float [ %4000, %3966 ], [ %3190, %3186 ]
  %4017 = phi float [ %4001, %3966 ], [ %3191, %3186 ]
  %4018 = phi float [ %4002, %3966 ], [ %3192, %3186 ]
  %4019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4020 = extractvalue %dx.types.CBufRet.f32 %4019, 0
  %4021 = call float @dx.op.binary.f32(i32 36, float %2804, float %4020)  ; FMin(a,b)
  %4022 = fsub fast float 1.000000e+00, %2823
  %4023 = fmul fast float %4021, %4022
  %4024 = fsub fast float 1.000000e+00, %4023
  %4025 = bitcast float %4024 to i32
  %4026 = sub nsw i32 2129859010, %4025
  %4027 = bitcast i32 %4026 to float
  %4028 = call float @dx.op.binary.f32(i32 36, float %2805, float %4020)  ; FMin(a,b)
  %4029 = fmul fast float %4028, %4022
  %4030 = fsub fast float 1.000000e+00, %4029
  %4031 = bitcast float %4030 to i32
  %4032 = sub nsw i32 2129859010, %4031
  %4033 = bitcast i32 %4032 to float
  %4034 = call float @dx.op.binary.f32(i32 36, float %2806, float %4020)  ; FMin(a,b)
  %4035 = fmul fast float %4034, %4022
  %4036 = fsub fast float 1.000000e+00, %4035
  %4037 = bitcast float %4036 to i32
  %4038 = sub nsw i32 2129859010, %4037
  %4039 = bitcast i32 %4038 to float
  %4040 = fmul fast float %4016, %2823
  %4041 = fmul fast float %4040, %4027
  %4042 = fmul fast float %4017, %2823
  %4043 = fmul fast float %4042, %4033
  %4044 = fmul fast float %4018, %2823
  %4045 = fmul fast float %4044, %4039
  %4046 = call float @dx.op.binary.f32(i32 36, float %2801, float %4020)  ; FMin(a,b)
  %4047 = fmul fast float %4046, %4022
  %4048 = fsub fast float 1.000000e+00, %4047
  %4049 = bitcast float %4048 to i32
  %4050 = sub nsw i32 2129859010, %4049
  %4051 = bitcast i32 %4050 to float
  %4052 = call float @dx.op.binary.f32(i32 36, float %2802, float %4020)  ; FMin(a,b)
  %4053 = fmul fast float %4052, %4022
  %4054 = fsub fast float 1.000000e+00, %4053
  %4055 = bitcast float %4054 to i32
  %4056 = sub nsw i32 2129859010, %4055
  %4057 = bitcast i32 %4056 to float
  %4058 = call float @dx.op.binary.f32(i32 36, float %2812, float %4020)  ; FMin(a,b)
  %4059 = fmul fast float %4058, %4022
  %4060 = fsub fast float 1.000000e+00, %4059
  %4061 = bitcast float %4060 to i32
  %4062 = sub nsw i32 2129859010, %4061
  %4063 = bitcast i32 %4062 to float
  %4064 = fmul fast float %4013, %2823
  %4065 = fmul fast float %4064, %4051
  %4066 = fmul fast float %4014, %2823
  %4067 = fmul fast float %4066, %4057
  %4068 = fmul fast float %4015, %2823
  %4069 = fmul fast float %4068, %4063
  %4070 = call float @dx.op.dot3.f32(i32 55, float %4041, float %4043, float %4045, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4071 = select i1 %189, float 0.000000e+00, float %4041
  %4072 = select i1 %189, float %4070, float %4043
  %4073 = select i1 %189, float 0.000000e+00, float %4045
  %4074 = call float @dx.op.dot3.f32(i32 55, float %4065, float %4067, float %4069, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4075 = select i1 %189, float 0.000000e+00, float %4065
  %4076 = select i1 %189, float %4074, float %4067
  %4077 = select i1 %189, float 0.000000e+00, float %4069
  %4078 = fmul fast float %2814, 9.843750e-01
  %4079 = fmul fast float %2810, 9.843750e-01
  %4080 = fadd fast float %4078, 7.812500e-03
  %4081 = fadd fast float %4079, 7.812500e-03
  %4082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4080, float %4081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4083 = extractvalue %dx.types.ResRet.f32 %4082, 2
  %4084 = extractvalue %dx.types.ResRet.f32 %4082, 3
  %4085 = fmul fast float %4083, %2801
  %4086 = fmul fast float %4083, %2802
  %4087 = fmul fast float %4083, %2812
  %4088 = fadd fast float %4085, %4084
  %4089 = fadd fast float %4086, %4084
  %4090 = fadd fast float %4087, %4084
  %4091 = fcmp fast ogt float %2178, 0.000000e+00
  br i1 %4091, label %4092, label %4118

; <label>:4092                                    ; preds = %4012
  %4093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2178, float %2814, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4094 = extractvalue %dx.types.ResRet.f32 %4093, 0
  %4095 = extractvalue %dx.types.ResRet.f32 %4093, 1
  %4096 = extractvalue %dx.types.ResRet.f32 %4093, 2
  %4097 = fadd fast float %4094, -5.000000e-01
  %4098 = fadd fast float %4095, -5.000000e-01
  %4099 = fadd fast float %4096, -5.000000e-01
  %4100 = fsub fast float 1.000000e+00, %2801
  %4101 = fsub fast float 1.000000e+00, %2802
  %4102 = fsub fast float 1.000000e+00, %2812
  %4103 = fmul fast float %2801, 4.000000e+00
  %4104 = fmul fast float %4103, %4100
  %4105 = fmul fast float %4104, %4097
  %4106 = fmul fast float %2802, 4.000000e+00
  %4107 = fmul fast float %4106, %4101
  %4108 = fmul fast float %4107, %4098
  %4109 = fmul fast float %2812, 4.000000e+00
  %4110 = fmul fast float %4109, %4102
  %4111 = fmul fast float %4110, %4099
  %4112 = fadd fast float %4105, %4088
  %4113 = fadd fast float %4108, %4089
  %4114 = fadd fast float %4111, %4090
  %4115 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4116 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4117 = call float @dx.op.unary.f32(i32 7, float %4114)  ; Saturate(value)
  br label %4118

; <label>:4118                                    ; preds = %4092, %4012
  %4119 = phi float [ %4115, %4092 ], [ %4088, %4012 ]
  %4120 = phi float [ %4116, %4092 ], [ %4089, %4012 ]
  %4121 = phi float [ %4117, %4092 ], [ %4090, %4012 ]
  %4122 = call float @dx.op.binary.f32(i32 35, float %4120, float %4121)  ; FMax(a,b)
  %4123 = call float @dx.op.binary.f32(i32 35, float %4119, float %4122)  ; FMax(a,b)
  %4124 = fsub fast float 1.000000e+00, %4123
  %4125 = fmul fast float %4124, %4071
  %4126 = fmul fast float %4124, %4072
  %4127 = fmul fast float %4124, %4073
  %4128 = call float @dx.op.dot3.f32(i32 55, float %2804, float %2805, float %2806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4129 = fcmp fast ogt float %4128, 0x3E7FF19E20000000
  %4130 = fdiv fast float 1.000000e+00, %4128
  %4131 = select i1 %4129, float %4130, float 0.000000e+00
  %4132 = fmul fast float %4131, %2804
  %4133 = fmul fast float %4131, %2805
  %4134 = fmul fast float %4131, %2806
  %4135 = fadd fast float %4132, -1.000000e+00
  %4136 = fadd fast float %4133, -1.000000e+00
  %4137 = fadd fast float %4134, -1.000000e+00
  %4138 = fmul fast float %4135, 5.000000e-01
  %4139 = fmul fast float %4136, 5.000000e-01
  %4140 = fmul fast float %4137, 5.000000e-01
  %4141 = fadd fast float %4138, 1.000000e+00
  %4142 = fadd fast float %4139, 1.000000e+00
  %4143 = fadd fast float %4140, 1.000000e+00
  %4144 = fmul fast float %4119, %4075
  %4145 = fmul fast float %4120, %4076
  %4146 = fmul fast float %4121, %4077
  %4147 = fsub fast float 1.000000e+00, %2814
  %4148 = bitcast float %4147 to i32
  %4149 = sitofp i32 %4148 to float
  %4150 = fmul fast float %4149, 5.000000e+00
  %4151 = fadd fast float %4150, 0xC1EFBF8940000000
  %4152 = fptosi float %4151 to i32
  %4153 = bitcast i32 %4152 to float
  %4154 = fmul fast float %4153, %2177
  %4155 = fmul fast float %4071, %4154
  %4156 = fmul fast float %4155, %4124
  %4157 = fmul fast float %4156, %4141
  %4158 = fmul fast float %4072, %4154
  %4159 = fmul fast float %4158, %4124
  %4160 = fmul fast float %4159, %4142
  %4161 = fmul fast float %4073, %4154
  %4162 = fmul fast float %4161, %4124
  %4163 = fmul fast float %4162, %4143
  %4164 = fmul fast float %4125, %2198
  %4165 = fmul fast float %4126, %2198
  %4166 = fmul fast float %4127, %2198
  %4167 = fadd fast float %4144, %2179
  %4168 = fadd fast float %4167, %4157
  %4169 = fmul fast float %4168, %2198
  %4170 = fadd fast float %4145, %2180
  %4171 = fadd fast float %4170, %4160
  %4172 = fmul fast float %4171, %2198
  %4173 = fadd fast float %4146, %2181
  %4174 = fadd fast float %4173, %4163
  %4175 = fmul fast float %4174, %2198
  %4176 = bitcast i32 %2826 to float
  %4177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4177, 3
  %4179 = fcmp fast oeq float %4178, 0.000000e+00
  br i1 %4179, label %4407, label %4180

; <label>:4180                                    ; preds = %4118
  %4181 = extractvalue %dx.types.CBufRet.f32 %4177, 0
  %4182 = extractvalue %dx.types.CBufRet.f32 %4177, 1
  %4183 = extractvalue %dx.types.CBufRet.f32 %4177, 2
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.CBufRet.f32 %4184, 1
  %4187 = extractvalue %dx.types.CBufRet.f32 %4184, 2
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 0
  %4190 = extractvalue %dx.types.CBufRet.f32 %4188, 1
  %4191 = call float @dx.op.dot3.f32(i32 55, float %4185, float %4186, float %4187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4192 = select i1 %189, float %4189, float %4185
  %4193 = select i1 %189, float %4191, float %4186
  %4194 = select i1 %189, float %4190, float %4187
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 1
  %4197 = fcmp fast une float %4196, 0.000000e+00
  br i1 %4197, label %4198, label %4215

; <label>:4198                                    ; preds = %4180
  %4199 = fptoui float %71 to i32
  %4200 = fptoui float %72 to i32
  %4201 = lshr i32 %4199, 4
  %4202 = lshr i32 %4200, 4
  %4203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4204 = extractvalue %dx.types.CBufRet.f32 %4203, 0
  %4205 = fptoui float %4204 to i32
  %4206 = add i32 %4205, 15
  %4207 = lshr i32 %4206, 4
  %4208 = mul i32 %4207, %4202
  %4209 = add i32 %4208, %4201
  %4210 = shl i32 %4209, 3
  %4211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4210, i32 undef)  ; BufferLoad(srv,index,wot)
  %4212 = extractvalue %dx.types.ResRet.i32 %4211, 0
  %4213 = and i32 %4212, -268435456
  %4214 = icmp eq i32 %4213, -1342177280
  br i1 %4214, label %4225, label %4215

; <label>:4215                                    ; preds = %4198, %4180
  %4216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4217 = extractvalue %dx.types.CBufRet.f32 %4216, 2
  %4218 = extractvalue %dx.types.CBufRet.f32 %4216, 3
  %4219 = fmul fast float %4217, %71
  %4220 = fmul fast float %4218, %72
  %4221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4219, float %4220, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.ResRet.f32 %4221, 1
  %4224 = extractvalue %dx.types.ResRet.f32 %4221, 2
  br label %4225

; <label>:4225                                    ; preds = %4215, %4198
  %4226 = phi float [ %4222, %4215 ], [ 0.000000e+00, %4198 ]
  %4227 = phi float [ %4223, %4215 ], [ 0.000000e+00, %4198 ]
  %4228 = phi float [ %4224, %4215 ], [ 0.000000e+00, %4198 ]
  %4229 = call float @dx.op.binary.f32(i32 36, float %4227, float %4228)  ; FMin(a,b)
  %4230 = call float @dx.op.binary.f32(i32 36, float %4226, float %4229)  ; FMin(a,b)
  %4231 = fcmp fast ogt float %4230, 0.000000e+00
  br i1 %4231, label %4232, label %4407, !dx.controlflow.hints !88

; <label>:4232                                    ; preds = %4225
  %4233 = fmul fast float %4226, %4192
  %4234 = fmul fast float %4227, %4193
  %4235 = fmul fast float %4228, %4194
  %4236 = fsub fast float %4181, %2800
  %4237 = fsub fast float %4182, %2799
  %4238 = fsub fast float %4183, %2798
  %4239 = call float @dx.op.dot3.f32(i32 55, float %4236, float %4237, float %4238, float %4236, float %4237, float %4238)  ; Dot3(ax,ay,az,bx,by,bz)
  %4240 = call float @dx.op.unary.f32(i32 25, float %4239)  ; Rsqrt(value)
  %4241 = fmul fast float %4240, %4236
  %4242 = fmul fast float %4240, %4237
  %4243 = fmul fast float %4240, %4238
  %4244 = call float @dx.op.dot3.f32(i32 55, float %4181, float %4182, float %4183, float %2807, float %2808, float %2809)  ; Dot3(ax,ay,az,bx,by,bz)
  %4245 = call float @dx.op.dot3.f32(i32 55, float %2797, float %2796, float %2795, float %4241, float %4242, float %4243)  ; Dot3(ax,ay,az,bx,by,bz)
  %4246 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4247 = fmul fast float %4246, %4246
  %4248 = fmul fast float %4247, %4176
  %4249 = call float @dx.op.unary.f32(i32 7, float %4248)  ; Saturate(value)
  %4250 = fmul fast float %4249, %4246
  %4251 = call float @dx.op.dot3.f32(i32 55, float %2807, float %2808, float %2809, float %4241, float %4242, float %4243)  ; Dot3(ax,ay,az,bx,by,bz)
  %4252 = fmul fast float %4251, %4251
  %4253 = call float @dx.op.unary.f32(i32 6, float %4244)  ; FAbs(value)
  %4254 = fsub fast float 1.000000e+00, %2810
  %4255 = call float @dx.op.binary.f32(i32 35, float %4254, float 0x3F847AE140000000)  ; FMax(a,b)
  %4256 = fmul fast float %4255, %4255
  %4257 = fmul fast float %4256, %4256
  %4258 = fsub fast float 1.000000e+00, %4257
  %4259 = fmul fast float %2814, %2814
  %4260 = fmul fast float %4259, %4258
  %4261 = fadd fast float %4260, %4257
  %4262 = bitcast float %4261 to i32
  %4263 = ashr i32 %4262, 1
  %4264 = add nsw i32 %4263, 532487669
  %4265 = bitcast i32 %4264 to float
  %4266 = fadd fast float %4265, %2814
  %4267 = fmul fast float %4257, %4252
  %4268 = fsub fast float 1.000000e+00, %4252
  %4269 = fadd fast float %4268, %4267
  %4270 = fmul fast float %4253, %4253
  %4271 = fmul fast float %4270, %4258
  %4272 = fadd fast float %4271, %4257
  %4273 = bitcast float %4272 to i32
  %4274 = ashr i32 %4273, 1
  %4275 = add nsw i32 %4274, 532487669
  %4276 = bitcast i32 %4275 to float
  %4277 = fadd fast float %4276, %4253
  %4278 = fmul fast float %4269, %4269
  %4279 = fmul fast float %4278, %4266
  %4280 = fmul fast float %4279, %4277
  %4281 = fdiv fast float 0x3FF0A00000000000, %4280
  %4282 = fmul fast float %4281, %4257
  %4283 = call float @dx.op.unary.f32(i32 6, float %4245)  ; FAbs(value)
  %4284 = fsub fast float 1.000000e+00, %4283
  %4285 = bitcast float %4284 to i32
  %4286 = sitofp i32 %4285 to float
  %4287 = fmul fast float %4286, 5.000000e+00
  %4288 = fadd fast float %4287, 0xC1EFBF8940000000
  %4289 = fptosi float %4288 to i32
  %4290 = bitcast i32 %4289 to float
  %4291 = fsub fast float 1.000000e+00, %2801
  %4292 = fsub fast float 1.000000e+00, %2802
  %4293 = fsub fast float 1.000000e+00, %2812
  %4294 = fmul fast float %4290, %4291
  %4295 = fmul fast float %4290, %4292
  %4296 = fmul fast float %4290, %4293
  %4297 = fadd fast float %4294, %2801
  %4298 = fadd fast float %4295, %2802
  %4299 = fadd fast float %4296, %2812
  br i1 %4091, label %4300, label %4323

; <label>:4300                                    ; preds = %4232
  %4301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2178, float %4283, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4302 = extractvalue %dx.types.ResRet.f32 %4301, 0
  %4303 = extractvalue %dx.types.ResRet.f32 %4301, 1
  %4304 = extractvalue %dx.types.ResRet.f32 %4301, 2
  %4305 = fadd fast float %4302, -5.000000e-01
  %4306 = fadd fast float %4303, -5.000000e-01
  %4307 = fadd fast float %4304, -5.000000e-01
  %4308 = fmul fast float %2801, 4.000000e+00
  %4309 = fmul fast float %4308, %4291
  %4310 = fmul fast float %4309, %4305
  %4311 = fmul fast float %2802, 4.000000e+00
  %4312 = fmul fast float %4311, %4292
  %4313 = fmul fast float %4312, %4306
  %4314 = fmul fast float %2812, 4.000000e+00
  %4315 = fmul fast float %4314, %4293
  %4316 = fmul fast float %4315, %4307
  %4317 = fadd fast float %4310, %4297
  %4318 = fadd fast float %4313, %4298
  %4319 = fadd fast float %4316, %4299
  %4320 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4321 = call float @dx.op.unary.f32(i32 7, float %4318)  ; Saturate(value)
  %4322 = call float @dx.op.unary.f32(i32 7, float %4319)  ; Saturate(value)
  br label %4323

; <label>:4323                                    ; preds = %4300, %4232
  %4324 = phi float [ %4320, %4300 ], [ %4297, %4232 ]
  %4325 = phi float [ %4321, %4300 ], [ %4298, %4232 ]
  %4326 = phi float [ %4322, %4300 ], [ %4299, %4232 ]
  %4327 = fmul fast float %4244, 9.843750e-01
  %4328 = fadd fast float %4327, 7.812500e-03
  %4329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4328, float %4081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4330 = extractvalue %dx.types.ResRet.f32 %4329, 2
  %4331 = extractvalue %dx.types.ResRet.f32 %4329, 3
  %4332 = fmul fast float %4330, %2801
  %4333 = fmul fast float %4330, %2802
  %4334 = fmul fast float %4330, %2812
  %4335 = fadd fast float %4332, %4331
  %4336 = fadd fast float %4333, %4331
  %4337 = fadd fast float %4334, %4331
  br i1 %4091, label %4338, label %4361

; <label>:4338                                    ; preds = %4323
  %4339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2178, float %4244, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4340 = extractvalue %dx.types.ResRet.f32 %4339, 0
  %4341 = extractvalue %dx.types.ResRet.f32 %4339, 1
  %4342 = extractvalue %dx.types.ResRet.f32 %4339, 2
  %4343 = fadd fast float %4340, -5.000000e-01
  %4344 = fadd fast float %4341, -5.000000e-01
  %4345 = fadd fast float %4342, -5.000000e-01
  %4346 = fmul fast float %2801, 4.000000e+00
  %4347 = fmul fast float %4346, %4291
  %4348 = fmul fast float %4347, %4343
  %4349 = fmul fast float %2802, 4.000000e+00
  %4350 = fmul fast float %4349, %4292
  %4351 = fmul fast float %4350, %4344
  %4352 = fmul fast float %2812, 4.000000e+00
  %4353 = fmul fast float %4352, %4293
  %4354 = fmul fast float %4353, %4345
  %4355 = fadd fast float %4348, %4335
  %4356 = fadd fast float %4351, %4336
  %4357 = fadd fast float %4354, %4337
  %4358 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4359 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4360 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  br label %4361

; <label>:4361                                    ; preds = %4338, %4323
  %4362 = phi float [ %4358, %4338 ], [ %4335, %4323 ]
  %4363 = phi float [ %4359, %4338 ], [ %4336, %4323 ]
  %4364 = phi float [ %4360, %4338 ], [ %4337, %4323 ]
  %4365 = call float @dx.op.binary.f32(i32 35, float %4363, float %4364)  ; FMax(a,b)
  %4366 = call float @dx.op.binary.f32(i32 35, float %4362, float %4365)  ; FMax(a,b)
  %4367 = fsub fast float 1.000000e+00, %4366
  %4368 = fmul fast float %4324, %4282
  %4369 = fmul fast float %4325, %4282
  %4370 = fmul fast float %4326, %4282
  %4371 = fsub fast float 1.000000e+00, %4245
  %4372 = bitcast float %4371 to i32
  %4373 = sitofp i32 %4372 to float
  %4374 = fmul fast float %4373, 5.000000e+00
  %4375 = fadd fast float %4374, 0xC1EFBF8940000000
  %4376 = fptosi float %4375 to i32
  %4377 = bitcast i32 %4376 to float
  %4378 = fmul fast float %4377, %2177
  %4379 = fmul fast float %4367, %4378
  %4380 = fmul fast float %4379, %4141
  %4381 = fmul fast float %4379, %4142
  %4382 = fmul fast float %4379, %4143
  %4383 = fadd fast float %4380, %4368
  %4384 = fadd fast float %4381, %4369
  %4385 = fadd fast float %4382, %4370
  %4386 = fmul fast float %4250, %4233
  %4387 = fmul fast float %4386, %4367
  %4388 = fmul fast float %4250, %4234
  %4389 = fmul fast float %4388, %4367
  %4390 = fmul fast float %4250, %4235
  %4391 = fmul fast float %4390, %4367
  %4392 = fmul fast float %4386, %4383
  %4393 = fmul fast float %4388, %4384
  %4394 = fmul fast float %4390, %4385
  %4395 = fadd fast float %4387, %4125
  %4396 = fmul fast float %4395, %2198
  %4397 = fadd fast float %4389, %4126
  %4398 = fmul fast float %4397, %2198
  %4399 = fadd fast float %4391, %4127
  %4400 = fmul fast float %4399, %2198
  %4401 = fadd fast float %4392, %4168
  %4402 = fmul fast float %4401, %2198
  %4403 = fadd fast float %4393, %4171
  %4404 = fmul fast float %4403, %2198
  %4405 = fadd fast float %4394, %4174
  %4406 = fmul fast float %4405, %2198
  br label %4407

; <label>:4407                                    ; preds = %4361, %4225, %4118
  %4408 = phi float [ %4169, %4118 ], [ %4169, %4225 ], [ %4402, %4361 ]
  %4409 = phi float [ %4172, %4118 ], [ %4172, %4225 ], [ %4404, %4361 ]
  %4410 = phi float [ %4175, %4118 ], [ %4175, %4225 ], [ %4406, %4361 ]
  %4411 = phi float [ %4164, %4118 ], [ %4164, %4225 ], [ %4396, %4361 ]
  %4412 = phi float [ %4165, %4118 ], [ %4165, %4225 ], [ %4398, %4361 ]
  %4413 = phi float [ %4166, %4118 ], [ %4166, %4225 ], [ %4400, %4361 ]
  %4414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.i32 %4414, 0
  %4416 = icmp eq i32 %4415, 0
  br i1 %4416, label %4851, label %4417

; <label>:4417                                    ; preds = %4407
  %4418 = fptoui float %71 to i32
  %4419 = fptoui float %72 to i32
  %4420 = lshr i32 %4418, 4
  %4421 = lshr i32 %4419, 4
  %4422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4423 = extractvalue %dx.types.CBufRet.i32 %4422, 0
  %4424 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4421, i32 %4423, i32 %4420)  ; UMad(a,b,c)
  %4425 = add nsw i32 %4415, -1
  %4426 = call i32 @dx.op.binary.i32(i32 37, i32 %4425, i32 0)  ; IMax(a,b)
  %4427 = call float @dx.op.binary.f32(i32 35, float %66, float 0.000000e+00)  ; FMax(a,b)
  %4428 = fptoui float %4427 to i32
  %4429 = lshr i32 %4428, 5
  %4430 = call i32 @dx.op.binary.i32(i32 40, i32 %4429, i32 8191)  ; UMin(a,b)
  %4431 = shl i32 %4430, 2
  %4432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4431, i32 undef)  ; BufferLoad(srv,index,wot)
  %4433 = extractvalue %dx.types.ResRet.i32 %4432, 0
  %4434 = lshr i32 %4433, 16
  %4435 = and i32 %4433, 65535
  %4436 = lshr i32 %4433, 21
  %4437 = lshr i32 %4435, 5
  %4438 = call i32 @dx.op.binary.i32(i32 40, i32 %4437, i32 %4426)  ; UMin(a,b)
  %4439 = icmp ugt i32 %4436, %4438
  br i1 %4439, label %4851, label %4440

; <label>:4440                                    ; preds = %4417
  br label %4441

; <label>:4441                                    ; preds = %4841, %4440
  %4442 = phi i32 [ %4848, %4841 ], [ %4436, %4440 ]
  %4443 = phi float [ %4842, %4841 ], [ %4408, %4440 ]
  %4444 = phi float [ %4843, %4841 ], [ %4409, %4440 ]
  %4445 = phi float [ %4844, %4841 ], [ %4410, %4440 ]
  %4446 = phi float [ %4845, %4841 ], [ %4411, %4440 ]
  %4447 = phi float [ %4846, %4841 ], [ %4412, %4440 ]
  %4448 = phi float [ %4847, %4841 ], [ %4413, %4440 ]
  %4449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.i32 %4449, 0
  %4451 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4424, i32 %4450, i32 %4442)  ; UMad(a,b,c)
  %4452 = shl i32 %4451, 2
  %4453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4452, i32 undef)  ; BufferLoad(srv,index,wot)
  %4454 = extractvalue %dx.types.ResRet.i32 %4453, 0
  %4455 = shl i32 %4442, 5
  %4456 = sub nsw i32 %4434, %4455
  %4457 = call i32 @dx.op.binary.i32(i32 37, i32 %4456, i32 0)  ; IMax(a,b)
  %4458 = call i32 @dx.op.binary.i32(i32 38, i32 %4457, i32 31)  ; IMin(a,b)
  %4459 = sub nsw i32 1, %4434
  %4460 = add nsw i32 %4459, %4435
  %4461 = call i32 @dx.op.binary.i32(i32 37, i32 %4460, i32 0)  ; IMax(a,b)
  %4462 = call i32 @dx.op.binary.i32(i32 38, i32 %4461, i32 32)  ; IMin(a,b)
  %4463 = and i32 %4462, 31
  %4464 = shl i32 -1, %4463
  %4465 = xor i32 %4464, -1
  %4466 = and i32 %4458, 31
  %4467 = shl i32 %4465, %4466
  %4468 = icmp eq i32 %4462, 32
  %4469 = select i1 %4468, i32 -1, i32 %4467
  %4470 = and i32 %4469, %4454
  %4471 = icmp eq i32 %4470, 0
  br i1 %4471, label %4841, label %4472

; <label>:4472                                    ; preds = %4441
  br label %4473

; <label>:4473                                    ; preds = %4553, %4472
  %4474 = phi i32 [ %4485, %4553 ], [ %4470, %4472 ]
  %4475 = phi float [ %4554, %4553 ], [ %4443, %4472 ]
  %4476 = phi float [ %4555, %4553 ], [ %4444, %4472 ]
  %4477 = phi float [ %4556, %4553 ], [ %4445, %4472 ]
  %4478 = phi float [ %4557, %4553 ], [ %4446, %4472 ]
  %4479 = phi float [ %4558, %4553 ], [ %4447, %4472 ]
  %4480 = phi float [ %4559, %4553 ], [ %4448, %4472 ]
  %4481 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4474)  ; FirstbitLo(value)
  %4482 = add i32 %4481, %4455
  %4483 = and i32 %4481, 31
  %4484 = shl i32 1, %4483
  %4485 = xor i32 %4484, %4474
  %4486 = mul i32 %4482, 112
  %4487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4486, i32 undef)  ; BufferLoad(srv,index,wot)
  %4488 = extractvalue %dx.types.ResRet.f32 %4487, 0
  %4489 = extractvalue %dx.types.ResRet.f32 %4487, 1
  %4490 = extractvalue %dx.types.ResRet.f32 %4487, 2
  %4491 = or i32 %4486, 12
  %4492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4491, i32 undef)  ; BufferLoad(srv,index,wot)
  %4493 = extractvalue %dx.types.ResRet.f32 %4492, 0
  %4494 = add i32 %4486, 44
  %4495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4494, i32 undef)  ; BufferLoad(srv,index,wot)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 0
  %4497 = add i32 %4486, 48
  %4498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4497, i32 undef)  ; BufferLoad(srv,index,wot)
  %4499 = extractvalue %dx.types.ResRet.f32 %4498, 0
  %4500 = extractvalue %dx.types.ResRet.f32 %4498, 1
  %4501 = extractvalue %dx.types.ResRet.f32 %4498, 2
  %4502 = add i32 %4486, 80
  %4503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4502, i32 undef)  ; BufferLoad(srv,index,wot)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 1
  %4505 = extractvalue %dx.types.ResRet.f32 %4503, 2
  %4506 = call float @dx.op.dot3.f32(i32 55, float %4488, float %4489, float %4490, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4507 = select i1 %189, float %4504, float %4488
  %4508 = select i1 %189, float %4506, float %4489
  %4509 = select i1 %189, float %4505, float %4490
  %4510 = fsub fast float %4499, %118
  %4511 = fsub fast float %4500, %119
  %4512 = fsub fast float %4501, %120
  %4513 = call float @dx.op.dot3.f32(i32 55, float %4510, float %4511, float %4512, float %4510, float %4511, float %4512)  ; Dot3(ax,ay,az,bx,by,bz)
  %4514 = call float @dx.op.unary.f32(i32 24, float %4513)  ; Sqrt(value)
  %4515 = fdiv fast float 1.000000e+00, %4514
  %4516 = fmul fast float %4515, %4510
  %4517 = fmul fast float %4515, %4511
  %4518 = fmul fast float %4515, %4512
  %4519 = fadd fast float %4514, %4493
  %4520 = fdiv fast float 1.000000e+00, %4519
  %4521 = fmul float %4496, %4520
  %4522 = fmul float %4521, %4521
  %4523 = call float @dx.op.unary.f32(i32 7, float %4522)  ; Saturate(value)
  %4524 = and i32 %4484, %4470
  %4525 = icmp eq i32 %4524, 0
  br i1 %4525, label %4548, label %4526, !dx.controlflow.hints !89

; <label>:4526                                    ; preds = %4473
  %4527 = lshr i32 %4418, 5
  %4528 = lshr i32 %4419, 5
  %4529 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %4527, i32 %4528, i32 %4482, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4530 = extractvalue %dx.types.ResRet.i32 %4529, 0
  %4531 = and i32 %4530, 3
  %4532 = icmp eq i32 %4531, 0
  %4533 = select i1 %4532, float 1.000000e+00, float 0.000000e+00
  %4534 = icmp eq i32 %4531, 3
  br i1 %4534, label %4535, label %4548

; <label>:4535                                    ; preds = %4526
  %4536 = lshr i32 %4530, 10
  %4537 = and i32 %4536, 8160
  %4538 = and i32 %4419, 31
  %4539 = or i32 %4537, %4538
  %4540 = lshr i32 %4530, 1
  %4541 = and i32 %4540, 16352
  %4542 = and i32 %4418, 31
  %4543 = or i32 %4541, %4542
  %4544 = lshr i32 %4530, 23
  %4545 = and i32 %4544, 255
  %4546 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %4543, i32 %4539, i32 %4545, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4547 = extractvalue %dx.types.ResRet.f32 %4546, 0
  br label %4548

; <label>:4548                                    ; preds = %4535, %4526, %4473
  %4549 = phi float [ %4547, %4535 ], [ %4533, %4526 ], [ 0.000000e+00, %4473 ]
  %4550 = call float @dx.op.binary.f32(i32 36, float %4549, float %4549)  ; FMin(a,b)
  %4551 = call float @dx.op.binary.f32(i32 36, float %4549, float %4550)  ; FMin(a,b)
  %4552 = fcmp fast ogt float %4551, 0.000000e+00
  br i1 %4552, label %4561, label %4553, !dx.controlflow.hints !90

; <label>:4553                                    ; preds = %4797, %4548
  %4554 = phi float [ %4475, %4548 ], [ %4837, %4797 ]
  %4555 = phi float [ %4476, %4548 ], [ %4838, %4797 ]
  %4556 = phi float [ %4477, %4548 ], [ %4839, %4797 ]
  %4557 = phi float [ %4478, %4548 ], [ %4831, %4797 ]
  %4558 = phi float [ %4479, %4548 ], [ %4832, %4797 ]
  %4559 = phi float [ %4480, %4548 ], [ %4833, %4797 ]
  %4560 = icmp eq i32 %4474, %4484
  br i1 %4560, label %4840, label %4473

; <label>:4561                                    ; preds = %4548
  %4562 = fmul fast float %4549, %4507
  %4563 = fmul fast float %4549, %4508
  %4564 = fmul fast float %4549, %4509
  %4565 = fsub fast float %4501, %2600
  %4566 = fcmp fast ogt float %4565, 0.000000e+00
  %4567 = fsub fast float %120, %2600
  %4568 = fcmp fast ogt float %4567, 0.000000e+00
  %4569 = xor i1 %4568, %4566
  %4570 = fsub fast float %2600, %4501
  %4571 = fmul fast float %4570, 2.000000e+00
  %4572 = fadd fast float %4571, %4501
  %4573 = select i1 %4569, float %4501, float %4572
  %4574 = fsub fast float %4573, %120
  %4575 = call float @dx.op.dot3.f32(i32 55, float %4510, float %4511, float %4574, float %4510, float %4511, float %4574)  ; Dot3(ax,ay,az,bx,by,bz)
  %4576 = call float @dx.op.unary.f32(i32 25, float %4575)  ; Rsqrt(value)
  %4577 = fmul fast float %4576, %4510
  %4578 = fmul fast float %4576, %4511
  %4579 = fmul fast float %4576, %4574
  %4580 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2608)  ; Dot3(ax,ay,az,bx,by,bz)
  %4581 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4577, float %4578, float %4579)  ; Dot3(ax,ay,az,bx,by,bz)
  %4582 = fdiv fast float 1.000000e+00, %4581
  %4583 = fmul fast float %4582, %4580
  %4584 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4567, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4585 = fcmp fast ogt float %4584, 0.000000e+00
  %4586 = fcmp fast olt float %4584, 0.000000e+00
  %4587 = zext i1 %4585 to i32
  %4588 = zext i1 %4586 to i32
  %4589 = sub nsw i32 %4587, %4588
  %4590 = sitofp i32 %4589 to float
  %4591 = fsub fast float %4573, %2600
  %4592 = call float @dx.op.dot3.f32(i32 55, float %4510, float %4511, float %4591, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4593 = fcmp fast ogt float %4592, 0.000000e+00
  %4594 = fcmp fast olt float %4592, 0.000000e+00
  %4595 = zext i1 %4593 to i32
  %4596 = zext i1 %4594 to i32
  %4597 = sub nsw i32 %4595, %4596
  %4598 = sitofp i32 %4597 to float
  %4599 = fcmp fast une float %4590, %4598
  br i1 %4599, label %4600, label %4610

; <label>:4600                                    ; preds = %4561
  %4601 = fmul fast float %4583, %4579
  %4602 = fmul fast float %4583, %4578
  %4603 = fmul fast float %4583, %4577
  %4604 = fmul fast float %4603, %4603
  %4605 = fmul fast float %4602, %4602
  %4606 = fadd fast float %4604, %4605
  %4607 = fmul fast float %4601, %4601
  %4608 = fadd fast float %4606, %4607
  %4609 = call float @dx.op.unary.f32(i32 24, float %4608)  ; Sqrt(value)
  br label %4622

; <label>:4610                                    ; preds = %4561
  %4611 = icmp slt i32 %4589, 0
  br i1 %4611, label %4612, label %4622

; <label>:4612                                    ; preds = %4610
  %4613 = fsub fast float %118, %4499
  %4614 = fsub fast float %119, %4500
  %4615 = fsub fast float %120, %4573
  %4616 = fmul fast float %4613, %4613
  %4617 = fmul fast float %4614, %4614
  %4618 = fadd fast float %4616, %4617
  %4619 = fmul fast float %4615, %4615
  %4620 = fadd fast float %4618, %4619
  %4621 = call float @dx.op.unary.f32(i32 24, float %4620)  ; Sqrt(value)
  br label %4622

; <label>:4622                                    ; preds = %4612, %4610, %4600
  %4623 = phi float [ %4609, %4600 ], [ %4621, %4612 ], [ 0.000000e+00, %4610 ]
  %4624 = and i1 %4568, %4566
  %4625 = fsub fast float -0.000000e+00, %4623
  %4626 = select i1 %4624, float -0.000000e+00, float %4625
  %4627 = fmul fast float %2601, 0x3FF7154760000000
  %4628 = fmul fast float %4627, %4626
  %4629 = fmul fast float %2602, 0x3FF7154760000000
  %4630 = fmul fast float %4629, %4626
  %4631 = fmul fast float %2603, 0x3FF7154760000000
  %4632 = fmul fast float %4631, %4626
  %4633 = call float @dx.op.unary.f32(i32 21, float %4628)  ; Exp(value)
  %4634 = call float @dx.op.unary.f32(i32 21, float %4630)  ; Exp(value)
  %4635 = call float @dx.op.unary.f32(i32 21, float %4632)  ; Exp(value)
  %4636 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4637 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4638 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4639 = fmul fast float %4562, %4636
  %4640 = fmul fast float %4563, %4637
  %4641 = fmul fast float %4564, %4638
  %4642 = fsub fast float %4516, %2800
  %4643 = fsub fast float %4517, %2799
  %4644 = fsub fast float %4518, %2798
  %4645 = call float @dx.op.dot3.f32(i32 55, float %4642, float %4643, float %4644, float %4642, float %4643, float %4644)  ; Dot3(ax,ay,az,bx,by,bz)
  %4646 = call float @dx.op.unary.f32(i32 25, float %4645)  ; Rsqrt(value)
  %4647 = fmul fast float %4646, %4642
  %4648 = fmul fast float %4646, %4643
  %4649 = fmul fast float %4646, %4644
  %4650 = call float @dx.op.dot3.f32(i32 55, float %4516, float %4517, float %4518, float %2807, float %2808, float %2809)  ; Dot3(ax,ay,az,bx,by,bz)
  %4651 = call float @dx.op.dot3.f32(i32 55, float %2797, float %2796, float %2795, float %4647, float %4648, float %4649)  ; Dot3(ax,ay,az,bx,by,bz)
  %4652 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4653 = fmul fast float %4652, %4523
  %4654 = fmul fast float %4652, %4652
  %4655 = fmul fast float %4654, %4176
  %4656 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4657 = fmul fast float %4653, %4656
  %4658 = bitcast float %4513 to i32
  %4659 = ashr i32 %4658, 1
  %4660 = sub nsw i32 1597463007, %4659
  %4661 = bitcast i32 %4660 to float
  %4662 = fmul fast float %4661, %4510
  %4663 = fmul fast float %4661, %4511
  %4664 = fmul fast float %4661, %4512
  %4665 = fsub fast float %4662, %2800
  %4666 = fsub fast float %4663, %2799
  %4667 = fsub fast float %4664, %2798
  %4668 = call float @dx.op.dot3.f32(i32 55, float %4665, float %4666, float %4667, float %4665, float %4666, float %4667)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = call float @dx.op.unary.f32(i32 25, float %4668)  ; Rsqrt(value)
  %4670 = fmul fast float %4665, %4669
  %4671 = fmul fast float %4666, %4669
  %4672 = fmul fast float %4667, %4669
  %4673 = call float @dx.op.dot3.f32(i32 55, float %2807, float %2808, float %2809, float %4670, float %4671, float %4672)  ; Dot3(ax,ay,az,bx,by,bz)
  %4674 = fmul fast float %4673, %4673
  %4675 = call float @dx.op.unary.f32(i32 6, float %4650)  ; FAbs(value)
  %4676 = fsub fast float 1.000000e+00, %2810
  %4677 = call float @dx.op.binary.f32(i32 35, float %4676, float 0x3F847AE140000000)  ; FMax(a,b)
  %4678 = fmul fast float %4677, %4677
  %4679 = fmul fast float %4678, %4678
  %4680 = fsub fast float 1.000000e+00, %4679
  %4681 = fmul fast float %2814, %2814
  %4682 = fmul fast float %4681, %4680
  %4683 = fadd fast float %4682, %4679
  %4684 = bitcast float %4683 to i32
  %4685 = ashr i32 %4684, 1
  %4686 = add nsw i32 %4685, 532487669
  %4687 = bitcast i32 %4686 to float
  %4688 = fadd fast float %4687, %2814
  %4689 = fmul fast float %4679, %4674
  %4690 = fsub fast float 1.000000e+00, %4674
  %4691 = fadd fast float %4690, %4689
  %4692 = fmul fast float %4675, %4675
  %4693 = fmul fast float %4692, %4680
  %4694 = fadd fast float %4693, %4679
  %4695 = bitcast float %4694 to i32
  %4696 = ashr i32 %4695, 1
  %4697 = add nsw i32 %4696, 532487669
  %4698 = bitcast i32 %4697 to float
  %4699 = fadd fast float %4698, %4675
  %4700 = fmul fast float %4691, %4691
  %4701 = fmul fast float %4700, %4688
  %4702 = fmul fast float %4701, %4699
  %4703 = fdiv fast float 1.000000e+00, %4702
  %4704 = bitcast float %4679 to i32
  %4705 = sitofp i32 %4704 to float
  %4706 = fmul fast float %4705, 0x3FE7F73180000000
  %4707 = fadd fast float %4706, 0x41AFE27C40000000
  %4708 = fptosi float %4707 to i32
  %4709 = bitcast i32 %4708 to float
  %4710 = fmul fast float %4496, 0x3FD80E9D60000000
  %4711 = fmul fast float %4710, %4661
  %4712 = fadd fast float %4709, %4711
  %4713 = bitcast float %4712 to i32
  %4714 = sub nsw i32 2129859010, %4713
  %4715 = bitcast i32 %4714 to float
  %4716 = fmul fast float %4679, %4703
  %4717 = fmul fast float %4716, %4709
  %4718 = fmul fast float %4717, %4715
  %4719 = call float @dx.op.unary.f32(i32 6, float %4651)  ; FAbs(value)
  %4720 = fsub fast float 1.000000e+00, %4719
  %4721 = bitcast float %4720 to i32
  %4722 = sitofp i32 %4721 to float
  %4723 = fmul fast float %4722, 5.000000e+00
  %4724 = fadd fast float %4723, 0xC1EFBF8940000000
  %4725 = fptosi float %4724 to i32
  %4726 = bitcast i32 %4725 to float
  %4727 = fsub fast float 1.000000e+00, %2801
  %4728 = fsub fast float 1.000000e+00, %2802
  %4729 = fsub fast float 1.000000e+00, %2812
  %4730 = fmul fast float %4726, %4727
  %4731 = fmul fast float %4726, %4728
  %4732 = fmul fast float %4726, %4729
  %4733 = fadd fast float %4730, %2801
  %4734 = fadd fast float %4731, %2802
  %4735 = fadd fast float %4732, %2812
  br i1 %4091, label %4736, label %4759

; <label>:4736                                    ; preds = %4622
  %4737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2178, float %4719, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4738 = extractvalue %dx.types.ResRet.f32 %4737, 0
  %4739 = extractvalue %dx.types.ResRet.f32 %4737, 1
  %4740 = extractvalue %dx.types.ResRet.f32 %4737, 2
  %4741 = fadd fast float %4738, -5.000000e-01
  %4742 = fadd fast float %4739, -5.000000e-01
  %4743 = fadd fast float %4740, -5.000000e-01
  %4744 = fmul fast float %2801, 4.000000e+00
  %4745 = fmul fast float %4744, %4727
  %4746 = fmul fast float %4745, %4741
  %4747 = fmul fast float %2802, 4.000000e+00
  %4748 = fmul fast float %4747, %4728
  %4749 = fmul fast float %4748, %4742
  %4750 = fmul fast float %2812, 4.000000e+00
  %4751 = fmul fast float %4750, %4729
  %4752 = fmul fast float %4751, %4743
  %4753 = fadd fast float %4746, %4733
  %4754 = fadd fast float %4749, %4734
  %4755 = fadd fast float %4752, %4735
  %4756 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4757 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4758 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  br label %4759

; <label>:4759                                    ; preds = %4736, %4622
  %4760 = phi float [ %4756, %4736 ], [ %4733, %4622 ]
  %4761 = phi float [ %4757, %4736 ], [ %4734, %4622 ]
  %4762 = phi float [ %4758, %4736 ], [ %4735, %4622 ]
  %4763 = fmul fast float %4650, 9.843750e-01
  %4764 = fadd fast float %4763, 7.812500e-03
  %4765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4764, float %4081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4766 = extractvalue %dx.types.ResRet.f32 %4765, 2
  %4767 = extractvalue %dx.types.ResRet.f32 %4765, 3
  %4768 = fmul fast float %4766, %2801
  %4769 = fmul fast float %4766, %2802
  %4770 = fmul fast float %4766, %2812
  %4771 = fadd fast float %4768, %4767
  %4772 = fadd fast float %4769, %4767
  %4773 = fadd fast float %4770, %4767
  br i1 %4091, label %4774, label %4797

; <label>:4774                                    ; preds = %4759
  %4775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2178, float %4650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4776 = extractvalue %dx.types.ResRet.f32 %4775, 0
  %4777 = extractvalue %dx.types.ResRet.f32 %4775, 1
  %4778 = extractvalue %dx.types.ResRet.f32 %4775, 2
  %4779 = fadd fast float %4776, -5.000000e-01
  %4780 = fadd fast float %4777, -5.000000e-01
  %4781 = fadd fast float %4778, -5.000000e-01
  %4782 = fmul fast float %2801, 4.000000e+00
  %4783 = fmul fast float %4782, %4727
  %4784 = fmul fast float %4783, %4779
  %4785 = fmul fast float %2802, 4.000000e+00
  %4786 = fmul fast float %4785, %4728
  %4787 = fmul fast float %4786, %4780
  %4788 = fmul fast float %2812, 4.000000e+00
  %4789 = fmul fast float %4788, %4729
  %4790 = fmul fast float %4789, %4781
  %4791 = fadd fast float %4784, %4771
  %4792 = fadd fast float %4787, %4772
  %4793 = fadd fast float %4790, %4773
  %4794 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4795 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4796 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  br label %4797

; <label>:4797                                    ; preds = %4774, %4759
  %4798 = phi float [ %4794, %4774 ], [ %4771, %4759 ]
  %4799 = phi float [ %4795, %4774 ], [ %4772, %4759 ]
  %4800 = phi float [ %4796, %4774 ], [ %4773, %4759 ]
  %4801 = call float @dx.op.binary.f32(i32 35, float %4799, float %4800)  ; FMax(a,b)
  %4802 = call float @dx.op.binary.f32(i32 35, float %4798, float %4801)  ; FMax(a,b)
  %4803 = fsub fast float 1.000000e+00, %4802
  %4804 = fmul fast float %4760, %4718
  %4805 = fmul fast float %4761, %4718
  %4806 = fmul fast float %4762, %4718
  %4807 = fsub fast float 1.000000e+00, %4651
  %4808 = bitcast float %4807 to i32
  %4809 = sitofp i32 %4808 to float
  %4810 = fmul fast float %4809, 5.000000e+00
  %4811 = fadd fast float %4810, 0xC1EFBF8940000000
  %4812 = fptosi float %4811 to i32
  %4813 = bitcast i32 %4812 to float
  %4814 = fmul fast float %4813, %2177
  %4815 = fmul fast float %4803, %4814
  %4816 = fmul fast float %4815, %4141
  %4817 = fmul fast float %4815, %4142
  %4818 = fmul fast float %4815, %4143
  %4819 = fadd fast float %4816, %4804
  %4820 = fadd fast float %4817, %4805
  %4821 = fadd fast float %4818, %4806
  %4822 = fmul fast float %4639, %2198
  %4823 = fmul fast float %4822, %4657
  %4824 = fmul fast float %4823, %4803
  %4825 = fmul fast float %4640, %2198
  %4826 = fmul fast float %4825, %4657
  %4827 = fmul fast float %4826, %4803
  %4828 = fmul fast float %4641, %2198
  %4829 = fmul fast float %4828, %4657
  %4830 = fmul fast float %4829, %4803
  %4831 = fadd fast float %4824, %4478
  %4832 = fadd fast float %4827, %4479
  %4833 = fadd fast float %4830, %4480
  %4834 = fmul fast float %4823, %4819
  %4835 = fmul fast float %4826, %4820
  %4836 = fmul fast float %4829, %4821
  %4837 = fadd fast float %4834, %4475
  %4838 = fadd fast float %4835, %4476
  %4839 = fadd fast float %4836, %4477
  br label %4553

; <label>:4840                                    ; preds = %4553
  br label %4841

; <label>:4841                                    ; preds = %4840, %4441
  %4842 = phi float [ %4443, %4441 ], [ %4554, %4840 ]
  %4843 = phi float [ %4444, %4441 ], [ %4555, %4840 ]
  %4844 = phi float [ %4445, %4441 ], [ %4556, %4840 ]
  %4845 = phi float [ %4446, %4441 ], [ %4557, %4840 ]
  %4846 = phi float [ %4447, %4441 ], [ %4558, %4840 ]
  %4847 = phi float [ %4448, %4441 ], [ %4559, %4840 ]
  %4848 = add i32 %4442, 1
  %4849 = icmp ugt i32 %4848, %4438
  br i1 %4849, label %4850, label %4441

; <label>:4850                                    ; preds = %4841
  br label %4851

; <label>:4851                                    ; preds = %4850, %4417, %4407
  %4852 = phi float [ %4408, %4407 ], [ %4408, %4417 ], [ %4842, %4850 ]
  %4853 = phi float [ %4409, %4407 ], [ %4409, %4417 ], [ %4843, %4850 ]
  %4854 = phi float [ %4410, %4407 ], [ %4410, %4417 ], [ %4844, %4850 ]
  %4855 = phi float [ %4411, %4407 ], [ %4411, %4417 ], [ %4845, %4850 ]
  %4856 = phi float [ %4412, %4407 ], [ %4412, %4417 ], [ %4846, %4850 ]
  %4857 = phi float [ %4413, %4407 ], [ %4413, %4417 ], [ %4847, %4850 ]
  %4858 = call float @dx.op.unary.f32(i32 24, float %2804)  ; Sqrt(value)
  %4859 = call float @dx.op.unary.f32(i32 24, float %2805)  ; Sqrt(value)
  %4860 = call float @dx.op.unary.f32(i32 24, float %2806)  ; Sqrt(value)
  %4861 = fmul fast float %4858, %4855
  %4862 = fmul fast float %4859, %4856
  %4863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4864 = extractvalue %dx.types.CBufRet.f32 %4863, 0
  br i1 %189, label %4865, label %4885

; <label>:4865                                    ; preds = %4851
  %4866 = fadd fast float %4857, %2175
  %4867 = fmul fast float %4866, %2176
  %4868 = fsub fast float 1.000000e+00, %2176
  %4869 = call float @dx.op.unary.f32(i32 7, float %4868)  ; Saturate(value)
  %4870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.f32 %4870, 3
  %4872 = fmul fast float %4871, %4869
  %4873 = fadd fast float %4872, %4867
  %4874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.f32 %4874, 0
  %4876 = fmul fast float %4875, %4147
  %4877 = fsub fast float %4873, %4876
  %4878 = fadd fast float %4862, %4861
  %4879 = fmul fast float %4864, %4878
  %4880 = extractvalue %dx.types.CBufRet.f32 %4870, 1
  %4881 = fsub fast float %4877, %4880
  %4882 = extractvalue %dx.types.CBufRet.f32 %4870, 2
  %4883 = fmul fast float %4881, %4882
  %4884 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  br label %4901

; <label>:4885                                    ; preds = %4851
  %4886 = fmul fast float %4860, %4857
  %4887 = fmul fast float %4864, %4861
  %4888 = fmul fast float %4864, %4862
  %4889 = fmul fast float %4886, %4864
  %4890 = add i32 %44, 196
  %4891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4890, i32 undef)  ; BufferLoad(srv,index,wot)
  %4892 = extractvalue %dx.types.ResRet.i32 %4891, 0
  %4893 = and i32 %4892, 32
  %4894 = icmp eq i32 %4893, 0
  br i1 %4894, label %4901, label %4895

; <label>:4895                                    ; preds = %4885
  %4896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4897 = extractvalue %dx.types.CBufRet.f32 %4896, 0
  %4898 = fmul fast float %4897, 0x3FE99999A0000000
  %4899 = fadd fast float %4897, %4887
  %4900 = fadd fast float %4898, %4889
  br label %4901

; <label>:4901                                    ; preds = %4895, %4885, %4865
  %4902 = phi float [ %4879, %4865 ], [ %4899, %4895 ], [ %4887, %4885 ]
  %4903 = phi float [ %4884, %4865 ], [ %4888, %4895 ], [ %4888, %4885 ]
  %4904 = phi float [ 1.000000e+00, %4865 ], [ %4900, %4895 ], [ %4889, %4885 ]
  %4905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4906 = extractvalue %dx.types.CBufRet.f32 %4905, 0
  %4907 = fmul fast float %4906, %4853
  %4908 = fmul fast float %4906, %4854
  %4909 = fadd fast float %4853, %4852
  %4910 = select i1 %189, float %4909, float %4852
  %4911 = fmul float %4910, %4906
  %4912 = select i1 %189, float 0.000000e+00, float %4907
  %4913 = select i1 %189, float 0.000000e+00, float %4908
  %4914 = fmul fast float %4902, %4858
  %4915 = fmul fast float %4903, %4859
  %4916 = fmul fast float %4904, %4860
  %4917 = fadd fast float %4911, %4914
  %4918 = fadd fast float %4912, %4915
  %4919 = fadd fast float %4913, %4916
  %4920 = select i1 %189, float %4903, float %4918
  %4921 = select i1 %189, float %4904, float %4919
  %4922 = call float @dx.op.binary.f32(i32 36, float %4917, float 3.225500e+04)  ; FMin(a,b)
  %4923 = call float @dx.op.binary.f32(i32 36, float %4920, float 3.225500e+04)  ; FMin(a,b)
  %4924 = call float @dx.op.binary.f32(i32 36, float %4921, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4922)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4923)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4924)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!57 = !{[32 x i32] [i32 30, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !80}
!59 = !{!60, !78, null}
!60 = !{!61, !64, !66, !68, !70, !71, !72, !74, !76, !77}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, !65}
!65 = !{i32 3, i32 2}
!66 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 2, i8 0, !67}
!67 = !{i32 3, i32 15}
!68 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 3, i8 0, !69}
!69 = !{i32 3, i32 7}
!70 = !{i32 4, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 4, i8 0, !69}
!71 = !{i32 5, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 5, i8 0, !67}
!72 = !{i32 6, !"NORMAL_TRANSFORM", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!73 = !{i32 1}
!74 = !{i32 7, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 7, i8 0, !75}
!75 = !{i32 3, i32 1}
!76 = !{i32 8, !"TRANSIENT_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 7, i8 1, !75}
!77 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!78 = !{!79}
!79 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!80 = !{i32 0, i64 24}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}

