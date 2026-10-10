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
; shader hash: 7eca02a9db2c751109cf1e7d47f483fd
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
  br i1 %326, label %787, label %327

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
  %433 = add i32 %44, 296
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
  %456 = add i32 %44, 360
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
  %654 = add i32 %44, 308
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
  %738 = add i32 %44, 320
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
  %774 = add i32 %44, 80
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = lshr i32 %776, 8
  %780 = and i32 %779, 255
  %781 = uitofp i32 %780 to float
  %782 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %783 = fmul fast float %781, %782
  %784 = fadd fast float %783, %778
  %785 = fmul fast float %784, 0x3F70101020000000
  %786 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  br label %787

; <label>:787                                     ; preds = %770, %195
  %788 = phi float [ %724, %770 ], [ 0.000000e+00, %195 ]
  %789 = phi float [ %725, %770 ], [ 0.000000e+00, %195 ]
  %790 = phi float [ %643, %770 ], [ 0.000000e+00, %195 ]
  %791 = phi float [ %644, %770 ], [ 0.000000e+00, %195 ]
  %792 = phi float [ %645, %770 ], [ 0.000000e+00, %195 ]
  %793 = phi float [ %771, %770 ], [ 0.000000e+00, %195 ]
  %794 = phi float [ %772, %770 ], [ 0.000000e+00, %195 ]
  %795 = phi float [ %773, %770 ], [ 0.000000e+00, %195 ]
  %796 = phi float [ %629, %770 ], [ 0.000000e+00, %195 ]
  %797 = phi float [ 1.000000e+00, %770 ], [ 0.000000e+00, %195 ]
  %798 = phi float [ %723, %770 ], [ 0.000000e+00, %195 ]
  %799 = phi float [ %726, %770 ], [ 0.000000e+00, %195 ]
  %800 = phi float [ %786, %770 ], [ 0.000000e+00, %195 ]
  %801 = icmp ult i32 %318, 2
  %802 = add i32 %44, 40
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = add i32 %44, 44
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = or i32 %807, %804
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %1633, label %810

; <label>:810                                     ; preds = %787
  %811 = add i32 %44, 236
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = lshr i32 %813, 16
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = fmul fast float %815, 0x3F50624DE0000000
  %817 = add i32 %44, 88
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = lshr i32 %819, 16
  %821 = and i32 %820, 255
  %822 = lshr i32 %819, 24
  %823 = add i32 %44, 244
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = and i32 %825, 65535
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = lshr i32 %825, 16
  %829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %828)  ; LegacyF16ToF32(value)
  %830 = add i32 %44, 48
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = lshr i32 %832, 22
  %834 = shl nuw nsw i32 %833, 5
  %835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %834)  ; LegacyF16ToF32(value)
  %836 = shl i32 %832, 4
  %837 = and i32 %836, 32752
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = lshr i32 %832, 7
  %840 = and i32 %839, 32752
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 3
  %844 = fmul fast float %843, 1.000000e+03
  %845 = fmul fast float %269, %844
  %846 = call float @dx.op.unary.f32(i32 22, float %845)  ; Frc(value)
  %847 = fadd fast float %846, %259
  %848 = fmul fast float %270, %844
  %849 = call float @dx.op.unary.f32(i32 22, float %848)  ; Frc(value)
  %850 = fadd fast float %849, %261
  %851 = fmul fast float %816, %844
  %852 = call float @dx.op.unary.f32(i32 22, float %851)  ; Frc(value)
  %853 = fmul fast float %852, 0x401921FB60000000
  %854 = fadd fast float %853, %835
  %855 = call float @dx.op.unary.f32(i32 13, float %854)  ; Sin(value)
  %856 = call float @dx.op.unary.f32(i32 12, float %854)  ; Cos(value)
  %857 = fsub fast float -0.000000e+00, %855
  %858 = fadd fast float %67, -5.000000e-01
  %859 = fadd fast float %68, -5.000000e-01
  %860 = fmul fast float %827, %858
  %861 = fmul fast float %829, %859
  %862 = fadd fast float %860, 5.000000e-01
  %863 = fadd fast float %861, 5.000000e-01
  %864 = fmul fast float %838, %862
  %865 = fmul fast float %841, %863
  %866 = fmul fast float %856, %864
  %867 = call float @dx.op.tertiary.f32(i32 46, float %857, float %865, float %866)  ; FMad(a,b,c)
  %868 = fmul fast float %855, %864
  %869 = call float @dx.op.tertiary.f32(i32 46, float %856, float %865, float %868)  ; FMad(a,b,c)
  %870 = fadd fast float %847, %867
  %871 = fadd fast float %850, %869
  %872 = icmp ugt i32 %821, 1
  %873 = icmp ugt i32 %819, 33554431
  %874 = or i1 %873, %872
  br i1 %874, label %875, label %900

; <label>:875                                     ; preds = %810
  %876 = add i32 %44, 196
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = lshr i32 %878, 16
  %880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %879)  ; LegacyF16ToF32(value)
  %881 = fmul fast float %843, %880
  %882 = call float @dx.op.unary.f32(i32 22, float %881)  ; Frc(value)
  %883 = mul nuw nsw i32 %821, %822
  %884 = uitofp i32 %883 to float
  %885 = fmul fast float %882, %884
  %886 = call float @dx.op.unary.f32(i32 27, float %885)  ; Round_ni(value)
  %887 = fptoui float %886 to i32
  %888 = urem i32 %887, %821
  %889 = udiv i32 %887, %822
  %890 = call float @dx.op.unary.f32(i32 22, float %870)  ; Frc(value)
  %891 = call float @dx.op.unary.f32(i32 22, float %871)  ; Frc(value)
  %892 = uitofp i32 %888 to float
  %893 = uitofp i32 %889 to float
  %894 = fadd fast float %890, %892
  %895 = fadd fast float %891, %893
  %896 = uitofp i32 %821 to float
  %897 = uitofp i32 %822 to float
  %898 = fdiv fast float %894, %896
  %899 = fdiv fast float %895, %897
  br label %900

; <label>:900                                     ; preds = %875, %810
  %901 = phi float [ %898, %875 ], [ %870, %810 ]
  %902 = phi float [ %899, %875 ], [ %871, %810 ]
  %903 = and i32 %804, 16777216
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %1014, label %905

; <label>:905                                     ; preds = %900
  %906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.f32 %906, 0
  %908 = extractvalue %dx.types.CBufRet.f32 %906, 1
  %909 = extractvalue %dx.types.CBufRet.f32 %906, 2
  %910 = fadd fast float %907, %125
  %911 = fadd fast float %908, %126
  %912 = fadd fast float %909, %127
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %916 = icmp eq i32 %43, 65535
  br i1 %916, label %1011, label %917

; <label>:917                                     ; preds = %905
  %918 = lshr i32 %43, 1
  %919 = shl i32 %918, 2
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = and i32 %43, 1
  %923 = icmp ne i32 %922, 0
  %924 = lshr i32 %921, 16
  %925 = and i32 %921, 65535
  %926 = select i1 %923, i32 %924, i32 %925
  %927 = icmp eq i32 %926, 65535
  br i1 %927, label %1007, label %928

; <label>:928                                     ; preds = %917
  %929 = mul nuw nsw i32 %926, 40
  %930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 0
  %932 = extractvalue %dx.types.ResRet.f32 %930, 1
  %933 = extractvalue %dx.types.ResRet.f32 %930, 2
  %934 = add nuw nsw i32 %929, 12
  %935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = extractvalue %dx.types.ResRet.f32 %935, 1
  %938 = extractvalue %dx.types.ResRet.f32 %935, 2
  %939 = add nuw nsw i32 %929, 24
  %940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.f32 %940, 0
  %942 = extractvalue %dx.types.ResRet.f32 %940, 1
  %943 = extractvalue %dx.types.ResRet.f32 %940, 2
  %944 = add nuw nsw i32 %929, 36
  %945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.f32 %945, 0
  %947 = fsub fast float %910, %931
  %948 = fsub fast float %911, %932
  %949 = fsub fast float %912, %933
  %950 = fmul fast float %946, %947
  %951 = fmul fast float %946, %948
  %952 = fmul fast float %946, %949
  %953 = call float @dx.op.unary.f32(i32 27, float %950)  ; Round_ni(value)
  %954 = call float @dx.op.unary.f32(i32 27, float %951)  ; Round_ni(value)
  %955 = call float @dx.op.unary.f32(i32 27, float %952)  ; Round_ni(value)
  %956 = fadd fast float %953, 5.000000e-01
  %957 = fadd fast float %954, 5.000000e-01
  %958 = fadd fast float %955, 5.000000e-01
  %959 = fmul fast float %956, %936
  %960 = fmul fast float %957, %937
  %961 = fmul fast float %958, %938
  %962 = shl i32 %43, 2
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = add i32 %964, 0
  %966 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %965, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %967 = call float @dx.op.unary.f32(i32 22, float %959)  ; Frc(value)
  %968 = call float @dx.op.unary.f32(i32 22, float %960)  ; Frc(value)
  %969 = call float @dx.op.unary.f32(i32 22, float %961)  ; Frc(value)
  %970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %966, %dx.types.Handle %40, float %967, float %968, float %969, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %971 = extractvalue %dx.types.ResRet.f32 %970, 0
  %972 = extractvalue %dx.types.ResRet.f32 %970, 1
  %973 = extractvalue %dx.types.ResRet.f32 %970, 2
  %974 = fmul fast float %971, 1.023000e+03
  %975 = fmul fast float %972, 1.023000e+03
  %976 = fmul fast float %973, 1.023000e+03
  %977 = fadd fast float %974, 5.000000e-01
  %978 = fadd fast float %975, 5.000000e-01
  %979 = fadd fast float %976, 5.000000e-01
  %980 = call float @dx.op.unary.f32(i32 27, float %977)  ; Round_ni(value)
  %981 = call float @dx.op.unary.f32(i32 27, float %978)  ; Round_ni(value)
  %982 = call float @dx.op.unary.f32(i32 27, float %979)  ; Round_ni(value)
  %983 = fsub fast float %950, %953
  %984 = fsub fast float %951, %954
  %985 = fsub fast float %952, %955
  %986 = fmul fast float %983, 7.500000e-01
  %987 = fmul fast float %984, 7.500000e-01
  %988 = fmul fast float %985, 7.500000e-01
  %989 = fadd fast float %953, 1.250000e-01
  %990 = fadd fast float %989, %986
  %991 = fadd fast float %990, %980
  %992 = fadd fast float %954, 1.250000e-01
  %993 = fadd fast float %992, %987
  %994 = fadd fast float %993, %981
  %995 = fadd fast float %955, 1.250000e-01
  %996 = fadd fast float %995, %988
  %997 = fadd fast float %996, %982
  %998 = fmul fast float %991, %941
  %999 = fmul fast float %994, %942
  %1000 = fmul fast float %997, %943
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = add i32 %1002, 0
  %1004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1003, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1004, %dx.types.Handle %38, float %998, float %999, float %1000, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  br label %1007

; <label>:1007                                    ; preds = %928, %917
  %1008 = phi float [ %1006, %928 ], [ -1.000000e+00, %917 ]
  %1009 = fadd fast float %1008, %915
  %1010 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  br label %1011

; <label>:1011                                    ; preds = %1007, %905
  %1012 = phi float [ %1010, %1007 ], [ %915, %905 ]
  %1013 = fmul fast float %1012, %69
  br label %1014

; <label>:1014                                    ; preds = %1011, %900
  %1015 = phi float [ %1013, %1011 ], [ %69, %900 ]
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = and i32 %1017, 256
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1066, label %1020

; <label>:1020                                    ; preds = %1014
  %1021 = add i32 %44, 348
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = add i32 %1023, 0
  %1025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1026 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1025, %dx.types.Handle %75, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1027 = extractvalue %dx.types.ResRet.f32 %1026, 0
  %1028 = add i32 %44, 100
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = shl i32 %1030, 4
  %1032 = and i32 %1031, 32752
  %1033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1032)  ; LegacyF16ToF32(value)
  %1034 = lshr i32 %1030, 7
  %1035 = and i32 %1034, 32752
  %1036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1035)  ; LegacyF16ToF32(value)
  %1037 = fsub fast float 1.000000e+00, %1015
  %1038 = call float @dx.op.binary.f32(i32 35, float %1037, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1039 = bitcast float %1015 to i32
  %1040 = sitofp i32 %1039 to float
  %1041 = fadd fast float %1040, 0xC1CFBF8940000000
  %1042 = fmul fast float %1036, %1041
  %1043 = fadd fast float %1042, 0x41CFBF8940000000
  %1044 = fptosi float %1043 to i32
  %1045 = bitcast i32 %1044 to float
  %1046 = bitcast float %1038 to i32
  %1047 = sitofp i32 %1046 to float
  %1048 = fadd fast float %1047, 0xC1CFBF8940000000
  %1049 = fmul fast float %1048, %1036
  %1050 = fadd fast float %1049, 0x41CFBF8940000000
  %1051 = fptosi float %1050 to i32
  %1052 = bitcast i32 %1051 to float
  %1053 = fmul fast float %1045, %1033
  %1054 = fmul fast float %1052, %1033
  %1055 = fsub fast float %1038, %1053
  %1056 = fadd fast float %1054, %1038
  %1057 = call float @dx.op.unary.f32(i32 7, float %1055)  ; Saturate(value)
  %1058 = call float @dx.op.unary.f32(i32 7, float %1056)  ; Saturate(value)
  %1059 = fsub fast float %1027, %1057
  %1060 = fsub fast float %1058, %1057
  %1061 = bitcast float %1060 to i32
  %1062 = sub nsw i32 2129859010, %1061
  %1063 = bitcast i32 %1062 to float
  %1064 = fmul fast float %1063, %1059
  %1065 = call float @dx.op.unary.f32(i32 7, float %1064)  ; Saturate(value)
  br label %1066

; <label>:1066                                    ; preds = %1020, %1014
  %1067 = phi float [ %1065, %1020 ], [ %1015, %1014 ]
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = and i32 %1069, 128
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1088, label %1072

; <label>:1072                                    ; preds = %1066
  %1073 = add i32 %44, 336
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = add i32 %1075, 0
  %1077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1078 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1077, %dx.types.Handle %75, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = and i32 %1081, 524288
  %1083 = icmp ne i32 %1082, 0
  %1084 = fcmp fast ogt float %1079, 0x3FE0101020000000
  %1085 = select i1 %1084, float 1.000000e+00, float 0.000000e+00
  %1086 = select i1 %1083, float %1085, float %1079
  %1087 = fmul fast float %1086, %1067
  br label %1088

; <label>:1088                                    ; preds = %1072, %1066
  %1089 = phi float [ %1087, %1072 ], [ %1067, %1066 ]
  %1090 = fcmp fast ult float %1089, 0x3F70101020000000
  br i1 %1090, label %1633, label %1091

; <label>:1091                                    ; preds = %1088
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = and i32 %1093, 16
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1294, label %1096

; <label>:1096                                    ; preds = %1091
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = add i32 %44, 300
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = add i32 %1101, 0
  %1103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1104 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1103, %dx.types.Handle %74, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.ResRet.f32 %1104, 1
  %1107 = extractvalue %dx.types.ResRet.f32 %1104, 2
  %1108 = extractvalue %dx.types.ResRet.f32 %1104, 3
  %1109 = and i32 %1098, 255
  %1110 = uitofp i32 %1109 to float
  %1111 = lshr i32 %1098, 8
  %1112 = and i32 %1111, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = fmul fast float %1108, %1110
  %1115 = fadd fast float %1114, %1113
  %1116 = fmul fast float %1115, 0x3F70101000000000
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = and i32 %1118, 512
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1129, label %1121

; <label>:1121                                    ; preds = %1096
  %1122 = add i32 %44, 364
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = add i32 %1124, 0
  %1126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1125, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1127 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1126, %dx.types.Handle %75, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  br label %1129

; <label>:1129                                    ; preds = %1121, %1096
  %1130 = phi float [ %1128, %1121 ], [ 1.000000e+00, %1096 ]
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = and i32 %1132, 33554432
  %1134 = icmp eq i32 %1133, 0
  br i1 %1134, label %1241, label %1135

; <label>:1135                                    ; preds = %1129
  %1136 = add i32 %44, 192
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = and i32 %1138, 65535
  %1140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1139)  ; LegacyF16ToF32(value)
  %1141 = lshr i32 %1138, 16
  %1142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1141)  ; LegacyF16ToF32(value)
  %1143 = add i32 %44, 196
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = and i32 %1145, 65535
  %1147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1146)  ; LegacyF16ToF32(value)
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = lshr i32 %1149, 24
  %1151 = uitofp i32 %1150 to float
  %1152 = fmul fast float %1151, 0x3F70101020000000
  %1153 = and i32 %1149, 255
  %1154 = uitofp i32 %1153 to float
  %1155 = fmul fast float %1154, 0x3F70101020000000
  %1156 = lshr i32 %1149, 8
  %1157 = and i32 %1156, 255
  %1158 = uitofp i32 %1157 to float
  %1159 = fmul fast float %1158, 0x3F70101020000000
  %1160 = lshr i32 %1149, 16
  %1161 = and i32 %1160, 255
  %1162 = uitofp i32 %1161 to float
  %1163 = fmul fast float %1162, 0x3F70101020000000
  %1164 = add i32 %44, 188
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = lshr i32 %1166, 24
  %1168 = uitofp i32 %1167 to float
  %1169 = fmul fast float %1168, 0x3F70101020000000
  %1170 = and i32 %1166, 255
  %1171 = uitofp i32 %1170 to float
  %1172 = fmul fast float %1171, 0x3F70101020000000
  %1173 = lshr i32 %1166, 8
  %1174 = and i32 %1173, 255
  %1175 = uitofp i32 %1174 to float
  %1176 = fmul fast float %1175, 0x3F70101020000000
  %1177 = lshr i32 %1166, 16
  %1178 = and i32 %1177, 255
  %1179 = uitofp i32 %1178 to float
  %1180 = fmul fast float %1179, 0x3F70101020000000
  %1181 = bitcast float %1105 to i32
  %1182 = ashr i32 %1181, 1
  %1183 = sub nsw i32 1597463174, %1182
  %1184 = bitcast i32 %1183 to float
  %1185 = fmul fast float %1105, 5.000000e-01
  %1186 = fmul fast float %1184, %1184
  %1187 = fmul fast float %1186, %1185
  %1188 = fsub fast float 1.500000e+00, %1187
  %1189 = fmul fast float %1184, %1105
  %1190 = fmul fast float %1189, %1188
  %1191 = bitcast float %1106 to i32
  %1192 = ashr i32 %1191, 1
  %1193 = sub nsw i32 1597463174, %1192
  %1194 = bitcast i32 %1193 to float
  %1195 = fmul fast float %1106, 5.000000e-01
  %1196 = fmul fast float %1194, %1194
  %1197 = fmul fast float %1196, %1195
  %1198 = fsub fast float 1.500000e+00, %1197
  %1199 = fmul fast float %1194, %1106
  %1200 = fmul fast float %1199, %1198
  %1201 = bitcast float %1107 to i32
  %1202 = ashr i32 %1201, 1
  %1203 = sub nsw i32 1597463174, %1202
  %1204 = bitcast i32 %1203 to float
  %1205 = fmul fast float %1107, 5.000000e-01
  %1206 = fmul fast float %1204, %1204
  %1207 = fmul fast float %1206, %1205
  %1208 = fsub fast float 1.500000e+00, %1207
  %1209 = fmul fast float %1204, %1107
  %1210 = fmul fast float %1209, %1208
  %1211 = fsub fast float %1190, %1172
  %1212 = fsub fast float %1200, %1176
  %1213 = fsub fast float %1210, %1180
  %1214 = fmul fast float %1211, %1140
  %1215 = fmul fast float %1212, %1142
  %1216 = fmul fast float %1213, %1147
  %1217 = fadd fast float %1214, %1155
  %1218 = fadd fast float %1215, %1159
  %1219 = fadd fast float %1216, %1163
  %1220 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1221 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  %1222 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1223 = fmul fast float %1220, %1220
  %1224 = fmul fast float %1221, %1221
  %1225 = fmul fast float %1222, %1222
  %1226 = fsub fast float %1223, %1105
  %1227 = fsub fast float %1224, %1106
  %1228 = fsub fast float %1225, %1107
  %1229 = fmul fast float %1226, %1130
  %1230 = fmul fast float %1227, %1130
  %1231 = fmul fast float %1228, %1130
  %1232 = fadd fast float %1229, %1105
  %1233 = fadd fast float %1230, %1106
  %1234 = fadd fast float %1231, %1107
  %1235 = fadd fast float %1152, %1116
  %1236 = fsub fast float %1235, %1169
  %1237 = call float @dx.op.unary.f32(i32 7, float %1236)  ; Saturate(value)
  %1238 = fsub fast float %1237, %1116
  %1239 = fmul fast float %1238, %1130
  %1240 = fadd fast float %1239, %1116
  br label %1294

; <label>:1241                                    ; preds = %1129
  %1242 = and i32 %1132, 134217728
  %1243 = icmp eq i32 %1242, 0
  br i1 %1243, label %1278, label %1244

; <label>:1244                                    ; preds = %1241
  %1245 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %1246 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %1247 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %1248 = fadd fast float %1245, -5.000000e-01
  %1249 = fadd fast float %1246, -5.000000e-01
  %1250 = fadd fast float %1247, -5.000000e-01
  %1251 = fmul fast float %1248, %1130
  %1252 = fmul fast float %1249, %1130
  %1253 = fmul fast float %1250, %1130
  %1254 = fadd fast float %1251, 5.000000e-01
  %1255 = fadd fast float %1252, 5.000000e-01
  %1256 = fadd fast float %1253, 5.000000e-01
  %1257 = call float @dx.op.unary.f32(i32 24, float %1105)  ; Sqrt(value)
  %1258 = call float @dx.op.unary.f32(i32 24, float %1106)  ; Sqrt(value)
  %1259 = call float @dx.op.unary.f32(i32 24, float %1107)  ; Sqrt(value)
  %1260 = fmul fast float %1254, 2.000000e+00
  %1261 = fsub fast float 1.000000e+00, %1260
  %1262 = fmul fast float %1261, %1257
  %1263 = fadd fast float %1262, %1260
  %1264 = fmul fast float %1263, %1257
  %1265 = fmul fast float %1255, 2.000000e+00
  %1266 = fsub fast float 1.000000e+00, %1265
  %1267 = fmul fast float %1266, %1258
  %1268 = fadd fast float %1267, %1265
  %1269 = fmul fast float %1268, %1258
  %1270 = fmul fast float %1256, 2.000000e+00
  %1271 = fsub fast float 1.000000e+00, %1270
  %1272 = fmul fast float %1271, %1259
  %1273 = fadd fast float %1272, %1270
  %1274 = fmul fast float %1273, %1259
  %1275 = fmul fast float %1264, %1264
  %1276 = fmul fast float %1269, %1269
  %1277 = fmul fast float %1274, %1274
  br label %1294

; <label>:1278                                    ; preds = %1241
  %1279 = fmul fast float %246, %246
  %1280 = fmul fast float %250, %250
  %1281 = fmul fast float %254, %254
  %1282 = fadd fast float %1279, -1.000000e+00
  %1283 = fadd fast float %1280, -1.000000e+00
  %1284 = fadd fast float %1281, -1.000000e+00
  %1285 = fmul fast float %1130, %1282
  %1286 = fmul fast float %1130, %1283
  %1287 = fmul fast float %1130, %1284
  %1288 = fadd fast float %1285, 1.000000e+00
  %1289 = fadd fast float %1286, 1.000000e+00
  %1290 = fadd fast float %1287, 1.000000e+00
  %1291 = fmul fast float %1288, %1105
  %1292 = fmul fast float %1289, %1106
  %1293 = fmul fast float %1290, %1107
  br label %1294

; <label>:1294                                    ; preds = %1278, %1244, %1135, %1091
  %1295 = phi float [ %1240, %1135 ], [ %1116, %1244 ], [ %1116, %1278 ], [ 0x3FA23C0BE0000000, %1091 ]
  %1296 = phi float [ %1232, %1135 ], [ %1275, %1244 ], [ %1291, %1278 ], [ 1.000000e+00, %1091 ]
  %1297 = phi float [ %1233, %1135 ], [ %1276, %1244 ], [ %1292, %1278 ], [ 1.000000e+00, %1091 ]
  %1298 = phi float [ %1234, %1135 ], [ %1277, %1244 ], [ %1293, %1278 ], [ 1.000000e+00, %1091 ]
  %1299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.i32 %1299, 1
  %1301 = and i32 %1300, 1
  %1302 = icmp ne i32 %1301, 0
  %1303 = add i32 %44, 276
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = and i32 %1305, 32
  %1307 = icmp ne i32 %1306, 0
  %1308 = and i1 %1302, %1307
  %1309 = select i1 %1308, float 1.000000e+00, float %1296
  %1310 = select i1 %1308, float 0x3FD3333340000000, float %1297
  %1311 = select i1 %1308, float 0x3FD3333340000000, float %1298
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = and i32 %1313, 32
  %1315 = icmp eq i32 %1314, 0
  br i1 %1315, label %1388, label %1316

; <label>:1316                                    ; preds = %1294
  %1317 = add i32 %44, 92
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = add i32 %44, 312
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = add i32 %1322, 0
  %1324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1325 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1324, %dx.types.Handle %74, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1326 = extractvalue %dx.types.ResRet.f32 %1325, 0
  %1327 = extractvalue %dx.types.ResRet.f32 %1325, 1
  %1328 = extractvalue %dx.types.ResRet.f32 %1325, 2
  %1329 = extractvalue %dx.types.ResRet.f32 %1325, 3
  %1330 = and i32 %1319, 255
  %1331 = uitofp i32 %1330 to float
  %1332 = lshr i32 %1319, 8
  %1333 = and i32 %1332, 255
  %1334 = uitofp i32 %1333 to float
  %1335 = lshr i32 %1319, 16
  %1336 = and i32 %1335, 255
  %1337 = uitofp i32 %1336 to float
  %1338 = fmul fast float %1337, 0x3F70101000000000
  %1339 = fmul fast float %1326, %1331
  %1340 = fadd fast float %1339, %1334
  %1341 = fmul fast float %1340, 0x3F70101000000000
  %1342 = fadd fast float %1327, -5.000000e-01
  %1343 = fadd fast float %1329, -5.000000e-01
  %1344 = fmul fast float %1342, %1338
  %1345 = fmul fast float %1343, %1338
  %1346 = fadd fast float %1344, 5.000000e-01
  %1347 = fadd fast float %1345, 5.000000e-01
  %1348 = fmul fast float %1346, 2.000000e+00
  %1349 = fadd fast float %1348, -1.000000e+00
  %1350 = fmul fast float %1347, 2.000000e+00
  %1351 = fadd fast float %1350, -1.000000e+00
  %1352 = fadd fast float %1349, %1351
  %1353 = fmul fast float %1352, 5.000000e-01
  %1354 = fsub fast float %1349, %1351
  %1355 = fmul fast float %1354, 5.000000e-01
  %1356 = call float @dx.op.unary.f32(i32 6, float %1353)  ; FAbs(value)
  %1357 = fsub fast float 1.000000e+00, %1356
  %1358 = call float @dx.op.unary.f32(i32 6, float %1355)  ; FAbs(value)
  %1359 = fsub fast float %1357, %1358
  %1360 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1355, float %1359, float %1353, float %1355, float %1359)  ; Dot3(ax,ay,az,bx,by,bz)
  %1361 = call float @dx.op.unary.f32(i32 25, float %1360)  ; Rsqrt(value)
  %1362 = fmul fast float %1353, %1361
  %1363 = fmul fast float %1355, %1361
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = and i32 %1365, 67108864
  %1367 = icmp eq i32 %1366, 0
  br i1 %1367, label %1384, label %1368

; <label>:1368                                    ; preds = %1316
  %1369 = add i32 %44, 232
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1369, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = and i32 %1371, 65535
  %1373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1372)  ; LegacyF16ToF32(value)
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = and i32 %1375, 65535
  %1377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1376)  ; LegacyF16ToF32(value)
  %1378 = lshr i32 %1371, 16
  %1379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1378)  ; LegacyF16ToF32(value)
  %1380 = fsub fast float %1341, %1379
  %1381 = fmul fast float %1380, %1373
  %1382 = fadd fast float %1381, %1377
  %1383 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  br label %1384

; <label>:1384                                    ; preds = %1368, %1316
  %1385 = phi float [ %1383, %1368 ], [ %1341, %1316 ]
  %1386 = call float @dx.op.dot2.f32(i32 54, float %1362, float %1363, float %49, float %50)  ; Dot2(ax,ay,bx,by)
  %1387 = call float @dx.op.dot2.f32(i32 54, float %1362, float %1363, float %51, float %52)  ; Dot2(ax,ay,bx,by)
  br label %1388

; <label>:1388                                    ; preds = %1384, %1294
  %1389 = phi float [ %1385, %1384 ], [ 0x3FD6666660000000, %1294 ]
  %1390 = phi float [ %1386, %1384 ], [ 0.000000e+00, %1294 ]
  %1391 = phi float [ %1387, %1384 ], [ 0.000000e+00, %1294 ]
  %1392 = phi float [ %1328, %1384 ], [ 1.000000e+00, %1294 ]
  %1393 = add i32 %44, 144
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = lshr i32 %1395, 22
  %1397 = shl nuw nsw i32 %1396, 5
  %1398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1397)  ; LegacyF16ToF32(value)
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = and i32 %1400, 64
  %1402 = icmp eq i32 %1401, 0
  br i1 %1402, label %1436, label %1403

; <label>:1403                                    ; preds = %1388
  %1404 = add i32 %44, 324
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = add i32 %1406, 0
  %1408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1407, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = and i32 %1410, 131072
  %1412 = icmp eq i32 %1411, 0
  %1413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1408, %dx.types.Handle %74, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1414 = extractvalue %dx.types.ResRet.f32 %1413, 0
  %1415 = extractvalue %dx.types.ResRet.f32 %1413, 1
  %1416 = extractvalue %dx.types.ResRet.f32 %1413, 2
  %1417 = fmul fast float %1414, %234
  %1418 = fmul fast float %1415, %237
  %1419 = fmul fast float %1416, %240
  br i1 %1412, label %1426, label %1420

; <label>:1420                                    ; preds = %1403
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 0
  %1423 = fmul fast float %1422, %1417
  %1424 = fmul fast float %1422, %1418
  %1425 = fmul fast float %1422, %1419
  br label %1426

