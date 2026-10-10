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
; shader hash: c96cf2cd0966cea5eaaa117cc15993d5
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
  br i1 %277, label %738, label %278

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
  %725 = add i32 %44, 64
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 255
  %729 = uitofp i32 %728 to float
  %730 = lshr i32 %727, 8
  %731 = and i32 %730, 255
  %732 = uitofp i32 %731 to float
  %733 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %734 = fmul fast float %732, %733
  %735 = fadd fast float %734, %729
  %736 = fmul fast float %735, 0x3F70101020000000
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  br label %738

; <label>:738                                     ; preds = %721, %188
  %739 = phi float [ %675, %721 ], [ 0.000000e+00, %188 ]
  %740 = phi float [ %676, %721 ], [ 0.000000e+00, %188 ]
  %741 = phi float [ %594, %721 ], [ 0.000000e+00, %188 ]
  %742 = phi float [ %595, %721 ], [ 0.000000e+00, %188 ]
  %743 = phi float [ %596, %721 ], [ 0.000000e+00, %188 ]
  %744 = phi float [ %722, %721 ], [ 0.000000e+00, %188 ]
  %745 = phi float [ %723, %721 ], [ 0.000000e+00, %188 ]
  %746 = phi float [ %724, %721 ], [ 0.000000e+00, %188 ]
  %747 = phi float [ %580, %721 ], [ 0.000000e+00, %188 ]
  %748 = phi float [ 1.000000e+00, %721 ], [ 0.000000e+00, %188 ]
  %749 = phi float [ %674, %721 ], [ 0.000000e+00, %188 ]
  %750 = phi float [ %677, %721 ], [ 0.000000e+00, %188 ]
  %751 = phi float [ %737, %721 ], [ 0.000000e+00, %188 ]
  %752 = icmp ult i32 %269, 2
  %753 = add i32 %44, 40
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = add i32 %44, 44
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = or i32 %758, %755
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %1695, label %761

; <label>:761                                     ; preds = %738
  %762 = add i32 %44, 172
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = lshr i32 %764, 16
  %766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %765)  ; LegacyF16ToF32(value)
  %767 = fmul fast float %766, 0x3F50624DE0000000
  %768 = add i32 %44, 72
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = lshr i32 %770, 16
  %772 = and i32 %771, 255
  %773 = lshr i32 %770, 24
  %774 = add i32 %44, 180
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = and i32 %776, 65535
  %778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %777)  ; LegacyF16ToF32(value)
  %779 = lshr i32 %776, 16
  %780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %779)  ; LegacyF16ToF32(value)
  %781 = add i32 %44, 48
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = lshr i32 %783, 22
  %785 = shl nuw nsw i32 %784, 5
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = shl i32 %783, 4
  %788 = and i32 %787, 32752
  %789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %788)  ; LegacyF16ToF32(value)
  %790 = lshr i32 %783, 7
  %791 = and i32 %790, 32752
  %792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %791)  ; LegacyF16ToF32(value)
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 3
  %795 = fmul fast float %794, 1.000000e+03
  %796 = fmul fast float %262, %795
  %797 = call float @dx.op.unary.f32(i32 22, float %796)  ; Frc(value)
  %798 = fadd fast float %797, %252
  %799 = fmul fast float %263, %795
  %800 = call float @dx.op.unary.f32(i32 22, float %799)  ; Frc(value)
  %801 = fadd fast float %800, %254
  %802 = fmul fast float %767, %795
  %803 = call float @dx.op.unary.f32(i32 22, float %802)  ; Frc(value)
  %804 = fmul fast float %803, 0x401921FB60000000
  %805 = fadd fast float %804, %786
  %806 = call float @dx.op.unary.f32(i32 13, float %805)  ; Sin(value)
  %807 = call float @dx.op.unary.f32(i32 12, float %805)  ; Cos(value)
  %808 = fsub fast float -0.000000e+00, %806
  %809 = fadd fast float %61, -5.000000e-01
  %810 = fadd fast float %62, -5.000000e-01
  %811 = fmul fast float %778, %809
  %812 = fmul fast float %780, %810
  %813 = fadd fast float %811, 5.000000e-01
  %814 = fadd fast float %812, 5.000000e-01
  %815 = fmul fast float %789, %813
  %816 = fmul fast float %792, %814
  %817 = fmul fast float %807, %815
  %818 = call float @dx.op.tertiary.f32(i32 46, float %808, float %816, float %817)  ; FMad(a,b,c)
  %819 = fmul fast float %806, %815
  %820 = call float @dx.op.tertiary.f32(i32 46, float %807, float %816, float %819)  ; FMad(a,b,c)
  %821 = fadd fast float %798, %818
  %822 = fadd fast float %801, %820
  %823 = icmp ugt i32 %772, 1
  %824 = icmp ugt i32 %770, 33554431
  %825 = or i1 %824, %823
  br i1 %825, label %826, label %851

; <label>:826                                     ; preds = %761
  %827 = add i32 %44, 148
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = lshr i32 %829, 16
  %831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %830)  ; LegacyF16ToF32(value)
  %832 = fmul fast float %794, %831
  %833 = call float @dx.op.unary.f32(i32 22, float %832)  ; Frc(value)
  %834 = mul nuw nsw i32 %772, %773
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %833, %835
  %837 = call float @dx.op.unary.f32(i32 27, float %836)  ; Round_ni(value)
  %838 = fptoui float %837 to i32
  %839 = urem i32 %838, %772
  %840 = udiv i32 %838, %773
  %841 = call float @dx.op.unary.f32(i32 22, float %821)  ; Frc(value)
  %842 = call float @dx.op.unary.f32(i32 22, float %822)  ; Frc(value)
  %843 = uitofp i32 %839 to float
  %844 = uitofp i32 %840 to float
  %845 = fadd fast float %841, %843
  %846 = fadd fast float %842, %844
  %847 = uitofp i32 %772 to float
  %848 = uitofp i32 %773 to float
  %849 = fdiv fast float %845, %847
  %850 = fdiv fast float %846, %848
  br label %851

; <label>:851                                     ; preds = %826, %761
  %852 = phi float [ %849, %826 ], [ %821, %761 ]
  %853 = phi float [ %850, %826 ], [ %822, %761 ]
  %854 = and i32 %755, 16777216
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %965, label %856

; <label>:856                                     ; preds = %851
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 0
  %859 = extractvalue %dx.types.CBufRet.f32 %857, 1
  %860 = extractvalue %dx.types.CBufRet.f32 %857, 2
  %861 = fadd fast float %858, %118
  %862 = fadd fast float %859, %119
  %863 = fadd fast float %860, %120
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = call float @dx.op.unary.f32(i32 7, float %865)  ; Saturate(value)
  %867 = icmp eq i32 %43, 65535
  br i1 %867, label %962, label %868

; <label>:868                                     ; preds = %856
  %869 = lshr i32 %43, 1
  %870 = shl i32 %869, 2
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = and i32 %43, 1
  %874 = icmp ne i32 %873, 0
  %875 = lshr i32 %872, 16
  %876 = and i32 %872, 65535
  %877 = select i1 %874, i32 %875, i32 %876
  %878 = icmp eq i32 %877, 65535
  br i1 %878, label %958, label %879

; <label>:879                                     ; preds = %868
  %880 = mul nuw nsw i32 %877, 40
  %881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %880, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = extractvalue %dx.types.ResRet.f32 %881, 1
  %884 = extractvalue %dx.types.ResRet.f32 %881, 2
  %885 = add nuw nsw i32 %880, 12
  %886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.f32 %886, 0
  %888 = extractvalue %dx.types.ResRet.f32 %886, 1
  %889 = extractvalue %dx.types.ResRet.f32 %886, 2
  %890 = add nuw nsw i32 %880, 24
  %891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %890, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = extractvalue %dx.types.ResRet.f32 %891, 1
  %894 = extractvalue %dx.types.ResRet.f32 %891, 2
  %895 = add nuw nsw i32 %880, 36
  %896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = fsub fast float %861, %882
  %899 = fsub fast float %862, %883
  %900 = fsub fast float %863, %884
  %901 = fmul fast float %897, %898
  %902 = fmul fast float %897, %899
  %903 = fmul fast float %897, %900
  %904 = call float @dx.op.unary.f32(i32 27, float %901)  ; Round_ni(value)
  %905 = call float @dx.op.unary.f32(i32 27, float %902)  ; Round_ni(value)
  %906 = call float @dx.op.unary.f32(i32 27, float %903)  ; Round_ni(value)
  %907 = fadd fast float %904, 5.000000e-01
  %908 = fadd fast float %905, 5.000000e-01
  %909 = fadd fast float %906, 5.000000e-01
  %910 = fmul fast float %907, %887
  %911 = fmul fast float %908, %888
  %912 = fmul fast float %909, %889
  %913 = shl i32 %43, 2
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = add i32 %915, 0
  %917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %916, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %918 = call float @dx.op.unary.f32(i32 22, float %910)  ; Frc(value)
  %919 = call float @dx.op.unary.f32(i32 22, float %911)  ; Frc(value)
  %920 = call float @dx.op.unary.f32(i32 22, float %912)  ; Frc(value)
  %921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %917, %dx.types.Handle %40, float %918, float %919, float %920, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %922 = extractvalue %dx.types.ResRet.f32 %921, 0
  %923 = extractvalue %dx.types.ResRet.f32 %921, 1
  %924 = extractvalue %dx.types.ResRet.f32 %921, 2
  %925 = fmul fast float %922, 1.023000e+03
  %926 = fmul fast float %923, 1.023000e+03
  %927 = fmul fast float %924, 1.023000e+03
  %928 = fadd fast float %925, 5.000000e-01
  %929 = fadd fast float %926, 5.000000e-01
  %930 = fadd fast float %927, 5.000000e-01
  %931 = call float @dx.op.unary.f32(i32 27, float %928)  ; Round_ni(value)
  %932 = call float @dx.op.unary.f32(i32 27, float %929)  ; Round_ni(value)
  %933 = call float @dx.op.unary.f32(i32 27, float %930)  ; Round_ni(value)
  %934 = fsub fast float %901, %904
  %935 = fsub fast float %902, %905
  %936 = fsub fast float %903, %906
  %937 = fmul fast float %934, 7.500000e-01
  %938 = fmul fast float %935, 7.500000e-01
  %939 = fmul fast float %936, 7.500000e-01
  %940 = fadd fast float %904, 1.250000e-01
  %941 = fadd fast float %940, %937
  %942 = fadd fast float %941, %931
  %943 = fadd fast float %905, 1.250000e-01
  %944 = fadd fast float %943, %938
  %945 = fadd fast float %944, %932
  %946 = fadd fast float %906, 1.250000e-01
  %947 = fadd fast float %946, %939
  %948 = fadd fast float %947, %933
  %949 = fmul fast float %942, %892
  %950 = fmul fast float %945, %893
  %951 = fmul fast float %948, %894
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = add i32 %953, 0
  %955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %954, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %955, %dx.types.Handle %38, float %949, float %950, float %951, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  br label %958

; <label>:958                                     ; preds = %879, %868
  %959 = phi float [ %957, %879 ], [ -1.000000e+00, %868 ]
  %960 = fadd fast float %959, %866
  %961 = call float @dx.op.unary.f32(i32 7, float %960)  ; Saturate(value)
  br label %962

; <label>:962                                     ; preds = %958, %856
  %963 = phi float [ %961, %958 ], [ %866, %856 ]
  %964 = fmul fast float %963, %63
  br label %965

; <label>:965                                     ; preds = %962, %851
  %966 = phi float [ %964, %962 ], [ %63, %851 ]
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = and i32 %968, 256
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %1017, label %971

; <label>:971                                     ; preds = %965
  %972 = add i32 %44, 236
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = add i32 %974, 0
  %976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %975, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %977 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %976, %dx.types.Handle %68, float %852, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %978 = extractvalue %dx.types.ResRet.f32 %977, 0
  %979 = add i32 %44, 84
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = shl i32 %981, 4
  %983 = and i32 %982, 32752
  %984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %983)  ; LegacyF16ToF32(value)
  %985 = lshr i32 %981, 7
  %986 = and i32 %985, 32752
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = fsub fast float 1.000000e+00, %966
  %989 = call float @dx.op.binary.f32(i32 35, float %988, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %990 = bitcast float %966 to i32
  %991 = sitofp i32 %990 to float
  %992 = fadd fast float %991, 0xC1CFBF8940000000
  %993 = fmul fast float %987, %992
  %994 = fadd fast float %993, 0x41CFBF8940000000
  %995 = fptosi float %994 to i32
  %996 = bitcast i32 %995 to float
  %997 = bitcast float %989 to i32
  %998 = sitofp i32 %997 to float
  %999 = fadd fast float %998, 0xC1CFBF8940000000
  %1000 = fmul fast float %999, %987
  %1001 = fadd fast float %1000, 0x41CFBF8940000000
  %1002 = fptosi float %1001 to i32
  %1003 = bitcast i32 %1002 to float
  %1004 = fmul fast float %996, %984
  %1005 = fmul fast float %1003, %984
  %1006 = fsub fast float %989, %1004
  %1007 = fadd fast float %1005, %989
  %1008 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1009 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1010 = fsub fast float %978, %1008
  %1011 = fsub fast float %1009, %1008
  %1012 = bitcast float %1011 to i32
  %1013 = sub nsw i32 2129859010, %1012
  %1014 = bitcast i32 %1013 to float
  %1015 = fmul fast float %1014, %1010
  %1016 = call float @dx.op.unary.f32(i32 7, float %1015)  ; Saturate(value)
  br label %1017

; <label>:1017                                    ; preds = %971, %965
  %1018 = phi float [ %1016, %971 ], [ %966, %965 ]
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = and i32 %1020, 128
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1039, label %1023

; <label>:1023                                    ; preds = %1017
  %1024 = add i32 %44, 228
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = add i32 %1026, 0
  %1028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1027, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1029 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1028, %dx.types.Handle %68, float %852, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = and i32 %1032, 524288
  %1034 = icmp ne i32 %1033, 0
  %1035 = fcmp fast ogt float %1030, 0x3FE0101020000000
  %1036 = select i1 %1035, float 1.000000e+00, float 0.000000e+00
  %1037 = select i1 %1034, float %1036, float %1030
  %1038 = fmul fast float %1037, %1018
  br label %1039

; <label>:1039                                    ; preds = %1023, %1017
  %1040 = phi float [ %1038, %1023 ], [ %1018, %1017 ]
  %1041 = fcmp fast ult float %1040, 0x3F70101020000000
  br i1 %1041, label %1695, label %1042

; <label>:1042                                    ; preds = %1039
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = and i32 %1044, 16
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1245, label %1047

; <label>:1047                                    ; preds = %1042
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = add i32 %44, 204
  %1051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.i32 %1051, 0
  %1053 = add i32 %1052, 0
  %1054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1053, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1055 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1054, %dx.types.Handle %67, float %852, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.ResRet.f32 %1055, 2
  %1059 = extractvalue %dx.types.ResRet.f32 %1055, 3
  %1060 = and i32 %1049, 255
  %1061 = uitofp i32 %1060 to float
  %1062 = lshr i32 %1049, 8
  %1063 = and i32 %1062, 255
  %1064 = uitofp i32 %1063 to float
  %1065 = fmul fast float %1059, %1061
  %1066 = fadd fast float %1065, %1064
  %1067 = fmul fast float %1066, 0x3F70101000000000
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = and i32 %1069, 512
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1080, label %1072

; <label>:1072                                    ; preds = %1047
  %1073 = add i32 %44, 244
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = add i32 %1075, 0
  %1077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1078 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1077, %dx.types.Handle %68, float %852, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  br label %1080

; <label>:1080                                    ; preds = %1072, %1047
  %1081 = phi float [ %1079, %1072 ], [ 1.000000e+00, %1047 ]
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = and i32 %1083, 33554432
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1192, label %1086

; <label>:1086                                    ; preds = %1080
  %1087 = add i32 %44, 144
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = and i32 %1089, 65535
  %1091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1090)  ; LegacyF16ToF32(value)
  %1092 = lshr i32 %1089, 16
  %1093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1092)  ; LegacyF16ToF32(value)
  %1094 = add i32 %44, 148
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = and i32 %1096, 65535
  %1098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1097)  ; LegacyF16ToF32(value)
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = lshr i32 %1100, 24
  %1102 = uitofp i32 %1101 to float
  %1103 = fmul fast float %1102, 0x3F70101020000000
  %1104 = and i32 %1100, 255
  %1105 = uitofp i32 %1104 to float
  %1106 = fmul fast float %1105, 0x3F70101020000000
  %1107 = lshr i32 %1100, 8
  %1108 = and i32 %1107, 255
  %1109 = uitofp i32 %1108 to float
  %1110 = fmul fast float %1109, 0x3F70101020000000
  %1111 = lshr i32 %1100, 16
  %1112 = and i32 %1111, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = fmul fast float %1113, 0x3F70101020000000
  %1115 = add i32 %44, 140
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = lshr i32 %1117, 24
  %1119 = uitofp i32 %1118 to float
  %1120 = fmul fast float %1119, 0x3F70101020000000
  %1121 = and i32 %1117, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = fmul fast float %1122, 0x3F70101020000000
  %1124 = lshr i32 %1117, 8
  %1125 = and i32 %1124, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = fmul fast float %1126, 0x3F70101020000000
  %1128 = lshr i32 %1117, 16
  %1129 = and i32 %1128, 255
  %1130 = uitofp i32 %1129 to float
  %1131 = fmul fast float %1130, 0x3F70101020000000
  %1132 = bitcast float %1056 to i32
  %1133 = ashr i32 %1132, 1
  %1134 = sub nsw i32 1597463174, %1133
  %1135 = bitcast i32 %1134 to float
  %1136 = fmul fast float %1056, 5.000000e-01
  %1137 = fmul fast float %1135, %1135
  %1138 = fmul fast float %1137, %1136
  %1139 = fsub fast float 1.500000e+00, %1138
  %1140 = fmul fast float %1135, %1056
  %1141 = fmul fast float %1140, %1139
  %1142 = bitcast float %1057 to i32
  %1143 = ashr i32 %1142, 1
  %1144 = sub nsw i32 1597463174, %1143
  %1145 = bitcast i32 %1144 to float
  %1146 = fmul fast float %1057, 5.000000e-01
  %1147 = fmul fast float %1145, %1145
  %1148 = fmul fast float %1147, %1146
  %1149 = fsub fast float 1.500000e+00, %1148
  %1150 = fmul fast float %1145, %1057
  %1151 = fmul fast float %1150, %1149
  %1152 = bitcast float %1058 to i32
  %1153 = ashr i32 %1152, 1
  %1154 = sub nsw i32 1597463174, %1153
  %1155 = bitcast i32 %1154 to float
  %1156 = fmul fast float %1058, 5.000000e-01
  %1157 = fmul fast float %1155, %1155
  %1158 = fmul fast float %1157, %1156
  %1159 = fsub fast float 1.500000e+00, %1158
  %1160 = fmul fast float %1155, %1058
  %1161 = fmul fast float %1160, %1159
  %1162 = fsub fast float %1141, %1123
  %1163 = fsub fast float %1151, %1127
  %1164 = fsub fast float %1161, %1131
  %1165 = fmul fast float %1162, %1091
  %1166 = fmul fast float %1163, %1093
  %1167 = fmul fast float %1164, %1098
  %1168 = fadd fast float %1165, %1106
  %1169 = fadd fast float %1166, %1110
  %1170 = fadd fast float %1167, %1114
  %1171 = call float @dx.op.unary.f32(i32 7, float %1168)  ; Saturate(value)
  %1172 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  %1173 = call float @dx.op.unary.f32(i32 7, float %1170)  ; Saturate(value)
  %1174 = fmul fast float %1171, %1171
  %1175 = fmul fast float %1172, %1172
  %1176 = fmul fast float %1173, %1173
  %1177 = fsub fast float %1174, %1056
  %1178 = fsub fast float %1175, %1057
  %1179 = fsub fast float %1176, %1058
  %1180 = fmul fast float %1177, %1081
  %1181 = fmul fast float %1178, %1081
  %1182 = fmul fast float %1179, %1081
  %1183 = fadd fast float %1180, %1056
  %1184 = fadd fast float %1181, %1057
  %1185 = fadd fast float %1182, %1058
  %1186 = fadd fast float %1103, %1067
  %1187 = fsub fast float %1186, %1120
  %1188 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  %1189 = fsub fast float %1188, %1067
  %1190 = fmul fast float %1189, %1081
  %1191 = fadd fast float %1190, %1067
  br label %1245

; <label>:1192                                    ; preds = %1080
  %1193 = and i32 %1083, 134217728
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1229, label %1195

; <label>:1195                                    ; preds = %1192
  %1196 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %1197 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %1198 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %1199 = fadd fast float %1196, -5.000000e-01
  %1200 = fadd fast float %1197, -5.000000e-01
  %1201 = fadd fast float %1198, -5.000000e-01
  %1202 = fmul fast float %1199, %1081
  %1203 = fmul fast float %1200, %1081
  %1204 = fmul fast float %1201, %1081
  %1205 = fadd fast float %1202, 5.000000e-01
  %1206 = fadd fast float %1203, 5.000000e-01
  %1207 = fadd fast float %1204, 5.000000e-01
  %1208 = call float @dx.op.unary.f32(i32 24, float %1056)  ; Sqrt(value)
  %1209 = call float @dx.op.unary.f32(i32 24, float %1057)  ; Sqrt(value)
  %1210 = call float @dx.op.unary.f32(i32 24, float %1058)  ; Sqrt(value)
  %1211 = fmul fast float %1205, 2.000000e+00
  %1212 = fsub fast float 1.000000e+00, %1211
  %1213 = fmul fast float %1212, %1208
  %1214 = fadd fast float %1213, %1211
  %1215 = fmul fast float %1214, %1208
  %1216 = fmul fast float %1206, 2.000000e+00
  %1217 = fsub fast float 1.000000e+00, %1216
  %1218 = fmul fast float %1217, %1209
  %1219 = fadd fast float %1218, %1216
  %1220 = fmul fast float %1219, %1209
  %1221 = fmul fast float %1207, 2.000000e+00
  %1222 = fsub fast float 1.000000e+00, %1221
  %1223 = fmul fast float %1222, %1210
  %1224 = fadd fast float %1223, %1221
  %1225 = fmul fast float %1224, %1210
  %1226 = fmul fast float %1215, %1215
  %1227 = fmul fast float %1220, %1220
  %1228 = fmul fast float %1225, %1225
  br label %1245

; <label>:1229                                    ; preds = %1192
  %1230 = fmul fast float %239, %239
  %1231 = fmul fast float %243, %243
  %1232 = fmul fast float %247, %247
  %1233 = fadd fast float %1230, -1.000000e+00
  %1234 = fadd fast float %1231, -1.000000e+00
  %1235 = fadd fast float %1232, -1.000000e+00
  %1236 = fmul fast float %1081, %1233
  %1237 = fmul fast float %1081, %1234
  %1238 = fmul fast float %1081, %1235
  %1239 = fadd fast float %1236, 1.000000e+00
  %1240 = fadd fast float %1237, 1.000000e+00
  %1241 = fadd fast float %1238, 1.000000e+00
  %1242 = fmul fast float %1239, %1056
  %1243 = fmul fast float %1240, %1057
  %1244 = fmul fast float %1241, %1058
  br label %1245

; <label>:1245                                    ; preds = %1229, %1195, %1086, %1042
  %1246 = phi float [ %1191, %1086 ], [ %1067, %1195 ], [ %1067, %1229 ], [ 0x3FA23C0BE0000000, %1042 ]
  %1247 = phi float [ %1183, %1086 ], [ %1226, %1195 ], [ %1242, %1229 ], [ 1.000000e+00, %1042 ]
  %1248 = phi float [ %1184, %1086 ], [ %1227, %1195 ], [ %1243, %1229 ], [ 1.000000e+00, %1042 ]
  %1249 = phi float [ %1185, %1086 ], [ %1228, %1195 ], [ %1244, %1229 ], [ 1.000000e+00, %1042 ]
  %1250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.i32 %1250, 1
  %1252 = and i32 %1251, 1
  %1253 = icmp ne i32 %1252, 0
  %1254 = add i32 %44, 196
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = and i32 %1256, 32
  %1258 = icmp ne i32 %1257, 0
  %1259 = and i1 %1253, %1258
  %1260 = select i1 %1259, float 1.000000e+00, float %1247
  %1261 = select i1 %1259, float 0x3FD3333340000000, float %1248
  %1262 = select i1 %1259, float 0x3FD3333340000000, float %1249
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = and i32 %1264, 32
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1339, label %1267

; <label>:1267                                    ; preds = %1245
  %1268 = add i32 %44, 76
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = add i32 %44, 212
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = add i32 %1273, 0
  %1275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1274, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1276 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1275, %dx.types.Handle %67, float %852, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = extractvalue %dx.types.ResRet.f32 %1276, 1
  %1279 = extractvalue %dx.types.ResRet.f32 %1276, 2
  %1280 = extractvalue %dx.types.ResRet.f32 %1276, 3
  %1281 = and i32 %1270, 255
  %1282 = uitofp i32 %1281 to float
  %1283 = lshr i32 %1270, 8
  %1284 = and i32 %1283, 255
  %1285 = uitofp i32 %1284 to float
  %1286 = lshr i32 %1270, 16
  %1287 = and i32 %1286, 255
  %1288 = uitofp i32 %1287 to float
  %1289 = fmul fast float %1288, 0x3F70101000000000
  %1290 = fmul fast float %1277, %1282
  %1291 = fadd fast float %1290, %1285
  %1292 = fmul fast float %1291, 0x3F70101000000000
  %1293 = fadd fast float %1278, -5.000000e-01
  %1294 = fadd fast float %1280, -5.000000e-01
  %1295 = fmul fast float %1293, %1289
  %1296 = fmul fast float %1294, %1289
  %1297 = fadd fast float %1295, 5.000000e-01
  %1298 = fadd fast float %1296, 5.000000e-01
  %1299 = fmul fast float %1297, 2.000000e+00
  %1300 = fadd fast float %1299, -1.000000e+00
  %1301 = fmul fast float %1298, 2.000000e+00
  %1302 = fadd fast float %1301, -1.000000e+00
  %1303 = fadd fast float %1300, %1302
  %1304 = fmul fast float %1303, 5.000000e-01
  %1305 = fsub fast float %1300, %1302
  %1306 = fmul fast float %1305, 5.000000e-01
  %1307 = call float @dx.op.unary.f32(i32 6, float %1304)  ; FAbs(value)
  %1308 = fsub fast float 1.000000e+00, %1307
  %1309 = call float @dx.op.unary.f32(i32 6, float %1306)  ; FAbs(value)
  %1310 = fsub fast float %1308, %1309
  %1311 = call float @dx.op.dot3.f32(i32 55, float %1304, float %1306, float %1310, float %1304, float %1306, float %1310)  ; Dot3(ax,ay,az,bx,by,bz)
  %1312 = call float @dx.op.unary.f32(i32 25, float %1311)  ; Rsqrt(value)
  %1313 = fmul fast float %1304, %1312
  %1314 = fmul fast float %1306, %1312
  %1315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.i32 %1315, 0
  %1317 = and i32 %1316, 67108864
  %1318 = icmp eq i32 %1317, 0
  br i1 %1318, label %1335, label %1319

; <label>:1319                                    ; preds = %1267
  %1320 = add i32 %44, 168
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = and i32 %1322, 65535
  %1324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1323)  ; LegacyF16ToF32(value)
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = and i32 %1326, 65535
  %1328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1327)  ; LegacyF16ToF32(value)
  %1329 = lshr i32 %1322, 16
  %1330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1329)  ; LegacyF16ToF32(value)
  %1331 = fsub fast float %1292, %1330
  %1332 = fmul fast float %1331, %1324
  %1333 = fadd fast float %1332, %1328
  %1334 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  br label %1335

; <label>:1335                                    ; preds = %1319, %1267
  %1336 = phi float [ %1334, %1319 ], [ %1292, %1267 ]
  %1337 = call float @dx.op.dot2.f32(i32 54, float %1313, float %1314, float %45, float %46)  ; Dot2(ax,ay,bx,by)
  %1338 = call float @dx.op.dot2.f32(i32 54, float %1313, float %1314, float %47, float %48)  ; Dot2(ax,ay,bx,by)
  br label %1339

; <label>:1339                                    ; preds = %1335, %1245
  %1340 = phi float [ %1336, %1335 ], [ 0x3FD6666660000000, %1245 ]
  %1341 = phi float [ %1337, %1335 ], [ 0.000000e+00, %1245 ]
  %1342 = phi float [ %1338, %1335 ], [ 0.000000e+00, %1245 ]
  %1343 = phi float [ %1279, %1335 ], [ 1.000000e+00, %1245 ]
  %1344 = add i32 %44, 112
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = lshr i32 %1346, 22
  %1348 = shl nuw nsw i32 %1347, 5
  %1349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1348)  ; LegacyF16ToF32(value)
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = and i32 %1351, 64
  %1353 = icmp eq i32 %1352, 0
  br i1 %1353, label %1387, label %1354

; <label>:1354                                    ; preds = %1339
  %1355 = add i32 %44, 220
  %1356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1355, i32 undef)  ; BufferLoad(srv,index,wot)
  %1357 = extractvalue %dx.types.ResRet.i32 %1356, 0
  %1358 = add i32 %1357, 0
  %1359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1358, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = and i32 %1361, 131072
  %1363 = icmp eq i32 %1362, 0
  %1364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1359, %dx.types.Handle %67, float %852, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1365 = extractvalue %dx.types.ResRet.f32 %1364, 0
  %1366 = extractvalue %dx.types.ResRet.f32 %1364, 1
  %1367 = extractvalue %dx.types.ResRet.f32 %1364, 2
  %1368 = fmul fast float %1365, %227
  %1369 = fmul fast float %1366, %230
  %1370 = fmul fast float %1367, %233
  br i1 %1363, label %1377, label %1371

; <label>:1371                                    ; preds = %1354
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 0
  %1374 = fmul fast float %1373, %1368
  %1375 = fmul fast float %1373, %1369
  %1376 = fmul fast float %1373, %1370
  br label %1377

