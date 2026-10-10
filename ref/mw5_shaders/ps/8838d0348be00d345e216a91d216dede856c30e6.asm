;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    yzw
; TEXCOORDS                0   xyzw        2     NONE   float   xyzw
; TEXCOORDS                1   xyzw        3     NONE   float   xyzw
; LMAPCOORDS               0   xyz         4     NONE   float   xyz 
; NORMAL                   0   xyz         5     NONE   float   xyz 
; TANGENT                  0   xyzw        6     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        7     NONE   float   xyzw
; NORMAL_TRANSFORM         2   xyzw        8     NONE   float   xyzw
; NORMAL_TRANSFORM         3   xyzw        9     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x          10     NONE    uint   x   
; TRANSIENT_INDEX          0    y         10     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 2d45239193ba3f78e08f6874fdb8b072
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
; TEXCOORDS                1                 linear       
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; NORMAL_TRANSFORM         1                 linear       
; NORMAL_TRANSFORM         2                 linear       
; NORMAL_TRANSFORM         3                 linear       
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
; Number of inputs: 42, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41 }
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
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %82 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = fmul fast float %84, %78
  %86 = fmul fast float %84, %79
  %87 = fmul fast float %62, %59
  %88 = fmul fast float %63, %58
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %63, %57
  %91 = fmul fast float %61, %59
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %61, %58
  %94 = fmul fast float %62, %57
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %89, %60
  %97 = fmul fast float %92, %60
  %98 = fmul fast float %95, %60
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 3
  %102 = fmul fast float %100, 2.000000e+00
  %103 = fmul fast float %102, %85
  %104 = fmul fast float %101, 2.000000e+00
  %105 = fmul fast float %104, %86
  %106 = fsub fast float 1.000000e+00, %103
  %107 = fsub fast float 1.000000e+00, %105
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = fmul fast float %106, %109
  %113 = fmul fast float %106, %110
  %114 = fmul fast float %106, %111
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = fmul fast float %107, %116
  %120 = fmul fast float %107, %117
  %121 = fmul fast float %107, %118
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %126 = fadd fast float %119, %123
  %127 = fadd fast float %126, %112
  %128 = fadd fast float %120, %124
  %129 = fadd fast float %128, %113
  %130 = fadd fast float %121, %125
  %131 = fadd fast float %130, %114
  %132 = fmul fast float %127, %80
  %133 = fmul fast float %129, %80
  %134 = fmul fast float %131, %80
  %135 = fadd fast float %66, 5.000000e-01
  %136 = fptoui float %135 to i32
  %137 = shl i32 %136, 3
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = or i32 %137, 4
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %140, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = and i32 %139, 8191
  %144 = lshr i32 %139, 13
  %145 = and i32 %144, 8191
  %146 = lshr i32 %139, 26
  %147 = and i32 %142, 65535
  %148 = lshr i32 %142, 16
  %149 = uitofp i32 %147 to float
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %152 = uitofp i32 %148 to float
  %153 = uitofp i32 %143 to float
  %154 = fmul fast float %151, %153
  %155 = uitofp i32 %145 to float
  %156 = fmul fast float %151, %155
  %157 = fmul fast float %151, %64
  %158 = fmul fast float %157, %149
  %159 = fmul fast float %151, %65
  %160 = fmul fast float %159, %152
  %161 = fadd fast float %158, %154
  %162 = fadd fast float %156, %160
  %163 = uitofp i32 %146 to float
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 3
  %167 = fmul fast float %165, %85
  %168 = fmul fast float %166, %86
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = and i32 %170, 114688
  %172 = icmp ne i32 %171, 0
  %173 = select i1 %172, float %167, float 0.000000e+00
  %174 = select i1 %172, float %168, float 0.000000e+00
  %175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = fmul fast float %176, 2.550000e+02
  %178 = fptoui float %177 to i32
  %179 = select i1 %172, i32 %178, i32 0
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.i32 %181, 3
  %183 = and i32 %182, 3
  %184 = icmp ne i32 %183, 0
  %185 = and i32 %182, 4
  %186 = icmp ne i32 %185, 0
  %187 = and i1 %184, %186
  br i1 %187, label %188, label %199

; <label>:188                                     ; preds = %0
  %189 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %190 = fmul fast float %189, %86
  %191 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %192 = fmul fast float %191, %85
  %193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %192, float %190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = fsub fast float 1.000000e+00, %194
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = fcmp fast olt float %195, %197
  br label %202

; <label>:199                                     ; preds = %0
  %200 = icmp eq i32 %185, 0
  %201 = and i1 %184, %200
  br label %202

; <label>:202                                     ; preds = %199, %188
  %203 = phi i1 [ %198, %188 ], [ %201, %199 ]
  %204 = add i32 %44, 156
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = shl i32 %206, 4
  %208 = and i32 %207, 32752
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = lshr i32 %206, 7
  %211 = and i32 %210, 32752
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = lshr i32 %206, 22
  %214 = shl nuw nsw i32 %213, 5
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = add i32 %44, 216
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = and i32 %218, 255
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F70101020000000
  %222 = lshr i32 %218, 8
  %223 = and i32 %222, 255
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %224, 0x3F70101020000000
  %226 = lshr i32 %218, 16
  %227 = and i32 %226, 255
  %228 = uitofp i32 %227 to float
  %229 = fmul fast float %228, 0x3F70101020000000
  %230 = add i32 %44, 36
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = add i32 %44, 288
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = add i32 %44, 172
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = shl i32 %238, 4
  %240 = and i32 %239, 32752
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %238, 7
  %243 = and i32 %242, 32752
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %238, 22
  %246 = shl nuw nsw i32 %245, 5
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = add i32 %44, 232
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = lshr i32 %250, 8
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = lshr i32 %250, 16
  %259 = and i32 %258, 255
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %260, 0x3F70101020000000
  %262 = add i32 %44, 52
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = add i32 %44, 304
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %271, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = fmul fast float %273, 0x3F50624DE0000000
  %277 = fmul fast float %275, 0x3F50624DE0000000
  %278 = add i32 %44, 188
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = shl i32 %280, 4
  %282 = and i32 %281, 32752
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %280, 7
  %285 = and i32 %284, 32752
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %280, 22
  %288 = shl nuw nsw i32 %287, 5
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = add i32 %44, 248
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = lshr i32 %292, 8
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = lshr i32 %292, 16
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = add i32 %44, 68
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = add i32 %44, 320
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = fmul fast float %315, 0x3F50624DE0000000
  %319 = fmul fast float %317, 0x3F50624DE0000000
  %320 = add i32 %44, 204
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = shl i32 %322, 4
  %324 = and i32 %323, 32752
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %322, 7
  %327 = and i32 %326, 32752
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %322, 22
  %330 = shl nuw nsw i32 %329, 5
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = add i32 %44, 264
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = lshr i32 %334, 8
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = lshr i32 %334, 16
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = add i32 %44, 84
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = add i32 %44, 336
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = fmul fast float %357, 0x3F50624DE0000000
  %361 = fmul fast float %359, 0x3F50624DE0000000
  %362 = add i32 %44, 348
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = lshr i32 %364, 20
  %366 = and i32 %365, 3
  %367 = add nuw nsw i32 %366, 1
  %368 = add i32 %44, 24
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = add i32 %44, 28
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = or i32 %373, %370
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %865, label %376

; <label>:376                                     ; preds = %202
  %377 = lshr i32 %235, 16
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = fmul fast float %378, 0x3F50624DE0000000
  %380 = and i32 %235, 65535
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = fmul fast float %381, 0x3F50624DE0000000
  %383 = lshr i32 %232, 16
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = and i32 %232, 65535
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = add i32 %44, 284
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = lshr i32 %389, 16
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = fmul fast float %391, 0x3F50624DE0000000
  %393 = add i32 %44, 88
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = lshr i32 %395, 16
  %397 = and i32 %396, 255
  %398 = lshr i32 %395, 24
  %399 = add i32 %44, 292
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 65535
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %401, 16
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = add i32 %44, 32
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = lshr i32 %408, 22
  %410 = shl nuw nsw i32 %409, 5
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = shl i32 %408, 4
  %413 = and i32 %412, 32752
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = lshr i32 %408, 7
  %416 = and i32 %415, 32752
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 3
  %420 = fmul fast float %419, 1.000000e+03
  %421 = fmul fast float %382, %420
  %422 = call float @dx.op.unary.f32(i32 22, float %421)  ; Frc(value)
  %423 = fadd fast float %422, %386
  %424 = fmul fast float %379, %420
  %425 = call float @dx.op.unary.f32(i32 22, float %424)  ; Frc(value)
  %426 = fadd fast float %425, %384
  %427 = fmul fast float %392, %420
  %428 = call float @dx.op.unary.f32(i32 22, float %427)  ; Frc(value)
  %429 = fmul fast float %428, 0x401921FB60000000
  %430 = fadd fast float %429, %411
  %431 = call float @dx.op.unary.f32(i32 13, float %430)  ; Sin(value)
  %432 = call float @dx.op.unary.f32(i32 12, float %430)  ; Cos(value)
  %433 = fsub fast float -0.000000e+00, %431
  %434 = fadd fast float %71, -5.000000e-01
  %435 = fadd fast float %72, -5.000000e-01
  %436 = fmul fast float %403, %434
  %437 = fmul fast float %405, %435
  %438 = fadd fast float %436, 5.000000e-01
  %439 = fadd fast float %437, 5.000000e-01
  %440 = fmul fast float %414, %438
  %441 = fmul fast float %417, %439
  %442 = fmul fast float %432, %440
  %443 = call float @dx.op.tertiary.f32(i32 46, float %433, float %441, float %442)  ; FMad(a,b,c)
  %444 = fmul fast float %431, %440
  %445 = call float @dx.op.tertiary.f32(i32 46, float %432, float %441, float %444)  ; FMad(a,b,c)
  %446 = fadd fast float %423, %443
  %447 = fadd fast float %426, %445
  %448 = icmp ugt i32 %397, 1
  %449 = icmp ugt i32 %395, 33554431
  %450 = or i1 %449, %448
  br i1 %450, label %451, label %476

; <label>:451                                     ; preds = %376
  %452 = add i32 %44, 228
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = lshr i32 %454, 16
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = fmul fast float %419, %456
  %458 = call float @dx.op.unary.f32(i32 22, float %457)  ; Frc(value)
  %459 = mul nuw nsw i32 %397, %398
  %460 = uitofp i32 %459 to float
  %461 = fmul fast float %458, %460
  %462 = call float @dx.op.unary.f32(i32 27, float %461)  ; Round_ni(value)
  %463 = fptoui float %462 to i32
  %464 = urem i32 %463, %397
  %465 = udiv i32 %463, %398
  %466 = call float @dx.op.unary.f32(i32 22, float %446)  ; Frc(value)
  %467 = call float @dx.op.unary.f32(i32 22, float %447)  ; Frc(value)
  %468 = uitofp i32 %464 to float
  %469 = uitofp i32 %465 to float
  %470 = fadd fast float %466, %468
  %471 = fadd fast float %467, %469
  %472 = uitofp i32 %397 to float
  %473 = uitofp i32 %398 to float
  %474 = fdiv fast float %470, %472
  %475 = fdiv fast float %471, %473
  br label %476

; <label>:476                                     ; preds = %451, %376
  %477 = phi float [ %474, %451 ], [ %446, %376 ]
  %478 = phi float [ %475, %451 ], [ %447, %376 ]
  %479 = and i32 %370, 16
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %677, label %481

; <label>:481                                     ; preds = %476
  %482 = add i32 %44, 360
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = add i32 %484, 0
  %486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %487 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %486, %dx.types.Handle %81, float %477, float %478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = extractvalue %dx.types.ResRet.f32 %487, 1
  %490 = extractvalue %dx.types.ResRet.f32 %487, 2
  %491 = extractvalue %dx.types.ResRet.f32 %487, 3
  %492 = and i32 %395, 255
  %493 = uitofp i32 %492 to float
  %494 = lshr i32 %395, 8
  %495 = and i32 %494, 255
  %496 = uitofp i32 %495 to float
  %497 = fmul fast float %491, %493
  %498 = fadd fast float %497, %496
  %499 = fmul fast float %498, 0x3F70101000000000
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = and i32 %501, 512
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %512, label %504

; <label>:504                                     ; preds = %481
  %505 = add i32 %44, 440
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = add i32 %507, 0
  %509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %510 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %509, %dx.types.Handle %82, float %477, float %478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  br label %512

; <label>:512                                     ; preds = %504, %481
  %513 = phi float [ %511, %504 ], [ 1.000000e+00, %481 ]
  %514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.i32 %514, 0
  %516 = and i32 %515, 33554432
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %624, label %518

; <label>:518                                     ; preds = %512
  %519 = add i32 %44, 224
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = and i32 %521, 65535
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = lshr i32 %521, 16
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = add i32 %44, 228
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = and i32 %528, 65535
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = lshr i32 %532, 24
  %534 = uitofp i32 %533 to float
  %535 = fmul fast float %534, 0x3F70101020000000
  %536 = and i32 %532, 255
  %537 = uitofp i32 %536 to float
  %538 = fmul fast float %537, 0x3F70101020000000
  %539 = lshr i32 %532, 8
  %540 = and i32 %539, 255
  %541 = uitofp i32 %540 to float
  %542 = fmul fast float %541, 0x3F70101020000000
  %543 = lshr i32 %532, 16
  %544 = and i32 %543, 255
  %545 = uitofp i32 %544 to float
  %546 = fmul fast float %545, 0x3F70101020000000
  %547 = add i32 %44, 220
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = lshr i32 %549, 24
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %551, 0x3F70101020000000
  %553 = and i32 %549, 255
  %554 = uitofp i32 %553 to float
  %555 = fmul fast float %554, 0x3F70101020000000
  %556 = lshr i32 %549, 8
  %557 = and i32 %556, 255
  %558 = uitofp i32 %557 to float
  %559 = fmul fast float %558, 0x3F70101020000000
  %560 = lshr i32 %549, 16
  %561 = and i32 %560, 255
  %562 = uitofp i32 %561 to float
  %563 = fmul fast float %562, 0x3F70101020000000
  %564 = bitcast float %488 to i32
  %565 = ashr i32 %564, 1
  %566 = sub nsw i32 1597463174, %565
  %567 = bitcast i32 %566 to float
  %568 = fmul fast float %488, 5.000000e-01
  %569 = fmul fast float %567, %567
  %570 = fmul fast float %569, %568
  %571 = fsub fast float 1.500000e+00, %570
  %572 = fmul fast float %567, %488
  %573 = fmul fast float %572, %571
  %574 = bitcast float %489 to i32
  %575 = ashr i32 %574, 1
  %576 = sub nsw i32 1597463174, %575
  %577 = bitcast i32 %576 to float
  %578 = fmul fast float %489, 5.000000e-01
  %579 = fmul fast float %577, %577
  %580 = fmul fast float %579, %578
  %581 = fsub fast float 1.500000e+00, %580
  %582 = fmul fast float %577, %489
  %583 = fmul fast float %582, %581
  %584 = bitcast float %490 to i32
  %585 = ashr i32 %584, 1
  %586 = sub nsw i32 1597463174, %585
  %587 = bitcast i32 %586 to float
  %588 = fmul fast float %490, 5.000000e-01
  %589 = fmul fast float %587, %587
  %590 = fmul fast float %589, %588
  %591 = fsub fast float 1.500000e+00, %590
  %592 = fmul fast float %587, %490
  %593 = fmul fast float %592, %591
  %594 = fsub fast float %573, %555
  %595 = fsub fast float %583, %559
  %596 = fsub fast float %593, %563
  %597 = fmul fast float %594, %523
  %598 = fmul fast float %595, %525
  %599 = fmul fast float %596, %530
  %600 = fadd fast float %597, %538
  %601 = fadd fast float %598, %542
  %602 = fadd fast float %599, %546
  %603 = call float @dx.op.unary.f32(i32 7, float %600)  ; Saturate(value)
  %604 = call float @dx.op.unary.f32(i32 7, float %601)  ; Saturate(value)
  %605 = call float @dx.op.unary.f32(i32 7, float %602)  ; Saturate(value)
  %606 = fmul fast float %603, %603
  %607 = fmul fast float %604, %604
  %608 = fmul fast float %605, %605
  %609 = fsub fast float %606, %488
  %610 = fsub fast float %607, %489
  %611 = fsub fast float %608, %490
  %612 = fmul fast float %609, %513
  %613 = fmul fast float %610, %513
  %614 = fmul fast float %611, %513
  %615 = fadd fast float %612, %488
  %616 = fadd fast float %613, %489
  %617 = fadd fast float %614, %490
  %618 = fadd fast float %535, %499
  %619 = fsub fast float %618, %552
  %620 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %621 = fsub fast float %620, %499
  %622 = fmul fast float %621, %513
  %623 = fadd fast float %622, %499
  br label %677

; <label>:624                                     ; preds = %512
  %625 = and i32 %515, 134217728
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %661, label %627

; <label>:627                                     ; preds = %624
  %628 = call float @dx.op.unary.f32(i32 24, float %221)  ; Sqrt(value)
  %629 = call float @dx.op.unary.f32(i32 24, float %225)  ; Sqrt(value)
  %630 = call float @dx.op.unary.f32(i32 24, float %229)  ; Sqrt(value)
  %631 = fadd fast float %628, -5.000000e-01
  %632 = fadd fast float %629, -5.000000e-01
  %633 = fadd fast float %630, -5.000000e-01
  %634 = fmul fast float %631, %513
  %635 = fmul fast float %632, %513
  %636 = fmul fast float %633, %513
  %637 = fadd fast float %634, 5.000000e-01
  %638 = fadd fast float %635, 5.000000e-01
  %639 = fadd fast float %636, 5.000000e-01
  %640 = call float @dx.op.unary.f32(i32 24, float %488)  ; Sqrt(value)
  %641 = call float @dx.op.unary.f32(i32 24, float %489)  ; Sqrt(value)
  %642 = call float @dx.op.unary.f32(i32 24, float %490)  ; Sqrt(value)
  %643 = fmul fast float %637, 2.000000e+00
  %644 = fsub fast float 1.000000e+00, %643
  %645 = fmul fast float %644, %640
  %646 = fadd fast float %645, %643
  %647 = fmul fast float %646, %640
  %648 = fmul fast float %638, 2.000000e+00
  %649 = fsub fast float 1.000000e+00, %648
  %650 = fmul fast float %649, %641
  %651 = fadd fast float %650, %648
  %652 = fmul fast float %651, %641
  %653 = fmul fast float %639, 2.000000e+00
  %654 = fsub fast float 1.000000e+00, %653
  %655 = fmul fast float %654, %642
  %656 = fadd fast float %655, %653
  %657 = fmul fast float %656, %642
  %658 = fmul fast float %647, %647
  %659 = fmul fast float %652, %652
  %660 = fmul fast float %657, %657
  br label %677

; <label>:661                                     ; preds = %624
  %662 = fmul fast float %221, %221
  %663 = fmul fast float %225, %225
  %664 = fmul fast float %229, %229
  %665 = fadd fast float %662, -1.000000e+00
  %666 = fadd fast float %663, -1.000000e+00
  %667 = fadd fast float %664, -1.000000e+00
  %668 = fmul fast float %513, %665
  %669 = fmul fast float %513, %666
  %670 = fmul fast float %513, %667
  %671 = fadd fast float %668, 1.000000e+00
  %672 = fadd fast float %669, 1.000000e+00
  %673 = fadd fast float %670, 1.000000e+00
  %674 = fmul fast float %671, %488
  %675 = fmul fast float %672, %489
  %676 = fmul fast float %673, %490
  br label %677

; <label>:677                                     ; preds = %661, %627, %518, %476
  %678 = phi float [ %623, %518 ], [ %499, %627 ], [ %499, %661 ], [ 0x3FA23C0BE0000000, %476 ]
  %679 = phi float [ %615, %518 ], [ %658, %627 ], [ %674, %661 ], [ 1.000000e+00, %476 ]
  %680 = phi float [ %616, %518 ], [ %659, %627 ], [ %675, %661 ], [ 1.000000e+00, %476 ]
  %681 = phi float [ %617, %518 ], [ %660, %627 ], [ %676, %661 ], [ 1.000000e+00, %476 ]
  %682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.i32 %682, 1
  %684 = and i32 %683, 1
  %685 = icmp ne i32 %684, 0
  %686 = add i32 %44, 356
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %686, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = and i32 %688, 32
  %690 = icmp ne i32 %689, 0
  %691 = and i1 %685, %690
  %692 = select i1 %691, float 1.000000e+00, float %679
  %693 = select i1 %691, float 0x3FD3333340000000, float %680
  %694 = select i1 %691, float 0x3FD3333340000000, float %681
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = and i32 %696, 32
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %771, label %699

; <label>:699                                     ; preds = %677
  %700 = add i32 %44, 92
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = add i32 %44, 376
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = add i32 %705, 0
  %707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %707, %dx.types.Handle %81, float %477, float %478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = extractvalue %dx.types.ResRet.f32 %708, 1
  %711 = extractvalue %dx.types.ResRet.f32 %708, 2
  %712 = extractvalue %dx.types.ResRet.f32 %708, 3
  %713 = and i32 %702, 255
  %714 = uitofp i32 %713 to float
  %715 = lshr i32 %702, 8
  %716 = and i32 %715, 255
  %717 = uitofp i32 %716 to float
  %718 = lshr i32 %702, 16
  %719 = and i32 %718, 255
  %720 = uitofp i32 %719 to float
  %721 = fmul fast float %720, 0x3F70101000000000
  %722 = fmul fast float %709, %714
  %723 = fadd fast float %722, %717
  %724 = fmul fast float %723, 0x3F70101000000000
  %725 = fadd fast float %710, -5.000000e-01
  %726 = fadd fast float %712, -5.000000e-01
  %727 = fmul fast float %725, %721
  %728 = fmul fast float %726, %721
  %729 = fadd fast float %727, 5.000000e-01
  %730 = fadd fast float %728, 5.000000e-01
  %731 = fmul fast float %729, 2.000000e+00
  %732 = fadd fast float %731, -1.000000e+00
  %733 = fmul fast float %730, 2.000000e+00
  %734 = fadd fast float %733, -1.000000e+00
  %735 = fadd fast float %732, %734
  %736 = fmul fast float %735, 5.000000e-01
  %737 = fsub fast float %732, %734
  %738 = fmul fast float %737, 5.000000e-01
  %739 = call float @dx.op.unary.f32(i32 6, float %736)  ; FAbs(value)
  %740 = fsub fast float 1.000000e+00, %739
  %741 = call float @dx.op.unary.f32(i32 6, float %738)  ; FAbs(value)
  %742 = fsub fast float %740, %741
  %743 = call float @dx.op.dot3.f32(i32 55, float %736, float %738, float %742, float %736, float %738, float %742)  ; Dot3(ax,ay,az,bx,by,bz)
  %744 = call float @dx.op.unary.f32(i32 25, float %743)  ; Rsqrt(value)
  %745 = fmul fast float %736, %744
  %746 = fmul fast float %738, %744
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = and i32 %748, 67108864
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %767, label %751

; <label>:751                                     ; preds = %699
  %752 = add i32 %44, 280
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = and i32 %754, 65535
  %756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %755)  ; LegacyF16ToF32(value)
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = and i32 %758, 65535
  %760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %759)  ; LegacyF16ToF32(value)
  %761 = lshr i32 %754, 16
  %762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %761)  ; LegacyF16ToF32(value)
  %763 = fsub fast float %724, %762
  %764 = fmul fast float %763, %756
  %765 = fadd fast float %764, %760
  %766 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  br label %767

; <label>:767                                     ; preds = %751, %699
  %768 = phi float [ %766, %751 ], [ %724, %699 ]
  %769 = call float @dx.op.dot2.f32(i32 54, float %745, float %746, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %770 = call float @dx.op.dot2.f32(i32 54, float %745, float %746, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %771

; <label>:771                                     ; preds = %767, %677
  %772 = phi float [ %768, %767 ], [ 0x3FD6666660000000, %677 ]
  %773 = phi float [ %769, %767 ], [ 0.000000e+00, %677 ]
  %774 = phi float [ %770, %767 ], [ 0.000000e+00, %677 ]
  %775 = phi float [ %711, %767 ], [ 1.000000e+00, %677 ]
  %776 = add i32 %44, 160
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = lshr i32 %778, 22
  %780 = shl nuw nsw i32 %779, 5
  %781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %780)  ; LegacyF16ToF32(value)
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 64
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %819, label %786

; <label>:786                                     ; preds = %771
  %787 = add i32 %44, 392
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = add i32 %789, 0
  %791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = and i32 %793, 131072
  %795 = icmp eq i32 %794, 0
  %796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %791, %dx.types.Handle %81, float %477, float %478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  %798 = extractvalue %dx.types.ResRet.f32 %796, 1
  %799 = extractvalue %dx.types.ResRet.f32 %796, 2
  %800 = fmul fast float %797, %209
  %801 = fmul fast float %798, %212
  %802 = fmul fast float %799, %215
  br i1 %795, label %809, label %803

; <label>:803                                     ; preds = %786
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 0
  %806 = fmul fast float %805, %800
  %807 = fmul fast float %805, %801
  %808 = fmul fast float %805, %802
  br label %809

; <label>:809                                     ; preds = %803, %786
  %810 = phi float [ %806, %803 ], [ %800, %786 ]
  %811 = phi float [ %807, %803 ], [ %801, %786 ]
  %812 = phi float [ %808, %803 ], [ %802, %786 ]
  %813 = fmul fast float %810, %781
  %814 = select i1 %203, float %813, float %810
  %815 = call float @dx.op.dot3.f32(i32 55, float %814, float %811, float %812, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %816 = select i1 %203, float 0.000000e+00, float %810
  %817 = select i1 %203, float %815, float %811
  %818 = select i1 %203, float 0.000000e+00, float %812
  br label %819

; <label>:819                                     ; preds = %809, %771
  %820 = phi float [ %816, %809 ], [ 0.000000e+00, %771 ]
  %821 = phi float [ %817, %809 ], [ 0.000000e+00, %771 ]
  %822 = phi float [ %818, %809 ], [ 0.000000e+00, %771 ]
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 26624
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %850, label %827

; <label>:827                                     ; preds = %819
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = and i32 %829, 16384
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %850, label %832

; <label>:832                                     ; preds = %827
  %833 = and i32 %829, 1048576
  %834 = icmp ne i32 %833, 0
  %835 = add i32 %44, 456
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = add i32 %837, 0
  %839 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %838, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %840 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %839, %dx.types.Handle %82, float %477, float %478, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %841 = extractvalue %dx.types.ResRet.f32 %840, 0
  %842 = add i32 %44, 96
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = lshr i32 %844, 24
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %841, 0x3F70101020000000
  %848 = select i1 %834, float 0x3F70101020000000, float %847
  %849 = fmul fast float %848, %846
  br label %850

; <label>:850                                     ; preds = %832, %827, %819
  %851 = phi float [ %849, %832 ], [ 0.000000e+00, %827 ], [ 0.000000e+00, %819 ]
  %852 = add i32 %44, 96
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %852, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = and i32 %854, 255
  %856 = uitofp i32 %855 to float
  %857 = lshr i32 %854, 8
  %858 = and i32 %857, 255
  %859 = uitofp i32 %858 to float
  %860 = call float @dx.op.dot3.f32(i32 55, float %692, float %693, float %694, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %861 = fmul fast float %859, %860
  %862 = fadd fast float %861, %856
  %863 = fmul fast float %862, 0x3F70101020000000
  %864 = call float @dx.op.unary.f32(i32 7, float %863)  ; Saturate(value)
  br label %865

; <label>:865                                     ; preds = %850, %202
  %866 = phi float [ %773, %850 ], [ 0.000000e+00, %202 ]
  %867 = phi float [ %774, %850 ], [ 0.000000e+00, %202 ]
  %868 = phi float [ %692, %850 ], [ 0.000000e+00, %202 ]
  %869 = phi float [ %693, %850 ], [ 0.000000e+00, %202 ]
  %870 = phi float [ %694, %850 ], [ 0.000000e+00, %202 ]
  %871 = phi float [ %820, %850 ], [ 0.000000e+00, %202 ]
  %872 = phi float [ %821, %850 ], [ 0.000000e+00, %202 ]
  %873 = phi float [ %822, %850 ], [ 0.000000e+00, %202 ]
  %874 = phi float [ %678, %850 ], [ 0.000000e+00, %202 ]
  %875 = phi float [ 1.000000e+00, %850 ], [ 0.000000e+00, %202 ]
  %876 = phi float [ %772, %850 ], [ 0.000000e+00, %202 ]
  %877 = phi float [ %775, %850 ], [ 0.000000e+00, %202 ]
  %878 = phi float [ %851, %850 ], [ 0.000000e+00, %202 ]
  %879 = phi float [ %864, %850 ], [ 0.000000e+00, %202 ]
  %880 = icmp ult i32 %367, 2
  %881 = add i32 %44, 40
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = add i32 %44, 44
  %885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.i32 %885, 0
  %887 = or i32 %886, %883
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %1751, label %889

; <label>:889                                     ; preds = %865
  %890 = add i32 %44, 300
  %891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %890, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.i32 %891, 0
  %893 = lshr i32 %892, 16
  %894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %893)  ; LegacyF16ToF32(value)
  %895 = fmul fast float %894, 0x3F50624DE0000000
  %896 = add i32 %44, 104
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = lshr i32 %898, 16
  %900 = and i32 %899, 255
  %901 = lshr i32 %898, 24
  %902 = add i32 %44, 308
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = and i32 %904, 65535
  %906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %905)  ; LegacyF16ToF32(value)
  %907 = lshr i32 %904, 16
  %908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %907)  ; LegacyF16ToF32(value)
  %909 = add i32 %44, 48
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = lshr i32 %911, 22
  %913 = shl nuw nsw i32 %912, 5
  %914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %913)  ; LegacyF16ToF32(value)
  %915 = shl i32 %911, 4
  %916 = and i32 %915, 32752
  %917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %916)  ; LegacyF16ToF32(value)
  %918 = lshr i32 %911, 7
  %919 = and i32 %918, 32752
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 3
  %923 = fmul fast float %922, 1.000000e+03
  %924 = fmul fast float %276, %923
  %925 = call float @dx.op.unary.f32(i32 22, float %924)  ; Frc(value)
  %926 = fadd fast float %925, %266
  %927 = fmul fast float %277, %923
  %928 = call float @dx.op.unary.f32(i32 22, float %927)  ; Frc(value)
  %929 = fadd fast float %928, %268
  %930 = fmul fast float %895, %923
  %931 = call float @dx.op.unary.f32(i32 22, float %930)  ; Frc(value)
  %932 = fmul fast float %931, 0x401921FB60000000
  %933 = fadd fast float %932, %914
  %934 = call float @dx.op.unary.f32(i32 13, float %933)  ; Sin(value)
  %935 = call float @dx.op.unary.f32(i32 12, float %933)  ; Cos(value)
  %936 = fsub fast float -0.000000e+00, %934
  %937 = fadd fast float %73, -5.000000e-01
  %938 = fadd fast float %74, -5.000000e-01
  %939 = fmul fast float %906, %937
  %940 = fmul fast float %908, %938
  %941 = fadd fast float %939, 5.000000e-01
  %942 = fadd fast float %940, 5.000000e-01
  %943 = fmul fast float %917, %941
  %944 = fmul fast float %920, %942
  %945 = fmul fast float %935, %943
  %946 = call float @dx.op.tertiary.f32(i32 46, float %936, float %944, float %945)  ; FMad(a,b,c)
  %947 = fmul fast float %934, %943
  %948 = call float @dx.op.tertiary.f32(i32 46, float %935, float %944, float %947)  ; FMad(a,b,c)
  %949 = fadd fast float %926, %946
  %950 = fadd fast float %929, %948
  %951 = icmp ugt i32 %900, 1
  %952 = icmp ugt i32 %898, 33554431
  %953 = or i1 %952, %951
  br i1 %953, label %954, label %979

; <label>:954                                     ; preds = %889
  %955 = add i32 %44, 244
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = lshr i32 %957, 16
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = fmul fast float %922, %959
  %961 = call float @dx.op.unary.f32(i32 22, float %960)  ; Frc(value)
  %962 = mul nuw nsw i32 %900, %901
  %963 = uitofp i32 %962 to float
  %964 = fmul fast float %961, %963
  %965 = call float @dx.op.unary.f32(i32 27, float %964)  ; Round_ni(value)
  %966 = fptoui float %965 to i32
  %967 = urem i32 %966, %900
  %968 = udiv i32 %966, %901
  %969 = call float @dx.op.unary.f32(i32 22, float %949)  ; Frc(value)
  %970 = call float @dx.op.unary.f32(i32 22, float %950)  ; Frc(value)
  %971 = uitofp i32 %967 to float
  %972 = uitofp i32 %968 to float
  %973 = fadd fast float %969, %971
  %974 = fadd fast float %970, %972
  %975 = uitofp i32 %900 to float
  %976 = uitofp i32 %901 to float
  %977 = fdiv fast float %973, %975
  %978 = fdiv fast float %974, %976
  br label %979

; <label>:979                                     ; preds = %954, %889
  %980 = phi float [ %977, %954 ], [ %949, %889 ]
  %981 = phi float [ %978, %954 ], [ %950, %889 ]
  %982 = and i32 %883, 16777216
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %1093, label %984

; <label>:984                                     ; preds = %979
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 0
  %987 = extractvalue %dx.types.CBufRet.f32 %985, 1
  %988 = extractvalue %dx.types.CBufRet.f32 %985, 2
  %989 = fadd fast float %986, %132
  %990 = fadd fast float %987, %133
  %991 = fadd fast float %988, %134
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %994 = call float @dx.op.unary.f32(i32 7, float %993)  ; Saturate(value)
  %995 = icmp eq i32 %43, 65535
  br i1 %995, label %1090, label %996

; <label>:996                                     ; preds = %984
  %997 = lshr i32 %43, 1
  %998 = shl i32 %997, 2
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = and i32 %43, 1
  %1002 = icmp ne i32 %1001, 0
  %1003 = lshr i32 %1000, 16
  %1004 = and i32 %1000, 65535
  %1005 = select i1 %1002, i32 %1003, i32 %1004
  %1006 = icmp eq i32 %1005, 65535
  br i1 %1006, label %1086, label %1007

; <label>:1007                                    ; preds = %996
  %1008 = mul nuw nsw i32 %1005, 40
  %1009 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.f32 %1009, 0
  %1011 = extractvalue %dx.types.ResRet.f32 %1009, 1
  %1012 = extractvalue %dx.types.ResRet.f32 %1009, 2
  %1013 = add nuw nsw i32 %1008, 12
  %1014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.ResRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.ResRet.f32 %1014, 2
  %1018 = add nuw nsw i32 %1008, 24
  %1019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.f32 %1019, 0
  %1021 = extractvalue %dx.types.ResRet.f32 %1019, 1
  %1022 = extractvalue %dx.types.ResRet.f32 %1019, 2
  %1023 = add nuw nsw i32 %1008, 36
  %1024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = fsub fast float %989, %1010
  %1027 = fsub fast float %990, %1011
  %1028 = fsub fast float %991, %1012
  %1029 = fmul fast float %1025, %1026
  %1030 = fmul fast float %1025, %1027
  %1031 = fmul fast float %1025, %1028
  %1032 = call float @dx.op.unary.f32(i32 27, float %1029)  ; Round_ni(value)
  %1033 = call float @dx.op.unary.f32(i32 27, float %1030)  ; Round_ni(value)
  %1034 = call float @dx.op.unary.f32(i32 27, float %1031)  ; Round_ni(value)
  %1035 = fadd fast float %1032, 5.000000e-01
  %1036 = fadd fast float %1033, 5.000000e-01
  %1037 = fadd fast float %1034, 5.000000e-01
  %1038 = fmul fast float %1035, %1015
  %1039 = fmul fast float %1036, %1016
  %1040 = fmul fast float %1037, %1017
  %1041 = shl i32 %43, 2
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = add i32 %1043, 0
  %1045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1044, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1046 = call float @dx.op.unary.f32(i32 22, float %1038)  ; Frc(value)
  %1047 = call float @dx.op.unary.f32(i32 22, float %1039)  ; Frc(value)
  %1048 = call float @dx.op.unary.f32(i32 22, float %1040)  ; Frc(value)
  %1049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1045, %dx.types.Handle %40, float %1046, float %1047, float %1048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = fmul fast float %1050, 1.023000e+03
  %1054 = fmul fast float %1051, 1.023000e+03
  %1055 = fmul fast float %1052, 1.023000e+03
  %1056 = fadd fast float %1053, 5.000000e-01
  %1057 = fadd fast float %1054, 5.000000e-01
  %1058 = fadd fast float %1055, 5.000000e-01
  %1059 = call float @dx.op.unary.f32(i32 27, float %1056)  ; Round_ni(value)
  %1060 = call float @dx.op.unary.f32(i32 27, float %1057)  ; Round_ni(value)
  %1061 = call float @dx.op.unary.f32(i32 27, float %1058)  ; Round_ni(value)
  %1062 = fsub fast float %1029, %1032
  %1063 = fsub fast float %1030, %1033
  %1064 = fsub fast float %1031, %1034
  %1065 = fmul fast float %1062, 7.500000e-01
  %1066 = fmul fast float %1063, 7.500000e-01
  %1067 = fmul fast float %1064, 7.500000e-01
  %1068 = fadd fast float %1032, 1.250000e-01
  %1069 = fadd fast float %1068, %1065
  %1070 = fadd fast float %1069, %1059
  %1071 = fadd fast float %1033, 1.250000e-01
  %1072 = fadd fast float %1071, %1066
  %1073 = fadd fast float %1072, %1060
  %1074 = fadd fast float %1034, 1.250000e-01
  %1075 = fadd fast float %1074, %1067
  %1076 = fadd fast float %1075, %1061
  %1077 = fmul fast float %1070, %1020
  %1078 = fmul fast float %1073, %1021
  %1079 = fmul fast float %1076, %1022
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = add i32 %1081, 0
  %1083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1083, %dx.types.Handle %38, float %1077, float %1078, float %1079, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  br label %1086

; <label>:1086                                    ; preds = %1007, %996
  %1087 = phi float [ %1085, %1007 ], [ -1.000000e+00, %996 ]
  %1088 = fadd fast float %1087, %994
  %1089 = call float @dx.op.unary.f32(i32 7, float %1088)  ; Saturate(value)
  br label %1090

; <label>:1090                                    ; preds = %1086, %984
  %1091 = phi float [ %1089, %1086 ], [ %994, %984 ]
  %1092 = fmul fast float %1091, %75
  br label %1093

; <label>:1093                                    ; preds = %1090, %979
  %1094 = phi float [ %1092, %1090 ], [ %75, %979 ]
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = and i32 %1096, 256
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1145, label %1099

; <label>:1099                                    ; preds = %1093
  %1100 = add i32 %44, 428
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = add i32 %1102, 0
  %1104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1105 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1104, %dx.types.Handle %82, float %980, float %981, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 0
  %1107 = add i32 %44, 116
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = shl i32 %1109, 4
  %1111 = and i32 %1110, 32752
  %1112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1111)  ; LegacyF16ToF32(value)
  %1113 = lshr i32 %1109, 7
  %1114 = and i32 %1113, 32752
  %1115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1114)  ; LegacyF16ToF32(value)
  %1116 = fsub fast float 1.000000e+00, %1094
  %1117 = call float @dx.op.binary.f32(i32 35, float %1116, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1118 = bitcast float %1094 to i32
  %1119 = sitofp i32 %1118 to float
  %1120 = fadd fast float %1119, 0xC1CFBF8940000000
  %1121 = fmul fast float %1115, %1120
  %1122 = fadd fast float %1121, 0x41CFBF8940000000
  %1123 = fptosi float %1122 to i32
  %1124 = bitcast i32 %1123 to float
  %1125 = bitcast float %1117 to i32
  %1126 = sitofp i32 %1125 to float
  %1127 = fadd fast float %1126, 0xC1CFBF8940000000
  %1128 = fmul fast float %1127, %1115
  %1129 = fadd fast float %1128, 0x41CFBF8940000000
  %1130 = fptosi float %1129 to i32
  %1131 = bitcast i32 %1130 to float
  %1132 = fmul fast float %1124, %1112
  %1133 = fmul fast float %1131, %1112
  %1134 = fsub fast float %1117, %1132
  %1135 = fadd fast float %1133, %1117
  %1136 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1137 = call float @dx.op.unary.f32(i32 7, float %1135)  ; Saturate(value)
  %1138 = fsub fast float %1106, %1136
  %1139 = fsub fast float %1137, %1136
  %1140 = bitcast float %1139 to i32
  %1141 = sub nsw i32 2129859010, %1140
  %1142 = bitcast i32 %1141 to float
  %1143 = fmul fast float %1142, %1138
  %1144 = call float @dx.op.unary.f32(i32 7, float %1143)  ; Saturate(value)
  br label %1145

; <label>:1145                                    ; preds = %1099, %1093
  %1146 = phi float [ %1144, %1099 ], [ %1094, %1093 ]
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = and i32 %1148, 128
  %1150 = icmp eq i32 %1149, 0
  br i1 %1150, label %1167, label %1151

; <label>:1151                                    ; preds = %1145
  %1152 = add i32 %44, 412
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = add i32 %1154, 0
  %1156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1155, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1157 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1156, %dx.types.Handle %82, float %980, float %981, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = and i32 %1160, 524288
  %1162 = icmp ne i32 %1161, 0
  %1163 = fcmp fast ogt float %1158, 0x3FE0101020000000
  %1164 = select i1 %1163, float 1.000000e+00, float 0.000000e+00
  %1165 = select i1 %1162, float %1164, float %1158
  %1166 = fmul fast float %1165, %1146
  br label %1167

; <label>:1167                                    ; preds = %1151, %1145
  %1168 = phi float [ %1166, %1151 ], [ %1146, %1145 ]
  %1169 = fcmp fast ult float %1168, 0x3F70101020000000
  br i1 %1169, label %1751, label %1170

; <label>:1170                                    ; preds = %1167
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = and i32 %1172, 16
  %1174 = icmp eq i32 %1173, 0
  br i1 %1174, label %1373, label %1175

; <label>:1175                                    ; preds = %1170
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = add i32 %44, 364
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = add i32 %1180, 0
  %1182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1181, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1183 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1182, %dx.types.Handle %81, float %980, float %981, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.ResRet.f32 %1183, 1
  %1186 = extractvalue %dx.types.ResRet.f32 %1183, 2
  %1187 = extractvalue %dx.types.ResRet.f32 %1183, 3
  %1188 = and i32 %1177, 255
  %1189 = uitofp i32 %1188 to float
  %1190 = lshr i32 %1177, 8
  %1191 = and i32 %1190, 255
  %1192 = uitofp i32 %1191 to float
  %1193 = fmul fast float %1187, %1189
  %1194 = fadd fast float %1193, %1192
  %1195 = fmul fast float %1194, 0x3F70101000000000
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = and i32 %1197, 512
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1208, label %1200

; <label>:1200                                    ; preds = %1175
  %1201 = add i32 %44, 444
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = add i32 %1203, 0
  %1205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1205, %dx.types.Handle %82, float %980, float %981, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  br label %1208

; <label>:1208                                    ; preds = %1200, %1175
  %1209 = phi float [ %1207, %1200 ], [ 1.000000e+00, %1175 ]
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = and i32 %1211, 33554432
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1320, label %1214

; <label>:1214                                    ; preds = %1208
  %1215 = add i32 %44, 240
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = and i32 %1217, 65535
  %1219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1218)  ; LegacyF16ToF32(value)
  %1220 = lshr i32 %1217, 16
  %1221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1220)  ; LegacyF16ToF32(value)
  %1222 = add i32 %44, 244
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = and i32 %1224, 65535
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = lshr i32 %1228, 24
  %1230 = uitofp i32 %1229 to float
  %1231 = fmul fast float %1230, 0x3F70101020000000
  %1232 = and i32 %1228, 255
  %1233 = uitofp i32 %1232 to float
  %1234 = fmul fast float %1233, 0x3F70101020000000
  %1235 = lshr i32 %1228, 8
  %1236 = and i32 %1235, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = fmul fast float %1237, 0x3F70101020000000
  %1239 = lshr i32 %1228, 16
  %1240 = and i32 %1239, 255
  %1241 = uitofp i32 %1240 to float
  %1242 = fmul fast float %1241, 0x3F70101020000000
  %1243 = add i32 %44, 236
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = lshr i32 %1245, 24
  %1247 = uitofp i32 %1246 to float
  %1248 = fmul fast float %1247, 0x3F70101020000000
  %1249 = and i32 %1245, 255
  %1250 = uitofp i32 %1249 to float
  %1251 = fmul fast float %1250, 0x3F70101020000000
  %1252 = lshr i32 %1245, 8
  %1253 = and i32 %1252, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = fmul fast float %1254, 0x3F70101020000000
  %1256 = lshr i32 %1245, 16
  %1257 = and i32 %1256, 255
  %1258 = uitofp i32 %1257 to float
  %1259 = fmul fast float %1258, 0x3F70101020000000
  %1260 = bitcast float %1184 to i32
  %1261 = ashr i32 %1260, 1
  %1262 = sub nsw i32 1597463174, %1261
  %1263 = bitcast i32 %1262 to float
  %1264 = fmul fast float %1184, 5.000000e-01
  %1265 = fmul fast float %1263, %1263
  %1266 = fmul fast float %1265, %1264
  %1267 = fsub fast float 1.500000e+00, %1266
  %1268 = fmul fast float %1263, %1184
  %1269 = fmul fast float %1268, %1267
  %1270 = bitcast float %1185 to i32
  %1271 = ashr i32 %1270, 1
  %1272 = sub nsw i32 1597463174, %1271
  %1273 = bitcast i32 %1272 to float
  %1274 = fmul fast float %1185, 5.000000e-01
  %1275 = fmul fast float %1273, %1273
  %1276 = fmul fast float %1275, %1274
  %1277 = fsub fast float 1.500000e+00, %1276
  %1278 = fmul fast float %1273, %1185
  %1279 = fmul fast float %1278, %1277
  %1280 = bitcast float %1186 to i32
  %1281 = ashr i32 %1280, 1
  %1282 = sub nsw i32 1597463174, %1281
  %1283 = bitcast i32 %1282 to float
  %1284 = fmul fast float %1186, 5.000000e-01
  %1285 = fmul fast float %1283, %1283
  %1286 = fmul fast float %1285, %1284
  %1287 = fsub fast float 1.500000e+00, %1286
  %1288 = fmul fast float %1283, %1186
  %1289 = fmul fast float %1288, %1287
  %1290 = fsub fast float %1269, %1251
  %1291 = fsub fast float %1279, %1255
  %1292 = fsub fast float %1289, %1259
  %1293 = fmul fast float %1290, %1219
  %1294 = fmul fast float %1291, %1221
  %1295 = fmul fast float %1292, %1226
  %1296 = fadd fast float %1293, %1234
  %1297 = fadd fast float %1294, %1238
  %1298 = fadd fast float %1295, %1242
  %1299 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1300 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1301 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1302 = fmul fast float %1299, %1299
  %1303 = fmul fast float %1300, %1300
  %1304 = fmul fast float %1301, %1301
  %1305 = fsub fast float %1302, %1184
  %1306 = fsub fast float %1303, %1185
  %1307 = fsub fast float %1304, %1186
  %1308 = fmul fast float %1305, %1209
  %1309 = fmul fast float %1306, %1209
  %1310 = fmul fast float %1307, %1209
  %1311 = fadd fast float %1308, %1184
  %1312 = fadd fast float %1309, %1185
  %1313 = fadd fast float %1310, %1186
  %1314 = fadd fast float %1231, %1195
  %1315 = fsub fast float %1314, %1248
  %1316 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  %1317 = fsub fast float %1316, %1195
  %1318 = fmul fast float %1317, %1209
  %1319 = fadd fast float %1318, %1195
  br label %1373

; <label>:1320                                    ; preds = %1208
  %1321 = and i32 %1211, 134217728
  %1322 = icmp eq i32 %1321, 0
  br i1 %1322, label %1357, label %1323

; <label>:1323                                    ; preds = %1320
  %1324 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %1325 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %1326 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %1327 = fadd fast float %1324, -5.000000e-01
  %1328 = fadd fast float %1325, -5.000000e-01
  %1329 = fadd fast float %1326, -5.000000e-01
  %1330 = fmul fast float %1327, %1209
  %1331 = fmul fast float %1328, %1209
  %1332 = fmul fast float %1329, %1209
  %1333 = fadd fast float %1330, 5.000000e-01
  %1334 = fadd fast float %1331, 5.000000e-01
  %1335 = fadd fast float %1332, 5.000000e-01
  %1336 = call float @dx.op.unary.f32(i32 24, float %1184)  ; Sqrt(value)
  %1337 = call float @dx.op.unary.f32(i32 24, float %1185)  ; Sqrt(value)
  %1338 = call float @dx.op.unary.f32(i32 24, float %1186)  ; Sqrt(value)
  %1339 = fmul fast float %1333, 2.000000e+00
  %1340 = fsub fast float 1.000000e+00, %1339
  %1341 = fmul fast float %1340, %1336
  %1342 = fadd fast float %1341, %1339
  %1343 = fmul fast float %1342, %1336
  %1344 = fmul fast float %1334, 2.000000e+00
  %1345 = fsub fast float 1.000000e+00, %1344
  %1346 = fmul fast float %1345, %1337
  %1347 = fadd fast float %1346, %1344
  %1348 = fmul fast float %1347, %1337
  %1349 = fmul fast float %1335, 2.000000e+00
  %1350 = fsub fast float 1.000000e+00, %1349
  %1351 = fmul fast float %1350, %1338
  %1352 = fadd fast float %1351, %1349
  %1353 = fmul fast float %1352, %1338
  %1354 = fmul fast float %1343, %1343
  %1355 = fmul fast float %1348, %1348
  %1356 = fmul fast float %1353, %1353
  br label %1373

; <label>:1357                                    ; preds = %1320
  %1358 = fmul fast float %253, %253
  %1359 = fmul fast float %257, %257
  %1360 = fmul fast float %261, %261
  %1361 = fadd fast float %1358, -1.000000e+00
  %1362 = fadd fast float %1359, -1.000000e+00
  %1363 = fadd fast float %1360, -1.000000e+00
  %1364 = fmul fast float %1209, %1361
  %1365 = fmul fast float %1209, %1362
  %1366 = fmul fast float %1209, %1363
  %1367 = fadd fast float %1364, 1.000000e+00
  %1368 = fadd fast float %1365, 1.000000e+00
  %1369 = fadd fast float %1366, 1.000000e+00
  %1370 = fmul fast float %1367, %1184
  %1371 = fmul fast float %1368, %1185
  %1372 = fmul fast float %1369, %1186
  br label %1373

; <label>:1373                                    ; preds = %1357, %1323, %1214, %1170
  %1374 = phi float [ %1319, %1214 ], [ %1195, %1323 ], [ %1195, %1357 ], [ 0x3FA23C0BE0000000, %1170 ]
  %1375 = phi float [ %1311, %1214 ], [ %1354, %1323 ], [ %1370, %1357 ], [ 1.000000e+00, %1170 ]
  %1376 = phi float [ %1312, %1214 ], [ %1355, %1323 ], [ %1371, %1357 ], [ 1.000000e+00, %1170 ]
  %1377 = phi float [ %1313, %1214 ], [ %1356, %1323 ], [ %1372, %1357 ], [ 1.000000e+00, %1170 ]
  %1378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.i32 %1378, 1
  %1380 = and i32 %1379, 1
  %1381 = icmp ne i32 %1380, 0
  %1382 = add i32 %44, 356
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = and i32 %1384, 32
  %1386 = icmp ne i32 %1385, 0
  %1387 = and i1 %1381, %1386
  %1388 = select i1 %1387, float 1.000000e+00, float %1375
  %1389 = select i1 %1387, float 0x3FD3333340000000, float %1376
  %1390 = select i1 %1387, float 0x3FD3333340000000, float %1377
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = and i32 %1392, 32
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %1467, label %1395

; <label>:1395                                    ; preds = %1373
  %1396 = add i32 %44, 108
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = add i32 %44, 380
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = add i32 %1401, 0
  %1403 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1402, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1404 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1403, %dx.types.Handle %81, float %980, float %981, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1405 = extractvalue %dx.types.ResRet.f32 %1404, 0
  %1406 = extractvalue %dx.types.ResRet.f32 %1404, 1
  %1407 = extractvalue %dx.types.ResRet.f32 %1404, 2
  %1408 = extractvalue %dx.types.ResRet.f32 %1404, 3
  %1409 = and i32 %1398, 255
  %1410 = uitofp i32 %1409 to float
  %1411 = lshr i32 %1398, 8
  %1412 = and i32 %1411, 255
  %1413 = uitofp i32 %1412 to float
  %1414 = lshr i32 %1398, 16
  %1415 = and i32 %1414, 255
  %1416 = uitofp i32 %1415 to float
  %1417 = fmul fast float %1416, 0x3F70101000000000
  %1418 = fmul fast float %1405, %1410
  %1419 = fadd fast float %1418, %1413
  %1420 = fmul fast float %1419, 0x3F70101000000000
  %1421 = fadd fast float %1406, -5.000000e-01
  %1422 = fadd fast float %1408, -5.000000e-01
  %1423 = fmul fast float %1421, %1417
  %1424 = fmul fast float %1422, %1417
  %1425 = fadd fast float %1423, 5.000000e-01
  %1426 = fadd fast float %1424, 5.000000e-01
  %1427 = fmul fast float %1425, 2.000000e+00
  %1428 = fadd fast float %1427, -1.000000e+00
  %1429 = fmul fast float %1426, 2.000000e+00
  %1430 = fadd fast float %1429, -1.000000e+00
  %1431 = fadd fast float %1428, %1430
  %1432 = fmul fast float %1431, 5.000000e-01
  %1433 = fsub fast float %1428, %1430
  %1434 = fmul fast float %1433, 5.000000e-01
  %1435 = call float @dx.op.unary.f32(i32 6, float %1432)  ; FAbs(value)
  %1436 = fsub fast float 1.000000e+00, %1435
  %1437 = call float @dx.op.unary.f32(i32 6, float %1434)  ; FAbs(value)
  %1438 = fsub fast float %1436, %1437
  %1439 = call float @dx.op.dot3.f32(i32 55, float %1432, float %1434, float %1438, float %1432, float %1434, float %1438)  ; Dot3(ax,ay,az,bx,by,bz)
  %1440 = call float @dx.op.unary.f32(i32 25, float %1439)  ; Rsqrt(value)
  %1441 = fmul fast float %1432, %1440
  %1442 = fmul fast float %1434, %1440
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = and i32 %1444, 67108864
  %1446 = icmp eq i32 %1445, 0
  br i1 %1446, label %1463, label %1447

; <label>:1447                                    ; preds = %1395
  %1448 = add i32 %44, 296
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1448, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = and i32 %1450, 65535
  %1452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1451)  ; LegacyF16ToF32(value)
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = and i32 %1454, 65535
  %1456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1455)  ; LegacyF16ToF32(value)
  %1457 = lshr i32 %1450, 16
  %1458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1457)  ; LegacyF16ToF32(value)
  %1459 = fsub fast float %1420, %1458
  %1460 = fmul fast float %1459, %1452
  %1461 = fadd fast float %1460, %1456
  %1462 = call float @dx.op.unary.f32(i32 7, float %1461)  ; Saturate(value)
  br label %1463

; <label>:1463                                    ; preds = %1447, %1395
  %1464 = phi float [ %1462, %1447 ], [ %1420, %1395 ]
  %1465 = call float @dx.op.dot2.f32(i32 54, float %1441, float %1442, float %53, float %54)  ; Dot2(ax,ay,bx,by)
  %1466 = call float @dx.op.dot2.f32(i32 54, float %1441, float %1442, float %55, float %56)  ; Dot2(ax,ay,bx,by)
  br label %1467

; <label>:1467                                    ; preds = %1463, %1373
  %1468 = phi float [ %1464, %1463 ], [ 0x3FD6666660000000, %1373 ]
  %1469 = phi float [ %1465, %1463 ], [ 0.000000e+00, %1373 ]
  %1470 = phi float [ %1466, %1463 ], [ 0.000000e+00, %1373 ]
  %1471 = phi float [ %1407, %1463 ], [ 1.000000e+00, %1373 ]
  %1472 = add i32 %44, 176
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = lshr i32 %1474, 22
  %1476 = shl nuw nsw i32 %1475, 5
  %1477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1476)  ; LegacyF16ToF32(value)
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = and i32 %1479, 64
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1515, label %1482

; <label>:1482                                    ; preds = %1467
  %1483 = add i32 %44, 396
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = add i32 %1485, 0
  %1487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = and i32 %1489, 131072
  %1491 = icmp eq i32 %1490, 0
  %1492 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1487, %dx.types.Handle %81, float %980, float %981, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  %1494 = extractvalue %dx.types.ResRet.f32 %1492, 1
  %1495 = extractvalue %dx.types.ResRet.f32 %1492, 2
  %1496 = fmul fast float %1493, %241
  %1497 = fmul fast float %1494, %244
  %1498 = fmul fast float %1495, %247
  br i1 %1491, label %1505, label %1499

; <label>:1499                                    ; preds = %1482
  %1500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1500, 0
  %1502 = fmul fast float %1501, %1496
  %1503 = fmul fast float %1501, %1497
  %1504 = fmul fast float %1501, %1498
  br label %1505

; <label>:1505                                    ; preds = %1499, %1482
  %1506 = phi float [ %1502, %1499 ], [ %1496, %1482 ]
  %1507 = phi float [ %1503, %1499 ], [ %1497, %1482 ]
  %1508 = phi float [ %1504, %1499 ], [ %1498, %1482 ]
  %1509 = fmul fast float %1506, %1477
  %1510 = select i1 %203, float %1509, float %1506
  %1511 = call float @dx.op.dot3.f32(i32 55, float %1510, float %1507, float %1508, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1512 = select i1 %203, float 0.000000e+00, float %1506
  %1513 = select i1 %203, float %1511, float %1507
  %1514 = select i1 %203, float 0.000000e+00, float %1508
  br label %1515

; <label>:1515                                    ; preds = %1505, %1467
  %1516 = phi float [ %1512, %1505 ], [ 0.000000e+00, %1467 ]
  %1517 = phi float [ %1513, %1505 ], [ 0.000000e+00, %1467 ]
  %1518 = phi float [ %1514, %1505 ], [ 0.000000e+00, %1467 ]
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 26624
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %1546, label %1523

; <label>:1523                                    ; preds = %1515
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 16384
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1546, label %1528

; <label>:1528                                    ; preds = %1523
  %1529 = and i32 %1525, 1048576
  %1530 = icmp ne i32 %1529, 0
  %1531 = add i32 %44, 460
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1531, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = add i32 %1533, 0
  %1535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1535, %dx.types.Handle %82, float %980, float %981, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1537 = extractvalue %dx.types.ResRet.f32 %1536, 0
  %1538 = add i32 %44, 112
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = lshr i32 %1540, 24
  %1542 = uitofp i32 %1541 to float
  %1543 = fmul fast float %1537, 0x3F70101020000000
  %1544 = select i1 %1530, float 0x3F70101020000000, float %1543
  %1545 = fmul fast float %1544, %1542
  br label %1546

; <label>:1546                                    ; preds = %1528, %1523, %1515
  %1547 = phi float [ %1545, %1528 ], [ 0.000000e+00, %1523 ], [ 0.000000e+00, %1515 ]
  %1548 = add i32 %44, 112
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = and i32 %1550, 255
  %1552 = uitofp i32 %1551 to float
  %1553 = lshr i32 %1550, 8
  %1554 = and i32 %1553, 255
  %1555 = uitofp i32 %1554 to float
  %1556 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1557 = fmul fast float %1555, %1556
  %1558 = fadd fast float %1557, %1552
  %1559 = fmul fast float %1558, 0x3F70101020000000
  %1560 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  br i1 %880, label %1561, label %1569

; <label>:1561                                    ; preds = %1546
  %1562 = fsub fast float 1.000000e+00, %1168
  %1563 = fmul fast float %1562, %868
  %1564 = fmul fast float %1562, %869
  %1565 = fmul fast float %1562, %870
  %1566 = fmul fast float %1562, %871
  %1567 = fmul fast float %1562, %872
  %1568 = fmul fast float %1562, %873
  br label %1569

; <label>:1569                                    ; preds = %1561, %1546
  %1570 = phi float [ %1563, %1561 ], [ %868, %1546 ]
  %1571 = phi float [ %1564, %1561 ], [ %869, %1546 ]
  %1572 = phi float [ %1565, %1561 ], [ %870, %1546 ]
  %1573 = phi float [ %1566, %1561 ], [ %871, %1546 ]
  %1574 = phi float [ %1567, %1561 ], [ %872, %1546 ]
  %1575 = phi float [ %1568, %1561 ], [ %873, %1546 ]
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = and i32 %1577, 3
  %1579 = icmp eq i32 %1578, 3
  br i1 %1579, label %1658, label %1580

; <label>:1580                                    ; preds = %1569
  %1581 = and i32 %1577, 16
  %1582 = icmp ne i32 %1581, 0
  %1583 = select i1 %1582, float %1168, float 0.000000e+00
  %1584 = icmp eq i32 %1578, 0
  br i1 %1584, label %1585, label %1613

; <label>:1585                                    ; preds = %1580
  %1586 = and i32 %1577, 64
  %1587 = icmp ne i32 %1586, 0
  %1588 = select i1 %1587, float %1168, float 0.000000e+00
  %1589 = fsub fast float %1388, %1570
  %1590 = fsub fast float %1389, %1571
  %1591 = fsub fast float %1390, %1572
  %1592 = fmul fast float %1583, %1589
  %1593 = fmul fast float %1583, %1590
  %1594 = fmul fast float %1583, %1591
  %1595 = fadd fast float %1592, %1570
  %1596 = fadd fast float %1593, %1571
  %1597 = fadd fast float %1594, %1572
  %1598 = fsub fast float %1374, %874
  %1599 = fmul fast float %1583, %1598
  %1600 = fadd fast float %1599, %874
  %1601 = fsub fast float %1516, %1573
  %1602 = fsub fast float %1517, %1574
  %1603 = fsub fast float %1518, %1575
  %1604 = fmul fast float %1588, %1601
  %1605 = fmul fast float %1588, %1602
  %1606 = fmul fast float %1588, %1603
  %1607 = fadd fast float %1604, %1573
  %1608 = fadd fast float %1605, %1574
  %1609 = fadd fast float %1606, %1575
  %1610 = fsub fast float %1560, %879
  %1611 = fmul fast float %1583, %1610
  %1612 = fadd fast float %1611, %879
  br label %1658

; <label>:1613                                    ; preds = %1580
  %1614 = icmp eq i32 %1578, 1
  br i1 %1614, label %1615, label %1628

; <label>:1615                                    ; preds = %1613
  %1616 = fadd fast float %1388, -1.000000e+00
  %1617 = fadd fast float %1389, -1.000000e+00
  %1618 = fadd fast float %1390, -1.000000e+00
  %1619 = fmul fast float %1583, %1616
  %1620 = fmul fast float %1583, %1617
  %1621 = fmul fast float %1583, %1618
  %1622 = fadd fast float %1619, 1.000000e+00
  %1623 = fadd fast float %1620, 1.000000e+00
  %1624 = fadd fast float %1621, 1.000000e+00
  %1625 = fmul fast float %1622, %1570
  %1626 = fmul fast float %1623, %1571
  %1627 = fmul fast float %1624, %1572
  br label %1658

; <label>:1628                                    ; preds = %1613
  %1629 = icmp eq i32 %1578, 2
  br i1 %1629, label %1630, label %1658

; <label>:1630                                    ; preds = %1628
  %1631 = call float @dx.op.unary.f32(i32 24, float %1388)  ; Sqrt(value)
  %1632 = call float @dx.op.unary.f32(i32 24, float %1389)  ; Sqrt(value)
  %1633 = call float @dx.op.unary.f32(i32 24, float %1390)  ; Sqrt(value)
  %1634 = fadd fast float %1631, -5.000000e-01
  %1635 = fadd fast float %1632, -5.000000e-01
  %1636 = fadd fast float %1633, -5.000000e-01
  %1637 = fmul fast float %1634, %1583
  %1638 = fmul fast float %1635, %1583
  %1639 = fmul fast float %1636, %1583
  %1640 = fadd fast float %1637, 5.000000e-01
  %1641 = fadd fast float %1638, 5.000000e-01
  %1642 = fadd fast float %1639, 5.000000e-01
  %1643 = fmul fast float %1640, 2.000000e+00
  %1644 = fsub fast float 1.000000e+00, %1643
  %1645 = fmul fast float %1644, %1570
  %1646 = fadd fast float %1645, %1643
  %1647 = fmul fast float %1646, %1570
  %1648 = fmul fast float %1641, 2.000000e+00
  %1649 = fsub fast float 1.000000e+00, %1648
  %1650 = fmul fast float %1649, %1571
  %1651 = fadd fast float %1650, %1648
  %1652 = fmul fast float %1651, %1571
  %1653 = fmul fast float %1642, 2.000000e+00
  %1654 = fsub fast float 1.000000e+00, %1653
  %1655 = fmul fast float %1654, %1572
  %1656 = fadd fast float %1655, %1653
  %1657 = fmul fast float %1656, %1572
  br label %1658

; <label>:1658                                    ; preds = %1630, %1628, %1615, %1585, %1569
  %1659 = phi float [ %1570, %1569 ], [ %1647, %1630 ], [ %1570, %1628 ], [ %1625, %1615 ], [ %1595, %1585 ]
  %1660 = phi float [ %1571, %1569 ], [ %1652, %1630 ], [ %1571, %1628 ], [ %1626, %1615 ], [ %1596, %1585 ]
  %1661 = phi float [ %1572, %1569 ], [ %1657, %1630 ], [ %1572, %1628 ], [ %1627, %1615 ], [ %1597, %1585 ]
  %1662 = phi float [ %1573, %1569 ], [ %1573, %1630 ], [ %1573, %1628 ], [ %1573, %1615 ], [ %1607, %1585 ]
  %1663 = phi float [ %1574, %1569 ], [ %1574, %1630 ], [ %1574, %1628 ], [ %1574, %1615 ], [ %1608, %1585 ]
  %1664 = phi float [ %1575, %1569 ], [ %1575, %1630 ], [ %1575, %1628 ], [ %1575, %1615 ], [ %1609, %1585 ]
  %1665 = phi float [ %874, %1569 ], [ %874, %1630 ], [ %874, %1628 ], [ %874, %1615 ], [ %1600, %1585 ]
  %1666 = phi float [ %879, %1569 ], [ %879, %1630 ], [ %879, %1628 ], [ %879, %1615 ], [ %1612, %1585 ]
  %1667 = and i32 %1577, 12
  %1668 = icmp eq i32 %1667, 12
  br i1 %1668, label %1751, label %1669

; <label>:1669                                    ; preds = %1658
  %1670 = and i32 %1577, 2097184
  %1671 = icmp eq i32 %1670, 2097184
  %1672 = select i1 %1671, float %1168, float 0.000000e+00
  %1673 = and i32 %1577, 4194336
  %1674 = icmp eq i32 %1673, 4194336
  %1675 = select i1 %1674, float %1168, float 0.000000e+00
  %1676 = and i32 %1577, 8388640
  %1677 = icmp eq i32 %1676, 8388640
  %1678 = select i1 %1677, float %1168, float 0.000000e+00
  %1679 = and i32 %1577, 16384
  %1680 = icmp ne i32 %1679, 0
  %1681 = select i1 %1680, float %1168, float 0.000000e+00
  %1682 = icmp eq i32 %1667, 0
  br i1 %1682, label %1683, label %1699

; <label>:1683                                    ; preds = %1669
  %1684 = fsub fast float %1469, %866
  %1685 = fsub fast float %1470, %867
  %1686 = fmul fast float %1672, %1684
  %1687 = fmul fast float %1672, %1685
  %1688 = fadd fast float %1686, %866
  %1689 = fadd fast float %1687, %867
  %1690 = fsub fast float %1471, %877
  %1691 = fmul fast float %1675, %1690
  %1692 = fadd fast float %1691, %877
  %1693 = fsub fast float %1468, %876
  %1694 = fmul fast float %1678, %1693
  %1695 = fadd fast float %1694, %876
  %1696 = fsub fast float %1547, %878
  %1697 = fmul fast float %1681, %1696
  %1698 = fadd fast float %1697, %878
  br label %1751

; <label>:1699                                    ; preds = %1669
  %1700 = icmp eq i32 %1667, 4
  br i1 %1700, label %1701, label %1735

; <label>:1701                                    ; preds = %1699
  %1702 = fmul fast float %1672, %1469
  %1703 = fmul fast float %1672, %1470
  %1704 = fadd fast float %1702, %866
  %1705 = fadd fast float %1703, %867
  %1706 = call float @dx.op.binary.f32(i32 36, float %877, float %1471)  ; FMin(a,b)
  %1707 = fsub fast float %1706, %877
  %1708 = fmul fast float %1707, %1675
  %1709 = fadd fast float %1708, %877
  %1710 = fadd fast float %1468, %876
  %1711 = fmul fast float %1710, 0x3FF337FAE0000000
  %1712 = fmul fast float %876, %876
  %1713 = fmul fast float %1468, %1468
  %1714 = fadd fast float %1713, %1712
  %1715 = fmul fast float %1714, 0x3FE5152B00000000
  %1716 = fmul fast float %876, 0xBFCC1F85E0000000
  %1717 = fmul fast float %1716, %1468
  %1718 = fadd fast float %1717, 0xBFE1363700000000
  %1719 = fadd fast float %1718, %1711
  %1720 = fsub fast float %1719, %1715
  %1721 = fmul fast float %1710, 0x3FBA6F0D00000000
  %1722 = fmul fast float %1714, 0x3FD0432880000000
  %1723 = fmul fast float %876, 0xBFEF110800000000
  %1724 = fmul fast float %1723, %1468
  %1725 = fadd fast float %1724, 1.000000e+00
  %1726 = fsub fast float %1725, %1721
  %1727 = fadd fast float %1726, %1722
  %1728 = fdiv fast float %1720, %1727
  %1729 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  %1730 = fsub fast float %1729, %876
  %1731 = fmul fast float %1730, %1678
  %1732 = fadd fast float %1731, %876
  %1733 = fmul fast float %1681, %1547
  %1734 = fadd fast float %1733, %878
  br label %1751

; <label>:1735                                    ; preds = %1699
  %1736 = icmp eq i32 %1667, 8
  br i1 %1736, label %1737, label %1751

; <label>:1737                                    ; preds = %1735
  %1738 = fmul fast float %1672, %1469
  %1739 = fmul fast float %1672, %1470
  %1740 = fadd fast float %1738, %866
  %1741 = fadd fast float %1739, %867
  %1742 = call float @dx.op.binary.f32(i32 36, float %877, float %1471)  ; FMin(a,b)
  %1743 = fsub fast float %1742, %877
  %1744 = fmul fast float %1743, %1675
  %1745 = fadd fast float %1744, %877
  %1746 = fsub fast float %1468, %876
  %1747 = fmul fast float %1678, %1746
  %1748 = fadd fast float %1747, %876
  %1749 = fmul fast float %1681, %1547
  %1750 = fadd fast float %1749, %878
  br label %1751

; <label>:1751                                    ; preds = %1737, %1735, %1701, %1683, %1658, %1167, %865
  %1752 = phi float [ %866, %1658 ], [ %866, %1167 ], [ %866, %865 ], [ %1688, %1683 ], [ %1704, %1701 ], [ %866, %1735 ], [ %1740, %1737 ]
  %1753 = phi float [ %867, %1658 ], [ %867, %1167 ], [ %867, %865 ], [ %1689, %1683 ], [ %1705, %1701 ], [ %867, %1735 ], [ %1741, %1737 ]
  %1754 = phi float [ %1659, %1658 ], [ %868, %1167 ], [ %868, %865 ], [ %1659, %1683 ], [ %1659, %1701 ], [ %1659, %1735 ], [ %1659, %1737 ]
  %1755 = phi float [ %1660, %1658 ], [ %869, %1167 ], [ %869, %865 ], [ %1660, %1683 ], [ %1660, %1701 ], [ %1660, %1735 ], [ %1660, %1737 ]
  %1756 = phi float [ %1661, %1658 ], [ %870, %1167 ], [ %870, %865 ], [ %1661, %1683 ], [ %1661, %1701 ], [ %1661, %1735 ], [ %1661, %1737 ]
  %1757 = phi float [ %1662, %1658 ], [ %871, %1167 ], [ %871, %865 ], [ %1662, %1683 ], [ %1662, %1701 ], [ %1662, %1735 ], [ %1662, %1737 ]
  %1758 = phi float [ %1663, %1658 ], [ %872, %1167 ], [ %872, %865 ], [ %1663, %1683 ], [ %1663, %1701 ], [ %1663, %1735 ], [ %1663, %1737 ]
  %1759 = phi float [ %1664, %1658 ], [ %873, %1167 ], [ %873, %865 ], [ %1664, %1683 ], [ %1664, %1701 ], [ %1664, %1735 ], [ %1664, %1737 ]
  %1760 = phi float [ %1665, %1658 ], [ %874, %1167 ], [ %874, %865 ], [ %1665, %1683 ], [ %1665, %1701 ], [ %1665, %1735 ], [ %1665, %1737 ]
  %1761 = phi float [ %876, %1658 ], [ %876, %1167 ], [ %876, %865 ], [ %1695, %1683 ], [ %1732, %1701 ], [ %876, %1735 ], [ %1748, %1737 ]
  %1762 = phi float [ %877, %1658 ], [ %877, %1167 ], [ %877, %865 ], [ %1692, %1683 ], [ %1709, %1701 ], [ %877, %1735 ], [ %1745, %1737 ]
  %1763 = phi float [ %878, %1658 ], [ %878, %1167 ], [ %878, %865 ], [ %1698, %1683 ], [ %1734, %1701 ], [ %878, %1735 ], [ %1750, %1737 ]
  %1764 = phi float [ %1666, %1658 ], [ %879, %1167 ], [ %879, %865 ], [ %1666, %1683 ], [ %1666, %1701 ], [ %1666, %1735 ], [ %1666, %1737 ]
  %1765 = icmp ult i32 %367, 3
  %1766 = add i32 %44, 56
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = add i32 %44, 60
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = or i32 %1771, %1768
  %1773 = icmp eq i32 %1772, 0
  br i1 %1773, label %2636, label %1774

; <label>:1774                                    ; preds = %1751
  %1775 = add i32 %44, 316
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = lshr i32 %1777, 16
  %1779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1778)  ; LegacyF16ToF32(value)
  %1780 = fmul fast float %1779, 0x3F50624DE0000000
  %1781 = add i32 %44, 120
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = lshr i32 %1783, 16
  %1785 = and i32 %1784, 255
  %1786 = lshr i32 %1783, 24
  %1787 = add i32 %44, 324
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = and i32 %1789, 65535
  %1791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1790)  ; LegacyF16ToF32(value)
  %1792 = lshr i32 %1789, 16
  %1793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1792)  ; LegacyF16ToF32(value)
  %1794 = add i32 %44, 64
  %1795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.i32 %1795, 0
  %1797 = lshr i32 %1796, 22
  %1798 = shl nuw nsw i32 %1797, 5
  %1799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1798)  ; LegacyF16ToF32(value)
  %1800 = shl i32 %1796, 4
  %1801 = and i32 %1800, 32752
  %1802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1801)  ; LegacyF16ToF32(value)
  %1803 = lshr i32 %1796, 7
  %1804 = and i32 %1803, 32752
  %1805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1804)  ; LegacyF16ToF32(value)
  %1806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.f32 %1806, 3
  %1808 = fmul fast float %1807, 1.000000e+03
  %1809 = fmul fast float %318, %1808
  %1810 = call float @dx.op.unary.f32(i32 22, float %1809)  ; Frc(value)
  %1811 = fadd fast float %1810, %308
  %1812 = fmul fast float %319, %1808
  %1813 = call float @dx.op.unary.f32(i32 22, float %1812)  ; Frc(value)
  %1814 = fadd fast float %1813, %310
  %1815 = fmul fast float %1780, %1808
  %1816 = call float @dx.op.unary.f32(i32 22, float %1815)  ; Frc(value)
  %1817 = fmul fast float %1816, 0x401921FB60000000
  %1818 = fadd fast float %1817, %1799
  %1819 = call float @dx.op.unary.f32(i32 13, float %1818)  ; Sin(value)
  %1820 = call float @dx.op.unary.f32(i32 12, float %1818)  ; Cos(value)
  %1821 = fsub fast float -0.000000e+00, %1819
  %1822 = fadd fast float %67, -5.000000e-01
  %1823 = fadd fast float %68, -5.000000e-01
  %1824 = fmul fast float %1791, %1822
  %1825 = fmul fast float %1793, %1823
  %1826 = fadd fast float %1824, 5.000000e-01
  %1827 = fadd fast float %1825, 5.000000e-01
  %1828 = fmul fast float %1802, %1826
  %1829 = fmul fast float %1805, %1827
  %1830 = fmul fast float %1820, %1828
  %1831 = call float @dx.op.tertiary.f32(i32 46, float %1821, float %1829, float %1830)  ; FMad(a,b,c)
  %1832 = fmul fast float %1819, %1828
  %1833 = call float @dx.op.tertiary.f32(i32 46, float %1820, float %1829, float %1832)  ; FMad(a,b,c)
  %1834 = fadd fast float %1811, %1831
  %1835 = fadd fast float %1814, %1833
  %1836 = icmp ugt i32 %1785, 1
  %1837 = icmp ugt i32 %1783, 33554431
  %1838 = or i1 %1837, %1836
  br i1 %1838, label %1839, label %1864

; <label>:1839                                    ; preds = %1774
  %1840 = add i32 %44, 260
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = lshr i32 %1842, 16
  %1844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1843)  ; LegacyF16ToF32(value)
  %1845 = fmul fast float %1807, %1844
  %1846 = call float @dx.op.unary.f32(i32 22, float %1845)  ; Frc(value)
  %1847 = mul nuw nsw i32 %1785, %1786
  %1848 = uitofp i32 %1847 to float
  %1849 = fmul fast float %1846, %1848
  %1850 = call float @dx.op.unary.f32(i32 27, float %1849)  ; Round_ni(value)
  %1851 = fptoui float %1850 to i32
  %1852 = urem i32 %1851, %1785
  %1853 = udiv i32 %1851, %1786
  %1854 = call float @dx.op.unary.f32(i32 22, float %1834)  ; Frc(value)
  %1855 = call float @dx.op.unary.f32(i32 22, float %1835)  ; Frc(value)
  %1856 = uitofp i32 %1852 to float
  %1857 = uitofp i32 %1853 to float
  %1858 = fadd fast float %1854, %1856
  %1859 = fadd fast float %1855, %1857
  %1860 = uitofp i32 %1785 to float
  %1861 = uitofp i32 %1786 to float
  %1862 = fdiv fast float %1858, %1860
  %1863 = fdiv fast float %1859, %1861
  br label %1864

; <label>:1864                                    ; preds = %1839, %1774
  %1865 = phi float [ %1862, %1839 ], [ %1834, %1774 ]
  %1866 = phi float [ %1863, %1839 ], [ %1835, %1774 ]
  %1867 = and i32 %1768, 16777216
  %1868 = icmp eq i32 %1867, 0
  br i1 %1868, label %1978, label %1869

; <label>:1869                                    ; preds = %1864
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 0
  %1872 = extractvalue %dx.types.CBufRet.f32 %1870, 1
  %1873 = extractvalue %dx.types.CBufRet.f32 %1870, 2
  %1874 = fadd fast float %1871, %132
  %1875 = fadd fast float %1872, %133
  %1876 = fadd fast float %1873, %134
  %1877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1878 = extractvalue %dx.types.CBufRet.f32 %1877, 0
  %1879 = call float @dx.op.unary.f32(i32 7, float %1878)  ; Saturate(value)
  %1880 = icmp eq i32 %43, 65535
  br i1 %1880, label %1975, label %1881

; <label>:1881                                    ; preds = %1869
  %1882 = lshr i32 %43, 1
  %1883 = shl i32 %1882, 2
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = and i32 %43, 1
  %1887 = icmp ne i32 %1886, 0
  %1888 = lshr i32 %1885, 16
  %1889 = and i32 %1885, 65535
  %1890 = select i1 %1887, i32 %1888, i32 %1889
  %1891 = icmp eq i32 %1890, 65535
  br i1 %1891, label %1971, label %1892

; <label>:1892                                    ; preds = %1881
  %1893 = mul nuw nsw i32 %1890, 40
  %1894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.f32 %1894, 0
  %1896 = extractvalue %dx.types.ResRet.f32 %1894, 1
  %1897 = extractvalue %dx.types.ResRet.f32 %1894, 2
  %1898 = add nuw nsw i32 %1893, 12
  %1899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.f32 %1899, 0
  %1901 = extractvalue %dx.types.ResRet.f32 %1899, 1
  %1902 = extractvalue %dx.types.ResRet.f32 %1899, 2
  %1903 = add nuw nsw i32 %1893, 24
  %1904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.f32 %1904, 0
  %1906 = extractvalue %dx.types.ResRet.f32 %1904, 1
  %1907 = extractvalue %dx.types.ResRet.f32 %1904, 2
  %1908 = add nuw nsw i32 %1893, 36
  %1909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.f32 %1909, 0
  %1911 = fsub fast float %1874, %1895
  %1912 = fsub fast float %1875, %1896
  %1913 = fsub fast float %1876, %1897
  %1914 = fmul fast float %1910, %1911
  %1915 = fmul fast float %1910, %1912
  %1916 = fmul fast float %1910, %1913
  %1917 = call float @dx.op.unary.f32(i32 27, float %1914)  ; Round_ni(value)
  %1918 = call float @dx.op.unary.f32(i32 27, float %1915)  ; Round_ni(value)
  %1919 = call float @dx.op.unary.f32(i32 27, float %1916)  ; Round_ni(value)
  %1920 = fadd fast float %1917, 5.000000e-01
  %1921 = fadd fast float %1918, 5.000000e-01
  %1922 = fadd fast float %1919, 5.000000e-01
  %1923 = fmul fast float %1920, %1900
  %1924 = fmul fast float %1921, %1901
  %1925 = fmul fast float %1922, %1902
  %1926 = shl i32 %43, 2
  %1927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1926, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.i32 %1927, 0
  %1929 = add i32 %1928, 0
  %1930 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1929, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1931 = call float @dx.op.unary.f32(i32 22, float %1923)  ; Frc(value)
  %1932 = call float @dx.op.unary.f32(i32 22, float %1924)  ; Frc(value)
  %1933 = call float @dx.op.unary.f32(i32 22, float %1925)  ; Frc(value)
  %1934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1930, %dx.types.Handle %40, float %1931, float %1932, float %1933, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 0
  %1936 = extractvalue %dx.types.ResRet.f32 %1934, 1
  %1937 = extractvalue %dx.types.ResRet.f32 %1934, 2
  %1938 = fmul fast float %1935, 1.023000e+03
  %1939 = fmul fast float %1936, 1.023000e+03
  %1940 = fmul fast float %1937, 1.023000e+03
  %1941 = fadd fast float %1938, 5.000000e-01
  %1942 = fadd fast float %1939, 5.000000e-01
  %1943 = fadd fast float %1940, 5.000000e-01
  %1944 = call float @dx.op.unary.f32(i32 27, float %1941)  ; Round_ni(value)
  %1945 = call float @dx.op.unary.f32(i32 27, float %1942)  ; Round_ni(value)
  %1946 = call float @dx.op.unary.f32(i32 27, float %1943)  ; Round_ni(value)
  %1947 = fsub fast float %1914, %1917
  %1948 = fsub fast float %1915, %1918
  %1949 = fsub fast float %1916, %1919
  %1950 = fmul fast float %1947, 7.500000e-01
  %1951 = fmul fast float %1948, 7.500000e-01
  %1952 = fmul fast float %1949, 7.500000e-01
  %1953 = fadd fast float %1917, 1.250000e-01
  %1954 = fadd fast float %1953, %1950
  %1955 = fadd fast float %1954, %1944
  %1956 = fadd fast float %1918, 1.250000e-01
  %1957 = fadd fast float %1956, %1951
  %1958 = fadd fast float %1957, %1945
  %1959 = fadd fast float %1919, 1.250000e-01
  %1960 = fadd fast float %1959, %1952
  %1961 = fadd fast float %1960, %1946
  %1962 = fmul fast float %1955, %1905
  %1963 = fmul fast float %1958, %1906
  %1964 = fmul fast float %1961, %1907
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1926, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = add i32 %1966, 0
  %1968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1967, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1968, %dx.types.Handle %38, float %1962, float %1963, float %1964, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1970 = extractvalue %dx.types.ResRet.f32 %1969, 0
  br label %1971

; <label>:1971                                    ; preds = %1892, %1881
  %1972 = phi float [ %1970, %1892 ], [ -1.000000e+00, %1881 ]
  %1973 = fadd fast float %1972, %1879
  %1974 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  br label %1975

; <label>:1975                                    ; preds = %1971, %1869
  %1976 = phi float [ %1974, %1971 ], [ %1879, %1869 ]
  %1977 = fmul fast float %1976, %76
  br label %1978

; <label>:1978                                    ; preds = %1975, %1864
  %1979 = phi float [ %1977, %1975 ], [ %76, %1864 ]
  %1980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.i32 %1980, 0
  %1982 = and i32 %1981, 256
  %1983 = icmp eq i32 %1982, 0
  br i1 %1983, label %2030, label %1984

; <label>:1984                                    ; preds = %1978
  %1985 = add i32 %44, 432
  %1986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.i32 %1986, 0
  %1988 = add i32 %1987, 0
  %1989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1988, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1990 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1989, %dx.types.Handle %82, float %1865, float %1866, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1991 = extractvalue %dx.types.ResRet.f32 %1990, 0
  %1992 = add i32 %44, 132
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = shl i32 %1994, 4
  %1996 = and i32 %1995, 32752
  %1997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1996)  ; LegacyF16ToF32(value)
  %1998 = lshr i32 %1994, 7
  %1999 = and i32 %1998, 32752
  %2000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1999)  ; LegacyF16ToF32(value)
  %2001 = fsub fast float 1.000000e+00, %1979
  %2002 = call float @dx.op.binary.f32(i32 35, float %2001, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2003 = bitcast float %1979 to i32
  %2004 = sitofp i32 %2003 to float
  %2005 = fadd fast float %2004, 0xC1CFBF8940000000
  %2006 = fmul fast float %2000, %2005
  %2007 = fadd fast float %2006, 0x41CFBF8940000000
  %2008 = fptosi float %2007 to i32
  %2009 = bitcast i32 %2008 to float
  %2010 = bitcast float %2002 to i32
  %2011 = sitofp i32 %2010 to float
  %2012 = fadd fast float %2011, 0xC1CFBF8940000000
  %2013 = fmul fast float %2012, %2000
  %2014 = fadd fast float %2013, 0x41CFBF8940000000
  %2015 = fptosi float %2014 to i32
  %2016 = bitcast i32 %2015 to float
  %2017 = fmul fast float %2009, %1997
  %2018 = fmul fast float %2016, %1997
  %2019 = fsub fast float %2002, %2017
  %2020 = fadd fast float %2018, %2002
  %2021 = call float @dx.op.unary.f32(i32 7, float %2019)  ; Saturate(value)
  %2022 = call float @dx.op.unary.f32(i32 7, float %2020)  ; Saturate(value)
  %2023 = fsub fast float %1991, %2021
  %2024 = fsub fast float %2022, %2021
  %2025 = bitcast float %2024 to i32
  %2026 = sub nsw i32 2129859010, %2025
  %2027 = bitcast i32 %2026 to float
  %2028 = fmul fast float %2027, %2023
  %2029 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  br label %2030

; <label>:2030                                    ; preds = %1984, %1978
  %2031 = phi float [ %2029, %1984 ], [ %1979, %1978 ]
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = and i32 %2033, 128
  %2035 = icmp eq i32 %2034, 0
  br i1 %2035, label %2052, label %2036

; <label>:2036                                    ; preds = %2030
  %2037 = add i32 %44, 416
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = add i32 %2039, 0
  %2041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2040, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2041, %dx.types.Handle %82, float %1865, float %1866, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2043 = extractvalue %dx.types.ResRet.f32 %2042, 0
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = and i32 %2045, 524288
  %2047 = icmp ne i32 %2046, 0
  %2048 = fcmp fast ogt float %2043, 0x3FE0101020000000
  %2049 = select i1 %2048, float 1.000000e+00, float 0.000000e+00
  %2050 = select i1 %2047, float %2049, float %2043
  %2051 = fmul fast float %2050, %2031
  br label %2052

; <label>:2052                                    ; preds = %2036, %2030
  %2053 = phi float [ %2051, %2036 ], [ %2031, %2030 ]
  %2054 = fcmp fast ult float %2053, 0x3F70101020000000
  br i1 %2054, label %2636, label %2055

; <label>:2055                                    ; preds = %2052
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = and i32 %2057, 16
  %2059 = icmp eq i32 %2058, 0
  br i1 %2059, label %2258, label %2060

; <label>:2060                                    ; preds = %2055
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = add i32 %44, 368
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2063, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = add i32 %2065, 0
  %2067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2068 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2067, %dx.types.Handle %81, float %1865, float %1866, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2069 = extractvalue %dx.types.ResRet.f32 %2068, 0
  %2070 = extractvalue %dx.types.ResRet.f32 %2068, 1
  %2071 = extractvalue %dx.types.ResRet.f32 %2068, 2
  %2072 = extractvalue %dx.types.ResRet.f32 %2068, 3
  %2073 = and i32 %2062, 255
  %2074 = uitofp i32 %2073 to float
  %2075 = lshr i32 %2062, 8
  %2076 = and i32 %2075, 255
  %2077 = uitofp i32 %2076 to float
  %2078 = fmul fast float %2072, %2074
  %2079 = fadd fast float %2078, %2077
  %2080 = fmul fast float %2079, 0x3F70101000000000
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = and i32 %2082, 512
  %2084 = icmp eq i32 %2083, 0
  br i1 %2084, label %2093, label %2085

; <label>:2085                                    ; preds = %2060
  %2086 = add i32 %44, 448
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2086, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = add i32 %2088, 0
  %2090 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2089, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2091 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2090, %dx.types.Handle %82, float %1865, float %1866, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2092 = extractvalue %dx.types.ResRet.f32 %2091, 0
  br label %2093

; <label>:2093                                    ; preds = %2085, %2060
  %2094 = phi float [ %2092, %2085 ], [ 1.000000e+00, %2060 ]
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = and i32 %2096, 33554432
  %2098 = icmp eq i32 %2097, 0
  br i1 %2098, label %2205, label %2099

; <label>:2099                                    ; preds = %2093
  %2100 = add i32 %44, 256
  %2101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2100, i32 undef)  ; BufferLoad(srv,index,wot)
  %2102 = extractvalue %dx.types.ResRet.i32 %2101, 0
  %2103 = and i32 %2102, 65535
  %2104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2103)  ; LegacyF16ToF32(value)
  %2105 = lshr i32 %2102, 16
  %2106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2105)  ; LegacyF16ToF32(value)
  %2107 = add i32 %44, 260
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2107, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = and i32 %2109, 65535
  %2111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2110)  ; LegacyF16ToF32(value)
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = lshr i32 %2113, 24
  %2115 = uitofp i32 %2114 to float
  %2116 = fmul fast float %2115, 0x3F70101020000000
  %2117 = and i32 %2113, 255
  %2118 = uitofp i32 %2117 to float
  %2119 = fmul fast float %2118, 0x3F70101020000000
  %2120 = lshr i32 %2113, 8
  %2121 = and i32 %2120, 255
  %2122 = uitofp i32 %2121 to float
  %2123 = fmul fast float %2122, 0x3F70101020000000
  %2124 = lshr i32 %2113, 16
  %2125 = and i32 %2124, 255
  %2126 = uitofp i32 %2125 to float
  %2127 = fmul fast float %2126, 0x3F70101020000000
  %2128 = add i32 %44, 252
  %2129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2130 = extractvalue %dx.types.ResRet.i32 %2129, 0
  %2131 = lshr i32 %2130, 24
  %2132 = uitofp i32 %2131 to float
  %2133 = fmul fast float %2132, 0x3F70101020000000
  %2134 = and i32 %2130, 255
  %2135 = uitofp i32 %2134 to float
  %2136 = fmul fast float %2135, 0x3F70101020000000
  %2137 = lshr i32 %2130, 8
  %2138 = and i32 %2137, 255
  %2139 = uitofp i32 %2138 to float
  %2140 = fmul fast float %2139, 0x3F70101020000000
  %2141 = lshr i32 %2130, 16
  %2142 = and i32 %2141, 255
  %2143 = uitofp i32 %2142 to float
  %2144 = fmul fast float %2143, 0x3F70101020000000
  %2145 = bitcast float %2069 to i32
  %2146 = ashr i32 %2145, 1
  %2147 = sub nsw i32 1597463174, %2146
  %2148 = bitcast i32 %2147 to float
  %2149 = fmul fast float %2069, 5.000000e-01
  %2150 = fmul fast float %2148, %2148
  %2151 = fmul fast float %2150, %2149
  %2152 = fsub fast float 1.500000e+00, %2151
  %2153 = fmul fast float %2148, %2069
  %2154 = fmul fast float %2153, %2152
  %2155 = bitcast float %2070 to i32
  %2156 = ashr i32 %2155, 1
  %2157 = sub nsw i32 1597463174, %2156
  %2158 = bitcast i32 %2157 to float
  %2159 = fmul fast float %2070, 5.000000e-01
  %2160 = fmul fast float %2158, %2158
  %2161 = fmul fast float %2160, %2159
  %2162 = fsub fast float 1.500000e+00, %2161
  %2163 = fmul fast float %2158, %2070
  %2164 = fmul fast float %2163, %2162
  %2165 = bitcast float %2071 to i32
  %2166 = ashr i32 %2165, 1
  %2167 = sub nsw i32 1597463174, %2166
  %2168 = bitcast i32 %2167 to float
  %2169 = fmul fast float %2071, 5.000000e-01
  %2170 = fmul fast float %2168, %2168
  %2171 = fmul fast float %2170, %2169
  %2172 = fsub fast float 1.500000e+00, %2171
  %2173 = fmul fast float %2168, %2071
  %2174 = fmul fast float %2173, %2172
  %2175 = fsub fast float %2154, %2136
  %2176 = fsub fast float %2164, %2140
  %2177 = fsub fast float %2174, %2144
  %2178 = fmul fast float %2175, %2104
  %2179 = fmul fast float %2176, %2106
  %2180 = fmul fast float %2177, %2111
  %2181 = fadd fast float %2178, %2119
  %2182 = fadd fast float %2179, %2123
  %2183 = fadd fast float %2180, %2127
  %2184 = call float @dx.op.unary.f32(i32 7, float %2181)  ; Saturate(value)
  %2185 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  %2186 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2187 = fmul fast float %2184, %2184
  %2188 = fmul fast float %2185, %2185
  %2189 = fmul fast float %2186, %2186
  %2190 = fsub fast float %2187, %2069
  %2191 = fsub fast float %2188, %2070
  %2192 = fsub fast float %2189, %2071
  %2193 = fmul fast float %2190, %2094
  %2194 = fmul fast float %2191, %2094
  %2195 = fmul fast float %2192, %2094
  %2196 = fadd fast float %2193, %2069
  %2197 = fadd fast float %2194, %2070
  %2198 = fadd fast float %2195, %2071
  %2199 = fadd fast float %2116, %2080
  %2200 = fsub fast float %2199, %2133
  %2201 = call float @dx.op.unary.f32(i32 7, float %2200)  ; Saturate(value)
  %2202 = fsub fast float %2201, %2080
  %2203 = fmul fast float %2202, %2094
  %2204 = fadd fast float %2203, %2080
  br label %2258

; <label>:2205                                    ; preds = %2093
  %2206 = and i32 %2096, 134217728
  %2207 = icmp eq i32 %2206, 0
  br i1 %2207, label %2242, label %2208

; <label>:2208                                    ; preds = %2205
  %2209 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %2210 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %2211 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %2212 = fadd fast float %2209, -5.000000e-01
  %2213 = fadd fast float %2210, -5.000000e-01
  %2214 = fadd fast float %2211, -5.000000e-01
  %2215 = fmul fast float %2212, %2094
  %2216 = fmul fast float %2213, %2094
  %2217 = fmul fast float %2214, %2094
  %2218 = fadd fast float %2215, 5.000000e-01
  %2219 = fadd fast float %2216, 5.000000e-01
  %2220 = fadd fast float %2217, 5.000000e-01
  %2221 = call float @dx.op.unary.f32(i32 24, float %2069)  ; Sqrt(value)
  %2222 = call float @dx.op.unary.f32(i32 24, float %2070)  ; Sqrt(value)
  %2223 = call float @dx.op.unary.f32(i32 24, float %2071)  ; Sqrt(value)
  %2224 = fmul fast float %2218, 2.000000e+00
  %2225 = fsub fast float 1.000000e+00, %2224
  %2226 = fmul fast float %2225, %2221
  %2227 = fadd fast float %2226, %2224
  %2228 = fmul fast float %2227, %2221
  %2229 = fmul fast float %2219, 2.000000e+00
  %2230 = fsub fast float 1.000000e+00, %2229
  %2231 = fmul fast float %2230, %2222
  %2232 = fadd fast float %2231, %2229
  %2233 = fmul fast float %2232, %2222
  %2234 = fmul fast float %2220, 2.000000e+00
  %2235 = fsub fast float 1.000000e+00, %2234
  %2236 = fmul fast float %2235, %2223
  %2237 = fadd fast float %2236, %2234
  %2238 = fmul fast float %2237, %2223
  %2239 = fmul fast float %2228, %2228
  %2240 = fmul fast float %2233, %2233
  %2241 = fmul fast float %2238, %2238
  br label %2258

; <label>:2242                                    ; preds = %2205
  %2243 = fmul fast float %295, %295
  %2244 = fmul fast float %299, %299
  %2245 = fmul fast float %303, %303
  %2246 = fadd fast float %2243, -1.000000e+00
  %2247 = fadd fast float %2244, -1.000000e+00
  %2248 = fadd fast float %2245, -1.000000e+00
  %2249 = fmul fast float %2094, %2246
  %2250 = fmul fast float %2094, %2247
  %2251 = fmul fast float %2094, %2248
  %2252 = fadd fast float %2249, 1.000000e+00
  %2253 = fadd fast float %2250, 1.000000e+00
  %2254 = fadd fast float %2251, 1.000000e+00
  %2255 = fmul fast float %2252, %2069
  %2256 = fmul fast float %2253, %2070
  %2257 = fmul fast float %2254, %2071
  br label %2258

; <label>:2258                                    ; preds = %2242, %2208, %2099, %2055
  %2259 = phi float [ %2204, %2099 ], [ %2080, %2208 ], [ %2080, %2242 ], [ 0x3FA23C0BE0000000, %2055 ]
  %2260 = phi float [ %2196, %2099 ], [ %2239, %2208 ], [ %2255, %2242 ], [ 1.000000e+00, %2055 ]
  %2261 = phi float [ %2197, %2099 ], [ %2240, %2208 ], [ %2256, %2242 ], [ 1.000000e+00, %2055 ]
  %2262 = phi float [ %2198, %2099 ], [ %2241, %2208 ], [ %2257, %2242 ], [ 1.000000e+00, %2055 ]
  %2263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.i32 %2263, 1
  %2265 = and i32 %2264, 1
  %2266 = icmp ne i32 %2265, 0
  %2267 = add i32 %44, 356
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = and i32 %2269, 32
  %2271 = icmp ne i32 %2270, 0
  %2272 = and i1 %2266, %2271
  %2273 = select i1 %2272, float 1.000000e+00, float %2260
  %2274 = select i1 %2272, float 0x3FD3333340000000, float %2261
  %2275 = select i1 %2272, float 0x3FD3333340000000, float %2262
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = and i32 %2277, 32
  %2279 = icmp eq i32 %2278, 0
  br i1 %2279, label %2352, label %2280

; <label>:2280                                    ; preds = %2258
  %2281 = add i32 %44, 124
  %2282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2281, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = add i32 %44, 384
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2284, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = add i32 %2286, 0
  %2288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2287, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2289 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2288, %dx.types.Handle %81, float %1865, float %1866, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2290 = extractvalue %dx.types.ResRet.f32 %2289, 0
  %2291 = extractvalue %dx.types.ResRet.f32 %2289, 1
  %2292 = extractvalue %dx.types.ResRet.f32 %2289, 2
  %2293 = extractvalue %dx.types.ResRet.f32 %2289, 3
  %2294 = and i32 %2283, 255
  %2295 = uitofp i32 %2294 to float
  %2296 = lshr i32 %2283, 8
  %2297 = and i32 %2296, 255
  %2298 = uitofp i32 %2297 to float
  %2299 = lshr i32 %2283, 16
  %2300 = and i32 %2299, 255
  %2301 = uitofp i32 %2300 to float
  %2302 = fmul fast float %2301, 0x3F70101000000000
  %2303 = fmul fast float %2290, %2295
  %2304 = fadd fast float %2303, %2298
  %2305 = fmul fast float %2304, 0x3F70101000000000
  %2306 = fadd fast float %2291, -5.000000e-01
  %2307 = fadd fast float %2293, -5.000000e-01
  %2308 = fmul fast float %2306, %2302
  %2309 = fmul fast float %2307, %2302
  %2310 = fadd fast float %2308, 5.000000e-01
  %2311 = fadd fast float %2309, 5.000000e-01
  %2312 = fmul fast float %2310, 2.000000e+00
  %2313 = fadd fast float %2312, -1.000000e+00
  %2314 = fmul fast float %2311, 2.000000e+00
  %2315 = fadd fast float %2314, -1.000000e+00
  %2316 = fadd fast float %2313, %2315
  %2317 = fmul fast float %2316, 5.000000e-01
  %2318 = fsub fast float %2313, %2315
  %2319 = fmul fast float %2318, 5.000000e-01
  %2320 = call float @dx.op.unary.f32(i32 6, float %2317)  ; FAbs(value)
  %2321 = fsub fast float 1.000000e+00, %2320
  %2322 = call float @dx.op.unary.f32(i32 6, float %2319)  ; FAbs(value)
  %2323 = fsub fast float %2321, %2322
  %2324 = call float @dx.op.dot3.f32(i32 55, float %2317, float %2319, float %2323, float %2317, float %2319, float %2323)  ; Dot3(ax,ay,az,bx,by,bz)
  %2325 = call float @dx.op.unary.f32(i32 25, float %2324)  ; Rsqrt(value)
  %2326 = fmul fast float %2317, %2325
  %2327 = fmul fast float %2319, %2325
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = and i32 %2329, 67108864
  %2331 = icmp eq i32 %2330, 0
  br i1 %2331, label %2348, label %2332

; <label>:2332                                    ; preds = %2280
  %2333 = add i32 %44, 312
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2333, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = and i32 %2335, 65535
  %2337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2336)  ; LegacyF16ToF32(value)
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 65535
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = lshr i32 %2335, 16
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = fsub fast float %2305, %2343
  %2345 = fmul fast float %2344, %2337
  %2346 = fadd fast float %2345, %2341
  %2347 = call float @dx.op.unary.f32(i32 7, float %2346)  ; Saturate(value)
  br label %2348

; <label>:2348                                    ; preds = %2332, %2280
  %2349 = phi float [ %2347, %2332 ], [ %2305, %2280 ]
  %2350 = call float @dx.op.dot2.f32(i32 54, float %2326, float %2327, float %49, float %50)  ; Dot2(ax,ay,bx,by)
  %2351 = call float @dx.op.dot2.f32(i32 54, float %2326, float %2327, float %51, float %52)  ; Dot2(ax,ay,bx,by)
  br label %2352

; <label>:2352                                    ; preds = %2348, %2258
  %2353 = phi float [ %2349, %2348 ], [ 0x3FD6666660000000, %2258 ]
  %2354 = phi float [ %2350, %2348 ], [ 0.000000e+00, %2258 ]
  %2355 = phi float [ %2351, %2348 ], [ 0.000000e+00, %2258 ]
  %2356 = phi float [ %2292, %2348 ], [ 1.000000e+00, %2258 ]
  %2357 = add i32 %44, 192
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = lshr i32 %2359, 22
  %2361 = shl nuw nsw i32 %2360, 5
  %2362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2361)  ; LegacyF16ToF32(value)
  %2363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.i32 %2363, 0
  %2365 = and i32 %2364, 64
  %2366 = icmp eq i32 %2365, 0
  br i1 %2366, label %2400, label %2367

; <label>:2367                                    ; preds = %2352
  %2368 = add i32 %44, 400
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = add i32 %2370, 0
  %2372 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2371, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = and i32 %2374, 131072
  %2376 = icmp eq i32 %2375, 0
  %2377 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2372, %dx.types.Handle %81, float %1865, float %1866, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2378 = extractvalue %dx.types.ResRet.f32 %2377, 0
  %2379 = extractvalue %dx.types.ResRet.f32 %2377, 1
  %2380 = extractvalue %dx.types.ResRet.f32 %2377, 2
  %2381 = fmul fast float %2378, %283
  %2382 = fmul fast float %2379, %286
  %2383 = fmul fast float %2380, %289
  br i1 %2376, label %2390, label %2384

; <label>:2384                                    ; preds = %2367
  %2385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2386 = extractvalue %dx.types.CBufRet.f32 %2385, 0
  %2387 = fmul fast float %2386, %2381
  %2388 = fmul fast float %2386, %2382
  %2389 = fmul fast float %2386, %2383
  br label %2390

; <label>:2390                                    ; preds = %2384, %2367
  %2391 = phi float [ %2387, %2384 ], [ %2381, %2367 ]
  %2392 = phi float [ %2388, %2384 ], [ %2382, %2367 ]
  %2393 = phi float [ %2389, %2384 ], [ %2383, %2367 ]
  %2394 = fmul fast float %2391, %2362
  %2395 = select i1 %203, float %2394, float %2391
  %2396 = call float @dx.op.dot3.f32(i32 55, float %2395, float %2392, float %2393, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2397 = select i1 %203, float 0.000000e+00, float %2391
  %2398 = select i1 %203, float %2396, float %2392
  %2399 = select i1 %203, float 0.000000e+00, float %2393
  br label %2400

; <label>:2400                                    ; preds = %2390, %2352
  %2401 = phi float [ %2397, %2390 ], [ 0.000000e+00, %2352 ]
  %2402 = phi float [ %2398, %2390 ], [ 0.000000e+00, %2352 ]
  %2403 = phi float [ %2399, %2390 ], [ 0.000000e+00, %2352 ]
  %2404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.i32 %2404, 0
  %2406 = and i32 %2405, 26624
  %2407 = icmp eq i32 %2406, 0
  br i1 %2407, label %2431, label %2408

; <label>:2408                                    ; preds = %2400
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = and i32 %2410, 16384
  %2412 = icmp eq i32 %2411, 0
  br i1 %2412, label %2431, label %2413

; <label>:2413                                    ; preds = %2408
  %2414 = and i32 %2410, 1048576
  %2415 = icmp ne i32 %2414, 0
  %2416 = add i32 %44, 464
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2416, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = add i32 %2418, 0
  %2420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2419, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2421 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2420, %dx.types.Handle %82, float %1865, float %1866, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2422 = extractvalue %dx.types.ResRet.f32 %2421, 0
  %2423 = add i32 %44, 128
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2423, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = lshr i32 %2425, 24
  %2427 = uitofp i32 %2426 to float
  %2428 = fmul fast float %2422, 0x3F70101020000000
  %2429 = select i1 %2415, float 0x3F70101020000000, float %2428
  %2430 = fmul fast float %2429, %2427
  br label %2431

; <label>:2431                                    ; preds = %2413, %2408, %2400
  %2432 = phi float [ %2430, %2413 ], [ 0.000000e+00, %2408 ], [ 0.000000e+00, %2400 ]
  %2433 = add i32 %44, 128
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = and i32 %2435, 255
  %2437 = uitofp i32 %2436 to float
  %2438 = lshr i32 %2435, 8
  %2439 = and i32 %2438, 255
  %2440 = uitofp i32 %2439 to float
  %2441 = call float @dx.op.dot3.f32(i32 55, float %2273, float %2274, float %2275, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2442 = fmul fast float %2440, %2441
  %2443 = fadd fast float %2442, %2437
  %2444 = fmul fast float %2443, 0x3F70101020000000
  %2445 = call float @dx.op.unary.f32(i32 7, float %2444)  ; Saturate(value)
  br i1 %1765, label %2446, label %2454

; <label>:2446                                    ; preds = %2431
  %2447 = fsub fast float 1.000000e+00, %2053
  %2448 = fmul fast float %2447, %1754
  %2449 = fmul fast float %2447, %1755
  %2450 = fmul fast float %2447, %1756
  %2451 = fmul fast float %2447, %1757
  %2452 = fmul fast float %2447, %1758
  %2453 = fmul fast float %2447, %1759
  br label %2454

; <label>:2454                                    ; preds = %2446, %2431
  %2455 = phi float [ %2448, %2446 ], [ %1754, %2431 ]
  %2456 = phi float [ %2449, %2446 ], [ %1755, %2431 ]
  %2457 = phi float [ %2450, %2446 ], [ %1756, %2431 ]
  %2458 = phi float [ %2451, %2446 ], [ %1757, %2431 ]
  %2459 = phi float [ %2452, %2446 ], [ %1758, %2431 ]
  %2460 = phi float [ %2453, %2446 ], [ %1759, %2431 ]
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = and i32 %2462, 3
  %2464 = icmp eq i32 %2463, 3
  br i1 %2464, label %2543, label %2465

; <label>:2465                                    ; preds = %2454
  %2466 = and i32 %2462, 16
  %2467 = icmp ne i32 %2466, 0
  %2468 = select i1 %2467, float %2053, float 0.000000e+00
  %2469 = icmp eq i32 %2463, 0
  br i1 %2469, label %2470, label %2498

; <label>:2470                                    ; preds = %2465
  %2471 = and i32 %2462, 64
  %2472 = icmp ne i32 %2471, 0
  %2473 = select i1 %2472, float %2053, float 0.000000e+00
  %2474 = fsub fast float %2273, %2455
  %2475 = fsub fast float %2274, %2456
  %2476 = fsub fast float %2275, %2457
  %2477 = fmul fast float %2468, %2474
  %2478 = fmul fast float %2468, %2475
  %2479 = fmul fast float %2468, %2476
  %2480 = fadd fast float %2477, %2455
  %2481 = fadd fast float %2478, %2456
  %2482 = fadd fast float %2479, %2457
  %2483 = fsub fast float %2259, %1760
  %2484 = fmul fast float %2468, %2483
  %2485 = fadd fast float %2484, %1760
  %2486 = fsub fast float %2401, %2458
  %2487 = fsub fast float %2402, %2459
  %2488 = fsub fast float %2403, %2460
  %2489 = fmul fast float %2473, %2486
  %2490 = fmul fast float %2473, %2487
  %2491 = fmul fast float %2473, %2488
  %2492 = fadd fast float %2489, %2458
  %2493 = fadd fast float %2490, %2459
  %2494 = fadd fast float %2491, %2460
  %2495 = fsub fast float %2445, %1764
  %2496 = fmul fast float %2468, %2495
  %2497 = fadd fast float %2496, %1764
  br label %2543

; <label>:2498                                    ; preds = %2465
  %2499 = icmp eq i32 %2463, 1
  br i1 %2499, label %2500, label %2513

; <label>:2500                                    ; preds = %2498
  %2501 = fadd fast float %2273, -1.000000e+00
  %2502 = fadd fast float %2274, -1.000000e+00
  %2503 = fadd fast float %2275, -1.000000e+00
  %2504 = fmul fast float %2468, %2501
  %2505 = fmul fast float %2468, %2502
  %2506 = fmul fast float %2468, %2503
  %2507 = fadd fast float %2504, 1.000000e+00
  %2508 = fadd fast float %2505, 1.000000e+00
  %2509 = fadd fast float %2506, 1.000000e+00
  %2510 = fmul fast float %2507, %2455
  %2511 = fmul fast float %2508, %2456
  %2512 = fmul fast float %2509, %2457
  br label %2543

; <label>:2513                                    ; preds = %2498
  %2514 = icmp eq i32 %2463, 2
  br i1 %2514, label %2515, label %2543

; <label>:2515                                    ; preds = %2513
  %2516 = call float @dx.op.unary.f32(i32 24, float %2273)  ; Sqrt(value)
  %2517 = call float @dx.op.unary.f32(i32 24, float %2274)  ; Sqrt(value)
  %2518 = call float @dx.op.unary.f32(i32 24, float %2275)  ; Sqrt(value)
  %2519 = fadd fast float %2516, -5.000000e-01
  %2520 = fadd fast float %2517, -5.000000e-01
  %2521 = fadd fast float %2518, -5.000000e-01
  %2522 = fmul fast float %2519, %2468
  %2523 = fmul fast float %2520, %2468
  %2524 = fmul fast float %2521, %2468
  %2525 = fadd fast float %2522, 5.000000e-01
  %2526 = fadd fast float %2523, 5.000000e-01
  %2527 = fadd fast float %2524, 5.000000e-01
  %2528 = fmul fast float %2525, 2.000000e+00
  %2529 = fsub fast float 1.000000e+00, %2528
  %2530 = fmul fast float %2529, %2455
  %2531 = fadd fast float %2530, %2528
  %2532 = fmul fast float %2531, %2455
  %2533 = fmul fast float %2526, 2.000000e+00
  %2534 = fsub fast float 1.000000e+00, %2533
  %2535 = fmul fast float %2534, %2456
  %2536 = fadd fast float %2535, %2533
  %2537 = fmul fast float %2536, %2456
  %2538 = fmul fast float %2527, 2.000000e+00
  %2539 = fsub fast float 1.000000e+00, %2538
  %2540 = fmul fast float %2539, %2457
  %2541 = fadd fast float %2540, %2538
  %2542 = fmul fast float %2541, %2457
  br label %2543

; <label>:2543                                    ; preds = %2515, %2513, %2500, %2470, %2454
  %2544 = phi float [ %2455, %2454 ], [ %2532, %2515 ], [ %2455, %2513 ], [ %2510, %2500 ], [ %2480, %2470 ]
  %2545 = phi float [ %2456, %2454 ], [ %2537, %2515 ], [ %2456, %2513 ], [ %2511, %2500 ], [ %2481, %2470 ]
  %2546 = phi float [ %2457, %2454 ], [ %2542, %2515 ], [ %2457, %2513 ], [ %2512, %2500 ], [ %2482, %2470 ]
  %2547 = phi float [ %2458, %2454 ], [ %2458, %2515 ], [ %2458, %2513 ], [ %2458, %2500 ], [ %2492, %2470 ]
  %2548 = phi float [ %2459, %2454 ], [ %2459, %2515 ], [ %2459, %2513 ], [ %2459, %2500 ], [ %2493, %2470 ]
  %2549 = phi float [ %2460, %2454 ], [ %2460, %2515 ], [ %2460, %2513 ], [ %2460, %2500 ], [ %2494, %2470 ]
  %2550 = phi float [ %1760, %2454 ], [ %1760, %2515 ], [ %1760, %2513 ], [ %1760, %2500 ], [ %2485, %2470 ]
  %2551 = phi float [ %1764, %2454 ], [ %1764, %2515 ], [ %1764, %2513 ], [ %1764, %2500 ], [ %2497, %2470 ]
  %2552 = and i32 %2462, 12
  %2553 = icmp eq i32 %2552, 12
  br i1 %2553, label %2636, label %2554

; <label>:2554                                    ; preds = %2543
  %2555 = and i32 %2462, 2097184
  %2556 = icmp eq i32 %2555, 2097184
  %2557 = select i1 %2556, float %2053, float 0.000000e+00
  %2558 = and i32 %2462, 4194336
  %2559 = icmp eq i32 %2558, 4194336
  %2560 = select i1 %2559, float %2053, float 0.000000e+00
  %2561 = and i32 %2462, 8388640
  %2562 = icmp eq i32 %2561, 8388640
  %2563 = select i1 %2562, float %2053, float 0.000000e+00
  %2564 = and i32 %2462, 16384
  %2565 = icmp ne i32 %2564, 0
  %2566 = select i1 %2565, float %2053, float 0.000000e+00
  %2567 = icmp eq i32 %2552, 0
  br i1 %2567, label %2568, label %2584

; <label>:2568                                    ; preds = %2554
  %2569 = fsub fast float %2354, %1752
  %2570 = fsub fast float %2355, %1753
  %2571 = fmul fast float %2557, %2569
  %2572 = fmul fast float %2557, %2570
  %2573 = fadd fast float %2571, %1752
  %2574 = fadd fast float %2572, %1753
  %2575 = fsub fast float %2356, %1762
  %2576 = fmul fast float %2560, %2575
  %2577 = fadd fast float %2576, %1762
  %2578 = fsub fast float %2353, %1761
  %2579 = fmul fast float %2563, %2578
  %2580 = fadd fast float %2579, %1761
  %2581 = fsub fast float %2432, %1763
  %2582 = fmul fast float %2566, %2581
  %2583 = fadd fast float %2582, %1763
  br label %2636

; <label>:2584                                    ; preds = %2554
  %2585 = icmp eq i32 %2552, 4
  br i1 %2585, label %2586, label %2620

; <label>:2586                                    ; preds = %2584
  %2587 = fmul fast float %2557, %2354
  %2588 = fmul fast float %2557, %2355
  %2589 = fadd fast float %2587, %1752
  %2590 = fadd fast float %2588, %1753
  %2591 = call float @dx.op.binary.f32(i32 36, float %1762, float %2356)  ; FMin(a,b)
  %2592 = fsub fast float %2591, %1762
  %2593 = fmul fast float %2592, %2560
  %2594 = fadd fast float %2593, %1762
  %2595 = fadd fast float %2353, %1761
  %2596 = fmul fast float %2595, 0x3FF337FAE0000000
  %2597 = fmul fast float %1761, %1761
  %2598 = fmul fast float %2353, %2353
  %2599 = fadd fast float %2598, %2597
  %2600 = fmul fast float %2599, 0x3FE5152B00000000
  %2601 = fmul fast float %1761, 0xBFCC1F85E0000000
  %2602 = fmul fast float %2601, %2353
  %2603 = fadd fast float %2602, 0xBFE1363700000000
  %2604 = fadd fast float %2603, %2596
  %2605 = fsub fast float %2604, %2600
  %2606 = fmul fast float %2595, 0x3FBA6F0D00000000
  %2607 = fmul fast float %2599, 0x3FD0432880000000
  %2608 = fmul fast float %1761, 0xBFEF110800000000
  %2609 = fmul fast float %2608, %2353
  %2610 = fadd fast float %2609, 1.000000e+00
  %2611 = fsub fast float %2610, %2606
  %2612 = fadd fast float %2611, %2607
  %2613 = fdiv fast float %2605, %2612
  %2614 = call float @dx.op.unary.f32(i32 7, float %2613)  ; Saturate(value)
  %2615 = fsub fast float %2614, %1761
  %2616 = fmul fast float %2615, %2563
  %2617 = fadd fast float %2616, %1761
  %2618 = fmul fast float %2566, %2432
  %2619 = fadd fast float %2618, %1763
  br label %2636

; <label>:2620                                    ; preds = %2584
  %2621 = icmp eq i32 %2552, 8
  br i1 %2621, label %2622, label %2636

; <label>:2622                                    ; preds = %2620
  %2623 = fmul fast float %2557, %2354
  %2624 = fmul fast float %2557, %2355
  %2625 = fadd fast float %2623, %1752
  %2626 = fadd fast float %2624, %1753
  %2627 = call float @dx.op.binary.f32(i32 36, float %1762, float %2356)  ; FMin(a,b)
  %2628 = fsub fast float %2627, %1762
  %2629 = fmul fast float %2628, %2560
  %2630 = fadd fast float %2629, %1762
  %2631 = fsub fast float %2353, %1761
  %2632 = fmul fast float %2563, %2631
  %2633 = fadd fast float %2632, %1761
  %2634 = fmul fast float %2566, %2432
  %2635 = fadd fast float %2634, %1763
  br label %2636

; <label>:2636                                    ; preds = %2622, %2620, %2586, %2568, %2543, %2052, %1751
  %2637 = phi float [ %1752, %2543 ], [ %1752, %2052 ], [ %1752, %1751 ], [ %2573, %2568 ], [ %2589, %2586 ], [ %1752, %2620 ], [ %2625, %2622 ]
  %2638 = phi float [ %1753, %2543 ], [ %1753, %2052 ], [ %1753, %1751 ], [ %2574, %2568 ], [ %2590, %2586 ], [ %1753, %2620 ], [ %2626, %2622 ]
  %2639 = phi float [ %2544, %2543 ], [ %1754, %2052 ], [ %1754, %1751 ], [ %2544, %2568 ], [ %2544, %2586 ], [ %2544, %2620 ], [ %2544, %2622 ]
  %2640 = phi float [ %2545, %2543 ], [ %1755, %2052 ], [ %1755, %1751 ], [ %2545, %2568 ], [ %2545, %2586 ], [ %2545, %2620 ], [ %2545, %2622 ]
  %2641 = phi float [ %2546, %2543 ], [ %1756, %2052 ], [ %1756, %1751 ], [ %2546, %2568 ], [ %2546, %2586 ], [ %2546, %2620 ], [ %2546, %2622 ]
  %2642 = phi float [ %2547, %2543 ], [ %1757, %2052 ], [ %1757, %1751 ], [ %2547, %2568 ], [ %2547, %2586 ], [ %2547, %2620 ], [ %2547, %2622 ]
  %2643 = phi float [ %2548, %2543 ], [ %1758, %2052 ], [ %1758, %1751 ], [ %2548, %2568 ], [ %2548, %2586 ], [ %2548, %2620 ], [ %2548, %2622 ]
  %2644 = phi float [ %2549, %2543 ], [ %1759, %2052 ], [ %1759, %1751 ], [ %2549, %2568 ], [ %2549, %2586 ], [ %2549, %2620 ], [ %2549, %2622 ]
  %2645 = phi float [ %2550, %2543 ], [ %1760, %2052 ], [ %1760, %1751 ], [ %2550, %2568 ], [ %2550, %2586 ], [ %2550, %2620 ], [ %2550, %2622 ]
  %2646 = phi float [ %1761, %2543 ], [ %1761, %2052 ], [ %1761, %1751 ], [ %2580, %2568 ], [ %2617, %2586 ], [ %1761, %2620 ], [ %2633, %2622 ]
  %2647 = phi float [ %1762, %2543 ], [ %1762, %2052 ], [ %1762, %1751 ], [ %2577, %2568 ], [ %2594, %2586 ], [ %1762, %2620 ], [ %2630, %2622 ]
  %2648 = phi float [ %1763, %2543 ], [ %1763, %2052 ], [ %1763, %1751 ], [ %2583, %2568 ], [ %2619, %2586 ], [ %1763, %2620 ], [ %2635, %2622 ]
  %2649 = phi float [ %2551, %2543 ], [ %1764, %2052 ], [ %1764, %1751 ], [ %2551, %2568 ], [ %2551, %2586 ], [ %2551, %2620 ], [ %2551, %2622 ]
  %2650 = icmp ult i32 %367, 4
  %2651 = add i32 %44, 72
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = add i32 %44, 76
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = or i32 %2656, %2653
  %2658 = icmp eq i32 %2657, 0
  br i1 %2658, label %3521, label %2659

; <label>:2659                                    ; preds = %2636
  %2660 = add i32 %44, 332
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = lshr i32 %2662, 16
  %2664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2663)  ; LegacyF16ToF32(value)
  %2665 = fmul fast float %2664, 0x3F50624DE0000000
  %2666 = add i32 %44, 136
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = lshr i32 %2668, 16
  %2670 = and i32 %2669, 255
  %2671 = lshr i32 %2668, 24
  %2672 = add i32 %44, 340
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = and i32 %2674, 65535
  %2676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2675)  ; LegacyF16ToF32(value)
  %2677 = lshr i32 %2674, 16
  %2678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2677)  ; LegacyF16ToF32(value)
  %2679 = add i32 %44, 80
  %2680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2679, i32 undef)  ; BufferLoad(srv,index,wot)
  %2681 = extractvalue %dx.types.ResRet.i32 %2680, 0
  %2682 = lshr i32 %2681, 22
  %2683 = shl nuw nsw i32 %2682, 5
  %2684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2683)  ; LegacyF16ToF32(value)
  %2685 = shl i32 %2681, 4
  %2686 = and i32 %2685, 32752
  %2687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2686)  ; LegacyF16ToF32(value)
  %2688 = lshr i32 %2681, 7
  %2689 = and i32 %2688, 32752
  %2690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2689)  ; LegacyF16ToF32(value)
  %2691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2692 = extractvalue %dx.types.CBufRet.f32 %2691, 3
  %2693 = fmul fast float %2692, 1.000000e+03
  %2694 = fmul fast float %360, %2693
  %2695 = call float @dx.op.unary.f32(i32 22, float %2694)  ; Frc(value)
  %2696 = fadd fast float %2695, %350
  %2697 = fmul fast float %361, %2693
  %2698 = call float @dx.op.unary.f32(i32 22, float %2697)  ; Frc(value)
  %2699 = fadd fast float %2698, %352
  %2700 = fmul fast float %2665, %2693
  %2701 = call float @dx.op.unary.f32(i32 22, float %2700)  ; Frc(value)
  %2702 = fmul fast float %2701, 0x401921FB60000000
  %2703 = fadd fast float %2702, %2684
  %2704 = call float @dx.op.unary.f32(i32 13, float %2703)  ; Sin(value)
  %2705 = call float @dx.op.unary.f32(i32 12, float %2703)  ; Cos(value)
  %2706 = fsub fast float -0.000000e+00, %2704
  %2707 = fadd fast float %69, -5.000000e-01
  %2708 = fadd fast float %70, -5.000000e-01
  %2709 = fmul fast float %2676, %2707
  %2710 = fmul fast float %2678, %2708
  %2711 = fadd fast float %2709, 5.000000e-01
  %2712 = fadd fast float %2710, 5.000000e-01
  %2713 = fmul fast float %2687, %2711
  %2714 = fmul fast float %2690, %2712
  %2715 = fmul fast float %2705, %2713
  %2716 = call float @dx.op.tertiary.f32(i32 46, float %2706, float %2714, float %2715)  ; FMad(a,b,c)
  %2717 = fmul fast float %2704, %2713
  %2718 = call float @dx.op.tertiary.f32(i32 46, float %2705, float %2714, float %2717)  ; FMad(a,b,c)
  %2719 = fadd fast float %2696, %2716
  %2720 = fadd fast float %2699, %2718
  %2721 = icmp ugt i32 %2670, 1
  %2722 = icmp ugt i32 %2668, 33554431
  %2723 = or i1 %2722, %2721
  br i1 %2723, label %2724, label %2749

; <label>:2724                                    ; preds = %2659
  %2725 = add i32 %44, 276
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = lshr i32 %2727, 16
  %2729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2728)  ; LegacyF16ToF32(value)
  %2730 = fmul fast float %2692, %2729
  %2731 = call float @dx.op.unary.f32(i32 22, float %2730)  ; Frc(value)
  %2732 = mul nuw nsw i32 %2670, %2671
  %2733 = uitofp i32 %2732 to float
  %2734 = fmul fast float %2731, %2733
  %2735 = call float @dx.op.unary.f32(i32 27, float %2734)  ; Round_ni(value)
  %2736 = fptoui float %2735 to i32
  %2737 = urem i32 %2736, %2670
  %2738 = udiv i32 %2736, %2671
  %2739 = call float @dx.op.unary.f32(i32 22, float %2719)  ; Frc(value)
  %2740 = call float @dx.op.unary.f32(i32 22, float %2720)  ; Frc(value)
  %2741 = uitofp i32 %2737 to float
  %2742 = uitofp i32 %2738 to float
  %2743 = fadd fast float %2739, %2741
  %2744 = fadd fast float %2740, %2742
  %2745 = uitofp i32 %2670 to float
  %2746 = uitofp i32 %2671 to float
  %2747 = fdiv fast float %2743, %2745
  %2748 = fdiv fast float %2744, %2746
  br label %2749

; <label>:2749                                    ; preds = %2724, %2659
  %2750 = phi float [ %2747, %2724 ], [ %2719, %2659 ]
  %2751 = phi float [ %2748, %2724 ], [ %2720, %2659 ]
  %2752 = and i32 %2653, 16777216
  %2753 = icmp eq i32 %2752, 0
  br i1 %2753, label %2863, label %2754

; <label>:2754                                    ; preds = %2749
  %2755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2756 = extractvalue %dx.types.CBufRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.CBufRet.f32 %2755, 1
  %2758 = extractvalue %dx.types.CBufRet.f32 %2755, 2
  %2759 = fadd fast float %2756, %132
  %2760 = fadd fast float %2757, %133
  %2761 = fadd fast float %2758, %134
  %2762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2763 = extractvalue %dx.types.CBufRet.f32 %2762, 0
  %2764 = call float @dx.op.unary.f32(i32 7, float %2763)  ; Saturate(value)
  %2765 = icmp eq i32 %43, 65535
  br i1 %2765, label %2860, label %2766

; <label>:2766                                    ; preds = %2754
  %2767 = lshr i32 %43, 1
  %2768 = shl i32 %2767, 2
  %2769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2768, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.i32 %2769, 0
  %2771 = and i32 %43, 1
  %2772 = icmp ne i32 %2771, 0
  %2773 = lshr i32 %2770, 16
  %2774 = and i32 %2770, 65535
  %2775 = select i1 %2772, i32 %2773, i32 %2774
  %2776 = icmp eq i32 %2775, 65535
  br i1 %2776, label %2856, label %2777

; <label>:2777                                    ; preds = %2766
  %2778 = mul nuw nsw i32 %2775, 40
  %2779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2778, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.ResRet.f32 %2779, 1
  %2782 = extractvalue %dx.types.ResRet.f32 %2779, 2
  %2783 = add nuw nsw i32 %2778, 12
  %2784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2783, i32 undef)  ; BufferLoad(srv,index,wot)
  %2785 = extractvalue %dx.types.ResRet.f32 %2784, 0
  %2786 = extractvalue %dx.types.ResRet.f32 %2784, 1
  %2787 = extractvalue %dx.types.ResRet.f32 %2784, 2
  %2788 = add nuw nsw i32 %2778, 24
  %2789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.f32 %2789, 0
  %2791 = extractvalue %dx.types.ResRet.f32 %2789, 1
  %2792 = extractvalue %dx.types.ResRet.f32 %2789, 2
  %2793 = add nuw nsw i32 %2778, 36
  %2794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2795 = extractvalue %dx.types.ResRet.f32 %2794, 0
  %2796 = fsub fast float %2759, %2780
  %2797 = fsub fast float %2760, %2781
  %2798 = fsub fast float %2761, %2782
  %2799 = fmul fast float %2795, %2796
  %2800 = fmul fast float %2795, %2797
  %2801 = fmul fast float %2795, %2798
  %2802 = call float @dx.op.unary.f32(i32 27, float %2799)  ; Round_ni(value)
  %2803 = call float @dx.op.unary.f32(i32 27, float %2800)  ; Round_ni(value)
  %2804 = call float @dx.op.unary.f32(i32 27, float %2801)  ; Round_ni(value)
  %2805 = fadd fast float %2802, 5.000000e-01
  %2806 = fadd fast float %2803, 5.000000e-01
  %2807 = fadd fast float %2804, 5.000000e-01
  %2808 = fmul fast float %2805, %2785
  %2809 = fmul fast float %2806, %2786
  %2810 = fmul fast float %2807, %2787
  %2811 = shl i32 %43, 2
  %2812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2813 = extractvalue %dx.types.ResRet.i32 %2812, 0
  %2814 = add i32 %2813, 0
  %2815 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2814, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2816 = call float @dx.op.unary.f32(i32 22, float %2808)  ; Frc(value)
  %2817 = call float @dx.op.unary.f32(i32 22, float %2809)  ; Frc(value)
  %2818 = call float @dx.op.unary.f32(i32 22, float %2810)  ; Frc(value)
  %2819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2815, %dx.types.Handle %40, float %2816, float %2817, float %2818, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2820 = extractvalue %dx.types.ResRet.f32 %2819, 0
  %2821 = extractvalue %dx.types.ResRet.f32 %2819, 1
  %2822 = extractvalue %dx.types.ResRet.f32 %2819, 2
  %2823 = fmul fast float %2820, 1.023000e+03
  %2824 = fmul fast float %2821, 1.023000e+03
  %2825 = fmul fast float %2822, 1.023000e+03
  %2826 = fadd fast float %2823, 5.000000e-01
  %2827 = fadd fast float %2824, 5.000000e-01
  %2828 = fadd fast float %2825, 5.000000e-01
  %2829 = call float @dx.op.unary.f32(i32 27, float %2826)  ; Round_ni(value)
  %2830 = call float @dx.op.unary.f32(i32 27, float %2827)  ; Round_ni(value)
  %2831 = call float @dx.op.unary.f32(i32 27, float %2828)  ; Round_ni(value)
  %2832 = fsub fast float %2799, %2802
  %2833 = fsub fast float %2800, %2803
  %2834 = fsub fast float %2801, %2804
  %2835 = fmul fast float %2832, 7.500000e-01
  %2836 = fmul fast float %2833, 7.500000e-01
  %2837 = fmul fast float %2834, 7.500000e-01
  %2838 = fadd fast float %2802, 1.250000e-01
  %2839 = fadd fast float %2838, %2835
  %2840 = fadd fast float %2839, %2829
  %2841 = fadd fast float %2803, 1.250000e-01
  %2842 = fadd fast float %2841, %2836
  %2843 = fadd fast float %2842, %2830
  %2844 = fadd fast float %2804, 1.250000e-01
  %2845 = fadd fast float %2844, %2837
  %2846 = fadd fast float %2845, %2831
  %2847 = fmul fast float %2840, %2790
  %2848 = fmul fast float %2843, %2791
  %2849 = fmul fast float %2846, %2792
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = add i32 %2851, 0
  %2853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2852, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2853, %dx.types.Handle %38, float %2847, float %2848, float %2849, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2855 = extractvalue %dx.types.ResRet.f32 %2854, 0
  br label %2856

; <label>:2856                                    ; preds = %2777, %2766
  %2857 = phi float [ %2855, %2777 ], [ -1.000000e+00, %2766 ]
  %2858 = fadd fast float %2857, %2764
  %2859 = call float @dx.op.unary.f32(i32 7, float %2858)  ; Saturate(value)
  br label %2860

; <label>:2860                                    ; preds = %2856, %2754
  %2861 = phi float [ %2859, %2856 ], [ %2764, %2754 ]
  %2862 = fmul fast float %2861, %77
  br label %2863

; <label>:2863                                    ; preds = %2860, %2749
  %2864 = phi float [ %2862, %2860 ], [ %77, %2749 ]
  %2865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2866 = extractvalue %dx.types.ResRet.i32 %2865, 0
  %2867 = and i32 %2866, 256
  %2868 = icmp eq i32 %2867, 0
  br i1 %2868, label %2915, label %2869

; <label>:2869                                    ; preds = %2863
  %2870 = add i32 %44, 436
  %2871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2872 = extractvalue %dx.types.ResRet.i32 %2871, 0
  %2873 = add i32 %2872, 0
  %2874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2873, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2875 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2874, %dx.types.Handle %82, float %2750, float %2751, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2876 = extractvalue %dx.types.ResRet.f32 %2875, 0
  %2877 = add i32 %44, 148
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = shl i32 %2879, 4
  %2881 = and i32 %2880, 32752
  %2882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2881)  ; LegacyF16ToF32(value)
  %2883 = lshr i32 %2879, 7
  %2884 = and i32 %2883, 32752
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = fsub fast float 1.000000e+00, %2864
  %2887 = call float @dx.op.binary.f32(i32 35, float %2886, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2888 = bitcast float %2864 to i32
  %2889 = sitofp i32 %2888 to float
  %2890 = fadd fast float %2889, 0xC1CFBF8940000000
  %2891 = fmul fast float %2885, %2890
  %2892 = fadd fast float %2891, 0x41CFBF8940000000
  %2893 = fptosi float %2892 to i32
  %2894 = bitcast i32 %2893 to float
  %2895 = bitcast float %2887 to i32
  %2896 = sitofp i32 %2895 to float
  %2897 = fadd fast float %2896, 0xC1CFBF8940000000
  %2898 = fmul fast float %2897, %2885
  %2899 = fadd fast float %2898, 0x41CFBF8940000000
  %2900 = fptosi float %2899 to i32
  %2901 = bitcast i32 %2900 to float
  %2902 = fmul fast float %2894, %2882
  %2903 = fmul fast float %2901, %2882
  %2904 = fsub fast float %2887, %2902
  %2905 = fadd fast float %2903, %2887
  %2906 = call float @dx.op.unary.f32(i32 7, float %2904)  ; Saturate(value)
  %2907 = call float @dx.op.unary.f32(i32 7, float %2905)  ; Saturate(value)
  %2908 = fsub fast float %2876, %2906
  %2909 = fsub fast float %2907, %2906
  %2910 = bitcast float %2909 to i32
  %2911 = sub nsw i32 2129859010, %2910
  %2912 = bitcast i32 %2911 to float
  %2913 = fmul fast float %2912, %2908
  %2914 = call float @dx.op.unary.f32(i32 7, float %2913)  ; Saturate(value)
  br label %2915

; <label>:2915                                    ; preds = %2869, %2863
  %2916 = phi float [ %2914, %2869 ], [ %2864, %2863 ]
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = and i32 %2918, 128
  %2920 = icmp eq i32 %2919, 0
  br i1 %2920, label %2937, label %2921

; <label>:2921                                    ; preds = %2915
  %2922 = add i32 %44, 420
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = add i32 %2924, 0
  %2926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2925, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2927 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2926, %dx.types.Handle %82, float %2750, float %2751, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2928 = extractvalue %dx.types.ResRet.f32 %2927, 0
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = and i32 %2930, 524288
  %2932 = icmp ne i32 %2931, 0
  %2933 = fcmp fast ogt float %2928, 0x3FE0101020000000
  %2934 = select i1 %2933, float 1.000000e+00, float 0.000000e+00
  %2935 = select i1 %2932, float %2934, float %2928
  %2936 = fmul fast float %2935, %2916
  br label %2937

; <label>:2937                                    ; preds = %2921, %2915
  %2938 = phi float [ %2936, %2921 ], [ %2916, %2915 ]
  %2939 = fcmp fast ult float %2938, 0x3F70101020000000
  br i1 %2939, label %3521, label %2940

; <label>:2940                                    ; preds = %2937
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = and i32 %2942, 16
  %2944 = icmp eq i32 %2943, 0
  br i1 %2944, label %3143, label %2945

; <label>:2945                                    ; preds = %2940
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = add i32 %44, 372
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = add i32 %2950, 0
  %2952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2951, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2953 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2952, %dx.types.Handle %81, float %2750, float %2751, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2954 = extractvalue %dx.types.ResRet.f32 %2953, 0
  %2955 = extractvalue %dx.types.ResRet.f32 %2953, 1
  %2956 = extractvalue %dx.types.ResRet.f32 %2953, 2
  %2957 = extractvalue %dx.types.ResRet.f32 %2953, 3
  %2958 = and i32 %2947, 255
  %2959 = uitofp i32 %2958 to float
  %2960 = lshr i32 %2947, 8
  %2961 = and i32 %2960, 255
  %2962 = uitofp i32 %2961 to float
  %2963 = fmul fast float %2957, %2959
  %2964 = fadd fast float %2963, %2962
  %2965 = fmul fast float %2964, 0x3F70101000000000
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = and i32 %2967, 512
  %2969 = icmp eq i32 %2968, 0
  br i1 %2969, label %2978, label %2970

; <label>:2970                                    ; preds = %2945
  %2971 = add i32 %44, 452
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = add i32 %2973, 0
  %2975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2974, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2976 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2975, %dx.types.Handle %82, float %2750, float %2751, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2977 = extractvalue %dx.types.ResRet.f32 %2976, 0
  br label %2978

; <label>:2978                                    ; preds = %2970, %2945
  %2979 = phi float [ %2977, %2970 ], [ 1.000000e+00, %2945 ]
  %2980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.i32 %2980, 0
  %2982 = and i32 %2981, 33554432
  %2983 = icmp eq i32 %2982, 0
  br i1 %2983, label %3090, label %2984

; <label>:2984                                    ; preds = %2978
  %2985 = add i32 %44, 272
  %2986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.i32 %2986, 0
  %2988 = and i32 %2987, 65535
  %2989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2988)  ; LegacyF16ToF32(value)
  %2990 = lshr i32 %2987, 16
  %2991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2990)  ; LegacyF16ToF32(value)
  %2992 = add i32 %44, 276
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = and i32 %2994, 65535
  %2996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2995)  ; LegacyF16ToF32(value)
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = lshr i32 %2998, 24
  %3000 = uitofp i32 %2999 to float
  %3001 = fmul fast float %3000, 0x3F70101020000000
  %3002 = and i32 %2998, 255
  %3003 = uitofp i32 %3002 to float
  %3004 = fmul fast float %3003, 0x3F70101020000000
  %3005 = lshr i32 %2998, 8
  %3006 = and i32 %3005, 255
  %3007 = uitofp i32 %3006 to float
  %3008 = fmul fast float %3007, 0x3F70101020000000
  %3009 = lshr i32 %2998, 16
  %3010 = and i32 %3009, 255
  %3011 = uitofp i32 %3010 to float
  %3012 = fmul fast float %3011, 0x3F70101020000000
  %3013 = add i32 %44, 268
  %3014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3013, i32 undef)  ; BufferLoad(srv,index,wot)
  %3015 = extractvalue %dx.types.ResRet.i32 %3014, 0
  %3016 = lshr i32 %3015, 24
  %3017 = uitofp i32 %3016 to float
  %3018 = fmul fast float %3017, 0x3F70101020000000
  %3019 = and i32 %3015, 255
  %3020 = uitofp i32 %3019 to float
  %3021 = fmul fast float %3020, 0x3F70101020000000
  %3022 = lshr i32 %3015, 8
  %3023 = and i32 %3022, 255
  %3024 = uitofp i32 %3023 to float
  %3025 = fmul fast float %3024, 0x3F70101020000000
  %3026 = lshr i32 %3015, 16
  %3027 = and i32 %3026, 255
  %3028 = uitofp i32 %3027 to float
  %3029 = fmul fast float %3028, 0x3F70101020000000
  %3030 = bitcast float %2954 to i32
  %3031 = ashr i32 %3030, 1
  %3032 = sub nsw i32 1597463174, %3031
  %3033 = bitcast i32 %3032 to float
  %3034 = fmul fast float %2954, 5.000000e-01
  %3035 = fmul fast float %3033, %3033
  %3036 = fmul fast float %3035, %3034
  %3037 = fsub fast float 1.500000e+00, %3036
  %3038 = fmul fast float %3033, %2954
  %3039 = fmul fast float %3038, %3037
  %3040 = bitcast float %2955 to i32
  %3041 = ashr i32 %3040, 1
  %3042 = sub nsw i32 1597463174, %3041
  %3043 = bitcast i32 %3042 to float
  %3044 = fmul fast float %2955, 5.000000e-01
  %3045 = fmul fast float %3043, %3043
  %3046 = fmul fast float %3045, %3044
  %3047 = fsub fast float 1.500000e+00, %3046
  %3048 = fmul fast float %3043, %2955
  %3049 = fmul fast float %3048, %3047
  %3050 = bitcast float %2956 to i32
  %3051 = ashr i32 %3050, 1
  %3052 = sub nsw i32 1597463174, %3051
  %3053 = bitcast i32 %3052 to float
  %3054 = fmul fast float %2956, 5.000000e-01
  %3055 = fmul fast float %3053, %3053
  %3056 = fmul fast float %3055, %3054
  %3057 = fsub fast float 1.500000e+00, %3056
  %3058 = fmul fast float %3053, %2956
  %3059 = fmul fast float %3058, %3057
  %3060 = fsub fast float %3039, %3021
  %3061 = fsub fast float %3049, %3025
  %3062 = fsub fast float %3059, %3029
  %3063 = fmul fast float %3060, %2989
  %3064 = fmul fast float %3061, %2991
  %3065 = fmul fast float %3062, %2996
  %3066 = fadd fast float %3063, %3004
  %3067 = fadd fast float %3064, %3008
  %3068 = fadd fast float %3065, %3012
  %3069 = call float @dx.op.unary.f32(i32 7, float %3066)  ; Saturate(value)
  %3070 = call float @dx.op.unary.f32(i32 7, float %3067)  ; Saturate(value)
  %3071 = call float @dx.op.unary.f32(i32 7, float %3068)  ; Saturate(value)
  %3072 = fmul fast float %3069, %3069
  %3073 = fmul fast float %3070, %3070
  %3074 = fmul fast float %3071, %3071
  %3075 = fsub fast float %3072, %2954
  %3076 = fsub fast float %3073, %2955
  %3077 = fsub fast float %3074, %2956
  %3078 = fmul fast float %3075, %2979
  %3079 = fmul fast float %3076, %2979
  %3080 = fmul fast float %3077, %2979
  %3081 = fadd fast float %3078, %2954
  %3082 = fadd fast float %3079, %2955
  %3083 = fadd fast float %3080, %2956
  %3084 = fadd fast float %3001, %2965
  %3085 = fsub fast float %3084, %3018
  %3086 = call float @dx.op.unary.f32(i32 7, float %3085)  ; Saturate(value)
  %3087 = fsub fast float %3086, %2965
  %3088 = fmul fast float %3087, %2979
  %3089 = fadd fast float %3088, %2965
  br label %3143

; <label>:3090                                    ; preds = %2978
  %3091 = and i32 %2981, 134217728
  %3092 = icmp eq i32 %3091, 0
  br i1 %3092, label %3127, label %3093

; <label>:3093                                    ; preds = %3090
  %3094 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %3095 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %3096 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %3097 = fadd fast float %3094, -5.000000e-01
  %3098 = fadd fast float %3095, -5.000000e-01
  %3099 = fadd fast float %3096, -5.000000e-01
  %3100 = fmul fast float %3097, %2979
  %3101 = fmul fast float %3098, %2979
  %3102 = fmul fast float %3099, %2979
  %3103 = fadd fast float %3100, 5.000000e-01
  %3104 = fadd fast float %3101, 5.000000e-01
  %3105 = fadd fast float %3102, 5.000000e-01
  %3106 = call float @dx.op.unary.f32(i32 24, float %2954)  ; Sqrt(value)
  %3107 = call float @dx.op.unary.f32(i32 24, float %2955)  ; Sqrt(value)
  %3108 = call float @dx.op.unary.f32(i32 24, float %2956)  ; Sqrt(value)
  %3109 = fmul fast float %3103, 2.000000e+00
  %3110 = fsub fast float 1.000000e+00, %3109
  %3111 = fmul fast float %3110, %3106
  %3112 = fadd fast float %3111, %3109
  %3113 = fmul fast float %3112, %3106
  %3114 = fmul fast float %3104, 2.000000e+00
  %3115 = fsub fast float 1.000000e+00, %3114
  %3116 = fmul fast float %3115, %3107
  %3117 = fadd fast float %3116, %3114
  %3118 = fmul fast float %3117, %3107
  %3119 = fmul fast float %3105, 2.000000e+00
  %3120 = fsub fast float 1.000000e+00, %3119
  %3121 = fmul fast float %3120, %3108
  %3122 = fadd fast float %3121, %3119
  %3123 = fmul fast float %3122, %3108
  %3124 = fmul fast float %3113, %3113
  %3125 = fmul fast float %3118, %3118
  %3126 = fmul fast float %3123, %3123
  br label %3143

; <label>:3127                                    ; preds = %3090
  %3128 = fmul fast float %337, %337
  %3129 = fmul fast float %341, %341
  %3130 = fmul fast float %345, %345
  %3131 = fadd fast float %3128, -1.000000e+00
  %3132 = fadd fast float %3129, -1.000000e+00
  %3133 = fadd fast float %3130, -1.000000e+00
  %3134 = fmul fast float %2979, %3131
  %3135 = fmul fast float %2979, %3132
  %3136 = fmul fast float %2979, %3133
  %3137 = fadd fast float %3134, 1.000000e+00
  %3138 = fadd fast float %3135, 1.000000e+00
  %3139 = fadd fast float %3136, 1.000000e+00
  %3140 = fmul fast float %3137, %2954
  %3141 = fmul fast float %3138, %2955
  %3142 = fmul fast float %3139, %2956
  br label %3143

; <label>:3143                                    ; preds = %3127, %3093, %2984, %2940
  %3144 = phi float [ %3089, %2984 ], [ %2965, %3093 ], [ %2965, %3127 ], [ 0x3FA23C0BE0000000, %2940 ]
  %3145 = phi float [ %3081, %2984 ], [ %3124, %3093 ], [ %3140, %3127 ], [ 1.000000e+00, %2940 ]
  %3146 = phi float [ %3082, %2984 ], [ %3125, %3093 ], [ %3141, %3127 ], [ 1.000000e+00, %2940 ]
  %3147 = phi float [ %3083, %2984 ], [ %3126, %3093 ], [ %3142, %3127 ], [ 1.000000e+00, %2940 ]
  %3148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3149 = extractvalue %dx.types.CBufRet.i32 %3148, 1
  %3150 = and i32 %3149, 1
  %3151 = icmp ne i32 %3150, 0
  %3152 = add i32 %44, 356
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = and i32 %3154, 32
  %3156 = icmp ne i32 %3155, 0
  %3157 = and i1 %3151, %3156
  %3158 = select i1 %3157, float 1.000000e+00, float %3145
  %3159 = select i1 %3157, float 0x3FD3333340000000, float %3146
  %3160 = select i1 %3157, float 0x3FD3333340000000, float %3147
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = and i32 %3162, 32
  %3164 = icmp eq i32 %3163, 0
  br i1 %3164, label %3237, label %3165

; <label>:3165                                    ; preds = %3143
  %3166 = add i32 %44, 140
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3166, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = add i32 %44, 388
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3169, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = add i32 %3171, 0
  %3173 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3172, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3174 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3173, %dx.types.Handle %81, float %2750, float %2751, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3175 = extractvalue %dx.types.ResRet.f32 %3174, 0
  %3176 = extractvalue %dx.types.ResRet.f32 %3174, 1
  %3177 = extractvalue %dx.types.ResRet.f32 %3174, 2
  %3178 = extractvalue %dx.types.ResRet.f32 %3174, 3
  %3179 = and i32 %3168, 255
  %3180 = uitofp i32 %3179 to float
  %3181 = lshr i32 %3168, 8
  %3182 = and i32 %3181, 255
  %3183 = uitofp i32 %3182 to float
  %3184 = lshr i32 %3168, 16
  %3185 = and i32 %3184, 255
  %3186 = uitofp i32 %3185 to float
  %3187 = fmul fast float %3186, 0x3F70101000000000
  %3188 = fmul fast float %3175, %3180
  %3189 = fadd fast float %3188, %3183
  %3190 = fmul fast float %3189, 0x3F70101000000000
  %3191 = fadd fast float %3176, -5.000000e-01
  %3192 = fadd fast float %3178, -5.000000e-01
  %3193 = fmul fast float %3191, %3187
  %3194 = fmul fast float %3192, %3187
  %3195 = fadd fast float %3193, 5.000000e-01
  %3196 = fadd fast float %3194, 5.000000e-01
  %3197 = fmul fast float %3195, 2.000000e+00
  %3198 = fadd fast float %3197, -1.000000e+00
  %3199 = fmul fast float %3196, 2.000000e+00
  %3200 = fadd fast float %3199, -1.000000e+00
  %3201 = fadd fast float %3198, %3200
  %3202 = fmul fast float %3201, 5.000000e-01
  %3203 = fsub fast float %3198, %3200
  %3204 = fmul fast float %3203, 5.000000e-01
  %3205 = call float @dx.op.unary.f32(i32 6, float %3202)  ; FAbs(value)
  %3206 = fsub fast float 1.000000e+00, %3205
  %3207 = call float @dx.op.unary.f32(i32 6, float %3204)  ; FAbs(value)
  %3208 = fsub fast float %3206, %3207
  %3209 = call float @dx.op.dot3.f32(i32 55, float %3202, float %3204, float %3208, float %3202, float %3204, float %3208)  ; Dot3(ax,ay,az,bx,by,bz)
  %3210 = call float @dx.op.unary.f32(i32 25, float %3209)  ; Rsqrt(value)
  %3211 = fmul fast float %3202, %3210
  %3212 = fmul fast float %3204, %3210
  %3213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.i32 %3213, 0
  %3215 = and i32 %3214, 67108864
  %3216 = icmp eq i32 %3215, 0
  br i1 %3216, label %3233, label %3217

; <label>:3217                                    ; preds = %3165
  %3218 = add i32 %44, 328
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3218, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = and i32 %3220, 65535
  %3222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3221)  ; LegacyF16ToF32(value)
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = and i32 %3224, 65535
  %3226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3225)  ; LegacyF16ToF32(value)
  %3227 = lshr i32 %3220, 16
  %3228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3227)  ; LegacyF16ToF32(value)
  %3229 = fsub fast float %3190, %3228
  %3230 = fmul fast float %3229, %3222
  %3231 = fadd fast float %3230, %3226
  %3232 = call float @dx.op.unary.f32(i32 7, float %3231)  ; Saturate(value)
  br label %3233

; <label>:3233                                    ; preds = %3217, %3165
  %3234 = phi float [ %3232, %3217 ], [ %3190, %3165 ]
  %3235 = call float @dx.op.dot2.f32(i32 54, float %3211, float %3212, float %45, float %46)  ; Dot2(ax,ay,bx,by)
  %3236 = call float @dx.op.dot2.f32(i32 54, float %3211, float %3212, float %47, float %48)  ; Dot2(ax,ay,bx,by)
  br label %3237

; <label>:3237                                    ; preds = %3233, %3143
  %3238 = phi float [ %3234, %3233 ], [ 0x3FD6666660000000, %3143 ]
  %3239 = phi float [ %3235, %3233 ], [ 0.000000e+00, %3143 ]
  %3240 = phi float [ %3236, %3233 ], [ 0.000000e+00, %3143 ]
  %3241 = phi float [ %3177, %3233 ], [ 1.000000e+00, %3143 ]
  %3242 = add i32 %44, 208
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = lshr i32 %3244, 22
  %3246 = shl nuw nsw i32 %3245, 5
  %3247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3246)  ; LegacyF16ToF32(value)
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = and i32 %3249, 64
  %3251 = icmp eq i32 %3250, 0
  br i1 %3251, label %3285, label %3252

; <label>:3252                                    ; preds = %3237
  %3253 = add i32 %44, 404
  %3254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3253, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.i32 %3254, 0
  %3256 = add i32 %3255, 0
  %3257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3256, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3259 = extractvalue %dx.types.ResRet.i32 %3258, 0
  %3260 = and i32 %3259, 131072
  %3261 = icmp eq i32 %3260, 0
  %3262 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3257, %dx.types.Handle %81, float %2750, float %2751, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3263 = extractvalue %dx.types.ResRet.f32 %3262, 0
  %3264 = extractvalue %dx.types.ResRet.f32 %3262, 1
  %3265 = extractvalue %dx.types.ResRet.f32 %3262, 2
  %3266 = fmul fast float %3263, %325
  %3267 = fmul fast float %3264, %328
  %3268 = fmul fast float %3265, %331
  br i1 %3261, label %3275, label %3269

; <label>:3269                                    ; preds = %3252
  %3270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3271 = extractvalue %dx.types.CBufRet.f32 %3270, 0
  %3272 = fmul fast float %3271, %3266
  %3273 = fmul fast float %3271, %3267
  %3274 = fmul fast float %3271, %3268
  br label %3275

; <label>:3275                                    ; preds = %3269, %3252
  %3276 = phi float [ %3272, %3269 ], [ %3266, %3252 ]
  %3277 = phi float [ %3273, %3269 ], [ %3267, %3252 ]
  %3278 = phi float [ %3274, %3269 ], [ %3268, %3252 ]
  %3279 = fmul fast float %3276, %3247
  %3280 = select i1 %203, float %3279, float %3276
  %3281 = call float @dx.op.dot3.f32(i32 55, float %3280, float %3277, float %3278, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3282 = select i1 %203, float 0.000000e+00, float %3276
  %3283 = select i1 %203, float %3281, float %3277
  %3284 = select i1 %203, float 0.000000e+00, float %3278
  br label %3285

; <label>:3285                                    ; preds = %3275, %3237
  %3286 = phi float [ %3282, %3275 ], [ 0.000000e+00, %3237 ]
  %3287 = phi float [ %3283, %3275 ], [ 0.000000e+00, %3237 ]
  %3288 = phi float [ %3284, %3275 ], [ 0.000000e+00, %3237 ]
  %3289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3290 = extractvalue %dx.types.ResRet.i32 %3289, 0
  %3291 = and i32 %3290, 26624
  %3292 = icmp eq i32 %3291, 0
  br i1 %3292, label %3316, label %3293

; <label>:3293                                    ; preds = %3285
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = and i32 %3295, 16384
  %3297 = icmp eq i32 %3296, 0
  br i1 %3297, label %3316, label %3298

; <label>:3298                                    ; preds = %3293
  %3299 = and i32 %3295, 1048576
  %3300 = icmp ne i32 %3299, 0
  %3301 = add i32 %44, 468
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3301, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = add i32 %3303, 0
  %3305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3304, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3306 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3305, %dx.types.Handle %82, float %2750, float %2751, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 0
  %3308 = add i32 %44, 144
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = lshr i32 %3310, 24
  %3312 = uitofp i32 %3311 to float
  %3313 = fmul fast float %3307, 0x3F70101020000000
  %3314 = select i1 %3300, float 0x3F70101020000000, float %3313
  %3315 = fmul fast float %3314, %3312
  br label %3316

; <label>:3316                                    ; preds = %3298, %3293, %3285
  %3317 = phi float [ %3315, %3298 ], [ 0.000000e+00, %3293 ], [ 0.000000e+00, %3285 ]
  %3318 = add i32 %44, 144
  %3319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3318, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.i32 %3319, 0
  %3321 = and i32 %3320, 255
  %3322 = uitofp i32 %3321 to float
  %3323 = lshr i32 %3320, 8
  %3324 = and i32 %3323, 255
  %3325 = uitofp i32 %3324 to float
  %3326 = call float @dx.op.dot3.f32(i32 55, float %3158, float %3159, float %3160, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3327 = fmul fast float %3325, %3326
  %3328 = fadd fast float %3327, %3322
  %3329 = fmul fast float %3328, 0x3F70101020000000
  %3330 = call float @dx.op.unary.f32(i32 7, float %3329)  ; Saturate(value)
  br i1 %2650, label %3331, label %3339

; <label>:3331                                    ; preds = %3316
  %3332 = fsub fast float 1.000000e+00, %2938
  %3333 = fmul fast float %3332, %2639
  %3334 = fmul fast float %3332, %2640
  %3335 = fmul fast float %3332, %2641
  %3336 = fmul fast float %3332, %2642
  %3337 = fmul fast float %3332, %2643
  %3338 = fmul fast float %3332, %2644
  br label %3339

; <label>:3339                                    ; preds = %3331, %3316
  %3340 = phi float [ %3333, %3331 ], [ %2639, %3316 ]
  %3341 = phi float [ %3334, %3331 ], [ %2640, %3316 ]
  %3342 = phi float [ %3335, %3331 ], [ %2641, %3316 ]
  %3343 = phi float [ %3336, %3331 ], [ %2642, %3316 ]
  %3344 = phi float [ %3337, %3331 ], [ %2643, %3316 ]
  %3345 = phi float [ %3338, %3331 ], [ %2644, %3316 ]
  %3346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.i32 %3346, 0
  %3348 = and i32 %3347, 3
  %3349 = icmp eq i32 %3348, 3
  br i1 %3349, label %3428, label %3350

; <label>:3350                                    ; preds = %3339
  %3351 = and i32 %3347, 16
  %3352 = icmp ne i32 %3351, 0
  %3353 = select i1 %3352, float %2938, float 0.000000e+00
  %3354 = icmp eq i32 %3348, 0
  br i1 %3354, label %3355, label %3383

; <label>:3355                                    ; preds = %3350
  %3356 = and i32 %3347, 64
  %3357 = icmp ne i32 %3356, 0
  %3358 = select i1 %3357, float %2938, float 0.000000e+00
  %3359 = fsub fast float %3158, %3340
  %3360 = fsub fast float %3159, %3341
  %3361 = fsub fast float %3160, %3342
  %3362 = fmul fast float %3353, %3359
  %3363 = fmul fast float %3353, %3360
  %3364 = fmul fast float %3353, %3361
  %3365 = fadd fast float %3362, %3340
  %3366 = fadd fast float %3363, %3341
  %3367 = fadd fast float %3364, %3342
  %3368 = fsub fast float %3144, %2645
  %3369 = fmul fast float %3353, %3368
  %3370 = fadd fast float %3369, %2645
  %3371 = fsub fast float %3286, %3343
  %3372 = fsub fast float %3287, %3344
  %3373 = fsub fast float %3288, %3345
  %3374 = fmul fast float %3358, %3371
  %3375 = fmul fast float %3358, %3372
  %3376 = fmul fast float %3358, %3373
  %3377 = fadd fast float %3374, %3343
  %3378 = fadd fast float %3375, %3344
  %3379 = fadd fast float %3376, %3345
  %3380 = fsub fast float %3330, %2649
  %3381 = fmul fast float %3353, %3380
  %3382 = fadd fast float %3381, %2649
  br label %3428

; <label>:3383                                    ; preds = %3350
  %3384 = icmp eq i32 %3348, 1
  br i1 %3384, label %3385, label %3398

; <label>:3385                                    ; preds = %3383
  %3386 = fadd fast float %3158, -1.000000e+00
  %3387 = fadd fast float %3159, -1.000000e+00
  %3388 = fadd fast float %3160, -1.000000e+00
  %3389 = fmul fast float %3353, %3386
  %3390 = fmul fast float %3353, %3387
  %3391 = fmul fast float %3353, %3388
  %3392 = fadd fast float %3389, 1.000000e+00
  %3393 = fadd fast float %3390, 1.000000e+00
  %3394 = fadd fast float %3391, 1.000000e+00
  %3395 = fmul fast float %3392, %3340
  %3396 = fmul fast float %3393, %3341
  %3397 = fmul fast float %3394, %3342
  br label %3428

; <label>:3398                                    ; preds = %3383
  %3399 = icmp eq i32 %3348, 2
  br i1 %3399, label %3400, label %3428

; <label>:3400                                    ; preds = %3398
  %3401 = call float @dx.op.unary.f32(i32 24, float %3158)  ; Sqrt(value)
  %3402 = call float @dx.op.unary.f32(i32 24, float %3159)  ; Sqrt(value)
  %3403 = call float @dx.op.unary.f32(i32 24, float %3160)  ; Sqrt(value)
  %3404 = fadd fast float %3401, -5.000000e-01
  %3405 = fadd fast float %3402, -5.000000e-01
  %3406 = fadd fast float %3403, -5.000000e-01
  %3407 = fmul fast float %3404, %3353
  %3408 = fmul fast float %3405, %3353
  %3409 = fmul fast float %3406, %3353
  %3410 = fadd fast float %3407, 5.000000e-01
  %3411 = fadd fast float %3408, 5.000000e-01
  %3412 = fadd fast float %3409, 5.000000e-01
  %3413 = fmul fast float %3410, 2.000000e+00
  %3414 = fsub fast float 1.000000e+00, %3413
  %3415 = fmul fast float %3414, %3340
  %3416 = fadd fast float %3415, %3413
  %3417 = fmul fast float %3416, %3340
  %3418 = fmul fast float %3411, 2.000000e+00
  %3419 = fsub fast float 1.000000e+00, %3418
  %3420 = fmul fast float %3419, %3341
  %3421 = fadd fast float %3420, %3418
  %3422 = fmul fast float %3421, %3341
  %3423 = fmul fast float %3412, 2.000000e+00
  %3424 = fsub fast float 1.000000e+00, %3423
  %3425 = fmul fast float %3424, %3342
  %3426 = fadd fast float %3425, %3423
  %3427 = fmul fast float %3426, %3342
  br label %3428

; <label>:3428                                    ; preds = %3400, %3398, %3385, %3355, %3339
  %3429 = phi float [ %3340, %3339 ], [ %3417, %3400 ], [ %3340, %3398 ], [ %3395, %3385 ], [ %3365, %3355 ]
  %3430 = phi float [ %3341, %3339 ], [ %3422, %3400 ], [ %3341, %3398 ], [ %3396, %3385 ], [ %3366, %3355 ]
  %3431 = phi float [ %3342, %3339 ], [ %3427, %3400 ], [ %3342, %3398 ], [ %3397, %3385 ], [ %3367, %3355 ]
  %3432 = phi float [ %3343, %3339 ], [ %3343, %3400 ], [ %3343, %3398 ], [ %3343, %3385 ], [ %3377, %3355 ]
  %3433 = phi float [ %3344, %3339 ], [ %3344, %3400 ], [ %3344, %3398 ], [ %3344, %3385 ], [ %3378, %3355 ]
  %3434 = phi float [ %3345, %3339 ], [ %3345, %3400 ], [ %3345, %3398 ], [ %3345, %3385 ], [ %3379, %3355 ]
  %3435 = phi float [ %2645, %3339 ], [ %2645, %3400 ], [ %2645, %3398 ], [ %2645, %3385 ], [ %3370, %3355 ]
  %3436 = phi float [ %2649, %3339 ], [ %2649, %3400 ], [ %2649, %3398 ], [ %2649, %3385 ], [ %3382, %3355 ]
  %3437 = and i32 %3347, 12
  %3438 = icmp eq i32 %3437, 12
  br i1 %3438, label %3521, label %3439

; <label>:3439                                    ; preds = %3428
  %3440 = and i32 %3347, 2097184
  %3441 = icmp eq i32 %3440, 2097184
  %3442 = select i1 %3441, float %2938, float 0.000000e+00
  %3443 = and i32 %3347, 4194336
  %3444 = icmp eq i32 %3443, 4194336
  %3445 = select i1 %3444, float %2938, float 0.000000e+00
  %3446 = and i32 %3347, 8388640
  %3447 = icmp eq i32 %3446, 8388640
  %3448 = select i1 %3447, float %2938, float 0.000000e+00
  %3449 = and i32 %3347, 16384
  %3450 = icmp ne i32 %3449, 0
  %3451 = select i1 %3450, float %2938, float 0.000000e+00
  %3452 = icmp eq i32 %3437, 0
  br i1 %3452, label %3453, label %3469

; <label>:3453                                    ; preds = %3439
  %3454 = fsub fast float %3239, %2637
  %3455 = fsub fast float %3240, %2638
  %3456 = fmul fast float %3442, %3454
  %3457 = fmul fast float %3442, %3455
  %3458 = fadd fast float %3456, %2637
  %3459 = fadd fast float %3457, %2638
  %3460 = fsub fast float %3241, %2647
  %3461 = fmul fast float %3445, %3460
  %3462 = fadd fast float %3461, %2647
  %3463 = fsub fast float %3238, %2646
  %3464 = fmul fast float %3448, %3463
  %3465 = fadd fast float %3464, %2646
  %3466 = fsub fast float %3317, %2648
  %3467 = fmul fast float %3451, %3466
  %3468 = fadd fast float %3467, %2648
  br label %3521

; <label>:3469                                    ; preds = %3439
  %3470 = icmp eq i32 %3437, 4
  br i1 %3470, label %3471, label %3505

; <label>:3471                                    ; preds = %3469
  %3472 = fmul fast float %3442, %3239
  %3473 = fmul fast float %3442, %3240
  %3474 = fadd fast float %3472, %2637
  %3475 = fadd fast float %3473, %2638
  %3476 = call float @dx.op.binary.f32(i32 36, float %2647, float %3241)  ; FMin(a,b)
  %3477 = fsub fast float %3476, %2647
  %3478 = fmul fast float %3477, %3445
  %3479 = fadd fast float %3478, %2647
  %3480 = fadd fast float %3238, %2646
  %3481 = fmul fast float %3480, 0x3FF337FAE0000000
  %3482 = fmul fast float %2646, %2646
  %3483 = fmul fast float %3238, %3238
  %3484 = fadd fast float %3483, %3482
  %3485 = fmul fast float %3484, 0x3FE5152B00000000
  %3486 = fmul fast float %2646, 0xBFCC1F85E0000000
  %3487 = fmul fast float %3486, %3238
  %3488 = fadd fast float %3487, 0xBFE1363700000000
  %3489 = fadd fast float %3488, %3481
  %3490 = fsub fast float %3489, %3485
  %3491 = fmul fast float %3480, 0x3FBA6F0D00000000
  %3492 = fmul fast float %3484, 0x3FD0432880000000
  %3493 = fmul fast float %2646, 0xBFEF110800000000
  %3494 = fmul fast float %3493, %3238
  %3495 = fadd fast float %3494, 1.000000e+00
  %3496 = fsub fast float %3495, %3491
  %3497 = fadd fast float %3496, %3492
  %3498 = fdiv fast float %3490, %3497
  %3499 = call float @dx.op.unary.f32(i32 7, float %3498)  ; Saturate(value)
  %3500 = fsub fast float %3499, %2646
  %3501 = fmul fast float %3500, %3448
  %3502 = fadd fast float %3501, %2646
  %3503 = fmul fast float %3451, %3317
  %3504 = fadd fast float %3503, %2648
  br label %3521

; <label>:3505                                    ; preds = %3469
  %3506 = icmp eq i32 %3437, 8
  br i1 %3506, label %3507, label %3521

; <label>:3507                                    ; preds = %3505
  %3508 = fmul fast float %3442, %3239
  %3509 = fmul fast float %3442, %3240
  %3510 = fadd fast float %3508, %2637
  %3511 = fadd fast float %3509, %2638
  %3512 = call float @dx.op.binary.f32(i32 36, float %2647, float %3241)  ; FMin(a,b)
  %3513 = fsub fast float %3512, %2647
  %3514 = fmul fast float %3513, %3445
  %3515 = fadd fast float %3514, %2647
  %3516 = fsub fast float %3238, %2646
  %3517 = fmul fast float %3448, %3516
  %3518 = fadd fast float %3517, %2646
  %3519 = fmul fast float %3451, %3317
  %3520 = fadd fast float %3519, %2648
  br label %3521

; <label>:3521                                    ; preds = %3507, %3505, %3471, %3453, %3428, %2937, %2636
  %3522 = phi float [ %2637, %3428 ], [ %2637, %2937 ], [ %2637, %2636 ], [ %3458, %3453 ], [ %3474, %3471 ], [ %2637, %3505 ], [ %3510, %3507 ]
  %3523 = phi float [ %2638, %3428 ], [ %2638, %2937 ], [ %2638, %2636 ], [ %3459, %3453 ], [ %3475, %3471 ], [ %2638, %3505 ], [ %3511, %3507 ]
  %3524 = phi float [ %3429, %3428 ], [ %2639, %2937 ], [ %2639, %2636 ], [ %3429, %3453 ], [ %3429, %3471 ], [ %3429, %3505 ], [ %3429, %3507 ]
  %3525 = phi float [ %3430, %3428 ], [ %2640, %2937 ], [ %2640, %2636 ], [ %3430, %3453 ], [ %3430, %3471 ], [ %3430, %3505 ], [ %3430, %3507 ]
  %3526 = phi float [ %3431, %3428 ], [ %2641, %2937 ], [ %2641, %2636 ], [ %3431, %3453 ], [ %3431, %3471 ], [ %3431, %3505 ], [ %3431, %3507 ]
  %3527 = phi float [ %3432, %3428 ], [ %2642, %2937 ], [ %2642, %2636 ], [ %3432, %3453 ], [ %3432, %3471 ], [ %3432, %3505 ], [ %3432, %3507 ]
  %3528 = phi float [ %3433, %3428 ], [ %2643, %2937 ], [ %2643, %2636 ], [ %3433, %3453 ], [ %3433, %3471 ], [ %3433, %3505 ], [ %3433, %3507 ]
  %3529 = phi float [ %3434, %3428 ], [ %2644, %2937 ], [ %2644, %2636 ], [ %3434, %3453 ], [ %3434, %3471 ], [ %3434, %3505 ], [ %3434, %3507 ]
  %3530 = phi float [ %3435, %3428 ], [ %2645, %2937 ], [ %2645, %2636 ], [ %3435, %3453 ], [ %3435, %3471 ], [ %3435, %3505 ], [ %3435, %3507 ]
  %3531 = phi float [ %2646, %3428 ], [ %2646, %2937 ], [ %2646, %2636 ], [ %3465, %3453 ], [ %3502, %3471 ], [ %2646, %3505 ], [ %3518, %3507 ]
  %3532 = phi float [ %2647, %3428 ], [ %2647, %2937 ], [ %2647, %2636 ], [ %3462, %3453 ], [ %3479, %3471 ], [ %2647, %3505 ], [ %3515, %3507 ]
  %3533 = phi float [ %2648, %3428 ], [ %2648, %2937 ], [ %2648, %2636 ], [ %3468, %3453 ], [ %3504, %3471 ], [ %2648, %3505 ], [ %3520, %3507 ]
  %3534 = phi float [ %3436, %3428 ], [ %2649, %2937 ], [ %2649, %2636 ], [ %3436, %3453 ], [ %3436, %3471 ], [ %3436, %3505 ], [ %3436, %3507 ]
  %3535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3536 = extractvalue %dx.types.CBufRet.f32 %3535, 0
  %3537 = call float @dx.op.dot2.f32(i32 54, float %3522, float %3523, float %3522, float %3523)  ; Dot2(ax,ay,bx,by)
  %3538 = fmul fast float %3537, 0x3FE3333340000000
  %3539 = fsub fast float 1.000000e+00, %3538
  %3540 = call float @dx.op.dot3.f32(i32 55, float %3522, float %3523, float %3539, float %3522, float %3523, float %3539)  ; Dot3(ax,ay,az,bx,by,bz)
  %3541 = call float @dx.op.unary.f32(i32 25, float %3540)  ; Rsqrt(value)
  %3542 = fmul fast float %3541, %3522
  %3543 = fmul fast float %3541, %3523
  %3544 = fmul fast float %3539, %3541
  %3545 = fmul fast float %3544, %61
  %3546 = fmul fast float %3544, %62
  %3547 = fmul fast float %3544, %63
  %3548 = fmul fast float %3542, %57
  %3549 = fmul fast float %3542, %58
  %3550 = fmul fast float %3542, %59
  %3551 = fadd fast float %3545, %3548
  %3552 = fadd fast float %3546, %3549
  %3553 = fadd fast float %3547, %3550
  %3554 = fmul fast float %3543, %96
  %3555 = fmul fast float %3543, %97
  %3556 = fmul fast float %3543, %98
  %3557 = fadd fast float %3551, %3554
  %3558 = fadd fast float %3552, %3555
  %3559 = fadd fast float %3553, %3556
  %3560 = call float @dx.op.dot3.f32(i32 55, float %3557, float %3558, float %3559, float %3557, float %3558, float %3559)  ; Dot3(ax,ay,az,bx,by,bz)
  %3561 = call float @dx.op.unary.f32(i32 25, float %3560)  ; Rsqrt(value)
  %3562 = fmul fast float %3557, %3561
  %3563 = fmul fast float %3558, %3561
  %3564 = fmul fast float %3559, %3561
  %3565 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3566 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3567 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3568 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3569 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3570 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3571 = fadd fast float %3565, %132
  %3572 = fadd fast float %3566, %133
  %3573 = fadd fast float %3567, %134
  %3574 = fadd fast float %3568, %132
  %3575 = fadd fast float %3569, %133
  %3576 = fadd fast float %3570, %134
  %3577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3578 = extractvalue %dx.types.CBufRet.f32 %3577, 0
  %3579 = extractvalue %dx.types.CBufRet.f32 %3577, 1
  %3580 = extractvalue %dx.types.CBufRet.f32 %3577, 2
  %3581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3582 = extractvalue %dx.types.CBufRet.f32 %3581, 2
  %3583 = extractvalue %dx.types.CBufRet.f32 %3581, 3
  %3584 = fmul fast float %3578, %85
  %3585 = fmul fast float %3584, %3582
  %3586 = fmul fast float %3579, %86
  %3587 = fmul fast float %3586, %3583
  %3588 = fptoui float %3585 to i32
  %3589 = fptoui float %3587 to i32
  %3590 = fadd fast float %3578, -1.000000e+00
  %3591 = fadd fast float %3579, -1.000000e+00
  %3592 = fptoui float %3590 to i32
  %3593 = fptoui float %3591 to i32
  %3594 = call i32 @dx.op.binary.i32(i32 40, i32 %3588, i32 %3592)  ; UMin(a,b)
  %3595 = call i32 @dx.op.binary.i32(i32 40, i32 %3589, i32 %3593)  ; UMin(a,b)
  %3596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3597 = extractvalue %dx.types.CBufRet.f32 %3596, 2
  %3598 = extractvalue %dx.types.CBufRet.f32 %3596, 3
  %3599 = fmul fast float %3597, %80
  %3600 = fsub fast float %3599, %3598
  %3601 = fadd fast float %3580, -1.000000e+00
  %3602 = call float @dx.op.binary.f32(i32 36, float %3600, float %3601)  ; FMin(a,b)
  %3603 = fptoui float %3602 to i32
  %3604 = fptoui float %3578 to i32
  %3605 = fptoui float %3579 to i32
  %3606 = mul i32 %3603, %3605
  %3607 = add i32 %3606, %3595
  %3608 = mul i32 %3607, %3604
  %3609 = add i32 %3608, %3594
  %3610 = shl i32 %3609, 2
  %3611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.i32 %3611, 0
  %3613 = and i32 %3612, 1023
  %3614 = lshr i32 %3612, 10
  %3615 = icmp eq i32 %3613, 0
  br i1 %3615, label %4041, label %3616

; <label>:3616                                    ; preds = %3521
  %3617 = and i32 %3612, 1023
  br label %3618

; <label>:3618                                    ; preds = %3744, %3616
  %3619 = phi i32 [ %3694, %3744 ], [ 0, %3616 ]
  %3620 = phi float [ %3745, %3744 ], [ 0.000000e+00, %3616 ]
  %3621 = phi float [ %3746, %3744 ], [ %3536, %3616 ]
  %3622 = phi float [ %3747, %3744 ], [ %3534, %3616 ]
  %3623 = phi float [ %3748, %3744 ], [ %3533, %3616 ]
  %3624 = phi float [ %3749, %3744 ], [ 0.000000e+00, %3616 ]
  %3625 = phi float [ %3750, %3744 ], [ %3527, %3616 ]
  %3626 = phi float [ %3751, %3744 ], [ %3528, %3616 ]
  %3627 = phi float [ %3752, %3744 ], [ %3529, %3616 ]
  %3628 = phi float [ %3753, %3744 ], [ %3562, %3616 ]
  %3629 = phi float [ %3754, %3744 ], [ %3563, %3616 ]
  %3630 = phi float [ %3755, %3744 ], [ %3564, %3616 ]
  %3631 = phi float [ %3756, %3744 ], [ %3532, %3616 ]
  %3632 = phi float [ %3757, %3744 ], [ %3531, %3616 ]
  %3633 = phi float [ %3758, %3744 ], [ 0.000000e+00, %3616 ]
  %3634 = phi float [ %3759, %3744 ], [ %3530, %3616 ]
  %3635 = phi float [ %3760, %3744 ], [ %3524, %3616 ]
  %3636 = phi float [ %3761, %3744 ], [ %3525, %3616 ]
  %3637 = phi float [ %3762, %3744 ], [ %3526, %3616 ]
  %3638 = add nuw nsw i32 %3619, %3614
  %3639 = shl i32 %3638, 2
  %3640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3639, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.i32 %3640, 0
  %3642 = shl i32 %3641, 8
  %3643 = or i32 %3642, 48
  %3644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = extractvalue %dx.types.ResRet.f32 %3644, 1
  %3647 = extractvalue %dx.types.ResRet.f32 %3644, 2
  %3648 = extractvalue %dx.types.ResRet.f32 %3644, 3
  %3649 = or i32 %3642, 64
  %3650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.i32 %3650, 0
  %3652 = extractvalue %dx.types.ResRet.i32 %3650, 1
  %3653 = or i32 %3642, 80
  %3654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.f32 %3654, 2
  %3656 = extractvalue %dx.types.ResRet.f32 %3654, 3
  %3657 = or i32 %3642, 96
  %3658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.f32 %3658, 0
  %3660 = extractvalue %dx.types.ResRet.f32 %3658, 1
  %3661 = extractvalue %dx.types.ResRet.f32 %3658, 2
  %3662 = extractvalue %dx.types.ResRet.f32 %3658, 3
  %3663 = or i32 %3642, 112
  %3664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3663, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.f32 %3664, 2
  %3666 = or i32 %3642, 128
  %3667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3666, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.f32 %3667, 0
  %3669 = extractvalue %dx.types.ResRet.f32 %3667, 1
  %3670 = extractvalue %dx.types.ResRet.f32 %3667, 2
  %3671 = extractvalue %dx.types.ResRet.f32 %3667, 3
  %3672 = or i32 %3642, 144
  %3673 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3672, i32 undef)  ; BufferLoad(srv,index,wot)
  %3674 = extractvalue %dx.types.ResRet.f32 %3673, 0
  %3675 = extractvalue %dx.types.ResRet.f32 %3673, 1
  %3676 = extractvalue %dx.types.ResRet.f32 %3673, 2
  %3677 = extractvalue %dx.types.ResRet.f32 %3673, 3
  %3678 = or i32 %3642, 160
  %3679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3678, i32 undef)  ; BufferLoad(srv,index,wot)
  %3680 = extractvalue %dx.types.ResRet.f32 %3679, 0
  %3681 = extractvalue %dx.types.ResRet.f32 %3679, 1
  %3682 = extractvalue %dx.types.ResRet.f32 %3679, 2
  %3683 = extractvalue %dx.types.ResRet.f32 %3679, 3
  %3684 = or i32 %3642, 192
  %3685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3684, i32 undef)  ; BufferLoad(srv,index,wot)
  %3686 = extractvalue %dx.types.ResRet.i32 %3685, 0
  %3687 = or i32 %3642, 208
  %3688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3687, i32 undef)  ; BufferLoad(srv,index,wot)
  %3689 = extractvalue %dx.types.ResRet.f32 %3688, 0
  %3690 = or i32 %3642, 248
  %3691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3690, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.f32 %3691, 0
  %3693 = extractvalue %dx.types.ResRet.f32 %3691, 1
  %3694 = add nuw nsw i32 %3619, 1
  %3695 = bitcast float %3648 to i32
  %3696 = and i32 %3695, 2560
  %3697 = icmp eq i32 %3696, 0
  %3698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3642, i32 undef)  ; BufferLoad(srv,index,wot)
  %3699 = extractvalue %dx.types.ResRet.f32 %3698, 0
  %3700 = extractvalue %dx.types.ResRet.f32 %3698, 1
  %3701 = extractvalue %dx.types.ResRet.f32 %3698, 2
  %3702 = extractvalue %dx.types.ResRet.f32 %3698, 3
  %3703 = call float @dx.op.dot4.f32(i32 56, float %3699, float %3700, float %3701, float %3702, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3704 = or i32 %3642, 16
  %3705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.f32 %3705, 0
  %3707 = extractvalue %dx.types.ResRet.f32 %3705, 1
  %3708 = extractvalue %dx.types.ResRet.f32 %3705, 2
  %3709 = extractvalue %dx.types.ResRet.f32 %3705, 3
  %3710 = call float @dx.op.dot4.f32(i32 56, float %3706, float %3707, float %3708, float %3709, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3711 = or i32 %3642, 32
  %3712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3711, i32 undef)  ; BufferLoad(srv,index,wot)
  %3713 = extractvalue %dx.types.ResRet.f32 %3712, 0
  %3714 = extractvalue %dx.types.ResRet.f32 %3712, 1
  %3715 = extractvalue %dx.types.ResRet.f32 %3712, 2
  %3716 = extractvalue %dx.types.ResRet.f32 %3712, 3
  %3717 = call float @dx.op.dot4.f32(i32 56, float %3713, float %3714, float %3715, float %3716, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3718 = call float @dx.op.unary.f32(i32 27, float %3703)  ; Round_ni(value)
  %3719 = call float @dx.op.unary.f32(i32 6, float %3718)  ; FAbs(value)
  %3720 = call float @dx.op.unary.f32(i32 27, float %3710)  ; Round_ni(value)
  %3721 = call float @dx.op.unary.f32(i32 6, float %3720)  ; FAbs(value)
  %3722 = call float @dx.op.unary.f32(i32 6, float %3717)  ; FAbs(value)
  %3723 = call float @dx.op.unary.f32(i32 27, float %3722)  ; Round_ni(value)
  %3724 = fadd fast float %3721, %3719
  %3725 = fadd fast float %3724, %3723
  %3726 = fcmp fast oeq float %3725, 0.000000e+00
  %3727 = call float @dx.op.dot4.f32(i32 56, float %3699, float %3700, float %3701, float %3702, float %3571, float %3572, float %3573, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3728 = call float @dx.op.dot4.f32(i32 56, float %3706, float %3707, float %3708, float %3709, float %3571, float %3572, float %3573, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3729 = call float @dx.op.dot4.f32(i32 56, float %3699, float %3700, float %3701, float %3702, float %3574, float %3575, float %3576, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3730 = call float @dx.op.dot4.f32(i32 56, float %3706, float %3707, float %3708, float %3709, float %3574, float %3575, float %3576, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3731 = fsub fast float %3727, %3703
  %3732 = fsub fast float %3729, %3703
  %3733 = fsub fast float %3728, %3710
  %3734 = fsub fast float %3730, %3710
  %3735 = call float @dx.op.dot3.f32(i32 55, float %3645, float %3646, float %3647, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %3736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3737 = extractvalue %dx.types.CBufRet.f32 %3736, 2
  %3738 = fadd fast float %3737, %3735
  %3739 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3740 = extractvalue %dx.types.CBufRet.f32 %3736, 0
  %3741 = fcmp fast ogt float %3739, %3740
  %3742 = and i1 %3726, %3741
  %3743 = and i1 %3697, %3742
  br i1 %3743, label %3764, label %3744

; <label>:3744                                    ; preds = %4027, %3845, %3764, %3618
  %3745 = phi float [ %3620, %3764 ], [ %3848, %3845 ], [ %3848, %4027 ], [ %3620, %3618 ]
  %3746 = phi float [ %3621, %3764 ], [ %3621, %3845 ], [ %4002, %4027 ], [ %3621, %3618 ]
  %3747 = phi float [ %3622, %3764 ], [ %3622, %3845 ], [ %4000, %4027 ], [ %3622, %3618 ]
  %3748 = phi float [ %3623, %3764 ], [ %3623, %3845 ], [ %3972, %4027 ], [ %3623, %3618 ]
  %3749 = phi float [ %3624, %3764 ], [ %3624, %3845 ], [ %3970, %4027 ], [ %3624, %3618 ]
  %3750 = phi float [ %3625, %3764 ], [ %3625, %3845 ], [ %4037, %4027 ], [ %3625, %3618 ]
  %3751 = phi float [ %3626, %3764 ], [ %3626, %3845 ], [ %4038, %4027 ], [ %3626, %3618 ]
  %3752 = phi float [ %3627, %3764 ], [ %3627, %3845 ], [ %4039, %4027 ], [ %3627, %3618 ]
  %3753 = phi float [ %3628, %3764 ], [ %3628, %3845 ], [ %3951, %4027 ], [ %3628, %3618 ]
  %3754 = phi float [ %3629, %3764 ], [ %3629, %3845 ], [ %3952, %4027 ], [ %3629, %3618 ]
  %3755 = phi float [ %3630, %3764 ], [ %3630, %3845 ], [ %3953, %4027 ], [ %3630, %3618 ]
  %3756 = phi float [ %3631, %3764 ], [ %3631, %3845 ], [ %3980, %4027 ], [ %3631, %3618 ]
  %3757 = phi float [ %3632, %3764 ], [ %3632, %3845 ], [ %3977, %4027 ], [ %3632, %3618 ]
  %3758 = phi float [ %3633, %3764 ], [ %3633, %3845 ], [ %3974, %4027 ], [ %3633, %3618 ]
  %3759 = phi float [ %3634, %3764 ], [ %3634, %3845 ], [ %3968, %4027 ], [ %3634, %3618 ]
  %3760 = phi float [ %3635, %3764 ], [ %3635, %3845 ], [ %3963, %4027 ], [ %3635, %3618 ]
  %3761 = phi float [ %3636, %3764 ], [ %3636, %3845 ], [ %3964, %4027 ], [ %3636, %3618 ]
  %3762 = phi float [ %3637, %3764 ], [ %3637, %3845 ], [ %3965, %4027 ], [ %3637, %3618 ]
  %3763 = icmp eq i32 %3694, %3617
  br i1 %3763, label %4040, label %3618

; <label>:3764                                    ; preds = %3618
  %3765 = extractvalue %dx.types.ResRet.f32 %3664, 3
  %3766 = extractvalue %dx.types.ResRet.f32 %3664, 1
  %3767 = extractvalue %dx.types.ResRet.f32 %3664, 0
  %3768 = extractvalue %dx.types.ResRet.f32 %3654, 1
  %3769 = extractvalue %dx.types.ResRet.f32 %3654, 0
  %3770 = extractvalue %dx.types.ResRet.i32 %3650, 3
  %3771 = extractvalue %dx.types.ResRet.i32 %3650, 2
  %3772 = add i32 %3770, 0
  %3773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3772, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3775 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3773, %dx.types.Handle %3774, float %3703, float %3710, float undef, float undef, i32 0, i32 0, i32 undef, float %3731, float %3733, float undef, float %3732, float %3734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3776 = extractvalue %dx.types.ResRet.f32 %3775, 0
  %3777 = fmul fast float %3776, %3769
  %3778 = fadd fast float %3777, %3768
  %3779 = call float @dx.op.unary.f32(i32 7, float %3778)  ; Saturate(value)
  %3780 = fmul fast float %3703, %3659
  %3781 = call float @dx.op.tertiary.f32(i32 46, float %3660, float %3710, float %3780)  ; FMad(a,b,c)
  %3782 = fadd fast float %3781, %3767
  %3783 = fmul fast float %3703, %3661
  %3784 = call float @dx.op.tertiary.f32(i32 46, float %3662, float %3710, float %3783)  ; FMad(a,b,c)
  %3785 = fadd fast float %3784, %3766
  %3786 = fmul fast float %3731, %3659
  %3787 = call float @dx.op.tertiary.f32(i32 46, float %3660, float %3733, float %3786)  ; FMad(a,b,c)
  %3788 = fmul fast float %3731, %3661
  %3789 = call float @dx.op.tertiary.f32(i32 46, float %3662, float %3733, float %3788)  ; FMad(a,b,c)
  %3790 = fmul fast float %3732, %3659
  %3791 = call float @dx.op.tertiary.f32(i32 46, float %3660, float %3734, float %3790)  ; FMad(a,b,c)
  %3792 = fmul fast float %3732, %3661
  %3793 = call float @dx.op.tertiary.f32(i32 46, float %3662, float %3734, float %3792)  ; FMad(a,b,c)
  %3794 = add i32 %3771, 0
  %3795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3794, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3796 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3795, %dx.types.Handle %3774, float %3782, float %3785, float undef, float undef, i32 0, i32 0, i32 undef, float %3787, float %3789, float undef, float %3791, float %3793, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3797 = extractvalue %dx.types.ResRet.f32 %3796, 0
  %3798 = and i32 %3695, 1024
  %3799 = icmp ne i32 %3798, 0
  %3800 = fcmp fast ogt float %3797, 0x3FE0101020000000
  %3801 = uitofp i1 %3800 to float
  %3802 = select i1 %3799, float %3801, float %3797
  %3803 = and i32 %3695, 8192
  %3804 = icmp ne i32 %3803, 0
  %3805 = select i1 %3804, float %3765, float 1.000000e+00
  %3806 = fmul fast float %3703, 2.000000e+00
  %3807 = fadd fast float %3806, -1.000000e+00
  %3808 = call float @dx.op.unary.f32(i32 6, float %3807)  ; FAbs(value)
  %3809 = fmul fast float %3808, %3692
  %3810 = fsub fast float %3809, %3692
  %3811 = call float @dx.op.unary.f32(i32 7, float %3810)  ; Saturate(value)
  %3812 = fmul fast float %3710, 2.000000e+00
  %3813 = fadd fast float %3812, -1.000000e+00
  %3814 = call float @dx.op.unary.f32(i32 6, float %3813)  ; FAbs(value)
  %3815 = fmul fast float %3814, %3693
  %3816 = fsub fast float %3815, %3693
  %3817 = call float @dx.op.unary.f32(i32 7, float %3816)  ; Saturate(value)
  %3818 = fmul fast float %3722, %3655
  %3819 = fsub fast float %3818, %3655
  %3820 = call float @dx.op.unary.f32(i32 7, float %3819)  ; Saturate(value)
  %3821 = fmul fast float %3779, %3805
  %3822 = fmul fast float %3821, %3776
  %3823 = fmul fast float %3822, %3811
  %3824 = fmul fast float %3823, %3802
  %3825 = fmul fast float %3824, %3817
  %3826 = fmul fast float %3825, %3820
  %3827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3828 = extractvalue %dx.types.CBufRet.f32 %3827, 1
  %3829 = extractvalue %dx.types.CBufRet.f32 %3827, 0
  %3830 = fsub fast float %3739, %3829
  %3831 = fmul fast float %3830, %3828
  %3832 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  %3833 = fmul fast float %3826, %3656
  %3834 = fadd fast float %3826, %3656
  %3835 = fmul fast float %3834, %3665
  %3836 = fsub fast float %3835, %3665
  %3837 = call float @dx.op.unary.f32(i32 7, float %3836)  ; Saturate(value)
  %3838 = and i32 %3695, 128
  %3839 = icmp ne i32 %3838, 0
  %3840 = select i1 %3839, float %3837, float %3833
  %3841 = fmul fast float %3840, %3832
  %3842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3843 = extractvalue %dx.types.CBufRet.f32 %3842, 0
  %3844 = fcmp fast ugt float %3841, %3843
  br i1 %3844, label %3845, label %3744

; <label>:3845                                    ; preds = %3764
  %3846 = select i1 %3804, float %3841, float 0.000000e+00
  %3847 = fadd fast float %3846, %3620
  %3848 = call float @dx.op.unary.f32(i32 7, float %3847)  ; Saturate(value)
  br i1 %3804, label %3744, label %3849

; <label>:3849                                    ; preds = %3845
  %3850 = and i32 %3695, 4
  %3851 = and i32 %3695, 8
  %3852 = add i32 %3651, 0
  %3853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3852, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3854 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3855 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3853, %dx.types.Handle %3854, float %3782, float %3785, float undef, float undef, i32 0, i32 0, i32 undef, float %3787, float %3789, float undef, float %3791, float %3793, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3856 = extractvalue %dx.types.ResRet.f32 %3855, 0
  %3857 = extractvalue %dx.types.ResRet.f32 %3855, 1
  %3858 = extractvalue %dx.types.ResRet.f32 %3855, 2
  %3859 = extractvalue %dx.types.ResRet.f32 %3855, 3
  %3860 = bitcast float %3677 to i32
  %3861 = and i32 %3860, 255
  %3862 = uitofp i32 %3861 to float
  %3863 = lshr i32 %3860, 8
  %3864 = and i32 %3863, 255
  %3865 = uitofp i32 %3864 to float
  %3866 = fmul fast float %3859, %3862
  %3867 = fadd fast float %3866, %3865
  %3868 = fmul fast float %3867, 0x3F70101000000000
  %3869 = add i32 %3652, 0
  %3870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3869, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3871 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3870, %dx.types.Handle %3854, float %3782, float %3785, float undef, float undef, i32 0, i32 0, i32 undef, float %3787, float %3789, float undef, float %3791, float %3793, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3872 = extractvalue %dx.types.ResRet.f32 %3871, 0
  %3873 = extractvalue %dx.types.ResRet.f32 %3871, 1
  %3874 = extractvalue %dx.types.ResRet.f32 %3871, 2
  %3875 = extractvalue %dx.types.ResRet.f32 %3871, 3
  %3876 = bitcast float %3671 to i32
  %3877 = and i32 %3876, 255
  %3878 = uitofp i32 %3877 to float
  %3879 = lshr i32 %3876, 8
  %3880 = and i32 %3879, 255
  %3881 = uitofp i32 %3880 to float
  %3882 = lshr i32 %3876, 16
  %3883 = and i32 %3882, 255
  %3884 = uitofp i32 %3883 to float
  %3885 = fmul fast float %3884, 0x3F70101000000000
  %3886 = fmul fast float %3872, %3878
  %3887 = fadd fast float %3886, %3881
  %3888 = fmul fast float %3887, 0x3F70101000000000
  %3889 = fadd fast float %3873, -5.000000e-01
  %3890 = fadd fast float %3875, -5.000000e-01
  %3891 = fmul fast float %3889, %3885
  %3892 = fmul fast float %3890, %3885
  %3893 = fadd fast float %3891, 5.000000e-01
  %3894 = fadd fast float %3892, 5.000000e-01
  %3895 = fmul fast float %3856, %3680
  %3896 = fmul fast float %3857, %3681
  %3897 = fmul fast float %3858, %3682
  %3898 = fmul fast float %3893, 2.000000e+00
  %3899 = fadd fast float %3898, -1.000000e+00
  %3900 = fmul fast float %3894, 2.000000e+00
  %3901 = fadd fast float %3900, -1.000000e+00
  %3902 = fadd fast float %3899, %3901
  %3903 = fmul fast float %3902, 5.000000e-01
  %3904 = fsub fast float %3899, %3901
  %3905 = fmul fast float %3904, 5.000000e-01
  %3906 = call float @dx.op.unary.f32(i32 6, float %3903)  ; FAbs(value)
  %3907 = fsub fast float 1.000000e+00, %3906
  %3908 = call float @dx.op.unary.f32(i32 6, float %3905)  ; FAbs(value)
  %3909 = fsub fast float %3907, %3908
  %3910 = call float @dx.op.dot3.f32(i32 55, float %3903, float %3905, float %3909, float %3903, float %3905, float %3909)  ; Dot3(ax,ay,az,bx,by,bz)
  %3911 = call float @dx.op.unary.f32(i32 25, float %3910)  ; Rsqrt(value)
  %3912 = fmul fast float %3903, %3911
  %3913 = fmul fast float %3905, %3911
  %3914 = fmul fast float %3911, %3909
  %3915 = fmul fast float %3914, %3645
  %3916 = fmul fast float %3914, %3646
  %3917 = fmul fast float %3914, %3647
  %3918 = fmul fast float %3912, %3668
  %3919 = fmul fast float %3912, %3669
  %3920 = fmul fast float %3912, %3670
  %3921 = fadd fast float %3918, %3915
  %3922 = fadd fast float %3919, %3916
  %3923 = fadd fast float %3920, %3917
  %3924 = fmul fast float %3913, %3674
  %3925 = fmul fast float %3913, %3675
  %3926 = fmul fast float %3913, %3676
  %3927 = fadd fast float %3921, %3924
  %3928 = fadd fast float %3922, %3925
  %3929 = fadd fast float %3923, %3926
  %3930 = call float @dx.op.dot3.f32(i32 55, float %3927, float %3928, float %3929, float %3927, float %3928, float %3929)  ; Dot3(ax,ay,az,bx,by,bz)
  %3931 = call float @dx.op.unary.f32(i32 25, float %3930)  ; Rsqrt(value)
  %3932 = fmul fast float %3927, %3931
  %3933 = fmul fast float %3928, %3931
  %3934 = fmul fast float %3929, %3931
  %3935 = icmp ne i32 %3851, 0
  %3936 = select i1 %3935, float 1.000000e+00, float 0.000000e+00
  %3937 = fmul fast float %3841, %3936
  %3938 = and i32 %3695, 1
  %3939 = icmp eq i32 %3938, 0
  br i1 %3939, label %3940, label %3944

; <label>:3940                                    ; preds = %3849
  %3941 = fsub fast float %3932, %3628
  %3942 = fsub fast float %3933, %3629
  %3943 = fsub fast float %3934, %3630
  br label %3944

; <label>:3944                                    ; preds = %3940, %3849
  %3945 = phi float [ %3941, %3940 ], [ %3932, %3849 ]
  %3946 = phi float [ %3942, %3940 ], [ %3933, %3849 ]
  %3947 = phi float [ %3943, %3940 ], [ %3934, %3849 ]
  %3948 = fmul float %3947, %3937
  %3949 = fmul float %3946, %3937
  %3950 = fmul float %3945, %3937
  %3951 = fadd fast float %3950, %3628
  %3952 = fadd fast float %3949, %3629
  %3953 = fadd fast float %3948, %3630
  %3954 = icmp ne i32 %3850, 0
  %3955 = select i1 %3954, float 1.000000e+00, float 0.000000e+00
  %3956 = fmul fast float %3841, %3955
  %3957 = fsub fast float %3895, %3635
  %3958 = fsub fast float %3896, %3636
  %3959 = fsub fast float %3897, %3637
  %3960 = fmul fast float %3957, %3956
  %3961 = fmul fast float %3958, %3956
  %3962 = fmul fast float %3959, %3956
  %3963 = fadd fast float %3960, %3635
  %3964 = fadd fast float %3961, %3636
  %3965 = fadd fast float %3962, %3637
  %3966 = fsub fast float %3868, %3634
  %3967 = fmul fast float %3966, %3956
  %3968 = fadd fast float %3967, %3634
  %3969 = fmul fast float %3956, %3624
  %3970 = fsub fast float %3624, %3969
  %3971 = fmul fast float %3956, %3623
  %3972 = fsub fast float %3623, %3971
  %3973 = fadd fast float %3841, %3633
  %3974 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3975 = fsub fast float %3888, %3632
  %3976 = fmul fast float %3975, %3937
  %3977 = fadd fast float %3976, %3632
  %3978 = fsub fast float %3874, %3631
  %3979 = fmul fast float %3978, %3937
  %3980 = fadd fast float %3979, %3631
  %3981 = call float @dx.op.dot3.f32(i32 55, float %3895, float %3896, float %3897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.f32 %3982, 0
  %3984 = extractvalue %dx.types.CBufRet.f32 %3982, 1
  %3985 = fmul fast float %3984, %3981
  %3986 = fadd fast float %3985, %3983
  %3987 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  %3988 = bitcast float %3683 to i32
  %3989 = and i32 %3988, 65535
  %3990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3989)  ; LegacyF16ToF32(value)
  %3991 = lshr i32 %3988, 16
  %3992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3991)  ; LegacyF16ToF32(value)
  %3993 = fcmp fast oge float %3990, 0.000000e+00
  %3994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3995 = extractvalue %dx.types.CBufRet.f32 %3994, 0
  %3996 = select i1 %3993, float %3990, float %3995
  %3997 = fadd fast float %3996, %3992
  %3998 = fsub fast float %3987, %3622
  %3999 = fmul fast float %3998, %3841
  %4000 = fadd fast float %3999, %3622
  %4001 = fmul fast float %3997, %3841
  %4002 = call float @dx.op.binary.f32(i32 35, float %3621, float %4001)  ; FMax(a,b)
  %4003 = and i32 %3695, 16
  %4004 = icmp eq i32 %4003, 0
  br i1 %4004, label %4027, label %4005

; <label>:4005                                    ; preds = %3944
  %4006 = bitcast float %3689 to i32
  %4007 = add i32 %3686, 0
  %4008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4007, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4009 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4008, %dx.types.Handle %3854, float %3782, float %3785, float undef, float undef, i32 0, i32 0, i32 undef, float %3787, float %3789, float undef, float %3791, float %3793, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4010 = extractvalue %dx.types.ResRet.f32 %4009, 0
  %4011 = extractvalue %dx.types.ResRet.f32 %4009, 1
  %4012 = extractvalue %dx.types.ResRet.f32 %4009, 2
  %4013 = and i32 %4006, 65535
  %4014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4013)  ; LegacyF16ToF32(value)
  %4015 = fmul fast float %4010, %3680
  %4016 = fmul fast float %4011, %3681
  %4017 = fmul fast float %4012, %3682
  %4018 = and i32 %3695, 16384
  %4019 = icmp ne i32 %4018, 0
  %4020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4021 = extractvalue %dx.types.CBufRet.f32 %4020, 0
  %4022 = select i1 %4019, float %4021, float 1.000000e+00
  %4023 = fmul fast float %4022, %4014
  %4024 = fmul fast float %4015, %4023
  %4025 = fmul fast float %4016, %4023
  %4026 = fmul fast float %4017, %4023
  br label %4027

; <label>:4027                                    ; preds = %4005, %3944
  %4028 = phi float [ %4024, %4005 ], [ 0.000000e+00, %3944 ]
  %4029 = phi float [ %4025, %4005 ], [ 0.000000e+00, %3944 ]
  %4030 = phi float [ %4026, %4005 ], [ 0.000000e+00, %3944 ]
  %4031 = fsub fast float %4028, %3625
  %4032 = fsub fast float %4029, %3626
  %4033 = fsub fast float %4030, %3627
  %4034 = fmul fast float %4031, %3841
  %4035 = fmul fast float %4032, %3841
  %4036 = fmul fast float %4033, %3841
  %4037 = fadd fast float %4034, %3625
  %4038 = fadd fast float %4035, %3626
  %4039 = fadd fast float %4036, %3627
  br label %3744

; <label>:4040                                    ; preds = %3744
  br label %4041

; <label>:4041                                    ; preds = %4040, %3521
  %4042 = phi float [ 0.000000e+00, %3521 ], [ %3745, %4040 ]
  %4043 = phi float [ %3536, %3521 ], [ %3746, %4040 ]
  %4044 = phi float [ %3534, %3521 ], [ %3747, %4040 ]
  %4045 = phi float [ %3533, %3521 ], [ %3748, %4040 ]
  %4046 = phi float [ 0.000000e+00, %3521 ], [ %3749, %4040 ]
  %4047 = phi float [ %3527, %3521 ], [ %3750, %4040 ]
  %4048 = phi float [ %3528, %3521 ], [ %3751, %4040 ]
  %4049 = phi float [ %3529, %3521 ], [ %3752, %4040 ]
  %4050 = phi float [ %3562, %3521 ], [ %3753, %4040 ]
  %4051 = phi float [ %3563, %3521 ], [ %3754, %4040 ]
  %4052 = phi float [ %3564, %3521 ], [ %3755, %4040 ]
  %4053 = phi float [ %3532, %3521 ], [ %3756, %4040 ]
  %4054 = phi float [ %3531, %3521 ], [ %3757, %4040 ]
  %4055 = phi float [ 0.000000e+00, %3521 ], [ %3758, %4040 ]
  %4056 = phi float [ %3530, %3521 ], [ %3759, %4040 ]
  %4057 = phi float [ %3524, %3521 ], [ %3760, %4040 ]
  %4058 = phi float [ %3525, %3521 ], [ %3761, %4040 ]
  %4059 = phi float [ %3526, %3521 ], [ %3762, %4040 ]
  %4060 = call float @dx.op.dot3.f32(i32 55, float %4050, float %4051, float %4052, float %4050, float %4051, float %4052)  ; Dot3(ax,ay,az,bx,by,bz)
  %4061 = call float @dx.op.unary.f32(i32 25, float %4060)  ; Rsqrt(value)
  %4062 = fmul fast float %4061, %4050
  %4063 = fmul fast float %4061, %4051
  %4064 = fmul fast float %4061, %4052
  %4065 = fadd fast float %4055, %875
  %4066 = call float @dx.op.unary.f32(i32 7, float %4065)  ; Saturate(value)
  %4067 = call float @dx.op.dot3.f32(i32 55, float %4062, float %4063, float %4064, float %4062, float %4063, float %4064)  ; Dot3(ax,ay,az,bx,by,bz)
  %4068 = call float @dx.op.unary.f32(i32 25, float %4067)  ; Rsqrt(value)
  %4069 = fmul fast float %4068, %4062
  %4070 = fmul fast float %4068, %4063
  %4071 = fmul fast float %4068, %4064
  %4072 = fadd fast float %4056, 0xBFB99999A0000000
  %4073 = call float @dx.op.unary.f32(i32 7, float %4072)  ; Saturate(value)
  %4074 = fmul fast float %4073, 0x3FF1C71C80000000
  %4075 = call float @dx.op.binary.f32(i32 36, float %4056, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4076 = fsub fast float 1.000000e+00, %4074
  %4077 = call float @dx.op.unary.f32(i32 7, float %4076)  ; Saturate(value)
  %4078 = fmul fast float %4077, %4057
  %4079 = fmul fast float %4077, %4058
  %4080 = fmul fast float %4077, %4059
  %4081 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4082 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4083 = call float @dx.op.unary.f32(i32 7, float %4080)  ; Saturate(value)
  %4084 = fmul fast float %4074, %4057
  %4085 = fmul fast float %4074, %4058
  %4086 = fmul fast float %4074, %4059
  %4087 = fadd fast float %4084, %4075
  %4088 = fadd fast float %4085, %4075
  %4089 = fadd fast float %4086, %4075
  %4090 = call float @dx.op.unary.f32(i32 7, float %4087)  ; Saturate(value)
  %4091 = call float @dx.op.unary.f32(i32 7, float %4088)  ; Saturate(value)
  %4092 = call float @dx.op.unary.f32(i32 7, float %4089)  ; Saturate(value)
  %4093 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4094 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4095 = extractvalue %dx.types.CBufRet.i32 %4094, 3
  %4096 = and i32 %4095, 8
  %4097 = icmp ne i32 %4096, 0
  %4098 = call float @dx.op.binary.f32(i32 35, float %4081, float %4057)  ; FMax(a,b)
  %4099 = call float @dx.op.binary.f32(i32 35, float %4082, float %4057)  ; FMax(a,b)
  %4100 = call float @dx.op.binary.f32(i32 35, float %4083, float %4057)  ; FMax(a,b)
  %4101 = call float @dx.op.dot3.f32(i32 55, float %4081, float %4082, float %4083, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4102 = select i1 %203, float %4057, float %4081
  %4103 = select i1 %203, float %4101, float %4082
  %4104 = select i1 %203, float 1.000000e+00, float %4083
  %4105 = select i1 %4097, float %4098, float %4102
  %4106 = select i1 %4097, float %4099, float %4103
  %4107 = select i1 %4097, float %4100, float %4104
  %4108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4109 = extractvalue %dx.types.CBufRet.f32 %4108, 0
  %4110 = extractvalue %dx.types.CBufRet.f32 %4108, 1
  %4111 = extractvalue %dx.types.CBufRet.f32 %4108, 2
  %4112 = fadd fast float %4109, %132
  %4113 = fadd fast float %4110, %133
  %4114 = fadd fast float %4111, %134
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 0
  %4117 = extractvalue %dx.types.CBufRet.f32 %4115, 1
  %4118 = fsub fast float %4112, %4116
  %4119 = fsub fast float %4113, %4117
  %4120 = fmul fast float %4118, %4118
  %4121 = fmul fast float %4119, %4119
  %4122 = fadd fast float %4120, %4121
  %4123 = call float @dx.op.unary.f32(i32 24, float %4122)  ; Sqrt(value)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4115, 2
  %4125 = fcmp fast olt float %4123, %4124
  br i1 %4125, label %4126, label %4193

; <label>:4126                                    ; preds = %4041
  %4127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4128 = extractvalue %dx.types.CBufRet.f32 %4127, 0
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 0
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 0
  %4133 = extractvalue %dx.types.CBufRet.f32 %4127, 1
  %4134 = extractvalue %dx.types.CBufRet.f32 %4129, 1
  %4135 = extractvalue %dx.types.CBufRet.f32 %4131, 1
  %4136 = extractvalue %dx.types.CBufRet.f32 %4127, 3
  %4137 = extractvalue %dx.types.CBufRet.f32 %4129, 3
  %4138 = extractvalue %dx.types.CBufRet.f32 %4131, 3
  %4139 = fadd fast float %4136, %4112
  %4140 = fadd fast float %4137, %4113
  %4141 = fadd fast float %4138, %4114
  %4142 = fmul fast float %4139, %4128
  %4143 = call float @dx.op.tertiary.f32(i32 46, float %4140, float %4130, float %4142)  ; FMad(a,b,c)
  %4144 = call float @dx.op.tertiary.f32(i32 46, float %4141, float %4132, float %4143)  ; FMad(a,b,c)
  %4145 = fmul fast float %4139, %4133
  %4146 = call float @dx.op.tertiary.f32(i32 46, float %4140, float %4134, float %4145)  ; FMad(a,b,c)
  %4147 = call float @dx.op.tertiary.f32(i32 46, float %4141, float %4135, float %4146)  ; FMad(a,b,c)
  %4148 = fsub fast float %4144, %4136
  %4149 = fsub fast float %4147, %4137
  %4150 = fsub fast float %4148, %4116
  %4151 = fadd fast float %4150, %4124
  %4152 = fsub fast float %4149, %4117
  %4153 = fadd fast float %4152, %4124
  %4154 = extractvalue %dx.types.CBufRet.f32 %4115, 3
  %4155 = fmul fast float %4151, %4154
  %4156 = fmul fast float %4153, %4154
  %4157 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4158 = call float @dx.op.unary.f32(i32 7, float %4156)  ; Saturate(value)
  %4159 = fsub fast float 1.000000e+00, %4157
  %4160 = fsub fast float 1.000000e+00, %4158
  %4161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %4159, float %4160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4162 = extractvalue %dx.types.ResRet.f32 %4161, 0
  %4163 = fcmp fast ugt float %4162, 0.000000e+00
  br i1 %4163, label %4164, label %4467

; <label>:4164                                    ; preds = %4126
  %4165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.f32 %4165, 2
  %4167 = fmul fast float %4166, %4162
  %4168 = extractvalue %dx.types.CBufRet.f32 %4165, 3
  %4169 = fadd fast float %4168, %4167
  %4170 = extractvalue %dx.types.CBufRet.f32 %4131, 2
  %4171 = fadd fast float %4169, %4138
  %4172 = fmul fast float %4144, %4132
  %4173 = call float @dx.op.tertiary.f32(i32 46, float %4147, float %4135, float %4172)  ; FMad(a,b,c)
  %4174 = call float @dx.op.tertiary.f32(i32 46, float %4171, float %4170, float %4173)  ; FMad(a,b,c)
  %4175 = fsub fast float %4174, %4138
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 2
  %4178 = fsub fast float %4175, %4177
  %4179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %4159, float %4160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.ResRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.ResRet.f32 %4179, 2
  %4183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %4159, float %4160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4184 = extractvalue %dx.types.ResRet.f32 %4183, 0
  %4185 = extractvalue %dx.types.ResRet.f32 %4183, 1
  %4186 = extractvalue %dx.types.ResRet.f32 %4183, 2
  %4187 = fadd fast float %4184, %4180
  %4188 = fmul fast float %4187, 0x3F847AE140000000
  %4189 = fadd fast float %4185, %4181
  %4190 = fmul fast float %4189, 0x3F847AE140000000
  %4191 = fadd fast float %4186, %4182
  %4192 = fmul fast float %4191, 0x3F847AE140000000
  br label %4467

; <label>:4193                                    ; preds = %4041
  %4194 = and i32 %179, 1
  %4195 = icmp eq i32 %4194, 0
  br i1 %4195, label %4467, label %4196

; <label>:4196                                    ; preds = %4193
  %4197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.f32 %4197, 0
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 0
  %4201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4201, 0
  %4203 = extractvalue %dx.types.CBufRet.f32 %4197, 1
  %4204 = extractvalue %dx.types.CBufRet.f32 %4199, 1
  %4205 = extractvalue %dx.types.CBufRet.f32 %4201, 1
  %4206 = extractvalue %dx.types.CBufRet.f32 %4197, 3
  %4207 = extractvalue %dx.types.CBufRet.f32 %4199, 3
  %4208 = extractvalue %dx.types.CBufRet.f32 %4201, 3
  %4209 = fadd fast float %4206, %4112
  %4210 = fadd fast float %4207, %4113
  %4211 = fadd fast float %4208, %4114
  %4212 = fmul fast float %4209, %4198
  %4213 = call float @dx.op.tertiary.f32(i32 46, float %4210, float %4200, float %4212)  ; FMad(a,b,c)
  %4214 = call float @dx.op.tertiary.f32(i32 46, float %4211, float %4202, float %4213)  ; FMad(a,b,c)
  %4215 = fmul fast float %4209, %4203
  %4216 = call float @dx.op.tertiary.f32(i32 46, float %4210, float %4204, float %4215)  ; FMad(a,b,c)
  %4217 = call float @dx.op.tertiary.f32(i32 46, float %4211, float %4205, float %4216)  ; FMad(a,b,c)
  %4218 = fsub fast float %4214, %4206
  %4219 = fsub fast float %4217, %4207
  %4220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4221 = extractvalue %dx.types.CBufRet.f32 %4220, 0
  %4222 = extractvalue %dx.types.CBufRet.f32 %4220, 1
  %4223 = extractvalue %dx.types.CBufRet.f32 %4220, 2
  %4224 = extractvalue %dx.types.CBufRet.f32 %4220, 3
  %4225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4226 = extractvalue %dx.types.CBufRet.f32 %4225, 3
  %4227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4228 = extractvalue %dx.types.CBufRet.i32 %4227, 0
  %4229 = extractvalue %dx.types.CBufRet.i32 %4227, 1
  %4230 = udiv i32 %4229, %4228
  %4231 = fsub fast float %4218, %4221
  %4232 = fsub fast float %4219, %4222
  %4233 = call float @dx.op.binary.f32(i32 35, float %4231, float 0.000000e+00)  ; FMax(a,b)
  %4234 = call float @dx.op.binary.f32(i32 35, float %4232, float 0.000000e+00)  ; FMax(a,b)
  %4235 = call float @dx.op.binary.f32(i32 36, float %4233, float %4223)  ; FMin(a,b)
  %4236 = call float @dx.op.binary.f32(i32 36, float %4234, float %4224)  ; FMin(a,b)
  %4237 = add i32 %4228, -1
  %4238 = add i32 %4230, -1
  %4239 = fmul fast float %4235, %4226
  %4240 = fmul fast float %4236, %4226
  %4241 = fptoui float %4239 to i32
  %4242 = fptoui float %4240 to i32
  %4243 = call i32 @dx.op.binary.i32(i32 40, i32 %4241, i32 %4237)  ; UMin(a,b)
  %4244 = call i32 @dx.op.binary.i32(i32 40, i32 %4242, i32 %4238)  ; UMin(a,b)
  %4245 = mul i32 %4244, %4228
  %4246 = add i32 %4245, %4243
  %4247 = shl i32 %4246, 2
  %4248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4247, i32 undef)  ; BufferLoad(srv,index,wot)
  %4249 = extractvalue %dx.types.ResRet.i32 %4248, 0
  %4250 = icmp eq i32 %4249, -1
  br i1 %4250, label %4467, label %4251

; <label>:4251                                    ; preds = %4196
  %4252 = mul i32 %4249, 148
  %4253 = add i32 %4252, 4
  %4254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.f32 %4254, 0
  %4256 = add i32 %4252, 8
  %4257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4256, i32 undef)  ; BufferLoad(srv,index,wot)
  %4258 = extractvalue %dx.types.ResRet.f32 %4257, 0
  %4259 = add i32 %4252, 36
  %4260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4259, i32 undef)  ; BufferLoad(srv,index,wot)
  %4261 = extractvalue %dx.types.ResRet.f32 %4260, 0
  %4262 = add i32 %4252, 60
  %4263 = add i32 %4252, 92
  %4264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4263, i32 undef)  ; BufferLoad(srv,index,wot)
  %4265 = extractvalue %dx.types.ResRet.i32 %4264, 0
  %4266 = add i32 %4252, 116
  %4267 = fsub fast float %4218, %4255
  %4268 = fsub fast float %4219, %4258
  %4269 = fmul fast float %4226, %4267
  %4270 = fmul fast float %4226, %4268
  %4271 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4272 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4273 = fsub fast float 1.000000e+00, %4272
  %4274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4275 = extractvalue %dx.types.CBufRet.f32 %4274, 2
  %4276 = call float @dx.op.unary.f32(i32 83, float %4271)  ; DerivCoarseX(value)
  %4277 = call float @dx.op.unary.f32(i32 83, float %4273)  ; DerivCoarseX(value)
  %4278 = call float @dx.op.unary.f32(i32 84, float %4271)  ; DerivCoarseY(value)
  %4279 = call float @dx.op.unary.f32(i32 84, float %4273)  ; DerivCoarseY(value)
  %4280 = fmul fast float %4276, %4275
  %4281 = fmul fast float %4277, %4275
  %4282 = fmul fast float %4278, %4275
  %4283 = fmul fast float %4279, %4275
  %4284 = call float @dx.op.dot2.f32(i32 54, float %4282, float %4283, float %4282, float %4283)  ; Dot2(ax,ay,bx,by)
  %4285 = call float @dx.op.dot2.f32(i32 54, float %4280, float %4281, float %4280, float %4281)  ; Dot2(ax,ay,bx,by)
  %4286 = call float @dx.op.binary.f32(i32 35, float %4285, float %4284)  ; FMax(a,b)
  %4287 = call float @dx.op.unary.f32(i32 23, float %4286)  ; Log(value)
  %4288 = fmul fast float %4287, 5.000000e-01
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 1
  %4291 = fadd fast float %4290, %4288
  %4292 = call float @dx.op.binary.f32(i32 35, float %4291, float 0.000000e+00)  ; FMax(a,b)
  %4293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4294 = extractvalue %dx.types.CBufRet.f32 %4293, 3
  %4295 = fadd fast float %4294, %4292
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 3
  %4298 = fadd fast float %4295, %4297
  %4299 = add i32 %4265, 0
  %4300 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4299, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4301 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4300, i32 0)  ; GetDimensions(handle,mipLevel)
  %4302 = extractvalue %dx.types.Dimensions %4301, 0
  %4303 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4302)  ; FirstbitLo(value)
  %4304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.i32 %4304, 1
  %4306 = sub nsw i32 %4305, %4303
  %4307 = sitofp i32 %4306 to float
  %4308 = fsub fast float %4298, %4307
  %4309 = call float @dx.op.binary.f32(i32 35, float %4308, float 0.000000e+00)  ; FMax(a,b)
  %4310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4300, %dx.types.Handle %37, float %4271, float %4273, float %4261, float undef, i32 0, i32 0, i32 undef, float %4309)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4311 = extractvalue %dx.types.ResRet.f32 %4310, 0
  %4312 = fcmp ule float %4311, 0x3FE0101020000000
  %4313 = extractvalue %dx.types.CBufRet.i32 %4304, 0
  %4314 = and i32 %4313, 128
  %4315 = icmp ne i32 %4314, 0
  %4316 = and i1 %4312, %4315
  br i1 %4316, label %4467, label %4317

; <label>:4317                                    ; preds = %4251
  %4318 = add i32 %4252, 20
  %4319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4318, i32 undef)  ; BufferLoad(srv,index,wot)
  %4320 = extractvalue %dx.types.ResRet.f32 %4319, 0
  %4321 = add i32 %4252, 24
  %4322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4321, i32 undef)  ; BufferLoad(srv,index,wot)
  %4323 = extractvalue %dx.types.ResRet.f32 %4322, 0
  %4324 = add i32 %4252, 40
  %4325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4324, i32 undef)  ; BufferLoad(srv,index,wot)
  %4326 = extractvalue %dx.types.ResRet.f32 %4325, 0
  %4327 = add i32 %4252, 96
  %4328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4327, i32 undef)  ; BufferLoad(srv,index,wot)
  %4329 = extractvalue %dx.types.ResRet.i32 %4328, 0
  %4330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4331 = extractvalue %dx.types.CBufRet.f32 %4330, 2
  %4332 = fmul fast float %4331, %4271
  %4333 = fmul fast float %4331, %4273
  %4334 = extractvalue %dx.types.CBufRet.f32 %4330, 3
  %4335 = fadd fast float %4332, %4334
  %4336 = fadd fast float %4333, %4334
  %4337 = add i32 %4329, 0
  %4338 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4337, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4339 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4338, i32 0)  ; GetDimensions(handle,mipLevel)
  %4340 = extractvalue %dx.types.Dimensions %4339, 0
  %4341 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4340)  ; FirstbitLo(value)
  %4342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.i32 %4342, 1
  %4344 = sub nsw i32 %4343, %4341
  %4345 = sitofp i32 %4344 to float
  %4346 = fsub fast float %4295, %4345
  %4347 = call float @dx.op.binary.f32(i32 35, float %4346, float 0.000000e+00)  ; FMax(a,b)
  %4348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4338, %dx.types.Handle %37, float %4335, float %4336, float %4326, float undef, i32 0, i32 0, i32 undef, float %4347)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4349 = extractvalue %dx.types.ResRet.f32 %4348, 0
  %4350 = fmul fast float %4349, %4320
  %4351 = fadd fast float %4350, %4323
  %4352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.f32 %4352, 0
  %4354 = extractvalue %dx.types.CBufRet.f32 %4352, 1
  %4355 = extractvalue %dx.types.CBufRet.f32 %4352, 2
  %4356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.f32 %4356, 3
  %4358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4359 = extractvalue %dx.types.CBufRet.f32 %4358, 3
  %4360 = extractvalue %dx.types.CBufRet.f32 %4352, 3
  %4361 = fadd fast float %4357, %4218
  %4362 = fadd fast float %4359, %4219
  %4363 = fadd fast float %4351, %4360
  %4364 = fmul fast float %4361, %4353
  %4365 = call float @dx.op.tertiary.f32(i32 46, float %4362, float %4354, float %4364)  ; FMad(a,b,c)
  %4366 = call float @dx.op.tertiary.f32(i32 46, float %4363, float %4355, float %4365)  ; FMad(a,b,c)
  %4367 = fsub fast float %4366, %4360
  %4368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4369 = extractvalue %dx.types.CBufRet.f32 %4368, 2
  %4370 = fsub fast float %4367, %4369
  %4371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.i32 %4371, 0
  %4373 = call i32 @dx.op.binary.i32(i32 40, i32 %4249, i32 %4372)  ; UMin(a,b)
  %4374 = mul i32 %4373, 36
  %4375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4374, i32 undef)  ; BufferLoad(srv,index,wot)
  %4376 = extractvalue %dx.types.ResRet.i32 %4375, 0
  %4377 = add i32 %4374, 4
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 0
  %4380 = fmul fast float %4379, %4271
  %4381 = fmul fast float %4379, %4273
  %4382 = extractvalue %dx.types.CBufRet.f32 %4378, 1
  %4383 = fadd fast float %4380, %4382
  %4384 = fadd fast float %4381, %4382
  %4385 = icmp eq i32 %4376, 0
  br i1 %4385, label %4454, label %4386

; <label>:4386                                    ; preds = %4317
  br label %4387

; <label>:4387                                    ; preds = %4444, %4386
  %4388 = phi float [ %4445, %4444 ], [ 0.000000e+00, %4386 ]
  %4389 = phi float [ %4446, %4444 ], [ 0.000000e+00, %4386 ]
  %4390 = phi float [ %4447, %4444 ], [ 0.000000e+00, %4386 ]
  %4391 = phi float [ %4448, %4444 ], [ 0.000000e+00, %4386 ]
  %4392 = phi float [ %4449, %4444 ], [ 0.000000e+00, %4386 ]
  %4393 = phi float [ %4450, %4444 ], [ 0.000000e+00, %4386 ]
  %4394 = phi i32 [ %4451, %4444 ], [ 0, %4386 ]
  %4395 = shl i32 %4394, 2
  %4396 = add i32 %4262, %4395
  %4397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4396, i32 undef)  ; BufferLoad(srv,index,wot)
  %4398 = extractvalue %dx.types.ResRet.f32 %4397, 0
  %4399 = add i32 %4266, %4395
  %4400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4399, i32 undef)  ; BufferLoad(srv,index,wot)
  %4401 = extractvalue %dx.types.ResRet.i32 %4400, 0
  %4402 = add i32 %4401, 0
  %4403 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4402, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4404 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4403, i32 0)  ; GetDimensions(handle,mipLevel)
  %4405 = extractvalue %dx.types.Dimensions %4404, 0
  %4406 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4405)  ; FirstbitLo(value)
  %4407 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4408 = extractvalue %dx.types.CBufRet.i32 %4407, 1
  %4409 = sub nsw i32 %4408, %4406
  %4410 = sitofp i32 %4409 to float
  %4411 = fsub fast float %4295, %4410
  %4412 = call float @dx.op.binary.f32(i32 35, float %4411, float 0.000000e+00)  ; FMax(a,b)
  %4413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4403, %dx.types.Handle %37, float %4383, float %4384, float %4398, float undef, i32 0, i32 0, i32 undef, float %4412)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = fcmp fast ogt float %4414, 0.000000e+00
  br i1 %4415, label %4416, label %4444

; <label>:4416                                    ; preds = %4387
  %4417 = add i32 %4377, %4395
  %4418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4419 = extractvalue %dx.types.ResRet.i32 %4418, 0
  %4420 = and i32 %4419, 32767
  %4421 = mul nuw nsw i32 %4420, 928
  %4422 = add nuw nsw i32 %4421, 48
  %4423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4422, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.f32 %4423, 0
  %4425 = extractvalue %dx.types.ResRet.f32 %4423, 1
  %4426 = extractvalue %dx.types.ResRet.f32 %4423, 2
  %4427 = add nuw nsw i32 %4421, 60
  %4428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4427, i32 undef)  ; BufferLoad(srv,index,wot)
  %4429 = extractvalue %dx.types.ResRet.f32 %4428, 0
  %4430 = extractvalue %dx.types.ResRet.f32 %4428, 1
  %4431 = extractvalue %dx.types.ResRet.f32 %4428, 2
  %4432 = fmul fast float %4424, %4414
  %4433 = fmul fast float %4425, %4414
  %4434 = fmul fast float %4426, %4414
  %4435 = fadd fast float %4432, %4388
  %4436 = fadd fast float %4433, %4389
  %4437 = fadd fast float %4434, %4390
  %4438 = fmul fast float %4429, %4414
  %4439 = fmul fast float %4430, %4414
  %4440 = fmul fast float %4431, %4414
  %4441 = fadd fast float %4438, %4391
  %4442 = fadd fast float %4439, %4392
  %4443 = fadd fast float %4440, %4393
  br label %4444

; <label>:4444                                    ; preds = %4416, %4387
  %4445 = phi float [ %4435, %4416 ], [ %4388, %4387 ]
  %4446 = phi float [ %4436, %4416 ], [ %4389, %4387 ]
  %4447 = phi float [ %4437, %4416 ], [ %4390, %4387 ]
  %4448 = phi float [ %4441, %4416 ], [ %4391, %4387 ]
  %4449 = phi float [ %4442, %4416 ], [ %4392, %4387 ]
  %4450 = phi float [ %4443, %4416 ], [ %4393, %4387 ]
  %4451 = add nuw i32 %4394, 1
  %4452 = icmp eq i32 %4451, %4376
  br i1 %4452, label %4453, label %4387

; <label>:4453                                    ; preds = %4444
  br label %4454

; <label>:4454                                    ; preds = %4453, %4317
  %4455 = phi float [ 0.000000e+00, %4317 ], [ %4445, %4453 ]
  %4456 = phi float [ 0.000000e+00, %4317 ], [ %4446, %4453 ]
  %4457 = phi float [ 0.000000e+00, %4317 ], [ %4447, %4453 ]
  %4458 = phi float [ 0.000000e+00, %4317 ], [ %4448, %4453 ]
  %4459 = phi float [ 0.000000e+00, %4317 ], [ %4449, %4453 ]
  %4460 = phi float [ 0.000000e+00, %4317 ], [ %4450, %4453 ]
  %4461 = fadd fast float %4458, %4455
  %4462 = fmul fast float %4461, 0x3F847AE140000000
  %4463 = fadd fast float %4459, %4456
  %4464 = fmul fast float %4463, 0x3F847AE140000000
  %4465 = fadd fast float %4460, %4457
  %4466 = fmul fast float %4465, 0x3F847AE140000000
  br label %4467

; <label>:4467                                    ; preds = %4454, %4251, %4196, %4193, %4164, %4126
  %4468 = phi float [ %4178, %4164 ], [ -1.310720e+05, %4126 ], [ %4370, %4454 ], [ -1.310720e+05, %4196 ], [ -1.310720e+05, %4251 ], [ -1.310720e+05, %4193 ]
  %4469 = phi float [ %4188, %4164 ], [ 0.000000e+00, %4126 ], [ %4462, %4454 ], [ 0.000000e+00, %4196 ], [ 0.000000e+00, %4251 ], [ 0.000000e+00, %4193 ]
  %4470 = phi float [ %4190, %4164 ], [ 0.000000e+00, %4126 ], [ %4464, %4454 ], [ 0.000000e+00, %4196 ], [ 0.000000e+00, %4251 ], [ 0.000000e+00, %4193 ]
  %4471 = phi float [ %4192, %4164 ], [ 0.000000e+00, %4126 ], [ %4466, %4454 ], [ 0.000000e+00, %4196 ], [ 0.000000e+00, %4251 ], [ 0.000000e+00, %4193 ]
  %4472 = phi i1 [ true, %4164 ], [ false, %4126 ], [ true, %4454 ], [ false, %4196 ], [ false, %4251 ], [ false, %4193 ]
  %4473 = and i32 %179, 3
  %4474 = icmp eq i32 %4473, 1
  %4475 = select i1 %4474, float 1.000000e+00, float 0.000000e+00
  %4476 = fsub fast float %4468, %134
  %4477 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4478 = select i1 %4472, float %4477, float 1.000000e+00
  %4479 = fmul fast float %4478, %4475
  %4480 = icmp eq i32 %4473, 3
  %4481 = select i1 %4480, float 1.000000e+00, float %4479
  %4482 = call float @dx.op.binary.f32(i32 35, float %4042, float %4481)  ; FMax(a,b)
  %4483 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4484 = fcmp fast une float %4483, 0.000000e+00
  %4485 = call float @dx.op.dot3.f32(i32 55, float %132, float %133, float %134, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %4486 = call float @dx.op.unary.f32(i32 25, float %4485)  ; Rsqrt(value)
  br i1 %4484, label %4494, label %4487

; <label>:4487                                    ; preds = %4467
  %4488 = fmul fast float %4486, %132
  %4489 = fmul fast float %4486, %133
  %4490 = fmul fast float %4486, %134
  %4491 = fsub fast float -0.000000e+00, %4488
  %4492 = fsub fast float -0.000000e+00, %4489
  %4493 = fsub fast float -0.000000e+00, %4490
  br label %4662

; <label>:4494                                    ; preds = %4467
  %4495 = fmul fast float %132, %4486
  %4496 = fsub fast float -0.000000e+00, %4495
  %4497 = fmul fast float %133, %4486
  %4498 = fsub fast float -0.000000e+00, %4497
  %4499 = fmul fast float %134, %4486
  %4500 = fsub fast float -0.000000e+00, %4499
  %4501 = call float @dx.op.dot3.f32(i32 55, float %4496, float %4498, float %4500, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %4502 = fmul fast float %4483, 2.500000e+00
  %4503 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4504 = fmul fast float %4483, 0x4013FFFFE0000000
  %4505 = fadd fast float %4504, 0xBFFFFFFFE0000000
  %4506 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4507 = fmul fast float %4483, 0x4004000020000000
  %4508 = fadd fast float %4507, 0xBFF8000040000000
  %4509 = call float @dx.op.unary.f32(i32 7, float %4508)  ; Saturate(value)
  %4510 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4511 = fmul fast float %4072, 1.000000e+01
  %4512 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4513 = fmul fast float %4512, 2.000000e+00
  %4514 = fsub fast float 3.000000e+00, %4513
  %4515 = fmul fast float %4512, %4512
  %4516 = fmul fast float %4515, %4514
  %4517 = fsub fast float 1.000000e+00, %4516
  %4518 = fsub fast float 0x3FE3333340000000, %4093
  %4519 = fmul fast float %4518, 0x400AAAAAA0000000
  %4520 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4521 = fmul fast float %4517, %4520
  %4522 = fmul fast float %4105, 0x3FEA2B8620000000
  %4523 = fmul fast float %4106, 0x3FEA2B8620000000
  %4524 = fmul fast float %4107, 0x3FEA2B8620000000
  %4525 = fadd fast float %4522, 0x3FC81DFBA0000000
  %4526 = fmul fast float %4525, %4105
  %4527 = fadd fast float %4526, 0x3F910E6020000000
  %4528 = fadd fast float %4523, 0x3FC81DFBA0000000
  %4529 = fmul fast float %4528, %4106
  %4530 = fadd fast float %4529, 0x3F910E6020000000
  %4531 = fadd fast float %4524, 0x3FC81DFBA0000000
  %4532 = fmul fast float %4531, %4107
  %4533 = fadd fast float %4532, 0x3F910E6020000000
  %4534 = call float @dx.op.unary.f32(i32 7, float %4527)  ; Saturate(value)
  %4535 = call float @dx.op.unary.f32(i32 7, float %4530)  ; Saturate(value)
  %4536 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4537 = fsub fast float %4534, %4105
  %4538 = fsub fast float %4535, %4106
  %4539 = fsub fast float %4536, %4107
  %4540 = fmul fast float %4537, %4510
  %4541 = fmul fast float %4540, %4521
  %4542 = fmul fast float %4538, %4510
  %4543 = fmul fast float %4542, %4521
  %4544 = fmul fast float %4539, %4510
  %4545 = fmul fast float %4544, %4521
  %4546 = fadd fast float %4541, %4105
  %4547 = fadd fast float %4543, %4106
  %4548 = fadd fast float %4545, %4107
  %4549 = fmul fast float %4053, %4053
  %4550 = fmul fast float %4549, %4549
  %4551 = fadd fast float %4506, 1.000000e+00
  %4552 = fsub fast float %4551, %4521
  %4553 = call float @dx.op.unary.f32(i32 7, float %4552)  ; Saturate(value)
  %4554 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4555 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  %4556 = fsub fast float 1.000000e+00, %4550
  %4557 = call float @dx.op.binary.f32(i32 36, float %4553, float %4556)  ; FMin(a,b)
  %4558 = call float @dx.op.unary.f32(i32 7, float %4509)  ; Saturate(value)
  %4559 = call float @dx.op.binary.f32(i32 35, float %4557, float %4558)  ; FMax(a,b)
  %4560 = fadd fast float %4555, 0xBFE4CCCCC0000000
  %4561 = fmul fast float %4560, 0x4006DB6DA0000000
  %4562 = call float @dx.op.unary.f32(i32 7, float %4561)  ; Saturate(value)
  %4563 = fmul fast float %4562, 2.000000e+00
  %4564 = fsub fast float 3.000000e+00, %4563
  %4565 = bitcast float %4090 to i32
  %4566 = ashr i32 %4565, 1
  %4567 = add nsw i32 %4566, 532487669
  %4568 = bitcast i32 %4567 to float
  %4569 = fsub fast float 1.000000e+00, %4568
  %4570 = bitcast float %4569 to i32
  %4571 = sub nsw i32 2129859010, %4570
  %4572 = bitcast i32 %4571 to float
  %4573 = fmul fast float %4572, 2.000000e+00
  %4574 = bitcast float %4091 to i32
  %4575 = ashr i32 %4574, 1
  %4576 = add nsw i32 %4575, 532487669
  %4577 = bitcast i32 %4576 to float
  %4578 = fsub fast float 1.000000e+00, %4577
  %4579 = bitcast float %4578 to i32
  %4580 = sub nsw i32 2129859010, %4579
  %4581 = bitcast i32 %4580 to float
  %4582 = fmul fast float %4581, 2.000000e+00
  %4583 = bitcast float %4092 to i32
  %4584 = ashr i32 %4583, 1
  %4585 = add nsw i32 %4584, 532487669
  %4586 = bitcast i32 %4585 to float
  %4587 = fsub fast float 1.000000e+00, %4586
  %4588 = bitcast float %4587 to i32
  %4589 = sub nsw i32 2129859010, %4588
  %4590 = bitcast i32 %4589 to float
  %4591 = fmul fast float %4590, 2.000000e+00
  %4592 = fsub fast float 0x4002A9FBE0000000, %4573
  %4593 = fadd fast float %4573, 0x3FD54FDF00000000
  %4594 = bitcast float %4593 to i32
  %4595 = sub nsw i32 2129859010, %4594
  %4596 = bitcast i32 %4595 to float
  %4597 = fmul fast float %4596, %4592
  %4598 = fmul fast float %4597, %4597
  %4599 = fsub fast float 0x4002A9FBE0000000, %4582
  %4600 = fadd fast float %4582, 0x3FD54FDF00000000
  %4601 = bitcast float %4600 to i32
  %4602 = sub nsw i32 2129859010, %4601
  %4603 = bitcast i32 %4602 to float
  %4604 = fmul fast float %4603, %4599
  %4605 = fmul fast float %4604, %4604
  %4606 = fsub fast float 0x4002A9FBE0000000, %4591
  %4607 = fadd fast float %4591, 0x3FD54FDF00000000
  %4608 = bitcast float %4607 to i32
  %4609 = sub nsw i32 2129859010, %4608
  %4610 = bitcast i32 %4609 to float
  %4611 = fmul fast float %4610, %4606
  %4612 = fmul fast float %4611, %4611
  %4613 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4598)  ; FMax(a,b)
  %4614 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4605)  ; FMax(a,b)
  %4615 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4612)  ; FMax(a,b)
  %4616 = fsub fast float 1.000000e+00, %4501
  %4617 = fadd fast float %4616, %4517
  %4618 = call float @dx.op.unary.f32(i32 7, float %4617)  ; Saturate(value)
  %4619 = fsub fast float 1.000000e+00, %4481
  %4620 = fmul fast float %4559, %4619
  %4621 = fmul fast float %4562, %4562
  %4622 = fmul fast float %4621, %4620
  %4623 = fmul fast float %4622, %4564
  %4624 = fmul fast float %4619, 0xBFE99999A0000000
  %4625 = fmul fast float %4624, %4510
  %4626 = fmul fast float %4625, %4521
  %4627 = fadd fast float %4626, 1.000000e+00
  %4628 = fadd fast float %4093, -1.000000e+00
  %4629 = fmul fast float %4627, %4628
  %4630 = fadd fast float %4629, 1.000000e+00
  %4631 = fsub fast float %4613, %4090
  %4632 = fsub fast float %4614, %4091
  %4633 = fsub fast float %4615, %4092
  %4634 = fmul fast float %4623, %4631
  %4635 = fmul fast float %4623, %4632
  %4636 = fmul fast float %4623, %4633
  %4637 = fadd fast float %4634, %4090
  %4638 = fadd fast float %4635, %4091
  %4639 = fadd fast float %4636, %4092
  %4640 = fsub fast float %61, %4069
  %4641 = fsub fast float %62, %4070
  %4642 = fsub fast float %63, %4071
  %4643 = fmul fast float %4623, %4640
  %4644 = fmul fast float %4623, %4641
  %4645 = fmul fast float %4623, %4642
  %4646 = fadd fast float %4643, %4069
  %4647 = fadd fast float %4644, %4070
  %4648 = fadd fast float %4645, %4071
  %4649 = fmul fast float %4623, %4618
  %4650 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4651 = fsub fast float 1.000000e+00, %4650
  %4652 = fmul fast float %4649, %4651
  %4653 = fadd fast float %4652, %4650
  %4654 = fsub fast float 1.000000e+00, %4053
  %4655 = fmul fast float %4623, %4654
  %4656 = fadd fast float %4655, %4053
  %4657 = call float @dx.op.dot3.f32(i32 55, float %4646, float %4647, float %4648, float %4646, float %4647, float %4648)  ; Dot3(ax,ay,az,bx,by,bz)
  %4658 = call float @dx.op.unary.f32(i32 25, float %4657)  ; Rsqrt(value)
  %4659 = fmul fast float %4646, %4658
  %4660 = fmul fast float %4647, %4658
  %4661 = fmul fast float %4648, %4658
  br label %4662

; <label>:4662                                    ; preds = %4494, %4487
  %4663 = phi float [ %4493, %4487 ], [ %4500, %4494 ]
  %4664 = phi float [ %4492, %4487 ], [ %4498, %4494 ]
  %4665 = phi float [ %4491, %4487 ], [ %4496, %4494 ]
  %4666 = phi float [ %4490, %4487 ], [ %4499, %4494 ]
  %4667 = phi float [ %4489, %4487 ], [ %4497, %4494 ]
  %4668 = phi float [ %4488, %4487 ], [ %4495, %4494 ]
  %4669 = phi float [ %4090, %4487 ], [ %4637, %4494 ]
  %4670 = phi float [ %4091, %4487 ], [ %4638, %4494 ]
  %4671 = phi float [ %4092, %4487 ], [ %4639, %4494 ]
  %4672 = phi float [ %4069, %4487 ], [ %4659, %4494 ]
  %4673 = phi float [ %4070, %4487 ], [ %4660, %4494 ]
  %4674 = phi float [ %4071, %4487 ], [ %4661, %4494 ]
  %4675 = phi float [ %4105, %4487 ], [ %4546, %4494 ]
  %4676 = phi float [ %4106, %4487 ], [ %4547, %4494 ]
  %4677 = phi float [ %4107, %4487 ], [ %4548, %4494 ]
  %4678 = phi float [ %4093, %4487 ], [ %4653, %4494 ]
  %4679 = phi float [ %4053, %4487 ], [ %4656, %4494 ]
  %4680 = select i1 %203, float 0.000000e+00, float %4671
  %4681 = call float @dx.op.dot3.f32(i32 55, float %4672, float %4673, float %4674, float %4665, float %4664, float %4663)  ; Dot3(ax,ay,az,bx,by,bz)
  %4682 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4683 = call float @dx.op.dot3.f32(i32 55, float %4668, float %4667, float %4666, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %4684 = fmul fast float %4683, 2.000000e+00
  %4685 = fmul fast float %4684, %4672
  %4686 = fmul fast float %4684, %4673
  %4687 = fmul fast float %4684, %4674
  %4688 = fsub fast float %4668, %4685
  %4689 = fsub fast float %4667, %4686
  %4690 = fsub fast float %4666, %4687
  %4691 = call float @dx.op.binary.f32(i32 36, float %4679, float 1.000000e+00)  ; FMin(a,b)
  %4692 = fsub fast float 1.000000e+00, %4679
  %4693 = bitcast float %4692 to i32
  %4694 = sub nsw i32 2129859010, %4693
  %4695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4696 = extractvalue %dx.types.CBufRet.f32 %4695, 0
  %4697 = extractvalue %dx.types.CBufRet.f32 %4695, 1
  %4698 = fadd fast float %4696, %132
  %4699 = fadd fast float %4697, %133
  %4700 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %4701 = extractvalue %dx.types.CBufRet.i32 %4700, 0
  %4702 = icmp eq i32 %4701, 1
  br i1 %4702, label %4703, label %4738

; <label>:4703                                    ; preds = %4662
  %4704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4705 = extractvalue %dx.types.CBufRet.f32 %4704, 0
  %4706 = extractvalue %dx.types.CBufRet.f32 %4704, 1
  %4707 = fsub fast float %4698, %4705
  %4708 = fsub fast float %4699, %4706
  %4709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4710 = extractvalue %dx.types.CBufRet.f32 %4709, 0
  %4711 = extractvalue %dx.types.CBufRet.f32 %4709, 1
  %4712 = fmul fast float %4707, %4710
  %4713 = fmul fast float %4708, %4711
  %4714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %4712, float %4713, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4715 = extractvalue %dx.types.ResRet.f32 %4714, 0
  %4716 = fcmp fast ogt float %4715, 0.000000e+00
  %4717 = extractvalue %dx.types.CBufRet.i32 %4700, 3
  %4718 = icmp ne i32 %4717, 0
  %4719 = and i1 %4716, %4718
  br i1 %4719, label %4720, label %4738, !dx.controlflow.hints !86

; <label>:4720                                    ; preds = %4703
  %4721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4722 = extractvalue %dx.types.CBufRet.f32 %4721, 0
  %4723 = extractvalue %dx.types.CBufRet.f32 %4721, 1
  %4724 = fsub fast float %4698, %4722
  %4725 = fsub fast float %4699, %4723
  %4726 = fmul fast float %4724, %4724
  %4727 = fmul fast float %4725, %4725
  %4728 = fadd fast float %4726, %4727
  %4729 = uitofp i32 %4717 to float
  %4730 = fmul fast float %4729, %4729
  %4731 = fcmp fast ogt float %4728, %4730
  br i1 %4731, label %4738, label %4732

; <label>:4732                                    ; preds = %4720
  %4733 = call float @dx.op.unary.f32(i32 24, float %4728)  ; Sqrt(value)
  %4734 = fsub fast float %4729, %4733
  %4735 = fmul fast float %4734, 0x3F75555560000000
  %4736 = call float @dx.op.unary.f32(i32 7, float %4735)  ; Saturate(value)
  %4737 = call float @dx.op.binary.f32(i32 36, float %4736, float %4715)  ; FMin(a,b)
  br label %4738

; <label>:4738                                    ; preds = %4732, %4720, %4703, %4662
  %4739 = phi float [ 1.000000e+00, %4662 ], [ %4737, %4732 ], [ %4715, %4703 ], [ 0.000000e+00, %4720 ]
  %4740 = fcmp fast ogt float %4739, 0.000000e+00
  br i1 %4740, label %4741, label %4839, !dx.controlflow.hints !87

; <label>:4741                                    ; preds = %4738
  %4742 = fadd fast float %163, 5.000000e-01
  %4743 = call float @dx.op.unary.f32(i32 27, float %4742)  ; Round_ni(value)
  %4744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %161, float %162, float %4743, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4745 = extractvalue %dx.types.ResRet.f32 %4744, 0
  %4746 = extractvalue %dx.types.ResRet.f32 %4744, 1
  %4747 = extractvalue %dx.types.ResRet.f32 %4744, 2
  %4748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4749 = extractvalue %dx.types.CBufRet.f32 %4748, 3
  %4750 = fmul fast float %4749, %4745
  %4751 = fmul fast float %4749, %4746
  %4752 = fmul fast float %4749, %4747
  %4753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %161, float %162, float %4743, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4754 = extractvalue %dx.types.ResRet.f32 %4753, 0
  %4755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %161, float %162, float %4743, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4756 = extractvalue %dx.types.ResRet.f32 %4755, 0
  %4757 = extractvalue %dx.types.ResRet.f32 %4755, 1
  %4758 = fmul fast float %4756, 2.000000e+00
  %4759 = fmul fast float %4757, 2.000000e+00
  %4760 = fadd fast float %4758, -1.000000e+00
  %4761 = fadd fast float %4759, -1.000000e+00
  %4762 = fadd fast float %4760, %4761
  %4763 = fmul fast float %4762, 5.000000e-01
  %4764 = fsub fast float %4760, %4761
  %4765 = fmul fast float %4764, 5.000000e-01
  %4766 = call float @dx.op.unary.f32(i32 6, float %4763)  ; FAbs(value)
  %4767 = fsub fast float 1.000000e+00, %4766
  %4768 = call float @dx.op.unary.f32(i32 6, float %4765)  ; FAbs(value)
  %4769 = fsub fast float %4767, %4768
  %4770 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %4769)  ; FMax(a,b)
  %4771 = call float @dx.op.dot3.f32(i32 55, float %4763, float %4765, float %4770, float %4763, float %4765, float %4770)  ; Dot3(ax,ay,az,bx,by,bz)
  %4772 = bitcast float %4771 to i32
  %4773 = ashr i32 %4772, 1
  %4774 = sub nsw i32 1597250115, %4773
  %4775 = bitcast i32 %4774 to float
  %4776 = fmul fast float %4775, %4763
  %4777 = fmul fast float %4775, %4765
  %4778 = fmul fast float %4775, %4770
  %4779 = fsub fast float 1.000000e+00, %4754
  %4780 = fdiv fast float %4779, %4778
  %4781 = fmul fast float %4778, %61
  %4782 = fmul fast float %4778, %62
  %4783 = fmul fast float %4778, %63
  %4784 = fmul fast float %4776, %57
  %4785 = fmul fast float %4776, %58
  %4786 = fmul fast float %4776, %59
  %4787 = fadd fast float %4781, %4784
  %4788 = fadd fast float %4782, %4785
  %4789 = fadd fast float %4783, %4786
  %4790 = fmul fast float %4777, %96
  %4791 = fmul fast float %4777, %97
  %4792 = fmul fast float %4777, %98
  %4793 = fadd fast float %4787, %4790
  %4794 = fadd fast float %4788, %4791
  %4795 = fadd fast float %4789, %4792
  %4796 = call float @dx.op.dot3.f32(i32 55, float %4793, float %4794, float %4795, float %4793, float %4794, float %4795)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = call float @dx.op.unary.f32(i32 25, float %4796)  ; Rsqrt(value)
  %4798 = fmul fast float %4793, %4797
  %4799 = fmul fast float %4794, %4797
  %4800 = fmul fast float %4795, %4797
  %4801 = call float @dx.op.dot3.f32(i32 55, float %4672, float %4673, float %4674, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %4802 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4803 = fmul fast float %4802, 5.000000e-01
  %4804 = fadd fast float %4803, 5.000000e-01
  %4805 = fmul fast float %4804, %4754
  %4806 = call float @dx.op.dot3.f32(i32 55, float %4672, float %4673, float %4674, float %4798, float %4799, float %4800)  ; Dot3(ax,ay,az,bx,by,bz)
  %4807 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4808 = fmul fast float %4807, %4780
  %4809 = fadd fast float %4805, %4808
  %4810 = fsub fast float 5.000000e-01, %4803
  %4811 = fmul fast float %4810, %4675
  %4812 = fmul fast float %4810, %4676
  %4813 = fmul fast float %4810, %4677
  %4814 = fadd fast float %4809, %4811
  %4815 = fmul fast float %4814, %4750
  %4816 = fadd fast float %4809, %4812
  %4817 = fmul fast float %4816, %4751
  %4818 = fadd fast float %4809, %4813
  %4819 = fmul fast float %4818, %4752
  %4820 = call float @dx.op.dot3.f32(i32 55, float %4688, float %4689, float %4690, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %4821 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  %4822 = fmul fast float %4821, 5.000000e-01
  %4823 = fadd fast float %4822, 5.000000e-01
  %4824 = fmul fast float %4823, %4754
  %4825 = call float @dx.op.dot3.f32(i32 55, float %4688, float %4689, float %4690, float %4798, float %4799, float %4800)  ; Dot3(ax,ay,az,bx,by,bz)
  %4826 = call float @dx.op.unary.f32(i32 7, float %4825)  ; Saturate(value)
  %4827 = fmul fast float %4826, %4780
  %4828 = fadd fast float %4824, %4827
  %4829 = fsub fast float 5.000000e-01, %4822
  %4830 = fmul fast float %4829, %4675
  %4831 = fmul fast float %4829, %4676
  %4832 = fmul fast float %4829, %4677
  %4833 = fadd fast float %4828, %4830
  %4834 = fmul fast float %4833, %4750
  %4835 = fadd fast float %4828, %4831
  %4836 = fmul fast float %4835, %4751
  %4837 = fadd fast float %4828, %4832
  %4838 = fmul fast float %4837, %4752
  br label %4839

; <label>:4839                                    ; preds = %4741, %4738
  %4840 = phi float [ %4834, %4741 ], [ 0.000000e+00, %4738 ]
  %4841 = phi float [ %4836, %4741 ], [ 0.000000e+00, %4738 ]
  %4842 = phi float [ %4838, %4741 ], [ 0.000000e+00, %4738 ]
  %4843 = phi float [ %4815, %4741 ], [ 0.000000e+00, %4738 ]
  %4844 = phi float [ %4817, %4741 ], [ 0.000000e+00, %4738 ]
  %4845 = phi float [ %4819, %4741 ], [ 0.000000e+00, %4738 ]
  %4846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %4847 = extractvalue %dx.types.CBufRet.f32 %4846, 0
  %4848 = fcmp fast ogt float %4847, 0.000000e+00
  %4849 = and i1 %4740, %4848
  br i1 %4849, label %4850, label %5054, !dx.controlflow.hints !88

; <label>:4850                                    ; preds = %4839
  %4851 = extractvalue %dx.types.CBufRet.f32 %4695, 2
  %4852 = fadd fast float %4851, %134
  %4853 = fmul fast float %4672, 3.200000e+01
  %4854 = fmul fast float %4673, 3.200000e+01
  %4855 = fadd fast float %4698, %4853
  %4856 = fadd fast float %4699, %4854
  %4857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.f32 %4857, 0
  %4859 = extractvalue %dx.types.CBufRet.f32 %4857, 1
  %4860 = fsub fast float %4855, %4858
  %4861 = fsub fast float %4856, %4859
  %4862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4863 = extractvalue %dx.types.CBufRet.f32 %4862, 0
  %4864 = extractvalue %dx.types.CBufRet.f32 %4862, 1
  %4865 = fmul fast float %4860, %4863
  %4866 = fmul fast float %4861, %4864
  %4867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4868 = extractvalue %dx.types.CBufRet.f32 %4867, 0
  %4869 = extractvalue %dx.types.CBufRet.f32 %4867, 1
  %4870 = fsub fast float %4698, %4868
  %4871 = fsub fast float %4699, %4869
  %4872 = fmul fast float %4870, %4870
  %4873 = fmul fast float %4871, %4871
  %4874 = fadd fast float %4872, %4873
  %4875 = call float @dx.op.unary.f32(i32 24, float %4874)  ; Sqrt(value)
  %4876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4877 = extractvalue %dx.types.CBufRet.f32 %4876, 0
  %4878 = extractvalue %dx.types.CBufRet.f32 %4876, 1
  %4879 = fsub fast float %4875, %4877
  %4880 = fdiv fast float %4879, %4878
  %4881 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4882 = fmul fast float %4881, 2.000000e+00
  %4883 = fsub fast float 3.000000e+00, %4882
  %4884 = fmul fast float %4881, %4881
  %4885 = fmul fast float %4884, %4883
  %4886 = fcmp fast oge float %4865, 0.000000e+00
  %4887 = fcmp fast ole float %4865, 1.000000e+00
  %4888 = and i1 %4887, %4886
  %4889 = fcmp fast oge float %4866, 0.000000e+00
  %4890 = and i1 %4889, %4888
  %4891 = fcmp fast ole float %4866, 1.000000e+00
  %4892 = and i1 %4891, %4890
  %4893 = fcmp fast ogt float %4885, 0.000000e+00
  %4894 = and i1 %4893, %4892
  br i1 %4894, label %4895, label %5018, !dx.controlflow.hints !89

; <label>:4895                                    ; preds = %4850
  %4896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4897 = extractvalue %dx.types.CBufRet.f32 %4896, 2
  %4898 = extractvalue %dx.types.CBufRet.f32 %4896, 3
  %4899 = fmul fast float %4897, %4865
  %4900 = fmul fast float %4898, %4866
  %4901 = call float @dx.op.unary.f32(i32 27, float %4899)  ; Round_ni(value)
  %4902 = call float @dx.op.unary.f32(i32 27, float %4900)  ; Round_ni(value)
  %4903 = fptosi float %4901 to i32
  %4904 = fptosi float %4902 to i32
  %4905 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %4903, i32 %4904, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4906 = extractvalue %dx.types.ResRet.i32 %4905, 0
  %4907 = lshr i32 %4906, 16
  %4908 = icmp eq i32 %4907, 65535
  br i1 %4908, label %5018, label %4909

; <label>:4909                                    ; preds = %4895
  %4910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4911 = extractvalue %dx.types.CBufRet.f32 %4910, 0
  %4912 = fmul fast float %4911, %4865
  %4913 = extractvalue %dx.types.CBufRet.f32 %4910, 1
  %4914 = fadd fast float %4912, %4913
  %4915 = extractvalue %dx.types.CBufRet.f32 %4910, 2
  %4916 = fmul fast float %4915, %4866
  %4917 = extractvalue %dx.types.CBufRet.f32 %4910, 3
  %4918 = fadd fast float %4916, %4917
  %4919 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %4914, float %4918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4920 = extractvalue %dx.types.ResRet.f32 %4919, 0
  %4921 = extractvalue %dx.types.ResRet.f32 %4919, 1
  %4922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4923 = extractvalue %dx.types.CBufRet.f32 %4922, 1
  %4924 = extractvalue %dx.types.CBufRet.f32 %4922, 0
  %4925 = fsub fast float %4923, %4924
  %4926 = fmul fast float %4925, %4920
  %4927 = fadd fast float %4926, %4924
  %4928 = extractvalue %dx.types.CBufRet.f32 %4922, 3
  %4929 = extractvalue %dx.types.CBufRet.f32 %4922, 2
  %4930 = fsub fast float %4928, %4929
  %4931 = fmul fast float %4930, %4921
  %4932 = fadd fast float %4931, %4929
  %4933 = fsub fast float %4852, %4927
  %4934 = fsub fast float %4932, %4927
  %4935 = fdiv fast float %4933, %4934
  %4936 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4846, 1
  %4938 = extractvalue %dx.types.CBufRet.f32 %4896, 0
  %4939 = extractvalue %dx.types.CBufRet.f32 %4896, 1
  %4940 = fmul fast float %4938, %4865
  %4941 = fmul fast float %4939, %4866
  %4942 = fmul fast float %4940, 1.250000e-01
  %4943 = fmul fast float %4941, 1.250000e-01
  %4944 = call float @dx.op.unary.f32(i32 27, float %4942)  ; Round_ni(value)
  %4945 = call float @dx.op.unary.f32(i32 27, float %4943)  ; Round_ni(value)
  %4946 = fmul fast float %4944, 8.000000e+00
  %4947 = fmul fast float %4945, 8.000000e+00
  %4948 = fsub fast float %4940, %4946
  %4949 = fsub fast float %4941, %4947
  %4950 = fadd fast float %4948, 5.000000e-01
  %4951 = fadd fast float %4949, 5.000000e-01
  %4952 = and i32 %4907, 255
  %4953 = lshr i32 %4906, 24
  %4954 = mul nuw nsw i32 %4952, 9
  %4955 = uitofp i32 %4954 to float
  %4956 = mul nuw nsw i32 %4953, 9
  %4957 = uitofp i32 %4956 to float
  %4958 = fadd fast float %4950, %4955
  %4959 = fadd fast float %4951, %4957
  %4960 = fdiv fast float %4958, %4847
  %4961 = fdiv fast float %4959, %4937
  %4962 = fmul fast float %4936, 4.375000e-01
  %4963 = fadd fast float %4962, 3.125000e-02
  %4964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4960, float %4961, float %4963, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4965 = extractvalue %dx.types.ResRet.f32 %4964, 0
  %4966 = extractvalue %dx.types.ResRet.f32 %4964, 1
  %4967 = extractvalue %dx.types.ResRet.f32 %4964, 2
  %4968 = fadd fast float %4962, 5.312500e-01
  %4969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4960, float %4961, float %4968, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4970 = extractvalue %dx.types.ResRet.f32 %4969, 0
  %4971 = extractvalue %dx.types.ResRet.f32 %4969, 1
  %4972 = extractvalue %dx.types.ResRet.f32 %4969, 2
  %4973 = fmul fast float %4970, 2.000000e+00
  %4974 = fmul fast float %4971, 2.000000e+00
  %4975 = fmul fast float %4972, 2.000000e+00
  %4976 = fadd fast float %4973, -1.000000e+00
  %4977 = fadd fast float %4974, -1.000000e+00
  %4978 = fadd fast float %4975, -1.000000e+00
  %4979 = fmul fast float %4976, %4976
  %4980 = fmul fast float %4977, %4977
  %4981 = fadd fast float %4979, %4980
  %4982 = fmul fast float %4978, %4978
  %4983 = fadd fast float %4981, %4982
  %4984 = call float @dx.op.unary.f32(i32 24, float %4983)  ; Sqrt(value)
  %4985 = fcmp fast ogt float %4984, 0.000000e+00
  br i1 %4985, label %4986, label %4990

; <label>:4986                                    ; preds = %4909
  %4987 = fdiv fast float %4976, %4984
  %4988 = fdiv fast float %4977, %4984
  %4989 = fdiv fast float %4978, %4984
  br label %4990

; <label>:4990                                    ; preds = %4986, %4909
  %4991 = phi float [ %4987, %4986 ], [ 0.000000e+00, %4909 ]
  %4992 = phi float [ %4988, %4986 ], [ 0.000000e+00, %4909 ]
  %4993 = phi float [ %4989, %4986 ], [ 0.000000e+00, %4909 ]
  %4994 = call float @dx.op.dot3.f32(i32 55, float %4991, float %4992, float %4993, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %4995 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4994)  ; FMax(a,b)
  %4996 = fmul fast float %4995, 0x400C5BF8A0000000
  %4997 = fmul fast float %4965, %4885
  %4998 = fmul fast float %4997, %4996
  %4999 = fmul fast float %4966, %4885
  %5000 = fmul fast float %4999, %4996
  %5001 = fmul fast float %4967, %4885
  %5002 = fmul fast float %5001, %4996
  %5003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5004 = extractvalue %dx.types.CBufRet.f32 %5003, 3
  %5005 = fmul fast float %4998, %5004
  %5006 = fmul fast float %5000, %5004
  %5007 = fmul fast float %5002, %5004
  %5008 = fcmp fast ogt float %4852, %4932
  br i1 %5008, label %5009, label %5018

; <label>:5009                                    ; preds = %4990
  %5010 = fmul fast float %4934, 0x3FC24924A0000000
  %5011 = fsub fast float %4852, %4932
  %5012 = fdiv fast float %5011, %5010
  %5013 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  %5014 = fsub fast float 1.000000e+00, %5013
  %5015 = fmul fast float %5014, %5005
  %5016 = fmul fast float %5014, %5006
  %5017 = fmul fast float %5014, %5007
  br label %5018

; <label>:5018                                    ; preds = %5009, %4990, %4895, %4850
  %5019 = phi float [ %5017, %5009 ], [ %5007, %4990 ], [ 0.000000e+00, %4895 ], [ 0.000000e+00, %4850 ]
  %5020 = phi float [ %5016, %5009 ], [ %5006, %4990 ], [ 0.000000e+00, %4895 ], [ 0.000000e+00, %4850 ]
  %5021 = phi float [ %5015, %5009 ], [ %5005, %4990 ], [ 0.000000e+00, %4895 ], [ 0.000000e+00, %4850 ]
  %5022 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5021)  ; FMax(a,b)
  %5023 = fmul fast float %5022, 0x3FD20DD760000000
  %5024 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4688, float %4689, float %4690)  ; Dot3(ax,ay,az,bx,by,bz)
  %5025 = fmul fast float %5024, 0x3FDF454380000000
  %5026 = fmul fast float %5024, %5024
  %5027 = fmul fast float %5026, 0x3FEE471020000000
  %5028 = fadd fast float %5027, 0xBFD42F6020000000
  %5029 = call float @dx.op.dot3.f32(i32 55, float %5022, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %5025, float %5028)  ; Dot3(ax,ay,az,bx,by,bz)
  %5030 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5020)  ; FMax(a,b)
  %5031 = fmul fast float %5030, 0x3FD20DD760000000
  %5032 = call float @dx.op.dot3.f32(i32 55, float %5030, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %5025, float %5028)  ; Dot3(ax,ay,az,bx,by,bz)
  %5033 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5019)  ; FMax(a,b)
  %5034 = fmul fast float %5033, 0x3FD20DD760000000
  %5035 = call float @dx.op.dot3.f32(i32 55, float %5033, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %5025, float %5028)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = call float @dx.op.binary.f32(i32 35, float %5023, float 0.000000e+00)  ; FMax(a,b)
  %5037 = call float @dx.op.binary.f32(i32 35, float %5031, float 0.000000e+00)  ; FMax(a,b)
  %5038 = call float @dx.op.binary.f32(i32 35, float %5034, float 0.000000e+00)  ; FMax(a,b)
  %5039 = call float @dx.op.binary.f32(i32 35, float %5029, float 0.000000e+00)  ; FMax(a,b)
  %5040 = call float @dx.op.binary.f32(i32 35, float %5032, float 0.000000e+00)  ; FMax(a,b)
  %5041 = call float @dx.op.binary.f32(i32 35, float %5035, float 0.000000e+00)  ; FMax(a,b)
  %5042 = fmul fast float %5036, %4739
  %5043 = fmul fast float %5037, %4739
  %5044 = fmul fast float %5038, %4739
  %5045 = fadd fast float %5042, %4843
  %5046 = fadd fast float %5043, %4844
  %5047 = fadd fast float %5044, %4845
  %5048 = fmul fast float %5039, %4739
  %5049 = fmul fast float %5040, %4739
  %5050 = fmul fast float %5041, %4739
  %5051 = fadd fast float %5048, %4840
  %5052 = fadd fast float %5049, %4841
  %5053 = fadd fast float %5050, %4842
  br label %5054

; <label>:5054                                    ; preds = %5018, %4839
  %5055 = phi float [ %5051, %5018 ], [ %4840, %4839 ]
  %5056 = phi float [ %5052, %5018 ], [ %4841, %4839 ]
  %5057 = phi float [ %5053, %5018 ], [ %4842, %4839 ]
  %5058 = phi float [ %5045, %5018 ], [ %4843, %4839 ]
  %5059 = phi float [ %5046, %5018 ], [ %4844, %4839 ]
  %5060 = phi float [ %5047, %5018 ], [ %4845, %4839 ]
  %5061 = fcmp fast olt float %4739, 1.000000e+00
  br i1 %5061, label %5062, label %5880, !dx.controlflow.hints !90

; <label>:5062                                    ; preds = %5054
  %5063 = extractvalue %dx.types.CBufRet.f32 %4695, 2
  %5064 = fadd fast float %5063, %134
  %5065 = fmul fast float %4672, 3.200000e+01
  %5066 = fmul fast float %4673, 3.200000e+01
  %5067 = fadd fast float %4698, %5065
  %5068 = fadd fast float %4699, %5066
  %5069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %5070 = extractvalue %dx.types.CBufRet.f32 %5069, 0
  %5071 = extractvalue %dx.types.CBufRet.f32 %5069, 1
  %5072 = fsub fast float %5067, %5070
  %5073 = fsub fast float %5068, %5071
  %5074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %5075 = extractvalue %dx.types.CBufRet.f32 %5074, 0
  %5076 = extractvalue %dx.types.CBufRet.f32 %5074, 1
  %5077 = fmul fast float %5072, %5075
  %5078 = fmul fast float %5073, %5076
  %5079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %5080 = extractvalue %dx.types.CBufRet.f32 %5079, 0
  %5081 = fmul fast float %5077, %5080
  %5082 = extractvalue %dx.types.CBufRet.f32 %5079, 1
  %5083 = fadd fast float %5081, %5082
  %5084 = extractvalue %dx.types.CBufRet.f32 %5079, 2
  %5085 = fmul fast float %5084, %5078
  %5086 = extractvalue %dx.types.CBufRet.f32 %5079, 3
  %5087 = fadd fast float %5085, %5086
  %5088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %5083, float %5087, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5089 = extractvalue %dx.types.ResRet.f32 %5088, 0
  %5090 = extractvalue %dx.types.ResRet.f32 %5088, 1
  %5091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %5092 = extractvalue %dx.types.CBufRet.f32 %5091, 1
  %5093 = extractvalue %dx.types.CBufRet.f32 %5091, 0
  %5094 = fsub fast float %5092, %5093
  %5095 = fmul fast float %5094, %5089
  %5096 = fadd fast float %5095, %5093
  %5097 = extractvalue %dx.types.CBufRet.f32 %5091, 3
  %5098 = extractvalue %dx.types.CBufRet.f32 %5091, 2
  %5099 = fsub fast float %5097, %5098
  %5100 = fmul fast float %5099, %5090
  %5101 = fadd fast float %5100, %5098
  %5102 = fsub fast float %5064, %5096
  %5103 = fsub fast float %5101, %5096
  %5104 = fdiv fast float %5102, %5103
  %5105 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.f32 %5106, 0
  %5108 = fmul fast float %5107, %5105
  %5109 = extractvalue %dx.types.CBufRet.f32 %5106, 1
  %5110 = fadd fast float %5108, %5109
  %5111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %5083, float %5087, float %5110, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5112 = extractvalue %dx.types.ResRet.f32 %5111, 0
  %5113 = extractvalue %dx.types.ResRet.f32 %5111, 1
  %5114 = extractvalue %dx.types.ResRet.f32 %5111, 2
  %5115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %5116 = extractvalue %dx.types.CBufRet.f32 %5115, 0
  %5117 = extractvalue %dx.types.CBufRet.f32 %5115, 1
  %5118 = extractvalue %dx.types.CBufRet.f32 %5115, 2
  %5119 = fmul fast float %5116, %5112
  %5120 = fmul fast float %5117, %5113
  %5121 = fmul fast float %5118, %5114
  %5122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.f32 %5122, 0
  %5124 = extractvalue %dx.types.CBufRet.f32 %5122, 1
  %5125 = extractvalue %dx.types.CBufRet.f32 %5122, 2
  %5126 = fadd fast float %5119, %5123
  %5127 = fadd fast float %5120, %5124
  %5128 = fadd fast float %5121, %5125
  %5129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %5130 = extractvalue %dx.types.CBufRet.f32 %5129, 0
  %5131 = fmul fast float %5130, %5077
  %5132 = extractvalue %dx.types.CBufRet.f32 %5129, 1
  %5133 = fadd fast float %5131, %5132
  %5134 = extractvalue %dx.types.CBufRet.f32 %5129, 2
  %5135 = fmul fast float %5134, %5078
  %5136 = extractvalue %dx.types.CBufRet.f32 %5129, 3
  %5137 = fadd fast float %5135, %5136
  %5138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.f32 %5138, 0
  %5140 = extractvalue %dx.types.CBufRet.f32 %5138, 1
  %5141 = extractvalue %dx.types.CBufRet.f32 %5138, 2
  %5142 = extractvalue %dx.types.CBufRet.f32 %5138, 3
  %5143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %5144 = extractvalue %dx.types.CBufRet.f32 %5143, 0
  %5145 = extractvalue %dx.types.CBufRet.f32 %5143, 1
  %5146 = extractvalue %dx.types.CBufRet.f32 %5143, 2
  %5147 = extractvalue %dx.types.CBufRet.f32 %5143, 3
  %5148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %5133, float %5137, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5149 = extractvalue %dx.types.ResRet.f32 %5148, 0
  %5150 = extractvalue %dx.types.ResRet.f32 %5148, 1
  %5151 = extractvalue %dx.types.ResRet.f32 %5148, 2
  %5152 = extractvalue %dx.types.ResRet.f32 %5148, 3
  %5153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %5133, float %5137, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5154 = extractvalue %dx.types.ResRet.f32 %5153, 0
  %5155 = extractvalue %dx.types.ResRet.f32 %5153, 1
  %5156 = extractvalue %dx.types.ResRet.f32 %5153, 2
  %5157 = extractvalue %dx.types.ResRet.f32 %5153, 3
  %5158 = fmul fast float %5149, %5126
  %5159 = fmul fast float %5154, %5126
  %5160 = fmul fast float %5156, %5126
  %5161 = fmul fast float %5152, %5126
  %5162 = fadd fast float %5158, %5139
  %5163 = fadd fast float %5159, %5140
  %5164 = fadd fast float %5160, %5141
  %5165 = fadd fast float %5161, %5142
  %5166 = fmul fast float %5150, %5126
  %5167 = fmul fast float %5155, %5126
  %5168 = fadd fast float %5166, %5144
  %5169 = fadd fast float %5167, %5145
  %5170 = fmul fast float %5151, %5126
  %5171 = fmul fast float %5157, %5126
  %5172 = fadd fast float %5170, %5146
  %5173 = fadd fast float %5171, %5147
  %5174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %5133, float %5137, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5175 = extractvalue %dx.types.ResRet.f32 %5174, 0
  %5176 = extractvalue %dx.types.ResRet.f32 %5174, 1
  %5177 = extractvalue %dx.types.ResRet.f32 %5174, 2
  %5178 = extractvalue %dx.types.ResRet.f32 %5174, 3
  %5179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %5133, float %5137, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5180 = extractvalue %dx.types.ResRet.f32 %5179, 0
  %5181 = extractvalue %dx.types.ResRet.f32 %5179, 1
  %5182 = extractvalue %dx.types.ResRet.f32 %5179, 2
  %5183 = extractvalue %dx.types.ResRet.f32 %5179, 3
  %5184 = fmul fast float %5175, %5127
  %5185 = fmul fast float %5180, %5127
  %5186 = fmul fast float %5182, %5127
  %5187 = fmul fast float %5178, %5127
  %5188 = fadd fast float %5162, %5184
  %5189 = fadd fast float %5163, %5185
  %5190 = fadd fast float %5164, %5186
  %5191 = fadd fast float %5165, %5187
  %5192 = fmul fast float %5176, %5127
  %5193 = fmul fast float %5181, %5127
  %5194 = fadd fast float %5168, %5192
  %5195 = fadd fast float %5169, %5193
  %5196 = fmul fast float %5177, %5127
  %5197 = fmul fast float %5183, %5127
  %5198 = fadd fast float %5172, %5196
  %5199 = fadd fast float %5173, %5197
  %5200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %5133, float %5137, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5201 = extractvalue %dx.types.ResRet.f32 %5200, 0
  %5202 = extractvalue %dx.types.ResRet.f32 %5200, 1
  %5203 = extractvalue %dx.types.ResRet.f32 %5200, 2
  %5204 = extractvalue %dx.types.ResRet.f32 %5200, 3
  %5205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %5133, float %5137, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5206 = extractvalue %dx.types.ResRet.f32 %5205, 0
  %5207 = extractvalue %dx.types.ResRet.f32 %5205, 1
  %5208 = extractvalue %dx.types.ResRet.f32 %5205, 2
  %5209 = extractvalue %dx.types.ResRet.f32 %5205, 3
  %5210 = fmul fast float %5201, %5128
  %5211 = fmul fast float %5206, %5128
  %5212 = fmul fast float %5208, %5128
  %5213 = fmul fast float %5204, %5128
  %5214 = fadd fast float %5188, %5210
  %5215 = fadd fast float %5189, %5211
  %5216 = fadd fast float %5190, %5212
  %5217 = fadd fast float %5191, %5213
  %5218 = fmul fast float %5202, %5128
  %5219 = fmul fast float %5207, %5128
  %5220 = fadd fast float %5194, %5218
  %5221 = fadd fast float %5195, %5219
  %5222 = fmul fast float %5203, %5128
  %5223 = fmul fast float %5209, %5128
  %5224 = fadd fast float %5198, %5222
  %5225 = fadd fast float %5199, %5223
  %5226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5226, 0
  %5228 = fsub fast float %4698, %5227
  %5229 = fsub fast float %5070, %4698
  %5230 = call float @dx.op.binary.f32(i32 35, float %5229, float %5228)  ; FMax(a,b)
  %5231 = extractvalue %dx.types.CBufRet.f32 %5226, 1
  %5232 = fsub fast float %4699, %5231
  %5233 = fsub fast float %5071, %4699
  %5234 = call float @dx.op.binary.f32(i32 35, float %5233, float %5232)  ; FMax(a,b)
  %5235 = call float @dx.op.binary.f32(i32 35, float %5230, float %5234)  ; FMax(a,b)
  %5236 = extractvalue %dx.types.CBufRet.f32 %5074, 3
  %5237 = fmul fast float %5236, %5235
  %5238 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %5240 = extractvalue %dx.types.CBufRet.f32 %5239, 0
  %5241 = extractvalue %dx.types.CBufRet.f32 %5239, 1
  %5242 = extractvalue %dx.types.CBufRet.f32 %5239, 2
  %5243 = extractvalue %dx.types.CBufRet.f32 %5239, 3
  %5244 = fsub fast float %5240, %5214
  %5245 = fsub fast float %5241, %5215
  %5246 = fsub fast float %5242, %5216
  %5247 = fsub fast float %5243, %5217
  %5248 = fmul fast float %5244, %5238
  %5249 = fmul fast float %5245, %5238
  %5250 = fmul fast float %5246, %5238
  %5251 = fmul fast float %5247, %5238
  %5252 = fadd fast float %5248, %5214
  %5253 = fadd fast float %5249, %5215
  %5254 = fadd fast float %5250, %5216
  %5255 = fadd fast float %5251, %5217
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 0
  %5258 = extractvalue %dx.types.CBufRet.f32 %5256, 1
  %5259 = fsub fast float %5257, %5220
  %5260 = fsub fast float %5258, %5221
  %5261 = fmul fast float %5259, %5238
  %5262 = fmul fast float %5260, %5238
  %5263 = fadd fast float %5261, %5220
  %5264 = fadd fast float %5262, %5221
  %5265 = extractvalue %dx.types.CBufRet.f32 %5256, 2
  %5266 = extractvalue %dx.types.CBufRet.f32 %5256, 3
  %5267 = fsub fast float %5265, %5224
  %5268 = fsub fast float %5266, %5225
  %5269 = fmul fast float %5267, %5238
  %5270 = fmul fast float %5268, %5238
  %5271 = fadd fast float %5269, %5224
  %5272 = fadd fast float %5270, %5225
  %5273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.f32 %5273, 0
  %5275 = fmul fast float %5274, %5252
  %5276 = fmul fast float %5274, %5253
  %5277 = fmul fast float %5274, %5254
  %5278 = fmul fast float %5274, %5255
  %5279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.f32 %5279, 0
  %5281 = fmul fast float %5280, %5263
  %5282 = fmul fast float %5280, %5264
  %5283 = fadd fast float %5281, %5275
  %5284 = fadd fast float %5282, %5277
  %5285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %5286 = extractvalue %dx.types.CBufRet.f32 %5285, 0
  %5287 = fmul fast float %5286, %5271
  %5288 = fmul fast float %5286, %5272
  %5289 = fadd fast float %5283, %5287
  %5290 = fadd fast float %5284, %5288
  %5291 = extractvalue %dx.types.CBufRet.f32 %5273, 1
  %5292 = fmul fast float %5291, %5252
  %5293 = fmul fast float %5291, %5253
  %5294 = fmul fast float %5291, %5254
  %5295 = fmul fast float %5291, %5255
  %5296 = extractvalue %dx.types.CBufRet.f32 %5279, 1
  %5297 = fmul fast float %5296, %5263
  %5298 = fmul fast float %5296, %5264
  %5299 = fadd fast float %5297, %5292
  %5300 = fadd fast float %5298, %5294
  %5301 = extractvalue %dx.types.CBufRet.f32 %5285, 1
  %5302 = fmul fast float %5301, %5271
  %5303 = fmul fast float %5301, %5272
  %5304 = fadd fast float %5299, %5302
  %5305 = fadd fast float %5300, %5303
  %5306 = extractvalue %dx.types.CBufRet.f32 %5273, 2
  %5307 = fmul fast float %5306, %5252
  %5308 = fmul fast float %5306, %5253
  %5309 = fmul fast float %5306, %5254
  %5310 = fmul fast float %5306, %5255
  %5311 = extractvalue %dx.types.CBufRet.f32 %5279, 2
  %5312 = fmul fast float %5311, %5263
  %5313 = fmul fast float %5311, %5264
  %5314 = fadd fast float %5312, %5307
  %5315 = fadd fast float %5313, %5309
  %5316 = extractvalue %dx.types.CBufRet.f32 %5285, 2
  %5317 = fmul fast float %5316, %5271
  %5318 = fmul fast float %5316, %5272
  %5319 = fadd fast float %5314, %5317
  %5320 = fadd fast float %5315, %5318
  %5321 = fmul fast float %5308, %5308
  %5322 = fmul fast float %5320, %5320
  %5323 = fmul fast float %5310, %5310
  %5324 = fadd fast float %5323, %5321
  %5325 = fadd fast float %5324, %5322
  %5326 = call float @dx.op.unary.f32(i32 24, float %5325)  ; Sqrt(value)
  %5327 = fcmp fast ugt float %5326, 0.000000e+00
  br i1 %5327, label %5328, label %5343

; <label>:5328                                    ; preds = %5062
  %5329 = fsub fast float -0.000000e+00, %5310
  %5330 = fdiv fast float %5329, %5326
  %5331 = fsub fast float -0.000000e+00, %5308
  %5332 = fdiv fast float %5331, %5326
  %5333 = fdiv fast float %5320, %5326
  %5334 = fmul fast float %5319, 0x3FE279A760000000
  %5335 = fmul fast float %5332, %5308
  %5336 = fmul fast float %5333, %5320
  %5337 = fmul fast float %5330, %5310
  %5338 = fadd fast float %5335, %5337
  %5339 = fsub fast float %5338, %5336
  %5340 = call float @dx.op.unary.f32(i32 6, float %5339)  ; FAbs(value)
  %5341 = fadd fast float %5340, 0x3DDB7CDFE0000000
  %5342 = fdiv fast float %5334, %5341
  br label %5343

; <label>:5343                                    ; preds = %5328, %5062
  %5344 = phi float [ %5342, %5328 ], [ 1.000000e+00, %5062 ]
  %5345 = fmul fast float %5293, %5293
  %5346 = fmul fast float %5305, %5305
  %5347 = fmul fast float %5295, %5295
  %5348 = fadd fast float %5347, %5345
  %5349 = fadd fast float %5348, %5346
  %5350 = call float @dx.op.unary.f32(i32 24, float %5349)  ; Sqrt(value)
  %5351 = fcmp fast ugt float %5350, 0.000000e+00
  br i1 %5351, label %5352, label %5367

; <label>:5352                                    ; preds = %5343
  %5353 = fsub fast float -0.000000e+00, %5295
  %5354 = fdiv fast float %5353, %5350
  %5355 = fsub fast float -0.000000e+00, %5293
  %5356 = fdiv fast float %5355, %5350
  %5357 = fdiv fast float %5305, %5350
  %5358 = fmul fast float %5304, 0x3FE279A760000000
  %5359 = fmul fast float %5356, %5293
  %5360 = fmul fast float %5357, %5305
  %5361 = fmul fast float %5354, %5295
  %5362 = fadd fast float %5359, %5361
  %5363 = fsub fast float %5362, %5360
  %5364 = call float @dx.op.unary.f32(i32 6, float %5363)  ; FAbs(value)
  %5365 = fadd fast float %5364, 0x3DDB7CDFE0000000
  %5366 = fdiv fast float %5358, %5365
  br label %5367

; <label>:5367                                    ; preds = %5352, %5343
  %5368 = phi float [ %5366, %5352 ], [ 1.000000e+00, %5343 ]
  %5369 = call float @dx.op.binary.f32(i32 36, float %5368, float %5344)  ; FMin(a,b)
  %5370 = fmul fast float %5276, %5276
  %5371 = fmul fast float %5290, %5290
  %5372 = fmul fast float %5278, %5278
  %5373 = fadd fast float %5372, %5370
  %5374 = fadd fast float %5373, %5371
  %5375 = call float @dx.op.unary.f32(i32 24, float %5374)  ; Sqrt(value)
  %5376 = fcmp fast ugt float %5375, 0.000000e+00
  br i1 %5376, label %5377, label %5392

; <label>:5377                                    ; preds = %5367
  %5378 = fsub fast float -0.000000e+00, %5278
  %5379 = fdiv fast float %5378, %5375
  %5380 = fsub fast float -0.000000e+00, %5276
  %5381 = fdiv fast float %5380, %5375
  %5382 = fdiv fast float %5290, %5375
  %5383 = fmul fast float %5289, 0x3FE279A760000000
  %5384 = fmul fast float %5381, %5276
  %5385 = fmul fast float %5382, %5290
  %5386 = fmul fast float %5379, %5278
  %5387 = fadd fast float %5384, %5386
  %5388 = fsub fast float %5387, %5385
  %5389 = call float @dx.op.unary.f32(i32 6, float %5388)  ; FAbs(value)
  %5390 = fadd fast float %5389, 0x3DDB7CDFE0000000
  %5391 = fdiv fast float %5383, %5390
  br label %5392

; <label>:5392                                    ; preds = %5377, %5367
  %5393 = phi float [ %5391, %5377 ], [ 1.000000e+00, %5367 ]
  %5394 = call float @dx.op.binary.f32(i32 36, float %5393, float %5369)  ; FMin(a,b)
  %5395 = call float @dx.op.unary.f32(i32 7, float %5394)  ; Saturate(value)
  %5396 = fcmp fast olt float %5395, 1.000000e+00
  br i1 %5396, label %5397, label %5407

; <label>:5397                                    ; preds = %5392
  %5398 = fmul fast float %5395, %5276
  %5399 = fmul fast float %5395, %5290
  %5400 = fmul fast float %5395, %5278
  %5401 = fmul fast float %5395, %5293
  %5402 = fmul fast float %5395, %5305
  %5403 = fmul fast float %5395, %5295
  %5404 = fmul fast float %5395, %5308
  %5405 = fmul fast float %5395, %5320
  %5406 = fmul fast float %5395, %5310
  br label %5407

; <label>:5407                                    ; preds = %5397, %5392
  %5408 = phi float [ %5404, %5397 ], [ %5308, %5392 ]
  %5409 = phi float [ %5405, %5397 ], [ %5320, %5392 ]
  %5410 = phi float [ %5406, %5397 ], [ %5310, %5392 ]
  %5411 = phi float [ %5401, %5397 ], [ %5293, %5392 ]
  %5412 = phi float [ %5402, %5397 ], [ %5305, %5392 ]
  %5413 = phi float [ %5403, %5397 ], [ %5295, %5392 ]
  %5414 = phi float [ %5398, %5397 ], [ %5276, %5392 ]
  %5415 = phi float [ %5399, %5397 ], [ %5290, %5392 ]
  %5416 = phi float [ %5400, %5397 ], [ %5278, %5392 ]
  %5417 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5289)  ; FMax(a,b)
  %5418 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5304)  ; FMax(a,b)
  %5419 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5319)  ; FMax(a,b)
  %5420 = fcmp fast oge float %5077, 0.000000e+00
  %5421 = and i1 %5420, %4848
  %5422 = fcmp fast ole float %5077, 1.000000e+00
  %5423 = and i1 %5422, %5421
  %5424 = fcmp fast oge float %5078, 0.000000e+00
  %5425 = and i1 %5424, %5423
  %5426 = fcmp fast ole float %5078, 1.000000e+00
  %5427 = and i1 %5426, %5425
  br i1 %5427, label %5428, label %5573, !dx.controlflow.hints !91

; <label>:5428                                    ; preds = %5407
  %5429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %5430 = extractvalue %dx.types.CBufRet.f32 %5429, 2
  %5431 = extractvalue %dx.types.CBufRet.f32 %5429, 3
  %5432 = fmul fast float %5430, %5077
  %5433 = fmul fast float %5431, %5078
  %5434 = call float @dx.op.unary.f32(i32 27, float %5432)  ; Round_ni(value)
  %5435 = call float @dx.op.unary.f32(i32 27, float %5433)  ; Round_ni(value)
  %5436 = fptosi float %5434 to i32
  %5437 = fptosi float %5435 to i32
  %5438 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %5436, i32 %5437, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5439 = extractvalue %dx.types.ResRet.i32 %5438, 0
  %5440 = and i32 %5439, 65535
  %5441 = lshr i32 %5439, 16
  %5442 = icmp eq i32 %5440, 65535
  br i1 %5442, label %5479, label %5443

; <label>:5443                                    ; preds = %5428
  %5444 = extractvalue %dx.types.CBufRet.f32 %4846, 1
  %5445 = extractvalue %dx.types.CBufRet.f32 %5429, 0
  %5446 = extractvalue %dx.types.CBufRet.f32 %5429, 1
  %5447 = fmul fast float %5445, %5077
  %5448 = fmul fast float %5446, %5078
  %5449 = fmul fast float %5447, 1.250000e-01
  %5450 = fmul fast float %5448, 1.250000e-01
  %5451 = call float @dx.op.unary.f32(i32 27, float %5449)  ; Round_ni(value)
  %5452 = call float @dx.op.unary.f32(i32 27, float %5450)  ; Round_ni(value)
  %5453 = fmul fast float %5451, 8.000000e+00
  %5454 = fmul fast float %5452, 8.000000e+00
  %5455 = and i32 %5439, 255
  %5456 = lshr i32 %5439, 8
  %5457 = and i32 %5456, 255
  %5458 = mul nuw nsw i32 %5455, 9
  %5459 = uitofp i32 %5458 to float
  %5460 = mul nuw nsw i32 %5457, 9
  %5461 = uitofp i32 %5460 to float
  %5462 = fadd fast float %5459, 5.000000e-01
  %5463 = fadd fast float %5462, %5447
  %5464 = fsub fast float %5463, %5453
  %5465 = fadd fast float %5461, 5.000000e-01
  %5466 = fadd fast float %5465, %5448
  %5467 = fsub fast float %5466, %5454
  %5468 = fdiv fast float %5464, %4847
  %5469 = fdiv fast float %5467, %5444
  %5470 = fmul fast float %5105, 4.375000e-01
  %5471 = fadd fast float %5470, 3.125000e-02
  %5472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %5468, float %5469, float %5471, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5473 = extractvalue %dx.types.ResRet.f32 %5472, 0
  %5474 = extractvalue %dx.types.ResRet.f32 %5472, 1
  %5475 = extractvalue %dx.types.ResRet.f32 %5472, 2
  %5476 = fadd fast float %5473, %5417
  %5477 = fadd fast float %5474, %5418
  %5478 = fadd fast float %5475, %5419
  br label %5479

; <label>:5479                                    ; preds = %5443, %5428
  %5480 = phi float [ %5478, %5443 ], [ %5419, %5428 ]
  %5481 = phi float [ %5477, %5443 ], [ %5418, %5428 ]
  %5482 = phi float [ %5476, %5443 ], [ %5417, %5428 ]
  %5483 = icmp eq i32 %5441, 65535
  br i1 %5483, label %5573, label %5484

; <label>:5484                                    ; preds = %5479
  %5485 = extractvalue %dx.types.CBufRet.f32 %4846, 1
  %5486 = extractvalue %dx.types.CBufRet.f32 %5429, 0
  %5487 = extractvalue %dx.types.CBufRet.f32 %5429, 1
  %5488 = fmul fast float %5486, %5077
  %5489 = fmul fast float %5487, %5078
  %5490 = fmul fast float %5488, 1.250000e-01
  %5491 = fmul fast float %5489, 1.250000e-01
  %5492 = call float @dx.op.unary.f32(i32 27, float %5490)  ; Round_ni(value)
  %5493 = call float @dx.op.unary.f32(i32 27, float %5491)  ; Round_ni(value)
  %5494 = fmul fast float %5492, 8.000000e+00
  %5495 = fmul fast float %5493, 8.000000e+00
  %5496 = fsub fast float %5488, %5494
  %5497 = fsub fast float %5489, %5495
  %5498 = fadd fast float %5496, 5.000000e-01
  %5499 = fadd fast float %5497, 5.000000e-01
  %5500 = and i32 %5441, 255
  %5501 = lshr i32 %5439, 24
  %5502 = mul nuw nsw i32 %5500, 9
  %5503 = uitofp i32 %5502 to float
  %5504 = mul nuw nsw i32 %5501, 9
  %5505 = uitofp i32 %5504 to float
  %5506 = fadd fast float %5498, %5503
  %5507 = fadd fast float %5499, %5505
  %5508 = fdiv fast float %5506, %4847
  %5509 = fdiv fast float %5507, %5485
  %5510 = fmul fast float %5105, 4.375000e-01
  %5511 = fadd fast float %5510, 3.125000e-02
  %5512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %5508, float %5509, float %5511, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5513 = extractvalue %dx.types.ResRet.f32 %5512, 0
  %5514 = extractvalue %dx.types.ResRet.f32 %5512, 1
  %5515 = extractvalue %dx.types.ResRet.f32 %5512, 2
  %5516 = fadd fast float %5510, 5.312500e-01
  %5517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %5508, float %5509, float %5516, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5518 = extractvalue %dx.types.ResRet.f32 %5517, 0
  %5519 = extractvalue %dx.types.ResRet.f32 %5517, 1
  %5520 = extractvalue %dx.types.ResRet.f32 %5517, 2
  %5521 = fmul fast float %5518, 2.000000e+00
  %5522 = fmul fast float %5519, 2.000000e+00
  %5523 = fmul fast float %5520, 2.000000e+00
  %5524 = fadd fast float %5521, -1.000000e+00
  %5525 = fadd fast float %5522, -1.000000e+00
  %5526 = fadd fast float %5523, -1.000000e+00
  %5527 = fmul fast float %5524, %5524
  %5528 = fmul fast float %5525, %5525
  %5529 = fadd fast float %5527, %5528
  %5530 = fmul fast float %5526, %5526
  %5531 = fadd fast float %5529, %5530
  %5532 = call float @dx.op.unary.f32(i32 24, float %5531)  ; Sqrt(value)
  %5533 = fcmp fast ogt float %5532, 0.000000e+00
  br i1 %5533, label %5534, label %5538

; <label>:5534                                    ; preds = %5484
  %5535 = fdiv fast float %5524, %5532
  %5536 = fdiv fast float %5525, %5532
  %5537 = fdiv fast float %5526, %5532
  br label %5538

; <label>:5538                                    ; preds = %5534, %5484
  %5539 = phi float [ %5535, %5534 ], [ 0.000000e+00, %5484 ]
  %5540 = phi float [ %5536, %5534 ], [ 0.000000e+00, %5484 ]
  %5541 = phi float [ %5537, %5534 ], [ 0.000000e+00, %5484 ]
  %5542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5543 = extractvalue %dx.types.CBufRet.f32 %5542, 0
  %5544 = extractvalue %dx.types.CBufRet.f32 %5542, 1
  %5545 = fsub fast float %4698, %5543
  %5546 = fsub fast float %4699, %5544
  %5547 = fmul fast float %5545, %5545
  %5548 = fmul fast float %5546, %5546
  %5549 = fadd fast float %5547, %5548
  %5550 = call float @dx.op.unary.f32(i32 24, float %5549)  ; Sqrt(value)
  %5551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5551, 0
  %5553 = extractvalue %dx.types.CBufRet.f32 %5551, 1
  %5554 = fsub fast float %5550, %5552
  %5555 = fdiv fast float %5554, %5553
  %5556 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  %5557 = fmul fast float %5556, 2.000000e+00
  %5558 = fsub fast float 3.000000e+00, %5557
  %5559 = fmul fast float %5556, %5556
  %5560 = fmul fast float %5559, %5558
  %5561 = call float @dx.op.dot3.f32(i32 55, float %5539, float %5540, float %5541, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %5562 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5561)  ; FMax(a,b)
  %5563 = fmul fast float %5562, 0x400C5BF8A0000000
  %5564 = fmul fast float %5560, %5513
  %5565 = fmul fast float %5564, %5563
  %5566 = fadd fast float %5565, %5482
  %5567 = fmul fast float %5560, %5514
  %5568 = fmul fast float %5567, %5563
  %5569 = fadd fast float %5568, %5481
  %5570 = fmul fast float %5560, %5515
  %5571 = fmul fast float %5570, %5563
  %5572 = fadd fast float %5571, %5480
  br label %5573

; <label>:5573                                    ; preds = %5538, %5479, %5407
  %5574 = phi float [ %5572, %5538 ], [ %5480, %5479 ], [ %5419, %5407 ]
  %5575 = phi float [ %5569, %5538 ], [ %5481, %5479 ], [ %5418, %5407 ]
  %5576 = phi float [ %5566, %5538 ], [ %5482, %5479 ], [ %5417, %5407 ]
  %5577 = fcmp fast ogt float %5064, %5101
  %5578 = and i1 %5420, %5577
  %5579 = and i1 %5422, %5578
  %5580 = and i1 %5424, %5579
  %5581 = and i1 %5426, %5580
  br i1 %5581, label %5582, label %5639, !dx.controlflow.hints !92

; <label>:5582                                    ; preds = %5573
  %5583 = fmul fast float %5103, 0x3FC24924A0000000
  %5584 = fsub fast float %5064, %5101
  %5585 = fdiv fast float %5584, %5583
  %5586 = call float @dx.op.unary.f32(i32 7, float %5585)  ; Saturate(value)
  %5587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %5588 = extractvalue %dx.types.CBufRet.f32 %5587, 0
  %5589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %5590 = extractvalue %dx.types.CBufRet.f32 %5589, 0
  %5591 = extractvalue %dx.types.CBufRet.f32 %5589, 1
  %5592 = extractvalue %dx.types.CBufRet.f32 %5589, 2
  %5593 = fsub fast float %5588, %5576
  %5594 = fsub fast float %5590, %5414
  %5595 = fsub fast float %5591, %5415
  %5596 = fsub fast float %5592, %5416
  %5597 = fmul fast float %5593, %5586
  %5598 = fmul fast float %5594, %5586
  %5599 = fmul fast float %5595, %5586
  %5600 = fmul fast float %5596, %5586
  %5601 = fadd fast float %5597, %5576
  %5602 = fadd fast float %5598, %5414
  %5603 = fadd fast float %5599, %5415
  %5604 = fadd fast float %5600, %5416
  %5605 = extractvalue %dx.types.CBufRet.f32 %5587, 1
  %5606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %5607 = extractvalue %dx.types.CBufRet.f32 %5606, 0
  %5608 = extractvalue %dx.types.CBufRet.f32 %5606, 1
  %5609 = extractvalue %dx.types.CBufRet.f32 %5606, 2
  %5610 = fsub fast float %5605, %5575
  %5611 = fsub fast float %5607, %5411
  %5612 = fsub fast float %5608, %5412
  %5613 = fsub fast float %5609, %5413
  %5614 = fmul fast float %5610, %5586
  %5615 = fmul fast float %5611, %5586
  %5616 = fmul fast float %5612, %5586
  %5617 = fmul fast float %5613, %5586
  %5618 = fadd fast float %5614, %5575
  %5619 = fadd fast float %5615, %5411
  %5620 = fadd fast float %5616, %5412
  %5621 = fadd fast float %5617, %5413
  %5622 = extractvalue %dx.types.CBufRet.f32 %5587, 2
  %5623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %5624 = extractvalue %dx.types.CBufRet.f32 %5623, 0
  %5625 = extractvalue %dx.types.CBufRet.f32 %5623, 1
  %5626 = extractvalue %dx.types.CBufRet.f32 %5623, 2
  %5627 = fsub fast float %5622, %5574
  %5628 = fsub fast float %5624, %5408
  %5629 = fsub fast float %5625, %5409
  %5630 = fsub fast float %5626, %5410
  %5631 = fmul fast float %5627, %5586
  %5632 = fmul fast float %5628, %5586
  %5633 = fmul fast float %5629, %5586
  %5634 = fmul fast float %5630, %5586
  %5635 = fadd fast float %5631, %5574
  %5636 = fadd fast float %5632, %5408
  %5637 = fadd fast float %5633, %5409
  %5638 = fadd fast float %5634, %5410
  br label %5639

; <label>:5639                                    ; preds = %5582, %5573
  %5640 = phi float [ %5635, %5582 ], [ %5574, %5573 ]
  %5641 = phi float [ %5636, %5582 ], [ %5408, %5573 ]
  %5642 = phi float [ %5637, %5582 ], [ %5409, %5573 ]
  %5643 = phi float [ %5638, %5582 ], [ %5410, %5573 ]
  %5644 = phi float [ %5618, %5582 ], [ %5575, %5573 ]
  %5645 = phi float [ %5619, %5582 ], [ %5411, %5573 ]
  %5646 = phi float [ %5620, %5582 ], [ %5412, %5573 ]
  %5647 = phi float [ %5621, %5582 ], [ %5413, %5573 ]
  %5648 = phi float [ %5601, %5582 ], [ %5576, %5573 ]
  %5649 = phi float [ %5602, %5582 ], [ %5414, %5573 ]
  %5650 = phi float [ %5603, %5582 ], [ %5415, %5573 ]
  %5651 = phi float [ %5604, %5582 ], [ %5416, %5573 ]
  %5652 = extractvalue %dx.types.CBufRet.f32 %5226, 3
  %5653 = fmul fast float %5652, %5648
  %5654 = fmul fast float %5652, %5644
  %5655 = fmul fast float %5652, %5640
  %5656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5657 = extractvalue %dx.types.CBufRet.f32 %5656, 3
  %5658 = fmul fast float %5653, %5657
  %5659 = fmul fast float %5654, %5657
  %5660 = fmul fast float %5655, %5657
  %5661 = fmul fast float %5649, 1.500000e+00
  %5662 = fmul fast float %5661, %5652
  %5663 = fmul fast float %5662, %5657
  %5664 = fmul fast float %5650, 1.500000e+00
  %5665 = fmul fast float %5664, %5652
  %5666 = fmul fast float %5665, %5657
  %5667 = fmul fast float %5651, 1.500000e+00
  %5668 = fmul fast float %5667, %5652
  %5669 = fmul fast float %5668, %5657
  %5670 = fmul fast float %5645, 1.500000e+00
  %5671 = fmul fast float %5670, %5652
  %5672 = fmul fast float %5671, %5657
  %5673 = fmul fast float %5646, 1.500000e+00
  %5674 = fmul fast float %5673, %5652
  %5675 = fmul fast float %5674, %5657
  %5676 = fmul fast float %5647, 1.500000e+00
  %5677 = fmul fast float %5676, %5652
  %5678 = fmul fast float %5677, %5657
  %5679 = fmul fast float %5641, 1.500000e+00
  %5680 = fmul fast float %5679, %5652
  %5681 = fmul fast float %5680, %5657
  %5682 = fmul fast float %5642, 1.500000e+00
  %5683 = fmul fast float %5682, %5652
  %5684 = fmul fast float %5683, %5657
  %5685 = fmul fast float %5643, 1.500000e+00
  %5686 = fmul fast float %5685, %5652
  %5687 = fmul fast float %5686, %5657
  %5688 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5658)  ; FMax(a,b)
  %5689 = call float @dx.op.dot3.f32(i32 55, float %5663, float %5666, float %5669, float %5663, float %5666, float %5669)  ; Dot3(ax,ay,az,bx,by,bz)
  %5690 = fcmp fast oeq float %5689, 0.000000e+00
  %5691 = fcmp fast oeq float %5688, 0.000000e+00
  %5692 = or i1 %5691, %5690
  br i1 %5692, label %5722, label %5693

; <label>:5693                                    ; preds = %5639
  %5694 = fsub fast float -0.000000e+00, %5669
  %5695 = fsub fast float -0.000000e+00, %5663
  %5696 = call float @dx.op.unary.f32(i32 24, float %5689)  ; Sqrt(value)
  %5697 = fdiv fast float %5696, %5688
  %5698 = fcmp fast ogt float %5697, 0x3FFB6F8900000000
  %5699 = select i1 %5698, float 0x3FFB6F8900000000, float %5697
  %5700 = fmul fast float %5699, 0x3FE8A23460000000
  %5701 = call float @dx.op.unary.f32(i32 7, float %5700)  ; Saturate(value)
  %5702 = call float @dx.op.binary.f32(i32 35, float %5699, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5703 = fmul fast float %5701, %5688
  %5704 = fmul fast float %5702, 0x3FF279A740000000
  %5705 = fadd fast float %5704, -1.000000e+00
  %5706 = call float @dx.op.dot3.f32(i32 55, float %5694, float %5695, float %5666, float %5694, float %5695, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %5707 = call float @dx.op.unary.f32(i32 25, float %5706)  ; Rsqrt(value)
  %5708 = fmul fast float %5707, %5694
  %5709 = fmul fast float %5707, %5695
  %5710 = fmul fast float %5707, %5666
  %5711 = fmul fast float %5705, %5705
  %5712 = fsub fast float 1.000000e+00, %5711
  %5713 = fmul fast float %5702, 0x40005F8BE0000000
  %5714 = fsub fast float 0x400C5BF8A0000000, %5713
  %5715 = fdiv fast float %5703, %5714
  %5716 = fmul fast float %5715, 0x3FEE31C3C0000000
  %5717 = fmul fast float %5716, %5712
  %5718 = fmul fast float %5702, 0x3FDACB7480000000
  %5719 = fadd fast float %5718, 0xBFD7347680000000
  %5720 = fmul fast float %5719, %5715
  %5721 = fmul fast float %5720, %5712
  br label %5722

; <label>:5722                                    ; preds = %5693, %5639
  %5723 = phi float [ %5708, %5693 ], [ 0.000000e+00, %5639 ]
  %5724 = phi float [ %5709, %5693 ], [ 0.000000e+00, %5639 ]
  %5725 = phi float [ %5710, %5693 ], [ 0.000000e+00, %5639 ]
  %5726 = phi float [ %5717, %5693 ], [ 0.000000e+00, %5639 ]
  %5727 = phi float [ %5721, %5693 ], [ 0.000000e+00, %5639 ]
  %5728 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %5729 = fmul fast float %5728, %5728
  %5730 = fmul fast float %5729, 0x3FEE471020000000
  %5731 = fadd fast float %5730, 0xBFD42F6020000000
  %5732 = fmul fast float %5688, 0x3FD20DD760000000
  %5733 = fmul fast float %5731, %5727
  %5734 = fmul fast float %5726, 0x3FDF454380000000
  %5735 = fmul fast float %5734, %5728
  %5736 = fadd fast float %5735, %5732
  %5737 = fadd fast float %5736, %5733
  %5738 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %4688, float %4689, float %4690)  ; Dot3(ax,ay,az,bx,by,bz)
  %5739 = fmul fast float %5738, 0x3FDF454380000000
  %5740 = fmul fast float %5738, %5738
  %5741 = fmul fast float %5740, 0x3FEE471020000000
  %5742 = fadd fast float %5741, 0xBFD42F6020000000
  %5743 = call float @dx.op.dot3.f32(i32 55, float %5688, float %5726, float %5727, float 0x3FD20DD760000000, float %5739, float %5742)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5659)  ; FMax(a,b)
  %5745 = call float @dx.op.dot3.f32(i32 55, float %5672, float %5675, float %5678, float %5672, float %5675, float %5678)  ; Dot3(ax,ay,az,bx,by,bz)
  %5746 = fcmp fast oeq float %5745, 0.000000e+00
  %5747 = fcmp fast oeq float %5744, 0.000000e+00
  %5748 = or i1 %5747, %5746
  br i1 %5748, label %5778, label %5749

; <label>:5749                                    ; preds = %5722
  %5750 = fsub fast float -0.000000e+00, %5678
  %5751 = fsub fast float -0.000000e+00, %5672
  %5752 = call float @dx.op.unary.f32(i32 24, float %5745)  ; Sqrt(value)
  %5753 = fdiv fast float %5752, %5744
  %5754 = fcmp fast ogt float %5753, 0x3FFB6F8900000000
  %5755 = select i1 %5754, float 0x3FFB6F8900000000, float %5753
  %5756 = fmul fast float %5755, 0x3FE8A23460000000
  %5757 = call float @dx.op.unary.f32(i32 7, float %5756)  ; Saturate(value)
  %5758 = call float @dx.op.binary.f32(i32 35, float %5755, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5759 = fmul fast float %5757, %5744
  %5760 = fmul fast float %5758, 0x3FF279A740000000
  %5761 = fadd fast float %5760, -1.000000e+00
  %5762 = call float @dx.op.dot3.f32(i32 55, float %5750, float %5751, float %5675, float %5750, float %5751, float %5675)  ; Dot3(ax,ay,az,bx,by,bz)
  %5763 = call float @dx.op.unary.f32(i32 25, float %5762)  ; Rsqrt(value)
  %5764 = fmul fast float %5763, %5750
  %5765 = fmul fast float %5763, %5751
  %5766 = fmul fast float %5763, %5675
  %5767 = fmul fast float %5761, %5761
  %5768 = fsub fast float 1.000000e+00, %5767
  %5769 = fmul fast float %5758, 0x40005F8BE0000000
  %5770 = fsub fast float 0x400C5BF8A0000000, %5769
  %5771 = fdiv fast float %5759, %5770
  %5772 = fmul fast float %5771, 0x3FEE31C3C0000000
  %5773 = fmul fast float %5772, %5768
  %5774 = fmul fast float %5758, 0x3FDACB7480000000
  %5775 = fadd fast float %5774, 0xBFD7347680000000
  %5776 = fmul fast float %5775, %5771
  %5777 = fmul fast float %5776, %5768
  br label %5778

; <label>:5778                                    ; preds = %5749, %5722
  %5779 = phi float [ %5764, %5749 ], [ 0.000000e+00, %5722 ]
  %5780 = phi float [ %5765, %5749 ], [ 0.000000e+00, %5722 ]
  %5781 = phi float [ %5766, %5749 ], [ 0.000000e+00, %5722 ]
  %5782 = phi float [ %5773, %5749 ], [ 0.000000e+00, %5722 ]
  %5783 = phi float [ %5777, %5749 ], [ 0.000000e+00, %5722 ]
  %5784 = call float @dx.op.dot3.f32(i32 55, float %5779, float %5780, float %5781, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = fmul fast float %5784, %5784
  %5786 = fmul fast float %5785, 0x3FEE471020000000
  %5787 = fadd fast float %5786, 0xBFD42F6020000000
  %5788 = fmul fast float %5744, 0x3FD20DD760000000
  %5789 = fmul fast float %5787, %5783
  %5790 = fmul fast float %5782, 0x3FDF454380000000
  %5791 = fmul fast float %5790, %5784
  %5792 = fadd fast float %5791, %5788
  %5793 = fadd fast float %5792, %5789
  %5794 = call float @dx.op.dot3.f32(i32 55, float %5779, float %5780, float %5781, float %4688, float %4689, float %4690)  ; Dot3(ax,ay,az,bx,by,bz)
  %5795 = fmul fast float %5794, 0x3FDF454380000000
  %5796 = fmul fast float %5794, %5794
  %5797 = fmul fast float %5796, 0x3FEE471020000000
  %5798 = fadd fast float %5797, 0xBFD42F6020000000
  %5799 = call float @dx.op.dot3.f32(i32 55, float %5744, float %5782, float %5783, float 0x3FD20DD760000000, float %5795, float %5798)  ; Dot3(ax,ay,az,bx,by,bz)
  %5800 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5660)  ; FMax(a,b)
  %5801 = call float @dx.op.dot3.f32(i32 55, float %5681, float %5684, float %5687, float %5681, float %5684, float %5687)  ; Dot3(ax,ay,az,bx,by,bz)
  %5802 = fcmp fast oeq float %5801, 0.000000e+00
  %5803 = fcmp fast oeq float %5800, 0.000000e+00
  %5804 = or i1 %5803, %5802
  br i1 %5804, label %5834, label %5805

; <label>:5805                                    ; preds = %5778
  %5806 = fsub fast float -0.000000e+00, %5687
  %5807 = fsub fast float -0.000000e+00, %5681
  %5808 = call float @dx.op.unary.f32(i32 24, float %5801)  ; Sqrt(value)
  %5809 = fdiv fast float %5808, %5800
  %5810 = fcmp fast ogt float %5809, 0x3FFB6F8900000000
  %5811 = select i1 %5810, float 0x3FFB6F8900000000, float %5809
  %5812 = fmul fast float %5811, 0x3FE8A23460000000
  %5813 = call float @dx.op.unary.f32(i32 7, float %5812)  ; Saturate(value)
  %5814 = call float @dx.op.binary.f32(i32 35, float %5811, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5815 = fmul fast float %5813, %5800
  %5816 = fmul fast float %5814, 0x3FF279A740000000
  %5817 = fadd fast float %5816, -1.000000e+00
  %5818 = call float @dx.op.dot3.f32(i32 55, float %5806, float %5807, float %5684, float %5806, float %5807, float %5684)  ; Dot3(ax,ay,az,bx,by,bz)
  %5819 = call float @dx.op.unary.f32(i32 25, float %5818)  ; Rsqrt(value)
  %5820 = fmul fast float %5819, %5806
  %5821 = fmul fast float %5819, %5807
  %5822 = fmul fast float %5819, %5684
  %5823 = fmul fast float %5817, %5817
  %5824 = fsub fast float 1.000000e+00, %5823
  %5825 = fmul fast float %5814, 0x40005F8BE0000000
  %5826 = fsub fast float 0x400C5BF8A0000000, %5825
  %5827 = fdiv fast float %5815, %5826
  %5828 = fmul fast float %5827, 0x3FEE31C3C0000000
  %5829 = fmul fast float %5828, %5824
  %5830 = fmul fast float %5814, 0x3FDACB7480000000
  %5831 = fadd fast float %5830, 0xBFD7347680000000
  %5832 = fmul fast float %5831, %5827
  %5833 = fmul fast float %5832, %5824
  br label %5834

; <label>:5834                                    ; preds = %5805, %5778
  %5835 = phi float [ %5820, %5805 ], [ 0.000000e+00, %5778 ]
  %5836 = phi float [ %5821, %5805 ], [ 0.000000e+00, %5778 ]
  %5837 = phi float [ %5822, %5805 ], [ 0.000000e+00, %5778 ]
  %5838 = phi float [ %5829, %5805 ], [ 0.000000e+00, %5778 ]
  %5839 = phi float [ %5833, %5805 ], [ 0.000000e+00, %5778 ]
  %5840 = call float @dx.op.dot3.f32(i32 55, float %5835, float %5836, float %5837, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %5841 = fmul fast float %5840, %5840
  %5842 = fmul fast float %5841, 0x3FEE471020000000
  %5843 = fadd fast float %5842, 0xBFD42F6020000000
  %5844 = fmul fast float %5800, 0x3FD20DD760000000
  %5845 = fmul fast float %5843, %5839
  %5846 = fmul fast float %5838, 0x3FDF454380000000
  %5847 = fmul fast float %5846, %5840
  %5848 = fadd fast float %5847, %5844
  %5849 = fadd fast float %5848, %5845
  %5850 = call float @dx.op.dot3.f32(i32 55, float %5835, float %5836, float %5837, float %4688, float %4689, float %4690)  ; Dot3(ax,ay,az,bx,by,bz)
  %5851 = fmul fast float %5850, 0x3FDF454380000000
  %5852 = fmul fast float %5850, %5850
  %5853 = fmul fast float %5852, 0x3FEE471020000000
  %5854 = fadd fast float %5853, 0xBFD42F6020000000
  %5855 = call float @dx.op.dot3.f32(i32 55, float %5800, float %5838, float %5839, float 0x3FD20DD760000000, float %5851, float %5854)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = call float @dx.op.binary.f32(i32 35, float %5737, float 0.000000e+00)  ; FMax(a,b)
  %5857 = call float @dx.op.binary.f32(i32 35, float %5793, float 0.000000e+00)  ; FMax(a,b)
  %5858 = call float @dx.op.binary.f32(i32 35, float %5849, float 0.000000e+00)  ; FMax(a,b)
  %5859 = call float @dx.op.binary.f32(i32 35, float %5743, float 0.000000e+00)  ; FMax(a,b)
  %5860 = call float @dx.op.binary.f32(i32 35, float %5799, float 0.000000e+00)  ; FMax(a,b)
  %5861 = call float @dx.op.binary.f32(i32 35, float %5855, float 0.000000e+00)  ; FMax(a,b)
  %5862 = fsub fast float %5058, %5856
  %5863 = fsub fast float %5059, %5857
  %5864 = fsub fast float %5060, %5858
  %5865 = fmul fast float %5862, %4739
  %5866 = fmul fast float %5863, %4739
  %5867 = fmul fast float %5864, %4739
  %5868 = fadd fast float %5865, %5856
  %5869 = fadd fast float %5866, %5857
  %5870 = fadd fast float %5867, %5858
  %5871 = fsub fast float %5055, %5859
  %5872 = fsub fast float %5056, %5860
  %5873 = fsub fast float %5057, %5861
  %5874 = fmul fast float %5871, %4739
  %5875 = fmul fast float %5872, %4739
  %5876 = fmul fast float %5873, %4739
  %5877 = fadd fast float %5874, %5859
  %5878 = fadd fast float %5875, %5860
  %5879 = fadd fast float %5876, %5861
  br label %5880

; <label>:5880                                    ; preds = %5834, %5054
  %5881 = phi float [ %5877, %5834 ], [ %5055, %5054 ]
  %5882 = phi float [ %5878, %5834 ], [ %5056, %5054 ]
  %5883 = phi float [ %5879, %5834 ], [ %5057, %5054 ]
  %5884 = phi float [ %5868, %5834 ], [ %5058, %5054 ]
  %5885 = phi float [ %5869, %5834 ], [ %5059, %5054 ]
  %5886 = phi float [ %5870, %5834 ], [ %5060, %5054 ]
  %5887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5888 = extractvalue %dx.types.CBufRet.f32 %5887, 0
  %5889 = call float @dx.op.binary.f32(i32 36, float %4675, float %5888)  ; FMin(a,b)
  %5890 = fsub fast float 1.000000e+00, %4691
  %5891 = fmul fast float %5889, %5890
  %5892 = fsub fast float 1.000000e+00, %5891
  %5893 = bitcast float %5892 to i32
  %5894 = sub nsw i32 2129859010, %5893
  %5895 = bitcast i32 %5894 to float
  %5896 = call float @dx.op.binary.f32(i32 36, float %4676, float %5888)  ; FMin(a,b)
  %5897 = fmul fast float %5896, %5890
  %5898 = fsub fast float 1.000000e+00, %5897
  %5899 = bitcast float %5898 to i32
  %5900 = sub nsw i32 2129859010, %5899
  %5901 = bitcast i32 %5900 to float
  %5902 = call float @dx.op.binary.f32(i32 36, float %4677, float %5888)  ; FMin(a,b)
  %5903 = fmul fast float %5902, %5890
  %5904 = fsub fast float 1.000000e+00, %5903
  %5905 = bitcast float %5904 to i32
  %5906 = sub nsw i32 2129859010, %5905
  %5907 = bitcast i32 %5906 to float
  %5908 = fmul fast float %5884, %4691
  %5909 = fmul fast float %5908, %5895
  %5910 = fmul fast float %5885, %4691
  %5911 = fmul fast float %5910, %5901
  %5912 = fmul fast float %5886, %4691
  %5913 = fmul fast float %5912, %5907
  %5914 = call float @dx.op.binary.f32(i32 36, float %4669, float %5888)  ; FMin(a,b)
  %5915 = fmul fast float %5914, %5890
  %5916 = fsub fast float 1.000000e+00, %5915
  %5917 = bitcast float %5916 to i32
  %5918 = sub nsw i32 2129859010, %5917
  %5919 = bitcast i32 %5918 to float
  %5920 = call float @dx.op.binary.f32(i32 36, float %4670, float %5888)  ; FMin(a,b)
  %5921 = fmul fast float %5920, %5890
  %5922 = fsub fast float 1.000000e+00, %5921
  %5923 = bitcast float %5922 to i32
  %5924 = sub nsw i32 2129859010, %5923
  %5925 = bitcast i32 %5924 to float
  %5926 = call float @dx.op.binary.f32(i32 36, float %4680, float %5888)  ; FMin(a,b)
  %5927 = fmul fast float %5926, %5890
  %5928 = fsub fast float 1.000000e+00, %5927
  %5929 = bitcast float %5928 to i32
  %5930 = sub nsw i32 2129859010, %5929
  %5931 = bitcast i32 %5930 to float
  %5932 = fmul fast float %5881, %4691
  %5933 = fmul fast float %5932, %5919
  %5934 = fmul fast float %5882, %4691
  %5935 = fmul fast float %5934, %5925
  %5936 = fmul fast float %5883, %4691
  %5937 = fmul fast float %5936, %5931
  %5938 = call float @dx.op.dot3.f32(i32 55, float %5909, float %5911, float %5913, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5939 = select i1 %203, float 0.000000e+00, float %5909
  %5940 = select i1 %203, float %5938, float %5911
  %5941 = select i1 %203, float 0.000000e+00, float %5913
  %5942 = call float @dx.op.dot3.f32(i32 55, float %5933, float %5935, float %5937, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5943 = select i1 %203, float 0.000000e+00, float %5933
  %5944 = select i1 %203, float %5942, float %5935
  %5945 = select i1 %203, float 0.000000e+00, float %5937
  %5946 = fmul fast float %4682, 9.843750e-01
  %5947 = fmul fast float %4678, 9.843750e-01
  %5948 = fadd fast float %5946, 7.812500e-03
  %5949 = fadd fast float %5947, 7.812500e-03
  %5950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5948, float %5949, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5951 = extractvalue %dx.types.ResRet.f32 %5950, 2
  %5952 = extractvalue %dx.types.ResRet.f32 %5950, 3
  %5953 = fmul fast float %5951, %4669
  %5954 = fmul fast float %5951, %4670
  %5955 = fmul fast float %5951, %4680
  %5956 = fadd fast float %5953, %5952
  %5957 = fadd fast float %5954, %5952
  %5958 = fadd fast float %5955, %5952
  %5959 = fcmp fast ogt float %4046, 0.000000e+00
  br i1 %5959, label %5960, label %5986

; <label>:5960                                    ; preds = %5880
  %5961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %4046, float %4682, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5962 = extractvalue %dx.types.ResRet.f32 %5961, 0
  %5963 = extractvalue %dx.types.ResRet.f32 %5961, 1
  %5964 = extractvalue %dx.types.ResRet.f32 %5961, 2
  %5965 = fadd fast float %5962, -5.000000e-01
  %5966 = fadd fast float %5963, -5.000000e-01
  %5967 = fadd fast float %5964, -5.000000e-01
  %5968 = fsub fast float 1.000000e+00, %4669
  %5969 = fsub fast float 1.000000e+00, %4670
  %5970 = fsub fast float 1.000000e+00, %4680
  %5971 = fmul fast float %4669, 4.000000e+00
  %5972 = fmul fast float %5971, %5968
  %5973 = fmul fast float %5972, %5965
  %5974 = fmul fast float %4670, 4.000000e+00
  %5975 = fmul fast float %5974, %5969
  %5976 = fmul fast float %5975, %5966
  %5977 = fmul fast float %4680, 4.000000e+00
  %5978 = fmul fast float %5977, %5970
  %5979 = fmul fast float %5978, %5967
  %5980 = fadd fast float %5973, %5956
  %5981 = fadd fast float %5976, %5957
  %5982 = fadd fast float %5979, %5958
  %5983 = call float @dx.op.unary.f32(i32 7, float %5980)  ; Saturate(value)
  %5984 = call float @dx.op.unary.f32(i32 7, float %5981)  ; Saturate(value)
  %5985 = call float @dx.op.unary.f32(i32 7, float %5982)  ; Saturate(value)
  br label %5986

; <label>:5986                                    ; preds = %5960, %5880
  %5987 = phi float [ %5983, %5960 ], [ %5956, %5880 ]
  %5988 = phi float [ %5984, %5960 ], [ %5957, %5880 ]
  %5989 = phi float [ %5985, %5960 ], [ %5958, %5880 ]
  %5990 = call float @dx.op.binary.f32(i32 35, float %5988, float %5989)  ; FMax(a,b)
  %5991 = call float @dx.op.binary.f32(i32 35, float %5987, float %5990)  ; FMax(a,b)
  %5992 = fsub fast float 1.000000e+00, %5991
  %5993 = fmul fast float %5992, %5939
  %5994 = fmul fast float %5992, %5940
  %5995 = fmul fast float %5992, %5941
  %5996 = call float @dx.op.dot3.f32(i32 55, float %4675, float %4676, float %4677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5997 = fcmp fast ogt float %5996, 0x3E7FF19E20000000
  %5998 = fdiv fast float 1.000000e+00, %5996
  %5999 = select i1 %5997, float %5998, float 0.000000e+00
  %6000 = fmul fast float %5999, %4675
  %6001 = fmul fast float %5999, %4676
  %6002 = fmul fast float %5999, %4677
  %6003 = fadd fast float %6000, -1.000000e+00
  %6004 = fadd fast float %6001, -1.000000e+00
  %6005 = fadd fast float %6002, -1.000000e+00
  %6006 = fmul fast float %6003, 5.000000e-01
  %6007 = fmul fast float %6004, 5.000000e-01
  %6008 = fmul fast float %6005, 5.000000e-01
  %6009 = fadd fast float %6006, 1.000000e+00
  %6010 = fadd fast float %6007, 1.000000e+00
  %6011 = fadd fast float %6008, 1.000000e+00
  %6012 = fmul fast float %5987, %5943
  %6013 = fmul fast float %5988, %5944
  %6014 = fmul fast float %5989, %5945
  %6015 = fsub fast float 1.000000e+00, %4682
  %6016 = bitcast float %6015 to i32
  %6017 = sitofp i32 %6016 to float
  %6018 = fmul fast float %6017, 5.000000e+00
  %6019 = fadd fast float %6018, 0xC1EFBF8940000000
  %6020 = fptosi float %6019 to i32
  %6021 = bitcast i32 %6020 to float
  %6022 = fmul fast float %6021, %4045
  %6023 = fmul fast float %5939, %6022
  %6024 = fmul fast float %6023, %5992
  %6025 = fmul fast float %6024, %6009
  %6026 = fmul fast float %5940, %6022
  %6027 = fmul fast float %6026, %5992
  %6028 = fmul fast float %6027, %6010
  %6029 = fmul fast float %5941, %6022
  %6030 = fmul fast float %6029, %5992
  %6031 = fmul fast float %6030, %6011
  %6032 = fmul fast float %5993, %4066
  %6033 = fmul fast float %5994, %4066
  %6034 = fmul fast float %5995, %4066
  %6035 = fadd fast float %6012, %4047
  %6036 = fadd fast float %6035, %6025
  %6037 = fmul fast float %6036, %4066
  %6038 = fadd fast float %6013, %4048
  %6039 = fadd fast float %6038, %6028
  %6040 = fmul fast float %6039, %4066
  %6041 = fadd fast float %6014, %4049
  %6042 = fadd fast float %6041, %6031
  %6043 = fmul fast float %6042, %4066
  %6044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.f32 %6044, 3
  %6046 = fcmp fast oeq float %6045, 0.000000e+00
  br i1 %6046, label %6275, label %6047

; <label>:6047                                    ; preds = %5986
  %6048 = extractvalue %dx.types.CBufRet.f32 %6044, 0
  %6049 = extractvalue %dx.types.CBufRet.f32 %6044, 1
  %6050 = extractvalue %dx.types.CBufRet.f32 %6044, 2
  %6051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6052 = extractvalue %dx.types.CBufRet.f32 %6051, 0
  %6053 = extractvalue %dx.types.CBufRet.f32 %6051, 1
  %6054 = extractvalue %dx.types.CBufRet.f32 %6051, 2
  %6055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6056 = extractvalue %dx.types.CBufRet.f32 %6055, 0
  %6057 = extractvalue %dx.types.CBufRet.f32 %6055, 1
  %6058 = call float @dx.op.dot3.f32(i32 55, float %6052, float %6053, float %6054, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6059 = select i1 %203, float %6056, float %6052
  %6060 = select i1 %203, float %6058, float %6053
  %6061 = select i1 %203, float %6057, float %6054
  %6062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6063 = extractvalue %dx.types.CBufRet.f32 %6062, 1
  %6064 = fcmp fast une float %6063, 0.000000e+00
  br i1 %6064, label %6065, label %6082

; <label>:6065                                    ; preds = %6047
  %6066 = fptoui float %85 to i32
  %6067 = fptoui float %86 to i32
  %6068 = lshr i32 %6066, 4
  %6069 = lshr i32 %6067, 4
  %6070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.f32 %6070, 0
  %6072 = fptoui float %6071 to i32
  %6073 = add i32 %6072, 15
  %6074 = lshr i32 %6073, 4
  %6075 = mul i32 %6074, %6069
  %6076 = add i32 %6075, %6068
  %6077 = shl i32 %6076, 3
  %6078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %6077, i32 undef)  ; BufferLoad(srv,index,wot)
  %6079 = extractvalue %dx.types.ResRet.i32 %6078, 0
  %6080 = and i32 %6079, -268435456
  %6081 = icmp eq i32 %6080, -1342177280
  br i1 %6081, label %6092, label %6082

; <label>:6082                                    ; preds = %6065, %6047
  %6083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6084 = extractvalue %dx.types.CBufRet.f32 %6083, 2
  %6085 = extractvalue %dx.types.CBufRet.f32 %6083, 3
  %6086 = fmul fast float %6084, %85
  %6087 = fmul fast float %6085, %86
  %6088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %6086, float %6087, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6089 = extractvalue %dx.types.ResRet.f32 %6088, 0
  %6090 = extractvalue %dx.types.ResRet.f32 %6088, 1
  %6091 = extractvalue %dx.types.ResRet.f32 %6088, 2
  br label %6092

; <label>:6092                                    ; preds = %6082, %6065
  %6093 = phi float [ %6089, %6082 ], [ 0.000000e+00, %6065 ]
  %6094 = phi float [ %6090, %6082 ], [ 0.000000e+00, %6065 ]
  %6095 = phi float [ %6091, %6082 ], [ 0.000000e+00, %6065 ]
  %6096 = call float @dx.op.binary.f32(i32 36, float %6094, float %6095)  ; FMin(a,b)
  %6097 = call float @dx.op.binary.f32(i32 36, float %6093, float %6096)  ; FMin(a,b)
  %6098 = fcmp fast ogt float %6097, 0.000000e+00
  br i1 %6098, label %6099, label %6275, !dx.controlflow.hints !93

; <label>:6099                                    ; preds = %6092
  %6100 = fmul fast float %6093, %6059
  %6101 = fmul fast float %6094, %6060
  %6102 = fmul fast float %6095, %6061
  %6103 = fsub fast float %6048, %4668
  %6104 = fsub fast float %6049, %4667
  %6105 = fsub fast float %6050, %4666
  %6106 = call float @dx.op.dot3.f32(i32 55, float %6103, float %6104, float %6105, float %6103, float %6104, float %6105)  ; Dot3(ax,ay,az,bx,by,bz)
  %6107 = call float @dx.op.unary.f32(i32 25, float %6106)  ; Rsqrt(value)
  %6108 = fmul fast float %6107, %6103
  %6109 = fmul fast float %6107, %6104
  %6110 = fmul fast float %6107, %6105
  %6111 = call float @dx.op.dot3.f32(i32 55, float %6048, float %6049, float %6050, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %6112 = call float @dx.op.dot3.f32(i32 55, float %4665, float %4664, float %4663, float %6108, float %6109, float %6110)  ; Dot3(ax,ay,az,bx,by,bz)
  %6113 = call float @dx.op.unary.f32(i32 7, float %6111)  ; Saturate(value)
  %6114 = bitcast i32 %4694 to float
  %6115 = fmul fast float %6113, %6113
  %6116 = fmul fast float %6115, %6114
  %6117 = call float @dx.op.unary.f32(i32 7, float %6116)  ; Saturate(value)
  %6118 = fmul fast float %6117, %6113
  %6119 = call float @dx.op.dot3.f32(i32 55, float %4672, float %4673, float %4674, float %6108, float %6109, float %6110)  ; Dot3(ax,ay,az,bx,by,bz)
  %6120 = fmul fast float %6119, %6119
  %6121 = call float @dx.op.unary.f32(i32 6, float %6111)  ; FAbs(value)
  %6122 = fsub fast float 1.000000e+00, %4678
  %6123 = call float @dx.op.binary.f32(i32 35, float %6122, float 0x3F847AE140000000)  ; FMax(a,b)
  %6124 = fmul fast float %6123, %6123
  %6125 = fmul fast float %6124, %6124
  %6126 = fsub fast float 1.000000e+00, %6125
  %6127 = fmul fast float %4682, %4682
  %6128 = fmul fast float %6127, %6126
  %6129 = fadd fast float %6128, %6125
  %6130 = bitcast float %6129 to i32
  %6131 = ashr i32 %6130, 1
  %6132 = add nsw i32 %6131, 532487669
  %6133 = bitcast i32 %6132 to float
  %6134 = fadd fast float %6133, %4682
  %6135 = fmul fast float %6125, %6120
  %6136 = fsub fast float 1.000000e+00, %6120
  %6137 = fadd fast float %6136, %6135
  %6138 = fmul fast float %6121, %6121
  %6139 = fmul fast float %6138, %6126
  %6140 = fadd fast float %6139, %6125
  %6141 = bitcast float %6140 to i32
  %6142 = ashr i32 %6141, 1
  %6143 = add nsw i32 %6142, 532487669
  %6144 = bitcast i32 %6143 to float
  %6145 = fadd fast float %6144, %6121
  %6146 = fmul fast float %6137, %6137
  %6147 = fmul fast float %6146, %6134
  %6148 = fmul fast float %6147, %6145
  %6149 = fdiv fast float 0x3FF0A00000000000, %6148
  %6150 = fmul fast float %6149, %6125
  %6151 = call float @dx.op.unary.f32(i32 6, float %6112)  ; FAbs(value)
  %6152 = fsub fast float 1.000000e+00, %6151
  %6153 = bitcast float %6152 to i32
  %6154 = sitofp i32 %6153 to float
  %6155 = fmul fast float %6154, 5.000000e+00
  %6156 = fadd fast float %6155, 0xC1EFBF8940000000
  %6157 = fptosi float %6156 to i32
  %6158 = bitcast i32 %6157 to float
  %6159 = fsub fast float 1.000000e+00, %4669
  %6160 = fsub fast float 1.000000e+00, %4670
  %6161 = fsub fast float 1.000000e+00, %4680
  %6162 = fmul fast float %6158, %6159
  %6163 = fmul fast float %6158, %6160
  %6164 = fmul fast float %6158, %6161
  %6165 = fadd fast float %6162, %4669
  %6166 = fadd fast float %6163, %4670
  %6167 = fadd fast float %6164, %4680
  br i1 %5959, label %6168, label %6191

; <label>:6168                                    ; preds = %6099
  %6169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %4046, float %6151, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6170 = extractvalue %dx.types.ResRet.f32 %6169, 0
  %6171 = extractvalue %dx.types.ResRet.f32 %6169, 1
  %6172 = extractvalue %dx.types.ResRet.f32 %6169, 2
  %6173 = fadd fast float %6170, -5.000000e-01
  %6174 = fadd fast float %6171, -5.000000e-01
  %6175 = fadd fast float %6172, -5.000000e-01
  %6176 = fmul fast float %4669, 4.000000e+00
  %6177 = fmul fast float %6176, %6159
  %6178 = fmul fast float %6177, %6173
  %6179 = fmul fast float %4670, 4.000000e+00
  %6180 = fmul fast float %6179, %6160
  %6181 = fmul fast float %6180, %6174
  %6182 = fmul fast float %4680, 4.000000e+00
  %6183 = fmul fast float %6182, %6161
  %6184 = fmul fast float %6183, %6175
  %6185 = fadd fast float %6178, %6165
  %6186 = fadd fast float %6181, %6166
  %6187 = fadd fast float %6184, %6167
  %6188 = call float @dx.op.unary.f32(i32 7, float %6185)  ; Saturate(value)
  %6189 = call float @dx.op.unary.f32(i32 7, float %6186)  ; Saturate(value)
  %6190 = call float @dx.op.unary.f32(i32 7, float %6187)  ; Saturate(value)
  br label %6191

; <label>:6191                                    ; preds = %6168, %6099
  %6192 = phi float [ %6188, %6168 ], [ %6165, %6099 ]
  %6193 = phi float [ %6189, %6168 ], [ %6166, %6099 ]
  %6194 = phi float [ %6190, %6168 ], [ %6167, %6099 ]
  %6195 = fmul fast float %6111, 9.843750e-01
  %6196 = fadd fast float %6195, 7.812500e-03
  %6197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6196, float %5949, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6198 = extractvalue %dx.types.ResRet.f32 %6197, 2
  %6199 = extractvalue %dx.types.ResRet.f32 %6197, 3
  %6200 = fmul fast float %6198, %4669
  %6201 = fmul fast float %6198, %4670
  %6202 = fmul fast float %6198, %4680
  %6203 = fadd fast float %6200, %6199
  %6204 = fadd fast float %6201, %6199
  %6205 = fadd fast float %6202, %6199
  br i1 %5959, label %6206, label %6229

; <label>:6206                                    ; preds = %6191
  %6207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %4046, float %6111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6208 = extractvalue %dx.types.ResRet.f32 %6207, 0
  %6209 = extractvalue %dx.types.ResRet.f32 %6207, 1
  %6210 = extractvalue %dx.types.ResRet.f32 %6207, 2
  %6211 = fadd fast float %6208, -5.000000e-01
  %6212 = fadd fast float %6209, -5.000000e-01
  %6213 = fadd fast float %6210, -5.000000e-01
  %6214 = fmul fast float %4669, 4.000000e+00
  %6215 = fmul fast float %6214, %6159
  %6216 = fmul fast float %6215, %6211
  %6217 = fmul fast float %4670, 4.000000e+00
  %6218 = fmul fast float %6217, %6160
  %6219 = fmul fast float %6218, %6212
  %6220 = fmul fast float %4680, 4.000000e+00
  %6221 = fmul fast float %6220, %6161
  %6222 = fmul fast float %6221, %6213
  %6223 = fadd fast float %6216, %6203
  %6224 = fadd fast float %6219, %6204
  %6225 = fadd fast float %6222, %6205
  %6226 = call float @dx.op.unary.f32(i32 7, float %6223)  ; Saturate(value)
  %6227 = call float @dx.op.unary.f32(i32 7, float %6224)  ; Saturate(value)
  %6228 = call float @dx.op.unary.f32(i32 7, float %6225)  ; Saturate(value)
  br label %6229

; <label>:6229                                    ; preds = %6206, %6191
  %6230 = phi float [ %6226, %6206 ], [ %6203, %6191 ]
  %6231 = phi float [ %6227, %6206 ], [ %6204, %6191 ]
  %6232 = phi float [ %6228, %6206 ], [ %6205, %6191 ]
  %6233 = call float @dx.op.binary.f32(i32 35, float %6231, float %6232)  ; FMax(a,b)
  %6234 = call float @dx.op.binary.f32(i32 35, float %6230, float %6233)  ; FMax(a,b)
  %6235 = fsub fast float 1.000000e+00, %6234
  %6236 = fmul fast float %6192, %6150
  %6237 = fmul fast float %6193, %6150
  %6238 = fmul fast float %6194, %6150
  %6239 = fsub fast float 1.000000e+00, %6112
  %6240 = bitcast float %6239 to i32
  %6241 = sitofp i32 %6240 to float
  %6242 = fmul fast float %6241, 5.000000e+00
  %6243 = fadd fast float %6242, 0xC1EFBF8940000000
  %6244 = fptosi float %6243 to i32
  %6245 = bitcast i32 %6244 to float
  %6246 = fmul fast float %6245, %4045
  %6247 = fmul fast float %6235, %6246
  %6248 = fmul fast float %6247, %6009
  %6249 = fmul fast float %6247, %6010
  %6250 = fmul fast float %6247, %6011
  %6251 = fadd fast float %6248, %6236
  %6252 = fadd fast float %6249, %6237
  %6253 = fadd fast float %6250, %6238
  %6254 = fmul fast float %6118, %6100
  %6255 = fmul fast float %6254, %6235
  %6256 = fmul fast float %6118, %6101
  %6257 = fmul fast float %6256, %6235
  %6258 = fmul fast float %6118, %6102
  %6259 = fmul fast float %6258, %6235
  %6260 = fmul fast float %6254, %6251
  %6261 = fmul fast float %6256, %6252
  %6262 = fmul fast float %6258, %6253
  %6263 = fadd fast float %6255, %5993
  %6264 = fmul fast float %6263, %4066
  %6265 = fadd fast float %6257, %5994
  %6266 = fmul fast float %6265, %4066
  %6267 = fadd fast float %6259, %5995
  %6268 = fmul fast float %6267, %4066
  %6269 = fadd fast float %6260, %6036
  %6270 = fmul fast float %6269, %4066
  %6271 = fadd fast float %6261, %6039
  %6272 = fmul fast float %6271, %4066
  %6273 = fadd fast float %6262, %6042
  %6274 = fmul fast float %6273, %4066
  br label %6275

; <label>:6275                                    ; preds = %6229, %6092, %5986
  %6276 = phi float [ %6037, %5986 ], [ %6037, %6092 ], [ %6270, %6229 ]
  %6277 = phi float [ %6040, %5986 ], [ %6040, %6092 ], [ %6272, %6229 ]
  %6278 = phi float [ %6043, %5986 ], [ %6043, %6092 ], [ %6274, %6229 ]
  %6279 = phi float [ %6032, %5986 ], [ %6032, %6092 ], [ %6264, %6229 ]
  %6280 = phi float [ %6033, %5986 ], [ %6033, %6092 ], [ %6266, %6229 ]
  %6281 = phi float [ %6034, %5986 ], [ %6034, %6092 ], [ %6268, %6229 ]
  %6282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6283 = extractvalue %dx.types.CBufRet.i32 %6282, 0
  %6284 = icmp eq i32 %6283, 0
  br i1 %6284, label %6720, label %6285

; <label>:6285                                    ; preds = %6275
  %6286 = fptoui float %85 to i32
  %6287 = fptoui float %86 to i32
  %6288 = lshr i32 %6286, 4
  %6289 = lshr i32 %6287, 4
  %6290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6291 = extractvalue %dx.types.CBufRet.i32 %6290, 0
  %6292 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6289, i32 %6291, i32 %6288)  ; UMad(a,b,c)
  %6293 = add nsw i32 %6283, -1
  %6294 = call i32 @dx.op.binary.i32(i32 37, i32 %6293, i32 0)  ; IMax(a,b)
  %6295 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %6296 = fptoui float %6295 to i32
  %6297 = lshr i32 %6296, 5
  %6298 = call i32 @dx.op.binary.i32(i32 40, i32 %6297, i32 8191)  ; UMin(a,b)
  %6299 = shl i32 %6298, 2
  %6300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6299, i32 undef)  ; BufferLoad(srv,index,wot)
  %6301 = extractvalue %dx.types.ResRet.i32 %6300, 0
  %6302 = lshr i32 %6301, 16
  %6303 = and i32 %6301, 65535
  %6304 = lshr i32 %6301, 21
  %6305 = lshr i32 %6303, 5
  %6306 = call i32 @dx.op.binary.i32(i32 40, i32 %6305, i32 %6294)  ; UMin(a,b)
  %6307 = icmp ugt i32 %6304, %6306
  br i1 %6307, label %6720, label %6308

; <label>:6308                                    ; preds = %6285
  br label %6309

; <label>:6309                                    ; preds = %6710, %6308
  %6310 = phi i32 [ %6717, %6710 ], [ %6304, %6308 ]
  %6311 = phi float [ %6711, %6710 ], [ %6276, %6308 ]
  %6312 = phi float [ %6712, %6710 ], [ %6277, %6308 ]
  %6313 = phi float [ %6713, %6710 ], [ %6278, %6308 ]
  %6314 = phi float [ %6714, %6710 ], [ %6279, %6308 ]
  %6315 = phi float [ %6715, %6710 ], [ %6280, %6308 ]
  %6316 = phi float [ %6716, %6710 ], [ %6281, %6308 ]
  %6317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.i32 %6317, 0
  %6319 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6292, i32 %6318, i32 %6310)  ; UMad(a,b,c)
  %6320 = shl i32 %6319, 2
  %6321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6320, i32 undef)  ; BufferLoad(srv,index,wot)
  %6322 = extractvalue %dx.types.ResRet.i32 %6321, 0
  %6323 = shl i32 %6310, 5
  %6324 = sub nsw i32 %6302, %6323
  %6325 = call i32 @dx.op.binary.i32(i32 37, i32 %6324, i32 0)  ; IMax(a,b)
  %6326 = call i32 @dx.op.binary.i32(i32 38, i32 %6325, i32 31)  ; IMin(a,b)
  %6327 = sub nsw i32 1, %6302
  %6328 = add nsw i32 %6327, %6303
  %6329 = call i32 @dx.op.binary.i32(i32 37, i32 %6328, i32 0)  ; IMax(a,b)
  %6330 = call i32 @dx.op.binary.i32(i32 38, i32 %6329, i32 32)  ; IMin(a,b)
  %6331 = and i32 %6330, 31
  %6332 = shl i32 -1, %6331
  %6333 = xor i32 %6332, -1
  %6334 = and i32 %6326, 31
  %6335 = shl i32 %6333, %6334
  %6336 = icmp eq i32 %6330, 32
  %6337 = select i1 %6336, i32 -1, i32 %6335
  %6338 = and i32 %6337, %6322
  %6339 = icmp eq i32 %6338, 0
  br i1 %6339, label %6710, label %6340

; <label>:6340                                    ; preds = %6309
  br label %6341

; <label>:6341                                    ; preds = %6421, %6340
  %6342 = phi i32 [ %6353, %6421 ], [ %6338, %6340 ]
  %6343 = phi float [ %6422, %6421 ], [ %6311, %6340 ]
  %6344 = phi float [ %6423, %6421 ], [ %6312, %6340 ]
  %6345 = phi float [ %6424, %6421 ], [ %6313, %6340 ]
  %6346 = phi float [ %6425, %6421 ], [ %6314, %6340 ]
  %6347 = phi float [ %6426, %6421 ], [ %6315, %6340 ]
  %6348 = phi float [ %6427, %6421 ], [ %6316, %6340 ]
  %6349 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6342)  ; FirstbitLo(value)
  %6350 = add i32 %6349, %6323
  %6351 = and i32 %6349, 31
  %6352 = shl i32 1, %6351
  %6353 = xor i32 %6352, %6342
  %6354 = mul i32 %6350, 112
  %6355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6354, i32 undef)  ; BufferLoad(srv,index,wot)
  %6356 = extractvalue %dx.types.ResRet.f32 %6355, 0
  %6357 = extractvalue %dx.types.ResRet.f32 %6355, 1
  %6358 = extractvalue %dx.types.ResRet.f32 %6355, 2
  %6359 = or i32 %6354, 12
  %6360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6359, i32 undef)  ; BufferLoad(srv,index,wot)
  %6361 = extractvalue %dx.types.ResRet.f32 %6360, 0
  %6362 = add i32 %6354, 44
  %6363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6362, i32 undef)  ; BufferLoad(srv,index,wot)
  %6364 = extractvalue %dx.types.ResRet.f32 %6363, 0
  %6365 = add i32 %6354, 48
  %6366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6365, i32 undef)  ; BufferLoad(srv,index,wot)
  %6367 = extractvalue %dx.types.ResRet.f32 %6366, 0
  %6368 = extractvalue %dx.types.ResRet.f32 %6366, 1
  %6369 = extractvalue %dx.types.ResRet.f32 %6366, 2
  %6370 = add i32 %6354, 80
  %6371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6370, i32 undef)  ; BufferLoad(srv,index,wot)
  %6372 = extractvalue %dx.types.ResRet.f32 %6371, 1
  %6373 = extractvalue %dx.types.ResRet.f32 %6371, 2
  %6374 = call float @dx.op.dot3.f32(i32 55, float %6356, float %6357, float %6358, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6375 = select i1 %203, float %6372, float %6356
  %6376 = select i1 %203, float %6374, float %6357
  %6377 = select i1 %203, float %6373, float %6358
  %6378 = fsub fast float %6367, %132
  %6379 = fsub fast float %6368, %133
  %6380 = fsub fast float %6369, %134
  %6381 = call float @dx.op.dot3.f32(i32 55, float %6378, float %6379, float %6380, float %6378, float %6379, float %6380)  ; Dot3(ax,ay,az,bx,by,bz)
  %6382 = call float @dx.op.unary.f32(i32 24, float %6381)  ; Sqrt(value)
  %6383 = fdiv fast float 1.000000e+00, %6382
  %6384 = fmul fast float %6383, %6378
  %6385 = fmul fast float %6383, %6379
  %6386 = fmul fast float %6383, %6380
  %6387 = fadd fast float %6382, %6361
  %6388 = fdiv fast float 1.000000e+00, %6387
  %6389 = fmul float %6364, %6388
  %6390 = fmul float %6389, %6389
  %6391 = call float @dx.op.unary.f32(i32 7, float %6390)  ; Saturate(value)
  %6392 = and i32 %6352, %6338
  %6393 = icmp eq i32 %6392, 0
  br i1 %6393, label %6416, label %6394, !dx.controlflow.hints !94

; <label>:6394                                    ; preds = %6341
  %6395 = lshr i32 %6286, 5
  %6396 = lshr i32 %6287, 5
  %6397 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %6395, i32 %6396, i32 %6350, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6398 = extractvalue %dx.types.ResRet.i32 %6397, 0
  %6399 = and i32 %6398, 3
  %6400 = icmp eq i32 %6399, 0
  %6401 = select i1 %6400, float 1.000000e+00, float 0.000000e+00
  %6402 = icmp eq i32 %6399, 3
  br i1 %6402, label %6403, label %6416

; <label>:6403                                    ; preds = %6394
  %6404 = lshr i32 %6398, 10
  %6405 = and i32 %6404, 8160
  %6406 = and i32 %6287, 31
  %6407 = or i32 %6405, %6406
  %6408 = lshr i32 %6398, 1
  %6409 = and i32 %6408, 16352
  %6410 = and i32 %6286, 31
  %6411 = or i32 %6409, %6410
  %6412 = lshr i32 %6398, 23
  %6413 = and i32 %6412, 255
  %6414 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %6411, i32 %6407, i32 %6413, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6415 = extractvalue %dx.types.ResRet.f32 %6414, 0
  br label %6416

; <label>:6416                                    ; preds = %6403, %6394, %6341
  %6417 = phi float [ %6415, %6403 ], [ %6401, %6394 ], [ 0.000000e+00, %6341 ]
  %6418 = call float @dx.op.binary.f32(i32 36, float %6417, float %6417)  ; FMin(a,b)
  %6419 = call float @dx.op.binary.f32(i32 36, float %6417, float %6418)  ; FMin(a,b)
  %6420 = fcmp fast ogt float %6419, 0.000000e+00
  br i1 %6420, label %6429, label %6421, !dx.controlflow.hints !95

; <label>:6421                                    ; preds = %6666, %6416
  %6422 = phi float [ %6343, %6416 ], [ %6706, %6666 ]
  %6423 = phi float [ %6344, %6416 ], [ %6707, %6666 ]
  %6424 = phi float [ %6345, %6416 ], [ %6708, %6666 ]
  %6425 = phi float [ %6346, %6416 ], [ %6700, %6666 ]
  %6426 = phi float [ %6347, %6416 ], [ %6701, %6666 ]
  %6427 = phi float [ %6348, %6416 ], [ %6702, %6666 ]
  %6428 = icmp eq i32 %6342, %6352
  br i1 %6428, label %6709, label %6341

; <label>:6429                                    ; preds = %6416
  %6430 = fmul fast float %6417, %6375
  %6431 = fmul fast float %6417, %6376
  %6432 = fmul fast float %6417, %6377
  %6433 = fsub fast float %6369, %4468
  %6434 = fcmp fast ogt float %6433, 0.000000e+00
  %6435 = fsub fast float %134, %4468
  %6436 = fcmp fast ogt float %6435, 0.000000e+00
  %6437 = xor i1 %6436, %6434
  %6438 = fsub fast float %4468, %6369
  %6439 = fmul fast float %6438, 2.000000e+00
  %6440 = fadd fast float %6439, %6369
  %6441 = select i1 %6437, float %6369, float %6440
  %6442 = fsub fast float %6441, %134
  %6443 = call float @dx.op.dot3.f32(i32 55, float %6378, float %6379, float %6442, float %6378, float %6379, float %6442)  ; Dot3(ax,ay,az,bx,by,bz)
  %6444 = call float @dx.op.unary.f32(i32 25, float %6443)  ; Rsqrt(value)
  %6445 = fmul fast float %6444, %6378
  %6446 = fmul fast float %6444, %6379
  %6447 = fmul fast float %6444, %6442
  %6448 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4476)  ; Dot3(ax,ay,az,bx,by,bz)
  %6449 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6445, float %6446, float %6447)  ; Dot3(ax,ay,az,bx,by,bz)
  %6450 = fdiv fast float 1.000000e+00, %6449
  %6451 = fmul fast float %6450, %6448
  %6452 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6435, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6453 = fcmp fast ogt float %6452, 0.000000e+00
  %6454 = fcmp fast olt float %6452, 0.000000e+00
  %6455 = zext i1 %6453 to i32
  %6456 = zext i1 %6454 to i32
  %6457 = sub nsw i32 %6455, %6456
  %6458 = sitofp i32 %6457 to float
  %6459 = fsub fast float %6441, %4468
  %6460 = call float @dx.op.dot3.f32(i32 55, float %6378, float %6379, float %6459, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6461 = fcmp fast ogt float %6460, 0.000000e+00
  %6462 = fcmp fast olt float %6460, 0.000000e+00
  %6463 = zext i1 %6461 to i32
  %6464 = zext i1 %6462 to i32
  %6465 = sub nsw i32 %6463, %6464
  %6466 = sitofp i32 %6465 to float
  %6467 = fcmp fast une float %6458, %6466
  br i1 %6467, label %6468, label %6478

; <label>:6468                                    ; preds = %6429
  %6469 = fmul fast float %6451, %6447
  %6470 = fmul fast float %6451, %6446
  %6471 = fmul fast float %6451, %6445
  %6472 = fmul fast float %6471, %6471
  %6473 = fmul fast float %6470, %6470
  %6474 = fadd fast float %6472, %6473
  %6475 = fmul fast float %6469, %6469
  %6476 = fadd fast float %6474, %6475
  %6477 = call float @dx.op.unary.f32(i32 24, float %6476)  ; Sqrt(value)
  br label %6490

; <label>:6478                                    ; preds = %6429
  %6479 = icmp slt i32 %6457, 0
  br i1 %6479, label %6480, label %6490

; <label>:6480                                    ; preds = %6478
  %6481 = fsub fast float %132, %6367
  %6482 = fsub fast float %133, %6368
  %6483 = fsub fast float %134, %6441
  %6484 = fmul fast float %6481, %6481
  %6485 = fmul fast float %6482, %6482
  %6486 = fadd fast float %6484, %6485
  %6487 = fmul fast float %6483, %6483
  %6488 = fadd fast float %6486, %6487
  %6489 = call float @dx.op.unary.f32(i32 24, float %6488)  ; Sqrt(value)
  br label %6490

; <label>:6490                                    ; preds = %6480, %6478, %6468
  %6491 = phi float [ %6477, %6468 ], [ %6489, %6480 ], [ 0.000000e+00, %6478 ]
  %6492 = and i1 %6436, %6434
  %6493 = fsub fast float -0.000000e+00, %6491
  %6494 = select i1 %6492, float -0.000000e+00, float %6493
  %6495 = fmul fast float %4469, 0x3FF7154760000000
  %6496 = fmul fast float %6495, %6494
  %6497 = fmul fast float %4470, 0x3FF7154760000000
  %6498 = fmul fast float %6497, %6494
  %6499 = fmul fast float %4471, 0x3FF7154760000000
  %6500 = fmul fast float %6499, %6494
  %6501 = call float @dx.op.unary.f32(i32 21, float %6496)  ; Exp(value)
  %6502 = call float @dx.op.unary.f32(i32 21, float %6498)  ; Exp(value)
  %6503 = call float @dx.op.unary.f32(i32 21, float %6500)  ; Exp(value)
  %6504 = call float @dx.op.unary.f32(i32 7, float %6501)  ; Saturate(value)
  %6505 = call float @dx.op.unary.f32(i32 7, float %6502)  ; Saturate(value)
  %6506 = call float @dx.op.unary.f32(i32 7, float %6503)  ; Saturate(value)
  %6507 = fmul fast float %6430, %6504
  %6508 = fmul fast float %6431, %6505
  %6509 = fmul fast float %6432, %6506
  %6510 = fsub fast float %6384, %4668
  %6511 = fsub fast float %6385, %4667
  %6512 = fsub fast float %6386, %4666
  %6513 = call float @dx.op.dot3.f32(i32 55, float %6510, float %6511, float %6512, float %6510, float %6511, float %6512)  ; Dot3(ax,ay,az,bx,by,bz)
  %6514 = call float @dx.op.unary.f32(i32 25, float %6513)  ; Rsqrt(value)
  %6515 = fmul fast float %6514, %6510
  %6516 = fmul fast float %6514, %6511
  %6517 = fmul fast float %6514, %6512
  %6518 = call float @dx.op.dot3.f32(i32 55, float %6384, float %6385, float %6386, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %6519 = call float @dx.op.dot3.f32(i32 55, float %4665, float %4664, float %4663, float %6515, float %6516, float %6517)  ; Dot3(ax,ay,az,bx,by,bz)
  %6520 = call float @dx.op.unary.f32(i32 7, float %6518)  ; Saturate(value)
  %6521 = fmul fast float %6520, %6391
  %6522 = bitcast i32 %4694 to float
  %6523 = fmul fast float %6520, %6520
  %6524 = fmul fast float %6523, %6522
  %6525 = call float @dx.op.unary.f32(i32 7, float %6524)  ; Saturate(value)
  %6526 = fmul fast float %6521, %6525
  %6527 = bitcast float %6381 to i32
  %6528 = ashr i32 %6527, 1
  %6529 = sub nsw i32 1597463007, %6528
  %6530 = bitcast i32 %6529 to float
  %6531 = fmul fast float %6530, %6378
  %6532 = fmul fast float %6530, %6379
  %6533 = fmul fast float %6530, %6380
  %6534 = fsub fast float %6531, %4668
  %6535 = fsub fast float %6532, %4667
  %6536 = fsub fast float %6533, %4666
  %6537 = call float @dx.op.dot3.f32(i32 55, float %6534, float %6535, float %6536, float %6534, float %6535, float %6536)  ; Dot3(ax,ay,az,bx,by,bz)
  %6538 = call float @dx.op.unary.f32(i32 25, float %6537)  ; Rsqrt(value)
  %6539 = fmul fast float %6534, %6538
  %6540 = fmul fast float %6535, %6538
  %6541 = fmul fast float %6536, %6538
  %6542 = call float @dx.op.dot3.f32(i32 55, float %4672, float %4673, float %4674, float %6539, float %6540, float %6541)  ; Dot3(ax,ay,az,bx,by,bz)
  %6543 = fmul fast float %6542, %6542
  %6544 = call float @dx.op.unary.f32(i32 6, float %6518)  ; FAbs(value)
  %6545 = fsub fast float 1.000000e+00, %4678
  %6546 = call float @dx.op.binary.f32(i32 35, float %6545, float 0x3F847AE140000000)  ; FMax(a,b)
  %6547 = fmul fast float %6546, %6546
  %6548 = fmul fast float %6547, %6547
  %6549 = fsub fast float 1.000000e+00, %6548
  %6550 = fmul fast float %4682, %4682
  %6551 = fmul fast float %6550, %6549
  %6552 = fadd fast float %6551, %6548
  %6553 = bitcast float %6552 to i32
  %6554 = ashr i32 %6553, 1
  %6555 = add nsw i32 %6554, 532487669
  %6556 = bitcast i32 %6555 to float
  %6557 = fadd fast float %6556, %4682
  %6558 = fmul fast float %6548, %6543
  %6559 = fsub fast float 1.000000e+00, %6543
  %6560 = fadd fast float %6559, %6558
  %6561 = fmul fast float %6544, %6544
  %6562 = fmul fast float %6561, %6549
  %6563 = fadd fast float %6562, %6548
  %6564 = bitcast float %6563 to i32
  %6565 = ashr i32 %6564, 1
  %6566 = add nsw i32 %6565, 532487669
  %6567 = bitcast i32 %6566 to float
  %6568 = fadd fast float %6567, %6544
  %6569 = fmul fast float %6560, %6560
  %6570 = fmul fast float %6569, %6557
  %6571 = fmul fast float %6570, %6568
  %6572 = fdiv fast float 1.000000e+00, %6571
  %6573 = bitcast float %6548 to i32
  %6574 = sitofp i32 %6573 to float
  %6575 = fmul fast float %6574, 0x3FE7F73180000000
  %6576 = fadd fast float %6575, 0x41AFE27C40000000
  %6577 = fptosi float %6576 to i32
  %6578 = bitcast i32 %6577 to float
  %6579 = fmul fast float %6364, 0x3FD80E9D60000000
  %6580 = fmul fast float %6579, %6530
  %6581 = fadd fast float %6578, %6580
  %6582 = bitcast float %6581 to i32
  %6583 = sub nsw i32 2129859010, %6582
  %6584 = bitcast i32 %6583 to float
  %6585 = fmul fast float %6548, %6572
  %6586 = fmul fast float %6585, %6578
  %6587 = fmul fast float %6586, %6584
  %6588 = call float @dx.op.unary.f32(i32 6, float %6519)  ; FAbs(value)
  %6589 = fsub fast float 1.000000e+00, %6588
  %6590 = bitcast float %6589 to i32
  %6591 = sitofp i32 %6590 to float
  %6592 = fmul fast float %6591, 5.000000e+00
  %6593 = fadd fast float %6592, 0xC1EFBF8940000000
  %6594 = fptosi float %6593 to i32
  %6595 = bitcast i32 %6594 to float
  %6596 = fsub fast float 1.000000e+00, %4669
  %6597 = fsub fast float 1.000000e+00, %4670
  %6598 = fsub fast float 1.000000e+00, %4680
  %6599 = fmul fast float %6595, %6596
  %6600 = fmul fast float %6595, %6597
  %6601 = fmul fast float %6595, %6598
  %6602 = fadd fast float %6599, %4669
  %6603 = fadd fast float %6600, %4670
  %6604 = fadd fast float %6601, %4680
  br i1 %5959, label %6605, label %6628

; <label>:6605                                    ; preds = %6490
  %6606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %4046, float %6588, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6607 = extractvalue %dx.types.ResRet.f32 %6606, 0
  %6608 = extractvalue %dx.types.ResRet.f32 %6606, 1
  %6609 = extractvalue %dx.types.ResRet.f32 %6606, 2
  %6610 = fadd fast float %6607, -5.000000e-01
  %6611 = fadd fast float %6608, -5.000000e-01
  %6612 = fadd fast float %6609, -5.000000e-01
  %6613 = fmul fast float %4669, 4.000000e+00
  %6614 = fmul fast float %6613, %6596
  %6615 = fmul fast float %6614, %6610
  %6616 = fmul fast float %4670, 4.000000e+00
  %6617 = fmul fast float %6616, %6597
  %6618 = fmul fast float %6617, %6611
  %6619 = fmul fast float %4680, 4.000000e+00
  %6620 = fmul fast float %6619, %6598
  %6621 = fmul fast float %6620, %6612
  %6622 = fadd fast float %6615, %6602
  %6623 = fadd fast float %6618, %6603
  %6624 = fadd fast float %6621, %6604
  %6625 = call float @dx.op.unary.f32(i32 7, float %6622)  ; Saturate(value)
  %6626 = call float @dx.op.unary.f32(i32 7, float %6623)  ; Saturate(value)
  %6627 = call float @dx.op.unary.f32(i32 7, float %6624)  ; Saturate(value)
  br label %6628

; <label>:6628                                    ; preds = %6605, %6490
  %6629 = phi float [ %6625, %6605 ], [ %6602, %6490 ]
  %6630 = phi float [ %6626, %6605 ], [ %6603, %6490 ]
  %6631 = phi float [ %6627, %6605 ], [ %6604, %6490 ]
  %6632 = fmul fast float %6518, 9.843750e-01
  %6633 = fadd fast float %6632, 7.812500e-03
  %6634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6633, float %5949, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6635 = extractvalue %dx.types.ResRet.f32 %6634, 2
  %6636 = extractvalue %dx.types.ResRet.f32 %6634, 3
  %6637 = fmul fast float %6635, %4669
  %6638 = fmul fast float %6635, %4670
  %6639 = fmul fast float %6635, %4680
  %6640 = fadd fast float %6637, %6636
  %6641 = fadd fast float %6638, %6636
  %6642 = fadd fast float %6639, %6636
  br i1 %5959, label %6643, label %6666

; <label>:6643                                    ; preds = %6628
  %6644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %4046, float %6518, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6645 = extractvalue %dx.types.ResRet.f32 %6644, 0
  %6646 = extractvalue %dx.types.ResRet.f32 %6644, 1
  %6647 = extractvalue %dx.types.ResRet.f32 %6644, 2
  %6648 = fadd fast float %6645, -5.000000e-01
  %6649 = fadd fast float %6646, -5.000000e-01
  %6650 = fadd fast float %6647, -5.000000e-01
  %6651 = fmul fast float %4669, 4.000000e+00
  %6652 = fmul fast float %6651, %6596
  %6653 = fmul fast float %6652, %6648
  %6654 = fmul fast float %4670, 4.000000e+00
  %6655 = fmul fast float %6654, %6597
  %6656 = fmul fast float %6655, %6649
  %6657 = fmul fast float %4680, 4.000000e+00
  %6658 = fmul fast float %6657, %6598
  %6659 = fmul fast float %6658, %6650
  %6660 = fadd fast float %6653, %6640
  %6661 = fadd fast float %6656, %6641
  %6662 = fadd fast float %6659, %6642
  %6663 = call float @dx.op.unary.f32(i32 7, float %6660)  ; Saturate(value)
  %6664 = call float @dx.op.unary.f32(i32 7, float %6661)  ; Saturate(value)
  %6665 = call float @dx.op.unary.f32(i32 7, float %6662)  ; Saturate(value)
  br label %6666

; <label>:6666                                    ; preds = %6643, %6628
  %6667 = phi float [ %6663, %6643 ], [ %6640, %6628 ]
  %6668 = phi float [ %6664, %6643 ], [ %6641, %6628 ]
  %6669 = phi float [ %6665, %6643 ], [ %6642, %6628 ]
  %6670 = call float @dx.op.binary.f32(i32 35, float %6668, float %6669)  ; FMax(a,b)
  %6671 = call float @dx.op.binary.f32(i32 35, float %6667, float %6670)  ; FMax(a,b)
  %6672 = fsub fast float 1.000000e+00, %6671
  %6673 = fmul fast float %6629, %6587
  %6674 = fmul fast float %6630, %6587
  %6675 = fmul fast float %6631, %6587
  %6676 = fsub fast float 1.000000e+00, %6519
  %6677 = bitcast float %6676 to i32
  %6678 = sitofp i32 %6677 to float
  %6679 = fmul fast float %6678, 5.000000e+00
  %6680 = fadd fast float %6679, 0xC1EFBF8940000000
  %6681 = fptosi float %6680 to i32
  %6682 = bitcast i32 %6681 to float
  %6683 = fmul fast float %6682, %4045
  %6684 = fmul fast float %6672, %6683
  %6685 = fmul fast float %6684, %6009
  %6686 = fmul fast float %6684, %6010
  %6687 = fmul fast float %6684, %6011
  %6688 = fadd fast float %6685, %6673
  %6689 = fadd fast float %6686, %6674
  %6690 = fadd fast float %6687, %6675
  %6691 = fmul fast float %6507, %4066
  %6692 = fmul fast float %6691, %6526
  %6693 = fmul fast float %6692, %6672
  %6694 = fmul fast float %6508, %4066
  %6695 = fmul fast float %6694, %6526
  %6696 = fmul fast float %6695, %6672
  %6697 = fmul fast float %6509, %4066
  %6698 = fmul fast float %6697, %6526
  %6699 = fmul fast float %6698, %6672
  %6700 = fadd fast float %6693, %6346
  %6701 = fadd fast float %6696, %6347
  %6702 = fadd fast float %6699, %6348
  %6703 = fmul fast float %6692, %6688
  %6704 = fmul fast float %6695, %6689
  %6705 = fmul fast float %6698, %6690
  %6706 = fadd fast float %6703, %6343
  %6707 = fadd fast float %6704, %6344
  %6708 = fadd fast float %6705, %6345
  br label %6421

; <label>:6709                                    ; preds = %6421
  br label %6710

; <label>:6710                                    ; preds = %6709, %6309
  %6711 = phi float [ %6311, %6309 ], [ %6422, %6709 ]
  %6712 = phi float [ %6312, %6309 ], [ %6423, %6709 ]
  %6713 = phi float [ %6313, %6309 ], [ %6424, %6709 ]
  %6714 = phi float [ %6314, %6309 ], [ %6425, %6709 ]
  %6715 = phi float [ %6315, %6309 ], [ %6426, %6709 ]
  %6716 = phi float [ %6316, %6309 ], [ %6427, %6709 ]
  %6717 = add i32 %6310, 1
  %6718 = icmp ugt i32 %6717, %6306
  br i1 %6718, label %6719, label %6309

; <label>:6719                                    ; preds = %6710
  br label %6720

; <label>:6720                                    ; preds = %6719, %6285, %6275
  %6721 = phi float [ %6276, %6275 ], [ %6276, %6285 ], [ %6711, %6719 ]
  %6722 = phi float [ %6277, %6275 ], [ %6277, %6285 ], [ %6712, %6719 ]
  %6723 = phi float [ %6278, %6275 ], [ %6278, %6285 ], [ %6713, %6719 ]
  %6724 = phi float [ %6279, %6275 ], [ %6279, %6285 ], [ %6714, %6719 ]
  %6725 = phi float [ %6280, %6275 ], [ %6280, %6285 ], [ %6715, %6719 ]
  %6726 = phi float [ %6281, %6275 ], [ %6281, %6285 ], [ %6716, %6719 ]
  %6727 = call float @dx.op.unary.f32(i32 24, float %4675)  ; Sqrt(value)
  %6728 = call float @dx.op.unary.f32(i32 24, float %4676)  ; Sqrt(value)
  %6729 = call float @dx.op.unary.f32(i32 24, float %4677)  ; Sqrt(value)
  %6730 = fmul fast float %6727, %6724
  %6731 = fmul fast float %6728, %6725
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 0
  br i1 %203, label %6734, label %6754

; <label>:6734                                    ; preds = %6720
  %6735 = fadd fast float %6726, %4043
  %6736 = fmul fast float %6735, %4044
  %6737 = fsub fast float 1.000000e+00, %4044
  %6738 = call float @dx.op.unary.f32(i32 7, float %6737)  ; Saturate(value)
  %6739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6740 = extractvalue %dx.types.CBufRet.f32 %6739, 3
  %6741 = fmul fast float %6740, %6738
  %6742 = fadd fast float %6741, %6736
  %6743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6744 = extractvalue %dx.types.CBufRet.f32 %6743, 0
  %6745 = fmul fast float %6744, %6015
  %6746 = fsub fast float %6742, %6745
  %6747 = fadd fast float %6731, %6730
  %6748 = fmul fast float %6733, %6747
  %6749 = extractvalue %dx.types.CBufRet.f32 %6739, 1
  %6750 = fsub fast float %6746, %6749
  %6751 = extractvalue %dx.types.CBufRet.f32 %6739, 2
  %6752 = fmul fast float %6750, %6751
  %6753 = call float @dx.op.unary.f32(i32 7, float %6752)  ; Saturate(value)
  br label %6770

; <label>:6754                                    ; preds = %6720
  %6755 = fmul fast float %6729, %6726
  %6756 = fmul fast float %6733, %6730
  %6757 = fmul fast float %6733, %6731
  %6758 = fmul fast float %6755, %6733
  %6759 = add i32 %44, 356
  %6760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6759, i32 undef)  ; BufferLoad(srv,index,wot)
  %6761 = extractvalue %dx.types.ResRet.i32 %6760, 0
  %6762 = and i32 %6761, 32
  %6763 = icmp eq i32 %6762, 0
  br i1 %6763, label %6770, label %6764

; <label>:6764                                    ; preds = %6754
  %6765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6766 = extractvalue %dx.types.CBufRet.f32 %6765, 0
  %6767 = fmul fast float %6766, 0x3FE99999A0000000
  %6768 = fadd fast float %6766, %6756
  %6769 = fadd fast float %6767, %6758
  br label %6770

; <label>:6770                                    ; preds = %6764, %6754, %6734
  %6771 = phi float [ %6748, %6734 ], [ %6768, %6764 ], [ %6756, %6754 ]
  %6772 = phi float [ %6753, %6734 ], [ %6757, %6764 ], [ %6757, %6754 ]
  %6773 = phi float [ 1.000000e+00, %6734 ], [ %6769, %6764 ], [ %6758, %6754 ]
  %6774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6775 = extractvalue %dx.types.CBufRet.f32 %6774, 0
  %6776 = fmul fast float %6775, %6722
  %6777 = fmul fast float %6775, %6723
  %6778 = fadd fast float %6722, %6721
  %6779 = select i1 %203, float %6778, float %6721
  %6780 = fmul float %6779, %6775
  %6781 = select i1 %203, float 0.000000e+00, float %6776
  %6782 = select i1 %203, float 0.000000e+00, float %6777
  %6783 = fmul fast float %6771, %6727
  %6784 = fmul fast float %6772, %6728
  %6785 = fmul fast float %6773, %6729
  %6786 = fadd fast float %6780, %6783
  %6787 = fadd fast float %6781, %6784
  %6788 = fadd fast float %6782, %6785
  %6789 = select i1 %203, float %6772, float %6787
  %6790 = select i1 %203, float %6773, float %6788
  %6791 = call float @dx.op.binary.f32(i32 36, float %6786, float 3.225500e+04)  ; FMin(a,b)
  %6792 = call float @dx.op.binary.f32(i32 36, float %6789, float 3.225500e+04)  ; FMin(a,b)
  %6793 = call float @dx.op.binary.f32(i32 36, float %6790, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6791)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6792)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6793)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[44 x i32] [i32 42, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !85}
!59 = !{!60, !83, null}
!60 = !{!61, !64, !66, !68, !70, !72, !73, !74, !75, !77, !79, !81, !82}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, !65}
!65 = !{i32 3, i32 14}
!66 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 2, i8 0, !67}
!67 = !{i32 3, i32 15}
!68 = !{i32 3, !"TEXCOORDS", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 3, i8 0, !67}
!69 = !{i32 1}
!70 = !{i32 4, !"LMAPCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 4, i8 0, !71}
!71 = !{i32 3, i32 7}
!72 = !{i32 5, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 5, i8 0, !71}
!73 = !{i32 6, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!74 = !{i32 7, !"NORMAL_TRANSFORM", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 7, i8 0, !67}
!75 = !{i32 8, !"NORMAL_TRANSFORM", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 8, i8 0, !67}
!76 = !{i32 2}
!77 = !{i32 9, !"NORMAL_TRANSFORM", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 9, i8 0, !67}
!78 = !{i32 3}
!79 = !{i32 10, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 10, i8 0, !80}
!80 = !{i32 3, i32 1}
!81 = !{i32 11, !"TRANSIENT_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 10, i8 1, !80}
!82 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!83 = !{!84}
!84 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!85 = !{i32 0, i64 24}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}