; <label>:1426                                    ; preds = %1420, %1403
  %1427 = phi float [ %1423, %1420 ], [ %1417, %1403 ]
  %1428 = phi float [ %1424, %1420 ], [ %1418, %1403 ]
  %1429 = phi float [ %1425, %1420 ], [ %1419, %1403 ]
  %1430 = fmul fast float %1427, %1398
  %1431 = select i1 %196, float %1430, float %1427
  %1432 = call float @dx.op.dot3.f32(i32 55, float %1431, float %1428, float %1429, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1433 = select i1 %196, float 0.000000e+00, float %1427
  %1434 = select i1 %196, float %1432, float %1428
  %1435 = select i1 %196, float 0.000000e+00, float %1429
  br label %1436

; <label>:1436                                    ; preds = %1426, %1388
  %1437 = phi float [ %1433, %1426 ], [ 0.000000e+00, %1388 ]
  %1438 = phi float [ %1434, %1426 ], [ 0.000000e+00, %1388 ]
  %1439 = phi float [ %1435, %1426 ], [ 0.000000e+00, %1388 ]
  %1440 = add i32 %44, 96
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = and i32 %1442, 255
  %1444 = uitofp i32 %1443 to float
  %1445 = lshr i32 %1442, 8
  %1446 = and i32 %1445, 255
  %1447 = uitofp i32 %1446 to float
  %1448 = call float @dx.op.dot3.f32(i32 55, float %1309, float %1310, float %1311, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1449 = fmul fast float %1447, %1448
  %1450 = fadd fast float %1449, %1444
  %1451 = fmul fast float %1450, 0x3F70101020000000
  %1452 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  br i1 %801, label %1453, label %1461

; <label>:1453                                    ; preds = %1436
  %1454 = fsub fast float 1.000000e+00, %1089
  %1455 = fmul fast float %1454, %790
  %1456 = fmul fast float %1454, %791
  %1457 = fmul fast float %1454, %792
  %1458 = fmul fast float %1454, %793
  %1459 = fmul fast float %1454, %794
  %1460 = fmul fast float %1454, %795
  br label %1461

; <label>:1461                                    ; preds = %1453, %1436
  %1462 = phi float [ %1455, %1453 ], [ %790, %1436 ]
  %1463 = phi float [ %1456, %1453 ], [ %791, %1436 ]
  %1464 = phi float [ %1457, %1453 ], [ %792, %1436 ]
  %1465 = phi float [ %1458, %1453 ], [ %793, %1436 ]
  %1466 = phi float [ %1459, %1453 ], [ %794, %1436 ]
  %1467 = phi float [ %1460, %1453 ], [ %795, %1436 ]
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = and i32 %1469, 3
  %1471 = icmp eq i32 %1470, 3
  br i1 %1471, label %1550, label %1472

; <label>:1472                                    ; preds = %1461
  %1473 = and i32 %1469, 16
  %1474 = icmp ne i32 %1473, 0
  %1475 = select i1 %1474, float %1089, float 0.000000e+00
  %1476 = icmp eq i32 %1470, 0
  br i1 %1476, label %1477, label %1505

; <label>:1477                                    ; preds = %1472
  %1478 = and i32 %1469, 64
  %1479 = icmp ne i32 %1478, 0
  %1480 = select i1 %1479, float %1089, float 0.000000e+00
  %1481 = fsub fast float %1309, %1462
  %1482 = fsub fast float %1310, %1463
  %1483 = fsub fast float %1311, %1464
  %1484 = fmul fast float %1475, %1481
  %1485 = fmul fast float %1475, %1482
  %1486 = fmul fast float %1475, %1483
  %1487 = fadd fast float %1484, %1462
  %1488 = fadd fast float %1485, %1463
  %1489 = fadd fast float %1486, %1464
  %1490 = fsub fast float %1295, %796
  %1491 = fmul fast float %1475, %1490
  %1492 = fadd fast float %1491, %796
  %1493 = fsub fast float %1437, %1465
  %1494 = fsub fast float %1438, %1466
  %1495 = fsub fast float %1439, %1467
  %1496 = fmul fast float %1480, %1493
  %1497 = fmul fast float %1480, %1494
  %1498 = fmul fast float %1480, %1495
  %1499 = fadd fast float %1496, %1465
  %1500 = fadd fast float %1497, %1466
  %1501 = fadd fast float %1498, %1467
  %1502 = fsub fast float %1452, %800
  %1503 = fmul fast float %1475, %1502
  %1504 = fadd fast float %1503, %800
  br label %1550

; <label>:1505                                    ; preds = %1472
  %1506 = icmp eq i32 %1470, 1
  br i1 %1506, label %1507, label %1520

; <label>:1507                                    ; preds = %1505
  %1508 = fadd fast float %1309, -1.000000e+00
  %1509 = fadd fast float %1310, -1.000000e+00
  %1510 = fadd fast float %1311, -1.000000e+00
  %1511 = fmul fast float %1475, %1508
  %1512 = fmul fast float %1475, %1509
  %1513 = fmul fast float %1475, %1510
  %1514 = fadd fast float %1511, 1.000000e+00
  %1515 = fadd fast float %1512, 1.000000e+00
  %1516 = fadd fast float %1513, 1.000000e+00
  %1517 = fmul fast float %1514, %1462
  %1518 = fmul fast float %1515, %1463
  %1519 = fmul fast float %1516, %1464
  br label %1550

; <label>:1520                                    ; preds = %1505
  %1521 = icmp eq i32 %1470, 2
  br i1 %1521, label %1522, label %1550

; <label>:1522                                    ; preds = %1520
  %1523 = call float @dx.op.unary.f32(i32 24, float %1309)  ; Sqrt(value)
  %1524 = call float @dx.op.unary.f32(i32 24, float %1310)  ; Sqrt(value)
  %1525 = call float @dx.op.unary.f32(i32 24, float %1311)  ; Sqrt(value)
  %1526 = fadd fast float %1523, -5.000000e-01
  %1527 = fadd fast float %1524, -5.000000e-01
  %1528 = fadd fast float %1525, -5.000000e-01
  %1529 = fmul fast float %1526, %1475
  %1530 = fmul fast float %1527, %1475
  %1531 = fmul fast float %1528, %1475
  %1532 = fadd fast float %1529, 5.000000e-01
  %1533 = fadd fast float %1530, 5.000000e-01
  %1534 = fadd fast float %1531, 5.000000e-01
  %1535 = fmul fast float %1532, 2.000000e+00
  %1536 = fsub fast float 1.000000e+00, %1535
  %1537 = fmul fast float %1536, %1462
  %1538 = fadd fast float %1537, %1535
  %1539 = fmul fast float %1538, %1462
  %1540 = fmul fast float %1533, 2.000000e+00
  %1541 = fsub fast float 1.000000e+00, %1540
  %1542 = fmul fast float %1541, %1463
  %1543 = fadd fast float %1542, %1540
  %1544 = fmul fast float %1543, %1463
  %1545 = fmul fast float %1534, 2.000000e+00
  %1546 = fsub fast float 1.000000e+00, %1545
  %1547 = fmul fast float %1546, %1464
  %1548 = fadd fast float %1547, %1545
  %1549 = fmul fast float %1548, %1464
  br label %1550

; <label>:1550                                    ; preds = %1522, %1520, %1507, %1477, %1461
  %1551 = phi float [ %1462, %1461 ], [ %1539, %1522 ], [ %1462, %1520 ], [ %1517, %1507 ], [ %1487, %1477 ]
  %1552 = phi float [ %1463, %1461 ], [ %1544, %1522 ], [ %1463, %1520 ], [ %1518, %1507 ], [ %1488, %1477 ]
  %1553 = phi float [ %1464, %1461 ], [ %1549, %1522 ], [ %1464, %1520 ], [ %1519, %1507 ], [ %1489, %1477 ]
  %1554 = phi float [ %1465, %1461 ], [ %1465, %1522 ], [ %1465, %1520 ], [ %1465, %1507 ], [ %1499, %1477 ]
  %1555 = phi float [ %1466, %1461 ], [ %1466, %1522 ], [ %1466, %1520 ], [ %1466, %1507 ], [ %1500, %1477 ]
  %1556 = phi float [ %1467, %1461 ], [ %1467, %1522 ], [ %1467, %1520 ], [ %1467, %1507 ], [ %1501, %1477 ]
  %1557 = phi float [ %796, %1461 ], [ %796, %1522 ], [ %796, %1520 ], [ %796, %1507 ], [ %1492, %1477 ]
  %1558 = phi float [ %800, %1461 ], [ %800, %1522 ], [ %800, %1520 ], [ %800, %1507 ], [ %1504, %1477 ]
  %1559 = and i32 %1469, 12
  %1560 = icmp eq i32 %1559, 12
  br i1 %1560, label %1633, label %1561

; <label>:1561                                    ; preds = %1550
  %1562 = and i32 %1469, 2097184
  %1563 = icmp eq i32 %1562, 2097184
  %1564 = select i1 %1563, float %1089, float 0.000000e+00
  %1565 = and i32 %1469, 4194336
  %1566 = icmp eq i32 %1565, 4194336
  %1567 = select i1 %1566, float %1089, float 0.000000e+00
  %1568 = and i32 %1469, 8388640
  %1569 = icmp eq i32 %1568, 8388640
  %1570 = select i1 %1569, float %1089, float 0.000000e+00
  %1571 = icmp eq i32 %1559, 0
  br i1 %1571, label %1572, label %1585

; <label>:1572                                    ; preds = %1561
  %1573 = fsub fast float %1390, %788
  %1574 = fsub fast float %1391, %789
  %1575 = fmul fast float %1564, %1573
  %1576 = fmul fast float %1564, %1574
  %1577 = fadd fast float %1575, %788
  %1578 = fadd fast float %1576, %789
  %1579 = fsub fast float %1392, %799
  %1580 = fmul fast float %1567, %1579
  %1581 = fadd fast float %1580, %799
  %1582 = fsub fast float %1389, %798
  %1583 = fmul fast float %1570, %1582
  %1584 = fadd fast float %1583, %798
  br label %1633

; <label>:1585                                    ; preds = %1561
  %1586 = icmp eq i32 %1559, 4
  br i1 %1586, label %1587, label %1619

; <label>:1587                                    ; preds = %1585
  %1588 = fmul fast float %1564, %1390
  %1589 = fmul fast float %1564, %1391
  %1590 = fadd fast float %1588, %788
  %1591 = fadd fast float %1589, %789
  %1592 = call float @dx.op.binary.f32(i32 36, float %799, float %1392)  ; FMin(a,b)
  %1593 = fsub fast float %1592, %799
  %1594 = fmul fast float %1593, %1567
  %1595 = fadd fast float %1594, %799
  %1596 = fadd fast float %1389, %798
  %1597 = fmul fast float %1596, 0x3FF337FAE0000000
  %1598 = fmul fast float %798, %798
  %1599 = fmul fast float %1389, %1389
  %1600 = fadd fast float %1599, %1598
  %1601 = fmul fast float %1600, 0x3FE5152B00000000
  %1602 = fmul fast float %798, 0xBFCC1F85E0000000
  %1603 = fmul fast float %1602, %1389
  %1604 = fadd fast float %1603, 0xBFE1363700000000
  %1605 = fadd fast float %1604, %1597
  %1606 = fsub fast float %1605, %1601
  %1607 = fmul fast float %1596, 0x3FBA6F0D00000000
  %1608 = fmul fast float %1600, 0x3FD0432880000000
  %1609 = fmul fast float %798, 0xBFEF110800000000
  %1610 = fmul fast float %1609, %1389
  %1611 = fadd fast float %1610, 1.000000e+00
  %1612 = fsub fast float %1611, %1607
  %1613 = fadd fast float %1612, %1608
  %1614 = fdiv fast float %1606, %1613
  %1615 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1616 = fsub fast float %1615, %798
  %1617 = fmul fast float %1616, %1570
  %1618 = fadd fast float %1617, %798
  br label %1633

; <label>:1619                                    ; preds = %1585
  %1620 = icmp eq i32 %1559, 8
  br i1 %1620, label %1621, label %1633

; <label>:1621                                    ; preds = %1619
  %1622 = fmul fast float %1564, %1390
  %1623 = fmul fast float %1564, %1391
  %1624 = fadd fast float %1622, %788
  %1625 = fadd fast float %1623, %789
  %1626 = call float @dx.op.binary.f32(i32 36, float %799, float %1392)  ; FMin(a,b)
  %1627 = fsub fast float %1626, %799
  %1628 = fmul fast float %1627, %1567
  %1629 = fadd fast float %1628, %799
  %1630 = fsub fast float %1389, %798
  %1631 = fmul fast float %1570, %1630
  %1632 = fadd fast float %1631, %798
  br label %1633

; <label>:1633                                    ; preds = %1621, %1619, %1587, %1572, %1550, %1088, %787
  %1634 = phi float [ %788, %1550 ], [ %788, %1088 ], [ %788, %787 ], [ %1577, %1572 ], [ %1590, %1587 ], [ %788, %1619 ], [ %1624, %1621 ]
  %1635 = phi float [ %789, %1550 ], [ %789, %1088 ], [ %789, %787 ], [ %1578, %1572 ], [ %1591, %1587 ], [ %789, %1619 ], [ %1625, %1621 ]
  %1636 = phi float [ %1551, %1550 ], [ %790, %1088 ], [ %790, %787 ], [ %1551, %1572 ], [ %1551, %1587 ], [ %1551, %1619 ], [ %1551, %1621 ]
  %1637 = phi float [ %1552, %1550 ], [ %791, %1088 ], [ %791, %787 ], [ %1552, %1572 ], [ %1552, %1587 ], [ %1552, %1619 ], [ %1552, %1621 ]
  %1638 = phi float [ %1553, %1550 ], [ %792, %1088 ], [ %792, %787 ], [ %1553, %1572 ], [ %1553, %1587 ], [ %1553, %1619 ], [ %1553, %1621 ]
  %1639 = phi float [ %1554, %1550 ], [ %793, %1088 ], [ %793, %787 ], [ %1554, %1572 ], [ %1554, %1587 ], [ %1554, %1619 ], [ %1554, %1621 ]
  %1640 = phi float [ %1555, %1550 ], [ %794, %1088 ], [ %794, %787 ], [ %1555, %1572 ], [ %1555, %1587 ], [ %1555, %1619 ], [ %1555, %1621 ]
  %1641 = phi float [ %1556, %1550 ], [ %795, %1088 ], [ %795, %787 ], [ %1556, %1572 ], [ %1556, %1587 ], [ %1556, %1619 ], [ %1556, %1621 ]
  %1642 = phi float [ %1557, %1550 ], [ %796, %1088 ], [ %796, %787 ], [ %1557, %1572 ], [ %1557, %1587 ], [ %1557, %1619 ], [ %1557, %1621 ]
  %1643 = phi float [ %798, %1550 ], [ %798, %1088 ], [ %798, %787 ], [ %1584, %1572 ], [ %1618, %1587 ], [ %798, %1619 ], [ %1632, %1621 ]
  %1644 = phi float [ %799, %1550 ], [ %799, %1088 ], [ %799, %787 ], [ %1581, %1572 ], [ %1595, %1587 ], [ %799, %1619 ], [ %1629, %1621 ]
  %1645 = phi float [ %1558, %1550 ], [ %800, %1088 ], [ %800, %787 ], [ %1558, %1572 ], [ %1558, %1587 ], [ %1558, %1619 ], [ %1558, %1621 ]
  %1646 = icmp ult i32 %318, 3
  %1647 = add i32 %44, 56
  %1648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1649 = extractvalue %dx.types.ResRet.i32 %1648, 0
  %1650 = add i32 %44, 60
  %1651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1650, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.i32 %1651, 0
  %1653 = or i32 %1652, %1649
  %1654 = icmp eq i32 %1653, 0
  br i1 %1654, label %2478, label %1655

; <label>:1655                                    ; preds = %1633
  %1656 = add i32 %44, 252
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1656, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = lshr i32 %1658, 16
  %1660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1659)  ; LegacyF16ToF32(value)
  %1661 = fmul fast float %1660, 0x3F50624DE0000000
  %1662 = add i32 %44, 104
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1662, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = lshr i32 %1664, 16
  %1666 = and i32 %1665, 255
  %1667 = lshr i32 %1664, 24
  %1668 = add i32 %44, 260
  %1669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1668, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.i32 %1669, 0
  %1671 = and i32 %1670, 65535
  %1672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1671)  ; LegacyF16ToF32(value)
  %1673 = lshr i32 %1670, 16
  %1674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1673)  ; LegacyF16ToF32(value)
  %1675 = add i32 %44, 64
  %1676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1675, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.i32 %1676, 0
  %1678 = lshr i32 %1677, 22
  %1679 = shl nuw nsw i32 %1678, 5
  %1680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1679)  ; LegacyF16ToF32(value)
  %1681 = shl i32 %1677, 4
  %1682 = and i32 %1681, 32752
  %1683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1682)  ; LegacyF16ToF32(value)
  %1684 = lshr i32 %1677, 7
  %1685 = and i32 %1684, 32752
  %1686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1685)  ; LegacyF16ToF32(value)
  %1687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1688 = extractvalue %dx.types.CBufRet.f32 %1687, 3
  %1689 = fmul fast float %1688, 1.000000e+03
  %1690 = fmul fast float %311, %1689
  %1691 = call float @dx.op.unary.f32(i32 22, float %1690)  ; Frc(value)
  %1692 = fadd fast float %1691, %301
  %1693 = fmul fast float %312, %1689
  %1694 = call float @dx.op.unary.f32(i32 22, float %1693)  ; Frc(value)
  %1695 = fadd fast float %1694, %303
  %1696 = fmul fast float %1661, %1689
  %1697 = call float @dx.op.unary.f32(i32 22, float %1696)  ; Frc(value)
  %1698 = fmul fast float %1697, 0x401921FB60000000
  %1699 = fadd fast float %1698, %1680
  %1700 = call float @dx.op.unary.f32(i32 13, float %1699)  ; Sin(value)
  %1701 = call float @dx.op.unary.f32(i32 12, float %1699)  ; Cos(value)
  %1702 = fsub fast float -0.000000e+00, %1700
  %1703 = fadd fast float %63, -5.000000e-01
  %1704 = fadd fast float %64, -5.000000e-01
  %1705 = fmul fast float %1672, %1703
  %1706 = fmul fast float %1674, %1704
  %1707 = fadd fast float %1705, 5.000000e-01
  %1708 = fadd fast float %1706, 5.000000e-01
  %1709 = fmul fast float %1683, %1707
  %1710 = fmul fast float %1686, %1708
  %1711 = fmul fast float %1701, %1709
  %1712 = call float @dx.op.tertiary.f32(i32 46, float %1702, float %1710, float %1711)  ; FMad(a,b,c)
  %1713 = fmul fast float %1700, %1709
  %1714 = call float @dx.op.tertiary.f32(i32 46, float %1701, float %1710, float %1713)  ; FMad(a,b,c)
  %1715 = fadd fast float %1692, %1712
  %1716 = fadd fast float %1695, %1714
  %1717 = icmp ugt i32 %1666, 1
  %1718 = icmp ugt i32 %1664, 33554431
  %1719 = or i1 %1718, %1717
  br i1 %1719, label %1720, label %1745

; <label>:1720                                    ; preds = %1655
  %1721 = add i32 %44, 212
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = lshr i32 %1723, 16
  %1725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1724)  ; LegacyF16ToF32(value)
  %1726 = fmul fast float %1688, %1725
  %1727 = call float @dx.op.unary.f32(i32 22, float %1726)  ; Frc(value)
  %1728 = mul nuw nsw i32 %1666, %1667
  %1729 = uitofp i32 %1728 to float
  %1730 = fmul fast float %1727, %1729
  %1731 = call float @dx.op.unary.f32(i32 27, float %1730)  ; Round_ni(value)
  %1732 = fptoui float %1731 to i32
  %1733 = urem i32 %1732, %1666
  %1734 = udiv i32 %1732, %1667
  %1735 = call float @dx.op.unary.f32(i32 22, float %1715)  ; Frc(value)
  %1736 = call float @dx.op.unary.f32(i32 22, float %1716)  ; Frc(value)
  %1737 = uitofp i32 %1733 to float
  %1738 = uitofp i32 %1734 to float
  %1739 = fadd fast float %1735, %1737
  %1740 = fadd fast float %1736, %1738
  %1741 = uitofp i32 %1666 to float
  %1742 = uitofp i32 %1667 to float
  %1743 = fdiv fast float %1739, %1741
  %1744 = fdiv fast float %1740, %1742
  br label %1745

; <label>:1745                                    ; preds = %1720, %1655
  %1746 = phi float [ %1743, %1720 ], [ %1715, %1655 ]
  %1747 = phi float [ %1744, %1720 ], [ %1716, %1655 ]
  %1748 = and i32 %1649, 16777216
  %1749 = icmp eq i32 %1748, 0
  br i1 %1749, label %1859, label %1750

; <label>:1750                                    ; preds = %1745
  %1751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1752 = extractvalue %dx.types.CBufRet.f32 %1751, 0
  %1753 = extractvalue %dx.types.CBufRet.f32 %1751, 1
  %1754 = extractvalue %dx.types.CBufRet.f32 %1751, 2
  %1755 = fadd fast float %1752, %125
  %1756 = fadd fast float %1753, %126
  %1757 = fadd fast float %1754, %127
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1760 = call float @dx.op.unary.f32(i32 7, float %1759)  ; Saturate(value)
  %1761 = icmp eq i32 %43, 65535
  br i1 %1761, label %1856, label %1762

; <label>:1762                                    ; preds = %1750
  %1763 = lshr i32 %43, 1
  %1764 = shl i32 %1763, 2
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = and i32 %43, 1
  %1768 = icmp ne i32 %1767, 0
  %1769 = lshr i32 %1766, 16
  %1770 = and i32 %1766, 65535
  %1771 = select i1 %1768, i32 %1769, i32 %1770
  %1772 = icmp eq i32 %1771, 65535
  br i1 %1772, label %1852, label %1773

; <label>:1773                                    ; preds = %1762
  %1774 = mul nuw nsw i32 %1771, 40
  %1775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.f32 %1775, 0
  %1777 = extractvalue %dx.types.ResRet.f32 %1775, 1
  %1778 = extractvalue %dx.types.ResRet.f32 %1775, 2
  %1779 = add nuw nsw i32 %1774, 12
  %1780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1782 = extractvalue %dx.types.ResRet.f32 %1780, 1
  %1783 = extractvalue %dx.types.ResRet.f32 %1780, 2
  %1784 = add nuw nsw i32 %1774, 24
  %1785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.f32 %1785, 0
  %1787 = extractvalue %dx.types.ResRet.f32 %1785, 1
  %1788 = extractvalue %dx.types.ResRet.f32 %1785, 2
  %1789 = add nuw nsw i32 %1774, 36
  %1790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.f32 %1790, 0
  %1792 = fsub fast float %1755, %1776
  %1793 = fsub fast float %1756, %1777
  %1794 = fsub fast float %1757, %1778
  %1795 = fmul fast float %1791, %1792
  %1796 = fmul fast float %1791, %1793
  %1797 = fmul fast float %1791, %1794
  %1798 = call float @dx.op.unary.f32(i32 27, float %1795)  ; Round_ni(value)
  %1799 = call float @dx.op.unary.f32(i32 27, float %1796)  ; Round_ni(value)
  %1800 = call float @dx.op.unary.f32(i32 27, float %1797)  ; Round_ni(value)
  %1801 = fadd fast float %1798, 5.000000e-01
  %1802 = fadd fast float %1799, 5.000000e-01
  %1803 = fadd fast float %1800, 5.000000e-01
  %1804 = fmul fast float %1801, %1781
  %1805 = fmul fast float %1802, %1782
  %1806 = fmul fast float %1803, %1783
  %1807 = shl i32 %43, 2
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = add i32 %1809, 0
  %1811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1810, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1812 = call float @dx.op.unary.f32(i32 22, float %1804)  ; Frc(value)
  %1813 = call float @dx.op.unary.f32(i32 22, float %1805)  ; Frc(value)
  %1814 = call float @dx.op.unary.f32(i32 22, float %1806)  ; Frc(value)
  %1815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1811, %dx.types.Handle %40, float %1812, float %1813, float %1814, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1816 = extractvalue %dx.types.ResRet.f32 %1815, 0
  %1817 = extractvalue %dx.types.ResRet.f32 %1815, 1
  %1818 = extractvalue %dx.types.ResRet.f32 %1815, 2
  %1819 = fmul fast float %1816, 1.023000e+03
  %1820 = fmul fast float %1817, 1.023000e+03
  %1821 = fmul fast float %1818, 1.023000e+03
  %1822 = fadd fast float %1819, 5.000000e-01
  %1823 = fadd fast float %1820, 5.000000e-01
  %1824 = fadd fast float %1821, 5.000000e-01
  %1825 = call float @dx.op.unary.f32(i32 27, float %1822)  ; Round_ni(value)
  %1826 = call float @dx.op.unary.f32(i32 27, float %1823)  ; Round_ni(value)
  %1827 = call float @dx.op.unary.f32(i32 27, float %1824)  ; Round_ni(value)
  %1828 = fsub fast float %1795, %1798
  %1829 = fsub fast float %1796, %1799
  %1830 = fsub fast float %1797, %1800
  %1831 = fmul fast float %1828, 7.500000e-01
  %1832 = fmul fast float %1829, 7.500000e-01
  %1833 = fmul fast float %1830, 7.500000e-01
  %1834 = fadd fast float %1798, 1.250000e-01
  %1835 = fadd fast float %1834, %1831
  %1836 = fadd fast float %1835, %1825
  %1837 = fadd fast float %1799, 1.250000e-01
  %1838 = fadd fast float %1837, %1832
  %1839 = fadd fast float %1838, %1826
  %1840 = fadd fast float %1800, 1.250000e-01
  %1841 = fadd fast float %1840, %1833
  %1842 = fadd fast float %1841, %1827
  %1843 = fmul fast float %1836, %1786
  %1844 = fmul fast float %1839, %1787
  %1845 = fmul fast float %1842, %1788
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = add i32 %1847, 0
  %1849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1849, %dx.types.Handle %38, float %1843, float %1844, float %1845, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1851 = extractvalue %dx.types.ResRet.f32 %1850, 0
  br label %1852

; <label>:1852                                    ; preds = %1773, %1762
  %1853 = phi float [ %1851, %1773 ], [ -1.000000e+00, %1762 ]
  %1854 = fadd fast float %1853, %1760
  %1855 = call float @dx.op.unary.f32(i32 7, float %1854)  ; Saturate(value)
  br label %1856

; <label>:1856                                    ; preds = %1852, %1750
  %1857 = phi float [ %1855, %1852 ], [ %1760, %1750 ]
  %1858 = fmul fast float %1857, %70
  br label %1859

; <label>:1859                                    ; preds = %1856, %1745
  %1860 = phi float [ %1858, %1856 ], [ %70, %1745 ]
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = and i32 %1862, 256
  %1864 = icmp eq i32 %1863, 0
  br i1 %1864, label %1911, label %1865

; <label>:1865                                    ; preds = %1859
  %1866 = add i32 %44, 352
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = add i32 %1868, 0
  %1870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1869, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1870, %dx.types.Handle %75, float %1746, float %1747, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = add i32 %44, 116
  %1874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.i32 %1874, 0
  %1876 = shl i32 %1875, 4
  %1877 = and i32 %1876, 32752
  %1878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1877)  ; LegacyF16ToF32(value)
  %1879 = lshr i32 %1875, 7
  %1880 = and i32 %1879, 32752
  %1881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1880)  ; LegacyF16ToF32(value)
  %1882 = fsub fast float 1.000000e+00, %1860
  %1883 = call float @dx.op.binary.f32(i32 35, float %1882, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1884 = bitcast float %1860 to i32
  %1885 = sitofp i32 %1884 to float
  %1886 = fadd fast float %1885, 0xC1CFBF8940000000
  %1887 = fmul fast float %1881, %1886
  %1888 = fadd fast float %1887, 0x41CFBF8940000000
  %1889 = fptosi float %1888 to i32
  %1890 = bitcast i32 %1889 to float
  %1891 = bitcast float %1883 to i32
  %1892 = sitofp i32 %1891 to float
  %1893 = fadd fast float %1892, 0xC1CFBF8940000000
  %1894 = fmul fast float %1893, %1881
  %1895 = fadd fast float %1894, 0x41CFBF8940000000
  %1896 = fptosi float %1895 to i32
  %1897 = bitcast i32 %1896 to float
  %1898 = fmul fast float %1890, %1878
  %1899 = fmul fast float %1897, %1878
  %1900 = fsub fast float %1883, %1898
  %1901 = fadd fast float %1899, %1883
  %1902 = call float @dx.op.unary.f32(i32 7, float %1900)  ; Saturate(value)
  %1903 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1904 = fsub fast float %1872, %1902
  %1905 = fsub fast float %1903, %1902
  %1906 = bitcast float %1905 to i32
  %1907 = sub nsw i32 2129859010, %1906
  %1908 = bitcast i32 %1907 to float
  %1909 = fmul fast float %1908, %1904
  %1910 = call float @dx.op.unary.f32(i32 7, float %1909)  ; Saturate(value)
  br label %1911

; <label>:1911                                    ; preds = %1865, %1859
  %1912 = phi float [ %1910, %1865 ], [ %1860, %1859 ]
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = and i32 %1914, 128
  %1916 = icmp eq i32 %1915, 0
  br i1 %1916, label %1933, label %1917

; <label>:1917                                    ; preds = %1911
  %1918 = add i32 %44, 340
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = add i32 %1920, 0
  %1922 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1921, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1923 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1922, %dx.types.Handle %75, float %1746, float %1747, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1924 = extractvalue %dx.types.ResRet.f32 %1923, 0
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = and i32 %1926, 524288
  %1928 = icmp ne i32 %1927, 0
  %1929 = fcmp fast ogt float %1924, 0x3FE0101020000000
  %1930 = select i1 %1929, float 1.000000e+00, float 0.000000e+00
  %1931 = select i1 %1928, float %1930, float %1924
  %1932 = fmul fast float %1931, %1912
  br label %1933

; <label>:1933                                    ; preds = %1917, %1911
  %1934 = phi float [ %1932, %1917 ], [ %1912, %1911 ]
  %1935 = fcmp fast ult float %1934, 0x3F70101020000000
  br i1 %1935, label %2478, label %1936

; <label>:1936                                    ; preds = %1933
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = and i32 %1938, 16
  %1940 = icmp eq i32 %1939, 0
  br i1 %1940, label %2139, label %1941

; <label>:1941                                    ; preds = %1936
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1662, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = add i32 %44, 304
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = add i32 %1946, 0
  %1948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1949 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1948, %dx.types.Handle %74, float %1746, float %1747, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  %1951 = extractvalue %dx.types.ResRet.f32 %1949, 1
  %1952 = extractvalue %dx.types.ResRet.f32 %1949, 2
  %1953 = extractvalue %dx.types.ResRet.f32 %1949, 3
  %1954 = and i32 %1943, 255
  %1955 = uitofp i32 %1954 to float
  %1956 = lshr i32 %1943, 8
  %1957 = and i32 %1956, 255
  %1958 = uitofp i32 %1957 to float
  %1959 = fmul fast float %1953, %1955
  %1960 = fadd fast float %1959, %1958
  %1961 = fmul fast float %1960, 0x3F70101000000000
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = and i32 %1963, 512
  %1965 = icmp eq i32 %1964, 0
  br i1 %1965, label %1974, label %1966

; <label>:1966                                    ; preds = %1941
  %1967 = add i32 %44, 368
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = add i32 %1969, 0
  %1971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1970, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1972 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1971, %dx.types.Handle %75, float %1746, float %1747, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  br label %1974

; <label>:1974                                    ; preds = %1966, %1941
  %1975 = phi float [ %1973, %1966 ], [ 1.000000e+00, %1941 ]
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = and i32 %1977, 33554432
  %1979 = icmp eq i32 %1978, 0
  br i1 %1979, label %2086, label %1980

; <label>:1980                                    ; preds = %1974
  %1981 = add i32 %44, 208
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = and i32 %1983, 65535
  %1985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1984)  ; LegacyF16ToF32(value)
  %1986 = lshr i32 %1983, 16
  %1987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1986)  ; LegacyF16ToF32(value)
  %1988 = add i32 %44, 212
  %1989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.i32 %1989, 0
  %1991 = and i32 %1990, 65535
  %1992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1991)  ; LegacyF16ToF32(value)
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = lshr i32 %1994, 24
  %1996 = uitofp i32 %1995 to float
  %1997 = fmul fast float %1996, 0x3F70101020000000
  %1998 = and i32 %1994, 255
  %1999 = uitofp i32 %1998 to float
  %2000 = fmul fast float %1999, 0x3F70101020000000
  %2001 = lshr i32 %1994, 8
  %2002 = and i32 %2001, 255
  %2003 = uitofp i32 %2002 to float
  %2004 = fmul fast float %2003, 0x3F70101020000000
  %2005 = lshr i32 %1994, 16
  %2006 = and i32 %2005, 255
  %2007 = uitofp i32 %2006 to float
  %2008 = fmul fast float %2007, 0x3F70101020000000
  %2009 = add i32 %44, 204
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = lshr i32 %2011, 24
  %2013 = uitofp i32 %2012 to float
  %2014 = fmul fast float %2013, 0x3F70101020000000
  %2015 = and i32 %2011, 255
  %2016 = uitofp i32 %2015 to float
  %2017 = fmul fast float %2016, 0x3F70101020000000
  %2018 = lshr i32 %2011, 8
  %2019 = and i32 %2018, 255
  %2020 = uitofp i32 %2019 to float
  %2021 = fmul fast float %2020, 0x3F70101020000000
  %2022 = lshr i32 %2011, 16
  %2023 = and i32 %2022, 255
  %2024 = uitofp i32 %2023 to float
  %2025 = fmul fast float %2024, 0x3F70101020000000
  %2026 = bitcast float %1950 to i32
  %2027 = ashr i32 %2026, 1
  %2028 = sub nsw i32 1597463174, %2027
  %2029 = bitcast i32 %2028 to float
  %2030 = fmul fast float %1950, 5.000000e-01
  %2031 = fmul fast float %2029, %2029
  %2032 = fmul fast float %2031, %2030
  %2033 = fsub fast float 1.500000e+00, %2032
  %2034 = fmul fast float %2029, %1950
  %2035 = fmul fast float %2034, %2033
  %2036 = bitcast float %1951 to i32
  %2037 = ashr i32 %2036, 1
  %2038 = sub nsw i32 1597463174, %2037
  %2039 = bitcast i32 %2038 to float
  %2040 = fmul fast float %1951, 5.000000e-01
  %2041 = fmul fast float %2039, %2039
  %2042 = fmul fast float %2041, %2040
  %2043 = fsub fast float 1.500000e+00, %2042
  %2044 = fmul fast float %2039, %1951
  %2045 = fmul fast float %2044, %2043
  %2046 = bitcast float %1952 to i32
  %2047 = ashr i32 %2046, 1
  %2048 = sub nsw i32 1597463174, %2047
  %2049 = bitcast i32 %2048 to float
  %2050 = fmul fast float %1952, 5.000000e-01
  %2051 = fmul fast float %2049, %2049
  %2052 = fmul fast float %2051, %2050
  %2053 = fsub fast float 1.500000e+00, %2052
  %2054 = fmul fast float %2049, %1952
  %2055 = fmul fast float %2054, %2053
  %2056 = fsub fast float %2035, %2017
  %2057 = fsub fast float %2045, %2021
  %2058 = fsub fast float %2055, %2025
  %2059 = fmul fast float %2056, %1985
  %2060 = fmul fast float %2057, %1987
  %2061 = fmul fast float %2058, %1992
  %2062 = fadd fast float %2059, %2000
  %2063 = fadd fast float %2060, %2004
  %2064 = fadd fast float %2061, %2008
  %2065 = call float @dx.op.unary.f32(i32 7, float %2062)  ; Saturate(value)
  %2066 = call float @dx.op.unary.f32(i32 7, float %2063)  ; Saturate(value)
  %2067 = call float @dx.op.unary.f32(i32 7, float %2064)  ; Saturate(value)
  %2068 = fmul fast float %2065, %2065
  %2069 = fmul fast float %2066, %2066
  %2070 = fmul fast float %2067, %2067
  %2071 = fsub fast float %2068, %1950
  %2072 = fsub fast float %2069, %1951
  %2073 = fsub fast float %2070, %1952
  %2074 = fmul fast float %2071, %1975
  %2075 = fmul fast float %2072, %1975
  %2076 = fmul fast float %2073, %1975
  %2077 = fadd fast float %2074, %1950
  %2078 = fadd fast float %2075, %1951
  %2079 = fadd fast float %2076, %1952
  %2080 = fadd fast float %1997, %1961
  %2081 = fsub fast float %2080, %2014
  %2082 = call float @dx.op.unary.f32(i32 7, float %2081)  ; Saturate(value)
  %2083 = fsub fast float %2082, %1961
  %2084 = fmul fast float %2083, %1975
  %2085 = fadd fast float %2084, %1961
  br label %2139

; <label>:2086                                    ; preds = %1974
  %2087 = and i32 %1977, 134217728
  %2088 = icmp eq i32 %2087, 0
  br i1 %2088, label %2123, label %2089

; <label>:2089                                    ; preds = %2086
  %2090 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %2091 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %2092 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %2093 = fadd fast float %2090, -5.000000e-01
  %2094 = fadd fast float %2091, -5.000000e-01
  %2095 = fadd fast float %2092, -5.000000e-01
  %2096 = fmul fast float %2093, %1975
  %2097 = fmul fast float %2094, %1975
  %2098 = fmul fast float %2095, %1975
  %2099 = fadd fast float %2096, 5.000000e-01
  %2100 = fadd fast float %2097, 5.000000e-01
  %2101 = fadd fast float %2098, 5.000000e-01
  %2102 = call float @dx.op.unary.f32(i32 24, float %1950)  ; Sqrt(value)
  %2103 = call float @dx.op.unary.f32(i32 24, float %1951)  ; Sqrt(value)
  %2104 = call float @dx.op.unary.f32(i32 24, float %1952)  ; Sqrt(value)
  %2105 = fmul fast float %2099, 2.000000e+00
  %2106 = fsub fast float 1.000000e+00, %2105
  %2107 = fmul fast float %2106, %2102
  %2108 = fadd fast float %2107, %2105
  %2109 = fmul fast float %2108, %2102
  %2110 = fmul fast float %2100, 2.000000e+00
  %2111 = fsub fast float 1.000000e+00, %2110
  %2112 = fmul fast float %2111, %2103
  %2113 = fadd fast float %2112, %2110
  %2114 = fmul fast float %2113, %2103
  %2115 = fmul fast float %2101, 2.000000e+00
  %2116 = fsub fast float 1.000000e+00, %2115
  %2117 = fmul fast float %2116, %2104
  %2118 = fadd fast float %2117, %2115
  %2119 = fmul fast float %2118, %2104
  %2120 = fmul fast float %2109, %2109
  %2121 = fmul fast float %2114, %2114
  %2122 = fmul fast float %2119, %2119
  br label %2139

; <label>:2123                                    ; preds = %2086
  %2124 = fmul fast float %288, %288
  %2125 = fmul fast float %292, %292
  %2126 = fmul fast float %296, %296
  %2127 = fadd fast float %2124, -1.000000e+00
  %2128 = fadd fast float %2125, -1.000000e+00
  %2129 = fadd fast float %2126, -1.000000e+00
  %2130 = fmul fast float %1975, %2127
  %2131 = fmul fast float %1975, %2128
  %2132 = fmul fast float %1975, %2129
  %2133 = fadd fast float %2130, 1.000000e+00
  %2134 = fadd fast float %2131, 1.000000e+00
  %2135 = fadd fast float %2132, 1.000000e+00
  %2136 = fmul fast float %2133, %1950
  %2137 = fmul fast float %2134, %1951
  %2138 = fmul fast float %2135, %1952
  br label %2139

; <label>:2139                                    ; preds = %2123, %2089, %1980, %1936
  %2140 = phi float [ %2085, %1980 ], [ %1961, %2089 ], [ %1961, %2123 ], [ 0x3FA23C0BE0000000, %1936 ]
  %2141 = phi float [ %2077, %1980 ], [ %2120, %2089 ], [ %2136, %2123 ], [ 1.000000e+00, %1936 ]
  %2142 = phi float [ %2078, %1980 ], [ %2121, %2089 ], [ %2137, %2123 ], [ 1.000000e+00, %1936 ]
  %2143 = phi float [ %2079, %1980 ], [ %2122, %2089 ], [ %2138, %2123 ], [ 1.000000e+00, %1936 ]
  %2144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.i32 %2144, 1
  %2146 = and i32 %2145, 1
  %2147 = icmp ne i32 %2146, 0
  %2148 = add i32 %44, 276
  %2149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.i32 %2149, 0
  %2151 = and i32 %2150, 32
  %2152 = icmp ne i32 %2151, 0
  %2153 = and i1 %2147, %2152
  %2154 = select i1 %2153, float 1.000000e+00, float %2141
  %2155 = select i1 %2153, float 0x3FD3333340000000, float %2142
  %2156 = select i1 %2153, float 0x3FD3333340000000, float %2143
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %2158, 32
  %2160 = icmp eq i32 %2159, 0
  br i1 %2160, label %2233, label %2161

; <label>:2161                                    ; preds = %2139
  %2162 = add i32 %44, 108
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = add i32 %44, 316
  %2166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2165, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.i32 %2166, 0
  %2168 = add i32 %2167, 0
  %2169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2168, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2170 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2169, %dx.types.Handle %74, float %1746, float %1747, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2171 = extractvalue %dx.types.ResRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.ResRet.f32 %2170, 1
  %2173 = extractvalue %dx.types.ResRet.f32 %2170, 2
  %2174 = extractvalue %dx.types.ResRet.f32 %2170, 3
  %2175 = and i32 %2164, 255
  %2176 = uitofp i32 %2175 to float
  %2177 = lshr i32 %2164, 8
  %2178 = and i32 %2177, 255
  %2179 = uitofp i32 %2178 to float
  %2180 = lshr i32 %2164, 16
  %2181 = and i32 %2180, 255
  %2182 = uitofp i32 %2181 to float
  %2183 = fmul fast float %2182, 0x3F70101000000000
  %2184 = fmul fast float %2171, %2176
  %2185 = fadd fast float %2184, %2179
  %2186 = fmul fast float %2185, 0x3F70101000000000
  %2187 = fadd fast float %2172, -5.000000e-01
  %2188 = fadd fast float %2174, -5.000000e-01
  %2189 = fmul fast float %2187, %2183
  %2190 = fmul fast float %2188, %2183
  %2191 = fadd fast float %2189, 5.000000e-01
  %2192 = fadd fast float %2190, 5.000000e-01
  %2193 = fmul fast float %2191, 2.000000e+00
  %2194 = fadd fast float %2193, -1.000000e+00
  %2195 = fmul fast float %2192, 2.000000e+00
  %2196 = fadd fast float %2195, -1.000000e+00
  %2197 = fadd fast float %2194, %2196
  %2198 = fmul fast float %2197, 5.000000e-01
  %2199 = fsub fast float %2194, %2196
  %2200 = fmul fast float %2199, 5.000000e-01
  %2201 = call float @dx.op.unary.f32(i32 6, float %2198)  ; FAbs(value)
  %2202 = fsub fast float 1.000000e+00, %2201
  %2203 = call float @dx.op.unary.f32(i32 6, float %2200)  ; FAbs(value)
  %2204 = fsub fast float %2202, %2203
  %2205 = call float @dx.op.dot3.f32(i32 55, float %2198, float %2200, float %2204, float %2198, float %2200, float %2204)  ; Dot3(ax,ay,az,bx,by,bz)
  %2206 = call float @dx.op.unary.f32(i32 25, float %2205)  ; Rsqrt(value)
  %2207 = fmul fast float %2198, %2206
  %2208 = fmul fast float %2200, %2206
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = and i32 %2210, 67108864
  %2212 = icmp eq i32 %2211, 0
  br i1 %2212, label %2229, label %2213