; <label>:1377                                    ; preds = %1371, %1354
  %1378 = phi float [ %1374, %1371 ], [ %1368, %1354 ]
  %1379 = phi float [ %1375, %1371 ], [ %1369, %1354 ]
  %1380 = phi float [ %1376, %1371 ], [ %1370, %1354 ]
  %1381 = fmul fast float %1378, %1349
  %1382 = select i1 %189, float %1381, float %1378
  %1383 = call float @dx.op.dot3.f32(i32 55, float %1382, float %1379, float %1380, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1384 = select i1 %189, float 0.000000e+00, float %1378
  %1385 = select i1 %189, float %1383, float %1379
  %1386 = select i1 %189, float 0.000000e+00, float %1380
  br label %1387

; <label>:1387                                    ; preds = %1377, %1339
  %1388 = phi float [ %1384, %1377 ], [ 0.000000e+00, %1339 ]
  %1389 = phi float [ %1385, %1377 ], [ 0.000000e+00, %1339 ]
  %1390 = phi float [ %1386, %1377 ], [ 0.000000e+00, %1339 ]
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = and i32 %1392, 1024
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %1425, label %1395

; <label>:1395                                    ; preds = %1387
  %1396 = add i32 %44, 104
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = and i32 %1398, 255
  %1400 = uitofp i32 %1399 to float
  %1401 = fmul fast float %1400, 0x3F70101020000000
  %1402 = lshr i32 %1398, 8
  %1403 = and i32 %1402, 255
  %1404 = uitofp i32 %1403 to float
  %1405 = fmul fast float %1404, 0x3F70101020000000
  %1406 = lshr i32 %1398, 16
  %1407 = and i32 %1406, 255
  %1408 = uitofp i32 %1407 to float
  %1409 = fmul fast float %1408, 0x3F70101020000000
  %1410 = fmul fast float %1401, %1401
  %1411 = fmul fast float %1405, %1405
  %1412 = fmul fast float %1409, %1409
  %1413 = add i32 %44, 252
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1413, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = add i32 %1415, 0
  %1417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1416, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1418 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1417, %dx.types.Handle %68, float %852, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = extractvalue %dx.types.ResRet.f32 %1418, 1
  %1421 = extractvalue %dx.types.ResRet.f32 %1418, 2
  %1422 = fmul fast float %1410, %1419
  %1423 = fmul fast float %1411, %1420
  %1424 = fmul fast float %1412, %1421
  br label %1425

; <label>:1425                                    ; preds = %1395, %1387
  %1426 = phi float [ %1422, %1395 ], [ 0.000000e+00, %1387 ]
  %1427 = phi float [ %1423, %1395 ], [ 0.000000e+00, %1387 ]
  %1428 = phi float [ %1424, %1395 ], [ 0.000000e+00, %1387 ]
  %1429 = fcmp fast ogt float %1426, 0.000000e+00
  %1430 = fcmp fast ogt float %1427, 0.000000e+00
  %1431 = fcmp fast ogt float %1428, 0.000000e+00
  %1432 = call float @dx.op.unary.f32(i32 23, float %1426)  ; Log(value)
  %1433 = call float @dx.op.unary.f32(i32 23, float %1427)  ; Log(value)
  %1434 = call float @dx.op.unary.f32(i32 23, float %1428)  ; Log(value)
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = lshr i32 %1436, 7
  %1438 = and i32 %1437, 32752
  %1439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1438)  ; LegacyF16ToF32(value)
  %1440 = fmul fast float %1432, 0xBFE62E4300000000
  %1441 = fmul fast float %1440, %1439
  %1442 = fmul fast float %1433, 0xBFE62E4300000000
  %1443 = fmul fast float %1442, %1439
  %1444 = fmul fast float %1434, 0xBFE62E4300000000
  %1445 = fmul fast float %1444, %1439
  %1446 = select i1 %1429, float %1441, float 1.270000e+02
  %1447 = select i1 %1430, float %1443, float 1.270000e+02
  %1448 = select i1 %1431, float %1445, float 1.270000e+02
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = and i32 %1450, 10240
  %1452 = icmp eq i32 %1451, 0
  br i1 %1452, label %1473, label %1453

; <label>:1453                                    ; preds = %1425
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 2048
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1473, label %1458

