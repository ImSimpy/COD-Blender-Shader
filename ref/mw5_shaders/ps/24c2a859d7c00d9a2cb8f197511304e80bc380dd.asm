;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    yz 
; TEXCOORDS                0   xyzw        2     NONE   float   xyzw
; TEXCOORDS                1   xyzw        3     NONE   float   xy  
; LMAPCOORDS               0   xyz         4     NONE   float   xyz 
; NORMAL                   0   xyz         5     NONE   float   xyz 
; TANGENT                  0   xyzw        6     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        7     NONE   float   xyzw
; NORMAL_TRANSFORM         2   xyzw        8     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           9     NONE    uint   x   
; TRANSIENT_INDEX          0    y          9     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 7b6d0af8149c454580688cdcb5770c24
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
; Number of inputs: 38, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 8, 9, 10, 11, 12, 13, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 8, 9, 10, 11, 12, 13, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 8, 9, 10, 11, 12, 13, 16, 17, 18, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37 }
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
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %75 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = fmul fast float %77, %71
  %79 = fmul fast float %77, %72
  %80 = fmul fast float %58, %55
  %81 = fmul fast float %59, %54
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %59, %53
  %84 = fmul fast float %57, %55
  %85 = fsub fast float %83, %84
  %86 = fmul fast float %57, %54
  %87 = fmul fast float %58, %53
  %88 = fsub fast float %86, %87
  %89 = fmul fast float %82, %56
  %90 = fmul fast float %85, %56
  %91 = fmul fast float %88, %56
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 3
  %95 = fmul fast float %93, 2.000000e+00
  %96 = fmul fast float %95, %78
  %97 = fmul fast float %94, 2.000000e+00
  %98 = fmul fast float %97, %79
  %99 = fsub fast float 1.000000e+00, %96
  %100 = fsub fast float 1.000000e+00, %98
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = fmul fast float %99, %102
  %106 = fmul fast float %99, %103
  %107 = fmul fast float %99, %104
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = fmul fast float %100, %109
  %113 = fmul fast float %100, %110
  %114 = fmul fast float %100, %111
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = fadd fast float %112, %116
  %120 = fadd fast float %119, %105
  %121 = fadd fast float %113, %117
  %122 = fadd fast float %121, %106
  %123 = fadd fast float %114, %118
  %124 = fadd fast float %123, %107
  %125 = fmul fast float %120, %73
  %126 = fmul fast float %122, %73
  %127 = fmul fast float %124, %73
  %128 = fadd fast float %62, 5.000000e-01
  %129 = fptoui float %128 to i32
  %130 = shl i32 %129, 3
  %131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = or i32 %130, 4
  %134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = and i32 %132, 8191
  %137 = lshr i32 %132, 13
  %138 = and i32 %137, 8191
  %139 = lshr i32 %132, 26
  %140 = and i32 %135, 65535
  %141 = lshr i32 %135, 16
  %142 = uitofp i32 %140 to float
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %145 = uitofp i32 %141 to float
  %146 = uitofp i32 %136 to float
  %147 = fmul fast float %144, %146
  %148 = uitofp i32 %138 to float
  %149 = fmul fast float %144, %148
  %150 = fmul fast float %144, %60
  %151 = fmul fast float %150, %142
  %152 = fmul fast float %144, %61
  %153 = fmul fast float %152, %145
  %154 = fadd fast float %151, %147
  %155 = fadd fast float %149, %153
  %156 = uitofp i32 %139 to float
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 3
  %160 = fmul fast float %158, %78
  %161 = fmul fast float %159, %79
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = and i32 %163, 114688
  %165 = icmp ne i32 %164, 0
  %166 = select i1 %165, float %160, float 0.000000e+00
  %167 = select i1 %165, float %161, float 0.000000e+00
  %168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %166, float %167, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = fmul fast float %169, 2.550000e+02
  %171 = fptoui float %170 to i32
  %172 = select i1 %165, i32 %171, i32 0
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.i32 %174, 3
  %176 = and i32 %175, 3
  %177 = icmp ne i32 %176, 0
  %178 = and i32 %175, 4
  %179 = icmp ne i32 %178, 0
  %180 = and i1 %177, %179
  br i1 %180, label %181, label %192

; <label>:181                                     ; preds = %0
  %182 = extractvalue %dx.types.CBufRet.f32 %173, 3
  %183 = fmul fast float %182, %79
  %184 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %185 = fmul fast float %184, %78
  %186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %185, float %183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fsub fast float 1.000000e+00, %187
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = fcmp fast olt float %188, %190
  br label %195

; <label>:192                                     ; preds = %0
  %193 = icmp eq i32 %178, 0
  %194 = and i1 %177, %193
  br label %195

; <label>:195                                     ; preds = %192, %181
  %196 = phi i1 [ %191, %181 ], [ %194, %192 ]
  %197 = add i32 %44, 124
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = shl i32 %199, 4
  %201 = and i32 %200, 32752
  %202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %201)  ; LegacyF16ToF32(value)
  %203 = lshr i32 %199, 7
  %204 = and i32 %203, 32752
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = lshr i32 %199, 22
  %207 = shl nuw nsw i32 %206, 5
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = add i32 %44, 168
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = and i32 %211, 255
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F70101020000000
  %215 = lshr i32 %211, 8
  %216 = and i32 %215, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F70101020000000
  %219 = lshr i32 %211, 16
  %220 = and i32 %219, 255
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F70101020000000
  %223 = add i32 %44, 36
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = add i32 %44, 224
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = add i32 %44, 140
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = shl i32 %231, 4
  %233 = and i32 %232, 32752
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %231, 7
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %231, 22
  %239 = shl nuw nsw i32 %238, 5
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = add i32 %44, 184
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = lshr i32 %243, 8
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = lshr i32 %243, 16
  %252 = and i32 %251, 255
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %253, 0x3F70101020000000
  %255 = add i32 %44, 52
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = add i32 %44, 240
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = fmul fast float %266, 0x3F50624DE0000000
  %270 = fmul fast float %268, 0x3F50624DE0000000
  %271 = add i32 %44, 156
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = shl i32 %273, 4
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %273, 7
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %273, 22
  %281 = shl nuw nsw i32 %280, 5
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %44, 200
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %285, 8
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %285, 16
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = add i32 %44, 68
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %44, 256
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %308, 0x3F50624DE0000000
  %312 = fmul fast float %310, 0x3F50624DE0000000
  %313 = add i32 %44, 268
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = lshr i32 %315, 20
  %317 = and i32 %316, 3
  %318 = add nuw nsw i32 %317, 1
  %319 = add i32 %44, 24
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = add i32 %44, 28
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = or i32 %324, %321
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %805, label %327

; <label>:327                                     ; preds = %195
  %328 = lshr i32 %228, 16
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = fmul fast float %329, 0x3F50624DE0000000
  %331 = and i32 %228, 65535
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = fmul fast float %332, 0x3F50624DE0000000
  %334 = lshr i32 %225, 16
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = and i32 %225, 65535
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = add i32 %44, 220
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = lshr i32 %340, 16
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = fmul fast float %342, 0x3F50624DE0000000
  %344 = add i32 %44, 72
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = lshr i32 %346, 16
  %348 = and i32 %347, 255
  %349 = lshr i32 %346, 24
  %350 = add i32 %44, 228
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 65535
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %352, 16
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = add i32 %44, 32
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = lshr i32 %359, 22
  %361 = shl nuw nsw i32 %360, 5
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = shl i32 %359, 4
  %364 = and i32 %363, 32752
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %359, 7
  %367 = and i32 %366, 32752
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 3
  %371 = fmul fast float %370, 1.000000e+03
  %372 = fmul fast float %333, %371
  %373 = call float @dx.op.unary.f32(i32 22, float %372)  ; Frc(value)
  %374 = fadd fast float %373, %337
  %375 = fmul fast float %330, %371
  %376 = call float @dx.op.unary.f32(i32 22, float %375)  ; Frc(value)
  %377 = fadd fast float %376, %335
  %378 = fmul fast float %343, %371
  %379 = call float @dx.op.unary.f32(i32 22, float %378)  ; Frc(value)
  %380 = fmul fast float %379, 0x401921FB60000000
  %381 = fadd fast float %380, %362
  %382 = call float @dx.op.unary.f32(i32 13, float %381)  ; Sin(value)
  %383 = call float @dx.op.unary.f32(i32 12, float %381)  ; Cos(value)
  %384 = fsub fast float -0.000000e+00, %382
  %385 = fadd fast float %65, -5.000000e-01
  %386 = fadd fast float %66, -5.000000e-01
  %387 = fmul fast float %354, %385
  %388 = fmul fast float %356, %386
  %389 = fadd fast float %387, 5.000000e-01
  %390 = fadd fast float %388, 5.000000e-01
  %391 = fmul fast float %365, %389
  %392 = fmul fast float %368, %390
  %393 = fmul fast float %383, %391
  %394 = call float @dx.op.tertiary.f32(i32 46, float %384, float %392, float %393)  ; FMad(a,b,c)
  %395 = fmul fast float %382, %391
  %396 = call float @dx.op.tertiary.f32(i32 46, float %383, float %392, float %395)  ; FMad(a,b,c)
  %397 = fadd fast float %374, %394
  %398 = fadd fast float %377, %396
  %399 = icmp ugt i32 %348, 1
  %400 = icmp ugt i32 %346, 33554431
  %401 = or i1 %400, %399
  br i1 %401, label %402, label %427

; <label>:402                                     ; preds = %327
  %403 = add i32 %44, 180
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = lshr i32 %405, 16
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = fmul fast float %370, %407
  %409 = call float @dx.op.unary.f32(i32 22, float %408)  ; Frc(value)
  %410 = mul nuw nsw i32 %348, %349
  %411 = uitofp i32 %410 to float
  %412 = fmul fast float %409, %411
  %413 = call float @dx.op.unary.f32(i32 27, float %412)  ; Round_ni(value)
  %414 = fptoui float %413 to i32
  %415 = urem i32 %414, %348
  %416 = udiv i32 %414, %349
  %417 = call float @dx.op.unary.f32(i32 22, float %397)  ; Frc(value)
  %418 = call float @dx.op.unary.f32(i32 22, float %398)  ; Frc(value)
  %419 = uitofp i32 %415 to float
  %420 = uitofp i32 %416 to float
  %421 = fadd fast float %417, %419
  %422 = fadd fast float %418, %420
  %423 = uitofp i32 %348 to float
  %424 = uitofp i32 %349 to float
  %425 = fdiv fast float %421, %423
  %426 = fdiv fast float %422, %424
  br label %427

; <label>:427                                     ; preds = %402, %327
  %428 = phi float [ %425, %402 ], [ %397, %327 ]
  %429 = phi float [ %426, %402 ], [ %398, %327 ]
  %430 = and i32 %321, 16
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %628, label %432

; <label>:432                                     ; preds = %427
  %433 = add i32 %44, 280
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = add i32 %435, 0
  %437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %438 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %437, %dx.types.Handle %74, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = extractvalue %dx.types.ResRet.f32 %438, 3
  %443 = and i32 %346, 255
  %444 = uitofp i32 %443 to float
  %445 = lshr i32 %346, 8
  %446 = and i32 %445, 255
  %447 = uitofp i32 %446 to float
  %448 = fmul fast float %442, %444
  %449 = fadd fast float %448, %447
  %450 = fmul fast float %449, 0x3F70101000000000
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 512
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %463, label %455

; <label>:455                                     ; preds = %432
  %456 = add i32 %44, 340
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = add i32 %458, 0
  %460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %460, %dx.types.Handle %75, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  br label %463

; <label>:463                                     ; preds = %455, %432
  %464 = phi float [ %462, %455 ], [ 1.000000e+00, %432 ]
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 33554432
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %575, label %469

; <label>:469                                     ; preds = %463
  %470 = add i32 %44, 176
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 65535
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %472, 16
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = add i32 %44, 180
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 65535
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = lshr i32 %483, 24
  %485 = uitofp i32 %484 to float
  %486 = fmul fast float %485, 0x3F70101020000000
  %487 = and i32 %483, 255
  %488 = uitofp i32 %487 to float
  %489 = fmul fast float %488, 0x3F70101020000000
  %490 = lshr i32 %483, 8
  %491 = and i32 %490, 255
  %492 = uitofp i32 %491 to float
  %493 = fmul fast float %492, 0x3F70101020000000
  %494 = lshr i32 %483, 16
  %495 = and i32 %494, 255
  %496 = uitofp i32 %495 to float
  %497 = fmul fast float %496, 0x3F70101020000000
  %498 = add i32 %44, 172
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = lshr i32 %500, 24
  %502 = uitofp i32 %501 to float
  %503 = fmul fast float %502, 0x3F70101020000000
  %504 = and i32 %500, 255
  %505 = uitofp i32 %504 to float
  %506 = fmul fast float %505, 0x3F70101020000000
  %507 = lshr i32 %500, 8
  %508 = and i32 %507, 255
  %509 = uitofp i32 %508 to float
  %510 = fmul fast float %509, 0x3F70101020000000
  %511 = lshr i32 %500, 16
  %512 = and i32 %511, 255
  %513 = uitofp i32 %512 to float
  %514 = fmul fast float %513, 0x3F70101020000000
  %515 = bitcast float %439 to i32
  %516 = ashr i32 %515, 1
  %517 = sub nsw i32 1597463174, %516
  %518 = bitcast i32 %517 to float
  %519 = fmul fast float %439, 5.000000e-01
  %520 = fmul fast float %518, %518
  %521 = fmul fast float %520, %519
  %522 = fsub fast float 1.500000e+00, %521
  %523 = fmul fast float %518, %439
  %524 = fmul fast float %523, %522
  %525 = bitcast float %440 to i32
  %526 = ashr i32 %525, 1
  %527 = sub nsw i32 1597463174, %526
  %528 = bitcast i32 %527 to float
  %529 = fmul fast float %440, 5.000000e-01
  %530 = fmul fast float %528, %528
  %531 = fmul fast float %530, %529
  %532 = fsub fast float 1.500000e+00, %531
  %533 = fmul fast float %528, %440
  %534 = fmul fast float %533, %532
  %535 = bitcast float %441 to i32
  %536 = ashr i32 %535, 1
  %537 = sub nsw i32 1597463174, %536
  %538 = bitcast i32 %537 to float
  %539 = fmul fast float %441, 5.000000e-01
  %540 = fmul fast float %538, %538
  %541 = fmul fast float %540, %539
  %542 = fsub fast float 1.500000e+00, %541
  %543 = fmul fast float %538, %441
  %544 = fmul fast float %543, %542
  %545 = fsub fast float %524, %506
  %546 = fsub fast float %534, %510
  %547 = fsub fast float %544, %514
  %548 = fmul fast float %545, %474
  %549 = fmul fast float %546, %476
  %550 = fmul fast float %547, %481
  %551 = fadd fast float %548, %489
  %552 = fadd fast float %549, %493
  %553 = fadd fast float %550, %497
  %554 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %555 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %556 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  %557 = fmul fast float %554, %554
  %558 = fmul fast float %555, %555
  %559 = fmul fast float %556, %556
  %560 = fsub fast float %557, %439
  %561 = fsub fast float %558, %440
  %562 = fsub fast float %559, %441
  %563 = fmul fast float %560, %464
  %564 = fmul fast float %561, %464
  %565 = fmul fast float %562, %464
  %566 = fadd fast float %563, %439
  %567 = fadd fast float %564, %440
  %568 = fadd fast float %565, %441
  %569 = fadd fast float %486, %450
  %570 = fsub fast float %569, %503
  %571 = call float @dx.op.unary.f32(i32 7, float %570)  ; Saturate(value)
  %572 = fsub fast float %571, %450
  %573 = fmul fast float %572, %464
  %574 = fadd fast float %573, %450
  br label %628

; <label>:575                                     ; preds = %463
  %576 = and i32 %466, 134217728
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %612, label %578

; <label>:578                                     ; preds = %575
  %579 = call float @dx.op.unary.f32(i32 24, float %214)  ; Sqrt(value)
  %580 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %581 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %582 = fadd fast float %579, -5.000000e-01
  %583 = fadd fast float %580, -5.000000e-01
  %584 = fadd fast float %581, -5.000000e-01
  %585 = fmul fast float %582, %464
  %586 = fmul fast float %583, %464
  %587 = fmul fast float %584, %464
  %588 = fadd fast float %585, 5.000000e-01
  %589 = fadd fast float %586, 5.000000e-01
  %590 = fadd fast float %587, 5.000000e-01
  %591 = call float @dx.op.unary.f32(i32 24, float %439)  ; Sqrt(value)
  %592 = call float @dx.op.unary.f32(i32 24, float %440)  ; Sqrt(value)
  %593 = call float @dx.op.unary.f32(i32 24, float %441)  ; Sqrt(value)
  %594 = fmul fast float %588, 2.000000e+00
  %595 = fsub fast float 1.000000e+00, %594
  %596 = fmul fast float %595, %591
  %597 = fadd fast float %596, %594
  %598 = fmul fast float %597, %591
  %599 = fmul fast float %589, 2.000000e+00
  %600 = fsub fast float 1.000000e+00, %599
  %601 = fmul fast float %600, %592
  %602 = fadd fast float %601, %599
  %603 = fmul fast float %602, %592
  %604 = fmul fast float %590, 2.000000e+00
  %605 = fsub fast float 1.000000e+00, %604
  %606 = fmul fast float %605, %593
  %607 = fadd fast float %606, %604
  %608 = fmul fast float %607, %593
  %609 = fmul fast float %598, %598
  %610 = fmul fast float %603, %603
  %611 = fmul fast float %608, %608
  br label %628

; <label>:612                                     ; preds = %575
  %613 = fmul fast float %214, %214
  %614 = fmul fast float %218, %218
  %615 = fmul fast float %222, %222
  %616 = fadd fast float %613, -1.000000e+00
  %617 = fadd fast float %614, -1.000000e+00
  %618 = fadd fast float %615, -1.000000e+00
  %619 = fmul fast float %464, %616
  %620 = fmul fast float %464, %617
  %621 = fmul fast float %464, %618
  %622 = fadd fast float %619, 1.000000e+00
  %623 = fadd fast float %620, 1.000000e+00
  %624 = fadd fast float %621, 1.000000e+00
  %625 = fmul fast float %622, %439
  %626 = fmul fast float %623, %440
  %627 = fmul fast float %624, %441
  br label %628

; <label>:628                                     ; preds = %612, %578, %469, %427
  %629 = phi float [ %574, %469 ], [ %450, %578 ], [ %450, %612 ], [ 0x3FA23C0BE0000000, %427 ]
  %630 = phi float [ %566, %469 ], [ %609, %578 ], [ %625, %612 ], [ 1.000000e+00, %427 ]
  %631 = phi float [ %567, %469 ], [ %610, %578 ], [ %626, %612 ], [ 1.000000e+00, %427 ]
  %632 = phi float [ %568, %469 ], [ %611, %578 ], [ %627, %612 ], [ 1.000000e+00, %427 ]
  %633 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.i32 %633, 1
  %635 = and i32 %634, 1
  %636 = icmp ne i32 %635, 0
  %637 = add i32 %44, 276
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = and i32 %639, 32
  %641 = icmp ne i32 %640, 0
  %642 = and i1 %636, %641
  %643 = select i1 %642, float 1.000000e+00, float %630
  %644 = select i1 %642, float 0x3FD3333340000000, float %631
  %645 = select i1 %642, float 0x3FD3333340000000, float %632
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = and i32 %647, 32
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %722, label %650

; <label>:650                                     ; preds = %628
  %651 = add i32 %44, 76
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = add i32 %44, 292
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = add i32 %656, 0
  %658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %658, %dx.types.Handle %74, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %660 = extractvalue %dx.types.ResRet.f32 %659, 0
  %661 = extractvalue %dx.types.ResRet.f32 %659, 1
  %662 = extractvalue %dx.types.ResRet.f32 %659, 2
  %663 = extractvalue %dx.types.ResRet.f32 %659, 3
  %664 = and i32 %653, 255
  %665 = uitofp i32 %664 to float
  %666 = lshr i32 %653, 8
  %667 = and i32 %666, 255
  %668 = uitofp i32 %667 to float
  %669 = lshr i32 %653, 16
  %670 = and i32 %669, 255
  %671 = uitofp i32 %670 to float
  %672 = fmul fast float %671, 0x3F70101000000000
  %673 = fmul fast float %660, %665
  %674 = fadd fast float %673, %668
  %675 = fmul fast float %674, 0x3F70101000000000
  %676 = fadd fast float %661, -5.000000e-01
  %677 = fadd fast float %663, -5.000000e-01
  %678 = fmul fast float %676, %672
  %679 = fmul fast float %677, %672
  %680 = fadd fast float %678, 5.000000e-01
  %681 = fadd fast float %679, 5.000000e-01
  %682 = fmul fast float %680, 2.000000e+00
  %683 = fadd fast float %682, -1.000000e+00
  %684 = fmul fast float %681, 2.000000e+00
  %685 = fadd fast float %684, -1.000000e+00
  %686 = fadd fast float %683, %685
  %687 = fmul fast float %686, 5.000000e-01
  %688 = fsub fast float %683, %685
  %689 = fmul fast float %688, 5.000000e-01
  %690 = call float @dx.op.unary.f32(i32 6, float %687)  ; FAbs(value)
  %691 = fsub fast float 1.000000e+00, %690
  %692 = call float @dx.op.unary.f32(i32 6, float %689)  ; FAbs(value)
  %693 = fsub fast float %691, %692
  %694 = call float @dx.op.dot3.f32(i32 55, float %687, float %689, float %693, float %687, float %689, float %693)  ; Dot3(ax,ay,az,bx,by,bz)
  %695 = call float @dx.op.unary.f32(i32 25, float %694)  ; Rsqrt(value)
  %696 = fmul fast float %687, %695
  %697 = fmul fast float %689, %695
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = and i32 %699, 67108864
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %718, label %702

; <label>:702                                     ; preds = %650
  %703 = add i32 %44, 216
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = and i32 %705, 65535
  %707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %706)  ; LegacyF16ToF32(value)
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = and i32 %709, 65535
  %711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %710)  ; LegacyF16ToF32(value)
  %712 = lshr i32 %705, 16
  %713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %712)  ; LegacyF16ToF32(value)
  %714 = fsub fast float %675, %713
  %715 = fmul fast float %714, %707
  %716 = fadd fast float %715, %711
  %717 = call float @dx.op.unary.f32(i32 7, float %716)  ; Saturate(value)
  br label %718

; <label>:718                                     ; preds = %702, %650
  %719 = phi float [ %717, %702 ], [ %675, %650 ]
  %720 = call float @dx.op.dot2.f32(i32 54, float %696, float %697, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %721 = call float @dx.op.dot2.f32(i32 54, float %696, float %697, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %722

; <label>:722                                     ; preds = %718, %628
  %723 = phi float [ %719, %718 ], [ 0x3FD6666660000000, %628 ]
  %724 = phi float [ %720, %718 ], [ 0.000000e+00, %628 ]
  %725 = phi float [ %721, %718 ], [ 0.000000e+00, %628 ]
  %726 = phi float [ %662, %718 ], [ 1.000000e+00, %628 ]
  %727 = add i32 %44, 128
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = lshr i32 %729, 22
  %731 = shl nuw nsw i32 %730, 5
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 64
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %770, label %737

; <label>:737                                     ; preds = %722
  %738 = add i32 %44, 304
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = add i32 %740, 0
  %742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 131072
  %746 = icmp eq i32 %745, 0
  %747 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %742, %dx.types.Handle %74, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = extractvalue %dx.types.ResRet.f32 %747, 1
  %750 = extractvalue %dx.types.ResRet.f32 %747, 2
  %751 = fmul fast float %748, %202
  %752 = fmul fast float %749, %205
  %753 = fmul fast float %750, %208
  br i1 %746, label %760, label %754

; <label>:754                                     ; preds = %737
  %755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.f32 %755, 0
  %757 = fmul fast float %756, %751
  %758 = fmul fast float %756, %752
  %759 = fmul fast float %756, %753
  br label %760

; <label>:760                                     ; preds = %754, %737
  %761 = phi float [ %757, %754 ], [ %751, %737 ]
  %762 = phi float [ %758, %754 ], [ %752, %737 ]
  %763 = phi float [ %759, %754 ], [ %753, %737 ]
  %764 = fmul fast float %761, %732
  %765 = select i1 %196, float %764, float %761
  %766 = call float @dx.op.dot3.f32(i32 55, float %765, float %762, float %763, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %767 = select i1 %196, float 0.000000e+00, float %761
  %768 = select i1 %196, float %766, float %762
  %769 = select i1 %196, float 0.000000e+00, float %763
  br label %770

; <label>:770                                     ; preds = %760, %722
  %771 = phi float [ %767, %760 ], [ 0.000000e+00, %722 ]
  %772 = phi float [ %768, %760 ], [ 0.000000e+00, %722 ]
  %773 = phi float [ %769, %760 ], [ 0.000000e+00, %722 ]
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = and i32 %775, 65536
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %788, label %778

; <label>:778                                     ; preds = %770
  %779 = add i32 %44, 364
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %779, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = add i32 %781, 0
  %783 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %782, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %784 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %783, %dx.types.Handle %75, float %428, float %429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %785 = extractvalue %dx.types.ResRet.f32 %784, 0
  %786 = extractvalue %dx.types.ResRet.f32 %784, 1
  %787 = extractvalue %dx.types.ResRet.f32 %784, 2
  br label %788

; <label>:788                                     ; preds = %778, %770
  %789 = phi float [ %785, %778 ], [ 0.000000e+00, %770 ]
  %790 = phi float [ %786, %778 ], [ 0.000000e+00, %770 ]
  %791 = phi float [ %787, %778 ], [ 0.000000e+00, %770 ]
  %792 = add i32 %44, 80
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = and i32 %794, 255
  %796 = uitofp i32 %795 to float
  %797 = lshr i32 %794, 8
  %798 = and i32 %797, 255
  %799 = uitofp i32 %798 to float
  %800 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = fmul fast float %799, %800
  %802 = fadd fast float %801, %796
  %803 = fmul fast float %802, 0x3F70101020000000
  %804 = call float @dx.op.unary.f32(i32 7, float %803)  ; Saturate(value)
  br label %805

; <label>:805                                     ; preds = %788, %195
  %806 = phi float [ %724, %788 ], [ 0.000000e+00, %195 ]
  %807 = phi float [ %725, %788 ], [ 0.000000e+00, %195 ]
  %808 = phi float [ %789, %788 ], [ 0.000000e+00, %195 ]
  %809 = phi float [ %790, %788 ], [ 0.000000e+00, %195 ]
  %810 = phi float [ %791, %788 ], [ 0.000000e+00, %195 ]
  %811 = phi float [ %771, %788 ], [ 0.000000e+00, %195 ]
  %812 = phi float [ %772, %788 ], [ 0.000000e+00, %195 ]
  %813 = phi float [ %773, %788 ], [ 0.000000e+00, %195 ]
  %814 = phi float [ %643, %788 ], [ 0.000000e+00, %195 ]
  %815 = phi float [ %644, %788 ], [ 0.000000e+00, %195 ]
  %816 = phi float [ %645, %788 ], [ 0.000000e+00, %195 ]
  %817 = phi float [ %629, %788 ], [ 0.000000e+00, %195 ]
  %818 = phi float [ 1.000000e+00, %788 ], [ 0.000000e+00, %195 ]
  %819 = phi float [ %723, %788 ], [ 0.000000e+00, %195 ]
  %820 = phi float [ %726, %788 ], [ 0.000000e+00, %195 ]
  %821 = phi float [ %804, %788 ], [ 0.000000e+00, %195 ]
  %822 = icmp ult i32 %318, 2
  %823 = add i32 %44, 40
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = add i32 %44, 44
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = or i32 %828, %825
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %1693, label %831

; <label>:831                                     ; preds = %805
  %832 = add i32 %44, 236
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = lshr i32 %834, 16
  %836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %835)  ; LegacyF16ToF32(value)
  %837 = fmul fast float %836, 0x3F50624DE0000000
  %838 = add i32 %44, 88
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = lshr i32 %840, 16
  %842 = and i32 %841, 255
  %843 = lshr i32 %840, 24
  %844 = add i32 %44, 244
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = and i32 %846, 65535
  %848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %847)  ; LegacyF16ToF32(value)
  %849 = lshr i32 %846, 16
  %850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %849)  ; LegacyF16ToF32(value)
  %851 = add i32 %44, 48
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %851, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = lshr i32 %853, 22
  %855 = shl nuw nsw i32 %854, 5
  %856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %855)  ; LegacyF16ToF32(value)
  %857 = shl i32 %853, 4
  %858 = and i32 %857, 32752
  %859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %858)  ; LegacyF16ToF32(value)
  %860 = lshr i32 %853, 7
  %861 = and i32 %860, 32752
  %862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %861)  ; LegacyF16ToF32(value)
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 3
  %865 = fmul fast float %864, 1.000000e+03
  %866 = fmul fast float %269, %865
  %867 = call float @dx.op.unary.f32(i32 22, float %866)  ; Frc(value)
  %868 = fadd fast float %867, %259
  %869 = fmul fast float %270, %865
  %870 = call float @dx.op.unary.f32(i32 22, float %869)  ; Frc(value)
  %871 = fadd fast float %870, %261
  %872 = fmul fast float %837, %865
  %873 = call float @dx.op.unary.f32(i32 22, float %872)  ; Frc(value)
  %874 = fmul fast float %873, 0x401921FB60000000
  %875 = fadd fast float %874, %856
  %876 = call float @dx.op.unary.f32(i32 13, float %875)  ; Sin(value)
  %877 = call float @dx.op.unary.f32(i32 12, float %875)  ; Cos(value)
  %878 = fsub fast float -0.000000e+00, %876
  %879 = fadd fast float %67, -5.000000e-01
  %880 = fadd fast float %68, -5.000000e-01
  %881 = fmul fast float %848, %879
  %882 = fmul fast float %850, %880
  %883 = fadd fast float %881, 5.000000e-01
  %884 = fadd fast float %882, 5.000000e-01
  %885 = fmul fast float %859, %883
  %886 = fmul fast float %862, %884
  %887 = fmul fast float %877, %885
  %888 = call float @dx.op.tertiary.f32(i32 46, float %878, float %886, float %887)  ; FMad(a,b,c)
  %889 = fmul fast float %876, %885
  %890 = call float @dx.op.tertiary.f32(i32 46, float %877, float %886, float %889)  ; FMad(a,b,c)
  %891 = fadd fast float %868, %888
  %892 = fadd fast float %871, %890
  %893 = icmp ugt i32 %842, 1
  %894 = icmp ugt i32 %840, 33554431
  %895 = or i1 %894, %893
  br i1 %895, label %896, label %921

; <label>:896                                     ; preds = %831
  %897 = add i32 %44, 196
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = lshr i32 %899, 16
  %901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %900)  ; LegacyF16ToF32(value)
  %902 = fmul fast float %864, %901
  %903 = call float @dx.op.unary.f32(i32 22, float %902)  ; Frc(value)
  %904 = mul nuw nsw i32 %842, %843
  %905 = uitofp i32 %904 to float
  %906 = fmul fast float %903, %905
  %907 = call float @dx.op.unary.f32(i32 27, float %906)  ; Round_ni(value)
  %908 = fptoui float %907 to i32
  %909 = urem i32 %908, %842
  %910 = udiv i32 %908, %843
  %911 = call float @dx.op.unary.f32(i32 22, float %891)  ; Frc(value)
  %912 = call float @dx.op.unary.f32(i32 22, float %892)  ; Frc(value)
  %913 = uitofp i32 %909 to float
  %914 = uitofp i32 %910 to float
  %915 = fadd fast float %911, %913
  %916 = fadd fast float %912, %914
  %917 = uitofp i32 %842 to float
  %918 = uitofp i32 %843 to float
  %919 = fdiv fast float %915, %917
  %920 = fdiv fast float %916, %918
  br label %921

; <label>:921                                     ; preds = %896, %831
  %922 = phi float [ %919, %896 ], [ %891, %831 ]
  %923 = phi float [ %920, %896 ], [ %892, %831 ]
  %924 = and i32 %825, 16777216
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %1035, label %926

; <label>:926                                     ; preds = %921
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 0
  %929 = extractvalue %dx.types.CBufRet.f32 %927, 1
  %930 = extractvalue %dx.types.CBufRet.f32 %927, 2
  %931 = fadd fast float %928, %125
  %932 = fadd fast float %929, %126
  %933 = fadd fast float %930, %127
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 0
  %936 = call float @dx.op.unary.f32(i32 7, float %935)  ; Saturate(value)
  %937 = icmp eq i32 %43, 65535
  br i1 %937, label %1032, label %938

; <label>:938                                     ; preds = %926
  %939 = lshr i32 %43, 1
  %940 = shl i32 %939, 2
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = and i32 %43, 1
  %944 = icmp ne i32 %943, 0
  %945 = lshr i32 %942, 16
  %946 = and i32 %942, 65535
  %947 = select i1 %944, i32 %945, i32 %946
  %948 = icmp eq i32 %947, 65535
  br i1 %948, label %1028, label %949

; <label>:949                                     ; preds = %938
  %950 = mul nuw nsw i32 %947, 40
  %951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.f32 %951, 0
  %953 = extractvalue %dx.types.ResRet.f32 %951, 1
  %954 = extractvalue %dx.types.ResRet.f32 %951, 2
  %955 = add nuw nsw i32 %950, 12
  %956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  %958 = extractvalue %dx.types.ResRet.f32 %956, 1
  %959 = extractvalue %dx.types.ResRet.f32 %956, 2
  %960 = add nuw nsw i32 %950, 24
  %961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.f32 %961, 0
  %963 = extractvalue %dx.types.ResRet.f32 %961, 1
  %964 = extractvalue %dx.types.ResRet.f32 %961, 2
  %965 = add nuw nsw i32 %950, 36
  %966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = fsub fast float %931, %952
  %969 = fsub fast float %932, %953
  %970 = fsub fast float %933, %954
  %971 = fmul fast float %967, %968
  %972 = fmul fast float %967, %969
  %973 = fmul fast float %967, %970
  %974 = call float @dx.op.unary.f32(i32 27, float %971)  ; Round_ni(value)
  %975 = call float @dx.op.unary.f32(i32 27, float %972)  ; Round_ni(value)
  %976 = call float @dx.op.unary.f32(i32 27, float %973)  ; Round_ni(value)
  %977 = fadd fast float %974, 5.000000e-01
  %978 = fadd fast float %975, 5.000000e-01
  %979 = fadd fast float %976, 5.000000e-01
  %980 = fmul fast float %977, %957
  %981 = fmul fast float %978, %958
  %982 = fmul fast float %979, %959
  %983 = shl i32 %43, 2
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = add i32 %985, 0
  %987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %986, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %988 = call float @dx.op.unary.f32(i32 22, float %980)  ; Frc(value)
  %989 = call float @dx.op.unary.f32(i32 22, float %981)  ; Frc(value)
  %990 = call float @dx.op.unary.f32(i32 22, float %982)  ; Frc(value)
  %991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %987, %dx.types.Handle %40, float %988, float %989, float %990, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %992 = extractvalue %dx.types.ResRet.f32 %991, 0
  %993 = extractvalue %dx.types.ResRet.f32 %991, 1
  %994 = extractvalue %dx.types.ResRet.f32 %991, 2
  %995 = fmul fast float %992, 1.023000e+03
  %996 = fmul fast float %993, 1.023000e+03
  %997 = fmul fast float %994, 1.023000e+03
  %998 = fadd fast float %995, 5.000000e-01
  %999 = fadd fast float %996, 5.000000e-01
  %1000 = fadd fast float %997, 5.000000e-01
  %1001 = call float @dx.op.unary.f32(i32 27, float %998)  ; Round_ni(value)
  %1002 = call float @dx.op.unary.f32(i32 27, float %999)  ; Round_ni(value)
  %1003 = call float @dx.op.unary.f32(i32 27, float %1000)  ; Round_ni(value)
  %1004 = fsub fast float %971, %974
  %1005 = fsub fast float %972, %975
  %1006 = fsub fast float %973, %976
  %1007 = fmul fast float %1004, 7.500000e-01
  %1008 = fmul fast float %1005, 7.500000e-01
  %1009 = fmul fast float %1006, 7.500000e-01
  %1010 = fadd fast float %974, 1.250000e-01
  %1011 = fadd fast float %1010, %1007
  %1012 = fadd fast float %1011, %1001
  %1013 = fadd fast float %975, 1.250000e-01
  %1014 = fadd fast float %1013, %1008
  %1015 = fadd fast float %1014, %1002
  %1016 = fadd fast float %976, 1.250000e-01
  %1017 = fadd fast float %1016, %1009
  %1018 = fadd fast float %1017, %1003
  %1019 = fmul fast float %1012, %962
  %1020 = fmul fast float %1015, %963
  %1021 = fmul fast float %1018, %964
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = add i32 %1023, 0
  %1025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1025, %dx.types.Handle %38, float %1019, float %1020, float %1021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1027 = extractvalue %dx.types.ResRet.f32 %1026, 0
  br label %1028

; <label>:1028                                    ; preds = %949, %938
  %1029 = phi float [ %1027, %949 ], [ -1.000000e+00, %938 ]
  %1030 = fadd fast float %1029, %936
  %1031 = call float @dx.op.unary.f32(i32 7, float %1030)  ; Saturate(value)
  br label %1032

; <label>:1032                                    ; preds = %1028, %926
  %1033 = phi float [ %1031, %1028 ], [ %936, %926 ]
  %1034 = fmul fast float %1033, %69
  br label %1035

; <label>:1035                                    ; preds = %1032, %921
  %1036 = phi float [ %1034, %1032 ], [ %69, %921 ]
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 256
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1087, label %1041

; <label>:1041                                    ; preds = %1035
  %1042 = add i32 %44, 332
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = add i32 %1044, 0
  %1046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1045, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1047 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1046, %dx.types.Handle %75, float %922, float %923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = add i32 %44, 100
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = shl i32 %1051, 4
  %1053 = and i32 %1052, 32752
  %1054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1053)  ; LegacyF16ToF32(value)
  %1055 = lshr i32 %1051, 7
  %1056 = and i32 %1055, 32752
  %1057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1056)  ; LegacyF16ToF32(value)
  %1058 = fsub fast float 1.000000e+00, %1036
  %1059 = call float @dx.op.binary.f32(i32 35, float %1058, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1060 = bitcast float %1036 to i32
  %1061 = sitofp i32 %1060 to float
  %1062 = fadd fast float %1061, 0xC1CFBF8940000000
  %1063 = fmul fast float %1057, %1062
  %1064 = fadd fast float %1063, 0x41CFBF8940000000
  %1065 = fptosi float %1064 to i32
  %1066 = bitcast i32 %1065 to float
  %1067 = bitcast float %1059 to i32
  %1068 = sitofp i32 %1067 to float
  %1069 = fadd fast float %1068, 0xC1CFBF8940000000
  %1070 = fmul fast float %1069, %1057
  %1071 = fadd fast float %1070, 0x41CFBF8940000000
  %1072 = fptosi float %1071 to i32
  %1073 = bitcast i32 %1072 to float
  %1074 = fmul fast float %1066, %1054
  %1075 = fmul fast float %1073, %1054
  %1076 = fsub fast float %1059, %1074
  %1077 = fadd fast float %1075, %1059
  %1078 = call float @dx.op.unary.f32(i32 7, float %1076)  ; Saturate(value)
  %1079 = call float @dx.op.unary.f32(i32 7, float %1077)  ; Saturate(value)
  %1080 = fsub fast float %1048, %1078
  %1081 = fsub fast float %1079, %1078
  %1082 = bitcast float %1081 to i32
  %1083 = sub nsw i32 2129859010, %1082
  %1084 = bitcast i32 %1083 to float
  %1085 = fmul fast float %1084, %1080
  %1086 = call float @dx.op.unary.f32(i32 7, float %1085)  ; Saturate(value)
  br label %1087

; <label>:1087                                    ; preds = %1041, %1035
  %1088 = phi float [ %1086, %1041 ], [ %1036, %1035 ]
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = and i32 %1090, 128
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1109, label %1093

; <label>:1093                                    ; preds = %1087
  %1094 = add i32 %44, 320
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = add i32 %1096, 0
  %1098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1099 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1098, %dx.types.Handle %75, float %922, float %923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1100 = extractvalue %dx.types.ResRet.f32 %1099, 0
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = and i32 %1102, 524288
  %1104 = icmp ne i32 %1103, 0
  %1105 = fcmp fast ogt float %1100, 0x3FE0101020000000
  %1106 = select i1 %1105, float 1.000000e+00, float 0.000000e+00
  %1107 = select i1 %1104, float %1106, float %1100
  %1108 = fmul fast float %1107, %1088
  br label %1109

; <label>:1109                                    ; preds = %1093, %1087
  %1110 = phi float [ %1108, %1093 ], [ %1088, %1087 ]
  %1111 = fcmp fast ult float %1110, 0x3F70101020000000
  br i1 %1111, label %1693, label %1112

; <label>:1112                                    ; preds = %1109
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %1114, 16
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1315, label %1117

; <label>:1117                                    ; preds = %1112
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = add i32 %44, 284
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = add i32 %1122, 0
  %1124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1125 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1124, %dx.types.Handle %74, float %922, float %923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = extractvalue %dx.types.ResRet.f32 %1125, 1
  %1128 = extractvalue %dx.types.ResRet.f32 %1125, 2
  %1129 = extractvalue %dx.types.ResRet.f32 %1125, 3
  %1130 = and i32 %1119, 255
  %1131 = uitofp i32 %1130 to float
  %1132 = lshr i32 %1119, 8
  %1133 = and i32 %1132, 255
  %1134 = uitofp i32 %1133 to float
  %1135 = fmul fast float %1129, %1131
  %1136 = fadd fast float %1135, %1134
  %1137 = fmul fast float %1136, 0x3F70101000000000
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = and i32 %1139, 512
  %1141 = icmp eq i32 %1140, 0
  br i1 %1141, label %1150, label %1142

; <label>:1142                                    ; preds = %1117
  %1143 = add i32 %44, 344
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = add i32 %1145, 0
  %1147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1146, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1148 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1147, %dx.types.Handle %75, float %922, float %923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  br label %1150

; <label>:1150                                    ; preds = %1142, %1117
  %1151 = phi float [ %1149, %1142 ], [ 1.000000e+00, %1117 ]
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = and i32 %1153, 33554432
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1262, label %1156

; <label>:1156                                    ; preds = %1150
  %1157 = add i32 %44, 192
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = and i32 %1159, 65535
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  %1162 = lshr i32 %1159, 16
  %1163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1162)  ; LegacyF16ToF32(value)
  %1164 = add i32 %44, 196
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = and i32 %1166, 65535
  %1168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1167)  ; LegacyF16ToF32(value)
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = lshr i32 %1170, 24
  %1172 = uitofp i32 %1171 to float
  %1173 = fmul fast float %1172, 0x3F70101020000000
  %1174 = and i32 %1170, 255
  %1175 = uitofp i32 %1174 to float
  %1176 = fmul fast float %1175, 0x3F70101020000000
  %1177 = lshr i32 %1170, 8
  %1178 = and i32 %1177, 255
  %1179 = uitofp i32 %1178 to float
  %1180 = fmul fast float %1179, 0x3F70101020000000
  %1181 = lshr i32 %1170, 16
  %1182 = and i32 %1181, 255
  %1183 = uitofp i32 %1182 to float
  %1184 = fmul fast float %1183, 0x3F70101020000000
  %1185 = add i32 %44, 188
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = lshr i32 %1187, 24
  %1189 = uitofp i32 %1188 to float
  %1190 = fmul fast float %1189, 0x3F70101020000000
  %1191 = and i32 %1187, 255
  %1192 = uitofp i32 %1191 to float
  %1193 = fmul fast float %1192, 0x3F70101020000000
  %1194 = lshr i32 %1187, 8
  %1195 = and i32 %1194, 255
  %1196 = uitofp i32 %1195 to float
  %1197 = fmul fast float %1196, 0x3F70101020000000
  %1198 = lshr i32 %1187, 16
  %1199 = and i32 %1198, 255
  %1200 = uitofp i32 %1199 to float
  %1201 = fmul fast float %1200, 0x3F70101020000000
  %1202 = bitcast float %1126 to i32
  %1203 = ashr i32 %1202, 1
  %1204 = sub nsw i32 1597463174, %1203
  %1205 = bitcast i32 %1204 to float
  %1206 = fmul fast float %1126, 5.000000e-01
  %1207 = fmul fast float %1205, %1205
  %1208 = fmul fast float %1207, %1206
  %1209 = fsub fast float 1.500000e+00, %1208
  %1210 = fmul fast float %1205, %1126
  %1211 = fmul fast float %1210, %1209
  %1212 = bitcast float %1127 to i32
  %1213 = ashr i32 %1212, 1
  %1214 = sub nsw i32 1597463174, %1213
  %1215 = bitcast i32 %1214 to float
  %1216 = fmul fast float %1127, 5.000000e-01
  %1217 = fmul fast float %1215, %1215
  %1218 = fmul fast float %1217, %1216
  %1219 = fsub fast float 1.500000e+00, %1218
  %1220 = fmul fast float %1215, %1127
  %1221 = fmul fast float %1220, %1219
  %1222 = bitcast float %1128 to i32
  %1223 = ashr i32 %1222, 1
  %1224 = sub nsw i32 1597463174, %1223
  %1225 = bitcast i32 %1224 to float
  %1226 = fmul fast float %1128, 5.000000e-01
  %1227 = fmul fast float %1225, %1225
  %1228 = fmul fast float %1227, %1226
  %1229 = fsub fast float 1.500000e+00, %1228
  %1230 = fmul fast float %1225, %1128
  %1231 = fmul fast float %1230, %1229
  %1232 = fsub fast float %1211, %1193
  %1233 = fsub fast float %1221, %1197
  %1234 = fsub fast float %1231, %1201
  %1235 = fmul fast float %1232, %1161
  %1236 = fmul fast float %1233, %1163
  %1237 = fmul fast float %1234, %1168
  %1238 = fadd fast float %1235, %1176
  %1239 = fadd fast float %1236, %1180
  %1240 = fadd fast float %1237, %1184
  %1241 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  %1242 = call float @dx.op.unary.f32(i32 7, float %1239)  ; Saturate(value)
  %1243 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1244 = fmul fast float %1241, %1241
  %1245 = fmul fast float %1242, %1242
  %1246 = fmul fast float %1243, %1243
  %1247 = fsub fast float %1244, %1126
  %1248 = fsub fast float %1245, %1127
  %1249 = fsub fast float %1246, %1128
  %1250 = fmul fast float %1247, %1151
  %1251 = fmul fast float %1248, %1151
  %1252 = fmul fast float %1249, %1151
  %1253 = fadd fast float %1250, %1126
  %1254 = fadd fast float %1251, %1127
  %1255 = fadd fast float %1252, %1128
  %1256 = fadd fast float %1173, %1137
  %1257 = fsub fast float %1256, %1190
  %1258 = call float @dx.op.unary.f32(i32 7, float %1257)  ; Saturate(value)
  %1259 = fsub fast float %1258, %1137
  %1260 = fmul fast float %1259, %1151
  %1261 = fadd fast float %1260, %1137
  br label %1315

; <label>:1262                                    ; preds = %1150
  %1263 = and i32 %1153, 134217728
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1299, label %1265

; <label>:1265                                    ; preds = %1262
  %1266 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %1267 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %1268 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %1269 = fadd fast float %1266, -5.000000e-01
  %1270 = fadd fast float %1267, -5.000000e-01
  %1271 = fadd fast float %1268, -5.000000e-01
  %1272 = fmul fast float %1269, %1151
  %1273 = fmul fast float %1270, %1151
  %1274 = fmul fast float %1271, %1151
  %1275 = fadd fast float %1272, 5.000000e-01
  %1276 = fadd fast float %1273, 5.000000e-01
  %1277 = fadd fast float %1274, 5.000000e-01
  %1278 = call float @dx.op.unary.f32(i32 24, float %1126)  ; Sqrt(value)
  %1279 = call float @dx.op.unary.f32(i32 24, float %1127)  ; Sqrt(value)
  %1280 = call float @dx.op.unary.f32(i32 24, float %1128)  ; Sqrt(value)
  %1281 = fmul fast float %1275, 2.000000e+00
  %1282 = fsub fast float 1.000000e+00, %1281
  %1283 = fmul fast float %1282, %1278
  %1284 = fadd fast float %1283, %1281
  %1285 = fmul fast float %1284, %1278
  %1286 = fmul fast float %1276, 2.000000e+00
  %1287 = fsub fast float 1.000000e+00, %1286
  %1288 = fmul fast float %1287, %1279
  %1289 = fadd fast float %1288, %1286
  %1290 = fmul fast float %1289, %1279
  %1291 = fmul fast float %1277, 2.000000e+00
  %1292 = fsub fast float 1.000000e+00, %1291
  %1293 = fmul fast float %1292, %1280
  %1294 = fadd fast float %1293, %1291
  %1295 = fmul fast float %1294, %1280
  %1296 = fmul fast float %1285, %1285
  %1297 = fmul fast float %1290, %1290
  %1298 = fmul fast float %1295, %1295
  br label %1315

; <label>:1299                                    ; preds = %1262
  %1300 = fmul fast float %246, %246
  %1301 = fmul fast float %250, %250
  %1302 = fmul fast float %254, %254
  %1303 = fadd fast float %1300, -1.000000e+00
  %1304 = fadd fast float %1301, -1.000000e+00
  %1305 = fadd fast float %1302, -1.000000e+00
  %1306 = fmul fast float %1151, %1303
  %1307 = fmul fast float %1151, %1304
  %1308 = fmul fast float %1151, %1305
  %1309 = fadd fast float %1306, 1.000000e+00
  %1310 = fadd fast float %1307, 1.000000e+00
  %1311 = fadd fast float %1308, 1.000000e+00
  %1312 = fmul fast float %1309, %1126
  %1313 = fmul fast float %1310, %1127
  %1314 = fmul fast float %1311, %1128
  br label %1315

; <label>:1315                                    ; preds = %1299, %1265, %1156, %1112
  %1316 = phi float [ %1261, %1156 ], [ %1137, %1265 ], [ %1137, %1299 ], [ 0x3FA23C0BE0000000, %1112 ]
  %1317 = phi float [ %1253, %1156 ], [ %1296, %1265 ], [ %1312, %1299 ], [ 1.000000e+00, %1112 ]
  %1318 = phi float [ %1254, %1156 ], [ %1297, %1265 ], [ %1313, %1299 ], [ 1.000000e+00, %1112 ]
  %1319 = phi float [ %1255, %1156 ], [ %1298, %1265 ], [ %1314, %1299 ], [ 1.000000e+00, %1112 ]
  %1320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1321 = extractvalue %dx.types.CBufRet.i32 %1320, 1
  %1322 = and i32 %1321, 1
  %1323 = icmp ne i32 %1322, 0
  %1324 = add i32 %44, 276
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1324, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = and i32 %1326, 32
  %1328 = icmp ne i32 %1327, 0
  %1329 = and i1 %1323, %1328
  %1330 = select i1 %1329, float 1.000000e+00, float %1317
  %1331 = select i1 %1329, float 0x3FD3333340000000, float %1318
  %1332 = select i1 %1329, float 0x3FD3333340000000, float %1319
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = and i32 %1334, 32
  %1336 = icmp eq i32 %1335, 0
  br i1 %1336, label %1409, label %1337

; <label>:1337                                    ; preds = %1315
  %1338 = add i32 %44, 92
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.i32 %1339, 0
  %1341 = add i32 %44, 296
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = add i32 %1343, 0
  %1345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1346 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1345, %dx.types.Handle %74, float %922, float %923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1347 = extractvalue %dx.types.ResRet.f32 %1346, 0
  %1348 = extractvalue %dx.types.ResRet.f32 %1346, 1
  %1349 = extractvalue %dx.types.ResRet.f32 %1346, 2
  %1350 = extractvalue %dx.types.ResRet.f32 %1346, 3
  %1351 = and i32 %1340, 255
  %1352 = uitofp i32 %1351 to float
  %1353 = lshr i32 %1340, 8
  %1354 = and i32 %1353, 255
  %1355 = uitofp i32 %1354 to float
  %1356 = lshr i32 %1340, 16
  %1357 = and i32 %1356, 255
  %1358 = uitofp i32 %1357 to float
  %1359 = fmul fast float %1358, 0x3F70101000000000
  %1360 = fmul fast float %1347, %1352
  %1361 = fadd fast float %1360, %1355
  %1362 = fmul fast float %1361, 0x3F70101000000000
  %1363 = fadd fast float %1348, -5.000000e-01
  %1364 = fadd fast float %1350, -5.000000e-01
  %1365 = fmul fast float %1363, %1359
  %1366 = fmul fast float %1364, %1359
  %1367 = fadd fast float %1365, 5.000000e-01
  %1368 = fadd fast float %1366, 5.000000e-01
  %1369 = fmul fast float %1367, 2.000000e+00
  %1370 = fadd fast float %1369, -1.000000e+00
  %1371 = fmul fast float %1368, 2.000000e+00
  %1372 = fadd fast float %1371, -1.000000e+00
  %1373 = fadd fast float %1370, %1372
  %1374 = fmul fast float %1373, 5.000000e-01
  %1375 = fsub fast float %1370, %1372
  %1376 = fmul fast float %1375, 5.000000e-01
  %1377 = call float @dx.op.unary.f32(i32 6, float %1374)  ; FAbs(value)
  %1378 = fsub fast float 1.000000e+00, %1377
  %1379 = call float @dx.op.unary.f32(i32 6, float %1376)  ; FAbs(value)
  %1380 = fsub fast float %1378, %1379
  %1381 = call float @dx.op.dot3.f32(i32 55, float %1374, float %1376, float %1380, float %1374, float %1376, float %1380)  ; Dot3(ax,ay,az,bx,by,bz)
  %1382 = call float @dx.op.unary.f32(i32 25, float %1381)  ; Rsqrt(value)
  %1383 = fmul fast float %1374, %1382
  %1384 = fmul fast float %1376, %1382
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = and i32 %1386, 67108864
  %1388 = icmp eq i32 %1387, 0
  br i1 %1388, label %1405, label %1389

; <label>:1389                                    ; preds = %1337
  %1390 = add i32 %44, 232
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1390, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = and i32 %1392, 65535
  %1394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1393)  ; LegacyF16ToF32(value)
  %1395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = and i32 %1396, 65535
  %1398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1397)  ; LegacyF16ToF32(value)
  %1399 = lshr i32 %1392, 16
  %1400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1399)  ; LegacyF16ToF32(value)
  %1401 = fsub fast float %1362, %1400
  %1402 = fmul fast float %1401, %1394
  %1403 = fadd fast float %1402, %1398
  %1404 = call float @dx.op.unary.f32(i32 7, float %1403)  ; Saturate(value)
  br label %1405

; <label>:1405                                    ; preds = %1389, %1337
  %1406 = phi float [ %1404, %1389 ], [ %1362, %1337 ]
  %1407 = call float @dx.op.dot2.f32(i32 54, float %1383, float %1384, float %49, float %50)  ; Dot2(ax,ay,bx,by)
  %1408 = call float @dx.op.dot2.f32(i32 54, float %1383, float %1384, float %51, float %52)  ; Dot2(ax,ay,bx,by)
  br label %1409

; <label>:1409                                    ; preds = %1405, %1315
  %1410 = phi float [ %1406, %1405 ], [ 0x3FD6666660000000, %1315 ]
  %1411 = phi float [ %1407, %1405 ], [ 0.000000e+00, %1315 ]
  %1412 = phi float [ %1408, %1405 ], [ 0.000000e+00, %1315 ]
  %1413 = phi float [ %1349, %1405 ], [ 1.000000e+00, %1315 ]
  %1414 = add i32 %44, 144
  %1415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1414, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.i32 %1415, 0
  %1417 = lshr i32 %1416, 22
  %1418 = shl nuw nsw i32 %1417, 5
  %1419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1418)  ; LegacyF16ToF32(value)
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = and i32 %1421, 64
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1457, label %1424

; <label>:1424                                    ; preds = %1409
  %1425 = add i32 %44, 308
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = add i32 %1427, 0
  %1429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = and i32 %1431, 131072
  %1433 = icmp eq i32 %1432, 0
  %1434 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1429, %dx.types.Handle %74, float %922, float %923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1435 = extractvalue %dx.types.ResRet.f32 %1434, 0
  %1436 = extractvalue %dx.types.ResRet.f32 %1434, 1
  %1437 = extractvalue %dx.types.ResRet.f32 %1434, 2
  %1438 = fmul fast float %1435, %234
  %1439 = fmul fast float %1436, %237
  %1440 = fmul fast float %1437, %240
  br i1 %1433, label %1447, label %1441

; <label>:1441                                    ; preds = %1424
  %1442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.f32 %1442, 0
  %1444 = fmul fast float %1443, %1438
  %1445 = fmul fast float %1443, %1439
  %1446 = fmul fast float %1443, %1440
  br label %1447

; <label>:1447                                    ; preds = %1441, %1424
  %1448 = phi float [ %1444, %1441 ], [ %1438, %1424 ]
  %1449 = phi float [ %1445, %1441 ], [ %1439, %1424 ]
  %1450 = phi float [ %1446, %1441 ], [ %1440, %1424 ]
  %1451 = fmul fast float %1448, %1419
  %1452 = select i1 %196, float %1451, float %1448
  %1453 = call float @dx.op.dot3.f32(i32 55, float %1452, float %1449, float %1450, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1454 = select i1 %196, float 0.000000e+00, float %1448
  %1455 = select i1 %196, float %1453, float %1449
  %1456 = select i1 %196, float 0.000000e+00, float %1450
  br label %1457

; <label>:1457                                    ; preds = %1447, %1409
  %1458 = phi float [ %1454, %1447 ], [ 0.000000e+00, %1409 ]
  %1459 = phi float [ %1455, %1447 ], [ 0.000000e+00, %1409 ]
  %1460 = phi float [ %1456, %1447 ], [ 0.000000e+00, %1409 ]
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = and i32 %1462, 65536
  %1464 = icmp eq i32 %1463, 0
  br i1 %1464, label %1475, label %1465

; <label>:1465                                    ; preds = %1457
  %1466 = add i32 %44, 368
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = add i32 %1468, 0
  %1470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1470, %dx.types.Handle %75, float %922, float %923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = extractvalue %dx.types.ResRet.f32 %1471, 1
  %1474 = extractvalue %dx.types.ResRet.f32 %1471, 2
  br label %1475

; <label>:1475                                    ; preds = %1465, %1457
  %1476 = phi float [ %1472, %1465 ], [ 0.000000e+00, %1457 ]
  %1477 = phi float [ %1473, %1465 ], [ 0.000000e+00, %1457 ]
  %1478 = phi float [ %1474, %1465 ], [ 0.000000e+00, %1457 ]
  %1479 = add i32 %44, 96
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1479, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = and i32 %1481, 255
  %1483 = uitofp i32 %1482 to float
  %1484 = lshr i32 %1481, 8
  %1485 = and i32 %1484, 255
  %1486 = uitofp i32 %1485 to float
  %1487 = call float @dx.op.dot3.f32(i32 55, float %1330, float %1331, float %1332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1488 = fmul fast float %1486, %1487
  %1489 = fadd fast float %1488, %1483
  %1490 = fmul fast float %1489, 0x3F70101020000000
  %1491 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  br i1 %822, label %1492, label %1503

; <label>:1492                                    ; preds = %1475
  %1493 = fsub fast float 1.000000e+00, %1110
  %1494 = fmul fast float %1493, %814
  %1495 = fmul fast float %1493, %815
  %1496 = fmul fast float %1493, %816
  %1497 = fmul fast float %1493, %811
  %1498 = fmul fast float %1493, %812
  %1499 = fmul fast float %1493, %813
  %1500 = fmul fast float %1493, %808
  %1501 = fmul fast float %1493, %809
  %1502 = fmul fast float %1493, %810
  br label %1503

; <label>:1503                                    ; preds = %1492, %1475
  %1504 = phi float [ %1500, %1492 ], [ %808, %1475 ]
  %1505 = phi float [ %1501, %1492 ], [ %809, %1475 ]
  %1506 = phi float [ %1502, %1492 ], [ %810, %1475 ]
  %1507 = phi float [ %1497, %1492 ], [ %811, %1475 ]
  %1508 = phi float [ %1498, %1492 ], [ %812, %1475 ]
  %1509 = phi float [ %1499, %1492 ], [ %813, %1475 ]
  %1510 = phi float [ %1494, %1492 ], [ %814, %1475 ]
  %1511 = phi float [ %1495, %1492 ], [ %815, %1475 ]
  %1512 = phi float [ %1496, %1492 ], [ %816, %1475 ]
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 3
  %1516 = icmp eq i32 %1515, 3
  br i1 %1516, label %1607, label %1517

; <label>:1517                                    ; preds = %1503
  %1518 = and i32 %1514, 16
  %1519 = icmp ne i32 %1518, 0
  %1520 = select i1 %1519, float %1110, float 0.000000e+00
  %1521 = icmp eq i32 %1515, 0
  br i1 %1521, label %1522, label %1562

; <label>:1522                                    ; preds = %1517
  %1523 = and i32 %1514, 64
  %1524 = icmp ne i32 %1523, 0
  %1525 = select i1 %1524, float %1110, float 0.000000e+00
  %1526 = and i32 %1514, 65536
  %1527 = icmp ne i32 %1526, 0
  %1528 = select i1 %1527, float %1110, float 0.000000e+00
  %1529 = fsub fast float %1330, %1510
  %1530 = fsub fast float %1331, %1511
  %1531 = fsub fast float %1332, %1512
  %1532 = fmul fast float %1520, %1529
  %1533 = fmul fast float %1520, %1530
  %1534 = fmul fast float %1520, %1531
  %1535 = fadd fast float %1532, %1510
  %1536 = fadd fast float %1533, %1511
  %1537 = fadd fast float %1534, %1512
  %1538 = fsub fast float %1316, %817
  %1539 = fmul fast float %1520, %1538
  %1540 = fadd fast float %1539, %817
  %1541 = fsub fast float %1458, %1507
  %1542 = fsub fast float %1459, %1508
  %1543 = fsub fast float %1460, %1509
  %1544 = fmul fast float %1525, %1541
  %1545 = fmul fast float %1525, %1542
  %1546 = fmul fast float %1525, %1543
  %1547 = fadd fast float %1544, %1507
  %1548 = fadd fast float %1545, %1508
  %1549 = fadd fast float %1546, %1509
  %1550 = fsub fast float %1476, %1504
  %1551 = fsub fast float %1477, %1505
  %1552 = fsub fast float %1478, %1506
  %1553 = fmul fast float %1528, %1550
  %1554 = fmul fast float %1528, %1551
  %1555 = fmul fast float %1528, %1552
  %1556 = fadd fast float %1553, %1504
  %1557 = fadd fast float %1554, %1505
  %1558 = fadd fast float %1555, %1506
  %1559 = fsub fast float %1491, %821
  %1560 = fmul fast float %1520, %1559
  %1561 = fadd fast float %1560, %821
  br label %1607

; <label>:1562                                    ; preds = %1517
  %1563 = icmp eq i32 %1515, 1
  br i1 %1563, label %1564, label %1577

; <label>:1564                                    ; preds = %1562
  %1565 = fadd fast float %1330, -1.000000e+00
  %1566 = fadd fast float %1331, -1.000000e+00
  %1567 = fadd fast float %1332, -1.000000e+00
  %1568 = fmul fast float %1520, %1565
  %1569 = fmul fast float %1520, %1566
  %1570 = fmul fast float %1520, %1567
  %1571 = fadd fast float %1568, 1.000000e+00
  %1572 = fadd fast float %1569, 1.000000e+00
  %1573 = fadd fast float %1570, 1.000000e+00
  %1574 = fmul fast float %1571, %1510
  %1575 = fmul fast float %1572, %1511
  %1576 = fmul fast float %1573, %1512
  br label %1607

; <label>:1577                                    ; preds = %1562
  %1578 = icmp eq i32 %1515, 2
  br i1 %1578, label %1579, label %1607

; <label>:1579                                    ; preds = %1577
  %1580 = call float @dx.op.unary.f32(i32 24, float %1330)  ; Sqrt(value)
  %1581 = call float @dx.op.unary.f32(i32 24, float %1331)  ; Sqrt(value)
  %1582 = call float @dx.op.unary.f32(i32 24, float %1332)  ; Sqrt(value)
  %1583 = fadd fast float %1580, -5.000000e-01
  %1584 = fadd fast float %1581, -5.000000e-01
  %1585 = fadd fast float %1582, -5.000000e-01
  %1586 = fmul fast float %1583, %1520
  %1587 = fmul fast float %1584, %1520
  %1588 = fmul fast float %1585, %1520
  %1589 = fadd fast float %1586, 5.000000e-01
  %1590 = fadd fast float %1587, 5.000000e-01
  %1591 = fadd fast float %1588, 5.000000e-01
  %1592 = fmul fast float %1589, 2.000000e+00
  %1593 = fsub fast float 1.000000e+00, %1592
  %1594 = fmul fast float %1593, %1510
  %1595 = fadd fast float %1594, %1592
  %1596 = fmul fast float %1595, %1510
  %1597 = fmul fast float %1590, 2.000000e+00
  %1598 = fsub fast float 1.000000e+00, %1597
  %1599 = fmul fast float %1598, %1511
  %1600 = fadd fast float %1599, %1597
  %1601 = fmul fast float %1600, %1511
  %1602 = fmul fast float %1591, 2.000000e+00
  %1603 = fsub fast float 1.000000e+00, %1602
  %1604 = fmul fast float %1603, %1512
  %1605 = fadd fast float %1604, %1602
  %1606 = fmul fast float %1605, %1512
  br label %1607

; <label>:1607                                    ; preds = %1579, %1577, %1564, %1522, %1503
  %1608 = phi float [ %1504, %1503 ], [ %1504, %1579 ], [ %1504, %1577 ], [ %1504, %1564 ], [ %1556, %1522 ]
  %1609 = phi float [ %1505, %1503 ], [ %1505, %1579 ], [ %1505, %1577 ], [ %1505, %1564 ], [ %1557, %1522 ]
  %1610 = phi float [ %1506, %1503 ], [ %1506, %1579 ], [ %1506, %1577 ], [ %1506, %1564 ], [ %1558, %1522 ]
  %1611 = phi float [ %1507, %1503 ], [ %1507, %1579 ], [ %1507, %1577 ], [ %1507, %1564 ], [ %1547, %1522 ]
  %1612 = phi float [ %1508, %1503 ], [ %1508, %1579 ], [ %1508, %1577 ], [ %1508, %1564 ], [ %1548, %1522 ]
  %1613 = phi float [ %1509, %1503 ], [ %1509, %1579 ], [ %1509, %1577 ], [ %1509, %1564 ], [ %1549, %1522 ]
  %1614 = phi float [ %1510, %1503 ], [ %1596, %1579 ], [ %1510, %1577 ], [ %1574, %1564 ], [ %1535, %1522 ]
  %1615 = phi float [ %1511, %1503 ], [ %1601, %1579 ], [ %1511, %1577 ], [ %1575, %1564 ], [ %1536, %1522 ]
  %1616 = phi float [ %1512, %1503 ], [ %1606, %1579 ], [ %1512, %1577 ], [ %1576, %1564 ], [ %1537, %1522 ]
  %1617 = phi float [ %817, %1503 ], [ %817, %1579 ], [ %817, %1577 ], [ %817, %1564 ], [ %1540, %1522 ]
  %1618 = phi float [ %821, %1503 ], [ %821, %1579 ], [ %821, %1577 ], [ %821, %1564 ], [ %1561, %1522 ]
  %1619 = and i32 %1514, 12
  %1620 = icmp eq i32 %1619, 12
  br i1 %1620, label %1693, label %1621

; <label>:1621                                    ; preds = %1607
  %1622 = and i32 %1514, 2097184
  %1623 = icmp eq i32 %1622, 2097184
  %1624 = select i1 %1623, float %1110, float 0.000000e+00
  %1625 = and i32 %1514, 4194336
  %1626 = icmp eq i32 %1625, 4194336
  %1627 = select i1 %1626, float %1110, float 0.000000e+00
  %1628 = and i32 %1514, 8388640
  %1629 = icmp eq i32 %1628, 8388640
  %1630 = select i1 %1629, float %1110, float 0.000000e+00
  %1631 = icmp eq i32 %1619, 0
  br i1 %1631, label %1632, label %1645

; <label>:1632                                    ; preds = %1621
  %1633 = fsub fast float %1411, %806
  %1634 = fsub fast float %1412, %807
  %1635 = fmul fast float %1624, %1633
  %1636 = fmul fast float %1624, %1634
  %1637 = fadd fast float %1635, %806
  %1638 = fadd fast float %1636, %807
  %1639 = fsub fast float %1413, %820
  %1640 = fmul fast float %1627, %1639
  %1641 = fadd fast float %1640, %820
  %1642 = fsub fast float %1410, %819
  %1643 = fmul fast float %1630, %1642
  %1644 = fadd fast float %1643, %819
  br label %1693

; <label>:1645                                    ; preds = %1621
  %1646 = icmp eq i32 %1619, 4
  br i1 %1646, label %1647, label %1679

; <label>:1647                                    ; preds = %1645
  %1648 = fmul fast float %1624, %1411
  %1649 = fmul fast float %1624, %1412
  %1650 = fadd fast float %1648, %806
  %1651 = fadd fast float %1649, %807
  %1652 = call float @dx.op.binary.f32(i32 36, float %820, float %1413)  ; FMin(a,b)
  %1653 = fsub fast float %1652, %820
  %1654 = fmul fast float %1653, %1627
  %1655 = fadd fast float %1654, %820
  %1656 = fadd fast float %1410, %819
  %1657 = fmul fast float %1656, 0x3FF337FAE0000000
  %1658 = fmul fast float %819, %819
  %1659 = fmul fast float %1410, %1410
  %1660 = fadd fast float %1659, %1658
  %1661 = fmul fast float %1660, 0x3FE5152B00000000
  %1662 = fmul fast float %819, 0xBFCC1F85E0000000
  %1663 = fmul fast float %1662, %1410
  %1664 = fadd fast float %1663, 0xBFE1363700000000
  %1665 = fadd fast float %1664, %1657
  %1666 = fsub fast float %1665, %1661
  %1667 = fmul fast float %1656, 0x3FBA6F0D00000000
  %1668 = fmul fast float %1660, 0x3FD0432880000000
  %1669 = fmul fast float %819, 0xBFEF110800000000
  %1670 = fmul fast float %1669, %1410
  %1671 = fadd fast float %1670, 1.000000e+00
  %1672 = fsub fast float %1671, %1667
  %1673 = fadd fast float %1672, %1668
  %1674 = fdiv fast float %1666, %1673
  %1675 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1676 = fsub fast float %1675, %819
  %1677 = fmul fast float %1676, %1630
  %1678 = fadd fast float %1677, %819
  br label %1693

; <label>:1679                                    ; preds = %1645
  %1680 = icmp eq i32 %1619, 8
  br i1 %1680, label %1681, label %1693

; <label>:1681                                    ; preds = %1679
  %1682 = fmul fast float %1624, %1411
  %1683 = fmul fast float %1624, %1412
  %1684 = fadd fast float %1682, %806
  %1685 = fadd fast float %1683, %807
  %1686 = call float @dx.op.binary.f32(i32 36, float %820, float %1413)  ; FMin(a,b)
  %1687 = fsub fast float %1686, %820
  %1688 = fmul fast float %1687, %1627
  %1689 = fadd fast float %1688, %820
  %1690 = fsub fast float %1410, %819
  %1691 = fmul fast float %1630, %1690
  %1692 = fadd fast float %1691, %819
  br label %1693

; <label>:1693                                    ; preds = %1681, %1679, %1647, %1632, %1607, %1109, %805
  %1694 = phi float [ %806, %1607 ], [ %806, %1109 ], [ %806, %805 ], [ %1637, %1632 ], [ %1650, %1647 ], [ %806, %1679 ], [ %1684, %1681 ]
  %1695 = phi float [ %807, %1607 ], [ %807, %1109 ], [ %807, %805 ], [ %1638, %1632 ], [ %1651, %1647 ], [ %807, %1679 ], [ %1685, %1681 ]
  %1696 = phi float [ %1608, %1607 ], [ %808, %1109 ], [ %808, %805 ], [ %1608, %1632 ], [ %1608, %1647 ], [ %1608, %1679 ], [ %1608, %1681 ]
  %1697 = phi float [ %1609, %1607 ], [ %809, %1109 ], [ %809, %805 ], [ %1609, %1632 ], [ %1609, %1647 ], [ %1609, %1679 ], [ %1609, %1681 ]
  %1698 = phi float [ %1610, %1607 ], [ %810, %1109 ], [ %810, %805 ], [ %1610, %1632 ], [ %1610, %1647 ], [ %1610, %1679 ], [ %1610, %1681 ]
  %1699 = phi float [ %1611, %1607 ], [ %811, %1109 ], [ %811, %805 ], [ %1611, %1632 ], [ %1611, %1647 ], [ %1611, %1679 ], [ %1611, %1681 ]
  %1700 = phi float [ %1612, %1607 ], [ %812, %1109 ], [ %812, %805 ], [ %1612, %1632 ], [ %1612, %1647 ], [ %1612, %1679 ], [ %1612, %1681 ]
  %1701 = phi float [ %1613, %1607 ], [ %813, %1109 ], [ %813, %805 ], [ %1613, %1632 ], [ %1613, %1647 ], [ %1613, %1679 ], [ %1613, %1681 ]
  %1702 = phi float [ %1614, %1607 ], [ %814, %1109 ], [ %814, %805 ], [ %1614, %1632 ], [ %1614, %1647 ], [ %1614, %1679 ], [ %1614, %1681 ]
  %1703 = phi float [ %1615, %1607 ], [ %815, %1109 ], [ %815, %805 ], [ %1615, %1632 ], [ %1615, %1647 ], [ %1615, %1679 ], [ %1615, %1681 ]
  %1704 = phi float [ %1616, %1607 ], [ %816, %1109 ], [ %816, %805 ], [ %1616, %1632 ], [ %1616, %1647 ], [ %1616, %1679 ], [ %1616, %1681 ]
  %1705 = phi float [ %1617, %1607 ], [ %817, %1109 ], [ %817, %805 ], [ %1617, %1632 ], [ %1617, %1647 ], [ %1617, %1679 ], [ %1617, %1681 ]
  %1706 = phi float [ %819, %1607 ], [ %819, %1109 ], [ %819, %805 ], [ %1644, %1632 ], [ %1678, %1647 ], [ %819, %1679 ], [ %1692, %1681 ]
  %1707 = phi float [ %820, %1607 ], [ %820, %1109 ], [ %820, %805 ], [ %1641, %1632 ], [ %1655, %1647 ], [ %820, %1679 ], [ %1689, %1681 ]
  %1708 = phi float [ %1618, %1607 ], [ %821, %1109 ], [ %821, %805 ], [ %1618, %1632 ], [ %1618, %1647 ], [ %1618, %1679 ], [ %1618, %1681 ]
  %1709 = icmp ult i32 %318, 3
  %1710 = add i32 %44, 56
  %1711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1712 = extractvalue %dx.types.ResRet.i32 %1711, 0
  %1713 = add i32 %44, 60
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = or i32 %1715, %1712
  %1717 = icmp eq i32 %1716, 0
  br i1 %1717, label %2580, label %1718

; <label>:1718                                    ; preds = %1693
  %1719 = add i32 %44, 252
  %1720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1721 = extractvalue %dx.types.ResRet.i32 %1720, 0
  %1722 = lshr i32 %1721, 16
  %1723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1722)  ; LegacyF16ToF32(value)
  %1724 = fmul fast float %1723, 0x3F50624DE0000000
  %1725 = add i32 %44, 104
  %1726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.i32 %1726, 0
  %1728 = lshr i32 %1727, 16
  %1729 = and i32 %1728, 255
  %1730 = lshr i32 %1727, 24
  %1731 = add i32 %44, 260
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = and i32 %1733, 65535
  %1735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1734)  ; LegacyF16ToF32(value)
  %1736 = lshr i32 %1733, 16
  %1737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1736)  ; LegacyF16ToF32(value)
  %1738 = add i32 %44, 64
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = lshr i32 %1740, 22
  %1742 = shl nuw nsw i32 %1741, 5
  %1743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1742)  ; LegacyF16ToF32(value)
  %1744 = shl i32 %1740, 4
  %1745 = and i32 %1744, 32752
  %1746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1745)  ; LegacyF16ToF32(value)
  %1747 = lshr i32 %1740, 7
  %1748 = and i32 %1747, 32752
  %1749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1748)  ; LegacyF16ToF32(value)
  %1750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1751 = extractvalue %dx.types.CBufRet.f32 %1750, 3
  %1752 = fmul fast float %1751, 1.000000e+03
  %1753 = fmul fast float %311, %1752
  %1754 = call float @dx.op.unary.f32(i32 22, float %1753)  ; Frc(value)
  %1755 = fadd fast float %1754, %301
  %1756 = fmul fast float %312, %1752
  %1757 = call float @dx.op.unary.f32(i32 22, float %1756)  ; Frc(value)
  %1758 = fadd fast float %1757, %303
  %1759 = fmul fast float %1724, %1752
  %1760 = call float @dx.op.unary.f32(i32 22, float %1759)  ; Frc(value)
  %1761 = fmul fast float %1760, 0x401921FB60000000
  %1762 = fadd fast float %1761, %1743
  %1763 = call float @dx.op.unary.f32(i32 13, float %1762)  ; Sin(value)
  %1764 = call float @dx.op.unary.f32(i32 12, float %1762)  ; Cos(value)
  %1765 = fsub fast float -0.000000e+00, %1763
  %1766 = fadd fast float %63, -5.000000e-01
  %1767 = fadd fast float %64, -5.000000e-01
  %1768 = fmul fast float %1735, %1766
  %1769 = fmul fast float %1737, %1767
  %1770 = fadd fast float %1768, 5.000000e-01
  %1771 = fadd fast float %1769, 5.000000e-01
  %1772 = fmul fast float %1746, %1770
  %1773 = fmul fast float %1749, %1771
  %1774 = fmul fast float %1764, %1772
  %1775 = call float @dx.op.tertiary.f32(i32 46, float %1765, float %1773, float %1774)  ; FMad(a,b,c)
  %1776 = fmul fast float %1763, %1772
  %1777 = call float @dx.op.tertiary.f32(i32 46, float %1764, float %1773, float %1776)  ; FMad(a,b,c)
  %1778 = fadd fast float %1755, %1775
  %1779 = fadd fast float %1758, %1777
  %1780 = icmp ugt i32 %1729, 1
  %1781 = icmp ugt i32 %1727, 33554431
  %1782 = or i1 %1781, %1780
  br i1 %1782, label %1783, label %1808

; <label>:1783                                    ; preds = %1718
  %1784 = add i32 %44, 212
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = lshr i32 %1786, 16
  %1788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1787)  ; LegacyF16ToF32(value)
  %1789 = fmul fast float %1751, %1788
  %1790 = call float @dx.op.unary.f32(i32 22, float %1789)  ; Frc(value)
  %1791 = mul nuw nsw i32 %1729, %1730
  %1792 = uitofp i32 %1791 to float
  %1793 = fmul fast float %1790, %1792
  %1794 = call float @dx.op.unary.f32(i32 27, float %1793)  ; Round_ni(value)
  %1795 = fptoui float %1794 to i32
  %1796 = urem i32 %1795, %1729
  %1797 = udiv i32 %1795, %1730
  %1798 = call float @dx.op.unary.f32(i32 22, float %1778)  ; Frc(value)
  %1799 = call float @dx.op.unary.f32(i32 22, float %1779)  ; Frc(value)
  %1800 = uitofp i32 %1796 to float
  %1801 = uitofp i32 %1797 to float
  %1802 = fadd fast float %1798, %1800
  %1803 = fadd fast float %1799, %1801
  %1804 = uitofp i32 %1729 to float
  %1805 = uitofp i32 %1730 to float
  %1806 = fdiv fast float %1802, %1804
  %1807 = fdiv fast float %1803, %1805
  br label %1808

; <label>:1808                                    ; preds = %1783, %1718
  %1809 = phi float [ %1806, %1783 ], [ %1778, %1718 ]
  %1810 = phi float [ %1807, %1783 ], [ %1779, %1718 ]
  %1811 = and i32 %1712, 16777216
  %1812 = icmp eq i32 %1811, 0
  br i1 %1812, label %1922, label %1813

; <label>:1813                                    ; preds = %1808
  %1814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1815 = extractvalue %dx.types.CBufRet.f32 %1814, 0
  %1816 = extractvalue %dx.types.CBufRet.f32 %1814, 1
  %1817 = extractvalue %dx.types.CBufRet.f32 %1814, 2
  %1818 = fadd fast float %1815, %125
  %1819 = fadd fast float %1816, %126
  %1820 = fadd fast float %1817, %127
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 0
  %1823 = call float @dx.op.unary.f32(i32 7, float %1822)  ; Saturate(value)
  %1824 = icmp eq i32 %43, 65535
  br i1 %1824, label %1919, label %1825

; <label>:1825                                    ; preds = %1813
  %1826 = lshr i32 %43, 1
  %1827 = shl i32 %1826, 2
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1827, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = and i32 %43, 1
  %1831 = icmp ne i32 %1830, 0
  %1832 = lshr i32 %1829, 16
  %1833 = and i32 %1829, 65535
  %1834 = select i1 %1831, i32 %1832, i32 %1833
  %1835 = icmp eq i32 %1834, 65535
  br i1 %1835, label %1915, label %1836

; <label>:1836                                    ; preds = %1825
  %1837 = mul nuw nsw i32 %1834, 40
  %1838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.f32 %1838, 0
  %1840 = extractvalue %dx.types.ResRet.f32 %1838, 1
  %1841 = extractvalue %dx.types.ResRet.f32 %1838, 2
  %1842 = add nuw nsw i32 %1837, 12
  %1843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.ResRet.f32 %1843, 1
  %1846 = extractvalue %dx.types.ResRet.f32 %1843, 2
  %1847 = add nuw nsw i32 %1837, 24
  %1848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.f32 %1848, 0
  %1850 = extractvalue %dx.types.ResRet.f32 %1848, 1
  %1851 = extractvalue %dx.types.ResRet.f32 %1848, 2
  %1852 = add nuw nsw i32 %1837, 36
  %1853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %1854 = extractvalue %dx.types.ResRet.f32 %1853, 0
  %1855 = fsub fast float %1818, %1839
  %1856 = fsub fast float %1819, %1840
  %1857 = fsub fast float %1820, %1841
  %1858 = fmul fast float %1854, %1855
  %1859 = fmul fast float %1854, %1856
  %1860 = fmul fast float %1854, %1857
  %1861 = call float @dx.op.unary.f32(i32 27, float %1858)  ; Round_ni(value)
  %1862 = call float @dx.op.unary.f32(i32 27, float %1859)  ; Round_ni(value)
  %1863 = call float @dx.op.unary.f32(i32 27, float %1860)  ; Round_ni(value)
  %1864 = fadd fast float %1861, 5.000000e-01
  %1865 = fadd fast float %1862, 5.000000e-01
  %1866 = fadd fast float %1863, 5.000000e-01
  %1867 = fmul fast float %1864, %1844
  %1868 = fmul fast float %1865, %1845
  %1869 = fmul fast float %1866, %1846
  %1870 = shl i32 %43, 2
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = add i32 %1872, 0
  %1874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1873, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1875 = call float @dx.op.unary.f32(i32 22, float %1867)  ; Frc(value)
  %1876 = call float @dx.op.unary.f32(i32 22, float %1868)  ; Frc(value)
  %1877 = call float @dx.op.unary.f32(i32 22, float %1869)  ; Frc(value)
  %1878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1874, %dx.types.Handle %40, float %1875, float %1876, float %1877, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1879 = extractvalue %dx.types.ResRet.f32 %1878, 0
  %1880 = extractvalue %dx.types.ResRet.f32 %1878, 1
  %1881 = extractvalue %dx.types.ResRet.f32 %1878, 2
  %1882 = fmul fast float %1879, 1.023000e+03
  %1883 = fmul fast float %1880, 1.023000e+03
  %1884 = fmul fast float %1881, 1.023000e+03
  %1885 = fadd fast float %1882, 5.000000e-01
  %1886 = fadd fast float %1883, 5.000000e-01
  %1887 = fadd fast float %1884, 5.000000e-01
  %1888 = call float @dx.op.unary.f32(i32 27, float %1885)  ; Round_ni(value)
  %1889 = call float @dx.op.unary.f32(i32 27, float %1886)  ; Round_ni(value)
  %1890 = call float @dx.op.unary.f32(i32 27, float %1887)  ; Round_ni(value)
  %1891 = fsub fast float %1858, %1861
  %1892 = fsub fast float %1859, %1862
  %1893 = fsub fast float %1860, %1863
  %1894 = fmul fast float %1891, 7.500000e-01
  %1895 = fmul fast float %1892, 7.500000e-01
  %1896 = fmul fast float %1893, 7.500000e-01
  %1897 = fadd fast float %1861, 1.250000e-01
  %1898 = fadd fast float %1897, %1894
  %1899 = fadd fast float %1898, %1888
  %1900 = fadd fast float %1862, 1.250000e-01
  %1901 = fadd fast float %1900, %1895
  %1902 = fadd fast float %1901, %1889
  %1903 = fadd fast float %1863, 1.250000e-01
  %1904 = fadd fast float %1903, %1896
  %1905 = fadd fast float %1904, %1890
  %1906 = fmul fast float %1899, %1849
  %1907 = fmul fast float %1902, %1850
  %1908 = fmul fast float %1905, %1851
  %1909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = add i32 %1910, 0
  %1912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1911, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1912, %dx.types.Handle %38, float %1906, float %1907, float %1908, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1914 = extractvalue %dx.types.ResRet.f32 %1913, 0
  br label %1915

; <label>:1915                                    ; preds = %1836, %1825
  %1916 = phi float [ %1914, %1836 ], [ -1.000000e+00, %1825 ]
  %1917 = fadd fast float %1916, %1823
  %1918 = call float @dx.op.unary.f32(i32 7, float %1917)  ; Saturate(value)
  br label %1919

; <label>:1919                                    ; preds = %1915, %1813
  %1920 = phi float [ %1918, %1915 ], [ %1823, %1813 ]
  %1921 = fmul fast float %1920, %70
  br label %1922

; <label>:1922                                    ; preds = %1919, %1808
  %1923 = phi float [ %1921, %1919 ], [ %70, %1808 ]
  %1924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.i32 %1924, 0
  %1926 = and i32 %1925, 256
  %1927 = icmp eq i32 %1926, 0
  br i1 %1927, label %1974, label %1928

; <label>:1928                                    ; preds = %1922
  %1929 = add i32 %44, 336
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = add i32 %1931, 0
  %1933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1933, %dx.types.Handle %75, float %1809, float %1810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 0
  %1936 = add i32 %44, 116
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = shl i32 %1938, 4
  %1940 = and i32 %1939, 32752
  %1941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1940)  ; LegacyF16ToF32(value)
  %1942 = lshr i32 %1938, 7
  %1943 = and i32 %1942, 32752
  %1944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1943)  ; LegacyF16ToF32(value)
  %1945 = fsub fast float 1.000000e+00, %1923
  %1946 = call float @dx.op.binary.f32(i32 35, float %1945, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1947 = bitcast float %1923 to i32
  %1948 = sitofp i32 %1947 to float
  %1949 = fadd fast float %1948, 0xC1CFBF8940000000
  %1950 = fmul fast float %1944, %1949
  %1951 = fadd fast float %1950, 0x41CFBF8940000000
  %1952 = fptosi float %1951 to i32
  %1953 = bitcast i32 %1952 to float
  %1954 = bitcast float %1946 to i32
  %1955 = sitofp i32 %1954 to float
  %1956 = fadd fast float %1955, 0xC1CFBF8940000000
  %1957 = fmul fast float %1956, %1944
  %1958 = fadd fast float %1957, 0x41CFBF8940000000
  %1959 = fptosi float %1958 to i32
  %1960 = bitcast i32 %1959 to float
  %1961 = fmul fast float %1953, %1941
  %1962 = fmul fast float %1960, %1941
  %1963 = fsub fast float %1946, %1961
  %1964 = fadd fast float %1962, %1946
  %1965 = call float @dx.op.unary.f32(i32 7, float %1963)  ; Saturate(value)
  %1966 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1967 = fsub fast float %1935, %1965
  %1968 = fsub fast float %1966, %1965
  %1969 = bitcast float %1968 to i32
  %1970 = sub nsw i32 2129859010, %1969
  %1971 = bitcast i32 %1970 to float
  %1972 = fmul fast float %1971, %1967
  %1973 = call float @dx.op.unary.f32(i32 7, float %1972)  ; Saturate(value)
  br label %1974

; <label>:1974                                    ; preds = %1928, %1922
  %1975 = phi float [ %1973, %1928 ], [ %1923, %1922 ]
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = and i32 %1977, 128
  %1979 = icmp eq i32 %1978, 0
  br i1 %1979, label %1996, label %1980

; <label>:1980                                    ; preds = %1974
  %1981 = add i32 %44, 324
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = add i32 %1983, 0
  %1985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1986 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1985, %dx.types.Handle %75, float %1809, float %1810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1987 = extractvalue %dx.types.ResRet.f32 %1986, 0
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = and i32 %1989, 524288
  %1991 = icmp ne i32 %1990, 0
  %1992 = fcmp fast ogt float %1987, 0x3FE0101020000000
  %1993 = select i1 %1992, float 1.000000e+00, float 0.000000e+00
  %1994 = select i1 %1991, float %1993, float %1987
  %1995 = fmul fast float %1994, %1975
  br label %1996

; <label>:1996                                    ; preds = %1980, %1974
  %1997 = phi float [ %1995, %1980 ], [ %1975, %1974 ]
  %1998 = fcmp fast ult float %1997, 0x3F70101020000000
  br i1 %1998, label %2580, label %1999

; <label>:1999                                    ; preds = %1996
  %2000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.i32 %2000, 0
  %2002 = and i32 %2001, 16
  %2003 = icmp eq i32 %2002, 0
  br i1 %2003, label %2202, label %2004

; <label>:2004                                    ; preds = %1999
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = add i32 %44, 288
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = add i32 %2009, 0
  %2011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2012 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2011, %dx.types.Handle %74, float %1809, float %1810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  %2014 = extractvalue %dx.types.ResRet.f32 %2012, 1
  %2015 = extractvalue %dx.types.ResRet.f32 %2012, 2
  %2016 = extractvalue %dx.types.ResRet.f32 %2012, 3
  %2017 = and i32 %2006, 255
  %2018 = uitofp i32 %2017 to float
  %2019 = lshr i32 %2006, 8
  %2020 = and i32 %2019, 255
  %2021 = uitofp i32 %2020 to float
  %2022 = fmul fast float %2016, %2018
  %2023 = fadd fast float %2022, %2021
  %2024 = fmul fast float %2023, 0x3F70101000000000
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = and i32 %2026, 512
  %2028 = icmp eq i32 %2027, 0
  br i1 %2028, label %2037, label %2029

; <label>:2029                                    ; preds = %2004
  %2030 = add i32 %44, 348
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = add i32 %2032, 0
  %2034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2035 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2034, %dx.types.Handle %75, float %1809, float %1810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2036 = extractvalue %dx.types.ResRet.f32 %2035, 0
  br label %2037

; <label>:2037                                    ; preds = %2029, %2004
  %2038 = phi float [ %2036, %2029 ], [ 1.000000e+00, %2004 ]
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = and i32 %2040, 33554432
  %2042 = icmp eq i32 %2041, 0
  br i1 %2042, label %2149, label %2043

; <label>:2043                                    ; preds = %2037
  %2044 = add i32 %44, 208
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = and i32 %2046, 65535
  %2048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2047)  ; LegacyF16ToF32(value)
  %2049 = lshr i32 %2046, 16
  %2050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2049)  ; LegacyF16ToF32(value)
  %2051 = add i32 %44, 212
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = and i32 %2053, 65535
  %2055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2054)  ; LegacyF16ToF32(value)
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = lshr i32 %2057, 24
  %2059 = uitofp i32 %2058 to float
  %2060 = fmul fast float %2059, 0x3F70101020000000
  %2061 = and i32 %2057, 255
  %2062 = uitofp i32 %2061 to float
  %2063 = fmul fast float %2062, 0x3F70101020000000
  %2064 = lshr i32 %2057, 8
  %2065 = and i32 %2064, 255
  %2066 = uitofp i32 %2065 to float
  %2067 = fmul fast float %2066, 0x3F70101020000000
  %2068 = lshr i32 %2057, 16
  %2069 = and i32 %2068, 255
  %2070 = uitofp i32 %2069 to float
  %2071 = fmul fast float %2070, 0x3F70101020000000
  %2072 = add i32 %44, 204
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2072, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = lshr i32 %2074, 24
  %2076 = uitofp i32 %2075 to float
  %2077 = fmul fast float %2076, 0x3F70101020000000
  %2078 = and i32 %2074, 255
  %2079 = uitofp i32 %2078 to float
  %2080 = fmul fast float %2079, 0x3F70101020000000
  %2081 = lshr i32 %2074, 8
  %2082 = and i32 %2081, 255
  %2083 = uitofp i32 %2082 to float
  %2084 = fmul fast float %2083, 0x3F70101020000000
  %2085 = lshr i32 %2074, 16
  %2086 = and i32 %2085, 255
  %2087 = uitofp i32 %2086 to float
  %2088 = fmul fast float %2087, 0x3F70101020000000
  %2089 = bitcast float %2013 to i32
  %2090 = ashr i32 %2089, 1
  %2091 = sub nsw i32 1597463174, %2090
  %2092 = bitcast i32 %2091 to float
  %2093 = fmul fast float %2013, 5.000000e-01
  %2094 = fmul fast float %2092, %2092
  %2095 = fmul fast float %2094, %2093
  %2096 = fsub fast float 1.500000e+00, %2095
  %2097 = fmul fast float %2092, %2013
  %2098 = fmul fast float %2097, %2096
  %2099 = bitcast float %2014 to i32
  %2100 = ashr i32 %2099, 1
  %2101 = sub nsw i32 1597463174, %2100
  %2102 = bitcast i32 %2101 to float
  %2103 = fmul fast float %2014, 5.000000e-01
  %2104 = fmul fast float %2102, %2102
  %2105 = fmul fast float %2104, %2103
  %2106 = fsub fast float 1.500000e+00, %2105
  %2107 = fmul fast float %2102, %2014
  %2108 = fmul fast float %2107, %2106
  %2109 = bitcast float %2015 to i32
  %2110 = ashr i32 %2109, 1
  %2111 = sub nsw i32 1597463174, %2110
  %2112 = bitcast i32 %2111 to float
  %2113 = fmul fast float %2015, 5.000000e-01
  %2114 = fmul fast float %2112, %2112
  %2115 = fmul fast float %2114, %2113
  %2116 = fsub fast float 1.500000e+00, %2115
  %2117 = fmul fast float %2112, %2015
  %2118 = fmul fast float %2117, %2116
  %2119 = fsub fast float %2098, %2080
  %2120 = fsub fast float %2108, %2084
  %2121 = fsub fast float %2118, %2088
  %2122 = fmul fast float %2119, %2048
  %2123 = fmul fast float %2120, %2050
  %2124 = fmul fast float %2121, %2055
  %2125 = fadd fast float %2122, %2063
  %2126 = fadd fast float %2123, %2067
  %2127 = fadd fast float %2124, %2071
  %2128 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2129 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2130 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  %2131 = fmul fast float %2128, %2128
  %2132 = fmul fast float %2129, %2129
  %2133 = fmul fast float %2130, %2130
  %2134 = fsub fast float %2131, %2013
  %2135 = fsub fast float %2132, %2014
  %2136 = fsub fast float %2133, %2015
  %2137 = fmul fast float %2134, %2038
  %2138 = fmul fast float %2135, %2038
  %2139 = fmul fast float %2136, %2038
  %2140 = fadd fast float %2137, %2013
  %2141 = fadd fast float %2138, %2014
  %2142 = fadd fast float %2139, %2015
  %2143 = fadd fast float %2060, %2024
  %2144 = fsub fast float %2143, %2077
  %2145 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2146 = fsub fast float %2145, %2024
  %2147 = fmul fast float %2146, %2038
  %2148 = fadd fast float %2147, %2024
  br label %2202

; <label>:2149                                    ; preds = %2037
  %2150 = and i32 %2040, 134217728
  %2151 = icmp eq i32 %2150, 0
  br i1 %2151, label %2186, label %2152

; <label>:2152                                    ; preds = %2149
  %2153 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %2154 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %2155 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %2156 = fadd fast float %2153, -5.000000e-01
  %2157 = fadd fast float %2154, -5.000000e-01
  %2158 = fadd fast float %2155, -5.000000e-01
  %2159 = fmul fast float %2156, %2038
  %2160 = fmul fast float %2157, %2038
  %2161 = fmul fast float %2158, %2038
  %2162 = fadd fast float %2159, 5.000000e-01
  %2163 = fadd fast float %2160, 5.000000e-01
  %2164 = fadd fast float %2161, 5.000000e-01
  %2165 = call float @dx.op.unary.f32(i32 24, float %2013)  ; Sqrt(value)
  %2166 = call float @dx.op.unary.f32(i32 24, float %2014)  ; Sqrt(value)
  %2167 = call float @dx.op.unary.f32(i32 24, float %2015)  ; Sqrt(value)
  %2168 = fmul fast float %2162, 2.000000e+00
  %2169 = fsub fast float 1.000000e+00, %2168
  %2170 = fmul fast float %2169, %2165
  %2171 = fadd fast float %2170, %2168
  %2172 = fmul fast float %2171, %2165
  %2173 = fmul fast float %2163, 2.000000e+00
  %2174 = fsub fast float 1.000000e+00, %2173
  %2175 = fmul fast float %2174, %2166
  %2176 = fadd fast float %2175, %2173
  %2177 = fmul fast float %2176, %2166
  %2178 = fmul fast float %2164, 2.000000e+00
  %2179 = fsub fast float 1.000000e+00, %2178
  %2180 = fmul fast float %2179, %2167
  %2181 = fadd fast float %2180, %2178
  %2182 = fmul fast float %2181, %2167
  %2183 = fmul fast float %2172, %2172
  %2184 = fmul fast float %2177, %2177
  %2185 = fmul fast float %2182, %2182
  br label %2202

; <label>:2186                                    ; preds = %2149
  %2187 = fmul fast float %288, %288
  %2188 = fmul fast float %292, %292
  %2189 = fmul fast float %296, %296
  %2190 = fadd fast float %2187, -1.000000e+00
  %2191 = fadd fast float %2188, -1.000000e+00
  %2192 = fadd fast float %2189, -1.000000e+00
  %2193 = fmul fast float %2038, %2190
  %2194 = fmul fast float %2038, %2191
  %2195 = fmul fast float %2038, %2192
  %2196 = fadd fast float %2193, 1.000000e+00
  %2197 = fadd fast float %2194, 1.000000e+00
  %2198 = fadd fast float %2195, 1.000000e+00
  %2199 = fmul fast float %2196, %2013
  %2200 = fmul fast float %2197, %2014
  %2201 = fmul fast float %2198, %2015
  br label %2202

; <label>:2202                                    ; preds = %2186, %2152, %2043, %1999
  %2203 = phi float [ %2148, %2043 ], [ %2024, %2152 ], [ %2024, %2186 ], [ 0x3FA23C0BE0000000, %1999 ]
  %2204 = phi float [ %2140, %2043 ], [ %2183, %2152 ], [ %2199, %2186 ], [ 1.000000e+00, %1999 ]
  %2205 = phi float [ %2141, %2043 ], [ %2184, %2152 ], [ %2200, %2186 ], [ 1.000000e+00, %1999 ]
  %2206 = phi float [ %2142, %2043 ], [ %2185, %2152 ], [ %2201, %2186 ], [ 1.000000e+00, %1999 ]
  %2207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2208 = extractvalue %dx.types.CBufRet.i32 %2207, 1
  %2209 = and i32 %2208, 1
  %2210 = icmp ne i32 %2209, 0
  %2211 = add i32 %44, 276
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2211, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = and i32 %2213, 32
  %2215 = icmp ne i32 %2214, 0
  %2216 = and i1 %2210, %2215
  %2217 = select i1 %2216, float 1.000000e+00, float %2204
  %2218 = select i1 %2216, float 0x3FD3333340000000, float %2205
  %2219 = select i1 %2216, float 0x3FD3333340000000, float %2206
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = and i32 %2221, 32
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2296, label %2224

; <label>:2224                                    ; preds = %2202
  %2225 = add i32 %44, 108
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = add i32 %44, 300
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = add i32 %2230, 0
  %2232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2233 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2232, %dx.types.Handle %74, float %1809, float %1810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2234 = extractvalue %dx.types.ResRet.f32 %2233, 0
  %2235 = extractvalue %dx.types.ResRet.f32 %2233, 1
  %2236 = extractvalue %dx.types.ResRet.f32 %2233, 2
  %2237 = extractvalue %dx.types.ResRet.f32 %2233, 3
  %2238 = and i32 %2227, 255
  %2239 = uitofp i32 %2238 to float
  %2240 = lshr i32 %2227, 8
  %2241 = and i32 %2240, 255
  %2242 = uitofp i32 %2241 to float
  %2243 = lshr i32 %2227, 16
  %2244 = and i32 %2243, 255
  %2245 = uitofp i32 %2244 to float
  %2246 = fmul fast float %2245, 0x3F70101000000000
  %2247 = fmul fast float %2234, %2239
  %2248 = fadd fast float %2247, %2242
  %2249 = fmul fast float %2248, 0x3F70101000000000
  %2250 = fadd fast float %2235, -5.000000e-01
  %2251 = fadd fast float %2237, -5.000000e-01
  %2252 = fmul fast float %2250, %2246
  %2253 = fmul fast float %2251, %2246
  %2254 = fadd fast float %2252, 5.000000e-01
  %2255 = fadd fast float %2253, 5.000000e-01
  %2256 = fmul fast float %2254, 2.000000e+00
  %2257 = fadd fast float %2256, -1.000000e+00
  %2258 = fmul fast float %2255, 2.000000e+00
  %2259 = fadd fast float %2258, -1.000000e+00
  %2260 = fadd fast float %2257, %2259
  %2261 = fmul fast float %2260, 5.000000e-01
  %2262 = fsub fast float %2257, %2259
  %2263 = fmul fast float %2262, 5.000000e-01
  %2264 = call float @dx.op.unary.f32(i32 6, float %2261)  ; FAbs(value)
  %2265 = fsub fast float 1.000000e+00, %2264
  %2266 = call float @dx.op.unary.f32(i32 6, float %2263)  ; FAbs(value)
  %2267 = fsub fast float %2265, %2266
  %2268 = call float @dx.op.dot3.f32(i32 55, float %2261, float %2263, float %2267, float %2261, float %2263, float %2267)  ; Dot3(ax,ay,az,bx,by,bz)
  %2269 = call float @dx.op.unary.f32(i32 25, float %2268)  ; Rsqrt(value)
  %2270 = fmul fast float %2261, %2269
  %2271 = fmul fast float %2263, %2269
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 67108864
  %2275 = icmp eq i32 %2274, 0
  br i1 %2275, label %2292, label %2276

; <label>:2276                                    ; preds = %2224
  %2277 = add i32 %44, 248
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2277, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = and i32 %2279, 65535
  %2281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2280)  ; LegacyF16ToF32(value)
  %2282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = and i32 %2283, 65535
  %2285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2284)  ; LegacyF16ToF32(value)
  %2286 = lshr i32 %2279, 16
  %2287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2286)  ; LegacyF16ToF32(value)
  %2288 = fsub fast float %2249, %2287
  %2289 = fmul fast float %2288, %2281
  %2290 = fadd fast float %2289, %2285
  %2291 = call float @dx.op.unary.f32(i32 7, float %2290)  ; Saturate(value)
  br label %2292

; <label>:2292                                    ; preds = %2276, %2224
  %2293 = phi float [ %2291, %2276 ], [ %2249, %2224 ]
  %2294 = call float @dx.op.dot2.f32(i32 54, float %2270, float %2271, float %45, float %46)  ; Dot2(ax,ay,bx,by)
  %2295 = call float @dx.op.dot2.f32(i32 54, float %2270, float %2271, float %47, float %48)  ; Dot2(ax,ay,bx,by)
  br label %2296

; <label>:2296                                    ; preds = %2292, %2202
  %2297 = phi float [ %2293, %2292 ], [ 0x3FD6666660000000, %2202 ]
  %2298 = phi float [ %2294, %2292 ], [ 0.000000e+00, %2202 ]
  %2299 = phi float [ %2295, %2292 ], [ 0.000000e+00, %2202 ]
  %2300 = phi float [ %2236, %2292 ], [ 1.000000e+00, %2202 ]
  %2301 = add i32 %44, 160
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2301, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = lshr i32 %2303, 22
  %2305 = shl nuw nsw i32 %2304, 5
  %2306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2305)  ; LegacyF16ToF32(value)
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = and i32 %2308, 64
  %2310 = icmp eq i32 %2309, 0
  br i1 %2310, label %2344, label %2311

; <label>:2311                                    ; preds = %2296
  %2312 = add i32 %44, 312
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = add i32 %2314, 0
  %2316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2315, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = and i32 %2318, 131072
  %2320 = icmp eq i32 %2319, 0
  %2321 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2316, %dx.types.Handle %74, float %1809, float %1810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2322 = extractvalue %dx.types.ResRet.f32 %2321, 0
  %2323 = extractvalue %dx.types.ResRet.f32 %2321, 1
  %2324 = extractvalue %dx.types.ResRet.f32 %2321, 2
  %2325 = fmul fast float %2322, %276
  %2326 = fmul fast float %2323, %279
  %2327 = fmul fast float %2324, %282
  br i1 %2320, label %2334, label %2328

; <label>:2328                                    ; preds = %2311
  %2329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2330 = extractvalue %dx.types.CBufRet.f32 %2329, 0
  %2331 = fmul fast float %2330, %2325
  %2332 = fmul fast float %2330, %2326
  %2333 = fmul fast float %2330, %2327
  br label %2334

; <label>:2334                                    ; preds = %2328, %2311
  %2335 = phi float [ %2331, %2328 ], [ %2325, %2311 ]
  %2336 = phi float [ %2332, %2328 ], [ %2326, %2311 ]
  %2337 = phi float [ %2333, %2328 ], [ %2327, %2311 ]
  %2338 = fmul fast float %2335, %2306
  %2339 = select i1 %196, float %2338, float %2335
  %2340 = call float @dx.op.dot3.f32(i32 55, float %2339, float %2336, float %2337, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2341 = select i1 %196, float 0.000000e+00, float %2335
  %2342 = select i1 %196, float %2340, float %2336
  %2343 = select i1 %196, float 0.000000e+00, float %2337
  br label %2344

; <label>:2344                                    ; preds = %2334, %2296
  %2345 = phi float [ %2341, %2334 ], [ 0.000000e+00, %2296 ]
  %2346 = phi float [ %2342, %2334 ], [ 0.000000e+00, %2296 ]
  %2347 = phi float [ %2343, %2334 ], [ 0.000000e+00, %2296 ]
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = and i32 %2349, 65536
  %2351 = icmp eq i32 %2350, 0
  br i1 %2351, label %2362, label %2352

; <label>:2352                                    ; preds = %2344
  %2353 = add i32 %44, 372
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = add i32 %2355, 0
  %2357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2356, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2358 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2357, %dx.types.Handle %75, float %1809, float %1810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2359 = extractvalue %dx.types.ResRet.f32 %2358, 0
  %2360 = extractvalue %dx.types.ResRet.f32 %2358, 1
  %2361 = extractvalue %dx.types.ResRet.f32 %2358, 2
  br label %2362

; <label>:2362                                    ; preds = %2352, %2344
  %2363 = phi float [ %2359, %2352 ], [ 0.000000e+00, %2344 ]
  %2364 = phi float [ %2360, %2352 ], [ 0.000000e+00, %2344 ]
  %2365 = phi float [ %2361, %2352 ], [ 0.000000e+00, %2344 ]
  %2366 = add i32 %44, 112
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2366, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = and i32 %2368, 255
  %2370 = uitofp i32 %2369 to float
  %2371 = lshr i32 %2368, 8
  %2372 = and i32 %2371, 255
  %2373 = uitofp i32 %2372 to float
  %2374 = call float @dx.op.dot3.f32(i32 55, float %2217, float %2218, float %2219, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2375 = fmul fast float %2373, %2374
  %2376 = fadd fast float %2375, %2370
  %2377 = fmul fast float %2376, 0x3F70101020000000
  %2378 = call float @dx.op.unary.f32(i32 7, float %2377)  ; Saturate(value)
  br i1 %1709, label %2379, label %2390

; <label>:2379                                    ; preds = %2362
  %2380 = fsub fast float 1.000000e+00, %1997
  %2381 = fmul fast float %2380, %1702
  %2382 = fmul fast float %2380, %1703
  %2383 = fmul fast float %2380, %1704
  %2384 = fmul fast float %2380, %1699
  %2385 = fmul fast float %2380, %1700
  %2386 = fmul fast float %2380, %1701
  %2387 = fmul fast float %2380, %1696
  %2388 = fmul fast float %2380, %1697
  %2389 = fmul fast float %2380, %1698
  br label %2390

; <label>:2390                                    ; preds = %2379, %2362
  %2391 = phi float [ %2387, %2379 ], [ %1696, %2362 ]
  %2392 = phi float [ %2388, %2379 ], [ %1697, %2362 ]
  %2393 = phi float [ %2389, %2379 ], [ %1698, %2362 ]
  %2394 = phi float [ %2384, %2379 ], [ %1699, %2362 ]
  %2395 = phi float [ %2385, %2379 ], [ %1700, %2362 ]
  %2396 = phi float [ %2386, %2379 ], [ %1701, %2362 ]
  %2397 = phi float [ %2381, %2379 ], [ %1702, %2362 ]
  %2398 = phi float [ %2382, %2379 ], [ %1703, %2362 ]
  %2399 = phi float [ %2383, %2379 ], [ %1704, %2362 ]
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = and i32 %2401, 3
  %2403 = icmp eq i32 %2402, 3
  br i1 %2403, label %2494, label %2404

; <label>:2404                                    ; preds = %2390
  %2405 = and i32 %2401, 16
  %2406 = icmp ne i32 %2405, 0
  %2407 = select i1 %2406, float %1997, float 0.000000e+00
  %2408 = icmp eq i32 %2402, 0
  br i1 %2408, label %2409, label %2449

; <label>:2409                                    ; preds = %2404
  %2410 = and i32 %2401, 64
  %2411 = icmp ne i32 %2410, 0
  %2412 = select i1 %2411, float %1997, float 0.000000e+00
  %2413 = and i32 %2401, 65536
  %2414 = icmp ne i32 %2413, 0
  %2415 = select i1 %2414, float %1997, float 0.000000e+00
  %2416 = fsub fast float %2217, %2397
  %2417 = fsub fast float %2218, %2398
  %2418 = fsub fast float %2219, %2399
  %2419 = fmul fast float %2407, %2416
  %2420 = fmul fast float %2407, %2417
  %2421 = fmul fast float %2407, %2418
  %2422 = fadd fast float %2419, %2397
  %2423 = fadd fast float %2420, %2398
  %2424 = fadd fast float %2421, %2399
  %2425 = fsub fast float %2203, %1705
  %2426 = fmul fast float %2407, %2425
  %2427 = fadd fast float %2426, %1705
  %2428 = fsub fast float %2345, %2394
  %2429 = fsub fast float %2346, %2395
  %2430 = fsub fast float %2347, %2396
  %2431 = fmul fast float %2412, %2428
  %2432 = fmul fast float %2412, %2429
  %2433 = fmul fast float %2412, %2430
  %2434 = fadd fast float %2431, %2394
  %2435 = fadd fast float %2432, %2395
  %2436 = fadd fast float %2433, %2396
  %2437 = fsub fast float %2363, %2391
  %2438 = fsub fast float %2364, %2392
  %2439 = fsub fast float %2365, %2393
  %2440 = fmul fast float %2415, %2437
  %2441 = fmul fast float %2415, %2438
  %2442 = fmul fast float %2415, %2439
  %2443 = fadd fast float %2440, %2391
  %2444 = fadd fast float %2441, %2392
  %2445 = fadd fast float %2442, %2393
  %2446 = fsub fast float %2378, %1708
  %2447 = fmul fast float %2407, %2446
  %2448 = fadd fast float %2447, %1708
  br label %2494

; <label>:2449                                    ; preds = %2404
  %2450 = icmp eq i32 %2402, 1
  br i1 %2450, label %2451, label %2464

; <label>:2451                                    ; preds = %2449
  %2452 = fadd fast float %2217, -1.000000e+00
  %2453 = fadd fast float %2218, -1.000000e+00
  %2454 = fadd fast float %2219, -1.000000e+00
  %2455 = fmul fast float %2407, %2452
  %2456 = fmul fast float %2407, %2453
  %2457 = fmul fast float %2407, %2454
  %2458 = fadd fast float %2455, 1.000000e+00
  %2459 = fadd fast float %2456, 1.000000e+00
  %2460 = fadd fast float %2457, 1.000000e+00
  %2461 = fmul fast float %2458, %2397
  %2462 = fmul fast float %2459, %2398
  %2463 = fmul fast float %2460, %2399
  br label %2494

; <label>:2464                                    ; preds = %2449
  %2465 = icmp eq i32 %2402, 2
  br i1 %2465, label %2466, label %2494

; <label>:2466                                    ; preds = %2464
  %2467 = call float @dx.op.unary.f32(i32 24, float %2217)  ; Sqrt(value)
  %2468 = call float @dx.op.unary.f32(i32 24, float %2218)  ; Sqrt(value)
  %2469 = call float @dx.op.unary.f32(i32 24, float %2219)  ; Sqrt(value)
  %2470 = fadd fast float %2467, -5.000000e-01
  %2471 = fadd fast float %2468, -5.000000e-01
  %2472 = fadd fast float %2469, -5.000000e-01
  %2473 = fmul fast float %2470, %2407
  %2474 = fmul fast float %2471, %2407
  %2475 = fmul fast float %2472, %2407
  %2476 = fadd fast float %2473, 5.000000e-01
  %2477 = fadd fast float %2474, 5.000000e-01
  %2478 = fadd fast float %2475, 5.000000e-01
  %2479 = fmul fast float %2476, 2.000000e+00
  %2480 = fsub fast float 1.000000e+00, %2479
  %2481 = fmul fast float %2480, %2397
  %2482 = fadd fast float %2481, %2479
  %2483 = fmul fast float %2482, %2397
  %2484 = fmul fast float %2477, 2.000000e+00
  %2485 = fsub fast float 1.000000e+00, %2484
  %2486 = fmul fast float %2485, %2398
  %2487 = fadd fast float %2486, %2484
  %2488 = fmul fast float %2487, %2398
  %2489 = fmul fast float %2478, 2.000000e+00
  %2490 = fsub fast float 1.000000e+00, %2489
  %2491 = fmul fast float %2490, %2399
  %2492 = fadd fast float %2491, %2489
  %2493 = fmul fast float %2492, %2399
  br label %2494

; <label>:2494                                    ; preds = %2466, %2464, %2451, %2409, %2390
  %2495 = phi float [ %2391, %2390 ], [ %2391, %2466 ], [ %2391, %2464 ], [ %2391, %2451 ], [ %2443, %2409 ]
  %2496 = phi float [ %2392, %2390 ], [ %2392, %2466 ], [ %2392, %2464 ], [ %2392, %2451 ], [ %2444, %2409 ]
  %2497 = phi float [ %2393, %2390 ], [ %2393, %2466 ], [ %2393, %2464 ], [ %2393, %2451 ], [ %2445, %2409 ]
  %2498 = phi float [ %2394, %2390 ], [ %2394, %2466 ], [ %2394, %2464 ], [ %2394, %2451 ], [ %2434, %2409 ]
  %2499 = phi float [ %2395, %2390 ], [ %2395, %2466 ], [ %2395, %2464 ], [ %2395, %2451 ], [ %2435, %2409 ]
  %2500 = phi float [ %2396, %2390 ], [ %2396, %2466 ], [ %2396, %2464 ], [ %2396, %2451 ], [ %2436, %2409 ]
  %2501 = phi float [ %2397, %2390 ], [ %2483, %2466 ], [ %2397, %2464 ], [ %2461, %2451 ], [ %2422, %2409 ]
  %2502 = phi float [ %2398, %2390 ], [ %2488, %2466 ], [ %2398, %2464 ], [ %2462, %2451 ], [ %2423, %2409 ]
  %2503 = phi float [ %2399, %2390 ], [ %2493, %2466 ], [ %2399, %2464 ], [ %2463, %2451 ], [ %2424, %2409 ]
  %2504 = phi float [ %1705, %2390 ], [ %1705, %2466 ], [ %1705, %2464 ], [ %1705, %2451 ], [ %2427, %2409 ]
  %2505 = phi float [ %1708, %2390 ], [ %1708, %2466 ], [ %1708, %2464 ], [ %1708, %2451 ], [ %2448, %2409 ]
  %2506 = and i32 %2401, 12
  %2507 = icmp eq i32 %2506, 12
  br i1 %2507, label %2580, label %2508

; <label>:2508                                    ; preds = %2494
  %2509 = and i32 %2401, 2097184
  %2510 = icmp eq i32 %2509, 2097184
  %2511 = select i1 %2510, float %1997, float 0.000000e+00
  %2512 = and i32 %2401, 4194336
  %2513 = icmp eq i32 %2512, 4194336
  %2514 = select i1 %2513, float %1997, float 0.000000e+00
  %2515 = and i32 %2401, 8388640
  %2516 = icmp eq i32 %2515, 8388640
  %2517 = select i1 %2516, float %1997, float 0.000000e+00
  %2518 = icmp eq i32 %2506, 0
  br i1 %2518, label %2519, label %2532

; <label>:2519                                    ; preds = %2508
  %2520 = fsub fast float %2298, %1694
  %2521 = fsub fast float %2299, %1695
  %2522 = fmul fast float %2511, %2520
  %2523 = fmul fast float %2511, %2521
  %2524 = fadd fast float %2522, %1694
  %2525 = fadd fast float %2523, %1695
  %2526 = fsub fast float %2300, %1707
  %2527 = fmul fast float %2514, %2526
  %2528 = fadd fast float %2527, %1707
  %2529 = fsub fast float %2297, %1706
  %2530 = fmul fast float %2517, %2529
  %2531 = fadd fast float %2530, %1706
  br label %2580

; <label>:2532                                    ; preds = %2508
  %2533 = icmp eq i32 %2506, 4
  br i1 %2533, label %2534, label %2566

; <label>:2534                                    ; preds = %2532
  %2535 = fmul fast float %2511, %2298
  %2536 = fmul fast float %2511, %2299
  %2537 = fadd fast float %2535, %1694
  %2538 = fadd fast float %2536, %1695
  %2539 = call float @dx.op.binary.f32(i32 36, float %1707, float %2300)  ; FMin(a,b)
  %2540 = fsub fast float %2539, %1707
  %2541 = fmul fast float %2540, %2514
  %2542 = fadd fast float %2541, %1707
  %2543 = fadd fast float %2297, %1706
  %2544 = fmul fast float %2543, 0x3FF337FAE0000000
  %2545 = fmul fast float %1706, %1706
  %2546 = fmul fast float %2297, %2297
  %2547 = fadd fast float %2546, %2545
  %2548 = fmul fast float %2547, 0x3FE5152B00000000
  %2549 = fmul fast float %1706, 0xBFCC1F85E0000000
  %2550 = fmul fast float %2549, %2297
  %2551 = fadd fast float %2550, 0xBFE1363700000000
  %2552 = fadd fast float %2551, %2544
  %2553 = fsub fast float %2552, %2548
  %2554 = fmul fast float %2543, 0x3FBA6F0D00000000
  %2555 = fmul fast float %2547, 0x3FD0432880000000
  %2556 = fmul fast float %1706, 0xBFEF110800000000
  %2557 = fmul fast float %2556, %2297
  %2558 = fadd fast float %2557, 1.000000e+00
  %2559 = fsub fast float %2558, %2554
  %2560 = fadd fast float %2559, %2555
  %2561 = fdiv fast float %2553, %2560
  %2562 = call float @dx.op.unary.f32(i32 7, float %2561)  ; Saturate(value)
  %2563 = fsub fast float %2562, %1706
  %2564 = fmul fast float %2563, %2517
  %2565 = fadd fast float %2564, %1706
  br label %2580

; <label>:2566                                    ; preds = %2532
  %2567 = icmp eq i32 %2506, 8
  br i1 %2567, label %2568, label %2580

; <label>:2568                                    ; preds = %2566
  %2569 = fmul fast float %2511, %2298
  %2570 = fmul fast float %2511, %2299
  %2571 = fadd fast float %2569, %1694
  %2572 = fadd fast float %2570, %1695
  %2573 = call float @dx.op.binary.f32(i32 36, float %1707, float %2300)  ; FMin(a,b)
  %2574 = fsub fast float %2573, %1707
  %2575 = fmul fast float %2574, %2514
  %2576 = fadd fast float %2575, %1707
  %2577 = fsub fast float %2297, %1706
  %2578 = fmul fast float %2517, %2577
  %2579 = fadd fast float %2578, %1706
  br label %2580

; <label>:2580                                    ; preds = %2568, %2566, %2534, %2519, %2494, %1996, %1693
  %2581 = phi float [ %1694, %2494 ], [ %1694, %1996 ], [ %1694, %1693 ], [ %2524, %2519 ], [ %2537, %2534 ], [ %1694, %2566 ], [ %2571, %2568 ]
  %2582 = phi float [ %1695, %2494 ], [ %1695, %1996 ], [ %1695, %1693 ], [ %2525, %2519 ], [ %2538, %2534 ], [ %1695, %2566 ], [ %2572, %2568 ]
  %2583 = phi float [ %2495, %2494 ], [ %1696, %1996 ], [ %1696, %1693 ], [ %2495, %2519 ], [ %2495, %2534 ], [ %2495, %2566 ], [ %2495, %2568 ]
  %2584 = phi float [ %2496, %2494 ], [ %1697, %1996 ], [ %1697, %1693 ], [ %2496, %2519 ], [ %2496, %2534 ], [ %2496, %2566 ], [ %2496, %2568 ]
  %2585 = phi float [ %2497, %2494 ], [ %1698, %1996 ], [ %1698, %1693 ], [ %2497, %2519 ], [ %2497, %2534 ], [ %2497, %2566 ], [ %2497, %2568 ]
  %2586 = phi float [ %2498, %2494 ], [ %1699, %1996 ], [ %1699, %1693 ], [ %2498, %2519 ], [ %2498, %2534 ], [ %2498, %2566 ], [ %2498, %2568 ]
  %2587 = phi float [ %2499, %2494 ], [ %1700, %1996 ], [ %1700, %1693 ], [ %2499, %2519 ], [ %2499, %2534 ], [ %2499, %2566 ], [ %2499, %2568 ]
  %2588 = phi float [ %2500, %2494 ], [ %1701, %1996 ], [ %1701, %1693 ], [ %2500, %2519 ], [ %2500, %2534 ], [ %2500, %2566 ], [ %2500, %2568 ]
  %2589 = phi float [ %2501, %2494 ], [ %1702, %1996 ], [ %1702, %1693 ], [ %2501, %2519 ], [ %2501, %2534 ], [ %2501, %2566 ], [ %2501, %2568 ]
  %2590 = phi float [ %2502, %2494 ], [ %1703, %1996 ], [ %1703, %1693 ], [ %2502, %2519 ], [ %2502, %2534 ], [ %2502, %2566 ], [ %2502, %2568 ]
  %2591 = phi float [ %2503, %2494 ], [ %1704, %1996 ], [ %1704, %1693 ], [ %2503, %2519 ], [ %2503, %2534 ], [ %2503, %2566 ], [ %2503, %2568 ]
  %2592 = phi float [ %2504, %2494 ], [ %1705, %1996 ], [ %1705, %1693 ], [ %2504, %2519 ], [ %2504, %2534 ], [ %2504, %2566 ], [ %2504, %2568 ]
  %2593 = phi float [ %1706, %2494 ], [ %1706, %1996 ], [ %1706, %1693 ], [ %2531, %2519 ], [ %2565, %2534 ], [ %1706, %2566 ], [ %2579, %2568 ]
  %2594 = phi float [ %1707, %2494 ], [ %1707, %1996 ], [ %1707, %1693 ], [ %2528, %2519 ], [ %2542, %2534 ], [ %1707, %2566 ], [ %2576, %2568 ]
  %2595 = phi float [ %2505, %2494 ], [ %1708, %1996 ], [ %1708, %1693 ], [ %2505, %2519 ], [ %2505, %2534 ], [ %2505, %2566 ], [ %2505, %2568 ]
  %2596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2597 = extractvalue %dx.types.CBufRet.f32 %2596, 0
  %2598 = call float @dx.op.dot2.f32(i32 54, float %2581, float %2582, float %2581, float %2582)  ; Dot2(ax,ay,bx,by)
  %2599 = fmul fast float %2598, 0x3FE3333340000000
  %2600 = fsub fast float 1.000000e+00, %2599
  %2601 = call float @dx.op.dot3.f32(i32 55, float %2581, float %2582, float %2600, float %2581, float %2582, float %2600)  ; Dot3(ax,ay,az,bx,by,bz)
  %2602 = call float @dx.op.unary.f32(i32 25, float %2601)  ; Rsqrt(value)
  %2603 = fmul fast float %2602, %2581
  %2604 = fmul fast float %2602, %2582
  %2605 = fmul fast float %2600, %2602
  %2606 = fmul fast float %2605, %57
  %2607 = fmul fast float %2605, %58
  %2608 = fmul fast float %2605, %59
  %2609 = fmul fast float %2603, %53
  %2610 = fmul fast float %2603, %54
  %2611 = fmul fast float %2603, %55
  %2612 = fadd fast float %2606, %2609
  %2613 = fadd fast float %2607, %2610
  %2614 = fadd fast float %2608, %2611
  %2615 = fmul fast float %2604, %89
  %2616 = fmul fast float %2604, %90
  %2617 = fmul fast float %2604, %91
  %2618 = fadd fast float %2612, %2615
  %2619 = fadd fast float %2613, %2616
  %2620 = fadd fast float %2614, %2617
  %2621 = call float @dx.op.dot3.f32(i32 55, float %2618, float %2619, float %2620, float %2618, float %2619, float %2620)  ; Dot3(ax,ay,az,bx,by,bz)
  %2622 = call float @dx.op.unary.f32(i32 25, float %2621)  ; Rsqrt(value)
  %2623 = fmul fast float %2618, %2622
  %2624 = fmul fast float %2619, %2622
  %2625 = fmul fast float %2620, %2622
  %2626 = call float @dx.op.unary.f32(i32 83, float %125)  ; DerivCoarseX(value)
  %2627 = call float @dx.op.unary.f32(i32 83, float %126)  ; DerivCoarseX(value)
  %2628 = call float @dx.op.unary.f32(i32 83, float %127)  ; DerivCoarseX(value)
  %2629 = call float @dx.op.unary.f32(i32 84, float %125)  ; DerivCoarseY(value)
  %2630 = call float @dx.op.unary.f32(i32 84, float %126)  ; DerivCoarseY(value)
  %2631 = call float @dx.op.unary.f32(i32 84, float %127)  ; DerivCoarseY(value)
  %2632 = fadd fast float %2626, %125
  %2633 = fadd fast float %2627, %126
  %2634 = fadd fast float %2628, %127
  %2635 = fadd fast float %2629, %125
  %2636 = fadd fast float %2630, %126
  %2637 = fadd fast float %2631, %127
  %2638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %2639 = extractvalue %dx.types.CBufRet.f32 %2638, 0
  %2640 = extractvalue %dx.types.CBufRet.f32 %2638, 1
  %2641 = extractvalue %dx.types.CBufRet.f32 %2638, 2
  %2642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2643 = extractvalue %dx.types.CBufRet.f32 %2642, 2
  %2644 = extractvalue %dx.types.CBufRet.f32 %2642, 3
  %2645 = fmul fast float %2639, %78
  %2646 = fmul fast float %2645, %2643
  %2647 = fmul fast float %2640, %79
  %2648 = fmul fast float %2647, %2644
  %2649 = fptoui float %2646 to i32
  %2650 = fptoui float %2648 to i32
  %2651 = fadd fast float %2639, -1.000000e+00
  %2652 = fadd fast float %2640, -1.000000e+00
  %2653 = fptoui float %2651 to i32
  %2654 = fptoui float %2652 to i32
  %2655 = call i32 @dx.op.binary.i32(i32 40, i32 %2649, i32 %2653)  ; UMin(a,b)
  %2656 = call i32 @dx.op.binary.i32(i32 40, i32 %2650, i32 %2654)  ; UMin(a,b)
  %2657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2658 = extractvalue %dx.types.CBufRet.f32 %2657, 2
  %2659 = extractvalue %dx.types.CBufRet.f32 %2657, 3
  %2660 = fmul fast float %2658, %73
  %2661 = fsub fast float %2660, %2659
  %2662 = fadd fast float %2641, -1.000000e+00
  %2663 = call float @dx.op.binary.f32(i32 36, float %2661, float %2662)  ; FMin(a,b)
  %2664 = fptoui float %2663 to i32
  %2665 = fptoui float %2639 to i32
  %2666 = fptoui float %2640 to i32
  %2667 = mul i32 %2664, %2666
  %2668 = add i32 %2667, %2656
  %2669 = mul i32 %2668, %2665
  %2670 = add i32 %2669, %2655
  %2671 = shl i32 %2670, 2
  %2672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2671, i32 undef)  ; BufferLoad(srv,index,wot)
  %2673 = extractvalue %dx.types.ResRet.i32 %2672, 0
  %2674 = and i32 %2673, 1023
  %2675 = lshr i32 %2673, 10
  %2676 = icmp eq i32 %2674, 0
  br i1 %2676, label %3102, label %2677

; <label>:2677                                    ; preds = %2580
  %2678 = and i32 %2673, 1023
  br label %2679

; <label>:2679                                    ; preds = %2805, %2677
  %2680 = phi float [ %2806, %2805 ], [ 0.000000e+00, %2677 ]
  %2681 = phi float [ %2807, %2805 ], [ %2597, %2677 ]
  %2682 = phi float [ %2808, %2805 ], [ %2595, %2677 ]
  %2683 = phi float [ %2809, %2805 ], [ 0.000000e+00, %2677 ]
  %2684 = phi float [ %2810, %2805 ], [ 0.000000e+00, %2677 ]
  %2685 = phi float [ %2811, %2805 ], [ %2586, %2677 ]
  %2686 = phi float [ %2812, %2805 ], [ %2587, %2677 ]
  %2687 = phi float [ %2813, %2805 ], [ %2588, %2677 ]
  %2688 = phi float [ %2814, %2805 ], [ %2623, %2677 ]
  %2689 = phi float [ %2815, %2805 ], [ %2624, %2677 ]
  %2690 = phi float [ %2816, %2805 ], [ %2625, %2677 ]
  %2691 = phi float [ %2817, %2805 ], [ %2594, %2677 ]
  %2692 = phi float [ %2818, %2805 ], [ %2593, %2677 ]
  %2693 = phi float [ %2819, %2805 ], [ 0.000000e+00, %2677 ]
  %2694 = phi float [ %2820, %2805 ], [ %2592, %2677 ]
  %2695 = phi float [ %2821, %2805 ], [ %2589, %2677 ]
  %2696 = phi float [ %2822, %2805 ], [ %2590, %2677 ]
  %2697 = phi float [ %2823, %2805 ], [ %2591, %2677 ]
  %2698 = phi i32 [ %2755, %2805 ], [ 0, %2677 ]
  %2699 = add nuw nsw i32 %2698, %2675
  %2700 = shl i32 %2699, 2
  %2701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2700, i32 undef)  ; BufferLoad(srv,index,wot)
  %2702 = extractvalue %dx.types.ResRet.i32 %2701, 0
  %2703 = shl i32 %2702, 8
  %2704 = or i32 %2703, 48
  %2705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.f32 %2705, 0
  %2707 = extractvalue %dx.types.ResRet.f32 %2705, 1
  %2708 = extractvalue %dx.types.ResRet.f32 %2705, 2
  %2709 = extractvalue %dx.types.ResRet.f32 %2705, 3
  %2710 = or i32 %2703, 64
  %2711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2712 = extractvalue %dx.types.ResRet.i32 %2711, 0
  %2713 = extractvalue %dx.types.ResRet.i32 %2711, 1
  %2714 = or i32 %2703, 80
  %2715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2714, i32 undef)  ; BufferLoad(srv,index,wot)
  %2716 = extractvalue %dx.types.ResRet.f32 %2715, 2
  %2717 = extractvalue %dx.types.ResRet.f32 %2715, 3
  %2718 = or i32 %2703, 96
  %2719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2718, i32 undef)  ; BufferLoad(srv,index,wot)
  %2720 = extractvalue %dx.types.ResRet.f32 %2719, 0
  %2721 = extractvalue %dx.types.ResRet.f32 %2719, 1
  %2722 = extractvalue %dx.types.ResRet.f32 %2719, 2
  %2723 = extractvalue %dx.types.ResRet.f32 %2719, 3
  %2724 = or i32 %2703, 112
  %2725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.f32 %2725, 2
  %2727 = or i32 %2703, 128
  %2728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.f32 %2728, 0
  %2730 = extractvalue %dx.types.ResRet.f32 %2728, 1
  %2731 = extractvalue %dx.types.ResRet.f32 %2728, 2
  %2732 = extractvalue %dx.types.ResRet.f32 %2728, 3
  %2733 = or i32 %2703, 144
  %2734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.f32 %2734, 0
  %2736 = extractvalue %dx.types.ResRet.f32 %2734, 1
  %2737 = extractvalue %dx.types.ResRet.f32 %2734, 2
  %2738 = extractvalue %dx.types.ResRet.f32 %2734, 3
  %2739 = or i32 %2703, 160
  %2740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.f32 %2740, 0
  %2742 = extractvalue %dx.types.ResRet.f32 %2740, 1
  %2743 = extractvalue %dx.types.ResRet.f32 %2740, 2
  %2744 = extractvalue %dx.types.ResRet.f32 %2740, 3
  %2745 = or i32 %2703, 192
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = or i32 %2703, 208
  %2749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.f32 %2749, 0
  %2751 = or i32 %2703, 248
  %2752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.ResRet.f32 %2752, 1
  %2755 = add nuw nsw i32 %2698, 1
  %2756 = bitcast float %2709 to i32
  %2757 = and i32 %2756, 2560
  %2758 = icmp eq i32 %2757, 0
  %2759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %2760 = extractvalue %dx.types.ResRet.f32 %2759, 0
  %2761 = extractvalue %dx.types.ResRet.f32 %2759, 1
  %2762 = extractvalue %dx.types.ResRet.f32 %2759, 2
  %2763 = extractvalue %dx.types.ResRet.f32 %2759, 3
  %2764 = call float @dx.op.dot4.f32(i32 56, float %2760, float %2761, float %2762, float %2763, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2765 = or i32 %2703, 16
  %2766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.f32 %2766, 0
  %2768 = extractvalue %dx.types.ResRet.f32 %2766, 1
  %2769 = extractvalue %dx.types.ResRet.f32 %2766, 2
  %2770 = extractvalue %dx.types.ResRet.f32 %2766, 3
  %2771 = call float @dx.op.dot4.f32(i32 56, float %2767, float %2768, float %2769, float %2770, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2772 = or i32 %2703, 32
  %2773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.f32 %2773, 0
  %2775 = extractvalue %dx.types.ResRet.f32 %2773, 1
  %2776 = extractvalue %dx.types.ResRet.f32 %2773, 2
  %2777 = extractvalue %dx.types.ResRet.f32 %2773, 3
  %2778 = call float @dx.op.dot4.f32(i32 56, float %2774, float %2775, float %2776, float %2777, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2779 = call float @dx.op.unary.f32(i32 27, float %2764)  ; Round_ni(value)
  %2780 = call float @dx.op.unary.f32(i32 6, float %2779)  ; FAbs(value)
  %2781 = call float @dx.op.unary.f32(i32 27, float %2771)  ; Round_ni(value)
  %2782 = call float @dx.op.unary.f32(i32 6, float %2781)  ; FAbs(value)
  %2783 = call float @dx.op.unary.f32(i32 6, float %2778)  ; FAbs(value)
  %2784 = call float @dx.op.unary.f32(i32 27, float %2783)  ; Round_ni(value)
  %2785 = fadd fast float %2782, %2780
  %2786 = fadd fast float %2785, %2784
  %2787 = fcmp fast oeq float %2786, 0.000000e+00
  %2788 = call float @dx.op.dot4.f32(i32 56, float %2760, float %2761, float %2762, float %2763, float %2632, float %2633, float %2634, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2789 = call float @dx.op.dot4.f32(i32 56, float %2767, float %2768, float %2769, float %2770, float %2632, float %2633, float %2634, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2790 = call float @dx.op.dot4.f32(i32 56, float %2760, float %2761, float %2762, float %2763, float %2635, float %2636, float %2637, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2791 = call float @dx.op.dot4.f32(i32 56, float %2767, float %2768, float %2769, float %2770, float %2635, float %2636, float %2637, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2792 = fsub fast float %2788, %2764
  %2793 = fsub fast float %2790, %2764
  %2794 = fsub fast float %2789, %2771
  %2795 = fsub fast float %2791, %2771
  %2796 = call float @dx.op.dot3.f32(i32 55, float %2706, float %2707, float %2708, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %2797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2798 = extractvalue %dx.types.CBufRet.f32 %2797, 2
  %2799 = fadd fast float %2798, %2796
  %2800 = call float @dx.op.unary.f32(i32 7, float %2799)  ; Saturate(value)
  %2801 = extractvalue %dx.types.CBufRet.f32 %2797, 0
  %2802 = fcmp fast ogt float %2800, %2801
  %2803 = and i1 %2787, %2802
  %2804 = and i1 %2758, %2803
  br i1 %2804, label %2825, label %2805

; <label>:2805                                    ; preds = %3088, %2906, %2825, %2679
  %2806 = phi float [ %2680, %2825 ], [ %2909, %2906 ], [ %2909, %3088 ], [ %2680, %2679 ]
  %2807 = phi float [ %2681, %2825 ], [ %2681, %2906 ], [ %3063, %3088 ], [ %2681, %2679 ]
  %2808 = phi float [ %2682, %2825 ], [ %2682, %2906 ], [ %3061, %3088 ], [ %2682, %2679 ]
  %2809 = phi float [ %2683, %2825 ], [ %2683, %2906 ], [ %3033, %3088 ], [ %2683, %2679 ]
  %2810 = phi float [ %2684, %2825 ], [ %2684, %2906 ], [ %3031, %3088 ], [ %2684, %2679 ]
  %2811 = phi float [ %2685, %2825 ], [ %2685, %2906 ], [ %3098, %3088 ], [ %2685, %2679 ]
  %2812 = phi float [ %2686, %2825 ], [ %2686, %2906 ], [ %3099, %3088 ], [ %2686, %2679 ]
  %2813 = phi float [ %2687, %2825 ], [ %2687, %2906 ], [ %3100, %3088 ], [ %2687, %2679 ]
  %2814 = phi float [ %2688, %2825 ], [ %2688, %2906 ], [ %3012, %3088 ], [ %2688, %2679 ]
  %2815 = phi float [ %2689, %2825 ], [ %2689, %2906 ], [ %3013, %3088 ], [ %2689, %2679 ]
  %2816 = phi float [ %2690, %2825 ], [ %2690, %2906 ], [ %3014, %3088 ], [ %2690, %2679 ]
  %2817 = phi float [ %2691, %2825 ], [ %2691, %2906 ], [ %3041, %3088 ], [ %2691, %2679 ]
  %2818 = phi float [ %2692, %2825 ], [ %2692, %2906 ], [ %3038, %3088 ], [ %2692, %2679 ]
  %2819 = phi float [ %2693, %2825 ], [ %2693, %2906 ], [ %3035, %3088 ], [ %2693, %2679 ]
  %2820 = phi float [ %2694, %2825 ], [ %2694, %2906 ], [ %3029, %3088 ], [ %2694, %2679 ]
  %2821 = phi float [ %2695, %2825 ], [ %2695, %2906 ], [ %3024, %3088 ], [ %2695, %2679 ]
  %2822 = phi float [ %2696, %2825 ], [ %2696, %2906 ], [ %3025, %3088 ], [ %2696, %2679 ]
  %2823 = phi float [ %2697, %2825 ], [ %2697, %2906 ], [ %3026, %3088 ], [ %2697, %2679 ]
  %2824 = icmp eq i32 %2755, %2678
  br i1 %2824, label %3101, label %2679

; <label>:2825                                    ; preds = %2679
  %2826 = extractvalue %dx.types.ResRet.f32 %2725, 3
  %2827 = extractvalue %dx.types.ResRet.f32 %2725, 1
  %2828 = extractvalue %dx.types.ResRet.f32 %2725, 0
  %2829 = extractvalue %dx.types.ResRet.f32 %2715, 1
  %2830 = extractvalue %dx.types.ResRet.f32 %2715, 0
  %2831 = extractvalue %dx.types.ResRet.i32 %2711, 3
  %2832 = extractvalue %dx.types.ResRet.i32 %2711, 2
  %2833 = add i32 %2831, 0
  %2834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2833, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2835 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2836 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2834, %dx.types.Handle %2835, float %2764, float %2771, float undef, float undef, i32 0, i32 0, i32 undef, float %2792, float %2794, float undef, float %2793, float %2795, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2837 = extractvalue %dx.types.ResRet.f32 %2836, 0
  %2838 = fmul fast float %2837, %2830
  %2839 = fadd fast float %2838, %2829
  %2840 = call float @dx.op.unary.f32(i32 7, float %2839)  ; Saturate(value)
  %2841 = fmul fast float %2764, %2720
  %2842 = call float @dx.op.tertiary.f32(i32 46, float %2721, float %2771, float %2841)  ; FMad(a,b,c)
  %2843 = fadd fast float %2842, %2828
  %2844 = fmul fast float %2764, %2722
  %2845 = call float @dx.op.tertiary.f32(i32 46, float %2723, float %2771, float %2844)  ; FMad(a,b,c)
  %2846 = fadd fast float %2845, %2827
  %2847 = fmul fast float %2792, %2720
  %2848 = call float @dx.op.tertiary.f32(i32 46, float %2721, float %2794, float %2847)  ; FMad(a,b,c)
  %2849 = fmul fast float %2792, %2722
  %2850 = call float @dx.op.tertiary.f32(i32 46, float %2723, float %2794, float %2849)  ; FMad(a,b,c)
  %2851 = fmul fast float %2793, %2720
  %2852 = call float @dx.op.tertiary.f32(i32 46, float %2721, float %2795, float %2851)  ; FMad(a,b,c)
  %2853 = fmul fast float %2793, %2722
  %2854 = call float @dx.op.tertiary.f32(i32 46, float %2723, float %2795, float %2853)  ; FMad(a,b,c)
  %2855 = add i32 %2832, 0
  %2856 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2855, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2857 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2856, %dx.types.Handle %2835, float %2843, float %2846, float undef, float undef, i32 0, i32 0, i32 undef, float %2848, float %2850, float undef, float %2852, float %2854, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2858 = extractvalue %dx.types.ResRet.f32 %2857, 0
  %2859 = and i32 %2756, 1024
  %2860 = icmp ne i32 %2859, 0
  %2861 = fcmp fast ogt float %2858, 0x3FE0101020000000
  %2862 = uitofp i1 %2861 to float
  %2863 = select i1 %2860, float %2862, float %2858
  %2864 = and i32 %2756, 8192
  %2865 = icmp ne i32 %2864, 0
  %2866 = select i1 %2865, float %2826, float 1.000000e+00
  %2867 = fmul fast float %2764, 2.000000e+00
  %2868 = fadd fast float %2867, -1.000000e+00
  %2869 = call float @dx.op.unary.f32(i32 6, float %2868)  ; FAbs(value)
  %2870 = fmul fast float %2869, %2753
  %2871 = fsub fast float %2870, %2753
  %2872 = call float @dx.op.unary.f32(i32 7, float %2871)  ; Saturate(value)
  %2873 = fmul fast float %2771, 2.000000e+00
  %2874 = fadd fast float %2873, -1.000000e+00
  %2875 = call float @dx.op.unary.f32(i32 6, float %2874)  ; FAbs(value)
  %2876 = fmul fast float %2875, %2754
  %2877 = fsub fast float %2876, %2754
  %2878 = call float @dx.op.unary.f32(i32 7, float %2877)  ; Saturate(value)
  %2879 = fmul fast float %2783, %2716
  %2880 = fsub fast float %2879, %2716
  %2881 = call float @dx.op.unary.f32(i32 7, float %2880)  ; Saturate(value)
  %2882 = fmul fast float %2840, %2866
  %2883 = fmul fast float %2882, %2837
  %2884 = fmul fast float %2883, %2872
  %2885 = fmul fast float %2884, %2863
  %2886 = fmul fast float %2885, %2878
  %2887 = fmul fast float %2886, %2881
  %2888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2889 = extractvalue %dx.types.CBufRet.f32 %2888, 1
  %2890 = extractvalue %dx.types.CBufRet.f32 %2888, 0
  %2891 = fsub fast float %2800, %2890
  %2892 = fmul fast float %2891, %2889
  %2893 = call float @dx.op.unary.f32(i32 7, float %2892)  ; Saturate(value)
  %2894 = fmul fast float %2887, %2717
  %2895 = fadd fast float %2887, %2717
  %2896 = fmul fast float %2895, %2726
  %2897 = fsub fast float %2896, %2726
  %2898 = call float @dx.op.unary.f32(i32 7, float %2897)  ; Saturate(value)
  %2899 = and i32 %2756, 128
  %2900 = icmp ne i32 %2899, 0
  %2901 = select i1 %2900, float %2898, float %2894
  %2902 = fmul fast float %2901, %2893
  %2903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2904 = extractvalue %dx.types.CBufRet.f32 %2903, 0
  %2905 = fcmp fast ugt float %2902, %2904
  br i1 %2905, label %2906, label %2805

; <label>:2906                                    ; preds = %2825
  %2907 = select i1 %2865, float %2902, float 0.000000e+00
  %2908 = fadd fast float %2907, %2680
  %2909 = call float @dx.op.unary.f32(i32 7, float %2908)  ; Saturate(value)
  br i1 %2865, label %2805, label %2910

; <label>:2910                                    ; preds = %2906
  %2911 = and i32 %2756, 4
  %2912 = and i32 %2756, 8
  %2913 = add i32 %2712, 0
  %2914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2913, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2916 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2914, %dx.types.Handle %2915, float %2843, float %2846, float undef, float undef, i32 0, i32 0, i32 undef, float %2848, float %2850, float undef, float %2852, float %2854, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2917 = extractvalue %dx.types.ResRet.f32 %2916, 0
  %2918 = extractvalue %dx.types.ResRet.f32 %2916, 1
  %2919 = extractvalue %dx.types.ResRet.f32 %2916, 2
  %2920 = extractvalue %dx.types.ResRet.f32 %2916, 3
  %2921 = bitcast float %2738 to i32
  %2922 = and i32 %2921, 255
  %2923 = uitofp i32 %2922 to float
  %2924 = lshr i32 %2921, 8
  %2925 = and i32 %2924, 255
  %2926 = uitofp i32 %2925 to float
  %2927 = fmul fast float %2920, %2923
  %2928 = fadd fast float %2927, %2926
  %2929 = fmul fast float %2928, 0x3F70101000000000
  %2930 = add i32 %2713, 0
  %2931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2930, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2932 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2931, %dx.types.Handle %2915, float %2843, float %2846, float undef, float undef, i32 0, i32 0, i32 undef, float %2848, float %2850, float undef, float %2852, float %2854, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2933 = extractvalue %dx.types.ResRet.f32 %2932, 0
  %2934 = extractvalue %dx.types.ResRet.f32 %2932, 1
  %2935 = extractvalue %dx.types.ResRet.f32 %2932, 2
  %2936 = extractvalue %dx.types.ResRet.f32 %2932, 3
  %2937 = bitcast float %2732 to i32
  %2938 = and i32 %2937, 255
  %2939 = uitofp i32 %2938 to float
  %2940 = lshr i32 %2937, 8
  %2941 = and i32 %2940, 255
  %2942 = uitofp i32 %2941 to float
  %2943 = lshr i32 %2937, 16
  %2944 = and i32 %2943, 255
  %2945 = uitofp i32 %2944 to float
  %2946 = fmul fast float %2945, 0x3F70101000000000
  %2947 = fmul fast float %2933, %2939
  %2948 = fadd fast float %2947, %2942
  %2949 = fmul fast float %2948, 0x3F70101000000000
  %2950 = fadd fast float %2934, -5.000000e-01
  %2951 = fadd fast float %2936, -5.000000e-01
  %2952 = fmul fast float %2950, %2946
  %2953 = fmul fast float %2951, %2946
  %2954 = fadd fast float %2952, 5.000000e-01
  %2955 = fadd fast float %2953, 5.000000e-01
  %2956 = fmul fast float %2917, %2741
  %2957 = fmul fast float %2918, %2742
  %2958 = fmul fast float %2919, %2743
  %2959 = fmul fast float %2954, 2.000000e+00
  %2960 = fadd fast float %2959, -1.000000e+00
  %2961 = fmul fast float %2955, 2.000000e+00
  %2962 = fadd fast float %2961, -1.000000e+00
  %2963 = fadd fast float %2960, %2962
  %2964 = fmul fast float %2963, 5.000000e-01
  %2965 = fsub fast float %2960, %2962
  %2966 = fmul fast float %2965, 5.000000e-01
  %2967 = call float @dx.op.unary.f32(i32 6, float %2964)  ; FAbs(value)
  %2968 = fsub fast float 1.000000e+00, %2967
  %2969 = call float @dx.op.unary.f32(i32 6, float %2966)  ; FAbs(value)
  %2970 = fsub fast float %2968, %2969
  %2971 = call float @dx.op.dot3.f32(i32 55, float %2964, float %2966, float %2970, float %2964, float %2966, float %2970)  ; Dot3(ax,ay,az,bx,by,bz)
  %2972 = call float @dx.op.unary.f32(i32 25, float %2971)  ; Rsqrt(value)
  %2973 = fmul fast float %2964, %2972
  %2974 = fmul fast float %2966, %2972
  %2975 = fmul fast float %2972, %2970
  %2976 = fmul fast float %2975, %2706
  %2977 = fmul fast float %2975, %2707
  %2978 = fmul fast float %2975, %2708
  %2979 = fmul fast float %2973, %2729
  %2980 = fmul fast float %2973, %2730
  %2981 = fmul fast float %2973, %2731
  %2982 = fadd fast float %2979, %2976
  %2983 = fadd fast float %2980, %2977
  %2984 = fadd fast float %2981, %2978
  %2985 = fmul fast float %2974, %2735
  %2986 = fmul fast float %2974, %2736
  %2987 = fmul fast float %2974, %2737
  %2988 = fadd fast float %2982, %2985
  %2989 = fadd fast float %2983, %2986
  %2990 = fadd fast float %2984, %2987
  %2991 = call float @dx.op.dot3.f32(i32 55, float %2988, float %2989, float %2990, float %2988, float %2989, float %2990)  ; Dot3(ax,ay,az,bx,by,bz)
  %2992 = call float @dx.op.unary.f32(i32 25, float %2991)  ; Rsqrt(value)
  %2993 = fmul fast float %2988, %2992
  %2994 = fmul fast float %2989, %2992
  %2995 = fmul fast float %2990, %2992
  %2996 = icmp ne i32 %2912, 0
  %2997 = select i1 %2996, float 1.000000e+00, float 0.000000e+00
  %2998 = fmul fast float %2902, %2997
  %2999 = and i32 %2756, 1
  %3000 = icmp eq i32 %2999, 0
  br i1 %3000, label %3001, label %3005

; <label>:3001                                    ; preds = %2910
  %3002 = fsub fast float %2993, %2688
  %3003 = fsub fast float %2994, %2689
  %3004 = fsub fast float %2995, %2690
  br label %3005

; <label>:3005                                    ; preds = %3001, %2910
  %3006 = phi float [ %3002, %3001 ], [ %2993, %2910 ]
  %3007 = phi float [ %3003, %3001 ], [ %2994, %2910 ]
  %3008 = phi float [ %3004, %3001 ], [ %2995, %2910 ]
  %3009 = fmul float %3008, %2998
  %3010 = fmul float %3007, %2998
  %3011 = fmul float %3006, %2998
  %3012 = fadd fast float %3011, %2688
  %3013 = fadd fast float %3010, %2689
  %3014 = fadd fast float %3009, %2690
  %3015 = icmp ne i32 %2911, 0
  %3016 = select i1 %3015, float 1.000000e+00, float 0.000000e+00
  %3017 = fmul fast float %2902, %3016
  %3018 = fsub fast float %2956, %2695
  %3019 = fsub fast float %2957, %2696
  %3020 = fsub fast float %2958, %2697
  %3021 = fmul fast float %3018, %3017
  %3022 = fmul fast float %3019, %3017
  %3023 = fmul fast float %3020, %3017
  %3024 = fadd fast float %3021, %2695
  %3025 = fadd fast float %3022, %2696
  %3026 = fadd fast float %3023, %2697
  %3027 = fsub fast float %2929, %2694
  %3028 = fmul fast float %3027, %3017
  %3029 = fadd fast float %3028, %2694
  %3030 = fmul fast float %3017, %2684
  %3031 = fsub fast float %2684, %3030
  %3032 = fmul fast float %3017, %2683
  %3033 = fsub fast float %2683, %3032
  %3034 = fadd fast float %2902, %2693
  %3035 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  %3036 = fsub fast float %2949, %2692
  %3037 = fmul fast float %3036, %2998
  %3038 = fadd fast float %3037, %2692
  %3039 = fsub fast float %2935, %2691
  %3040 = fmul fast float %3039, %2998
  %3041 = fadd fast float %3040, %2691
  %3042 = call float @dx.op.dot3.f32(i32 55, float %2956, float %2957, float %2958, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3044 = extractvalue %dx.types.CBufRet.f32 %3043, 0
  %3045 = extractvalue %dx.types.CBufRet.f32 %3043, 1
  %3046 = fmul fast float %3045, %3042
  %3047 = fadd fast float %3046, %3044
  %3048 = call float @dx.op.unary.f32(i32 7, float %3047)  ; Saturate(value)
  %3049 = bitcast float %2744 to i32
  %3050 = and i32 %3049, 65535
  %3051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3050)  ; LegacyF16ToF32(value)
  %3052 = lshr i32 %3049, 16
  %3053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3052)  ; LegacyF16ToF32(value)
  %3054 = fcmp fast oge float %3051, 0.000000e+00
  %3055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3056 = extractvalue %dx.types.CBufRet.f32 %3055, 0
  %3057 = select i1 %3054, float %3051, float %3056
  %3058 = fadd fast float %3057, %3053
  %3059 = fsub fast float %3048, %2682
  %3060 = fmul fast float %3059, %2902
  %3061 = fadd fast float %3060, %2682
  %3062 = fmul fast float %3058, %2902
  %3063 = call float @dx.op.binary.f32(i32 35, float %2681, float %3062)  ; FMax(a,b)
  %3064 = and i32 %2756, 16
  %3065 = icmp eq i32 %3064, 0
  br i1 %3065, label %3088, label %3066

; <label>:3066                                    ; preds = %3005
  %3067 = bitcast float %2750 to i32
  %3068 = add i32 %2747, 0
  %3069 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3068, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3070 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3069, %dx.types.Handle %2915, float %2843, float %2846, float undef, float undef, i32 0, i32 0, i32 undef, float %2848, float %2850, float undef, float %2852, float %2854, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3071 = extractvalue %dx.types.ResRet.f32 %3070, 0
  %3072 = extractvalue %dx.types.ResRet.f32 %3070, 1
  %3073 = extractvalue %dx.types.ResRet.f32 %3070, 2
  %3074 = and i32 %3067, 65535
  %3075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3074)  ; LegacyF16ToF32(value)
  %3076 = fmul fast float %3071, %2741
  %3077 = fmul fast float %3072, %2742
  %3078 = fmul fast float %3073, %2743
  %3079 = and i32 %2756, 16384
  %3080 = icmp ne i32 %3079, 0
  %3081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3082 = extractvalue %dx.types.CBufRet.f32 %3081, 0
  %3083 = select i1 %3080, float %3082, float 1.000000e+00
  %3084 = fmul fast float %3083, %3075
  %3085 = fmul fast float %3076, %3084
  %3086 = fmul fast float %3077, %3084
  %3087 = fmul fast float %3078, %3084
  br label %3088

; <label>:3088                                    ; preds = %3066, %3005
  %3089 = phi float [ %3085, %3066 ], [ 0.000000e+00, %3005 ]
  %3090 = phi float [ %3086, %3066 ], [ 0.000000e+00, %3005 ]
  %3091 = phi float [ %3087, %3066 ], [ 0.000000e+00, %3005 ]
  %3092 = fsub fast float %3089, %2685
  %3093 = fsub fast float %3090, %2686
  %3094 = fsub fast float %3091, %2687
  %3095 = fmul fast float %3092, %2902
  %3096 = fmul fast float %3093, %2902
  %3097 = fmul fast float %3094, %2902
  %3098 = fadd fast float %3095, %2685
  %3099 = fadd fast float %3096, %2686
  %3100 = fadd fast float %3097, %2687
  br label %2805

; <label>:3101                                    ; preds = %2805
  br label %3102

; <label>:3102                                    ; preds = %3101, %2580
  %3103 = phi float [ 0.000000e+00, %2580 ], [ %2806, %3101 ]
  %3104 = phi float [ %2597, %2580 ], [ %2807, %3101 ]
  %3105 = phi float [ %2595, %2580 ], [ %2808, %3101 ]
  %3106 = phi float [ 0.000000e+00, %2580 ], [ %2809, %3101 ]
  %3107 = phi float [ 0.000000e+00, %2580 ], [ %2810, %3101 ]
  %3108 = phi float [ %2586, %2580 ], [ %2811, %3101 ]
  %3109 = phi float [ %2587, %2580 ], [ %2812, %3101 ]
  %3110 = phi float [ %2588, %2580 ], [ %2813, %3101 ]
  %3111 = phi float [ %2623, %2580 ], [ %2814, %3101 ]
  %3112 = phi float [ %2624, %2580 ], [ %2815, %3101 ]
  %3113 = phi float [ %2625, %2580 ], [ %2816, %3101 ]
  %3114 = phi float [ %2594, %2580 ], [ %2817, %3101 ]
  %3115 = phi float [ %2593, %2580 ], [ %2818, %3101 ]
  %3116 = phi float [ 0.000000e+00, %2580 ], [ %2819, %3101 ]
  %3117 = phi float [ %2592, %2580 ], [ %2820, %3101 ]
  %3118 = phi float [ %2589, %2580 ], [ %2821, %3101 ]
  %3119 = phi float [ %2590, %2580 ], [ %2822, %3101 ]
  %3120 = phi float [ %2591, %2580 ], [ %2823, %3101 ]
  %3121 = call float @dx.op.dot3.f32(i32 55, float %3111, float %3112, float %3113, float %3111, float %3112, float %3113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3122 = call float @dx.op.unary.f32(i32 25, float %3121)  ; Rsqrt(value)
  %3123 = fmul fast float %3122, %3111
  %3124 = fmul fast float %3122, %3112
  %3125 = fmul fast float %3122, %3113
  %3126 = fadd fast float %3116, %818
  %3127 = call float @dx.op.unary.f32(i32 7, float %3126)  ; Saturate(value)
  %3128 = call float @dx.op.dot3.f32(i32 55, float %3123, float %3124, float %3125, float %3123, float %3124, float %3125)  ; Dot3(ax,ay,az,bx,by,bz)
  %3129 = call float @dx.op.unary.f32(i32 25, float %3128)  ; Rsqrt(value)
  %3130 = fmul fast float %3129, %3123
  %3131 = fmul fast float %3129, %3124
  %3132 = fmul fast float %3129, %3125
  %3133 = fadd fast float %3117, 0xBFB99999A0000000
  %3134 = call float @dx.op.unary.f32(i32 7, float %3133)  ; Saturate(value)
  %3135 = fmul fast float %3134, 0x3FF1C71C80000000
  %3136 = call float @dx.op.binary.f32(i32 36, float %3117, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3137 = fsub fast float 1.000000e+00, %3135
  %3138 = call float @dx.op.unary.f32(i32 7, float %3137)  ; Saturate(value)
  %3139 = fmul fast float %3138, %3118
  %3140 = fmul fast float %3138, %3119
  %3141 = fmul fast float %3138, %3120
  %3142 = call float @dx.op.unary.f32(i32 7, float %3139)  ; Saturate(value)
  %3143 = call float @dx.op.unary.f32(i32 7, float %3140)  ; Saturate(value)
  %3144 = call float @dx.op.unary.f32(i32 7, float %3141)  ; Saturate(value)
  %3145 = fmul fast float %3135, %3118
  %3146 = fmul fast float %3135, %3119
  %3147 = fmul fast float %3135, %3120
  %3148 = fadd fast float %3145, %3136
  %3149 = fadd fast float %3146, %3136
  %3150 = fadd fast float %3147, %3136
  %3151 = call float @dx.op.unary.f32(i32 7, float %3148)  ; Saturate(value)
  %3152 = call float @dx.op.unary.f32(i32 7, float %3149)  ; Saturate(value)
  %3153 = call float @dx.op.unary.f32(i32 7, float %3150)  ; Saturate(value)
  %3154 = call float @dx.op.unary.f32(i32 7, float %3115)  ; Saturate(value)
  %3155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3156 = extractvalue %dx.types.CBufRet.i32 %3155, 3
  %3157 = and i32 %3156, 8
  %3158 = icmp ne i32 %3157, 0
  %3159 = call float @dx.op.binary.f32(i32 35, float %3142, float %3118)  ; FMax(a,b)
  %3160 = call float @dx.op.binary.f32(i32 35, float %3143, float %3118)  ; FMax(a,b)
  %3161 = call float @dx.op.binary.f32(i32 35, float %3144, float %3118)  ; FMax(a,b)
  %3162 = call float @dx.op.dot3.f32(i32 55, float %3142, float %3143, float %3144, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3163 = select i1 %196, float %3118, float %3142
  %3164 = select i1 %196, float %3162, float %3143
  %3165 = select i1 %196, float 1.000000e+00, float %3144
  %3166 = select i1 %3158, float %3159, float %3163
  %3167 = select i1 %3158, float %3160, float %3164
  %3168 = select i1 %3158, float %3161, float %3165
  %3169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3170 = extractvalue %dx.types.CBufRet.f32 %3169, 0
  %3171 = extractvalue %dx.types.CBufRet.f32 %3169, 1
  %3172 = extractvalue %dx.types.CBufRet.f32 %3169, 2
  %3173 = fadd fast float %3170, %125
  %3174 = fadd fast float %3171, %126
  %3175 = fadd fast float %3172, %127
  %3176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3177 = extractvalue %dx.types.CBufRet.f32 %3176, 0
  %3178 = extractvalue %dx.types.CBufRet.f32 %3176, 1
  %3179 = fsub fast float %3173, %3177
  %3180 = fsub fast float %3174, %3178
  %3181 = fmul fast float %3179, %3179
  %3182 = fmul fast float %3180, %3180
  %3183 = fadd fast float %3181, %3182
  %3184 = call float @dx.op.unary.f32(i32 24, float %3183)  ; Sqrt(value)
  %3185 = extractvalue %dx.types.CBufRet.f32 %3176, 2
  %3186 = fcmp fast olt float %3184, %3185
  br i1 %3186, label %3187, label %3254

; <label>:3187                                    ; preds = %3102
  %3188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3189 = extractvalue %dx.types.CBufRet.f32 %3188, 0
  %3190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3191 = extractvalue %dx.types.CBufRet.f32 %3190, 0
  %3192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3193 = extractvalue %dx.types.CBufRet.f32 %3192, 0
  %3194 = extractvalue %dx.types.CBufRet.f32 %3188, 1
  %3195 = extractvalue %dx.types.CBufRet.f32 %3190, 1
  %3196 = extractvalue %dx.types.CBufRet.f32 %3192, 1
  %3197 = extractvalue %dx.types.CBufRet.f32 %3188, 3
  %3198 = extractvalue %dx.types.CBufRet.f32 %3190, 3
  %3199 = extractvalue %dx.types.CBufRet.f32 %3192, 3
  %3200 = fadd fast float %3197, %3173
  %3201 = fadd fast float %3198, %3174
  %3202 = fadd fast float %3199, %3175
  %3203 = fmul fast float %3200, %3189
  %3204 = call float @dx.op.tertiary.f32(i32 46, float %3201, float %3191, float %3203)  ; FMad(a,b,c)
  %3205 = call float @dx.op.tertiary.f32(i32 46, float %3202, float %3193, float %3204)  ; FMad(a,b,c)
  %3206 = fmul fast float %3200, %3194
  %3207 = call float @dx.op.tertiary.f32(i32 46, float %3201, float %3195, float %3206)  ; FMad(a,b,c)
  %3208 = call float @dx.op.tertiary.f32(i32 46, float %3202, float %3196, float %3207)  ; FMad(a,b,c)
  %3209 = fsub fast float %3205, %3197
  %3210 = fsub fast float %3208, %3198
  %3211 = fsub fast float %3209, %3177
  %3212 = fadd fast float %3211, %3185
  %3213 = fsub fast float %3210, %3178
  %3214 = fadd fast float %3213, %3185
  %3215 = extractvalue %dx.types.CBufRet.f32 %3176, 3
  %3216 = fmul fast float %3212, %3215
  %3217 = fmul fast float %3214, %3215
  %3218 = call float @dx.op.unary.f32(i32 7, float %3216)  ; Saturate(value)
  %3219 = call float @dx.op.unary.f32(i32 7, float %3217)  ; Saturate(value)
  %3220 = fsub fast float 1.000000e+00, %3218
  %3221 = fsub fast float 1.000000e+00, %3219
  %3222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3223 = extractvalue %dx.types.ResRet.f32 %3222, 0
  %3224 = fcmp fast ugt float %3223, 0.000000e+00
  br i1 %3224, label %3225, label %3528

; <label>:3225                                    ; preds = %3187
  %3226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3227 = extractvalue %dx.types.CBufRet.f32 %3226, 2
  %3228 = fmul fast float %3227, %3223
  %3229 = extractvalue %dx.types.CBufRet.f32 %3226, 3
  %3230 = fadd fast float %3229, %3228
  %3231 = extractvalue %dx.types.CBufRet.f32 %3192, 2
  %3232 = fadd fast float %3230, %3199
  %3233 = fmul fast float %3205, %3193
  %3234 = call float @dx.op.tertiary.f32(i32 46, float %3208, float %3196, float %3233)  ; FMad(a,b,c)
  %3235 = call float @dx.op.tertiary.f32(i32 46, float %3232, float %3231, float %3234)  ; FMad(a,b,c)
  %3236 = fsub fast float %3235, %3199
  %3237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3238 = extractvalue %dx.types.CBufRet.f32 %3237, 2
  %3239 = fsub fast float %3236, %3238
  %3240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3241 = extractvalue %dx.types.ResRet.f32 %3240, 0
  %3242 = extractvalue %dx.types.ResRet.f32 %3240, 1
  %3243 = extractvalue %dx.types.ResRet.f32 %3240, 2
  %3244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3245 = extractvalue %dx.types.ResRet.f32 %3244, 0
  %3246 = extractvalue %dx.types.ResRet.f32 %3244, 1
  %3247 = extractvalue %dx.types.ResRet.f32 %3244, 2
  %3248 = fadd fast float %3245, %3241
  %3249 = fmul fast float %3248, 0x3F847AE140000000
  %3250 = fadd fast float %3246, %3242
  %3251 = fmul fast float %3250, 0x3F847AE140000000
  %3252 = fadd fast float %3247, %3243
  %3253 = fmul fast float %3252, 0x3F847AE140000000
  br label %3528

; <label>:3254                                    ; preds = %3102
  %3255 = and i32 %172, 1
  %3256 = icmp eq i32 %3255, 0
  br i1 %3256, label %3528, label %3257

; <label>:3257                                    ; preds = %3254
  %3258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3259 = extractvalue %dx.types.CBufRet.f32 %3258, 0
  %3260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3261 = extractvalue %dx.types.CBufRet.f32 %3260, 0
  %3262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3263 = extractvalue %dx.types.CBufRet.f32 %3262, 0
  %3264 = extractvalue %dx.types.CBufRet.f32 %3258, 1
  %3265 = extractvalue %dx.types.CBufRet.f32 %3260, 1
  %3266 = extractvalue %dx.types.CBufRet.f32 %3262, 1
  %3267 = extractvalue %dx.types.CBufRet.f32 %3258, 3
  %3268 = extractvalue %dx.types.CBufRet.f32 %3260, 3
  %3269 = extractvalue %dx.types.CBufRet.f32 %3262, 3
  %3270 = fadd fast float %3267, %3173
  %3271 = fadd fast float %3268, %3174
  %3272 = fadd fast float %3269, %3175
  %3273 = fmul fast float %3270, %3259
  %3274 = call float @dx.op.tertiary.f32(i32 46, float %3271, float %3261, float %3273)  ; FMad(a,b,c)
  %3275 = call float @dx.op.tertiary.f32(i32 46, float %3272, float %3263, float %3274)  ; FMad(a,b,c)
  %3276 = fmul fast float %3270, %3264
  %3277 = call float @dx.op.tertiary.f32(i32 46, float %3271, float %3265, float %3276)  ; FMad(a,b,c)
  %3278 = call float @dx.op.tertiary.f32(i32 46, float %3272, float %3266, float %3277)  ; FMad(a,b,c)
  %3279 = fsub fast float %3275, %3267
  %3280 = fsub fast float %3278, %3268
  %3281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3282 = extractvalue %dx.types.CBufRet.f32 %3281, 0
  %3283 = extractvalue %dx.types.CBufRet.f32 %3281, 1
  %3284 = extractvalue %dx.types.CBufRet.f32 %3281, 2
  %3285 = extractvalue %dx.types.CBufRet.f32 %3281, 3
  %3286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3287 = extractvalue %dx.types.CBufRet.f32 %3286, 3
  %3288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3289 = extractvalue %dx.types.CBufRet.i32 %3288, 0
  %3290 = extractvalue %dx.types.CBufRet.i32 %3288, 1
  %3291 = udiv i32 %3290, %3289
  %3292 = fsub fast float %3279, %3282
  %3293 = fsub fast float %3280, %3283
  %3294 = call float @dx.op.binary.f32(i32 35, float %3292, float 0.000000e+00)  ; FMax(a,b)
  %3295 = call float @dx.op.binary.f32(i32 35, float %3293, float 0.000000e+00)  ; FMax(a,b)
  %3296 = call float @dx.op.binary.f32(i32 36, float %3294, float %3284)  ; FMin(a,b)
  %3297 = call float @dx.op.binary.f32(i32 36, float %3295, float %3285)  ; FMin(a,b)
  %3298 = add i32 %3289, -1
  %3299 = add i32 %3291, -1
  %3300 = fmul fast float %3296, %3287
  %3301 = fmul fast float %3297, %3287
  %3302 = fptoui float %3300 to i32
  %3303 = fptoui float %3301 to i32
  %3304 = call i32 @dx.op.binary.i32(i32 40, i32 %3302, i32 %3298)  ; UMin(a,b)
  %3305 = call i32 @dx.op.binary.i32(i32 40, i32 %3303, i32 %3299)  ; UMin(a,b)
  %3306 = mul i32 %3305, %3289
  %3307 = add i32 %3306, %3304
  %3308 = shl i32 %3307, 2
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = icmp eq i32 %3310, -1
  br i1 %3311, label %3528, label %3312

; <label>:3312                                    ; preds = %3257
  %3313 = mul i32 %3310, 148
  %3314 = add i32 %3313, 4
  %3315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3316 = extractvalue %dx.types.ResRet.f32 %3315, 0
  %3317 = add i32 %3313, 8
  %3318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3317, i32 undef)  ; BufferLoad(srv,index,wot)
  %3319 = extractvalue %dx.types.ResRet.f32 %3318, 0
  %3320 = add i32 %3313, 36
  %3321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3320, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3323 = add i32 %3313, 60
  %3324 = add i32 %3313, 92
  %3325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.i32 %3325, 0
  %3327 = add i32 %3313, 116
  %3328 = fsub fast float %3279, %3316
  %3329 = fsub fast float %3280, %3319
  %3330 = fmul fast float %3287, %3328
  %3331 = fmul fast float %3287, %3329
  %3332 = call float @dx.op.unary.f32(i32 7, float %3330)  ; Saturate(value)
  %3333 = call float @dx.op.unary.f32(i32 7, float %3331)  ; Saturate(value)
  %3334 = fsub fast float 1.000000e+00, %3333
  %3335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3336 = extractvalue %dx.types.CBufRet.f32 %3335, 2
  %3337 = call float @dx.op.unary.f32(i32 83, float %3332)  ; DerivCoarseX(value)
  %3338 = call float @dx.op.unary.f32(i32 83, float %3334)  ; DerivCoarseX(value)
  %3339 = call float @dx.op.unary.f32(i32 84, float %3332)  ; DerivCoarseY(value)
  %3340 = call float @dx.op.unary.f32(i32 84, float %3334)  ; DerivCoarseY(value)
  %3341 = fmul fast float %3337, %3336
  %3342 = fmul fast float %3338, %3336
  %3343 = fmul fast float %3339, %3336
  %3344 = fmul fast float %3340, %3336
  %3345 = call float @dx.op.dot2.f32(i32 54, float %3343, float %3344, float %3343, float %3344)  ; Dot2(ax,ay,bx,by)
  %3346 = call float @dx.op.dot2.f32(i32 54, float %3341, float %3342, float %3341, float %3342)  ; Dot2(ax,ay,bx,by)
  %3347 = call float @dx.op.binary.f32(i32 35, float %3346, float %3345)  ; FMax(a,b)
  %3348 = call float @dx.op.unary.f32(i32 23, float %3347)  ; Log(value)
  %3349 = fmul fast float %3348, 5.000000e-01
  %3350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3351 = extractvalue %dx.types.CBufRet.f32 %3350, 1
  %3352 = fadd fast float %3351, %3349
  %3353 = call float @dx.op.binary.f32(i32 35, float %3352, float 0.000000e+00)  ; FMax(a,b)
  %3354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3355 = extractvalue %dx.types.CBufRet.f32 %3354, 3
  %3356 = fadd fast float %3355, %3353
  %3357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3358 = extractvalue %dx.types.CBufRet.f32 %3357, 3
  %3359 = fadd fast float %3356, %3358
  %3360 = add i32 %3326, 0
  %3361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3360, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3362 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3361, i32 0)  ; GetDimensions(handle,mipLevel)
  %3363 = extractvalue %dx.types.Dimensions %3362, 0
  %3364 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3363)  ; FirstbitLo(value)
  %3365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3366 = extractvalue %dx.types.CBufRet.i32 %3365, 1
  %3367 = sub nsw i32 %3366, %3364
  %3368 = sitofp i32 %3367 to float
  %3369 = fsub fast float %3359, %3368
  %3370 = call float @dx.op.binary.f32(i32 35, float %3369, float 0.000000e+00)  ; FMax(a,b)
  %3371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3361, %dx.types.Handle %37, float %3332, float %3334, float %3322, float undef, i32 0, i32 0, i32 undef, float %3370)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3372 = extractvalue %dx.types.ResRet.f32 %3371, 0
  %3373 = fcmp ule float %3372, 0x3FE0101020000000
  %3374 = extractvalue %dx.types.CBufRet.i32 %3365, 0
  %3375 = and i32 %3374, 128
  %3376 = icmp ne i32 %3375, 0
  %3377 = and i1 %3373, %3376
  br i1 %3377, label %3528, label %3378

; <label>:3378                                    ; preds = %3312
  %3379 = add i32 %3313, 20
  %3380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.f32 %3380, 0
  %3382 = add i32 %3313, 24
  %3383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.f32 %3383, 0
  %3385 = add i32 %3313, 40
  %3386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.f32 %3386, 0
  %3388 = add i32 %3313, 96
  %3389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.i32 %3389, 0
  %3391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3392 = extractvalue %dx.types.CBufRet.f32 %3391, 2
  %3393 = fmul fast float %3392, %3332
  %3394 = fmul fast float %3392, %3334
  %3395 = extractvalue %dx.types.CBufRet.f32 %3391, 3
  %3396 = fadd fast float %3393, %3395
  %3397 = fadd fast float %3394, %3395
  %3398 = add i32 %3390, 0
  %3399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3398, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3400 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3399, i32 0)  ; GetDimensions(handle,mipLevel)
  %3401 = extractvalue %dx.types.Dimensions %3400, 0
  %3402 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3401)  ; FirstbitLo(value)
  %3403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3404 = extractvalue %dx.types.CBufRet.i32 %3403, 1
  %3405 = sub nsw i32 %3404, %3402
  %3406 = sitofp i32 %3405 to float
  %3407 = fsub fast float %3356, %3406
  %3408 = call float @dx.op.binary.f32(i32 35, float %3407, float 0.000000e+00)  ; FMax(a,b)
  %3409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3399, %dx.types.Handle %37, float %3396, float %3397, float %3387, float undef, i32 0, i32 0, i32 undef, float %3408)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3410 = extractvalue %dx.types.ResRet.f32 %3409, 0
  %3411 = fmul fast float %3410, %3381
  %3412 = fadd fast float %3411, %3384
  %3413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3414 = extractvalue %dx.types.CBufRet.f32 %3413, 0
  %3415 = extractvalue %dx.types.CBufRet.f32 %3413, 1
  %3416 = extractvalue %dx.types.CBufRet.f32 %3413, 2
  %3417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3418 = extractvalue %dx.types.CBufRet.f32 %3417, 3
  %3419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3420 = extractvalue %dx.types.CBufRet.f32 %3419, 3
  %3421 = extractvalue %dx.types.CBufRet.f32 %3413, 3
  %3422 = fadd fast float %3418, %3279
  %3423 = fadd fast float %3420, %3280
  %3424 = fadd fast float %3412, %3421
  %3425 = fmul fast float %3422, %3414
  %3426 = call float @dx.op.tertiary.f32(i32 46, float %3423, float %3415, float %3425)  ; FMad(a,b,c)
  %3427 = call float @dx.op.tertiary.f32(i32 46, float %3424, float %3416, float %3426)  ; FMad(a,b,c)
  %3428 = fsub fast float %3427, %3421
  %3429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3430 = extractvalue %dx.types.CBufRet.f32 %3429, 2
  %3431 = fsub fast float %3428, %3430
  %3432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3433 = extractvalue %dx.types.CBufRet.i32 %3432, 0
  %3434 = call i32 @dx.op.binary.i32(i32 40, i32 %3310, i32 %3433)  ; UMin(a,b)
  %3435 = mul i32 %3434, 36
  %3436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3435, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.i32 %3436, 0
  %3438 = add i32 %3435, 4
  %3439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3440 = extractvalue %dx.types.CBufRet.f32 %3439, 0
  %3441 = fmul fast float %3440, %3332
  %3442 = fmul fast float %3440, %3334
  %3443 = extractvalue %dx.types.CBufRet.f32 %3439, 1
  %3444 = fadd fast float %3441, %3443
  %3445 = fadd fast float %3442, %3443
  %3446 = icmp eq i32 %3437, 0
  br i1 %3446, label %3515, label %3447

; <label>:3447                                    ; preds = %3378
  br label %3448

; <label>:3448                                    ; preds = %3505, %3447
  %3449 = phi float [ %3506, %3505 ], [ 0.000000e+00, %3447 ]
  %3450 = phi float [ %3507, %3505 ], [ 0.000000e+00, %3447 ]
  %3451 = phi float [ %3508, %3505 ], [ 0.000000e+00, %3447 ]
  %3452 = phi float [ %3509, %3505 ], [ 0.000000e+00, %3447 ]
  %3453 = phi float [ %3510, %3505 ], [ 0.000000e+00, %3447 ]
  %3454 = phi float [ %3511, %3505 ], [ 0.000000e+00, %3447 ]
  %3455 = phi i32 [ %3512, %3505 ], [ 0, %3447 ]
  %3456 = shl i32 %3455, 2
  %3457 = add i32 %3323, %3456
  %3458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3457, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.f32 %3458, 0
  %3460 = add i32 %3327, %3456
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = add i32 %3462, 0
  %3464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3463, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3465 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3464, i32 0)  ; GetDimensions(handle,mipLevel)
  %3466 = extractvalue %dx.types.Dimensions %3465, 0
  %3467 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3466)  ; FirstbitLo(value)
  %3468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3469 = extractvalue %dx.types.CBufRet.i32 %3468, 1
  %3470 = sub nsw i32 %3469, %3467
  %3471 = sitofp i32 %3470 to float
  %3472 = fsub fast float %3356, %3471
  %3473 = call float @dx.op.binary.f32(i32 35, float %3472, float 0.000000e+00)  ; FMax(a,b)
  %3474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3464, %dx.types.Handle %37, float %3444, float %3445, float %3459, float undef, i32 0, i32 0, i32 undef, float %3473)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3475 = extractvalue %dx.types.ResRet.f32 %3474, 0
  %3476 = fcmp fast ogt float %3475, 0.000000e+00
  br i1 %3476, label %3477, label %3505

; <label>:3477                                    ; preds = %3448
  %3478 = add i32 %3438, %3456
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = and i32 %3480, 32767
  %3482 = mul nuw nsw i32 %3481, 928
  %3483 = add nuw nsw i32 %3482, 48
  %3484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.f32 %3484, 0
  %3486 = extractvalue %dx.types.ResRet.f32 %3484, 1
  %3487 = extractvalue %dx.types.ResRet.f32 %3484, 2
  %3488 = add nuw nsw i32 %3482, 60
  %3489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3490 = extractvalue %dx.types.ResRet.f32 %3489, 0
  %3491 = extractvalue %dx.types.ResRet.f32 %3489, 1
  %3492 = extractvalue %dx.types.ResRet.f32 %3489, 2
  %3493 = fmul fast float %3485, %3475
  %3494 = fmul fast float %3486, %3475
  %3495 = fmul fast float %3487, %3475
  %3496 = fadd fast float %3493, %3449
  %3497 = fadd fast float %3494, %3450
  %3498 = fadd fast float %3495, %3451
  %3499 = fmul fast float %3490, %3475
  %3500 = fmul fast float %3491, %3475
  %3501 = fmul fast float %3492, %3475
  %3502 = fadd fast float %3499, %3452
  %3503 = fadd fast float %3500, %3453
  %3504 = fadd fast float %3501, %3454
  br label %3505

; <label>:3505                                    ; preds = %3477, %3448
  %3506 = phi float [ %3496, %3477 ], [ %3449, %3448 ]
  %3507 = phi float [ %3497, %3477 ], [ %3450, %3448 ]
  %3508 = phi float [ %3498, %3477 ], [ %3451, %3448 ]
  %3509 = phi float [ %3502, %3477 ], [ %3452, %3448 ]
  %3510 = phi float [ %3503, %3477 ], [ %3453, %3448 ]
  %3511 = phi float [ %3504, %3477 ], [ %3454, %3448 ]
  %3512 = add nuw i32 %3455, 1
  %3513 = icmp eq i32 %3512, %3437
  br i1 %3513, label %3514, label %3448

; <label>:3514                                    ; preds = %3505
  br label %3515

; <label>:3515                                    ; preds = %3514, %3378
  %3516 = phi float [ 0.000000e+00, %3378 ], [ %3506, %3514 ]
  %3517 = phi float [ 0.000000e+00, %3378 ], [ %3507, %3514 ]
  %3518 = phi float [ 0.000000e+00, %3378 ], [ %3508, %3514 ]
  %3519 = phi float [ 0.000000e+00, %3378 ], [ %3509, %3514 ]
  %3520 = phi float [ 0.000000e+00, %3378 ], [ %3510, %3514 ]
  %3521 = phi float [ 0.000000e+00, %3378 ], [ %3511, %3514 ]
  %3522 = fadd fast float %3519, %3516
  %3523 = fmul fast float %3522, 0x3F847AE140000000
  %3524 = fadd fast float %3520, %3517
  %3525 = fmul fast float %3524, 0x3F847AE140000000
  %3526 = fadd fast float %3521, %3518
  %3527 = fmul fast float %3526, 0x3F847AE140000000
  br label %3528

; <label>:3528                                    ; preds = %3515, %3312, %3257, %3254, %3225, %3187
  %3529 = phi float [ %3239, %3225 ], [ -1.310720e+05, %3187 ], [ %3431, %3515 ], [ -1.310720e+05, %3257 ], [ -1.310720e+05, %3312 ], [ -1.310720e+05, %3254 ]
  %3530 = phi float [ %3249, %3225 ], [ 0.000000e+00, %3187 ], [ %3523, %3515 ], [ 0.000000e+00, %3257 ], [ 0.000000e+00, %3312 ], [ 0.000000e+00, %3254 ]
  %3531 = phi float [ %3251, %3225 ], [ 0.000000e+00, %3187 ], [ %3525, %3515 ], [ 0.000000e+00, %3257 ], [ 0.000000e+00, %3312 ], [ 0.000000e+00, %3254 ]
  %3532 = phi float [ %3253, %3225 ], [ 0.000000e+00, %3187 ], [ %3527, %3515 ], [ 0.000000e+00, %3257 ], [ 0.000000e+00, %3312 ], [ 0.000000e+00, %3254 ]
  %3533 = phi i1 [ true, %3225 ], [ false, %3187 ], [ true, %3515 ], [ false, %3257 ], [ false, %3312 ], [ false, %3254 ]
  %3534 = and i32 %172, 3
  %3535 = icmp eq i32 %3534, 1
  %3536 = select i1 %3535, float 1.000000e+00, float 0.000000e+00
  %3537 = fsub fast float %3529, %127
  %3538 = call float @dx.op.unary.f32(i32 7, float %3537)  ; Saturate(value)
  %3539 = select i1 %3533, float %3538, float 1.000000e+00
  %3540 = fmul fast float %3539, %3536
  %3541 = icmp eq i32 %3534, 3
  %3542 = select i1 %3541, float 1.000000e+00, float %3540
  %3543 = call float @dx.op.binary.f32(i32 35, float %3103, float %3542)  ; FMax(a,b)
  %3544 = call float @dx.op.unary.f32(i32 7, float %3543)  ; Saturate(value)
  %3545 = fcmp fast une float %3544, 0.000000e+00
  %3546 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %3547 = call float @dx.op.unary.f32(i32 25, float %3546)  ; Rsqrt(value)
  br i1 %3545, label %3555, label %3548

; <label>:3548                                    ; preds = %3528
  %3549 = fmul fast float %3547, %125
  %3550 = fmul fast float %3547, %126
  %3551 = fmul fast float %3547, %127
  %3552 = fsub fast float -0.000000e+00, %3549
  %3553 = fsub fast float -0.000000e+00, %3550
  %3554 = fsub fast float -0.000000e+00, %3551
  br label %3723

; <label>:3555                                    ; preds = %3528
  %3556 = fmul fast float %125, %3547
  %3557 = fsub fast float -0.000000e+00, %3556
  %3558 = fmul fast float %126, %3547
  %3559 = fsub fast float -0.000000e+00, %3558
  %3560 = fmul fast float %127, %3547
  %3561 = fsub fast float -0.000000e+00, %3560
  %3562 = call float @dx.op.dot3.f32(i32 55, float %3557, float %3559, float %3561, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %3563 = fmul fast float %3544, 2.500000e+00
  %3564 = call float @dx.op.unary.f32(i32 7, float %3563)  ; Saturate(value)
  %3565 = fmul fast float %3544, 0x4013FFFFE0000000
  %3566 = fadd fast float %3565, 0xBFFFFFFFE0000000
  %3567 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3568 = fmul fast float %3544, 0x4004000020000000
  %3569 = fadd fast float %3568, 0xBFF8000040000000
  %3570 = call float @dx.op.unary.f32(i32 7, float %3569)  ; Saturate(value)
  %3571 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3572 = fmul fast float %3133, 1.000000e+01
  %3573 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  %3574 = fmul fast float %3573, 2.000000e+00
  %3575 = fsub fast float 3.000000e+00, %3574
  %3576 = fmul fast float %3573, %3573
  %3577 = fmul fast float %3576, %3575
  %3578 = fsub fast float 1.000000e+00, %3577
  %3579 = fsub fast float 0x3FE3333340000000, %3154
  %3580 = fmul fast float %3579, 0x400AAAAAA0000000
  %3581 = call float @dx.op.unary.f32(i32 7, float %3580)  ; Saturate(value)
  %3582 = fmul fast float %3578, %3581
  %3583 = fmul fast float %3166, 0x3FEA2B8620000000
  %3584 = fmul fast float %3167, 0x3FEA2B8620000000
  %3585 = fmul fast float %3168, 0x3FEA2B8620000000
  %3586 = fadd fast float %3583, 0x3FC81DFBA0000000
  %3587 = fmul fast float %3586, %3166
  %3588 = fadd fast float %3587, 0x3F910E6020000000
  %3589 = fadd fast float %3584, 0x3FC81DFBA0000000
  %3590 = fmul fast float %3589, %3167
  %3591 = fadd fast float %3590, 0x3F910E6020000000
  %3592 = fadd fast float %3585, 0x3FC81DFBA0000000
  %3593 = fmul fast float %3592, %3168
  %3594 = fadd fast float %3593, 0x3F910E6020000000
  %3595 = call float @dx.op.unary.f32(i32 7, float %3588)  ; Saturate(value)
  %3596 = call float @dx.op.unary.f32(i32 7, float %3591)  ; Saturate(value)
  %3597 = call float @dx.op.unary.f32(i32 7, float %3594)  ; Saturate(value)
  %3598 = fsub fast float %3595, %3166
  %3599 = fsub fast float %3596, %3167
  %3600 = fsub fast float %3597, %3168
  %3601 = fmul fast float %3598, %3571
  %3602 = fmul fast float %3601, %3582
  %3603 = fmul fast float %3599, %3571
  %3604 = fmul fast float %3603, %3582
  %3605 = fmul fast float %3600, %3571
  %3606 = fmul fast float %3605, %3582
  %3607 = fadd fast float %3602, %3166
  %3608 = fadd fast float %3604, %3167
  %3609 = fadd fast float %3606, %3168
  %3610 = fmul fast float %3114, %3114
  %3611 = fmul fast float %3610, %3610
  %3612 = fadd fast float %3567, 1.000000e+00
  %3613 = fsub fast float %3612, %3582
  %3614 = call float @dx.op.unary.f32(i32 7, float %3613)  ; Saturate(value)
  %3615 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3616 = call float @dx.op.unary.f32(i32 7, float %3615)  ; Saturate(value)
  %3617 = fsub fast float 1.000000e+00, %3611
  %3618 = call float @dx.op.binary.f32(i32 36, float %3614, float %3617)  ; FMin(a,b)
  %3619 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  %3620 = call float @dx.op.binary.f32(i32 35, float %3618, float %3619)  ; FMax(a,b)
  %3621 = fadd fast float %3616, 0xBFE4CCCCC0000000
  %3622 = fmul fast float %3621, 0x4006DB6DA0000000
  %3623 = call float @dx.op.unary.f32(i32 7, float %3622)  ; Saturate(value)
  %3624 = fmul fast float %3623, 2.000000e+00
  %3625 = fsub fast float 3.000000e+00, %3624
  %3626 = bitcast float %3151 to i32
  %3627 = ashr i32 %3626, 1
  %3628 = add nsw i32 %3627, 532487669
  %3629 = bitcast i32 %3628 to float
  %3630 = fsub fast float 1.000000e+00, %3629
  %3631 = bitcast float %3630 to i32
  %3632 = sub nsw i32 2129859010, %3631
  %3633 = bitcast i32 %3632 to float
  %3634 = fmul fast float %3633, 2.000000e+00
  %3635 = bitcast float %3152 to i32
  %3636 = ashr i32 %3635, 1
  %3637 = add nsw i32 %3636, 532487669
  %3638 = bitcast i32 %3637 to float
  %3639 = fsub fast float 1.000000e+00, %3638
  %3640 = bitcast float %3639 to i32
  %3641 = sub nsw i32 2129859010, %3640
  %3642 = bitcast i32 %3641 to float
  %3643 = fmul fast float %3642, 2.000000e+00
  %3644 = bitcast float %3153 to i32
  %3645 = ashr i32 %3644, 1
  %3646 = add nsw i32 %3645, 532487669
  %3647 = bitcast i32 %3646 to float
  %3648 = fsub fast float 1.000000e+00, %3647
  %3649 = bitcast float %3648 to i32
  %3650 = sub nsw i32 2129859010, %3649
  %3651 = bitcast i32 %3650 to float
  %3652 = fmul fast float %3651, 2.000000e+00
  %3653 = fsub fast float 0x4002A9FBE0000000, %3634
  %3654 = fadd fast float %3634, 0x3FD54FDF00000000
  %3655 = bitcast float %3654 to i32
  %3656 = sub nsw i32 2129859010, %3655
  %3657 = bitcast i32 %3656 to float
  %3658 = fmul fast float %3657, %3653
  %3659 = fmul fast float %3658, %3658
  %3660 = fsub fast float 0x4002A9FBE0000000, %3643
  %3661 = fadd fast float %3643, 0x3FD54FDF00000000
  %3662 = bitcast float %3661 to i32
  %3663 = sub nsw i32 2129859010, %3662
  %3664 = bitcast i32 %3663 to float
  %3665 = fmul fast float %3664, %3660
  %3666 = fmul fast float %3665, %3665
  %3667 = fsub fast float 0x4002A9FBE0000000, %3652
  %3668 = fadd fast float %3652, 0x3FD54FDF00000000
  %3669 = bitcast float %3668 to i32
  %3670 = sub nsw i32 2129859010, %3669
  %3671 = bitcast i32 %3670 to float
  %3672 = fmul fast float %3671, %3667
  %3673 = fmul fast float %3672, %3672
  %3674 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3659)  ; FMax(a,b)
  %3675 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3666)  ; FMax(a,b)
  %3676 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3673)  ; FMax(a,b)
  %3677 = fsub fast float 1.000000e+00, %3562
  %3678 = fadd fast float %3677, %3578
  %3679 = call float @dx.op.unary.f32(i32 7, float %3678)  ; Saturate(value)
  %3680 = fsub fast float 1.000000e+00, %3542
  %3681 = fmul fast float %3620, %3680
  %3682 = fmul fast float %3623, %3623
  %3683 = fmul fast float %3682, %3681
  %3684 = fmul fast float %3683, %3625
  %3685 = fmul fast float %3680, 0xBFE99999A0000000
  %3686 = fmul fast float %3685, %3571
  %3687 = fmul fast float %3686, %3582
  %3688 = fadd fast float %3687, 1.000000e+00
  %3689 = fadd fast float %3154, -1.000000e+00
  %3690 = fmul fast float %3688, %3689
  %3691 = fadd fast float %3690, 1.000000e+00
  %3692 = fsub fast float %3674, %3151
  %3693 = fsub fast float %3675, %3152
  %3694 = fsub fast float %3676, %3153
  %3695 = fmul fast float %3684, %3692
  %3696 = fmul fast float %3684, %3693
  %3697 = fmul fast float %3684, %3694
  %3698 = fadd fast float %3695, %3151
  %3699 = fadd fast float %3696, %3152
  %3700 = fadd fast float %3697, %3153
  %3701 = fsub fast float %57, %3130
  %3702 = fsub fast float %58, %3131
  %3703 = fsub fast float %59, %3132
  %3704 = fmul fast float %3684, %3701
  %3705 = fmul fast float %3684, %3702
  %3706 = fmul fast float %3684, %3703
  %3707 = fadd fast float %3704, %3130
  %3708 = fadd fast float %3705, %3131
  %3709 = fadd fast float %3706, %3132
  %3710 = fmul fast float %3684, %3679
  %3711 = call float @dx.op.unary.f32(i32 7, float %3691)  ; Saturate(value)
  %3712 = fsub fast float 1.000000e+00, %3711
  %3713 = fmul fast float %3710, %3712
  %3714 = fadd fast float %3713, %3711
  %3715 = fsub fast float 1.000000e+00, %3114
  %3716 = fmul fast float %3684, %3715
  %3717 = fadd fast float %3716, %3114
  %3718 = call float @dx.op.dot3.f32(i32 55, float %3707, float %3708, float %3709, float %3707, float %3708, float %3709)  ; Dot3(ax,ay,az,bx,by,bz)
  %3719 = call float @dx.op.unary.f32(i32 25, float %3718)  ; Rsqrt(value)
  %3720 = fmul fast float %3707, %3719
  %3721 = fmul fast float %3708, %3719
  %3722 = fmul fast float %3709, %3719
  br label %3723

; <label>:3723                                    ; preds = %3555, %3548
  %3724 = phi float [ %3554, %3548 ], [ %3561, %3555 ]
  %3725 = phi float [ %3553, %3548 ], [ %3559, %3555 ]
  %3726 = phi float [ %3552, %3548 ], [ %3557, %3555 ]
  %3727 = phi float [ %3551, %3548 ], [ %3560, %3555 ]
  %3728 = phi float [ %3550, %3548 ], [ %3558, %3555 ]
  %3729 = phi float [ %3549, %3548 ], [ %3556, %3555 ]
  %3730 = phi float [ %3166, %3548 ], [ %3607, %3555 ]
  %3731 = phi float [ %3167, %3548 ], [ %3608, %3555 ]
  %3732 = phi float [ %3168, %3548 ], [ %3609, %3555 ]
  %3733 = phi float [ %3130, %3548 ], [ %3720, %3555 ]
  %3734 = phi float [ %3131, %3548 ], [ %3721, %3555 ]
  %3735 = phi float [ %3132, %3548 ], [ %3722, %3555 ]
  %3736 = phi float [ %3151, %3548 ], [ %3698, %3555 ]
  %3737 = phi float [ %3152, %3548 ], [ %3699, %3555 ]
  %3738 = phi float [ %3153, %3548 ], [ %3700, %3555 ]
  %3739 = phi float [ %3154, %3548 ], [ %3714, %3555 ]
  %3740 = phi float [ %3114, %3548 ], [ %3717, %3555 ]
  %3741 = select i1 %196, float 0.000000e+00, float %3738
  %3742 = call float @dx.op.dot3.f32(i32 55, float %3733, float %3734, float %3735, float %3726, float %3725, float %3724)  ; Dot3(ax,ay,az,bx,by,bz)
  %3743 = call float @dx.op.unary.f32(i32 7, float %3742)  ; Saturate(value)
  %3744 = call float @dx.op.dot3.f32(i32 55, float %3729, float %3728, float %3727, float %3733, float %3734, float %3735)  ; Dot3(ax,ay,az,bx,by,bz)
  %3745 = fmul fast float %3744, 2.000000e+00
  %3746 = fmul fast float %3745, %3733
  %3747 = fmul fast float %3745, %3734
  %3748 = fmul fast float %3745, %3735
  %3749 = fsub fast float %3729, %3746
  %3750 = fsub fast float %3728, %3747
  %3751 = fsub fast float %3727, %3748
  %3752 = call float @dx.op.binary.f32(i32 36, float %3740, float 1.000000e+00)  ; FMin(a,b)
  %3753 = fsub fast float 1.000000e+00, %3740
  %3754 = bitcast float %3753 to i32
  %3755 = sub nsw i32 2129859010, %3754
  %3756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.f32 %3756, 0
  %3758 = extractvalue %dx.types.CBufRet.f32 %3756, 1
  %3759 = fadd fast float %3757, %125
  %3760 = fadd fast float %3758, %126
  %3761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.i32 %3761, 0
  %3763 = icmp eq i32 %3762, 1
  br i1 %3763, label %3764, label %3799

; <label>:3764                                    ; preds = %3723
  %3765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3766 = extractvalue %dx.types.CBufRet.f32 %3765, 0
  %3767 = extractvalue %dx.types.CBufRet.f32 %3765, 1
  %3768 = fsub fast float %3759, %3766
  %3769 = fsub fast float %3760, %3767
  %3770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3771 = extractvalue %dx.types.CBufRet.f32 %3770, 0
  %3772 = extractvalue %dx.types.CBufRet.f32 %3770, 1
  %3773 = fmul fast float %3768, %3771
  %3774 = fmul fast float %3769, %3772
  %3775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %3773, float %3774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3776 = extractvalue %dx.types.ResRet.f32 %3775, 0
  %3777 = fcmp fast ogt float %3776, 0.000000e+00
  %3778 = extractvalue %dx.types.CBufRet.i32 %3761, 3
  %3779 = icmp ne i32 %3778, 0
  %3780 = and i1 %3777, %3779
  br i1 %3780, label %3781, label %3799, !dx.controlflow.hints !85

; <label>:3781                                    ; preds = %3764
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 0
  %3784 = extractvalue %dx.types.CBufRet.f32 %3782, 1
  %3785 = fsub fast float %3759, %3783
  %3786 = fsub fast float %3760, %3784
  %3787 = fmul fast float %3785, %3785
  %3788 = fmul fast float %3786, %3786
  %3789 = fadd fast float %3787, %3788
  %3790 = uitofp i32 %3778 to float
  %3791 = fmul fast float %3790, %3790
  %3792 = fcmp fast ogt float %3789, %3791
  br i1 %3792, label %3799, label %3793

; <label>:3793                                    ; preds = %3781
  %3794 = call float @dx.op.unary.f32(i32 24, float %3789)  ; Sqrt(value)
  %3795 = fsub fast float %3790, %3794
  %3796 = fmul fast float %3795, 0x3F75555560000000
  %3797 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3798 = call float @dx.op.binary.f32(i32 36, float %3797, float %3776)  ; FMin(a,b)
  br label %3799

; <label>:3799                                    ; preds = %3793, %3781, %3764, %3723
  %3800 = phi float [ 1.000000e+00, %3723 ], [ %3798, %3793 ], [ %3776, %3764 ], [ 0.000000e+00, %3781 ]
  %3801 = fcmp fast ogt float %3800, 0.000000e+00
  br i1 %3801, label %3802, label %3900, !dx.controlflow.hints !86

; <label>:3802                                    ; preds = %3799
  %3803 = fadd fast float %156, 5.000000e-01
  %3804 = call float @dx.op.unary.f32(i32 27, float %3803)  ; Round_ni(value)
  %3805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %154, float %155, float %3804, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3806 = extractvalue %dx.types.ResRet.f32 %3805, 0
  %3807 = extractvalue %dx.types.ResRet.f32 %3805, 1
  %3808 = extractvalue %dx.types.ResRet.f32 %3805, 2
  %3809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3810 = extractvalue %dx.types.CBufRet.f32 %3809, 3
  %3811 = fmul fast float %3810, %3806
  %3812 = fmul fast float %3810, %3807
  %3813 = fmul fast float %3810, %3808
  %3814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %154, float %155, float %3804, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %154, float %155, float %3804, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3817 = extractvalue %dx.types.ResRet.f32 %3816, 0
  %3818 = extractvalue %dx.types.ResRet.f32 %3816, 1
  %3819 = fmul fast float %3817, 2.000000e+00
  %3820 = fmul fast float %3818, 2.000000e+00
  %3821 = fadd fast float %3819, -1.000000e+00
  %3822 = fadd fast float %3820, -1.000000e+00
  %3823 = fadd fast float %3821, %3822
  %3824 = fmul fast float %3823, 5.000000e-01
  %3825 = fsub fast float %3821, %3822
  %3826 = fmul fast float %3825, 5.000000e-01
  %3827 = call float @dx.op.unary.f32(i32 6, float %3824)  ; FAbs(value)
  %3828 = fsub fast float 1.000000e+00, %3827
  %3829 = call float @dx.op.unary.f32(i32 6, float %3826)  ; FAbs(value)
  %3830 = fsub fast float %3828, %3829
  %3831 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %3830)  ; FMax(a,b)
  %3832 = call float @dx.op.dot3.f32(i32 55, float %3824, float %3826, float %3831, float %3824, float %3826, float %3831)  ; Dot3(ax,ay,az,bx,by,bz)
  %3833 = bitcast float %3832 to i32
  %3834 = ashr i32 %3833, 1
  %3835 = sub nsw i32 1597250115, %3834
  %3836 = bitcast i32 %3835 to float
  %3837 = fmul fast float %3836, %3824
  %3838 = fmul fast float %3836, %3826
  %3839 = fmul fast float %3836, %3831
  %3840 = fsub fast float 1.000000e+00, %3815
  %3841 = fdiv fast float %3840, %3839
  %3842 = fmul fast float %3839, %57
  %3843 = fmul fast float %3839, %58
  %3844 = fmul fast float %3839, %59
  %3845 = fmul fast float %3837, %53
  %3846 = fmul fast float %3837, %54
  %3847 = fmul fast float %3837, %55
  %3848 = fadd fast float %3842, %3845
  %3849 = fadd fast float %3843, %3846
  %3850 = fadd fast float %3844, %3847
  %3851 = fmul fast float %3838, %89
  %3852 = fmul fast float %3838, %90
  %3853 = fmul fast float %3838, %91
  %3854 = fadd fast float %3848, %3851
  %3855 = fadd fast float %3849, %3852
  %3856 = fadd fast float %3850, %3853
  %3857 = call float @dx.op.dot3.f32(i32 55, float %3854, float %3855, float %3856, float %3854, float %3855, float %3856)  ; Dot3(ax,ay,az,bx,by,bz)
  %3858 = call float @dx.op.unary.f32(i32 25, float %3857)  ; Rsqrt(value)
  %3859 = fmul fast float %3854, %3858
  %3860 = fmul fast float %3855, %3858
  %3861 = fmul fast float %3856, %3858
  %3862 = call float @dx.op.dot3.f32(i32 55, float %3733, float %3734, float %3735, float %3733, float %3734, float %3735)  ; Dot3(ax,ay,az,bx,by,bz)
  %3863 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3864 = fmul fast float %3863, 5.000000e-01
  %3865 = fadd fast float %3864, 5.000000e-01
  %3866 = fmul fast float %3865, %3815
  %3867 = call float @dx.op.dot3.f32(i32 55, float %3733, float %3734, float %3735, float %3859, float %3860, float %3861)  ; Dot3(ax,ay,az,bx,by,bz)
  %3868 = call float @dx.op.unary.f32(i32 7, float %3867)  ; Saturate(value)
  %3869 = fmul fast float %3868, %3841
  %3870 = fadd fast float %3866, %3869
  %3871 = fsub fast float 5.000000e-01, %3864
  %3872 = fmul fast float %3871, %3730
  %3873 = fmul fast float %3871, %3731
  %3874 = fmul fast float %3871, %3732
  %3875 = fadd fast float %3870, %3872
  %3876 = fmul fast float %3875, %3811
  %3877 = fadd fast float %3870, %3873
  %3878 = fmul fast float %3877, %3812
  %3879 = fadd fast float %3870, %3874
  %3880 = fmul fast float %3879, %3813
  %3881 = call float @dx.op.dot3.f32(i32 55, float %3749, float %3750, float %3751, float %3733, float %3734, float %3735)  ; Dot3(ax,ay,az,bx,by,bz)
  %3882 = call float @dx.op.unary.f32(i32 7, float %3881)  ; Saturate(value)
  %3883 = fmul fast float %3882, 5.000000e-01
  %3884 = fadd fast float %3883, 5.000000e-01
  %3885 = fmul fast float %3884, %3815
  %3886 = call float @dx.op.dot3.f32(i32 55, float %3749, float %3750, float %3751, float %3859, float %3860, float %3861)  ; Dot3(ax,ay,az,bx,by,bz)
  %3887 = call float @dx.op.unary.f32(i32 7, float %3886)  ; Saturate(value)
  %3888 = fmul fast float %3887, %3841
  %3889 = fadd fast float %3885, %3888
  %3890 = fsub fast float 5.000000e-01, %3883
  %3891 = fmul fast float %3890, %3730
  %3892 = fmul fast float %3890, %3731
  %3893 = fmul fast float %3890, %3732
  %3894 = fadd fast float %3889, %3891
  %3895 = fmul fast float %3894, %3811
  %3896 = fadd fast float %3889, %3892
  %3897 = fmul fast float %3896, %3812
  %3898 = fadd fast float %3889, %3893
  %3899 = fmul fast float %3898, %3813
  br label %3900

; <label>:3900                                    ; preds = %3802, %3799
  %3901 = phi float [ %3895, %3802 ], [ 0.000000e+00, %3799 ]
  %3902 = phi float [ %3897, %3802 ], [ 0.000000e+00, %3799 ]
  %3903 = phi float [ %3899, %3802 ], [ 0.000000e+00, %3799 ]
  %3904 = phi float [ %3876, %3802 ], [ 0.000000e+00, %3799 ]
  %3905 = phi float [ %3878, %3802 ], [ 0.000000e+00, %3799 ]
  %3906 = phi float [ %3880, %3802 ], [ 0.000000e+00, %3799 ]
  %3907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3908 = extractvalue %dx.types.CBufRet.f32 %3907, 0
  %3909 = fcmp fast ogt float %3908, 0.000000e+00
  %3910 = and i1 %3801, %3909
  br i1 %3910, label %3911, label %4115, !dx.controlflow.hints !87

; <label>:3911                                    ; preds = %3900
  %3912 = extractvalue %dx.types.CBufRet.f32 %3756, 2
  %3913 = fadd fast float %3912, %127
  %3914 = fmul fast float %3733, 3.200000e+01
  %3915 = fmul fast float %3734, 3.200000e+01
  %3916 = fadd fast float %3759, %3914
  %3917 = fadd fast float %3760, %3915
  %3918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3919 = extractvalue %dx.types.CBufRet.f32 %3918, 0
  %3920 = extractvalue %dx.types.CBufRet.f32 %3918, 1
  %3921 = fsub fast float %3916, %3919
  %3922 = fsub fast float %3917, %3920
  %3923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3924 = extractvalue %dx.types.CBufRet.f32 %3923, 0
  %3925 = extractvalue %dx.types.CBufRet.f32 %3923, 1
  %3926 = fmul fast float %3921, %3924
  %3927 = fmul fast float %3922, %3925
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 0
  %3930 = extractvalue %dx.types.CBufRet.f32 %3928, 1
  %3931 = fsub fast float %3759, %3929
  %3932 = fsub fast float %3760, %3930
  %3933 = fmul fast float %3931, %3931
  %3934 = fmul fast float %3932, %3932
  %3935 = fadd fast float %3933, %3934
  %3936 = call float @dx.op.unary.f32(i32 24, float %3935)  ; Sqrt(value)
  %3937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3937, 0
  %3939 = extractvalue %dx.types.CBufRet.f32 %3937, 1
  %3940 = fsub fast float %3936, %3938
  %3941 = fdiv fast float %3940, %3939
  %3942 = call float @dx.op.unary.f32(i32 7, float %3941)  ; Saturate(value)
  %3943 = fmul fast float %3942, 2.000000e+00
  %3944 = fsub fast float 3.000000e+00, %3943
  %3945 = fmul fast float %3942, %3942
  %3946 = fmul fast float %3945, %3944
  %3947 = fcmp fast oge float %3926, 0.000000e+00
  %3948 = fcmp fast ole float %3926, 1.000000e+00
  %3949 = and i1 %3948, %3947
  %3950 = fcmp fast oge float %3927, 0.000000e+00
  %3951 = and i1 %3950, %3949
  %3952 = fcmp fast ole float %3927, 1.000000e+00
  %3953 = and i1 %3952, %3951
  %3954 = fcmp fast ogt float %3946, 0.000000e+00
  %3955 = and i1 %3954, %3953
  br i1 %3955, label %3956, label %4079, !dx.controlflow.hints !88

; <label>:3956                                    ; preds = %3911
  %3957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3958 = extractvalue %dx.types.CBufRet.f32 %3957, 2
  %3959 = extractvalue %dx.types.CBufRet.f32 %3957, 3
  %3960 = fmul fast float %3958, %3926
  %3961 = fmul fast float %3959, %3927
  %3962 = call float @dx.op.unary.f32(i32 27, float %3960)  ; Round_ni(value)
  %3963 = call float @dx.op.unary.f32(i32 27, float %3961)  ; Round_ni(value)
  %3964 = fptosi float %3962 to i32
  %3965 = fptosi float %3963 to i32
  %3966 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3964, i32 %3965, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3967 = extractvalue %dx.types.ResRet.i32 %3966, 0
  %3968 = lshr i32 %3967, 16
  %3969 = icmp eq i32 %3968, 65535
  br i1 %3969, label %4079, label %3970

; <label>:3970                                    ; preds = %3956
  %3971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3972 = extractvalue %dx.types.CBufRet.f32 %3971, 0
  %3973 = fmul fast float %3972, %3926
  %3974 = extractvalue %dx.types.CBufRet.f32 %3971, 1
  %3975 = fadd fast float %3973, %3974
  %3976 = extractvalue %dx.types.CBufRet.f32 %3971, 2
  %3977 = fmul fast float %3976, %3927
  %3978 = extractvalue %dx.types.CBufRet.f32 %3971, 3
  %3979 = fadd fast float %3977, %3978
  %3980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3975, float %3979, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = extractvalue %dx.types.ResRet.f32 %3980, 1
  %3983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3984 = extractvalue %dx.types.CBufRet.f32 %3983, 1
  %3985 = extractvalue %dx.types.CBufRet.f32 %3983, 0
  %3986 = fsub fast float %3984, %3985
  %3987 = fmul fast float %3986, %3981
  %3988 = fadd fast float %3987, %3985
  %3989 = extractvalue %dx.types.CBufRet.f32 %3983, 3
  %3990 = extractvalue %dx.types.CBufRet.f32 %3983, 2
  %3991 = fsub fast float %3989, %3990
  %3992 = fmul fast float %3991, %3982
  %3993 = fadd fast float %3992, %3990
  %3994 = fsub fast float %3913, %3988
  %3995 = fsub fast float %3993, %3988
  %3996 = fdiv fast float %3994, %3995
  %3997 = call float @dx.op.unary.f32(i32 7, float %3996)  ; Saturate(value)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3907, 1
  %3999 = extractvalue %dx.types.CBufRet.f32 %3957, 0
  %4000 = extractvalue %dx.types.CBufRet.f32 %3957, 1
  %4001 = fmul fast float %3999, %3926
  %4002 = fmul fast float %4000, %3927
  %4003 = fmul fast float %4001, 1.250000e-01
  %4004 = fmul fast float %4002, 1.250000e-01
  %4005 = call float @dx.op.unary.f32(i32 27, float %4003)  ; Round_ni(value)
  %4006 = call float @dx.op.unary.f32(i32 27, float %4004)  ; Round_ni(value)
  %4007 = fmul fast float %4005, 8.000000e+00
  %4008 = fmul fast float %4006, 8.000000e+00
  %4009 = fsub fast float %4001, %4007
  %4010 = fsub fast float %4002, %4008
  %4011 = fadd fast float %4009, 5.000000e-01
  %4012 = fadd fast float %4010, 5.000000e-01
  %4013 = and i32 %3968, 255
  %4014 = lshr i32 %3967, 24
  %4015 = mul nuw nsw i32 %4013, 9
  %4016 = uitofp i32 %4015 to float
  %4017 = mul nuw nsw i32 %4014, 9
  %4018 = uitofp i32 %4017 to float
  %4019 = fadd fast float %4011, %4016
  %4020 = fadd fast float %4012, %4018
  %4021 = fdiv fast float %4019, %3908
  %4022 = fdiv fast float %4020, %3998
  %4023 = fmul fast float %3997, 4.375000e-01
  %4024 = fadd fast float %4023, 3.125000e-02
  %4025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4021, float %4022, float %4024, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4026 = extractvalue %dx.types.ResRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.ResRet.f32 %4025, 1
  %4028 = extractvalue %dx.types.ResRet.f32 %4025, 2
  %4029 = fadd fast float %4023, 5.312500e-01
  %4030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4021, float %4022, float %4029, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = extractvalue %dx.types.ResRet.f32 %4030, 1
  %4033 = extractvalue %dx.types.ResRet.f32 %4030, 2
  %4034 = fmul fast float %4031, 2.000000e+00
  %4035 = fmul fast float %4032, 2.000000e+00
  %4036 = fmul fast float %4033, 2.000000e+00
  %4037 = fadd fast float %4034, -1.000000e+00
  %4038 = fadd fast float %4035, -1.000000e+00
  %4039 = fadd fast float %4036, -1.000000e+00
  %4040 = fmul fast float %4037, %4037
  %4041 = fmul fast float %4038, %4038
  %4042 = fadd fast float %4040, %4041
  %4043 = fmul fast float %4039, %4039
  %4044 = fadd fast float %4042, %4043
  %4045 = call float @dx.op.unary.f32(i32 24, float %4044)  ; Sqrt(value)
  %4046 = fcmp fast ogt float %4045, 0.000000e+00
  br i1 %4046, label %4047, label %4051

; <label>:4047                                    ; preds = %3970
  %4048 = fdiv fast float %4037, %4045
  %4049 = fdiv fast float %4038, %4045
  %4050 = fdiv fast float %4039, %4045
  br label %4051

; <label>:4051                                    ; preds = %4047, %3970
  %4052 = phi float [ %4048, %4047 ], [ 0.000000e+00, %3970 ]
  %4053 = phi float [ %4049, %4047 ], [ 0.000000e+00, %3970 ]
  %4054 = phi float [ %4050, %4047 ], [ 0.000000e+00, %3970 ]
  %4055 = call float @dx.op.dot3.f32(i32 55, float %4052, float %4053, float %4054, float %3733, float %3734, float %3735)  ; Dot3(ax,ay,az,bx,by,bz)
  %4056 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4055)  ; FMax(a,b)
  %4057 = fmul fast float %4056, 0x400C5BF8A0000000
  %4058 = fmul fast float %4026, %3946
  %4059 = fmul fast float %4058, %4057
  %4060 = fmul fast float %4027, %3946
  %4061 = fmul fast float %4060, %4057
  %4062 = fmul fast float %4028, %3946
  %4063 = fmul fast float %4062, %4057
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 3
  %4066 = fmul fast float %4059, %4065
  %4067 = fmul fast float %4061, %4065
  %4068 = fmul fast float %4063, %4065
  %4069 = fcmp fast ogt float %3913, %3993
  br i1 %4069, label %4070, label %4079

; <label>:4070                                    ; preds = %4051
  %4071 = fmul fast float %3995, 0x3FC24924A0000000
  %4072 = fsub fast float %3913, %3993
  %4073 = fdiv fast float %4072, %4071
  %4074 = call float @dx.op.unary.f32(i32 7, float %4073)  ; Saturate(value)
  %4075 = fsub fast float 1.000000e+00, %4074
  %4076 = fmul fast float %4075, %4066
  %4077 = fmul fast float %4075, %4067
  %4078 = fmul fast float %4075, %4068
  br label %4079

; <label>:4079                                    ; preds = %4070, %4051, %3956, %3911
  %4080 = phi float [ %4078, %4070 ], [ %4068, %4051 ], [ 0.000000e+00, %3956 ], [ 0.000000e+00, %3911 ]
  %4081 = phi float [ %4077, %4070 ], [ %4067, %4051 ], [ 0.000000e+00, %3956 ], [ 0.000000e+00, %3911 ]
  %4082 = phi float [ %4076, %4070 ], [ %4066, %4051 ], [ 0.000000e+00, %3956 ], [ 0.000000e+00, %3911 ]
  %4083 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4082)  ; FMax(a,b)
  %4084 = fmul fast float %4083, 0x3FD20DD760000000
  %4085 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3749, float %3750, float %3751)  ; Dot3(ax,ay,az,bx,by,bz)
  %4086 = fmul fast float %4085, 0x3FDF454380000000
  %4087 = fmul fast float %4085, %4085
  %4088 = fmul fast float %4087, 0x3FEE471020000000
  %4089 = fadd fast float %4088, 0xBFD42F6020000000
  %4090 = call float @dx.op.dot3.f32(i32 55, float %4083, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4086, float %4089)  ; Dot3(ax,ay,az,bx,by,bz)
  %4091 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4081)  ; FMax(a,b)
  %4092 = fmul fast float %4091, 0x3FD20DD760000000
  %4093 = call float @dx.op.dot3.f32(i32 55, float %4091, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4086, float %4089)  ; Dot3(ax,ay,az,bx,by,bz)
  %4094 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4080)  ; FMax(a,b)
  %4095 = fmul fast float %4094, 0x3FD20DD760000000
  %4096 = call float @dx.op.dot3.f32(i32 55, float %4094, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4086, float %4089)  ; Dot3(ax,ay,az,bx,by,bz)
  %4097 = call float @dx.op.binary.f32(i32 35, float %4084, float 0.000000e+00)  ; FMax(a,b)
  %4098 = call float @dx.op.binary.f32(i32 35, float %4092, float 0.000000e+00)  ; FMax(a,b)
  %4099 = call float @dx.op.binary.f32(i32 35, float %4095, float 0.000000e+00)  ; FMax(a,b)
  %4100 = call float @dx.op.binary.f32(i32 35, float %4090, float 0.000000e+00)  ; FMax(a,b)
  %4101 = call float @dx.op.binary.f32(i32 35, float %4093, float 0.000000e+00)  ; FMax(a,b)
  %4102 = call float @dx.op.binary.f32(i32 35, float %4096, float 0.000000e+00)  ; FMax(a,b)
  %4103 = fmul fast float %4097, %3800
  %4104 = fmul fast float %4098, %3800
  %4105 = fmul fast float %4099, %3800
  %4106 = fadd fast float %4103, %3904
  %4107 = fadd fast float %4104, %3905
  %4108 = fadd fast float %4105, %3906
  %4109 = fmul fast float %4100, %3800
  %4110 = fmul fast float %4101, %3800
  %4111 = fmul fast float %4102, %3800
  %4112 = fadd fast float %4109, %3901
  %4113 = fadd fast float %4110, %3902
  %4114 = fadd fast float %4111, %3903
  br label %4115

; <label>:4115                                    ; preds = %4079, %3900
  %4116 = phi float [ %4112, %4079 ], [ %3901, %3900 ]
  %4117 = phi float [ %4113, %4079 ], [ %3902, %3900 ]
  %4118 = phi float [ %4114, %4079 ], [ %3903, %3900 ]
  %4119 = phi float [ %4106, %4079 ], [ %3904, %3900 ]
  %4120 = phi float [ %4107, %4079 ], [ %3905, %3900 ]
  %4121 = phi float [ %4108, %4079 ], [ %3906, %3900 ]
  %4122 = fcmp fast olt float %3800, 1.000000e+00
  br i1 %4122, label %4123, label %4941, !dx.controlflow.hints !89

; <label>:4123                                    ; preds = %4115
  %4124 = extractvalue %dx.types.CBufRet.f32 %3756, 2
  %4125 = fadd fast float %4124, %127
  %4126 = fmul fast float %3733, 3.200000e+01
  %4127 = fmul fast float %3734, 3.200000e+01
  %4128 = fadd fast float %3759, %4126
  %4129 = fadd fast float %3760, %4127
  %4130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4131 = extractvalue %dx.types.CBufRet.f32 %4130, 0
  %4132 = extractvalue %dx.types.CBufRet.f32 %4130, 1
  %4133 = fsub fast float %4128, %4131
  %4134 = fsub fast float %4129, %4132
  %4135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.f32 %4135, 0
  %4137 = extractvalue %dx.types.CBufRet.f32 %4135, 1
  %4138 = fmul fast float %4133, %4136
  %4139 = fmul fast float %4134, %4137
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 0
  %4142 = fmul fast float %4138, %4141
  %4143 = extractvalue %dx.types.CBufRet.f32 %4140, 1
  %4144 = fadd fast float %4142, %4143
  %4145 = extractvalue %dx.types.CBufRet.f32 %4140, 2
  %4146 = fmul fast float %4145, %4139
  %4147 = extractvalue %dx.types.CBufRet.f32 %4140, 3
  %4148 = fadd fast float %4146, %4147
  %4149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %4144, float %4148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4150 = extractvalue %dx.types.ResRet.f32 %4149, 0
  %4151 = extractvalue %dx.types.ResRet.f32 %4149, 1
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 1
  %4154 = extractvalue %dx.types.CBufRet.f32 %4152, 0
  %4155 = fsub fast float %4153, %4154
  %4156 = fmul fast float %4155, %4150
  %4157 = fadd fast float %4156, %4154
  %4158 = extractvalue %dx.types.CBufRet.f32 %4152, 3
  %4159 = extractvalue %dx.types.CBufRet.f32 %4152, 2
  %4160 = fsub fast float %4158, %4159
  %4161 = fmul fast float %4160, %4151
  %4162 = fadd fast float %4161, %4159
  %4163 = fsub fast float %4125, %4157
  %4164 = fsub fast float %4162, %4157
  %4165 = fdiv fast float %4163, %4164
  %4166 = call float @dx.op.unary.f32(i32 7, float %4165)  ; Saturate(value)
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4169 = fmul fast float %4168, %4166
  %4170 = extractvalue %dx.types.CBufRet.f32 %4167, 1
  %4171 = fadd fast float %4169, %4170
  %4172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %4144, float %4148, float %4171, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.ResRet.f32 %4172, 1
  %4175 = extractvalue %dx.types.ResRet.f32 %4172, 2
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 0
  %4178 = extractvalue %dx.types.CBufRet.f32 %4176, 1
  %4179 = extractvalue %dx.types.CBufRet.f32 %4176, 2
  %4180 = fmul fast float %4177, %4173
  %4181 = fmul fast float %4178, %4174
  %4182 = fmul fast float %4179, %4175
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 0
  %4185 = extractvalue %dx.types.CBufRet.f32 %4183, 1
  %4186 = extractvalue %dx.types.CBufRet.f32 %4183, 2
  %4187 = fadd fast float %4180, %4184
  %4188 = fadd fast float %4181, %4185
  %4189 = fadd fast float %4182, %4186
  %4190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4190, 0
  %4192 = fmul fast float %4191, %4138
  %4193 = extractvalue %dx.types.CBufRet.f32 %4190, 1
  %4194 = fadd fast float %4192, %4193
  %4195 = extractvalue %dx.types.CBufRet.f32 %4190, 2
  %4196 = fmul fast float %4195, %4139
  %4197 = extractvalue %dx.types.CBufRet.f32 %4190, 3
  %4198 = fadd fast float %4196, %4197
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.CBufRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.CBufRet.f32 %4199, 2
  %4203 = extractvalue %dx.types.CBufRet.f32 %4199, 3
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 0
  %4206 = extractvalue %dx.types.CBufRet.f32 %4204, 1
  %4207 = extractvalue %dx.types.CBufRet.f32 %4204, 2
  %4208 = extractvalue %dx.types.CBufRet.f32 %4204, 3
  %4209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4194, float %4198, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4210 = extractvalue %dx.types.ResRet.f32 %4209, 0
  %4211 = extractvalue %dx.types.ResRet.f32 %4209, 1
  %4212 = extractvalue %dx.types.ResRet.f32 %4209, 2
  %4213 = extractvalue %dx.types.ResRet.f32 %4209, 3
  %4214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4194, float %4198, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.ResRet.f32 %4214, 1
  %4217 = extractvalue %dx.types.ResRet.f32 %4214, 2
  %4218 = extractvalue %dx.types.ResRet.f32 %4214, 3
  %4219 = fmul fast float %4210, %4187
  %4220 = fmul fast float %4215, %4187
  %4221 = fmul fast float %4217, %4187
  %4222 = fmul fast float %4213, %4187
  %4223 = fadd fast float %4219, %4200
  %4224 = fadd fast float %4220, %4201
  %4225 = fadd fast float %4221, %4202
  %4226 = fadd fast float %4222, %4203
  %4227 = fmul fast float %4211, %4187
  %4228 = fmul fast float %4216, %4187
  %4229 = fadd fast float %4227, %4205
  %4230 = fadd fast float %4228, %4206
  %4231 = fmul fast float %4212, %4187
  %4232 = fmul fast float %4218, %4187
  %4233 = fadd fast float %4231, %4207
  %4234 = fadd fast float %4232, %4208
  %4235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4194, float %4198, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4236 = extractvalue %dx.types.ResRet.f32 %4235, 0
  %4237 = extractvalue %dx.types.ResRet.f32 %4235, 1
  %4238 = extractvalue %dx.types.ResRet.f32 %4235, 2
  %4239 = extractvalue %dx.types.ResRet.f32 %4235, 3
  %4240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4194, float %4198, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4241 = extractvalue %dx.types.ResRet.f32 %4240, 0
  %4242 = extractvalue %dx.types.ResRet.f32 %4240, 1
  %4243 = extractvalue %dx.types.ResRet.f32 %4240, 2
  %4244 = extractvalue %dx.types.ResRet.f32 %4240, 3
  %4245 = fmul fast float %4236, %4188
  %4246 = fmul fast float %4241, %4188
  %4247 = fmul fast float %4243, %4188
  %4248 = fmul fast float %4239, %4188
  %4249 = fadd fast float %4223, %4245
  %4250 = fadd fast float %4224, %4246
  %4251 = fadd fast float %4225, %4247
  %4252 = fadd fast float %4226, %4248
  %4253 = fmul fast float %4237, %4188
  %4254 = fmul fast float %4242, %4188
  %4255 = fadd fast float %4229, %4253
  %4256 = fadd fast float %4230, %4254
  %4257 = fmul fast float %4238, %4188
  %4258 = fmul fast float %4244, %4188
  %4259 = fadd fast float %4233, %4257
  %4260 = fadd fast float %4234, %4258
  %4261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4194, float %4198, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4262 = extractvalue %dx.types.ResRet.f32 %4261, 0
  %4263 = extractvalue %dx.types.ResRet.f32 %4261, 1
  %4264 = extractvalue %dx.types.ResRet.f32 %4261, 2
  %4265 = extractvalue %dx.types.ResRet.f32 %4261, 3
  %4266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4194, float %4198, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4267 = extractvalue %dx.types.ResRet.f32 %4266, 0
  %4268 = extractvalue %dx.types.ResRet.f32 %4266, 1
  %4269 = extractvalue %dx.types.ResRet.f32 %4266, 2
  %4270 = extractvalue %dx.types.ResRet.f32 %4266, 3
  %4271 = fmul fast float %4262, %4189
  %4272 = fmul fast float %4267, %4189
  %4273 = fmul fast float %4269, %4189
  %4274 = fmul fast float %4265, %4189
  %4275 = fadd fast float %4249, %4271
  %4276 = fadd fast float %4250, %4272
  %4277 = fadd fast float %4251, %4273
  %4278 = fadd fast float %4252, %4274
  %4279 = fmul fast float %4263, %4189
  %4280 = fmul fast float %4268, %4189
  %4281 = fadd fast float %4255, %4279
  %4282 = fadd fast float %4256, %4280
  %4283 = fmul fast float %4264, %4189
  %4284 = fmul fast float %4270, %4189
  %4285 = fadd fast float %4259, %4283
  %4286 = fadd fast float %4260, %4284
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 0
  %4289 = fsub fast float %3759, %4288
  %4290 = fsub fast float %4131, %3759
  %4291 = call float @dx.op.binary.f32(i32 35, float %4290, float %4289)  ; FMax(a,b)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4287, 1
  %4293 = fsub fast float %3760, %4292
  %4294 = fsub fast float %4132, %3760
  %4295 = call float @dx.op.binary.f32(i32 35, float %4294, float %4293)  ; FMax(a,b)
  %4296 = call float @dx.op.binary.f32(i32 35, float %4291, float %4295)  ; FMax(a,b)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4135, 3
  %4298 = fmul fast float %4297, %4296
  %4299 = call float @dx.op.unary.f32(i32 7, float %4298)  ; Saturate(value)
  %4300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4301 = extractvalue %dx.types.CBufRet.f32 %4300, 0
  %4302 = extractvalue %dx.types.CBufRet.f32 %4300, 1
  %4303 = extractvalue %dx.types.CBufRet.f32 %4300, 2
  %4304 = extractvalue %dx.types.CBufRet.f32 %4300, 3
  %4305 = fsub fast float %4301, %4275
  %4306 = fsub fast float %4302, %4276
  %4307 = fsub fast float %4303, %4277
  %4308 = fsub fast float %4304, %4278
  %4309 = fmul fast float %4305, %4299
  %4310 = fmul fast float %4306, %4299
  %4311 = fmul fast float %4307, %4299
  %4312 = fmul fast float %4308, %4299
  %4313 = fadd fast float %4309, %4275
  %4314 = fadd fast float %4310, %4276
  %4315 = fadd fast float %4311, %4277
  %4316 = fadd fast float %4312, %4278
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 0
  %4319 = extractvalue %dx.types.CBufRet.f32 %4317, 1
  %4320 = fsub fast float %4318, %4281
  %4321 = fsub fast float %4319, %4282
  %4322 = fmul fast float %4320, %4299
  %4323 = fmul fast float %4321, %4299
  %4324 = fadd fast float %4322, %4281
  %4325 = fadd fast float %4323, %4282
  %4326 = extractvalue %dx.types.CBufRet.f32 %4317, 2
  %4327 = extractvalue %dx.types.CBufRet.f32 %4317, 3
  %4328 = fsub fast float %4326, %4285
  %4329 = fsub fast float %4327, %4286
  %4330 = fmul fast float %4328, %4299
  %4331 = fmul fast float %4329, %4299
  %4332 = fadd fast float %4330, %4285
  %4333 = fadd fast float %4331, %4286
  %4334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.f32 %4334, 0
  %4336 = fmul fast float %4335, %4313
  %4337 = fmul fast float %4335, %4314
  %4338 = fmul fast float %4335, %4315
  %4339 = fmul fast float %4335, %4316
  %4340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.f32 %4340, 0
  %4342 = fmul fast float %4341, %4324
  %4343 = fmul fast float %4341, %4325
  %4344 = fadd fast float %4342, %4336
  %4345 = fadd fast float %4343, %4338
  %4346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4347 = extractvalue %dx.types.CBufRet.f32 %4346, 0
  %4348 = fmul fast float %4347, %4332
  %4349 = fmul fast float %4347, %4333
  %4350 = fadd fast float %4344, %4348
  %4351 = fadd fast float %4345, %4349
  %4352 = extractvalue %dx.types.CBufRet.f32 %4334, 1
  %4353 = fmul fast float %4352, %4313
  %4354 = fmul fast float %4352, %4314
  %4355 = fmul fast float %4352, %4315
  %4356 = fmul fast float %4352, %4316
  %4357 = extractvalue %dx.types.CBufRet.f32 %4340, 1
  %4358 = fmul fast float %4357, %4324
  %4359 = fmul fast float %4357, %4325
  %4360 = fadd fast float %4358, %4353
  %4361 = fadd fast float %4359, %4355
  %4362 = extractvalue %dx.types.CBufRet.f32 %4346, 1
  %4363 = fmul fast float %4362, %4332
  %4364 = fmul fast float %4362, %4333
  %4365 = fadd fast float %4360, %4363
  %4366 = fadd fast float %4361, %4364
  %4367 = extractvalue %dx.types.CBufRet.f32 %4334, 2
  %4368 = fmul fast float %4367, %4313
  %4369 = fmul fast float %4367, %4314
  %4370 = fmul fast float %4367, %4315
  %4371 = fmul fast float %4367, %4316
  %4372 = extractvalue %dx.types.CBufRet.f32 %4340, 2
  %4373 = fmul fast float %4372, %4324
  %4374 = fmul fast float %4372, %4325
  %4375 = fadd fast float %4373, %4368
  %4376 = fadd fast float %4374, %4370
  %4377 = extractvalue %dx.types.CBufRet.f32 %4346, 2
  %4378 = fmul fast float %4377, %4332
  %4379 = fmul fast float %4377, %4333
  %4380 = fadd fast float %4375, %4378
  %4381 = fadd fast float %4376, %4379
  %4382 = fmul fast float %4369, %4369
  %4383 = fmul fast float %4381, %4381
  %4384 = fmul fast float %4371, %4371
  %4385 = fadd fast float %4384, %4382
  %4386 = fadd fast float %4385, %4383
  %4387 = call float @dx.op.unary.f32(i32 24, float %4386)  ; Sqrt(value)
  %4388 = fcmp fast ugt float %4387, 0.000000e+00
  br i1 %4388, label %4389, label %4404

; <label>:4389                                    ; preds = %4123
  %4390 = fsub fast float -0.000000e+00, %4371
  %4391 = fdiv fast float %4390, %4387
  %4392 = fsub fast float -0.000000e+00, %4369
  %4393 = fdiv fast float %4392, %4387
  %4394 = fdiv fast float %4381, %4387
  %4395 = fmul fast float %4380, 0x3FE279A760000000
  %4396 = fmul fast float %4393, %4369
  %4397 = fmul fast float %4394, %4381
  %4398 = fmul fast float %4391, %4371
  %4399 = fadd fast float %4396, %4398
  %4400 = fsub fast float %4399, %4397
  %4401 = call float @dx.op.unary.f32(i32 6, float %4400)  ; FAbs(value)
  %4402 = fadd fast float %4401, 0x3DDB7CDFE0000000
  %4403 = fdiv fast float %4395, %4402
  br label %4404

; <label>:4404                                    ; preds = %4389, %4123
  %4405 = phi float [ %4403, %4389 ], [ 1.000000e+00, %4123 ]
  %4406 = fmul fast float %4354, %4354
  %4407 = fmul fast float %4366, %4366
  %4408 = fmul fast float %4356, %4356
  %4409 = fadd fast float %4408, %4406
  %4410 = fadd fast float %4409, %4407
  %4411 = call float @dx.op.unary.f32(i32 24, float %4410)  ; Sqrt(value)
  %4412 = fcmp fast ugt float %4411, 0.000000e+00
  br i1 %4412, label %4413, label %4428

; <label>:4413                                    ; preds = %4404
  %4414 = fsub fast float -0.000000e+00, %4356
  %4415 = fdiv fast float %4414, %4411
  %4416 = fsub fast float -0.000000e+00, %4354
  %4417 = fdiv fast float %4416, %4411
  %4418 = fdiv fast float %4366, %4411
  %4419 = fmul fast float %4365, 0x3FE279A760000000
  %4420 = fmul fast float %4417, %4354
  %4421 = fmul fast float %4418, %4366
  %4422 = fmul fast float %4415, %4356
  %4423 = fadd fast float %4420, %4422
  %4424 = fsub fast float %4423, %4421
  %4425 = call float @dx.op.unary.f32(i32 6, float %4424)  ; FAbs(value)
  %4426 = fadd fast float %4425, 0x3DDB7CDFE0000000
  %4427 = fdiv fast float %4419, %4426
  br label %4428

; <label>:4428                                    ; preds = %4413, %4404
  %4429 = phi float [ %4427, %4413 ], [ 1.000000e+00, %4404 ]
  %4430 = call float @dx.op.binary.f32(i32 36, float %4429, float %4405)  ; FMin(a,b)
  %4431 = fmul fast float %4337, %4337
  %4432 = fmul fast float %4351, %4351
  %4433 = fmul fast float %4339, %4339
  %4434 = fadd fast float %4433, %4431
  %4435 = fadd fast float %4434, %4432
  %4436 = call float @dx.op.unary.f32(i32 24, float %4435)  ; Sqrt(value)
  %4437 = fcmp fast ugt float %4436, 0.000000e+00
  br i1 %4437, label %4438, label %4453

; <label>:4438                                    ; preds = %4428
  %4439 = fsub fast float -0.000000e+00, %4339
  %4440 = fdiv fast float %4439, %4436
  %4441 = fsub fast float -0.000000e+00, %4337
  %4442 = fdiv fast float %4441, %4436
  %4443 = fdiv fast float %4351, %4436
  %4444 = fmul fast float %4350, 0x3FE279A760000000
  %4445 = fmul fast float %4442, %4337
  %4446 = fmul fast float %4443, %4351
  %4447 = fmul fast float %4440, %4339
  %4448 = fadd fast float %4445, %4447
  %4449 = fsub fast float %4448, %4446
  %4450 = call float @dx.op.unary.f32(i32 6, float %4449)  ; FAbs(value)
  %4451 = fadd fast float %4450, 0x3DDB7CDFE0000000
  %4452 = fdiv fast float %4444, %4451
  br label %4453

; <label>:4453                                    ; preds = %4438, %4428
  %4454 = phi float [ %4452, %4438 ], [ 1.000000e+00, %4428 ]
  %4455 = call float @dx.op.binary.f32(i32 36, float %4454, float %4430)  ; FMin(a,b)
  %4456 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4457 = fcmp fast olt float %4456, 1.000000e+00
  br i1 %4457, label %4458, label %4468

; <label>:4458                                    ; preds = %4453
  %4459 = fmul fast float %4456, %4337
  %4460 = fmul fast float %4456, %4351
  %4461 = fmul fast float %4456, %4339
  %4462 = fmul fast float %4456, %4354
  %4463 = fmul fast float %4456, %4366
  %4464 = fmul fast float %4456, %4356
  %4465 = fmul fast float %4456, %4369
  %4466 = fmul fast float %4456, %4381
  %4467 = fmul fast float %4456, %4371
  br label %4468

; <label>:4468                                    ; preds = %4458, %4453
  %4469 = phi float [ %4465, %4458 ], [ %4369, %4453 ]
  %4470 = phi float [ %4466, %4458 ], [ %4381, %4453 ]
  %4471 = phi float [ %4467, %4458 ], [ %4371, %4453 ]
  %4472 = phi float [ %4462, %4458 ], [ %4354, %4453 ]
  %4473 = phi float [ %4463, %4458 ], [ %4366, %4453 ]
  %4474 = phi float [ %4464, %4458 ], [ %4356, %4453 ]
  %4475 = phi float [ %4459, %4458 ], [ %4337, %4453 ]
  %4476 = phi float [ %4460, %4458 ], [ %4351, %4453 ]
  %4477 = phi float [ %4461, %4458 ], [ %4339, %4453 ]
  %4478 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4350)  ; FMax(a,b)
  %4479 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4365)  ; FMax(a,b)
  %4480 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4380)  ; FMax(a,b)
  %4481 = fcmp fast oge float %4138, 0.000000e+00
  %4482 = and i1 %4481, %3909
  %4483 = fcmp fast ole float %4138, 1.000000e+00
  %4484 = and i1 %4483, %4482
  %4485 = fcmp fast oge float %4139, 0.000000e+00
  %4486 = and i1 %4485, %4484
  %4487 = fcmp fast ole float %4139, 1.000000e+00
  %4488 = and i1 %4487, %4486
  br i1 %4488, label %4489, label %4634, !dx.controlflow.hints !90

; <label>:4489                                    ; preds = %4468
  %4490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4491 = extractvalue %dx.types.CBufRet.f32 %4490, 2
  %4492 = extractvalue %dx.types.CBufRet.f32 %4490, 3
  %4493 = fmul fast float %4491, %4138
  %4494 = fmul fast float %4492, %4139
  %4495 = call float @dx.op.unary.f32(i32 27, float %4493)  ; Round_ni(value)
  %4496 = call float @dx.op.unary.f32(i32 27, float %4494)  ; Round_ni(value)
  %4497 = fptosi float %4495 to i32
  %4498 = fptosi float %4496 to i32
  %4499 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %4497, i32 %4498, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4500 = extractvalue %dx.types.ResRet.i32 %4499, 0
  %4501 = and i32 %4500, 65535
  %4502 = lshr i32 %4500, 16
  %4503 = icmp eq i32 %4501, 65535
  br i1 %4503, label %4540, label %4504

; <label>:4504                                    ; preds = %4489
  %4505 = extractvalue %dx.types.CBufRet.f32 %3907, 1
  %4506 = extractvalue %dx.types.CBufRet.f32 %4490, 0
  %4507 = extractvalue %dx.types.CBufRet.f32 %4490, 1
  %4508 = fmul fast float %4506, %4138
  %4509 = fmul fast float %4507, %4139
  %4510 = fmul fast float %4508, 1.250000e-01
  %4511 = fmul fast float %4509, 1.250000e-01
  %4512 = call float @dx.op.unary.f32(i32 27, float %4510)  ; Round_ni(value)
  %4513 = call float @dx.op.unary.f32(i32 27, float %4511)  ; Round_ni(value)
  %4514 = fmul fast float %4512, 8.000000e+00
  %4515 = fmul fast float %4513, 8.000000e+00
  %4516 = and i32 %4500, 255
  %4517 = lshr i32 %4500, 8
  %4518 = and i32 %4517, 255
  %4519 = mul nuw nsw i32 %4516, 9
  %4520 = uitofp i32 %4519 to float
  %4521 = mul nuw nsw i32 %4518, 9
  %4522 = uitofp i32 %4521 to float
  %4523 = fadd fast float %4520, 5.000000e-01
  %4524 = fadd fast float %4523, %4508
  %4525 = fsub fast float %4524, %4514
  %4526 = fadd fast float %4522, 5.000000e-01
  %4527 = fadd fast float %4526, %4509
  %4528 = fsub fast float %4527, %4515
  %4529 = fdiv fast float %4525, %3908
  %4530 = fdiv fast float %4528, %4505
  %4531 = fmul fast float %4166, 4.375000e-01
  %4532 = fadd fast float %4531, 3.125000e-02
  %4533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4529, float %4530, float %4532, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4534 = extractvalue %dx.types.ResRet.f32 %4533, 0
  %4535 = extractvalue %dx.types.ResRet.f32 %4533, 1
  %4536 = extractvalue %dx.types.ResRet.f32 %4533, 2
  %4537 = fadd fast float %4534, %4478
  %4538 = fadd fast float %4535, %4479
  %4539 = fadd fast float %4536, %4480
  br label %4540

; <label>:4540                                    ; preds = %4504, %4489
  %4541 = phi float [ %4539, %4504 ], [ %4480, %4489 ]
  %4542 = phi float [ %4538, %4504 ], [ %4479, %4489 ]
  %4543 = phi float [ %4537, %4504 ], [ %4478, %4489 ]
  %4544 = icmp eq i32 %4502, 65535
  br i1 %4544, label %4634, label %4545

; <label>:4545                                    ; preds = %4540
  %4546 = extractvalue %dx.types.CBufRet.f32 %3907, 1
  %4547 = extractvalue %dx.types.CBufRet.f32 %4490, 0
  %4548 = extractvalue %dx.types.CBufRet.f32 %4490, 1
  %4549 = fmul fast float %4547, %4138
  %4550 = fmul fast float %4548, %4139
  %4551 = fmul fast float %4549, 1.250000e-01
  %4552 = fmul fast float %4550, 1.250000e-01
  %4553 = call float @dx.op.unary.f32(i32 27, float %4551)  ; Round_ni(value)
  %4554 = call float @dx.op.unary.f32(i32 27, float %4552)  ; Round_ni(value)
  %4555 = fmul fast float %4553, 8.000000e+00
  %4556 = fmul fast float %4554, 8.000000e+00
  %4557 = fsub fast float %4549, %4555
  %4558 = fsub fast float %4550, %4556
  %4559 = fadd fast float %4557, 5.000000e-01
  %4560 = fadd fast float %4558, 5.000000e-01
  %4561 = and i32 %4502, 255
  %4562 = lshr i32 %4500, 24
  %4563 = mul nuw nsw i32 %4561, 9
  %4564 = uitofp i32 %4563 to float
  %4565 = mul nuw nsw i32 %4562, 9
  %4566 = uitofp i32 %4565 to float
  %4567 = fadd fast float %4559, %4564
  %4568 = fadd fast float %4560, %4566
  %4569 = fdiv fast float %4567, %3908
  %4570 = fdiv fast float %4568, %4546
  %4571 = fmul fast float %4166, 4.375000e-01
  %4572 = fadd fast float %4571, 3.125000e-02
  %4573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4569, float %4570, float %4572, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = extractvalue %dx.types.ResRet.f32 %4573, 1
  %4576 = extractvalue %dx.types.ResRet.f32 %4573, 2
  %4577 = fadd fast float %4571, 5.312500e-01
  %4578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4569, float %4570, float %4577, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4579 = extractvalue %dx.types.ResRet.f32 %4578, 0
  %4580 = extractvalue %dx.types.ResRet.f32 %4578, 1
  %4581 = extractvalue %dx.types.ResRet.f32 %4578, 2
  %4582 = fmul fast float %4579, 2.000000e+00
  %4583 = fmul fast float %4580, 2.000000e+00
  %4584 = fmul fast float %4581, 2.000000e+00
  %4585 = fadd fast float %4582, -1.000000e+00
  %4586 = fadd fast float %4583, -1.000000e+00
  %4587 = fadd fast float %4584, -1.000000e+00
  %4588 = fmul fast float %4585, %4585
  %4589 = fmul fast float %4586, %4586
  %4590 = fadd fast float %4588, %4589
  %4591 = fmul fast float %4587, %4587
  %4592 = fadd fast float %4590, %4591
  %4593 = call float @dx.op.unary.f32(i32 24, float %4592)  ; Sqrt(value)
  %4594 = fcmp fast ogt float %4593, 0.000000e+00
  br i1 %4594, label %4595, label %4599

; <label>:4595                                    ; preds = %4545
  %4596 = fdiv fast float %4585, %4593
  %4597 = fdiv fast float %4586, %4593
  %4598 = fdiv fast float %4587, %4593
  br label %4599

; <label>:4599                                    ; preds = %4595, %4545
  %4600 = phi float [ %4596, %4595 ], [ 0.000000e+00, %4545 ]
  %4601 = phi float [ %4597, %4595 ], [ 0.000000e+00, %4545 ]
  %4602 = phi float [ %4598, %4595 ], [ 0.000000e+00, %4545 ]
  %4603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4604 = extractvalue %dx.types.CBufRet.f32 %4603, 0
  %4605 = extractvalue %dx.types.CBufRet.f32 %4603, 1
  %4606 = fsub fast float %3759, %4604
  %4607 = fsub fast float %3760, %4605
  %4608 = fmul fast float %4606, %4606
  %4609 = fmul fast float %4607, %4607
  %4610 = fadd fast float %4608, %4609
  %4611 = call float @dx.op.unary.f32(i32 24, float %4610)  ; Sqrt(value)
  %4612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.CBufRet.f32 %4612, 1
  %4615 = fsub fast float %4611, %4613
  %4616 = fdiv fast float %4615, %4614
  %4617 = call float @dx.op.unary.f32(i32 7, float %4616)  ; Saturate(value)
  %4618 = fmul fast float %4617, 2.000000e+00
  %4619 = fsub fast float 3.000000e+00, %4618
  %4620 = fmul fast float %4617, %4617
  %4621 = fmul fast float %4620, %4619
  %4622 = call float @dx.op.dot3.f32(i32 55, float %4600, float %4601, float %4602, float %3733, float %3734, float %3735)  ; Dot3(ax,ay,az,bx,by,bz)
  %4623 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4622)  ; FMax(a,b)
  %4624 = fmul fast float %4623, 0x400C5BF8A0000000
  %4625 = fmul fast float %4621, %4574
  %4626 = fmul fast float %4625, %4624
  %4627 = fadd fast float %4626, %4543
  %4628 = fmul fast float %4621, %4575
  %4629 = fmul fast float %4628, %4624
  %4630 = fadd fast float %4629, %4542
  %4631 = fmul fast float %4621, %4576
  %4632 = fmul fast float %4631, %4624
  %4633 = fadd fast float %4632, %4541
  br label %4634

; <label>:4634                                    ; preds = %4599, %4540, %4468
  %4635 = phi float [ %4633, %4599 ], [ %4541, %4540 ], [ %4480, %4468 ]
  %4636 = phi float [ %4630, %4599 ], [ %4542, %4540 ], [ %4479, %4468 ]
  %4637 = phi float [ %4627, %4599 ], [ %4543, %4540 ], [ %4478, %4468 ]
  %4638 = fcmp fast ogt float %4125, %4162
  %4639 = and i1 %4481, %4638
  %4640 = and i1 %4483, %4639
  %4641 = and i1 %4485, %4640
  %4642 = and i1 %4487, %4641
  br i1 %4642, label %4643, label %4700, !dx.controlflow.hints !91

; <label>:4643                                    ; preds = %4634
  %4644 = fmul fast float %4164, 0x3FC24924A0000000
  %4645 = fsub fast float %4125, %4162
  %4646 = fdiv fast float %4645, %4644
  %4647 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.f32 %4648, 0
  %4650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %4651 = extractvalue %dx.types.CBufRet.f32 %4650, 0
  %4652 = extractvalue %dx.types.CBufRet.f32 %4650, 1
  %4653 = extractvalue %dx.types.CBufRet.f32 %4650, 2
  %4654 = fsub fast float %4649, %4637
  %4655 = fsub fast float %4651, %4475
  %4656 = fsub fast float %4652, %4476
  %4657 = fsub fast float %4653, %4477
  %4658 = fmul fast float %4654, %4647
  %4659 = fmul fast float %4655, %4647
  %4660 = fmul fast float %4656, %4647
  %4661 = fmul fast float %4657, %4647
  %4662 = fadd fast float %4658, %4637
  %4663 = fadd fast float %4659, %4475
  %4664 = fadd fast float %4660, %4476
  %4665 = fadd fast float %4661, %4477
  %4666 = extractvalue %dx.types.CBufRet.f32 %4648, 1
  %4667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %4668 = extractvalue %dx.types.CBufRet.f32 %4667, 0
  %4669 = extractvalue %dx.types.CBufRet.f32 %4667, 1
  %4670 = extractvalue %dx.types.CBufRet.f32 %4667, 2
  %4671 = fsub fast float %4666, %4636
  %4672 = fsub fast float %4668, %4472
  %4673 = fsub fast float %4669, %4473
  %4674 = fsub fast float %4670, %4474
  %4675 = fmul fast float %4671, %4647
  %4676 = fmul fast float %4672, %4647
  %4677 = fmul fast float %4673, %4647
  %4678 = fmul fast float %4674, %4647
  %4679 = fadd fast float %4675, %4636
  %4680 = fadd fast float %4676, %4472
  %4681 = fadd fast float %4677, %4473
  %4682 = fadd fast float %4678, %4474
  %4683 = extractvalue %dx.types.CBufRet.f32 %4648, 2
  %4684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.f32 %4684, 0
  %4686 = extractvalue %dx.types.CBufRet.f32 %4684, 1
  %4687 = extractvalue %dx.types.CBufRet.f32 %4684, 2
  %4688 = fsub fast float %4683, %4635
  %4689 = fsub fast float %4685, %4469
  %4690 = fsub fast float %4686, %4470
  %4691 = fsub fast float %4687, %4471
  %4692 = fmul fast float %4688, %4647
  %4693 = fmul fast float %4689, %4647
  %4694 = fmul fast float %4690, %4647
  %4695 = fmul fast float %4691, %4647
  %4696 = fadd fast float %4692, %4635
  %4697 = fadd fast float %4693, %4469
  %4698 = fadd fast float %4694, %4470
  %4699 = fadd fast float %4695, %4471
  br label %4700

; <label>:4700                                    ; preds = %4643, %4634
  %4701 = phi float [ %4696, %4643 ], [ %4635, %4634 ]
  %4702 = phi float [ %4697, %4643 ], [ %4469, %4634 ]
  %4703 = phi float [ %4698, %4643 ], [ %4470, %4634 ]
  %4704 = phi float [ %4699, %4643 ], [ %4471, %4634 ]
  %4705 = phi float [ %4679, %4643 ], [ %4636, %4634 ]
  %4706 = phi float [ %4680, %4643 ], [ %4472, %4634 ]
  %4707 = phi float [ %4681, %4643 ], [ %4473, %4634 ]
  %4708 = phi float [ %4682, %4643 ], [ %4474, %4634 ]
  %4709 = phi float [ %4662, %4643 ], [ %4637, %4634 ]
  %4710 = phi float [ %4663, %4643 ], [ %4475, %4634 ]
  %4711 = phi float [ %4664, %4643 ], [ %4476, %4634 ]
  %4712 = phi float [ %4665, %4643 ], [ %4477, %4634 ]
  %4713 = extractvalue %dx.types.CBufRet.f32 %4287, 3
  %4714 = fmul fast float %4713, %4709
  %4715 = fmul fast float %4713, %4705
  %4716 = fmul fast float %4713, %4701
  %4717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4718 = extractvalue %dx.types.CBufRet.f32 %4717, 3
  %4719 = fmul fast float %4714, %4718
  %4720 = fmul fast float %4715, %4718
  %4721 = fmul fast float %4716, %4718
  %4722 = fmul fast float %4710, 1.500000e+00
  %4723 = fmul fast float %4722, %4713
  %4724 = fmul fast float %4723, %4718
  %4725 = fmul fast float %4711, 1.500000e+00
  %4726 = fmul fast float %4725, %4713
  %4727 = fmul fast float %4726, %4718
  %4728 = fmul fast float %4712, 1.500000e+00
  %4729 = fmul fast float %4728, %4713
  %4730 = fmul fast float %4729, %4718
  %4731 = fmul fast float %4706, 1.500000e+00
  %4732 = fmul fast float %4731, %4713
  %4733 = fmul fast float %4732, %4718
  %4734 = fmul fast float %4707, 1.500000e+00
  %4735 = fmul fast float %4734, %4713
  %4736 = fmul fast float %4735, %4718
  %4737 = fmul fast float %4708, 1.500000e+00
  %4738 = fmul fast float %4737, %4713
  %4739 = fmul fast float %4738, %4718
  %4740 = fmul fast float %4702, 1.500000e+00
  %4741 = fmul fast float %4740, %4713
  %4742 = fmul fast float %4741, %4718
  %4743 = fmul fast float %4703, 1.500000e+00
  %4744 = fmul fast float %4743, %4713
  %4745 = fmul fast float %4744, %4718
  %4746 = fmul fast float %4704, 1.500000e+00
  %4747 = fmul fast float %4746, %4713
  %4748 = fmul fast float %4747, %4718
  %4749 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4719)  ; FMax(a,b)
  %4750 = call float @dx.op.dot3.f32(i32 55, float %4724, float %4727, float %4730, float %4724, float %4727, float %4730)  ; Dot3(ax,ay,az,bx,by,bz)
  %4751 = fcmp fast oeq float %4750, 0.000000e+00
  %4752 = fcmp fast oeq float %4749, 0.000000e+00
  %4753 = or i1 %4752, %4751
  br i1 %4753, label %4783, label %4754

; <label>:4754                                    ; preds = %4700
  %4755 = fsub fast float -0.000000e+00, %4730
  %4756 = fsub fast float -0.000000e+00, %4724
  %4757 = call float @dx.op.unary.f32(i32 24, float %4750)  ; Sqrt(value)
  %4758 = fdiv fast float %4757, %4749
  %4759 = fcmp fast ogt float %4758, 0x3FFB6F8900000000
  %4760 = select i1 %4759, float 0x3FFB6F8900000000, float %4758
  %4761 = fmul fast float %4760, 0x3FE8A23460000000
  %4762 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4763 = call float @dx.op.binary.f32(i32 35, float %4760, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4764 = fmul fast float %4762, %4749
  %4765 = fmul fast float %4763, 0x3FF279A740000000
  %4766 = fadd fast float %4765, -1.000000e+00
  %4767 = call float @dx.op.dot3.f32(i32 55, float %4755, float %4756, float %4727, float %4755, float %4756, float %4727)  ; Dot3(ax,ay,az,bx,by,bz)
  %4768 = call float @dx.op.unary.f32(i32 25, float %4767)  ; Rsqrt(value)
  %4769 = fmul fast float %4768, %4755
  %4770 = fmul fast float %4768, %4756
  %4771 = fmul fast float %4768, %4727
  %4772 = fmul fast float %4766, %4766
  %4773 = fsub fast float 1.000000e+00, %4772
  %4774 = fmul fast float %4763, 0x40005F8BE0000000
  %4775 = fsub fast float 0x400C5BF8A0000000, %4774
  %4776 = fdiv fast float %4764, %4775
  %4777 = fmul fast float %4776, 0x3FEE31C3C0000000
  %4778 = fmul fast float %4777, %4773
  %4779 = fmul fast float %4763, 0x3FDACB7480000000
  %4780 = fadd fast float %4779, 0xBFD7347680000000
  %4781 = fmul fast float %4780, %4776
  %4782 = fmul fast float %4781, %4773
  br label %4783

; <label>:4783                                    ; preds = %4754, %4700
  %4784 = phi float [ %4769, %4754 ], [ 0.000000e+00, %4700 ]
  %4785 = phi float [ %4770, %4754 ], [ 0.000000e+00, %4700 ]
  %4786 = phi float [ %4771, %4754 ], [ 0.000000e+00, %4700 ]
  %4787 = phi float [ %4778, %4754 ], [ 0.000000e+00, %4700 ]
  %4788 = phi float [ %4782, %4754 ], [ 0.000000e+00, %4700 ]
  %4789 = call float @dx.op.dot3.f32(i32 55, float %4784, float %4785, float %4786, float %3733, float %3734, float %3735)  ; Dot3(ax,ay,az,bx,by,bz)
  %4790 = fmul fast float %4789, %4789
  %4791 = fmul fast float %4790, 0x3FEE471020000000
  %4792 = fadd fast float %4791, 0xBFD42F6020000000
  %4793 = fmul fast float %4749, 0x3FD20DD760000000
  %4794 = fmul fast float %4792, %4788
  %4795 = fmul fast float %4787, 0x3FDF454380000000
  %4796 = fmul fast float %4795, %4789
  %4797 = fadd fast float %4796, %4793
  %4798 = fadd fast float %4797, %4794
  %4799 = call float @dx.op.dot3.f32(i32 55, float %4784, float %4785, float %4786, float %3749, float %3750, float %3751)  ; Dot3(ax,ay,az,bx,by,bz)
  %4800 = fmul fast float %4799, 0x3FDF454380000000
  %4801 = fmul fast float %4799, %4799
  %4802 = fmul fast float %4801, 0x3FEE471020000000
  %4803 = fadd fast float %4802, 0xBFD42F6020000000
  %4804 = call float @dx.op.dot3.f32(i32 55, float %4749, float %4787, float %4788, float 0x3FD20DD760000000, float %4800, float %4803)  ; Dot3(ax,ay,az,bx,by,bz)
  %4805 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4720)  ; FMax(a,b)
  %4806 = call float @dx.op.dot3.f32(i32 55, float %4733, float %4736, float %4739, float %4733, float %4736, float %4739)  ; Dot3(ax,ay,az,bx,by,bz)
  %4807 = fcmp fast oeq float %4806, 0.000000e+00
  %4808 = fcmp fast oeq float %4805, 0.000000e+00
  %4809 = or i1 %4808, %4807
  br i1 %4809, label %4839, label %4810

; <label>:4810                                    ; preds = %4783
  %4811 = fsub fast float -0.000000e+00, %4739
  %4812 = fsub fast float -0.000000e+00, %4733
  %4813 = call float @dx.op.unary.f32(i32 24, float %4806)  ; Sqrt(value)
  %4814 = fdiv fast float %4813, %4805
  %4815 = fcmp fast ogt float %4814, 0x3FFB6F8900000000
  %4816 = select i1 %4815, float 0x3FFB6F8900000000, float %4814
  %4817 = fmul fast float %4816, 0x3FE8A23460000000
  %4818 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4819 = call float @dx.op.binary.f32(i32 35, float %4816, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4820 = fmul fast float %4818, %4805
  %4821 = fmul fast float %4819, 0x3FF279A740000000
  %4822 = fadd fast float %4821, -1.000000e+00
  %4823 = call float @dx.op.dot3.f32(i32 55, float %4811, float %4812, float %4736, float %4811, float %4812, float %4736)  ; Dot3(ax,ay,az,bx,by,bz)
  %4824 = call float @dx.op.unary.f32(i32 25, float %4823)  ; Rsqrt(value)
  %4825 = fmul fast float %4824, %4811
  %4826 = fmul fast float %4824, %4812
  %4827 = fmul fast float %4824, %4736
  %4828 = fmul fast float %4822, %4822
  %4829 = fsub fast float 1.000000e+00, %4828
  %4830 = fmul fast float %4819, 0x40005F8BE0000000
  %4831 = fsub fast float 0x400C5BF8A0000000, %4830
  %4832 = fdiv fast float %4820, %4831
  %4833 = fmul fast float %4832, 0x3FEE31C3C0000000
  %4834 = fmul fast float %4833, %4829
  %4835 = fmul fast float %4819, 0x3FDACB7480000000
  %4836 = fadd fast float %4835, 0xBFD7347680000000
  %4837 = fmul fast float %4836, %4832
  %4838 = fmul fast float %4837, %4829
  br label %4839

; <label>:4839                                    ; preds = %4810, %4783
  %4840 = phi float [ %4825, %4810 ], [ 0.000000e+00, %4783 ]
  %4841 = phi float [ %4826, %4810 ], [ 0.000000e+00, %4783 ]
  %4842 = phi float [ %4827, %4810 ], [ 0.000000e+00, %4783 ]
  %4843 = phi float [ %4834, %4810 ], [ 0.000000e+00, %4783 ]
  %4844 = phi float [ %4838, %4810 ], [ 0.000000e+00, %4783 ]
  %4845 = call float @dx.op.dot3.f32(i32 55, float %4840, float %4841, float %4842, float %3733, float %3734, float %3735)  ; Dot3(ax,ay,az,bx,by,bz)
  %4846 = fmul fast float %4845, %4845
  %4847 = fmul fast float %4846, 0x3FEE471020000000
  %4848 = fadd fast float %4847, 0xBFD42F6020000000
  %4849 = fmul fast float %4805, 0x3FD20DD760000000
  %4850 = fmul fast float %4848, %4844
  %4851 = fmul fast float %4843, 0x3FDF454380000000
  %4852 = fmul fast float %4851, %4845
  %4853 = fadd fast float %4852, %4849
  %4854 = fadd fast float %4853, %4850
  %4855 = call float @dx.op.dot3.f32(i32 55, float %4840, float %4841, float %4842, float %3749, float %3750, float %3751)  ; Dot3(ax,ay,az,bx,by,bz)
  %4856 = fmul fast float %4855, 0x3FDF454380000000
  %4857 = fmul fast float %4855, %4855
  %4858 = fmul fast float %4857, 0x3FEE471020000000
  %4859 = fadd fast float %4858, 0xBFD42F6020000000
  %4860 = call float @dx.op.dot3.f32(i32 55, float %4805, float %4843, float %4844, float 0x3FD20DD760000000, float %4856, float %4859)  ; Dot3(ax,ay,az,bx,by,bz)
  %4861 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4721)  ; FMax(a,b)
  %4862 = call float @dx.op.dot3.f32(i32 55, float %4742, float %4745, float %4748, float %4742, float %4745, float %4748)  ; Dot3(ax,ay,az,bx,by,bz)
  %4863 = fcmp fast oeq float %4862, 0.000000e+00
  %4864 = fcmp fast oeq float %4861, 0.000000e+00
  %4865 = or i1 %4864, %4863
  br i1 %4865, label %4895, label %4866

; <label>:4866                                    ; preds = %4839
  %4867 = fsub fast float -0.000000e+00, %4748
  %4868 = fsub fast float -0.000000e+00, %4742
  %4869 = call float @dx.op.unary.f32(i32 24, float %4862)  ; Sqrt(value)
  %4870 = fdiv fast float %4869, %4861
  %4871 = fcmp fast ogt float %4870, 0x3FFB6F8900000000
  %4872 = select i1 %4871, float 0x3FFB6F8900000000, float %4870
  %4873 = fmul fast float %4872, 0x3FE8A23460000000
  %4874 = call float @dx.op.unary.f32(i32 7, float %4873)  ; Saturate(value)
  %4875 = call float @dx.op.binary.f32(i32 35, float %4872, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4876 = fmul fast float %4874, %4861
  %4877 = fmul fast float %4875, 0x3FF279A740000000
  %4878 = fadd fast float %4877, -1.000000e+00
  %4879 = call float @dx.op.dot3.f32(i32 55, float %4867, float %4868, float %4745, float %4867, float %4868, float %4745)  ; Dot3(ax,ay,az,bx,by,bz)
  %4880 = call float @dx.op.unary.f32(i32 25, float %4879)  ; Rsqrt(value)
  %4881 = fmul fast float %4880, %4867
  %4882 = fmul fast float %4880, %4868
  %4883 = fmul fast float %4880, %4745
  %4884 = fmul fast float %4878, %4878
  %4885 = fsub fast float 1.000000e+00, %4884
  %4886 = fmul fast float %4875, 0x40005F8BE0000000
  %4887 = fsub fast float 0x400C5BF8A0000000, %4886
  %4888 = fdiv fast float %4876, %4887
  %4889 = fmul fast float %4888, 0x3FEE31C3C0000000
  %4890 = fmul fast float %4889, %4885
  %4891 = fmul fast float %4875, 0x3FDACB7480000000
  %4892 = fadd fast float %4891, 0xBFD7347680000000
  %4893 = fmul fast float %4892, %4888
  %4894 = fmul fast float %4893, %4885
  br label %4895

; <label>:4895                                    ; preds = %4866, %4839
  %4896 = phi float [ %4881, %4866 ], [ 0.000000e+00, %4839 ]
  %4897 = phi float [ %4882, %4866 ], [ 0.000000e+00, %4839 ]
  %4898 = phi float [ %4883, %4866 ], [ 0.000000e+00, %4839 ]
  %4899 = phi float [ %4890, %4866 ], [ 0.000000e+00, %4839 ]
  %4900 = phi float [ %4894, %4866 ], [ 0.000000e+00, %4839 ]
  %4901 = call float @dx.op.dot3.f32(i32 55, float %4896, float %4897, float %4898, float %3733, float %3734, float %3735)  ; Dot3(ax,ay,az,bx,by,bz)
  %4902 = fmul fast float %4901, %4901
  %4903 = fmul fast float %4902, 0x3FEE471020000000
  %4904 = fadd fast float %4903, 0xBFD42F6020000000
  %4905 = fmul fast float %4861, 0x3FD20DD760000000
  %4906 = fmul fast float %4904, %4900
  %4907 = fmul fast float %4899, 0x3FDF454380000000
  %4908 = fmul fast float %4907, %4901
  %4909 = fadd fast float %4908, %4905
  %4910 = fadd fast float %4909, %4906
  %4911 = call float @dx.op.dot3.f32(i32 55, float %4896, float %4897, float %4898, float %3749, float %3750, float %3751)  ; Dot3(ax,ay,az,bx,by,bz)
  %4912 = fmul fast float %4911, 0x3FDF454380000000
  %4913 = fmul fast float %4911, %4911
  %4914 = fmul fast float %4913, 0x3FEE471020000000
  %4915 = fadd fast float %4914, 0xBFD42F6020000000
  %4916 = call float @dx.op.dot3.f32(i32 55, float %4861, float %4899, float %4900, float 0x3FD20DD760000000, float %4912, float %4915)  ; Dot3(ax,ay,az,bx,by,bz)
  %4917 = call float @dx.op.binary.f32(i32 35, float %4798, float 0.000000e+00)  ; FMax(a,b)
  %4918 = call float @dx.op.binary.f32(i32 35, float %4854, float 0.000000e+00)  ; FMax(a,b)
  %4919 = call float @dx.op.binary.f32(i32 35, float %4910, float 0.000000e+00)  ; FMax(a,b)
  %4920 = call float @dx.op.binary.f32(i32 35, float %4804, float 0.000000e+00)  ; FMax(a,b)
  %4921 = call float @dx.op.binary.f32(i32 35, float %4860, float 0.000000e+00)  ; FMax(a,b)
  %4922 = call float @dx.op.binary.f32(i32 35, float %4916, float 0.000000e+00)  ; FMax(a,b)
  %4923 = fsub fast float %4119, %4917
  %4924 = fsub fast float %4120, %4918
  %4925 = fsub fast float %4121, %4919
  %4926 = fmul fast float %4923, %3800
  %4927 = fmul fast float %4924, %3800
  %4928 = fmul fast float %4925, %3800
  %4929 = fadd fast float %4926, %4917
  %4930 = fadd fast float %4927, %4918
  %4931 = fadd fast float %4928, %4919
  %4932 = fsub fast float %4116, %4920
  %4933 = fsub fast float %4117, %4921
  %4934 = fsub fast float %4118, %4922
  %4935 = fmul fast float %4932, %3800
  %4936 = fmul fast float %4933, %3800
  %4937 = fmul fast float %4934, %3800
  %4938 = fadd fast float %4935, %4920
  %4939 = fadd fast float %4936, %4921
  %4940 = fadd fast float %4937, %4922
  br label %4941

; <label>:4941                                    ; preds = %4895, %4115
  %4942 = phi float [ %4938, %4895 ], [ %4116, %4115 ]
  %4943 = phi float [ %4939, %4895 ], [ %4117, %4115 ]
  %4944 = phi float [ %4940, %4895 ], [ %4118, %4115 ]
  %4945 = phi float [ %4929, %4895 ], [ %4119, %4115 ]
  %4946 = phi float [ %4930, %4895 ], [ %4120, %4115 ]
  %4947 = phi float [ %4931, %4895 ], [ %4121, %4115 ]
  %4948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.f32 %4948, 0
  %4950 = call float @dx.op.binary.f32(i32 36, float %3730, float %4949)  ; FMin(a,b)
  %4951 = fsub fast float 1.000000e+00, %3752
  %4952 = fmul fast float %4950, %4951
  %4953 = fsub fast float 1.000000e+00, %4952
  %4954 = bitcast float %4953 to i32
  %4955 = sub nsw i32 2129859010, %4954
  %4956 = bitcast i32 %4955 to float
  %4957 = call float @dx.op.binary.f32(i32 36, float %3731, float %4949)  ; FMin(a,b)
  %4958 = fmul fast float %4957, %4951
  %4959 = fsub fast float 1.000000e+00, %4958
  %4960 = bitcast float %4959 to i32
  %4961 = sub nsw i32 2129859010, %4960
  %4962 = bitcast i32 %4961 to float
  %4963 = call float @dx.op.binary.f32(i32 36, float %3732, float %4949)  ; FMin(a,b)
  %4964 = fmul fast float %4963, %4951
  %4965 = fsub fast float 1.000000e+00, %4964
  %4966 = bitcast float %4965 to i32
  %4967 = sub nsw i32 2129859010, %4966
  %4968 = bitcast i32 %4967 to float
  %4969 = fmul fast float %4945, %3752
  %4970 = fmul fast float %4969, %4956
  %4971 = fmul fast float %4946, %3752
  %4972 = fmul fast float %4971, %4962
  %4973 = fmul fast float %4947, %3752
  %4974 = fmul fast float %4973, %4968
  %4975 = call float @dx.op.binary.f32(i32 36, float %3736, float %4949)  ; FMin(a,b)
  %4976 = fmul fast float %4975, %4951
  %4977 = fsub fast float 1.000000e+00, %4976
  %4978 = bitcast float %4977 to i32
  %4979 = sub nsw i32 2129859010, %4978
  %4980 = bitcast i32 %4979 to float
  %4981 = call float @dx.op.binary.f32(i32 36, float %3737, float %4949)  ; FMin(a,b)
  %4982 = fmul fast float %4981, %4951
  %4983 = fsub fast float 1.000000e+00, %4982
  %4984 = bitcast float %4983 to i32
  %4985 = sub nsw i32 2129859010, %4984
  %4986 = bitcast i32 %4985 to float
  %4987 = call float @dx.op.binary.f32(i32 36, float %3741, float %4949)  ; FMin(a,b)
  %4988 = fmul fast float %4987, %4951
  %4989 = fsub fast float 1.000000e+00, %4988
  %4990 = bitcast float %4989 to i32
  %4991 = sub nsw i32 2129859010, %4990
  %4992 = bitcast i32 %4991 to float
  %4993 = fmul fast float %4942, %3752
  %4994 = fmul fast float %4993, %4980
  %4995 = fmul fast float %4943, %3752
  %4996 = fmul fast float %4995, %4986
  %4997 = fmul fast float %4944, %3752
  %4998 = fmul fast float %4997, %4992
  %4999 = call float @dx.op.dot3.f32(i32 55, float %4970, float %4972, float %4974, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5000 = select i1 %196, float 0.000000e+00, float %4970
  %5001 = select i1 %196, float %4999, float %4972
  %5002 = select i1 %196, float 0.000000e+00, float %4974
  %5003 = call float @dx.op.dot3.f32(i32 55, float %4994, float %4996, float %4998, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5004 = select i1 %196, float 0.000000e+00, float %4994
  %5005 = select i1 %196, float %5003, float %4996
  %5006 = select i1 %196, float 0.000000e+00, float %4998
  %5007 = fmul fast float %3743, 9.843750e-01
  %5008 = fmul fast float %3739, 9.843750e-01
  %5009 = fadd fast float %5007, 7.812500e-03
  %5010 = fadd fast float %5008, 7.812500e-03
  %5011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5009, float %5010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5012 = extractvalue %dx.types.ResRet.f32 %5011, 2
  %5013 = extractvalue %dx.types.ResRet.f32 %5011, 3
  %5014 = fmul fast float %5012, %3736
  %5015 = fmul fast float %5012, %3737
  %5016 = fmul fast float %5012, %3741
  %5017 = fadd fast float %5014, %5013
  %5018 = fadd fast float %5015, %5013
  %5019 = fadd fast float %5016, %5013
  %5020 = fcmp fast ogt float %3107, 0.000000e+00
  br i1 %5020, label %5021, label %5047

; <label>:5021                                    ; preds = %4941
  %5022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3107, float %3743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5023 = extractvalue %dx.types.ResRet.f32 %5022, 0
  %5024 = extractvalue %dx.types.ResRet.f32 %5022, 1
  %5025 = extractvalue %dx.types.ResRet.f32 %5022, 2
  %5026 = fadd fast float %5023, -5.000000e-01
  %5027 = fadd fast float %5024, -5.000000e-01
  %5028 = fadd fast float %5025, -5.000000e-01
  %5029 = fsub fast float 1.000000e+00, %3736
  %5030 = fsub fast float 1.000000e+00, %3737
  %5031 = fsub fast float 1.000000e+00, %3741
  %5032 = fmul fast float %3736, 4.000000e+00
  %5033 = fmul fast float %5032, %5029
  %5034 = fmul fast float %5033, %5026
  %5035 = fmul fast float %3737, 4.000000e+00
  %5036 = fmul fast float %5035, %5030
  %5037 = fmul fast float %5036, %5027
  %5038 = fmul fast float %3741, 4.000000e+00
  %5039 = fmul fast float %5038, %5031
  %5040 = fmul fast float %5039, %5028
  %5041 = fadd fast float %5034, %5017
  %5042 = fadd fast float %5037, %5018
  %5043 = fadd fast float %5040, %5019
  %5044 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  %5045 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5046 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  br label %5047

; <label>:5047                                    ; preds = %5021, %4941
  %5048 = phi float [ %5044, %5021 ], [ %5017, %4941 ]
  %5049 = phi float [ %5045, %5021 ], [ %5018, %4941 ]
  %5050 = phi float [ %5046, %5021 ], [ %5019, %4941 ]
  %5051 = call float @dx.op.binary.f32(i32 35, float %5049, float %5050)  ; FMax(a,b)
  %5052 = call float @dx.op.binary.f32(i32 35, float %5048, float %5051)  ; FMax(a,b)
  %5053 = fsub fast float 1.000000e+00, %5052
  %5054 = fmul fast float %5053, %5000
  %5055 = fmul fast float %5053, %5001
  %5056 = fmul fast float %5053, %5002
  %5057 = call float @dx.op.dot3.f32(i32 55, float %3730, float %3731, float %3732, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5058 = fcmp fast ogt float %5057, 0x3E7FF19E20000000
  %5059 = fdiv fast float 1.000000e+00, %5057
  %5060 = select i1 %5058, float %5059, float 0.000000e+00
  %5061 = fmul fast float %5060, %3730
  %5062 = fmul fast float %5060, %3731
  %5063 = fmul fast float %5060, %3732
  %5064 = fadd fast float %5061, -1.000000e+00
  %5065 = fadd fast float %5062, -1.000000e+00
  %5066 = fadd fast float %5063, -1.000000e+00
  %5067 = fmul fast float %5064, 5.000000e-01
  %5068 = fmul fast float %5065, 5.000000e-01
  %5069 = fmul fast float %5066, 5.000000e-01
  %5070 = fadd fast float %5067, 1.000000e+00
  %5071 = fadd fast float %5068, 1.000000e+00
  %5072 = fadd fast float %5069, 1.000000e+00
  %5073 = fmul fast float %5048, %5004
  %5074 = fmul fast float %5049, %5005
  %5075 = fmul fast float %5050, %5006
  %5076 = fsub fast float 1.000000e+00, %3743
  %5077 = bitcast float %5076 to i32
  %5078 = sitofp i32 %5077 to float
  %5079 = fmul fast float %5078, 5.000000e+00
  %5080 = fadd fast float %5079, 0xC1EFBF8940000000
  %5081 = fptosi float %5080 to i32
  %5082 = bitcast i32 %5081 to float
  %5083 = fmul fast float %5082, %3106
  %5084 = fmul fast float %5000, %5083
  %5085 = fmul fast float %5084, %5053
  %5086 = fmul fast float %5085, %5070
  %5087 = fmul fast float %5001, %5083
  %5088 = fmul fast float %5087, %5053
  %5089 = fmul fast float %5088, %5071
  %5090 = fmul fast float %5002, %5083
  %5091 = fmul fast float %5090, %5053
  %5092 = fmul fast float %5091, %5072
  %5093 = fmul fast float %5054, %3127
  %5094 = fmul fast float %5055, %3127
  %5095 = fmul fast float %5056, %3127
  %5096 = fadd fast float %5073, %3108
  %5097 = fadd fast float %5096, %5086
  %5098 = fmul fast float %5097, %3127
  %5099 = fadd fast float %5074, %3109
  %5100 = fadd fast float %5099, %5089
  %5101 = fmul fast float %5100, %3127
  %5102 = fadd fast float %5075, %3110
  %5103 = fadd fast float %5102, %5092
  %5104 = fmul fast float %5103, %3127
  %5105 = bitcast i32 %3755 to float
  %5106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.f32 %5106, 3
  %5108 = fcmp fast oeq float %5107, 0.000000e+00
  br i1 %5108, label %5343, label %5109

; <label>:5109                                    ; preds = %5047
  %5110 = extractvalue %dx.types.CBufRet.f32 %5106, 0
  %5111 = extractvalue %dx.types.CBufRet.f32 %5106, 1
  %5112 = extractvalue %dx.types.CBufRet.f32 %5106, 2
  %5113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.f32 %5113, 3
  %5115 = extractvalue %dx.types.CBufRet.f32 %5113, 0
  %5116 = extractvalue %dx.types.CBufRet.f32 %5113, 1
  %5117 = extractvalue %dx.types.CBufRet.f32 %5113, 2
  %5118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5119 = extractvalue %dx.types.CBufRet.f32 %5118, 0
  %5120 = extractvalue %dx.types.CBufRet.f32 %5118, 1
  %5121 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5116, float %5117, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5122 = select i1 %196, float %5119, float %5115
  %5123 = select i1 %196, float %5121, float %5116
  %5124 = select i1 %196, float %5120, float %5117
  %5125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5126 = extractvalue %dx.types.CBufRet.f32 %5125, 1
  %5127 = fcmp fast une float %5126, 0.000000e+00
  br i1 %5127, label %5128, label %5145

; <label>:5128                                    ; preds = %5109
  %5129 = fptoui float %78 to i32
  %5130 = fptoui float %79 to i32
  %5131 = lshr i32 %5129, 4
  %5132 = lshr i32 %5130, 4
  %5133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.f32 %5133, 0
  %5135 = fptoui float %5134 to i32
  %5136 = add i32 %5135, 15
  %5137 = lshr i32 %5136, 4
  %5138 = mul i32 %5137, %5132
  %5139 = add i32 %5138, %5131
  %5140 = shl i32 %5139, 3
  %5141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5140, i32 undef)  ; BufferLoad(srv,index,wot)
  %5142 = extractvalue %dx.types.ResRet.i32 %5141, 0
  %5143 = and i32 %5142, -268435456
  %5144 = icmp eq i32 %5143, -1342177280
  br i1 %5144, label %5155, label %5145

; <label>:5145                                    ; preds = %5128, %5109
  %5146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5147 = extractvalue %dx.types.CBufRet.f32 %5146, 2
  %5148 = extractvalue %dx.types.CBufRet.f32 %5146, 3
  %5149 = fmul fast float %5147, %78
  %5150 = fmul fast float %5148, %79
  %5151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %5149, float %5150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5152 = extractvalue %dx.types.ResRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.ResRet.f32 %5151, 1
  %5154 = extractvalue %dx.types.ResRet.f32 %5151, 2
  br label %5155

; <label>:5155                                    ; preds = %5145, %5128
  %5156 = phi float [ %5152, %5145 ], [ 0.000000e+00, %5128 ]
  %5157 = phi float [ %5153, %5145 ], [ 0.000000e+00, %5128 ]
  %5158 = phi float [ %5154, %5145 ], [ 0.000000e+00, %5128 ]
  %5159 = call float @dx.op.binary.f32(i32 36, float %5157, float %5158)  ; FMin(a,b)
  %5160 = call float @dx.op.binary.f32(i32 36, float %5156, float %5159)  ; FMin(a,b)
  %5161 = fcmp fast ogt float %5160, 0.000000e+00
  br i1 %5161, label %5162, label %5343, !dx.controlflow.hints !92

; <label>:5162                                    ; preds = %5155
  %5163 = fmul fast float %5156, %5122
  %5164 = fmul fast float %5157, %5123
  %5165 = fmul fast float %5158, %5124
  %5166 = fsub fast float %5110, %3729
  %5167 = fsub fast float %5111, %3728
  %5168 = fsub fast float %5112, %3727
  %5169 = call float @dx.op.dot3.f32(i32 55, float %5166, float %5167, float %5168, float %5166, float %5167, float %5168)  ; Dot3(ax,ay,az,bx,by,bz)
  %5170 = call float @dx.op.unary.f32(i32 25, float %5169)  ; Rsqrt(value)
  %5171 = fmul fast float %5170, %5166
  %5172 = fmul fast float %5170, %5167
  %5173 = fmul fast float %5170, %5168
  %5174 = call float @dx.op.dot3.f32(i32 55, float %5110, float %5111, float %5112, float %3733, float %3734, float %3735)  ; Dot3(ax,ay,az,bx,by,bz)
  %5175 = call float @dx.op.dot3.f32(i32 55, float %3726, float %3725, float %3724, float %5171, float %5172, float %5173)  ; Dot3(ax,ay,az,bx,by,bz)
  %5176 = call float @dx.op.unary.f32(i32 7, float %5174)  ; Saturate(value)
  %5177 = fmul fast float %5176, %5176
  %5178 = fmul fast float %5177, %5105
  %5179 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  %5180 = fmul fast float %5179, %5176
  %5181 = call float @dx.op.dot3.f32(i32 55, float %3733, float %3734, float %3735, float %5171, float %5172, float %5173)  ; Dot3(ax,ay,az,bx,by,bz)
  %5182 = fmul fast float %5181, %5181
  %5183 = call float @dx.op.unary.f32(i32 6, float %5174)  ; FAbs(value)
  %5184 = fsub fast float 1.000000e+00, %3739
  %5185 = call float @dx.op.binary.f32(i32 35, float %5184, float 0x3F847AE140000000)  ; FMax(a,b)
  %5186 = fmul fast float %5185, %5185
  %5187 = fmul fast float %5186, %5186
  %5188 = fsub fast float 1.000000e+00, %5187
  %5189 = fmul fast float %3743, %3743
  %5190 = fmul fast float %5189, %5188
  %5191 = fadd fast float %5190, %5187
  %5192 = bitcast float %5191 to i32
  %5193 = ashr i32 %5192, 1
  %5194 = add nsw i32 %5193, 532487669
  %5195 = bitcast i32 %5194 to float
  %5196 = fadd fast float %5195, %3743
  %5197 = fmul fast float %5187, %5182
  %5198 = fsub fast float 1.000000e+00, %5182
  %5199 = fadd fast float %5198, %5197
  %5200 = fmul fast float %5183, %5183
  %5201 = fmul fast float %5200, %5188
  %5202 = fadd fast float %5201, %5187
  %5203 = bitcast float %5202 to i32
  %5204 = ashr i32 %5203, 1
  %5205 = add nsw i32 %5204, 532487669
  %5206 = bitcast i32 %5205 to float
  %5207 = fadd fast float %5206, %5183
  %5208 = fmul fast float %5199, %5199
  %5209 = fmul fast float %5208, %5196
  %5210 = fmul fast float %5209, %5207
  %5211 = fdiv fast float 0x3FF0A00000000000, %5210
  %5212 = fmul fast float %5211, %5187
  %5213 = call float @dx.op.unary.f32(i32 6, float %5175)  ; FAbs(value)
  %5214 = fsub fast float 1.000000e+00, %5213
  %5215 = bitcast float %5214 to i32
  %5216 = sitofp i32 %5215 to float
  %5217 = fmul fast float %5216, 5.000000e+00
  %5218 = fadd fast float %5217, 0xC1EFBF8940000000
  %5219 = fptosi float %5218 to i32
  %5220 = bitcast i32 %5219 to float
  %5221 = fsub fast float 1.000000e+00, %3736
  %5222 = fsub fast float 1.000000e+00, %3737
  %5223 = fsub fast float 1.000000e+00, %3741
  %5224 = fmul fast float %5220, %5221
  %5225 = fmul fast float %5220, %5222
  %5226 = fmul fast float %5220, %5223
  %5227 = fadd fast float %5224, %3736
  %5228 = fadd fast float %5225, %3737
  %5229 = fadd fast float %5226, %3741
  br i1 %5020, label %5230, label %5253

; <label>:5230                                    ; preds = %5162
  %5231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3107, float %5213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5232 = extractvalue %dx.types.ResRet.f32 %5231, 0
  %5233 = extractvalue %dx.types.ResRet.f32 %5231, 1
  %5234 = extractvalue %dx.types.ResRet.f32 %5231, 2
  %5235 = fadd fast float %5232, -5.000000e-01
  %5236 = fadd fast float %5233, -5.000000e-01
  %5237 = fadd fast float %5234, -5.000000e-01
  %5238 = fmul fast float %3736, 4.000000e+00
  %5239 = fmul fast float %5238, %5221
  %5240 = fmul fast float %5239, %5235
  %5241 = fmul fast float %3737, 4.000000e+00
  %5242 = fmul fast float %5241, %5222
  %5243 = fmul fast float %5242, %5236
  %5244 = fmul fast float %3741, 4.000000e+00
  %5245 = fmul fast float %5244, %5223
  %5246 = fmul fast float %5245, %5237
  %5247 = fadd fast float %5240, %5227
  %5248 = fadd fast float %5243, %5228
  %5249 = fadd fast float %5246, %5229
  %5250 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5251 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5252 = call float @dx.op.unary.f32(i32 7, float %5249)  ; Saturate(value)
  br label %5253

; <label>:5253                                    ; preds = %5230, %5162
  %5254 = phi float [ %5250, %5230 ], [ %5227, %5162 ]
  %5255 = phi float [ %5251, %5230 ], [ %5228, %5162 ]
  %5256 = phi float [ %5252, %5230 ], [ %5229, %5162 ]
  %5257 = fmul fast float %5174, 9.843750e-01
  %5258 = fadd fast float %5257, 7.812500e-03
  %5259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5258, float %5010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5260 = extractvalue %dx.types.ResRet.f32 %5259, 2
  %5261 = extractvalue %dx.types.ResRet.f32 %5259, 3
  %5262 = fmul fast float %5260, %3736
  %5263 = fmul fast float %5260, %3737
  %5264 = fmul fast float %5260, %3741
  %5265 = fadd fast float %5262, %5261
  %5266 = fadd fast float %5263, %5261
  %5267 = fadd fast float %5264, %5261
  br i1 %5020, label %5268, label %5291

; <label>:5268                                    ; preds = %5253
  %5269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3107, float %5174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5270 = extractvalue %dx.types.ResRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.ResRet.f32 %5269, 1
  %5272 = extractvalue %dx.types.ResRet.f32 %5269, 2
  %5273 = fadd fast float %5270, -5.000000e-01
  %5274 = fadd fast float %5271, -5.000000e-01
  %5275 = fadd fast float %5272, -5.000000e-01
  %5276 = fmul fast float %3736, 4.000000e+00
  %5277 = fmul fast float %5276, %5221
  %5278 = fmul fast float %5277, %5273
  %5279 = fmul fast float %3737, 4.000000e+00
  %5280 = fmul fast float %5279, %5222
  %5281 = fmul fast float %5280, %5274
  %5282 = fmul fast float %3741, 4.000000e+00
  %5283 = fmul fast float %5282, %5223
  %5284 = fmul fast float %5283, %5275
  %5285 = fadd fast float %5278, %5265
  %5286 = fadd fast float %5281, %5266
  %5287 = fadd fast float %5284, %5267
  %5288 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5289 = call float @dx.op.unary.f32(i32 7, float %5286)  ; Saturate(value)
  %5290 = call float @dx.op.unary.f32(i32 7, float %5287)  ; Saturate(value)
  br label %5291

; <label>:5291                                    ; preds = %5268, %5253
  %5292 = phi float [ %5288, %5268 ], [ %5265, %5253 ]
  %5293 = phi float [ %5289, %5268 ], [ %5266, %5253 ]
  %5294 = phi float [ %5290, %5268 ], [ %5267, %5253 ]
  %5295 = call float @dx.op.binary.f32(i32 35, float %5293, float %5294)  ; FMax(a,b)
  %5296 = call float @dx.op.binary.f32(i32 35, float %5292, float %5295)  ; FMax(a,b)
  %5297 = fsub fast float 1.000000e+00, %5296
  %5298 = fmul fast float %5254, %5212
  %5299 = fmul fast float %5255, %5212
  %5300 = fmul fast float %5256, %5212
  %5301 = fsub fast float 1.000000e+00, %5175
  %5302 = bitcast float %5301 to i32
  %5303 = sitofp i32 %5302 to float
  %5304 = fmul fast float %5303, 5.000000e+00
  %5305 = fadd fast float %5304, 0xC1EFBF8940000000
  %5306 = fptosi float %5305 to i32
  %5307 = bitcast i32 %5306 to float
  %5308 = fmul fast float %5307, %3106
  %5309 = fmul fast float %5297, %5308
  %5310 = fmul fast float %5309, %5070
  %5311 = fmul fast float %5309, %5071
  %5312 = fmul fast float %5309, %5072
  %5313 = fmul fast float %5114, %2583
  %5314 = fmul fast float %5114, %2584
  %5315 = fmul fast float %5114, %2585
  %5316 = fadd fast float %5298, %5313
  %5317 = fadd fast float %5316, %5310
  %5318 = fadd fast float %5299, %5314
  %5319 = fadd fast float %5318, %5311
  %5320 = fadd fast float %5300, %5315
  %5321 = fadd fast float %5320, %5312
  %5322 = fmul fast float %5180, %5163
  %5323 = fmul fast float %5322, %5297
  %5324 = fmul fast float %5180, %5164
  %5325 = fmul fast float %5324, %5297
  %5326 = fmul fast float %5180, %5165
  %5327 = fmul fast float %5326, %5297
  %5328 = fmul fast float %5322, %5317
  %5329 = fmul fast float %5324, %5319
  %5330 = fmul fast float %5326, %5321
  %5331 = fadd fast float %5323, %5054
  %5332 = fmul fast float %5331, %3127
  %5333 = fadd fast float %5325, %5055
  %5334 = fmul fast float %5333, %3127
  %5335 = fadd fast float %5327, %5056
  %5336 = fmul fast float %5335, %3127
  %5337 = fadd fast float %5328, %5097
  %5338 = fmul fast float %5337, %3127
  %5339 = fadd fast float %5329, %5100
  %5340 = fmul fast float %5339, %3127
  %5341 = fadd fast float %5330, %5103
  %5342 = fmul fast float %5341, %3127
  br label %5343

; <label>:5343                                    ; preds = %5291, %5155, %5047
  %5344 = phi float [ %5098, %5047 ], [ %5098, %5155 ], [ %5338, %5291 ]
  %5345 = phi float [ %5101, %5047 ], [ %5101, %5155 ], [ %5340, %5291 ]
  %5346 = phi float [ %5104, %5047 ], [ %5104, %5155 ], [ %5342, %5291 ]
  %5347 = phi float [ %5093, %5047 ], [ %5093, %5155 ], [ %5332, %5291 ]
  %5348 = phi float [ %5094, %5047 ], [ %5094, %5155 ], [ %5334, %5291 ]
  %5349 = phi float [ %5095, %5047 ], [ %5095, %5155 ], [ %5336, %5291 ]
  %5350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5351 = extractvalue %dx.types.CBufRet.i32 %5350, 0
  %5352 = icmp eq i32 %5351, 0
  br i1 %5352, label %5794, label %5353

; <label>:5353                                    ; preds = %5343
  %5354 = fptoui float %78 to i32
  %5355 = fptoui float %79 to i32
  %5356 = lshr i32 %5354, 4
  %5357 = lshr i32 %5355, 4
  %5358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5359 = extractvalue %dx.types.CBufRet.i32 %5358, 0
  %5360 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5357, i32 %5359, i32 %5356)  ; UMad(a,b,c)
  %5361 = add nsw i32 %5351, -1
  %5362 = call i32 @dx.op.binary.i32(i32 37, i32 %5361, i32 0)  ; IMax(a,b)
  %5363 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5364 = fptoui float %5363 to i32
  %5365 = lshr i32 %5364, 5
  %5366 = call i32 @dx.op.binary.i32(i32 40, i32 %5365, i32 8191)  ; UMin(a,b)
  %5367 = shl i32 %5366, 2
  %5368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5367, i32 undef)  ; BufferLoad(srv,index,wot)
  %5369 = extractvalue %dx.types.ResRet.i32 %5368, 0
  %5370 = lshr i32 %5369, 16
  %5371 = and i32 %5369, 65535
  %5372 = lshr i32 %5369, 21
  %5373 = lshr i32 %5371, 5
  %5374 = call i32 @dx.op.binary.i32(i32 40, i32 %5373, i32 %5362)  ; UMin(a,b)
  %5375 = icmp ugt i32 %5372, %5374
  br i1 %5375, label %5794, label %5376

; <label>:5376                                    ; preds = %5353
  br label %5377

; <label>:5377                                    ; preds = %5784, %5376
  %5378 = phi i32 [ %5791, %5784 ], [ %5372, %5376 ]
  %5379 = phi float [ %5785, %5784 ], [ %5344, %5376 ]
  %5380 = phi float [ %5786, %5784 ], [ %5345, %5376 ]
  %5381 = phi float [ %5787, %5784 ], [ %5346, %5376 ]
  %5382 = phi float [ %5788, %5784 ], [ %5347, %5376 ]
  %5383 = phi float [ %5789, %5784 ], [ %5348, %5376 ]
  %5384 = phi float [ %5790, %5784 ], [ %5349, %5376 ]
  %5385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5386 = extractvalue %dx.types.CBufRet.i32 %5385, 0
  %5387 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5360, i32 %5386, i32 %5378)  ; UMad(a,b,c)
  %5388 = shl i32 %5387, 2
  %5389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5388, i32 undef)  ; BufferLoad(srv,index,wot)
  %5390 = extractvalue %dx.types.ResRet.i32 %5389, 0
  %5391 = shl i32 %5378, 5
  %5392 = sub nsw i32 %5370, %5391
  %5393 = call i32 @dx.op.binary.i32(i32 37, i32 %5392, i32 0)  ; IMax(a,b)
  %5394 = call i32 @dx.op.binary.i32(i32 38, i32 %5393, i32 31)  ; IMin(a,b)
  %5395 = sub nsw i32 1, %5370
  %5396 = add nsw i32 %5395, %5371
  %5397 = call i32 @dx.op.binary.i32(i32 37, i32 %5396, i32 0)  ; IMax(a,b)
  %5398 = call i32 @dx.op.binary.i32(i32 38, i32 %5397, i32 32)  ; IMin(a,b)
  %5399 = and i32 %5398, 31
  %5400 = shl i32 -1, %5399
  %5401 = xor i32 %5400, -1
  %5402 = and i32 %5394, 31
  %5403 = shl i32 %5401, %5402
  %5404 = icmp eq i32 %5398, 32
  %5405 = select i1 %5404, i32 -1, i32 %5403
  %5406 = and i32 %5405, %5390
  %5407 = icmp eq i32 %5406, 0
  br i1 %5407, label %5784, label %5408

; <label>:5408                                    ; preds = %5377
  br label %5409

; <label>:5409                                    ; preds = %5490, %5408
  %5410 = phi i32 [ %5421, %5490 ], [ %5406, %5408 ]
  %5411 = phi float [ %5491, %5490 ], [ %5379, %5408 ]
  %5412 = phi float [ %5492, %5490 ], [ %5380, %5408 ]
  %5413 = phi float [ %5493, %5490 ], [ %5381, %5408 ]
  %5414 = phi float [ %5494, %5490 ], [ %5382, %5408 ]
  %5415 = phi float [ %5495, %5490 ], [ %5383, %5408 ]
  %5416 = phi float [ %5496, %5490 ], [ %5384, %5408 ]
  %5417 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5410)  ; FirstbitLo(value)
  %5418 = add i32 %5417, %5391
  %5419 = and i32 %5417, 31
  %5420 = shl i32 1, %5419
  %5421 = xor i32 %5420, %5410
  %5422 = mul i32 %5418, 112
  %5423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5422, i32 undef)  ; BufferLoad(srv,index,wot)
  %5424 = extractvalue %dx.types.ResRet.f32 %5423, 0
  %5425 = extractvalue %dx.types.ResRet.f32 %5423, 1
  %5426 = extractvalue %dx.types.ResRet.f32 %5423, 2
  %5427 = or i32 %5422, 12
  %5428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5427, i32 undef)  ; BufferLoad(srv,index,wot)
  %5429 = extractvalue %dx.types.ResRet.f32 %5428, 0
  %5430 = add i32 %5422, 44
  %5431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5430, i32 undef)  ; BufferLoad(srv,index,wot)
  %5432 = extractvalue %dx.types.ResRet.f32 %5431, 0
  %5433 = add i32 %5422, 48
  %5434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5433, i32 undef)  ; BufferLoad(srv,index,wot)
  %5435 = extractvalue %dx.types.ResRet.f32 %5434, 0
  %5436 = extractvalue %dx.types.ResRet.f32 %5434, 1
  %5437 = extractvalue %dx.types.ResRet.f32 %5434, 2
  %5438 = add i32 %5422, 80
  %5439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5438, i32 undef)  ; BufferLoad(srv,index,wot)
  %5440 = extractvalue %dx.types.ResRet.f32 %5439, 0
  %5441 = extractvalue %dx.types.ResRet.f32 %5439, 1
  %5442 = extractvalue %dx.types.ResRet.f32 %5439, 2
  %5443 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5425, float %5426, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5444 = select i1 %196, float %5441, float %5424
  %5445 = select i1 %196, float %5443, float %5425
  %5446 = select i1 %196, float %5442, float %5426
  %5447 = fsub fast float %5435, %125
  %5448 = fsub fast float %5436, %126
  %5449 = fsub fast float %5437, %127
  %5450 = call float @dx.op.dot3.f32(i32 55, float %5447, float %5448, float %5449, float %5447, float %5448, float %5449)  ; Dot3(ax,ay,az,bx,by,bz)
  %5451 = call float @dx.op.unary.f32(i32 24, float %5450)  ; Sqrt(value)
  %5452 = fdiv fast float 1.000000e+00, %5451
  %5453 = fmul fast float %5452, %5447
  %5454 = fmul fast float %5452, %5448
  %5455 = fmul fast float %5452, %5449
  %5456 = fadd fast float %5451, %5429
  %5457 = fdiv fast float 1.000000e+00, %5456
  %5458 = fmul float %5432, %5457
  %5459 = fmul float %5458, %5458
  %5460 = call float @dx.op.unary.f32(i32 7, float %5459)  ; Saturate(value)
  %5461 = and i32 %5420, %5406
  %5462 = icmp eq i32 %5461, 0
  br i1 %5462, label %5485, label %5463, !dx.controlflow.hints !93

; <label>:5463                                    ; preds = %5409
  %5464 = lshr i32 %5354, 5
  %5465 = lshr i32 %5355, 5
  %5466 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %5464, i32 %5465, i32 %5418, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5467 = extractvalue %dx.types.ResRet.i32 %5466, 0
  %5468 = and i32 %5467, 3
  %5469 = icmp eq i32 %5468, 0
  %5470 = select i1 %5469, float 1.000000e+00, float 0.000000e+00
  %5471 = icmp eq i32 %5468, 3
  br i1 %5471, label %5472, label %5485

; <label>:5472                                    ; preds = %5463
  %5473 = lshr i32 %5467, 10
  %5474 = and i32 %5473, 8160
  %5475 = and i32 %5355, 31
  %5476 = or i32 %5474, %5475
  %5477 = lshr i32 %5467, 1
  %5478 = and i32 %5477, 16352
  %5479 = and i32 %5354, 31
  %5480 = or i32 %5478, %5479
  %5481 = lshr i32 %5467, 23
  %5482 = and i32 %5481, 255
  %5483 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %5480, i32 %5476, i32 %5482, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5484 = extractvalue %dx.types.ResRet.f32 %5483, 0
  br label %5485

; <label>:5485                                    ; preds = %5472, %5463, %5409
  %5486 = phi float [ %5484, %5472 ], [ %5470, %5463 ], [ 0.000000e+00, %5409 ]
  %5487 = call float @dx.op.binary.f32(i32 36, float %5486, float %5486)  ; FMin(a,b)
  %5488 = call float @dx.op.binary.f32(i32 36, float %5486, float %5487)  ; FMin(a,b)
  %5489 = fcmp fast ogt float %5488, 0.000000e+00
  br i1 %5489, label %5498, label %5490, !dx.controlflow.hints !94

; <label>:5490                                    ; preds = %5734, %5485
  %5491 = phi float [ %5411, %5485 ], [ %5780, %5734 ]
  %5492 = phi float [ %5412, %5485 ], [ %5781, %5734 ]
  %5493 = phi float [ %5413, %5485 ], [ %5782, %5734 ]
  %5494 = phi float [ %5414, %5485 ], [ %5774, %5734 ]
  %5495 = phi float [ %5415, %5485 ], [ %5775, %5734 ]
  %5496 = phi float [ %5416, %5485 ], [ %5776, %5734 ]
  %5497 = icmp eq i32 %5410, %5420
  br i1 %5497, label %5783, label %5409

; <label>:5498                                    ; preds = %5485
  %5499 = fmul fast float %5486, %5444
  %5500 = fmul fast float %5486, %5445
  %5501 = fmul fast float %5486, %5446
  %5502 = fsub fast float %5437, %3529
  %5503 = fcmp fast ogt float %5502, 0.000000e+00
  %5504 = fsub fast float %127, %3529
  %5505 = fcmp fast ogt float %5504, 0.000000e+00
  %5506 = xor i1 %5505, %5503
  %5507 = fsub fast float %3529, %5437
  %5508 = fmul fast float %5507, 2.000000e+00
  %5509 = fadd fast float %5508, %5437
  %5510 = select i1 %5506, float %5437, float %5509
  %5511 = fsub fast float %5510, %127
  %5512 = call float @dx.op.dot3.f32(i32 55, float %5447, float %5448, float %5511, float %5447, float %5448, float %5511)  ; Dot3(ax,ay,az,bx,by,bz)
  %5513 = call float @dx.op.unary.f32(i32 25, float %5512)  ; Rsqrt(value)
  %5514 = fmul fast float %5513, %5447
  %5515 = fmul fast float %5513, %5448
  %5516 = fmul fast float %5513, %5511
  %5517 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3537)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5514, float %5515, float %5516)  ; Dot3(ax,ay,az,bx,by,bz)
  %5519 = fdiv fast float 1.000000e+00, %5518
  %5520 = fmul fast float %5519, %5517
  %5521 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5504, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5522 = fcmp fast ogt float %5521, 0.000000e+00
  %5523 = fcmp fast olt float %5521, 0.000000e+00
  %5524 = zext i1 %5522 to i32
  %5525 = zext i1 %5523 to i32
  %5526 = sub nsw i32 %5524, %5525
  %5527 = sitofp i32 %5526 to float
  %5528 = fsub fast float %5510, %3529
  %5529 = call float @dx.op.dot3.f32(i32 55, float %5447, float %5448, float %5528, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5530 = fcmp fast ogt float %5529, 0.000000e+00
  %5531 = fcmp fast olt float %5529, 0.000000e+00
  %5532 = zext i1 %5530 to i32
  %5533 = zext i1 %5531 to i32
  %5534 = sub nsw i32 %5532, %5533
  %5535 = sitofp i32 %5534 to float
  %5536 = fcmp fast une float %5527, %5535
  br i1 %5536, label %5537, label %5547

; <label>:5537                                    ; preds = %5498
  %5538 = fmul fast float %5520, %5516
  %5539 = fmul fast float %5520, %5515
  %5540 = fmul fast float %5520, %5514
  %5541 = fmul fast float %5540, %5540
  %5542 = fmul fast float %5539, %5539
  %5543 = fadd fast float %5541, %5542
  %5544 = fmul fast float %5538, %5538
  %5545 = fadd fast float %5543, %5544
  %5546 = call float @dx.op.unary.f32(i32 24, float %5545)  ; Sqrt(value)
  br label %5559

; <label>:5547                                    ; preds = %5498
  %5548 = icmp slt i32 %5526, 0
  br i1 %5548, label %5549, label %5559

; <label>:5549                                    ; preds = %5547
  %5550 = fsub fast float %125, %5435
  %5551 = fsub fast float %126, %5436
  %5552 = fsub fast float %127, %5510
  %5553 = fmul fast float %5550, %5550
  %5554 = fmul fast float %5551, %5551
  %5555 = fadd fast float %5553, %5554
  %5556 = fmul fast float %5552, %5552
  %5557 = fadd fast float %5555, %5556
  %5558 = call float @dx.op.unary.f32(i32 24, float %5557)  ; Sqrt(value)
  br label %5559

; <label>:5559                                    ; preds = %5549, %5547, %5537
  %5560 = phi float [ %5546, %5537 ], [ %5558, %5549 ], [ 0.000000e+00, %5547 ]
  %5561 = and i1 %5505, %5503
  %5562 = fsub fast float -0.000000e+00, %5560
  %5563 = select i1 %5561, float -0.000000e+00, float %5562
  %5564 = fmul fast float %3530, 0x3FF7154760000000
  %5565 = fmul fast float %5564, %5563
  %5566 = fmul fast float %3531, 0x3FF7154760000000
  %5567 = fmul fast float %5566, %5563
  %5568 = fmul fast float %3532, 0x3FF7154760000000
  %5569 = fmul fast float %5568, %5563
  %5570 = call float @dx.op.unary.f32(i32 21, float %5565)  ; Exp(value)
  %5571 = call float @dx.op.unary.f32(i32 21, float %5567)  ; Exp(value)
  %5572 = call float @dx.op.unary.f32(i32 21, float %5569)  ; Exp(value)
  %5573 = call float @dx.op.unary.f32(i32 7, float %5570)  ; Saturate(value)
  %5574 = call float @dx.op.unary.f32(i32 7, float %5571)  ; Saturate(value)
  %5575 = call float @dx.op.unary.f32(i32 7, float %5572)  ; Saturate(value)
  %5576 = fmul fast float %5499, %5573
  %5577 = fmul fast float %5500, %5574
  %5578 = fmul fast float %5501, %5575
  %5579 = fsub fast float %5453, %3729
  %5580 = fsub fast float %5454, %3728
  %5581 = fsub fast float %5455, %3727
  %5582 = call float @dx.op.dot3.f32(i32 55, float %5579, float %5580, float %5581, float %5579, float %5580, float %5581)  ; Dot3(ax,ay,az,bx,by,bz)
  %5583 = call float @dx.op.unary.f32(i32 25, float %5582)  ; Rsqrt(value)
  %5584 = fmul fast float %5583, %5579
  %5585 = fmul fast float %5583, %5580
  %5586 = fmul fast float %5583, %5581
  %5587 = call float @dx.op.dot3.f32(i32 55, float %5453, float %5454, float %5455, float %3733, float %3734, float %3735)  ; Dot3(ax,ay,az,bx,by,bz)
  %5588 = call float @dx.op.dot3.f32(i32 55, float %3726, float %3725, float %3724, float %5584, float %5585, float %5586)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5590 = fmul fast float %5589, %5460
  %5591 = fmul fast float %5589, %5589
  %5592 = fmul fast float %5591, %5105
  %5593 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5594 = fmul fast float %5590, %5593
  %5595 = bitcast float %5450 to i32
  %5596 = ashr i32 %5595, 1
  %5597 = sub nsw i32 1597463007, %5596
  %5598 = bitcast i32 %5597 to float
  %5599 = fmul fast float %5598, %5447
  %5600 = fmul fast float %5598, %5448
  %5601 = fmul fast float %5598, %5449
  %5602 = fsub fast float %5599, %3729
  %5603 = fsub fast float %5600, %3728
  %5604 = fsub fast float %5601, %3727
  %5605 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5603, float %5604, float %5602, float %5603, float %5604)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = call float @dx.op.unary.f32(i32 25, float %5605)  ; Rsqrt(value)
  %5607 = fmul fast float %5602, %5606
  %5608 = fmul fast float %5603, %5606
  %5609 = fmul fast float %5604, %5606
  %5610 = call float @dx.op.dot3.f32(i32 55, float %3733, float %3734, float %3735, float %5607, float %5608, float %5609)  ; Dot3(ax,ay,az,bx,by,bz)
  %5611 = fmul fast float %5610, %5610
  %5612 = call float @dx.op.unary.f32(i32 6, float %5587)  ; FAbs(value)
  %5613 = fsub fast float 1.000000e+00, %3739
  %5614 = call float @dx.op.binary.f32(i32 35, float %5613, float 0x3F847AE140000000)  ; FMax(a,b)
  %5615 = fmul fast float %5614, %5614
  %5616 = fmul fast float %5615, %5615
  %5617 = fsub fast float 1.000000e+00, %5616
  %5618 = fmul fast float %3743, %3743
  %5619 = fmul fast float %5618, %5617
  %5620 = fadd fast float %5619, %5616
  %5621 = bitcast float %5620 to i32
  %5622 = ashr i32 %5621, 1
  %5623 = add nsw i32 %5622, 532487669
  %5624 = bitcast i32 %5623 to float
  %5625 = fadd fast float %5624, %3743
  %5626 = fmul fast float %5616, %5611
  %5627 = fsub fast float 1.000000e+00, %5611
  %5628 = fadd fast float %5627, %5626
  %5629 = fmul fast float %5612, %5612
  %5630 = fmul fast float %5629, %5617
  %5631 = fadd fast float %5630, %5616
  %5632 = bitcast float %5631 to i32
  %5633 = ashr i32 %5632, 1
  %5634 = add nsw i32 %5633, 532487669
  %5635 = bitcast i32 %5634 to float
  %5636 = fadd fast float %5635, %5612
  %5637 = fmul fast float %5628, %5628
  %5638 = fmul fast float %5637, %5625
  %5639 = fmul fast float %5638, %5636
  %5640 = fdiv fast float 1.000000e+00, %5639
  %5641 = bitcast float %5616 to i32
  %5642 = sitofp i32 %5641 to float
  %5643 = fmul fast float %5642, 0x3FE7F73180000000
  %5644 = fadd fast float %5643, 0x41AFE27C40000000
  %5645 = fptosi float %5644 to i32
  %5646 = bitcast i32 %5645 to float
  %5647 = fmul fast float %5432, 0x3FD80E9D60000000
  %5648 = fmul fast float %5647, %5598
  %5649 = fadd fast float %5646, %5648
  %5650 = bitcast float %5649 to i32
  %5651 = sub nsw i32 2129859010, %5650
  %5652 = bitcast i32 %5651 to float
  %5653 = fmul fast float %5616, %5640
  %5654 = fmul fast float %5653, %5646
  %5655 = fmul fast float %5654, %5652
  %5656 = call float @dx.op.unary.f32(i32 6, float %5588)  ; FAbs(value)
  %5657 = fsub fast float 1.000000e+00, %5656
  %5658 = bitcast float %5657 to i32
  %5659 = sitofp i32 %5658 to float
  %5660 = fmul fast float %5659, 5.000000e+00
  %5661 = fadd fast float %5660, 0xC1EFBF8940000000
  %5662 = fptosi float %5661 to i32
  %5663 = bitcast i32 %5662 to float
  %5664 = fsub fast float 1.000000e+00, %3736
  %5665 = fsub fast float 1.000000e+00, %3737
  %5666 = fsub fast float 1.000000e+00, %3741
  %5667 = fmul fast float %5663, %5664
  %5668 = fmul fast float %5663, %5665
  %5669 = fmul fast float %5663, %5666
  %5670 = fadd fast float %5667, %3736
  %5671 = fadd fast float %5668, %3737
  %5672 = fadd fast float %5669, %3741
  br i1 %5020, label %5673, label %5696

; <label>:5673                                    ; preds = %5559
  %5674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3107, float %5656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5675 = extractvalue %dx.types.ResRet.f32 %5674, 0
  %5676 = extractvalue %dx.types.ResRet.f32 %5674, 1
  %5677 = extractvalue %dx.types.ResRet.f32 %5674, 2
  %5678 = fadd fast float %5675, -5.000000e-01
  %5679 = fadd fast float %5676, -5.000000e-01
  %5680 = fadd fast float %5677, -5.000000e-01
  %5681 = fmul fast float %3736, 4.000000e+00
  %5682 = fmul fast float %5681, %5664
  %5683 = fmul fast float %5682, %5678
  %5684 = fmul fast float %3737, 4.000000e+00
  %5685 = fmul fast float %5684, %5665
  %5686 = fmul fast float %5685, %5679
  %5687 = fmul fast float %3741, 4.000000e+00
  %5688 = fmul fast float %5687, %5666
  %5689 = fmul fast float %5688, %5680
  %5690 = fadd fast float %5683, %5670
  %5691 = fadd fast float %5686, %5671
  %5692 = fadd fast float %5689, %5672
  %5693 = call float @dx.op.unary.f32(i32 7, float %5690)  ; Saturate(value)
  %5694 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5695 = call float @dx.op.unary.f32(i32 7, float %5692)  ; Saturate(value)
  br label %5696

; <label>:5696                                    ; preds = %5673, %5559
  %5697 = phi float [ %5693, %5673 ], [ %5670, %5559 ]
  %5698 = phi float [ %5694, %5673 ], [ %5671, %5559 ]
  %5699 = phi float [ %5695, %5673 ], [ %5672, %5559 ]
  %5700 = fmul fast float %5587, 9.843750e-01
  %5701 = fadd fast float %5700, 7.812500e-03
  %5702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5701, float %5010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5703 = extractvalue %dx.types.ResRet.f32 %5702, 2
  %5704 = extractvalue %dx.types.ResRet.f32 %5702, 3
  %5705 = fmul fast float %5703, %3736
  %5706 = fmul fast float %5703, %3737
  %5707 = fmul fast float %5703, %3741
  %5708 = fadd fast float %5705, %5704
  %5709 = fadd fast float %5706, %5704
  %5710 = fadd fast float %5707, %5704
  br i1 %5020, label %5711, label %5734

; <label>:5711                                    ; preds = %5696
  %5712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3107, float %5587, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5713 = extractvalue %dx.types.ResRet.f32 %5712, 0
  %5714 = extractvalue %dx.types.ResRet.f32 %5712, 1
  %5715 = extractvalue %dx.types.ResRet.f32 %5712, 2
  %5716 = fadd fast float %5713, -5.000000e-01
  %5717 = fadd fast float %5714, -5.000000e-01
  %5718 = fadd fast float %5715, -5.000000e-01
  %5719 = fmul fast float %3736, 4.000000e+00
  %5720 = fmul fast float %5719, %5664
  %5721 = fmul fast float %5720, %5716
  %5722 = fmul fast float %3737, 4.000000e+00
  %5723 = fmul fast float %5722, %5665
  %5724 = fmul fast float %5723, %5717
  %5725 = fmul fast float %3741, 4.000000e+00
  %5726 = fmul fast float %5725, %5666
  %5727 = fmul fast float %5726, %5718
  %5728 = fadd fast float %5721, %5708
  %5729 = fadd fast float %5724, %5709
  %5730 = fadd fast float %5727, %5710
  %5731 = call float @dx.op.unary.f32(i32 7, float %5728)  ; Saturate(value)
  %5732 = call float @dx.op.unary.f32(i32 7, float %5729)  ; Saturate(value)
  %5733 = call float @dx.op.unary.f32(i32 7, float %5730)  ; Saturate(value)
  br label %5734

; <label>:5734                                    ; preds = %5711, %5696
  %5735 = phi float [ %5731, %5711 ], [ %5708, %5696 ]
  %5736 = phi float [ %5732, %5711 ], [ %5709, %5696 ]
  %5737 = phi float [ %5733, %5711 ], [ %5710, %5696 ]
  %5738 = call float @dx.op.binary.f32(i32 35, float %5736, float %5737)  ; FMax(a,b)
  %5739 = call float @dx.op.binary.f32(i32 35, float %5735, float %5738)  ; FMax(a,b)
  %5740 = fsub fast float 1.000000e+00, %5739
  %5741 = fmul fast float %5697, %5655
  %5742 = fmul fast float %5698, %5655
  %5743 = fmul fast float %5699, %5655
  %5744 = fsub fast float 1.000000e+00, %5588
  %5745 = bitcast float %5744 to i32
  %5746 = sitofp i32 %5745 to float
  %5747 = fmul fast float %5746, 5.000000e+00
  %5748 = fadd fast float %5747, 0xC1EFBF8940000000
  %5749 = fptosi float %5748 to i32
  %5750 = bitcast i32 %5749 to float
  %5751 = fmul fast float %5750, %3106
  %5752 = fmul fast float %5740, %5751
  %5753 = fmul fast float %5752, %5070
  %5754 = fmul fast float %5752, %5071
  %5755 = fmul fast float %5752, %5072
  %5756 = fmul fast float %5440, %2583
  %5757 = fmul fast float %5440, %2584
  %5758 = fmul fast float %5440, %2585
  %5759 = fadd fast float %5741, %5756
  %5760 = fadd fast float %5759, %5753
  %5761 = fadd fast float %5742, %5757
  %5762 = fadd fast float %5761, %5754
  %5763 = fadd fast float %5743, %5758
  %5764 = fadd fast float %5763, %5755
  %5765 = fmul fast float %5576, %3127
  %5766 = fmul fast float %5765, %5594
  %5767 = fmul fast float %5766, %5740
  %5768 = fmul fast float %5577, %3127
  %5769 = fmul fast float %5768, %5594
  %5770 = fmul fast float %5769, %5740
  %5771 = fmul fast float %5578, %3127
  %5772 = fmul fast float %5771, %5594
  %5773 = fmul fast float %5772, %5740
  %5774 = fadd fast float %5767, %5414
  %5775 = fadd fast float %5770, %5415
  %5776 = fadd fast float %5773, %5416
  %5777 = fmul fast float %5766, %5760
  %5778 = fmul fast float %5769, %5762
  %5779 = fmul fast float %5772, %5764
  %5780 = fadd fast float %5777, %5411
  %5781 = fadd fast float %5778, %5412
  %5782 = fadd fast float %5779, %5413
  br label %5490

; <label>:5783                                    ; preds = %5490
  br label %5784

; <label>:5784                                    ; preds = %5783, %5377
  %5785 = phi float [ %5379, %5377 ], [ %5491, %5783 ]
  %5786 = phi float [ %5380, %5377 ], [ %5492, %5783 ]
  %5787 = phi float [ %5381, %5377 ], [ %5493, %5783 ]
  %5788 = phi float [ %5382, %5377 ], [ %5494, %5783 ]
  %5789 = phi float [ %5383, %5377 ], [ %5495, %5783 ]
  %5790 = phi float [ %5384, %5377 ], [ %5496, %5783 ]
  %5791 = add i32 %5378, 1
  %5792 = icmp ugt i32 %5791, %5374
  br i1 %5792, label %5793, label %5377

; <label>:5793                                    ; preds = %5784
  br label %5794

; <label>:5794                                    ; preds = %5793, %5353, %5343
  %5795 = phi float [ %5344, %5343 ], [ %5344, %5353 ], [ %5785, %5793 ]
  %5796 = phi float [ %5345, %5343 ], [ %5345, %5353 ], [ %5786, %5793 ]
  %5797 = phi float [ %5346, %5343 ], [ %5346, %5353 ], [ %5787, %5793 ]
  %5798 = phi float [ %5347, %5343 ], [ %5347, %5353 ], [ %5788, %5793 ]
  %5799 = phi float [ %5348, %5343 ], [ %5348, %5353 ], [ %5789, %5793 ]
  %5800 = phi float [ %5349, %5343 ], [ %5349, %5353 ], [ %5790, %5793 ]
  %5801 = call float @dx.op.unary.f32(i32 24, float %3730)  ; Sqrt(value)
  %5802 = call float @dx.op.unary.f32(i32 24, float %3731)  ; Sqrt(value)
  %5803 = call float @dx.op.unary.f32(i32 24, float %3732)  ; Sqrt(value)
  %5804 = fmul fast float %5801, %5798
  %5805 = fmul fast float %5802, %5799
  %5806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5806, 0
  br i1 %196, label %5808, label %5828

; <label>:5808                                    ; preds = %5794
  %5809 = fadd fast float %5800, %3104
  %5810 = fmul fast float %5809, %3105
  %5811 = fsub fast float 1.000000e+00, %3105
  %5812 = call float @dx.op.unary.f32(i32 7, float %5811)  ; Saturate(value)
  %5813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5814 = extractvalue %dx.types.CBufRet.f32 %5813, 3
  %5815 = fmul fast float %5814, %5812
  %5816 = fadd fast float %5815, %5810
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 0
  %5819 = fmul fast float %5818, %5076
  %5820 = fsub fast float %5816, %5819
  %5821 = fadd fast float %5805, %5804
  %5822 = fmul fast float %5807, %5821
  %5823 = extractvalue %dx.types.CBufRet.f32 %5813, 1
  %5824 = fsub fast float %5820, %5823
  %5825 = extractvalue %dx.types.CBufRet.f32 %5813, 2
  %5826 = fmul fast float %5824, %5825
  %5827 = call float @dx.op.unary.f32(i32 7, float %5826)  ; Saturate(value)
  br label %5844

; <label>:5828                                    ; preds = %5794
  %5829 = fmul fast float %5803, %5800
  %5830 = fmul fast float %5807, %5804
  %5831 = fmul fast float %5807, %5805
  %5832 = fmul fast float %5829, %5807
  %5833 = add i32 %44, 276
  %5834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5833, i32 undef)  ; BufferLoad(srv,index,wot)
  %5835 = extractvalue %dx.types.ResRet.i32 %5834, 0
  %5836 = and i32 %5835, 32
  %5837 = icmp eq i32 %5836, 0
  br i1 %5837, label %5844, label %5838

; <label>:5838                                    ; preds = %5828
  %5839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5840 = extractvalue %dx.types.CBufRet.f32 %5839, 0
  %5841 = fmul fast float %5840, 0x3FE99999A0000000
  %5842 = fadd fast float %5840, %5830
  %5843 = fadd fast float %5841, %5832
  br label %5844

; <label>:5844                                    ; preds = %5838, %5828, %5808
  %5845 = phi float [ %5822, %5808 ], [ %5842, %5838 ], [ %5830, %5828 ]
  %5846 = phi float [ %5827, %5808 ], [ %5831, %5838 ], [ %5831, %5828 ]
  %5847 = phi float [ 1.000000e+00, %5808 ], [ %5843, %5838 ], [ %5832, %5828 ]
  %5848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5849 = extractvalue %dx.types.CBufRet.f32 %5848, 0
  %5850 = fmul fast float %5849, %5796
  %5851 = fmul fast float %5849, %5797
  %5852 = fadd fast float %5796, %5795
  %5853 = select i1 %196, float %5852, float %5795
  %5854 = fmul float %5853, %5849
  %5855 = select i1 %196, float 0.000000e+00, float %5850
  %5856 = select i1 %196, float 0.000000e+00, float %5851
  %5857 = fmul fast float %5845, %5801
  %5858 = fmul fast float %5846, %5802
  %5859 = fmul fast float %5847, %5803
  %5860 = fadd fast float %5854, %5857
  %5861 = fadd fast float %5855, %5858
  %5862 = fadd fast float %5856, %5859
  %5863 = select i1 %196, float %5846, float %5861
  %5864 = select i1 %196, float %5847, float %5862
  %5865 = call float @dx.op.binary.f32(i32 36, float %5860, float 3.225500e+04)  ; FMin(a,b)
  %5866 = call float @dx.op.binary.f32(i32 36, float %5863, float 3.225500e+04)  ; FMin(a,b)
  %5867 = call float @dx.op.binary.f32(i32 36, float %5864, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5865)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5866)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5867)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[40 x i32] [i32 38, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !84}
!59 = !{!60, !82, null}
!60 = !{!61, !64, !66, !68, !71, !73, !74, !75, !76, !78, !80, !81}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, !65}
!65 = !{i32 3, i32 6}
!66 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 2, i8 0, !67}
!67 = !{i32 3, i32 15}
!68 = !{i32 3, !"TEXCOORDS", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 3, i8 0, !70}
!69 = !{i32 1}
!70 = !{i32 3, i32 3}
!71 = !{i32 4, !"LMAPCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 4, i8 0, !72}
!72 = !{i32 3, i32 7}
!73 = !{i32 5, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 5, i8 0, !72}
!74 = !{i32 6, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!75 = !{i32 7, !"NORMAL_TRANSFORM", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 7, i8 0, !67}
!76 = !{i32 8, !"NORMAL_TRANSFORM", i8 9, i8 0, !77, i8 2, i32 1, i8 4, i32 8, i8 0, !67}
!77 = !{i32 2}
!78 = !{i32 9, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 9, i8 0, !79}
!79 = !{i32 3, i32 1}
!80 = !{i32 10, !"TRANSIENT_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 9, i8 1, !79}
!81 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!82 = !{!83}
!83 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!84 = !{i32 0, i64 24}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}