; <label>:2213                                    ; preds = %2161
  %2214 = add i32 %44, 248
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2214, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = and i32 %2216, 65535
  %2218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2217)  ; LegacyF16ToF32(value)
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1656, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = and i32 %2220, 65535
  %2222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2221)  ; LegacyF16ToF32(value)
  %2223 = lshr i32 %2216, 16
  %2224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2223)  ; LegacyF16ToF32(value)
  %2225 = fsub fast float %2186, %2224
  %2226 = fmul fast float %2225, %2218
  %2227 = fadd fast float %2226, %2222
  %2228 = call float @dx.op.unary.f32(i32 7, float %2227)  ; Saturate(value)
  br label %2229

; <label>:2229                                    ; preds = %2213, %2161
  %2230 = phi float [ %2228, %2213 ], [ %2186, %2161 ]
  %2231 = call float @dx.op.dot2.f32(i32 54, float %2207, float %2208, float %45, float %46)  ; Dot2(ax,ay,bx,by)
  %2232 = call float @dx.op.dot2.f32(i32 54, float %2207, float %2208, float %47, float %48)  ; Dot2(ax,ay,bx,by)
  br label %2233

; <label>:2233                                    ; preds = %2229, %2139
  %2234 = phi float [ %2230, %2229 ], [ 0x3FD6666660000000, %2139 ]
  %2235 = phi float [ %2231, %2229 ], [ 0.000000e+00, %2139 ]
  %2236 = phi float [ %2232, %2229 ], [ 0.000000e+00, %2139 ]
  %2237 = phi float [ %2173, %2229 ], [ 1.000000e+00, %2139 ]
  %2238 = add i32 %44, 160
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2238, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = lshr i32 %2240, 22
  %2242 = shl nuw nsw i32 %2241, 5
  %2243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2242)  ; LegacyF16ToF32(value)
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2245 = extractvalue %dx.types.ResRet.i32 %2244, 0
  %2246 = and i32 %2245, 64
  %2247 = icmp eq i32 %2246, 0
  br i1 %2247, label %2281, label %2248

; <label>:2248                                    ; preds = %2233
  %2249 = add i32 %44, 328
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = add i32 %2251, 0
  %2253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2252, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = and i32 %2255, 131072
  %2257 = icmp eq i32 %2256, 0
  %2258 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2253, %dx.types.Handle %74, float %1746, float %1747, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2259 = extractvalue %dx.types.ResRet.f32 %2258, 0
  %2260 = extractvalue %dx.types.ResRet.f32 %2258, 1
  %2261 = extractvalue %dx.types.ResRet.f32 %2258, 2
  %2262 = fmul fast float %2259, %276
  %2263 = fmul fast float %2260, %279
  %2264 = fmul fast float %2261, %282
  br i1 %2257, label %2271, label %2265

; <label>:2265                                    ; preds = %2248
  %2266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2267 = extractvalue %dx.types.CBufRet.f32 %2266, 0
  %2268 = fmul fast float %2267, %2262
  %2269 = fmul fast float %2267, %2263
  %2270 = fmul fast float %2267, %2264
  br label %2271