; <label>:1458                                    ; preds = %1453
  %1459 = add i32 %44, 260
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = add i32 %1461, 0
  %1463 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1462, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1464 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1463, %dx.types.Handle %68, float %852, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1465 = extractvalue %dx.types.ResRet.f32 %1464, 3
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = shl i32 %1467, 4
  %1469 = and i32 %1468, 32752
  %1470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1469)  ; LegacyF16ToF32(value)
  %1471 = fmul fast float %1470, %1465
  %1472 = call float @dx.op.binary.f32(i32 35, float %1471, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1473

; <label>:1473                                    ; preds = %1458, %1453, %1425
  %1474 = phi float [ %1472, %1458 ], [ 0x3F70101020000000, %1453 ], [ 0x3F70101020000000, %1425 ]
  %1475 = add i32 %44, 80
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = and i32 %1477, 255
  %1479 = uitofp i32 %1478 to float
  %1480 = lshr i32 %1477, 8
  %1481 = and i32 %1480, 255
  %1482 = uitofp i32 %1481 to float
  %1483 = call float @dx.op.dot3.f32(i32 55, float %1260, float %1261, float %1262, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1484 = fmul fast float %1482, %1483
  %1485 = fadd fast float %1484, %1479
  %1486 = fmul fast float %1485, 0x3F70101020000000
  %1487 = call float @dx.op.unary.f32(i32 7, float %1486)  ; Saturate(value)
  br i1 %752, label %1488, label %1523

; <label>:1488                                    ; preds = %1473
  %1489 = fmul fast float %1474, 2.000000e+00
  %1490 = fcmp fast olt float %1446, 1.270000e+02
  %1491 = fcmp fast olt float %1447, 1.270000e+02
  %1492 = fcmp fast olt float %1448, 1.270000e+02
  %1493 = fmul fast float %1446, 0xBFF7154760000000
  %1494 = fmul fast float %1493, %1489
  %1495 = fmul fast float %1447, 0xBFF7154760000000
  %1496 = fmul fast float %1495, %1489
  %1497 = fmul fast float %1448, 0xBFF7154760000000
  %1498 = fmul fast float %1497, %1489
  %1499 = call float @dx.op.unary.f32(i32 21, float %1494)  ; Exp(value)
  %1500 = call float @dx.op.unary.f32(i32 21, float %1496)  ; Exp(value)
  %1501 = call float @dx.op.unary.f32(i32 21, float %1498)  ; Exp(value)
  %1502 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1503 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  %1504 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  %1505 = fadd fast float %1502, -1.000000e+00
  %1506 = select i1 %1490, float %1505, float -1.000000e+00
  %1507 = fadd fast float %1503, -1.000000e+00
  %1508 = select i1 %1491, float %1507, float -1.000000e+00
  %1509 = fadd fast float %1504, -1.000000e+00
  %1510 = select i1 %1492, float %1509, float -1.000000e+00
  %1511 = fmul fast float %1506, %1040
  %1512 = fmul fast float %1508, %1040
  %1513 = fmul fast float %1510, %1040
  %1514 = fadd fast float %1511, 1.000000e+00
  %1515 = fadd fast float %1512, 1.000000e+00
  %1516 = fadd fast float %1513, 1.000000e+00
  %1517 = fmul fast float %1514, %741
  %1518 = fmul fast float %1515, %742
  %1519 = fmul fast float %1516, %743
  %1520 = fmul fast float %1514, %744
  %1521 = fmul fast float %1515, %745
  %1522 = fmul fast float %1516, %746
  br label %1523

; <label>:1523                                    ; preds = %1488, %1473
  %1524 = phi float [ %1517, %1488 ], [ %741, %1473 ]
  %1525 = phi float [ %1518, %1488 ], [ %742, %1473 ]
  %1526 = phi float [ %1519, %1488 ], [ %743, %1473 ]
  %1527 = phi float [ %1520, %1488 ], [ %744, %1473 ]
  %1528 = phi float [ %1521, %1488 ], [ %745, %1473 ]
  %1529 = phi float [ %1522, %1488 ], [ %746, %1473 ]
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 3
  %1533 = icmp eq i32 %1532, 3
  br i1 %1533, label %1612, label %1534

; <label>:1534                                    ; preds = %1523
  %1535 = and i32 %1531, 16
  %1536 = icmp ne i32 %1535, 0
  %1537 = select i1 %1536, float %1040, float 0.000000e+00
  %1538 = icmp eq i32 %1532, 0
  br i1 %1538, label %1539, label %1567

; <label>:1539                                    ; preds = %1534
  %1540 = and i32 %1531, 64
  %1541 = icmp ne i32 %1540, 0
  %1542 = select i1 %1541, float %1040, float 0.000000e+00
  %1543 = fsub fast float %1260, %1524
  %1544 = fsub fast float %1261, %1525
  %1545 = fsub fast float %1262, %1526
  %1546 = fmul fast float %1537, %1543
  %1547 = fmul fast float %1537, %1544
  %1548 = fmul fast float %1537, %1545
  %1549 = fadd fast float %1546, %1524
  %1550 = fadd fast float %1547, %1525
  %1551 = fadd fast float %1548, %1526
  %1552 = fsub fast float %1246, %747
  %1553 = fmul fast float %1537, %1552
  %1554 = fadd fast float %1553, %747
  %1555 = fsub fast float %1388, %1527
  %1556 = fsub fast float %1389, %1528
  %1557 = fsub fast float %1390, %1529
  %1558 = fmul fast float %1542, %1555
  %1559 = fmul fast float %1542, %1556
  %1560 = fmul fast float %1542, %1557
  %1561 = fadd fast float %1558, %1527
  %1562 = fadd fast float %1559, %1528
  %1563 = fadd fast float %1560, %1529
  %1564 = fsub fast float %1487, %751
  %1565 = fmul fast float %1537, %1564
  %1566 = fadd fast float %1565, %751
  br label %1612

; <label>:1567                                    ; preds = %1534
  %1568 = icmp eq i32 %1532, 1
  br i1 %1568, label %1569, label %1582

; <label>:1569                                    ; preds = %1567
  %1570 = fadd fast float %1260, -1.000000e+00
  %1571 = fadd fast float %1261, -1.000000e+00
  %1572 = fadd fast float %1262, -1.000000e+00
  %1573 = fmul fast float %1537, %1570
  %1574 = fmul fast float %1537, %1571
  %1575 = fmul fast float %1537, %1572
  %1576 = fadd fast float %1573, 1.000000e+00
  %1577 = fadd fast float %1574, 1.000000e+00
  %1578 = fadd fast float %1575, 1.000000e+00
  %1579 = fmul fast float %1576, %1524
  %1580 = fmul fast float %1577, %1525
  %1581 = fmul fast float %1578, %1526
  br label %1612

; <label>:1582                                    ; preds = %1567
  %1583 = icmp eq i32 %1532, 2
  br i1 %1583, label %1584, label %1612

; <label>:1584                                    ; preds = %1582
  %1585 = call float @dx.op.unary.f32(i32 24, float %1260)  ; Sqrt(value)
  %1586 = call float @dx.op.unary.f32(i32 24, float %1261)  ; Sqrt(value)
  %1587 = call float @dx.op.unary.f32(i32 24, float %1262)  ; Sqrt(value)
  %1588 = fadd fast float %1585, -5.000000e-01
  %1589 = fadd fast float %1586, -5.000000e-01
  %1590 = fadd fast float %1587, -5.000000e-01
  %1591 = fmul fast float %1588, %1537
  %1592 = fmul fast float %1589, %1537
  %1593 = fmul fast float %1590, %1537
  %1594 = fadd fast float %1591, 5.000000e-01
  %1595 = fadd fast float %1592, 5.000000e-01
  %1596 = fadd fast float %1593, 5.000000e-01
  %1597 = fmul fast float %1594, 2.000000e+00
  %1598 = fsub fast float 1.000000e+00, %1597
  %1599 = fmul fast float %1598, %1524
  %1600 = fadd fast float %1599, %1597
  %1601 = fmul fast float %1600, %1524
  %1602 = fmul fast float %1595, 2.000000e+00
  %1603 = fsub fast float 1.000000e+00, %1602
  %1604 = fmul fast float %1603, %1525
  %1605 = fadd fast float %1604, %1602
  %1606 = fmul fast float %1605, %1525
  %1607 = fmul fast float %1596, 2.000000e+00
  %1608 = fsub fast float 1.000000e+00, %1607
  %1609 = fmul fast float %1608, %1526
  %1610 = fadd fast float %1609, %1607
  %1611 = fmul fast float %1610, %1526
  br label %1612

; <label>:1612                                    ; preds = %1584, %1582, %1569, %1539, %1523
  %1613 = phi float [ %1524, %1523 ], [ %1601, %1584 ], [ %1524, %1582 ], [ %1579, %1569 ], [ %1549, %1539 ]
  %1614 = phi float [ %1525, %1523 ], [ %1606, %1584 ], [ %1525, %1582 ], [ %1580, %1569 ], [ %1550, %1539 ]
  %1615 = phi float [ %1526, %1523 ], [ %1611, %1584 ], [ %1526, %1582 ], [ %1581, %1569 ], [ %1551, %1539 ]
  %1616 = phi float [ %1527, %1523 ], [ %1527, %1584 ], [ %1527, %1582 ], [ %1527, %1569 ], [ %1561, %1539 ]
  %1617 = phi float [ %1528, %1523 ], [ %1528, %1584 ], [ %1528, %1582 ], [ %1528, %1569 ], [ %1562, %1539 ]
  %1618 = phi float [ %1529, %1523 ], [ %1529, %1584 ], [ %1529, %1582 ], [ %1529, %1569 ], [ %1563, %1539 ]
  %1619 = phi float [ %747, %1523 ], [ %747, %1584 ], [ %747, %1582 ], [ %747, %1569 ], [ %1554, %1539 ]
  %1620 = phi float [ %751, %1523 ], [ %751, %1584 ], [ %751, %1582 ], [ %751, %1569 ], [ %1566, %1539 ]
  %1621 = and i32 %1531, 12
  %1622 = icmp eq i32 %1621, 12
  br i1 %1622, label %1695, label %1623

; <label>:1623                                    ; preds = %1612
  %1624 = and i32 %1531, 2097184
  %1625 = icmp eq i32 %1624, 2097184
  %1626 = select i1 %1625, float %1040, float 0.000000e+00
  %1627 = and i32 %1531, 4194336
  %1628 = icmp eq i32 %1627, 4194336
  %1629 = select i1 %1628, float %1040, float 0.000000e+00
  %1630 = and i32 %1531, 8388640
  %1631 = icmp eq i32 %1630, 8388640
  %1632 = select i1 %1631, float %1040, float 0.000000e+00
  %1633 = icmp eq i32 %1621, 0
  br i1 %1633, label %1634, label %1647

; <label>:1634                                    ; preds = %1623
  %1635 = fsub fast float %1341, %739
  %1636 = fsub fast float %1342, %740
  %1637 = fmul fast float %1626, %1635
  %1638 = fmul fast float %1626, %1636
  %1639 = fadd fast float %1637, %739
  %1640 = fadd fast float %1638, %740
  %1641 = fsub fast float %1343, %750
  %1642 = fmul fast float %1629, %1641
  %1643 = fadd fast float %1642, %750
  %1644 = fsub fast float %1340, %749
  %1645 = fmul fast float %1632, %1644
  %1646 = fadd fast float %1645, %749
  br label %1695

; <label>:1647                                    ; preds = %1623
  %1648 = icmp eq i32 %1621, 4
  br i1 %1648, label %1649, label %1681

; <label>:1649                                    ; preds = %1647
  %1650 = fmul fast float %1626, %1341
  %1651 = fmul fast float %1626, %1342
  %1652 = fadd fast float %1650, %739
  %1653 = fadd fast float %1651, %740
  %1654 = call float @dx.op.binary.f32(i32 36, float %750, float %1343)  ; FMin(a,b)
  %1655 = fsub fast float %1654, %750
  %1656 = fmul fast float %1655, %1629
  %1657 = fadd fast float %1656, %750
  %1658 = fadd fast float %1340, %749
  %1659 = fmul fast float %1658, 0x3FF337FAE0000000
  %1660 = fmul fast float %749, %749
  %1661 = fmul fast float %1340, %1340
  %1662 = fadd fast float %1661, %1660
  %1663 = fmul fast float %1662, 0x3FE5152B00000000
  %1664 = fmul fast float %749, 0xBFCC1F85E0000000
  %1665 = fmul fast float %1664, %1340
  %1666 = fadd fast float %1665, 0xBFE1363700000000
  %1667 = fadd fast float %1666, %1659
  %1668 = fsub fast float %1667, %1663
  %1669 = fmul fast float %1658, 0x3FBA6F0D00000000
  %1670 = fmul fast float %1662, 0x3FD0432880000000
  %1671 = fmul fast float %749, 0xBFEF110800000000
  %1672 = fmul fast float %1671, %1340
  %1673 = fadd fast float %1672, 1.000000e+00
  %1674 = fsub fast float %1673, %1669
  %1675 = fadd fast float %1674, %1670
  %1676 = fdiv fast float %1668, %1675
  %1677 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  %1678 = fsub fast float %1677, %749
  %1679 = fmul fast float %1678, %1632
  %1680 = fadd fast float %1679, %749
  br label %1695

; <label>:1681                                    ; preds = %1647
  %1682 = icmp eq i32 %1621, 8
  br i1 %1682, label %1683, label %1695

; <label>:1683                                    ; preds = %1681
  %1684 = fmul fast float %1626, %1341
  %1685 = fmul fast float %1626, %1342
  %1686 = fadd fast float %1684, %739
  %1687 = fadd fast float %1685, %740
  %1688 = call float @dx.op.binary.f32(i32 36, float %750, float %1343)  ; FMin(a,b)
  %1689 = fsub fast float %1688, %750
  %1690 = fmul fast float %1689, %1629
  %1691 = fadd fast float %1690, %750
  %1692 = fsub fast float %1340, %749
  %1693 = fmul fast float %1632, %1692
  %1694 = fadd fast float %1693, %749
  br label %1695

; <label>:1695                                    ; preds = %1683, %1681, %1649, %1634, %1612, %1039, %738
  %1696 = phi float [ %739, %1612 ], [ %739, %1039 ], [ %739, %738 ], [ %1639, %1634 ], [ %1652, %1649 ], [ %739, %1681 ], [ %1686, %1683 ]
  %1697 = phi float [ %740, %1612 ], [ %740, %1039 ], [ %740, %738 ], [ %1640, %1634 ], [ %1653, %1649 ], [ %740, %1681 ], [ %1687, %1683 ]
  %1698 = phi float [ %1613, %1612 ], [ %741, %1039 ], [ %741, %738 ], [ %1613, %1634 ], [ %1613, %1649 ], [ %1613, %1681 ], [ %1613, %1683 ]
  %1699 = phi float [ %1614, %1612 ], [ %742, %1039 ], [ %742, %738 ], [ %1614, %1634 ], [ %1614, %1649 ], [ %1614, %1681 ], [ %1614, %1683 ]
  %1700 = phi float [ %1615, %1612 ], [ %743, %1039 ], [ %743, %738 ], [ %1615, %1634 ], [ %1615, %1649 ], [ %1615, %1681 ], [ %1615, %1683 ]
  %1701 = phi float [ %1616, %1612 ], [ %744, %1039 ], [ %744, %738 ], [ %1616, %1634 ], [ %1616, %1649 ], [ %1616, %1681 ], [ %1616, %1683 ]
  %1702 = phi float [ %1617, %1612 ], [ %745, %1039 ], [ %745, %738 ], [ %1617, %1634 ], [ %1617, %1649 ], [ %1617, %1681 ], [ %1617, %1683 ]
  %1703 = phi float [ %1618, %1612 ], [ %746, %1039 ], [ %746, %738 ], [ %1618, %1634 ], [ %1618, %1649 ], [ %1618, %1681 ], [ %1618, %1683 ]
  %1704 = phi float [ %1619, %1612 ], [ %747, %1039 ], [ %747, %738 ], [ %1619, %1634 ], [ %1619, %1649 ], [ %1619, %1681 ], [ %1619, %1683 ]
  %1705 = phi float [ %749, %1612 ], [ %749, %1039 ], [ %749, %738 ], [ %1646, %1634 ], [ %1680, %1649 ], [ %749, %1681 ], [ %1694, %1683 ]
  %1706 = phi float [ %750, %1612 ], [ %750, %1039 ], [ %750, %738 ], [ %1643, %1634 ], [ %1657, %1649 ], [ %750, %1681 ], [ %1691, %1683 ]
  %1707 = phi float [ %1620, %1612 ], [ %751, %1039 ], [ %751, %738 ], [ %1620, %1634 ], [ %1620, %1649 ], [ %1620, %1681 ], [ %1620, %1683 ]
  %1708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1709 = extractvalue %dx.types.CBufRet.f32 %1708, 0
  %1710 = call float @dx.op.dot2.f32(i32 54, float %1696, float %1697, float %1696, float %1697)  ; Dot2(ax,ay,bx,by)
  %1711 = fmul fast float %1710, 0x3FE3333340000000
  %1712 = fsub fast float 1.000000e+00, %1711
  %1713 = call float @dx.op.dot3.f32(i32 55, float %1696, float %1697, float %1712, float %1696, float %1697, float %1712)  ; Dot3(ax,ay,az,bx,by,bz)
  %1714 = call float @dx.op.unary.f32(i32 25, float %1713)  ; Rsqrt(value)
  %1715 = fmul fast float %1714, %1696
  %1716 = fmul fast float %1714, %1697
  %1717 = fmul fast float %1712, %1714
  %1718 = fmul fast float %1717, %53
  %1719 = fmul fast float %1717, %54
  %1720 = fmul fast float %1717, %55
  %1721 = fmul fast float %1715, %49
  %1722 = fmul fast float %1715, %50
  %1723 = fmul fast float %1715, %51
  %1724 = fadd fast float %1718, %1721
  %1725 = fadd fast float %1719, %1722
  %1726 = fadd fast float %1720, %1723
  %1727 = fmul fast float %1716, %82
  %1728 = fmul fast float %1716, %83
  %1729 = fmul fast float %1716, %84
  %1730 = fadd fast float %1724, %1727
  %1731 = fadd fast float %1725, %1728
  %1732 = fadd fast float %1726, %1729
  %1733 = call float @dx.op.dot3.f32(i32 55, float %1730, float %1731, float %1732, float %1730, float %1731, float %1732)  ; Dot3(ax,ay,az,bx,by,bz)
  %1734 = call float @dx.op.unary.f32(i32 25, float %1733)  ; Rsqrt(value)
  %1735 = fmul fast float %1730, %1734
  %1736 = fmul fast float %1731, %1734
  %1737 = fmul fast float %1732, %1734
  %1738 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %1739 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %1740 = call float @dx.op.unary.f32(i32 83, float %120)  ; DerivCoarseX(value)
  %1741 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %1742 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %1743 = call float @dx.op.unary.f32(i32 84, float %120)  ; DerivCoarseY(value)
  %1744 = fadd fast float %1738, %118
  %1745 = fadd fast float %1739, %119
  %1746 = fadd fast float %1740, %120
  %1747 = fadd fast float %1741, %118
  %1748 = fadd fast float %1742, %119
  %1749 = fadd fast float %1743, %120
  %1750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1751 = extractvalue %dx.types.CBufRet.f32 %1750, 0
  %1752 = extractvalue %dx.types.CBufRet.f32 %1750, 1
  %1753 = extractvalue %dx.types.CBufRet.f32 %1750, 2
  %1754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.f32 %1754, 2
  %1756 = extractvalue %dx.types.CBufRet.f32 %1754, 3
  %1757 = fmul fast float %1751, %71
  %1758 = fmul fast float %1757, %1755
  %1759 = fmul fast float %1752, %72
  %1760 = fmul fast float %1759, %1756
  %1761 = fptoui float %1758 to i32
  %1762 = fptoui float %1760 to i32
  %1763 = fadd fast float %1751, -1.000000e+00
  %1764 = fadd fast float %1752, -1.000000e+00
  %1765 = fptoui float %1763 to i32
  %1766 = fptoui float %1764 to i32
  %1767 = call i32 @dx.op.binary.i32(i32 40, i32 %1761, i32 %1765)  ; UMin(a,b)
  %1768 = call i32 @dx.op.binary.i32(i32 40, i32 %1762, i32 %1766)  ; UMin(a,b)
  %1769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1770 = extractvalue %dx.types.CBufRet.f32 %1769, 2
  %1771 = extractvalue %dx.types.CBufRet.f32 %1769, 3
  %1772 = fmul fast float %1770, %66
  %1773 = fsub fast float %1772, %1771
  %1774 = fadd fast float %1753, -1.000000e+00
  %1775 = call float @dx.op.binary.f32(i32 36, float %1773, float %1774)  ; FMin(a,b)
  %1776 = fptoui float %1775 to i32
  %1777 = fptoui float %1751 to i32
  %1778 = fptoui float %1752 to i32
  %1779 = mul i32 %1776, %1778
  %1780 = add i32 %1779, %1768
  %1781 = mul i32 %1780, %1777
  %1782 = add i32 %1781, %1767
  %1783 = shl i32 %1782, 2
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = and i32 %1785, 1023
  %1787 = lshr i32 %1785, 10
  %1788 = icmp eq i32 %1786, 0
  br i1 %1788, label %2217, label %1789

; <label>:1789                                    ; preds = %1695
  %1790 = and i32 %1785, 1023
  br label %1791

; <label>:1791                                    ; preds = %1918, %1789
  %1792 = phi float [ %1919, %1918 ], [ 0.000000e+00, %1789 ]
  %1793 = phi float [ %1920, %1918 ], [ %748, %1789 ]
  %1794 = phi float [ %1921, %1918 ], [ %1709, %1789 ]
  %1795 = phi float [ %1922, %1918 ], [ %1707, %1789 ]
  %1796 = phi float [ %1923, %1918 ], [ 0.000000e+00, %1789 ]
  %1797 = phi float [ %1924, %1918 ], [ 0.000000e+00, %1789 ]
  %1798 = phi float [ %1925, %1918 ], [ %1701, %1789 ]
  %1799 = phi float [ %1926, %1918 ], [ %1702, %1789 ]
  %1800 = phi float [ %1927, %1918 ], [ %1703, %1789 ]
  %1801 = phi float [ %1928, %1918 ], [ %1735, %1789 ]
  %1802 = phi float [ %1929, %1918 ], [ %1736, %1789 ]
  %1803 = phi float [ %1930, %1918 ], [ %1737, %1789 ]
  %1804 = phi float [ %1931, %1918 ], [ %1706, %1789 ]
  %1805 = phi float [ %1932, %1918 ], [ %1705, %1789 ]
  %1806 = phi float [ %1933, %1918 ], [ 0.000000e+00, %1789 ]
  %1807 = phi float [ %1934, %1918 ], [ %1704, %1789 ]
  %1808 = phi float [ %1935, %1918 ], [ %1698, %1789 ]
  %1809 = phi float [ %1936, %1918 ], [ %1699, %1789 ]
  %1810 = phi float [ %1937, %1918 ], [ %1700, %1789 ]
  %1811 = phi i32 [ %1868, %1918 ], [ 0, %1789 ]
  %1812 = add nuw nsw i32 %1811, %1787
  %1813 = shl i32 %1812, 2
  %1814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.i32 %1814, 0
  %1816 = shl i32 %1815, 8
  %1817 = or i32 %1816, 48
  %1818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.f32 %1818, 0
  %1820 = extractvalue %dx.types.ResRet.f32 %1818, 1
  %1821 = extractvalue %dx.types.ResRet.f32 %1818, 2
  %1822 = extractvalue %dx.types.ResRet.f32 %1818, 3
  %1823 = or i32 %1816, 64
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = extractvalue %dx.types.ResRet.i32 %1824, 1
  %1827 = or i32 %1816, 80
  %1828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1827, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.f32 %1828, 2
  %1830 = extractvalue %dx.types.ResRet.f32 %1828, 3
  %1831 = or i32 %1816, 96
  %1832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.f32 %1832, 0
  %1834 = extractvalue %dx.types.ResRet.f32 %1832, 1
  %1835 = extractvalue %dx.types.ResRet.f32 %1832, 2
  %1836 = extractvalue %dx.types.ResRet.f32 %1832, 3
  %1837 = or i32 %1816, 112
  %1838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.f32 %1838, 2
  %1840 = or i32 %1816, 128
  %1841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.ResRet.f32 %1841, 1
  %1844 = extractvalue %dx.types.ResRet.f32 %1841, 2
  %1845 = extractvalue %dx.types.ResRet.f32 %1841, 3
  %1846 = or i32 %1816, 144
  %1847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1846, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.f32 %1847, 0
  %1849 = extractvalue %dx.types.ResRet.f32 %1847, 1
  %1850 = extractvalue %dx.types.ResRet.f32 %1847, 2
  %1851 = extractvalue %dx.types.ResRet.f32 %1847, 3
  %1852 = or i32 %1816, 160
  %1853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %1854 = extractvalue %dx.types.ResRet.f32 %1853, 0
  %1855 = extractvalue %dx.types.ResRet.f32 %1853, 1
  %1856 = extractvalue %dx.types.ResRet.f32 %1853, 2
  %1857 = extractvalue %dx.types.ResRet.f32 %1853, 3
  %1858 = or i32 %1816, 192
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = or i32 %1816, 208
  %1862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.f32 %1862, 0
  %1864 = or i32 %1816, 248
  %1865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.f32 %1865, 0
  %1867 = extractvalue %dx.types.ResRet.f32 %1865, 1
  %1868 = add nuw nsw i32 %1811, 1
  %1869 = bitcast float %1822 to i32
  %1870 = and i32 %1869, 2560
  %1871 = icmp eq i32 %1870, 0
  %1872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.f32 %1872, 0
  %1874 = extractvalue %dx.types.ResRet.f32 %1872, 1
  %1875 = extractvalue %dx.types.ResRet.f32 %1872, 2
  %1876 = extractvalue %dx.types.ResRet.f32 %1872, 3
  %1877 = call float @dx.op.dot4.f32(i32 56, float %1873, float %1874, float %1875, float %1876, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1878 = or i32 %1816, 16
  %1879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.f32 %1879, 0
  %1881 = extractvalue %dx.types.ResRet.f32 %1879, 1
  %1882 = extractvalue %dx.types.ResRet.f32 %1879, 2
  %1883 = extractvalue %dx.types.ResRet.f32 %1879, 3
  %1884 = call float @dx.op.dot4.f32(i32 56, float %1880, float %1881, float %1882, float %1883, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1885 = or i32 %1816, 32
  %1886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.f32 %1886, 0
  %1888 = extractvalue %dx.types.ResRet.f32 %1886, 1
  %1889 = extractvalue %dx.types.ResRet.f32 %1886, 2
  %1890 = extractvalue %dx.types.ResRet.f32 %1886, 3
  %1891 = call float @dx.op.dot4.f32(i32 56, float %1887, float %1888, float %1889, float %1890, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1892 = call float @dx.op.unary.f32(i32 27, float %1877)  ; Round_ni(value)
  %1893 = call float @dx.op.unary.f32(i32 6, float %1892)  ; FAbs(value)
  %1894 = call float @dx.op.unary.f32(i32 27, float %1884)  ; Round_ni(value)
  %1895 = call float @dx.op.unary.f32(i32 6, float %1894)  ; FAbs(value)
  %1896 = call float @dx.op.unary.f32(i32 6, float %1891)  ; FAbs(value)
  %1897 = call float @dx.op.unary.f32(i32 27, float %1896)  ; Round_ni(value)
  %1898 = fadd fast float %1895, %1893
  %1899 = fadd fast float %1898, %1897
  %1900 = fcmp fast oeq float %1899, 0.000000e+00
  %1901 = call float @dx.op.dot4.f32(i32 56, float %1873, float %1874, float %1875, float %1876, float %1744, float %1745, float %1746, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1902 = call float @dx.op.dot4.f32(i32 56, float %1880, float %1881, float %1882, float %1883, float %1744, float %1745, float %1746, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1903 = call float @dx.op.dot4.f32(i32 56, float %1873, float %1874, float %1875, float %1876, float %1747, float %1748, float %1749, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1904 = call float @dx.op.dot4.f32(i32 56, float %1880, float %1881, float %1882, float %1883, float %1747, float %1748, float %1749, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1905 = fsub fast float %1901, %1877
  %1906 = fsub fast float %1903, %1877
  %1907 = fsub fast float %1902, %1884
  %1908 = fsub fast float %1904, %1884
  %1909 = call float @dx.op.dot3.f32(i32 55, float %1819, float %1820, float %1821, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 2
  %1912 = fadd fast float %1911, %1909
  %1913 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  %1914 = extractvalue %dx.types.CBufRet.f32 %1910, 0
  %1915 = fcmp fast ogt float %1913, %1914
  %1916 = and i1 %1900, %1915
  %1917 = and i1 %1871, %1916
  br i1 %1917, label %1939, label %1918

; <label>:1918                                    ; preds = %2203, %2020, %1939, %1791
  %1919 = phi float [ %1792, %1939 ], [ %2023, %2020 ], [ %2023, %2203 ], [ %1792, %1791 ]
  %1920 = phi float [ %1793, %1939 ], [ %1793, %2020 ], [ %2178, %2203 ], [ %1793, %1791 ]
  %1921 = phi float [ %1794, %1939 ], [ %1794, %2020 ], [ %2177, %2203 ], [ %1794, %1791 ]
  %1922 = phi float [ %1795, %1939 ], [ %1795, %2020 ], [ %2175, %2203 ], [ %1795, %1791 ]
  %1923 = phi float [ %1796, %1939 ], [ %1796, %2020 ], [ %2147, %2203 ], [ %1796, %1791 ]
  %1924 = phi float [ %1797, %1939 ], [ %1797, %2020 ], [ %2145, %2203 ], [ %1797, %1791 ]
  %1925 = phi float [ %1798, %1939 ], [ %1798, %2020 ], [ %2213, %2203 ], [ %1798, %1791 ]
  %1926 = phi float [ %1799, %1939 ], [ %1799, %2020 ], [ %2214, %2203 ], [ %1799, %1791 ]
  %1927 = phi float [ %1800, %1939 ], [ %1800, %2020 ], [ %2215, %2203 ], [ %1800, %1791 ]
  %1928 = phi float [ %1801, %1939 ], [ %1801, %2020 ], [ %2126, %2203 ], [ %1801, %1791 ]
  %1929 = phi float [ %1802, %1939 ], [ %1802, %2020 ], [ %2127, %2203 ], [ %1802, %1791 ]
  %1930 = phi float [ %1803, %1939 ], [ %1803, %2020 ], [ %2128, %2203 ], [ %1803, %1791 ]
  %1931 = phi float [ %1804, %1939 ], [ %1804, %2020 ], [ %2155, %2203 ], [ %1804, %1791 ]
  %1932 = phi float [ %1805, %1939 ], [ %1805, %2020 ], [ %2152, %2203 ], [ %1805, %1791 ]
  %1933 = phi float [ %1806, %1939 ], [ %1806, %2020 ], [ %2149, %2203 ], [ %1806, %1791 ]
  %1934 = phi float [ %1807, %1939 ], [ %1807, %2020 ], [ %2143, %2203 ], [ %1807, %1791 ]
  %1935 = phi float [ %1808, %1939 ], [ %1808, %2020 ], [ %2138, %2203 ], [ %1808, %1791 ]
  %1936 = phi float [ %1809, %1939 ], [ %1809, %2020 ], [ %2139, %2203 ], [ %1809, %1791 ]
  %1937 = phi float [ %1810, %1939 ], [ %1810, %2020 ], [ %2140, %2203 ], [ %1810, %1791 ]
  %1938 = icmp eq i32 %1868, %1790
  br i1 %1938, label %2216, label %1791

; <label>:1939                                    ; preds = %1791
  %1940 = extractvalue %dx.types.ResRet.f32 %1838, 3
  %1941 = extractvalue %dx.types.ResRet.f32 %1838, 1
  %1942 = extractvalue %dx.types.ResRet.f32 %1838, 0
  %1943 = extractvalue %dx.types.ResRet.f32 %1828, 1
  %1944 = extractvalue %dx.types.ResRet.f32 %1828, 0
  %1945 = extractvalue %dx.types.ResRet.i32 %1824, 3
  %1946 = extractvalue %dx.types.ResRet.i32 %1824, 2
  %1947 = add i32 %1945, 0
  %1948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1947, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1950 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1948, %dx.types.Handle %1949, float %1877, float %1884, float undef, float undef, i32 0, i32 0, i32 undef, float %1905, float %1907, float undef, float %1906, float %1908, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1951 = extractvalue %dx.types.ResRet.f32 %1950, 0
  %1952 = fmul fast float %1951, %1944
  %1953 = fadd fast float %1952, %1943
  %1954 = call float @dx.op.unary.f32(i32 7, float %1953)  ; Saturate(value)
  %1955 = fmul fast float %1877, %1833
  %1956 = call float @dx.op.tertiary.f32(i32 46, float %1834, float %1884, float %1955)  ; FMad(a,b,c)
  %1957 = fadd fast float %1956, %1942
  %1958 = fmul fast float %1877, %1835
  %1959 = call float @dx.op.tertiary.f32(i32 46, float %1836, float %1884, float %1958)  ; FMad(a,b,c)
  %1960 = fadd fast float %1959, %1941
  %1961 = fmul fast float %1905, %1833
  %1962 = call float @dx.op.tertiary.f32(i32 46, float %1834, float %1907, float %1961)  ; FMad(a,b,c)
  %1963 = fmul fast float %1905, %1835
  %1964 = call float @dx.op.tertiary.f32(i32 46, float %1836, float %1907, float %1963)  ; FMad(a,b,c)
  %1965 = fmul fast float %1906, %1833
  %1966 = call float @dx.op.tertiary.f32(i32 46, float %1834, float %1908, float %1965)  ; FMad(a,b,c)
  %1967 = fmul fast float %1906, %1835
  %1968 = call float @dx.op.tertiary.f32(i32 46, float %1836, float %1908, float %1967)  ; FMad(a,b,c)
  %1969 = add i32 %1946, 0
  %1970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1969, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1971 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1970, %dx.types.Handle %1949, float %1957, float %1960, float undef, float undef, i32 0, i32 0, i32 undef, float %1962, float %1964, float undef, float %1966, float %1968, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1973 = and i32 %1869, 1024
  %1974 = icmp ne i32 %1973, 0
  %1975 = fcmp fast ogt float %1972, 0x3FE0101020000000
  %1976 = uitofp i1 %1975 to float
  %1977 = select i1 %1974, float %1976, float %1972
  %1978 = and i32 %1869, 8192
  %1979 = icmp ne i32 %1978, 0
  %1980 = select i1 %1979, float %1940, float 1.000000e+00
  %1981 = fmul fast float %1877, 2.000000e+00
  %1982 = fadd fast float %1981, -1.000000e+00
  %1983 = call float @dx.op.unary.f32(i32 6, float %1982)  ; FAbs(value)
  %1984 = fmul fast float %1983, %1866
  %1985 = fsub fast float %1984, %1866
  %1986 = call float @dx.op.unary.f32(i32 7, float %1985)  ; Saturate(value)
  %1987 = fmul fast float %1884, 2.000000e+00
  %1988 = fadd fast float %1987, -1.000000e+00
  %1989 = call float @dx.op.unary.f32(i32 6, float %1988)  ; FAbs(value)
  %1990 = fmul fast float %1989, %1867
  %1991 = fsub fast float %1990, %1867
  %1992 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1993 = fmul fast float %1896, %1829
  %1994 = fsub fast float %1993, %1829
  %1995 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1996 = fmul fast float %1954, %1980
  %1997 = fmul fast float %1996, %1951
  %1998 = fmul fast float %1997, %1986
  %1999 = fmul fast float %1998, %1977
  %2000 = fmul fast float %1999, %1992
  %2001 = fmul fast float %2000, %1995
  %2002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2003 = extractvalue %dx.types.CBufRet.f32 %2002, 1
  %2004 = extractvalue %dx.types.CBufRet.f32 %2002, 0
  %2005 = fsub fast float %1913, %2004
  %2006 = fmul fast float %2005, %2003
  %2007 = call float @dx.op.unary.f32(i32 7, float %2006)  ; Saturate(value)
  %2008 = fmul fast float %2001, %1830
  %2009 = fadd fast float %2001, %1830
  %2010 = fmul fast float %2009, %1839
  %2011 = fsub fast float %2010, %1839
  %2012 = call float @dx.op.unary.f32(i32 7, float %2011)  ; Saturate(value)
  %2013 = and i32 %1869, 128
  %2014 = icmp ne i32 %2013, 0
  %2015 = select i1 %2014, float %2012, float %2008
  %2016 = fmul fast float %2015, %2007
  %2017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2018 = extractvalue %dx.types.CBufRet.f32 %2017, 0
  %2019 = fcmp fast ugt float %2016, %2018
  br i1 %2019, label %2020, label %1918

; <label>:2020                                    ; preds = %1939
  %2021 = select i1 %1979, float %2016, float 0.000000e+00
  %2022 = fadd fast float %2021, %1792
  %2023 = call float @dx.op.unary.f32(i32 7, float %2022)  ; Saturate(value)
  br i1 %1979, label %1918, label %2024

; <label>:2024                                    ; preds = %2020
  %2025 = and i32 %1869, 4
  %2026 = and i32 %1869, 8
  %2027 = add i32 %1825, 0
  %2028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2027, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2030 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2028, %dx.types.Handle %2029, float %1957, float %1960, float undef, float undef, i32 0, i32 0, i32 undef, float %1962, float %1964, float undef, float %1966, float %1968, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2031 = extractvalue %dx.types.ResRet.f32 %2030, 0
  %2032 = extractvalue %dx.types.ResRet.f32 %2030, 1
  %2033 = extractvalue %dx.types.ResRet.f32 %2030, 2
  %2034 = extractvalue %dx.types.ResRet.f32 %2030, 3
  %2035 = bitcast float %1851 to i32
  %2036 = and i32 %2035, 255
  %2037 = uitofp i32 %2036 to float
  %2038 = lshr i32 %2035, 8
  %2039 = and i32 %2038, 255
  %2040 = uitofp i32 %2039 to float
  %2041 = fmul fast float %2034, %2037
  %2042 = fadd fast float %2041, %2040
  %2043 = fmul fast float %2042, 0x3F70101000000000
  %2044 = add i32 %1826, 0
  %2045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2044, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2046 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2045, %dx.types.Handle %2029, float %1957, float %1960, float undef, float undef, i32 0, i32 0, i32 undef, float %1962, float %1964, float undef, float %1966, float %1968, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2047 = extractvalue %dx.types.ResRet.f32 %2046, 0
  %2048 = extractvalue %dx.types.ResRet.f32 %2046, 1
  %2049 = extractvalue %dx.types.ResRet.f32 %2046, 2
  %2050 = extractvalue %dx.types.ResRet.f32 %2046, 3
  %2051 = bitcast float %1845 to i32
  %2052 = and i32 %2051, 255
  %2053 = uitofp i32 %2052 to float
  %2054 = lshr i32 %2051, 8
  %2055 = and i32 %2054, 255
  %2056 = uitofp i32 %2055 to float
  %2057 = lshr i32 %2051, 16
  %2058 = and i32 %2057, 255
  %2059 = uitofp i32 %2058 to float
  %2060 = fmul fast float %2059, 0x3F70101000000000
  %2061 = fmul fast float %2047, %2053
  %2062 = fadd fast float %2061, %2056
  %2063 = fmul fast float %2062, 0x3F70101000000000
  %2064 = fadd fast float %2048, -5.000000e-01
  %2065 = fadd fast float %2050, -5.000000e-01
  %2066 = fmul fast float %2064, %2060
  %2067 = fmul fast float %2065, %2060
  %2068 = fadd fast float %2066, 5.000000e-01
  %2069 = fadd fast float %2067, 5.000000e-01
  %2070 = fmul fast float %2031, %1854
  %2071 = fmul fast float %2032, %1855
  %2072 = fmul fast float %2033, %1856
  %2073 = fmul fast float %2068, 2.000000e+00
  %2074 = fadd fast float %2073, -1.000000e+00
  %2075 = fmul fast float %2069, 2.000000e+00
  %2076 = fadd fast float %2075, -1.000000e+00
  %2077 = fadd fast float %2074, %2076
  %2078 = fmul fast float %2077, 5.000000e-01
  %2079 = fsub fast float %2074, %2076
  %2080 = fmul fast float %2079, 5.000000e-01
  %2081 = call float @dx.op.unary.f32(i32 6, float %2078)  ; FAbs(value)
  %2082 = fsub fast float 1.000000e+00, %2081
  %2083 = call float @dx.op.unary.f32(i32 6, float %2080)  ; FAbs(value)
  %2084 = fsub fast float %2082, %2083
  %2085 = call float @dx.op.dot3.f32(i32 55, float %2078, float %2080, float %2084, float %2078, float %2080, float %2084)  ; Dot3(ax,ay,az,bx,by,bz)
  %2086 = call float @dx.op.unary.f32(i32 25, float %2085)  ; Rsqrt(value)
  %2087 = fmul fast float %2078, %2086
  %2088 = fmul fast float %2080, %2086
  %2089 = fmul fast float %2086, %2084
  %2090 = fmul fast float %2089, %1819
  %2091 = fmul fast float %2089, %1820
  %2092 = fmul fast float %2089, %1821
  %2093 = fmul fast float %2087, %1842
  %2094 = fmul fast float %2087, %1843
  %2095 = fmul fast float %2087, %1844
  %2096 = fadd fast float %2093, %2090
  %2097 = fadd fast float %2094, %2091
  %2098 = fadd fast float %2095, %2092
  %2099 = fmul fast float %2088, %1848
  %2100 = fmul fast float %2088, %1849
  %2101 = fmul fast float %2088, %1850
  %2102 = fadd fast float %2096, %2099
  %2103 = fadd fast float %2097, %2100
  %2104 = fadd fast float %2098, %2101
  %2105 = call float @dx.op.dot3.f32(i32 55, float %2102, float %2103, float %2104, float %2102, float %2103, float %2104)  ; Dot3(ax,ay,az,bx,by,bz)
  %2106 = call float @dx.op.unary.f32(i32 25, float %2105)  ; Rsqrt(value)
  %2107 = fmul fast float %2102, %2106
  %2108 = fmul fast float %2103, %2106
  %2109 = fmul fast float %2104, %2106
  %2110 = icmp ne i32 %2026, 0
  %2111 = select i1 %2110, float 1.000000e+00, float 0.000000e+00
  %2112 = fmul fast float %2016, %2111
  %2113 = and i32 %1869, 1
  %2114 = icmp eq i32 %2113, 0
  br i1 %2114, label %2115, label %2119

; <label>:2115                                    ; preds = %2024
  %2116 = fsub fast float %2107, %1801
  %2117 = fsub fast float %2108, %1802
  %2118 = fsub fast float %2109, %1803
  br label %2119

; <label>:2119                                    ; preds = %2115, %2024
  %2120 = phi float [ %2116, %2115 ], [ %2107, %2024 ]
  %2121 = phi float [ %2117, %2115 ], [ %2108, %2024 ]
  %2122 = phi float [ %2118, %2115 ], [ %2109, %2024 ]
  %2123 = fmul float %2122, %2112
  %2124 = fmul float %2121, %2112
  %2125 = fmul float %2120, %2112
  %2126 = fadd fast float %2125, %1801
  %2127 = fadd fast float %2124, %1802
  %2128 = fadd fast float %2123, %1803
  %2129 = icmp ne i32 %2025, 0
  %2130 = select i1 %2129, float 1.000000e+00, float 0.000000e+00
  %2131 = fmul fast float %2016, %2130
  %2132 = fsub fast float %2070, %1808
  %2133 = fsub fast float %2071, %1809
  %2134 = fsub fast float %2072, %1810
  %2135 = fmul fast float %2132, %2131
  %2136 = fmul fast float %2133, %2131
  %2137 = fmul fast float %2134, %2131
  %2138 = fadd fast float %2135, %1808
  %2139 = fadd fast float %2136, %1809
  %2140 = fadd fast float %2137, %1810
  %2141 = fsub fast float %2043, %1807
  %2142 = fmul fast float %2141, %2131
  %2143 = fadd fast float %2142, %1807
  %2144 = fmul fast float %2131, %1797
  %2145 = fsub fast float %1797, %2144
  %2146 = fmul fast float %2131, %1796
  %2147 = fsub fast float %1796, %2146
  %2148 = fadd fast float %2016, %1806
  %2149 = call float @dx.op.unary.f32(i32 7, float %2148)  ; Saturate(value)
  %2150 = fsub fast float %2063, %1805
  %2151 = fmul fast float %2150, %2112
  %2152 = fadd fast float %2151, %1805
  %2153 = fsub fast float %2049, %1804
  %2154 = fmul fast float %2153, %2112
  %2155 = fadd fast float %2154, %1804
  %2156 = call float @dx.op.dot3.f32(i32 55, float %2070, float %2071, float %2072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2158 = extractvalue %dx.types.CBufRet.f32 %2157, 0
  %2159 = extractvalue %dx.types.CBufRet.f32 %2157, 1
  %2160 = fmul fast float %2159, %2156
  %2161 = fadd fast float %2160, %2158
  %2162 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2163 = bitcast float %1857 to i32
  %2164 = and i32 %2163, 65535
  %2165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2164)  ; LegacyF16ToF32(value)
  %2166 = lshr i32 %2163, 16
  %2167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2166)  ; LegacyF16ToF32(value)
  %2168 = fcmp fast oge float %2165, 0.000000e+00
  %2169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2170 = extractvalue %dx.types.CBufRet.f32 %2169, 0
  %2171 = select i1 %2168, float %2165, float %2170
  %2172 = fadd fast float %2171, %2167
  %2173 = fsub fast float %2162, %1795
  %2174 = fmul fast float %2173, %2016
  %2175 = fadd fast float %2174, %1795
  %2176 = fmul fast float %2172, %2016
  %2177 = call float @dx.op.binary.f32(i32 35, float %1794, float %2176)  ; FMax(a,b)
  %2178 = call float @dx.op.binary.f32(i32 35, float %1793, float %2016)  ; FMax(a,b)
  %2179 = and i32 %1869, 16
  %2180 = icmp eq i32 %2179, 0
  br i1 %2180, label %2203, label %2181

; <label>:2181                                    ; preds = %2119
  %2182 = bitcast float %1863 to i32
  %2183 = add i32 %1860, 0
  %2184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2183, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2185 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2184, %dx.types.Handle %2029, float %1957, float %1960, float undef, float undef, i32 0, i32 0, i32 undef, float %1962, float %1964, float undef, float %1966, float %1968, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2186 = extractvalue %dx.types.ResRet.f32 %2185, 0
  %2187 = extractvalue %dx.types.ResRet.f32 %2185, 1
  %2188 = extractvalue %dx.types.ResRet.f32 %2185, 2
  %2189 = and i32 %2182, 65535
  %2190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2189)  ; LegacyF16ToF32(value)
  %2191 = fmul fast float %2186, %1854
  %2192 = fmul fast float %2187, %1855
  %2193 = fmul fast float %2188, %1856
  %2194 = and i32 %1869, 16384
  %2195 = icmp ne i32 %2194, 0
  %2196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.f32 %2196, 0
  %2198 = select i1 %2195, float %2197, float 1.000000e+00
  %2199 = fmul fast float %2198, %2190
  %2200 = fmul fast float %2191, %2199
  %2201 = fmul fast float %2192, %2199
  %2202 = fmul fast float %2193, %2199
  br label %2203

; <label>:2203                                    ; preds = %2181, %2119
  %2204 = phi float [ %2200, %2181 ], [ 0.000000e+00, %2119 ]
  %2205 = phi float [ %2201, %2181 ], [ 0.000000e+00, %2119 ]
  %2206 = phi float [ %2202, %2181 ], [ 0.000000e+00, %2119 ]
  %2207 = fsub fast float %2204, %1798
  %2208 = fsub fast float %2205, %1799
  %2209 = fsub fast float %2206, %1800
  %2210 = fmul fast float %2207, %2016
  %2211 = fmul fast float %2208, %2016
  %2212 = fmul fast float %2209, %2016
  %2213 = fadd fast float %2210, %1798
  %2214 = fadd fast float %2211, %1799
  %2215 = fadd fast float %2212, %1800
  br label %1918

; <label>:2216                                    ; preds = %1918
  br label %2217

; <label>:2217                                    ; preds = %2216, %1695
  %2218 = phi float [ 0.000000e+00, %1695 ], [ %1919, %2216 ]
  %2219 = phi float [ %748, %1695 ], [ %1920, %2216 ]
  %2220 = phi float [ %1709, %1695 ], [ %1921, %2216 ]
  %2221 = phi float [ %1707, %1695 ], [ %1922, %2216 ]
  %2222 = phi float [ 0.000000e+00, %1695 ], [ %1923, %2216 ]
  %2223 = phi float [ 0.000000e+00, %1695 ], [ %1924, %2216 ]
  %2224 = phi float [ %1701, %1695 ], [ %1925, %2216 ]
  %2225 = phi float [ %1702, %1695 ], [ %1926, %2216 ]
  %2226 = phi float [ %1703, %1695 ], [ %1927, %2216 ]
  %2227 = phi float [ %1735, %1695 ], [ %1928, %2216 ]
  %2228 = phi float [ %1736, %1695 ], [ %1929, %2216 ]
  %2229 = phi float [ %1737, %1695 ], [ %1930, %2216 ]
  %2230 = phi float [ %1706, %1695 ], [ %1931, %2216 ]
  %2231 = phi float [ %1705, %1695 ], [ %1932, %2216 ]
  %2232 = phi float [ 0.000000e+00, %1695 ], [ %1933, %2216 ]
  %2233 = phi float [ %1704, %1695 ], [ %1934, %2216 ]
  %2234 = phi float [ %1698, %1695 ], [ %1935, %2216 ]
  %2235 = phi float [ %1699, %1695 ], [ %1936, %2216 ]
  %2236 = phi float [ %1700, %1695 ], [ %1937, %2216 ]
  %2237 = call float @dx.op.dot3.f32(i32 55, float %2227, float %2228, float %2229, float %2227, float %2228, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2238 = call float @dx.op.unary.f32(i32 25, float %2237)  ; Rsqrt(value)
  %2239 = fmul fast float %2238, %2227
  %2240 = fmul fast float %2238, %2228
  %2241 = fmul fast float %2238, %2229
  %2242 = fadd fast float %2232, %748
  %2243 = call float @dx.op.unary.f32(i32 7, float %2242)  ; Saturate(value)
  %2244 = call float @dx.op.dot3.f32(i32 55, float %2239, float %2240, float %2241, float %2239, float %2240, float %2241)  ; Dot3(ax,ay,az,bx,by,bz)
  %2245 = call float @dx.op.unary.f32(i32 25, float %2244)  ; Rsqrt(value)
  %2246 = fmul fast float %2245, %2239
  %2247 = fmul fast float %2245, %2240
  %2248 = fmul fast float %2245, %2241
  %2249 = fadd fast float %2233, 0xBFB99999A0000000
  %2250 = call float @dx.op.unary.f32(i32 7, float %2249)  ; Saturate(value)
  %2251 = fmul fast float %2250, 0x3FF1C71C80000000
  %2252 = call float @dx.op.binary.f32(i32 36, float %2233, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2253 = fsub fast float 1.000000e+00, %2251
  %2254 = call float @dx.op.unary.f32(i32 7, float %2253)  ; Saturate(value)
  %2255 = fmul fast float %2254, %2234
  %2256 = fmul fast float %2254, %2235
  %2257 = fmul fast float %2254, %2236
  %2258 = call float @dx.op.unary.f32(i32 7, float %2255)  ; Saturate(value)
  %2259 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  %2260 = call float @dx.op.unary.f32(i32 7, float %2257)  ; Saturate(value)
  %2261 = fmul fast float %2251, %2234
  %2262 = fmul fast float %2251, %2235
  %2263 = fmul fast float %2251, %2236
  %2264 = fadd fast float %2261, %2252
  %2265 = fadd fast float %2262, %2252
  %2266 = fadd fast float %2263, %2252
  %2267 = call float @dx.op.unary.f32(i32 7, float %2264)  ; Saturate(value)
  %2268 = call float @dx.op.unary.f32(i32 7, float %2265)  ; Saturate(value)
  %2269 = call float @dx.op.unary.f32(i32 7, float %2266)  ; Saturate(value)
  %2270 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.i32 %2271, 3
  %2273 = and i32 %2272, 8
  %2274 = icmp ne i32 %2273, 0
  %2275 = call float @dx.op.binary.f32(i32 35, float %2258, float %2234)  ; FMax(a,b)
  %2276 = call float @dx.op.binary.f32(i32 35, float %2259, float %2234)  ; FMax(a,b)
  %2277 = call float @dx.op.binary.f32(i32 35, float %2260, float %2234)  ; FMax(a,b)
  %2278 = call float @dx.op.dot3.f32(i32 55, float %2258, float %2259, float %2260, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2279 = select i1 %189, float %2234, float %2258
  %2280 = select i1 %189, float %2278, float %2259
  %2281 = select i1 %189, float 1.000000e+00, float %2260
  %2282 = select i1 %2274, float %2275, float %2279
  %2283 = select i1 %2274, float %2276, float %2280
  %2284 = select i1 %2274, float %2277, float %2281
  %2285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2286 = extractvalue %dx.types.CBufRet.f32 %2285, 0
  %2287 = extractvalue %dx.types.CBufRet.f32 %2285, 1
  %2288 = extractvalue %dx.types.CBufRet.f32 %2285, 2
  %2289 = fadd fast float %2286, %118
  %2290 = fadd fast float %2287, %119
  %2291 = fadd fast float %2288, %120
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 0
  %2294 = extractvalue %dx.types.CBufRet.f32 %2292, 1
  %2295 = fsub fast float %2289, %2293
  %2296 = fsub fast float %2290, %2294
  %2297 = fmul fast float %2295, %2295
  %2298 = fmul fast float %2296, %2296
  %2299 = fadd fast float %2297, %2298
  %2300 = call float @dx.op.unary.f32(i32 24, float %2299)  ; Sqrt(value)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2292, 2
  %2302 = fcmp fast olt float %2300, %2301
  br i1 %2302, label %2303, label %2370

; <label>:2303                                    ; preds = %2217
  %2304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2305 = extractvalue %dx.types.CBufRet.f32 %2304, 0
  %2306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2307 = extractvalue %dx.types.CBufRet.f32 %2306, 0
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2309 = extractvalue %dx.types.CBufRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.CBufRet.f32 %2304, 1
  %2311 = extractvalue %dx.types.CBufRet.f32 %2306, 1
  %2312 = extractvalue %dx.types.CBufRet.f32 %2308, 1
  %2313 = extractvalue %dx.types.CBufRet.f32 %2304, 3
  %2314 = extractvalue %dx.types.CBufRet.f32 %2306, 3
  %2315 = extractvalue %dx.types.CBufRet.f32 %2308, 3
  %2316 = fadd fast float %2313, %2289
  %2317 = fadd fast float %2314, %2290
  %2318 = fadd fast float %2315, %2291
  %2319 = fmul fast float %2316, %2305
  %2320 = call float @dx.op.tertiary.f32(i32 46, float %2317, float %2307, float %2319)  ; FMad(a,b,c)
  %2321 = call float @dx.op.tertiary.f32(i32 46, float %2318, float %2309, float %2320)  ; FMad(a,b,c)
  %2322 = fmul fast float %2316, %2310
  %2323 = call float @dx.op.tertiary.f32(i32 46, float %2317, float %2311, float %2322)  ; FMad(a,b,c)
  %2324 = call float @dx.op.tertiary.f32(i32 46, float %2318, float %2312, float %2323)  ; FMad(a,b,c)
  %2325 = fsub fast float %2321, %2313
  %2326 = fsub fast float %2324, %2314
  %2327 = fsub fast float %2325, %2293
  %2328 = fadd fast float %2327, %2301
  %2329 = fsub fast float %2326, %2294
  %2330 = fadd fast float %2329, %2301
  %2331 = extractvalue %dx.types.CBufRet.f32 %2292, 3
  %2332 = fmul fast float %2328, %2331
  %2333 = fmul fast float %2330, %2331
  %2334 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  %2335 = call float @dx.op.unary.f32(i32 7, float %2333)  ; Saturate(value)
  %2336 = fsub fast float 1.000000e+00, %2334
  %2337 = fsub fast float 1.000000e+00, %2335
  %2338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2336, float %2337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2339 = extractvalue %dx.types.ResRet.f32 %2338, 0
  %2340 = fcmp fast ugt float %2339, 0.000000e+00
  br i1 %2340, label %2341, label %2644

; <label>:2341                                    ; preds = %2303
  %2342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2343 = extractvalue %dx.types.CBufRet.f32 %2342, 2
  %2344 = fmul fast float %2343, %2339
  %2345 = extractvalue %dx.types.CBufRet.f32 %2342, 3
  %2346 = fadd fast float %2345, %2344
  %2347 = extractvalue %dx.types.CBufRet.f32 %2308, 2
  %2348 = fadd fast float %2346, %2315
  %2349 = fmul fast float %2321, %2309
  %2350 = call float @dx.op.tertiary.f32(i32 46, float %2324, float %2312, float %2349)  ; FMad(a,b,c)
  %2351 = call float @dx.op.tertiary.f32(i32 46, float %2348, float %2347, float %2350)  ; FMad(a,b,c)
  %2352 = fsub fast float %2351, %2315
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 2
  %2355 = fsub fast float %2352, %2354
  %2356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %2336, float %2337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2357 = extractvalue %dx.types.ResRet.f32 %2356, 0
  %2358 = extractvalue %dx.types.ResRet.f32 %2356, 1
  %2359 = extractvalue %dx.types.ResRet.f32 %2356, 2
  %2360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %2336, float %2337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2361 = extractvalue %dx.types.ResRet.f32 %2360, 0
  %2362 = extractvalue %dx.types.ResRet.f32 %2360, 1
  %2363 = extractvalue %dx.types.ResRet.f32 %2360, 2
  %2364 = fadd fast float %2361, %2357
  %2365 = fmul fast float %2364, 0x3F847AE140000000
  %2366 = fadd fast float %2362, %2358
  %2367 = fmul fast float %2366, 0x3F847AE140000000
  %2368 = fadd fast float %2363, %2359
  %2369 = fmul fast float %2368, 0x3F847AE140000000
  br label %2644

; <label>:2370                                    ; preds = %2217
  %2371 = and i32 %165, 1
  %2372 = icmp eq i32 %2371, 0
  br i1 %2372, label %2644, label %2373

; <label>:2373                                    ; preds = %2370
  %2374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2375 = extractvalue %dx.types.CBufRet.f32 %2374, 0
  %2376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.f32 %2376, 0
  %2378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2379 = extractvalue %dx.types.CBufRet.f32 %2378, 0
  %2380 = extractvalue %dx.types.CBufRet.f32 %2374, 1
  %2381 = extractvalue %dx.types.CBufRet.f32 %2376, 1
  %2382 = extractvalue %dx.types.CBufRet.f32 %2378, 1
  %2383 = extractvalue %dx.types.CBufRet.f32 %2374, 3
  %2384 = extractvalue %dx.types.CBufRet.f32 %2376, 3
  %2385 = extractvalue %dx.types.CBufRet.f32 %2378, 3
  %2386 = fadd fast float %2383, %2289
  %2387 = fadd fast float %2384, %2290
  %2388 = fadd fast float %2385, %2291
  %2389 = fmul fast float %2386, %2375
  %2390 = call float @dx.op.tertiary.f32(i32 46, float %2387, float %2377, float %2389)  ; FMad(a,b,c)
  %2391 = call float @dx.op.tertiary.f32(i32 46, float %2388, float %2379, float %2390)  ; FMad(a,b,c)
  %2392 = fmul fast float %2386, %2380
  %2393 = call float @dx.op.tertiary.f32(i32 46, float %2387, float %2381, float %2392)  ; FMad(a,b,c)
  %2394 = call float @dx.op.tertiary.f32(i32 46, float %2388, float %2382, float %2393)  ; FMad(a,b,c)
  %2395 = fsub fast float %2391, %2383
  %2396 = fsub fast float %2394, %2384
  %2397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2398 = extractvalue %dx.types.CBufRet.f32 %2397, 0
  %2399 = extractvalue %dx.types.CBufRet.f32 %2397, 1
  %2400 = extractvalue %dx.types.CBufRet.f32 %2397, 2
  %2401 = extractvalue %dx.types.CBufRet.f32 %2397, 3
  %2402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2402, 3
  %2404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2405 = extractvalue %dx.types.CBufRet.i32 %2404, 0
  %2406 = extractvalue %dx.types.CBufRet.i32 %2404, 1
  %2407 = udiv i32 %2406, %2405
  %2408 = fsub fast float %2395, %2398
  %2409 = fsub fast float %2396, %2399
  %2410 = call float @dx.op.binary.f32(i32 35, float %2408, float 0.000000e+00)  ; FMax(a,b)
  %2411 = call float @dx.op.binary.f32(i32 35, float %2409, float 0.000000e+00)  ; FMax(a,b)
  %2412 = call float @dx.op.binary.f32(i32 36, float %2410, float %2400)  ; FMin(a,b)
  %2413 = call float @dx.op.binary.f32(i32 36, float %2411, float %2401)  ; FMin(a,b)
  %2414 = add i32 %2405, -1
  %2415 = add i32 %2407, -1
  %2416 = fmul fast float %2412, %2403
  %2417 = fmul fast float %2413, %2403
  %2418 = fptoui float %2416 to i32
  %2419 = fptoui float %2417 to i32
  %2420 = call i32 @dx.op.binary.i32(i32 40, i32 %2418, i32 %2414)  ; UMin(a,b)
  %2421 = call i32 @dx.op.binary.i32(i32 40, i32 %2419, i32 %2415)  ; UMin(a,b)
  %2422 = mul i32 %2421, %2405
  %2423 = add i32 %2422, %2420
  %2424 = shl i32 %2423, 2
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2424, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = icmp eq i32 %2426, -1
  br i1 %2427, label %2644, label %2428

; <label>:2428                                    ; preds = %2373
  %2429 = mul i32 %2426, 148
  %2430 = add i32 %2429, 4
  %2431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2430, i32 undef)  ; BufferLoad(srv,index,wot)
  %2432 = extractvalue %dx.types.ResRet.f32 %2431, 0
  %2433 = add i32 %2429, 8
  %2434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.f32 %2434, 0
  %2436 = add i32 %2429, 36
  %2437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.f32 %2437, 0
  %2439 = add i32 %2429, 60
  %2440 = add i32 %2429, 92
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = add i32 %2429, 116
  %2444 = fsub fast float %2395, %2432
  %2445 = fsub fast float %2396, %2435
  %2446 = fmul fast float %2403, %2444
  %2447 = fmul fast float %2403, %2445
  %2448 = call float @dx.op.unary.f32(i32 7, float %2446)  ; Saturate(value)
  %2449 = call float @dx.op.unary.f32(i32 7, float %2447)  ; Saturate(value)
  %2450 = fsub fast float 1.000000e+00, %2449
  %2451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2452 = extractvalue %dx.types.CBufRet.f32 %2451, 2
  %2453 = call float @dx.op.unary.f32(i32 83, float %2448)  ; DerivCoarseX(value)
  %2454 = call float @dx.op.unary.f32(i32 83, float %2450)  ; DerivCoarseX(value)
  %2455 = call float @dx.op.unary.f32(i32 84, float %2448)  ; DerivCoarseY(value)
  %2456 = call float @dx.op.unary.f32(i32 84, float %2450)  ; DerivCoarseY(value)
  %2457 = fmul fast float %2453, %2452
  %2458 = fmul fast float %2454, %2452
  %2459 = fmul fast float %2455, %2452
  %2460 = fmul fast float %2456, %2452
  %2461 = call float @dx.op.dot2.f32(i32 54, float %2459, float %2460, float %2459, float %2460)  ; Dot2(ax,ay,bx,by)
  %2462 = call float @dx.op.dot2.f32(i32 54, float %2457, float %2458, float %2457, float %2458)  ; Dot2(ax,ay,bx,by)
  %2463 = call float @dx.op.binary.f32(i32 35, float %2462, float %2461)  ; FMax(a,b)
  %2464 = call float @dx.op.unary.f32(i32 23, float %2463)  ; Log(value)
  %2465 = fmul fast float %2464, 5.000000e-01
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 1
  %2468 = fadd fast float %2467, %2465
  %2469 = call float @dx.op.binary.f32(i32 35, float %2468, float 0.000000e+00)  ; FMax(a,b)
  %2470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2471 = extractvalue %dx.types.CBufRet.f32 %2470, 3
  %2472 = fadd fast float %2471, %2469
  %2473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.f32 %2473, 3
  %2475 = fadd fast float %2472, %2474
  %2476 = add i32 %2442, 0
  %2477 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2476, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2478 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2477, i32 0)  ; GetDimensions(handle,mipLevel)
  %2479 = extractvalue %dx.types.Dimensions %2478, 0
  %2480 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2479)  ; FirstbitLo(value)
  %2481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2482 = extractvalue %dx.types.CBufRet.i32 %2481, 1
  %2483 = sub nsw i32 %2482, %2480
  %2484 = sitofp i32 %2483 to float
  %2485 = fsub fast float %2475, %2484
  %2486 = call float @dx.op.binary.f32(i32 35, float %2485, float 0.000000e+00)  ; FMax(a,b)
  %2487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2477, %dx.types.Handle %37, float %2448, float %2450, float %2438, float undef, i32 0, i32 0, i32 undef, float %2486)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2488 = extractvalue %dx.types.ResRet.f32 %2487, 0
  %2489 = fcmp ule float %2488, 0x3FE0101020000000
  %2490 = extractvalue %dx.types.CBufRet.i32 %2481, 0
  %2491 = and i32 %2490, 128
  %2492 = icmp ne i32 %2491, 0
  %2493 = and i1 %2489, %2492
  br i1 %2493, label %2644, label %2494

; <label>:2494                                    ; preds = %2428
  %2495 = add i32 %2429, 20
  %2496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.f32 %2496, 0
  %2498 = add i32 %2429, 24
  %2499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.f32 %2499, 0
  %2501 = add i32 %2429, 40
  %2502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2501, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.f32 %2502, 0
  %2504 = add i32 %2429, 96
  %2505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2504, i32 undef)  ; BufferLoad(srv,index,wot)
  %2506 = extractvalue %dx.types.ResRet.i32 %2505, 0
  %2507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2508 = extractvalue %dx.types.CBufRet.f32 %2507, 2
  %2509 = fmul fast float %2508, %2448
  %2510 = fmul fast float %2508, %2450
  %2511 = extractvalue %dx.types.CBufRet.f32 %2507, 3
  %2512 = fadd fast float %2509, %2511
  %2513 = fadd fast float %2510, %2511
  %2514 = add i32 %2506, 0
  %2515 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2514, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2516 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2515, i32 0)  ; GetDimensions(handle,mipLevel)
  %2517 = extractvalue %dx.types.Dimensions %2516, 0
  %2518 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2517)  ; FirstbitLo(value)
  %2519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2520 = extractvalue %dx.types.CBufRet.i32 %2519, 1
  %2521 = sub nsw i32 %2520, %2518
  %2522 = sitofp i32 %2521 to float
  %2523 = fsub fast float %2472, %2522
  %2524 = call float @dx.op.binary.f32(i32 35, float %2523, float 0.000000e+00)  ; FMax(a,b)
  %2525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2515, %dx.types.Handle %37, float %2512, float %2513, float %2503, float undef, i32 0, i32 0, i32 undef, float %2524)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2526 = extractvalue %dx.types.ResRet.f32 %2525, 0
  %2527 = fmul fast float %2526, %2497
  %2528 = fadd fast float %2527, %2500
  %2529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2530 = extractvalue %dx.types.CBufRet.f32 %2529, 0
  %2531 = extractvalue %dx.types.CBufRet.f32 %2529, 1
  %2532 = extractvalue %dx.types.CBufRet.f32 %2529, 2
  %2533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2534 = extractvalue %dx.types.CBufRet.f32 %2533, 3
  %2535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2536 = extractvalue %dx.types.CBufRet.f32 %2535, 3
  %2537 = extractvalue %dx.types.CBufRet.f32 %2529, 3
  %2538 = fadd fast float %2534, %2395
  %2539 = fadd fast float %2536, %2396
  %2540 = fadd fast float %2528, %2537
  %2541 = fmul fast float %2538, %2530
  %2542 = call float @dx.op.tertiary.f32(i32 46, float %2539, float %2531, float %2541)  ; FMad(a,b,c)
  %2543 = call float @dx.op.tertiary.f32(i32 46, float %2540, float %2532, float %2542)  ; FMad(a,b,c)
  %2544 = fsub fast float %2543, %2537
  %2545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2546 = extractvalue %dx.types.CBufRet.f32 %2545, 2
  %2547 = fsub fast float %2544, %2546
  %2548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2549 = extractvalue %dx.types.CBufRet.i32 %2548, 0
  %2550 = call i32 @dx.op.binary.i32(i32 40, i32 %2426, i32 %2549)  ; UMin(a,b)
  %2551 = mul i32 %2550, 36
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = add i32 %2551, 4
  %2555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2556 = extractvalue %dx.types.CBufRet.f32 %2555, 0
  %2557 = fmul fast float %2556, %2448
  %2558 = fmul fast float %2556, %2450
  %2559 = extractvalue %dx.types.CBufRet.f32 %2555, 1
  %2560 = fadd fast float %2557, %2559
  %2561 = fadd fast float %2558, %2559
  %2562 = icmp eq i32 %2553, 0
  br i1 %2562, label %2631, label %2563

; <label>:2563                                    ; preds = %2494
  br label %2564

; <label>:2564                                    ; preds = %2621, %2563
  %2565 = phi float [ %2622, %2621 ], [ 0.000000e+00, %2563 ]
  %2566 = phi float [ %2623, %2621 ], [ 0.000000e+00, %2563 ]
  %2567 = phi float [ %2624, %2621 ], [ 0.000000e+00, %2563 ]
  %2568 = phi float [ %2625, %2621 ], [ 0.000000e+00, %2563 ]
  %2569 = phi float [ %2626, %2621 ], [ 0.000000e+00, %2563 ]
  %2570 = phi float [ %2627, %2621 ], [ 0.000000e+00, %2563 ]
  %2571 = phi i32 [ %2628, %2621 ], [ 0, %2563 ]
  %2572 = shl i32 %2571, 2
  %2573 = add i32 %2439, %2572
  %2574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2573, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.f32 %2574, 0
  %2576 = add i32 %2443, %2572
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = add i32 %2578, 0
  %2580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2579, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2581 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2580, i32 0)  ; GetDimensions(handle,mipLevel)
  %2582 = extractvalue %dx.types.Dimensions %2581, 0
  %2583 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2582)  ; FirstbitLo(value)
  %2584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2585 = extractvalue %dx.types.CBufRet.i32 %2584, 1
  %2586 = sub nsw i32 %2585, %2583
  %2587 = sitofp i32 %2586 to float
  %2588 = fsub fast float %2472, %2587
  %2589 = call float @dx.op.binary.f32(i32 35, float %2588, float 0.000000e+00)  ; FMax(a,b)
  %2590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2580, %dx.types.Handle %37, float %2560, float %2561, float %2575, float undef, i32 0, i32 0, i32 undef, float %2589)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2591 = extractvalue %dx.types.ResRet.f32 %2590, 0
  %2592 = fcmp fast ogt float %2591, 0.000000e+00
  br i1 %2592, label %2593, label %2621

; <label>:2593                                    ; preds = %2564
  %2594 = add i32 %2554, %2572
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = and i32 %2596, 32767
  %2598 = mul nuw nsw i32 %2597, 928
  %2599 = add nuw nsw i32 %2598, 48
  %2600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2599, i32 undef)  ; BufferLoad(srv,index,wot)
  %2601 = extractvalue %dx.types.ResRet.f32 %2600, 0
  %2602 = extractvalue %dx.types.ResRet.f32 %2600, 1
  %2603 = extractvalue %dx.types.ResRet.f32 %2600, 2
  %2604 = add nuw nsw i32 %2598, 60
  %2605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.f32 %2605, 0
  %2607 = extractvalue %dx.types.ResRet.f32 %2605, 1
  %2608 = extractvalue %dx.types.ResRet.f32 %2605, 2
  %2609 = fmul fast float %2601, %2591
  %2610 = fmul fast float %2602, %2591
  %2611 = fmul fast float %2603, %2591
  %2612 = fadd fast float %2609, %2565
  %2613 = fadd fast float %2610, %2566
  %2614 = fadd fast float %2611, %2567
  %2615 = fmul fast float %2606, %2591
  %2616 = fmul fast float %2607, %2591
  %2617 = fmul fast float %2608, %2591
  %2618 = fadd fast float %2615, %2568
  %2619 = fadd fast float %2616, %2569
  %2620 = fadd fast float %2617, %2570
  br label %2621

; <label>:2621                                    ; preds = %2593, %2564
  %2622 = phi float [ %2612, %2593 ], [ %2565, %2564 ]
  %2623 = phi float [ %2613, %2593 ], [ %2566, %2564 ]
  %2624 = phi float [ %2614, %2593 ], [ %2567, %2564 ]
  %2625 = phi float [ %2618, %2593 ], [ %2568, %2564 ]
  %2626 = phi float [ %2619, %2593 ], [ %2569, %2564 ]
  %2627 = phi float [ %2620, %2593 ], [ %2570, %2564 ]
  %2628 = add nuw i32 %2571, 1
  %2629 = icmp eq i32 %2628, %2553
  br i1 %2629, label %2630, label %2564

; <label>:2630                                    ; preds = %2621
  br label %2631

; <label>:2631                                    ; preds = %2630, %2494
  %2632 = phi float [ 0.000000e+00, %2494 ], [ %2622, %2630 ]
  %2633 = phi float [ 0.000000e+00, %2494 ], [ %2623, %2630 ]
  %2634 = phi float [ 0.000000e+00, %2494 ], [ %2624, %2630 ]
  %2635 = phi float [ 0.000000e+00, %2494 ], [ %2625, %2630 ]
  %2636 = phi float [ 0.000000e+00, %2494 ], [ %2626, %2630 ]
  %2637 = phi float [ 0.000000e+00, %2494 ], [ %2627, %2630 ]
  %2638 = fadd fast float %2635, %2632
  %2639 = fmul fast float %2638, 0x3F847AE140000000
  %2640 = fadd fast float %2636, %2633
  %2641 = fmul fast float %2640, 0x3F847AE140000000
  %2642 = fadd fast float %2637, %2634
  %2643 = fmul fast float %2642, 0x3F847AE140000000
  br label %2644

; <label>:2644                                    ; preds = %2631, %2428, %2373, %2370, %2341, %2303
  %2645 = phi float [ %2355, %2341 ], [ -1.310720e+05, %2303 ], [ %2547, %2631 ], [ -1.310720e+05, %2373 ], [ -1.310720e+05, %2428 ], [ -1.310720e+05, %2370 ]
  %2646 = phi float [ %2365, %2341 ], [ 0.000000e+00, %2303 ], [ %2639, %2631 ], [ 0.000000e+00, %2373 ], [ 0.000000e+00, %2428 ], [ 0.000000e+00, %2370 ]
  %2647 = phi float [ %2367, %2341 ], [ 0.000000e+00, %2303 ], [ %2641, %2631 ], [ 0.000000e+00, %2373 ], [ 0.000000e+00, %2428 ], [ 0.000000e+00, %2370 ]
  %2648 = phi float [ %2369, %2341 ], [ 0.000000e+00, %2303 ], [ %2643, %2631 ], [ 0.000000e+00, %2373 ], [ 0.000000e+00, %2428 ], [ 0.000000e+00, %2370 ]
  %2649 = phi i1 [ true, %2341 ], [ false, %2303 ], [ true, %2631 ], [ false, %2373 ], [ false, %2428 ], [ false, %2370 ]
  %2650 = and i32 %165, 3
  %2651 = icmp eq i32 %2650, 1
  %2652 = select i1 %2651, float 1.000000e+00, float 0.000000e+00
  %2653 = fsub fast float %2645, %120
  %2654 = call float @dx.op.unary.f32(i32 7, float %2653)  ; Saturate(value)
  %2655 = select i1 %2649, float %2654, float 1.000000e+00
  %2656 = fmul fast float %2655, %2652
  %2657 = icmp eq i32 %2650, 3
  %2658 = select i1 %2657, float 1.000000e+00, float %2656
  %2659 = call float @dx.op.binary.f32(i32 35, float %2218, float %2658)  ; FMax(a,b)
  %2660 = call float @dx.op.unary.f32(i32 7, float %2659)  ; Saturate(value)
  %2661 = fcmp fast une float %2660, 0.000000e+00
  %2662 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %2663 = call float @dx.op.unary.f32(i32 25, float %2662)  ; Rsqrt(value)
  br i1 %2661, label %2671, label %2664

; <label>:2664                                    ; preds = %2644
  %2665 = fmul fast float %2663, %118
  %2666 = fmul fast float %2663, %119
  %2667 = fmul fast float %2663, %120
  %2668 = fsub fast float -0.000000e+00, %2665
  %2669 = fsub fast float -0.000000e+00, %2666
  %2670 = fsub fast float -0.000000e+00, %2667
  br label %2839

; <label>:2671                                    ; preds = %2644
  %2672 = fmul fast float %118, %2663
  %2673 = fsub fast float -0.000000e+00, %2672
  %2674 = fmul fast float %119, %2663
  %2675 = fsub fast float -0.000000e+00, %2674
  %2676 = fmul fast float %120, %2663
  %2677 = fsub fast float -0.000000e+00, %2676
  %2678 = call float @dx.op.dot3.f32(i32 55, float %2673, float %2675, float %2677, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2679 = fmul fast float %2660, 2.500000e+00
  %2680 = call float @dx.op.unary.f32(i32 7, float %2679)  ; Saturate(value)
  %2681 = fmul fast float %2660, 0x4013FFFFE0000000
  %2682 = fadd fast float %2681, 0xBFFFFFFFE0000000
  %2683 = call float @dx.op.unary.f32(i32 7, float %2682)  ; Saturate(value)
  %2684 = fmul fast float %2660, 0x4004000020000000
  %2685 = fadd fast float %2684, 0xBFF8000040000000
  %2686 = call float @dx.op.unary.f32(i32 7, float %2685)  ; Saturate(value)
  %2687 = call float @dx.op.unary.f32(i32 7, float %2680)  ; Saturate(value)
  %2688 = fmul fast float %2249, 1.000000e+01
  %2689 = call float @dx.op.unary.f32(i32 7, float %2688)  ; Saturate(value)
  %2690 = fmul fast float %2689, 2.000000e+00
  %2691 = fsub fast float 3.000000e+00, %2690
  %2692 = fmul fast float %2689, %2689
  %2693 = fmul fast float %2692, %2691
  %2694 = fsub fast float 1.000000e+00, %2693
  %2695 = fsub fast float 0x3FE3333340000000, %2270
  %2696 = fmul fast float %2695, 0x400AAAAAA0000000
  %2697 = call float @dx.op.unary.f32(i32 7, float %2696)  ; Saturate(value)
  %2698 = fmul fast float %2694, %2697
  %2699 = fmul fast float %2282, 0x3FEA2B8620000000
  %2700 = fmul fast float %2283, 0x3FEA2B8620000000
  %2701 = fmul fast float %2284, 0x3FEA2B8620000000
  %2702 = fadd fast float %2699, 0x3FC81DFBA0000000
  %2703 = fmul fast float %2702, %2282
  %2704 = fadd fast float %2703, 0x3F910E6020000000
  %2705 = fadd fast float %2700, 0x3FC81DFBA0000000
  %2706 = fmul fast float %2705, %2283
  %2707 = fadd fast float %2706, 0x3F910E6020000000
  %2708 = fadd fast float %2701, 0x3FC81DFBA0000000
  %2709 = fmul fast float %2708, %2284
  %2710 = fadd fast float %2709, 0x3F910E6020000000
  %2711 = call float @dx.op.unary.f32(i32 7, float %2704)  ; Saturate(value)
  %2712 = call float @dx.op.unary.f32(i32 7, float %2707)  ; Saturate(value)
  %2713 = call float @dx.op.unary.f32(i32 7, float %2710)  ; Saturate(value)
  %2714 = fsub fast float %2711, %2282
  %2715 = fsub fast float %2712, %2283
  %2716 = fsub fast float %2713, %2284
  %2717 = fmul fast float %2714, %2687
  %2718 = fmul fast float %2717, %2698
  %2719 = fmul fast float %2715, %2687
  %2720 = fmul fast float %2719, %2698
  %2721 = fmul fast float %2716, %2687
  %2722 = fmul fast float %2721, %2698
  %2723 = fadd fast float %2718, %2282
  %2724 = fadd fast float %2720, %2283
  %2725 = fadd fast float %2722, %2284
  %2726 = fmul fast float %2230, %2230
  %2727 = fmul fast float %2726, %2726
  %2728 = fadd fast float %2683, 1.000000e+00
  %2729 = fsub fast float %2728, %2698
  %2730 = call float @dx.op.unary.f32(i32 7, float %2729)  ; Saturate(value)
  %2731 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2732 = call float @dx.op.unary.f32(i32 7, float %2731)  ; Saturate(value)
  %2733 = fsub fast float 1.000000e+00, %2727
  %2734 = call float @dx.op.binary.f32(i32 36, float %2730, float %2733)  ; FMin(a,b)
  %2735 = call float @dx.op.unary.f32(i32 7, float %2686)  ; Saturate(value)
  %2736 = call float @dx.op.binary.f32(i32 35, float %2734, float %2735)  ; FMax(a,b)
  %2737 = fadd fast float %2732, 0xBFE4CCCCC0000000
  %2738 = fmul fast float %2737, 0x4006DB6DA0000000
  %2739 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  %2740 = fmul fast float %2739, 2.000000e+00
  %2741 = fsub fast float 3.000000e+00, %2740
  %2742 = bitcast float %2267 to i32
  %2743 = ashr i32 %2742, 1
  %2744 = add nsw i32 %2743, 532487669
  %2745 = bitcast i32 %2744 to float
  %2746 = fsub fast float 1.000000e+00, %2745
  %2747 = bitcast float %2746 to i32
  %2748 = sub nsw i32 2129859010, %2747
  %2749 = bitcast i32 %2748 to float
  %2750 = fmul fast float %2749, 2.000000e+00
  %2751 = bitcast float %2268 to i32
  %2752 = ashr i32 %2751, 1
  %2753 = add nsw i32 %2752, 532487669
  %2754 = bitcast i32 %2753 to float
  %2755 = fsub fast float 1.000000e+00, %2754
  %2756 = bitcast float %2755 to i32
  %2757 = sub nsw i32 2129859010, %2756
  %2758 = bitcast i32 %2757 to float
  %2759 = fmul fast float %2758, 2.000000e+00
  %2760 = bitcast float %2269 to i32
  %2761 = ashr i32 %2760, 1
  %2762 = add nsw i32 %2761, 532487669
  %2763 = bitcast i32 %2762 to float
  %2764 = fsub fast float 1.000000e+00, %2763
  %2765 = bitcast float %2764 to i32
  %2766 = sub nsw i32 2129859010, %2765
  %2767 = bitcast i32 %2766 to float
  %2768 = fmul fast float %2767, 2.000000e+00
  %2769 = fsub fast float 0x4002A9FBE0000000, %2750
  %2770 = fadd fast float %2750, 0x3FD54FDF00000000
  %2771 = bitcast float %2770 to i32
  %2772 = sub nsw i32 2129859010, %2771
  %2773 = bitcast i32 %2772 to float
  %2774 = fmul fast float %2773, %2769
  %2775 = fmul fast float %2774, %2774
  %2776 = fsub fast float 0x4002A9FBE0000000, %2759
  %2777 = fadd fast float %2759, 0x3FD54FDF00000000
  %2778 = bitcast float %2777 to i32
  %2779 = sub nsw i32 2129859010, %2778
  %2780 = bitcast i32 %2779 to float
  %2781 = fmul fast float %2780, %2776
  %2782 = fmul fast float %2781, %2781
  %2783 = fsub fast float 0x4002A9FBE0000000, %2768
  %2784 = fadd fast float %2768, 0x3FD54FDF00000000
  %2785 = bitcast float %2784 to i32
  %2786 = sub nsw i32 2129859010, %2785
  %2787 = bitcast i32 %2786 to float
  %2788 = fmul fast float %2787, %2783
  %2789 = fmul fast float %2788, %2788
  %2790 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2775)  ; FMax(a,b)
  %2791 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2782)  ; FMax(a,b)
  %2792 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2789)  ; FMax(a,b)
  %2793 = fsub fast float 1.000000e+00, %2678
  %2794 = fadd fast float %2793, %2694
  %2795 = call float @dx.op.unary.f32(i32 7, float %2794)  ; Saturate(value)
  %2796 = fsub fast float 1.000000e+00, %2658
  %2797 = fmul fast float %2736, %2796
  %2798 = fmul fast float %2739, %2739
  %2799 = fmul fast float %2798, %2797
  %2800 = fmul fast float %2799, %2741
  %2801 = fmul fast float %2796, 0xBFE99999A0000000
  %2802 = fmul fast float %2801, %2687
  %2803 = fmul fast float %2802, %2698
  %2804 = fadd fast float %2803, 1.000000e+00
  %2805 = fadd fast float %2270, -1.000000e+00
  %2806 = fmul fast float %2804, %2805
  %2807 = fadd fast float %2806, 1.000000e+00
  %2808 = fsub fast float %2790, %2267
  %2809 = fsub fast float %2791, %2268
  %2810 = fsub fast float %2792, %2269
  %2811 = fmul fast float %2800, %2808
  %2812 = fmul fast float %2800, %2809
  %2813 = fmul fast float %2800, %2810
  %2814 = fadd fast float %2811, %2267
  %2815 = fadd fast float %2812, %2268
  %2816 = fadd fast float %2813, %2269
  %2817 = fsub fast float %53, %2246
  %2818 = fsub fast float %54, %2247
  %2819 = fsub fast float %55, %2248
  %2820 = fmul fast float %2800, %2817
  %2821 = fmul fast float %2800, %2818
  %2822 = fmul fast float %2800, %2819
  %2823 = fadd fast float %2820, %2246
  %2824 = fadd fast float %2821, %2247
  %2825 = fadd fast float %2822, %2248
  %2826 = fmul fast float %2800, %2795
  %2827 = call float @dx.op.unary.f32(i32 7, float %2807)  ; Saturate(value)
  %2828 = fsub fast float 1.000000e+00, %2827
  %2829 = fmul fast float %2826, %2828
  %2830 = fadd fast float %2829, %2827
  %2831 = fsub fast float 1.000000e+00, %2230
  %2832 = fmul fast float %2800, %2831
  %2833 = fadd fast float %2832, %2230
  %2834 = call float @dx.op.dot3.f32(i32 55, float %2823, float %2824, float %2825, float %2823, float %2824, float %2825)  ; Dot3(ax,ay,az,bx,by,bz)
  %2835 = call float @dx.op.unary.f32(i32 25, float %2834)  ; Rsqrt(value)
  %2836 = fmul fast float %2823, %2835
  %2837 = fmul fast float %2824, %2835
  %2838 = fmul fast float %2825, %2835
  br label %2839

; <label>:2839                                    ; preds = %2671, %2664
  %2840 = phi float [ %2670, %2664 ], [ %2677, %2671 ]
  %2841 = phi float [ %2669, %2664 ], [ %2675, %2671 ]
  %2842 = phi float [ %2668, %2664 ], [ %2673, %2671 ]
  %2843 = phi float [ %2667, %2664 ], [ %2676, %2671 ]
  %2844 = phi float [ %2666, %2664 ], [ %2674, %2671 ]
  %2845 = phi float [ %2665, %2664 ], [ %2672, %2671 ]
  %2846 = phi float [ %2267, %2664 ], [ %2814, %2671 ]
  %2847 = phi float [ %2268, %2664 ], [ %2815, %2671 ]
  %2848 = phi float [ %2269, %2664 ], [ %2816, %2671 ]
  %2849 = phi float [ %2282, %2664 ], [ %2723, %2671 ]
  %2850 = phi float [ %2283, %2664 ], [ %2724, %2671 ]
  %2851 = phi float [ %2284, %2664 ], [ %2725, %2671 ]
  %2852 = phi float [ %2246, %2664 ], [ %2836, %2671 ]
  %2853 = phi float [ %2247, %2664 ], [ %2837, %2671 ]
  %2854 = phi float [ %2248, %2664 ], [ %2838, %2671 ]
  %2855 = phi float [ %2270, %2664 ], [ %2830, %2671 ]
  %2856 = phi float [ %2230, %2664 ], [ %2833, %2671 ]
  %2857 = select i1 %189, float 0.000000e+00, float %2848
  %2858 = call float @dx.op.dot3.f32(i32 55, float %2852, float %2853, float %2854, float %2842, float %2841, float %2840)  ; Dot3(ax,ay,az,bx,by,bz)
  %2859 = call float @dx.op.unary.f32(i32 7, float %2858)  ; Saturate(value)
  %2860 = call float @dx.op.dot3.f32(i32 55, float %2845, float %2844, float %2843, float %2852, float %2853, float %2854)  ; Dot3(ax,ay,az,bx,by,bz)
  %2861 = fmul fast float %2860, 2.000000e+00
  %2862 = fmul fast float %2861, %2852
  %2863 = fmul fast float %2861, %2853
  %2864 = fmul fast float %2861, %2854
  %2865 = fsub fast float %2845, %2862
  %2866 = fsub fast float %2844, %2863
  %2867 = fsub fast float %2843, %2864
  %2868 = call float @dx.op.binary.f32(i32 36, float %2856, float 1.000000e+00)  ; FMin(a,b)
  %2869 = fsub fast float 1.000000e+00, %2856
  %2870 = bitcast float %2869 to i32
  %2871 = sub nsw i32 2129859010, %2870
  %2872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2873 = extractvalue %dx.types.CBufRet.f32 %2872, 0
  %2874 = extractvalue %dx.types.CBufRet.f32 %2872, 1
  %2875 = fadd fast float %2873, %118
  %2876 = fadd fast float %2874, %119
  %2877 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2878 = extractvalue %dx.types.CBufRet.i32 %2877, 0
  %2879 = icmp eq i32 %2878, 1
  br i1 %2879, label %2880, label %2915

; <label>:2880                                    ; preds = %2839
  %2881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2882 = extractvalue %dx.types.CBufRet.f32 %2881, 0
  %2883 = extractvalue %dx.types.CBufRet.f32 %2881, 1
  %2884 = fsub fast float %2875, %2882
  %2885 = fsub fast float %2876, %2883
  %2886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2887 = extractvalue %dx.types.CBufRet.f32 %2886, 0
  %2888 = extractvalue %dx.types.CBufRet.f32 %2886, 1
  %2889 = fmul fast float %2884, %2887
  %2890 = fmul fast float %2885, %2888
  %2891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2889, float %2890, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2892 = extractvalue %dx.types.ResRet.f32 %2891, 0
  %2893 = fcmp fast ogt float %2892, 0.000000e+00
  %2894 = extractvalue %dx.types.CBufRet.i32 %2877, 3
  %2895 = icmp ne i32 %2894, 0
  %2896 = and i1 %2893, %2895
  br i1 %2896, label %2897, label %2915, !dx.controlflow.hints !81

; <label>:2897                                    ; preds = %2880
  %2898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2899 = extractvalue %dx.types.CBufRet.f32 %2898, 0
  %2900 = extractvalue %dx.types.CBufRet.f32 %2898, 1
  %2901 = fsub fast float %2875, %2899
  %2902 = fsub fast float %2876, %2900
  %2903 = fmul fast float %2901, %2901
  %2904 = fmul fast float %2902, %2902
  %2905 = fadd fast float %2903, %2904
  %2906 = uitofp i32 %2894 to float
  %2907 = fmul fast float %2906, %2906
  %2908 = fcmp fast ogt float %2905, %2907
  br i1 %2908, label %2915, label %2909

; <label>:2909                                    ; preds = %2897
  %2910 = call float @dx.op.unary.f32(i32 24, float %2905)  ; Sqrt(value)
  %2911 = fsub fast float %2906, %2910
  %2912 = fmul fast float %2911, 0x3F75555560000000
  %2913 = call float @dx.op.unary.f32(i32 7, float %2912)  ; Saturate(value)
  %2914 = call float @dx.op.binary.f32(i32 36, float %2913, float %2892)  ; FMin(a,b)
  br label %2915

; <label>:2915                                    ; preds = %2909, %2897, %2880, %2839
  %2916 = phi float [ 1.000000e+00, %2839 ], [ %2914, %2909 ], [ %2892, %2880 ], [ 0.000000e+00, %2897 ]
  %2917 = fcmp fast ogt float %2916, 0.000000e+00
  br i1 %2917, label %2918, label %3016, !dx.controlflow.hints !82