; <label>:2271                                    ; preds = %2265, %2248
  %2272 = phi float [ %2268, %2265 ], [ %2262, %2248 ]
  %2273 = phi float [ %2269, %2265 ], [ %2263, %2248 ]
  %2274 = phi float [ %2270, %2265 ], [ %2264, %2248 ]
  %2275 = fmul fast float %2272, %2243
  %2276 = select i1 %196, float %2275, float %2272
  %2277 = call float @dx.op.dot3.f32(i32 55, float %2276, float %2273, float %2274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2278 = select i1 %196, float 0.000000e+00, float %2272
  %2279 = select i1 %196, float %2277, float %2273
  %2280 = select i1 %196, float 0.000000e+00, float %2274
  br label %2281

; <label>:2281                                    ; preds = %2271, %2233
  %2282 = phi float [ %2278, %2271 ], [ 0.000000e+00, %2233 ]
  %2283 = phi float [ %2279, %2271 ], [ 0.000000e+00, %2233 ]
  %2284 = phi float [ %2280, %2271 ], [ 0.000000e+00, %2233 ]
  %2285 = add i32 %44, 112
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = and i32 %2287, 255
  %2289 = uitofp i32 %2288 to float
  %2290 = lshr i32 %2287, 8
  %2291 = and i32 %2290, 255
  %2292 = uitofp i32 %2291 to float
  %2293 = call float @dx.op.dot3.f32(i32 55, float %2154, float %2155, float %2156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2294 = fmul fast float %2292, %2293
  %2295 = fadd fast float %2294, %2289
  %2296 = fmul fast float %2295, 0x3F70101020000000
  %2297 = call float @dx.op.unary.f32(i32 7, float %2296)  ; Saturate(value)
  br i1 %1646, label %2298, label %2306

; <label>:2298                                    ; preds = %2281
  %2299 = fsub fast float 1.000000e+00, %1934
  %2300 = fmul fast float %2299, %1636
  %2301 = fmul fast float %2299, %1637
  %2302 = fmul fast float %2299, %1638
  %2303 = fmul fast float %2299, %1639
  %2304 = fmul fast float %2299, %1640
  %2305 = fmul fast float %2299, %1641
  br label %2306

; <label>:2306                                    ; preds = %2298, %2281
  %2307 = phi float [ %2300, %2298 ], [ %1636, %2281 ]
  %2308 = phi float [ %2301, %2298 ], [ %1637, %2281 ]
  %2309 = phi float [ %2302, %2298 ], [ %1638, %2281 ]
  %2310 = phi float [ %2303, %2298 ], [ %1639, %2281 ]
  %2311 = phi float [ %2304, %2298 ], [ %1640, %2281 ]
  %2312 = phi float [ %2305, %2298 ], [ %1641, %2281 ]
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = and i32 %2314, 3
  %2316 = icmp eq i32 %2315, 3
  br i1 %2316, label %2395, label %2317

; <label>:2317                                    ; preds = %2306
  %2318 = and i32 %2314, 16
  %2319 = icmp ne i32 %2318, 0
  %2320 = select i1 %2319, float %1934, float 0.000000e+00
  %2321 = icmp eq i32 %2315, 0
  br i1 %2321, label %2322, label %2350

; <label>:2322                                    ; preds = %2317
  %2323 = and i32 %2314, 64
  %2324 = icmp ne i32 %2323, 0
  %2325 = select i1 %2324, float %1934, float 0.000000e+00
  %2326 = fsub fast float %2154, %2307
  %2327 = fsub fast float %2155, %2308
  %2328 = fsub fast float %2156, %2309
  %2329 = fmul fast float %2320, %2326
  %2330 = fmul fast float %2320, %2327
  %2331 = fmul fast float %2320, %2328
  %2332 = fadd fast float %2329, %2307
  %2333 = fadd fast float %2330, %2308
  %2334 = fadd fast float %2331, %2309
  %2335 = fsub fast float %2140, %1642
  %2336 = fmul fast float %2320, %2335
  %2337 = fadd fast float %2336, %1642
  %2338 = fsub fast float %2282, %2310
  %2339 = fsub fast float %2283, %2311
  %2340 = fsub fast float %2284, %2312
  %2341 = fmul fast float %2325, %2338
  %2342 = fmul fast float %2325, %2339
  %2343 = fmul fast float %2325, %2340
  %2344 = fadd fast float %2341, %2310
  %2345 = fadd fast float %2342, %2311
  %2346 = fadd fast float %2343, %2312
  %2347 = fsub fast float %2297, %1645
  %2348 = fmul fast float %2320, %2347
  %2349 = fadd fast float %2348, %1645
  br label %2395

; <label>:2350                                    ; preds = %2317
  %2351 = icmp eq i32 %2315, 1
  br i1 %2351, label %2352, label %2365

; <label>:2352                                    ; preds = %2350
  %2353 = fadd fast float %2154, -1.000000e+00
  %2354 = fadd fast float %2155, -1.000000e+00
  %2355 = fadd fast float %2156, -1.000000e+00
  %2356 = fmul fast float %2320, %2353
  %2357 = fmul fast float %2320, %2354
  %2358 = fmul fast float %2320, %2355
  %2359 = fadd fast float %2356, 1.000000e+00
  %2360 = fadd fast float %2357, 1.000000e+00
  %2361 = fadd fast float %2358, 1.000000e+00
  %2362 = fmul fast float %2359, %2307
  %2363 = fmul fast float %2360, %2308
  %2364 = fmul fast float %2361, %2309
  br label %2395

; <label>:2365                                    ; preds = %2350
  %2366 = icmp eq i32 %2315, 2
  br i1 %2366, label %2367, label %2395

; <label>:2367                                    ; preds = %2365
  %2368 = call float @dx.op.unary.f32(i32 24, float %2154)  ; Sqrt(value)
  %2369 = call float @dx.op.unary.f32(i32 24, float %2155)  ; Sqrt(value)
  %2370 = call float @dx.op.unary.f32(i32 24, float %2156)  ; Sqrt(value)
  %2371 = fadd fast float %2368, -5.000000e-01
  %2372 = fadd fast float %2369, -5.000000e-01
  %2373 = fadd fast float %2370, -5.000000e-01
  %2374 = fmul fast float %2371, %2320
  %2375 = fmul fast float %2372, %2320
  %2376 = fmul fast float %2373, %2320
  %2377 = fadd fast float %2374, 5.000000e-01
  %2378 = fadd fast float %2375, 5.000000e-01
  %2379 = fadd fast float %2376, 5.000000e-01
  %2380 = fmul fast float %2377, 2.000000e+00
  %2381 = fsub fast float 1.000000e+00, %2380
  %2382 = fmul fast float %2381, %2307
  %2383 = fadd fast float %2382, %2380
  %2384 = fmul fast float %2383, %2307
  %2385 = fmul fast float %2378, 2.000000e+00
  %2386 = fsub fast float 1.000000e+00, %2385
  %2387 = fmul fast float %2386, %2308
  %2388 = fadd fast float %2387, %2385
  %2389 = fmul fast float %2388, %2308
  %2390 = fmul fast float %2379, 2.000000e+00
  %2391 = fsub fast float 1.000000e+00, %2390
  %2392 = fmul fast float %2391, %2309
  %2393 = fadd fast float %2392, %2390
  %2394 = fmul fast float %2393, %2309
  br label %2395

; <label>:2395                                    ; preds = %2367, %2365, %2352, %2322, %2306
  %2396 = phi float [ %2307, %2306 ], [ %2384, %2367 ], [ %2307, %2365 ], [ %2362, %2352 ], [ %2332, %2322 ]
  %2397 = phi float [ %2308, %2306 ], [ %2389, %2367 ], [ %2308, %2365 ], [ %2363, %2352 ], [ %2333, %2322 ]
  %2398 = phi float [ %2309, %2306 ], [ %2394, %2367 ], [ %2309, %2365 ], [ %2364, %2352 ], [ %2334, %2322 ]
  %2399 = phi float [ %2310, %2306 ], [ %2310, %2367 ], [ %2310, %2365 ], [ %2310, %2352 ], [ %2344, %2322 ]
  %2400 = phi float [ %2311, %2306 ], [ %2311, %2367 ], [ %2311, %2365 ], [ %2311, %2352 ], [ %2345, %2322 ]
  %2401 = phi float [ %2312, %2306 ], [ %2312, %2367 ], [ %2312, %2365 ], [ %2312, %2352 ], [ %2346, %2322 ]
  %2402 = phi float [ %1642, %2306 ], [ %1642, %2367 ], [ %1642, %2365 ], [ %1642, %2352 ], [ %2337, %2322 ]
  %2403 = phi float [ %1645, %2306 ], [ %1645, %2367 ], [ %1645, %2365 ], [ %1645, %2352 ], [ %2349, %2322 ]
  %2404 = and i32 %2314, 12
  %2405 = icmp eq i32 %2404, 12
  br i1 %2405, label %2478, label %2406

; <label>:2406                                    ; preds = %2395
  %2407 = and i32 %2314, 2097184
  %2408 = icmp eq i32 %2407, 2097184
  %2409 = select i1 %2408, float %1934, float 0.000000e+00
  %2410 = and i32 %2314, 4194336
  %2411 = icmp eq i32 %2410, 4194336
  %2412 = select i1 %2411, float %1934, float 0.000000e+00
  %2413 = and i32 %2314, 8388640
  %2414 = icmp eq i32 %2413, 8388640
  %2415 = select i1 %2414, float %1934, float 0.000000e+00
  %2416 = icmp eq i32 %2404, 0
  br i1 %2416, label %2417, label %2430

; <label>:2417                                    ; preds = %2406
  %2418 = fsub fast float %2235, %1634
  %2419 = fsub fast float %2236, %1635
  %2420 = fmul fast float %2409, %2418
  %2421 = fmul fast float %2409, %2419
  %2422 = fadd fast float %2420, %1634
  %2423 = fadd fast float %2421, %1635
  %2424 = fsub fast float %2237, %1644
  %2425 = fmul fast float %2412, %2424
  %2426 = fadd fast float %2425, %1644
  %2427 = fsub fast float %2234, %1643
  %2428 = fmul fast float %2415, %2427
  %2429 = fadd fast float %2428, %1643
  br label %2478

; <label>:2430                                    ; preds = %2406
  %2431 = icmp eq i32 %2404, 4
  br i1 %2431, label %2432, label %2464

; <label>:2432                                    ; preds = %2430
  %2433 = fmul fast float %2409, %2235
  %2434 = fmul fast float %2409, %2236
  %2435 = fadd fast float %2433, %1634
  %2436 = fadd fast float %2434, %1635
  %2437 = call float @dx.op.binary.f32(i32 36, float %1644, float %2237)  ; FMin(a,b)
  %2438 = fsub fast float %2437, %1644
  %2439 = fmul fast float %2438, %2412
  %2440 = fadd fast float %2439, %1644
  %2441 = fadd fast float %2234, %1643
  %2442 = fmul fast float %2441, 0x3FF337FAE0000000
  %2443 = fmul fast float %1643, %1643
  %2444 = fmul fast float %2234, %2234
  %2445 = fadd fast float %2444, %2443
  %2446 = fmul fast float %2445, 0x3FE5152B00000000
  %2447 = fmul fast float %1643, 0xBFCC1F85E0000000
  %2448 = fmul fast float %2447, %2234
  %2449 = fadd fast float %2448, 0xBFE1363700000000
  %2450 = fadd fast float %2449, %2442
  %2451 = fsub fast float %2450, %2446
  %2452 = fmul fast float %2441, 0x3FBA6F0D00000000
  %2453 = fmul fast float %2445, 0x3FD0432880000000
  %2454 = fmul fast float %1643, 0xBFEF110800000000
  %2455 = fmul fast float %2454, %2234
  %2456 = fadd fast float %2455, 1.000000e+00
  %2457 = fsub fast float %2456, %2452
  %2458 = fadd fast float %2457, %2453
  %2459 = fdiv fast float %2451, %2458
  %2460 = call float @dx.op.unary.f32(i32 7, float %2459)  ; Saturate(value)
  %2461 = fsub fast float %2460, %1643
  %2462 = fmul fast float %2461, %2415
  %2463 = fadd fast float %2462, %1643
  br label %2478

; <label>:2464                                    ; preds = %2430
  %2465 = icmp eq i32 %2404, 8
  br i1 %2465, label %2466, label %2478

; <label>:2466                                    ; preds = %2464
  %2467 = fmul fast float %2409, %2235
  %2468 = fmul fast float %2409, %2236
  %2469 = fadd fast float %2467, %1634
  %2470 = fadd fast float %2468, %1635
  %2471 = call float @dx.op.binary.f32(i32 36, float %1644, float %2237)  ; FMin(a,b)
  %2472 = fsub fast float %2471, %1644
  %2473 = fmul fast float %2472, %2412
  %2474 = fadd fast float %2473, %1644
  %2475 = fsub fast float %2234, %1643
  %2476 = fmul fast float %2415, %2475
  %2477 = fadd fast float %2476, %1643
  br label %2478

; <label>:2478                                    ; preds = %2466, %2464, %2432, %2417, %2395, %1933, %1633
  %2479 = phi float [ %1634, %2395 ], [ %1634, %1933 ], [ %1634, %1633 ], [ %2422, %2417 ], [ %2435, %2432 ], [ %1634, %2464 ], [ %2469, %2466 ]
  %2480 = phi float [ %1635, %2395 ], [ %1635, %1933 ], [ %1635, %1633 ], [ %2423, %2417 ], [ %2436, %2432 ], [ %1635, %2464 ], [ %2470, %2466 ]
  %2481 = phi float [ %2396, %2395 ], [ %1636, %1933 ], [ %1636, %1633 ], [ %2396, %2417 ], [ %2396, %2432 ], [ %2396, %2464 ], [ %2396, %2466 ]
  %2482 = phi float [ %2397, %2395 ], [ %1637, %1933 ], [ %1637, %1633 ], [ %2397, %2417 ], [ %2397, %2432 ], [ %2397, %2464 ], [ %2397, %2466 ]
  %2483 = phi float [ %2398, %2395 ], [ %1638, %1933 ], [ %1638, %1633 ], [ %2398, %2417 ], [ %2398, %2432 ], [ %2398, %2464 ], [ %2398, %2466 ]
  %2484 = phi float [ %2399, %2395 ], [ %1639, %1933 ], [ %1639, %1633 ], [ %2399, %2417 ], [ %2399, %2432 ], [ %2399, %2464 ], [ %2399, %2466 ]
  %2485 = phi float [ %2400, %2395 ], [ %1640, %1933 ], [ %1640, %1633 ], [ %2400, %2417 ], [ %2400, %2432 ], [ %2400, %2464 ], [ %2400, %2466 ]
  %2486 = phi float [ %2401, %2395 ], [ %1641, %1933 ], [ %1641, %1633 ], [ %2401, %2417 ], [ %2401, %2432 ], [ %2401, %2464 ], [ %2401, %2466 ]
  %2487 = phi float [ %2402, %2395 ], [ %1642, %1933 ], [ %1642, %1633 ], [ %2402, %2417 ], [ %2402, %2432 ], [ %2402, %2464 ], [ %2402, %2466 ]
  %2488 = phi float [ %1643, %2395 ], [ %1643, %1933 ], [ %1643, %1633 ], [ %2429, %2417 ], [ %2463, %2432 ], [ %1643, %2464 ], [ %2477, %2466 ]
  %2489 = phi float [ %1644, %2395 ], [ %1644, %1933 ], [ %1644, %1633 ], [ %2426, %2417 ], [ %2440, %2432 ], [ %1644, %2464 ], [ %2474, %2466 ]
  %2490 = phi float [ %2403, %2395 ], [ %1645, %1933 ], [ %1645, %1633 ], [ %2403, %2417 ], [ %2403, %2432 ], [ %2403, %2464 ], [ %2403, %2466 ]
  %2491 = add i32 %44, 280
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2491, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = extractvalue %dx.types.ResRet.i32 %2492, 1
  %2495 = bitcast i32 %2493 to float
  %2496 = bitcast i32 %2494 to float
  %2497 = fcmp fast oge float %2495, 0.000000e+00
  %2498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2499 = extractvalue %dx.types.CBufRet.f32 %2498, 0
  %2500 = select i1 %2497, float %2495, float %2499
  %2501 = add i32 %44, 356
  %2502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2501, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.i32 %2502, 0
  %2504 = add i32 %2503, 0
  %2505 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2504, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2506 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2505, %dx.types.Handle %75, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2507 = extractvalue %dx.types.ResRet.f32 %2506, 0
  %2508 = fmul fast float %2507, %2496
  %2509 = fadd fast float %2508, %2500
  %2510 = call float @dx.op.dot2.f32(i32 54, float %2479, float %2480, float %2479, float %2480)  ; Dot2(ax,ay,bx,by)
  %2511 = fmul fast float %2510, 0x3FE3333340000000
  %2512 = fsub fast float 1.000000e+00, %2511
  %2513 = call float @dx.op.dot3.f32(i32 55, float %2479, float %2480, float %2512, float %2479, float %2480, float %2512)  ; Dot3(ax,ay,az,bx,by,bz)
  %2514 = call float @dx.op.unary.f32(i32 25, float %2513)  ; Rsqrt(value)
  %2515 = fmul fast float %2514, %2479
  %2516 = fmul fast float %2514, %2480
  %2517 = fmul fast float %2512, %2514
  %2518 = fmul fast float %2517, %57
  %2519 = fmul fast float %2517, %58
  %2520 = fmul fast float %2517, %59
  %2521 = fmul fast float %2515, %53
  %2522 = fmul fast float %2515, %54
  %2523 = fmul fast float %2515, %55
  %2524 = fadd fast float %2518, %2521
  %2525 = fadd fast float %2519, %2522
  %2526 = fadd fast float %2520, %2523
  %2527 = fmul fast float %2516, %89
  %2528 = fmul fast float %2516, %90
  %2529 = fmul fast float %2516, %91
  %2530 = fadd fast float %2524, %2527
  %2531 = fadd fast float %2525, %2528
  %2532 = fadd fast float %2526, %2529
  %2533 = call float @dx.op.dot3.f32(i32 55, float %2530, float %2531, float %2532, float %2530, float %2531, float %2532)  ; Dot3(ax,ay,az,bx,by,bz)
  %2534 = call float @dx.op.unary.f32(i32 25, float %2533)  ; Rsqrt(value)
  %2535 = fmul fast float %2530, %2534
  %2536 = fmul fast float %2531, %2534
  %2537 = fmul fast float %2532, %2534
  %2538 = call float @dx.op.unary.f32(i32 83, float %125)  ; DerivCoarseX(value)
  %2539 = call float @dx.op.unary.f32(i32 83, float %126)  ; DerivCoarseX(value)
  %2540 = call float @dx.op.unary.f32(i32 83, float %127)  ; DerivCoarseX(value)
  %2541 = call float @dx.op.unary.f32(i32 84, float %125)  ; DerivCoarseY(value)
  %2542 = call float @dx.op.unary.f32(i32 84, float %126)  ; DerivCoarseY(value)
  %2543 = call float @dx.op.unary.f32(i32 84, float %127)  ; DerivCoarseY(value)
  %2544 = fadd fast float %2538, %125
  %2545 = fadd fast float %2539, %126
  %2546 = fadd fast float %2540, %127
  %2547 = fadd fast float %2541, %125
  %2548 = fadd fast float %2542, %126
  %2549 = fadd fast float %2543, %127
  %2550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %2551 = extractvalue %dx.types.CBufRet.f32 %2550, 0
  %2552 = extractvalue %dx.types.CBufRet.f32 %2550, 1
  %2553 = extractvalue %dx.types.CBufRet.f32 %2550, 2
  %2554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2555 = extractvalue %dx.types.CBufRet.f32 %2554, 2
  %2556 = extractvalue %dx.types.CBufRet.f32 %2554, 3
  %2557 = fmul fast float %2551, %78
  %2558 = fmul fast float %2557, %2555
  %2559 = fmul fast float %2552, %79
  %2560 = fmul fast float %2559, %2556
  %2561 = fptoui float %2558 to i32
  %2562 = fptoui float %2560 to i32
  %2563 = fadd fast float %2551, -1.000000e+00
  %2564 = fadd fast float %2552, -1.000000e+00
  %2565 = fptoui float %2563 to i32
  %2566 = fptoui float %2564 to i32
  %2567 = call i32 @dx.op.binary.i32(i32 40, i32 %2561, i32 %2565)  ; UMin(a,b)
  %2568 = call i32 @dx.op.binary.i32(i32 40, i32 %2562, i32 %2566)  ; UMin(a,b)
  %2569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2570 = extractvalue %dx.types.CBufRet.f32 %2569, 2
  %2571 = extractvalue %dx.types.CBufRet.f32 %2569, 3
  %2572 = fmul fast float %2570, %73
  %2573 = fsub fast float %2572, %2571
  %2574 = fadd fast float %2553, -1.000000e+00
  %2575 = call float @dx.op.binary.f32(i32 36, float %2573, float %2574)  ; FMin(a,b)
  %2576 = fptoui float %2575 to i32
  %2577 = fptoui float %2551 to i32
  %2578 = fptoui float %2552 to i32
  %2579 = mul i32 %2576, %2578
  %2580 = add i32 %2579, %2568
  %2581 = mul i32 %2580, %2577
  %2582 = add i32 %2581, %2567
  %2583 = shl i32 %2582, 2
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = and i32 %2585, 1023
  %2587 = lshr i32 %2585, 10
  %2588 = icmp eq i32 %2586, 0
  br i1 %2588, label %3014, label %2589

; <label>:2589                                    ; preds = %2478
  %2590 = and i32 %2585, 1023
  br label %2591

; <label>:2591                                    ; preds = %2717, %2589
  %2592 = phi float [ %2718, %2717 ], [ 0.000000e+00, %2589 ]
  %2593 = phi float [ %2719, %2717 ], [ %2509, %2589 ]
  %2594 = phi float [ %2720, %2717 ], [ %2490, %2589 ]
  %2595 = phi float [ %2721, %2717 ], [ 0.000000e+00, %2589 ]
  %2596 = phi float [ %2722, %2717 ], [ 0.000000e+00, %2589 ]
  %2597 = phi float [ %2723, %2717 ], [ %2484, %2589 ]
  %2598 = phi float [ %2724, %2717 ], [ %2485, %2589 ]
  %2599 = phi float [ %2725, %2717 ], [ %2486, %2589 ]
  %2600 = phi float [ %2726, %2717 ], [ %2535, %2589 ]
  %2601 = phi float [ %2727, %2717 ], [ %2536, %2589 ]
  %2602 = phi float [ %2728, %2717 ], [ %2537, %2589 ]
  %2603 = phi float [ %2729, %2717 ], [ %2489, %2589 ]
  %2604 = phi float [ %2730, %2717 ], [ %2488, %2589 ]
  %2605 = phi float [ %2731, %2717 ], [ 0.000000e+00, %2589 ]
  %2606 = phi float [ %2732, %2717 ], [ %2487, %2589 ]
  %2607 = phi float [ %2733, %2717 ], [ %2481, %2589 ]
  %2608 = phi float [ %2734, %2717 ], [ %2482, %2589 ]
  %2609 = phi float [ %2735, %2717 ], [ %2483, %2589 ]
  %2610 = phi i32 [ %2667, %2717 ], [ 0, %2589 ]
  %2611 = add nuw nsw i32 %2610, %2587
  %2612 = shl i32 %2611, 2
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = shl i32 %2614, 8
  %2616 = or i32 %2615, 48
  %2617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.f32 %2617, 0
  %2619 = extractvalue %dx.types.ResRet.f32 %2617, 1
  %2620 = extractvalue %dx.types.ResRet.f32 %2617, 2
  %2621 = extractvalue %dx.types.ResRet.f32 %2617, 3
  %2622 = or i32 %2615, 64
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2622, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = extractvalue %dx.types.ResRet.i32 %2623, 1
  %2626 = or i32 %2615, 80
  %2627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2626, i32 undef)  ; BufferLoad(srv,index,wot)
  %2628 = extractvalue %dx.types.ResRet.f32 %2627, 2
  %2629 = extractvalue %dx.types.ResRet.f32 %2627, 3
  %2630 = or i32 %2615, 96
  %2631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.f32 %2631, 0
  %2633 = extractvalue %dx.types.ResRet.f32 %2631, 1
  %2634 = extractvalue %dx.types.ResRet.f32 %2631, 2
  %2635 = extractvalue %dx.types.ResRet.f32 %2631, 3
  %2636 = or i32 %2615, 112
  %2637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.f32 %2637, 2
  %2639 = or i32 %2615, 128
  %2640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.f32 %2640, 0
  %2642 = extractvalue %dx.types.ResRet.f32 %2640, 1
  %2643 = extractvalue %dx.types.ResRet.f32 %2640, 2
  %2644 = extractvalue %dx.types.ResRet.f32 %2640, 3
  %2645 = or i32 %2615, 144
  %2646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2645, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.f32 %2646, 0
  %2648 = extractvalue %dx.types.ResRet.f32 %2646, 1
  %2649 = extractvalue %dx.types.ResRet.f32 %2646, 2
  %2650 = extractvalue %dx.types.ResRet.f32 %2646, 3
  %2651 = or i32 %2615, 160
  %2652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.f32 %2652, 0
  %2654 = extractvalue %dx.types.ResRet.f32 %2652, 1
  %2655 = extractvalue %dx.types.ResRet.f32 %2652, 2
  %2656 = extractvalue %dx.types.ResRet.f32 %2652, 3
  %2657 = or i32 %2615, 192
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = or i32 %2615, 208
  %2661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.f32 %2661, 0
  %2663 = or i32 %2615, 248
  %2664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.f32 %2664, 0
  %2666 = extractvalue %dx.types.ResRet.f32 %2664, 1
  %2667 = add nuw nsw i32 %2610, 1
  %2668 = bitcast float %2621 to i32
  %2669 = and i32 %2668, 2560
  %2670 = icmp eq i32 %2669, 0
  %2671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.f32 %2671, 0
  %2673 = extractvalue %dx.types.ResRet.f32 %2671, 1
  %2674 = extractvalue %dx.types.ResRet.f32 %2671, 2
  %2675 = extractvalue %dx.types.ResRet.f32 %2671, 3
  %2676 = call float @dx.op.dot4.f32(i32 56, float %2672, float %2673, float %2674, float %2675, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2677 = or i32 %2615, 16
  %2678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.f32 %2678, 0
  %2680 = extractvalue %dx.types.ResRet.f32 %2678, 1
  %2681 = extractvalue %dx.types.ResRet.f32 %2678, 2
  %2682 = extractvalue %dx.types.ResRet.f32 %2678, 3
  %2683 = call float @dx.op.dot4.f32(i32 56, float %2679, float %2680, float %2681, float %2682, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2684 = or i32 %2615, 32
  %2685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2686 = extractvalue %dx.types.ResRet.f32 %2685, 0
  %2687 = extractvalue %dx.types.ResRet.f32 %2685, 1
  %2688 = extractvalue %dx.types.ResRet.f32 %2685, 2
  %2689 = extractvalue %dx.types.ResRet.f32 %2685, 3
  %2690 = call float @dx.op.dot4.f32(i32 56, float %2686, float %2687, float %2688, float %2689, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2691 = call float @dx.op.unary.f32(i32 27, float %2676)  ; Round_ni(value)
  %2692 = call float @dx.op.unary.f32(i32 6, float %2691)  ; FAbs(value)
  %2693 = call float @dx.op.unary.f32(i32 27, float %2683)  ; Round_ni(value)
  %2694 = call float @dx.op.unary.f32(i32 6, float %2693)  ; FAbs(value)
  %2695 = call float @dx.op.unary.f32(i32 6, float %2690)  ; FAbs(value)
  %2696 = call float @dx.op.unary.f32(i32 27, float %2695)  ; Round_ni(value)
  %2697 = fadd fast float %2694, %2692
  %2698 = fadd fast float %2697, %2696
  %2699 = fcmp fast oeq float %2698, 0.000000e+00
  %2700 = call float @dx.op.dot4.f32(i32 56, float %2672, float %2673, float %2674, float %2675, float %2544, float %2545, float %2546, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2701 = call float @dx.op.dot4.f32(i32 56, float %2679, float %2680, float %2681, float %2682, float %2544, float %2545, float %2546, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2702 = call float @dx.op.dot4.f32(i32 56, float %2672, float %2673, float %2674, float %2675, float %2547, float %2548, float %2549, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2703 = call float @dx.op.dot4.f32(i32 56, float %2679, float %2680, float %2681, float %2682, float %2547, float %2548, float %2549, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2704 = fsub fast float %2700, %2676
  %2705 = fsub fast float %2702, %2676
  %2706 = fsub fast float %2701, %2683
  %2707 = fsub fast float %2703, %2683
  %2708 = call float @dx.op.dot3.f32(i32 55, float %2618, float %2619, float %2620, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %2709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2710 = extractvalue %dx.types.CBufRet.f32 %2709, 2
  %2711 = fadd fast float %2710, %2708
  %2712 = call float @dx.op.unary.f32(i32 7, float %2711)  ; Saturate(value)
  %2713 = extractvalue %dx.types.CBufRet.f32 %2709, 0
  %2714 = fcmp fast ogt float %2712, %2713
  %2715 = and i1 %2699, %2714
  %2716 = and i1 %2670, %2715
  br i1 %2716, label %2737, label %2717

; <label>:2717                                    ; preds = %3000, %2818, %2737, %2591
  %2718 = phi float [ %2592, %2737 ], [ %2821, %2818 ], [ %2821, %3000 ], [ %2592, %2591 ]
  %2719 = phi float [ %2593, %2737 ], [ %2593, %2818 ], [ %2975, %3000 ], [ %2593, %2591 ]
  %2720 = phi float [ %2594, %2737 ], [ %2594, %2818 ], [ %2973, %3000 ], [ %2594, %2591 ]
  %2721 = phi float [ %2595, %2737 ], [ %2595, %2818 ], [ %2945, %3000 ], [ %2595, %2591 ]
  %2722 = phi float [ %2596, %2737 ], [ %2596, %2818 ], [ %2943, %3000 ], [ %2596, %2591 ]
  %2723 = phi float [ %2597, %2737 ], [ %2597, %2818 ], [ %3010, %3000 ], [ %2597, %2591 ]
  %2724 = phi float [ %2598, %2737 ], [ %2598, %2818 ], [ %3011, %3000 ], [ %2598, %2591 ]
  %2725 = phi float [ %2599, %2737 ], [ %2599, %2818 ], [ %3012, %3000 ], [ %2599, %2591 ]
  %2726 = phi float [ %2600, %2737 ], [ %2600, %2818 ], [ %2924, %3000 ], [ %2600, %2591 ]
  %2727 = phi float [ %2601, %2737 ], [ %2601, %2818 ], [ %2925, %3000 ], [ %2601, %2591 ]
  %2728 = phi float [ %2602, %2737 ], [ %2602, %2818 ], [ %2926, %3000 ], [ %2602, %2591 ]
  %2729 = phi float [ %2603, %2737 ], [ %2603, %2818 ], [ %2953, %3000 ], [ %2603, %2591 ]
  %2730 = phi float [ %2604, %2737 ], [ %2604, %2818 ], [ %2950, %3000 ], [ %2604, %2591 ]
  %2731 = phi float [ %2605, %2737 ], [ %2605, %2818 ], [ %2947, %3000 ], [ %2605, %2591 ]
  %2732 = phi float [ %2606, %2737 ], [ %2606, %2818 ], [ %2941, %3000 ], [ %2606, %2591 ]
  %2733 = phi float [ %2607, %2737 ], [ %2607, %2818 ], [ %2936, %3000 ], [ %2607, %2591 ]
  %2734 = phi float [ %2608, %2737 ], [ %2608, %2818 ], [ %2937, %3000 ], [ %2608, %2591 ]
  %2735 = phi float [ %2609, %2737 ], [ %2609, %2818 ], [ %2938, %3000 ], [ %2609, %2591 ]
  %2736 = icmp eq i32 %2667, %2590
  br i1 %2736, label %3013, label %2591

; <label>:2737                                    ; preds = %2591
  %2738 = extractvalue %dx.types.ResRet.f32 %2637, 3
  %2739 = extractvalue %dx.types.ResRet.f32 %2637, 1
  %2740 = extractvalue %dx.types.ResRet.f32 %2637, 0
  %2741 = extractvalue %dx.types.ResRet.f32 %2627, 1
  %2742 = extractvalue %dx.types.ResRet.f32 %2627, 0
  %2743 = extractvalue %dx.types.ResRet.i32 %2623, 3
  %2744 = extractvalue %dx.types.ResRet.i32 %2623, 2
  %2745 = add i32 %2743, 0
  %2746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2745, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2747 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2748 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2746, %dx.types.Handle %2747, float %2676, float %2683, float undef, float undef, i32 0, i32 0, i32 undef, float %2704, float %2706, float undef, float %2705, float %2707, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2749 = extractvalue %dx.types.ResRet.f32 %2748, 0
  %2750 = fmul fast float %2749, %2742
  %2751 = fadd fast float %2750, %2741
  %2752 = call float @dx.op.unary.f32(i32 7, float %2751)  ; Saturate(value)
  %2753 = fmul fast float %2676, %2632
  %2754 = call float @dx.op.tertiary.f32(i32 46, float %2633, float %2683, float %2753)  ; FMad(a,b,c)
  %2755 = fadd fast float %2754, %2740
  %2756 = fmul fast float %2676, %2634
  %2757 = call float @dx.op.tertiary.f32(i32 46, float %2635, float %2683, float %2756)  ; FMad(a,b,c)
  %2758 = fadd fast float %2757, %2739
  %2759 = fmul fast float %2704, %2632
  %2760 = call float @dx.op.tertiary.f32(i32 46, float %2633, float %2706, float %2759)  ; FMad(a,b,c)
  %2761 = fmul fast float %2704, %2634
  %2762 = call float @dx.op.tertiary.f32(i32 46, float %2635, float %2706, float %2761)  ; FMad(a,b,c)
  %2763 = fmul fast float %2705, %2632
  %2764 = call float @dx.op.tertiary.f32(i32 46, float %2633, float %2707, float %2763)  ; FMad(a,b,c)
  %2765 = fmul fast float %2705, %2634
  %2766 = call float @dx.op.tertiary.f32(i32 46, float %2635, float %2707, float %2765)  ; FMad(a,b,c)
  %2767 = add i32 %2744, 0
  %2768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2767, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2769 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2768, %dx.types.Handle %2747, float %2755, float %2758, float undef, float undef, i32 0, i32 0, i32 undef, float %2760, float %2762, float undef, float %2764, float %2766, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2770 = extractvalue %dx.types.ResRet.f32 %2769, 0
  %2771 = and i32 %2668, 1024
  %2772 = icmp ne i32 %2771, 0
  %2773 = fcmp fast ogt float %2770, 0x3FE0101020000000
  %2774 = uitofp i1 %2773 to float
  %2775 = select i1 %2772, float %2774, float %2770
  %2776 = and i32 %2668, 8192
  %2777 = icmp ne i32 %2776, 0
  %2778 = select i1 %2777, float %2738, float 1.000000e+00
  %2779 = fmul fast float %2676, 2.000000e+00
  %2780 = fadd fast float %2779, -1.000000e+00
  %2781 = call float @dx.op.unary.f32(i32 6, float %2780)  ; FAbs(value)
  %2782 = fmul fast float %2781, %2665
  %2783 = fsub fast float %2782, %2665
  %2784 = call float @dx.op.unary.f32(i32 7, float %2783)  ; Saturate(value)
  %2785 = fmul fast float %2683, 2.000000e+00
  %2786 = fadd fast float %2785, -1.000000e+00
  %2787 = call float @dx.op.unary.f32(i32 6, float %2786)  ; FAbs(value)
  %2788 = fmul fast float %2787, %2666
  %2789 = fsub fast float %2788, %2666
  %2790 = call float @dx.op.unary.f32(i32 7, float %2789)  ; Saturate(value)
  %2791 = fmul fast float %2695, %2628
  %2792 = fsub fast float %2791, %2628
  %2793 = call float @dx.op.unary.f32(i32 7, float %2792)  ; Saturate(value)
  %2794 = fmul fast float %2752, %2778
  %2795 = fmul fast float %2794, %2749
  %2796 = fmul fast float %2795, %2784
  %2797 = fmul fast float %2796, %2775
  %2798 = fmul fast float %2797, %2790
  %2799 = fmul fast float %2798, %2793
  %2800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2801 = extractvalue %dx.types.CBufRet.f32 %2800, 1
  %2802 = extractvalue %dx.types.CBufRet.f32 %2800, 0
  %2803 = fsub fast float %2712, %2802
  %2804 = fmul fast float %2803, %2801
  %2805 = call float @dx.op.unary.f32(i32 7, float %2804)  ; Saturate(value)
  %2806 = fmul fast float %2799, %2629
  %2807 = fadd fast float %2799, %2629
  %2808 = fmul fast float %2807, %2638
  %2809 = fsub fast float %2808, %2638
  %2810 = call float @dx.op.unary.f32(i32 7, float %2809)  ; Saturate(value)
  %2811 = and i32 %2668, 128
  %2812 = icmp ne i32 %2811, 0
  %2813 = select i1 %2812, float %2810, float %2806
  %2814 = fmul fast float %2813, %2805
  %2815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2816 = extractvalue %dx.types.CBufRet.f32 %2815, 0
  %2817 = fcmp fast ugt float %2814, %2816
  br i1 %2817, label %2818, label %2717

; <label>:2818                                    ; preds = %2737
  %2819 = select i1 %2777, float %2814, float 0.000000e+00
  %2820 = fadd fast float %2819, %2592
  %2821 = call float @dx.op.unary.f32(i32 7, float %2820)  ; Saturate(value)
  br i1 %2777, label %2717, label %2822

; <label>:2822                                    ; preds = %2818
  %2823 = and i32 %2668, 4
  %2824 = and i32 %2668, 8
  %2825 = add i32 %2624, 0
  %2826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2825, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2827 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2828 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2826, %dx.types.Handle %2827, float %2755, float %2758, float undef, float undef, i32 0, i32 0, i32 undef, float %2760, float %2762, float undef, float %2764, float %2766, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2829 = extractvalue %dx.types.ResRet.f32 %2828, 0
  %2830 = extractvalue %dx.types.ResRet.f32 %2828, 1
  %2831 = extractvalue %dx.types.ResRet.f32 %2828, 2
  %2832 = extractvalue %dx.types.ResRet.f32 %2828, 3
  %2833 = bitcast float %2650 to i32
  %2834 = and i32 %2833, 255
  %2835 = uitofp i32 %2834 to float
  %2836 = lshr i32 %2833, 8
  %2837 = and i32 %2836, 255
  %2838 = uitofp i32 %2837 to float
  %2839 = fmul fast float %2832, %2835
  %2840 = fadd fast float %2839, %2838
  %2841 = fmul fast float %2840, 0x3F70101000000000
  %2842 = add i32 %2625, 0
  %2843 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2842, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2844 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2843, %dx.types.Handle %2827, float %2755, float %2758, float undef, float undef, i32 0, i32 0, i32 undef, float %2760, float %2762, float undef, float %2764, float %2766, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2845 = extractvalue %dx.types.ResRet.f32 %2844, 0
  %2846 = extractvalue %dx.types.ResRet.f32 %2844, 1
  %2847 = extractvalue %dx.types.ResRet.f32 %2844, 2
  %2848 = extractvalue %dx.types.ResRet.f32 %2844, 3
  %2849 = bitcast float %2644 to i32
  %2850 = and i32 %2849, 255
  %2851 = uitofp i32 %2850 to float
  %2852 = lshr i32 %2849, 8
  %2853 = and i32 %2852, 255
  %2854 = uitofp i32 %2853 to float
  %2855 = lshr i32 %2849, 16
  %2856 = and i32 %2855, 255
  %2857 = uitofp i32 %2856 to float
  %2858 = fmul fast float %2857, 0x3F70101000000000
  %2859 = fmul fast float %2845, %2851
  %2860 = fadd fast float %2859, %2854
  %2861 = fmul fast float %2860, 0x3F70101000000000
  %2862 = fadd fast float %2846, -5.000000e-01
  %2863 = fadd fast float %2848, -5.000000e-01
  %2864 = fmul fast float %2862, %2858
  %2865 = fmul fast float %2863, %2858
  %2866 = fadd fast float %2864, 5.000000e-01
  %2867 = fadd fast float %2865, 5.000000e-01
  %2868 = fmul fast float %2829, %2653
  %2869 = fmul fast float %2830, %2654
  %2870 = fmul fast float %2831, %2655
  %2871 = fmul fast float %2866, 2.000000e+00
  %2872 = fadd fast float %2871, -1.000000e+00
  %2873 = fmul fast float %2867, 2.000000e+00
  %2874 = fadd fast float %2873, -1.000000e+00
  %2875 = fadd fast float %2872, %2874
  %2876 = fmul fast float %2875, 5.000000e-01
  %2877 = fsub fast float %2872, %2874
  %2878 = fmul fast float %2877, 5.000000e-01
  %2879 = call float @dx.op.unary.f32(i32 6, float %2876)  ; FAbs(value)
  %2880 = fsub fast float 1.000000e+00, %2879
  %2881 = call float @dx.op.unary.f32(i32 6, float %2878)  ; FAbs(value)
  %2882 = fsub fast float %2880, %2881
  %2883 = call float @dx.op.dot3.f32(i32 55, float %2876, float %2878, float %2882, float %2876, float %2878, float %2882)  ; Dot3(ax,ay,az,bx,by,bz)
  %2884 = call float @dx.op.unary.f32(i32 25, float %2883)  ; Rsqrt(value)
  %2885 = fmul fast float %2876, %2884
  %2886 = fmul fast float %2878, %2884
  %2887 = fmul fast float %2884, %2882
  %2888 = fmul fast float %2887, %2618
  %2889 = fmul fast float %2887, %2619
  %2890 = fmul fast float %2887, %2620
  %2891 = fmul fast float %2885, %2641
  %2892 = fmul fast float %2885, %2642
  %2893 = fmul fast float %2885, %2643
  %2894 = fadd fast float %2891, %2888
  %2895 = fadd fast float %2892, %2889
  %2896 = fadd fast float %2893, %2890
  %2897 = fmul fast float %2886, %2647
  %2898 = fmul fast float %2886, %2648
  %2899 = fmul fast float %2886, %2649
  %2900 = fadd fast float %2894, %2897
  %2901 = fadd fast float %2895, %2898
  %2902 = fadd fast float %2896, %2899
  %2903 = call float @dx.op.dot3.f32(i32 55, float %2900, float %2901, float %2902, float %2900, float %2901, float %2902)  ; Dot3(ax,ay,az,bx,by,bz)
  %2904 = call float @dx.op.unary.f32(i32 25, float %2903)  ; Rsqrt(value)
  %2905 = fmul fast float %2900, %2904
  %2906 = fmul fast float %2901, %2904
  %2907 = fmul fast float %2902, %2904
  %2908 = icmp ne i32 %2824, 0
  %2909 = select i1 %2908, float 1.000000e+00, float 0.000000e+00
  %2910 = fmul fast float %2814, %2909
  %2911 = and i32 %2668, 1
  %2912 = icmp eq i32 %2911, 0
  br i1 %2912, label %2913, label %2917

; <label>:2913                                    ; preds = %2822
  %2914 = fsub fast float %2905, %2600
  %2915 = fsub fast float %2906, %2601
  %2916 = fsub fast float %2907, %2602
  br label %2917

; <label>:2917                                    ; preds = %2913, %2822
  %2918 = phi float [ %2914, %2913 ], [ %2905, %2822 ]
  %2919 = phi float [ %2915, %2913 ], [ %2906, %2822 ]
  %2920 = phi float [ %2916, %2913 ], [ %2907, %2822 ]
  %2921 = fmul float %2920, %2910
  %2922 = fmul float %2919, %2910
  %2923 = fmul float %2918, %2910
  %2924 = fadd fast float %2923, %2600
  %2925 = fadd fast float %2922, %2601
  %2926 = fadd fast float %2921, %2602
  %2927 = icmp ne i32 %2823, 0
  %2928 = select i1 %2927, float 1.000000e+00, float 0.000000e+00
  %2929 = fmul fast float %2814, %2928
  %2930 = fsub fast float %2868, %2607
  %2931 = fsub fast float %2869, %2608
  %2932 = fsub fast float %2870, %2609
  %2933 = fmul fast float %2930, %2929
  %2934 = fmul fast float %2931, %2929
  %2935 = fmul fast float %2932, %2929
  %2936 = fadd fast float %2933, %2607
  %2937 = fadd fast float %2934, %2608
  %2938 = fadd fast float %2935, %2609
  %2939 = fsub fast float %2841, %2606
  %2940 = fmul fast float %2939, %2929
  %2941 = fadd fast float %2940, %2606
  %2942 = fmul fast float %2929, %2596
  %2943 = fsub fast float %2596, %2942
  %2944 = fmul fast float %2929, %2595
  %2945 = fsub fast float %2595, %2944
  %2946 = fadd fast float %2814, %2605
  %2947 = call float @dx.op.unary.f32(i32 7, float %2946)  ; Saturate(value)
  %2948 = fsub fast float %2861, %2604
  %2949 = fmul fast float %2948, %2910
  %2950 = fadd fast float %2949, %2604
  %2951 = fsub fast float %2847, %2603
  %2952 = fmul fast float %2951, %2910
  %2953 = fadd fast float %2952, %2603
  %2954 = call float @dx.op.dot3.f32(i32 55, float %2868, float %2869, float %2870, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2956 = extractvalue %dx.types.CBufRet.f32 %2955, 0
  %2957 = extractvalue %dx.types.CBufRet.f32 %2955, 1
  %2958 = fmul fast float %2957, %2954
  %2959 = fadd fast float %2958, %2956
  %2960 = call float @dx.op.unary.f32(i32 7, float %2959)  ; Saturate(value)
  %2961 = bitcast float %2656 to i32
  %2962 = and i32 %2961, 65535
  %2963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2962)  ; LegacyF16ToF32(value)
  %2964 = lshr i32 %2961, 16
  %2965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2964)  ; LegacyF16ToF32(value)
  %2966 = fcmp fast oge float %2963, 0.000000e+00
  %2967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2968 = extractvalue %dx.types.CBufRet.f32 %2967, 0
  %2969 = select i1 %2966, float %2963, float %2968
  %2970 = fadd fast float %2969, %2965
  %2971 = fsub fast float %2960, %2594
  %2972 = fmul fast float %2971, %2814
  %2973 = fadd fast float %2972, %2594
  %2974 = fmul fast float %2970, %2814
  %2975 = call float @dx.op.binary.f32(i32 35, float %2593, float %2974)  ; FMax(a,b)
  %2976 = and i32 %2668, 16
  %2977 = icmp eq i32 %2976, 0
  br i1 %2977, label %3000, label %2978

; <label>:2978                                    ; preds = %2917
  %2979 = bitcast float %2662 to i32
  %2980 = add i32 %2659, 0
  %2981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2980, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2982 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2981, %dx.types.Handle %2827, float %2755, float %2758, float undef, float undef, i32 0, i32 0, i32 undef, float %2760, float %2762, float undef, float %2764, float %2766, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2983 = extractvalue %dx.types.ResRet.f32 %2982, 0
  %2984 = extractvalue %dx.types.ResRet.f32 %2982, 1
  %2985 = extractvalue %dx.types.ResRet.f32 %2982, 2
  %2986 = and i32 %2979, 65535
  %2987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2986)  ; LegacyF16ToF32(value)
  %2988 = fmul fast float %2983, %2653
  %2989 = fmul fast float %2984, %2654
  %2990 = fmul fast float %2985, %2655
  %2991 = and i32 %2668, 16384
  %2992 = icmp ne i32 %2991, 0
  %2993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2994 = extractvalue %dx.types.CBufRet.f32 %2993, 0
  %2995 = select i1 %2992, float %2994, float 1.000000e+00
  %2996 = fmul fast float %2995, %2987
  %2997 = fmul fast float %2988, %2996
  %2998 = fmul fast float %2989, %2996
  %2999 = fmul fast float %2990, %2996
  br label %3000

; <label>:3000                                    ; preds = %2978, %2917
  %3001 = phi float [ %2997, %2978 ], [ 0.000000e+00, %2917 ]
  %3002 = phi float [ %2998, %2978 ], [ 0.000000e+00, %2917 ]
  %3003 = phi float [ %2999, %2978 ], [ 0.000000e+00, %2917 ]
  %3004 = fsub fast float %3001, %2597
  %3005 = fsub fast float %3002, %2598
  %3006 = fsub fast float %3003, %2599
  %3007 = fmul fast float %3004, %2814
  %3008 = fmul fast float %3005, %2814
  %3009 = fmul fast float %3006, %2814
  %3010 = fadd fast float %3007, %2597
  %3011 = fadd fast float %3008, %2598
  %3012 = fadd fast float %3009, %2599
  br label %2717

; <label>:3013                                    ; preds = %2717
  br label %3014

; <label>:3014                                    ; preds = %3013, %2478
  %3015 = phi float [ 0.000000e+00, %2478 ], [ %2718, %3013 ]
  %3016 = phi float [ %2509, %2478 ], [ %2719, %3013 ]
  %3017 = phi float [ %2490, %2478 ], [ %2720, %3013 ]
  %3018 = phi float [ 0.000000e+00, %2478 ], [ %2721, %3013 ]
  %3019 = phi float [ 0.000000e+00, %2478 ], [ %2722, %3013 ]
  %3020 = phi float [ %2484, %2478 ], [ %2723, %3013 ]
  %3021 = phi float [ %2485, %2478 ], [ %2724, %3013 ]
  %3022 = phi float [ %2486, %2478 ], [ %2725, %3013 ]
  %3023 = phi float [ %2535, %2478 ], [ %2726, %3013 ]
  %3024 = phi float [ %2536, %2478 ], [ %2727, %3013 ]
  %3025 = phi float [ %2537, %2478 ], [ %2728, %3013 ]
  %3026 = phi float [ %2489, %2478 ], [ %2729, %3013 ]
  %3027 = phi float [ %2488, %2478 ], [ %2730, %3013 ]
  %3028 = phi float [ 0.000000e+00, %2478 ], [ %2731, %3013 ]
  %3029 = phi float [ %2487, %2478 ], [ %2732, %3013 ]
  %3030 = phi float [ %2481, %2478 ], [ %2733, %3013 ]
  %3031 = phi float [ %2482, %2478 ], [ %2734, %3013 ]
  %3032 = phi float [ %2483, %2478 ], [ %2735, %3013 ]
  %3033 = call float @dx.op.dot3.f32(i32 55, float %3023, float %3024, float %3025, float %3023, float %3024, float %3025)  ; Dot3(ax,ay,az,bx,by,bz)
  %3034 = call float @dx.op.unary.f32(i32 25, float %3033)  ; Rsqrt(value)
  %3035 = fmul fast float %3034, %3023
  %3036 = fmul fast float %3034, %3024
  %3037 = fmul fast float %3034, %3025
  %3038 = fadd fast float %3028, %797
  %3039 = call float @dx.op.unary.f32(i32 7, float %3038)  ; Saturate(value)
  %3040 = call float @dx.op.dot3.f32(i32 55, float %3035, float %3036, float %3037, float %3035, float %3036, float %3037)  ; Dot3(ax,ay,az,bx,by,bz)
  %3041 = call float @dx.op.unary.f32(i32 25, float %3040)  ; Rsqrt(value)
  %3042 = fmul fast float %3041, %3035
  %3043 = fmul fast float %3041, %3036
  %3044 = fmul fast float %3041, %3037
  %3045 = fadd fast float %3029, 0xBFB99999A0000000
  %3046 = call float @dx.op.unary.f32(i32 7, float %3045)  ; Saturate(value)
  %3047 = fmul fast float %3046, 0x3FF1C71C80000000
  %3048 = call float @dx.op.binary.f32(i32 36, float %3029, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3049 = fsub fast float 1.000000e+00, %3047
  %3050 = call float @dx.op.unary.f32(i32 7, float %3049)  ; Saturate(value)
  %3051 = fmul fast float %3050, %3030
  %3052 = fmul fast float %3050, %3031
  %3053 = fmul fast float %3050, %3032
  %3054 = call float @dx.op.unary.f32(i32 7, float %3051)  ; Saturate(value)
  %3055 = call float @dx.op.unary.f32(i32 7, float %3052)  ; Saturate(value)
  %3056 = call float @dx.op.unary.f32(i32 7, float %3053)  ; Saturate(value)
  %3057 = fmul fast float %3047, %3030
  %3058 = fmul fast float %3047, %3031
  %3059 = fmul fast float %3047, %3032
  %3060 = fadd fast float %3057, %3048
  %3061 = fadd fast float %3058, %3048
  %3062 = fadd fast float %3059, %3048
  %3063 = call float @dx.op.unary.f32(i32 7, float %3060)  ; Saturate(value)
  %3064 = call float @dx.op.unary.f32(i32 7, float %3061)  ; Saturate(value)
  %3065 = call float @dx.op.unary.f32(i32 7, float %3062)  ; Saturate(value)
  %3066 = call float @dx.op.unary.f32(i32 7, float %3027)  ; Saturate(value)
  %3067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3068 = extractvalue %dx.types.CBufRet.i32 %3067, 3
  %3069 = and i32 %3068, 8
  %3070 = icmp ne i32 %3069, 0
  %3071 = call float @dx.op.binary.f32(i32 35, float %3054, float %3030)  ; FMax(a,b)
  %3072 = call float @dx.op.binary.f32(i32 35, float %3055, float %3030)  ; FMax(a,b)
  %3073 = call float @dx.op.binary.f32(i32 35, float %3056, float %3030)  ; FMax(a,b)
  %3074 = call float @dx.op.dot3.f32(i32 55, float %3054, float %3055, float %3056, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3075 = select i1 %196, float %3030, float %3054
  %3076 = select i1 %196, float %3074, float %3055
  %3077 = select i1 %196, float 1.000000e+00, float %3056
  %3078 = select i1 %3070, float %3071, float %3075
  %3079 = select i1 %3070, float %3072, float %3076
  %3080 = select i1 %3070, float %3073, float %3077
  %3081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3082 = extractvalue %dx.types.CBufRet.f32 %3081, 0
  %3083 = extractvalue %dx.types.CBufRet.f32 %3081, 1
  %3084 = extractvalue %dx.types.CBufRet.f32 %3081, 2
  %3085 = fadd fast float %3082, %125
  %3086 = fadd fast float %3083, %126
  %3087 = fadd fast float %3084, %127
  %3088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3089 = extractvalue %dx.types.CBufRet.f32 %3088, 0
  %3090 = extractvalue %dx.types.CBufRet.f32 %3088, 1
  %3091 = fsub fast float %3085, %3089
  %3092 = fsub fast float %3086, %3090
  %3093 = fmul fast float %3091, %3091
  %3094 = fmul fast float %3092, %3092
  %3095 = fadd fast float %3093, %3094
  %3096 = call float @dx.op.unary.f32(i32 24, float %3095)  ; Sqrt(value)
  %3097 = extractvalue %dx.types.CBufRet.f32 %3088, 2
  %3098 = fcmp fast olt float %3096, %3097
  br i1 %3098, label %3099, label %3166

; <label>:3099                                    ; preds = %3014
  %3100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3101 = extractvalue %dx.types.CBufRet.f32 %3100, 0
  %3102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3103 = extractvalue %dx.types.CBufRet.f32 %3102, 0
  %3104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3105 = extractvalue %dx.types.CBufRet.f32 %3104, 0
  %3106 = extractvalue %dx.types.CBufRet.f32 %3100, 1
  %3107 = extractvalue %dx.types.CBufRet.f32 %3102, 1
  %3108 = extractvalue %dx.types.CBufRet.f32 %3104, 1
  %3109 = extractvalue %dx.types.CBufRet.f32 %3100, 3
  %3110 = extractvalue %dx.types.CBufRet.f32 %3102, 3
  %3111 = extractvalue %dx.types.CBufRet.f32 %3104, 3
  %3112 = fadd fast float %3109, %3085
  %3113 = fadd fast float %3110, %3086
  %3114 = fadd fast float %3111, %3087
  %3115 = fmul fast float %3112, %3101
  %3116 = call float @dx.op.tertiary.f32(i32 46, float %3113, float %3103, float %3115)  ; FMad(a,b,c)
  %3117 = call float @dx.op.tertiary.f32(i32 46, float %3114, float %3105, float %3116)  ; FMad(a,b,c)
  %3118 = fmul fast float %3112, %3106
  %3119 = call float @dx.op.tertiary.f32(i32 46, float %3113, float %3107, float %3118)  ; FMad(a,b,c)
  %3120 = call float @dx.op.tertiary.f32(i32 46, float %3114, float %3108, float %3119)  ; FMad(a,b,c)
  %3121 = fsub fast float %3117, %3109
  %3122 = fsub fast float %3120, %3110
  %3123 = fsub fast float %3121, %3089
  %3124 = fadd fast float %3123, %3097
  %3125 = fsub fast float %3122, %3090
  %3126 = fadd fast float %3125, %3097
  %3127 = extractvalue %dx.types.CBufRet.f32 %3088, 3
  %3128 = fmul fast float %3124, %3127
  %3129 = fmul fast float %3126, %3127
  %3130 = call float @dx.op.unary.f32(i32 7, float %3128)  ; Saturate(value)
  %3131 = call float @dx.op.unary.f32(i32 7, float %3129)  ; Saturate(value)
  %3132 = fsub fast float 1.000000e+00, %3130
  %3133 = fsub fast float 1.000000e+00, %3131
  %3134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %3132, float %3133, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3135 = extractvalue %dx.types.ResRet.f32 %3134, 0
  %3136 = fcmp fast ugt float %3135, 0.000000e+00
  br i1 %3136, label %3137, label %3440

; <label>:3137                                    ; preds = %3099
  %3138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3139 = extractvalue %dx.types.CBufRet.f32 %3138, 2
  %3140 = fmul fast float %3139, %3135
  %3141 = extractvalue %dx.types.CBufRet.f32 %3138, 3
  %3142 = fadd fast float %3141, %3140
  %3143 = extractvalue %dx.types.CBufRet.f32 %3104, 2
  %3144 = fadd fast float %3142, %3111
  %3145 = fmul fast float %3117, %3105
  %3146 = call float @dx.op.tertiary.f32(i32 46, float %3120, float %3108, float %3145)  ; FMad(a,b,c)
  %3147 = call float @dx.op.tertiary.f32(i32 46, float %3144, float %3143, float %3146)  ; FMad(a,b,c)
  %3148 = fsub fast float %3147, %3111
  %3149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3150 = extractvalue %dx.types.CBufRet.f32 %3149, 2
  %3151 = fsub fast float %3148, %3150
  %3152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %3132, float %3133, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3153 = extractvalue %dx.types.ResRet.f32 %3152, 0
  %3154 = extractvalue %dx.types.ResRet.f32 %3152, 1
  %3155 = extractvalue %dx.types.ResRet.f32 %3152, 2
  %3156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %3132, float %3133, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3157 = extractvalue %dx.types.ResRet.f32 %3156, 0
  %3158 = extractvalue %dx.types.ResRet.f32 %3156, 1
  %3159 = extractvalue %dx.types.ResRet.f32 %3156, 2
  %3160 = fadd fast float %3157, %3153
  %3161 = fmul fast float %3160, 0x3F847AE140000000
  %3162 = fadd fast float %3158, %3154
  %3163 = fmul fast float %3162, 0x3F847AE140000000
  %3164 = fadd fast float %3159, %3155
  %3165 = fmul fast float %3164, 0x3F847AE140000000
  br label %3440

; <label>:3166                                    ; preds = %3014
  %3167 = and i32 %172, 1
  %3168 = icmp eq i32 %3167, 0
  br i1 %3168, label %3440, label %3169

; <label>:3169                                    ; preds = %3166
  %3170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3171 = extractvalue %dx.types.CBufRet.f32 %3170, 0
  %3172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3173 = extractvalue %dx.types.CBufRet.f32 %3172, 0
  %3174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3175 = extractvalue %dx.types.CBufRet.f32 %3174, 0
  %3176 = extractvalue %dx.types.CBufRet.f32 %3170, 1
  %3177 = extractvalue %dx.types.CBufRet.f32 %3172, 1
  %3178 = extractvalue %dx.types.CBufRet.f32 %3174, 1
  %3179 = extractvalue %dx.types.CBufRet.f32 %3170, 3
  %3180 = extractvalue %dx.types.CBufRet.f32 %3172, 3
  %3181 = extractvalue %dx.types.CBufRet.f32 %3174, 3
  %3182 = fadd fast float %3179, %3085
  %3183 = fadd fast float %3180, %3086
  %3184 = fadd fast float %3181, %3087
  %3185 = fmul fast float %3182, %3171
  %3186 = call float @dx.op.tertiary.f32(i32 46, float %3183, float %3173, float %3185)  ; FMad(a,b,c)
  %3187 = call float @dx.op.tertiary.f32(i32 46, float %3184, float %3175, float %3186)  ; FMad(a,b,c)
  %3188 = fmul fast float %3182, %3176
  %3189 = call float @dx.op.tertiary.f32(i32 46, float %3183, float %3177, float %3188)  ; FMad(a,b,c)
  %3190 = call float @dx.op.tertiary.f32(i32 46, float %3184, float %3178, float %3189)  ; FMad(a,b,c)
  %3191 = fsub fast float %3187, %3179
  %3192 = fsub fast float %3190, %3180
  %3193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3194 = extractvalue %dx.types.CBufRet.f32 %3193, 0
  %3195 = extractvalue %dx.types.CBufRet.f32 %3193, 1
  %3196 = extractvalue %dx.types.CBufRet.f32 %3193, 2
  %3197 = extractvalue %dx.types.CBufRet.f32 %3193, 3
  %3198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3199 = extractvalue %dx.types.CBufRet.f32 %3198, 3
  %3200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.i32 %3200, 0
  %3202 = extractvalue %dx.types.CBufRet.i32 %3200, 1
  %3203 = udiv i32 %3202, %3201
  %3204 = fsub fast float %3191, %3194
  %3205 = fsub fast float %3192, %3195
  %3206 = call float @dx.op.binary.f32(i32 35, float %3204, float 0.000000e+00)  ; FMax(a,b)
  %3207 = call float @dx.op.binary.f32(i32 35, float %3205, float 0.000000e+00)  ; FMax(a,b)
  %3208 = call float @dx.op.binary.f32(i32 36, float %3206, float %3196)  ; FMin(a,b)
  %3209 = call float @dx.op.binary.f32(i32 36, float %3207, float %3197)  ; FMin(a,b)
  %3210 = add i32 %3201, -1
  %3211 = add i32 %3203, -1
  %3212 = fmul fast float %3208, %3199
  %3213 = fmul fast float %3209, %3199
  %3214 = fptoui float %3212 to i32
  %3215 = fptoui float %3213 to i32
  %3216 = call i32 @dx.op.binary.i32(i32 40, i32 %3214, i32 %3210)  ; UMin(a,b)
  %3217 = call i32 @dx.op.binary.i32(i32 40, i32 %3215, i32 %3211)  ; UMin(a,b)
  %3218 = mul i32 %3217, %3201
  %3219 = add i32 %3218, %3216
  %3220 = shl i32 %3219, 2
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3220, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = icmp eq i32 %3222, -1
  br i1 %3223, label %3440, label %3224

; <label>:3224                                    ; preds = %3169
  %3225 = mul i32 %3222, 148
  %3226 = add i32 %3225, 4
  %3227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.f32 %3227, 0
  %3229 = add i32 %3225, 8
  %3230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3229, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.f32 %3230, 0
  %3232 = add i32 %3225, 36
  %3233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3232, i32 undef)  ; BufferLoad(srv,index,wot)
  %3234 = extractvalue %dx.types.ResRet.f32 %3233, 0
  %3235 = add i32 %3225, 60
  %3236 = add i32 %3225, 92
  %3237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3236, i32 undef)  ; BufferLoad(srv,index,wot)
  %3238 = extractvalue %dx.types.ResRet.i32 %3237, 0
  %3239 = add i32 %3225, 116
  %3240 = fsub fast float %3191, %3228
  %3241 = fsub fast float %3192, %3231
  %3242 = fmul fast float %3199, %3240
  %3243 = fmul fast float %3199, %3241
  %3244 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  %3245 = call float @dx.op.unary.f32(i32 7, float %3243)  ; Saturate(value)
  %3246 = fsub fast float 1.000000e+00, %3245
  %3247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3248 = extractvalue %dx.types.CBufRet.f32 %3247, 2
  %3249 = call float @dx.op.unary.f32(i32 83, float %3244)  ; DerivCoarseX(value)
  %3250 = call float @dx.op.unary.f32(i32 83, float %3246)  ; DerivCoarseX(value)
  %3251 = call float @dx.op.unary.f32(i32 84, float %3244)  ; DerivCoarseY(value)
  %3252 = call float @dx.op.unary.f32(i32 84, float %3246)  ; DerivCoarseY(value)
  %3253 = fmul fast float %3249, %3248
  %3254 = fmul fast float %3250, %3248
  %3255 = fmul fast float %3251, %3248
  %3256 = fmul fast float %3252, %3248
  %3257 = call float @dx.op.dot2.f32(i32 54, float %3255, float %3256, float %3255, float %3256)  ; Dot2(ax,ay,bx,by)
  %3258 = call float @dx.op.dot2.f32(i32 54, float %3253, float %3254, float %3253, float %3254)  ; Dot2(ax,ay,bx,by)
  %3259 = call float @dx.op.binary.f32(i32 35, float %3258, float %3257)  ; FMax(a,b)
  %3260 = call float @dx.op.unary.f32(i32 23, float %3259)  ; Log(value)
  %3261 = fmul fast float %3260, 5.000000e-01
  %3262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3263 = extractvalue %dx.types.CBufRet.f32 %3262, 1
  %3264 = fadd fast float %3263, %3261
  %3265 = call float @dx.op.binary.f32(i32 35, float %3264, float 0.000000e+00)  ; FMax(a,b)
  %3266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3267 = extractvalue %dx.types.CBufRet.f32 %3266, 3
  %3268 = fadd fast float %3267, %3265
  %3269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3270 = extractvalue %dx.types.CBufRet.f32 %3269, 3
  %3271 = fadd fast float %3268, %3270
  %3272 = add i32 %3238, 0
  %3273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3272, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3274 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3273, i32 0)  ; GetDimensions(handle,mipLevel)
  %3275 = extractvalue %dx.types.Dimensions %3274, 0
  %3276 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3275)  ; FirstbitLo(value)
  %3277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3278 = extractvalue %dx.types.CBufRet.i32 %3277, 1
  %3279 = sub nsw i32 %3278, %3276
  %3280 = sitofp i32 %3279 to float
  %3281 = fsub fast float %3271, %3280
  %3282 = call float @dx.op.binary.f32(i32 35, float %3281, float 0.000000e+00)  ; FMax(a,b)
  %3283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3273, %dx.types.Handle %37, float %3244, float %3246, float %3234, float undef, i32 0, i32 0, i32 undef, float %3282)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3284 = extractvalue %dx.types.ResRet.f32 %3283, 0
  %3285 = fcmp ule float %3284, 0x3FE0101020000000
  %3286 = extractvalue %dx.types.CBufRet.i32 %3277, 0
  %3287 = and i32 %3286, 128
  %3288 = icmp ne i32 %3287, 0
  %3289 = and i1 %3285, %3288
  br i1 %3289, label %3440, label %3290

; <label>:3290                                    ; preds = %3224
  %3291 = add i32 %3225, 20
  %3292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3291, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.f32 %3292, 0
  %3294 = add i32 %3225, 24
  %3295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.f32 %3295, 0
  %3297 = add i32 %3225, 40
  %3298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3297, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.f32 %3298, 0
  %3300 = add i32 %3225, 96
  %3301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3300, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.i32 %3301, 0
  %3303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3304 = extractvalue %dx.types.CBufRet.f32 %3303, 2
  %3305 = fmul fast float %3304, %3244
  %3306 = fmul fast float %3304, %3246
  %3307 = extractvalue %dx.types.CBufRet.f32 %3303, 3
  %3308 = fadd fast float %3305, %3307
  %3309 = fadd fast float %3306, %3307
  %3310 = add i32 %3302, 0
  %3311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3310, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3312 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3311, i32 0)  ; GetDimensions(handle,mipLevel)
  %3313 = extractvalue %dx.types.Dimensions %3312, 0
  %3314 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3313)  ; FirstbitLo(value)
  %3315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3316 = extractvalue %dx.types.CBufRet.i32 %3315, 1
  %3317 = sub nsw i32 %3316, %3314
  %3318 = sitofp i32 %3317 to float
  %3319 = fsub fast float %3268, %3318
  %3320 = call float @dx.op.binary.f32(i32 35, float %3319, float 0.000000e+00)  ; FMax(a,b)
  %3321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3311, %dx.types.Handle %37, float %3308, float %3309, float %3299, float undef, i32 0, i32 0, i32 undef, float %3320)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3323 = fmul fast float %3322, %3293
  %3324 = fadd fast float %3323, %3296
  %3325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3326 = extractvalue %dx.types.CBufRet.f32 %3325, 0
  %3327 = extractvalue %dx.types.CBufRet.f32 %3325, 1
  %3328 = extractvalue %dx.types.CBufRet.f32 %3325, 2
  %3329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3330 = extractvalue %dx.types.CBufRet.f32 %3329, 3
  %3331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3332 = extractvalue %dx.types.CBufRet.f32 %3331, 3
  %3333 = extractvalue %dx.types.CBufRet.f32 %3325, 3
  %3334 = fadd fast float %3330, %3191
  %3335 = fadd fast float %3332, %3192
  %3336 = fadd fast float %3324, %3333
  %3337 = fmul fast float %3334, %3326
  %3338 = call float @dx.op.tertiary.f32(i32 46, float %3335, float %3327, float %3337)  ; FMad(a,b,c)
  %3339 = call float @dx.op.tertiary.f32(i32 46, float %3336, float %3328, float %3338)  ; FMad(a,b,c)
  %3340 = fsub fast float %3339, %3333
  %3341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3342 = extractvalue %dx.types.CBufRet.f32 %3341, 2
  %3343 = fsub fast float %3340, %3342
  %3344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3345 = extractvalue %dx.types.CBufRet.i32 %3344, 0
  %3346 = call i32 @dx.op.binary.i32(i32 40, i32 %3222, i32 %3345)  ; UMin(a,b)
  %3347 = mul i32 %3346, 36
  %3348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3347, i32 undef)  ; BufferLoad(srv,index,wot)
  %3349 = extractvalue %dx.types.ResRet.i32 %3348, 0
  %3350 = add i32 %3347, 4
  %3351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3352 = extractvalue %dx.types.CBufRet.f32 %3351, 0
  %3353 = fmul fast float %3352, %3244
  %3354 = fmul fast float %3352, %3246
  %3355 = extractvalue %dx.types.CBufRet.f32 %3351, 1
  %3356 = fadd fast float %3353, %3355
  %3357 = fadd fast float %3354, %3355
  %3358 = icmp eq i32 %3349, 0
  br i1 %3358, label %3427, label %3359

; <label>:3359                                    ; preds = %3290
  br label %3360