; <label>:2918                                    ; preds = %2915
  %2919 = fadd fast float %149, 5.000000e-01
  %2920 = call float @dx.op.unary.f32(i32 27, float %2919)  ; Round_ni(value)
  %2921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %147, float %148, float %2920, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2922 = extractvalue %dx.types.ResRet.f32 %2921, 0
  %2923 = extractvalue %dx.types.ResRet.f32 %2921, 1
  %2924 = extractvalue %dx.types.ResRet.f32 %2921, 2
  %2925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2926 = extractvalue %dx.types.CBufRet.f32 %2925, 3
  %2927 = fmul fast float %2926, %2922
  %2928 = fmul fast float %2926, %2923
  %2929 = fmul fast float %2926, %2924
  %2930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %147, float %148, float %2920, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2931 = extractvalue %dx.types.ResRet.f32 %2930, 0
  %2932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %147, float %148, float %2920, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2933 = extractvalue %dx.types.ResRet.f32 %2932, 0
  %2934 = extractvalue %dx.types.ResRet.f32 %2932, 1
  %2935 = fmul fast float %2933, 2.000000e+00
  %2936 = fmul fast float %2934, 2.000000e+00
  %2937 = fadd fast float %2935, -1.000000e+00
  %2938 = fadd fast float %2936, -1.000000e+00
  %2939 = fadd fast float %2937, %2938
  %2940 = fmul fast float %2939, 5.000000e-01
  %2941 = fsub fast float %2937, %2938
  %2942 = fmul fast float %2941, 5.000000e-01
  %2943 = call float @dx.op.unary.f32(i32 6, float %2940)  ; FAbs(value)
  %2944 = fsub fast float 1.000000e+00, %2943
  %2945 = call float @dx.op.unary.f32(i32 6, float %2942)  ; FAbs(value)
  %2946 = fsub fast float %2944, %2945
  %2947 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2946)  ; FMax(a,b)
  %2948 = call float @dx.op.dot3.f32(i32 55, float %2940, float %2942, float %2947, float %2940, float %2942, float %2947)  ; Dot3(ax,ay,az,bx,by,bz)
  %2949 = bitcast float %2948 to i32
  %2950 = ashr i32 %2949, 1
  %2951 = sub nsw i32 1597250115, %2950
  %2952 = bitcast i32 %2951 to float
  %2953 = fmul fast float %2952, %2940
  %2954 = fmul fast float %2952, %2942
  %2955 = fmul fast float %2952, %2947
  %2956 = fsub fast float 1.000000e+00, %2931
  %2957 = fdiv fast float %2956, %2955
  %2958 = fmul fast float %2955, %53
  %2959 = fmul fast float %2955, %54
  %2960 = fmul fast float %2955, %55
  %2961 = fmul fast float %2953, %49
  %2962 = fmul fast float %2953, %50
  %2963 = fmul fast float %2953, %51
  %2964 = fadd fast float %2958, %2961
  %2965 = fadd fast float %2959, %2962
  %2966 = fadd fast float %2960, %2963
  %2967 = fmul fast float %2954, %82
  %2968 = fmul fast float %2954, %83
  %2969 = fmul fast float %2954, %84
  %2970 = fadd fast float %2964, %2967
  %2971 = fadd fast float %2965, %2968
  %2972 = fadd fast float %2966, %2969
  %2973 = call float @dx.op.dot3.f32(i32 55, float %2970, float %2971, float %2972, float %2970, float %2971, float %2972)  ; Dot3(ax,ay,az,bx,by,bz)
  %2974 = call float @dx.op.unary.f32(i32 25, float %2973)  ; Rsqrt(value)
  %2975 = fmul fast float %2970, %2974
  %2976 = fmul fast float %2971, %2974
  %2977 = fmul fast float %2972, %2974
  %2978 = call float @dx.op.dot3.f32(i32 55, float %2852, float %2853, float %2854, float %2852, float %2853, float %2854)  ; Dot3(ax,ay,az,bx,by,bz)
  %2979 = call float @dx.op.unary.f32(i32 7, float %2978)  ; Saturate(value)
  %2980 = fmul fast float %2979, 5.000000e-01
  %2981 = fadd fast float %2980, 5.000000e-01
  %2982 = fmul fast float %2981, %2931
  %2983 = call float @dx.op.dot3.f32(i32 55, float %2852, float %2853, float %2854, float %2975, float %2976, float %2977)  ; Dot3(ax,ay,az,bx,by,bz)
  %2984 = call float @dx.op.unary.f32(i32 7, float %2983)  ; Saturate(value)
  %2985 = fmul fast float %2984, %2957
  %2986 = fadd fast float %2982, %2985
  %2987 = fsub fast float 5.000000e-01, %2980
  %2988 = fmul fast float %2987, %2849
  %2989 = fmul fast float %2987, %2850
  %2990 = fmul fast float %2987, %2851
  %2991 = fadd fast float %2986, %2988
  %2992 = fmul fast float %2991, %2927
  %2993 = fadd fast float %2986, %2989
  %2994 = fmul fast float %2993, %2928
  %2995 = fadd fast float %2986, %2990
  %2996 = fmul fast float %2995, %2929
  %2997 = call float @dx.op.dot3.f32(i32 55, float %2865, float %2866, float %2867, float %2852, float %2853, float %2854)  ; Dot3(ax,ay,az,bx,by,bz)
  %2998 = call float @dx.op.unary.f32(i32 7, float %2997)  ; Saturate(value)
  %2999 = fmul fast float %2998, 5.000000e-01
  %3000 = fadd fast float %2999, 5.000000e-01
  %3001 = fmul fast float %3000, %2931
  %3002 = call float @dx.op.dot3.f32(i32 55, float %2865, float %2866, float %2867, float %2975, float %2976, float %2977)  ; Dot3(ax,ay,az,bx,by,bz)
  %3003 = call float @dx.op.unary.f32(i32 7, float %3002)  ; Saturate(value)
  %3004 = fmul fast float %3003, %2957
  %3005 = fadd fast float %3001, %3004
  %3006 = fsub fast float 5.000000e-01, %2999
  %3007 = fmul fast float %3006, %2849
  %3008 = fmul fast float %3006, %2850
  %3009 = fmul fast float %3006, %2851
  %3010 = fadd fast float %3005, %3007
  %3011 = fmul fast float %3010, %2927
  %3012 = fadd fast float %3005, %3008
  %3013 = fmul fast float %3012, %2928
  %3014 = fadd fast float %3005, %3009
  %3015 = fmul fast float %3014, %2929
  br label %3016

; <label>:3016                                    ; preds = %2918, %2915
  %3017 = phi float [ %3011, %2918 ], [ 0.000000e+00, %2915 ]
  %3018 = phi float [ %3013, %2918 ], [ 0.000000e+00, %2915 ]
  %3019 = phi float [ %3015, %2918 ], [ 0.000000e+00, %2915 ]
  %3020 = phi float [ %2992, %2918 ], [ 0.000000e+00, %2915 ]
  %3021 = phi float [ %2994, %2918 ], [ 0.000000e+00, %2915 ]
  %3022 = phi float [ %2996, %2918 ], [ 0.000000e+00, %2915 ]
  %3023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3024 = extractvalue %dx.types.CBufRet.f32 %3023, 0
  %3025 = fcmp fast ogt float %3024, 0.000000e+00
  %3026 = and i1 %2917, %3025
  br i1 %3026, label %3027, label %3231, !dx.controlflow.hints !83

; <label>:3027                                    ; preds = %3016
  %3028 = extractvalue %dx.types.CBufRet.f32 %2872, 2
  %3029 = fadd fast float %3028, %120
  %3030 = fmul fast float %2852, 3.200000e+01
  %3031 = fmul fast float %2853, 3.200000e+01
  %3032 = fadd fast float %2875, %3030
  %3033 = fadd fast float %2876, %3031
  %3034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3035 = extractvalue %dx.types.CBufRet.f32 %3034, 0
  %3036 = extractvalue %dx.types.CBufRet.f32 %3034, 1
  %3037 = fsub fast float %3032, %3035
  %3038 = fsub fast float %3033, %3036
  %3039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3040 = extractvalue %dx.types.CBufRet.f32 %3039, 0
  %3041 = extractvalue %dx.types.CBufRet.f32 %3039, 1
  %3042 = fmul fast float %3037, %3040
  %3043 = fmul fast float %3038, %3041
  %3044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3045 = extractvalue %dx.types.CBufRet.f32 %3044, 0
  %3046 = extractvalue %dx.types.CBufRet.f32 %3044, 1
  %3047 = fsub fast float %2875, %3045
  %3048 = fsub fast float %2876, %3046
  %3049 = fmul fast float %3047, %3047
  %3050 = fmul fast float %3048, %3048
  %3051 = fadd fast float %3049, %3050
  %3052 = call float @dx.op.unary.f32(i32 24, float %3051)  ; Sqrt(value)
  %3053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3054 = extractvalue %dx.types.CBufRet.f32 %3053, 0
  %3055 = extractvalue %dx.types.CBufRet.f32 %3053, 1
  %3056 = fsub fast float %3052, %3054
  %3057 = fdiv fast float %3056, %3055
  %3058 = call float @dx.op.unary.f32(i32 7, float %3057)  ; Saturate(value)
  %3059 = fmul fast float %3058, 2.000000e+00
  %3060 = fsub fast float 3.000000e+00, %3059
  %3061 = fmul fast float %3058, %3058
  %3062 = fmul fast float %3061, %3060
  %3063 = fcmp fast oge float %3042, 0.000000e+00
  %3064 = fcmp fast ole float %3042, 1.000000e+00
  %3065 = and i1 %3064, %3063
  %3066 = fcmp fast oge float %3043, 0.000000e+00
  %3067 = and i1 %3066, %3065
  %3068 = fcmp fast ole float %3043, 1.000000e+00
  %3069 = and i1 %3068, %3067
  %3070 = fcmp fast ogt float %3062, 0.000000e+00
  %3071 = and i1 %3070, %3069
  br i1 %3071, label %3072, label %3195, !dx.controlflow.hints !84

; <label>:3072                                    ; preds = %3027
  %3073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3074 = extractvalue %dx.types.CBufRet.f32 %3073, 2
  %3075 = extractvalue %dx.types.CBufRet.f32 %3073, 3
  %3076 = fmul fast float %3074, %3042
  %3077 = fmul fast float %3075, %3043
  %3078 = call float @dx.op.unary.f32(i32 27, float %3076)  ; Round_ni(value)
  %3079 = call float @dx.op.unary.f32(i32 27, float %3077)  ; Round_ni(value)
  %3080 = fptosi float %3078 to i32
  %3081 = fptosi float %3079 to i32
  %3082 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3080, i32 %3081, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3083 = extractvalue %dx.types.ResRet.i32 %3082, 0
  %3084 = lshr i32 %3083, 16
  %3085 = icmp eq i32 %3084, 65535
  br i1 %3085, label %3195, label %3086

; <label>:3086                                    ; preds = %3072
  %3087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3088 = extractvalue %dx.types.CBufRet.f32 %3087, 0
  %3089 = fmul fast float %3088, %3042
  %3090 = extractvalue %dx.types.CBufRet.f32 %3087, 1
  %3091 = fadd fast float %3089, %3090
  %3092 = extractvalue %dx.types.CBufRet.f32 %3087, 2
  %3093 = fmul fast float %3092, %3043
  %3094 = extractvalue %dx.types.CBufRet.f32 %3087, 3
  %3095 = fadd fast float %3093, %3094
  %3096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3091, float %3095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3097 = extractvalue %dx.types.ResRet.f32 %3096, 0
  %3098 = extractvalue %dx.types.ResRet.f32 %3096, 1
  %3099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3100 = extractvalue %dx.types.CBufRet.f32 %3099, 1
  %3101 = extractvalue %dx.types.CBufRet.f32 %3099, 0
  %3102 = fsub fast float %3100, %3101
  %3103 = fmul fast float %3102, %3097
  %3104 = fadd fast float %3103, %3101
  %3105 = extractvalue %dx.types.CBufRet.f32 %3099, 3
  %3106 = extractvalue %dx.types.CBufRet.f32 %3099, 2
  %3107 = fsub fast float %3105, %3106
  %3108 = fmul fast float %3107, %3098
  %3109 = fadd fast float %3108, %3106
  %3110 = fsub fast float %3029, %3104
  %3111 = fsub fast float %3109, %3104
  %3112 = fdiv fast float %3110, %3111
  %3113 = call float @dx.op.unary.f32(i32 7, float %3112)  ; Saturate(value)
  %3114 = extractvalue %dx.types.CBufRet.f32 %3023, 1
  %3115 = extractvalue %dx.types.CBufRet.f32 %3073, 0
  %3116 = extractvalue %dx.types.CBufRet.f32 %3073, 1
  %3117 = fmul fast float %3115, %3042
  %3118 = fmul fast float %3116, %3043
  %3119 = fmul fast float %3117, 1.250000e-01
  %3120 = fmul fast float %3118, 1.250000e-01
  %3121 = call float @dx.op.unary.f32(i32 27, float %3119)  ; Round_ni(value)
  %3122 = call float @dx.op.unary.f32(i32 27, float %3120)  ; Round_ni(value)
  %3123 = fmul fast float %3121, 8.000000e+00
  %3124 = fmul fast float %3122, 8.000000e+00
  %3125 = fsub fast float %3117, %3123
  %3126 = fsub fast float %3118, %3124
  %3127 = fadd fast float %3125, 5.000000e-01
  %3128 = fadd fast float %3126, 5.000000e-01
  %3129 = and i32 %3084, 255
  %3130 = lshr i32 %3083, 24
  %3131 = mul nuw nsw i32 %3129, 9
  %3132 = uitofp i32 %3131 to float
  %3133 = mul nuw nsw i32 %3130, 9
  %3134 = uitofp i32 %3133 to float
  %3135 = fadd fast float %3127, %3132
  %3136 = fadd fast float %3128, %3134
  %3137 = fdiv fast float %3135, %3024
  %3138 = fdiv fast float %3136, %3114
  %3139 = fmul fast float %3113, 4.375000e-01
  %3140 = fadd fast float %3139, 3.125000e-02
  %3141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3137, float %3138, float %3140, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3142 = extractvalue %dx.types.ResRet.f32 %3141, 0
  %3143 = extractvalue %dx.types.ResRet.f32 %3141, 1
  %3144 = extractvalue %dx.types.ResRet.f32 %3141, 2
  %3145 = fadd fast float %3139, 5.312500e-01
  %3146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3137, float %3138, float %3145, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3147 = extractvalue %dx.types.ResRet.f32 %3146, 0
  %3148 = extractvalue %dx.types.ResRet.f32 %3146, 1
  %3149 = extractvalue %dx.types.ResRet.f32 %3146, 2
  %3150 = fmul fast float %3147, 2.000000e+00
  %3151 = fmul fast float %3148, 2.000000e+00
  %3152 = fmul fast float %3149, 2.000000e+00
  %3153 = fadd fast float %3150, -1.000000e+00
  %3154 = fadd fast float %3151, -1.000000e+00
  %3155 = fadd fast float %3152, -1.000000e+00
  %3156 = fmul fast float %3153, %3153
  %3157 = fmul fast float %3154, %3154
  %3158 = fadd fast float %3156, %3157
  %3159 = fmul fast float %3155, %3155
  %3160 = fadd fast float %3158, %3159
  %3161 = call float @dx.op.unary.f32(i32 24, float %3160)  ; Sqrt(value)
  %3162 = fcmp fast ogt float %3161, 0.000000e+00
  br i1 %3162, label %3163, label %3167

; <label>:3163                                    ; preds = %3086
  %3164 = fdiv fast float %3153, %3161
  %3165 = fdiv fast float %3154, %3161
  %3166 = fdiv fast float %3155, %3161
  br label %3167

; <label>:3167                                    ; preds = %3163, %3086
  %3168 = phi float [ %3164, %3163 ], [ 0.000000e+00, %3086 ]
  %3169 = phi float [ %3165, %3163 ], [ 0.000000e+00, %3086 ]
  %3170 = phi float [ %3166, %3163 ], [ 0.000000e+00, %3086 ]
  %3171 = call float @dx.op.dot3.f32(i32 55, float %3168, float %3169, float %3170, float %2852, float %2853, float %2854)  ; Dot3(ax,ay,az,bx,by,bz)
  %3172 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3171)  ; FMax(a,b)
  %3173 = fmul fast float %3172, 0x400C5BF8A0000000
  %3174 = fmul fast float %3142, %3062
  %3175 = fmul fast float %3174, %3173
  %3176 = fmul fast float %3143, %3062
  %3177 = fmul fast float %3176, %3173
  %3178 = fmul fast float %3144, %3062
  %3179 = fmul fast float %3178, %3173
  %3180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3181 = extractvalue %dx.types.CBufRet.f32 %3180, 3
  %3182 = fmul fast float %3175, %3181
  %3183 = fmul fast float %3177, %3181
  %3184 = fmul fast float %3179, %3181
  %3185 = fcmp fast ogt float %3029, %3109
  br i1 %3185, label %3186, label %3195

; <label>:3186                                    ; preds = %3167
  %3187 = fmul fast float %3111, 0x3FC24924A0000000
  %3188 = fsub fast float %3029, %3109
  %3189 = fdiv fast float %3188, %3187
  %3190 = call float @dx.op.unary.f32(i32 7, float %3189)  ; Saturate(value)
  %3191 = fsub fast float 1.000000e+00, %3190
  %3192 = fmul fast float %3191, %3182
  %3193 = fmul fast float %3191, %3183
  %3194 = fmul fast float %3191, %3184
  br label %3195

; <label>:3195                                    ; preds = %3186, %3167, %3072, %3027
  %3196 = phi float [ %3194, %3186 ], [ %3184, %3167 ], [ 0.000000e+00, %3072 ], [ 0.000000e+00, %3027 ]
  %3197 = phi float [ %3193, %3186 ], [ %3183, %3167 ], [ 0.000000e+00, %3072 ], [ 0.000000e+00, %3027 ]
  %3198 = phi float [ %3192, %3186 ], [ %3182, %3167 ], [ 0.000000e+00, %3072 ], [ 0.000000e+00, %3027 ]
  %3199 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3198)  ; FMax(a,b)
  %3200 = fmul fast float %3199, 0x3FD20DD760000000
  %3201 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2865, float %2866, float %2867)  ; Dot3(ax,ay,az,bx,by,bz)
  %3202 = fmul fast float %3201, 0x3FDF454380000000
  %3203 = fmul fast float %3201, %3201
  %3204 = fmul fast float %3203, 0x3FEE471020000000
  %3205 = fadd fast float %3204, 0xBFD42F6020000000
  %3206 = call float @dx.op.dot3.f32(i32 55, float %3199, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3202, float %3205)  ; Dot3(ax,ay,az,bx,by,bz)
  %3207 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3197)  ; FMax(a,b)
  %3208 = fmul fast float %3207, 0x3FD20DD760000000
  %3209 = call float @dx.op.dot3.f32(i32 55, float %3207, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3202, float %3205)  ; Dot3(ax,ay,az,bx,by,bz)
  %3210 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3196)  ; FMax(a,b)
  %3211 = fmul fast float %3210, 0x3FD20DD760000000
  %3212 = call float @dx.op.dot3.f32(i32 55, float %3210, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3202, float %3205)  ; Dot3(ax,ay,az,bx,by,bz)
  %3213 = call float @dx.op.binary.f32(i32 35, float %3200, float 0.000000e+00)  ; FMax(a,b)
  %3214 = call float @dx.op.binary.f32(i32 35, float %3208, float 0.000000e+00)  ; FMax(a,b)
  %3215 = call float @dx.op.binary.f32(i32 35, float %3211, float 0.000000e+00)  ; FMax(a,b)
  %3216 = call float @dx.op.binary.f32(i32 35, float %3206, float 0.000000e+00)  ; FMax(a,b)
  %3217 = call float @dx.op.binary.f32(i32 35, float %3209, float 0.000000e+00)  ; FMax(a,b)
  %3218 = call float @dx.op.binary.f32(i32 35, float %3212, float 0.000000e+00)  ; FMax(a,b)
  %3219 = fmul fast float %3213, %2916
  %3220 = fmul fast float %3214, %2916
  %3221 = fmul fast float %3215, %2916
  %3222 = fadd fast float %3219, %3020
  %3223 = fadd fast float %3220, %3021
  %3224 = fadd fast float %3221, %3022
  %3225 = fmul fast float %3216, %2916
  %3226 = fmul fast float %3217, %2916
  %3227 = fmul fast float %3218, %2916
  %3228 = fadd fast float %3225, %3017
  %3229 = fadd fast float %3226, %3018
  %3230 = fadd fast float %3227, %3019
  br label %3231

; <label>:3231                                    ; preds = %3195, %3016
  %3232 = phi float [ %3228, %3195 ], [ %3017, %3016 ]
  %3233 = phi float [ %3229, %3195 ], [ %3018, %3016 ]
  %3234 = phi float [ %3230, %3195 ], [ %3019, %3016 ]
  %3235 = phi float [ %3222, %3195 ], [ %3020, %3016 ]
  %3236 = phi float [ %3223, %3195 ], [ %3021, %3016 ]
  %3237 = phi float [ %3224, %3195 ], [ %3022, %3016 ]
  %3238 = fcmp fast olt float %2916, 1.000000e+00
  br i1 %3238, label %3239, label %4057, !dx.controlflow.hints !85

; <label>:3239                                    ; preds = %3231
  %3240 = extractvalue %dx.types.CBufRet.f32 %2872, 2
  %3241 = fadd fast float %3240, %120
  %3242 = fmul fast float %2852, 3.200000e+01
  %3243 = fmul fast float %2853, 3.200000e+01
  %3244 = fadd fast float %2875, %3242
  %3245 = fadd fast float %2876, %3243
  %3246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3247 = extractvalue %dx.types.CBufRet.f32 %3246, 0
  %3248 = extractvalue %dx.types.CBufRet.f32 %3246, 1
  %3249 = fsub fast float %3244, %3247
  %3250 = fsub fast float %3245, %3248
  %3251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3252 = extractvalue %dx.types.CBufRet.f32 %3251, 0
  %3253 = extractvalue %dx.types.CBufRet.f32 %3251, 1
  %3254 = fmul fast float %3249, %3252
  %3255 = fmul fast float %3250, %3253
  %3256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3257 = extractvalue %dx.types.CBufRet.f32 %3256, 0
  %3258 = fmul fast float %3254, %3257
  %3259 = extractvalue %dx.types.CBufRet.f32 %3256, 1
  %3260 = fadd fast float %3258, %3259
  %3261 = extractvalue %dx.types.CBufRet.f32 %3256, 2
  %3262 = fmul fast float %3261, %3255
  %3263 = extractvalue %dx.types.CBufRet.f32 %3256, 3
  %3264 = fadd fast float %3262, %3263
  %3265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3260, float %3264, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3266 = extractvalue %dx.types.ResRet.f32 %3265, 0
  %3267 = extractvalue %dx.types.ResRet.f32 %3265, 1
  %3268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3269 = extractvalue %dx.types.CBufRet.f32 %3268, 1
  %3270 = extractvalue %dx.types.CBufRet.f32 %3268, 0
  %3271 = fsub fast float %3269, %3270
  %3272 = fmul fast float %3271, %3266
  %3273 = fadd fast float %3272, %3270
  %3274 = extractvalue %dx.types.CBufRet.f32 %3268, 3
  %3275 = extractvalue %dx.types.CBufRet.f32 %3268, 2
  %3276 = fsub fast float %3274, %3275
  %3277 = fmul fast float %3276, %3267
  %3278 = fadd fast float %3277, %3275
  %3279 = fsub fast float %3241, %3273
  %3280 = fsub fast float %3278, %3273
  %3281 = fdiv fast float %3279, %3280
  %3282 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  %3283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3284 = extractvalue %dx.types.CBufRet.f32 %3283, 0
  %3285 = fmul fast float %3284, %3282
  %3286 = extractvalue %dx.types.CBufRet.f32 %3283, 1
  %3287 = fadd fast float %3285, %3286
  %3288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3260, float %3264, float %3287, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3289 = extractvalue %dx.types.ResRet.f32 %3288, 0
  %3290 = extractvalue %dx.types.ResRet.f32 %3288, 1
  %3291 = extractvalue %dx.types.ResRet.f32 %3288, 2
  %3292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3293 = extractvalue %dx.types.CBufRet.f32 %3292, 0
  %3294 = extractvalue %dx.types.CBufRet.f32 %3292, 1
  %3295 = extractvalue %dx.types.CBufRet.f32 %3292, 2
  %3296 = fmul fast float %3293, %3289
  %3297 = fmul fast float %3294, %3290
  %3298 = fmul fast float %3295, %3291
  %3299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3300 = extractvalue %dx.types.CBufRet.f32 %3299, 0
  %3301 = extractvalue %dx.types.CBufRet.f32 %3299, 1
  %3302 = extractvalue %dx.types.CBufRet.f32 %3299, 2
  %3303 = fadd fast float %3296, %3300
  %3304 = fadd fast float %3297, %3301
  %3305 = fadd fast float %3298, %3302
  %3306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3307 = extractvalue %dx.types.CBufRet.f32 %3306, 0
  %3308 = fmul fast float %3307, %3254
  %3309 = extractvalue %dx.types.CBufRet.f32 %3306, 1
  %3310 = fadd fast float %3308, %3309
  %3311 = extractvalue %dx.types.CBufRet.f32 %3306, 2
  %3312 = fmul fast float %3311, %3255
  %3313 = extractvalue %dx.types.CBufRet.f32 %3306, 3
  %3314 = fadd fast float %3312, %3313
  %3315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3316 = extractvalue %dx.types.CBufRet.f32 %3315, 0
  %3317 = extractvalue %dx.types.CBufRet.f32 %3315, 1
  %3318 = extractvalue %dx.types.CBufRet.f32 %3315, 2
  %3319 = extractvalue %dx.types.CBufRet.f32 %3315, 3
  %3320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3321 = extractvalue %dx.types.CBufRet.f32 %3320, 0
  %3322 = extractvalue %dx.types.CBufRet.f32 %3320, 1
  %3323 = extractvalue %dx.types.CBufRet.f32 %3320, 2
  %3324 = extractvalue %dx.types.CBufRet.f32 %3320, 3
  %3325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3310, float %3314, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3326 = extractvalue %dx.types.ResRet.f32 %3325, 0
  %3327 = extractvalue %dx.types.ResRet.f32 %3325, 1
  %3328 = extractvalue %dx.types.ResRet.f32 %3325, 2
  %3329 = extractvalue %dx.types.ResRet.f32 %3325, 3
  %3330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3310, float %3314, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3331 = extractvalue %dx.types.ResRet.f32 %3330, 0
  %3332 = extractvalue %dx.types.ResRet.f32 %3330, 1
  %3333 = extractvalue %dx.types.ResRet.f32 %3330, 2
  %3334 = extractvalue %dx.types.ResRet.f32 %3330, 3
  %3335 = fmul fast float %3326, %3303
  %3336 = fmul fast float %3331, %3303
  %3337 = fmul fast float %3333, %3303
  %3338 = fmul fast float %3329, %3303
  %3339 = fadd fast float %3335, %3316
  %3340 = fadd fast float %3336, %3317
  %3341 = fadd fast float %3337, %3318
  %3342 = fadd fast float %3338, %3319
  %3343 = fmul fast float %3327, %3303
  %3344 = fmul fast float %3332, %3303
  %3345 = fadd fast float %3343, %3321
  %3346 = fadd fast float %3344, %3322
  %3347 = fmul fast float %3328, %3303
  %3348 = fmul fast float %3334, %3303
  %3349 = fadd fast float %3347, %3323
  %3350 = fadd fast float %3348, %3324
  %3351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3310, float %3314, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3352 = extractvalue %dx.types.ResRet.f32 %3351, 0
  %3353 = extractvalue %dx.types.ResRet.f32 %3351, 1
  %3354 = extractvalue %dx.types.ResRet.f32 %3351, 2
  %3355 = extractvalue %dx.types.ResRet.f32 %3351, 3
  %3356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3310, float %3314, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3357 = extractvalue %dx.types.ResRet.f32 %3356, 0
  %3358 = extractvalue %dx.types.ResRet.f32 %3356, 1
  %3359 = extractvalue %dx.types.ResRet.f32 %3356, 2
  %3360 = extractvalue %dx.types.ResRet.f32 %3356, 3
  %3361 = fmul fast float %3352, %3304
  %3362 = fmul fast float %3357, %3304
  %3363 = fmul fast float %3359, %3304
  %3364 = fmul fast float %3355, %3304
  %3365 = fadd fast float %3339, %3361
  %3366 = fadd fast float %3340, %3362
  %3367 = fadd fast float %3341, %3363
  %3368 = fadd fast float %3342, %3364
  %3369 = fmul fast float %3353, %3304
  %3370 = fmul fast float %3358, %3304
  %3371 = fadd fast float %3345, %3369
  %3372 = fadd fast float %3346, %3370
  %3373 = fmul fast float %3354, %3304
  %3374 = fmul fast float %3360, %3304
  %3375 = fadd fast float %3349, %3373
  %3376 = fadd fast float %3350, %3374
  %3377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3310, float %3314, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3378 = extractvalue %dx.types.ResRet.f32 %3377, 0
  %3379 = extractvalue %dx.types.ResRet.f32 %3377, 1
  %3380 = extractvalue %dx.types.ResRet.f32 %3377, 2
  %3381 = extractvalue %dx.types.ResRet.f32 %3377, 3
  %3382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3310, float %3314, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3383 = extractvalue %dx.types.ResRet.f32 %3382, 0
  %3384 = extractvalue %dx.types.ResRet.f32 %3382, 1
  %3385 = extractvalue %dx.types.ResRet.f32 %3382, 2
  %3386 = extractvalue %dx.types.ResRet.f32 %3382, 3
  %3387 = fmul fast float %3378, %3305
  %3388 = fmul fast float %3383, %3305
  %3389 = fmul fast float %3385, %3305
  %3390 = fmul fast float %3381, %3305
  %3391 = fadd fast float %3365, %3387
  %3392 = fadd fast float %3366, %3388
  %3393 = fadd fast float %3367, %3389
  %3394 = fadd fast float %3368, %3390
  %3395 = fmul fast float %3379, %3305
  %3396 = fmul fast float %3384, %3305
  %3397 = fadd fast float %3371, %3395
  %3398 = fadd fast float %3372, %3396
  %3399 = fmul fast float %3380, %3305
  %3400 = fmul fast float %3386, %3305
  %3401 = fadd fast float %3375, %3399
  %3402 = fadd fast float %3376, %3400
  %3403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3404 = extractvalue %dx.types.CBufRet.f32 %3403, 0
  %3405 = fsub fast float %2875, %3404
  %3406 = fsub fast float %3247, %2875
  %3407 = call float @dx.op.binary.f32(i32 35, float %3406, float %3405)  ; FMax(a,b)
  %3408 = extractvalue %dx.types.CBufRet.f32 %3403, 1
  %3409 = fsub fast float %2876, %3408
  %3410 = fsub fast float %3248, %2876
  %3411 = call float @dx.op.binary.f32(i32 35, float %3410, float %3409)  ; FMax(a,b)
  %3412 = call float @dx.op.binary.f32(i32 35, float %3407, float %3411)  ; FMax(a,b)
  %3413 = extractvalue %dx.types.CBufRet.f32 %3251, 3
  %3414 = fmul fast float %3413, %3412
  %3415 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  %3416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3417 = extractvalue %dx.types.CBufRet.f32 %3416, 0
  %3418 = extractvalue %dx.types.CBufRet.f32 %3416, 1
  %3419 = extractvalue %dx.types.CBufRet.f32 %3416, 2
  %3420 = extractvalue %dx.types.CBufRet.f32 %3416, 3
  %3421 = fsub fast float %3417, %3391
  %3422 = fsub fast float %3418, %3392
  %3423 = fsub fast float %3419, %3393
  %3424 = fsub fast float %3420, %3394
  %3425 = fmul fast float %3421, %3415
  %3426 = fmul fast float %3422, %3415
  %3427 = fmul fast float %3423, %3415
  %3428 = fmul fast float %3424, %3415
  %3429 = fadd fast float %3425, %3391
  %3430 = fadd fast float %3426, %3392
  %3431 = fadd fast float %3427, %3393
  %3432 = fadd fast float %3428, %3394
  %3433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3434 = extractvalue %dx.types.CBufRet.f32 %3433, 0
  %3435 = extractvalue %dx.types.CBufRet.f32 %3433, 1
  %3436 = fsub fast float %3434, %3397
  %3437 = fsub fast float %3435, %3398
  %3438 = fmul fast float %3436, %3415
  %3439 = fmul fast float %3437, %3415
  %3440 = fadd fast float %3438, %3397
  %3441 = fadd fast float %3439, %3398
  %3442 = extractvalue %dx.types.CBufRet.f32 %3433, 2
  %3443 = extractvalue %dx.types.CBufRet.f32 %3433, 3
  %3444 = fsub fast float %3442, %3401
  %3445 = fsub fast float %3443, %3402
  %3446 = fmul fast float %3444, %3415
  %3447 = fmul fast float %3445, %3415
  %3448 = fadd fast float %3446, %3401
  %3449 = fadd fast float %3447, %3402
  %3450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3451 = extractvalue %dx.types.CBufRet.f32 %3450, 0
  %3452 = fmul fast float %3451, %3429
  %3453 = fmul fast float %3451, %3430
  %3454 = fmul fast float %3451, %3431
  %3455 = fmul fast float %3451, %3432
  %3456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3457 = extractvalue %dx.types.CBufRet.f32 %3456, 0
  %3458 = fmul fast float %3457, %3440
  %3459 = fmul fast float %3457, %3441
  %3460 = fadd fast float %3458, %3452
  %3461 = fadd fast float %3459, %3454
  %3462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3463 = extractvalue %dx.types.CBufRet.f32 %3462, 0
  %3464 = fmul fast float %3463, %3448
  %3465 = fmul fast float %3463, %3449
  %3466 = fadd fast float %3460, %3464
  %3467 = fadd fast float %3461, %3465
  %3468 = extractvalue %dx.types.CBufRet.f32 %3450, 1
  %3469 = fmul fast float %3468, %3429
  %3470 = fmul fast float %3468, %3430
  %3471 = fmul fast float %3468, %3431
  %3472 = fmul fast float %3468, %3432
  %3473 = extractvalue %dx.types.CBufRet.f32 %3456, 1
  %3474 = fmul fast float %3473, %3440
  %3475 = fmul fast float %3473, %3441
  %3476 = fadd fast float %3474, %3469
  %3477 = fadd fast float %3475, %3471
  %3478 = extractvalue %dx.types.CBufRet.f32 %3462, 1
  %3479 = fmul fast float %3478, %3448
  %3480 = fmul fast float %3478, %3449
  %3481 = fadd fast float %3476, %3479
  %3482 = fadd fast float %3477, %3480
  %3483 = extractvalue %dx.types.CBufRet.f32 %3450, 2
  %3484 = fmul fast float %3483, %3429
  %3485 = fmul fast float %3483, %3430
  %3486 = fmul fast float %3483, %3431
  %3487 = fmul fast float %3483, %3432
  %3488 = extractvalue %dx.types.CBufRet.f32 %3456, 2
  %3489 = fmul fast float %3488, %3440
  %3490 = fmul fast float %3488, %3441
  %3491 = fadd fast float %3489, %3484
  %3492 = fadd fast float %3490, %3486
  %3493 = extractvalue %dx.types.CBufRet.f32 %3462, 2
  %3494 = fmul fast float %3493, %3448
  %3495 = fmul fast float %3493, %3449
  %3496 = fadd fast float %3491, %3494
  %3497 = fadd fast float %3492, %3495
  %3498 = fmul fast float %3485, %3485
  %3499 = fmul fast float %3497, %3497
  %3500 = fmul fast float %3487, %3487
  %3501 = fadd fast float %3500, %3498
  %3502 = fadd fast float %3501, %3499
  %3503 = call float @dx.op.unary.f32(i32 24, float %3502)  ; Sqrt(value)
  %3504 = fcmp fast ugt float %3503, 0.000000e+00
  br i1 %3504, label %3505, label %3520

; <label>:3505                                    ; preds = %3239
  %3506 = fsub fast float -0.000000e+00, %3487
  %3507 = fdiv fast float %3506, %3503
  %3508 = fsub fast float -0.000000e+00, %3485
  %3509 = fdiv fast float %3508, %3503
  %3510 = fdiv fast float %3497, %3503
  %3511 = fmul fast float %3496, 0x3FE279A760000000
  %3512 = fmul fast float %3509, %3485
  %3513 = fmul fast float %3510, %3497
  %3514 = fmul fast float %3507, %3487
  %3515 = fadd fast float %3512, %3514
  %3516 = fsub fast float %3515, %3513
  %3517 = call float @dx.op.unary.f32(i32 6, float %3516)  ; FAbs(value)
  %3518 = fadd fast float %3517, 0x3DDB7CDFE0000000
  %3519 = fdiv fast float %3511, %3518
  br label %3520

; <label>:3520                                    ; preds = %3505, %3239
  %3521 = phi float [ %3519, %3505 ], [ 1.000000e+00, %3239 ]
  %3522 = fmul fast float %3470, %3470
  %3523 = fmul fast float %3482, %3482
  %3524 = fmul fast float %3472, %3472
  %3525 = fadd fast float %3524, %3522
  %3526 = fadd fast float %3525, %3523
  %3527 = call float @dx.op.unary.f32(i32 24, float %3526)  ; Sqrt(value)
  %3528 = fcmp fast ugt float %3527, 0.000000e+00
  br i1 %3528, label %3529, label %3544

; <label>:3529                                    ; preds = %3520
  %3530 = fsub fast float -0.000000e+00, %3472
  %3531 = fdiv fast float %3530, %3527
  %3532 = fsub fast float -0.000000e+00, %3470
  %3533 = fdiv fast float %3532, %3527
  %3534 = fdiv fast float %3482, %3527
  %3535 = fmul fast float %3481, 0x3FE279A760000000
  %3536 = fmul fast float %3533, %3470
  %3537 = fmul fast float %3534, %3482
  %3538 = fmul fast float %3531, %3472
  %3539 = fadd fast float %3536, %3538
  %3540 = fsub fast float %3539, %3537
  %3541 = call float @dx.op.unary.f32(i32 6, float %3540)  ; FAbs(value)
  %3542 = fadd fast float %3541, 0x3DDB7CDFE0000000
  %3543 = fdiv fast float %3535, %3542
  br label %3544

; <label>:3544                                    ; preds = %3529, %3520
  %3545 = phi float [ %3543, %3529 ], [ 1.000000e+00, %3520 ]
  %3546 = call float @dx.op.binary.f32(i32 36, float %3545, float %3521)  ; FMin(a,b)
  %3547 = fmul fast float %3453, %3453
  %3548 = fmul fast float %3467, %3467
  %3549 = fmul fast float %3455, %3455
  %3550 = fadd fast float %3549, %3547
  %3551 = fadd fast float %3550, %3548
  %3552 = call float @dx.op.unary.f32(i32 24, float %3551)  ; Sqrt(value)
  %3553 = fcmp fast ugt float %3552, 0.000000e+00
  br i1 %3553, label %3554, label %3569

; <label>:3554                                    ; preds = %3544
  %3555 = fsub fast float -0.000000e+00, %3455
  %3556 = fdiv fast float %3555, %3552
  %3557 = fsub fast float -0.000000e+00, %3453
  %3558 = fdiv fast float %3557, %3552
  %3559 = fdiv fast float %3467, %3552
  %3560 = fmul fast float %3466, 0x3FE279A760000000
  %3561 = fmul fast float %3558, %3453
  %3562 = fmul fast float %3559, %3467
  %3563 = fmul fast float %3556, %3455
  %3564 = fadd fast float %3561, %3563
  %3565 = fsub fast float %3564, %3562
  %3566 = call float @dx.op.unary.f32(i32 6, float %3565)  ; FAbs(value)
  %3567 = fadd fast float %3566, 0x3DDB7CDFE0000000
  %3568 = fdiv fast float %3560, %3567
  br label %3569

; <label>:3569                                    ; preds = %3554, %3544
  %3570 = phi float [ %3568, %3554 ], [ 1.000000e+00, %3544 ]
  %3571 = call float @dx.op.binary.f32(i32 36, float %3570, float %3546)  ; FMin(a,b)
  %3572 = call float @dx.op.unary.f32(i32 7, float %3571)  ; Saturate(value)
  %3573 = fcmp fast olt float %3572, 1.000000e+00
  br i1 %3573, label %3574, label %3584

; <label>:3574                                    ; preds = %3569
  %3575 = fmul fast float %3572, %3453
  %3576 = fmul fast float %3572, %3467
  %3577 = fmul fast float %3572, %3455
  %3578 = fmul fast float %3572, %3470
  %3579 = fmul fast float %3572, %3482
  %3580 = fmul fast float %3572, %3472
  %3581 = fmul fast float %3572, %3485
  %3582 = fmul fast float %3572, %3497
  %3583 = fmul fast float %3572, %3487
  br label %3584

; <label>:3584                                    ; preds = %3574, %3569
  %3585 = phi float [ %3581, %3574 ], [ %3485, %3569 ]
  %3586 = phi float [ %3582, %3574 ], [ %3497, %3569 ]
  %3587 = phi float [ %3583, %3574 ], [ %3487, %3569 ]
  %3588 = phi float [ %3578, %3574 ], [ %3470, %3569 ]
  %3589 = phi float [ %3579, %3574 ], [ %3482, %3569 ]
  %3590 = phi float [ %3580, %3574 ], [ %3472, %3569 ]
  %3591 = phi float [ %3575, %3574 ], [ %3453, %3569 ]
  %3592 = phi float [ %3576, %3574 ], [ %3467, %3569 ]
  %3593 = phi float [ %3577, %3574 ], [ %3455, %3569 ]
  %3594 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3466)  ; FMax(a,b)
  %3595 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3481)  ; FMax(a,b)
  %3596 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3496)  ; FMax(a,b)
  %3597 = fcmp fast oge float %3254, 0.000000e+00
  %3598 = and i1 %3597, %3025
  %3599 = fcmp fast ole float %3254, 1.000000e+00
  %3600 = and i1 %3599, %3598
  %3601 = fcmp fast oge float %3255, 0.000000e+00
  %3602 = and i1 %3601, %3600
  %3603 = fcmp fast ole float %3255, 1.000000e+00
  %3604 = and i1 %3603, %3602
  br i1 %3604, label %3605, label %3750, !dx.controlflow.hints !86

; <label>:3605                                    ; preds = %3584
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 2
  %3608 = extractvalue %dx.types.CBufRet.f32 %3606, 3
  %3609 = fmul fast float %3607, %3254
  %3610 = fmul fast float %3608, %3255
  %3611 = call float @dx.op.unary.f32(i32 27, float %3609)  ; Round_ni(value)
  %3612 = call float @dx.op.unary.f32(i32 27, float %3610)  ; Round_ni(value)
  %3613 = fptosi float %3611 to i32
  %3614 = fptosi float %3612 to i32
  %3615 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3613, i32 %3614, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3616 = extractvalue %dx.types.ResRet.i32 %3615, 0
  %3617 = and i32 %3616, 65535
  %3618 = lshr i32 %3616, 16
  %3619 = icmp eq i32 %3617, 65535
  br i1 %3619, label %3656, label %3620

; <label>:3620                                    ; preds = %3605
  %3621 = extractvalue %dx.types.CBufRet.f32 %3023, 1
  %3622 = extractvalue %dx.types.CBufRet.f32 %3606, 0
  %3623 = extractvalue %dx.types.CBufRet.f32 %3606, 1
  %3624 = fmul fast float %3622, %3254
  %3625 = fmul fast float %3623, %3255
  %3626 = fmul fast float %3624, 1.250000e-01
  %3627 = fmul fast float %3625, 1.250000e-01
  %3628 = call float @dx.op.unary.f32(i32 27, float %3626)  ; Round_ni(value)
  %3629 = call float @dx.op.unary.f32(i32 27, float %3627)  ; Round_ni(value)
  %3630 = fmul fast float %3628, 8.000000e+00
  %3631 = fmul fast float %3629, 8.000000e+00
  %3632 = and i32 %3616, 255
  %3633 = lshr i32 %3616, 8
  %3634 = and i32 %3633, 255
  %3635 = mul nuw nsw i32 %3632, 9
  %3636 = uitofp i32 %3635 to float
  %3637 = mul nuw nsw i32 %3634, 9
  %3638 = uitofp i32 %3637 to float
  %3639 = fadd fast float %3636, 5.000000e-01
  %3640 = fadd fast float %3639, %3624
  %3641 = fsub fast float %3640, %3630
  %3642 = fadd fast float %3638, 5.000000e-01
  %3643 = fadd fast float %3642, %3625
  %3644 = fsub fast float %3643, %3631
  %3645 = fdiv fast float %3641, %3024
  %3646 = fdiv fast float %3644, %3621
  %3647 = fmul fast float %3282, 4.375000e-01
  %3648 = fadd fast float %3647, 3.125000e-02
  %3649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3645, float %3646, float %3648, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = extractvalue %dx.types.ResRet.f32 %3649, 1
  %3652 = extractvalue %dx.types.ResRet.f32 %3649, 2
  %3653 = fadd fast float %3650, %3594
  %3654 = fadd fast float %3651, %3595
  %3655 = fadd fast float %3652, %3596
  br label %3656

; <label>:3656                                    ; preds = %3620, %3605
  %3657 = phi float [ %3655, %3620 ], [ %3596, %3605 ]
  %3658 = phi float [ %3654, %3620 ], [ %3595, %3605 ]
  %3659 = phi float [ %3653, %3620 ], [ %3594, %3605 ]
  %3660 = icmp eq i32 %3618, 65535
  br i1 %3660, label %3750, label %3661

; <label>:3661                                    ; preds = %3656
  %3662 = extractvalue %dx.types.CBufRet.f32 %3023, 1
  %3663 = extractvalue %dx.types.CBufRet.f32 %3606, 0
  %3664 = extractvalue %dx.types.CBufRet.f32 %3606, 1
  %3665 = fmul fast float %3663, %3254
  %3666 = fmul fast float %3664, %3255
  %3667 = fmul fast float %3665, 1.250000e-01
  %3668 = fmul fast float %3666, 1.250000e-01
  %3669 = call float @dx.op.unary.f32(i32 27, float %3667)  ; Round_ni(value)
  %3670 = call float @dx.op.unary.f32(i32 27, float %3668)  ; Round_ni(value)
  %3671 = fmul fast float %3669, 8.000000e+00
  %3672 = fmul fast float %3670, 8.000000e+00
  %3673 = fsub fast float %3665, %3671
  %3674 = fsub fast float %3666, %3672
  %3675 = fadd fast float %3673, 5.000000e-01
  %3676 = fadd fast float %3674, 5.000000e-01
  %3677 = and i32 %3618, 255
  %3678 = lshr i32 %3616, 24
  %3679 = mul nuw nsw i32 %3677, 9
  %3680 = uitofp i32 %3679 to float
  %3681 = mul nuw nsw i32 %3678, 9
  %3682 = uitofp i32 %3681 to float
  %3683 = fadd fast float %3675, %3680
  %3684 = fadd fast float %3676, %3682
  %3685 = fdiv fast float %3683, %3024
  %3686 = fdiv fast float %3684, %3662
  %3687 = fmul fast float %3282, 4.375000e-01
  %3688 = fadd fast float %3687, 3.125000e-02
  %3689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3685, float %3686, float %3688, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3690 = extractvalue %dx.types.ResRet.f32 %3689, 0
  %3691 = extractvalue %dx.types.ResRet.f32 %3689, 1
  %3692 = extractvalue %dx.types.ResRet.f32 %3689, 2
  %3693 = fadd fast float %3687, 5.312500e-01
  %3694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3685, float %3686, float %3693, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3695 = extractvalue %dx.types.ResRet.f32 %3694, 0
  %3696 = extractvalue %dx.types.ResRet.f32 %3694, 1
  %3697 = extractvalue %dx.types.ResRet.f32 %3694, 2
  %3698 = fmul fast float %3695, 2.000000e+00
  %3699 = fmul fast float %3696, 2.000000e+00
  %3700 = fmul fast float %3697, 2.000000e+00
  %3701 = fadd fast float %3698, -1.000000e+00
  %3702 = fadd fast float %3699, -1.000000e+00
  %3703 = fadd fast float %3700, -1.000000e+00
  %3704 = fmul fast float %3701, %3701
  %3705 = fmul fast float %3702, %3702
  %3706 = fadd fast float %3704, %3705
  %3707 = fmul fast float %3703, %3703
  %3708 = fadd fast float %3706, %3707
  %3709 = call float @dx.op.unary.f32(i32 24, float %3708)  ; Sqrt(value)
  %3710 = fcmp fast ogt float %3709, 0.000000e+00
  br i1 %3710, label %3711, label %3715

; <label>:3711                                    ; preds = %3661
  %3712 = fdiv fast float %3701, %3709
  %3713 = fdiv fast float %3702, %3709
  %3714 = fdiv fast float %3703, %3709
  br label %3715

; <label>:3715                                    ; preds = %3711, %3661
  %3716 = phi float [ %3712, %3711 ], [ 0.000000e+00, %3661 ]
  %3717 = phi float [ %3713, %3711 ], [ 0.000000e+00, %3661 ]
  %3718 = phi float [ %3714, %3711 ], [ 0.000000e+00, %3661 ]
  %3719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3720 = extractvalue %dx.types.CBufRet.f32 %3719, 0
  %3721 = extractvalue %dx.types.CBufRet.f32 %3719, 1
  %3722 = fsub fast float %2875, %3720
  %3723 = fsub fast float %2876, %3721
  %3724 = fmul fast float %3722, %3722
  %3725 = fmul fast float %3723, %3723
  %3726 = fadd fast float %3724, %3725
  %3727 = call float @dx.op.unary.f32(i32 24, float %3726)  ; Sqrt(value)
  %3728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3729 = extractvalue %dx.types.CBufRet.f32 %3728, 0
  %3730 = extractvalue %dx.types.CBufRet.f32 %3728, 1
  %3731 = fsub fast float %3727, %3729
  %3732 = fdiv fast float %3731, %3730
  %3733 = call float @dx.op.unary.f32(i32 7, float %3732)  ; Saturate(value)
  %3734 = fmul fast float %3733, 2.000000e+00
  %3735 = fsub fast float 3.000000e+00, %3734
  %3736 = fmul fast float %3733, %3733
  %3737 = fmul fast float %3736, %3735
  %3738 = call float @dx.op.dot3.f32(i32 55, float %3716, float %3717, float %3718, float %2852, float %2853, float %2854)  ; Dot3(ax,ay,az,bx,by,bz)
  %3739 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3738)  ; FMax(a,b)
  %3740 = fmul fast float %3739, 0x400C5BF8A0000000
  %3741 = fmul fast float %3737, %3690
  %3742 = fmul fast float %3741, %3740
  %3743 = fadd fast float %3742, %3659
  %3744 = fmul fast float %3737, %3691
  %3745 = fmul fast float %3744, %3740
  %3746 = fadd fast float %3745, %3658
  %3747 = fmul fast float %3737, %3692
  %3748 = fmul fast float %3747, %3740
  %3749 = fadd fast float %3748, %3657
  br label %3750

; <label>:3750                                    ; preds = %3715, %3656, %3584
  %3751 = phi float [ %3749, %3715 ], [ %3657, %3656 ], [ %3596, %3584 ]
  %3752 = phi float [ %3746, %3715 ], [ %3658, %3656 ], [ %3595, %3584 ]
  %3753 = phi float [ %3743, %3715 ], [ %3659, %3656 ], [ %3594, %3584 ]
  %3754 = fcmp fast ogt float %3241, %3278
  %3755 = and i1 %3597, %3754
  %3756 = and i1 %3599, %3755
  %3757 = and i1 %3601, %3756
  %3758 = and i1 %3603, %3757
  br i1 %3758, label %3759, label %3816, !dx.controlflow.hints !87

; <label>:3759                                    ; preds = %3750
  %3760 = fmul fast float %3280, 0x3FC24924A0000000
  %3761 = fsub fast float %3241, %3278
  %3762 = fdiv fast float %3761, %3760
  %3763 = call float @dx.op.unary.f32(i32 7, float %3762)  ; Saturate(value)
  %3764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3764, 0
  %3766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.f32 %3766, 0
  %3768 = extractvalue %dx.types.CBufRet.f32 %3766, 1
  %3769 = extractvalue %dx.types.CBufRet.f32 %3766, 2
  %3770 = fsub fast float %3765, %3753
  %3771 = fsub fast float %3767, %3591
  %3772 = fsub fast float %3768, %3592
  %3773 = fsub fast float %3769, %3593
  %3774 = fmul fast float %3770, %3763
  %3775 = fmul fast float %3771, %3763
  %3776 = fmul fast float %3772, %3763
  %3777 = fmul fast float %3773, %3763
  %3778 = fadd fast float %3774, %3753
  %3779 = fadd fast float %3775, %3591
  %3780 = fadd fast float %3776, %3592
  %3781 = fadd fast float %3777, %3593
  %3782 = extractvalue %dx.types.CBufRet.f32 %3764, 1
  %3783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3784 = extractvalue %dx.types.CBufRet.f32 %3783, 0
  %3785 = extractvalue %dx.types.CBufRet.f32 %3783, 1
  %3786 = extractvalue %dx.types.CBufRet.f32 %3783, 2
  %3787 = fsub fast float %3782, %3752
  %3788 = fsub fast float %3784, %3588
  %3789 = fsub fast float %3785, %3589
  %3790 = fsub fast float %3786, %3590
  %3791 = fmul fast float %3787, %3763
  %3792 = fmul fast float %3788, %3763
  %3793 = fmul fast float %3789, %3763
  %3794 = fmul fast float %3790, %3763
  %3795 = fadd fast float %3791, %3752
  %3796 = fadd fast float %3792, %3588
  %3797 = fadd fast float %3793, %3589
  %3798 = fadd fast float %3794, %3590
  %3799 = extractvalue %dx.types.CBufRet.f32 %3764, 2
  %3800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3801 = extractvalue %dx.types.CBufRet.f32 %3800, 0
  %3802 = extractvalue %dx.types.CBufRet.f32 %3800, 1
  %3803 = extractvalue %dx.types.CBufRet.f32 %3800, 2
  %3804 = fsub fast float %3799, %3751
  %3805 = fsub fast float %3801, %3585
  %3806 = fsub fast float %3802, %3586
  %3807 = fsub fast float %3803, %3587
  %3808 = fmul fast float %3804, %3763
  %3809 = fmul fast float %3805, %3763
  %3810 = fmul fast float %3806, %3763
  %3811 = fmul fast float %3807, %3763
  %3812 = fadd fast float %3808, %3751
  %3813 = fadd fast float %3809, %3585
  %3814 = fadd fast float %3810, %3586
  %3815 = fadd fast float %3811, %3587
  br label %3816

; <label>:3816                                    ; preds = %3759, %3750
  %3817 = phi float [ %3812, %3759 ], [ %3751, %3750 ]
  %3818 = phi float [ %3813, %3759 ], [ %3585, %3750 ]
  %3819 = phi float [ %3814, %3759 ], [ %3586, %3750 ]
  %3820 = phi float [ %3815, %3759 ], [ %3587, %3750 ]
  %3821 = phi float [ %3795, %3759 ], [ %3752, %3750 ]
  %3822 = phi float [ %3796, %3759 ], [ %3588, %3750 ]
  %3823 = phi float [ %3797, %3759 ], [ %3589, %3750 ]
  %3824 = phi float [ %3798, %3759 ], [ %3590, %3750 ]
  %3825 = phi float [ %3778, %3759 ], [ %3753, %3750 ]
  %3826 = phi float [ %3779, %3759 ], [ %3591, %3750 ]
  %3827 = phi float [ %3780, %3759 ], [ %3592, %3750 ]
  %3828 = phi float [ %3781, %3759 ], [ %3593, %3750 ]
  %3829 = extractvalue %dx.types.CBufRet.f32 %3403, 3
  %3830 = fmul fast float %3829, %3825
  %3831 = fmul fast float %3829, %3821
  %3832 = fmul fast float %3829, %3817
  %3833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3834 = extractvalue %dx.types.CBufRet.f32 %3833, 3
  %3835 = fmul fast float %3830, %3834
  %3836 = fmul fast float %3831, %3834
  %3837 = fmul fast float %3832, %3834
  %3838 = fmul fast float %3826, 1.500000e+00
  %3839 = fmul fast float %3838, %3829
  %3840 = fmul fast float %3839, %3834
  %3841 = fmul fast float %3827, 1.500000e+00
  %3842 = fmul fast float %3841, %3829
  %3843 = fmul fast float %3842, %3834
  %3844 = fmul fast float %3828, 1.500000e+00
  %3845 = fmul fast float %3844, %3829
  %3846 = fmul fast float %3845, %3834
  %3847 = fmul fast float %3822, 1.500000e+00
  %3848 = fmul fast float %3847, %3829
  %3849 = fmul fast float %3848, %3834
  %3850 = fmul fast float %3823, 1.500000e+00
  %3851 = fmul fast float %3850, %3829
  %3852 = fmul fast float %3851, %3834
  %3853 = fmul fast float %3824, 1.500000e+00
  %3854 = fmul fast float %3853, %3829
  %3855 = fmul fast float %3854, %3834
  %3856 = fmul fast float %3818, 1.500000e+00
  %3857 = fmul fast float %3856, %3829
  %3858 = fmul fast float %3857, %3834
  %3859 = fmul fast float %3819, 1.500000e+00
  %3860 = fmul fast float %3859, %3829
  %3861 = fmul fast float %3860, %3834
  %3862 = fmul fast float %3820, 1.500000e+00
  %3863 = fmul fast float %3862, %3829
  %3864 = fmul fast float %3863, %3834
  %3865 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3835)  ; FMax(a,b)
  %3866 = call float @dx.op.dot3.f32(i32 55, float %3840, float %3843, float %3846, float %3840, float %3843, float %3846)  ; Dot3(ax,ay,az,bx,by,bz)
  %3867 = fcmp fast oeq float %3866, 0.000000e+00
  %3868 = fcmp fast oeq float %3865, 0.000000e+00
  %3869 = or i1 %3868, %3867
  br i1 %3869, label %3899, label %3870

; <label>:3870                                    ; preds = %3816
  %3871 = fsub fast float -0.000000e+00, %3846
  %3872 = fsub fast float -0.000000e+00, %3840
  %3873 = call float @dx.op.unary.f32(i32 24, float %3866)  ; Sqrt(value)
  %3874 = fdiv fast float %3873, %3865
  %3875 = fcmp fast ogt float %3874, 0x3FFB6F8900000000
  %3876 = select i1 %3875, float 0x3FFB6F8900000000, float %3874
  %3877 = fmul fast float %3876, 0x3FE8A23460000000
  %3878 = call float @dx.op.unary.f32(i32 7, float %3877)  ; Saturate(value)
  %3879 = call float @dx.op.binary.f32(i32 35, float %3876, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3880 = fmul fast float %3878, %3865
  %3881 = fmul fast float %3879, 0x3FF279A740000000
  %3882 = fadd fast float %3881, -1.000000e+00
  %3883 = call float @dx.op.dot3.f32(i32 55, float %3871, float %3872, float %3843, float %3871, float %3872, float %3843)  ; Dot3(ax,ay,az,bx,by,bz)
  %3884 = call float @dx.op.unary.f32(i32 25, float %3883)  ; Rsqrt(value)
  %3885 = fmul fast float %3884, %3871
  %3886 = fmul fast float %3884, %3872
  %3887 = fmul fast float %3884, %3843
  %3888 = fmul fast float %3882, %3882
  %3889 = fsub fast float 1.000000e+00, %3888
  %3890 = fmul fast float %3879, 0x40005F8BE0000000
  %3891 = fsub fast float 0x400C5BF8A0000000, %3890
  %3892 = fdiv fast float %3880, %3891
  %3893 = fmul fast float %3892, 0x3FEE31C3C0000000
  %3894 = fmul fast float %3893, %3889
  %3895 = fmul fast float %3879, 0x3FDACB7480000000
  %3896 = fadd fast float %3895, 0xBFD7347680000000
  %3897 = fmul fast float %3896, %3892
  %3898 = fmul fast float %3897, %3889
  br label %3899

; <label>:3899                                    ; preds = %3870, %3816
  %3900 = phi float [ %3885, %3870 ], [ 0.000000e+00, %3816 ]
  %3901 = phi float [ %3886, %3870 ], [ 0.000000e+00, %3816 ]
  %3902 = phi float [ %3887, %3870 ], [ 0.000000e+00, %3816 ]
  %3903 = phi float [ %3894, %3870 ], [ 0.000000e+00, %3816 ]
  %3904 = phi float [ %3898, %3870 ], [ 0.000000e+00, %3816 ]
  %3905 = call float @dx.op.dot3.f32(i32 55, float %3900, float %3901, float %3902, float %2852, float %2853, float %2854)  ; Dot3(ax,ay,az,bx,by,bz)
  %3906 = fmul fast float %3905, %3905
  %3907 = fmul fast float %3906, 0x3FEE471020000000
  %3908 = fadd fast float %3907, 0xBFD42F6020000000
  %3909 = fmul fast float %3865, 0x3FD20DD760000000
  %3910 = fmul fast float %3908, %3904
  %3911 = fmul fast float %3903, 0x3FDF454380000000
  %3912 = fmul fast float %3911, %3905
  %3913 = fadd fast float %3912, %3909
  %3914 = fadd fast float %3913, %3910
  %3915 = call float @dx.op.dot3.f32(i32 55, float %3900, float %3901, float %3902, float %2865, float %2866, float %2867)  ; Dot3(ax,ay,az,bx,by,bz)
  %3916 = fmul fast float %3915, 0x3FDF454380000000
  %3917 = fmul fast float %3915, %3915
  %3918 = fmul fast float %3917, 0x3FEE471020000000
  %3919 = fadd fast float %3918, 0xBFD42F6020000000
  %3920 = call float @dx.op.dot3.f32(i32 55, float %3865, float %3903, float %3904, float 0x3FD20DD760000000, float %3916, float %3919)  ; Dot3(ax,ay,az,bx,by,bz)
  %3921 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3836)  ; FMax(a,b)
  %3922 = call float @dx.op.dot3.f32(i32 55, float %3849, float %3852, float %3855, float %3849, float %3852, float %3855)  ; Dot3(ax,ay,az,bx,by,bz)
  %3923 = fcmp fast oeq float %3922, 0.000000e+00
  %3924 = fcmp fast oeq float %3921, 0.000000e+00
  %3925 = or i1 %3924, %3923
  br i1 %3925, label %3955, label %3926