; <label>:3360                                    ; preds = %3417, %3359
  %3361 = phi float [ %3418, %3417 ], [ 0.000000e+00, %3359 ]
  %3362 = phi float [ %3419, %3417 ], [ 0.000000e+00, %3359 ]
  %3363 = phi float [ %3420, %3417 ], [ 0.000000e+00, %3359 ]
  %3364 = phi float [ %3421, %3417 ], [ 0.000000e+00, %3359 ]
  %3365 = phi float [ %3422, %3417 ], [ 0.000000e+00, %3359 ]
  %3366 = phi float [ %3423, %3417 ], [ 0.000000e+00, %3359 ]
  %3367 = phi i32 [ %3424, %3417 ], [ 0, %3359 ]
  %3368 = shl i32 %3367, 2
  %3369 = add i32 %3235, %3368
  %3370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.f32 %3370, 0
  %3372 = add i32 %3239, %3368
  %3373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3374 = extractvalue %dx.types.ResRet.i32 %3373, 0
  %3375 = add i32 %3374, 0
  %3376 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3375, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3377 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3376, i32 0)  ; GetDimensions(handle,mipLevel)
  %3378 = extractvalue %dx.types.Dimensions %3377, 0
  %3379 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3378)  ; FirstbitLo(value)
  %3380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3381 = extractvalue %dx.types.CBufRet.i32 %3380, 1
  %3382 = sub nsw i32 %3381, %3379
  %3383 = sitofp i32 %3382 to float
  %3384 = fsub fast float %3268, %3383
  %3385 = call float @dx.op.binary.f32(i32 35, float %3384, float 0.000000e+00)  ; FMax(a,b)
  %3386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3376, %dx.types.Handle %37, float %3356, float %3357, float %3371, float undef, i32 0, i32 0, i32 undef, float %3385)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3387 = extractvalue %dx.types.ResRet.f32 %3386, 0
  %3388 = fcmp fast ogt float %3387, 0.000000e+00
  br i1 %3388, label %3389, label %3417

; <label>:3389                                    ; preds = %3360
  %3390 = add i32 %3350, %3368
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = and i32 %3392, 32767
  %3394 = mul nuw nsw i32 %3393, 928
  %3395 = add nuw nsw i32 %3394, 48
  %3396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3395, i32 undef)  ; BufferLoad(srv,index,wot)
  %3397 = extractvalue %dx.types.ResRet.f32 %3396, 0
  %3398 = extractvalue %dx.types.ResRet.f32 %3396, 1
  %3399 = extractvalue %dx.types.ResRet.f32 %3396, 2
  %3400 = add nuw nsw i32 %3394, 60
  %3401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.f32 %3401, 0
  %3403 = extractvalue %dx.types.ResRet.f32 %3401, 1
  %3404 = extractvalue %dx.types.ResRet.f32 %3401, 2
  %3405 = fmul fast float %3397, %3387
  %3406 = fmul fast float %3398, %3387
  %3407 = fmul fast float %3399, %3387
  %3408 = fadd fast float %3405, %3361
  %3409 = fadd fast float %3406, %3362
  %3410 = fadd fast float %3407, %3363
  %3411 = fmul fast float %3402, %3387
  %3412 = fmul fast float %3403, %3387
  %3413 = fmul fast float %3404, %3387
  %3414 = fadd fast float %3411, %3364
  %3415 = fadd fast float %3412, %3365
  %3416 = fadd fast float %3413, %3366
  br label %3417

; <label>:3417                                    ; preds = %3389, %3360
  %3418 = phi float [ %3408, %3389 ], [ %3361, %3360 ]
  %3419 = phi float [ %3409, %3389 ], [ %3362, %3360 ]
  %3420 = phi float [ %3410, %3389 ], [ %3363, %3360 ]
  %3421 = phi float [ %3414, %3389 ], [ %3364, %3360 ]
  %3422 = phi float [ %3415, %3389 ], [ %3365, %3360 ]
  %3423 = phi float [ %3416, %3389 ], [ %3366, %3360 ]
  %3424 = add nuw i32 %3367, 1
  %3425 = icmp eq i32 %3424, %3349
  br i1 %3425, label %3426, label %3360

; <label>:3426                                    ; preds = %3417
  br label %3427

; <label>:3427                                    ; preds = %3426, %3290
  %3428 = phi float [ 0.000000e+00, %3290 ], [ %3418, %3426 ]
  %3429 = phi float [ 0.000000e+00, %3290 ], [ %3419, %3426 ]
  %3430 = phi float [ 0.000000e+00, %3290 ], [ %3420, %3426 ]
  %3431 = phi float [ 0.000000e+00, %3290 ], [ %3421, %3426 ]
  %3432 = phi float [ 0.000000e+00, %3290 ], [ %3422, %3426 ]
  %3433 = phi float [ 0.000000e+00, %3290 ], [ %3423, %3426 ]
  %3434 = fadd fast float %3431, %3428
  %3435 = fmul fast float %3434, 0x3F847AE140000000
  %3436 = fadd fast float %3432, %3429
  %3437 = fmul fast float %3436, 0x3F847AE140000000
  %3438 = fadd fast float %3433, %3430
  %3439 = fmul fast float %3438, 0x3F847AE140000000
  br label %3440

; <label>:3440                                    ; preds = %3427, %3224, %3169, %3166, %3137, %3099
  %3441 = phi float [ %3151, %3137 ], [ -1.310720e+05, %3099 ], [ %3343, %3427 ], [ -1.310720e+05, %3169 ], [ -1.310720e+05, %3224 ], [ -1.310720e+05, %3166 ]
  %3442 = phi float [ %3161, %3137 ], [ 0.000000e+00, %3099 ], [ %3435, %3427 ], [ 0.000000e+00, %3169 ], [ 0.000000e+00, %3224 ], [ 0.000000e+00, %3166 ]
  %3443 = phi float [ %3163, %3137 ], [ 0.000000e+00, %3099 ], [ %3437, %3427 ], [ 0.000000e+00, %3169 ], [ 0.000000e+00, %3224 ], [ 0.000000e+00, %3166 ]
  %3444 = phi float [ %3165, %3137 ], [ 0.000000e+00, %3099 ], [ %3439, %3427 ], [ 0.000000e+00, %3169 ], [ 0.000000e+00, %3224 ], [ 0.000000e+00, %3166 ]
  %3445 = phi i1 [ true, %3137 ], [ false, %3099 ], [ true, %3427 ], [ false, %3169 ], [ false, %3224 ], [ false, %3166 ]
  %3446 = and i32 %172, 3
  %3447 = icmp eq i32 %3446, 1
  %3448 = select i1 %3447, float 1.000000e+00, float 0.000000e+00
  %3449 = fsub fast float %3441, %127
  %3450 = call float @dx.op.unary.f32(i32 7, float %3449)  ; Saturate(value)
  %3451 = select i1 %3445, float %3450, float 1.000000e+00
  %3452 = fmul fast float %3451, %3448
  %3453 = icmp eq i32 %3446, 3
  %3454 = select i1 %3453, float 1.000000e+00, float %3452
  %3455 = call float @dx.op.binary.f32(i32 35, float %3015, float %3454)  ; FMax(a,b)
  %3456 = call float @dx.op.unary.f32(i32 7, float %3455)  ; Saturate(value)
  %3457 = fcmp fast une float %3456, 0.000000e+00
  %3458 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %3459 = call float @dx.op.unary.f32(i32 25, float %3458)  ; Rsqrt(value)
  br i1 %3457, label %3467, label %3460

; <label>:3460                                    ; preds = %3440
  %3461 = fmul fast float %3459, %125
  %3462 = fmul fast float %3459, %126
  %3463 = fmul fast float %3459, %127
  %3464 = fsub fast float -0.000000e+00, %3461
  %3465 = fsub fast float -0.000000e+00, %3462
  %3466 = fsub fast float -0.000000e+00, %3463
  br label %3635

; <label>:3467                                    ; preds = %3440
  %3468 = fmul fast float %125, %3459
  %3469 = fsub fast float -0.000000e+00, %3468
  %3470 = fmul fast float %126, %3459
  %3471 = fsub fast float -0.000000e+00, %3470
  %3472 = fmul fast float %127, %3459
  %3473 = fsub fast float -0.000000e+00, %3472
  %3474 = call float @dx.op.dot3.f32(i32 55, float %3469, float %3471, float %3473, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %3475 = fmul fast float %3456, 2.500000e+00
  %3476 = call float @dx.op.unary.f32(i32 7, float %3475)  ; Saturate(value)
  %3477 = fmul fast float %3456, 0x4013FFFFE0000000
  %3478 = fadd fast float %3477, 0xBFFFFFFFE0000000
  %3479 = call float @dx.op.unary.f32(i32 7, float %3478)  ; Saturate(value)
  %3480 = fmul fast float %3456, 0x4004000020000000
  %3481 = fadd fast float %3480, 0xBFF8000040000000
  %3482 = call float @dx.op.unary.f32(i32 7, float %3481)  ; Saturate(value)
  %3483 = call float @dx.op.unary.f32(i32 7, float %3476)  ; Saturate(value)
  %3484 = fmul fast float %3045, 1.000000e+01
  %3485 = call float @dx.op.unary.f32(i32 7, float %3484)  ; Saturate(value)
  %3486 = fmul fast float %3485, 2.000000e+00
  %3487 = fsub fast float 3.000000e+00, %3486
  %3488 = fmul fast float %3485, %3485
  %3489 = fmul fast float %3488, %3487
  %3490 = fsub fast float 1.000000e+00, %3489
  %3491 = fsub fast float 0x3FE3333340000000, %3066
  %3492 = fmul fast float %3491, 0x400AAAAAA0000000
  %3493 = call float @dx.op.unary.f32(i32 7, float %3492)  ; Saturate(value)
  %3494 = fmul fast float %3490, %3493
  %3495 = fmul fast float %3078, 0x3FEA2B8620000000
  %3496 = fmul fast float %3079, 0x3FEA2B8620000000
  %3497 = fmul fast float %3080, 0x3FEA2B8620000000
  %3498 = fadd fast float %3495, 0x3FC81DFBA0000000
  %3499 = fmul fast float %3498, %3078
  %3500 = fadd fast float %3499, 0x3F910E6020000000
  %3501 = fadd fast float %3496, 0x3FC81DFBA0000000
  %3502 = fmul fast float %3501, %3079
  %3503 = fadd fast float %3502, 0x3F910E6020000000
  %3504 = fadd fast float %3497, 0x3FC81DFBA0000000
  %3505 = fmul fast float %3504, %3080
  %3506 = fadd fast float %3505, 0x3F910E6020000000
  %3507 = call float @dx.op.unary.f32(i32 7, float %3500)  ; Saturate(value)
  %3508 = call float @dx.op.unary.f32(i32 7, float %3503)  ; Saturate(value)
  %3509 = call float @dx.op.unary.f32(i32 7, float %3506)  ; Saturate(value)
  %3510 = fsub fast float %3507, %3078
  %3511 = fsub fast float %3508, %3079
  %3512 = fsub fast float %3509, %3080
  %3513 = fmul fast float %3510, %3483
  %3514 = fmul fast float %3513, %3494
  %3515 = fmul fast float %3511, %3483
  %3516 = fmul fast float %3515, %3494
  %3517 = fmul fast float %3512, %3483
  %3518 = fmul fast float %3517, %3494
  %3519 = fadd fast float %3514, %3078
  %3520 = fadd fast float %3516, %3079
  %3521 = fadd fast float %3518, %3080
  %3522 = fmul fast float %3026, %3026
  %3523 = fmul fast float %3522, %3522
  %3524 = fadd fast float %3479, 1.000000e+00
  %3525 = fsub fast float %3524, %3494
  %3526 = call float @dx.op.unary.f32(i32 7, float %3525)  ; Saturate(value)
  %3527 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3528 = call float @dx.op.unary.f32(i32 7, float %3527)  ; Saturate(value)
  %3529 = fsub fast float 1.000000e+00, %3523
  %3530 = call float @dx.op.binary.f32(i32 36, float %3526, float %3529)  ; FMin(a,b)
  %3531 = call float @dx.op.unary.f32(i32 7, float %3482)  ; Saturate(value)
  %3532 = call float @dx.op.binary.f32(i32 35, float %3530, float %3531)  ; FMax(a,b)
  %3533 = fadd fast float %3528, 0xBFE4CCCCC0000000
  %3534 = fmul fast float %3533, 0x4006DB6DA0000000
  %3535 = call float @dx.op.unary.f32(i32 7, float %3534)  ; Saturate(value)
  %3536 = fmul fast float %3535, 2.000000e+00
  %3537 = fsub fast float 3.000000e+00, %3536
  %3538 = bitcast float %3063 to i32
  %3539 = ashr i32 %3538, 1
  %3540 = add nsw i32 %3539, 532487669
  %3541 = bitcast i32 %3540 to float
  %3542 = fsub fast float 1.000000e+00, %3541
  %3543 = bitcast float %3542 to i32
  %3544 = sub nsw i32 2129859010, %3543
  %3545 = bitcast i32 %3544 to float
  %3546 = fmul fast float %3545, 2.000000e+00
  %3547 = bitcast float %3064 to i32
  %3548 = ashr i32 %3547, 1
  %3549 = add nsw i32 %3548, 532487669
  %3550 = bitcast i32 %3549 to float
  %3551 = fsub fast float 1.000000e+00, %3550
  %3552 = bitcast float %3551 to i32
  %3553 = sub nsw i32 2129859010, %3552
  %3554 = bitcast i32 %3553 to float
  %3555 = fmul fast float %3554, 2.000000e+00
  %3556 = bitcast float %3065 to i32
  %3557 = ashr i32 %3556, 1
  %3558 = add nsw i32 %3557, 532487669
  %3559 = bitcast i32 %3558 to float
  %3560 = fsub fast float 1.000000e+00, %3559
  %3561 = bitcast float %3560 to i32
  %3562 = sub nsw i32 2129859010, %3561
  %3563 = bitcast i32 %3562 to float
  %3564 = fmul fast float %3563, 2.000000e+00
  %3565 = fsub fast float 0x4002A9FBE0000000, %3546
  %3566 = fadd fast float %3546, 0x3FD54FDF00000000
  %3567 = bitcast float %3566 to i32
  %3568 = sub nsw i32 2129859010, %3567
  %3569 = bitcast i32 %3568 to float
  %3570 = fmul fast float %3569, %3565
  %3571 = fmul fast float %3570, %3570
  %3572 = fsub fast float 0x4002A9FBE0000000, %3555
  %3573 = fadd fast float %3555, 0x3FD54FDF00000000
  %3574 = bitcast float %3573 to i32
  %3575 = sub nsw i32 2129859010, %3574
  %3576 = bitcast i32 %3575 to float
  %3577 = fmul fast float %3576, %3572
  %3578 = fmul fast float %3577, %3577
  %3579 = fsub fast float 0x4002A9FBE0000000, %3564
  %3580 = fadd fast float %3564, 0x3FD54FDF00000000
  %3581 = bitcast float %3580 to i32
  %3582 = sub nsw i32 2129859010, %3581
  %3583 = bitcast i32 %3582 to float
  %3584 = fmul fast float %3583, %3579
  %3585 = fmul fast float %3584, %3584
  %3586 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3571)  ; FMax(a,b)
  %3587 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3578)  ; FMax(a,b)
  %3588 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3585)  ; FMax(a,b)
  %3589 = fsub fast float 1.000000e+00, %3474
  %3590 = fadd fast float %3589, %3490
  %3591 = call float @dx.op.unary.f32(i32 7, float %3590)  ; Saturate(value)
  %3592 = fsub fast float 1.000000e+00, %3454
  %3593 = fmul fast float %3532, %3592
  %3594 = fmul fast float %3535, %3535
  %3595 = fmul fast float %3594, %3593
  %3596 = fmul fast float %3595, %3537
  %3597 = fmul fast float %3592, 0xBFE99999A0000000
  %3598 = fmul fast float %3597, %3483
  %3599 = fmul fast float %3598, %3494
  %3600 = fadd fast float %3599, 1.000000e+00
  %3601 = fadd fast float %3066, -1.000000e+00
  %3602 = fmul fast float %3600, %3601
  %3603 = fadd fast float %3602, 1.000000e+00
  %3604 = fsub fast float %3586, %3063
  %3605 = fsub fast float %3587, %3064
  %3606 = fsub fast float %3588, %3065
  %3607 = fmul fast float %3596, %3604
  %3608 = fmul fast float %3596, %3605
  %3609 = fmul fast float %3596, %3606
  %3610 = fadd fast float %3607, %3063
  %3611 = fadd fast float %3608, %3064
  %3612 = fadd fast float %3609, %3065
  %3613 = fsub fast float %57, %3042
  %3614 = fsub fast float %58, %3043
  %3615 = fsub fast float %59, %3044
  %3616 = fmul fast float %3596, %3613
  %3617 = fmul fast float %3596, %3614
  %3618 = fmul fast float %3596, %3615
  %3619 = fadd fast float %3616, %3042
  %3620 = fadd fast float %3617, %3043
  %3621 = fadd fast float %3618, %3044
  %3622 = fmul fast float %3596, %3591
  %3623 = call float @dx.op.unary.f32(i32 7, float %3603)  ; Saturate(value)
  %3624 = fsub fast float 1.000000e+00, %3623
  %3625 = fmul fast float %3622, %3624
  %3626 = fadd fast float %3625, %3623
  %3627 = fsub fast float 1.000000e+00, %3026
  %3628 = fmul fast float %3596, %3627
  %3629 = fadd fast float %3628, %3026
  %3630 = call float @dx.op.dot3.f32(i32 55, float %3619, float %3620, float %3621, float %3619, float %3620, float %3621)  ; Dot3(ax,ay,az,bx,by,bz)
  %3631 = call float @dx.op.unary.f32(i32 25, float %3630)  ; Rsqrt(value)
  %3632 = fmul fast float %3619, %3631
  %3633 = fmul fast float %3620, %3631
  %3634 = fmul fast float %3621, %3631
  br label %3635

; <label>:3635                                    ; preds = %3467, %3460
  %3636 = phi float [ %3466, %3460 ], [ %3473, %3467 ]
  %3637 = phi float [ %3465, %3460 ], [ %3471, %3467 ]
  %3638 = phi float [ %3464, %3460 ], [ %3469, %3467 ]
  %3639 = phi float [ %3463, %3460 ], [ %3472, %3467 ]
  %3640 = phi float [ %3462, %3460 ], [ %3470, %3467 ]
  %3641 = phi float [ %3461, %3460 ], [ %3468, %3467 ]
  %3642 = phi float [ %3063, %3460 ], [ %3610, %3467 ]
  %3643 = phi float [ %3064, %3460 ], [ %3611, %3467 ]
  %3644 = phi float [ %3065, %3460 ], [ %3612, %3467 ]
  %3645 = phi float [ %3078, %3460 ], [ %3519, %3467 ]
  %3646 = phi float [ %3079, %3460 ], [ %3520, %3467 ]
  %3647 = phi float [ %3080, %3460 ], [ %3521, %3467 ]
  %3648 = phi float [ %3042, %3460 ], [ %3632, %3467 ]
  %3649 = phi float [ %3043, %3460 ], [ %3633, %3467 ]
  %3650 = phi float [ %3044, %3460 ], [ %3634, %3467 ]
  %3651 = phi float [ %3066, %3460 ], [ %3626, %3467 ]
  %3652 = phi float [ %3026, %3460 ], [ %3629, %3467 ]
  %3653 = select i1 %196, float 0.000000e+00, float %3644
  %3654 = call float @dx.op.dot3.f32(i32 55, float %3648, float %3649, float %3650, float %3638, float %3637, float %3636)  ; Dot3(ax,ay,az,bx,by,bz)
  %3655 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3656 = call float @dx.op.dot3.f32(i32 55, float %3641, float %3640, float %3639, float %3648, float %3649, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %3657 = fmul fast float %3656, 2.000000e+00
  %3658 = fmul fast float %3657, %3648
  %3659 = fmul fast float %3657, %3649
  %3660 = fmul fast float %3657, %3650
  %3661 = fsub fast float %3641, %3658
  %3662 = fsub fast float %3640, %3659
  %3663 = fsub fast float %3639, %3660
  %3664 = call float @dx.op.binary.f32(i32 36, float %3652, float 1.000000e+00)  ; FMin(a,b)
  %3665 = fsub fast float 1.000000e+00, %3652
  %3666 = bitcast float %3665 to i32
  %3667 = sub nsw i32 2129859010, %3666
  %3668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3669 = extractvalue %dx.types.CBufRet.f32 %3668, 0
  %3670 = extractvalue %dx.types.CBufRet.f32 %3668, 1
  %3671 = fadd fast float %3669, %125
  %3672 = fadd fast float %3670, %126
  %3673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %3674 = extractvalue %dx.types.CBufRet.i32 %3673, 0
  %3675 = icmp eq i32 %3674, 1
  br i1 %3675, label %3676, label %3711

; <label>:3676                                    ; preds = %3635
  %3677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3678 = extractvalue %dx.types.CBufRet.f32 %3677, 0
  %3679 = extractvalue %dx.types.CBufRet.f32 %3677, 1
  %3680 = fsub fast float %3671, %3678
  %3681 = fsub fast float %3672, %3679
  %3682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3683 = extractvalue %dx.types.CBufRet.f32 %3682, 0
  %3684 = extractvalue %dx.types.CBufRet.f32 %3682, 1
  %3685 = fmul fast float %3680, %3683
  %3686 = fmul fast float %3681, %3684
  %3687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %3685, float %3686, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3688 = extractvalue %dx.types.ResRet.f32 %3687, 0
  %3689 = fcmp fast ogt float %3688, 0.000000e+00
  %3690 = extractvalue %dx.types.CBufRet.i32 %3673, 3
  %3691 = icmp ne i32 %3690, 0
  %3692 = and i1 %3689, %3691
  br i1 %3692, label %3693, label %3711, !dx.controlflow.hints !85

; <label>:3693                                    ; preds = %3676
  %3694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3695 = extractvalue %dx.types.CBufRet.f32 %3694, 0
  %3696 = extractvalue %dx.types.CBufRet.f32 %3694, 1
  %3697 = fsub fast float %3671, %3695
  %3698 = fsub fast float %3672, %3696
  %3699 = fmul fast float %3697, %3697
  %3700 = fmul fast float %3698, %3698
  %3701 = fadd fast float %3699, %3700
  %3702 = uitofp i32 %3690 to float
  %3703 = fmul fast float %3702, %3702
  %3704 = fcmp fast ogt float %3701, %3703
  br i1 %3704, label %3711, label %3705

; <label>:3705                                    ; preds = %3693
  %3706 = call float @dx.op.unary.f32(i32 24, float %3701)  ; Sqrt(value)
  %3707 = fsub fast float %3702, %3706
  %3708 = fmul fast float %3707, 0x3F75555560000000
  %3709 = call float @dx.op.unary.f32(i32 7, float %3708)  ; Saturate(value)
  %3710 = call float @dx.op.binary.f32(i32 36, float %3709, float %3688)  ; FMin(a,b)
  br label %3711

; <label>:3711                                    ; preds = %3705, %3693, %3676, %3635
  %3712 = phi float [ 1.000000e+00, %3635 ], [ %3710, %3705 ], [ %3688, %3676 ], [ 0.000000e+00, %3693 ]
  %3713 = fcmp fast ogt float %3712, 0.000000e+00
  br i1 %3713, label %3714, label %3812, !dx.controlflow.hints !86

; <label>:3714                                    ; preds = %3711
  %3715 = fadd fast float %156, 5.000000e-01
  %3716 = call float @dx.op.unary.f32(i32 27, float %3715)  ; Round_ni(value)
  %3717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %154, float %155, float %3716, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3718 = extractvalue %dx.types.ResRet.f32 %3717, 0
  %3719 = extractvalue %dx.types.ResRet.f32 %3717, 1
  %3720 = extractvalue %dx.types.ResRet.f32 %3717, 2
  %3721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3722 = extractvalue %dx.types.CBufRet.f32 %3721, 3
  %3723 = fmul fast float %3722, %3718
  %3724 = fmul fast float %3722, %3719
  %3725 = fmul fast float %3722, %3720
  %3726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %154, float %155, float %3716, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3727 = extractvalue %dx.types.ResRet.f32 %3726, 0
  %3728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %154, float %155, float %3716, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3729 = extractvalue %dx.types.ResRet.f32 %3728, 0
  %3730 = extractvalue %dx.types.ResRet.f32 %3728, 1
  %3731 = fmul fast float %3729, 2.000000e+00
  %3732 = fmul fast float %3730, 2.000000e+00
  %3733 = fadd fast float %3731, -1.000000e+00
  %3734 = fadd fast float %3732, -1.000000e+00
  %3735 = fadd fast float %3733, %3734
  %3736 = fmul fast float %3735, 5.000000e-01
  %3737 = fsub fast float %3733, %3734
  %3738 = fmul fast float %3737, 5.000000e-01
  %3739 = call float @dx.op.unary.f32(i32 6, float %3736)  ; FAbs(value)
  %3740 = fsub fast float 1.000000e+00, %3739
  %3741 = call float @dx.op.unary.f32(i32 6, float %3738)  ; FAbs(value)
  %3742 = fsub fast float %3740, %3741
  %3743 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %3742)  ; FMax(a,b)
  %3744 = call float @dx.op.dot3.f32(i32 55, float %3736, float %3738, float %3743, float %3736, float %3738, float %3743)  ; Dot3(ax,ay,az,bx,by,bz)
  %3745 = bitcast float %3744 to i32
  %3746 = ashr i32 %3745, 1
  %3747 = sub nsw i32 1597250115, %3746
  %3748 = bitcast i32 %3747 to float
  %3749 = fmul fast float %3748, %3736
  %3750 = fmul fast float %3748, %3738
  %3751 = fmul fast float %3748, %3743
  %3752 = fsub fast float 1.000000e+00, %3727
  %3753 = fdiv fast float %3752, %3751
  %3754 = fmul fast float %3751, %57
  %3755 = fmul fast float %3751, %58
  %3756 = fmul fast float %3751, %59
  %3757 = fmul fast float %3749, %53
  %3758 = fmul fast float %3749, %54
  %3759 = fmul fast float %3749, %55
  %3760 = fadd fast float %3754, %3757
  %3761 = fadd fast float %3755, %3758
  %3762 = fadd fast float %3756, %3759
  %3763 = fmul fast float %3750, %89
  %3764 = fmul fast float %3750, %90
  %3765 = fmul fast float %3750, %91
  %3766 = fadd fast float %3760, %3763
  %3767 = fadd fast float %3761, %3764
  %3768 = fadd fast float %3762, %3765
  %3769 = call float @dx.op.dot3.f32(i32 55, float %3766, float %3767, float %3768, float %3766, float %3767, float %3768)  ; Dot3(ax,ay,az,bx,by,bz)
  %3770 = call float @dx.op.unary.f32(i32 25, float %3769)  ; Rsqrt(value)
  %3771 = fmul fast float %3766, %3770
  %3772 = fmul fast float %3767, %3770
  %3773 = fmul fast float %3768, %3770
  %3774 = call float @dx.op.dot3.f32(i32 55, float %3648, float %3649, float %3650, float %3648, float %3649, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %3775 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3776 = fmul fast float %3775, 5.000000e-01
  %3777 = fadd fast float %3776, 5.000000e-01
  %3778 = fmul fast float %3777, %3727
  %3779 = call float @dx.op.dot3.f32(i32 55, float %3648, float %3649, float %3650, float %3771, float %3772, float %3773)  ; Dot3(ax,ay,az,bx,by,bz)
  %3780 = call float @dx.op.unary.f32(i32 7, float %3779)  ; Saturate(value)
  %3781 = fmul fast float %3780, %3753
  %3782 = fadd fast float %3778, %3781
  %3783 = fsub fast float 5.000000e-01, %3776
  %3784 = fmul fast float %3783, %3645
  %3785 = fmul fast float %3783, %3646
  %3786 = fmul fast float %3783, %3647
  %3787 = fadd fast float %3782, %3784
  %3788 = fmul fast float %3787, %3723
  %3789 = fadd fast float %3782, %3785
  %3790 = fmul fast float %3789, %3724
  %3791 = fadd fast float %3782, %3786
  %3792 = fmul fast float %3791, %3725
  %3793 = call float @dx.op.dot3.f32(i32 55, float %3661, float %3662, float %3663, float %3648, float %3649, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %3794 = call float @dx.op.unary.f32(i32 7, float %3793)  ; Saturate(value)
  %3795 = fmul fast float %3794, 5.000000e-01
  %3796 = fadd fast float %3795, 5.000000e-01
  %3797 = fmul fast float %3796, %3727
  %3798 = call float @dx.op.dot3.f32(i32 55, float %3661, float %3662, float %3663, float %3771, float %3772, float %3773)  ; Dot3(ax,ay,az,bx,by,bz)
  %3799 = call float @dx.op.unary.f32(i32 7, float %3798)  ; Saturate(value)
  %3800 = fmul fast float %3799, %3753
  %3801 = fadd fast float %3797, %3800
  %3802 = fsub fast float 5.000000e-01, %3795
  %3803 = fmul fast float %3802, %3645
  %3804 = fmul fast float %3802, %3646
  %3805 = fmul fast float %3802, %3647
  %3806 = fadd fast float %3801, %3803
  %3807 = fmul fast float %3806, %3723
  %3808 = fadd fast float %3801, %3804
  %3809 = fmul fast float %3808, %3724
  %3810 = fadd fast float %3801, %3805
  %3811 = fmul fast float %3810, %3725
  br label %3812

; <label>:3812                                    ; preds = %3714, %3711
  %3813 = phi float [ %3807, %3714 ], [ 0.000000e+00, %3711 ]
  %3814 = phi float [ %3809, %3714 ], [ 0.000000e+00, %3711 ]
  %3815 = phi float [ %3811, %3714 ], [ 0.000000e+00, %3711 ]
  %3816 = phi float [ %3788, %3714 ], [ 0.000000e+00, %3711 ]
  %3817 = phi float [ %3790, %3714 ], [ 0.000000e+00, %3711 ]
  %3818 = phi float [ %3792, %3714 ], [ 0.000000e+00, %3711 ]
  %3819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3820 = extractvalue %dx.types.CBufRet.f32 %3819, 0
  %3821 = fcmp fast ogt float %3820, 0.000000e+00
  %3822 = and i1 %3713, %3821
  br i1 %3822, label %3823, label %4027, !dx.controlflow.hints !87

; <label>:3823                                    ; preds = %3812
  %3824 = extractvalue %dx.types.CBufRet.f32 %3668, 2
  %3825 = fadd fast float %3824, %127
  %3826 = fmul fast float %3648, 3.200000e+01
  %3827 = fmul fast float %3649, 3.200000e+01
  %3828 = fadd fast float %3671, %3826
  %3829 = fadd fast float %3672, %3827
  %3830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3831 = extractvalue %dx.types.CBufRet.f32 %3830, 0
  %3832 = extractvalue %dx.types.CBufRet.f32 %3830, 1
  %3833 = fsub fast float %3828, %3831
  %3834 = fsub fast float %3829, %3832
  %3835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3836 = extractvalue %dx.types.CBufRet.f32 %3835, 0
  %3837 = extractvalue %dx.types.CBufRet.f32 %3835, 1
  %3838 = fmul fast float %3833, %3836
  %3839 = fmul fast float %3834, %3837
  %3840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.f32 %3840, 0
  %3842 = extractvalue %dx.types.CBufRet.f32 %3840, 1
  %3843 = fsub fast float %3671, %3841
  %3844 = fsub fast float %3672, %3842
  %3845 = fmul fast float %3843, %3843
  %3846 = fmul fast float %3844, %3844
  %3847 = fadd fast float %3845, %3846
  %3848 = call float @dx.op.unary.f32(i32 24, float %3847)  ; Sqrt(value)
  %3849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3850 = extractvalue %dx.types.CBufRet.f32 %3849, 0
  %3851 = extractvalue %dx.types.CBufRet.f32 %3849, 1
  %3852 = fsub fast float %3848, %3850
  %3853 = fdiv fast float %3852, %3851
  %3854 = call float @dx.op.unary.f32(i32 7, float %3853)  ; Saturate(value)
  %3855 = fmul fast float %3854, 2.000000e+00
  %3856 = fsub fast float 3.000000e+00, %3855
  %3857 = fmul fast float %3854, %3854
  %3858 = fmul fast float %3857, %3856
  %3859 = fcmp fast oge float %3838, 0.000000e+00
  %3860 = fcmp fast ole float %3838, 1.000000e+00
  %3861 = and i1 %3860, %3859
  %3862 = fcmp fast oge float %3839, 0.000000e+00
  %3863 = and i1 %3862, %3861
  %3864 = fcmp fast ole float %3839, 1.000000e+00
  %3865 = and i1 %3864, %3863
  %3866 = fcmp fast ogt float %3858, 0.000000e+00
  %3867 = and i1 %3866, %3865
  br i1 %3867, label %3868, label %3991, !dx.controlflow.hints !88

; <label>:3868                                    ; preds = %3823
  %3869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3870 = extractvalue %dx.types.CBufRet.f32 %3869, 2
  %3871 = extractvalue %dx.types.CBufRet.f32 %3869, 3
  %3872 = fmul fast float %3870, %3838
  %3873 = fmul fast float %3871, %3839
  %3874 = call float @dx.op.unary.f32(i32 27, float %3872)  ; Round_ni(value)
  %3875 = call float @dx.op.unary.f32(i32 27, float %3873)  ; Round_ni(value)
  %3876 = fptosi float %3874 to i32
  %3877 = fptosi float %3875 to i32
  %3878 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3876, i32 %3877, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3879 = extractvalue %dx.types.ResRet.i32 %3878, 0
  %3880 = lshr i32 %3879, 16
  %3881 = icmp eq i32 %3880, 65535
  br i1 %3881, label %3991, label %3882

; <label>:3882                                    ; preds = %3868
  %3883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3884 = extractvalue %dx.types.CBufRet.f32 %3883, 0
  %3885 = fmul fast float %3884, %3838
  %3886 = extractvalue %dx.types.CBufRet.f32 %3883, 1
  %3887 = fadd fast float %3885, %3886
  %3888 = extractvalue %dx.types.CBufRet.f32 %3883, 2
  %3889 = fmul fast float %3888, %3839
  %3890 = extractvalue %dx.types.CBufRet.f32 %3883, 3
  %3891 = fadd fast float %3889, %3890
  %3892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3887, float %3891, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3893 = extractvalue %dx.types.ResRet.f32 %3892, 0
  %3894 = extractvalue %dx.types.ResRet.f32 %3892, 1
  %3895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3896 = extractvalue %dx.types.CBufRet.f32 %3895, 1
  %3897 = extractvalue %dx.types.CBufRet.f32 %3895, 0
  %3898 = fsub fast float %3896, %3897
  %3899 = fmul fast float %3898, %3893
  %3900 = fadd fast float %3899, %3897
  %3901 = extractvalue %dx.types.CBufRet.f32 %3895, 3
  %3902 = extractvalue %dx.types.CBufRet.f32 %3895, 2
  %3903 = fsub fast float %3901, %3902
  %3904 = fmul fast float %3903, %3894
  %3905 = fadd fast float %3904, %3902
  %3906 = fsub fast float %3825, %3900
  %3907 = fsub fast float %3905, %3900
  %3908 = fdiv fast float %3906, %3907
  %3909 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3819, 1
  %3911 = extractvalue %dx.types.CBufRet.f32 %3869, 0
  %3912 = extractvalue %dx.types.CBufRet.f32 %3869, 1
  %3913 = fmul fast float %3911, %3838
  %3914 = fmul fast float %3912, %3839
  %3915 = fmul fast float %3913, 1.250000e-01
  %3916 = fmul fast float %3914, 1.250000e-01
  %3917 = call float @dx.op.unary.f32(i32 27, float %3915)  ; Round_ni(value)
  %3918 = call float @dx.op.unary.f32(i32 27, float %3916)  ; Round_ni(value)
  %3919 = fmul fast float %3917, 8.000000e+00
  %3920 = fmul fast float %3918, 8.000000e+00
  %3921 = fsub fast float %3913, %3919
  %3922 = fsub fast float %3914, %3920
  %3923 = fadd fast float %3921, 5.000000e-01
  %3924 = fadd fast float %3922, 5.000000e-01
  %3925 = and i32 %3880, 255
  %3926 = lshr i32 %3879, 24
  %3927 = mul nuw nsw i32 %3925, 9
  %3928 = uitofp i32 %3927 to float
  %3929 = mul nuw nsw i32 %3926, 9
  %3930 = uitofp i32 %3929 to float
  %3931 = fadd fast float %3923, %3928
  %3932 = fadd fast float %3924, %3930
  %3933 = fdiv fast float %3931, %3820
  %3934 = fdiv fast float %3932, %3910
  %3935 = fmul fast float %3909, 4.375000e-01
  %3936 = fadd fast float %3935, 3.125000e-02
  %3937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3933, float %3934, float %3936, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3938 = extractvalue %dx.types.ResRet.f32 %3937, 0
  %3939 = extractvalue %dx.types.ResRet.f32 %3937, 1
  %3940 = extractvalue %dx.types.ResRet.f32 %3937, 2
  %3941 = fadd fast float %3935, 5.312500e-01
  %3942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3933, float %3934, float %3941, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3943 = extractvalue %dx.types.ResRet.f32 %3942, 0
  %3944 = extractvalue %dx.types.ResRet.f32 %3942, 1
  %3945 = extractvalue %dx.types.ResRet.f32 %3942, 2
  %3946 = fmul fast float %3943, 2.000000e+00
  %3947 = fmul fast float %3944, 2.000000e+00
  %3948 = fmul fast float %3945, 2.000000e+00
  %3949 = fadd fast float %3946, -1.000000e+00
  %3950 = fadd fast float %3947, -1.000000e+00
  %3951 = fadd fast float %3948, -1.000000e+00
  %3952 = fmul fast float %3949, %3949
  %3953 = fmul fast float %3950, %3950
  %3954 = fadd fast float %3952, %3953
  %3955 = fmul fast float %3951, %3951
  %3956 = fadd fast float %3954, %3955
  %3957 = call float @dx.op.unary.f32(i32 24, float %3956)  ; Sqrt(value)
  %3958 = fcmp fast ogt float %3957, 0.000000e+00
  br i1 %3958, label %3959, label %3963

; <label>:3959                                    ; preds = %3882
  %3960 = fdiv fast float %3949, %3957
  %3961 = fdiv fast float %3950, %3957
  %3962 = fdiv fast float %3951, %3957
  br label %3963

; <label>:3963                                    ; preds = %3959, %3882
  %3964 = phi float [ %3960, %3959 ], [ 0.000000e+00, %3882 ]
  %3965 = phi float [ %3961, %3959 ], [ 0.000000e+00, %3882 ]
  %3966 = phi float [ %3962, %3959 ], [ 0.000000e+00, %3882 ]
  %3967 = call float @dx.op.dot3.f32(i32 55, float %3964, float %3965, float %3966, float %3648, float %3649, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %3968 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3967)  ; FMax(a,b)
  %3969 = fmul fast float %3968, 0x400C5BF8A0000000
  %3970 = fmul fast float %3938, %3858
  %3971 = fmul fast float %3970, %3969
  %3972 = fmul fast float %3939, %3858
  %3973 = fmul fast float %3972, %3969
  %3974 = fmul fast float %3940, %3858
  %3975 = fmul fast float %3974, %3969
  %3976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3977 = extractvalue %dx.types.CBufRet.f32 %3976, 3
  %3978 = fmul fast float %3971, %3977
  %3979 = fmul fast float %3973, %3977
  %3980 = fmul fast float %3975, %3977
  %3981 = fcmp fast ogt float %3825, %3905
  br i1 %3981, label %3982, label %3991

; <label>:3982                                    ; preds = %3963
  %3983 = fmul fast float %3907, 0x3FC24924A0000000
  %3984 = fsub fast float %3825, %3905
  %3985 = fdiv fast float %3984, %3983
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = fsub fast float 1.000000e+00, %3986
  %3988 = fmul fast float %3987, %3978
  %3989 = fmul fast float %3987, %3979
  %3990 = fmul fast float %3987, %3980
  br label %3991

; <label>:3991                                    ; preds = %3982, %3963, %3868, %3823
  %3992 = phi float [ %3990, %3982 ], [ %3980, %3963 ], [ 0.000000e+00, %3868 ], [ 0.000000e+00, %3823 ]
  %3993 = phi float [ %3989, %3982 ], [ %3979, %3963 ], [ 0.000000e+00, %3868 ], [ 0.000000e+00, %3823 ]
  %3994 = phi float [ %3988, %3982 ], [ %3978, %3963 ], [ 0.000000e+00, %3868 ], [ 0.000000e+00, %3823 ]
  %3995 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3994)  ; FMax(a,b)
  %3996 = fmul fast float %3995, 0x3FD20DD760000000
  %3997 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %3998 = fmul fast float %3997, 0x3FDF454380000000
  %3999 = fmul fast float %3997, %3997
  %4000 = fmul fast float %3999, 0x3FEE471020000000
  %4001 = fadd fast float %4000, 0xBFD42F6020000000
  %4002 = call float @dx.op.dot3.f32(i32 55, float %3995, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3998, float %4001)  ; Dot3(ax,ay,az,bx,by,bz)
  %4003 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3993)  ; FMax(a,b)
  %4004 = fmul fast float %4003, 0x3FD20DD760000000
  %4005 = call float @dx.op.dot3.f32(i32 55, float %4003, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3998, float %4001)  ; Dot3(ax,ay,az,bx,by,bz)
  %4006 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3992)  ; FMax(a,b)
  %4007 = fmul fast float %4006, 0x3FD20DD760000000
  %4008 = call float @dx.op.dot3.f32(i32 55, float %4006, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3998, float %4001)  ; Dot3(ax,ay,az,bx,by,bz)
  %4009 = call float @dx.op.binary.f32(i32 35, float %3996, float 0.000000e+00)  ; FMax(a,b)
  %4010 = call float @dx.op.binary.f32(i32 35, float %4004, float 0.000000e+00)  ; FMax(a,b)
  %4011 = call float @dx.op.binary.f32(i32 35, float %4007, float 0.000000e+00)  ; FMax(a,b)
  %4012 = call float @dx.op.binary.f32(i32 35, float %4002, float 0.000000e+00)  ; FMax(a,b)
  %4013 = call float @dx.op.binary.f32(i32 35, float %4005, float 0.000000e+00)  ; FMax(a,b)
  %4014 = call float @dx.op.binary.f32(i32 35, float %4008, float 0.000000e+00)  ; FMax(a,b)
  %4015 = fmul fast float %4009, %3712
  %4016 = fmul fast float %4010, %3712
  %4017 = fmul fast float %4011, %3712
  %4018 = fadd fast float %4015, %3816
  %4019 = fadd fast float %4016, %3817
  %4020 = fadd fast float %4017, %3818
  %4021 = fmul fast float %4012, %3712
  %4022 = fmul fast float %4013, %3712
  %4023 = fmul fast float %4014, %3712
  %4024 = fadd fast float %4021, %3813
  %4025 = fadd fast float %4022, %3814
  %4026 = fadd fast float %4023, %3815
  br label %4027