; <label>:3926                                    ; preds = %3899
  %3927 = fsub fast float -0.000000e+00, %3855
  %3928 = fsub fast float -0.000000e+00, %3849
  %3929 = call float @dx.op.unary.f32(i32 24, float %3922)  ; Sqrt(value)
  %3930 = fdiv fast float %3929, %3921
  %3931 = fcmp fast ogt float %3930, 0x3FFB6F8900000000
  %3932 = select i1 %3931, float 0x3FFB6F8900000000, float %3930
  %3933 = fmul fast float %3932, 0x3FE8A23460000000
  %3934 = call float @dx.op.unary.f32(i32 7, float %3933)  ; Saturate(value)
  %3935 = call float @dx.op.binary.f32(i32 35, float %3932, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3936 = fmul fast float %3934, %3921
  %3937 = fmul fast float %3935, 0x3FF279A740000000
  %3938 = fadd fast float %3937, -1.000000e+00
  %3939 = call float @dx.op.dot3.f32(i32 55, float %3927, float %3928, float %3852, float %3927, float %3928, float %3852)  ; Dot3(ax,ay,az,bx,by,bz)
  %3940 = call float @dx.op.unary.f32(i32 25, float %3939)  ; Rsqrt(value)
  %3941 = fmul fast float %3940, %3927
  %3942 = fmul fast float %3940, %3928
  %3943 = fmul fast float %3940, %3852
  %3944 = fmul fast float %3938, %3938
  %3945 = fsub fast float 1.000000e+00, %3944
  %3946 = fmul fast float %3935, 0x40005F8BE0000000
  %3947 = fsub fast float 0x400C5BF8A0000000, %3946
  %3948 = fdiv fast float %3936, %3947
  %3949 = fmul fast float %3948, 0x3FEE31C3C0000000
  %3950 = fmul fast float %3949, %3945
  %3951 = fmul fast float %3935, 0x3FDACB7480000000
  %3952 = fadd fast float %3951, 0xBFD7347680000000
  %3953 = fmul fast float %3952, %3948
  %3954 = fmul fast float %3953, %3945
  br label %3955

; <label>:3955                                    ; preds = %3926, %3899
  %3956 = phi float [ %3941, %3926 ], [ 0.000000e+00, %3899 ]
  %3957 = phi float [ %3942, %3926 ], [ 0.000000e+00, %3899 ]
  %3958 = phi float [ %3943, %3926 ], [ 0.000000e+00, %3899 ]
  %3959 = phi float [ %3950, %3926 ], [ 0.000000e+00, %3899 ]
  %3960 = phi float [ %3954, %3926 ], [ 0.000000e+00, %3899 ]
  %3961 = call float @dx.op.dot3.f32(i32 55, float %3956, float %3957, float %3958, float %2852, float %2853, float %2854)  ; Dot3(ax,ay,az,bx,by,bz)
  %3962 = fmul fast float %3961, %3961
  %3963 = fmul fast float %3962, 0x3FEE471020000000
  %3964 = fadd fast float %3963, 0xBFD42F6020000000
  %3965 = fmul fast float %3921, 0x3FD20DD760000000
  %3966 = fmul fast float %3964, %3960
  %3967 = fmul fast float %3959, 0x3FDF454380000000
  %3968 = fmul fast float %3967, %3961
  %3969 = fadd fast float %3968, %3965
  %3970 = fadd fast float %3969, %3966
  %3971 = call float @dx.op.dot3.f32(i32 55, float %3956, float %3957, float %3958, float %2865, float %2866, float %2867)  ; Dot3(ax,ay,az,bx,by,bz)
  %3972 = fmul fast float %3971, 0x3FDF454380000000
  %3973 = fmul fast float %3971, %3971
  %3974 = fmul fast float %3973, 0x3FEE471020000000
  %3975 = fadd fast float %3974, 0xBFD42F6020000000
  %3976 = call float @dx.op.dot3.f32(i32 55, float %3921, float %3959, float %3960, float 0x3FD20DD760000000, float %3972, float %3975)  ; Dot3(ax,ay,az,bx,by,bz)
  %3977 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3837)  ; FMax(a,b)
  %3978 = call float @dx.op.dot3.f32(i32 55, float %3858, float %3861, float %3864, float %3858, float %3861, float %3864)  ; Dot3(ax,ay,az,bx,by,bz)
  %3979 = fcmp fast oeq float %3978, 0.000000e+00
  %3980 = fcmp fast oeq float %3977, 0.000000e+00
  %3981 = or i1 %3980, %3979
  br i1 %3981, label %4011, label %3982