; <label>:4027                                    ; preds = %3991, %3812
  %4028 = phi float [ %4024, %3991 ], [ %3813, %3812 ]
  %4029 = phi float [ %4025, %3991 ], [ %3814, %3812 ]
  %4030 = phi float [ %4026, %3991 ], [ %3815, %3812 ]
  %4031 = phi float [ %4018, %3991 ], [ %3816, %3812 ]
  %4032 = phi float [ %4019, %3991 ], [ %3817, %3812 ]
  %4033 = phi float [ %4020, %3991 ], [ %3818, %3812 ]
  %4034 = fcmp fast olt float %3712, 1.000000e+00
  br i1 %4034, label %4035, label %4853, !dx.controlflow.hints !89

; <label>:4035                                    ; preds = %4027
  %4036 = extractvalue %dx.types.CBufRet.f32 %3668, 2
  %4037 = fadd fast float %4036, %127
  %4038 = fmul fast float %3648, 3.200000e+01
  %4039 = fmul fast float %3649, 3.200000e+01
  %4040 = fadd fast float %3671, %4038
  %4041 = fadd fast float %3672, %4039
  %4042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.f32 %4042, 0
  %4044 = extractvalue %dx.types.CBufRet.f32 %4042, 1
  %4045 = fsub fast float %4040, %4043
  %4046 = fsub fast float %4041, %4044
  %4047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4048 = extractvalue %dx.types.CBufRet.f32 %4047, 0
  %4049 = extractvalue %dx.types.CBufRet.f32 %4047, 1
  %4050 = fmul fast float %4045, %4048
  %4051 = fmul fast float %4046, %4049
  %4052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4053 = extractvalue %dx.types.CBufRet.f32 %4052, 0
  %4054 = fmul fast float %4050, %4053
  %4055 = extractvalue %dx.types.CBufRet.f32 %4052, 1
  %4056 = fadd fast float %4054, %4055
  %4057 = extractvalue %dx.types.CBufRet.f32 %4052, 2
  %4058 = fmul fast float %4057, %4051
  %4059 = extractvalue %dx.types.CBufRet.f32 %4052, 3
  %4060 = fadd fast float %4058, %4059
  %4061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %4056, float %4060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4062 = extractvalue %dx.types.ResRet.f32 %4061, 0
  %4063 = extractvalue %dx.types.ResRet.f32 %4061, 1
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 1
  %4066 = extractvalue %dx.types.CBufRet.f32 %4064, 0
  %4067 = fsub fast float %4065, %4066
  %4068 = fmul fast float %4067, %4062
  %4069 = fadd fast float %4068, %4066
  %4070 = extractvalue %dx.types.CBufRet.f32 %4064, 3
  %4071 = extractvalue %dx.types.CBufRet.f32 %4064, 2
  %4072 = fsub fast float %4070, %4071
  %4073 = fmul fast float %4072, %4063
  %4074 = fadd fast float %4073, %4071
  %4075 = fsub fast float %4037, %4069
  %4076 = fsub fast float %4074, %4069
  %4077 = fdiv fast float %4075, %4076
  %4078 = call float @dx.op.unary.f32(i32 7, float %4077)  ; Saturate(value)
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 0
  %4081 = fmul fast float %4080, %4078
  %4082 = extractvalue %dx.types.CBufRet.f32 %4079, 1
  %4083 = fadd fast float %4081, %4082
  %4084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %4056, float %4060, float %4083, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4085 = extractvalue %dx.types.ResRet.f32 %4084, 0
  %4086 = extractvalue %dx.types.ResRet.f32 %4084, 1
  %4087 = extractvalue %dx.types.ResRet.f32 %4084, 2
  %4088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.f32 %4088, 0
  %4090 = extractvalue %dx.types.CBufRet.f32 %4088, 1
  %4091 = extractvalue %dx.types.CBufRet.f32 %4088, 2
  %4092 = fmul fast float %4089, %4085
  %4093 = fmul fast float %4090, %4086
  %4094 = fmul fast float %4091, %4087
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 0
  %4097 = extractvalue %dx.types.CBufRet.f32 %4095, 1
  %4098 = extractvalue %dx.types.CBufRet.f32 %4095, 2
  %4099 = fadd fast float %4092, %4096
  %4100 = fadd fast float %4093, %4097
  %4101 = fadd fast float %4094, %4098
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 0
  %4104 = fmul fast float %4103, %4050
  %4105 = extractvalue %dx.types.CBufRet.f32 %4102, 1
  %4106 = fadd fast float %4104, %4105
  %4107 = extractvalue %dx.types.CBufRet.f32 %4102, 2
  %4108 = fmul fast float %4107, %4051
  %4109 = extractvalue %dx.types.CBufRet.f32 %4102, 3
  %4110 = fadd fast float %4108, %4109
  %4111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4112 = extractvalue %dx.types.CBufRet.f32 %4111, 0
  %4113 = extractvalue %dx.types.CBufRet.f32 %4111, 1
  %4114 = extractvalue %dx.types.CBufRet.f32 %4111, 2
  %4115 = extractvalue %dx.types.CBufRet.f32 %4111, 3
  %4116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.f32 %4116, 0
  %4118 = extractvalue %dx.types.CBufRet.f32 %4116, 1
  %4119 = extractvalue %dx.types.CBufRet.f32 %4116, 2
  %4120 = extractvalue %dx.types.CBufRet.f32 %4116, 3
  %4121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4106, float %4110, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4122 = extractvalue %dx.types.ResRet.f32 %4121, 0
  %4123 = extractvalue %dx.types.ResRet.f32 %4121, 1
  %4124 = extractvalue %dx.types.ResRet.f32 %4121, 2
  %4125 = extractvalue %dx.types.ResRet.f32 %4121, 3
  %4126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4106, float %4110, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4127 = extractvalue %dx.types.ResRet.f32 %4126, 0
  %4128 = extractvalue %dx.types.ResRet.f32 %4126, 1
  %4129 = extractvalue %dx.types.ResRet.f32 %4126, 2
  %4130 = extractvalue %dx.types.ResRet.f32 %4126, 3
  %4131 = fmul fast float %4122, %4099
  %4132 = fmul fast float %4127, %4099
  %4133 = fmul fast float %4129, %4099
  %4134 = fmul fast float %4125, %4099
  %4135 = fadd fast float %4131, %4112
  %4136 = fadd fast float %4132, %4113
  %4137 = fadd fast float %4133, %4114
  %4138 = fadd fast float %4134, %4115
  %4139 = fmul fast float %4123, %4099
  %4140 = fmul fast float %4128, %4099
  %4141 = fadd fast float %4139, %4117
  %4142 = fadd fast float %4140, %4118
  %4143 = fmul fast float %4124, %4099
  %4144 = fmul fast float %4130, %4099
  %4145 = fadd fast float %4143, %4119
  %4146 = fadd fast float %4144, %4120
  %4147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4106, float %4110, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = extractvalue %dx.types.ResRet.f32 %4147, 1
  %4150 = extractvalue %dx.types.ResRet.f32 %4147, 2
  %4151 = extractvalue %dx.types.ResRet.f32 %4147, 3
  %4152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4106, float %4110, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4153 = extractvalue %dx.types.ResRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.ResRet.f32 %4152, 1
  %4155 = extractvalue %dx.types.ResRet.f32 %4152, 2
  %4156 = extractvalue %dx.types.ResRet.f32 %4152, 3
  %4157 = fmul fast float %4148, %4100
  %4158 = fmul fast float %4153, %4100
  %4159 = fmul fast float %4155, %4100
  %4160 = fmul fast float %4151, %4100
  %4161 = fadd fast float %4135, %4157
  %4162 = fadd fast float %4136, %4158
  %4163 = fadd fast float %4137, %4159
  %4164 = fadd fast float %4138, %4160
  %4165 = fmul fast float %4149, %4100
  %4166 = fmul fast float %4154, %4100
  %4167 = fadd fast float %4141, %4165
  %4168 = fadd fast float %4142, %4166
  %4169 = fmul fast float %4150, %4100
  %4170 = fmul fast float %4156, %4100
  %4171 = fadd fast float %4145, %4169
  %4172 = fadd fast float %4146, %4170
  %4173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4106, float %4110, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.ResRet.f32 %4173, 1
  %4176 = extractvalue %dx.types.ResRet.f32 %4173, 2
  %4177 = extractvalue %dx.types.ResRet.f32 %4173, 3
  %4178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4106, float %4110, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4179 = extractvalue %dx.types.ResRet.f32 %4178, 0
  %4180 = extractvalue %dx.types.ResRet.f32 %4178, 1
  %4181 = extractvalue %dx.types.ResRet.f32 %4178, 2
  %4182 = extractvalue %dx.types.ResRet.f32 %4178, 3
  %4183 = fmul fast float %4174, %4101
  %4184 = fmul fast float %4179, %4101
  %4185 = fmul fast float %4181, %4101
  %4186 = fmul fast float %4177, %4101
  %4187 = fadd fast float %4161, %4183
  %4188 = fadd fast float %4162, %4184
  %4189 = fadd fast float %4163, %4185
  %4190 = fadd fast float %4164, %4186
  %4191 = fmul fast float %4175, %4101
  %4192 = fmul fast float %4180, %4101
  %4193 = fadd fast float %4167, %4191
  %4194 = fadd fast float %4168, %4192
  %4195 = fmul fast float %4176, %4101
  %4196 = fmul fast float %4182, %4101
  %4197 = fadd fast float %4171, %4195
  %4198 = fadd fast float %4172, %4196
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 0
  %4201 = fsub fast float %3671, %4200
  %4202 = fsub fast float %4043, %3671
  %4203 = call float @dx.op.binary.f32(i32 35, float %4202, float %4201)  ; FMax(a,b)
  %4204 = extractvalue %dx.types.CBufRet.f32 %4199, 1
  %4205 = fsub fast float %3672, %4204
  %4206 = fsub fast float %4044, %3672
  %4207 = call float @dx.op.binary.f32(i32 35, float %4206, float %4205)  ; FMax(a,b)
  %4208 = call float @dx.op.binary.f32(i32 35, float %4203, float %4207)  ; FMax(a,b)
  %4209 = extractvalue %dx.types.CBufRet.f32 %4047, 3
  %4210 = fmul fast float %4209, %4208
  %4211 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.f32 %4212, 0
  %4214 = extractvalue %dx.types.CBufRet.f32 %4212, 1
  %4215 = extractvalue %dx.types.CBufRet.f32 %4212, 2
  %4216 = extractvalue %dx.types.CBufRet.f32 %4212, 3
  %4217 = fsub fast float %4213, %4187
  %4218 = fsub fast float %4214, %4188
  %4219 = fsub fast float %4215, %4189
  %4220 = fsub fast float %4216, %4190
  %4221 = fmul fast float %4217, %4211
  %4222 = fmul fast float %4218, %4211
  %4223 = fmul fast float %4219, %4211
  %4224 = fmul fast float %4220, %4211
  %4225 = fadd fast float %4221, %4187
  %4226 = fadd fast float %4222, %4188
  %4227 = fadd fast float %4223, %4189
  %4228 = fadd fast float %4224, %4190
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = extractvalue %dx.types.CBufRet.f32 %4229, 1
  %4232 = fsub fast float %4230, %4193
  %4233 = fsub fast float %4231, %4194
  %4234 = fmul fast float %4232, %4211
  %4235 = fmul fast float %4233, %4211
  %4236 = fadd fast float %4234, %4193
  %4237 = fadd fast float %4235, %4194
  %4238 = extractvalue %dx.types.CBufRet.f32 %4229, 2
  %4239 = extractvalue %dx.types.CBufRet.f32 %4229, 3
  %4240 = fsub fast float %4238, %4197
  %4241 = fsub fast float %4239, %4198
  %4242 = fmul fast float %4240, %4211
  %4243 = fmul fast float %4241, %4211
  %4244 = fadd fast float %4242, %4197
  %4245 = fadd fast float %4243, %4198
  %4246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4247 = extractvalue %dx.types.CBufRet.f32 %4246, 0
  %4248 = fmul fast float %4247, %4225
  %4249 = fmul fast float %4247, %4226
  %4250 = fmul fast float %4247, %4227
  %4251 = fmul fast float %4247, %4228
  %4252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.f32 %4252, 0
  %4254 = fmul fast float %4253, %4236
  %4255 = fmul fast float %4253, %4237
  %4256 = fadd fast float %4254, %4248
  %4257 = fadd fast float %4255, %4250
  %4258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4259 = extractvalue %dx.types.CBufRet.f32 %4258, 0
  %4260 = fmul fast float %4259, %4244
  %4261 = fmul fast float %4259, %4245
  %4262 = fadd fast float %4256, %4260
  %4263 = fadd fast float %4257, %4261
  %4264 = extractvalue %dx.types.CBufRet.f32 %4246, 1
  %4265 = fmul fast float %4264, %4225
  %4266 = fmul fast float %4264, %4226
  %4267 = fmul fast float %4264, %4227
  %4268 = fmul fast float %4264, %4228
  %4269 = extractvalue %dx.types.CBufRet.f32 %4252, 1
  %4270 = fmul fast float %4269, %4236
  %4271 = fmul fast float %4269, %4237
  %4272 = fadd fast float %4270, %4265
  %4273 = fadd fast float %4271, %4267
  %4274 = extractvalue %dx.types.CBufRet.f32 %4258, 1
  %4275 = fmul fast float %4274, %4244
  %4276 = fmul fast float %4274, %4245
  %4277 = fadd fast float %4272, %4275
  %4278 = fadd fast float %4273, %4276
  %4279 = extractvalue %dx.types.CBufRet.f32 %4246, 2
  %4280 = fmul fast float %4279, %4225
  %4281 = fmul fast float %4279, %4226
  %4282 = fmul fast float %4279, %4227
  %4283 = fmul fast float %4279, %4228
  %4284 = extractvalue %dx.types.CBufRet.f32 %4252, 2
  %4285 = fmul fast float %4284, %4236
  %4286 = fmul fast float %4284, %4237
  %4287 = fadd fast float %4285, %4280
  %4288 = fadd fast float %4286, %4282
  %4289 = extractvalue %dx.types.CBufRet.f32 %4258, 2
  %4290 = fmul fast float %4289, %4244
  %4291 = fmul fast float %4289, %4245
  %4292 = fadd fast float %4287, %4290
  %4293 = fadd fast float %4288, %4291
  %4294 = fmul fast float %4281, %4281
  %4295 = fmul fast float %4293, %4293
  %4296 = fmul fast float %4283, %4283
  %4297 = fadd fast float %4296, %4294
  %4298 = fadd fast float %4297, %4295
  %4299 = call float @dx.op.unary.f32(i32 24, float %4298)  ; Sqrt(value)
  %4300 = fcmp fast ugt float %4299, 0.000000e+00
  br i1 %4300, label %4301, label %4316

; <label>:4301                                    ; preds = %4035
  %4302 = fsub fast float -0.000000e+00, %4283
  %4303 = fdiv fast float %4302, %4299
  %4304 = fsub fast float -0.000000e+00, %4281
  %4305 = fdiv fast float %4304, %4299
  %4306 = fdiv fast float %4293, %4299
  %4307 = fmul fast float %4292, 0x3FE279A760000000
  %4308 = fmul fast float %4305, %4281
  %4309 = fmul fast float %4306, %4293
  %4310 = fmul fast float %4303, %4283
  %4311 = fadd fast float %4308, %4310
  %4312 = fsub fast float %4311, %4309
  %4313 = call float @dx.op.unary.f32(i32 6, float %4312)  ; FAbs(value)
  %4314 = fadd fast float %4313, 0x3DDB7CDFE0000000
  %4315 = fdiv fast float %4307, %4314
  br label %4316

; <label>:4316                                    ; preds = %4301, %4035
  %4317 = phi float [ %4315, %4301 ], [ 1.000000e+00, %4035 ]
  %4318 = fmul fast float %4266, %4266
  %4319 = fmul fast float %4278, %4278
  %4320 = fmul fast float %4268, %4268
  %4321 = fadd fast float %4320, %4318
  %4322 = fadd fast float %4321, %4319
  %4323 = call float @dx.op.unary.f32(i32 24, float %4322)  ; Sqrt(value)
  %4324 = fcmp fast ugt float %4323, 0.000000e+00
  br i1 %4324, label %4325, label %4340

; <label>:4325                                    ; preds = %4316
  %4326 = fsub fast float -0.000000e+00, %4268
  %4327 = fdiv fast float %4326, %4323
  %4328 = fsub fast float -0.000000e+00, %4266
  %4329 = fdiv fast float %4328, %4323
  %4330 = fdiv fast float %4278, %4323
  %4331 = fmul fast float %4277, 0x3FE279A760000000
  %4332 = fmul fast float %4329, %4266
  %4333 = fmul fast float %4330, %4278
  %4334 = fmul fast float %4327, %4268
  %4335 = fadd fast float %4332, %4334
  %4336 = fsub fast float %4335, %4333
  %4337 = call float @dx.op.unary.f32(i32 6, float %4336)  ; FAbs(value)
  %4338 = fadd fast float %4337, 0x3DDB7CDFE0000000
  %4339 = fdiv fast float %4331, %4338
  br label %4340

; <label>:4340                                    ; preds = %4325, %4316
  %4341 = phi float [ %4339, %4325 ], [ 1.000000e+00, %4316 ]
  %4342 = call float @dx.op.binary.f32(i32 36, float %4341, float %4317)  ; FMin(a,b)
  %4343 = fmul fast float %4249, %4249
  %4344 = fmul fast float %4263, %4263
  %4345 = fmul fast float %4251, %4251
  %4346 = fadd fast float %4345, %4343
  %4347 = fadd fast float %4346, %4344
  %4348 = call float @dx.op.unary.f32(i32 24, float %4347)  ; Sqrt(value)
  %4349 = fcmp fast ugt float %4348, 0.000000e+00
  br i1 %4349, label %4350, label %4365

; <label>:4350                                    ; preds = %4340
  %4351 = fsub fast float -0.000000e+00, %4251
  %4352 = fdiv fast float %4351, %4348
  %4353 = fsub fast float -0.000000e+00, %4249
  %4354 = fdiv fast float %4353, %4348
  %4355 = fdiv fast float %4263, %4348
  %4356 = fmul fast float %4262, 0x3FE279A760000000
  %4357 = fmul fast float %4354, %4249
  %4358 = fmul fast float %4355, %4263
  %4359 = fmul fast float %4352, %4251
  %4360 = fadd fast float %4357, %4359
  %4361 = fsub fast float %4360, %4358
  %4362 = call float @dx.op.unary.f32(i32 6, float %4361)  ; FAbs(value)
  %4363 = fadd fast float %4362, 0x3DDB7CDFE0000000
  %4364 = fdiv fast float %4356, %4363
  br label %4365

; <label>:4365                                    ; preds = %4350, %4340
  %4366 = phi float [ %4364, %4350 ], [ 1.000000e+00, %4340 ]
  %4367 = call float @dx.op.binary.f32(i32 36, float %4366, float %4342)  ; FMin(a,b)
  %4368 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4369 = fcmp fast olt float %4368, 1.000000e+00
  br i1 %4369, label %4370, label %4380

; <label>:4370                                    ; preds = %4365
  %4371 = fmul fast float %4368, %4249
  %4372 = fmul fast float %4368, %4263
  %4373 = fmul fast float %4368, %4251
  %4374 = fmul fast float %4368, %4266
  %4375 = fmul fast float %4368, %4278
  %4376 = fmul fast float %4368, %4268
  %4377 = fmul fast float %4368, %4281
  %4378 = fmul fast float %4368, %4293
  %4379 = fmul fast float %4368, %4283
  br label %4380

; <label>:4380                                    ; preds = %4370, %4365
  %4381 = phi float [ %4377, %4370 ], [ %4281, %4365 ]
  %4382 = phi float [ %4378, %4370 ], [ %4293, %4365 ]
  %4383 = phi float [ %4379, %4370 ], [ %4283, %4365 ]
  %4384 = phi float [ %4374, %4370 ], [ %4266, %4365 ]
  %4385 = phi float [ %4375, %4370 ], [ %4278, %4365 ]
  %4386 = phi float [ %4376, %4370 ], [ %4268, %4365 ]
  %4387 = phi float [ %4371, %4370 ], [ %4249, %4365 ]
  %4388 = phi float [ %4372, %4370 ], [ %4263, %4365 ]
  %4389 = phi float [ %4373, %4370 ], [ %4251, %4365 ]
  %4390 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4262)  ; FMax(a,b)
  %4391 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4277)  ; FMax(a,b)
  %4392 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4292)  ; FMax(a,b)
  %4393 = fcmp fast oge float %4050, 0.000000e+00
  %4394 = and i1 %4393, %3821
  %4395 = fcmp fast ole float %4050, 1.000000e+00
  %4396 = and i1 %4395, %4394
  %4397 = fcmp fast oge float %4051, 0.000000e+00
  %4398 = and i1 %4397, %4396
  %4399 = fcmp fast ole float %4051, 1.000000e+00
  %4400 = and i1 %4399, %4398
  br i1 %4400, label %4401, label %4546, !dx.controlflow.hints !90

; <label>:4401                                    ; preds = %4380
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 2
  %4404 = extractvalue %dx.types.CBufRet.f32 %4402, 3
  %4405 = fmul fast float %4403, %4050
  %4406 = fmul fast float %4404, %4051
  %4407 = call float @dx.op.unary.f32(i32 27, float %4405)  ; Round_ni(value)
  %4408 = call float @dx.op.unary.f32(i32 27, float %4406)  ; Round_ni(value)
  %4409 = fptosi float %4407 to i32
  %4410 = fptosi float %4408 to i32
  %4411 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %4409, i32 %4410, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4412 = extractvalue %dx.types.ResRet.i32 %4411, 0
  %4413 = and i32 %4412, 65535
  %4414 = lshr i32 %4412, 16
  %4415 = icmp eq i32 %4413, 65535
  br i1 %4415, label %4452, label %4416

; <label>:4416                                    ; preds = %4401
  %4417 = extractvalue %dx.types.CBufRet.f32 %3819, 1
  %4418 = extractvalue %dx.types.CBufRet.f32 %4402, 0
  %4419 = extractvalue %dx.types.CBufRet.f32 %4402, 1
  %4420 = fmul fast float %4418, %4050
  %4421 = fmul fast float %4419, %4051
  %4422 = fmul fast float %4420, 1.250000e-01
  %4423 = fmul fast float %4421, 1.250000e-01
  %4424 = call float @dx.op.unary.f32(i32 27, float %4422)  ; Round_ni(value)
  %4425 = call float @dx.op.unary.f32(i32 27, float %4423)  ; Round_ni(value)
  %4426 = fmul fast float %4424, 8.000000e+00
  %4427 = fmul fast float %4425, 8.000000e+00
  %4428 = and i32 %4412, 255
  %4429 = lshr i32 %4412, 8
  %4430 = and i32 %4429, 255
  %4431 = mul nuw nsw i32 %4428, 9
  %4432 = uitofp i32 %4431 to float
  %4433 = mul nuw nsw i32 %4430, 9
  %4434 = uitofp i32 %4433 to float
  %4435 = fadd fast float %4432, 5.000000e-01
  %4436 = fadd fast float %4435, %4420
  %4437 = fsub fast float %4436, %4426
  %4438 = fadd fast float %4434, 5.000000e-01
  %4439 = fadd fast float %4438, %4421
  %4440 = fsub fast float %4439, %4427
  %4441 = fdiv fast float %4437, %3820
  %4442 = fdiv fast float %4440, %4417
  %4443 = fmul fast float %4078, 4.375000e-01
  %4444 = fadd fast float %4443, 3.125000e-02
  %4445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4441, float %4442, float %4444, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4446 = extractvalue %dx.types.ResRet.f32 %4445, 0
  %4447 = extractvalue %dx.types.ResRet.f32 %4445, 1
  %4448 = extractvalue %dx.types.ResRet.f32 %4445, 2
  %4449 = fadd fast float %4446, %4390
  %4450 = fadd fast float %4447, %4391
  %4451 = fadd fast float %4448, %4392
  br label %4452

; <label>:4452                                    ; preds = %4416, %4401
  %4453 = phi float [ %4451, %4416 ], [ %4392, %4401 ]
  %4454 = phi float [ %4450, %4416 ], [ %4391, %4401 ]
  %4455 = phi float [ %4449, %4416 ], [ %4390, %4401 ]
  %4456 = icmp eq i32 %4414, 65535
  br i1 %4456, label %4546, label %4457

; <label>:4457                                    ; preds = %4452
  %4458 = extractvalue %dx.types.CBufRet.f32 %3819, 1
  %4459 = extractvalue %dx.types.CBufRet.f32 %4402, 0
  %4460 = extractvalue %dx.types.CBufRet.f32 %4402, 1
  %4461 = fmul fast float %4459, %4050
  %4462 = fmul fast float %4460, %4051
  %4463 = fmul fast float %4461, 1.250000e-01
  %4464 = fmul fast float %4462, 1.250000e-01
  %4465 = call float @dx.op.unary.f32(i32 27, float %4463)  ; Round_ni(value)
  %4466 = call float @dx.op.unary.f32(i32 27, float %4464)  ; Round_ni(value)
  %4467 = fmul fast float %4465, 8.000000e+00
  %4468 = fmul fast float %4466, 8.000000e+00
  %4469 = fsub fast float %4461, %4467
  %4470 = fsub fast float %4462, %4468
  %4471 = fadd fast float %4469, 5.000000e-01
  %4472 = fadd fast float %4470, 5.000000e-01
  %4473 = and i32 %4414, 255
  %4474 = lshr i32 %4412, 24
  %4475 = mul nuw nsw i32 %4473, 9
  %4476 = uitofp i32 %4475 to float
  %4477 = mul nuw nsw i32 %4474, 9
  %4478 = uitofp i32 %4477 to float
  %4479 = fadd fast float %4471, %4476
  %4480 = fadd fast float %4472, %4478
  %4481 = fdiv fast float %4479, %3820
  %4482 = fdiv fast float %4480, %4458
  %4483 = fmul fast float %4078, 4.375000e-01
  %4484 = fadd fast float %4483, 3.125000e-02
  %4485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4481, float %4482, float %4484, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4486 = extractvalue %dx.types.ResRet.f32 %4485, 0
  %4487 = extractvalue %dx.types.ResRet.f32 %4485, 1
  %4488 = extractvalue %dx.types.ResRet.f32 %4485, 2
  %4489 = fadd fast float %4483, 5.312500e-01
  %4490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %4481, float %4482, float %4489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4491 = extractvalue %dx.types.ResRet.f32 %4490, 0
  %4492 = extractvalue %dx.types.ResRet.f32 %4490, 1
  %4493 = extractvalue %dx.types.ResRet.f32 %4490, 2
  %4494 = fmul fast float %4491, 2.000000e+00
  %4495 = fmul fast float %4492, 2.000000e+00
  %4496 = fmul fast float %4493, 2.000000e+00
  %4497 = fadd fast float %4494, -1.000000e+00
  %4498 = fadd fast float %4495, -1.000000e+00
  %4499 = fadd fast float %4496, -1.000000e+00
  %4500 = fmul fast float %4497, %4497
  %4501 = fmul fast float %4498, %4498
  %4502 = fadd fast float %4500, %4501
  %4503 = fmul fast float %4499, %4499
  %4504 = fadd fast float %4502, %4503
  %4505 = call float @dx.op.unary.f32(i32 24, float %4504)  ; Sqrt(value)
  %4506 = fcmp fast ogt float %4505, 0.000000e+00
  br i1 %4506, label %4507, label %4511

; <label>:4507                                    ; preds = %4457
  %4508 = fdiv fast float %4497, %4505
  %4509 = fdiv fast float %4498, %4505
  %4510 = fdiv fast float %4499, %4505
  br label %4511

; <label>:4511                                    ; preds = %4507, %4457
  %4512 = phi float [ %4508, %4507 ], [ 0.000000e+00, %4457 ]
  %4513 = phi float [ %4509, %4507 ], [ 0.000000e+00, %4457 ]
  %4514 = phi float [ %4510, %4507 ], [ 0.000000e+00, %4457 ]
  %4515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.f32 %4515, 0
  %4517 = extractvalue %dx.types.CBufRet.f32 %4515, 1
  %4518 = fsub fast float %3671, %4516
  %4519 = fsub fast float %3672, %4517
  %4520 = fmul fast float %4518, %4518
  %4521 = fmul fast float %4519, %4519
  %4522 = fadd fast float %4520, %4521
  %4523 = call float @dx.op.unary.f32(i32 24, float %4522)  ; Sqrt(value)
  %4524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4525 = extractvalue %dx.types.CBufRet.f32 %4524, 0
  %4526 = extractvalue %dx.types.CBufRet.f32 %4524, 1
  %4527 = fsub fast float %4523, %4525
  %4528 = fdiv fast float %4527, %4526
  %4529 = call float @dx.op.unary.f32(i32 7, float %4528)  ; Saturate(value)
  %4530 = fmul fast float %4529, 2.000000e+00
  %4531 = fsub fast float 3.000000e+00, %4530
  %4532 = fmul fast float %4529, %4529
  %4533 = fmul fast float %4532, %4531
  %4534 = call float @dx.op.dot3.f32(i32 55, float %4512, float %4513, float %4514, float %3648, float %3649, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %4535 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4534)  ; FMax(a,b)
  %4536 = fmul fast float %4535, 0x400C5BF8A0000000
  %4537 = fmul fast float %4533, %4486
  %4538 = fmul fast float %4537, %4536
  %4539 = fadd fast float %4538, %4455
  %4540 = fmul fast float %4533, %4487
  %4541 = fmul fast float %4540, %4536
  %4542 = fadd fast float %4541, %4454
  %4543 = fmul fast float %4533, %4488
  %4544 = fmul fast float %4543, %4536
  %4545 = fadd fast float %4544, %4453
  br label %4546

; <label>:4546                                    ; preds = %4511, %4452, %4380
  %4547 = phi float [ %4545, %4511 ], [ %4453, %4452 ], [ %4392, %4380 ]
  %4548 = phi float [ %4542, %4511 ], [ %4454, %4452 ], [ %4391, %4380 ]
  %4549 = phi float [ %4539, %4511 ], [ %4455, %4452 ], [ %4390, %4380 ]
  %4550 = fcmp fast ogt float %4037, %4074
  %4551 = and i1 %4393, %4550
  %4552 = and i1 %4395, %4551
  %4553 = and i1 %4397, %4552
  %4554 = and i1 %4399, %4553
  br i1 %4554, label %4555, label %4612, !dx.controlflow.hints !91

; <label>:4555                                    ; preds = %4546
  %4556 = fmul fast float %4076, 0x3FC24924A0000000
  %4557 = fsub fast float %4037, %4074
  %4558 = fdiv fast float %4557, %4556
  %4559 = call float @dx.op.unary.f32(i32 7, float %4558)  ; Saturate(value)
  %4560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %4561 = extractvalue %dx.types.CBufRet.f32 %4560, 0
  %4562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %4563 = extractvalue %dx.types.CBufRet.f32 %4562, 0
  %4564 = extractvalue %dx.types.CBufRet.f32 %4562, 1
  %4565 = extractvalue %dx.types.CBufRet.f32 %4562, 2
  %4566 = fsub fast float %4561, %4549
  %4567 = fsub fast float %4563, %4387
  %4568 = fsub fast float %4564, %4388
  %4569 = fsub fast float %4565, %4389
  %4570 = fmul fast float %4566, %4559
  %4571 = fmul fast float %4567, %4559
  %4572 = fmul fast float %4568, %4559
  %4573 = fmul fast float %4569, %4559
  %4574 = fadd fast float %4570, %4549
  %4575 = fadd fast float %4571, %4387
  %4576 = fadd fast float %4572, %4388
  %4577 = fadd fast float %4573, %4389
  %4578 = extractvalue %dx.types.CBufRet.f32 %4560, 1
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.CBufRet.f32 %4579, 1
  %4582 = extractvalue %dx.types.CBufRet.f32 %4579, 2
  %4583 = fsub fast float %4578, %4548
  %4584 = fsub fast float %4580, %4384
  %4585 = fsub fast float %4581, %4385
  %4586 = fsub fast float %4582, %4386
  %4587 = fmul fast float %4583, %4559
  %4588 = fmul fast float %4584, %4559
  %4589 = fmul fast float %4585, %4559
  %4590 = fmul fast float %4586, %4559
  %4591 = fadd fast float %4587, %4548
  %4592 = fadd fast float %4588, %4384
  %4593 = fadd fast float %4589, %4385
  %4594 = fadd fast float %4590, %4386
  %4595 = extractvalue %dx.types.CBufRet.f32 %4560, 2
  %4596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %4597 = extractvalue %dx.types.CBufRet.f32 %4596, 0
  %4598 = extractvalue %dx.types.CBufRet.f32 %4596, 1
  %4599 = extractvalue %dx.types.CBufRet.f32 %4596, 2
  %4600 = fsub fast float %4595, %4547
  %4601 = fsub fast float %4597, %4381
  %4602 = fsub fast float %4598, %4382
  %4603 = fsub fast float %4599, %4383
  %4604 = fmul fast float %4600, %4559
  %4605 = fmul fast float %4601, %4559
  %4606 = fmul fast float %4602, %4559
  %4607 = fmul fast float %4603, %4559
  %4608 = fadd fast float %4604, %4547
  %4609 = fadd fast float %4605, %4381
  %4610 = fadd fast float %4606, %4382
  %4611 = fadd fast float %4607, %4383
  br label %4612

; <label>:4612                                    ; preds = %4555, %4546
  %4613 = phi float [ %4608, %4555 ], [ %4547, %4546 ]
  %4614 = phi float [ %4609, %4555 ], [ %4381, %4546 ]
  %4615 = phi float [ %4610, %4555 ], [ %4382, %4546 ]
  %4616 = phi float [ %4611, %4555 ], [ %4383, %4546 ]
  %4617 = phi float [ %4591, %4555 ], [ %4548, %4546 ]
  %4618 = phi float [ %4592, %4555 ], [ %4384, %4546 ]
  %4619 = phi float [ %4593, %4555 ], [ %4385, %4546 ]
  %4620 = phi float [ %4594, %4555 ], [ %4386, %4546 ]
  %4621 = phi float [ %4574, %4555 ], [ %4549, %4546 ]
  %4622 = phi float [ %4575, %4555 ], [ %4387, %4546 ]
  %4623 = phi float [ %4576, %4555 ], [ %4388, %4546 ]
  %4624 = phi float [ %4577, %4555 ], [ %4389, %4546 ]
  %4625 = extractvalue %dx.types.CBufRet.f32 %4199, 3
  %4626 = fmul fast float %4625, %4621
  %4627 = fmul fast float %4625, %4617
  %4628 = fmul fast float %4625, %4613
  %4629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.f32 %4629, 3
  %4631 = fmul fast float %4626, %4630
  %4632 = fmul fast float %4627, %4630
  %4633 = fmul fast float %4628, %4630
  %4634 = fmul fast float %4622, 1.500000e+00
  %4635 = fmul fast float %4634, %4625
  %4636 = fmul fast float %4635, %4630
  %4637 = fmul fast float %4623, 1.500000e+00
  %4638 = fmul fast float %4637, %4625
  %4639 = fmul fast float %4638, %4630
  %4640 = fmul fast float %4624, 1.500000e+00
  %4641 = fmul fast float %4640, %4625
  %4642 = fmul fast float %4641, %4630
  %4643 = fmul fast float %4618, 1.500000e+00
  %4644 = fmul fast float %4643, %4625
  %4645 = fmul fast float %4644, %4630
  %4646 = fmul fast float %4619, 1.500000e+00
  %4647 = fmul fast float %4646, %4625
  %4648 = fmul fast float %4647, %4630
  %4649 = fmul fast float %4620, 1.500000e+00
  %4650 = fmul fast float %4649, %4625
  %4651 = fmul fast float %4650, %4630
  %4652 = fmul fast float %4614, 1.500000e+00
  %4653 = fmul fast float %4652, %4625
  %4654 = fmul fast float %4653, %4630
  %4655 = fmul fast float %4615, 1.500000e+00
  %4656 = fmul fast float %4655, %4625
  %4657 = fmul fast float %4656, %4630
  %4658 = fmul fast float %4616, 1.500000e+00
  %4659 = fmul fast float %4658, %4625
  %4660 = fmul fast float %4659, %4630
  %4661 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4631)  ; FMax(a,b)
  %4662 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4639, float %4642, float %4636, float %4639, float %4642)  ; Dot3(ax,ay,az,bx,by,bz)
  %4663 = fcmp fast oeq float %4662, 0.000000e+00
  %4664 = fcmp fast oeq float %4661, 0.000000e+00
  %4665 = or i1 %4664, %4663
  br i1 %4665, label %4695, label %4666