; <label>:3982                                    ; preds = %3955
  %3983 = fsub fast float -0.000000e+00, %3864
  %3984 = fsub fast float -0.000000e+00, %3858
  %3985 = call float @dx.op.unary.f32(i32 24, float %3978)  ; Sqrt(value)
  %3986 = fdiv fast float %3985, %3977
  %3987 = fcmp fast ogt float %3986, 0x3FFB6F8900000000
  %3988 = select i1 %3987, float 0x3FFB6F8900000000, float %3986
  %3989 = fmul fast float %3988, 0x3FE8A23460000000
  %3990 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3991 = call float @dx.op.binary.f32(i32 35, float %3988, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3992 = fmul fast float %3990, %3977
  %3993 = fmul fast float %3991, 0x3FF279A740000000
  %3994 = fadd fast float %3993, -1.000000e+00
  %3995 = call float @dx.op.dot3.f32(i32 55, float %3983, float %3984, float %3861, float %3983, float %3984, float %3861)  ; Dot3(ax,ay,az,bx,by,bz)
  %3996 = call float @dx.op.unary.f32(i32 25, float %3995)  ; Rsqrt(value)
  %3997 = fmul fast float %3996, %3983
  %3998 = fmul fast float %3996, %3984
  %3999 = fmul fast float %3996, %3861
  %4000 = fmul fast float %3994, %3994
  %4001 = fsub fast float 1.000000e+00, %4000
  %4002 = fmul fast float %3991, 0x40005F8BE0000000
  %4003 = fsub fast float 0x400C5BF8A0000000, %4002
  %4004 = fdiv fast float %3992, %4003
  %4005 = fmul fast float %4004, 0x3FEE31C3C0000000
  %4006 = fmul fast float %4005, %4001
  %4007 = fmul fast float %3991, 0x3FDACB7480000000
  %4008 = fadd fast float %4007, 0xBFD7347680000000
  %4009 = fmul fast float %4008, %4004
  %4010 = fmul fast float %4009, %4001
  br label %4011

; <label>:4011                                    ; preds = %3982, %3955
  %4012 = phi float [ %3997, %3982 ], [ 0.000000e+00, %3955 ]
  %4013 = phi float [ %3998, %3982 ], [ 0.000000e+00, %3955 ]
  %4014 = phi float [ %3999, %3982 ], [ 0.000000e+00, %3955 ]
  %4015 = phi float [ %4006, %3982 ], [ 0.000000e+00, %3955 ]
  %4016 = phi float [ %4010, %3982 ], [ 0.000000e+00, %3955 ]
  %4017 = call float @dx.op.dot3.f32(i32 55, float %4012, float %4013, float %4014, float %2852, float %2853, float %2854)  ; Dot3(ax,ay,az,bx,by,bz)
  %4018 = fmul fast float %4017, %4017
  %4019 = fmul fast float %4018, 0x3FEE471020000000
  %4020 = fadd fast float %4019, 0xBFD42F6020000000
  %4021 = fmul fast float %3977, 0x3FD20DD760000000
  %4022 = fmul fast float %4020, %4016
  %4023 = fmul fast float %4015, 0x3FDF454380000000
  %4024 = fmul fast float %4023, %4017
  %4025 = fadd fast float %4024, %4021
  %4026 = fadd fast float %4025, %4022
  %4027 = call float @dx.op.dot3.f32(i32 55, float %4012, float %4013, float %4014, float %2865, float %2866, float %2867)  ; Dot3(ax,ay,az,bx,by,bz)
  %4028 = fmul fast float %4027, 0x3FDF454380000000
  %4029 = fmul fast float %4027, %4027
  %4030 = fmul fast float %4029, 0x3FEE471020000000
  %4031 = fadd fast float %4030, 0xBFD42F6020000000
  %4032 = call float @dx.op.dot3.f32(i32 55, float %3977, float %4015, float %4016, float 0x3FD20DD760000000, float %4028, float %4031)  ; Dot3(ax,ay,az,bx,by,bz)
  %4033 = call float @dx.op.binary.f32(i32 35, float %3914, float 0.000000e+00)  ; FMax(a,b)
  %4034 = call float @dx.op.binary.f32(i32 35, float %3970, float 0.000000e+00)  ; FMax(a,b)
  %4035 = call float @dx.op.binary.f32(i32 35, float %4026, float 0.000000e+00)  ; FMax(a,b)
  %4036 = call float @dx.op.binary.f32(i32 35, float %3920, float 0.000000e+00)  ; FMax(a,b)
  %4037 = call float @dx.op.binary.f32(i32 35, float %3976, float 0.000000e+00)  ; FMax(a,b)
  %4038 = call float @dx.op.binary.f32(i32 35, float %4032, float 0.000000e+00)  ; FMax(a,b)
  %4039 = fsub fast float %3235, %4033
  %4040 = fsub fast float %3236, %4034
  %4041 = fsub fast float %3237, %4035
  %4042 = fmul fast float %4039, %2916
  %4043 = fmul fast float %4040, %2916
  %4044 = fmul fast float %4041, %2916
  %4045 = fadd fast float %4042, %4033
  %4046 = fadd fast float %4043, %4034
  %4047 = fadd fast float %4044, %4035
  %4048 = fsub fast float %3232, %4036
  %4049 = fsub fast float %3233, %4037
  %4050 = fsub fast float %3234, %4038
  %4051 = fmul fast float %4048, %2916
  %4052 = fmul fast float %4049, %2916
  %4053 = fmul fast float %4050, %2916
  %4054 = fadd fast float %4051, %4036
  %4055 = fadd fast float %4052, %4037
  %4056 = fadd fast float %4053, %4038
  br label %4057

; <label>:4057                                    ; preds = %4011, %3231
  %4058 = phi float [ %4054, %4011 ], [ %3232, %3231 ]
  %4059 = phi float [ %4055, %4011 ], [ %3233, %3231 ]
  %4060 = phi float [ %4056, %4011 ], [ %3234, %3231 ]
  %4061 = phi float [ %4045, %4011 ], [ %3235, %3231 ]
  %4062 = phi float [ %4046, %4011 ], [ %3236, %3231 ]
  %4063 = phi float [ %4047, %4011 ], [ %3237, %3231 ]
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 0
  %4066 = call float @dx.op.binary.f32(i32 36, float %2849, float %4065)  ; FMin(a,b)
  %4067 = fsub fast float 1.000000e+00, %2868
  %4068 = fmul fast float %4066, %4067
  %4069 = fsub fast float 1.000000e+00, %4068
  %4070 = bitcast float %4069 to i32
  %4071 = sub nsw i32 2129859010, %4070
  %4072 = bitcast i32 %4071 to float
  %4073 = call float @dx.op.binary.f32(i32 36, float %2850, float %4065)  ; FMin(a,b)
  %4074 = fmul fast float %4073, %4067
  %4075 = fsub fast float 1.000000e+00, %4074
  %4076 = bitcast float %4075 to i32
  %4077 = sub nsw i32 2129859010, %4076
  %4078 = bitcast i32 %4077 to float
  %4079 = call float @dx.op.binary.f32(i32 36, float %2851, float %4065)  ; FMin(a,b)
  %4080 = fmul fast float %4079, %4067
  %4081 = fsub fast float 1.000000e+00, %4080
  %4082 = bitcast float %4081 to i32
  %4083 = sub nsw i32 2129859010, %4082
  %4084 = bitcast i32 %4083 to float
  %4085 = fmul fast float %4061, %2868
  %4086 = fmul fast float %4085, %4072
  %4087 = fmul fast float %4062, %2868
  %4088 = fmul fast float %4087, %4078
  %4089 = fmul fast float %4063, %2868
  %4090 = fmul fast float %4089, %4084
  %4091 = call float @dx.op.binary.f32(i32 36, float %2846, float %4065)  ; FMin(a,b)
  %4092 = fmul fast float %4091, %4067
  %4093 = fsub fast float 1.000000e+00, %4092
  %4094 = bitcast float %4093 to i32
  %4095 = sub nsw i32 2129859010, %4094
  %4096 = bitcast i32 %4095 to float
  %4097 = call float @dx.op.binary.f32(i32 36, float %2847, float %4065)  ; FMin(a,b)
  %4098 = fmul fast float %4097, %4067
  %4099 = fsub fast float 1.000000e+00, %4098
  %4100 = bitcast float %4099 to i32
  %4101 = sub nsw i32 2129859010, %4100
  %4102 = bitcast i32 %4101 to float
  %4103 = call float @dx.op.binary.f32(i32 36, float %2857, float %4065)  ; FMin(a,b)
  %4104 = fmul fast float %4103, %4067
  %4105 = fsub fast float 1.000000e+00, %4104
  %4106 = bitcast float %4105 to i32
  %4107 = sub nsw i32 2129859010, %4106
  %4108 = bitcast i32 %4107 to float
  %4109 = fmul fast float %4058, %2868
  %4110 = fmul fast float %4109, %4096
  %4111 = fmul fast float %4059, %2868
  %4112 = fmul fast float %4111, %4102
  %4113 = fmul fast float %4060, %2868
  %4114 = fmul fast float %4113, %4108
  %4115 = call float @dx.op.dot3.f32(i32 55, float %4086, float %4088, float %4090, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4116 = select i1 %189, float 0.000000e+00, float %4086
  %4117 = select i1 %189, float %4115, float %4088
  %4118 = select i1 %189, float 0.000000e+00, float %4090
  %4119 = call float @dx.op.dot3.f32(i32 55, float %4110, float %4112, float %4114, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4120 = select i1 %189, float 0.000000e+00, float %4110
  %4121 = select i1 %189, float %4119, float %4112
  %4122 = select i1 %189, float 0.000000e+00, float %4114
  %4123 = fmul fast float %2859, 9.843750e-01
  %4124 = fmul fast float %2855, 9.843750e-01
  %4125 = fadd fast float %4123, 7.812500e-03
  %4126 = fadd fast float %4124, 7.812500e-03
  %4127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4125, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 2
  %4129 = extractvalue %dx.types.ResRet.f32 %4127, 3
  %4130 = fmul fast float %4128, %2846
  %4131 = fmul fast float %4128, %2847
  %4132 = fmul fast float %4128, %2857
  %4133 = fadd fast float %4130, %4129
  %4134 = fadd fast float %4131, %4129
  %4135 = fadd fast float %4132, %4129
  %4136 = fcmp fast ogt float %2223, 0.000000e+00
  br i1 %4136, label %4137, label %4163

; <label>:4137                                    ; preds = %4057
  %4138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2223, float %2859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4139 = extractvalue %dx.types.ResRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.ResRet.f32 %4138, 1
  %4141 = extractvalue %dx.types.ResRet.f32 %4138, 2
  %4142 = fadd fast float %4139, -5.000000e-01
  %4143 = fadd fast float %4140, -5.000000e-01
  %4144 = fadd fast float %4141, -5.000000e-01
  %4145 = fsub fast float 1.000000e+00, %2846
  %4146 = fsub fast float 1.000000e+00, %2847
  %4147 = fsub fast float 1.000000e+00, %2857
  %4148 = fmul fast float %2846, 4.000000e+00
  %4149 = fmul fast float %4148, %4145
  %4150 = fmul fast float %4149, %4142
  %4151 = fmul fast float %2847, 4.000000e+00
  %4152 = fmul fast float %4151, %4146
  %4153 = fmul fast float %4152, %4143
  %4154 = fmul fast float %2857, 4.000000e+00
  %4155 = fmul fast float %4154, %4147
  %4156 = fmul fast float %4155, %4144
  %4157 = fadd fast float %4150, %4133
  %4158 = fadd fast float %4153, %4134
  %4159 = fadd fast float %4156, %4135
  %4160 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4161 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4162 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  br label %4163

; <label>:4163                                    ; preds = %4137, %4057
  %4164 = phi float [ %4160, %4137 ], [ %4133, %4057 ]
  %4165 = phi float [ %4161, %4137 ], [ %4134, %4057 ]
  %4166 = phi float [ %4162, %4137 ], [ %4135, %4057 ]
  %4167 = call float @dx.op.binary.f32(i32 35, float %4165, float %4166)  ; FMax(a,b)
  %4168 = call float @dx.op.binary.f32(i32 35, float %4164, float %4167)  ; FMax(a,b)
  %4169 = fsub fast float 1.000000e+00, %4168
  %4170 = fmul fast float %4169, %4116
  %4171 = fmul fast float %4169, %4117
  %4172 = fmul fast float %4169, %4118
  %4173 = call float @dx.op.dot3.f32(i32 55, float %2849, float %2850, float %2851, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4174 = fcmp fast ogt float %4173, 0x3E7FF19E20000000
  %4175 = fdiv fast float 1.000000e+00, %4173
  %4176 = select i1 %4174, float %4175, float 0.000000e+00
  %4177 = fmul fast float %4176, %2849
  %4178 = fmul fast float %4176, %2850
  %4179 = fmul fast float %4176, %2851
  %4180 = fadd fast float %4177, -1.000000e+00
  %4181 = fadd fast float %4178, -1.000000e+00
  %4182 = fadd fast float %4179, -1.000000e+00
  %4183 = fmul fast float %4180, 5.000000e-01
  %4184 = fmul fast float %4181, 5.000000e-01
  %4185 = fmul fast float %4182, 5.000000e-01
  %4186 = fadd fast float %4183, 1.000000e+00
  %4187 = fadd fast float %4184, 1.000000e+00
  %4188 = fadd fast float %4185, 1.000000e+00
  %4189 = fmul fast float %4164, %4120
  %4190 = fmul fast float %4165, %4121
  %4191 = fmul fast float %4166, %4122
  %4192 = fsub fast float 1.000000e+00, %2859
  %4193 = bitcast float %4192 to i32
  %4194 = sitofp i32 %4193 to float
  %4195 = fmul fast float %4194, 5.000000e+00
  %4196 = fadd fast float %4195, 0xC1EFBF8940000000
  %4197 = fptosi float %4196 to i32
  %4198 = bitcast i32 %4197 to float
  %4199 = fmul fast float %4198, %2222
  %4200 = fmul fast float %4116, %4199
  %4201 = fmul fast float %4200, %4169
  %4202 = fmul fast float %4201, %4186
  %4203 = fmul fast float %4117, %4199
  %4204 = fmul fast float %4203, %4169
  %4205 = fmul fast float %4204, %4187
  %4206 = fmul fast float %4118, %4199
  %4207 = fmul fast float %4206, %4169
  %4208 = fmul fast float %4207, %4188
  %4209 = fmul fast float %4170, %2243
  %4210 = fmul fast float %4171, %2243
  %4211 = fmul fast float %4172, %2243
  %4212 = fadd fast float %4189, %2224
  %4213 = fadd fast float %4212, %4202
  %4214 = fmul fast float %4213, %2243
  %4215 = fadd fast float %4190, %2225
  %4216 = fadd fast float %4215, %4205
  %4217 = fmul fast float %4216, %2243
  %4218 = fadd fast float %4191, %2226
  %4219 = fadd fast float %4218, %4208
  %4220 = fmul fast float %4219, %2243
  %4221 = bitcast i32 %2871 to float
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 3
  %4224 = fcmp fast oeq float %4223, 0.000000e+00
  br i1 %4224, label %4452, label %4225

; <label>:4225                                    ; preds = %4163
  %4226 = extractvalue %dx.types.CBufRet.f32 %4222, 0
  %4227 = extractvalue %dx.types.CBufRet.f32 %4222, 1
  %4228 = extractvalue %dx.types.CBufRet.f32 %4222, 2
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = extractvalue %dx.types.CBufRet.f32 %4229, 1
  %4232 = extractvalue %dx.types.CBufRet.f32 %4229, 2
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 0
  %4235 = extractvalue %dx.types.CBufRet.f32 %4233, 1
  %4236 = call float @dx.op.dot3.f32(i32 55, float %4230, float %4231, float %4232, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4237 = select i1 %189, float %4234, float %4230
  %4238 = select i1 %189, float %4236, float %4231
  %4239 = select i1 %189, float %4235, float %4232
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 1
  %4242 = fcmp fast une float %4241, 0.000000e+00
  br i1 %4242, label %4243, label %4260

; <label>:4243                                    ; preds = %4225
  %4244 = fptoui float %71 to i32
  %4245 = fptoui float %72 to i32
  %4246 = lshr i32 %4244, 4
  %4247 = lshr i32 %4245, 4
  %4248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.f32 %4248, 0
  %4250 = fptoui float %4249 to i32
  %4251 = add i32 %4250, 15
  %4252 = lshr i32 %4251, 4
  %4253 = mul i32 %4252, %4247
  %4254 = add i32 %4253, %4246
  %4255 = shl i32 %4254, 3
  %4256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4255, i32 undef)  ; BufferLoad(srv,index,wot)
  %4257 = extractvalue %dx.types.ResRet.i32 %4256, 0
  %4258 = and i32 %4257, -268435456
  %4259 = icmp eq i32 %4258, -1342177280
  br i1 %4259, label %4270, label %4260

; <label>:4260                                    ; preds = %4243, %4225
  %4261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4262 = extractvalue %dx.types.CBufRet.f32 %4261, 2
  %4263 = extractvalue %dx.types.CBufRet.f32 %4261, 3
  %4264 = fmul fast float %4262, %71
  %4265 = fmul fast float %4263, %72
  %4266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4264, float %4265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4267 = extractvalue %dx.types.ResRet.f32 %4266, 0
  %4268 = extractvalue %dx.types.ResRet.f32 %4266, 1
  %4269 = extractvalue %dx.types.ResRet.f32 %4266, 2
  br label %4270

; <label>:4270                                    ; preds = %4260, %4243
  %4271 = phi float [ %4267, %4260 ], [ 0.000000e+00, %4243 ]
  %4272 = phi float [ %4268, %4260 ], [ 0.000000e+00, %4243 ]
  %4273 = phi float [ %4269, %4260 ], [ 0.000000e+00, %4243 ]
  %4274 = call float @dx.op.binary.f32(i32 36, float %4272, float %4273)  ; FMin(a,b)
  %4275 = call float @dx.op.binary.f32(i32 36, float %4271, float %4274)  ; FMin(a,b)
  %4276 = fcmp fast ogt float %4275, 0.000000e+00
  br i1 %4276, label %4277, label %4452, !dx.controlflow.hints !88

; <label>:4277                                    ; preds = %4270
  %4278 = fmul fast float %4271, %4237
  %4279 = fmul fast float %4272, %4238
  %4280 = fmul fast float %4273, %4239
  %4281 = fsub fast float %4226, %2845
  %4282 = fsub fast float %4227, %2844
  %4283 = fsub fast float %4228, %2843
  %4284 = call float @dx.op.dot3.f32(i32 55, float %4281, float %4282, float %4283, float %4281, float %4282, float %4283)  ; Dot3(ax,ay,az,bx,by,bz)
  %4285 = call float @dx.op.unary.f32(i32 25, float %4284)  ; Rsqrt(value)
  %4286 = fmul fast float %4285, %4281
  %4287 = fmul fast float %4285, %4282
  %4288 = fmul fast float %4285, %4283
  %4289 = call float @dx.op.dot3.f32(i32 55, float %4226, float %4227, float %4228, float %2852, float %2853, float %2854)  ; Dot3(ax,ay,az,bx,by,bz)
  %4290 = call float @dx.op.dot3.f32(i32 55, float %2842, float %2841, float %2840, float %4286, float %4287, float %4288)  ; Dot3(ax,ay,az,bx,by,bz)
  %4291 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4292 = fmul fast float %4291, %4291
  %4293 = fmul fast float %4292, %4221
  %4294 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4295 = fmul fast float %4294, %4291
  %4296 = call float @dx.op.dot3.f32(i32 55, float %2852, float %2853, float %2854, float %4286, float %4287, float %4288)  ; Dot3(ax,ay,az,bx,by,bz)
  %4297 = fmul fast float %4296, %4296
  %4298 = call float @dx.op.unary.f32(i32 6, float %4289)  ; FAbs(value)
  %4299 = fsub fast float 1.000000e+00, %2855
  %4300 = call float @dx.op.binary.f32(i32 35, float %4299, float 0x3F847AE140000000)  ; FMax(a,b)
  %4301 = fmul fast float %4300, %4300
  %4302 = fmul fast float %4301, %4301
  %4303 = fsub fast float 1.000000e+00, %4302
  %4304 = fmul fast float %2859, %2859
  %4305 = fmul fast float %4304, %4303
  %4306 = fadd fast float %4305, %4302
  %4307 = bitcast float %4306 to i32
  %4308 = ashr i32 %4307, 1
  %4309 = add nsw i32 %4308, 532487669
  %4310 = bitcast i32 %4309 to float
  %4311 = fadd fast float %4310, %2859
  %4312 = fmul fast float %4302, %4297
  %4313 = fsub fast float 1.000000e+00, %4297
  %4314 = fadd fast float %4313, %4312
  %4315 = fmul fast float %4298, %4298
  %4316 = fmul fast float %4315, %4303
  %4317 = fadd fast float %4316, %4302
  %4318 = bitcast float %4317 to i32
  %4319 = ashr i32 %4318, 1
  %4320 = add nsw i32 %4319, 532487669
  %4321 = bitcast i32 %4320 to float
  %4322 = fadd fast float %4321, %4298
  %4323 = fmul fast float %4314, %4314
  %4324 = fmul fast float %4323, %4311
  %4325 = fmul fast float %4324, %4322
  %4326 = fdiv fast float 0x3FF0A00000000000, %4325
  %4327 = fmul fast float %4326, %4302
  %4328 = call float @dx.op.unary.f32(i32 6, float %4290)  ; FAbs(value)
  %4329 = fsub fast float 1.000000e+00, %4328
  %4330 = bitcast float %4329 to i32
  %4331 = sitofp i32 %4330 to float
  %4332 = fmul fast float %4331, 5.000000e+00
  %4333 = fadd fast float %4332, 0xC1EFBF8940000000
  %4334 = fptosi float %4333 to i32
  %4335 = bitcast i32 %4334 to float
  %4336 = fsub fast float 1.000000e+00, %2846
  %4337 = fsub fast float 1.000000e+00, %2847
  %4338 = fsub fast float 1.000000e+00, %2857
  %4339 = fmul fast float %4335, %4336
  %4340 = fmul fast float %4335, %4337
  %4341 = fmul fast float %4335, %4338
  %4342 = fadd fast float %4339, %2846
  %4343 = fadd fast float %4340, %2847
  %4344 = fadd fast float %4341, %2857
  br i1 %4136, label %4345, label %4368

; <label>:4345                                    ; preds = %4277
  %4346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2223, float %4328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4347 = extractvalue %dx.types.ResRet.f32 %4346, 0
  %4348 = extractvalue %dx.types.ResRet.f32 %4346, 1
  %4349 = extractvalue %dx.types.ResRet.f32 %4346, 2
  %4350 = fadd fast float %4347, -5.000000e-01
  %4351 = fadd fast float %4348, -5.000000e-01
  %4352 = fadd fast float %4349, -5.000000e-01
  %4353 = fmul fast float %2846, 4.000000e+00
  %4354 = fmul fast float %4353, %4336
  %4355 = fmul fast float %4354, %4350
  %4356 = fmul fast float %2847, 4.000000e+00
  %4357 = fmul fast float %4356, %4337
  %4358 = fmul fast float %4357, %4351
  %4359 = fmul fast float %2857, 4.000000e+00
  %4360 = fmul fast float %4359, %4338
  %4361 = fmul fast float %4360, %4352
  %4362 = fadd fast float %4355, %4342
  %4363 = fadd fast float %4358, %4343
  %4364 = fadd fast float %4361, %4344
  %4365 = call float @dx.op.unary.f32(i32 7, float %4362)  ; Saturate(value)
  %4366 = call float @dx.op.unary.f32(i32 7, float %4363)  ; Saturate(value)
  %4367 = call float @dx.op.unary.f32(i32 7, float %4364)  ; Saturate(value)
  br label %4368

; <label>:4368                                    ; preds = %4345, %4277
  %4369 = phi float [ %4365, %4345 ], [ %4342, %4277 ]
  %4370 = phi float [ %4366, %4345 ], [ %4343, %4277 ]
  %4371 = phi float [ %4367, %4345 ], [ %4344, %4277 ]
  %4372 = fmul fast float %4289, 9.843750e-01
  %4373 = fadd fast float %4372, 7.812500e-03
  %4374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4373, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4375 = extractvalue %dx.types.ResRet.f32 %4374, 2
  %4376 = extractvalue %dx.types.ResRet.f32 %4374, 3
  %4377 = fmul fast float %4375, %2846
  %4378 = fmul fast float %4375, %2847
  %4379 = fmul fast float %4375, %2857
  %4380 = fadd fast float %4377, %4376
  %4381 = fadd fast float %4378, %4376
  %4382 = fadd fast float %4379, %4376
  br i1 %4136, label %4383, label %4406

; <label>:4383                                    ; preds = %4368
  %4384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2223, float %4289, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4385 = extractvalue %dx.types.ResRet.f32 %4384, 0
  %4386 = extractvalue %dx.types.ResRet.f32 %4384, 1
  %4387 = extractvalue %dx.types.ResRet.f32 %4384, 2
  %4388 = fadd fast float %4385, -5.000000e-01
  %4389 = fadd fast float %4386, -5.000000e-01
  %4390 = fadd fast float %4387, -5.000000e-01
  %4391 = fmul fast float %2846, 4.000000e+00
  %4392 = fmul fast float %4391, %4336
  %4393 = fmul fast float %4392, %4388
  %4394 = fmul fast float %2847, 4.000000e+00
  %4395 = fmul fast float %4394, %4337
  %4396 = fmul fast float %4395, %4389
  %4397 = fmul fast float %2857, 4.000000e+00
  %4398 = fmul fast float %4397, %4338
  %4399 = fmul fast float %4398, %4390
  %4400 = fadd fast float %4393, %4380
  %4401 = fadd fast float %4396, %4381
  %4402 = fadd fast float %4399, %4382
  %4403 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  %4404 = call float @dx.op.unary.f32(i32 7, float %4401)  ; Saturate(value)
  %4405 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  br label %4406

; <label>:4406                                    ; preds = %4383, %4368
  %4407 = phi float [ %4403, %4383 ], [ %4380, %4368 ]
  %4408 = phi float [ %4404, %4383 ], [ %4381, %4368 ]
  %4409 = phi float [ %4405, %4383 ], [ %4382, %4368 ]
  %4410 = call float @dx.op.binary.f32(i32 35, float %4408, float %4409)  ; FMax(a,b)
  %4411 = call float @dx.op.binary.f32(i32 35, float %4407, float %4410)  ; FMax(a,b)
  %4412 = fsub fast float 1.000000e+00, %4411
  %4413 = fmul fast float %4369, %4327
  %4414 = fmul fast float %4370, %4327
  %4415 = fmul fast float %4371, %4327
  %4416 = fsub fast float 1.000000e+00, %4290
  %4417 = bitcast float %4416 to i32
  %4418 = sitofp i32 %4417 to float
  %4419 = fmul fast float %4418, 5.000000e+00
  %4420 = fadd fast float %4419, 0xC1EFBF8940000000
  %4421 = fptosi float %4420 to i32
  %4422 = bitcast i32 %4421 to float
  %4423 = fmul fast float %4422, %2222
  %4424 = fmul fast float %4412, %4423
  %4425 = fmul fast float %4424, %4186
  %4426 = fmul fast float %4424, %4187
  %4427 = fmul fast float %4424, %4188
  %4428 = fadd fast float %4425, %4413
  %4429 = fadd fast float %4426, %4414
  %4430 = fadd fast float %4427, %4415
  %4431 = fmul fast float %4295, %4278
  %4432 = fmul fast float %4431, %4412
  %4433 = fmul fast float %4295, %4279
  %4434 = fmul fast float %4433, %4412
  %4435 = fmul fast float %4295, %4280
  %4436 = fmul fast float %4435, %4412
  %4437 = fmul fast float %4431, %4428
  %4438 = fmul fast float %4433, %4429
  %4439 = fmul fast float %4435, %4430
  %4440 = fadd fast float %4432, %4170
  %4441 = fmul fast float %4440, %2243
  %4442 = fadd fast float %4434, %4171
  %4443 = fmul fast float %4442, %2243
  %4444 = fadd fast float %4436, %4172
  %4445 = fmul fast float %4444, %2243
  %4446 = fadd fast float %4437, %4213
  %4447 = fmul fast float %4446, %2243
  %4448 = fadd fast float %4438, %4216
  %4449 = fmul fast float %4448, %2243
  %4450 = fadd fast float %4439, %4219
  %4451 = fmul fast float %4450, %2243
  br label %4452

; <label>:4452                                    ; preds = %4406, %4270, %4163
  %4453 = phi float [ %4214, %4163 ], [ %4214, %4270 ], [ %4447, %4406 ]
  %4454 = phi float [ %4217, %4163 ], [ %4217, %4270 ], [ %4449, %4406 ]
  %4455 = phi float [ %4220, %4163 ], [ %4220, %4270 ], [ %4451, %4406 ]
  %4456 = phi float [ %4209, %4163 ], [ %4209, %4270 ], [ %4441, %4406 ]
  %4457 = phi float [ %4210, %4163 ], [ %4210, %4270 ], [ %4443, %4406 ]
  %4458 = phi float [ %4211, %4163 ], [ %4211, %4270 ], [ %4445, %4406 ]
  %4459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.i32 %4459, 0
  %4461 = icmp eq i32 %4460, 0
  br i1 %4461, label %4896, label %4462

; <label>:4462                                    ; preds = %4452
  %4463 = fptoui float %71 to i32
  %4464 = fptoui float %72 to i32
  %4465 = lshr i32 %4463, 4
  %4466 = lshr i32 %4464, 4
  %4467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.i32 %4467, 0
  %4469 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4466, i32 %4468, i32 %4465)  ; UMad(a,b,c)
  %4470 = add nsw i32 %4460, -1
  %4471 = call i32 @dx.op.binary.i32(i32 37, i32 %4470, i32 0)  ; IMax(a,b)
  %4472 = call float @dx.op.binary.f32(i32 35, float %66, float 0.000000e+00)  ; FMax(a,b)
  %4473 = fptoui float %4472 to i32
  %4474 = lshr i32 %4473, 5
  %4475 = call i32 @dx.op.binary.i32(i32 40, i32 %4474, i32 8191)  ; UMin(a,b)
  %4476 = shl i32 %4475, 2
  %4477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4478 = extractvalue %dx.types.ResRet.i32 %4477, 0
  %4479 = lshr i32 %4478, 16
  %4480 = and i32 %4478, 65535
  %4481 = lshr i32 %4478, 21
  %4482 = lshr i32 %4480, 5
  %4483 = call i32 @dx.op.binary.i32(i32 40, i32 %4482, i32 %4471)  ; UMin(a,b)
  %4484 = icmp ugt i32 %4481, %4483
  br i1 %4484, label %4896, label %4485

; <label>:4485                                    ; preds = %4462
  br label %4486

; <label>:4486                                    ; preds = %4886, %4485
  %4487 = phi i32 [ %4893, %4886 ], [ %4481, %4485 ]
  %4488 = phi float [ %4887, %4886 ], [ %4453, %4485 ]
  %4489 = phi float [ %4888, %4886 ], [ %4454, %4485 ]
  %4490 = phi float [ %4889, %4886 ], [ %4455, %4485 ]
  %4491 = phi float [ %4890, %4886 ], [ %4456, %4485 ]
  %4492 = phi float [ %4891, %4886 ], [ %4457, %4485 ]
  %4493 = phi float [ %4892, %4886 ], [ %4458, %4485 ]
  %4494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4495 = extractvalue %dx.types.CBufRet.i32 %4494, 0
  %4496 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4469, i32 %4495, i32 %4487)  ; UMad(a,b,c)
  %4497 = shl i32 %4496, 2
  %4498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4497, i32 undef)  ; BufferLoad(srv,index,wot)
  %4499 = extractvalue %dx.types.ResRet.i32 %4498, 0
  %4500 = shl i32 %4487, 5
  %4501 = sub nsw i32 %4479, %4500
  %4502 = call i32 @dx.op.binary.i32(i32 37, i32 %4501, i32 0)  ; IMax(a,b)
  %4503 = call i32 @dx.op.binary.i32(i32 38, i32 %4502, i32 31)  ; IMin(a,b)
  %4504 = sub nsw i32 1, %4479
  %4505 = add nsw i32 %4504, %4480
  %4506 = call i32 @dx.op.binary.i32(i32 37, i32 %4505, i32 0)  ; IMax(a,b)
  %4507 = call i32 @dx.op.binary.i32(i32 38, i32 %4506, i32 32)  ; IMin(a,b)
  %4508 = and i32 %4507, 31
  %4509 = shl i32 -1, %4508
  %4510 = xor i32 %4509, -1
  %4511 = and i32 %4503, 31
  %4512 = shl i32 %4510, %4511
  %4513 = icmp eq i32 %4507, 32
  %4514 = select i1 %4513, i32 -1, i32 %4512
  %4515 = and i32 %4514, %4499
  %4516 = icmp eq i32 %4515, 0
  br i1 %4516, label %4886, label %4517

; <label>:4517                                    ; preds = %4486
  br label %4518

; <label>:4518                                    ; preds = %4598, %4517
  %4519 = phi i32 [ %4530, %4598 ], [ %4515, %4517 ]
  %4520 = phi float [ %4599, %4598 ], [ %4488, %4517 ]
  %4521 = phi float [ %4600, %4598 ], [ %4489, %4517 ]
  %4522 = phi float [ %4601, %4598 ], [ %4490, %4517 ]
  %4523 = phi float [ %4602, %4598 ], [ %4491, %4517 ]
  %4524 = phi float [ %4603, %4598 ], [ %4492, %4517 ]
  %4525 = phi float [ %4604, %4598 ], [ %4493, %4517 ]
  %4526 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4519)  ; FirstbitLo(value)
  %4527 = add i32 %4526, %4500
  %4528 = and i32 %4526, 31
  %4529 = shl i32 1, %4528
  %4530 = xor i32 %4529, %4519
  %4531 = mul i32 %4527, 112
  %4532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4531, i32 undef)  ; BufferLoad(srv,index,wot)
  %4533 = extractvalue %dx.types.ResRet.f32 %4532, 0
  %4534 = extractvalue %dx.types.ResRet.f32 %4532, 1
  %4535 = extractvalue %dx.types.ResRet.f32 %4532, 2
  %4536 = or i32 %4531, 12
  %4537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4536, i32 undef)  ; BufferLoad(srv,index,wot)
  %4538 = extractvalue %dx.types.ResRet.f32 %4537, 0
  %4539 = add i32 %4531, 44
  %4540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4539, i32 undef)  ; BufferLoad(srv,index,wot)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = add i32 %4531, 48
  %4543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4542, i32 undef)  ; BufferLoad(srv,index,wot)
  %4544 = extractvalue %dx.types.ResRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.ResRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.ResRet.f32 %4543, 2
  %4547 = add i32 %4531, 80
  %4548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4547, i32 undef)  ; BufferLoad(srv,index,wot)
  %4549 = extractvalue %dx.types.ResRet.f32 %4548, 1
  %4550 = extractvalue %dx.types.ResRet.f32 %4548, 2
  %4551 = call float @dx.op.dot3.f32(i32 55, float %4533, float %4534, float %4535, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4552 = select i1 %189, float %4549, float %4533
  %4553 = select i1 %189, float %4551, float %4534
  %4554 = select i1 %189, float %4550, float %4535
  %4555 = fsub fast float %4544, %118
  %4556 = fsub fast float %4545, %119
  %4557 = fsub fast float %4546, %120
  %4558 = call float @dx.op.dot3.f32(i32 55, float %4555, float %4556, float %4557, float %4555, float %4556, float %4557)  ; Dot3(ax,ay,az,bx,by,bz)
  %4559 = call float @dx.op.unary.f32(i32 24, float %4558)  ; Sqrt(value)
  %4560 = fdiv fast float 1.000000e+00, %4559
  %4561 = fmul fast float %4560, %4555
  %4562 = fmul fast float %4560, %4556
  %4563 = fmul fast float %4560, %4557
  %4564 = fadd fast float %4559, %4538
  %4565 = fdiv fast float 1.000000e+00, %4564
  %4566 = fmul float %4541, %4565
  %4567 = fmul float %4566, %4566
  %4568 = call float @dx.op.unary.f32(i32 7, float %4567)  ; Saturate(value)
  %4569 = and i32 %4529, %4515
  %4570 = icmp eq i32 %4569, 0
  br i1 %4570, label %4593, label %4571, !dx.controlflow.hints !89

; <label>:4571                                    ; preds = %4518
  %4572 = lshr i32 %4463, 5
  %4573 = lshr i32 %4464, 5
  %4574 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %4572, i32 %4573, i32 %4527, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4575 = extractvalue %dx.types.ResRet.i32 %4574, 0
  %4576 = and i32 %4575, 3
  %4577 = icmp eq i32 %4576, 0
  %4578 = select i1 %4577, float 1.000000e+00, float 0.000000e+00
  %4579 = icmp eq i32 %4576, 3
  br i1 %4579, label %4580, label %4593

; <label>:4580                                    ; preds = %4571
  %4581 = lshr i32 %4575, 10
  %4582 = and i32 %4581, 8160
  %4583 = and i32 %4464, 31
  %4584 = or i32 %4582, %4583
  %4585 = lshr i32 %4575, 1
  %4586 = and i32 %4585, 16352
  %4587 = and i32 %4463, 31
  %4588 = or i32 %4586, %4587
  %4589 = lshr i32 %4575, 23
  %4590 = and i32 %4589, 255
  %4591 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %4588, i32 %4584, i32 %4590, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  br label %4593

; <label>:4593                                    ; preds = %4580, %4571, %4518
  %4594 = phi float [ %4592, %4580 ], [ %4578, %4571 ], [ 0.000000e+00, %4518 ]
  %4595 = call float @dx.op.binary.f32(i32 36, float %4594, float %4594)  ; FMin(a,b)
  %4596 = call float @dx.op.binary.f32(i32 36, float %4594, float %4595)  ; FMin(a,b)
  %4597 = fcmp fast ogt float %4596, 0.000000e+00
  br i1 %4597, label %4606, label %4598, !dx.controlflow.hints !90

; <label>:4598                                    ; preds = %4842, %4593
  %4599 = phi float [ %4520, %4593 ], [ %4882, %4842 ]
  %4600 = phi float [ %4521, %4593 ], [ %4883, %4842 ]
  %4601 = phi float [ %4522, %4593 ], [ %4884, %4842 ]
  %4602 = phi float [ %4523, %4593 ], [ %4876, %4842 ]
  %4603 = phi float [ %4524, %4593 ], [ %4877, %4842 ]
  %4604 = phi float [ %4525, %4593 ], [ %4878, %4842 ]
  %4605 = icmp eq i32 %4519, %4529
  br i1 %4605, label %4885, label %4518

; <label>:4606                                    ; preds = %4593
  %4607 = fmul fast float %4594, %4552
  %4608 = fmul fast float %4594, %4553
  %4609 = fmul fast float %4594, %4554
  %4610 = fsub fast float %4546, %2645
  %4611 = fcmp fast ogt float %4610, 0.000000e+00
  %4612 = fsub fast float %120, %2645
  %4613 = fcmp fast ogt float %4612, 0.000000e+00
  %4614 = xor i1 %4613, %4611
  %4615 = fsub fast float %2645, %4546
  %4616 = fmul fast float %4615, 2.000000e+00
  %4617 = fadd fast float %4616, %4546
  %4618 = select i1 %4614, float %4546, float %4617
  %4619 = fsub fast float %4618, %120
  %4620 = call float @dx.op.dot3.f32(i32 55, float %4555, float %4556, float %4619, float %4555, float %4556, float %4619)  ; Dot3(ax,ay,az,bx,by,bz)
  %4621 = call float @dx.op.unary.f32(i32 25, float %4620)  ; Rsqrt(value)
  %4622 = fmul fast float %4621, %4555
  %4623 = fmul fast float %4621, %4556
  %4624 = fmul fast float %4621, %4619
  %4625 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2653)  ; Dot3(ax,ay,az,bx,by,bz)
  %4626 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4622, float %4623, float %4624)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = fdiv fast float 1.000000e+00, %4626
  %4628 = fmul fast float %4627, %4625
  %4629 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4612, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4630 = fcmp fast ogt float %4629, 0.000000e+00
  %4631 = fcmp fast olt float %4629, 0.000000e+00
  %4632 = zext i1 %4630 to i32
  %4633 = zext i1 %4631 to i32
  %4634 = sub nsw i32 %4632, %4633
  %4635 = sitofp i32 %4634 to float
  %4636 = fsub fast float %4618, %2645
  %4637 = call float @dx.op.dot3.f32(i32 55, float %4555, float %4556, float %4636, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4638 = fcmp fast ogt float %4637, 0.000000e+00
  %4639 = fcmp fast olt float %4637, 0.000000e+00
  %4640 = zext i1 %4638 to i32
  %4641 = zext i1 %4639 to i32
  %4642 = sub nsw i32 %4640, %4641
  %4643 = sitofp i32 %4642 to float
  %4644 = fcmp fast une float %4635, %4643
  br i1 %4644, label %4645, label %4655

; <label>:4645                                    ; preds = %4606
  %4646 = fmul fast float %4628, %4624
  %4647 = fmul fast float %4628, %4623
  %4648 = fmul fast float %4628, %4622
  %4649 = fmul fast float %4648, %4648
  %4650 = fmul fast float %4647, %4647
  %4651 = fadd fast float %4649, %4650
  %4652 = fmul fast float %4646, %4646
  %4653 = fadd fast float %4651, %4652
  %4654 = call float @dx.op.unary.f32(i32 24, float %4653)  ; Sqrt(value)
  br label %4667

; <label>:4655                                    ; preds = %4606
  %4656 = icmp slt i32 %4634, 0
  br i1 %4656, label %4657, label %4667

; <label>:4657                                    ; preds = %4655
  %4658 = fsub fast float %118, %4544
  %4659 = fsub fast float %119, %4545
  %4660 = fsub fast float %120, %4618
  %4661 = fmul fast float %4658, %4658
  %4662 = fmul fast float %4659, %4659
  %4663 = fadd fast float %4661, %4662
  %4664 = fmul fast float %4660, %4660
  %4665 = fadd fast float %4663, %4664
  %4666 = call float @dx.op.unary.f32(i32 24, float %4665)  ; Sqrt(value)
  br label %4667

; <label>:4667                                    ; preds = %4657, %4655, %4645
  %4668 = phi float [ %4654, %4645 ], [ %4666, %4657 ], [ 0.000000e+00, %4655 ]
  %4669 = and i1 %4613, %4611
  %4670 = fsub fast float -0.000000e+00, %4668
  %4671 = select i1 %4669, float -0.000000e+00, float %4670
  %4672 = fmul fast float %2646, 0x3FF7154760000000
  %4673 = fmul fast float %4672, %4671
  %4674 = fmul fast float %2647, 0x3FF7154760000000
  %4675 = fmul fast float %4674, %4671
  %4676 = fmul fast float %2648, 0x3FF7154760000000
  %4677 = fmul fast float %4676, %4671
  %4678 = call float @dx.op.unary.f32(i32 21, float %4673)  ; Exp(value)
  %4679 = call float @dx.op.unary.f32(i32 21, float %4675)  ; Exp(value)
  %4680 = call float @dx.op.unary.f32(i32 21, float %4677)  ; Exp(value)
  %4681 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4682 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4683 = call float @dx.op.unary.f32(i32 7, float %4680)  ; Saturate(value)
  %4684 = fmul fast float %4607, %4681
  %4685 = fmul fast float %4608, %4682
  %4686 = fmul fast float %4609, %4683
  %4687 = fsub fast float %4561, %2845
  %4688 = fsub fast float %4562, %2844
  %4689 = fsub fast float %4563, %2843
  %4690 = call float @dx.op.dot3.f32(i32 55, float %4687, float %4688, float %4689, float %4687, float %4688, float %4689)  ; Dot3(ax,ay,az,bx,by,bz)
  %4691 = call float @dx.op.unary.f32(i32 25, float %4690)  ; Rsqrt(value)
  %4692 = fmul fast float %4691, %4687
  %4693 = fmul fast float %4691, %4688
  %4694 = fmul fast float %4691, %4689
  %4695 = call float @dx.op.dot3.f32(i32 55, float %4561, float %4562, float %4563, float %2852, float %2853, float %2854)  ; Dot3(ax,ay,az,bx,by,bz)
  %4696 = call float @dx.op.dot3.f32(i32 55, float %2842, float %2841, float %2840, float %4692, float %4693, float %4694)  ; Dot3(ax,ay,az,bx,by,bz)
  %4697 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4698 = fmul fast float %4697, %4568
  %4699 = fmul fast float %4697, %4697
  %4700 = fmul fast float %4699, %4221
  %4701 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4702 = fmul fast float %4698, %4701
  %4703 = bitcast float %4558 to i32
  %4704 = ashr i32 %4703, 1
  %4705 = sub nsw i32 1597463007, %4704
  %4706 = bitcast i32 %4705 to float
  %4707 = fmul fast float %4706, %4555
  %4708 = fmul fast float %4706, %4556
  %4709 = fmul fast float %4706, %4557
  %4710 = fsub fast float %4707, %2845
  %4711 = fsub fast float %4708, %2844
  %4712 = fsub fast float %4709, %2843
  %4713 = call float @dx.op.dot3.f32(i32 55, float %4710, float %4711, float %4712, float %4710, float %4711, float %4712)  ; Dot3(ax,ay,az,bx,by,bz)
  %4714 = call float @dx.op.unary.f32(i32 25, float %4713)  ; Rsqrt(value)
  %4715 = fmul fast float %4710, %4714
  %4716 = fmul fast float %4711, %4714
  %4717 = fmul fast float %4712, %4714
  %4718 = call float @dx.op.dot3.f32(i32 55, float %2852, float %2853, float %2854, float %4715, float %4716, float %4717)  ; Dot3(ax,ay,az,bx,by,bz)
  %4719 = fmul fast float %4718, %4718
  %4720 = call float @dx.op.unary.f32(i32 6, float %4695)  ; FAbs(value)
  %4721 = fsub fast float 1.000000e+00, %2855
  %4722 = call float @dx.op.binary.f32(i32 35, float %4721, float 0x3F847AE140000000)  ; FMax(a,b)
  %4723 = fmul fast float %4722, %4722
  %4724 = fmul fast float %4723, %4723
  %4725 = fsub fast float 1.000000e+00, %4724
  %4726 = fmul fast float %2859, %2859
  %4727 = fmul fast float %4726, %4725
  %4728 = fadd fast float %4727, %4724
  %4729 = bitcast float %4728 to i32
  %4730 = ashr i32 %4729, 1
  %4731 = add nsw i32 %4730, 532487669
  %4732 = bitcast i32 %4731 to float
  %4733 = fadd fast float %4732, %2859
  %4734 = fmul fast float %4724, %4719
  %4735 = fsub fast float 1.000000e+00, %4719
  %4736 = fadd fast float %4735, %4734
  %4737 = fmul fast float %4720, %4720
  %4738 = fmul fast float %4737, %4725
  %4739 = fadd fast float %4738, %4724
  %4740 = bitcast float %4739 to i32
  %4741 = ashr i32 %4740, 1
  %4742 = add nsw i32 %4741, 532487669
  %4743 = bitcast i32 %4742 to float
  %4744 = fadd fast float %4743, %4720
  %4745 = fmul fast float %4736, %4736
  %4746 = fmul fast float %4745, %4733
  %4747 = fmul fast float %4746, %4744
  %4748 = fdiv fast float 1.000000e+00, %4747
  %4749 = bitcast float %4724 to i32
  %4750 = sitofp i32 %4749 to float
  %4751 = fmul fast float %4750, 0x3FE7F73180000000
  %4752 = fadd fast float %4751, 0x41AFE27C40000000
  %4753 = fptosi float %4752 to i32
  %4754 = bitcast i32 %4753 to float
  %4755 = fmul fast float %4541, 0x3FD80E9D60000000
  %4756 = fmul fast float %4755, %4706
  %4757 = fadd fast float %4754, %4756
  %4758 = bitcast float %4757 to i32
  %4759 = sub nsw i32 2129859010, %4758
  %4760 = bitcast i32 %4759 to float
  %4761 = fmul fast float %4724, %4748
  %4762 = fmul fast float %4761, %4754
  %4763 = fmul fast float %4762, %4760
  %4764 = call float @dx.op.unary.f32(i32 6, float %4696)  ; FAbs(value)
  %4765 = fsub fast float 1.000000e+00, %4764
  %4766 = bitcast float %4765 to i32
  %4767 = sitofp i32 %4766 to float
  %4768 = fmul fast float %4767, 5.000000e+00
  %4769 = fadd fast float %4768, 0xC1EFBF8940000000
  %4770 = fptosi float %4769 to i32
  %4771 = bitcast i32 %4770 to float
  %4772 = fsub fast float 1.000000e+00, %2846
  %4773 = fsub fast float 1.000000e+00, %2847
  %4774 = fsub fast float 1.000000e+00, %2857
  %4775 = fmul fast float %4771, %4772
  %4776 = fmul fast float %4771, %4773
  %4777 = fmul fast float %4771, %4774
  %4778 = fadd fast float %4775, %2846
  %4779 = fadd fast float %4776, %2847
  %4780 = fadd fast float %4777, %2857
  br i1 %4136, label %4781, label %4804

; <label>:4781                                    ; preds = %4667
  %4782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2223, float %4764, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4783 = extractvalue %dx.types.ResRet.f32 %4782, 0
  %4784 = extractvalue %dx.types.ResRet.f32 %4782, 1
  %4785 = extractvalue %dx.types.ResRet.f32 %4782, 2
  %4786 = fadd fast float %4783, -5.000000e-01
  %4787 = fadd fast float %4784, -5.000000e-01
  %4788 = fadd fast float %4785, -5.000000e-01
  %4789 = fmul fast float %2846, 4.000000e+00
  %4790 = fmul fast float %4789, %4772
  %4791 = fmul fast float %4790, %4786
  %4792 = fmul fast float %2847, 4.000000e+00
  %4793 = fmul fast float %4792, %4773
  %4794 = fmul fast float %4793, %4787
  %4795 = fmul fast float %2857, 4.000000e+00
  %4796 = fmul fast float %4795, %4774
  %4797 = fmul fast float %4796, %4788
  %4798 = fadd fast float %4791, %4778
  %4799 = fadd fast float %4794, %4779
  %4800 = fadd fast float %4797, %4780
  %4801 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4802 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4803 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  br label %4804

; <label>:4804                                    ; preds = %4781, %4667
  %4805 = phi float [ %4801, %4781 ], [ %4778, %4667 ]
  %4806 = phi float [ %4802, %4781 ], [ %4779, %4667 ]
  %4807 = phi float [ %4803, %4781 ], [ %4780, %4667 ]
  %4808 = fmul fast float %4695, 9.843750e-01
  %4809 = fadd fast float %4808, 7.812500e-03
  %4810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4809, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4811 = extractvalue %dx.types.ResRet.f32 %4810, 2
  %4812 = extractvalue %dx.types.ResRet.f32 %4810, 3
  %4813 = fmul fast float %4811, %2846
  %4814 = fmul fast float %4811, %2847
  %4815 = fmul fast float %4811, %2857
  %4816 = fadd fast float %4813, %4812
  %4817 = fadd fast float %4814, %4812
  %4818 = fadd fast float %4815, %4812
  br i1 %4136, label %4819, label %4842

; <label>:4819                                    ; preds = %4804
  %4820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2223, float %4695, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4821 = extractvalue %dx.types.ResRet.f32 %4820, 0
  %4822 = extractvalue %dx.types.ResRet.f32 %4820, 1
  %4823 = extractvalue %dx.types.ResRet.f32 %4820, 2
  %4824 = fadd fast float %4821, -5.000000e-01
  %4825 = fadd fast float %4822, -5.000000e-01
  %4826 = fadd fast float %4823, -5.000000e-01
  %4827 = fmul fast float %2846, 4.000000e+00
  %4828 = fmul fast float %4827, %4772
  %4829 = fmul fast float %4828, %4824
  %4830 = fmul fast float %2847, 4.000000e+00
  %4831 = fmul fast float %4830, %4773
  %4832 = fmul fast float %4831, %4825
  %4833 = fmul fast float %2857, 4.000000e+00
  %4834 = fmul fast float %4833, %4774
  %4835 = fmul fast float %4834, %4826
  %4836 = fadd fast float %4829, %4816
  %4837 = fadd fast float %4832, %4817
  %4838 = fadd fast float %4835, %4818
  %4839 = call float @dx.op.unary.f32(i32 7, float %4836)  ; Saturate(value)
  %4840 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4841 = call float @dx.op.unary.f32(i32 7, float %4838)  ; Saturate(value)
  br label %4842

; <label>:4842                                    ; preds = %4819, %4804
  %4843 = phi float [ %4839, %4819 ], [ %4816, %4804 ]
  %4844 = phi float [ %4840, %4819 ], [ %4817, %4804 ]
  %4845 = phi float [ %4841, %4819 ], [ %4818, %4804 ]
  %4846 = call float @dx.op.binary.f32(i32 35, float %4844, float %4845)  ; FMax(a,b)
  %4847 = call float @dx.op.binary.f32(i32 35, float %4843, float %4846)  ; FMax(a,b)
  %4848 = fsub fast float 1.000000e+00, %4847
  %4849 = fmul fast float %4805, %4763
  %4850 = fmul fast float %4806, %4763
  %4851 = fmul fast float %4807, %4763
  %4852 = fsub fast float 1.000000e+00, %4696
  %4853 = bitcast float %4852 to i32
  %4854 = sitofp i32 %4853 to float
  %4855 = fmul fast float %4854, 5.000000e+00
  %4856 = fadd fast float %4855, 0xC1EFBF8940000000
  %4857 = fptosi float %4856 to i32
  %4858 = bitcast i32 %4857 to float
  %4859 = fmul fast float %4858, %2222
  %4860 = fmul fast float %4848, %4859
  %4861 = fmul fast float %4860, %4186
  %4862 = fmul fast float %4860, %4187
  %4863 = fmul fast float %4860, %4188
  %4864 = fadd fast float %4861, %4849
  %4865 = fadd fast float %4862, %4850
  %4866 = fadd fast float %4863, %4851
  %4867 = fmul fast float %4684, %2243
  %4868 = fmul fast float %4867, %4702
  %4869 = fmul fast float %4868, %4848
  %4870 = fmul fast float %4685, %2243
  %4871 = fmul fast float %4870, %4702
  %4872 = fmul fast float %4871, %4848
  %4873 = fmul fast float %4686, %2243
  %4874 = fmul fast float %4873, %4702
  %4875 = fmul fast float %4874, %4848
  %4876 = fadd fast float %4869, %4523
  %4877 = fadd fast float %4872, %4524
  %4878 = fadd fast float %4875, %4525
  %4879 = fmul fast float %4868, %4864
  %4880 = fmul fast float %4871, %4865
  %4881 = fmul fast float %4874, %4866
  %4882 = fadd fast float %4879, %4520
  %4883 = fadd fast float %4880, %4521
  %4884 = fadd fast float %4881, %4522
  br label %4598

; <label>:4885                                    ; preds = %4598
  br label %4886

; <label>:4886                                    ; preds = %4885, %4486
  %4887 = phi float [ %4488, %4486 ], [ %4599, %4885 ]
  %4888 = phi float [ %4489, %4486 ], [ %4600, %4885 ]
  %4889 = phi float [ %4490, %4486 ], [ %4601, %4885 ]
  %4890 = phi float [ %4491, %4486 ], [ %4602, %4885 ]
  %4891 = phi float [ %4492, %4486 ], [ %4603, %4885 ]
  %4892 = phi float [ %4493, %4486 ], [ %4604, %4885 ]
  %4893 = add i32 %4487, 1
  %4894 = icmp ugt i32 %4893, %4483
  br i1 %4894, label %4895, label %4486

; <label>:4895                                    ; preds = %4886
  br label %4896

; <label>:4896                                    ; preds = %4895, %4462, %4452
  %4897 = phi float [ %4453, %4452 ], [ %4453, %4462 ], [ %4887, %4895 ]
  %4898 = phi float [ %4454, %4452 ], [ %4454, %4462 ], [ %4888, %4895 ]
  %4899 = phi float [ %4455, %4452 ], [ %4455, %4462 ], [ %4889, %4895 ]
  %4900 = phi float [ %4456, %4452 ], [ %4456, %4462 ], [ %4890, %4895 ]
  %4901 = phi float [ %4457, %4452 ], [ %4457, %4462 ], [ %4891, %4895 ]
  %4902 = phi float [ %4458, %4452 ], [ %4458, %4462 ], [ %4892, %4895 ]
  %4903 = call float @dx.op.unary.f32(i32 24, float %2849)  ; Sqrt(value)
  %4904 = call float @dx.op.unary.f32(i32 24, float %2850)  ; Sqrt(value)
  %4905 = call float @dx.op.unary.f32(i32 24, float %2851)  ; Sqrt(value)
  %4906 = fmul fast float %4903, %4900
  %4907 = fmul fast float %4904, %4901
  %4908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4909 = extractvalue %dx.types.CBufRet.f32 %4908, 0
  br i1 %189, label %4910, label %4939

; <label>:4910                                    ; preds = %4896
  %4911 = fadd fast float %4902, %2220
  %4912 = fmul fast float %4911, %2221
  %4913 = fsub fast float 1.000000e+00, %2221
  %4914 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4916 = extractvalue %dx.types.CBufRet.f32 %4915, 3
  %4917 = fmul fast float %4916, %4914
  %4918 = fadd fast float %4917, %4912
  %4919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.f32 %4919, 0
  %4921 = fmul fast float %4920, %4192
  %4922 = fsub fast float %4918, %4921
  %4923 = fadd fast float %4907, %4906
  %4924 = fmul fast float %4909, %4923
  %4925 = extractvalue %dx.types.CBufRet.f32 %4915, 1
  %4926 = fsub fast float %4922, %4925
  %4927 = extractvalue %dx.types.CBufRet.f32 %4915, 2
  %4928 = fmul fast float %4926, %4927
  %4929 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.f32 %4930, 0
  %4932 = fsub fast float %4929, %4931
  %4933 = fmul fast float %4932, 1.000000e+01
  %4934 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4935 = fadd fast float %2219, -1.000000e+00
  %4936 = fmul fast float %4934, %4935
  %4937 = fadd fast float %4936, 1.000000e+00
  %4938 = fmul fast float %4937, %4929
  br label %4955

; <label>:4939                                    ; preds = %4896
  %4940 = fmul fast float %4905, %4902
  %4941 = fmul fast float %4909, %4906
  %4942 = fmul fast float %4909, %4907
  %4943 = fmul fast float %4940, %4909
  %4944 = add i32 %44, 196
  %4945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4944, i32 undef)  ; BufferLoad(srv,index,wot)
  %4946 = extractvalue %dx.types.ResRet.i32 %4945, 0
  %4947 = and i32 %4946, 32
  %4948 = icmp eq i32 %4947, 0
  br i1 %4948, label %4955, label %4949

; <label>:4949                                    ; preds = %4939
  %4950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4951 = extractvalue %dx.types.CBufRet.f32 %4950, 0
  %4952 = fmul fast float %4951, 0x3FE99999A0000000
  %4953 = fadd fast float %4951, %4941
  %4954 = fadd fast float %4952, %4943
  br label %4955

; <label>:4955                                    ; preds = %4949, %4939, %4910
  %4956 = phi float [ %4924, %4910 ], [ %4953, %4949 ], [ %4941, %4939 ]
  %4957 = phi float [ %4938, %4910 ], [ %4942, %4949 ], [ %4942, %4939 ]
  %4958 = phi float [ %4937, %4910 ], [ %4954, %4949 ], [ %4943, %4939 ]
  %4959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4959, 0
  %4961 = fmul fast float %4960, %4898
  %4962 = fmul fast float %4960, %4899
  %4963 = fadd fast float %4898, %4897
  %4964 = select i1 %189, float %4963, float %4897
  %4965 = fmul float %4964, %4960
  %4966 = select i1 %189, float 0.000000e+00, float %4961
  %4967 = select i1 %189, float 0.000000e+00, float %4962
  %4968 = fmul fast float %4956, %4903
  %4969 = fmul fast float %4957, %4904
  %4970 = fmul fast float %4958, %4905
  %4971 = fadd fast float %4965, %4968
  %4972 = fadd fast float %4966, %4969
  %4973 = fadd fast float %4967, %4970
  %4974 = select i1 %189, float %4957, float %4972
  %4975 = select i1 %189, float %4958, float %4973
  %4976 = call float @dx.op.binary.f32(i32 36, float %4971, float 3.225500e+04)  ; FMin(a,b)
  %4977 = call float @dx.op.binary.f32(i32 36, float %4974, float 3.225500e+04)  ; FMin(a,b)
  %4978 = call float @dx.op.binary.f32(i32 36, float %4975, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4976)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4977)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4978)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