; <label>:4666                                    ; preds = %4612
  %4667 = fsub fast float -0.000000e+00, %4642
  %4668 = fsub fast float -0.000000e+00, %4636
  %4669 = call float @dx.op.unary.f32(i32 24, float %4662)  ; Sqrt(value)
  %4670 = fdiv fast float %4669, %4661
  %4671 = fcmp fast ogt float %4670, 0x3FFB6F8900000000
  %4672 = select i1 %4671, float 0x3FFB6F8900000000, float %4670
  %4673 = fmul fast float %4672, 0x3FE8A23460000000
  %4674 = call float @dx.op.unary.f32(i32 7, float %4673)  ; Saturate(value)
  %4675 = call float @dx.op.binary.f32(i32 35, float %4672, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4676 = fmul fast float %4674, %4661
  %4677 = fmul fast float %4675, 0x3FF279A740000000
  %4678 = fadd fast float %4677, -1.000000e+00
  %4679 = call float @dx.op.dot3.f32(i32 55, float %4667, float %4668, float %4639, float %4667, float %4668, float %4639)  ; Dot3(ax,ay,az,bx,by,bz)
  %4680 = call float @dx.op.unary.f32(i32 25, float %4679)  ; Rsqrt(value)
  %4681 = fmul fast float %4680, %4667
  %4682 = fmul fast float %4680, %4668
  %4683 = fmul fast float %4680, %4639
  %4684 = fmul fast float %4678, %4678
  %4685 = fsub fast float 1.000000e+00, %4684
  %4686 = fmul fast float %4675, 0x40005F8BE0000000
  %4687 = fsub fast float 0x400C5BF8A0000000, %4686
  %4688 = fdiv fast float %4676, %4687
  %4689 = fmul fast float %4688, 0x3FEE31C3C0000000
  %4690 = fmul fast float %4689, %4685
  %4691 = fmul fast float %4675, 0x3FDACB7480000000
  %4692 = fadd fast float %4691, 0xBFD7347680000000
  %4693 = fmul fast float %4692, %4688
  %4694 = fmul fast float %4693, %4685
  br label %4695

; <label>:4695                                    ; preds = %4666, %4612
  %4696 = phi float [ %4681, %4666 ], [ 0.000000e+00, %4612 ]
  %4697 = phi float [ %4682, %4666 ], [ 0.000000e+00, %4612 ]
  %4698 = phi float [ %4683, %4666 ], [ 0.000000e+00, %4612 ]
  %4699 = phi float [ %4690, %4666 ], [ 0.000000e+00, %4612 ]
  %4700 = phi float [ %4694, %4666 ], [ 0.000000e+00, %4612 ]
  %4701 = call float @dx.op.dot3.f32(i32 55, float %4696, float %4697, float %4698, float %3648, float %3649, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %4702 = fmul fast float %4701, %4701
  %4703 = fmul fast float %4702, 0x3FEE471020000000
  %4704 = fadd fast float %4703, 0xBFD42F6020000000
  %4705 = fmul fast float %4661, 0x3FD20DD760000000
  %4706 = fmul fast float %4704, %4700
  %4707 = fmul fast float %4699, 0x3FDF454380000000
  %4708 = fmul fast float %4707, %4701
  %4709 = fadd fast float %4708, %4705
  %4710 = fadd fast float %4709, %4706
  %4711 = call float @dx.op.dot3.f32(i32 55, float %4696, float %4697, float %4698, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %4712 = fmul fast float %4711, 0x3FDF454380000000
  %4713 = fmul fast float %4711, %4711
  %4714 = fmul fast float %4713, 0x3FEE471020000000
  %4715 = fadd fast float %4714, 0xBFD42F6020000000
  %4716 = call float @dx.op.dot3.f32(i32 55, float %4661, float %4699, float %4700, float 0x3FD20DD760000000, float %4712, float %4715)  ; Dot3(ax,ay,az,bx,by,bz)
  %4717 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4632)  ; FMax(a,b)
  %4718 = call float @dx.op.dot3.f32(i32 55, float %4645, float %4648, float %4651, float %4645, float %4648, float %4651)  ; Dot3(ax,ay,az,bx,by,bz)
  %4719 = fcmp fast oeq float %4718, 0.000000e+00
  %4720 = fcmp fast oeq float %4717, 0.000000e+00
  %4721 = or i1 %4720, %4719
  br i1 %4721, label %4751, label %4722

; <label>:4722                                    ; preds = %4695
  %4723 = fsub fast float -0.000000e+00, %4651
  %4724 = fsub fast float -0.000000e+00, %4645
  %4725 = call float @dx.op.unary.f32(i32 24, float %4718)  ; Sqrt(value)
  %4726 = fdiv fast float %4725, %4717
  %4727 = fcmp fast ogt float %4726, 0x3FFB6F8900000000
  %4728 = select i1 %4727, float 0x3FFB6F8900000000, float %4726
  %4729 = fmul fast float %4728, 0x3FE8A23460000000
  %4730 = call float @dx.op.unary.f32(i32 7, float %4729)  ; Saturate(value)
  %4731 = call float @dx.op.binary.f32(i32 35, float %4728, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4732 = fmul fast float %4730, %4717
  %4733 = fmul fast float %4731, 0x3FF279A740000000
  %4734 = fadd fast float %4733, -1.000000e+00
  %4735 = call float @dx.op.dot3.f32(i32 55, float %4723, float %4724, float %4648, float %4723, float %4724, float %4648)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = call float @dx.op.unary.f32(i32 25, float %4735)  ; Rsqrt(value)
  %4737 = fmul fast float %4736, %4723
  %4738 = fmul fast float %4736, %4724
  %4739 = fmul fast float %4736, %4648
  %4740 = fmul fast float %4734, %4734
  %4741 = fsub fast float 1.000000e+00, %4740
  %4742 = fmul fast float %4731, 0x40005F8BE0000000
  %4743 = fsub fast float 0x400C5BF8A0000000, %4742
  %4744 = fdiv fast float %4732, %4743
  %4745 = fmul fast float %4744, 0x3FEE31C3C0000000
  %4746 = fmul fast float %4745, %4741
  %4747 = fmul fast float %4731, 0x3FDACB7480000000
  %4748 = fadd fast float %4747, 0xBFD7347680000000
  %4749 = fmul fast float %4748, %4744
  %4750 = fmul fast float %4749, %4741
  br label %4751

; <label>:4751                                    ; preds = %4722, %4695
  %4752 = phi float [ %4737, %4722 ], [ 0.000000e+00, %4695 ]
  %4753 = phi float [ %4738, %4722 ], [ 0.000000e+00, %4695 ]
  %4754 = phi float [ %4739, %4722 ], [ 0.000000e+00, %4695 ]
  %4755 = phi float [ %4746, %4722 ], [ 0.000000e+00, %4695 ]
  %4756 = phi float [ %4750, %4722 ], [ 0.000000e+00, %4695 ]
  %4757 = call float @dx.op.dot3.f32(i32 55, float %4752, float %4753, float %4754, float %3648, float %3649, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %4758 = fmul fast float %4757, %4757
  %4759 = fmul fast float %4758, 0x3FEE471020000000
  %4760 = fadd fast float %4759, 0xBFD42F6020000000
  %4761 = fmul fast float %4717, 0x3FD20DD760000000
  %4762 = fmul fast float %4760, %4756
  %4763 = fmul fast float %4755, 0x3FDF454380000000
  %4764 = fmul fast float %4763, %4757
  %4765 = fadd fast float %4764, %4761
  %4766 = fadd fast float %4765, %4762
  %4767 = call float @dx.op.dot3.f32(i32 55, float %4752, float %4753, float %4754, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %4768 = fmul fast float %4767, 0x3FDF454380000000
  %4769 = fmul fast float %4767, %4767
  %4770 = fmul fast float %4769, 0x3FEE471020000000
  %4771 = fadd fast float %4770, 0xBFD42F6020000000
  %4772 = call float @dx.op.dot3.f32(i32 55, float %4717, float %4755, float %4756, float 0x3FD20DD760000000, float %4768, float %4771)  ; Dot3(ax,ay,az,bx,by,bz)
  %4773 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4633)  ; FMax(a,b)
  %4774 = call float @dx.op.dot3.f32(i32 55, float %4654, float %4657, float %4660, float %4654, float %4657, float %4660)  ; Dot3(ax,ay,az,bx,by,bz)
  %4775 = fcmp fast oeq float %4774, 0.000000e+00
  %4776 = fcmp fast oeq float %4773, 0.000000e+00
  %4777 = or i1 %4776, %4775
  br i1 %4777, label %4807, label %4778

; <label>:4778                                    ; preds = %4751
  %4779 = fsub fast float -0.000000e+00, %4660
  %4780 = fsub fast float -0.000000e+00, %4654
  %4781 = call float @dx.op.unary.f32(i32 24, float %4774)  ; Sqrt(value)
  %4782 = fdiv fast float %4781, %4773
  %4783 = fcmp fast ogt float %4782, 0x3FFB6F8900000000
  %4784 = select i1 %4783, float 0x3FFB6F8900000000, float %4782
  %4785 = fmul fast float %4784, 0x3FE8A23460000000
  %4786 = call float @dx.op.unary.f32(i32 7, float %4785)  ; Saturate(value)
  %4787 = call float @dx.op.binary.f32(i32 35, float %4784, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4788 = fmul fast float %4786, %4773
  %4789 = fmul fast float %4787, 0x3FF279A740000000
  %4790 = fadd fast float %4789, -1.000000e+00
  %4791 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4780, float %4657, float %4779, float %4780, float %4657)  ; Dot3(ax,ay,az,bx,by,bz)
  %4792 = call float @dx.op.unary.f32(i32 25, float %4791)  ; Rsqrt(value)
  %4793 = fmul fast float %4792, %4779
  %4794 = fmul fast float %4792, %4780
  %4795 = fmul fast float %4792, %4657
  %4796 = fmul fast float %4790, %4790
  %4797 = fsub fast float 1.000000e+00, %4796
  %4798 = fmul fast float %4787, 0x40005F8BE0000000
  %4799 = fsub fast float 0x400C5BF8A0000000, %4798
  %4800 = fdiv fast float %4788, %4799
  %4801 = fmul fast float %4800, 0x3FEE31C3C0000000
  %4802 = fmul fast float %4801, %4797
  %4803 = fmul fast float %4787, 0x3FDACB7480000000
  %4804 = fadd fast float %4803, 0xBFD7347680000000
  %4805 = fmul fast float %4804, %4800
  %4806 = fmul fast float %4805, %4797
  br label %4807

; <label>:4807                                    ; preds = %4778, %4751
  %4808 = phi float [ %4793, %4778 ], [ 0.000000e+00, %4751 ]
  %4809 = phi float [ %4794, %4778 ], [ 0.000000e+00, %4751 ]
  %4810 = phi float [ %4795, %4778 ], [ 0.000000e+00, %4751 ]
  %4811 = phi float [ %4802, %4778 ], [ 0.000000e+00, %4751 ]
  %4812 = phi float [ %4806, %4778 ], [ 0.000000e+00, %4751 ]
  %4813 = call float @dx.op.dot3.f32(i32 55, float %4808, float %4809, float %4810, float %3648, float %3649, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %4814 = fmul fast float %4813, %4813
  %4815 = fmul fast float %4814, 0x3FEE471020000000
  %4816 = fadd fast float %4815, 0xBFD42F6020000000
  %4817 = fmul fast float %4773, 0x3FD20DD760000000
  %4818 = fmul fast float %4816, %4812
  %4819 = fmul fast float %4811, 0x3FDF454380000000
  %4820 = fmul fast float %4819, %4813
  %4821 = fadd fast float %4820, %4817
  %4822 = fadd fast float %4821, %4818
  %4823 = call float @dx.op.dot3.f32(i32 55, float %4808, float %4809, float %4810, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %4824 = fmul fast float %4823, 0x3FDF454380000000
  %4825 = fmul fast float %4823, %4823
  %4826 = fmul fast float %4825, 0x3FEE471020000000
  %4827 = fadd fast float %4826, 0xBFD42F6020000000
  %4828 = call float @dx.op.dot3.f32(i32 55, float %4773, float %4811, float %4812, float 0x3FD20DD760000000, float %4824, float %4827)  ; Dot3(ax,ay,az,bx,by,bz)
  %4829 = call float @dx.op.binary.f32(i32 35, float %4710, float 0.000000e+00)  ; FMax(a,b)
  %4830 = call float @dx.op.binary.f32(i32 35, float %4766, float 0.000000e+00)  ; FMax(a,b)
  %4831 = call float @dx.op.binary.f32(i32 35, float %4822, float 0.000000e+00)  ; FMax(a,b)
  %4832 = call float @dx.op.binary.f32(i32 35, float %4716, float 0.000000e+00)  ; FMax(a,b)
  %4833 = call float @dx.op.binary.f32(i32 35, float %4772, float 0.000000e+00)  ; FMax(a,b)
  %4834 = call float @dx.op.binary.f32(i32 35, float %4828, float 0.000000e+00)  ; FMax(a,b)
  %4835 = fsub fast float %4031, %4829
  %4836 = fsub fast float %4032, %4830
  %4837 = fsub fast float %4033, %4831
  %4838 = fmul fast float %4835, %3712
  %4839 = fmul fast float %4836, %3712
  %4840 = fmul fast float %4837, %3712
  %4841 = fadd fast float %4838, %4829
  %4842 = fadd fast float %4839, %4830
  %4843 = fadd fast float %4840, %4831
  %4844 = fsub fast float %4028, %4832
  %4845 = fsub fast float %4029, %4833
  %4846 = fsub fast float %4030, %4834
  %4847 = fmul fast float %4844, %3712
  %4848 = fmul fast float %4845, %3712
  %4849 = fmul fast float %4846, %3712
  %4850 = fadd fast float %4847, %4832
  %4851 = fadd fast float %4848, %4833
  %4852 = fadd fast float %4849, %4834
  br label %4853

; <label>:4853                                    ; preds = %4807, %4027
  %4854 = phi float [ %4850, %4807 ], [ %4028, %4027 ]
  %4855 = phi float [ %4851, %4807 ], [ %4029, %4027 ]
  %4856 = phi float [ %4852, %4807 ], [ %4030, %4027 ]
  %4857 = phi float [ %4841, %4807 ], [ %4031, %4027 ]
  %4858 = phi float [ %4842, %4807 ], [ %4032, %4027 ]
  %4859 = phi float [ %4843, %4807 ], [ %4033, %4027 ]
  %4860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4861 = extractvalue %dx.types.CBufRet.f32 %4860, 0
  %4862 = call float @dx.op.binary.f32(i32 36, float %3645, float %4861)  ; FMin(a,b)
  %4863 = fsub fast float 1.000000e+00, %3664
  %4864 = fmul fast float %4862, %4863
  %4865 = fsub fast float 1.000000e+00, %4864
  %4866 = bitcast float %4865 to i32
  %4867 = sub nsw i32 2129859010, %4866
  %4868 = bitcast i32 %4867 to float
  %4869 = call float @dx.op.binary.f32(i32 36, float %3646, float %4861)  ; FMin(a,b)
  %4870 = fmul fast float %4869, %4863
  %4871 = fsub fast float 1.000000e+00, %4870
  %4872 = bitcast float %4871 to i32
  %4873 = sub nsw i32 2129859010, %4872
  %4874 = bitcast i32 %4873 to float
  %4875 = call float @dx.op.binary.f32(i32 36, float %3647, float %4861)  ; FMin(a,b)
  %4876 = fmul fast float %4875, %4863
  %4877 = fsub fast float 1.000000e+00, %4876
  %4878 = bitcast float %4877 to i32
  %4879 = sub nsw i32 2129859010, %4878
  %4880 = bitcast i32 %4879 to float
  %4881 = fmul fast float %4857, %3664
  %4882 = fmul fast float %4881, %4868
  %4883 = fmul fast float %4858, %3664
  %4884 = fmul fast float %4883, %4874
  %4885 = fmul fast float %4859, %3664
  %4886 = fmul fast float %4885, %4880
  %4887 = call float @dx.op.binary.f32(i32 36, float %3642, float %4861)  ; FMin(a,b)
  %4888 = fmul fast float %4887, %4863
  %4889 = fsub fast float 1.000000e+00, %4888
  %4890 = bitcast float %4889 to i32
  %4891 = sub nsw i32 2129859010, %4890
  %4892 = bitcast i32 %4891 to float
  %4893 = call float @dx.op.binary.f32(i32 36, float %3643, float %4861)  ; FMin(a,b)
  %4894 = fmul fast float %4893, %4863
  %4895 = fsub fast float 1.000000e+00, %4894
  %4896 = bitcast float %4895 to i32
  %4897 = sub nsw i32 2129859010, %4896
  %4898 = bitcast i32 %4897 to float
  %4899 = call float @dx.op.binary.f32(i32 36, float %3653, float %4861)  ; FMin(a,b)
  %4900 = fmul fast float %4899, %4863
  %4901 = fsub fast float 1.000000e+00, %4900
  %4902 = bitcast float %4901 to i32
  %4903 = sub nsw i32 2129859010, %4902
  %4904 = bitcast i32 %4903 to float
  %4905 = fmul fast float %4854, %3664
  %4906 = fmul fast float %4905, %4892
  %4907 = fmul fast float %4855, %3664
  %4908 = fmul fast float %4907, %4898
  %4909 = fmul fast float %4856, %3664
  %4910 = fmul fast float %4909, %4904
  %4911 = call float @dx.op.dot3.f32(i32 55, float %4882, float %4884, float %4886, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4912 = select i1 %196, float 0.000000e+00, float %4882
  %4913 = select i1 %196, float %4911, float %4884
  %4914 = select i1 %196, float 0.000000e+00, float %4886
  %4915 = call float @dx.op.dot3.f32(i32 55, float %4906, float %4908, float %4910, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4916 = select i1 %196, float 0.000000e+00, float %4906
  %4917 = select i1 %196, float %4915, float %4908
  %4918 = select i1 %196, float 0.000000e+00, float %4910
  %4919 = fmul fast float %3655, 9.843750e-01
  %4920 = fmul fast float %3651, 9.843750e-01
  %4921 = fadd fast float %4919, 7.812500e-03
  %4922 = fadd fast float %4920, 7.812500e-03
  %4923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4921, float %4922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4924 = extractvalue %dx.types.ResRet.f32 %4923, 2
  %4925 = extractvalue %dx.types.ResRet.f32 %4923, 3
  %4926 = fmul fast float %4924, %3642
  %4927 = fmul fast float %4924, %3643
  %4928 = fmul fast float %4924, %3653
  %4929 = fadd fast float %4926, %4925
  %4930 = fadd fast float %4927, %4925
  %4931 = fadd fast float %4928, %4925
  %4932 = fcmp fast ogt float %3019, 0.000000e+00
  br i1 %4932, label %4933, label %4959

; <label>:4933                                    ; preds = %4853
  %4934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3019, float %3655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4935 = extractvalue %dx.types.ResRet.f32 %4934, 0
  %4936 = extractvalue %dx.types.ResRet.f32 %4934, 1
  %4937 = extractvalue %dx.types.ResRet.f32 %4934, 2
  %4938 = fadd fast float %4935, -5.000000e-01
  %4939 = fadd fast float %4936, -5.000000e-01
  %4940 = fadd fast float %4937, -5.000000e-01
  %4941 = fsub fast float 1.000000e+00, %3642
  %4942 = fsub fast float 1.000000e+00, %3643
  %4943 = fsub fast float 1.000000e+00, %3653
  %4944 = fmul fast float %3642, 4.000000e+00
  %4945 = fmul fast float %4944, %4941
  %4946 = fmul fast float %4945, %4938
  %4947 = fmul fast float %3643, 4.000000e+00
  %4948 = fmul fast float %4947, %4942
  %4949 = fmul fast float %4948, %4939
  %4950 = fmul fast float %3653, 4.000000e+00
  %4951 = fmul fast float %4950, %4943
  %4952 = fmul fast float %4951, %4940
  %4953 = fadd fast float %4946, %4929
  %4954 = fadd fast float %4949, %4930
  %4955 = fadd fast float %4952, %4931
  %4956 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4957 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4958 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  br label %4959

; <label>:4959                                    ; preds = %4933, %4853
  %4960 = phi float [ %4956, %4933 ], [ %4929, %4853 ]
  %4961 = phi float [ %4957, %4933 ], [ %4930, %4853 ]
  %4962 = phi float [ %4958, %4933 ], [ %4931, %4853 ]
  %4963 = call float @dx.op.binary.f32(i32 35, float %4961, float %4962)  ; FMax(a,b)
  %4964 = call float @dx.op.binary.f32(i32 35, float %4960, float %4963)  ; FMax(a,b)
  %4965 = fsub fast float 1.000000e+00, %4964
  %4966 = fmul fast float %4965, %4912
  %4967 = fmul fast float %4965, %4913
  %4968 = fmul fast float %4965, %4914
  %4969 = call float @dx.op.dot3.f32(i32 55, float %3645, float %3646, float %3647, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4970 = fcmp fast ogt float %4969, 0x3E7FF19E20000000
  %4971 = fdiv fast float 1.000000e+00, %4969
  %4972 = select i1 %4970, float %4971, float 0.000000e+00
  %4973 = fmul fast float %4972, %3645
  %4974 = fmul fast float %4972, %3646
  %4975 = fmul fast float %4972, %3647
  %4976 = fadd fast float %4973, -1.000000e+00
  %4977 = fadd fast float %4974, -1.000000e+00
  %4978 = fadd fast float %4975, -1.000000e+00
  %4979 = fmul fast float %4976, 5.000000e-01
  %4980 = fmul fast float %4977, 5.000000e-01
  %4981 = fmul fast float %4978, 5.000000e-01
  %4982 = fadd fast float %4979, 1.000000e+00
  %4983 = fadd fast float %4980, 1.000000e+00
  %4984 = fadd fast float %4981, 1.000000e+00
  %4985 = fmul fast float %4960, %4916
  %4986 = fmul fast float %4961, %4917
  %4987 = fmul fast float %4962, %4918
  %4988 = fsub fast float 1.000000e+00, %3655
  %4989 = bitcast float %4988 to i32
  %4990 = sitofp i32 %4989 to float
  %4991 = fmul fast float %4990, 5.000000e+00
  %4992 = fadd fast float %4991, 0xC1EFBF8940000000
  %4993 = fptosi float %4992 to i32
  %4994 = bitcast i32 %4993 to float
  %4995 = fmul fast float %4994, %3018
  %4996 = fmul fast float %4912, %4995
  %4997 = fmul fast float %4996, %4965
  %4998 = fmul fast float %4997, %4982
  %4999 = fmul fast float %4913, %4995
  %5000 = fmul fast float %4999, %4965
  %5001 = fmul fast float %5000, %4983
  %5002 = fmul fast float %4914, %4995
  %5003 = fmul fast float %5002, %4965
  %5004 = fmul fast float %5003, %4984
  %5005 = fmul fast float %4966, %3039
  %5006 = fmul fast float %4967, %3039
  %5007 = fmul fast float %4968, %3039
  %5008 = fadd fast float %4985, %3020
  %5009 = fadd fast float %5008, %4998
  %5010 = fmul fast float %5009, %3039
  %5011 = fadd fast float %4986, %3021
  %5012 = fadd fast float %5011, %5001
  %5013 = fmul fast float %5012, %3039
  %5014 = fadd fast float %4987, %3022
  %5015 = fadd fast float %5014, %5004
  %5016 = fmul fast float %5015, %3039
  %5017 = bitcast i32 %3667 to float
  %5018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5019 = extractvalue %dx.types.CBufRet.f32 %5018, 3
  %5020 = fcmp fast oeq float %5019, 0.000000e+00
  br i1 %5020, label %5248, label %5021

; <label>:5021                                    ; preds = %4959
  %5022 = extractvalue %dx.types.CBufRet.f32 %5018, 0
  %5023 = extractvalue %dx.types.CBufRet.f32 %5018, 1
  %5024 = extractvalue %dx.types.CBufRet.f32 %5018, 2
  %5025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5026 = extractvalue %dx.types.CBufRet.f32 %5025, 0
  %5027 = extractvalue %dx.types.CBufRet.f32 %5025, 1
  %5028 = extractvalue %dx.types.CBufRet.f32 %5025, 2
  %5029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5030 = extractvalue %dx.types.CBufRet.f32 %5029, 0
  %5031 = extractvalue %dx.types.CBufRet.f32 %5029, 1
  %5032 = call float @dx.op.dot3.f32(i32 55, float %5026, float %5027, float %5028, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5033 = select i1 %196, float %5030, float %5026
  %5034 = select i1 %196, float %5032, float %5027
  %5035 = select i1 %196, float %5031, float %5028
  %5036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5037 = extractvalue %dx.types.CBufRet.f32 %5036, 1
  %5038 = fcmp fast une float %5037, 0.000000e+00
  br i1 %5038, label %5039, label %5056

; <label>:5039                                    ; preds = %5021
  %5040 = fptoui float %78 to i32
  %5041 = fptoui float %79 to i32
  %5042 = lshr i32 %5040, 4
  %5043 = lshr i32 %5041, 4
  %5044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5045 = extractvalue %dx.types.CBufRet.f32 %5044, 0
  %5046 = fptoui float %5045 to i32
  %5047 = add i32 %5046, 15
  %5048 = lshr i32 %5047, 4
  %5049 = mul i32 %5048, %5043
  %5050 = add i32 %5049, %5042
  %5051 = shl i32 %5050, 3
  %5052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5051, i32 undef)  ; BufferLoad(srv,index,wot)
  %5053 = extractvalue %dx.types.ResRet.i32 %5052, 0
  %5054 = and i32 %5053, -268435456
  %5055 = icmp eq i32 %5054, -1342177280
  br i1 %5055, label %5066, label %5056

; <label>:5056                                    ; preds = %5039, %5021
  %5057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5058 = extractvalue %dx.types.CBufRet.f32 %5057, 2
  %5059 = extractvalue %dx.types.CBufRet.f32 %5057, 3
  %5060 = fmul fast float %5058, %78
  %5061 = fmul fast float %5059, %79
  %5062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %5060, float %5061, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5063 = extractvalue %dx.types.ResRet.f32 %5062, 0
  %5064 = extractvalue %dx.types.ResRet.f32 %5062, 1
  %5065 = extractvalue %dx.types.ResRet.f32 %5062, 2
  br label %5066

; <label>:5066                                    ; preds = %5056, %5039
  %5067 = phi float [ %5063, %5056 ], [ 0.000000e+00, %5039 ]
  %5068 = phi float [ %5064, %5056 ], [ 0.000000e+00, %5039 ]
  %5069 = phi float [ %5065, %5056 ], [ 0.000000e+00, %5039 ]
  %5070 = call float @dx.op.binary.f32(i32 36, float %5068, float %5069)  ; FMin(a,b)
  %5071 = call float @dx.op.binary.f32(i32 36, float %5067, float %5070)  ; FMin(a,b)
  %5072 = fcmp fast ogt float %5071, 0.000000e+00
  br i1 %5072, label %5073, label %5248, !dx.controlflow.hints !92

; <label>:5073                                    ; preds = %5066
  %5074 = fmul fast float %5067, %5033
  %5075 = fmul fast float %5068, %5034
  %5076 = fmul fast float %5069, %5035
  %5077 = fsub fast float %5022, %3641
  %5078 = fsub fast float %5023, %3640
  %5079 = fsub fast float %5024, %3639
  %5080 = call float @dx.op.dot3.f32(i32 55, float %5077, float %5078, float %5079, float %5077, float %5078, float %5079)  ; Dot3(ax,ay,az,bx,by,bz)
  %5081 = call float @dx.op.unary.f32(i32 25, float %5080)  ; Rsqrt(value)
  %5082 = fmul fast float %5081, %5077
  %5083 = fmul fast float %5081, %5078
  %5084 = fmul fast float %5081, %5079
  %5085 = call float @dx.op.dot3.f32(i32 55, float %5022, float %5023, float %5024, float %3648, float %3649, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %5086 = call float @dx.op.dot3.f32(i32 55, float %3638, float %3637, float %3636, float %5082, float %5083, float %5084)  ; Dot3(ax,ay,az,bx,by,bz)
  %5087 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5088 = fmul fast float %5087, %5087
  %5089 = fmul fast float %5088, %5017
  %5090 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5091 = fmul fast float %5090, %5087
  %5092 = call float @dx.op.dot3.f32(i32 55, float %3648, float %3649, float %3650, float %5082, float %5083, float %5084)  ; Dot3(ax,ay,az,bx,by,bz)
  %5093 = fmul fast float %5092, %5092
  %5094 = call float @dx.op.unary.f32(i32 6, float %5085)  ; FAbs(value)
  %5095 = fsub fast float 1.000000e+00, %3651
  %5096 = call float @dx.op.binary.f32(i32 35, float %5095, float 0x3F847AE140000000)  ; FMax(a,b)
  %5097 = fmul fast float %5096, %5096
  %5098 = fmul fast float %5097, %5097
  %5099 = fsub fast float 1.000000e+00, %5098
  %5100 = fmul fast float %3655, %3655
  %5101 = fmul fast float %5100, %5099
  %5102 = fadd fast float %5101, %5098
  %5103 = bitcast float %5102 to i32
  %5104 = ashr i32 %5103, 1
  %5105 = add nsw i32 %5104, 532487669
  %5106 = bitcast i32 %5105 to float
  %5107 = fadd fast float %5106, %3655
  %5108 = fmul fast float %5098, %5093
  %5109 = fsub fast float 1.000000e+00, %5093
  %5110 = fadd fast float %5109, %5108
  %5111 = fmul fast float %5094, %5094
  %5112 = fmul fast float %5111, %5099
  %5113 = fadd fast float %5112, %5098
  %5114 = bitcast float %5113 to i32
  %5115 = ashr i32 %5114, 1
  %5116 = add nsw i32 %5115, 532487669
  %5117 = bitcast i32 %5116 to float
  %5118 = fadd fast float %5117, %5094
  %5119 = fmul fast float %5110, %5110
  %5120 = fmul fast float %5119, %5107
  %5121 = fmul fast float %5120, %5118
  %5122 = fdiv fast float 0x3FF0A00000000000, %5121
  %5123 = fmul fast float %5122, %5098
  %5124 = call float @dx.op.unary.f32(i32 6, float %5086)  ; FAbs(value)
  %5125 = fsub fast float 1.000000e+00, %5124
  %5126 = bitcast float %5125 to i32
  %5127 = sitofp i32 %5126 to float
  %5128 = fmul fast float %5127, 5.000000e+00
  %5129 = fadd fast float %5128, 0xC1EFBF8940000000
  %5130 = fptosi float %5129 to i32
  %5131 = bitcast i32 %5130 to float
  %5132 = fsub fast float 1.000000e+00, %3642
  %5133 = fsub fast float 1.000000e+00, %3643
  %5134 = fsub fast float 1.000000e+00, %3653
  %5135 = fmul fast float %5131, %5132
  %5136 = fmul fast float %5131, %5133
  %5137 = fmul fast float %5131, %5134
  %5138 = fadd fast float %5135, %3642
  %5139 = fadd fast float %5136, %3643
  %5140 = fadd fast float %5137, %3653
  br i1 %4932, label %5141, label %5164

; <label>:5141                                    ; preds = %5073
  %5142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3019, float %5124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5143 = extractvalue %dx.types.ResRet.f32 %5142, 0
  %5144 = extractvalue %dx.types.ResRet.f32 %5142, 1
  %5145 = extractvalue %dx.types.ResRet.f32 %5142, 2
  %5146 = fadd fast float %5143, -5.000000e-01
  %5147 = fadd fast float %5144, -5.000000e-01
  %5148 = fadd fast float %5145, -5.000000e-01
  %5149 = fmul fast float %3642, 4.000000e+00
  %5150 = fmul fast float %5149, %5132
  %5151 = fmul fast float %5150, %5146
  %5152 = fmul fast float %3643, 4.000000e+00
  %5153 = fmul fast float %5152, %5133
  %5154 = fmul fast float %5153, %5147
  %5155 = fmul fast float %3653, 4.000000e+00
  %5156 = fmul fast float %5155, %5134
  %5157 = fmul fast float %5156, %5148
  %5158 = fadd fast float %5151, %5138
  %5159 = fadd fast float %5154, %5139
  %5160 = fadd fast float %5157, %5140
  %5161 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5162 = call float @dx.op.unary.f32(i32 7, float %5159)  ; Saturate(value)
  %5163 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  br label %5164

; <label>:5164                                    ; preds = %5141, %5073
  %5165 = phi float [ %5161, %5141 ], [ %5138, %5073 ]
  %5166 = phi float [ %5162, %5141 ], [ %5139, %5073 ]
  %5167 = phi float [ %5163, %5141 ], [ %5140, %5073 ]
  %5168 = fmul fast float %5085, 9.843750e-01
  %5169 = fadd fast float %5168, 7.812500e-03
  %5170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5169, float %4922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5171 = extractvalue %dx.types.ResRet.f32 %5170, 2
  %5172 = extractvalue %dx.types.ResRet.f32 %5170, 3
  %5173 = fmul fast float %5171, %3642
  %5174 = fmul fast float %5171, %3643
  %5175 = fmul fast float %5171, %3653
  %5176 = fadd fast float %5173, %5172
  %5177 = fadd fast float %5174, %5172
  %5178 = fadd fast float %5175, %5172
  br i1 %4932, label %5179, label %5202

; <label>:5179                                    ; preds = %5164
  %5180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3019, float %5085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5181 = extractvalue %dx.types.ResRet.f32 %5180, 0
  %5182 = extractvalue %dx.types.ResRet.f32 %5180, 1
  %5183 = extractvalue %dx.types.ResRet.f32 %5180, 2
  %5184 = fadd fast float %5181, -5.000000e-01
  %5185 = fadd fast float %5182, -5.000000e-01
  %5186 = fadd fast float %5183, -5.000000e-01
  %5187 = fmul fast float %3642, 4.000000e+00
  %5188 = fmul fast float %5187, %5132
  %5189 = fmul fast float %5188, %5184
  %5190 = fmul fast float %3643, 4.000000e+00
  %5191 = fmul fast float %5190, %5133
  %5192 = fmul fast float %5191, %5185
  %5193 = fmul fast float %3653, 4.000000e+00
  %5194 = fmul fast float %5193, %5134
  %5195 = fmul fast float %5194, %5186
  %5196 = fadd fast float %5189, %5176
  %5197 = fadd fast float %5192, %5177
  %5198 = fadd fast float %5195, %5178
  %5199 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  %5200 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5201 = call float @dx.op.unary.f32(i32 7, float %5198)  ; Saturate(value)
  br label %5202

; <label>:5202                                    ; preds = %5179, %5164
  %5203 = phi float [ %5199, %5179 ], [ %5176, %5164 ]
  %5204 = phi float [ %5200, %5179 ], [ %5177, %5164 ]
  %5205 = phi float [ %5201, %5179 ], [ %5178, %5164 ]
  %5206 = call float @dx.op.binary.f32(i32 35, float %5204, float %5205)  ; FMax(a,b)
  %5207 = call float @dx.op.binary.f32(i32 35, float %5203, float %5206)  ; FMax(a,b)
  %5208 = fsub fast float 1.000000e+00, %5207
  %5209 = fmul fast float %5165, %5123
  %5210 = fmul fast float %5166, %5123
  %5211 = fmul fast float %5167, %5123
  %5212 = fsub fast float 1.000000e+00, %5086
  %5213 = bitcast float %5212 to i32
  %5214 = sitofp i32 %5213 to float
  %5215 = fmul fast float %5214, 5.000000e+00
  %5216 = fadd fast float %5215, 0xC1EFBF8940000000
  %5217 = fptosi float %5216 to i32
  %5218 = bitcast i32 %5217 to float
  %5219 = fmul fast float %5218, %3018
  %5220 = fmul fast float %5208, %5219
  %5221 = fmul fast float %5220, %4982
  %5222 = fmul fast float %5220, %4983
  %5223 = fmul fast float %5220, %4984
  %5224 = fadd fast float %5221, %5209
  %5225 = fadd fast float %5222, %5210
  %5226 = fadd fast float %5223, %5211
  %5227 = fmul fast float %5091, %5074
  %5228 = fmul fast float %5227, %5208
  %5229 = fmul fast float %5091, %5075
  %5230 = fmul fast float %5229, %5208
  %5231 = fmul fast float %5091, %5076
  %5232 = fmul fast float %5231, %5208
  %5233 = fmul fast float %5227, %5224
  %5234 = fmul fast float %5229, %5225
  %5235 = fmul fast float %5231, %5226
  %5236 = fadd fast float %5228, %4966
  %5237 = fmul fast float %5236, %3039
  %5238 = fadd fast float %5230, %4967
  %5239 = fmul fast float %5238, %3039
  %5240 = fadd fast float %5232, %4968
  %5241 = fmul fast float %5240, %3039
  %5242 = fadd fast float %5233, %5009
  %5243 = fmul fast float %5242, %3039
  %5244 = fadd fast float %5234, %5012
  %5245 = fmul fast float %5244, %3039
  %5246 = fadd fast float %5235, %5015
  %5247 = fmul fast float %5246, %3039
  br label %5248

; <label>:5248                                    ; preds = %5202, %5066, %4959
  %5249 = phi float [ %5010, %4959 ], [ %5010, %5066 ], [ %5243, %5202 ]
  %5250 = phi float [ %5013, %4959 ], [ %5013, %5066 ], [ %5245, %5202 ]
  %5251 = phi float [ %5016, %4959 ], [ %5016, %5066 ], [ %5247, %5202 ]
  %5252 = phi float [ %5005, %4959 ], [ %5005, %5066 ], [ %5237, %5202 ]
  %5253 = phi float [ %5006, %4959 ], [ %5006, %5066 ], [ %5239, %5202 ]
  %5254 = phi float [ %5007, %4959 ], [ %5007, %5066 ], [ %5241, %5202 ]
  %5255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5256 = extractvalue %dx.types.CBufRet.i32 %5255, 0
  %5257 = icmp eq i32 %5256, 0
  br i1 %5257, label %5692, label %5258

; <label>:5258                                    ; preds = %5248
  %5259 = fptoui float %78 to i32
  %5260 = fptoui float %79 to i32
  %5261 = lshr i32 %5259, 4
  %5262 = lshr i32 %5260, 4
  %5263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.i32 %5263, 0
  %5265 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5262, i32 %5264, i32 %5261)  ; UMad(a,b,c)
  %5266 = add nsw i32 %5256, -1
  %5267 = call i32 @dx.op.binary.i32(i32 37, i32 %5266, i32 0)  ; IMax(a,b)
  %5268 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5269 = fptoui float %5268 to i32
  %5270 = lshr i32 %5269, 5
  %5271 = call i32 @dx.op.binary.i32(i32 40, i32 %5270, i32 8191)  ; UMin(a,b)
  %5272 = shl i32 %5271, 2
  %5273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5272, i32 undef)  ; BufferLoad(srv,index,wot)
  %5274 = extractvalue %dx.types.ResRet.i32 %5273, 0
  %5275 = lshr i32 %5274, 16
  %5276 = and i32 %5274, 65535
  %5277 = lshr i32 %5274, 21
  %5278 = lshr i32 %5276, 5
  %5279 = call i32 @dx.op.binary.i32(i32 40, i32 %5278, i32 %5267)  ; UMin(a,b)
  %5280 = icmp ugt i32 %5277, %5279
  br i1 %5280, label %5692, label %5281

; <label>:5281                                    ; preds = %5258
  br label %5282

; <label>:5282                                    ; preds = %5682, %5281
  %5283 = phi i32 [ %5689, %5682 ], [ %5277, %5281 ]
  %5284 = phi float [ %5683, %5682 ], [ %5249, %5281 ]
  %5285 = phi float [ %5684, %5682 ], [ %5250, %5281 ]
  %5286 = phi float [ %5685, %5682 ], [ %5251, %5281 ]
  %5287 = phi float [ %5686, %5682 ], [ %5252, %5281 ]
  %5288 = phi float [ %5687, %5682 ], [ %5253, %5281 ]
  %5289 = phi float [ %5688, %5682 ], [ %5254, %5281 ]
  %5290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5291 = extractvalue %dx.types.CBufRet.i32 %5290, 0
  %5292 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5265, i32 %5291, i32 %5283)  ; UMad(a,b,c)
  %5293 = shl i32 %5292, 2
  %5294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5293, i32 undef)  ; BufferLoad(srv,index,wot)
  %5295 = extractvalue %dx.types.ResRet.i32 %5294, 0
  %5296 = shl i32 %5283, 5
  %5297 = sub nsw i32 %5275, %5296
  %5298 = call i32 @dx.op.binary.i32(i32 37, i32 %5297, i32 0)  ; IMax(a,b)
  %5299 = call i32 @dx.op.binary.i32(i32 38, i32 %5298, i32 31)  ; IMin(a,b)
  %5300 = sub nsw i32 1, %5275
  %5301 = add nsw i32 %5300, %5276
  %5302 = call i32 @dx.op.binary.i32(i32 37, i32 %5301, i32 0)  ; IMax(a,b)
  %5303 = call i32 @dx.op.binary.i32(i32 38, i32 %5302, i32 32)  ; IMin(a,b)
  %5304 = and i32 %5303, 31
  %5305 = shl i32 -1, %5304
  %5306 = xor i32 %5305, -1
  %5307 = and i32 %5299, 31
  %5308 = shl i32 %5306, %5307
  %5309 = icmp eq i32 %5303, 32
  %5310 = select i1 %5309, i32 -1, i32 %5308
  %5311 = and i32 %5310, %5295
  %5312 = icmp eq i32 %5311, 0
  br i1 %5312, label %5682, label %5313

; <label>:5313                                    ; preds = %5282
  br label %5314

; <label>:5314                                    ; preds = %5394, %5313
  %5315 = phi i32 [ %5326, %5394 ], [ %5311, %5313 ]
  %5316 = phi float [ %5395, %5394 ], [ %5284, %5313 ]
  %5317 = phi float [ %5396, %5394 ], [ %5285, %5313 ]
  %5318 = phi float [ %5397, %5394 ], [ %5286, %5313 ]
  %5319 = phi float [ %5398, %5394 ], [ %5287, %5313 ]
  %5320 = phi float [ %5399, %5394 ], [ %5288, %5313 ]
  %5321 = phi float [ %5400, %5394 ], [ %5289, %5313 ]
  %5322 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5315)  ; FirstbitLo(value)
  %5323 = add i32 %5322, %5296
  %5324 = and i32 %5322, 31
  %5325 = shl i32 1, %5324
  %5326 = xor i32 %5325, %5315
  %5327 = mul i32 %5323, 112
  %5328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5327, i32 undef)  ; BufferLoad(srv,index,wot)
  %5329 = extractvalue %dx.types.ResRet.f32 %5328, 0
  %5330 = extractvalue %dx.types.ResRet.f32 %5328, 1
  %5331 = extractvalue %dx.types.ResRet.f32 %5328, 2
  %5332 = or i32 %5327, 12
  %5333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5332, i32 undef)  ; BufferLoad(srv,index,wot)
  %5334 = extractvalue %dx.types.ResRet.f32 %5333, 0
  %5335 = add i32 %5327, 44
  %5336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5335, i32 undef)  ; BufferLoad(srv,index,wot)
  %5337 = extractvalue %dx.types.ResRet.f32 %5336, 0
  %5338 = add i32 %5327, 48
  %5339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5338, i32 undef)  ; BufferLoad(srv,index,wot)
  %5340 = extractvalue %dx.types.ResRet.f32 %5339, 0
  %5341 = extractvalue %dx.types.ResRet.f32 %5339, 1
  %5342 = extractvalue %dx.types.ResRet.f32 %5339, 2
  %5343 = add i32 %5327, 80
  %5344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5343, i32 undef)  ; BufferLoad(srv,index,wot)
  %5345 = extractvalue %dx.types.ResRet.f32 %5344, 1
  %5346 = extractvalue %dx.types.ResRet.f32 %5344, 2
  %5347 = call float @dx.op.dot3.f32(i32 55, float %5329, float %5330, float %5331, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5348 = select i1 %196, float %5345, float %5329
  %5349 = select i1 %196, float %5347, float %5330
  %5350 = select i1 %196, float %5346, float %5331
  %5351 = fsub fast float %5340, %125
  %5352 = fsub fast float %5341, %126
  %5353 = fsub fast float %5342, %127
  %5354 = call float @dx.op.dot3.f32(i32 55, float %5351, float %5352, float %5353, float %5351, float %5352, float %5353)  ; Dot3(ax,ay,az,bx,by,bz)
  %5355 = call float @dx.op.unary.f32(i32 24, float %5354)  ; Sqrt(value)
  %5356 = fdiv fast float 1.000000e+00, %5355
  %5357 = fmul fast float %5356, %5351
  %5358 = fmul fast float %5356, %5352
  %5359 = fmul fast float %5356, %5353
  %5360 = fadd fast float %5355, %5334
  %5361 = fdiv fast float 1.000000e+00, %5360
  %5362 = fmul float %5337, %5361
  %5363 = fmul float %5362, %5362
  %5364 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  %5365 = and i32 %5325, %5311
  %5366 = icmp eq i32 %5365, 0
  br i1 %5366, label %5389, label %5367, !dx.controlflow.hints !93

; <label>:5367                                    ; preds = %5314
  %5368 = lshr i32 %5259, 5
  %5369 = lshr i32 %5260, 5
  %5370 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %5368, i32 %5369, i32 %5323, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5371 = extractvalue %dx.types.ResRet.i32 %5370, 0
  %5372 = and i32 %5371, 3
  %5373 = icmp eq i32 %5372, 0
  %5374 = select i1 %5373, float 1.000000e+00, float 0.000000e+00
  %5375 = icmp eq i32 %5372, 3
  br i1 %5375, label %5376, label %5389

; <label>:5376                                    ; preds = %5367
  %5377 = lshr i32 %5371, 10
  %5378 = and i32 %5377, 8160
  %5379 = and i32 %5260, 31
  %5380 = or i32 %5378, %5379
  %5381 = lshr i32 %5371, 1
  %5382 = and i32 %5381, 16352
  %5383 = and i32 %5259, 31
  %5384 = or i32 %5382, %5383
  %5385 = lshr i32 %5371, 23
  %5386 = and i32 %5385, 255
  %5387 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %5384, i32 %5380, i32 %5386, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5388 = extractvalue %dx.types.ResRet.f32 %5387, 0
  br label %5389

; <label>:5389                                    ; preds = %5376, %5367, %5314
  %5390 = phi float [ %5388, %5376 ], [ %5374, %5367 ], [ 0.000000e+00, %5314 ]
  %5391 = call float @dx.op.binary.f32(i32 36, float %5390, float %5390)  ; FMin(a,b)
  %5392 = call float @dx.op.binary.f32(i32 36, float %5390, float %5391)  ; FMin(a,b)
  %5393 = fcmp fast ogt float %5392, 0.000000e+00
  br i1 %5393, label %5402, label %5394, !dx.controlflow.hints !94

; <label>:5394                                    ; preds = %5638, %5389
  %5395 = phi float [ %5316, %5389 ], [ %5678, %5638 ]
  %5396 = phi float [ %5317, %5389 ], [ %5679, %5638 ]
  %5397 = phi float [ %5318, %5389 ], [ %5680, %5638 ]
  %5398 = phi float [ %5319, %5389 ], [ %5672, %5638 ]
  %5399 = phi float [ %5320, %5389 ], [ %5673, %5638 ]
  %5400 = phi float [ %5321, %5389 ], [ %5674, %5638 ]
  %5401 = icmp eq i32 %5315, %5325
  br i1 %5401, label %5681, label %5314

; <label>:5402                                    ; preds = %5389
  %5403 = fmul fast float %5390, %5348
  %5404 = fmul fast float %5390, %5349
  %5405 = fmul fast float %5390, %5350
  %5406 = fsub fast float %5342, %3441
  %5407 = fcmp fast ogt float %5406, 0.000000e+00
  %5408 = fsub fast float %127, %3441
  %5409 = fcmp fast ogt float %5408, 0.000000e+00
  %5410 = xor i1 %5409, %5407
  %5411 = fsub fast float %3441, %5342
  %5412 = fmul fast float %5411, 2.000000e+00
  %5413 = fadd fast float %5412, %5342
  %5414 = select i1 %5410, float %5342, float %5413
  %5415 = fsub fast float %5414, %127
  %5416 = call float @dx.op.dot3.f32(i32 55, float %5351, float %5352, float %5415, float %5351, float %5352, float %5415)  ; Dot3(ax,ay,az,bx,by,bz)
  %5417 = call float @dx.op.unary.f32(i32 25, float %5416)  ; Rsqrt(value)
  %5418 = fmul fast float %5417, %5351
  %5419 = fmul fast float %5417, %5352
  %5420 = fmul fast float %5417, %5415
  %5421 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3449)  ; Dot3(ax,ay,az,bx,by,bz)
  %5422 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5418, float %5419, float %5420)  ; Dot3(ax,ay,az,bx,by,bz)
  %5423 = fdiv fast float 1.000000e+00, %5422
  %5424 = fmul fast float %5423, %5421
  %5425 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5408, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5426 = fcmp fast ogt float %5425, 0.000000e+00
  %5427 = fcmp fast olt float %5425, 0.000000e+00
  %5428 = zext i1 %5426 to i32
  %5429 = zext i1 %5427 to i32
  %5430 = sub nsw i32 %5428, %5429
  %5431 = sitofp i32 %5430 to float
  %5432 = fsub fast float %5414, %3441
  %5433 = call float @dx.op.dot3.f32(i32 55, float %5351, float %5352, float %5432, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = fcmp fast ogt float %5433, 0.000000e+00
  %5435 = fcmp fast olt float %5433, 0.000000e+00
  %5436 = zext i1 %5434 to i32
  %5437 = zext i1 %5435 to i32
  %5438 = sub nsw i32 %5436, %5437
  %5439 = sitofp i32 %5438 to float
  %5440 = fcmp fast une float %5431, %5439
  br i1 %5440, label %5441, label %5451

; <label>:5441                                    ; preds = %5402
  %5442 = fmul fast float %5424, %5420
  %5443 = fmul fast float %5424, %5419
  %5444 = fmul fast float %5424, %5418
  %5445 = fmul fast float %5444, %5444
  %5446 = fmul fast float %5443, %5443
  %5447 = fadd fast float %5445, %5446
  %5448 = fmul fast float %5442, %5442
  %5449 = fadd fast float %5447, %5448
  %5450 = call float @dx.op.unary.f32(i32 24, float %5449)  ; Sqrt(value)
  br label %5463

; <label>:5451                                    ; preds = %5402
  %5452 = icmp slt i32 %5430, 0
  br i1 %5452, label %5453, label %5463

; <label>:5453                                    ; preds = %5451
  %5454 = fsub fast float %125, %5340
  %5455 = fsub fast float %126, %5341
  %5456 = fsub fast float %127, %5414
  %5457 = fmul fast float %5454, %5454
  %5458 = fmul fast float %5455, %5455
  %5459 = fadd fast float %5457, %5458
  %5460 = fmul fast float %5456, %5456
  %5461 = fadd fast float %5459, %5460
  %5462 = call float @dx.op.unary.f32(i32 24, float %5461)  ; Sqrt(value)
  br label %5463

; <label>:5463                                    ; preds = %5453, %5451, %5441
  %5464 = phi float [ %5450, %5441 ], [ %5462, %5453 ], [ 0.000000e+00, %5451 ]
  %5465 = and i1 %5409, %5407
  %5466 = fsub fast float -0.000000e+00, %5464
  %5467 = select i1 %5465, float -0.000000e+00, float %5466
  %5468 = fmul fast float %3442, 0x3FF7154760000000
  %5469 = fmul fast float %5468, %5467
  %5470 = fmul fast float %3443, 0x3FF7154760000000
  %5471 = fmul fast float %5470, %5467
  %5472 = fmul fast float %3444, 0x3FF7154760000000
  %5473 = fmul fast float %5472, %5467
  %5474 = call float @dx.op.unary.f32(i32 21, float %5469)  ; Exp(value)
  %5475 = call float @dx.op.unary.f32(i32 21, float %5471)  ; Exp(value)
  %5476 = call float @dx.op.unary.f32(i32 21, float %5473)  ; Exp(value)
  %5477 = call float @dx.op.unary.f32(i32 7, float %5474)  ; Saturate(value)
  %5478 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5479 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5480 = fmul fast float %5403, %5477
  %5481 = fmul fast float %5404, %5478
  %5482 = fmul fast float %5405, %5479
  %5483 = fsub fast float %5357, %3641
  %5484 = fsub fast float %5358, %3640
  %5485 = fsub fast float %5359, %3639
  %5486 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5484, float %5485, float %5483, float %5484, float %5485)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = call float @dx.op.unary.f32(i32 25, float %5486)  ; Rsqrt(value)
  %5488 = fmul fast float %5487, %5483
  %5489 = fmul fast float %5487, %5484
  %5490 = fmul fast float %5487, %5485
  %5491 = call float @dx.op.dot3.f32(i32 55, float %5357, float %5358, float %5359, float %3648, float %3649, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = call float @dx.op.dot3.f32(i32 55, float %3638, float %3637, float %3636, float %5488, float %5489, float %5490)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  %5494 = fmul fast float %5493, %5364
  %5495 = fmul fast float %5493, %5493
  %5496 = fmul fast float %5495, %5017
  %5497 = call float @dx.op.unary.f32(i32 7, float %5496)  ; Saturate(value)
  %5498 = fmul fast float %5494, %5497
  %5499 = bitcast float %5354 to i32
  %5500 = ashr i32 %5499, 1
  %5501 = sub nsw i32 1597463007, %5500
  %5502 = bitcast i32 %5501 to float
  %5503 = fmul fast float %5502, %5351
  %5504 = fmul fast float %5502, %5352
  %5505 = fmul fast float %5502, %5353
  %5506 = fsub fast float %5503, %3641
  %5507 = fsub fast float %5504, %3640
  %5508 = fsub fast float %5505, %3639
  %5509 = call float @dx.op.dot3.f32(i32 55, float %5506, float %5507, float %5508, float %5506, float %5507, float %5508)  ; Dot3(ax,ay,az,bx,by,bz)
  %5510 = call float @dx.op.unary.f32(i32 25, float %5509)  ; Rsqrt(value)
  %5511 = fmul fast float %5506, %5510
  %5512 = fmul fast float %5507, %5510
  %5513 = fmul fast float %5508, %5510
  %5514 = call float @dx.op.dot3.f32(i32 55, float %3648, float %3649, float %3650, float %5511, float %5512, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5515 = fmul fast float %5514, %5514
  %5516 = call float @dx.op.unary.f32(i32 6, float %5491)  ; FAbs(value)
  %5517 = fsub fast float 1.000000e+00, %3651
  %5518 = call float @dx.op.binary.f32(i32 35, float %5517, float 0x3F847AE140000000)  ; FMax(a,b)
  %5519 = fmul fast float %5518, %5518
  %5520 = fmul fast float %5519, %5519
  %5521 = fsub fast float 1.000000e+00, %5520
  %5522 = fmul fast float %3655, %3655
  %5523 = fmul fast float %5522, %5521
  %5524 = fadd fast float %5523, %5520
  %5525 = bitcast float %5524 to i32
  %5526 = ashr i32 %5525, 1
  %5527 = add nsw i32 %5526, 532487669
  %5528 = bitcast i32 %5527 to float
  %5529 = fadd fast float %5528, %3655
  %5530 = fmul fast float %5520, %5515
  %5531 = fsub fast float 1.000000e+00, %5515
  %5532 = fadd fast float %5531, %5530
  %5533 = fmul fast float %5516, %5516
  %5534 = fmul fast float %5533, %5521
  %5535 = fadd fast float %5534, %5520
  %5536 = bitcast float %5535 to i32
  %5537 = ashr i32 %5536, 1
  %5538 = add nsw i32 %5537, 532487669
  %5539 = bitcast i32 %5538 to float
  %5540 = fadd fast float %5539, %5516
  %5541 = fmul fast float %5532, %5532
  %5542 = fmul fast float %5541, %5529
  %5543 = fmul fast float %5542, %5540
  %5544 = fdiv fast float 1.000000e+00, %5543
  %5545 = bitcast float %5520 to i32
  %5546 = sitofp i32 %5545 to float
  %5547 = fmul fast float %5546, 0x3FE7F73180000000
  %5548 = fadd fast float %5547, 0x41AFE27C40000000
  %5549 = fptosi float %5548 to i32
  %5550 = bitcast i32 %5549 to float
  %5551 = fmul fast float %5337, 0x3FD80E9D60000000
  %5552 = fmul fast float %5551, %5502
  %5553 = fadd fast float %5550, %5552
  %5554 = bitcast float %5553 to i32
  %5555 = sub nsw i32 2129859010, %5554
  %5556 = bitcast i32 %5555 to float
  %5557 = fmul fast float %5520, %5544
  %5558 = fmul fast float %5557, %5550
  %5559 = fmul fast float %5558, %5556
  %5560 = call float @dx.op.unary.f32(i32 6, float %5492)  ; FAbs(value)
  %5561 = fsub fast float 1.000000e+00, %5560
  %5562 = bitcast float %5561 to i32
  %5563 = sitofp i32 %5562 to float
  %5564 = fmul fast float %5563, 5.000000e+00
  %5565 = fadd fast float %5564, 0xC1EFBF8940000000
  %5566 = fptosi float %5565 to i32
  %5567 = bitcast i32 %5566 to float
  %5568 = fsub fast float 1.000000e+00, %3642
  %5569 = fsub fast float 1.000000e+00, %3643
  %5570 = fsub fast float 1.000000e+00, %3653
  %5571 = fmul fast float %5567, %5568
  %5572 = fmul fast float %5567, %5569
  %5573 = fmul fast float %5567, %5570
  %5574 = fadd fast float %5571, %3642
  %5575 = fadd fast float %5572, %3643
  %5576 = fadd fast float %5573, %3653
  br i1 %4932, label %5577, label %5600

; <label>:5577                                    ; preds = %5463
  %5578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3019, float %5560, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5579 = extractvalue %dx.types.ResRet.f32 %5578, 0
  %5580 = extractvalue %dx.types.ResRet.f32 %5578, 1
  %5581 = extractvalue %dx.types.ResRet.f32 %5578, 2
  %5582 = fadd fast float %5579, -5.000000e-01
  %5583 = fadd fast float %5580, -5.000000e-01
  %5584 = fadd fast float %5581, -5.000000e-01
  %5585 = fmul fast float %3642, 4.000000e+00
  %5586 = fmul fast float %5585, %5568
  %5587 = fmul fast float %5586, %5582
  %5588 = fmul fast float %3643, 4.000000e+00
  %5589 = fmul fast float %5588, %5569
  %5590 = fmul fast float %5589, %5583
  %5591 = fmul fast float %3653, 4.000000e+00
  %5592 = fmul fast float %5591, %5570
  %5593 = fmul fast float %5592, %5584
  %5594 = fadd fast float %5587, %5574
  %5595 = fadd fast float %5590, %5575
  %5596 = fadd fast float %5593, %5576
  %5597 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5598 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5599 = call float @dx.op.unary.f32(i32 7, float %5596)  ; Saturate(value)
  br label %5600

; <label>:5600                                    ; preds = %5577, %5463
  %5601 = phi float [ %5597, %5577 ], [ %5574, %5463 ]
  %5602 = phi float [ %5598, %5577 ], [ %5575, %5463 ]
  %5603 = phi float [ %5599, %5577 ], [ %5576, %5463 ]
  %5604 = fmul fast float %5491, 9.843750e-01
  %5605 = fadd fast float %5604, 7.812500e-03
  %5606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5605, float %4922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5607 = extractvalue %dx.types.ResRet.f32 %5606, 2
  %5608 = extractvalue %dx.types.ResRet.f32 %5606, 3
  %5609 = fmul fast float %5607, %3642
  %5610 = fmul fast float %5607, %3643
  %5611 = fmul fast float %5607, %3653
  %5612 = fadd fast float %5609, %5608
  %5613 = fadd fast float %5610, %5608
  %5614 = fadd fast float %5611, %5608
  br i1 %4932, label %5615, label %5638

; <label>:5615                                    ; preds = %5600
  %5616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %3019, float %5491, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5617 = extractvalue %dx.types.ResRet.f32 %5616, 0
  %5618 = extractvalue %dx.types.ResRet.f32 %5616, 1
  %5619 = extractvalue %dx.types.ResRet.f32 %5616, 2
  %5620 = fadd fast float %5617, -5.000000e-01
  %5621 = fadd fast float %5618, -5.000000e-01
  %5622 = fadd fast float %5619, -5.000000e-01
  %5623 = fmul fast float %3642, 4.000000e+00
  %5624 = fmul fast float %5623, %5568
  %5625 = fmul fast float %5624, %5620
  %5626 = fmul fast float %3643, 4.000000e+00
  %5627 = fmul fast float %5626, %5569
  %5628 = fmul fast float %5627, %5621
  %5629 = fmul fast float %3653, 4.000000e+00
  %5630 = fmul fast float %5629, %5570
  %5631 = fmul fast float %5630, %5622
  %5632 = fadd fast float %5625, %5612
  %5633 = fadd fast float %5628, %5613
  %5634 = fadd fast float %5631, %5614
  %5635 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  %5636 = call float @dx.op.unary.f32(i32 7, float %5633)  ; Saturate(value)
  %5637 = call float @dx.op.unary.f32(i32 7, float %5634)  ; Saturate(value)
  br label %5638

; <label>:5638                                    ; preds = %5615, %5600
  %5639 = phi float [ %5635, %5615 ], [ %5612, %5600 ]
  %5640 = phi float [ %5636, %5615 ], [ %5613, %5600 ]
  %5641 = phi float [ %5637, %5615 ], [ %5614, %5600 ]
  %5642 = call float @dx.op.binary.f32(i32 35, float %5640, float %5641)  ; FMax(a,b)
  %5643 = call float @dx.op.binary.f32(i32 35, float %5639, float %5642)  ; FMax(a,b)
  %5644 = fsub fast float 1.000000e+00, %5643
  %5645 = fmul fast float %5601, %5559
  %5646 = fmul fast float %5602, %5559
  %5647 = fmul fast float %5603, %5559
  %5648 = fsub fast float 1.000000e+00, %5492
  %5649 = bitcast float %5648 to i32
  %5650 = sitofp i32 %5649 to float
  %5651 = fmul fast float %5650, 5.000000e+00
  %5652 = fadd fast float %5651, 0xC1EFBF8940000000
  %5653 = fptosi float %5652 to i32
  %5654 = bitcast i32 %5653 to float
  %5655 = fmul fast float %5654, %3018
  %5656 = fmul fast float %5644, %5655
  %5657 = fmul fast float %5656, %4982
  %5658 = fmul fast float %5656, %4983
  %5659 = fmul fast float %5656, %4984
  %5660 = fadd fast float %5657, %5645
  %5661 = fadd fast float %5658, %5646
  %5662 = fadd fast float %5659, %5647
  %5663 = fmul fast float %5480, %3039
  %5664 = fmul fast float %5663, %5498
  %5665 = fmul fast float %5664, %5644
  %5666 = fmul fast float %5481, %3039
  %5667 = fmul fast float %5666, %5498
  %5668 = fmul fast float %5667, %5644
  %5669 = fmul fast float %5482, %3039
  %5670 = fmul fast float %5669, %5498
  %5671 = fmul fast float %5670, %5644
  %5672 = fadd fast float %5665, %5319
  %5673 = fadd fast float %5668, %5320
  %5674 = fadd fast float %5671, %5321
  %5675 = fmul fast float %5664, %5660
  %5676 = fmul fast float %5667, %5661
  %5677 = fmul fast float %5670, %5662
  %5678 = fadd fast float %5675, %5316
  %5679 = fadd fast float %5676, %5317
  %5680 = fadd fast float %5677, %5318
  br label %5394

; <label>:5681                                    ; preds = %5394
  br label %5682

; <label>:5682                                    ; preds = %5681, %5282
  %5683 = phi float [ %5284, %5282 ], [ %5395, %5681 ]
  %5684 = phi float [ %5285, %5282 ], [ %5396, %5681 ]
  %5685 = phi float [ %5286, %5282 ], [ %5397, %5681 ]
  %5686 = phi float [ %5287, %5282 ], [ %5398, %5681 ]
  %5687 = phi float [ %5288, %5282 ], [ %5399, %5681 ]
  %5688 = phi float [ %5289, %5282 ], [ %5400, %5681 ]
  %5689 = add i32 %5283, 1
  %5690 = icmp ugt i32 %5689, %5279
  br i1 %5690, label %5691, label %5282

; <label>:5691                                    ; preds = %5682
  br label %5692

; <label>:5692                                    ; preds = %5691, %5258, %5248
  %5693 = phi float [ %5249, %5248 ], [ %5249, %5258 ], [ %5683, %5691 ]
  %5694 = phi float [ %5250, %5248 ], [ %5250, %5258 ], [ %5684, %5691 ]
  %5695 = phi float [ %5251, %5248 ], [ %5251, %5258 ], [ %5685, %5691 ]
  %5696 = phi float [ %5252, %5248 ], [ %5252, %5258 ], [ %5686, %5691 ]
  %5697 = phi float [ %5253, %5248 ], [ %5253, %5258 ], [ %5687, %5691 ]
  %5698 = phi float [ %5254, %5248 ], [ %5254, %5258 ], [ %5688, %5691 ]
  %5699 = call float @dx.op.unary.f32(i32 24, float %3645)  ; Sqrt(value)
  %5700 = call float @dx.op.unary.f32(i32 24, float %3646)  ; Sqrt(value)
  %5701 = call float @dx.op.unary.f32(i32 24, float %3647)  ; Sqrt(value)
  %5702 = fmul fast float %5699, %5696
  %5703 = fmul fast float %5700, %5697
  %5704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5705 = extractvalue %dx.types.CBufRet.f32 %5704, 0
  br i1 %196, label %5706, label %5726

; <label>:5706                                    ; preds = %5692
  %5707 = fadd fast float %5698, %3016
  %5708 = fmul fast float %5707, %3017
  %5709 = fsub fast float 1.000000e+00, %3017
  %5710 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  %5711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5712 = extractvalue %dx.types.CBufRet.f32 %5711, 3
  %5713 = fmul fast float %5712, %5710
  %5714 = fadd fast float %5713, %5708
  %5715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5716 = extractvalue %dx.types.CBufRet.f32 %5715, 0
  %5717 = fmul fast float %5716, %4988
  %5718 = fsub fast float %5714, %5717
  %5719 = fadd fast float %5703, %5702
  %5720 = fmul fast float %5705, %5719
  %5721 = extractvalue %dx.types.CBufRet.f32 %5711, 1
  %5722 = fsub fast float %5718, %5721
  %5723 = extractvalue %dx.types.CBufRet.f32 %5711, 2
  %5724 = fmul fast float %5722, %5723
  %5725 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  br label %5742

; <label>:5726                                    ; preds = %5692
  %5727 = fmul fast float %5701, %5698
  %5728 = fmul fast float %5705, %5702
  %5729 = fmul fast float %5705, %5703
  %5730 = fmul fast float %5727, %5705
  %5731 = add i32 %44, 276
  %5732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5731, i32 undef)  ; BufferLoad(srv,index,wot)
  %5733 = extractvalue %dx.types.ResRet.i32 %5732, 0
  %5734 = and i32 %5733, 32
  %5735 = icmp eq i32 %5734, 0
  br i1 %5735, label %5742, label %5736

; <label>:5736                                    ; preds = %5726
  %5737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5738 = extractvalue %dx.types.CBufRet.f32 %5737, 0
  %5739 = fmul fast float %5738, 0x3FE99999A0000000
  %5740 = fadd fast float %5738, %5728
  %5741 = fadd fast float %5739, %5730
  br label %5742

; <label>:5742                                    ; preds = %5736, %5726, %5706
  %5743 = phi float [ %5720, %5706 ], [ %5740, %5736 ], [ %5728, %5726 ]
  %5744 = phi float [ %5725, %5706 ], [ %5729, %5736 ], [ %5729, %5726 ]
  %5745 = phi float [ 1.000000e+00, %5706 ], [ %5741, %5736 ], [ %5730, %5726 ]
  %5746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5747 = extractvalue %dx.types.CBufRet.f32 %5746, 0
  %5748 = fmul fast float %5747, %5694
  %5749 = fmul fast float %5747, %5695
  %5750 = fadd fast float %5694, %5693
  %5751 = select i1 %196, float %5750, float %5693
  %5752 = fmul float %5751, %5747
  %5753 = select i1 %196, float 0.000000e+00, float %5748
  %5754 = select i1 %196, float 0.000000e+00, float %5749
  %5755 = fmul fast float %5743, %5699
  %5756 = fmul fast float %5744, %5700
  %5757 = fmul fast float %5745, %5701
  %5758 = fadd fast float %5752, %5755
  %5759 = fadd fast float %5753, %5756
  %5760 = fadd fast float %5754, %5757
  %5761 = select i1 %196, float %5744, float %5759
  %5762 = select i1 %196, float %5745, float %5760
  %5763 = call float @dx.op.binary.f32(i32 36, float %5758, float 3.225500e+04)  ; FMin(a,b)
  %5764 = call float @dx.op.binary.f32(i32 36, float %5761, float 3.225500e+04)  ; FMin(a,b)
  %5765 = call float @dx.op.binary.f32(i32 36, float %5762, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5763)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5764)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5765)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

