;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   x   
; TEXCOORDS                0   xy          2     NONE   float   xy  
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           6     NONE    uint   x   
; TRANSIENT_INDEX          0    y          6     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 17db68901edf0a8011db75744890518e
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
; SV_Target                1                              
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
;   [128 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   sampler      NA          NA      S5             s4     1
;                                   sampler      NA          NA      S6             s5     1
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
;                                   texture     f32          2d     T18     t69,space2     1
;                                   texture    byte         r/o     T19     t49,space1     1
;                                   texture    byte         r/o     T20     t50,space1     1
;                                   texture    byte         r/o     T21     t51,space1     1
;                                   texture    byte         r/o     T22     t52,space1     1
;                                   texture     f32          2d     T23     t37,space2     1
;                                   texture     f32          2d     T24             t0     1
;                                   texture     f32          2d     T25     t58,space2     1
;                                   texture     f32          2d     T26     t59,space2     1
;                                   texture     f32          2d     T27     t60,space2     1
;                                   texture    byte         r/o     T28     t45,space1     1
;                                   texture    byte         r/o     T29     t46,space1     1
;                                   texture    byte         r/o     T30     t47,space1     1
;                                   texture    byte         r/o     T31     t48,space1     1
;                                   texture     f32          2d     T32     t57,space2     1
;                                   texture    byte         r/o     T33     t69,space1     1
;                                   texture     u32          2d     T34     t56,space2     1
;                                   texture     f32          2d     T35     t34,space2     1
;                                   texture    byte         r/o     T36     t10,space1     1
;                                   texture    byte         r/o     T37      t1,space1     1
;                                   texture     f32          1d     T38     t32,space2     1
;                                   texture     f32     2darray     T39      t8,space2     1
;                                   texture     f32          2d     T40      t2,space2     1
;                                   texture     f32          2d     T41      t3,space2     1
;                                   texture     f32          2d     T42      t4,space2     1
;                                   textureunorm_f32     2darray     T43     t80,space2     1
;                                   texture    byte         r/o     T44     t67,space1     1
;                                   texture     f32          2d     T45      t7,space2     1
;                                   texture     f32          2d     T46      t6,space2     1
;                                   texture     f32          2d     T47      t5,space2     1
;                                   texture     f32          2d     T48     t38,space2     1
;                                   texture    byte         r/o     T49     t12,space1     1
;                                   texture    byte         r/o     T50     t13,space1     1
;                                   texture     f32          1d     T51     t30,space2     1
;                                   texture     f32          3d     T52     t44,space2     1
;                                   texture     f32          3d     T53     t45,space2     1
;                                   texture     f32     2darray     T54     t47,space2     1
;                                   textureunorm_f32     2darray     T55     t85,space2     1
;                                   texture     f32          2d     T56     t83,space2     1
;                                   texture     f32          2d     T57     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 26, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 8, 9, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 8, 9, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 8, 9, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
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
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 57, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 56, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 55, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = alloca [4 x i32], align 4
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = alloca [12 x float], align 4
  %84 = alloca [12 x float], align 4
  %85 = alloca [3 x float], align 4
  %86 = alloca [3 x float], align 4
  %87 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %88 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = fmul fast float %90, %79
  %92 = fmul fast float %90, %80
  %93 = fmul fast float %71, %68
  %94 = fmul fast float %72, %67
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %72, %66
  %97 = fmul fast float %70, %68
  %98 = fsub fast float %96, %97
  %99 = fmul fast float %70, %67
  %100 = fmul fast float %71, %66
  %101 = fsub fast float %99, %100
  %102 = fmul fast float %95, %69
  %103 = fmul fast float %98, %69
  %104 = fmul fast float %101, %69
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 3
  %108 = fmul fast float %106, 2.000000e+00
  %109 = fmul fast float %108, %91
  %110 = fmul fast float %107, 2.000000e+00
  %111 = fmul fast float %110, %92
  %112 = fsub fast float 1.000000e+00, %109
  %113 = fsub fast float 1.000000e+00, %111
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %118 = fmul fast float %112, %115
  %119 = fmul fast float %112, %116
  %120 = fmul fast float %112, %117
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fmul fast float %113, %122
  %126 = fmul fast float %113, %123
  %127 = fmul fast float %113, %124
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fadd fast float %125, %129
  %133 = fadd fast float %132, %118
  %134 = fadd fast float %126, %130
  %135 = fadd fast float %134, %119
  %136 = fadd fast float %127, %131
  %137 = fadd fast float %136, %120
  %138 = fmul fast float %133, %82
  %139 = fmul fast float %135, %82
  %140 = fmul fast float %137, %82
  %141 = fadd fast float %75, 5.000000e-01
  %142 = fptoui float %141 to i32
  %143 = shl i32 %142, 3
  %144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %143, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.i32 %144, 0
  %146 = or i32 %143, 4
  %147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %146, i32 undef)  ; BufferLoad(srv,index,wot)
  %148 = extractvalue %dx.types.ResRet.i32 %147, 0
  %149 = and i32 %145, 8191
  %150 = lshr i32 %145, 13
  %151 = and i32 %150, 8191
  %152 = lshr i32 %145, 26
  %153 = and i32 %148, 65535
  %154 = lshr i32 %148, 16
  %155 = uitofp i32 %153 to float
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %158 = uitofp i32 %154 to float
  %159 = uitofp i32 %149 to float
  %160 = fmul fast float %157, %159
  %161 = uitofp i32 %151 to float
  %162 = fmul fast float %157, %161
  %163 = fmul fast float %157, %73
  %164 = fmul fast float %163, %155
  %165 = fmul fast float %157, %74
  %166 = fmul fast float %165, %158
  %167 = fadd fast float %164, %160
  %168 = fadd fast float %162, %166
  %169 = uitofp i32 %152 to float
  %170 = fmul fast float %91, 5.000000e-01
  %171 = fmul fast float %92, 5.000000e-01
  %172 = fptosi float %170 to i32
  %173 = fptosi float %171 to i32
  %174 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %172, i32 %173, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = lshr i32 %175, 18
  %177 = uitofp i32 %176 to float
  %178 = fmul fast float %177, 0x3F4C00EBA0000000
  %179 = call float @dx.op.unary.f32(i32 21, float %178)  ; Exp(value)
  %180 = fadd fast float %179, -1.000000e+00
  %181 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %182 = extractvalue %dx.types.Dimensions %181, 0
  %183 = sitofp i32 %182 to float
  %184 = extractvalue %dx.types.Dimensions %181, 1
  %185 = sitofp i32 %184 to float
  %186 = fcmp fast oge float %170, %183
  %187 = fcmp fast oge float %171, %185
  %188 = or i1 %186, %187
  %189 = select i1 %188, float 0x4197782600000000, float %180
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %193 = fmul fast float %191, %91
  %194 = fmul fast float %192, %92
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = and i32 %196, 114688
  %198 = icmp ne i32 %197, 0
  %199 = select i1 %198, float %193, float 0.000000e+00
  %200 = select i1 %198, float %194, float 0.000000e+00
  %201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %59, float %199, float %200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = fmul fast float %202, 2.550000e+02
  %204 = fptoui float %203 to i32
  %205 = select i1 %198, i32 %204, i32 0
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.i32 %207, 3
  %209 = and i32 %208, 3
  %210 = icmp ne i32 %209, 0
  %211 = and i32 %208, 4
  %212 = icmp ne i32 %211, 0
  %213 = and i1 %210, %212
  br i1 %213, label %214, label %225

; <label>:214                                     ; preds = %0
  %215 = extractvalue %dx.types.CBufRet.f32 %206, 3
  %216 = fmul fast float %215, %92
  %217 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %218 = fmul fast float %217, %91
  %219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %58, float %218, float %216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = fsub fast float 1.000000e+00, %220
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 0
  %224 = fcmp fast olt float %221, %223
  br label %228

; <label>:225                                     ; preds = %0
  %226 = icmp eq i32 %211, 0
  %227 = and i1 %210, %226
  br label %228

; <label>:228                                     ; preds = %225, %214
  %229 = phi i1 [ %224, %214 ], [ %227, %225 ]
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %232 = fmul fast float %231, 0x3FE3C6EF40000000
  %233 = frem fast float %91, 2.560000e+02
  %234 = frem fast float %92, 2.560000e+02
  %235 = fptoui float %233 to i32
  %236 = fptoui float %234 to i32
  %237 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %235, i32 %236, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fadd fast float %238, %232
  %240 = call float @dx.op.unary.f32(i32 22, float %239)  ; Frc(value)
  %241 = add i32 %65, 60
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = shl i32 %243, 4
  %245 = and i32 %244, 32752
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %243, 7
  %248 = and i32 %247, 32752
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %243, 22
  %251 = shl nuw nsw i32 %250, 5
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = add i32 %65, 72
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 255
  %257 = uitofp i32 %256 to float
  %258 = fmul fast float %257, 0x3F70101020000000
  %259 = lshr i32 %255, 8
  %260 = and i32 %259, 255
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, 0x3F70101020000000
  %263 = lshr i32 %255, 16
  %264 = and i32 %263, 255
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F70101020000000
  %267 = add i32 %65, 36
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 65535
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = lshr i32 %269, 16
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = add i32 %65, 96
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 65535
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %276, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = fmul fast float %278, 0x3F50624DE0000000
  %282 = fmul fast float %280, 0x3F50624DE0000000
  %283 = add i32 %65, 108
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 2
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %297, label %288

; <label>:288                                     ; preds = %228
  %289 = add i32 %65, 152
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = add i32 %291, 0
  %293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %294 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %293, %dx.types.Handle %88, float %76, float %77, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 3
  %296 = fmul fast float %295, %78
  br label %297

; <label>:297                                     ; preds = %288, %228
  %298 = phi float [ %78, %228 ], [ %296, %288 ]
  %299 = add i32 %65, 24
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = add i32 %65, 28
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = or i32 %304, %301
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %1059, label %307

; <label>:307                                     ; preds = %297
  %308 = add i32 %65, 92
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = lshr i32 %310, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = fmul fast float %312, 0x3F50624DE0000000
  %314 = add i32 %65, 40
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = lshr i32 %316, 16
  %318 = and i32 %317, 255
  %319 = lshr i32 %316, 24
  %320 = add i32 %65, 100
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = add i32 %65, 32
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = lshr i32 %329, 22
  %331 = shl nuw nsw i32 %330, 5
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = shl i32 %329, 4
  %334 = and i32 %333, 32752
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %329, 7
  %337 = and i32 %336, 32752
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 3
  %341 = fmul fast float %340, 1.000000e+03
  %342 = fmul fast float %281, %341
  %343 = call float @dx.op.unary.f32(i32 22, float %342)  ; Frc(value)
  %344 = fadd fast float %343, %271
  %345 = fmul fast float %282, %341
  %346 = call float @dx.op.unary.f32(i32 22, float %345)  ; Frc(value)
  %347 = fadd fast float %346, %273
  %348 = fmul fast float %313, %341
  %349 = call float @dx.op.unary.f32(i32 22, float %348)  ; Frc(value)
  %350 = fmul fast float %349, 0x401921FB60000000
  %351 = fadd fast float %350, %332
  %352 = call float @dx.op.unary.f32(i32 13, float %351)  ; Sin(value)
  %353 = call float @dx.op.unary.f32(i32 12, float %351)  ; Cos(value)
  %354 = fsub fast float -0.000000e+00, %352
  %355 = fadd fast float %76, -5.000000e-01
  %356 = fadd fast float %77, -5.000000e-01
  %357 = fmul fast float %324, %355
  %358 = fmul fast float %326, %356
  %359 = fadd fast float %357, 5.000000e-01
  %360 = fadd fast float %358, 5.000000e-01
  %361 = fmul fast float %335, %359
  %362 = fmul fast float %338, %360
  %363 = fmul fast float %353, %361
  %364 = call float @dx.op.tertiary.f32(i32 46, float %354, float %362, float %363)  ; FMad(a,b,c)
  %365 = fmul fast float %352, %361
  %366 = call float @dx.op.tertiary.f32(i32 46, float %353, float %362, float %365)  ; FMad(a,b,c)
  %367 = fadd fast float %344, %364
  %368 = fadd fast float %347, %366
  %369 = icmp ugt i32 %318, 1
  %370 = icmp ugt i32 %316, 33554431
  %371 = or i1 %370, %369
  br i1 %371, label %372, label %397

; <label>:372                                     ; preds = %307
  %373 = add i32 %65, 84
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = lshr i32 %375, 16
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = fmul fast float %340, %377
  %379 = call float @dx.op.unary.f32(i32 22, float %378)  ; Frc(value)
  %380 = mul nuw nsw i32 %318, %319
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %379, %381
  %383 = call float @dx.op.unary.f32(i32 27, float %382)  ; Round_ni(value)
  %384 = fptoui float %383 to i32
  %385 = urem i32 %384, %318
  %386 = udiv i32 %384, %319
  %387 = call float @dx.op.unary.f32(i32 22, float %367)  ; Frc(value)
  %388 = call float @dx.op.unary.f32(i32 22, float %368)  ; Frc(value)
  %389 = uitofp i32 %385 to float
  %390 = uitofp i32 %386 to float
  %391 = fadd fast float %387, %389
  %392 = fadd fast float %388, %390
  %393 = uitofp i32 %318 to float
  %394 = uitofp i32 %319 to float
  %395 = fdiv fast float %391, %393
  %396 = fdiv fast float %392, %394
  br label %397

; <label>:397                                     ; preds = %372, %307
  %398 = phi float [ %395, %372 ], [ %367, %307 ]
  %399 = phi float [ %396, %372 ], [ %368, %307 ]
  %400 = and i32 %301, 16777216
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %511, label %402

; <label>:402                                     ; preds = %397
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 0
  %405 = extractvalue %dx.types.CBufRet.f32 %403, 1
  %406 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %407 = fadd fast float %404, %138
  %408 = fadd fast float %405, %139
  %409 = fadd fast float %406, %140
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 0
  %412 = call float @dx.op.unary.f32(i32 7, float %411)  ; Saturate(value)
  %413 = icmp eq i32 %64, 65535
  br i1 %413, label %508, label %414

; <label>:414                                     ; preds = %402
  %415 = lshr i32 %64, 1
  %416 = shl i32 %415, 2
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %64, 1
  %420 = icmp ne i32 %419, 0
  %421 = lshr i32 %418, 16
  %422 = and i32 %418, 65535
  %423 = select i1 %420, i32 %421, i32 %422
  %424 = icmp eq i32 %423, 65535
  br i1 %424, label %504, label %425

; <label>:425                                     ; preds = %414
  %426 = mul nuw nsw i32 %423, 40
  %427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = extractvalue %dx.types.ResRet.f32 %427, 1
  %430 = extractvalue %dx.types.ResRet.f32 %427, 2
  %431 = add nuw nsw i32 %426, 12
  %432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = extractvalue %dx.types.ResRet.f32 %432, 2
  %436 = add nuw nsw i32 %426, 24
  %437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = extractvalue %dx.types.ResRet.f32 %437, 1
  %440 = extractvalue %dx.types.ResRet.f32 %437, 2
  %441 = add nuw nsw i32 %426, 36
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = fsub fast float %407, %428
  %445 = fsub fast float %408, %429
  %446 = fsub fast float %409, %430
  %447 = fmul fast float %443, %444
  %448 = fmul fast float %443, %445
  %449 = fmul fast float %443, %446
  %450 = call float @dx.op.unary.f32(i32 27, float %447)  ; Round_ni(value)
  %451 = call float @dx.op.unary.f32(i32 27, float %448)  ; Round_ni(value)
  %452 = call float @dx.op.unary.f32(i32 27, float %449)  ; Round_ni(value)
  %453 = fadd fast float %450, 5.000000e-01
  %454 = fadd fast float %451, 5.000000e-01
  %455 = fadd fast float %452, 5.000000e-01
  %456 = fmul fast float %453, %433
  %457 = fmul fast float %454, %434
  %458 = fmul fast float %455, %435
  %459 = shl i32 %64, 2
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = add i32 %461, 0
  %463 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %462, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %464 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %465 = call float @dx.op.unary.f32(i32 22, float %457)  ; Frc(value)
  %466 = call float @dx.op.unary.f32(i32 22, float %458)  ; Frc(value)
  %467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %463, %dx.types.Handle %59, float %464, float %465, float %466, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = fmul fast float %468, 1.023000e+03
  %472 = fmul fast float %469, 1.023000e+03
  %473 = fmul fast float %470, 1.023000e+03
  %474 = fadd fast float %471, 5.000000e-01
  %475 = fadd fast float %472, 5.000000e-01
  %476 = fadd fast float %473, 5.000000e-01
  %477 = call float @dx.op.unary.f32(i32 27, float %474)  ; Round_ni(value)
  %478 = call float @dx.op.unary.f32(i32 27, float %475)  ; Round_ni(value)
  %479 = call float @dx.op.unary.f32(i32 27, float %476)  ; Round_ni(value)
  %480 = fsub fast float %447, %450
  %481 = fsub fast float %448, %451
  %482 = fsub fast float %449, %452
  %483 = fmul fast float %480, 7.500000e-01
  %484 = fmul fast float %481, 7.500000e-01
  %485 = fmul fast float %482, 7.500000e-01
  %486 = fadd fast float %450, 1.250000e-01
  %487 = fadd fast float %486, %483
  %488 = fadd fast float %487, %477
  %489 = fadd fast float %451, 1.250000e-01
  %490 = fadd fast float %489, %484
  %491 = fadd fast float %490, %478
  %492 = fadd fast float %452, 1.250000e-01
  %493 = fadd fast float %492, %485
  %494 = fadd fast float %493, %479
  %495 = fmul fast float %488, %438
  %496 = fmul fast float %491, %439
  %497 = fmul fast float %494, %440
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = add i32 %499, 0
  %501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %500, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %501, %dx.types.Handle %57, float %495, float %496, float %497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  br label %504

; <label>:504                                     ; preds = %425, %414
  %505 = phi float [ %503, %425 ], [ -1.000000e+00, %414 ]
  %506 = fadd fast float %505, %412
  %507 = call float @dx.op.unary.f32(i32 7, float %506)  ; Saturate(value)
  br label %508

; <label>:508                                     ; preds = %504, %402
  %509 = phi float [ %507, %504 ], [ %412, %402 ]
  %510 = fmul fast float %509, %298
  br label %511

; <label>:511                                     ; preds = %508, %397
  %512 = phi float [ %510, %508 ], [ %298, %397 ]
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = and i32 %514, 256
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %563, label %517

; <label>:517                                     ; preds = %511
  %518 = add i32 %65, 136
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = add i32 %520, 0
  %522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %522, %dx.types.Handle %88, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %524 = extractvalue %dx.types.ResRet.f32 %523, 0
  %525 = add i32 %65, 52
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = shl i32 %527, 4
  %529 = and i32 %528, 32752
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = lshr i32 %527, 7
  %532 = and i32 %531, 32752
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = fsub fast float 1.000000e+00, %512
  %535 = call float @dx.op.binary.f32(i32 35, float %534, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %536 = bitcast float %512 to i32
  %537 = sitofp i32 %536 to float
  %538 = fadd fast float %537, 0xC1CFBF8940000000
  %539 = fmul fast float %533, %538
  %540 = fadd fast float %539, 0x41CFBF8940000000
  %541 = fptosi float %540 to i32
  %542 = bitcast i32 %541 to float
  %543 = bitcast float %535 to i32
  %544 = sitofp i32 %543 to float
  %545 = fadd fast float %544, 0xC1CFBF8940000000
  %546 = fmul fast float %545, %533
  %547 = fadd fast float %546, 0x41CFBF8940000000
  %548 = fptosi float %547 to i32
  %549 = bitcast i32 %548 to float
  %550 = fmul fast float %542, %530
  %551 = fmul fast float %549, %530
  %552 = fsub fast float %535, %550
  %553 = fadd fast float %551, %535
  %554 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %555 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  %556 = fsub fast float %524, %554
  %557 = fsub fast float %555, %554
  %558 = bitcast float %557 to i32
  %559 = sub nsw i32 2129859010, %558
  %560 = bitcast i32 %559 to float
  %561 = fmul fast float %560, %556
  %562 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  br label %563

; <label>:563                                     ; preds = %517, %511
  %564 = phi float [ %562, %517 ], [ %512, %511 ]
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = and i32 %566, 128
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %585, label %569

; <label>:569                                     ; preds = %563
  %570 = add i32 %65, 132
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = add i32 %572, 0
  %574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %574, %dx.types.Handle %88, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = and i32 %578, 524288
  %580 = icmp ne i32 %579, 0
  %581 = fcmp fast ogt float %576, 0x3FE0101020000000
  %582 = select i1 %581, float 1.000000e+00, float 0.000000e+00
  %583 = select i1 %580, float %582, float %576
  %584 = fmul fast float %583, %564
  br label %585

; <label>:585                                     ; preds = %569, %563
  %586 = phi float [ %584, %569 ], [ %564, %563 ]
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 16
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %789, label %591

; <label>:591                                     ; preds = %585
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = add i32 %65, 120
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = add i32 %596, 0
  %598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %597, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %599 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %598, %dx.types.Handle %87, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = extractvalue %dx.types.ResRet.f32 %599, 2
  %603 = extractvalue %dx.types.ResRet.f32 %599, 3
  %604 = and i32 %593, 255
  %605 = uitofp i32 %604 to float
  %606 = lshr i32 %593, 8
  %607 = and i32 %606, 255
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %603, %605
  %610 = fadd fast float %609, %608
  %611 = fmul fast float %610, 0x3F70101000000000
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = and i32 %613, 512
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %624, label %616

; <label>:616                                     ; preds = %591
  %617 = add i32 %65, 140
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = add i32 %619, 0
  %621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %620, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %622 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %621, %dx.types.Handle %88, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  br label %624

; <label>:624                                     ; preds = %616, %591
  %625 = phi float [ %623, %616 ], [ 1.000000e+00, %591 ]
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = and i32 %627, 33554432
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %736, label %630

; <label>:630                                     ; preds = %624
  %631 = add i32 %65, 80
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = and i32 %633, 65535
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = lshr i32 %633, 16
  %637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %636)  ; LegacyF16ToF32(value)
  %638 = add i32 %65, 84
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = and i32 %640, 65535
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = lshr i32 %644, 24
  %646 = uitofp i32 %645 to float
  %647 = fmul fast float %646, 0x3F70101020000000
  %648 = and i32 %644, 255
  %649 = uitofp i32 %648 to float
  %650 = fmul fast float %649, 0x3F70101020000000
  %651 = lshr i32 %644, 8
  %652 = and i32 %651, 255
  %653 = uitofp i32 %652 to float
  %654 = fmul fast float %653, 0x3F70101020000000
  %655 = lshr i32 %644, 16
  %656 = and i32 %655, 255
  %657 = uitofp i32 %656 to float
  %658 = fmul fast float %657, 0x3F70101020000000
  %659 = add i32 %65, 76
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = lshr i32 %661, 24
  %663 = uitofp i32 %662 to float
  %664 = fmul fast float %663, 0x3F70101020000000
  %665 = and i32 %661, 255
  %666 = uitofp i32 %665 to float
  %667 = fmul fast float %666, 0x3F70101020000000
  %668 = lshr i32 %661, 8
  %669 = and i32 %668, 255
  %670 = uitofp i32 %669 to float
  %671 = fmul fast float %670, 0x3F70101020000000
  %672 = lshr i32 %661, 16
  %673 = and i32 %672, 255
  %674 = uitofp i32 %673 to float
  %675 = fmul fast float %674, 0x3F70101020000000
  %676 = bitcast float %600 to i32
  %677 = ashr i32 %676, 1
  %678 = sub nsw i32 1597463174, %677
  %679 = bitcast i32 %678 to float
  %680 = fmul fast float %600, 5.000000e-01
  %681 = fmul fast float %679, %679
  %682 = fmul fast float %681, %680
  %683 = fsub fast float 1.500000e+00, %682
  %684 = fmul fast float %679, %600
  %685 = fmul fast float %684, %683
  %686 = bitcast float %601 to i32
  %687 = ashr i32 %686, 1
  %688 = sub nsw i32 1597463174, %687
  %689 = bitcast i32 %688 to float
  %690 = fmul fast float %601, 5.000000e-01
  %691 = fmul fast float %689, %689
  %692 = fmul fast float %691, %690
  %693 = fsub fast float 1.500000e+00, %692
  %694 = fmul fast float %689, %601
  %695 = fmul fast float %694, %693
  %696 = bitcast float %602 to i32
  %697 = ashr i32 %696, 1
  %698 = sub nsw i32 1597463174, %697
  %699 = bitcast i32 %698 to float
  %700 = fmul fast float %602, 5.000000e-01
  %701 = fmul fast float %699, %699
  %702 = fmul fast float %701, %700
  %703 = fsub fast float 1.500000e+00, %702
  %704 = fmul fast float %699, %602
  %705 = fmul fast float %704, %703
  %706 = fsub fast float %685, %667
  %707 = fsub fast float %695, %671
  %708 = fsub fast float %705, %675
  %709 = fmul fast float %706, %635
  %710 = fmul fast float %707, %637
  %711 = fmul fast float %708, %642
  %712 = fadd fast float %709, %650
  %713 = fadd fast float %710, %654
  %714 = fadd fast float %711, %658
  %715 = call float @dx.op.unary.f32(i32 7, float %712)  ; Saturate(value)
  %716 = call float @dx.op.unary.f32(i32 7, float %713)  ; Saturate(value)
  %717 = call float @dx.op.unary.f32(i32 7, float %714)  ; Saturate(value)
  %718 = fmul fast float %715, %715
  %719 = fmul fast float %716, %716
  %720 = fmul fast float %717, %717
  %721 = fsub fast float %718, %600
  %722 = fsub fast float %719, %601
  %723 = fsub fast float %720, %602
  %724 = fmul fast float %721, %625
  %725 = fmul fast float %722, %625
  %726 = fmul fast float %723, %625
  %727 = fadd fast float %724, %600
  %728 = fadd fast float %725, %601
  %729 = fadd fast float %726, %602
  %730 = fadd fast float %647, %611
  %731 = fsub fast float %730, %664
  %732 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  %733 = fsub fast float %732, %611
  %734 = fmul fast float %733, %625
  %735 = fadd fast float %734, %611
  br label %789

; <label>:736                                     ; preds = %624
  %737 = and i32 %627, 134217728
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %773, label %739

; <label>:739                                     ; preds = %736
  %740 = call float @dx.op.unary.f32(i32 24, float %258)  ; Sqrt(value)
  %741 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %742 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %743 = fadd fast float %740, -5.000000e-01
  %744 = fadd fast float %741, -5.000000e-01
  %745 = fadd fast float %742, -5.000000e-01
  %746 = fmul fast float %743, %625
  %747 = fmul fast float %744, %625
  %748 = fmul fast float %745, %625
  %749 = fadd fast float %746, 5.000000e-01
  %750 = fadd fast float %747, 5.000000e-01
  %751 = fadd fast float %748, 5.000000e-01
  %752 = call float @dx.op.unary.f32(i32 24, float %600)  ; Sqrt(value)
  %753 = call float @dx.op.unary.f32(i32 24, float %601)  ; Sqrt(value)
  %754 = call float @dx.op.unary.f32(i32 24, float %602)  ; Sqrt(value)
  %755 = fmul fast float %749, 2.000000e+00
  %756 = fsub fast float 1.000000e+00, %755
  %757 = fmul fast float %756, %752
  %758 = fadd fast float %757, %755
  %759 = fmul fast float %758, %752
  %760 = fmul fast float %750, 2.000000e+00
  %761 = fsub fast float 1.000000e+00, %760
  %762 = fmul fast float %761, %753
  %763 = fadd fast float %762, %760
  %764 = fmul fast float %763, %753
  %765 = fmul fast float %751, 2.000000e+00
  %766 = fsub fast float 1.000000e+00, %765
  %767 = fmul fast float %766, %754
  %768 = fadd fast float %767, %765
  %769 = fmul fast float %768, %754
  %770 = fmul fast float %759, %759
  %771 = fmul fast float %764, %764
  %772 = fmul fast float %769, %769
  br label %789

; <label>:773                                     ; preds = %736
  %774 = fmul fast float %258, %258
  %775 = fmul fast float %262, %262
  %776 = fmul fast float %266, %266
  %777 = fadd fast float %774, -1.000000e+00
  %778 = fadd fast float %775, -1.000000e+00
  %779 = fadd fast float %776, -1.000000e+00
  %780 = fmul fast float %625, %777
  %781 = fmul fast float %625, %778
  %782 = fmul fast float %625, %779
  %783 = fadd fast float %780, 1.000000e+00
  %784 = fadd fast float %781, 1.000000e+00
  %785 = fadd fast float %782, 1.000000e+00
  %786 = fmul fast float %783, %600
  %787 = fmul fast float %784, %601
  %788 = fmul fast float %785, %602
  br label %789

; <label>:789                                     ; preds = %773, %739, %630, %585
  %790 = phi float [ %735, %630 ], [ %611, %739 ], [ %611, %773 ], [ 0x3FA23C0BE0000000, %585 ]
  %791 = phi float [ %727, %630 ], [ %770, %739 ], [ %786, %773 ], [ 1.000000e+00, %585 ]
  %792 = phi float [ %728, %630 ], [ %771, %739 ], [ %787, %773 ], [ 1.000000e+00, %585 ]
  %793 = phi float [ %729, %630 ], [ %772, %739 ], [ %788, %773 ], [ 1.000000e+00, %585 ]
  %794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.i32 %794, 1
  %796 = and i32 %795, 1
  %797 = icmp ne i32 %796, 0
  %798 = add i32 %65, 116
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = and i32 %800, 32
  %802 = icmp ne i32 %801, 0
  %803 = and i1 %797, %802
  %804 = select i1 %803, float 1.000000e+00, float %791
  %805 = select i1 %803, float 0x3FD3333340000000, float %792
  %806 = select i1 %803, float 0x3FD3333340000000, float %793
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 32
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %883, label %811

; <label>:811                                     ; preds = %789
  %812 = add i32 %65, 44
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = add i32 %65, 124
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = add i32 %817, 0
  %819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %818, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %820 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %819, %dx.types.Handle %87, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = extractvalue %dx.types.ResRet.f32 %820, 1
  %823 = extractvalue %dx.types.ResRet.f32 %820, 2
  %824 = extractvalue %dx.types.ResRet.f32 %820, 3
  %825 = and i32 %814, 255
  %826 = uitofp i32 %825 to float
  %827 = lshr i32 %814, 8
  %828 = and i32 %827, 255
  %829 = uitofp i32 %828 to float
  %830 = lshr i32 %814, 16
  %831 = and i32 %830, 255
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F70101000000000
  %834 = fmul fast float %821, %826
  %835 = fadd fast float %834, %829
  %836 = fmul fast float %835, 0x3F70101000000000
  %837 = fadd fast float %822, -5.000000e-01
  %838 = fadd fast float %824, -5.000000e-01
  %839 = fmul fast float %837, %833
  %840 = fmul fast float %838, %833
  %841 = fadd fast float %839, 5.000000e-01
  %842 = fadd fast float %840, 5.000000e-01
  %843 = fmul fast float %841, 2.000000e+00
  %844 = fadd fast float %843, -1.000000e+00
  %845 = fmul fast float %842, 2.000000e+00
  %846 = fadd fast float %845, -1.000000e+00
  %847 = fadd fast float %844, %846
  %848 = fmul fast float %847, 5.000000e-01
  %849 = fsub fast float %844, %846
  %850 = fmul fast float %849, 5.000000e-01
  %851 = call float @dx.op.unary.f32(i32 6, float %848)  ; FAbs(value)
  %852 = fsub fast float 1.000000e+00, %851
  %853 = call float @dx.op.unary.f32(i32 6, float %850)  ; FAbs(value)
  %854 = fsub fast float %852, %853
  %855 = call float @dx.op.dot3.f32(i32 55, float %848, float %850, float %854, float %848, float %850, float %854)  ; Dot3(ax,ay,az,bx,by,bz)
  %856 = call float @dx.op.unary.f32(i32 25, float %855)  ; Rsqrt(value)
  %857 = fmul fast float %848, %856
  %858 = fmul fast float %850, %856
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = and i32 %860, 67108864
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %879, label %863

; <label>:863                                     ; preds = %811
  %864 = add i32 %65, 88
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %864, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = and i32 %866, 65535
  %868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %867)  ; LegacyF16ToF32(value)
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 65535
  %872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %871)  ; LegacyF16ToF32(value)
  %873 = lshr i32 %866, 16
  %874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %873)  ; LegacyF16ToF32(value)
  %875 = fsub fast float %836, %874
  %876 = fmul fast float %875, %868
  %877 = fadd fast float %876, %872
  %878 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  br label %879

; <label>:879                                     ; preds = %863, %811
  %880 = phi float [ %878, %863 ], [ %836, %811 ]
  %881 = call float @dx.op.dot2.f32(i32 54, float %857, float %858, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %882 = call float @dx.op.dot2.f32(i32 54, float %857, float %858, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %883

; <label>:883                                     ; preds = %879, %789
  %884 = phi float [ %880, %879 ], [ 0x3FD6666660000000, %789 ]
  %885 = phi float [ %881, %879 ], [ 0.000000e+00, %789 ]
  %886 = phi float [ %882, %879 ], [ 0.000000e+00, %789 ]
  %887 = phi float [ %823, %879 ], [ 1.000000e+00, %789 ]
  %888 = add i32 %65, 64
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = lshr i32 %890, 22
  %892 = shl nuw nsw i32 %891, 5
  %893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %892)  ; LegacyF16ToF32(value)
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = and i32 %895, 64
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %931, label %898

; <label>:898                                     ; preds = %883
  %899 = add i32 %65, 128
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = add i32 %901, 0
  %903 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %902, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 131072
  %907 = icmp eq i32 %906, 0
  %908 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %903, %dx.types.Handle %87, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 0
  %910 = extractvalue %dx.types.ResRet.f32 %908, 1
  %911 = extractvalue %dx.types.ResRet.f32 %908, 2
  %912 = fmul fast float %909, %246
  %913 = fmul fast float %910, %249
  %914 = fmul fast float %911, %252
  br i1 %907, label %921, label %915

; <label>:915                                     ; preds = %898
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 0
  %918 = fmul fast float %917, %912
  %919 = fmul fast float %917, %913
  %920 = fmul fast float %917, %914
  br label %921

; <label>:921                                     ; preds = %915, %898
  %922 = phi float [ %918, %915 ], [ %912, %898 ]
  %923 = phi float [ %919, %915 ], [ %913, %898 ]
  %924 = phi float [ %920, %915 ], [ %914, %898 ]
  %925 = fmul fast float %922, %893
  %926 = select i1 %229, float %925, float %922
  %927 = call float @dx.op.dot3.f32(i32 55, float %926, float %923, float %924, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %928 = select i1 %229, float 0.000000e+00, float %922
  %929 = select i1 %229, float %927, float %923
  %930 = select i1 %229, float 0.000000e+00, float %924
  br label %931

; <label>:931                                     ; preds = %921, %883
  %932 = phi float [ %928, %921 ], [ 0.000000e+00, %883 ]
  %933 = phi float [ %929, %921 ], [ 0.000000e+00, %883 ]
  %934 = phi float [ %930, %921 ], [ 0.000000e+00, %883 ]
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = and i32 %936, 1024
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %969, label %939

; <label>:939                                     ; preds = %931
  %940 = add i32 %65, 56
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = and i32 %942, 255
  %944 = uitofp i32 %943 to float
  %945 = fmul fast float %944, 0x3F70101020000000
  %946 = lshr i32 %942, 8
  %947 = and i32 %946, 255
  %948 = uitofp i32 %947 to float
  %949 = fmul fast float %948, 0x3F70101020000000
  %950 = lshr i32 %942, 16
  %951 = and i32 %950, 255
  %952 = uitofp i32 %951 to float
  %953 = fmul fast float %952, 0x3F70101020000000
  %954 = fmul fast float %945, %945
  %955 = fmul fast float %949, %949
  %956 = fmul fast float %953, %953
  %957 = add i32 %65, 144
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.i32 %958, 0
  %960 = add i32 %959, 0
  %961 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %960, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %962 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %961, %dx.types.Handle %88, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %963 = extractvalue %dx.types.ResRet.f32 %962, 0
  %964 = extractvalue %dx.types.ResRet.f32 %962, 1
  %965 = extractvalue %dx.types.ResRet.f32 %962, 2
  %966 = fmul fast float %954, %963
  %967 = fmul fast float %955, %964
  %968 = fmul fast float %956, %965
  br label %969

; <label>:969                                     ; preds = %939, %931
  %970 = phi float [ %966, %939 ], [ 0.000000e+00, %931 ]
  %971 = phi float [ %967, %939 ], [ 0.000000e+00, %931 ]
  %972 = phi float [ %968, %939 ], [ 0.000000e+00, %931 ]
  %973 = fcmp fast ogt float %970, 0.000000e+00
  %974 = fcmp fast ogt float %971, 0.000000e+00
  %975 = fcmp fast ogt float %972, 0.000000e+00
  %976 = call float @dx.op.unary.f32(i32 23, float %970)  ; Log(value)
  %977 = call float @dx.op.unary.f32(i32 23, float %971)  ; Log(value)
  %978 = call float @dx.op.unary.f32(i32 23, float %972)  ; Log(value)
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = lshr i32 %980, 7
  %982 = and i32 %981, 32752
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = fmul fast float %976, 0xBFE62E4300000000
  %985 = fmul fast float %984, %983
  %986 = fmul fast float %977, 0xBFE62E4300000000
  %987 = fmul fast float %986, %983
  %988 = fmul fast float %978, 0xBFE62E4300000000
  %989 = fmul fast float %988, %983
  %990 = select i1 %973, float %985, float 1.270000e+02
  %991 = select i1 %974, float %987, float 1.270000e+02
  %992 = select i1 %975, float %989, float 1.270000e+02
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = and i32 %994, 10240
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %1041, label %997

; <label>:997                                     ; preds = %969
  %998 = add i32 %65, 148
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = add i32 %1000, 0
  %1002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1001, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1003 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1002, %dx.types.Handle %88, float %398, float %399, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 1
  %1005 = extractvalue %dx.types.ResRet.f32 %1003, 3
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = and i32 %1007, 1048576
  %1009 = icmp ne i32 %1008, 0
  %1010 = and i32 %1007, 8192
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1027, label %1012

; <label>:1012                                    ; preds = %997
  %1013 = extractvalue %dx.types.ResRet.f32 %1003, 2
  %1014 = select i1 %1009, float %1013, float %1004
  %1015 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1016 = select i1 %1009, float %1015, float %1004
  %1017 = add i32 %65, 48
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = lshr i32 %1019, 16
  %1021 = and i32 %1020, 255
  %1022 = uitofp i32 %1021 to float
  %1023 = fmul fast float %1022, 0x3F80101020000000
  %1024 = fmul fast float %1023, %1016
  %1025 = fmul fast float %1023, %1004
  %1026 = fmul fast float %1023, %1014
  br label %1027

; <label>:1027                                    ; preds = %1012, %997
  %1028 = phi float [ %1024, %1012 ], [ 0.000000e+00, %997 ]
  %1029 = phi float [ %1025, %1012 ], [ 0.000000e+00, %997 ]
  %1030 = phi float [ %1026, %1012 ], [ 0.000000e+00, %997 ]
  %1031 = and i32 %1007, 2048
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1041, label %1033

; <label>:1033                                    ; preds = %1027
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = shl i32 %1035, 4
  %1037 = and i32 %1036, 32752
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = fmul fast float %1038, %1005
  %1040 = call float @dx.op.binary.f32(i32 35, float %1039, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1041

; <label>:1041                                    ; preds = %1033, %1027, %969
  %1042 = phi float [ %1028, %1033 ], [ %1028, %1027 ], [ 0.000000e+00, %969 ]
  %1043 = phi float [ %1029, %1033 ], [ %1029, %1027 ], [ 0.000000e+00, %969 ]
  %1044 = phi float [ %1030, %1033 ], [ %1030, %1027 ], [ 0.000000e+00, %969 ]
  %1045 = phi float [ %1040, %1033 ], [ 0x3F70101020000000, %1027 ], [ 0x3F70101020000000, %969 ]
  %1046 = add i32 %65, 48
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = and i32 %1048, 255
  %1050 = uitofp i32 %1049 to float
  %1051 = lshr i32 %1048, 8
  %1052 = and i32 %1051, 255
  %1053 = uitofp i32 %1052 to float
  %1054 = call float @dx.op.dot3.f32(i32 55, float %804, float %805, float %806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1055 = fmul fast float %1053, %1054
  %1056 = fadd fast float %1055, %1050
  %1057 = fmul fast float %1056, 0x3F70101020000000
  %1058 = call float @dx.op.unary.f32(i32 7, float %1057)  ; Saturate(value)
  br label %1059

; <label>:1059                                    ; preds = %1041, %297
  %1060 = phi float [ 0.000000e+00, %297 ], [ %885, %1041 ]
  %1061 = phi float [ 0.000000e+00, %297 ], [ %886, %1041 ]
  %1062 = phi float [ 0.000000e+00, %297 ], [ %804, %1041 ]
  %1063 = phi float [ 0.000000e+00, %297 ], [ %805, %1041 ]
  %1064 = phi float [ 0.000000e+00, %297 ], [ %806, %1041 ]
  %1065 = phi float [ 0.000000e+00, %297 ], [ %1042, %1041 ]
  %1066 = phi float [ 0.000000e+00, %297 ], [ %1043, %1041 ]
  %1067 = phi float [ 0.000000e+00, %297 ], [ %1044, %1041 ]
  %1068 = phi float [ 0.000000e+00, %297 ], [ %990, %1041 ]
  %1069 = phi float [ 0.000000e+00, %297 ], [ %991, %1041 ]
  %1070 = phi float [ 0.000000e+00, %297 ], [ %992, %1041 ]
  %1071 = phi float [ 0.000000e+00, %297 ], [ %932, %1041 ]
  %1072 = phi float [ 0.000000e+00, %297 ], [ %933, %1041 ]
  %1073 = phi float [ 0.000000e+00, %297 ], [ %934, %1041 ]
  %1074 = phi float [ 0.000000e+00, %297 ], [ %790, %1041 ]
  %1075 = phi float [ 0.000000e+00, %297 ], [ %586, %1041 ]
  %1076 = phi float [ 0.000000e+00, %297 ], [ %884, %1041 ]
  %1077 = phi float [ 0.000000e+00, %297 ], [ %887, %1041 ]
  %1078 = phi float [ 0.000000e+00, %297 ], [ %1045, %1041 ]
  %1079 = phi float [ 0.000000e+00, %297 ], [ %1058, %1041 ]
  %1080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1081 = extractvalue %dx.types.CBufRet.f32 %1080, 0
  %1082 = call float @dx.op.dot2.f32(i32 54, float %1060, float %1061, float %1060, float %1061)  ; Dot2(ax,ay,bx,by)
  %1083 = fmul fast float %1082, 0x3FE3333340000000
  %1084 = fsub fast float 1.000000e+00, %1083
  %1085 = call float @dx.op.dot3.f32(i32 55, float %1060, float %1061, float %1084, float %1060, float %1061, float %1084)  ; Dot3(ax,ay,az,bx,by,bz)
  %1086 = call float @dx.op.unary.f32(i32 25, float %1085)  ; Rsqrt(value)
  %1087 = fmul fast float %1086, %1060
  %1088 = fmul fast float %1086, %1061
  %1089 = fmul fast float %1084, %1086
  %1090 = fmul fast float %1089, %70
  %1091 = fmul fast float %1089, %71
  %1092 = fmul fast float %1089, %72
  %1093 = fmul fast float %1087, %66
  %1094 = fmul fast float %1087, %67
  %1095 = fmul fast float %1087, %68
  %1096 = fadd fast float %1090, %1093
  %1097 = fadd fast float %1091, %1094
  %1098 = fadd fast float %1092, %1095
  %1099 = fmul fast float %1088, %102
  %1100 = fmul fast float %1088, %103
  %1101 = fmul fast float %1088, %104
  %1102 = fadd fast float %1096, %1099
  %1103 = fadd fast float %1097, %1100
  %1104 = fadd fast float %1098, %1101
  %1105 = call float @dx.op.dot3.f32(i32 55, float %1102, float %1103, float %1104, float %1102, float %1103, float %1104)  ; Dot3(ax,ay,az,bx,by,bz)
  %1106 = call float @dx.op.unary.f32(i32 25, float %1105)  ; Rsqrt(value)
  %1107 = fmul fast float %1102, %1106
  %1108 = fmul fast float %1103, %1106
  %1109 = fmul fast float %1104, %1106
  %1110 = call float @dx.op.unary.f32(i32 83, float %138)  ; DerivCoarseX(value)
  %1111 = call float @dx.op.unary.f32(i32 83, float %139)  ; DerivCoarseX(value)
  %1112 = call float @dx.op.unary.f32(i32 83, float %140)  ; DerivCoarseX(value)
  %1113 = call float @dx.op.unary.f32(i32 84, float %138)  ; DerivCoarseY(value)
  %1114 = call float @dx.op.unary.f32(i32 84, float %139)  ; DerivCoarseY(value)
  %1115 = call float @dx.op.unary.f32(i32 84, float %140)  ; DerivCoarseY(value)
  %1116 = fadd fast float %1110, %138
  %1117 = fadd fast float %1111, %139
  %1118 = fadd fast float %1112, %140
  %1119 = fadd fast float %1113, %138
  %1120 = fadd fast float %1114, %139
  %1121 = fadd fast float %1115, %140
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1124 = extractvalue %dx.types.CBufRet.f32 %1122, 1
  %1125 = extractvalue %dx.types.CBufRet.f32 %1122, 2
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 2
  %1128 = extractvalue %dx.types.CBufRet.f32 %1126, 3
  %1129 = fmul fast float %1123, %91
  %1130 = fmul fast float %1129, %1127
  %1131 = fmul fast float %1124, %92
  %1132 = fmul fast float %1131, %1128
  %1133 = fptoui float %1130 to i32
  %1134 = fptoui float %1132 to i32
  %1135 = fadd fast float %1123, -1.000000e+00
  %1136 = fadd fast float %1124, -1.000000e+00
  %1137 = fptoui float %1135 to i32
  %1138 = fptoui float %1136 to i32
  %1139 = call i32 @dx.op.binary.i32(i32 40, i32 %1133, i32 %1137)  ; UMin(a,b)
  %1140 = call i32 @dx.op.binary.i32(i32 40, i32 %1134, i32 %1138)  ; UMin(a,b)
  %1141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.f32 %1141, 2
  %1143 = extractvalue %dx.types.CBufRet.f32 %1141, 3
  %1144 = fmul fast float %1142, %82
  %1145 = fsub fast float %1144, %1143
  %1146 = fadd fast float %1125, -1.000000e+00
  %1147 = call float @dx.op.binary.f32(i32 36, float %1145, float %1146)  ; FMin(a,b)
  %1148 = fptoui float %1147 to i32
  %1149 = fptoui float %1123 to i32
  %1150 = fptoui float %1124 to i32
  %1151 = mul i32 %1148, %1150
  %1152 = add i32 %1151, %1140
  %1153 = mul i32 %1152, %1149
  %1154 = add i32 %1153, %1139
  %1155 = shl i32 %1154, 2
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = and i32 %1157, 1023
  %1159 = lshr i32 %1157, 10
  %1160 = icmp eq i32 %1158, 0
  br i1 %1160, label %1664, label %1161

; <label>:1161                                    ; preds = %1059
  %1162 = and i32 %1157, 1023
  br label %1163

; <label>:1163                                    ; preds = %1295, %1161
  %1164 = phi float [ %1296, %1295 ], [ 0.000000e+00, %1161 ]
  %1165 = phi float [ %1297, %1295 ], [ %1081, %1161 ]
  %1166 = phi float [ %1298, %1295 ], [ %1079, %1161 ]
  %1167 = phi float [ %1299, %1295 ], [ %1068, %1161 ]
  %1168 = phi float [ %1300, %1295 ], [ %1069, %1161 ]
  %1169 = phi float [ %1301, %1295 ], [ %1070, %1161 ]
  %1170 = phi float [ %1302, %1295 ], [ 0.000000e+00, %1161 ]
  %1171 = phi float [ %1303, %1295 ], [ 0.000000e+00, %1161 ]
  %1172 = phi float [ %1304, %1295 ], [ %1065, %1161 ]
  %1173 = phi float [ %1305, %1295 ], [ %1066, %1161 ]
  %1174 = phi float [ %1306, %1295 ], [ %1067, %1161 ]
  %1175 = phi float [ %1307, %1295 ], [ %1071, %1161 ]
  %1176 = phi float [ %1308, %1295 ], [ %1072, %1161 ]
  %1177 = phi float [ %1309, %1295 ], [ %1073, %1161 ]
  %1178 = phi float [ %1310, %1295 ], [ %1107, %1161 ]
  %1179 = phi float [ %1311, %1295 ], [ %1108, %1161 ]
  %1180 = phi float [ %1312, %1295 ], [ %1109, %1161 ]
  %1181 = phi float [ %1313, %1295 ], [ %1077, %1161 ]
  %1182 = phi float [ %1314, %1295 ], [ %1076, %1161 ]
  %1183 = phi float [ %1315, %1295 ], [ 0.000000e+00, %1161 ]
  %1184 = phi float [ %1316, %1295 ], [ %1074, %1161 ]
  %1185 = phi float [ %1317, %1295 ], [ %1062, %1161 ]
  %1186 = phi float [ %1318, %1295 ], [ %1063, %1161 ]
  %1187 = phi float [ %1319, %1295 ], [ %1064, %1161 ]
  %1188 = phi i32 [ %1245, %1295 ], [ 0, %1161 ]
  %1189 = add nuw nsw i32 %1188, %1159
  %1190 = shl i32 %1189, 2
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = shl i32 %1192, 8
  %1194 = or i32 %1193, 48
  %1195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = extractvalue %dx.types.ResRet.f32 %1195, 3
  %1200 = or i32 %1193, 64
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = extractvalue %dx.types.ResRet.i32 %1201, 1
  %1204 = or i32 %1193, 80
  %1205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 2
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 3
  %1208 = or i32 %1193, 96
  %1209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.ResRet.f32 %1209, 2
  %1213 = extractvalue %dx.types.ResRet.f32 %1209, 3
  %1214 = or i32 %1193, 112
  %1215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 2
  %1217 = or i32 %1193, 128
  %1218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = extractvalue %dx.types.ResRet.f32 %1218, 3
  %1223 = or i32 %1193, 144
  %1224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.ResRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.ResRet.f32 %1224, 2
  %1228 = extractvalue %dx.types.ResRet.f32 %1224, 3
  %1229 = or i32 %1193, 160
  %1230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = extractvalue %dx.types.ResRet.f32 %1230, 1
  %1233 = extractvalue %dx.types.ResRet.f32 %1230, 2
  %1234 = extractvalue %dx.types.ResRet.f32 %1230, 3
  %1235 = or i32 %1193, 192
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = or i32 %1193, 208
  %1239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  %1241 = or i32 %1193, 248
  %1242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.ResRet.f32 %1242, 1
  %1245 = add nuw nsw i32 %1188, 1
  %1246 = bitcast float %1199 to i32
  %1247 = and i32 %1246, 2560
  %1248 = icmp eq i32 %1247, 0
  %1249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1249, 2
  %1253 = extractvalue %dx.types.ResRet.f32 %1249, 3
  %1254 = call float @dx.op.dot4.f32(i32 56, float %1250, float %1251, float %1252, float %1253, float %138, float %139, float %140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1255 = or i32 %1193, 16
  %1256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.ResRet.f32 %1256, 2
  %1260 = extractvalue %dx.types.ResRet.f32 %1256, 3
  %1261 = call float @dx.op.dot4.f32(i32 56, float %1257, float %1258, float %1259, float %1260, float %138, float %139, float %140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1262 = or i32 %1193, 32
  %1263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.ResRet.f32 %1263, 3
  %1268 = call float @dx.op.dot4.f32(i32 56, float %1264, float %1265, float %1266, float %1267, float %138, float %139, float %140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1269 = call float @dx.op.unary.f32(i32 27, float %1254)  ; Round_ni(value)
  %1270 = call float @dx.op.unary.f32(i32 6, float %1269)  ; FAbs(value)
  %1271 = call float @dx.op.unary.f32(i32 27, float %1261)  ; Round_ni(value)
  %1272 = call float @dx.op.unary.f32(i32 6, float %1271)  ; FAbs(value)
  %1273 = call float @dx.op.unary.f32(i32 6, float %1268)  ; FAbs(value)
  %1274 = call float @dx.op.unary.f32(i32 27, float %1273)  ; Round_ni(value)
  %1275 = fadd fast float %1272, %1270
  %1276 = fadd fast float %1275, %1274
  %1277 = fcmp fast oeq float %1276, 0.000000e+00
  %1278 = call float @dx.op.dot4.f32(i32 56, float %1250, float %1251, float %1252, float %1253, float %1116, float %1117, float %1118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1279 = call float @dx.op.dot4.f32(i32 56, float %1257, float %1258, float %1259, float %1260, float %1116, float %1117, float %1118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1280 = call float @dx.op.dot4.f32(i32 56, float %1250, float %1251, float %1252, float %1253, float %1119, float %1120, float %1121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1281 = call float @dx.op.dot4.f32(i32 56, float %1257, float %1258, float %1259, float %1260, float %1119, float %1120, float %1121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1282 = fsub fast float %1278, %1254
  %1283 = fsub fast float %1280, %1254
  %1284 = fsub fast float %1279, %1261
  %1285 = fsub fast float %1281, %1261
  %1286 = call float @dx.op.dot3.f32(i32 55, float %1196, float %1197, float %1198, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 2
  %1289 = fadd fast float %1288, %1286
  %1290 = call float @dx.op.unary.f32(i32 7, float %1289)  ; Saturate(value)
  %1291 = extractvalue %dx.types.CBufRet.f32 %1287, 0
  %1292 = fcmp fast ogt float %1290, %1291
  %1293 = and i1 %1277, %1292
  %1294 = and i1 %1248, %1293
  br i1 %1294, label %1321, label %1295

; <label>:1295                                    ; preds = %1650, %1402, %1321, %1163
  %1296 = phi float [ %1164, %1321 ], [ %1405, %1402 ], [ %1405, %1650 ], [ %1164, %1163 ]
  %1297 = phi float [ %1165, %1321 ], [ %1165, %1402 ], [ %1626, %1650 ], [ %1165, %1163 ]
  %1298 = phi float [ %1166, %1321 ], [ %1166, %1402 ], [ %1624, %1650 ], [ %1166, %1163 ]
  %1299 = phi float [ %1167, %1321 ], [ %1167, %1402 ], [ %1602, %1650 ], [ %1167, %1163 ]
  %1300 = phi float [ %1168, %1321 ], [ %1168, %1402 ], [ %1603, %1650 ], [ %1168, %1163 ]
  %1301 = phi float [ %1169, %1321 ], [ %1169, %1402 ], [ %1604, %1650 ], [ %1169, %1163 ]
  %1302 = phi float [ %1170, %1321 ], [ %1170, %1402 ], [ %1529, %1650 ], [ %1170, %1163 ]
  %1303 = phi float [ %1171, %1321 ], [ %1171, %1402 ], [ %1527, %1650 ], [ %1171, %1163 ]
  %1304 = phi float [ %1172, %1321 ], [ %1172, %1402 ], [ %1572, %1650 ], [ %1172, %1163 ]
  %1305 = phi float [ %1173, %1321 ], [ %1173, %1402 ], [ %1573, %1650 ], [ %1173, %1163 ]
  %1306 = phi float [ %1174, %1321 ], [ %1174, %1402 ], [ %1574, %1650 ], [ %1174, %1163 ]
  %1307 = phi float [ %1175, %1321 ], [ %1175, %1402 ], [ %1660, %1650 ], [ %1175, %1163 ]
  %1308 = phi float [ %1176, %1321 ], [ %1176, %1402 ], [ %1661, %1650 ], [ %1176, %1163 ]
  %1309 = phi float [ %1177, %1321 ], [ %1177, %1402 ], [ %1662, %1650 ], [ %1177, %1163 ]
  %1310 = phi float [ %1178, %1321 ], [ %1178, %1402 ], [ %1508, %1650 ], [ %1178, %1163 ]
  %1311 = phi float [ %1179, %1321 ], [ %1179, %1402 ], [ %1509, %1650 ], [ %1179, %1163 ]
  %1312 = phi float [ %1180, %1321 ], [ %1180, %1402 ], [ %1510, %1650 ], [ %1180, %1163 ]
  %1313 = phi float [ %1181, %1321 ], [ %1181, %1402 ], [ %1582, %1650 ], [ %1181, %1163 ]
  %1314 = phi float [ %1182, %1321 ], [ %1182, %1402 ], [ %1579, %1650 ], [ %1182, %1163 ]
  %1315 = phi float [ %1183, %1321 ], [ %1183, %1402 ], [ %1576, %1650 ], [ %1183, %1163 ]
  %1316 = phi float [ %1184, %1321 ], [ %1184, %1402 ], [ %1525, %1650 ], [ %1184, %1163 ]
  %1317 = phi float [ %1185, %1321 ], [ %1185, %1402 ], [ %1520, %1650 ], [ %1185, %1163 ]
  %1318 = phi float [ %1186, %1321 ], [ %1186, %1402 ], [ %1521, %1650 ], [ %1186, %1163 ]
  %1319 = phi float [ %1187, %1321 ], [ %1187, %1402 ], [ %1522, %1650 ], [ %1187, %1163 ]
  %1320 = icmp eq i32 %1245, %1162
  br i1 %1320, label %1663, label %1163

; <label>:1321                                    ; preds = %1163
  %1322 = extractvalue %dx.types.ResRet.f32 %1215, 3
  %1323 = extractvalue %dx.types.ResRet.f32 %1215, 1
  %1324 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1325 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1326 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1327 = extractvalue %dx.types.ResRet.i32 %1201, 3
  %1328 = extractvalue %dx.types.ResRet.i32 %1201, 2
  %1329 = add i32 %1327, 0
  %1330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1329, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1332 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1330, %dx.types.Handle %1331, float %1254, float %1261, float undef, float undef, i32 0, i32 0, i32 undef, float %1282, float %1284, float undef, float %1283, float %1285, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1333 = extractvalue %dx.types.ResRet.f32 %1332, 0
  %1334 = fmul fast float %1333, %1326
  %1335 = fadd fast float %1334, %1325
  %1336 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  %1337 = fmul fast float %1254, %1210
  %1338 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %1261, float %1337)  ; FMad(a,b,c)
  %1339 = fadd fast float %1338, %1324
  %1340 = fmul fast float %1254, %1212
  %1341 = call float @dx.op.tertiary.f32(i32 46, float %1213, float %1261, float %1340)  ; FMad(a,b,c)
  %1342 = fadd fast float %1341, %1323
  %1343 = fmul fast float %1282, %1210
  %1344 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %1284, float %1343)  ; FMad(a,b,c)
  %1345 = fmul fast float %1282, %1212
  %1346 = call float @dx.op.tertiary.f32(i32 46, float %1213, float %1284, float %1345)  ; FMad(a,b,c)
  %1347 = fmul fast float %1283, %1210
  %1348 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %1285, float %1347)  ; FMad(a,b,c)
  %1349 = fmul fast float %1283, %1212
  %1350 = call float @dx.op.tertiary.f32(i32 46, float %1213, float %1285, float %1349)  ; FMad(a,b,c)
  %1351 = add i32 %1328, 0
  %1352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1351, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1353 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1352, %dx.types.Handle %1331, float %1339, float %1342, float undef, float undef, i32 0, i32 0, i32 undef, float %1344, float %1346, float undef, float %1348, float %1350, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1354 = extractvalue %dx.types.ResRet.f32 %1353, 0
  %1355 = and i32 %1246, 1024
  %1356 = icmp ne i32 %1355, 0
  %1357 = fcmp fast ogt float %1354, 0x3FE0101020000000
  %1358 = uitofp i1 %1357 to float
  %1359 = select i1 %1356, float %1358, float %1354
  %1360 = and i32 %1246, 8192
  %1361 = icmp ne i32 %1360, 0
  %1362 = select i1 %1361, float %1322, float 1.000000e+00
  %1363 = fmul fast float %1254, 2.000000e+00
  %1364 = fadd fast float %1363, -1.000000e+00
  %1365 = call float @dx.op.unary.f32(i32 6, float %1364)  ; FAbs(value)
  %1366 = fmul fast float %1365, %1243
  %1367 = fsub fast float %1366, %1243
  %1368 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1369 = fmul fast float %1261, 2.000000e+00
  %1370 = fadd fast float %1369, -1.000000e+00
  %1371 = call float @dx.op.unary.f32(i32 6, float %1370)  ; FAbs(value)
  %1372 = fmul fast float %1371, %1244
  %1373 = fsub fast float %1372, %1244
  %1374 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1375 = fmul fast float %1273, %1206
  %1376 = fsub fast float %1375, %1206
  %1377 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1378 = fmul fast float %1336, %1362
  %1379 = fmul fast float %1378, %1333
  %1380 = fmul fast float %1379, %1368
  %1381 = fmul fast float %1380, %1359
  %1382 = fmul fast float %1381, %1374
  %1383 = fmul fast float %1382, %1377
  %1384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1384, 1
  %1386 = extractvalue %dx.types.CBufRet.f32 %1384, 0
  %1387 = fsub fast float %1290, %1386
  %1388 = fmul fast float %1387, %1385
  %1389 = call float @dx.op.unary.f32(i32 7, float %1388)  ; Saturate(value)
  %1390 = fmul fast float %1383, %1207
  %1391 = fadd fast float %1383, %1207
  %1392 = fmul fast float %1391, %1216
  %1393 = fsub fast float %1392, %1216
  %1394 = call float @dx.op.unary.f32(i32 7, float %1393)  ; Saturate(value)
  %1395 = and i32 %1246, 128
  %1396 = icmp ne i32 %1395, 0
  %1397 = select i1 %1396, float %1394, float %1390
  %1398 = fmul fast float %1397, %1389
  %1399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1400 = extractvalue %dx.types.CBufRet.f32 %1399, 0
  %1401 = fcmp fast ugt float %1398, %1400
  br i1 %1401, label %1402, label %1295

; <label>:1402                                    ; preds = %1321
  %1403 = select i1 %1361, float %1398, float 0.000000e+00
  %1404 = fadd fast float %1403, %1164
  %1405 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  br i1 %1361, label %1295, label %1406

; <label>:1406                                    ; preds = %1402
  %1407 = and i32 %1246, 4
  %1408 = and i32 %1246, 8
  %1409 = add i32 %1202, 0
  %1410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1409, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1412 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1410, %dx.types.Handle %1411, float %1339, float %1342, float undef, float undef, i32 0, i32 0, i32 undef, float %1344, float %1346, float undef, float %1348, float %1350, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1413 = extractvalue %dx.types.ResRet.f32 %1412, 0
  %1414 = extractvalue %dx.types.ResRet.f32 %1412, 1
  %1415 = extractvalue %dx.types.ResRet.f32 %1412, 2
  %1416 = extractvalue %dx.types.ResRet.f32 %1412, 3
  %1417 = bitcast float %1228 to i32
  %1418 = and i32 %1417, 255
  %1419 = uitofp i32 %1418 to float
  %1420 = lshr i32 %1417, 8
  %1421 = and i32 %1420, 255
  %1422 = uitofp i32 %1421 to float
  %1423 = fmul fast float %1416, %1419
  %1424 = fadd fast float %1423, %1422
  %1425 = fmul fast float %1424, 0x3F70101000000000
  %1426 = add i32 %1203, 0
  %1427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1426, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1428 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1427, %dx.types.Handle %1411, float %1339, float %1342, float undef, float undef, i32 0, i32 0, i32 undef, float %1344, float %1346, float undef, float %1348, float %1350, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1429 = extractvalue %dx.types.ResRet.f32 %1428, 0
  %1430 = extractvalue %dx.types.ResRet.f32 %1428, 1
  %1431 = extractvalue %dx.types.ResRet.f32 %1428, 2
  %1432 = extractvalue %dx.types.ResRet.f32 %1428, 3
  %1433 = bitcast float %1222 to i32
  %1434 = and i32 %1433, 255
  %1435 = uitofp i32 %1434 to float
  %1436 = lshr i32 %1433, 8
  %1437 = and i32 %1436, 255
  %1438 = uitofp i32 %1437 to float
  %1439 = lshr i32 %1433, 16
  %1440 = and i32 %1439, 255
  %1441 = uitofp i32 %1440 to float
  %1442 = fmul fast float %1441, 0x3F70101000000000
  %1443 = fmul fast float %1429, %1435
  %1444 = fadd fast float %1443, %1438
  %1445 = fmul fast float %1444, 0x3F70101000000000
  %1446 = fadd fast float %1430, -5.000000e-01
  %1447 = fadd fast float %1432, -5.000000e-01
  %1448 = fmul fast float %1446, %1442
  %1449 = fmul fast float %1447, %1442
  %1450 = fadd fast float %1448, 5.000000e-01
  %1451 = fadd fast float %1449, 5.000000e-01
  %1452 = fmul fast float %1413, %1231
  %1453 = fmul fast float %1414, %1232
  %1454 = fmul fast float %1415, %1233
  %1455 = fmul fast float %1450, 2.000000e+00
  %1456 = fadd fast float %1455, -1.000000e+00
  %1457 = fmul fast float %1451, 2.000000e+00
  %1458 = fadd fast float %1457, -1.000000e+00
  %1459 = fadd fast float %1456, %1458
  %1460 = fmul fast float %1459, 5.000000e-01
  %1461 = fsub fast float %1456, %1458
  %1462 = fmul fast float %1461, 5.000000e-01
  %1463 = call float @dx.op.unary.f32(i32 6, float %1460)  ; FAbs(value)
  %1464 = fsub fast float 1.000000e+00, %1463
  %1465 = call float @dx.op.unary.f32(i32 6, float %1462)  ; FAbs(value)
  %1466 = fsub fast float %1464, %1465
  %1467 = call float @dx.op.dot3.f32(i32 55, float %1460, float %1462, float %1466, float %1460, float %1462, float %1466)  ; Dot3(ax,ay,az,bx,by,bz)
  %1468 = call float @dx.op.unary.f32(i32 25, float %1467)  ; Rsqrt(value)
  %1469 = fmul fast float %1460, %1468
  %1470 = fmul fast float %1462, %1468
  %1471 = fmul fast float %1468, %1466
  %1472 = fmul fast float %1471, %1196
  %1473 = fmul fast float %1471, %1197
  %1474 = fmul fast float %1471, %1198
  %1475 = fmul fast float %1469, %1219
  %1476 = fmul fast float %1469, %1220
  %1477 = fmul fast float %1469, %1221
  %1478 = fadd fast float %1475, %1472
  %1479 = fadd fast float %1476, %1473
  %1480 = fadd fast float %1477, %1474
  %1481 = fmul fast float %1470, %1225
  %1482 = fmul fast float %1470, %1226
  %1483 = fmul fast float %1470, %1227
  %1484 = fadd fast float %1478, %1481
  %1485 = fadd fast float %1479, %1482
  %1486 = fadd fast float %1480, %1483
  %1487 = call float @dx.op.dot3.f32(i32 55, float %1484, float %1485, float %1486, float %1484, float %1485, float %1486)  ; Dot3(ax,ay,az,bx,by,bz)
  %1488 = call float @dx.op.unary.f32(i32 25, float %1487)  ; Rsqrt(value)
  %1489 = fmul fast float %1484, %1488
  %1490 = fmul fast float %1485, %1488
  %1491 = fmul fast float %1486, %1488
  %1492 = icmp ne i32 %1408, 0
  %1493 = select i1 %1492, float 1.000000e+00, float 0.000000e+00
  %1494 = fmul fast float %1398, %1493
  %1495 = and i32 %1246, 1
  %1496 = icmp eq i32 %1495, 0
  br i1 %1496, label %1497, label %1501

; <label>:1497                                    ; preds = %1406
  %1498 = fsub fast float %1489, %1178
  %1499 = fsub fast float %1490, %1179
  %1500 = fsub fast float %1491, %1180
  br label %1501

; <label>:1501                                    ; preds = %1497, %1406
  %1502 = phi float [ %1498, %1497 ], [ %1489, %1406 ]
  %1503 = phi float [ %1499, %1497 ], [ %1490, %1406 ]
  %1504 = phi float [ %1500, %1497 ], [ %1491, %1406 ]
  %1505 = fmul float %1504, %1494
  %1506 = fmul float %1503, %1494
  %1507 = fmul float %1502, %1494
  %1508 = fadd fast float %1507, %1178
  %1509 = fadd fast float %1506, %1179
  %1510 = fadd fast float %1505, %1180
  %1511 = icmp ne i32 %1407, 0
  %1512 = select i1 %1511, float 1.000000e+00, float 0.000000e+00
  %1513 = fmul fast float %1398, %1512
  %1514 = fsub fast float %1452, %1185
  %1515 = fsub fast float %1453, %1186
  %1516 = fsub fast float %1454, %1187
  %1517 = fmul fast float %1514, %1513
  %1518 = fmul fast float %1515, %1513
  %1519 = fmul fast float %1516, %1513
  %1520 = fadd fast float %1517, %1185
  %1521 = fadd fast float %1518, %1186
  %1522 = fadd fast float %1519, %1187
  %1523 = fsub fast float %1425, %1184
  %1524 = fmul fast float %1523, %1513
  %1525 = fadd fast float %1524, %1184
  %1526 = fmul fast float %1513, %1171
  %1527 = fsub fast float %1171, %1526
  %1528 = fmul fast float %1513, %1170
  %1529 = fsub fast float %1170, %1528
  %1530 = bitcast float %1240 to i32
  %1531 = lshr i32 %1530, 16
  %1532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1531)  ; LegacyF16ToF32(value)
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = and i32 %1534, 1
  %1536 = icmp eq i32 %1535, 0
  br i1 %1536, label %1537, label %1562

; <label>:1537                                    ; preds = %1501
  %1538 = fadd fast float %1425, 0xBFB99999A0000000
  %1539 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  %1540 = fmul fast float %1539, 0x3FF1C71C80000000
  %1541 = fsub fast float 1.000000e+00, %1540
  %1542 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  %1543 = fmul fast float %1542, %1452
  %1544 = fmul fast float %1542, %1453
  %1545 = fmul fast float %1542, %1454
  %1546 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  %1547 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  %1548 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1549 = call float @dx.op.binary.f32(i32 35, float %1547, float %1548)  ; FMax(a,b)
  %1550 = call float @dx.op.binary.f32(i32 35, float %1546, float %1549)  ; FMax(a,b)
  %1551 = fcmp fast ogt float %1550, 0.000000e+00
  %1552 = bitcast float %1550 to i32
  %1553 = sub nsw i32 2129859010, %1552
  %1554 = bitcast i32 %1553 to float
  %1555 = select i1 %1551, float %1554, float 0.000000e+00
  %1556 = fmul fast float %1546, %1532
  %1557 = fmul fast float %1547, %1532
  %1558 = fmul fast float %1548, %1532
  %1559 = fmul fast float %1556, %1555
  %1560 = fmul fast float %1557, %1555
  %1561 = fmul fast float %1558, %1555
  br label %1562

; <label>:1562                                    ; preds = %1537, %1501
  %1563 = phi float [ %1532, %1501 ], [ %1559, %1537 ]
  %1564 = phi float [ %1532, %1501 ], [ %1560, %1537 ]
  %1565 = phi float [ %1532, %1501 ], [ %1561, %1537 ]
  %1566 = fsub fast float %1563, %1172
  %1567 = fsub fast float %1564, %1173
  %1568 = fsub fast float %1565, %1174
  %1569 = fmul fast float %1566, %1513
  %1570 = fmul fast float %1567, %1513
  %1571 = fmul fast float %1568, %1513
  %1572 = fadd fast float %1569, %1172
  %1573 = fadd fast float %1570, %1173
  %1574 = fadd fast float %1571, %1174
  %1575 = fadd fast float %1398, %1183
  %1576 = call float @dx.op.unary.f32(i32 7, float %1575)  ; Saturate(value)
  %1577 = fsub fast float %1445, %1182
  %1578 = fmul fast float %1577, %1494
  %1579 = fadd fast float %1578, %1182
  %1580 = fsub fast float %1431, %1181
  %1581 = fmul fast float %1580, %1494
  %1582 = fadd fast float %1581, %1181
  br i1 %1496, label %1591, label %1583

; <label>:1583                                    ; preds = %1562
  %1584 = and i32 %1246, 32768
  %1585 = icmp eq i32 %1584, 0
  br i1 %1585, label %1601, label %1586

; <label>:1586                                    ; preds = %1583
  %1587 = fmul fast float %1494, 1.270000e+02
  %1588 = fadd fast float %1587, %1167
  %1589 = fadd fast float %1587, %1168
  %1590 = fadd fast float %1587, %1169
  br label %1601

; <label>:1591                                    ; preds = %1562
  %1592 = fsub fast float 1.270000e+02, %1167
  %1593 = fsub fast float 1.270000e+02, %1168
  %1594 = fsub fast float 1.270000e+02, %1169
  %1595 = fmul fast float %1494, %1592
  %1596 = fmul fast float %1494, %1593
  %1597 = fmul fast float %1494, %1594
  %1598 = fadd fast float %1595, %1167
  %1599 = fadd fast float %1596, %1168
  %1600 = fadd fast float %1597, %1169
  br label %1601

; <label>:1601                                    ; preds = %1591, %1586, %1583
  %1602 = phi float [ %1588, %1586 ], [ %1167, %1583 ], [ %1598, %1591 ]
  %1603 = phi float [ %1589, %1586 ], [ %1168, %1583 ], [ %1599, %1591 ]
  %1604 = phi float [ %1590, %1586 ], [ %1169, %1583 ], [ %1600, %1591 ]
  %1605 = call float @dx.op.dot3.f32(i32 55, float %1452, float %1453, float %1454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1607 = extractvalue %dx.types.CBufRet.f32 %1606, 0
  %1608 = extractvalue %dx.types.CBufRet.f32 %1606, 1
  %1609 = fmul fast float %1608, %1605
  %1610 = fadd fast float %1609, %1607
  %1611 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  %1612 = bitcast float %1234 to i32
  %1613 = and i32 %1612, 65535
  %1614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1613)  ; LegacyF16ToF32(value)
  %1615 = lshr i32 %1612, 16
  %1616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1615)  ; LegacyF16ToF32(value)
  %1617 = fcmp fast oge float %1614, 0.000000e+00
  %1618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1618, 0
  %1620 = select i1 %1617, float %1614, float %1619
  %1621 = fadd fast float %1620, %1616
  %1622 = fsub fast float %1611, %1166
  %1623 = fmul fast float %1622, %1398
  %1624 = fadd fast float %1623, %1166
  %1625 = fmul fast float %1621, %1398
  %1626 = call float @dx.op.binary.f32(i32 35, float %1165, float %1625)  ; FMax(a,b)
  %1627 = and i32 %1246, 16
  %1628 = icmp eq i32 %1627, 0
  br i1 %1628, label %1650, label %1629

; <label>:1629                                    ; preds = %1601
  %1630 = add i32 %1237, 0
  %1631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1630, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1632 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1631, %dx.types.Handle %1411, float %1339, float %1342, float undef, float undef, i32 0, i32 0, i32 undef, float %1344, float %1346, float undef, float %1348, float %1350, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1633 = extractvalue %dx.types.ResRet.f32 %1632, 0
  %1634 = extractvalue %dx.types.ResRet.f32 %1632, 1
  %1635 = extractvalue %dx.types.ResRet.f32 %1632, 2
  %1636 = and i32 %1530, 65535
  %1637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1636)  ; LegacyF16ToF32(value)
  %1638 = fmul fast float %1633, %1231
  %1639 = fmul fast float %1634, %1232
  %1640 = fmul fast float %1635, %1233
  %1641 = and i32 %1246, 16384
  %1642 = icmp ne i32 %1641, 0
  %1643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1644 = extractvalue %dx.types.CBufRet.f32 %1643, 0
  %1645 = select i1 %1642, float %1644, float 1.000000e+00
  %1646 = fmul fast float %1645, %1637
  %1647 = fmul fast float %1638, %1646
  %1648 = fmul fast float %1639, %1646
  %1649 = fmul fast float %1640, %1646
  br label %1650

; <label>:1650                                    ; preds = %1629, %1601
  %1651 = phi float [ %1647, %1629 ], [ 0.000000e+00, %1601 ]
  %1652 = phi float [ %1648, %1629 ], [ 0.000000e+00, %1601 ]
  %1653 = phi float [ %1649, %1629 ], [ 0.000000e+00, %1601 ]
  %1654 = fsub fast float %1651, %1175
  %1655 = fsub fast float %1652, %1176
  %1656 = fsub fast float %1653, %1177
  %1657 = fmul fast float %1654, %1398
  %1658 = fmul fast float %1655, %1398
  %1659 = fmul fast float %1656, %1398
  %1660 = fadd fast float %1657, %1175
  %1661 = fadd fast float %1658, %1176
  %1662 = fadd fast float %1659, %1177
  br label %1295

; <label>:1663                                    ; preds = %1295
  br label %1664

; <label>:1664                                    ; preds = %1663, %1059
  %1665 = phi float [ 0.000000e+00, %1059 ], [ %1296, %1663 ]
  %1666 = phi float [ %1081, %1059 ], [ %1297, %1663 ]
  %1667 = phi float [ %1079, %1059 ], [ %1298, %1663 ]
  %1668 = phi float [ %1068, %1059 ], [ %1299, %1663 ]
  %1669 = phi float [ %1069, %1059 ], [ %1300, %1663 ]
  %1670 = phi float [ %1070, %1059 ], [ %1301, %1663 ]
  %1671 = phi float [ 0.000000e+00, %1059 ], [ %1302, %1663 ]
  %1672 = phi float [ 0.000000e+00, %1059 ], [ %1303, %1663 ]
  %1673 = phi float [ %1065, %1059 ], [ %1304, %1663 ]
  %1674 = phi float [ %1066, %1059 ], [ %1305, %1663 ]
  %1675 = phi float [ %1067, %1059 ], [ %1306, %1663 ]
  %1676 = phi float [ %1071, %1059 ], [ %1307, %1663 ]
  %1677 = phi float [ %1072, %1059 ], [ %1308, %1663 ]
  %1678 = phi float [ %1073, %1059 ], [ %1309, %1663 ]
  %1679 = phi float [ %1107, %1059 ], [ %1310, %1663 ]
  %1680 = phi float [ %1108, %1059 ], [ %1311, %1663 ]
  %1681 = phi float [ %1109, %1059 ], [ %1312, %1663 ]
  %1682 = phi float [ %1077, %1059 ], [ %1313, %1663 ]
  %1683 = phi float [ %1076, %1059 ], [ %1314, %1663 ]
  %1684 = phi float [ 0.000000e+00, %1059 ], [ %1315, %1663 ]
  %1685 = phi float [ %1074, %1059 ], [ %1316, %1663 ]
  %1686 = phi float [ %1062, %1059 ], [ %1317, %1663 ]
  %1687 = phi float [ %1063, %1059 ], [ %1318, %1663 ]
  %1688 = phi float [ %1064, %1059 ], [ %1319, %1663 ]
  %1689 = call float @dx.op.dot3.f32(i32 55, float %1679, float %1680, float %1681, float %1679, float %1680, float %1681)  ; Dot3(ax,ay,az,bx,by,bz)
  %1690 = call float @dx.op.unary.f32(i32 25, float %1689)  ; Rsqrt(value)
  %1691 = fmul fast float %1690, %1679
  %1692 = fmul fast float %1690, %1680
  %1693 = fmul fast float %1690, %1681
  %1694 = fadd fast float %1684, %1075
  %1695 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1696 = call float @dx.op.dot3.f32(i32 55, float %1691, float %1692, float %1693, float %1691, float %1692, float %1693)  ; Dot3(ax,ay,az,bx,by,bz)
  %1697 = call float @dx.op.unary.f32(i32 25, float %1696)  ; Rsqrt(value)
  %1698 = fmul fast float %1697, %1691
  %1699 = fmul fast float %1697, %1692
  %1700 = fmul fast float %1697, %1693
  %1701 = fadd fast float %1685, 0xBFB99999A0000000
  %1702 = call float @dx.op.unary.f32(i32 7, float %1701)  ; Saturate(value)
  %1703 = fmul fast float %1702, 0x3FF1C71C80000000
  %1704 = call float @dx.op.binary.f32(i32 36, float %1685, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1705 = fsub fast float 1.000000e+00, %1703
  %1706 = call float @dx.op.unary.f32(i32 7, float %1705)  ; Saturate(value)
  %1707 = fmul fast float %1706, %1686
  %1708 = fmul fast float %1706, %1687
  %1709 = fmul fast float %1706, %1688
  %1710 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  %1711 = call float @dx.op.unary.f32(i32 7, float %1708)  ; Saturate(value)
  %1712 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1713 = fmul fast float %1703, %1686
  %1714 = fmul fast float %1703, %1687
  %1715 = fmul fast float %1703, %1688
  %1716 = fadd fast float %1713, %1704
  %1717 = fadd fast float %1714, %1704
  %1718 = fadd fast float %1715, %1704
  %1719 = call float @dx.op.unary.f32(i32 7, float %1716)  ; Saturate(value)
  %1720 = call float @dx.op.unary.f32(i32 7, float %1717)  ; Saturate(value)
  %1721 = call float @dx.op.unary.f32(i32 7, float %1718)  ; Saturate(value)
  %1722 = call float @dx.op.unary.f32(i32 7, float %1683)  ; Saturate(value)
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = and i32 %1724, 1
  %1726 = icmp eq i32 %1725, 0
  br i1 %1726, label %1741, label %1727

; <label>:1727                                    ; preds = %1664
  %1728 = call float @dx.op.binary.f32(i32 35, float %1711, float %1712)  ; FMax(a,b)
  %1729 = call float @dx.op.binary.f32(i32 35, float %1710, float %1728)  ; FMax(a,b)
  %1730 = fcmp fast ogt float %1729, 0.000000e+00
  %1731 = bitcast float %1729 to i32
  %1732 = sub nsw i32 2129859010, %1731
  %1733 = bitcast i32 %1732 to float
  %1734 = select i1 %1730, float %1733, float 0.000000e+00
  %1735 = fmul fast float %1710, %1673
  %1736 = fmul fast float %1711, %1674
  %1737 = fmul fast float %1712, %1675
  %1738 = fmul fast float %1735, %1734
  %1739 = fmul fast float %1736, %1734
  %1740 = fmul fast float %1737, %1734
  br label %1741

; <label>:1741                                    ; preds = %1727, %1664
  %1742 = phi float [ %1738, %1727 ], [ %1673, %1664 ]
  %1743 = phi float [ %1739, %1727 ], [ %1674, %1664 ]
  %1744 = phi float [ %1740, %1727 ], [ %1675, %1664 ]
  %1745 = call float @dx.op.binary.f32(i32 36, float %1668, float 1.270000e+02)  ; FMin(a,b)
  %1746 = call float @dx.op.binary.f32(i32 36, float %1669, float 1.270000e+02)  ; FMin(a,b)
  %1747 = call float @dx.op.binary.f32(i32 36, float %1670, float 1.270000e+02)  ; FMin(a,b)
  %1748 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.i32 %1748, 3
  %1750 = and i32 %1749, 8
  %1751 = icmp ne i32 %1750, 0
  %1752 = call float @dx.op.binary.f32(i32 35, float %1710, float %1686)  ; FMax(a,b)
  %1753 = call float @dx.op.binary.f32(i32 35, float %1711, float %1686)  ; FMax(a,b)
  %1754 = call float @dx.op.binary.f32(i32 35, float %1712, float %1686)  ; FMax(a,b)
  %1755 = call float @dx.op.dot3.f32(i32 55, float %1710, float %1711, float %1712, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1756 = select i1 %229, float %1686, float %1710
  %1757 = select i1 %229, float %1755, float %1711
  %1758 = select i1 %229, float 1.000000e+00, float %1712
  %1759 = select i1 %1751, float %1752, float %1756
  %1760 = select i1 %1751, float %1753, float %1757
  %1761 = select i1 %1751, float %1754, float %1758
  %1762 = call float @dx.op.dot3.f32(i32 55, float %1742, float %1743, float %1744, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1763 = select i1 %229, float %1762, float %1742
  %1764 = select i1 %229, float %1762, float %1743
  %1765 = select i1 %229, float %1762, float %1744
  %1766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1767 = extractvalue %dx.types.CBufRet.f32 %1766, 0
  %1768 = extractvalue %dx.types.CBufRet.f32 %1766, 1
  %1769 = extractvalue %dx.types.CBufRet.f32 %1766, 2
  %1770 = fadd fast float %1767, %138
  %1771 = fadd fast float %1768, %139
  %1772 = fadd fast float %1769, %140
  %1773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1774 = extractvalue %dx.types.CBufRet.f32 %1773, 0
  %1775 = extractvalue %dx.types.CBufRet.f32 %1773, 1
  %1776 = fsub fast float %1770, %1774
  %1777 = fsub fast float %1771, %1775
  %1778 = fmul fast float %1776, %1776
  %1779 = fmul fast float %1777, %1777
  %1780 = fadd fast float %1778, %1779
  %1781 = call float @dx.op.unary.f32(i32 24, float %1780)  ; Sqrt(value)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1773, 2
  %1783 = fcmp fast olt float %1781, %1782
  br i1 %1783, label %1784, label %1851

; <label>:1784                                    ; preds = %1741
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 0
  %1789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1789, 0
  %1791 = extractvalue %dx.types.CBufRet.f32 %1785, 1
  %1792 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %1793 = extractvalue %dx.types.CBufRet.f32 %1789, 1
  %1794 = extractvalue %dx.types.CBufRet.f32 %1785, 3
  %1795 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1796 = extractvalue %dx.types.CBufRet.f32 %1789, 3
  %1797 = fadd fast float %1794, %1770
  %1798 = fadd fast float %1795, %1771
  %1799 = fadd fast float %1796, %1772
  %1800 = fmul fast float %1797, %1786
  %1801 = call float @dx.op.tertiary.f32(i32 46, float %1798, float %1788, float %1800)  ; FMad(a,b,c)
  %1802 = call float @dx.op.tertiary.f32(i32 46, float %1799, float %1790, float %1801)  ; FMad(a,b,c)
  %1803 = fmul fast float %1797, %1791
  %1804 = call float @dx.op.tertiary.f32(i32 46, float %1798, float %1792, float %1803)  ; FMad(a,b,c)
  %1805 = call float @dx.op.tertiary.f32(i32 46, float %1799, float %1793, float %1804)  ; FMad(a,b,c)
  %1806 = fsub fast float %1802, %1794
  %1807 = fsub fast float %1805, %1795
  %1808 = fsub fast float %1806, %1774
  %1809 = fadd fast float %1808, %1782
  %1810 = fsub fast float %1807, %1775
  %1811 = fadd fast float %1810, %1782
  %1812 = extractvalue %dx.types.CBufRet.f32 %1773, 3
  %1813 = fmul fast float %1809, %1812
  %1814 = fmul fast float %1811, %1812
  %1815 = call float @dx.op.unary.f32(i32 7, float %1813)  ; Saturate(value)
  %1816 = call float @dx.op.unary.f32(i32 7, float %1814)  ; Saturate(value)
  %1817 = fsub fast float 1.000000e+00, %1815
  %1818 = fsub fast float 1.000000e+00, %1816
  %1819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %58, float %1817, float %1818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1820 = extractvalue %dx.types.ResRet.f32 %1819, 0
  %1821 = fcmp fast ugt float %1820, 0.000000e+00
  br i1 %1821, label %1822, label %2125

; <label>:1822                                    ; preds = %1784
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 2
  %1825 = fmul fast float %1824, %1820
  %1826 = extractvalue %dx.types.CBufRet.f32 %1823, 3
  %1827 = fadd fast float %1826, %1825
  %1828 = extractvalue %dx.types.CBufRet.f32 %1789, 2
  %1829 = fadd fast float %1827, %1796
  %1830 = fmul fast float %1802, %1790
  %1831 = call float @dx.op.tertiary.f32(i32 46, float %1805, float %1793, float %1830)  ; FMad(a,b,c)
  %1832 = call float @dx.op.tertiary.f32(i32 46, float %1829, float %1828, float %1831)  ; FMad(a,b,c)
  %1833 = fsub fast float %1832, %1796
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 2
  %1836 = fsub fast float %1833, %1835
  %1837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %1817, float %1818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1838 = extractvalue %dx.types.ResRet.f32 %1837, 0
  %1839 = extractvalue %dx.types.ResRet.f32 %1837, 1
  %1840 = extractvalue %dx.types.ResRet.f32 %1837, 2
  %1841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %1817, float %1818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.ResRet.f32 %1841, 1
  %1844 = extractvalue %dx.types.ResRet.f32 %1841, 2
  %1845 = fadd fast float %1842, %1838
  %1846 = fmul fast float %1845, 0x3F847AE140000000
  %1847 = fadd fast float %1843, %1839
  %1848 = fmul fast float %1847, 0x3F847AE140000000
  %1849 = fadd fast float %1844, %1840
  %1850 = fmul fast float %1849, 0x3F847AE140000000
  br label %2125

; <label>:1851                                    ; preds = %1741
  %1852 = and i32 %205, 1
  %1853 = icmp eq i32 %1852, 0
  br i1 %1853, label %2125, label %1854

; <label>:1854                                    ; preds = %1851
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 0
  %1857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.f32 %1857, 0
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 0
  %1861 = extractvalue %dx.types.CBufRet.f32 %1855, 1
  %1862 = extractvalue %dx.types.CBufRet.f32 %1857, 1
  %1863 = extractvalue %dx.types.CBufRet.f32 %1859, 1
  %1864 = extractvalue %dx.types.CBufRet.f32 %1855, 3
  %1865 = extractvalue %dx.types.CBufRet.f32 %1857, 3
  %1866 = extractvalue %dx.types.CBufRet.f32 %1859, 3
  %1867 = fadd fast float %1864, %1770
  %1868 = fadd fast float %1865, %1771
  %1869 = fadd fast float %1866, %1772
  %1870 = fmul fast float %1867, %1856
  %1871 = call float @dx.op.tertiary.f32(i32 46, float %1868, float %1858, float %1870)  ; FMad(a,b,c)
  %1872 = call float @dx.op.tertiary.f32(i32 46, float %1869, float %1860, float %1871)  ; FMad(a,b,c)
  %1873 = fmul fast float %1867, %1861
  %1874 = call float @dx.op.tertiary.f32(i32 46, float %1868, float %1862, float %1873)  ; FMad(a,b,c)
  %1875 = call float @dx.op.tertiary.f32(i32 46, float %1869, float %1863, float %1874)  ; FMad(a,b,c)
  %1876 = fsub fast float %1872, %1864
  %1877 = fsub fast float %1875, %1865
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 0
  %1880 = extractvalue %dx.types.CBufRet.f32 %1878, 1
  %1881 = extractvalue %dx.types.CBufRet.f32 %1878, 2
  %1882 = extractvalue %dx.types.CBufRet.f32 %1878, 3
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 3
  %1885 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.i32 %1885, 0
  %1887 = extractvalue %dx.types.CBufRet.i32 %1885, 1
  %1888 = udiv i32 %1887, %1886
  %1889 = fsub fast float %1876, %1879
  %1890 = fsub fast float %1877, %1880
  %1891 = call float @dx.op.binary.f32(i32 35, float %1889, float 0.000000e+00)  ; FMax(a,b)
  %1892 = call float @dx.op.binary.f32(i32 35, float %1890, float 0.000000e+00)  ; FMax(a,b)
  %1893 = call float @dx.op.binary.f32(i32 36, float %1891, float %1881)  ; FMin(a,b)
  %1894 = call float @dx.op.binary.f32(i32 36, float %1892, float %1882)  ; FMin(a,b)
  %1895 = add i32 %1886, -1
  %1896 = add i32 %1888, -1
  %1897 = fmul fast float %1893, %1884
  %1898 = fmul fast float %1894, %1884
  %1899 = fptoui float %1897 to i32
  %1900 = fptoui float %1898 to i32
  %1901 = call i32 @dx.op.binary.i32(i32 40, i32 %1899, i32 %1895)  ; UMin(a,b)
  %1902 = call i32 @dx.op.binary.i32(i32 40, i32 %1900, i32 %1896)  ; UMin(a,b)
  %1903 = mul i32 %1902, %1886
  %1904 = add i32 %1903, %1901
  %1905 = shl i32 %1904, 2
  %1906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.i32 %1906, 0
  %1908 = icmp eq i32 %1907, -1
  br i1 %1908, label %2125, label %1909

; <label>:1909                                    ; preds = %1854
  %1910 = mul i32 %1907, 148
  %1911 = add i32 %1910, 4
  %1912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.f32 %1912, 0
  %1914 = add i32 %1910, 8
  %1915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.f32 %1915, 0
  %1917 = add i32 %1910, 36
  %1918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.f32 %1918, 0
  %1920 = add i32 %1910, 60
  %1921 = add i32 %1910, 92
  %1922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1921, i32 undef)  ; BufferLoad(srv,index,wot)
  %1923 = extractvalue %dx.types.ResRet.i32 %1922, 0
  %1924 = add i32 %1910, 116
  %1925 = fsub fast float %1876, %1913
  %1926 = fsub fast float %1877, %1916
  %1927 = fmul fast float %1884, %1925
  %1928 = fmul fast float %1884, %1926
  %1929 = call float @dx.op.unary.f32(i32 7, float %1927)  ; Saturate(value)
  %1930 = call float @dx.op.unary.f32(i32 7, float %1928)  ; Saturate(value)
  %1931 = fsub fast float 1.000000e+00, %1930
  %1932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1933 = extractvalue %dx.types.CBufRet.f32 %1932, 2
  %1934 = call float @dx.op.unary.f32(i32 83, float %1929)  ; DerivCoarseX(value)
  %1935 = call float @dx.op.unary.f32(i32 83, float %1931)  ; DerivCoarseX(value)
  %1936 = call float @dx.op.unary.f32(i32 84, float %1929)  ; DerivCoarseY(value)
  %1937 = call float @dx.op.unary.f32(i32 84, float %1931)  ; DerivCoarseY(value)
  %1938 = fmul fast float %1934, %1933
  %1939 = fmul fast float %1935, %1933
  %1940 = fmul fast float %1936, %1933
  %1941 = fmul fast float %1937, %1933
  %1942 = call float @dx.op.dot2.f32(i32 54, float %1940, float %1941, float %1940, float %1941)  ; Dot2(ax,ay,bx,by)
  %1943 = call float @dx.op.dot2.f32(i32 54, float %1938, float %1939, float %1938, float %1939)  ; Dot2(ax,ay,bx,by)
  %1944 = call float @dx.op.binary.f32(i32 35, float %1943, float %1942)  ; FMax(a,b)
  %1945 = call float @dx.op.unary.f32(i32 23, float %1944)  ; Log(value)
  %1946 = fmul fast float %1945, 5.000000e-01
  %1947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1947, 1
  %1949 = fadd fast float %1948, %1946
  %1950 = call float @dx.op.binary.f32(i32 35, float %1949, float 0.000000e+00)  ; FMax(a,b)
  %1951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1952 = extractvalue %dx.types.CBufRet.f32 %1951, 3
  %1953 = fadd fast float %1952, %1950
  %1954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1955 = extractvalue %dx.types.CBufRet.f32 %1954, 3
  %1956 = fadd fast float %1953, %1955
  %1957 = add i32 %1923, 0
  %1958 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1957, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1959 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1958, i32 0)  ; GetDimensions(handle,mipLevel)
  %1960 = extractvalue %dx.types.Dimensions %1959, 0
  %1961 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1960)  ; FirstbitLo(value)
  %1962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1963 = extractvalue %dx.types.CBufRet.i32 %1962, 1
  %1964 = sub nsw i32 %1963, %1961
  %1965 = sitofp i32 %1964 to float
  %1966 = fsub fast float %1956, %1965
  %1967 = call float @dx.op.binary.f32(i32 35, float %1966, float 0.000000e+00)  ; FMax(a,b)
  %1968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1958, %dx.types.Handle %56, float %1929, float %1931, float %1919, float undef, i32 0, i32 0, i32 undef, float %1967)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1969 = extractvalue %dx.types.ResRet.f32 %1968, 0
  %1970 = fcmp ule float %1969, 0x3FE0101020000000
  %1971 = extractvalue %dx.types.CBufRet.i32 %1962, 0
  %1972 = and i32 %1971, 128
  %1973 = icmp ne i32 %1972, 0
  %1974 = and i1 %1970, %1973
  br i1 %1974, label %2125, label %1975

; <label>:1975                                    ; preds = %1909
  %1976 = add i32 %1910, 20
  %1977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 0
  %1979 = add i32 %1910, 24
  %1980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.f32 %1980, 0
  %1982 = add i32 %1910, 40
  %1983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.f32 %1983, 0
  %1985 = add i32 %1910, 96
  %1986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.i32 %1986, 0
  %1988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1989 = extractvalue %dx.types.CBufRet.f32 %1988, 2
  %1990 = fmul fast float %1989, %1929
  %1991 = fmul fast float %1989, %1931
  %1992 = extractvalue %dx.types.CBufRet.f32 %1988, 3
  %1993 = fadd fast float %1990, %1992
  %1994 = fadd fast float %1991, %1992
  %1995 = add i32 %1987, 0
  %1996 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1995, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1997 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1996, i32 0)  ; GetDimensions(handle,mipLevel)
  %1998 = extractvalue %dx.types.Dimensions %1997, 0
  %1999 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1998)  ; FirstbitLo(value)
  %2000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2001 = extractvalue %dx.types.CBufRet.i32 %2000, 1
  %2002 = sub nsw i32 %2001, %1999
  %2003 = sitofp i32 %2002 to float
  %2004 = fsub fast float %1953, %2003
  %2005 = call float @dx.op.binary.f32(i32 35, float %2004, float 0.000000e+00)  ; FMax(a,b)
  %2006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1996, %dx.types.Handle %56, float %1993, float %1994, float %1984, float undef, i32 0, i32 0, i32 undef, float %2005)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2007 = extractvalue %dx.types.ResRet.f32 %2006, 0
  %2008 = fmul fast float %2007, %1978
  %2009 = fadd fast float %2008, %1981
  %2010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2011 = extractvalue %dx.types.CBufRet.f32 %2010, 0
  %2012 = extractvalue %dx.types.CBufRet.f32 %2010, 1
  %2013 = extractvalue %dx.types.CBufRet.f32 %2010, 2
  %2014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2015 = extractvalue %dx.types.CBufRet.f32 %2014, 3
  %2016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2017 = extractvalue %dx.types.CBufRet.f32 %2016, 3
  %2018 = extractvalue %dx.types.CBufRet.f32 %2010, 3
  %2019 = fadd fast float %2015, %1876
  %2020 = fadd fast float %2017, %1877
  %2021 = fadd fast float %2009, %2018
  %2022 = fmul fast float %2019, %2011
  %2023 = call float @dx.op.tertiary.f32(i32 46, float %2020, float %2012, float %2022)  ; FMad(a,b,c)
  %2024 = call float @dx.op.tertiary.f32(i32 46, float %2021, float %2013, float %2023)  ; FMad(a,b,c)
  %2025 = fsub fast float %2024, %2018
  %2026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2027 = extractvalue %dx.types.CBufRet.f32 %2026, 2
  %2028 = fsub fast float %2025, %2027
  %2029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2030 = extractvalue %dx.types.CBufRet.i32 %2029, 0
  %2031 = call i32 @dx.op.binary.i32(i32 40, i32 %1907, i32 %2030)  ; UMin(a,b)
  %2032 = mul i32 %2031, 36
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = add i32 %2032, 4
  %2036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2037 = extractvalue %dx.types.CBufRet.f32 %2036, 0
  %2038 = fmul fast float %2037, %1929
  %2039 = fmul fast float %2037, %1931
  %2040 = extractvalue %dx.types.CBufRet.f32 %2036, 1
  %2041 = fadd fast float %2038, %2040
  %2042 = fadd fast float %2039, %2040
  %2043 = icmp eq i32 %2034, 0
  br i1 %2043, label %2112, label %2044

; <label>:2044                                    ; preds = %1975
  br label %2045

; <label>:2045                                    ; preds = %2102, %2044
  %2046 = phi float [ %2103, %2102 ], [ 0.000000e+00, %2044 ]
  %2047 = phi float [ %2104, %2102 ], [ 0.000000e+00, %2044 ]
  %2048 = phi float [ %2105, %2102 ], [ 0.000000e+00, %2044 ]
  %2049 = phi float [ %2106, %2102 ], [ 0.000000e+00, %2044 ]
  %2050 = phi float [ %2107, %2102 ], [ 0.000000e+00, %2044 ]
  %2051 = phi float [ %2108, %2102 ], [ 0.000000e+00, %2044 ]
  %2052 = phi i32 [ %2109, %2102 ], [ 0, %2044 ]
  %2053 = shl i32 %2052, 2
  %2054 = add i32 %1920, %2053
  %2055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.f32 %2055, 0
  %2057 = add i32 %1924, %2053
  %2058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.i32 %2058, 0
  %2060 = add i32 %2059, 0
  %2061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2060, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2062 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2061, i32 0)  ; GetDimensions(handle,mipLevel)
  %2063 = extractvalue %dx.types.Dimensions %2062, 0
  %2064 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2063)  ; FirstbitLo(value)
  %2065 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2066 = extractvalue %dx.types.CBufRet.i32 %2065, 1
  %2067 = sub nsw i32 %2066, %2064
  %2068 = sitofp i32 %2067 to float
  %2069 = fsub fast float %1953, %2068
  %2070 = call float @dx.op.binary.f32(i32 35, float %2069, float 0.000000e+00)  ; FMax(a,b)
  %2071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2061, %dx.types.Handle %56, float %2041, float %2042, float %2056, float undef, i32 0, i32 0, i32 undef, float %2070)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2072 = extractvalue %dx.types.ResRet.f32 %2071, 0
  %2073 = fcmp fast ogt float %2072, 0.000000e+00
  br i1 %2073, label %2074, label %2102

; <label>:2074                                    ; preds = %2045
  %2075 = add i32 %2035, %2053
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = and i32 %2077, 32767
  %2079 = mul nuw nsw i32 %2078, 928
  %2080 = add nuw nsw i32 %2079, 48
  %2081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.f32 %2081, 0
  %2083 = extractvalue %dx.types.ResRet.f32 %2081, 1
  %2084 = extractvalue %dx.types.ResRet.f32 %2081, 2
  %2085 = add nuw nsw i32 %2079, 60
  %2086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.f32 %2086, 0
  %2088 = extractvalue %dx.types.ResRet.f32 %2086, 1
  %2089 = extractvalue %dx.types.ResRet.f32 %2086, 2
  %2090 = fmul fast float %2082, %2072
  %2091 = fmul fast float %2083, %2072
  %2092 = fmul fast float %2084, %2072
  %2093 = fadd fast float %2090, %2046
  %2094 = fadd fast float %2091, %2047
  %2095 = fadd fast float %2092, %2048
  %2096 = fmul fast float %2087, %2072
  %2097 = fmul fast float %2088, %2072
  %2098 = fmul fast float %2089, %2072
  %2099 = fadd fast float %2096, %2049
  %2100 = fadd fast float %2097, %2050
  %2101 = fadd fast float %2098, %2051
  br label %2102

; <label>:2102                                    ; preds = %2074, %2045
  %2103 = phi float [ %2093, %2074 ], [ %2046, %2045 ]
  %2104 = phi float [ %2094, %2074 ], [ %2047, %2045 ]
  %2105 = phi float [ %2095, %2074 ], [ %2048, %2045 ]
  %2106 = phi float [ %2099, %2074 ], [ %2049, %2045 ]
  %2107 = phi float [ %2100, %2074 ], [ %2050, %2045 ]
  %2108 = phi float [ %2101, %2074 ], [ %2051, %2045 ]
  %2109 = add nuw i32 %2052, 1
  %2110 = icmp eq i32 %2109, %2034
  br i1 %2110, label %2111, label %2045

; <label>:2111                                    ; preds = %2102
  br label %2112

; <label>:2112                                    ; preds = %2111, %1975
  %2113 = phi float [ 0.000000e+00, %1975 ], [ %2103, %2111 ]
  %2114 = phi float [ 0.000000e+00, %1975 ], [ %2104, %2111 ]
  %2115 = phi float [ 0.000000e+00, %1975 ], [ %2105, %2111 ]
  %2116 = phi float [ 0.000000e+00, %1975 ], [ %2106, %2111 ]
  %2117 = phi float [ 0.000000e+00, %1975 ], [ %2107, %2111 ]
  %2118 = phi float [ 0.000000e+00, %1975 ], [ %2108, %2111 ]
  %2119 = fadd fast float %2116, %2113
  %2120 = fmul fast float %2119, 0x3F847AE140000000
  %2121 = fadd fast float %2117, %2114
  %2122 = fmul fast float %2121, 0x3F847AE140000000
  %2123 = fadd fast float %2118, %2115
  %2124 = fmul fast float %2123, 0x3F847AE140000000
  br label %2125

; <label>:2125                                    ; preds = %2112, %1909, %1854, %1851, %1822, %1784
  %2126 = phi float [ %1836, %1822 ], [ -1.310720e+05, %1784 ], [ %2028, %2112 ], [ -1.310720e+05, %1854 ], [ -1.310720e+05, %1909 ], [ -1.310720e+05, %1851 ]
  %2127 = phi float [ %1846, %1822 ], [ 0.000000e+00, %1784 ], [ %2120, %2112 ], [ 0.000000e+00, %1854 ], [ 0.000000e+00, %1909 ], [ 0.000000e+00, %1851 ]
  %2128 = phi float [ %1848, %1822 ], [ 0.000000e+00, %1784 ], [ %2122, %2112 ], [ 0.000000e+00, %1854 ], [ 0.000000e+00, %1909 ], [ 0.000000e+00, %1851 ]
  %2129 = phi float [ %1850, %1822 ], [ 0.000000e+00, %1784 ], [ %2124, %2112 ], [ 0.000000e+00, %1854 ], [ 0.000000e+00, %1909 ], [ 0.000000e+00, %1851 ]
  %2130 = phi i1 [ true, %1822 ], [ false, %1784 ], [ true, %2112 ], [ false, %1854 ], [ false, %1909 ], [ false, %1851 ]
  %2131 = and i32 %205, 3
  %2132 = icmp eq i32 %2131, 1
  %2133 = select i1 %2132, float 1.000000e+00, float 0.000000e+00
  %2134 = fsub fast float %2126, %140
  %2135 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2136 = select i1 %2130, float %2135, float 1.000000e+00
  %2137 = fmul fast float %2136, %2133
  %2138 = icmp eq i32 %2131, 3
  %2139 = select i1 %2138, float 1.000000e+00, float %2137
  %2140 = call float @dx.op.binary.f32(i32 35, float %1665, float %2139)  ; FMax(a,b)
  %2141 = call float @dx.op.unary.f32(i32 7, float %2140)  ; Saturate(value)
  %2142 = fcmp fast une float %2141, 0.000000e+00
  %2143 = call float @dx.op.dot3.f32(i32 55, float %138, float %139, float %140, float %138, float %139, float %140)  ; Dot3(ax,ay,az,bx,by,bz)
  %2144 = call float @dx.op.unary.f32(i32 25, float %2143)  ; Rsqrt(value)
  br i1 %2142, label %2152, label %2145

; <label>:2145                                    ; preds = %2125
  %2146 = fmul fast float %2144, %138
  %2147 = fmul fast float %2144, %139
  %2148 = fmul fast float %2144, %140
  %2149 = fsub fast float -0.000000e+00, %2146
  %2150 = fsub fast float -0.000000e+00, %2147
  %2151 = fsub fast float -0.000000e+00, %2148
  br label %2320

; <label>:2152                                    ; preds = %2125
  %2153 = fmul fast float %138, %2144
  %2154 = fsub fast float -0.000000e+00, %2153
  %2155 = fmul fast float %139, %2144
  %2156 = fsub fast float -0.000000e+00, %2155
  %2157 = fmul fast float %140, %2144
  %2158 = fsub fast float -0.000000e+00, %2157
  %2159 = call float @dx.op.dot3.f32(i32 55, float %2154, float %2156, float %2158, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %2160 = fmul fast float %2141, 2.500000e+00
  %2161 = call float @dx.op.unary.f32(i32 7, float %2160)  ; Saturate(value)
  %2162 = fmul fast float %2141, 0x4013FFFFE0000000
  %2163 = fadd fast float %2162, 0xBFFFFFFFE0000000
  %2164 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2165 = fmul fast float %2141, 0x4004000020000000
  %2166 = fadd fast float %2165, 0xBFF8000040000000
  %2167 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  %2168 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2169 = fmul fast float %1701, 1.000000e+01
  %2170 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2171 = fmul fast float %2170, 2.000000e+00
  %2172 = fsub fast float 3.000000e+00, %2171
  %2173 = fmul fast float %2170, %2170
  %2174 = fmul fast float %2173, %2172
  %2175 = fsub fast float 1.000000e+00, %2174
  %2176 = fsub fast float 0x3FE3333340000000, %1722
  %2177 = fmul fast float %2176, 0x400AAAAAA0000000
  %2178 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  %2179 = fmul fast float %2175, %2178
  %2180 = fmul fast float %1759, 0x3FEA2B8620000000
  %2181 = fmul fast float %1760, 0x3FEA2B8620000000
  %2182 = fmul fast float %1761, 0x3FEA2B8620000000
  %2183 = fadd fast float %2180, 0x3FC81DFBA0000000
  %2184 = fmul fast float %2183, %1759
  %2185 = fadd fast float %2184, 0x3F910E6020000000
  %2186 = fadd fast float %2181, 0x3FC81DFBA0000000
  %2187 = fmul fast float %2186, %1760
  %2188 = fadd fast float %2187, 0x3F910E6020000000
  %2189 = fadd fast float %2182, 0x3FC81DFBA0000000
  %2190 = fmul fast float %2189, %1761
  %2191 = fadd fast float %2190, 0x3F910E6020000000
  %2192 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2193 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2194 = call float @dx.op.unary.f32(i32 7, float %2191)  ; Saturate(value)
  %2195 = fsub fast float %2192, %1759
  %2196 = fsub fast float %2193, %1760
  %2197 = fsub fast float %2194, %1761
  %2198 = fmul fast float %2195, %2168
  %2199 = fmul fast float %2198, %2179
  %2200 = fmul fast float %2196, %2168
  %2201 = fmul fast float %2200, %2179
  %2202 = fmul fast float %2197, %2168
  %2203 = fmul fast float %2202, %2179
  %2204 = fadd fast float %2199, %1759
  %2205 = fadd fast float %2201, %1760
  %2206 = fadd fast float %2203, %1761
  %2207 = fmul fast float %1682, %1682
  %2208 = fmul fast float %2207, %2207
  %2209 = fadd fast float %2164, 1.000000e+00
  %2210 = fsub fast float %2209, %2179
  %2211 = call float @dx.op.unary.f32(i32 7, float %2210)  ; Saturate(value)
  %2212 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2213 = call float @dx.op.unary.f32(i32 7, float %2212)  ; Saturate(value)
  %2214 = fsub fast float 1.000000e+00, %2208
  %2215 = call float @dx.op.binary.f32(i32 36, float %2211, float %2214)  ; FMin(a,b)
  %2216 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2217 = call float @dx.op.binary.f32(i32 35, float %2215, float %2216)  ; FMax(a,b)
  %2218 = fadd fast float %2213, 0xBFE4CCCCC0000000
  %2219 = fmul fast float %2218, 0x4006DB6DA0000000
  %2220 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  %2221 = fmul fast float %2220, 2.000000e+00
  %2222 = fsub fast float 3.000000e+00, %2221
  %2223 = bitcast float %1719 to i32
  %2224 = ashr i32 %2223, 1
  %2225 = add nsw i32 %2224, 532487669
  %2226 = bitcast i32 %2225 to float
  %2227 = fsub fast float 1.000000e+00, %2226
  %2228 = bitcast float %2227 to i32
  %2229 = sub nsw i32 2129859010, %2228
  %2230 = bitcast i32 %2229 to float
  %2231 = fmul fast float %2230, 2.000000e+00
  %2232 = bitcast float %1720 to i32
  %2233 = ashr i32 %2232, 1
  %2234 = add nsw i32 %2233, 532487669
  %2235 = bitcast i32 %2234 to float
  %2236 = fsub fast float 1.000000e+00, %2235
  %2237 = bitcast float %2236 to i32
  %2238 = sub nsw i32 2129859010, %2237
  %2239 = bitcast i32 %2238 to float
  %2240 = fmul fast float %2239, 2.000000e+00
  %2241 = bitcast float %1721 to i32
  %2242 = ashr i32 %2241, 1
  %2243 = add nsw i32 %2242, 532487669
  %2244 = bitcast i32 %2243 to float
  %2245 = fsub fast float 1.000000e+00, %2244
  %2246 = bitcast float %2245 to i32
  %2247 = sub nsw i32 2129859010, %2246
  %2248 = bitcast i32 %2247 to float
  %2249 = fmul fast float %2248, 2.000000e+00
  %2250 = fsub fast float 0x4002A9FBE0000000, %2231
  %2251 = fadd fast float %2231, 0x3FD54FDF00000000
  %2252 = bitcast float %2251 to i32
  %2253 = sub nsw i32 2129859010, %2252
  %2254 = bitcast i32 %2253 to float
  %2255 = fmul fast float %2254, %2250
  %2256 = fmul fast float %2255, %2255
  %2257 = fsub fast float 0x4002A9FBE0000000, %2240
  %2258 = fadd fast float %2240, 0x3FD54FDF00000000
  %2259 = bitcast float %2258 to i32
  %2260 = sub nsw i32 2129859010, %2259
  %2261 = bitcast i32 %2260 to float
  %2262 = fmul fast float %2261, %2257
  %2263 = fmul fast float %2262, %2262
  %2264 = fsub fast float 0x4002A9FBE0000000, %2249
  %2265 = fadd fast float %2249, 0x3FD54FDF00000000
  %2266 = bitcast float %2265 to i32
  %2267 = sub nsw i32 2129859010, %2266
  %2268 = bitcast i32 %2267 to float
  %2269 = fmul fast float %2268, %2264
  %2270 = fmul fast float %2269, %2269
  %2271 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2256)  ; FMax(a,b)
  %2272 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2263)  ; FMax(a,b)
  %2273 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2270)  ; FMax(a,b)
  %2274 = fsub fast float 1.000000e+00, %2159
  %2275 = fadd fast float %2274, %2175
  %2276 = call float @dx.op.unary.f32(i32 7, float %2275)  ; Saturate(value)
  %2277 = fsub fast float 1.000000e+00, %2139
  %2278 = fmul fast float %2217, %2277
  %2279 = fmul fast float %2220, %2220
  %2280 = fmul fast float %2279, %2278
  %2281 = fmul fast float %2280, %2222
  %2282 = fmul fast float %2277, 0xBFE99999A0000000
  %2283 = fmul fast float %2282, %2168
  %2284 = fmul fast float %2283, %2179
  %2285 = fadd fast float %2284, 1.000000e+00
  %2286 = fadd fast float %1722, -1.000000e+00
  %2287 = fmul fast float %2285, %2286
  %2288 = fadd fast float %2287, 1.000000e+00
  %2289 = fsub fast float %2271, %1719
  %2290 = fsub fast float %2272, %1720
  %2291 = fsub fast float %2273, %1721
  %2292 = fmul fast float %2281, %2289
  %2293 = fmul fast float %2281, %2290
  %2294 = fmul fast float %2281, %2291
  %2295 = fadd fast float %2292, %1719
  %2296 = fadd fast float %2293, %1720
  %2297 = fadd fast float %2294, %1721
  %2298 = fsub fast float %70, %1698
  %2299 = fsub fast float %71, %1699
  %2300 = fsub fast float %72, %1700
  %2301 = fmul fast float %2281, %2298
  %2302 = fmul fast float %2281, %2299
  %2303 = fmul fast float %2281, %2300
  %2304 = fadd fast float %2301, %1698
  %2305 = fadd fast float %2302, %1699
  %2306 = fadd fast float %2303, %1700
  %2307 = fmul fast float %2281, %2276
  %2308 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  %2309 = fsub fast float 1.000000e+00, %2308
  %2310 = fmul fast float %2307, %2309
  %2311 = fadd fast float %2310, %2308
  %2312 = fsub fast float 1.000000e+00, %1682
  %2313 = fmul fast float %2281, %2312
  %2314 = fadd fast float %2313, %1682
  %2315 = call float @dx.op.dot3.f32(i32 55, float %2304, float %2305, float %2306, float %2304, float %2305, float %2306)  ; Dot3(ax,ay,az,bx,by,bz)
  %2316 = call float @dx.op.unary.f32(i32 25, float %2315)  ; Rsqrt(value)
  %2317 = fmul fast float %2304, %2316
  %2318 = fmul fast float %2305, %2316
  %2319 = fmul fast float %2306, %2316
  br label %2320

; <label>:2320                                    ; preds = %2152, %2145
  %2321 = phi float [ %2151, %2145 ], [ %2158, %2152 ]
  %2322 = phi float [ %2150, %2145 ], [ %2156, %2152 ]
  %2323 = phi float [ %2149, %2145 ], [ %2154, %2152 ]
  %2324 = phi float [ %2148, %2145 ], [ %2157, %2152 ]
  %2325 = phi float [ %2147, %2145 ], [ %2155, %2152 ]
  %2326 = phi float [ %2146, %2145 ], [ %2153, %2152 ]
  %2327 = phi float [ %1719, %2145 ], [ %2295, %2152 ]
  %2328 = phi float [ %1720, %2145 ], [ %2296, %2152 ]
  %2329 = phi float [ %1721, %2145 ], [ %2297, %2152 ]
  %2330 = phi float [ %1698, %2145 ], [ %2317, %2152 ]
  %2331 = phi float [ %1699, %2145 ], [ %2318, %2152 ]
  %2332 = phi float [ %1700, %2145 ], [ %2319, %2152 ]
  %2333 = phi float [ %1759, %2145 ], [ %2204, %2152 ]
  %2334 = phi float [ %1760, %2145 ], [ %2205, %2152 ]
  %2335 = phi float [ %1761, %2145 ], [ %2206, %2152 ]
  %2336 = phi float [ %1722, %2145 ], [ %2311, %2152 ]
  %2337 = phi float [ %1682, %2145 ], [ %2314, %2152 ]
  %2338 = fsub fast float -0.000000e+00, %140
  %2339 = select i1 %229, float 0.000000e+00, float %2329
  %2340 = call float @dx.op.dot3.f32(i32 55, float %2330, float %2331, float %2332, float %2323, float %2322, float %2321)  ; Dot3(ax,ay,az,bx,by,bz)
  %2341 = call float @dx.op.unary.f32(i32 7, float %2340)  ; Saturate(value)
  %2342 = call float @dx.op.dot3.f32(i32 55, float %2326, float %2325, float %2324, float %2330, float %2331, float %2332)  ; Dot3(ax,ay,az,bx,by,bz)
  %2343 = fmul fast float %2342, 2.000000e+00
  %2344 = fmul fast float %2343, %2330
  %2345 = fmul fast float %2343, %2331
  %2346 = fmul fast float %2343, %2332
  %2347 = fsub fast float %2326, %2344
  %2348 = fsub fast float %2325, %2345
  %2349 = fsub fast float %2324, %2346
  %2350 = call float @dx.op.binary.f32(i32 36, float %2337, float 1.000000e+00)  ; FMin(a,b)
  %2351 = fsub fast float 1.000000e+00, %2337
  %2352 = bitcast float %2351 to i32
  %2353 = sub nsw i32 2129859010, %2352
  %2354 = bitcast i32 %2353 to float
  %2355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.f32 %2355, 0
  %2357 = extractvalue %dx.types.CBufRet.f32 %2355, 1
  %2358 = fadd fast float %2356, %138
  %2359 = fadd fast float %2357, %139
  %2360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2361 = extractvalue %dx.types.CBufRet.i32 %2360, 0
  %2362 = icmp eq i32 %2361, 1
  br i1 %2362, label %2363, label %2398

; <label>:2363                                    ; preds = %2320
  %2364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.f32 %2364, 0
  %2366 = extractvalue %dx.types.CBufRet.f32 %2364, 1
  %2367 = fsub fast float %2358, %2365
  %2368 = fsub fast float %2359, %2366
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.CBufRet.f32 %2369, 1
  %2372 = fmul fast float %2367, %2370
  %2373 = fmul fast float %2368, %2371
  %2374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %2372, float %2373, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2375 = extractvalue %dx.types.ResRet.f32 %2374, 0
  %2376 = fcmp fast ogt float %2375, 0.000000e+00
  %2377 = extractvalue %dx.types.CBufRet.i32 %2360, 3
  %2378 = icmp ne i32 %2377, 0
  %2379 = and i1 %2376, %2378
  br i1 %2379, label %2380, label %2398, !dx.controlflow.hints !101

; <label>:2380                                    ; preds = %2363
  %2381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2382 = extractvalue %dx.types.CBufRet.f32 %2381, 0
  %2383 = extractvalue %dx.types.CBufRet.f32 %2381, 1
  %2384 = fsub fast float %2358, %2382
  %2385 = fsub fast float %2359, %2383
  %2386 = fmul fast float %2384, %2384
  %2387 = fmul fast float %2385, %2385
  %2388 = fadd fast float %2386, %2387
  %2389 = uitofp i32 %2377 to float
  %2390 = fmul fast float %2389, %2389
  %2391 = fcmp fast ogt float %2388, %2390
  br i1 %2391, label %2398, label %2392

; <label>:2392                                    ; preds = %2380
  %2393 = call float @dx.op.unary.f32(i32 24, float %2388)  ; Sqrt(value)
  %2394 = fsub fast float %2389, %2393
  %2395 = fmul fast float %2394, 0x3F75555560000000
  %2396 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  %2397 = call float @dx.op.binary.f32(i32 36, float %2396, float %2375)  ; FMin(a,b)
  br label %2398

; <label>:2398                                    ; preds = %2392, %2380, %2363, %2320
  %2399 = phi float [ 1.000000e+00, %2320 ], [ %2397, %2392 ], [ %2375, %2363 ], [ 0.000000e+00, %2380 ]
  %2400 = fcmp fast ogt float %2399, 0.000000e+00
  br i1 %2400, label %2401, label %2499, !dx.controlflow.hints !102

; <label>:2401                                    ; preds = %2398
  %2402 = fadd fast float %169, 5.000000e-01
  %2403 = call float @dx.op.unary.f32(i32 27, float %2402)  ; Round_ni(value)
  %2404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %58, float %167, float %168, float %2403, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2405 = extractvalue %dx.types.ResRet.f32 %2404, 0
  %2406 = extractvalue %dx.types.ResRet.f32 %2404, 1
  %2407 = extractvalue %dx.types.ResRet.f32 %2404, 2
  %2408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2409 = extractvalue %dx.types.CBufRet.f32 %2408, 3
  %2410 = fmul fast float %2409, %2405
  %2411 = fmul fast float %2409, %2406
  %2412 = fmul fast float %2409, %2407
  %2413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %58, float %167, float %168, float %2403, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2414 = extractvalue %dx.types.ResRet.f32 %2413, 0
  %2415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %58, float %167, float %168, float %2403, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2416 = extractvalue %dx.types.ResRet.f32 %2415, 0
  %2417 = extractvalue %dx.types.ResRet.f32 %2415, 1
  %2418 = fmul fast float %2416, 2.000000e+00
  %2419 = fmul fast float %2417, 2.000000e+00
  %2420 = fadd fast float %2418, -1.000000e+00
  %2421 = fadd fast float %2419, -1.000000e+00
  %2422 = fadd fast float %2420, %2421
  %2423 = fmul fast float %2422, 5.000000e-01
  %2424 = fsub fast float %2420, %2421
  %2425 = fmul fast float %2424, 5.000000e-01
  %2426 = call float @dx.op.unary.f32(i32 6, float %2423)  ; FAbs(value)
  %2427 = fsub fast float 1.000000e+00, %2426
  %2428 = call float @dx.op.unary.f32(i32 6, float %2425)  ; FAbs(value)
  %2429 = fsub fast float %2427, %2428
  %2430 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2429)  ; FMax(a,b)
  %2431 = call float @dx.op.dot3.f32(i32 55, float %2423, float %2425, float %2430, float %2423, float %2425, float %2430)  ; Dot3(ax,ay,az,bx,by,bz)
  %2432 = bitcast float %2431 to i32
  %2433 = ashr i32 %2432, 1
  %2434 = sub nsw i32 1597250115, %2433
  %2435 = bitcast i32 %2434 to float
  %2436 = fmul fast float %2435, %2423
  %2437 = fmul fast float %2435, %2425
  %2438 = fmul fast float %2435, %2430
  %2439 = fsub fast float 1.000000e+00, %2414
  %2440 = fdiv fast float %2439, %2438
  %2441 = fmul fast float %2438, %70
  %2442 = fmul fast float %2438, %71
  %2443 = fmul fast float %2438, %72
  %2444 = fmul fast float %2436, %66
  %2445 = fmul fast float %2436, %67
  %2446 = fmul fast float %2436, %68
  %2447 = fadd fast float %2441, %2444
  %2448 = fadd fast float %2442, %2445
  %2449 = fadd fast float %2443, %2446
  %2450 = fmul fast float %2437, %102
  %2451 = fmul fast float %2437, %103
  %2452 = fmul fast float %2437, %104
  %2453 = fadd fast float %2447, %2450
  %2454 = fadd fast float %2448, %2451
  %2455 = fadd fast float %2449, %2452
  %2456 = call float @dx.op.dot3.f32(i32 55, float %2453, float %2454, float %2455, float %2453, float %2454, float %2455)  ; Dot3(ax,ay,az,bx,by,bz)
  %2457 = call float @dx.op.unary.f32(i32 25, float %2456)  ; Rsqrt(value)
  %2458 = fmul fast float %2453, %2457
  %2459 = fmul fast float %2454, %2457
  %2460 = fmul fast float %2455, %2457
  %2461 = call float @dx.op.dot3.f32(i32 55, float %2330, float %2331, float %2332, float %2330, float %2331, float %2332)  ; Dot3(ax,ay,az,bx,by,bz)
  %2462 = call float @dx.op.unary.f32(i32 7, float %2461)  ; Saturate(value)
  %2463 = fmul fast float %2462, 5.000000e-01
  %2464 = fadd fast float %2463, 5.000000e-01
  %2465 = fmul fast float %2464, %2414
  %2466 = call float @dx.op.dot3.f32(i32 55, float %2330, float %2331, float %2332, float %2458, float %2459, float %2460)  ; Dot3(ax,ay,az,bx,by,bz)
  %2467 = call float @dx.op.unary.f32(i32 7, float %2466)  ; Saturate(value)
  %2468 = fmul fast float %2467, %2440
  %2469 = fadd fast float %2465, %2468
  %2470 = fsub fast float 5.000000e-01, %2463
  %2471 = fmul fast float %2470, %2333
  %2472 = fmul fast float %2470, %2334
  %2473 = fmul fast float %2470, %2335
  %2474 = fadd fast float %2469, %2471
  %2475 = fmul fast float %2474, %2410
  %2476 = fadd fast float %2469, %2472
  %2477 = fmul fast float %2476, %2411
  %2478 = fadd fast float %2469, %2473
  %2479 = fmul fast float %2478, %2412
  %2480 = call float @dx.op.dot3.f32(i32 55, float %2347, float %2348, float %2349, float %2330, float %2331, float %2332)  ; Dot3(ax,ay,az,bx,by,bz)
  %2481 = call float @dx.op.unary.f32(i32 7, float %2480)  ; Saturate(value)
  %2482 = fmul fast float %2481, 5.000000e-01
  %2483 = fadd fast float %2482, 5.000000e-01
  %2484 = fmul fast float %2483, %2414
  %2485 = call float @dx.op.dot3.f32(i32 55, float %2347, float %2348, float %2349, float %2458, float %2459, float %2460)  ; Dot3(ax,ay,az,bx,by,bz)
  %2486 = call float @dx.op.unary.f32(i32 7, float %2485)  ; Saturate(value)
  %2487 = fmul fast float %2486, %2440
  %2488 = fadd fast float %2484, %2487
  %2489 = fsub fast float 5.000000e-01, %2482
  %2490 = fmul fast float %2489, %2333
  %2491 = fmul fast float %2489, %2334
  %2492 = fmul fast float %2489, %2335
  %2493 = fadd fast float %2488, %2490
  %2494 = fmul fast float %2493, %2410
  %2495 = fadd fast float %2488, %2491
  %2496 = fmul fast float %2495, %2411
  %2497 = fadd fast float %2488, %2492
  %2498 = fmul fast float %2497, %2412
  br label %2499

; <label>:2499                                    ; preds = %2401, %2398
  %2500 = phi float [ %2494, %2401 ], [ 0.000000e+00, %2398 ]
  %2501 = phi float [ %2496, %2401 ], [ 0.000000e+00, %2398 ]
  %2502 = phi float [ %2498, %2401 ], [ 0.000000e+00, %2398 ]
  %2503 = phi float [ %2475, %2401 ], [ 0.000000e+00, %2398 ]
  %2504 = phi float [ %2477, %2401 ], [ 0.000000e+00, %2398 ]
  %2505 = phi float [ %2479, %2401 ], [ 0.000000e+00, %2398 ]
  %2506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2507 = extractvalue %dx.types.CBufRet.f32 %2506, 0
  %2508 = fcmp fast ogt float %2507, 0.000000e+00
  %2509 = and i1 %2400, %2508
  br i1 %2509, label %2510, label %2714, !dx.controlflow.hints !103

; <label>:2510                                    ; preds = %2499
  %2511 = extractvalue %dx.types.CBufRet.f32 %2355, 2
  %2512 = fadd fast float %2511, %140
  %2513 = fmul fast float %2330, 3.200000e+01
  %2514 = fmul fast float %2331, 3.200000e+01
  %2515 = fadd fast float %2358, %2513
  %2516 = fadd fast float %2359, %2514
  %2517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2518 = extractvalue %dx.types.CBufRet.f32 %2517, 0
  %2519 = extractvalue %dx.types.CBufRet.f32 %2517, 1
  %2520 = fsub fast float %2515, %2518
  %2521 = fsub fast float %2516, %2519
  %2522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2523 = extractvalue %dx.types.CBufRet.f32 %2522, 0
  %2524 = extractvalue %dx.types.CBufRet.f32 %2522, 1
  %2525 = fmul fast float %2520, %2523
  %2526 = fmul fast float %2521, %2524
  %2527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2528 = extractvalue %dx.types.CBufRet.f32 %2527, 0
  %2529 = extractvalue %dx.types.CBufRet.f32 %2527, 1
  %2530 = fsub fast float %2358, %2528
  %2531 = fsub fast float %2359, %2529
  %2532 = fmul fast float %2530, %2530
  %2533 = fmul fast float %2531, %2531
  %2534 = fadd fast float %2532, %2533
  %2535 = call float @dx.op.unary.f32(i32 24, float %2534)  ; Sqrt(value)
  %2536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2537 = extractvalue %dx.types.CBufRet.f32 %2536, 0
  %2538 = extractvalue %dx.types.CBufRet.f32 %2536, 1
  %2539 = fsub fast float %2535, %2537
  %2540 = fdiv fast float %2539, %2538
  %2541 = call float @dx.op.unary.f32(i32 7, float %2540)  ; Saturate(value)
  %2542 = fmul fast float %2541, 2.000000e+00
  %2543 = fsub fast float 3.000000e+00, %2542
  %2544 = fmul fast float %2541, %2541
  %2545 = fmul fast float %2544, %2543
  %2546 = fcmp fast oge float %2525, 0.000000e+00
  %2547 = fcmp fast ole float %2525, 1.000000e+00
  %2548 = and i1 %2547, %2546
  %2549 = fcmp fast oge float %2526, 0.000000e+00
  %2550 = and i1 %2549, %2548
  %2551 = fcmp fast ole float %2526, 1.000000e+00
  %2552 = and i1 %2551, %2550
  %2553 = fcmp fast ogt float %2545, 0.000000e+00
  %2554 = and i1 %2553, %2552
  br i1 %2554, label %2555, label %2678, !dx.controlflow.hints !104

; <label>:2555                                    ; preds = %2510
  %2556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2557 = extractvalue %dx.types.CBufRet.f32 %2556, 2
  %2558 = extractvalue %dx.types.CBufRet.f32 %2556, 3
  %2559 = fmul fast float %2557, %2525
  %2560 = fmul fast float %2558, %2526
  %2561 = call float @dx.op.unary.f32(i32 27, float %2559)  ; Round_ni(value)
  %2562 = call float @dx.op.unary.f32(i32 27, float %2560)  ; Round_ni(value)
  %2563 = fptosi float %2561 to i32
  %2564 = fptosi float %2562 to i32
  %2565 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2563, i32 %2564, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = lshr i32 %2566, 16
  %2568 = icmp eq i32 %2567, 65535
  br i1 %2568, label %2678, label %2569

; <label>:2569                                    ; preds = %2555
  %2570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2571 = extractvalue %dx.types.CBufRet.f32 %2570, 0
  %2572 = fmul fast float %2571, %2525
  %2573 = extractvalue %dx.types.CBufRet.f32 %2570, 1
  %2574 = fadd fast float %2572, %2573
  %2575 = extractvalue %dx.types.CBufRet.f32 %2570, 2
  %2576 = fmul fast float %2575, %2526
  %2577 = extractvalue %dx.types.CBufRet.f32 %2570, 3
  %2578 = fadd fast float %2576, %2577
  %2579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2574, float %2578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2580 = extractvalue %dx.types.ResRet.f32 %2579, 0
  %2581 = extractvalue %dx.types.ResRet.f32 %2579, 1
  %2582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2583 = extractvalue %dx.types.CBufRet.f32 %2582, 1
  %2584 = extractvalue %dx.types.CBufRet.f32 %2582, 0
  %2585 = fsub fast float %2583, %2584
  %2586 = fmul fast float %2585, %2580
  %2587 = fadd fast float %2586, %2584
  %2588 = extractvalue %dx.types.CBufRet.f32 %2582, 3
  %2589 = extractvalue %dx.types.CBufRet.f32 %2582, 2
  %2590 = fsub fast float %2588, %2589
  %2591 = fmul fast float %2590, %2581
  %2592 = fadd fast float %2591, %2589
  %2593 = fsub fast float %2512, %2587
  %2594 = fsub fast float %2592, %2587
  %2595 = fdiv fast float %2593, %2594
  %2596 = call float @dx.op.unary.f32(i32 7, float %2595)  ; Saturate(value)
  %2597 = extractvalue %dx.types.CBufRet.f32 %2506, 1
  %2598 = extractvalue %dx.types.CBufRet.f32 %2556, 0
  %2599 = extractvalue %dx.types.CBufRet.f32 %2556, 1
  %2600 = fmul fast float %2598, %2525
  %2601 = fmul fast float %2599, %2526
  %2602 = fmul fast float %2600, 1.250000e-01
  %2603 = fmul fast float %2601, 1.250000e-01
  %2604 = call float @dx.op.unary.f32(i32 27, float %2602)  ; Round_ni(value)
  %2605 = call float @dx.op.unary.f32(i32 27, float %2603)  ; Round_ni(value)
  %2606 = fmul fast float %2604, 8.000000e+00
  %2607 = fmul fast float %2605, 8.000000e+00
  %2608 = fsub fast float %2600, %2606
  %2609 = fsub fast float %2601, %2607
  %2610 = fadd fast float %2608, 5.000000e-01
  %2611 = fadd fast float %2609, 5.000000e-01
  %2612 = and i32 %2567, 255
  %2613 = lshr i32 %2566, 24
  %2614 = mul nuw nsw i32 %2612, 9
  %2615 = uitofp i32 %2614 to float
  %2616 = mul nuw nsw i32 %2613, 9
  %2617 = uitofp i32 %2616 to float
  %2618 = fadd fast float %2610, %2615
  %2619 = fadd fast float %2611, %2617
  %2620 = fdiv fast float %2618, %2507
  %2621 = fdiv fast float %2619, %2597
  %2622 = fmul fast float %2596, 4.375000e-01
  %2623 = fadd fast float %2622, 3.125000e-02
  %2624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2620, float %2621, float %2623, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2625 = extractvalue %dx.types.ResRet.f32 %2624, 0
  %2626 = extractvalue %dx.types.ResRet.f32 %2624, 1
  %2627 = extractvalue %dx.types.ResRet.f32 %2624, 2
  %2628 = fadd fast float %2622, 5.312500e-01
  %2629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2620, float %2621, float %2628, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2630 = extractvalue %dx.types.ResRet.f32 %2629, 0
  %2631 = extractvalue %dx.types.ResRet.f32 %2629, 1
  %2632 = extractvalue %dx.types.ResRet.f32 %2629, 2
  %2633 = fmul fast float %2630, 2.000000e+00
  %2634 = fmul fast float %2631, 2.000000e+00
  %2635 = fmul fast float %2632, 2.000000e+00
  %2636 = fadd fast float %2633, -1.000000e+00
  %2637 = fadd fast float %2634, -1.000000e+00
  %2638 = fadd fast float %2635, -1.000000e+00
  %2639 = fmul fast float %2636, %2636
  %2640 = fmul fast float %2637, %2637
  %2641 = fadd fast float %2639, %2640
  %2642 = fmul fast float %2638, %2638
  %2643 = fadd fast float %2641, %2642
  %2644 = call float @dx.op.unary.f32(i32 24, float %2643)  ; Sqrt(value)
  %2645 = fcmp fast ogt float %2644, 0.000000e+00
  br i1 %2645, label %2646, label %2650

; <label>:2646                                    ; preds = %2569
  %2647 = fdiv fast float %2636, %2644
  %2648 = fdiv fast float %2637, %2644
  %2649 = fdiv fast float %2638, %2644
  br label %2650

; <label>:2650                                    ; preds = %2646, %2569
  %2651 = phi float [ %2647, %2646 ], [ 0.000000e+00, %2569 ]
  %2652 = phi float [ %2648, %2646 ], [ 0.000000e+00, %2569 ]
  %2653 = phi float [ %2649, %2646 ], [ 0.000000e+00, %2569 ]
  %2654 = call float @dx.op.dot3.f32(i32 55, float %2651, float %2652, float %2653, float %2330, float %2331, float %2332)  ; Dot3(ax,ay,az,bx,by,bz)
  %2655 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2654)  ; FMax(a,b)
  %2656 = fmul fast float %2655, 0x400C5BF8A0000000
  %2657 = fmul fast float %2625, %2545
  %2658 = fmul fast float %2657, %2656
  %2659 = fmul fast float %2626, %2545
  %2660 = fmul fast float %2659, %2656
  %2661 = fmul fast float %2627, %2545
  %2662 = fmul fast float %2661, %2656
  %2663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2664 = extractvalue %dx.types.CBufRet.f32 %2663, 3
  %2665 = fmul fast float %2658, %2664
  %2666 = fmul fast float %2660, %2664
  %2667 = fmul fast float %2662, %2664
  %2668 = fcmp fast ogt float %2512, %2592
  br i1 %2668, label %2669, label %2678

; <label>:2669                                    ; preds = %2650
  %2670 = fmul fast float %2594, 0x3FC24924A0000000
  %2671 = fsub fast float %2512, %2592
  %2672 = fdiv fast float %2671, %2670
  %2673 = call float @dx.op.unary.f32(i32 7, float %2672)  ; Saturate(value)
  %2674 = fsub fast float 1.000000e+00, %2673
  %2675 = fmul fast float %2674, %2665
  %2676 = fmul fast float %2674, %2666
  %2677 = fmul fast float %2674, %2667
  br label %2678

; <label>:2678                                    ; preds = %2669, %2650, %2555, %2510
  %2679 = phi float [ %2677, %2669 ], [ %2667, %2650 ], [ 0.000000e+00, %2555 ], [ 0.000000e+00, %2510 ]
  %2680 = phi float [ %2676, %2669 ], [ %2666, %2650 ], [ 0.000000e+00, %2555 ], [ 0.000000e+00, %2510 ]
  %2681 = phi float [ %2675, %2669 ], [ %2665, %2650 ], [ 0.000000e+00, %2555 ], [ 0.000000e+00, %2510 ]
  %2682 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2681)  ; FMax(a,b)
  %2683 = fmul fast float %2682, 0x3FD20DD760000000
  %2684 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2347, float %2348, float %2349)  ; Dot3(ax,ay,az,bx,by,bz)
  %2685 = fmul fast float %2684, 0x3FDF454380000000
  %2686 = fmul fast float %2684, %2684
  %2687 = fmul fast float %2686, 0x3FEE471020000000
  %2688 = fadd fast float %2687, 0xBFD42F6020000000
  %2689 = call float @dx.op.dot3.f32(i32 55, float %2682, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2685, float %2688)  ; Dot3(ax,ay,az,bx,by,bz)
  %2690 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2680)  ; FMax(a,b)
  %2691 = fmul fast float %2690, 0x3FD20DD760000000
  %2692 = call float @dx.op.dot3.f32(i32 55, float %2690, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2685, float %2688)  ; Dot3(ax,ay,az,bx,by,bz)
  %2693 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2679)  ; FMax(a,b)
  %2694 = fmul fast float %2693, 0x3FD20DD760000000
  %2695 = call float @dx.op.dot3.f32(i32 55, float %2693, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2685, float %2688)  ; Dot3(ax,ay,az,bx,by,bz)
  %2696 = call float @dx.op.binary.f32(i32 35, float %2683, float 0.000000e+00)  ; FMax(a,b)
  %2697 = call float @dx.op.binary.f32(i32 35, float %2691, float 0.000000e+00)  ; FMax(a,b)
  %2698 = call float @dx.op.binary.f32(i32 35, float %2694, float 0.000000e+00)  ; FMax(a,b)
  %2699 = call float @dx.op.binary.f32(i32 35, float %2689, float 0.000000e+00)  ; FMax(a,b)
  %2700 = call float @dx.op.binary.f32(i32 35, float %2692, float 0.000000e+00)  ; FMax(a,b)
  %2701 = call float @dx.op.binary.f32(i32 35, float %2695, float 0.000000e+00)  ; FMax(a,b)
  %2702 = fmul fast float %2696, %2399
  %2703 = fmul fast float %2697, %2399
  %2704 = fmul fast float %2698, %2399
  %2705 = fadd fast float %2702, %2503
  %2706 = fadd fast float %2703, %2504
  %2707 = fadd fast float %2704, %2505
  %2708 = fmul fast float %2699, %2399
  %2709 = fmul fast float %2700, %2399
  %2710 = fmul fast float %2701, %2399
  %2711 = fadd fast float %2708, %2500
  %2712 = fadd fast float %2709, %2501
  %2713 = fadd fast float %2710, %2502
  br label %2714

; <label>:2714                                    ; preds = %2678, %2499
  %2715 = phi float [ %2711, %2678 ], [ %2500, %2499 ]
  %2716 = phi float [ %2712, %2678 ], [ %2501, %2499 ]
  %2717 = phi float [ %2713, %2678 ], [ %2502, %2499 ]
  %2718 = phi float [ %2702, %2678 ], [ 0.000000e+00, %2499 ]
  %2719 = phi float [ %2703, %2678 ], [ 0.000000e+00, %2499 ]
  %2720 = phi float [ %2704, %2678 ], [ 0.000000e+00, %2499 ]
  %2721 = phi float [ %2705, %2678 ], [ %2503, %2499 ]
  %2722 = phi float [ %2706, %2678 ], [ %2504, %2499 ]
  %2723 = phi float [ %2707, %2678 ], [ %2505, %2499 ]
  %2724 = fcmp fast olt float %2399, 1.000000e+00
  br i1 %2724, label %2725, label %3558, !dx.controlflow.hints !105

; <label>:2725                                    ; preds = %2714
  %2726 = extractvalue %dx.types.CBufRet.f32 %2355, 2
  %2727 = fadd fast float %2726, %140
  %2728 = fmul fast float %2330, 3.200000e+01
  %2729 = fmul fast float %2331, 3.200000e+01
  %2730 = fadd fast float %2358, %2728
  %2731 = fadd fast float %2359, %2729
  %2732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2733 = extractvalue %dx.types.CBufRet.f32 %2732, 0
  %2734 = extractvalue %dx.types.CBufRet.f32 %2732, 1
  %2735 = fsub fast float %2730, %2733
  %2736 = fsub fast float %2731, %2734
  %2737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.f32 %2737, 0
  %2739 = extractvalue %dx.types.CBufRet.f32 %2737, 1
  %2740 = fmul fast float %2735, %2738
  %2741 = fmul fast float %2736, %2739
  %2742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2743 = extractvalue %dx.types.CBufRet.f32 %2742, 0
  %2744 = fmul fast float %2740, %2743
  %2745 = extractvalue %dx.types.CBufRet.f32 %2742, 1
  %2746 = fadd fast float %2744, %2745
  %2747 = extractvalue %dx.types.CBufRet.f32 %2742, 2
  %2748 = fmul fast float %2747, %2741
  %2749 = extractvalue %dx.types.CBufRet.f32 %2742, 3
  %2750 = fadd fast float %2748, %2749
  %2751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2746, float %2750, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2752 = extractvalue %dx.types.ResRet.f32 %2751, 0
  %2753 = extractvalue %dx.types.ResRet.f32 %2751, 1
  %2754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2755 = extractvalue %dx.types.CBufRet.f32 %2754, 1
  %2756 = extractvalue %dx.types.CBufRet.f32 %2754, 0
  %2757 = fsub fast float %2755, %2756
  %2758 = fmul fast float %2757, %2752
  %2759 = fadd fast float %2758, %2756
  %2760 = extractvalue %dx.types.CBufRet.f32 %2754, 3
  %2761 = extractvalue %dx.types.CBufRet.f32 %2754, 2
  %2762 = fsub fast float %2760, %2761
  %2763 = fmul fast float %2762, %2753
  %2764 = fadd fast float %2763, %2761
  %2765 = fsub fast float %2727, %2759
  %2766 = fsub fast float %2764, %2759
  %2767 = fdiv fast float %2765, %2766
  %2768 = call float @dx.op.unary.f32(i32 7, float %2767)  ; Saturate(value)
  %2769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2770 = extractvalue %dx.types.CBufRet.f32 %2769, 0
  %2771 = fmul fast float %2770, %2768
  %2772 = extractvalue %dx.types.CBufRet.f32 %2769, 1
  %2773 = fadd fast float %2771, %2772
  %2774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %58, float %2746, float %2750, float %2773, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2775 = extractvalue %dx.types.ResRet.f32 %2774, 0
  %2776 = extractvalue %dx.types.ResRet.f32 %2774, 1
  %2777 = extractvalue %dx.types.ResRet.f32 %2774, 2
  %2778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2779 = extractvalue %dx.types.CBufRet.f32 %2778, 0
  %2780 = extractvalue %dx.types.CBufRet.f32 %2778, 1
  %2781 = extractvalue %dx.types.CBufRet.f32 %2778, 2
  %2782 = fmul fast float %2779, %2775
  %2783 = fmul fast float %2780, %2776
  %2784 = fmul fast float %2781, %2777
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 0
  %2787 = extractvalue %dx.types.CBufRet.f32 %2785, 1
  %2788 = extractvalue %dx.types.CBufRet.f32 %2785, 2
  %2789 = fadd fast float %2782, %2786
  %2790 = fadd fast float %2783, %2787
  %2791 = fadd fast float %2784, %2788
  %2792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.f32 %2792, 0
  %2794 = fmul fast float %2793, %2740
  %2795 = extractvalue %dx.types.CBufRet.f32 %2792, 1
  %2796 = fadd fast float %2794, %2795
  %2797 = extractvalue %dx.types.CBufRet.f32 %2792, 2
  %2798 = fmul fast float %2797, %2741
  %2799 = extractvalue %dx.types.CBufRet.f32 %2792, 3
  %2800 = fadd fast float %2798, %2799
  %2801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2802 = extractvalue %dx.types.CBufRet.f32 %2801, 0
  %2803 = extractvalue %dx.types.CBufRet.f32 %2801, 1
  %2804 = extractvalue %dx.types.CBufRet.f32 %2801, 2
  %2805 = extractvalue %dx.types.CBufRet.f32 %2801, 3
  %2806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2807 = extractvalue %dx.types.CBufRet.f32 %2806, 0
  %2808 = extractvalue %dx.types.CBufRet.f32 %2806, 1
  %2809 = extractvalue %dx.types.CBufRet.f32 %2806, 2
  %2810 = extractvalue %dx.types.CBufRet.f32 %2806, 3
  %2811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2796, float %2800, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2812 = extractvalue %dx.types.ResRet.f32 %2811, 0
  %2813 = extractvalue %dx.types.ResRet.f32 %2811, 1
  %2814 = extractvalue %dx.types.ResRet.f32 %2811, 2
  %2815 = extractvalue %dx.types.ResRet.f32 %2811, 3
  %2816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2796, float %2800, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2817 = extractvalue %dx.types.ResRet.f32 %2816, 0
  %2818 = extractvalue %dx.types.ResRet.f32 %2816, 1
  %2819 = extractvalue %dx.types.ResRet.f32 %2816, 2
  %2820 = extractvalue %dx.types.ResRet.f32 %2816, 3
  %2821 = fmul fast float %2812, %2789
  %2822 = fmul fast float %2817, %2789
  %2823 = fmul fast float %2819, %2789
  %2824 = fmul fast float %2815, %2789
  %2825 = fadd fast float %2821, %2802
  %2826 = fadd fast float %2822, %2803
  %2827 = fadd fast float %2823, %2804
  %2828 = fadd fast float %2824, %2805
  %2829 = fmul fast float %2813, %2789
  %2830 = fmul fast float %2818, %2789
  %2831 = fadd fast float %2829, %2807
  %2832 = fadd fast float %2830, %2808
  %2833 = fmul fast float %2814, %2789
  %2834 = fmul fast float %2820, %2789
  %2835 = fadd fast float %2833, %2809
  %2836 = fadd fast float %2834, %2810
  %2837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2796, float %2800, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2838 = extractvalue %dx.types.ResRet.f32 %2837, 0
  %2839 = extractvalue %dx.types.ResRet.f32 %2837, 1
  %2840 = extractvalue %dx.types.ResRet.f32 %2837, 2
  %2841 = extractvalue %dx.types.ResRet.f32 %2837, 3
  %2842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2796, float %2800, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2843 = extractvalue %dx.types.ResRet.f32 %2842, 0
  %2844 = extractvalue %dx.types.ResRet.f32 %2842, 1
  %2845 = extractvalue %dx.types.ResRet.f32 %2842, 2
  %2846 = extractvalue %dx.types.ResRet.f32 %2842, 3
  %2847 = fmul fast float %2838, %2790
  %2848 = fmul fast float %2843, %2790
  %2849 = fmul fast float %2845, %2790
  %2850 = fmul fast float %2841, %2790
  %2851 = fadd fast float %2825, %2847
  %2852 = fadd fast float %2826, %2848
  %2853 = fadd fast float %2827, %2849
  %2854 = fadd fast float %2828, %2850
  %2855 = fmul fast float %2839, %2790
  %2856 = fmul fast float %2844, %2790
  %2857 = fadd fast float %2831, %2855
  %2858 = fadd fast float %2832, %2856
  %2859 = fmul fast float %2840, %2790
  %2860 = fmul fast float %2846, %2790
  %2861 = fadd fast float %2835, %2859
  %2862 = fadd fast float %2836, %2860
  %2863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2796, float %2800, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2864 = extractvalue %dx.types.ResRet.f32 %2863, 0
  %2865 = extractvalue %dx.types.ResRet.f32 %2863, 1
  %2866 = extractvalue %dx.types.ResRet.f32 %2863, 2
  %2867 = extractvalue %dx.types.ResRet.f32 %2863, 3
  %2868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2796, float %2800, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2869 = extractvalue %dx.types.ResRet.f32 %2868, 0
  %2870 = extractvalue %dx.types.ResRet.f32 %2868, 1
  %2871 = extractvalue %dx.types.ResRet.f32 %2868, 2
  %2872 = extractvalue %dx.types.ResRet.f32 %2868, 3
  %2873 = fmul fast float %2864, %2791
  %2874 = fmul fast float %2869, %2791
  %2875 = fmul fast float %2871, %2791
  %2876 = fmul fast float %2867, %2791
  %2877 = fadd fast float %2851, %2873
  %2878 = fadd fast float %2852, %2874
  %2879 = fadd fast float %2853, %2875
  %2880 = fadd fast float %2854, %2876
  %2881 = fmul fast float %2865, %2791
  %2882 = fmul fast float %2870, %2791
  %2883 = fadd fast float %2857, %2881
  %2884 = fadd fast float %2858, %2882
  %2885 = fmul fast float %2866, %2791
  %2886 = fmul fast float %2872, %2791
  %2887 = fadd fast float %2861, %2885
  %2888 = fadd fast float %2862, %2886
  %2889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2890 = extractvalue %dx.types.CBufRet.f32 %2889, 0
  %2891 = fsub fast float %2358, %2890
  %2892 = fsub fast float %2733, %2358
  %2893 = call float @dx.op.binary.f32(i32 35, float %2892, float %2891)  ; FMax(a,b)
  %2894 = extractvalue %dx.types.CBufRet.f32 %2889, 1
  %2895 = fsub fast float %2359, %2894
  %2896 = fsub fast float %2734, %2359
  %2897 = call float @dx.op.binary.f32(i32 35, float %2896, float %2895)  ; FMax(a,b)
  %2898 = call float @dx.op.binary.f32(i32 35, float %2893, float %2897)  ; FMax(a,b)
  %2899 = extractvalue %dx.types.CBufRet.f32 %2737, 3
  %2900 = fmul fast float %2899, %2898
  %2901 = call float @dx.op.unary.f32(i32 7, float %2900)  ; Saturate(value)
  %2902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2903 = extractvalue %dx.types.CBufRet.f32 %2902, 0
  %2904 = extractvalue %dx.types.CBufRet.f32 %2902, 1
  %2905 = extractvalue %dx.types.CBufRet.f32 %2902, 2
  %2906 = extractvalue %dx.types.CBufRet.f32 %2902, 3
  %2907 = fsub fast float %2903, %2877
  %2908 = fsub fast float %2904, %2878
  %2909 = fsub fast float %2905, %2879
  %2910 = fsub fast float %2906, %2880
  %2911 = fmul fast float %2907, %2901
  %2912 = fmul fast float %2908, %2901
  %2913 = fmul fast float %2909, %2901
  %2914 = fmul fast float %2910, %2901
  %2915 = fadd fast float %2911, %2877
  %2916 = fadd fast float %2912, %2878
  %2917 = fadd fast float %2913, %2879
  %2918 = fadd fast float %2914, %2880
  %2919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2920 = extractvalue %dx.types.CBufRet.f32 %2919, 0
  %2921 = extractvalue %dx.types.CBufRet.f32 %2919, 1
  %2922 = fsub fast float %2920, %2883
  %2923 = fsub fast float %2921, %2884
  %2924 = fmul fast float %2922, %2901
  %2925 = fmul fast float %2923, %2901
  %2926 = fadd fast float %2924, %2883
  %2927 = fadd fast float %2925, %2884
  %2928 = extractvalue %dx.types.CBufRet.f32 %2919, 2
  %2929 = extractvalue %dx.types.CBufRet.f32 %2919, 3
  %2930 = fsub fast float %2928, %2887
  %2931 = fsub fast float %2929, %2888
  %2932 = fmul fast float %2930, %2901
  %2933 = fmul fast float %2931, %2901
  %2934 = fadd fast float %2932, %2887
  %2935 = fadd fast float %2933, %2888
  %2936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.f32 %2936, 0
  %2938 = fmul fast float %2937, %2915
  %2939 = fmul fast float %2937, %2916
  %2940 = fmul fast float %2937, %2917
  %2941 = fmul fast float %2937, %2918
  %2942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.f32 %2942, 0
  %2944 = fmul fast float %2943, %2926
  %2945 = fmul fast float %2943, %2927
  %2946 = fadd fast float %2944, %2938
  %2947 = fadd fast float %2945, %2940
  %2948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2949 = extractvalue %dx.types.CBufRet.f32 %2948, 0
  %2950 = fmul fast float %2949, %2934
  %2951 = fmul fast float %2949, %2935
  %2952 = fadd fast float %2946, %2950
  %2953 = fadd fast float %2947, %2951
  %2954 = extractvalue %dx.types.CBufRet.f32 %2936, 1
  %2955 = fmul fast float %2954, %2915
  %2956 = fmul fast float %2954, %2916
  %2957 = fmul fast float %2954, %2917
  %2958 = fmul fast float %2954, %2918
  %2959 = extractvalue %dx.types.CBufRet.f32 %2942, 1
  %2960 = fmul fast float %2959, %2926
  %2961 = fmul fast float %2959, %2927
  %2962 = fadd fast float %2960, %2955
  %2963 = fadd fast float %2961, %2957
  %2964 = extractvalue %dx.types.CBufRet.f32 %2948, 1
  %2965 = fmul fast float %2964, %2934
  %2966 = fmul fast float %2964, %2935
  %2967 = fadd fast float %2962, %2965
  %2968 = fadd fast float %2963, %2966
  %2969 = extractvalue %dx.types.CBufRet.f32 %2936, 2
  %2970 = fmul fast float %2969, %2915
  %2971 = fmul fast float %2969, %2916
  %2972 = fmul fast float %2969, %2917
  %2973 = fmul fast float %2969, %2918
  %2974 = extractvalue %dx.types.CBufRet.f32 %2942, 2
  %2975 = fmul fast float %2974, %2926
  %2976 = fmul fast float %2974, %2927
  %2977 = fadd fast float %2975, %2970
  %2978 = fadd fast float %2976, %2972
  %2979 = extractvalue %dx.types.CBufRet.f32 %2948, 2
  %2980 = fmul fast float %2979, %2934
  %2981 = fmul fast float %2979, %2935
  %2982 = fadd fast float %2977, %2980
  %2983 = fadd fast float %2978, %2981
  %2984 = fmul fast float %2971, %2971
  %2985 = fmul fast float %2983, %2983
  %2986 = fmul fast float %2973, %2973
  %2987 = fadd fast float %2986, %2984
  %2988 = fadd fast float %2987, %2985
  %2989 = call float @dx.op.unary.f32(i32 24, float %2988)  ; Sqrt(value)
  %2990 = fcmp fast ugt float %2989, 0.000000e+00
  br i1 %2990, label %2991, label %3006

; <label>:2991                                    ; preds = %2725
  %2992 = fsub fast float -0.000000e+00, %2973
  %2993 = fdiv fast float %2992, %2989
  %2994 = fsub fast float -0.000000e+00, %2971
  %2995 = fdiv fast float %2994, %2989
  %2996 = fdiv fast float %2983, %2989
  %2997 = fmul fast float %2982, 0x3FE279A760000000
  %2998 = fmul fast float %2995, %2971
  %2999 = fmul fast float %2996, %2983
  %3000 = fmul fast float %2993, %2973
  %3001 = fadd fast float %2998, %3000
  %3002 = fsub fast float %3001, %2999
  %3003 = call float @dx.op.unary.f32(i32 6, float %3002)  ; FAbs(value)
  %3004 = fadd fast float %3003, 0x3DDB7CDFE0000000
  %3005 = fdiv fast float %2997, %3004
  br label %3006

; <label>:3006                                    ; preds = %2991, %2725
  %3007 = phi float [ %3005, %2991 ], [ 1.000000e+00, %2725 ]
  %3008 = fmul fast float %2956, %2956
  %3009 = fmul fast float %2968, %2968
  %3010 = fmul fast float %2958, %2958
  %3011 = fadd fast float %3010, %3008
  %3012 = fadd fast float %3011, %3009
  %3013 = call float @dx.op.unary.f32(i32 24, float %3012)  ; Sqrt(value)
  %3014 = fcmp fast ugt float %3013, 0.000000e+00
  br i1 %3014, label %3015, label %3030

; <label>:3015                                    ; preds = %3006
  %3016 = fsub fast float -0.000000e+00, %2958
  %3017 = fdiv fast float %3016, %3013
  %3018 = fsub fast float -0.000000e+00, %2956
  %3019 = fdiv fast float %3018, %3013
  %3020 = fdiv fast float %2968, %3013
  %3021 = fmul fast float %2967, 0x3FE279A760000000
  %3022 = fmul fast float %3019, %2956
  %3023 = fmul fast float %3020, %2968
  %3024 = fmul fast float %3017, %2958
  %3025 = fadd fast float %3022, %3024
  %3026 = fsub fast float %3025, %3023
  %3027 = call float @dx.op.unary.f32(i32 6, float %3026)  ; FAbs(value)
  %3028 = fadd fast float %3027, 0x3DDB7CDFE0000000
  %3029 = fdiv fast float %3021, %3028
  br label %3030

; <label>:3030                                    ; preds = %3015, %3006
  %3031 = phi float [ %3029, %3015 ], [ 1.000000e+00, %3006 ]
  %3032 = call float @dx.op.binary.f32(i32 36, float %3031, float %3007)  ; FMin(a,b)
  %3033 = fmul fast float %2939, %2939
  %3034 = fmul fast float %2953, %2953
  %3035 = fmul fast float %2941, %2941
  %3036 = fadd fast float %3035, %3033
  %3037 = fadd fast float %3036, %3034
  %3038 = call float @dx.op.unary.f32(i32 24, float %3037)  ; Sqrt(value)
  %3039 = fcmp fast ugt float %3038, 0.000000e+00
  br i1 %3039, label %3040, label %3055

; <label>:3040                                    ; preds = %3030
  %3041 = fsub fast float -0.000000e+00, %2941
  %3042 = fdiv fast float %3041, %3038
  %3043 = fsub fast float -0.000000e+00, %2939
  %3044 = fdiv fast float %3043, %3038
  %3045 = fdiv fast float %2953, %3038
  %3046 = fmul fast float %2952, 0x3FE279A760000000
  %3047 = fmul fast float %3044, %2939
  %3048 = fmul fast float %3045, %2953
  %3049 = fmul fast float %3042, %2941
  %3050 = fadd fast float %3047, %3049
  %3051 = fsub fast float %3050, %3048
  %3052 = call float @dx.op.unary.f32(i32 6, float %3051)  ; FAbs(value)
  %3053 = fadd fast float %3052, 0x3DDB7CDFE0000000
  %3054 = fdiv fast float %3046, %3053
  br label %3055

; <label>:3055                                    ; preds = %3040, %3030
  %3056 = phi float [ %3054, %3040 ], [ 1.000000e+00, %3030 ]
  %3057 = call float @dx.op.binary.f32(i32 36, float %3056, float %3032)  ; FMin(a,b)
  %3058 = call float @dx.op.unary.f32(i32 7, float %3057)  ; Saturate(value)
  %3059 = fcmp fast olt float %3058, 1.000000e+00
  br i1 %3059, label %3060, label %3070

; <label>:3060                                    ; preds = %3055
  %3061 = fmul fast float %3058, %2939
  %3062 = fmul fast float %3058, %2953
  %3063 = fmul fast float %3058, %2941
  %3064 = fmul fast float %3058, %2956
  %3065 = fmul fast float %3058, %2968
  %3066 = fmul fast float %3058, %2958
  %3067 = fmul fast float %3058, %2971
  %3068 = fmul fast float %3058, %2983
  %3069 = fmul fast float %3058, %2973
  br label %3070

; <label>:3070                                    ; preds = %3060, %3055
  %3071 = phi float [ %3067, %3060 ], [ %2971, %3055 ]
  %3072 = phi float [ %3068, %3060 ], [ %2983, %3055 ]
  %3073 = phi float [ %3069, %3060 ], [ %2973, %3055 ]
  %3074 = phi float [ %3064, %3060 ], [ %2956, %3055 ]
  %3075 = phi float [ %3065, %3060 ], [ %2968, %3055 ]
  %3076 = phi float [ %3066, %3060 ], [ %2958, %3055 ]
  %3077 = phi float [ %3061, %3060 ], [ %2939, %3055 ]
  %3078 = phi float [ %3062, %3060 ], [ %2953, %3055 ]
  %3079 = phi float [ %3063, %3060 ], [ %2941, %3055 ]
  %3080 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2952)  ; FMax(a,b)
  %3081 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2967)  ; FMax(a,b)
  %3082 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2982)  ; FMax(a,b)
  %3083 = fcmp fast oge float %2740, 0.000000e+00
  %3084 = and i1 %3083, %2508
  %3085 = fcmp fast ole float %2740, 1.000000e+00
  %3086 = and i1 %3085, %3084
  %3087 = fcmp fast oge float %2741, 0.000000e+00
  %3088 = and i1 %3087, %3086
  %3089 = fcmp fast ole float %2741, 1.000000e+00
  %3090 = and i1 %3089, %3088
  br i1 %3090, label %3091, label %3236, !dx.controlflow.hints !106

; <label>:3091                                    ; preds = %3070
  %3092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3093 = extractvalue %dx.types.CBufRet.f32 %3092, 2
  %3094 = extractvalue %dx.types.CBufRet.f32 %3092, 3
  %3095 = fmul fast float %3093, %2740
  %3096 = fmul fast float %3094, %2741
  %3097 = call float @dx.op.unary.f32(i32 27, float %3095)  ; Round_ni(value)
  %3098 = call float @dx.op.unary.f32(i32 27, float %3096)  ; Round_ni(value)
  %3099 = fptosi float %3097 to i32
  %3100 = fptosi float %3098 to i32
  %3101 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %3099, i32 %3100, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3102 = extractvalue %dx.types.ResRet.i32 %3101, 0
  %3103 = and i32 %3102, 65535
  %3104 = lshr i32 %3102, 16
  %3105 = icmp eq i32 %3103, 65535
  br i1 %3105, label %3142, label %3106

; <label>:3106                                    ; preds = %3091
  %3107 = extractvalue %dx.types.CBufRet.f32 %2506, 1
  %3108 = extractvalue %dx.types.CBufRet.f32 %3092, 0
  %3109 = extractvalue %dx.types.CBufRet.f32 %3092, 1
  %3110 = fmul fast float %3108, %2740
  %3111 = fmul fast float %3109, %2741
  %3112 = fmul fast float %3110, 1.250000e-01
  %3113 = fmul fast float %3111, 1.250000e-01
  %3114 = call float @dx.op.unary.f32(i32 27, float %3112)  ; Round_ni(value)
  %3115 = call float @dx.op.unary.f32(i32 27, float %3113)  ; Round_ni(value)
  %3116 = fmul fast float %3114, 8.000000e+00
  %3117 = fmul fast float %3115, 8.000000e+00
  %3118 = and i32 %3102, 255
  %3119 = lshr i32 %3102, 8
  %3120 = and i32 %3119, 255
  %3121 = mul nuw nsw i32 %3118, 9
  %3122 = uitofp i32 %3121 to float
  %3123 = mul nuw nsw i32 %3120, 9
  %3124 = uitofp i32 %3123 to float
  %3125 = fadd fast float %3122, 5.000000e-01
  %3126 = fadd fast float %3125, %3110
  %3127 = fsub fast float %3126, %3116
  %3128 = fadd fast float %3124, 5.000000e-01
  %3129 = fadd fast float %3128, %3111
  %3130 = fsub fast float %3129, %3117
  %3131 = fdiv fast float %3127, %2507
  %3132 = fdiv fast float %3130, %3107
  %3133 = fmul fast float %2768, 4.375000e-01
  %3134 = fadd fast float %3133, 3.125000e-02
  %3135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3131, float %3132, float %3134, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3136 = extractvalue %dx.types.ResRet.f32 %3135, 0
  %3137 = extractvalue %dx.types.ResRet.f32 %3135, 1
  %3138 = extractvalue %dx.types.ResRet.f32 %3135, 2
  %3139 = fadd fast float %3136, %3080
  %3140 = fadd fast float %3137, %3081
  %3141 = fadd fast float %3138, %3082
  br label %3142

; <label>:3142                                    ; preds = %3106, %3091
  %3143 = phi float [ %3141, %3106 ], [ %3082, %3091 ]
  %3144 = phi float [ %3140, %3106 ], [ %3081, %3091 ]
  %3145 = phi float [ %3139, %3106 ], [ %3080, %3091 ]
  %3146 = icmp eq i32 %3104, 65535
  br i1 %3146, label %3236, label %3147

; <label>:3147                                    ; preds = %3142
  %3148 = extractvalue %dx.types.CBufRet.f32 %2506, 1
  %3149 = extractvalue %dx.types.CBufRet.f32 %3092, 0
  %3150 = extractvalue %dx.types.CBufRet.f32 %3092, 1
  %3151 = fmul fast float %3149, %2740
  %3152 = fmul fast float %3150, %2741
  %3153 = fmul fast float %3151, 1.250000e-01
  %3154 = fmul fast float %3152, 1.250000e-01
  %3155 = call float @dx.op.unary.f32(i32 27, float %3153)  ; Round_ni(value)
  %3156 = call float @dx.op.unary.f32(i32 27, float %3154)  ; Round_ni(value)
  %3157 = fmul fast float %3155, 8.000000e+00
  %3158 = fmul fast float %3156, 8.000000e+00
  %3159 = fsub fast float %3151, %3157
  %3160 = fsub fast float %3152, %3158
  %3161 = fadd fast float %3159, 5.000000e-01
  %3162 = fadd fast float %3160, 5.000000e-01
  %3163 = and i32 %3104, 255
  %3164 = lshr i32 %3102, 24
  %3165 = mul nuw nsw i32 %3163, 9
  %3166 = uitofp i32 %3165 to float
  %3167 = mul nuw nsw i32 %3164, 9
  %3168 = uitofp i32 %3167 to float
  %3169 = fadd fast float %3161, %3166
  %3170 = fadd fast float %3162, %3168
  %3171 = fdiv fast float %3169, %2507
  %3172 = fdiv fast float %3170, %3148
  %3173 = fmul fast float %2768, 4.375000e-01
  %3174 = fadd fast float %3173, 3.125000e-02
  %3175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3171, float %3172, float %3174, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3176 = extractvalue %dx.types.ResRet.f32 %3175, 0
  %3177 = extractvalue %dx.types.ResRet.f32 %3175, 1
  %3178 = extractvalue %dx.types.ResRet.f32 %3175, 2
  %3179 = fadd fast float %3173, 5.312500e-01
  %3180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3171, float %3172, float %3179, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3181 = extractvalue %dx.types.ResRet.f32 %3180, 0
  %3182 = extractvalue %dx.types.ResRet.f32 %3180, 1
  %3183 = extractvalue %dx.types.ResRet.f32 %3180, 2
  %3184 = fmul fast float %3181, 2.000000e+00
  %3185 = fmul fast float %3182, 2.000000e+00
  %3186 = fmul fast float %3183, 2.000000e+00
  %3187 = fadd fast float %3184, -1.000000e+00
  %3188 = fadd fast float %3185, -1.000000e+00
  %3189 = fadd fast float %3186, -1.000000e+00
  %3190 = fmul fast float %3187, %3187
  %3191 = fmul fast float %3188, %3188
  %3192 = fadd fast float %3190, %3191
  %3193 = fmul fast float %3189, %3189
  %3194 = fadd fast float %3192, %3193
  %3195 = call float @dx.op.unary.f32(i32 24, float %3194)  ; Sqrt(value)
  %3196 = fcmp fast ogt float %3195, 0.000000e+00
  br i1 %3196, label %3197, label %3201

; <label>:3197                                    ; preds = %3147
  %3198 = fdiv fast float %3187, %3195
  %3199 = fdiv fast float %3188, %3195
  %3200 = fdiv fast float %3189, %3195
  br label %3201

; <label>:3201                                    ; preds = %3197, %3147
  %3202 = phi float [ %3198, %3197 ], [ 0.000000e+00, %3147 ]
  %3203 = phi float [ %3199, %3197 ], [ 0.000000e+00, %3147 ]
  %3204 = phi float [ %3200, %3197 ], [ 0.000000e+00, %3147 ]
  %3205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3206 = extractvalue %dx.types.CBufRet.f32 %3205, 0
  %3207 = extractvalue %dx.types.CBufRet.f32 %3205, 1
  %3208 = fsub fast float %2358, %3206
  %3209 = fsub fast float %2359, %3207
  %3210 = fmul fast float %3208, %3208
  %3211 = fmul fast float %3209, %3209
  %3212 = fadd fast float %3210, %3211
  %3213 = call float @dx.op.unary.f32(i32 24, float %3212)  ; Sqrt(value)
  %3214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3215 = extractvalue %dx.types.CBufRet.f32 %3214, 0
  %3216 = extractvalue %dx.types.CBufRet.f32 %3214, 1
  %3217 = fsub fast float %3213, %3215
  %3218 = fdiv fast float %3217, %3216
  %3219 = call float @dx.op.unary.f32(i32 7, float %3218)  ; Saturate(value)
  %3220 = fmul fast float %3219, 2.000000e+00
  %3221 = fsub fast float 3.000000e+00, %3220
  %3222 = fmul fast float %3219, %3219
  %3223 = fmul fast float %3222, %3221
  %3224 = call float @dx.op.dot3.f32(i32 55, float %3202, float %3203, float %3204, float %2330, float %2331, float %2332)  ; Dot3(ax,ay,az,bx,by,bz)
  %3225 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3224)  ; FMax(a,b)
  %3226 = fmul fast float %3225, 0x400C5BF8A0000000
  %3227 = fmul fast float %3223, %3176
  %3228 = fmul fast float %3227, %3226
  %3229 = fadd fast float %3228, %3145
  %3230 = fmul fast float %3223, %3177
  %3231 = fmul fast float %3230, %3226
  %3232 = fadd fast float %3231, %3144
  %3233 = fmul fast float %3223, %3178
  %3234 = fmul fast float %3233, %3226
  %3235 = fadd fast float %3234, %3143
  br label %3236

; <label>:3236                                    ; preds = %3201, %3142, %3070
  %3237 = phi float [ %3235, %3201 ], [ %3143, %3142 ], [ %3082, %3070 ]
  %3238 = phi float [ %3232, %3201 ], [ %3144, %3142 ], [ %3081, %3070 ]
  %3239 = phi float [ %3229, %3201 ], [ %3145, %3142 ], [ %3080, %3070 ]
  %3240 = fcmp fast ogt float %2727, %2764
  %3241 = and i1 %3083, %3240
  %3242 = and i1 %3085, %3241
  %3243 = and i1 %3087, %3242
  %3244 = and i1 %3089, %3243
  br i1 %3244, label %3245, label %3302, !dx.controlflow.hints !107

; <label>:3245                                    ; preds = %3236
  %3246 = fmul fast float %2766, 0x3FC24924A0000000
  %3247 = fsub fast float %2727, %2764
  %3248 = fdiv fast float %3247, %3246
  %3249 = call float @dx.op.unary.f32(i32 7, float %3248)  ; Saturate(value)
  %3250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3251 = extractvalue %dx.types.CBufRet.f32 %3250, 0
  %3252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3253 = extractvalue %dx.types.CBufRet.f32 %3252, 0
  %3254 = extractvalue %dx.types.CBufRet.f32 %3252, 1
  %3255 = extractvalue %dx.types.CBufRet.f32 %3252, 2
  %3256 = fsub fast float %3251, %3239
  %3257 = fsub fast float %3253, %3077
  %3258 = fsub fast float %3254, %3078
  %3259 = fsub fast float %3255, %3079
  %3260 = fmul fast float %3256, %3249
  %3261 = fmul fast float %3257, %3249
  %3262 = fmul fast float %3258, %3249
  %3263 = fmul fast float %3259, %3249
  %3264 = fadd fast float %3260, %3239
  %3265 = fadd fast float %3261, %3077
  %3266 = fadd fast float %3262, %3078
  %3267 = fadd fast float %3263, %3079
  %3268 = extractvalue %dx.types.CBufRet.f32 %3250, 1
  %3269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3270 = extractvalue %dx.types.CBufRet.f32 %3269, 0
  %3271 = extractvalue %dx.types.CBufRet.f32 %3269, 1
  %3272 = extractvalue %dx.types.CBufRet.f32 %3269, 2
  %3273 = fsub fast float %3268, %3238
  %3274 = fsub fast float %3270, %3074
  %3275 = fsub fast float %3271, %3075
  %3276 = fsub fast float %3272, %3076
  %3277 = fmul fast float %3273, %3249
  %3278 = fmul fast float %3274, %3249
  %3279 = fmul fast float %3275, %3249
  %3280 = fmul fast float %3276, %3249
  %3281 = fadd fast float %3277, %3238
  %3282 = fadd fast float %3278, %3074
  %3283 = fadd fast float %3279, %3075
  %3284 = fadd fast float %3280, %3076
  %3285 = extractvalue %dx.types.CBufRet.f32 %3250, 2
  %3286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3287 = extractvalue %dx.types.CBufRet.f32 %3286, 0
  %3288 = extractvalue %dx.types.CBufRet.f32 %3286, 1
  %3289 = extractvalue %dx.types.CBufRet.f32 %3286, 2
  %3290 = fsub fast float %3285, %3237
  %3291 = fsub fast float %3287, %3071
  %3292 = fsub fast float %3288, %3072
  %3293 = fsub fast float %3289, %3073
  %3294 = fmul fast float %3290, %3249
  %3295 = fmul fast float %3291, %3249
  %3296 = fmul fast float %3292, %3249
  %3297 = fmul fast float %3293, %3249
  %3298 = fadd fast float %3294, %3237
  %3299 = fadd fast float %3295, %3071
  %3300 = fadd fast float %3296, %3072
  %3301 = fadd fast float %3297, %3073
  br label %3302

; <label>:3302                                    ; preds = %3245, %3236
  %3303 = phi float [ %3298, %3245 ], [ %3237, %3236 ]
  %3304 = phi float [ %3299, %3245 ], [ %3071, %3236 ]
  %3305 = phi float [ %3300, %3245 ], [ %3072, %3236 ]
  %3306 = phi float [ %3301, %3245 ], [ %3073, %3236 ]
  %3307 = phi float [ %3281, %3245 ], [ %3238, %3236 ]
  %3308 = phi float [ %3282, %3245 ], [ %3074, %3236 ]
  %3309 = phi float [ %3283, %3245 ], [ %3075, %3236 ]
  %3310 = phi float [ %3284, %3245 ], [ %3076, %3236 ]
  %3311 = phi float [ %3264, %3245 ], [ %3239, %3236 ]
  %3312 = phi float [ %3265, %3245 ], [ %3077, %3236 ]
  %3313 = phi float [ %3266, %3245 ], [ %3078, %3236 ]
  %3314 = phi float [ %3267, %3245 ], [ %3079, %3236 ]
  %3315 = extractvalue %dx.types.CBufRet.f32 %2889, 3
  %3316 = fmul fast float %3315, %3311
  %3317 = fmul fast float %3315, %3307
  %3318 = fmul fast float %3315, %3303
  %3319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.f32 %3319, 3
  %3321 = fmul fast float %3316, %3320
  %3322 = fmul fast float %3317, %3320
  %3323 = fmul fast float %3318, %3320
  %3324 = fmul fast float %3312, 1.500000e+00
  %3325 = fmul fast float %3324, %3315
  %3326 = fmul fast float %3325, %3320
  %3327 = fmul fast float %3313, 1.500000e+00
  %3328 = fmul fast float %3327, %3315
  %3329 = fmul fast float %3328, %3320
  %3330 = fmul fast float %3314, 1.500000e+00
  %3331 = fmul fast float %3330, %3315
  %3332 = fmul fast float %3331, %3320
  %3333 = fmul fast float %3308, 1.500000e+00
  %3334 = fmul fast float %3333, %3315
  %3335 = fmul fast float %3334, %3320
  %3336 = fmul fast float %3309, 1.500000e+00
  %3337 = fmul fast float %3336, %3315
  %3338 = fmul fast float %3337, %3320
  %3339 = fmul fast float %3310, 1.500000e+00
  %3340 = fmul fast float %3339, %3315
  %3341 = fmul fast float %3340, %3320
  %3342 = fmul fast float %3304, 1.500000e+00
  %3343 = fmul fast float %3342, %3315
  %3344 = fmul fast float %3343, %3320
  %3345 = fmul fast float %3305, 1.500000e+00
  %3346 = fmul fast float %3345, %3315
  %3347 = fmul fast float %3346, %3320
  %3348 = fmul fast float %3306, 1.500000e+00
  %3349 = fmul fast float %3348, %3315
  %3350 = fmul fast float %3349, %3320
  %3351 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3321)  ; FMax(a,b)
  %3352 = call float @dx.op.dot3.f32(i32 55, float %3326, float %3329, float %3332, float %3326, float %3329, float %3332)  ; Dot3(ax,ay,az,bx,by,bz)
  %3353 = fcmp fast oeq float %3352, 0.000000e+00
  %3354 = fcmp fast oeq float %3351, 0.000000e+00
  %3355 = or i1 %3354, %3353
  br i1 %3355, label %3385, label %3356

; <label>:3356                                    ; preds = %3302
  %3357 = fsub fast float -0.000000e+00, %3332
  %3358 = fsub fast float -0.000000e+00, %3326
  %3359 = call float @dx.op.unary.f32(i32 24, float %3352)  ; Sqrt(value)
  %3360 = fdiv fast float %3359, %3351
  %3361 = fcmp fast ogt float %3360, 0x3FFB6F8900000000
  %3362 = select i1 %3361, float 0x3FFB6F8900000000, float %3360
  %3363 = fmul fast float %3362, 0x3FE8A23460000000
  %3364 = call float @dx.op.unary.f32(i32 7, float %3363)  ; Saturate(value)
  %3365 = call float @dx.op.binary.f32(i32 35, float %3362, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3366 = fmul fast float %3364, %3351
  %3367 = fmul fast float %3365, 0x3FF279A740000000
  %3368 = fadd fast float %3367, -1.000000e+00
  %3369 = call float @dx.op.dot3.f32(i32 55, float %3357, float %3358, float %3329, float %3357, float %3358, float %3329)  ; Dot3(ax,ay,az,bx,by,bz)
  %3370 = call float @dx.op.unary.f32(i32 25, float %3369)  ; Rsqrt(value)
  %3371 = fmul fast float %3370, %3357
  %3372 = fmul fast float %3370, %3358
  %3373 = fmul fast float %3370, %3329
  %3374 = fmul fast float %3368, %3368
  %3375 = fsub fast float 1.000000e+00, %3374
  %3376 = fmul fast float %3365, 0x40005F8BE0000000
  %3377 = fsub fast float 0x400C5BF8A0000000, %3376
  %3378 = fdiv fast float %3366, %3377
  %3379 = fmul fast float %3378, 0x3FEE31C3C0000000
  %3380 = fmul fast float %3379, %3375
  %3381 = fmul fast float %3365, 0x3FDACB7480000000
  %3382 = fadd fast float %3381, 0xBFD7347680000000
  %3383 = fmul fast float %3382, %3378
  %3384 = fmul fast float %3383, %3375
  br label %3385

; <label>:3385                                    ; preds = %3356, %3302
  %3386 = phi float [ %3371, %3356 ], [ 0.000000e+00, %3302 ]
  %3387 = phi float [ %3372, %3356 ], [ 0.000000e+00, %3302 ]
  %3388 = phi float [ %3373, %3356 ], [ 0.000000e+00, %3302 ]
  %3389 = phi float [ %3380, %3356 ], [ 0.000000e+00, %3302 ]
  %3390 = phi float [ %3384, %3356 ], [ 0.000000e+00, %3302 ]
  %3391 = call float @dx.op.dot3.f32(i32 55, float %3386, float %3387, float %3388, float %2330, float %2331, float %2332)  ; Dot3(ax,ay,az,bx,by,bz)
  %3392 = fmul fast float %3391, 0x3FDF454380000000
  %3393 = fmul fast float %3391, %3391
  %3394 = fmul fast float %3393, 0x3FEE471020000000
  %3395 = fadd fast float %3394, 0xBFD42F6020000000
  %3396 = fmul fast float %3351, 0x3FD20DD760000000
  %3397 = fmul fast float %3395, %3390
  %3398 = fadd fast float %3397, %3396
  %3399 = fmul fast float %3392, %3389
  %3400 = fadd fast float %3398, %3399
  %3401 = fsub fast float %3398, %3399
  %3402 = call float @dx.op.dot3.f32(i32 55, float %3386, float %3387, float %3388, float %2347, float %2348, float %2349)  ; Dot3(ax,ay,az,bx,by,bz)
  %3403 = fmul fast float %3402, 0x3FDF454380000000
  %3404 = fmul fast float %3402, %3402
  %3405 = fmul fast float %3404, 0x3FEE471020000000
  %3406 = fadd fast float %3405, 0xBFD42F6020000000
  %3407 = call float @dx.op.dot3.f32(i32 55, float %3351, float %3389, float %3390, float 0x3FD20DD760000000, float %3403, float %3406)  ; Dot3(ax,ay,az,bx,by,bz)
  %3408 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3322)  ; FMax(a,b)
  %3409 = call float @dx.op.dot3.f32(i32 55, float %3335, float %3338, float %3341, float %3335, float %3338, float %3341)  ; Dot3(ax,ay,az,bx,by,bz)
  %3410 = fcmp fast oeq float %3409, 0.000000e+00
  %3411 = fcmp fast oeq float %3408, 0.000000e+00
  %3412 = or i1 %3411, %3410
  br i1 %3412, label %3442, label %3413

; <label>:3413                                    ; preds = %3385
  %3414 = fsub fast float -0.000000e+00, %3341
  %3415 = fsub fast float -0.000000e+00, %3335
  %3416 = call float @dx.op.unary.f32(i32 24, float %3409)  ; Sqrt(value)
  %3417 = fdiv fast float %3416, %3408
  %3418 = fcmp fast ogt float %3417, 0x3FFB6F8900000000
  %3419 = select i1 %3418, float 0x3FFB6F8900000000, float %3417
  %3420 = fmul fast float %3419, 0x3FE8A23460000000
  %3421 = call float @dx.op.unary.f32(i32 7, float %3420)  ; Saturate(value)
  %3422 = call float @dx.op.binary.f32(i32 35, float %3419, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3423 = fmul fast float %3421, %3408
  %3424 = fmul fast float %3422, 0x3FF279A740000000
  %3425 = fadd fast float %3424, -1.000000e+00
  %3426 = call float @dx.op.dot3.f32(i32 55, float %3414, float %3415, float %3338, float %3414, float %3415, float %3338)  ; Dot3(ax,ay,az,bx,by,bz)
  %3427 = call float @dx.op.unary.f32(i32 25, float %3426)  ; Rsqrt(value)
  %3428 = fmul fast float %3427, %3414
  %3429 = fmul fast float %3427, %3415
  %3430 = fmul fast float %3427, %3338
  %3431 = fmul fast float %3425, %3425
  %3432 = fsub fast float 1.000000e+00, %3431
  %3433 = fmul fast float %3422, 0x40005F8BE0000000
  %3434 = fsub fast float 0x400C5BF8A0000000, %3433
  %3435 = fdiv fast float %3423, %3434
  %3436 = fmul fast float %3435, 0x3FEE31C3C0000000
  %3437 = fmul fast float %3436, %3432
  %3438 = fmul fast float %3422, 0x3FDACB7480000000
  %3439 = fadd fast float %3438, 0xBFD7347680000000
  %3440 = fmul fast float %3439, %3435
  %3441 = fmul fast float %3440, %3432
  br label %3442

; <label>:3442                                    ; preds = %3413, %3385
  %3443 = phi float [ %3428, %3413 ], [ 0.000000e+00, %3385 ]
  %3444 = phi float [ %3429, %3413 ], [ 0.000000e+00, %3385 ]
  %3445 = phi float [ %3430, %3413 ], [ 0.000000e+00, %3385 ]
  %3446 = phi float [ %3437, %3413 ], [ 0.000000e+00, %3385 ]
  %3447 = phi float [ %3441, %3413 ], [ 0.000000e+00, %3385 ]
  %3448 = call float @dx.op.dot3.f32(i32 55, float %3443, float %3444, float %3445, float %2330, float %2331, float %2332)  ; Dot3(ax,ay,az,bx,by,bz)
  %3449 = fmul fast float %3448, 0x3FDF454380000000
  %3450 = fmul fast float %3448, %3448
  %3451 = fmul fast float %3450, 0x3FEE471020000000
  %3452 = fadd fast float %3451, 0xBFD42F6020000000
  %3453 = fmul fast float %3408, 0x3FD20DD760000000
  %3454 = fmul fast float %3452, %3447
  %3455 = fadd fast float %3454, %3453
  %3456 = fmul fast float %3449, %3446
  %3457 = fadd fast float %3455, %3456
  %3458 = fsub fast float %3455, %3456
  %3459 = call float @dx.op.dot3.f32(i32 55, float %3443, float %3444, float %3445, float %2347, float %2348, float %2349)  ; Dot3(ax,ay,az,bx,by,bz)
  %3460 = fmul fast float %3459, 0x3FDF454380000000
  %3461 = fmul fast float %3459, %3459
  %3462 = fmul fast float %3461, 0x3FEE471020000000
  %3463 = fadd fast float %3462, 0xBFD42F6020000000
  %3464 = call float @dx.op.dot3.f32(i32 55, float %3408, float %3446, float %3447, float 0x3FD20DD760000000, float %3460, float %3463)  ; Dot3(ax,ay,az,bx,by,bz)
  %3465 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3323)  ; FMax(a,b)
  %3466 = call float @dx.op.dot3.f32(i32 55, float %3344, float %3347, float %3350, float %3344, float %3347, float %3350)  ; Dot3(ax,ay,az,bx,by,bz)
  %3467 = fcmp fast oeq float %3466, 0.000000e+00
  %3468 = fcmp fast oeq float %3465, 0.000000e+00
  %3469 = or i1 %3468, %3467
  br i1 %3469, label %3499, label %3470

; <label>:3470                                    ; preds = %3442
  %3471 = fsub fast float -0.000000e+00, %3350
  %3472 = fsub fast float -0.000000e+00, %3344
  %3473 = call float @dx.op.unary.f32(i32 24, float %3466)  ; Sqrt(value)
  %3474 = fdiv fast float %3473, %3465
  %3475 = fcmp fast ogt float %3474, 0x3FFB6F8900000000
  %3476 = select i1 %3475, float 0x3FFB6F8900000000, float %3474
  %3477 = fmul fast float %3476, 0x3FE8A23460000000
  %3478 = call float @dx.op.unary.f32(i32 7, float %3477)  ; Saturate(value)
  %3479 = call float @dx.op.binary.f32(i32 35, float %3476, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3480 = fmul fast float %3478, %3465
  %3481 = fmul fast float %3479, 0x3FF279A740000000
  %3482 = fadd fast float %3481, -1.000000e+00
  %3483 = call float @dx.op.dot3.f32(i32 55, float %3471, float %3472, float %3347, float %3471, float %3472, float %3347)  ; Dot3(ax,ay,az,bx,by,bz)
  %3484 = call float @dx.op.unary.f32(i32 25, float %3483)  ; Rsqrt(value)
  %3485 = fmul fast float %3484, %3471
  %3486 = fmul fast float %3484, %3472
  %3487 = fmul fast float %3484, %3347
  %3488 = fmul fast float %3482, %3482
  %3489 = fsub fast float 1.000000e+00, %3488
  %3490 = fmul fast float %3479, 0x40005F8BE0000000
  %3491 = fsub fast float 0x400C5BF8A0000000, %3490
  %3492 = fdiv fast float %3480, %3491
  %3493 = fmul fast float %3492, 0x3FEE31C3C0000000
  %3494 = fmul fast float %3493, %3489
  %3495 = fmul fast float %3479, 0x3FDACB7480000000
  %3496 = fadd fast float %3495, 0xBFD7347680000000
  %3497 = fmul fast float %3496, %3492
  %3498 = fmul fast float %3497, %3489
  br label %3499

; <label>:3499                                    ; preds = %3470, %3442
  %3500 = phi float [ %3485, %3470 ], [ 0.000000e+00, %3442 ]
  %3501 = phi float [ %3486, %3470 ], [ 0.000000e+00, %3442 ]
  %3502 = phi float [ %3487, %3470 ], [ 0.000000e+00, %3442 ]
  %3503 = phi float [ %3494, %3470 ], [ 0.000000e+00, %3442 ]
  %3504 = phi float [ %3498, %3470 ], [ 0.000000e+00, %3442 ]
  %3505 = call float @dx.op.dot3.f32(i32 55, float %3500, float %3501, float %3502, float %2330, float %2331, float %2332)  ; Dot3(ax,ay,az,bx,by,bz)
  %3506 = fmul fast float %3505, 0x3FDF454380000000
  %3507 = fmul fast float %3505, %3505
  %3508 = fmul fast float %3507, 0x3FEE471020000000
  %3509 = fadd fast float %3508, 0xBFD42F6020000000
  %3510 = fmul fast float %3465, 0x3FD20DD760000000
  %3511 = fmul fast float %3509, %3504
  %3512 = fadd fast float %3511, %3510
  %3513 = fmul fast float %3506, %3503
  %3514 = fadd fast float %3512, %3513
  %3515 = fsub fast float %3512, %3513
  %3516 = call float @dx.op.dot3.f32(i32 55, float %3500, float %3501, float %3502, float %2347, float %2348, float %2349)  ; Dot3(ax,ay,az,bx,by,bz)
  %3517 = fmul fast float %3516, 0x3FDF454380000000
  %3518 = fmul fast float %3516, %3516
  %3519 = fmul fast float %3518, 0x3FEE471020000000
  %3520 = fadd fast float %3519, 0xBFD42F6020000000
  %3521 = call float @dx.op.dot3.f32(i32 55, float %3465, float %3503, float %3504, float 0x3FD20DD760000000, float %3517, float %3520)  ; Dot3(ax,ay,az,bx,by,bz)
  %3522 = call float @dx.op.binary.f32(i32 35, float %3400, float 0.000000e+00)  ; FMax(a,b)
  %3523 = call float @dx.op.binary.f32(i32 35, float %3457, float 0.000000e+00)  ; FMax(a,b)
  %3524 = call float @dx.op.binary.f32(i32 35, float %3514, float 0.000000e+00)  ; FMax(a,b)
  %3525 = call float @dx.op.binary.f32(i32 35, float %3401, float 0.000000e+00)  ; FMax(a,b)
  %3526 = call float @dx.op.binary.f32(i32 35, float %3458, float 0.000000e+00)  ; FMax(a,b)
  %3527 = call float @dx.op.binary.f32(i32 35, float %3515, float 0.000000e+00)  ; FMax(a,b)
  %3528 = call float @dx.op.binary.f32(i32 35, float %3407, float 0.000000e+00)  ; FMax(a,b)
  %3529 = call float @dx.op.binary.f32(i32 35, float %3464, float 0.000000e+00)  ; FMax(a,b)
  %3530 = call float @dx.op.binary.f32(i32 35, float %3521, float 0.000000e+00)  ; FMax(a,b)
  %3531 = fsub fast float %2721, %3522
  %3532 = fsub fast float %2722, %3523
  %3533 = fsub fast float %2723, %3524
  %3534 = fmul fast float %3531, %2399
  %3535 = fmul fast float %3532, %2399
  %3536 = fmul fast float %3533, %2399
  %3537 = fadd fast float %3534, %3522
  %3538 = fadd fast float %3535, %3523
  %3539 = fadd fast float %3536, %3524
  %3540 = fsub fast float %2718, %3525
  %3541 = fsub fast float %2719, %3526
  %3542 = fsub fast float %2720, %3527
  %3543 = fmul fast float %3540, %2399
  %3544 = fmul fast float %3541, %2399
  %3545 = fmul fast float %3542, %2399
  %3546 = fadd fast float %3543, %3525
  %3547 = fadd fast float %3544, %3526
  %3548 = fadd fast float %3545, %3527
  %3549 = fsub fast float %2715, %3528
  %3550 = fsub fast float %2716, %3529
  %3551 = fsub fast float %2717, %3530
  %3552 = fmul fast float %3549, %2399
  %3553 = fmul fast float %3550, %2399
  %3554 = fmul fast float %3551, %2399
  %3555 = fadd fast float %3552, %3528
  %3556 = fadd fast float %3553, %3529
  %3557 = fadd fast float %3554, %3530
  br label %3558

; <label>:3558                                    ; preds = %3499, %2714
  %3559 = phi float [ %3555, %3499 ], [ %2715, %2714 ]
  %3560 = phi float [ %3556, %3499 ], [ %2716, %2714 ]
  %3561 = phi float [ %3557, %3499 ], [ %2717, %2714 ]
  %3562 = phi float [ %3546, %3499 ], [ %2718, %2714 ]
  %3563 = phi float [ %3547, %3499 ], [ %2719, %2714 ]
  %3564 = phi float [ %3548, %3499 ], [ %2720, %2714 ]
  %3565 = phi float [ %3537, %3499 ], [ %2721, %2714 ]
  %3566 = phi float [ %3538, %3499 ], [ %2722, %2714 ]
  %3567 = phi float [ %3539, %3499 ], [ %2723, %2714 ]
  %3568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3569 = extractvalue %dx.types.CBufRet.f32 %3568, 0
  %3570 = call float @dx.op.binary.f32(i32 36, float %2333, float %3569)  ; FMin(a,b)
  %3571 = fsub fast float 1.000000e+00, %2350
  %3572 = fmul fast float %3570, %3571
  %3573 = fsub fast float 1.000000e+00, %3572
  %3574 = bitcast float %3573 to i32
  %3575 = sub nsw i32 2129859010, %3574
  %3576 = bitcast i32 %3575 to float
  %3577 = call float @dx.op.binary.f32(i32 36, float %2334, float %3569)  ; FMin(a,b)
  %3578 = fmul fast float %3577, %3571
  %3579 = fsub fast float 1.000000e+00, %3578
  %3580 = bitcast float %3579 to i32
  %3581 = sub nsw i32 2129859010, %3580
  %3582 = bitcast i32 %3581 to float
  %3583 = call float @dx.op.binary.f32(i32 36, float %2335, float %3569)  ; FMin(a,b)
  %3584 = fmul fast float %3583, %3571
  %3585 = fsub fast float 1.000000e+00, %3584
  %3586 = bitcast float %3585 to i32
  %3587 = sub nsw i32 2129859010, %3586
  %3588 = bitcast i32 %3587 to float
  %3589 = fmul fast float %3565, %2350
  %3590 = fmul fast float %3589, %3576
  %3591 = fmul fast float %3566, %2350
  %3592 = fmul fast float %3591, %3582
  %3593 = fmul fast float %3567, %2350
  %3594 = fmul fast float %3593, %3588
  %3595 = call float @dx.op.binary.f32(i32 36, float %2327, float %3569)  ; FMin(a,b)
  %3596 = fmul fast float %3595, %3571
  %3597 = fsub fast float 1.000000e+00, %3596
  %3598 = bitcast float %3597 to i32
  %3599 = sub nsw i32 2129859010, %3598
  %3600 = bitcast i32 %3599 to float
  %3601 = call float @dx.op.binary.f32(i32 36, float %2328, float %3569)  ; FMin(a,b)
  %3602 = fmul fast float %3601, %3571
  %3603 = fsub fast float 1.000000e+00, %3602
  %3604 = bitcast float %3603 to i32
  %3605 = sub nsw i32 2129859010, %3604
  %3606 = bitcast i32 %3605 to float
  %3607 = call float @dx.op.binary.f32(i32 36, float %2339, float %3569)  ; FMin(a,b)
  %3608 = fmul fast float %3607, %3571
  %3609 = fsub fast float 1.000000e+00, %3608
  %3610 = bitcast float %3609 to i32
  %3611 = sub nsw i32 2129859010, %3610
  %3612 = bitcast i32 %3611 to float
  %3613 = fmul fast float %3559, %2350
  %3614 = fmul fast float %3613, %3600
  %3615 = fmul fast float %3560, %2350
  %3616 = fmul fast float %3615, %3606
  %3617 = fmul fast float %3561, %2350
  %3618 = fmul fast float %3617, %3612
  %3619 = call float @dx.op.dot3.f32(i32 55, float %3590, float %3592, float %3594, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3620 = select i1 %229, float 0.000000e+00, float %3590
  %3621 = select i1 %229, float %3619, float %3592
  %3622 = select i1 %229, float 0.000000e+00, float %3594
  %3623 = call float @dx.op.dot3.f32(i32 55, float %3562, float %3563, float %3564, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3624 = select i1 %229, float 0.000000e+00, float %3562
  %3625 = select i1 %229, float %3623, float %3563
  %3626 = select i1 %229, float 0.000000e+00, float %3564
  %3627 = call float @dx.op.dot3.f32(i32 55, float %3614, float %3616, float %3618, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3628 = select i1 %229, float 0.000000e+00, float %3614
  %3629 = select i1 %229, float %3627, float %3616
  %3630 = select i1 %229, float 0.000000e+00, float %3618
  %3631 = fmul fast float %1078, %1078
  %3632 = call float @dx.op.unary.f32(i32 7, float %3631)  ; Saturate(value)
  %3633 = fmul fast float %2341, 9.843750e-01
  %3634 = fmul fast float %2336, 9.843750e-01
  %3635 = fadd fast float %3633, 7.812500e-03
  %3636 = fadd fast float %3634, 7.812500e-03
  %3637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %3635, float %3636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3638 = extractvalue %dx.types.ResRet.f32 %3637, 0
  %3639 = extractvalue %dx.types.ResRet.f32 %3637, 1
  %3640 = extractvalue %dx.types.ResRet.f32 %3637, 2
  %3641 = extractvalue %dx.types.ResRet.f32 %3637, 3
  %3642 = fsub fast float 1.000000e+00, %3632
  %3643 = fsub fast float %3640, %3638
  %3644 = fsub fast float %3641, %3639
  %3645 = fmul fast float %3643, %3642
  %3646 = fmul fast float %3644, %3642
  %3647 = fadd fast float %3645, %3638
  %3648 = fadd fast float %3646, %3639
  %3649 = fmul fast float %3647, %2327
  %3650 = fmul fast float %3647, %2328
  %3651 = fmul fast float %3647, %2339
  %3652 = fadd fast float %3649, %3648
  %3653 = fadd fast float %3650, %3648
  %3654 = fadd fast float %3651, %3648
  %3655 = fcmp fast ogt float %1672, 0.000000e+00
  br i1 %3655, label %3656, label %3682

; <label>:3656                                    ; preds = %3558
  %3657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1672, float %2341, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = extractvalue %dx.types.ResRet.f32 %3657, 1
  %3660 = extractvalue %dx.types.ResRet.f32 %3657, 2
  %3661 = fadd fast float %3658, -5.000000e-01
  %3662 = fadd fast float %3659, -5.000000e-01
  %3663 = fadd fast float %3660, -5.000000e-01
  %3664 = fsub fast float 1.000000e+00, %2327
  %3665 = fsub fast float 1.000000e+00, %2328
  %3666 = fsub fast float 1.000000e+00, %2339
  %3667 = fmul fast float %2327, 4.000000e+00
  %3668 = fmul fast float %3667, %3664
  %3669 = fmul fast float %3668, %3661
  %3670 = fmul fast float %2328, 4.000000e+00
  %3671 = fmul fast float %3670, %3665
  %3672 = fmul fast float %3671, %3662
  %3673 = fmul fast float %2339, 4.000000e+00
  %3674 = fmul fast float %3673, %3666
  %3675 = fmul fast float %3674, %3663
  %3676 = fadd fast float %3669, %3652
  %3677 = fadd fast float %3672, %3653
  %3678 = fadd fast float %3675, %3654
  %3679 = call float @dx.op.unary.f32(i32 7, float %3676)  ; Saturate(value)
  %3680 = call float @dx.op.unary.f32(i32 7, float %3677)  ; Saturate(value)
  %3681 = call float @dx.op.unary.f32(i32 7, float %3678)  ; Saturate(value)
  br label %3682

; <label>:3682                                    ; preds = %3656, %3558
  %3683 = phi float [ %3679, %3656 ], [ %3652, %3558 ]
  %3684 = phi float [ %3680, %3656 ], [ %3653, %3558 ]
  %3685 = phi float [ %3681, %3656 ], [ %3654, %3558 ]
  %3686 = call float @dx.op.binary.f32(i32 35, float %3684, float %3685)  ; FMax(a,b)
  %3687 = call float @dx.op.binary.f32(i32 35, float %3683, float %3686)  ; FMax(a,b)
  %3688 = fsub fast float 1.000000e+00, %3687
  %3689 = call float @dx.op.dot3.f32(i32 55, float %2333, float %2334, float %2335, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3690 = fcmp fast ogt float %3689, 0x3E7FF19E20000000
  %3691 = fdiv fast float 1.000000e+00, %3689
  %3692 = select i1 %3690, float %3691, float 0.000000e+00
  %3693 = fmul fast float %3692, %2333
  %3694 = fmul fast float %3692, %2334
  %3695 = fmul fast float %3692, %2335
  %3696 = fadd fast float %3693, -1.000000e+00
  %3697 = fadd fast float %3694, -1.000000e+00
  %3698 = fadd fast float %3695, -1.000000e+00
  %3699 = fmul fast float %3696, 5.000000e-01
  %3700 = fmul fast float %3697, 5.000000e-01
  %3701 = fmul fast float %3698, 5.000000e-01
  %3702 = fadd fast float %3699, 1.000000e+00
  %3703 = fadd fast float %3700, 1.000000e+00
  %3704 = fadd fast float %3701, 1.000000e+00
  %3705 = call float @dx.op.binary.f32(i32 35, float %2341, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3706 = fdiv fast float %1078, %3705
  %3707 = fcmp fast olt float %1745, 1.270000e+02
  %3708 = fcmp fast olt float %1746, 1.270000e+02
  %3709 = fcmp fast olt float %1747, 1.270000e+02
  %3710 = fmul fast float %1745, 0xBFF7154760000000
  %3711 = fmul fast float %3710, %3706
  %3712 = fmul fast float %1746, 0xBFF7154760000000
  %3713 = fmul fast float %3712, %3706
  %3714 = fmul fast float %1747, 0xBFF7154760000000
  %3715 = fmul fast float %3714, %3706
  %3716 = call float @dx.op.unary.f32(i32 21, float %3711)  ; Exp(value)
  %3717 = call float @dx.op.unary.f32(i32 21, float %3713)  ; Exp(value)
  %3718 = call float @dx.op.unary.f32(i32 21, float %3715)  ; Exp(value)
  %3719 = call float @dx.op.unary.f32(i32 7, float %3716)  ; Saturate(value)
  %3720 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3721 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3722 = select i1 %3707, float %3719, float 0.000000e+00
  %3723 = select i1 %3708, float %3720, float 0.000000e+00
  %3724 = select i1 %3709, float %3721, float 0.000000e+00
  %3725 = fmul fast float %3722, %3688
  %3726 = fmul fast float %3723, %3688
  %3727 = fmul fast float %3724, %3688
  %3728 = fadd fast float %3725, -1.000000e+00
  %3729 = fadd fast float %3726, -1.000000e+00
  %3730 = fadd fast float %3727, -1.000000e+00
  %3731 = fmul fast float %3728, %1695
  %3732 = fmul fast float %3729, %1695
  %3733 = fmul fast float %3730, %1695
  %3734 = fmul fast float %3683, %3628
  %3735 = fmul fast float %3684, %3629
  %3736 = fmul fast float %3685, %3630
  %3737 = fsub fast float 1.000000e+00, %2341
  %3738 = bitcast float %3737 to i32
  %3739 = sitofp i32 %3738 to float
  %3740 = fmul fast float %3739, 5.000000e+00
  %3741 = fadd fast float %3740, 0xC1EFBF8940000000
  %3742 = fptosi float %3741 to i32
  %3743 = bitcast i32 %3742 to float
  %3744 = fmul fast float %3743, %1671
  %3745 = fmul fast float %3620, %3744
  %3746 = fmul fast float %3745, %3688
  %3747 = fmul fast float %3746, %3702
  %3748 = fmul fast float %3621, %3744
  %3749 = fmul fast float %3748, %3688
  %3750 = fmul fast float %3749, %3703
  %3751 = fmul fast float %3622, %3744
  %3752 = fmul fast float %3751, %3688
  %3753 = fmul fast float %3752, %3704
  %3754 = fadd fast float %3734, %1676
  %3755 = fadd fast float %3754, %3747
  %3756 = fmul fast float %3755, %1695
  %3757 = fadd fast float %3735, %1677
  %3758 = fadd fast float %3757, %3750
  %3759 = fmul fast float %3758, %1695
  %3760 = fadd fast float %3736, %1678
  %3761 = fadd fast float %3760, %3753
  %3762 = fmul fast float %3761, %1695
  %3763 = fmul fast float %2328, 0x4012D0A400000000
  %3764 = fadd fast float %3733, 1.000000e+00
  %3765 = fadd fast float %3732, 1.000000e+00
  %3766 = fadd fast float %3731, 1.000000e+00
  %3767 = fmul fast float %3688, %3622
  %3768 = fmul fast float %3688, %3621
  %3769 = fmul fast float %3688, %3620
  %3770 = fsub fast float 1.000000e+00, %2336
  %3771 = fmul fast float %3770, %1695
  %3772 = fsub fast float 1.000000e+00, %3771
  %3773 = call float @dx.op.unary.f32(i32 7, float %3772)  ; Saturate(value)
  %3774 = fsub fast float 1.000000e+00, %3773
  %3775 = fadd fast float %3763, 0x3FDB6377A0000000
  %3776 = fmul fast float %3774, %3775
  %3777 = call float @dx.op.dot3.f32(i32 55, float %1763, float %1764, float %1765, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3778 = fadd fast float %3776, %3777
  %3779 = call float @dx.op.unary.f32(i32 7, float %3778)  ; Saturate(value)
  %3780 = call float @dx.op.binary.f32(i32 35, float %3779, float 0x3F847AE140000000)  ; FMax(a,b)
  %3781 = fmul fast float %3780, %3780
  %3782 = fmul fast float %3781, %3781
  %3783 = fmul fast float %3782, 0xC00A935000000000
  %3784 = call float @dx.op.unary.f32(i32 21, float %3783)  ; Exp(value)
  %3785 = fsub fast float 1.000000e+00, %3784
  %3786 = fmul fast float %3766, %3624
  %3787 = fmul fast float %3786, %3785
  %3788 = fmul fast float %3765, %3625
  %3789 = fmul fast float %3788, %3785
  %3790 = fmul fast float %3764, %3626
  %3791 = fmul fast float %3790, %3785
  %3792 = fadd fast float %3787, %3769
  %3793 = fmul fast float %3792, %1695
  %3794 = fadd fast float %3789, %3768
  %3795 = fmul fast float %3794, %1695
  %3796 = fadd fast float %3791, %3767
  %3797 = fmul fast float %3796, %1695
  %3798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3799 = extractvalue %dx.types.CBufRet.f32 %3798, 3
  %3800 = fcmp fast oeq float %3799, 0.000000e+00
  br i1 %3800, label %4999, label %3801

; <label>:3801                                    ; preds = %3682
  %3802 = extractvalue %dx.types.CBufRet.f32 %3798, 0
  %3803 = extractvalue %dx.types.CBufRet.f32 %3798, 1
  %3804 = extractvalue %dx.types.CBufRet.f32 %3798, 2
  %3805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3806 = extractvalue %dx.types.CBufRet.f32 %3805, 0
  %3807 = extractvalue %dx.types.CBufRet.f32 %3805, 1
  %3808 = extractvalue %dx.types.CBufRet.f32 %3805, 2
  %3809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3810 = extractvalue %dx.types.CBufRet.f32 %3809, 0
  %3811 = extractvalue %dx.types.CBufRet.f32 %3809, 1
  %3812 = call float @dx.op.dot3.f32(i32 55, float %3806, float %3807, float %3808, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3813 = select i1 %229, float %3810, float %3806
  %3814 = select i1 %229, float %3812, float %3807
  %3815 = select i1 %229, float %3811, float %3808
  %3816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3817 = extractvalue %dx.types.CBufRet.f32 %3816, 2
  %3818 = fmul fast float %3817, %70
  %3819 = fmul fast float %3817, %71
  %3820 = fmul fast float %3817, %72
  %3821 = fadd fast float %3818, %138
  %3822 = fadd fast float %3819, %139
  %3823 = fadd fast float %3820, %140
  %3824 = fcmp fast olt float %3799, 0.000000e+00
  br i1 %3824, label %4446, label %3825

; <label>:3825                                    ; preds = %3801
  %3826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3827 = extractvalue %dx.types.CBufRet.f32 %3826, 0
  %3828 = extractvalue %dx.types.CBufRet.f32 %3826, 1
  %3829 = extractvalue %dx.types.CBufRet.f32 %3826, 2
  %3830 = extractvalue %dx.types.CBufRet.f32 %3826, 3
  %3831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3832 = extractvalue %dx.types.CBufRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.CBufRet.f32 %3831, 1
  %3834 = extractvalue %dx.types.CBufRet.f32 %3831, 2
  %3835 = extractvalue %dx.types.CBufRet.f32 %3831, 3
  %3836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3837 = extractvalue %dx.types.CBufRet.f32 %3836, 0
  %3838 = extractvalue %dx.types.CBufRet.f32 %3836, 1
  %3839 = extractvalue %dx.types.CBufRet.f32 %3836, 2
  %3840 = extractvalue %dx.types.CBufRet.f32 %3836, 3
  %3841 = fmul fast float %3827, %3821
  %3842 = call float @dx.op.tertiary.f32(i32 46, float %3822, float %3828, float %3841)  ; FMad(a,b,c)
  %3843 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %3829, float %3842)  ; FMad(a,b,c)
  %3844 = fadd fast float %3843, %3830
  %3845 = fmul fast float %3832, %3821
  %3846 = call float @dx.op.tertiary.f32(i32 46, float %3822, float %3833, float %3845)  ; FMad(a,b,c)
  %3847 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %3834, float %3846)  ; FMad(a,b,c)
  %3848 = fadd fast float %3847, %3835
  %3849 = fmul fast float %3837, %3821
  %3850 = call float @dx.op.tertiary.f32(i32 46, float %3822, float %3838, float %3849)  ; FMad(a,b,c)
  %3851 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %3839, float %3850)  ; FMad(a,b,c)
  %3852 = fadd fast float %3851, %3840
  %3853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3854 = extractvalue %dx.types.CBufRet.f32 %3853, 0
  %3855 = extractvalue %dx.types.CBufRet.f32 %3853, 1
  %3856 = extractvalue %dx.types.CBufRet.f32 %3853, 3
  %3857 = fmul fast float %3856, %3844
  %3858 = fmul fast float %3856, %3848
  %3859 = fadd fast float %3857, %3854
  %3860 = fadd fast float %3858, %3855
  %3861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3862 = extractvalue %dx.types.CBufRet.f32 %3861, 0
  %3863 = extractvalue %dx.types.CBufRet.f32 %3861, 1
  %3864 = extractvalue %dx.types.CBufRet.f32 %3861, 3
  %3865 = fmul fast float %3864, %3844
  %3866 = fmul fast float %3864, %3848
  %3867 = fadd fast float %3865, %3862
  %3868 = fadd fast float %3866, %3863
  %3869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3870 = extractvalue %dx.types.CBufRet.f32 %3869, 1
  %3871 = fsub fast float %3870, %3852
  %3872 = extractvalue %dx.types.CBufRet.f32 %3869, 2
  %3873 = fmul fast float %3871, %3872
  %3874 = fsub fast float 1.000000e+00, %3873
  %3875 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3876 = extractvalue %dx.types.CBufRet.f32 %3861, 2
  %3877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3878 = extractvalue %dx.types.CBufRet.f32 %3877, 2
  %3879 = fadd fast float %3878, %3876
  %3880 = fcmp fast ogt float %3879, 0.000000e+00
  br i1 %3880, label %3881, label %3905

; <label>:3881                                    ; preds = %3825
  %3882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3883 = extractvalue %dx.types.CBufRet.f32 %3882, 0
  %3884 = extractvalue %dx.types.CBufRet.f32 %3882, 1
  %3885 = fsub fast float %3867, %3883
  %3886 = fsub fast float %3868, %3884
  %3887 = fcmp fast olt float %3885, 0.000000e+00
  %3888 = fcmp fast olt float %3886, 0.000000e+00
  %3889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3890 = extractvalue %dx.types.CBufRet.f32 %3889, 0
  %3891 = extractvalue %dx.types.CBufRet.f32 %3889, 1
  %3892 = extractvalue %dx.types.CBufRet.f32 %3889, 2
  %3893 = extractvalue %dx.types.CBufRet.f32 %3889, 3
  %3894 = select i1 %3887, float %3890, float %3892
  %3895 = select i1 %3888, float %3891, float %3893
  %3896 = fmul fast float %3894, %3885
  %3897 = fmul fast float %3895, %3886
  %3898 = call float @dx.op.unary.f32(i32 6, float %3896)  ; FAbs(value)
  %3899 = call float @dx.op.unary.f32(i32 6, float %3897)  ; FAbs(value)
  %3900 = extractvalue %dx.types.CBufRet.f32 %3816, 0
  %3901 = call float @dx.op.binary.f32(i32 35, float %3898, float %3899)  ; FMax(a,b)
  %3902 = fsub fast float %3900, %3901
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = fmul fast float %3903, %3875
  br label %3905

; <label>:3905                                    ; preds = %3881, %3825
  %3906 = phi float [ %3904, %3881 ], [ 0.000000e+00, %3825 ]
  %3907 = extractvalue %dx.types.CBufRet.f32 %3853, 2
  %3908 = extractvalue %dx.types.CBufRet.f32 %3877, 1
  %3909 = fadd fast float %3908, %3907
  %3910 = fcmp fast ogt float %3909, 0.000000e+00
  %3911 = extractvalue %dx.types.CBufRet.f32 %3816, 0
  br i1 %3910, label %3912, label %3935

; <label>:3912                                    ; preds = %3905
  %3913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3914 = extractvalue %dx.types.CBufRet.f32 %3913, 0
  %3915 = extractvalue %dx.types.CBufRet.f32 %3913, 1
  %3916 = fsub fast float %3859, %3914
  %3917 = fsub fast float %3860, %3915
  %3918 = fcmp fast olt float %3916, 0.000000e+00
  %3919 = fcmp fast olt float %3917, 0.000000e+00
  %3920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3921 = extractvalue %dx.types.CBufRet.f32 %3920, 0
  %3922 = extractvalue %dx.types.CBufRet.f32 %3920, 1
  %3923 = extractvalue %dx.types.CBufRet.f32 %3920, 2
  %3924 = extractvalue %dx.types.CBufRet.f32 %3920, 3
  %3925 = select i1 %3918, float %3921, float %3923
  %3926 = select i1 %3919, float %3922, float %3924
  %3927 = fmul fast float %3925, %3916
  %3928 = fmul fast float %3926, %3917
  %3929 = call float @dx.op.unary.f32(i32 6, float %3927)  ; FAbs(value)
  %3930 = call float @dx.op.unary.f32(i32 6, float %3928)  ; FAbs(value)
  %3931 = call float @dx.op.binary.f32(i32 35, float %3929, float %3930)  ; FMax(a,b)
  %3932 = fsub fast float %3911, %3931
  %3933 = call float @dx.op.unary.f32(i32 7, float %3932)  ; Saturate(value)
  %3934 = fmul fast float %3933, %3875
  br label %3935

; <label>:3935                                    ; preds = %3912, %3905
  %3936 = phi float [ %3934, %3912 ], [ 0.000000e+00, %3905 ]
  %3937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3937, 1
  %3939 = call float @dx.op.unary.f32(i32 7, float %3938)  ; Saturate(value)
  %3940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3940, 0
  %3942 = extractvalue %dx.types.CBufRet.f32 %3940, 1
  %3943 = fsub fast float %3844, %3941
  %3944 = fsub fast float %3848, %3942
  %3945 = fcmp fast olt float %3943, 0.000000e+00
  %3946 = fcmp fast olt float %3944, 0.000000e+00
  %3947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3948 = extractvalue %dx.types.CBufRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.CBufRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.CBufRet.f32 %3947, 2
  %3951 = extractvalue %dx.types.CBufRet.f32 %3947, 3
  %3952 = select i1 %3945, float %3948, float %3950
  %3953 = select i1 %3946, float %3949, float %3951
  %3954 = fmul fast float %3952, %3943
  %3955 = fmul fast float %3953, %3944
  %3956 = call float @dx.op.unary.f32(i32 6, float %3954)  ; FAbs(value)
  %3957 = call float @dx.op.unary.f32(i32 6, float %3955)  ; FAbs(value)
  %3958 = call float @dx.op.binary.f32(i32 35, float %3956, float %3957)  ; FMax(a,b)
  %3959 = fsub fast float %3911, %3958
  %3960 = call float @dx.op.unary.f32(i32 7, float %3959)  ; Saturate(value)
  %3961 = call float @dx.op.binary.f32(i32 36, float %3960, float %3939)  ; FMin(a,b)
  %3962 = fmul fast float %3961, %3875
  %3963 = fsub fast float %3936, %3962
  %3964 = fsub fast float %3906, %3936
  %3965 = fsub fast float %3964, %3962
  %3966 = call float @dx.op.binary.f32(i32 35, float %3936, float %3906)  ; FMax(a,b)
  %3967 = call float @dx.op.binary.f32(i32 35, float %3962, float %3966)  ; FMax(a,b)
  %3968 = fcmp fast olt float %3967, 1.000000e+00
  br i1 %3968, label %3969, label %4367, !dx.controlflow.hints !108

; <label>:3969                                    ; preds = %3935
  %3970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3971 = extractvalue %dx.types.CBufRet.f32 %3970, 0
  %3972 = fcmp fast une float %3971, 0.000000e+00
  br i1 %3972, label %3973, label %4367, !dx.controlflow.hints !109

; <label>:3973                                    ; preds = %3969
  %3974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3975 = extractvalue %dx.types.CBufRet.f32 %3974, 0
  %3976 = extractvalue %dx.types.CBufRet.f32 %3974, 1
  %3977 = extractvalue %dx.types.CBufRet.f32 %3974, 2
  %3978 = extractvalue %dx.types.CBufRet.f32 %3974, 3
  %3979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3980 = extractvalue %dx.types.CBufRet.f32 %3979, 0
  %3981 = extractvalue %dx.types.CBufRet.f32 %3979, 1
  %3982 = extractvalue %dx.types.CBufRet.f32 %3979, 2
  %3983 = extractvalue %dx.types.CBufRet.f32 %3979, 3
  %3984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3985 = extractvalue %dx.types.CBufRet.f32 %3984, 0
  %3986 = extractvalue %dx.types.CBufRet.f32 %3984, 1
  %3987 = extractvalue %dx.types.CBufRet.f32 %3984, 2
  %3988 = extractvalue %dx.types.CBufRet.f32 %3984, 3
  %3989 = fmul fast float %3975, %3821
  %3990 = call float @dx.op.tertiary.f32(i32 46, float %3822, float %3976, float %3989)  ; FMad(a,b,c)
  %3991 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %3977, float %3990)  ; FMad(a,b,c)
  %3992 = fadd fast float %3991, %3978
  %3993 = fmul fast float %3980, %3821
  %3994 = call float @dx.op.tertiary.f32(i32 46, float %3822, float %3981, float %3993)  ; FMad(a,b,c)
  %3995 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %3982, float %3994)  ; FMad(a,b,c)
  %3996 = fadd fast float %3995, %3983
  %3997 = fmul fast float %3985, %3821
  %3998 = call float @dx.op.tertiary.f32(i32 46, float %3822, float %3986, float %3997)  ; FMad(a,b,c)
  %3999 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %3987, float %3998)  ; FMad(a,b,c)
  %4000 = fadd fast float %3999, %3988
  %4001 = fcmp fast oge float %3992, 1.000000e+00
  %4002 = fcmp fast oge float %3996, 1.000000e+00
  %4003 = or i1 %4001, %4002
  %4004 = fcmp fast olt float %3992, 0.000000e+00
  %4005 = fcmp fast olt float %3996, 0.000000e+00
  %4006 = or i1 %4004, %4005
  %4007 = or i1 %4003, %4006
  br i1 %4007, label %4367, label %4008, !dx.controlflow.hints !110

; <label>:4008                                    ; preds = %3973
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 0
  %4011 = extractvalue %dx.types.CBufRet.f32 %4009, 1
  %4012 = extractvalue %dx.types.CBufRet.f32 %4009, 2
  %4013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.i32 %4013, 2
  %4015 = uitofp i32 %4014 to float
  %4016 = extractvalue %dx.types.CBufRet.i32 %4013, 3
  %4017 = uitofp i32 %4016 to float
  %4018 = extractvalue %dx.types.CBufRet.f32 %4009, 3
  %4019 = fmul fast float %4018, 2.000000e+00
  %4020 = fsub fast float %3992, %4010
  %4021 = fsub fast float %3996, %4011
  %4022 = fmul fast float %4019, %4020
  %4023 = fmul fast float %4019, %4021
  %4024 = fdiv fast float 1.000000e+00, %3804
  %4025 = fmul fast float %4023, %4024
  %4026 = call float @dx.op.unary.f32(i32 6, float %4025)  ; FAbs(value)
  %4027 = fmul fast float %4012, %3823
  %4028 = fmul fast float %4027, %4019
  %4029 = call float @dx.op.unary.f32(i32 6, float %4028)  ; FAbs(value)
  %4030 = call float @dx.op.unary.f32(i32 6, float %4022)  ; FAbs(value)
  %4031 = call float @dx.op.binary.f32(i32 35, float %4029, float %4026)  ; FMax(a,b)
  %4032 = call float @dx.op.binary.f32(i32 35, float %4030, float %4031)  ; FMax(a,b)
  %4033 = fmul fast float %4032, 2.000000e+00
  %4034 = call float @dx.op.unary.f32(i32 23, float %4033)  ; Log(value)
  %4035 = call float @dx.op.binary.f32(i32 35, float %4034, float %4015)  ; FMax(a,b)
  %4036 = call float @dx.op.unary.f32(i32 22, float %4035)  ; Frc(value)
  %4037 = fadd fast float %4036, 0xBFEA666660000000
  %4038 = fmul fast float %4037, 8.000000e+00
  %4039 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4040 = call float @dx.op.unary.f32(i32 27, float %4035)  ; Round_ni(value)
  %4041 = fadd fast float %4040, %4039
  %4042 = call float @dx.op.binary.f32(i32 36, float %4041, float %4017)  ; FMin(a,b)
  %4043 = call float @dx.op.unary.f32(i32 27, float %4042)  ; Round_ni(value)
  %4044 = fsub fast float -0.000000e+00, %4043
  %4045 = call float @dx.op.unary.f32(i32 21, float %4044)  ; Exp(value)
  %4046 = fmul fast float %4045, %4019
  %4047 = fmul fast float %4046, %3992
  %4048 = fmul fast float %4046, %3996
  %4049 = fmul fast float %4047, 2.500000e-01
  %4050 = fmul fast float %4048, 2.500000e-01
  %4051 = fadd fast float %4049, 5.000000e-01
  %4052 = fadd fast float %4050, 5.000000e-01
  %4053 = fsub fast float %4017, %4015
  %4054 = fptoui float %4053 to i32
  %4055 = add i32 %4054, 320
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %4055)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 0
  %4058 = extractvalue %dx.types.CBufRet.f32 %4056, 1
  %4059 = fcmp fast une float %4042, %4017
  %4060 = fsub fast float %3992, %4057
  %4061 = fsub fast float %3996, %4058
  %4062 = call float @dx.op.unary.f32(i32 6, float %4060)  ; FAbs(value)
  %4063 = call float @dx.op.unary.f32(i32 6, float %4061)  ; FAbs(value)
  %4064 = fmul fast float %4062, %4046
  %4065 = fmul fast float %4063, %4046
  %4066 = fcmp fast olt float %4064, 1.000000e+00
  %4067 = fcmp fast olt float %4065, 1.000000e+00
  %4068 = and i1 %4066, %4067
  %4069 = or i1 %4059, %4068
  br i1 %4069, label %4070, label %4367, !dx.controlflow.hints !111

; <label>:4070                                    ; preds = %4008
  %4071 = fmul fast float %4048, 5.000000e-01
  %4072 = fmul fast float %4047, 5.000000e-01
  %4073 = fadd fast float %4071, 5.000000e-01
  %4074 = fadd fast float %4072, 5.000000e-01
  %4075 = sitofp i32 %4014 to float
  %4076 = fsub fast float %4042, %4075
  %4077 = call float @dx.op.unary.f32(i32 27, float %4076)  ; Round_ni(value)
  %4078 = call float @dx.op.unary.f32(i32 22, float %4042)  ; Frc(value)
  %4079 = call float @dx.op.unary.f32(i32 22, float %4074)  ; Frc(value)
  %4080 = call float @dx.op.unary.f32(i32 22, float %4073)  ; Frc(value)
  %4081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4079, float %4080, float %4077, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4082 = extractvalue %dx.types.ResRet.f32 %4081, 0
  %4083 = extractvalue %dx.types.ResRet.f32 %4081, 1
  %4084 = extractvalue %dx.types.ResRet.f32 %4081, 2
  %4085 = extractvalue %dx.types.ResRet.f32 %4081, 3
  %4086 = fcmp fast ogt float %4078, 0.000000e+00
  br i1 %4086, label %4087, label %4108, !dx.controlflow.hints !112

; <label>:4087                                    ; preds = %4070
  %4088 = fadd fast float %4077, 1.000000e+00
  %4089 = call float @dx.op.unary.f32(i32 22, float %4051)  ; Frc(value)
  %4090 = call float @dx.op.unary.f32(i32 22, float %4052)  ; Frc(value)
  %4091 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4089, float %4090, float %4088, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4092 = extractvalue %dx.types.ResRet.f32 %4091, 0
  %4093 = extractvalue %dx.types.ResRet.f32 %4091, 1
  %4094 = extractvalue %dx.types.ResRet.f32 %4091, 2
  %4095 = extractvalue %dx.types.ResRet.f32 %4091, 3
  %4096 = fsub fast float %4092, %4082
  %4097 = fsub fast float %4093, %4083
  %4098 = fsub fast float %4094, %4084
  %4099 = fsub fast float %4095, %4085
  %4100 = fmul fast float %4096, %4078
  %4101 = fmul fast float %4097, %4078
  %4102 = fmul fast float %4098, %4078
  %4103 = fmul fast float %4099, %4078
  %4104 = fadd fast float %4100, %4082
  %4105 = fadd fast float %4101, %4083
  %4106 = fadd fast float %4102, %4084
  %4107 = fadd fast float %4103, %4085
  br label %4108

; <label>:4108                                    ; preds = %4087, %4070
  %4109 = phi float [ %4104, %4087 ], [ %4082, %4070 ]
  %4110 = phi float [ %4105, %4087 ], [ %4083, %4070 ]
  %4111 = phi float [ %4106, %4087 ], [ %4084, %4070 ]
  %4112 = phi float [ %4107, %4087 ], [ %4085, %4070 ]
  %4113 = fadd fast float %4109, -5.000000e-01
  %4114 = fadd fast float %4111, -5.000000e-01
  %4115 = fmul fast float %4113, 0xBFD5555560000000
  %4116 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4114, float %4115)  ; FMad(a,b,c)
  %4117 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4110, float 0.000000e+00)  ; FMad(a,b,c)
  %4118 = fadd fast float %4117, %4112
  %4119 = fmul fast float %4113, -7.500000e-01
  %4120 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4114, float %4119)  ; FMad(a,b,c)
  %4121 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4110, float 0.000000e+00)  ; FMad(a,b,c)
  %4122 = fadd fast float %4121, %4112
  %4123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4123, 0
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 0
  %4127 = extractvalue %dx.types.CBufRet.f32 %4125, 1
  %4128 = extractvalue %dx.types.CBufRet.f32 %4125, 2
  %4129 = extractvalue %dx.types.CBufRet.f32 %4125, 3
  %4130 = fsub fast float %4126, %4116
  %4131 = fsub fast float %4127, %4118
  %4132 = fsub fast float %4128, %4120
  %4133 = fsub fast float %4129, %4122
  %4134 = fmul fast float %4130, %4124
  %4135 = fmul fast float %4131, %4124
  %4136 = fmul fast float %4132, %4124
  %4137 = fmul fast float %4133, %4124
  %4138 = fadd fast float %4134, %4116
  %4139 = fadd fast float %4135, %4118
  %4140 = fadd fast float %4136, %4120
  %4141 = fadd fast float %4137, %4122
  %4142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4143 = extractvalue %dx.types.ResRet.i32 %4142, 0
  %4144 = and i32 %4143, 536870911
  %4145 = uitofp i32 %4144 to float
  %4146 = fmul fast float %4145, %3992
  %4147 = fmul fast float %4145, %3996
  %4148 = fptoui float %4146 to i32
  %4149 = fptoui float %4147 to i32
  %4150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4151 = extractvalue %dx.types.ResRet.i32 %4150, 0
  %4152 = and i32 %4151, 31
  %4153 = lshr i32 %4148, %4152
  %4154 = lshr i32 %4149, %4152
  %4155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4156 = extractvalue %dx.types.ResRet.i32 %4155, 0
  %4157 = and i32 %4156, 31
  %4158 = shl i32 1, %4157
  %4159 = call i32 @dx.op.binary.i32(i32 40, i32 %4158, i32 4)  ; UMin(a,b)
  %4160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4161 = extractvalue %dx.types.ResRet.i32 %4160, 0
  %4162 = extractvalue %dx.types.ResRet.i32 %4160, 1
  %4163 = icmp eq i32 %4159, 0
  br i1 %4163, label %4205, label %4164

; <label>:4164                                    ; preds = %4108
  br label %4165

; <label>:4165                                    ; preds = %4193, %4164
  %4166 = phi i32 [ %4196, %4193 ], [ 0, %4164 ]
  %4167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4168 = extractvalue %dx.types.ResRet.i32 %4167, 0
  %4169 = lshr i32 %4168, 16
  %4170 = and i32 %4169, 31
  %4171 = shl i32 %4154, %4170
  %4172 = add i32 %4171, %4153
  %4173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.i32 %4173, 0
  %4175 = and i32 %4174, 31
  %4176 = shl i32 %4172, %4175
  %4177 = add i32 %4176, %4166
  %4178 = shl i32 %4177, 2
  %4179 = add i32 %4178, 32
  %4180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4179, i32 undef)  ; BufferLoad(srv,index,wot)
  %4181 = extractvalue %dx.types.ResRet.i32 %4180, 0
  %4182 = icmp slt i32 %4181, 0
  %4183 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4166
  %4184 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %4166
  %4185 = bitcast float* %4183 to i32*
  %4186 = bitcast float* %4184 to i32*
  br i1 %4182, label %4187, label %4193

; <label>:4187                                    ; preds = %4165
  %4188 = and i32 %4181, 1073741823
  %4189 = add nuw nsw i32 %4188, 20
  %4190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4189, i32 undef)  ; BufferLoad(srv,index,wot)
  %4191 = extractvalue %dx.types.ResRet.i32 %4190, 0
  %4192 = extractvalue %dx.types.ResRet.i32 %4190, 1
  br label %4193

; <label>:4193                                    ; preds = %4187, %4165
  %4194 = phi i32 [ %4191, %4187 ], [ %4161, %4165 ]
  %4195 = phi i32 [ %4192, %4187 ], [ %4162, %4165 ]
  store i32 %4194, i32* %4185, align 4
  store i32 %4195, i32* %4186, align 4
  %4196 = add nuw i32 %4166, 1
  %4197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.i32 %4197, 2
  %4199 = icmp eq i32 %4198, 0
  %4200 = icmp ugt i32 %4181, -1073741825
  %4201 = and i1 %4200, %4199
  %4202 = icmp ult i32 %4196, %4159
  %4203 = and i1 %4201, %4202
  br i1 %4203, label %4165, label %4204

; <label>:4204                                    ; preds = %4193
  br label %4205

; <label>:4205                                    ; preds = %4204, %4108
  %4206 = phi i32 [ 0, %4108 ], [ %4196, %4204 ]
  %4207 = extractvalue %dx.types.CBufRet.f32 %3970, 2
  %4208 = fptoui float %4207 to i32
  %4209 = icmp eq i32 %4208, 0
  br i1 %4209, label %4261, label %4210

; <label>:4210                                    ; preds = %4205
  br label %4211

; <label>:4211                                    ; preds = %4256, %4210
  %4212 = phi i32 [ %4257, %4256 ], [ %4206, %4210 ]
  %4213 = phi i32 [ %4258, %4256 ], [ 0, %4210 ]
  %4214 = lshr i32 %4213, 2
  %4215 = and i32 %4213, 3
  %4216 = add nuw nsw i32 %4214, 83
  %4217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %4216)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.i32 %4217, 0
  %4219 = extractvalue %dx.types.CBufRet.i32 %4217, 1
  %4220 = extractvalue %dx.types.CBufRet.i32 %4217, 2
  %4221 = extractvalue %dx.types.CBufRet.i32 %4217, 3
  %4222 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 0
  store i32 %4218, i32* %4222, align 4
  %4223 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 1
  store i32 %4219, i32* %4223, align 4
  %4224 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 2
  store i32 %4220, i32* %4224, align 4
  %4225 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 3
  store i32 %4221, i32* %4225, align 4
  %4226 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 %4215
  %4227 = load i32, i32* %4226, align 4, !tbaa !113, !noalias !117
  %4228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.i32 %4228, 0
  %4230 = lshr i32 %4229, 16
  %4231 = and i32 %4230, 31
  %4232 = shl i32 %4154, %4231
  %4233 = add i32 %4232, %4153
  %4234 = shl i32 %4233, 2
  %4235 = add i32 %4234, %4227
  %4236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4235, i32 undef)  ; BufferLoad(srv,index,wot)
  %4237 = extractvalue %dx.types.ResRet.i32 %4236, 0
  %4238 = icmp eq i32 %4237, 0
  br i1 %4238, label %4256, label %4239

; <label>:4239                                    ; preds = %4211
  %4240 = icmp slt i32 %4237, 0
  %4241 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4212
  %4242 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %4212
  %4243 = bitcast float* %4241 to i32*
  %4244 = bitcast float* %4242 to i32*
  br i1 %4240, label %4245, label %4252

; <label>:4245                                    ; preds = %4239
  %4246 = and i32 %4237, 1073741823
  %4247 = add i32 %4227, 20
  %4248 = add i32 %4247, %4246
  %4249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4248, i32 undef)  ; BufferLoad(srv,index,wot)
  %4250 = extractvalue %dx.types.ResRet.i32 %4249, 0
  %4251 = extractvalue %dx.types.ResRet.i32 %4249, 1
  br label %4252

; <label>:4252                                    ; preds = %4245, %4239
  %4253 = phi i32 [ %4250, %4245 ], [ %4161, %4239 ]
  %4254 = phi i32 [ %4251, %4245 ], [ %4162, %4239 ]
  store i32 %4253, i32* %4243, align 4
  store i32 %4254, i32* %4244, align 4
  %4255 = add i32 %4212, 1
  br label %4256

; <label>:4256                                    ; preds = %4252, %4211
  %4257 = phi i32 [ %4212, %4211 ], [ %4255, %4252 ]
  %4258 = add nuw i32 %4213, 1
  %4259 = icmp eq i32 %4258, %4208
  br i1 %4259, label %4260, label %4211

; <label>:4260                                    ; preds = %4256
  br label %4261

; <label>:4261                                    ; preds = %4260, %4205
  %4262 = phi i32 [ %4206, %4205 ], [ %4257, %4260 ]
  %4263 = icmp eq i32 %4262, 1
  %4264 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  %4265 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  br i1 %4263, label %4266, label %4269

; <label>:4266                                    ; preds = %4261
  %4267 = load float, float* %4264, align 4
  %4268 = load float, float* %4265, align 4
  br label %4296

; <label>:4269                                    ; preds = %4261
  %4270 = load float, float* %4264, align 4
  %4271 = load float, float* %4265, align 4
  %4272 = fdiv fast float 1.000000e+00, %4271
  %4273 = fsub fast float %4270, %4272
  %4274 = icmp ugt i32 %4262, 1
  br i1 %4274, label %4275, label %4291

; <label>:4275                                    ; preds = %4269
  br label %4276

; <label>:4276                                    ; preds = %4276, %4275
  %4277 = phi float [ %4286, %4276 ], [ %4273, %4275 ]
  %4278 = phi float [ %4287, %4276 ], [ %4270, %4275 ]
  %4279 = phi i32 [ %4288, %4276 ], [ 1, %4275 ]
  %4280 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4279
  %4281 = load float, float* %4280, align 4
  %4282 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %4279
  %4283 = load float, float* %4282, align 4
  %4284 = fdiv fast float 1.000000e+00, %4283
  %4285 = fsub fast float %4281, %4284
  %4286 = call float @dx.op.binary.f32(i32 36, float %4277, float %4285)  ; FMin(a,b)
  %4287 = call float @dx.op.binary.f32(i32 35, float %4278, float %4281)  ; FMax(a,b)
  %4288 = add nuw i32 %4279, 1
  %4289 = icmp eq i32 %4288, %4262
  br i1 %4289, label %4290, label %4276

; <label>:4290                                    ; preds = %4276
  br label %4291

; <label>:4291                                    ; preds = %4290, %4269
  %4292 = phi float [ %4273, %4269 ], [ %4286, %4290 ]
  %4293 = phi float [ %4270, %4269 ], [ %4287, %4290 ]
  %4294 = fsub fast float %4293, %4292
  %4295 = fdiv fast float 1.000000e+00, %4294
  br label %4296

; <label>:4296                                    ; preds = %4291, %4266
  %4297 = phi float [ %4267, %4266 ], [ %4293, %4291 ]
  %4298 = phi float [ %4268, %4266 ], [ %4295, %4291 ]
  %4299 = fadd fast float %4000, %4297
  %4300 = fmul fast float %4299, %4298
  %4301 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4302 = fmul fast float %4301, 2.000000e+00
  %4303 = fsub fast float 1.000000e+00, %4302
  %4304 = fmul fast float %4138, %4138
  %4305 = fsub fast float %4139, %4304
  %4306 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4305)  ; FMax(a,b)
  %4307 = fdiv fast float 1.000000e+00, %4306
  %4308 = fmul fast float %4139, %4138
  %4309 = fsub fast float %4140, %4308
  %4310 = fsub fast float %4303, %4138
  %4311 = fmul fast float %4303, %4303
  %4312 = fsub fast float %4311, %4139
  %4313 = fmul fast float %4307, %4309
  %4314 = fmul fast float %4313, %4310
  %4315 = fsub fast float %4312, %4314
  %4316 = fmul fast float %4139, %4139
  %4317 = fsub fast float %4141, %4316
  %4318 = fmul fast float %4309, %4309
  %4319 = fmul fast float %4318, %4307
  %4320 = fsub fast float %4317, %4319
  %4321 = fdiv fast float %4315, %4320
  %4322 = fmul fast float %4321, %4309
  %4323 = fsub fast float %4310, %4322
  %4324 = fmul fast float %4323, %4307
  %4325 = fmul fast float %4324, %4138
  %4326 = fsub fast float 1.000000e+00, %4325
  %4327 = fmul fast float %4321, %4139
  %4328 = fsub fast float %4326, %4327
  %4329 = fmul fast float %4324, %4324
  %4330 = fmul fast float %4321, 4.000000e+00
  %4331 = fmul fast float %4330, %4328
  %4332 = fsub fast float %4329, %4331
  %4333 = call float @dx.op.unary.f32(i32 24, float %4332)  ; Sqrt(value)
  %4334 = fcmp fast oge float %4324, 0.000000e+00
  %4335 = fsub fast float -0.000000e+00, %4333
  %4336 = select i1 %4334, float %4335, float %4333
  %4337 = fsub fast float %4336, %4324
  %4338 = fdiv fast float %4337, %4321
  %4339 = fdiv fast float %4328, %4337
  %4340 = fmul fast float %4338, 5.000000e-01
  %4341 = fmul fast float %4339, 2.000000e+00
  %4342 = select i1 %4334, float %4340, float %4341
  %4343 = select i1 %4334, float %4341, float %4340
  %4344 = call float @dx.op.binary.f32(i32 35, float %4342, float %4343)  ; FMax(a,b)
  %4345 = call float @dx.op.binary.f32(i32 36, float %4342, float %4343)  ; FMin(a,b)
  %4346 = fcmp fast ogt float %4303, %4344
  %4347 = fsub fast float %4303, %4345
  %4348 = fsub fast float %4303, %4344
  %4349 = fsub fast float %4344, %4345
  %4350 = select i1 %4346, float %4348, float %4349
  %4351 = fmul float %4347, %4350
  %4352 = select i1 %4346, float %4345, float %4303
  %4353 = fcmp fast ogt float %4303, %4345
  %4354 = fmul fast float %4352, %4344
  %4355 = fadd fast float %4352, %4344
  %4356 = fmul fast float %4355, %4138
  %4357 = fadd fast float %4354, %4139
  %4358 = fsub fast float %4357, %4356
  %4359 = fdiv fast float %4358, %4351
  %4360 = select i1 %4353, float %4359, float 0.000000e+00
  %4361 = fsub fast float 1.000000e+00, %4360
  %4362 = select i1 %4346, float %4361, float %4360
  %4363 = call float @dx.op.unary.f32(i32 7, float %4362)  ; Saturate(value)
  %4364 = extractvalue %dx.types.CBufRet.f32 %4123, 3
  %4365 = fmul fast float %4364, %4363
  %4366 = fsub fast float 1.000000e+00, %4365
  br label %4367

; <label>:4367                                    ; preds = %4296, %4008, %3973, %3969, %3935
  %4368 = phi float [ 1.000000e+00, %3935 ], [ %4366, %4296 ], [ 1.000000e+00, %3973 ], [ 1.000000e+00, %4008 ], [ 1.000000e+00, %3969 ]
  %4369 = fcmp fast ogt float %3965, 0.000000e+00
  br i1 %4369, label %4370, label %4376, !dx.controlflow.hints !126

; <label>:4370                                    ; preds = %4367
  %4371 = fadd fast float %3878, %3852
  %4372 = call float @dx.op.binary.f32(i32 35, float %4371, float 0.000000e+00)  ; FMax(a,b)
  %4373 = fadd fast float %4372, 0x3F10000000000000
  %4374 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %3867, float %3868, float undef, float undef, i32 0, i32 0, i32 undef, float %4373)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4375 = extractvalue %dx.types.ResRet.f32 %4374, 0
  br label %4376

; <label>:4376                                    ; preds = %4370, %4367
  %4377 = phi float [ %4375, %4370 ], [ 1.000000e+00, %4367 ]
  %4378 = fcmp fast ogt float %3963, 0.000000e+00
  br i1 %4378, label %4379, label %4385, !dx.controlflow.hints !127

; <label>:4379                                    ; preds = %4376
  %4380 = fadd fast float %3908, %3852
  %4381 = call float @dx.op.binary.f32(i32 35, float %4380, float 0.000000e+00)  ; FMax(a,b)
  %4382 = fadd fast float %4381, 0x3F10000000000000
  %4383 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %3859, float %3860, float undef, float undef, i32 0, i32 0, i32 undef, float %4382)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4384 = extractvalue %dx.types.ResRet.f32 %4383, 0
  br label %4385

; <label>:4385                                    ; preds = %4379, %4376
  %4386 = phi float [ %4384, %4379 ], [ 1.000000e+00, %4376 ]
  %4387 = fcmp fast ogt float %3962, 0.000000e+00
  br i1 %4387, label %4388, label %4395, !dx.controlflow.hints !128

; <label>:4388                                    ; preds = %4385
  %4389 = extractvalue %dx.types.CBufRet.f32 %3877, 0
  %4390 = fadd fast float %4389, %3852
  %4391 = call float @dx.op.binary.f32(i32 35, float %4390, float 0.000000e+00)  ; FMax(a,b)
  %4392 = fadd fast float %4391, 0x3F10000000000000
  %4393 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %3844, float %3848, float undef, float undef, i32 0, i32 0, i32 undef, float %4392)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4394 = extractvalue %dx.types.ResRet.f32 %4393, 0
  br label %4395

; <label>:4395                                    ; preds = %4388, %4385
  %4396 = phi float [ %4394, %4388 ], [ 1.000000e+00, %4385 ]
  %4397 = fsub fast float %4377, %4368
  %4398 = fmul fast float %4397, %3906
  %4399 = fadd fast float %4398, %4368
  %4400 = fsub fast float %4386, %4399
  %4401 = fmul fast float %4400, %3936
  %4402 = fadd fast float %4401, %4399
  %4403 = fsub fast float %4396, %4402
  %4404 = fmul fast float %4403, %3962
  %4405 = fadd fast float %4404, %4402
  %4406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.f32 %4406, 2
  %4408 = fcmp fast ogt float %4407, 0.000000e+00
  br i1 %4408, label %4409, label %4446, !dx.controlflow.hints !129

; <label>:4409                                    ; preds = %4395
  %4410 = fcmp fast ugt float %4407, 0.000000e+00
  br i1 %4410, label %4411, label %4443

; <label>:4411                                    ; preds = %4409
  %4412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4413 = extractvalue %dx.types.CBufRet.f32 %4412, 0
  %4414 = extractvalue %dx.types.CBufRet.f32 %4412, 1
  %4415 = extractvalue %dx.types.CBufRet.f32 %4412, 2
  %4416 = extractvalue %dx.types.CBufRet.f32 %4412, 3
  %4417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.f32 %4417, 0
  %4419 = extractvalue %dx.types.CBufRet.f32 %4417, 1
  %4420 = extractvalue %dx.types.CBufRet.f32 %4417, 2
  %4421 = extractvalue %dx.types.CBufRet.f32 %4417, 3
  %4422 = extractvalue %dx.types.CBufRet.f32 %4406, 0
  %4423 = extractvalue %dx.types.CBufRet.f32 %4406, 1
  %4424 = extractvalue %dx.types.CBufRet.f32 %2355, 2
  %4425 = fadd fast float %2356, %3821
  %4426 = fadd fast float %2357, %3822
  %4427 = fadd fast float %4424, %3823
  %4428 = fmul fast float %4425, %4413
  %4429 = call float @dx.op.tertiary.f32(i32 46, float %4414, float %4426, float %4428)  ; FMad(a,b,c)
  %4430 = call float @dx.op.tertiary.f32(i32 46, float %4415, float %4427, float %4429)  ; FMad(a,b,c)
  %4431 = fadd fast float %4430, %4416
  %4432 = fmul fast float %4425, %4418
  %4433 = call float @dx.op.tertiary.f32(i32 46, float %4419, float %4426, float %4432)  ; FMad(a,b,c)
  %4434 = call float @dx.op.tertiary.f32(i32 46, float %4420, float %4427, float %4433)  ; FMad(a,b,c)
  %4435 = fadd fast float %4434, %4421
  %4436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %4431, float %4435, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4437 = extractvalue %dx.types.ResRet.f32 %4436, 0
  %4438 = fmul fast float %4437, %4423
  %4439 = fadd fast float %4438, %4422
  %4440 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4441 = fmul fast float %4440, %4407
  %4442 = fsub fast float 1.000000e+00, %4441
  br label %4443

; <label>:4443                                    ; preds = %4411, %4409
  %4444 = phi float [ %4442, %4411 ], [ 1.000000e+00, %4409 ]
  %4445 = fmul fast float %4444, %4405
  br label %4446

; <label>:4446                                    ; preds = %4443, %4395, %3801
  %4447 = phi float [ 1.000000e+00, %3801 ], [ %4445, %4443 ], [ %4405, %4395 ]
  %4448 = call float @dx.op.binary.f32(i32 36, float %4447, float %4447)  ; FMin(a,b)
  %4449 = call float @dx.op.binary.f32(i32 36, float %4447, float %4448)  ; FMin(a,b)
  %4450 = fcmp fast ogt float %4449, 0.000000e+00
  br i1 %4450, label %4451, label %4608, !dx.controlflow.hints !130

; <label>:4451                                    ; preds = %4446
  %4452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4452, 0
  %4454 = extractvalue %dx.types.CBufRet.f32 %4452, 1
  %4455 = extractvalue %dx.types.CBufRet.f32 %4452, 2
  %4456 = extractvalue %dx.types.CBufRet.f32 %4452, 3
  %4457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.f32 %4457, 0
  %4459 = extractvalue %dx.types.CBufRet.f32 %4457, 1
  %4460 = extractvalue %dx.types.CBufRet.f32 %4457, 2
  %4461 = extractvalue %dx.types.CBufRet.f32 %4457, 3
  %4462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4463 = extractvalue %dx.types.CBufRet.f32 %4462, 0
  %4464 = extractvalue %dx.types.CBufRet.f32 %4462, 1
  %4465 = extractvalue %dx.types.CBufRet.f32 %4462, 2
  %4466 = extractvalue %dx.types.CBufRet.f32 %4462, 3
  %4467 = fmul fast float %4453, %3821
  %4468 = call float @dx.op.tertiary.f32(i32 46, float %3822, float %4454, float %4467)  ; FMad(a,b,c)
  %4469 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %4455, float %4468)  ; FMad(a,b,c)
  %4470 = fadd fast float %4469, %4456
  %4471 = fmul fast float %4458, %3821
  %4472 = call float @dx.op.tertiary.f32(i32 46, float %3822, float %4459, float %4471)  ; FMad(a,b,c)
  %4473 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %4460, float %4472)  ; FMad(a,b,c)
  %4474 = fadd fast float %4473, %4461
  %4475 = fmul fast float %4463, %3821
  %4476 = call float @dx.op.tertiary.f32(i32 46, float %3822, float %4464, float %4475)  ; FMad(a,b,c)
  %4477 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %4465, float %4476)  ; FMad(a,b,c)
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 0
  %4480 = extractvalue %dx.types.CBufRet.f32 %4478, 1
  %4481 = extractvalue %dx.types.CBufRet.f32 %4478, 3
  %4482 = fmul fast float %4481, %4470
  %4483 = fmul fast float %4481, %4474
  %4484 = fadd fast float %4482, %4479
  %4485 = fadd fast float %4483, %4480
  %4486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4487 = extractvalue %dx.types.CBufRet.f32 %4486, 0
  %4488 = extractvalue %dx.types.CBufRet.f32 %4486, 1
  %4489 = fsub fast float %4484, %4487
  %4490 = fsub fast float %4485, %4488
  %4491 = fcmp fast olt float %4489, 0.000000e+00
  %4492 = fcmp fast olt float %4490, 0.000000e+00
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 0
  %4495 = extractvalue %dx.types.CBufRet.f32 %4493, 1
  %4496 = extractvalue %dx.types.CBufRet.f32 %4493, 2
  %4497 = extractvalue %dx.types.CBufRet.f32 %4493, 3
  %4498 = select i1 %4491, float %4494, float %4496
  %4499 = select i1 %4492, float %4495, float %4497
  %4500 = fmul fast float %4498, %4489
  %4501 = fmul fast float %4499, %4490
  %4502 = call float @dx.op.unary.f32(i32 6, float %4500)  ; FAbs(value)
  %4503 = call float @dx.op.unary.f32(i32 6, float %4501)  ; FAbs(value)
  %4504 = extractvalue %dx.types.CBufRet.f32 %3816, 0
  %4505 = call float @dx.op.binary.f32(i32 35, float %4502, float %4503)  ; FMax(a,b)
  %4506 = fsub fast float %4504, %4505
  %4507 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  %4508 = fcmp fast ogt float %4507, 0.000000e+00
  br i1 %4508, label %4509, label %4550, !dx.controlflow.hints !131

; <label>:4509                                    ; preds = %4451
  %4510 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %4484, float %4485, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4511 = extractvalue %dx.types.ResRet.f32 %4510, 1
  %4512 = fcmp fast ogt float %4511, 0.000000e+00
  br i1 %4512, label %4513, label %4545

; <label>:4513                                    ; preds = %4509
  %4514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %4484, float %4485, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4515 = extractvalue %dx.types.ResRet.f32 %4514, 0
  %4516 = extractvalue %dx.types.ResRet.f32 %4514, 1
  %4517 = extractvalue %dx.types.ResRet.f32 %4514, 2
  %4518 = extractvalue %dx.types.ResRet.f32 %4514, 3
  %4519 = fsub fast float 1.000000e+00, %4466
  %4520 = fsub fast float %4519, %4477
  %4521 = fmul fast float %4520, 0x400921FB60000000
  %4522 = fadd fast float %4521, 0x3FF921FB60000000
  %4523 = call float @dx.op.unary.f32(i32 13, float %4522)  ; Sin(value)
  %4524 = fadd fast float %4523, -1.000000e+00
  %4525 = fmul fast float %4524, 0x3FD45F3060000000
  %4526 = fmul fast float %4520, 0x401921FB60000000
  %4527 = fadd fast float %4526, 0x400921FB60000000
  %4528 = call float @dx.op.unary.f32(i32 13, float %4527)  ; Sin(value)
  %4529 = fadd fast float %4528, 0x3E7777A5C0000000
  %4530 = fmul fast float %4529, 0x3FC45F3060000000
  %4531 = fmul fast float %4520, 0x4022D97C80000000
  %4532 = fadd fast float %4531, 0x4012D97C80000000
  %4533 = call float @dx.op.unary.f32(i32 13, float %4532)  ; Sin(value)
  %4534 = fadd fast float %4533, 1.000000e+00
  %4535 = fmul fast float %4534, 0x3FBB2995E0000000
  %4536 = fmul fast float %4520, 0x402921FB60000000
  %4537 = fadd fast float %4536, 0x401921FB60000000
  %4538 = call float @dx.op.unary.f32(i32 13, float %4537)  ; Sin(value)
  %4539 = fadd fast float %4538, 0xBE8777A5C0000000
  %4540 = fmul fast float %4539, 0x3FB45F3060000000
  %4541 = call float @dx.op.dot4.f32(i32 56, float %4515, float %4516, float %4517, float %4518, float %4525, float %4530, float %4535, float %4540)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4542 = fmul fast float %4541, 0xBFF7154760000000
  %4543 = call float @dx.op.unary.f32(i32 21, float %4542)  ; Exp(value)
  %4544 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  br label %4545

; <label>:4545                                    ; preds = %4513, %4509
  %4546 = phi float [ %4544, %4513 ], [ 1.000000e+00, %4509 ]
  %4547 = fadd fast float %4546, -1.000000e+00
  %4548 = fmul fast float %4547, %4507
  %4549 = fadd fast float %4548, 1.000000e+00
  br label %4550

; <label>:4550                                    ; preds = %4545, %4451
  %4551 = phi float [ %4549, %4545 ], [ 1.000000e+00, %4451 ]
  %4552 = fmul fast float %4551, %4447
  %4553 = extractvalue %dx.types.CBufRet.f32 %2355, 2
  %4554 = fadd fast float %2356, %138
  %4555 = fadd fast float %2357, %139
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 1
  %4558 = fsub fast float -0.000000e+00, %4554
  %4559 = fsub fast float -0.000000e+00, %4555
  %4560 = fsub fast float %2338, %4553
  %4561 = fadd fast float %4560, %4557
  %4562 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4558, float %4559, float %4561)  ; Dot3(ax,ay,az,bx,by,bz)
  %4563 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3802, float %3803, float %3804)  ; Dot3(ax,ay,az,bx,by,bz)
  %4564 = fdiv fast float 1.000000e+00, %4563
  %4565 = fmul fast float %4564, %4562
  %4566 = fmul fast float %3802, %4565
  %4567 = fmul fast float %3803, %4565
  %4568 = fadd fast float %4566, %4554
  %4569 = fadd fast float %4567, %4555
  %4570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4571 = extractvalue %dx.types.CBufRet.f32 %4570, 0
  %4572 = extractvalue %dx.types.CBufRet.f32 %4570, 1
  %4573 = fsub fast float %4568, %4571
  %4574 = fsub fast float %4569, %4572
  %4575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.f32 %4575, 2
  %4577 = extractvalue %dx.types.CBufRet.f32 %4575, 3
  %4578 = fmul fast float %4573, %4576
  %4579 = fmul fast float %4574, %4577
  %4580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.i32 %4580, 3
  %4582 = icmp eq i32 %4581, 0
  br i1 %4582, label %4588, label %4583

; <label>:4583                                    ; preds = %4550
  %4584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %4578, float %4579, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4585 = extractvalue %dx.types.ResRet.f32 %4584, 0
  %4586 = extractvalue %dx.types.ResRet.f32 %4584, 1
  %4587 = extractvalue %dx.types.ResRet.f32 %4584, 2
  br label %4593

; <label>:4588                                    ; preds = %4550
  %4589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %4578, float %4579, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4590 = extractvalue %dx.types.ResRet.f32 %4589, 0
  %4591 = extractvalue %dx.types.ResRet.f32 %4589, 1
  %4592 = extractvalue %dx.types.ResRet.f32 %4589, 2
  br label %4593

; <label>:4593                                    ; preds = %4588, %4583
  %4594 = phi float [ %4585, %4583 ], [ %4590, %4588 ]
  %4595 = phi float [ %4586, %4583 ], [ %4591, %4588 ]
  %4596 = phi float [ %4587, %4583 ], [ %4592, %4588 ]
  %4597 = extractvalue %dx.types.CBufRet.f32 %4556, 2
  %4598 = fmul fast float %4597, %4594
  %4599 = extractvalue %dx.types.CBufRet.f32 %4556, 0
  %4600 = fsub fast float %4565, %4599
  %4601 = fsub fast float %4600, %4598
  %4602 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4601)  ; FMax(a,b)
  %4603 = fmul fast float %4602, %4595
  %4604 = call float @dx.op.binary.f32(i32 36, float %4596, float %4603)  ; FMin(a,b)
  %4605 = fmul fast float %4604, 0xBFF7154760000000
  %4606 = call float @dx.op.unary.f32(i32 21, float %4605)  ; Exp(value)
  %4607 = fmul fast float %4552, %4606
  br label %4608

; <label>:4608                                    ; preds = %4593, %4446
  %4609 = phi float [ %4607, %4593 ], [ %4447, %4446 ]
  %4610 = call float @dx.op.binary.f32(i32 36, float %4609, float %4609)  ; FMin(a,b)
  %4611 = call float @dx.op.binary.f32(i32 36, float %4609, float %4610)  ; FMin(a,b)
  %4612 = fcmp fast ogt float %4611, 0.000000e+00
  br i1 %4612, label %4613, label %4999, !dx.controlflow.hints !132

; <label>:4613                                    ; preds = %4608
  %4614 = fmul fast float %4609, %3813
  %4615 = fmul fast float %4609, %3814
  %4616 = fmul fast float %4609, %3815
  %4617 = fsub fast float %140, %2126
  %4618 = fcmp fast ogt float %4617, 0.000000e+00
  %4619 = fmul fast float %3802, 5.120000e+02
  %4620 = fmul fast float %3803, 5.120000e+02
  %4621 = fmul fast float %3804, 5.120000e+02
  %4622 = fadd fast float %4621, %140
  %4623 = fsub fast float %2126, %4622
  %4624 = fmul fast float %4623, 2.000000e+00
  %4625 = fadd fast float %4624, %4622
  %4626 = select i1 %4618, float %4625, float %4622
  %4627 = fsub fast float %4626, %140
  %4628 = call float @dx.op.dot3.f32(i32 55, float %4619, float %4620, float %4627, float %4619, float %4620, float %4627)  ; Dot3(ax,ay,az,bx,by,bz)
  %4629 = call float @dx.op.unary.f32(i32 25, float %4628)  ; Rsqrt(value)
  %4630 = fmul fast float %4629, %4619
  %4631 = fmul fast float %4629, %4620
  %4632 = fmul fast float %4629, %4627
  %4633 = fsub fast float %2126, %140
  %4634 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4633)  ; Dot3(ax,ay,az,bx,by,bz)
  %4635 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4630, float %4631, float %4632)  ; Dot3(ax,ay,az,bx,by,bz)
  %4636 = fdiv fast float 1.000000e+00, %4635
  %4637 = fmul fast float %4636, %4634
  %4638 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4617, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4639 = fcmp fast ogt float %4638, 0.000000e+00
  %4640 = fcmp fast olt float %4638, 0.000000e+00
  %4641 = zext i1 %4639 to i32
  %4642 = zext i1 %4640 to i32
  %4643 = sub nsw i32 %4641, %4642
  %4644 = sitofp i32 %4643 to float
  %4645 = fsub fast float %4626, %2126
  %4646 = call float @dx.op.dot3.f32(i32 55, float %4619, float %4620, float %4645, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4647 = fcmp fast ogt float %4646, 0.000000e+00
  %4648 = fcmp fast olt float %4646, 0.000000e+00
  %4649 = zext i1 %4647 to i32
  %4650 = zext i1 %4648 to i32
  %4651 = sub nsw i32 %4649, %4650
  %4652 = sitofp i32 %4651 to float
  %4653 = fcmp fast une float %4644, %4652
  br i1 %4653, label %4654, label %4664

; <label>:4654                                    ; preds = %4613
  %4655 = fmul fast float %4637, %4632
  %4656 = fmul fast float %4637, %4631
  %4657 = fmul fast float %4637, %4630
  %4658 = fmul fast float %4657, %4657
  %4659 = fmul fast float %4656, %4656
  %4660 = fadd fast float %4658, %4659
  %4661 = fmul fast float %4655, %4655
  %4662 = fadd fast float %4660, %4661
  %4663 = call float @dx.op.unary.f32(i32 24, float %4662)  ; Sqrt(value)
  br label %4674

; <label>:4664                                    ; preds = %4613
  %4665 = icmp slt i32 %4643, 0
  br i1 %4665, label %4666, label %4674

; <label>:4666                                    ; preds = %4664
  %4667 = fsub fast float %140, %4626
  %4668 = fmul fast float %4619, %4619
  %4669 = fmul fast float %4620, %4620
  %4670 = fadd fast float %4668, %4669
  %4671 = fmul fast float %4667, %4667
  %4672 = fadd fast float %4670, %4671
  %4673 = call float @dx.op.unary.f32(i32 24, float %4672)  ; Sqrt(value)
  br label %4674

; <label>:4674                                    ; preds = %4666, %4664, %4654
  %4675 = phi float [ %4663, %4654 ], [ %4673, %4666 ], [ 0.000000e+00, %4664 ]
  %4676 = fsub fast float -0.000000e+00, %4675
  %4677 = select i1 %4618, float -0.000000e+00, float %4676
  %4678 = fmul fast float %2127, 0x3FF7154760000000
  %4679 = fmul fast float %4678, %4677
  %4680 = fmul fast float %2128, 0x3FF7154760000000
  %4681 = fmul fast float %4680, %4677
  %4682 = fmul fast float %2129, 0x3FF7154760000000
  %4683 = fmul fast float %4682, %4677
  %4684 = call float @dx.op.unary.f32(i32 21, float %4679)  ; Exp(value)
  %4685 = call float @dx.op.unary.f32(i32 21, float %4681)  ; Exp(value)
  %4686 = call float @dx.op.unary.f32(i32 21, float %4683)  ; Exp(value)
  %4687 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4688 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4689 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4690 = fmul fast float %4614, %4687
  %4691 = fmul fast float %4615, %4688
  %4692 = fmul fast float %4616, %4689
  %4693 = fsub fast float %3802, %2326
  %4694 = fsub fast float %3803, %2325
  %4695 = fsub fast float %3804, %2324
  %4696 = call float @dx.op.dot3.f32(i32 55, float %4693, float %4694, float %4695, float %4693, float %4694, float %4695)  ; Dot3(ax,ay,az,bx,by,bz)
  %4697 = call float @dx.op.unary.f32(i32 25, float %4696)  ; Rsqrt(value)
  %4698 = fmul fast float %4697, %4693
  %4699 = fmul fast float %4697, %4694
  %4700 = fmul fast float %4697, %4695
  %4701 = call float @dx.op.dot3.f32(i32 55, float %3802, float %3803, float %3804, float %2330, float %2331, float %2332)  ; Dot3(ax,ay,az,bx,by,bz)
  %4702 = call float @dx.op.dot3.f32(i32 55, float %2323, float %2322, float %2321, float %4698, float %4699, float %4700)  ; Dot3(ax,ay,az,bx,by,bz)
  %4703 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4704 = fmul fast float %4703, %4703
  %4705 = fmul fast float %4704, %2354
  %4706 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4707 = fmul fast float %4706, %4703
  %4708 = call float @dx.op.dot3.f32(i32 55, float %2330, float %2331, float %2332, float %4698, float %4699, float %4700)  ; Dot3(ax,ay,az,bx,by,bz)
  %4709 = fmul fast float %4708, %4708
  %4710 = call float @dx.op.unary.f32(i32 6, float %4701)  ; FAbs(value)
  %4711 = call float @dx.op.binary.f32(i32 35, float %3770, float 0x3F847AE140000000)  ; FMax(a,b)
  %4712 = fmul fast float %4711, %4711
  %4713 = fmul fast float %4712, %4712
  %4714 = fsub fast float 1.000000e+00, %4713
  %4715 = fmul fast float %2341, %2341
  %4716 = fmul fast float %4715, %4714
  %4717 = fadd fast float %4716, %4713
  %4718 = bitcast float %4717 to i32
  %4719 = ashr i32 %4718, 1
  %4720 = add nsw i32 %4719, 532487669
  %4721 = bitcast i32 %4720 to float
  %4722 = fadd fast float %4721, %2341
  %4723 = fmul fast float %4713, %4709
  %4724 = fsub fast float 1.000000e+00, %4709
  %4725 = fadd fast float %4724, %4723
  %4726 = fmul fast float %4710, %4710
  %4727 = fmul fast float %4726, %4714
  %4728 = fadd fast float %4727, %4713
  %4729 = bitcast float %4728 to i32
  %4730 = ashr i32 %4729, 1
  %4731 = add nsw i32 %4730, 532487669
  %4732 = bitcast i32 %4731 to float
  %4733 = fadd fast float %4732, %4710
  %4734 = fmul fast float %4725, %4725
  %4735 = fmul fast float %4734, %4722
  %4736 = fmul fast float %4735, %4733
  %4737 = fdiv fast float 0x3FF0A00000000000, %4736
  %4738 = fmul fast float %4737, %4713
  %4739 = fmul fast float %3632, 0x3FF9999980000000
  %4740 = fsub fast float 5.000000e+00, %4739
  %4741 = call float @dx.op.unary.f32(i32 6, float %4702)  ; FAbs(value)
  %4742 = fsub fast float 1.000000e+00, %4741
  %4743 = fmul fast float %3632, 0x41D9660740000000
  %4744 = fadd fast float %4743, 0xC1EFBF8940000000
  %4745 = bitcast float %4742 to i32
  %4746 = sitofp i32 %4745 to float
  %4747 = fmul fast float %4746, %4740
  %4748 = fadd fast float %4744, %4747
  %4749 = fptosi float %4748 to i32
  %4750 = bitcast i32 %4749 to float
  %4751 = fsub fast float 1.000000e+00, %2327
  %4752 = fsub fast float 1.000000e+00, %2328
  %4753 = fsub fast float 1.000000e+00, %2339
  %4754 = fmul fast float %4750, %4751
  %4755 = fmul fast float %4750, %4752
  %4756 = fmul fast float %4750, %4753
  %4757 = fadd fast float %4754, %2327
  %4758 = fadd fast float %4755, %2328
  %4759 = fadd fast float %4756, %2339
  br i1 %3655, label %4760, label %4783

; <label>:4760                                    ; preds = %4674
  %4761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1672, float %4741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4762 = extractvalue %dx.types.ResRet.f32 %4761, 0
  %4763 = extractvalue %dx.types.ResRet.f32 %4761, 1
  %4764 = extractvalue %dx.types.ResRet.f32 %4761, 2
  %4765 = fadd fast float %4762, -5.000000e-01
  %4766 = fadd fast float %4763, -5.000000e-01
  %4767 = fadd fast float %4764, -5.000000e-01
  %4768 = fmul fast float %2327, 4.000000e+00
  %4769 = fmul fast float %4768, %4751
  %4770 = fmul fast float %4769, %4765
  %4771 = fmul fast float %2328, 4.000000e+00
  %4772 = fmul fast float %4771, %4752
  %4773 = fmul fast float %4772, %4766
  %4774 = fmul fast float %2339, 4.000000e+00
  %4775 = fmul fast float %4774, %4753
  %4776 = fmul fast float %4775, %4767
  %4777 = fadd fast float %4770, %4757
  %4778 = fadd fast float %4773, %4758
  %4779 = fadd fast float %4776, %4759
  %4780 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4781 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4782 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  br label %4783

; <label>:4783                                    ; preds = %4760, %4674
  %4784 = phi float [ %4780, %4760 ], [ %4757, %4674 ]
  %4785 = phi float [ %4781, %4760 ], [ %4758, %4674 ]
  %4786 = phi float [ %4782, %4760 ], [ %4759, %4674 ]
  %4787 = fmul fast float %4701, 9.843750e-01
  %4788 = fadd fast float %4787, 7.812500e-03
  %4789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4788, float %3636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4790 = extractvalue %dx.types.ResRet.f32 %4789, 0
  %4791 = extractvalue %dx.types.ResRet.f32 %4789, 1
  %4792 = extractvalue %dx.types.ResRet.f32 %4789, 2
  %4793 = extractvalue %dx.types.ResRet.f32 %4789, 3
  %4794 = fsub fast float %4792, %4790
  %4795 = fsub fast float %4793, %4791
  %4796 = fmul fast float %4794, %3642
  %4797 = fmul fast float %4795, %3642
  %4798 = fadd fast float %4796, %4790
  %4799 = fadd fast float %4797, %4791
  %4800 = fmul fast float %4798, %2327
  %4801 = fmul fast float %4798, %2328
  %4802 = fmul fast float %4798, %2339
  %4803 = fadd fast float %4800, %4799
  %4804 = fadd fast float %4801, %4799
  %4805 = fadd fast float %4802, %4799
  br i1 %3655, label %4806, label %4829

; <label>:4806                                    ; preds = %4783
  %4807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1672, float %4701, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4808 = extractvalue %dx.types.ResRet.f32 %4807, 0
  %4809 = extractvalue %dx.types.ResRet.f32 %4807, 1
  %4810 = extractvalue %dx.types.ResRet.f32 %4807, 2
  %4811 = fadd fast float %4808, -5.000000e-01
  %4812 = fadd fast float %4809, -5.000000e-01
  %4813 = fadd fast float %4810, -5.000000e-01
  %4814 = fmul fast float %2327, 4.000000e+00
  %4815 = fmul fast float %4814, %4751
  %4816 = fmul fast float %4815, %4811
  %4817 = fmul fast float %2328, 4.000000e+00
  %4818 = fmul fast float %4817, %4752
  %4819 = fmul fast float %4818, %4812
  %4820 = fmul fast float %2339, 4.000000e+00
  %4821 = fmul fast float %4820, %4753
  %4822 = fmul fast float %4821, %4813
  %4823 = fadd fast float %4816, %4803
  %4824 = fadd fast float %4819, %4804
  %4825 = fadd fast float %4822, %4805
  %4826 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4827 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4828 = call float @dx.op.unary.f32(i32 7, float %4825)  ; Saturate(value)
  br label %4829

; <label>:4829                                    ; preds = %4806, %4783
  %4830 = phi float [ %4826, %4806 ], [ %4803, %4783 ]
  %4831 = phi float [ %4827, %4806 ], [ %4804, %4783 ]
  %4832 = phi float [ %4828, %4806 ], [ %4805, %4783 ]
  %4833 = call float @dx.op.binary.f32(i32 35, float %4831, float %4832)  ; FMax(a,b)
  %4834 = call float @dx.op.binary.f32(i32 35, float %4830, float %4833)  ; FMax(a,b)
  %4835 = fsub fast float 1.000000e+00, %4834
  %4836 = call float @dx.op.binary.f32(i32 35, float %4710, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4837 = fdiv fast float %1078, %4836
  %4838 = fmul fast float %3710, %4837
  %4839 = fmul fast float %3712, %4837
  %4840 = fmul fast float %3714, %4837
  %4841 = call float @dx.op.unary.f32(i32 21, float %4838)  ; Exp(value)
  %4842 = call float @dx.op.unary.f32(i32 21, float %4839)  ; Exp(value)
  %4843 = call float @dx.op.unary.f32(i32 21, float %4840)  ; Exp(value)
  %4844 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4845 = call float @dx.op.unary.f32(i32 7, float %4842)  ; Saturate(value)
  %4846 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4847 = select i1 %3707, float %4844, float 0.000000e+00
  %4848 = select i1 %3708, float %4845, float 0.000000e+00
  %4849 = select i1 %3709, float %4846, float 0.000000e+00
  %4850 = fsub fast float -0.000000e+00, %2330
  %4851 = fsub fast float -0.000000e+00, %2331
  %4852 = fsub fast float -0.000000e+00, %2332
  %4853 = call float @dx.op.dot3.f32(i32 55, float %3802, float %3803, float %3804, float %4850, float %4851, float %4852)  ; Dot3(ax,ay,az,bx,by,bz)
  %4854 = call float @dx.op.unary.f32(i32 7, float %4853)  ; Saturate(value)
  %4855 = fmul fast float %4854, 9.843750e-01
  %4856 = fadd fast float %4855, 7.812500e-03
  %4857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4856, float %3636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4858 = extractvalue %dx.types.ResRet.f32 %4857, 0
  %4859 = extractvalue %dx.types.ResRet.f32 %4857, 1
  %4860 = extractvalue %dx.types.ResRet.f32 %4857, 2
  %4861 = extractvalue %dx.types.ResRet.f32 %4857, 3
  %4862 = fsub fast float %4860, %4858
  %4863 = fsub fast float %4861, %4859
  %4864 = fmul fast float %4862, %3642
  %4865 = fmul fast float %4863, %3642
  %4866 = fadd fast float %4864, %4858
  %4867 = fadd fast float %4865, %4859
  %4868 = fmul fast float %4866, %2327
  %4869 = fmul fast float %4866, %2328
  %4870 = fmul fast float %4866, %2339
  %4871 = fadd fast float %4868, %4867
  %4872 = fadd fast float %4869, %4867
  %4873 = fadd fast float %4870, %4867
  br i1 %3655, label %4874, label %4897

; <label>:4874                                    ; preds = %4829
  %4875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1672, float %4854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4876 = extractvalue %dx.types.ResRet.f32 %4875, 0
  %4877 = extractvalue %dx.types.ResRet.f32 %4875, 1
  %4878 = extractvalue %dx.types.ResRet.f32 %4875, 2
  %4879 = fadd fast float %4876, -5.000000e-01
  %4880 = fadd fast float %4877, -5.000000e-01
  %4881 = fadd fast float %4878, -5.000000e-01
  %4882 = fmul fast float %2327, 4.000000e+00
  %4883 = fmul fast float %4882, %4751
  %4884 = fmul fast float %4883, %4879
  %4885 = fmul fast float %2328, 4.000000e+00
  %4886 = fmul fast float %4885, %4752
  %4887 = fmul fast float %4886, %4880
  %4888 = fmul fast float %2339, 4.000000e+00
  %4889 = fmul fast float %4888, %4753
  %4890 = fmul fast float %4889, %4881
  %4891 = fadd fast float %4884, %4871
  %4892 = fadd fast float %4887, %4872
  %4893 = fadd fast float %4890, %4873
  %4894 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4895 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4896 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  br label %4897

; <label>:4897                                    ; preds = %4874, %4829
  %4898 = phi float [ %4894, %4874 ], [ %4871, %4829 ]
  %4899 = phi float [ %4895, %4874 ], [ %4872, %4829 ]
  %4900 = phi float [ %4896, %4874 ], [ %4873, %4829 ]
  %4901 = call float @dx.op.binary.f32(i32 35, float %4899, float %4900)  ; FMax(a,b)
  %4902 = call float @dx.op.binary.f32(i32 35, float %4898, float %4901)  ; FMax(a,b)
  %4903 = fsub fast float 1.000000e+00, %4902
  %4904 = fmul fast float %3770, %3775
  %4905 = fadd fast float %3777, %4904
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = fsub fast float %3802, %2347
  %4908 = fsub fast float %3803, %2348
  %4909 = fsub fast float %3804, %2349
  %4910 = call float @dx.op.dot3.f32(i32 55, float %4907, float %4908, float %4909, float %4907, float %4908, float %4909)  ; Dot3(ax,ay,az,bx,by,bz)
  %4911 = call float @dx.op.unary.f32(i32 25, float %4910)  ; Rsqrt(value)
  %4912 = fmul fast float %4911, %4907
  %4913 = fmul fast float %4911, %4908
  %4914 = fmul fast float %4911, %4909
  %4915 = call float @dx.op.dot3.f32(i32 55, float %4850, float %4851, float %4852, float %4912, float %4913, float %4914)  ; Dot3(ax,ay,az,bx,by,bz)
  %4916 = fmul fast float %4915, %4915
  %4917 = call float @dx.op.unary.f32(i32 6, float %4854)  ; FAbs(value)
  %4918 = call float @dx.op.binary.f32(i32 35, float %4906, float 0x3F847AE140000000)  ; FMax(a,b)
  %4919 = fmul fast float %4918, %4918
  %4920 = fmul fast float %4919, %4919
  %4921 = fsub fast float 1.000000e+00, %4920
  %4922 = fmul fast float %4715, %4921
  %4923 = fadd fast float %4922, %4920
  %4924 = bitcast float %4923 to i32
  %4925 = ashr i32 %4924, 1
  %4926 = add nsw i32 %4925, 532487669
  %4927 = bitcast i32 %4926 to float
  %4928 = fadd fast float %4927, %2341
  %4929 = fmul fast float %4920, %4916
  %4930 = fsub fast float 1.000000e+00, %4916
  %4931 = fadd fast float %4930, %4929
  %4932 = fmul fast float %4917, %4917
  %4933 = fmul fast float %4932, %4921
  %4934 = fadd fast float %4933, %4920
  %4935 = bitcast float %4934 to i32
  %4936 = ashr i32 %4935, 1
  %4937 = add nsw i32 %4936, 532487669
  %4938 = bitcast i32 %4937 to float
  %4939 = fadd fast float %4938, %4917
  %4940 = fmul fast float %4931, %4931
  %4941 = fmul fast float %4940, %4928
  %4942 = fmul fast float %4941, %4939
  %4943 = fdiv fast float 0x3FF0A00000000000, %4942
  %4944 = fmul fast float %4943, %4920
  %4945 = fmul fast float %4854, %4847
  %4946 = fmul fast float %4854, %4848
  %4947 = fmul fast float %4854, %4849
  %4948 = fmul fast float %4945, %4903
  %4949 = fmul fast float %4948, %4944
  %4950 = fmul fast float %4946, %4903
  %4951 = fmul fast float %4950, %4944
  %4952 = fmul fast float %4947, %4903
  %4953 = fmul fast float %4952, %4944
  %4954 = fmul fast float %4784, %4738
  %4955 = fmul fast float %4785, %4738
  %4956 = fmul fast float %4786, %4738
  %4957 = fsub fast float 1.000000e+00, %4702
  %4958 = bitcast float %4957 to i32
  %4959 = sitofp i32 %4958 to float
  %4960 = fmul fast float %4959, 5.000000e+00
  %4961 = fadd fast float %4960, 0xC1EFBF8940000000
  %4962 = fptosi float %4961 to i32
  %4963 = bitcast i32 %4962 to float
  %4964 = fmul fast float %4963, %1671
  %4965 = fmul fast float %4835, %4964
  %4966 = fmul fast float %4965, %3702
  %4967 = fmul fast float %4965, %3703
  %4968 = fmul fast float %4965, %3704
  %4969 = fadd fast float %4966, %4954
  %4970 = fadd fast float %4967, %4955
  %4971 = fadd fast float %4968, %4956
  %4972 = fmul fast float %4969, %4707
  %4973 = fmul fast float %4970, %4707
  %4974 = fmul fast float %4971, %4707
  %4975 = fmul fast float %4707, %4690
  %4976 = fmul fast float %4975, %4835
  %4977 = fmul fast float %4707, %4691
  %4978 = fmul fast float %4977, %4835
  %4979 = fmul fast float %4707, %4692
  %4980 = fmul fast float %4979, %4835
  %4981 = fadd fast float %4972, %4949
  %4982 = fadd fast float %4973, %4951
  %4983 = fadd fast float %4974, %4953
  %4984 = fmul fast float %4981, %4690
  %4985 = fmul fast float %4982, %4691
  %4986 = fmul fast float %4983, %4692
  %4987 = fadd fast float %4976, %3792
  %4988 = fmul fast float %4987, %1695
  %4989 = fadd fast float %4978, %3794
  %4990 = fmul fast float %4989, %1695
  %4991 = fadd fast float %4980, %3796
  %4992 = fmul fast float %4991, %1695
  %4993 = fadd fast float %4984, %3755
  %4994 = fmul fast float %4993, %1695
  %4995 = fadd fast float %4985, %3758
  %4996 = fmul fast float %4995, %1695
  %4997 = fadd fast float %4986, %3761
  %4998 = fmul fast float %4997, %1695
  br label %4999

; <label>:4999                                    ; preds = %4897, %4608, %3682
  %5000 = phi float [ %3756, %3682 ], [ %3756, %4608 ], [ %4994, %4897 ]
  %5001 = phi float [ %3759, %3682 ], [ %3759, %4608 ], [ %4996, %4897 ]
  %5002 = phi float [ %3762, %3682 ], [ %3762, %4608 ], [ %4998, %4897 ]
  %5003 = phi float [ %3793, %3682 ], [ %3793, %4608 ], [ %4988, %4897 ]
  %5004 = phi float [ %3795, %3682 ], [ %3795, %4608 ], [ %4990, %4897 ]
  %5005 = phi float [ %3797, %3682 ], [ %3797, %4608 ], [ %4992, %4897 ]
  %5006 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5007 = extractvalue %dx.types.CBufRet.i32 %5006, 0
  %5008 = icmp eq i32 %5007, 0
  br i1 %5008, label %5783, label %5009

; <label>:5009                                    ; preds = %4999
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 2
  %5012 = extractvalue %dx.types.CBufRet.f32 %5010, 3
  %5013 = fmul fast float %5011, %91
  %5014 = fmul fast float %5012, %92
  %5015 = fptoui float %5013 to i32
  %5016 = fptoui float %5014 to i32
  %5017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5018 = extractvalue %dx.types.CBufRet.f32 %5017, 0
  %5019 = extractvalue %dx.types.CBufRet.f32 %5017, 2
  %5020 = extractvalue %dx.types.CBufRet.f32 %5017, 3
  %5021 = fadd fast float %82, -4.000000e+00
  %5022 = call float @dx.op.binary.f32(i32 35, float %5021, float 0.000000e+00)  ; FMax(a,b)
  %5023 = fadd fast float %5022, %5018
  %5024 = fmul fast float %5023, %5019
  %5025 = call float @dx.op.unary.f32(i32 23, float %5024)  ; Log(value)
  %5026 = fmul fast float %5025, %5020
  %5027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5028 = extractvalue %dx.types.CBufRet.f32 %5027, 2
  %5029 = fmul fast float %5026, %5028
  %5030 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5031 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5032 = extractvalue %dx.types.CBufRet.i32 %5031, 1
  %5033 = add i32 %5032, -1
  %5034 = uitofp i32 %5032 to float
  %5035 = fmul fast float %5034, %5030
  %5036 = fptoui float %5035 to i32
  %5037 = call i32 @dx.op.binary.i32(i32 40, i32 %5036, i32 %5033)  ; UMin(a,b)
  %5038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.i32 %5038, 2
  %5040 = extractvalue %dx.types.CBufRet.i32 %5038, 3
  %5041 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5016, i32 %5039, i32 %5015)  ; UMad(a,b,c)
  %5042 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5037, i32 %5040, i32 %5041)  ; UMad(a,b,c)
  %5043 = add nsw i32 %5007, -1
  %5044 = call i32 @dx.op.binary.i32(i32 37, i32 %5043, i32 0)  ; IMax(a,b)
  %5045 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %5046 = fptoui float %5045 to i32
  %5047 = lshr i32 %5046, 5
  %5048 = call i32 @dx.op.binary.i32(i32 40, i32 %5047, i32 8191)  ; UMin(a,b)
  %5049 = shl i32 %5048, 2
  %5050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5049, i32 undef)  ; BufferLoad(srv,index,wot)
  %5051 = extractvalue %dx.types.ResRet.i32 %5050, 0
  %5052 = lshr i32 %5051, 16
  %5053 = and i32 %5051, 65535
  %5054 = lshr i32 %5051, 21
  %5055 = lshr i32 %5053, 5
  %5056 = call i32 @dx.op.binary.i32(i32 40, i32 %5055, i32 %5044)  ; UMin(a,b)
  %5057 = icmp ugt i32 %5054, %5056
  br i1 %5057, label %5783, label %5058

; <label>:5058                                    ; preds = %5009
  br label %5059

; <label>:5059                                    ; preds = %5773, %5058
  %5060 = phi i32 [ %5780, %5773 ], [ %5054, %5058 ]
  %5061 = phi float [ %5774, %5773 ], [ %5000, %5058 ]
  %5062 = phi float [ %5775, %5773 ], [ %5001, %5058 ]
  %5063 = phi float [ %5776, %5773 ], [ %5002, %5058 ]
  %5064 = phi float [ %5777, %5773 ], [ %5003, %5058 ]
  %5065 = phi float [ %5778, %5773 ], [ %5004, %5058 ]
  %5066 = phi float [ %5779, %5773 ], [ %5005, %5058 ]
  %5067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.i32 %5067, 0
  %5069 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5042, i32 %5068, i32 %5060)  ; UMad(a,b,c)
  %5070 = shl i32 %5069, 2
  %5071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5070, i32 undef)  ; BufferLoad(srv,index,wot)
  %5072 = extractvalue %dx.types.ResRet.i32 %5071, 0
  %5073 = shl i32 %5060, 5
  %5074 = sub nsw i32 %5052, %5073
  %5075 = call i32 @dx.op.binary.i32(i32 37, i32 %5074, i32 0)  ; IMax(a,b)
  %5076 = call i32 @dx.op.binary.i32(i32 38, i32 %5075, i32 31)  ; IMin(a,b)
  %5077 = sub nsw i32 1, %5052
  %5078 = add nsw i32 %5077, %5053
  %5079 = call i32 @dx.op.binary.i32(i32 37, i32 %5078, i32 0)  ; IMax(a,b)
  %5080 = call i32 @dx.op.binary.i32(i32 38, i32 %5079, i32 32)  ; IMin(a,b)
  %5081 = and i32 %5080, 31
  %5082 = shl i32 -1, %5081
  %5083 = xor i32 %5082, -1
  %5084 = and i32 %5076, 31
  %5085 = shl i32 %5083, %5084
  %5086 = icmp eq i32 %5080, 32
  %5087 = select i1 %5086, i32 -1, i32 %5085
  %5088 = and i32 %5087, %5072
  %5089 = icmp eq i32 %5088, 0
  br i1 %5089, label %5773, label %5090

; <label>:5090                                    ; preds = %5059
  br label %5091

; <label>:5091                                    ; preds = %5226, %5090
  %5092 = phi i32 [ %5103, %5226 ], [ %5088, %5090 ]
  %5093 = phi float [ %5227, %5226 ], [ %5061, %5090 ]
  %5094 = phi float [ %5228, %5226 ], [ %5062, %5090 ]
  %5095 = phi float [ %5229, %5226 ], [ %5063, %5090 ]
  %5096 = phi float [ %5230, %5226 ], [ %5064, %5090 ]
  %5097 = phi float [ %5231, %5226 ], [ %5065, %5090 ]
  %5098 = phi float [ %5232, %5226 ], [ %5066, %5090 ]
  %5099 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5092)  ; FirstbitLo(value)
  %5100 = add i32 %5099, %5073
  %5101 = and i32 %5099, 31
  %5102 = shl i32 1, %5101
  %5103 = xor i32 %5102, %5092
  %5104 = mul i32 %5100, 112
  %5105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5104, i32 undef)  ; BufferLoad(srv,index,wot)
  %5106 = extractvalue %dx.types.ResRet.f32 %5105, 0
  %5107 = extractvalue %dx.types.ResRet.f32 %5105, 1
  %5108 = extractvalue %dx.types.ResRet.f32 %5105, 2
  %5109 = or i32 %5104, 12
  %5110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5109, i32 undef)  ; BufferLoad(srv,index,wot)
  %5111 = extractvalue %dx.types.ResRet.f32 %5110, 0
  %5112 = add i32 %5104, 16
  %5113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5112, i32 undef)  ; BufferLoad(srv,index,wot)
  %5114 = extractvalue %dx.types.ResRet.f32 %5113, 0
  %5115 = extractvalue %dx.types.ResRet.f32 %5113, 1
  %5116 = extractvalue %dx.types.ResRet.f32 %5113, 2
  %5117 = add i32 %5104, 28
  %5118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5117, i32 undef)  ; BufferLoad(srv,index,wot)
  %5119 = extractvalue %dx.types.ResRet.i32 %5118, 0
  %5120 = add i32 %5104, 44
  %5121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5120, i32 undef)  ; BufferLoad(srv,index,wot)
  %5122 = extractvalue %dx.types.ResRet.f32 %5121, 0
  %5123 = add i32 %5104, 48
  %5124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5123, i32 undef)  ; BufferLoad(srv,index,wot)
  %5125 = extractvalue %dx.types.ResRet.f32 %5124, 0
  %5126 = extractvalue %dx.types.ResRet.f32 %5124, 1
  %5127 = extractvalue %dx.types.ResRet.f32 %5124, 2
  %5128 = extractvalue %dx.types.ResRet.f32 %5124, 3
  %5129 = add i32 %5104, 64
  %5130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5129, i32 undef)  ; BufferLoad(srv,index,wot)
  %5131 = extractvalue %dx.types.ResRet.f32 %5130, 0
  %5132 = extractvalue %dx.types.ResRet.f32 %5130, 1
  %5133 = extractvalue %dx.types.ResRet.f32 %5130, 2
  %5134 = extractvalue %dx.types.ResRet.f32 %5130, 3
  %5135 = add i32 %5104, 80
  %5136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5135, i32 undef)  ; BufferLoad(srv,index,wot)
  %5137 = extractvalue %dx.types.ResRet.f32 %5136, 1
  %5138 = extractvalue %dx.types.ResRet.f32 %5136, 2
  %5139 = add i32 %5104, 92
  %5140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5139, i32 undef)  ; BufferLoad(srv,index,wot)
  %5141 = extractvalue %dx.types.ResRet.i32 %5140, 0
  %5142 = call float @dx.op.dot3.f32(i32 55, float %5106, float %5107, float %5108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5143 = select i1 %229, float %5137, float %5106
  %5144 = select i1 %229, float %5142, float %5107
  %5145 = select i1 %229, float %5138, float %5108
  %5146 = and i32 %5141, 65535
  %5147 = uitofp i32 %5146 to float
  %5148 = lshr i32 %5141, 16
  %5149 = uitofp i32 %5148 to float
  %5150 = and i32 %5119, 65535
  %5151 = and i32 %5119, 50331648
  %5152 = icmp slt i32 %5119, 0
  %5153 = icmp eq i32 %5151, 33554432
  %5154 = fsub fast float %5125, %138
  %5155 = fsub fast float %5126, %139
  %5156 = fsub fast float %5127, %140
  %5157 = call float @dx.op.dot3.f32(i32 55, float %5154, float %5155, float %5156, float %5154, float %5155, float %5156)  ; Dot3(ax,ay,az,bx,by,bz)
  %5158 = call float @dx.op.unary.f32(i32 24, float %5157)  ; Sqrt(value)
  %5159 = fdiv fast float 1.000000e+00, %5158
  %5160 = fmul fast float %5159, %5154
  %5161 = fmul fast float %5159, %5155
  %5162 = fmul fast float %5159, %5156
  %5163 = fadd fast float %5158, %5111
  %5164 = fdiv fast float 1.000000e+00, %5163
  %5165 = fmul float %5122, %5164
  %5166 = fmul float %5165, %5165
  %5167 = call float @dx.op.unary.f32(i32 7, float %5166)  ; Saturate(value)
  br i1 %5153, label %5168, label %5189

; <label>:5168                                    ; preds = %5091
  %5169 = fmul fast float %5133, %5114
  %5170 = fmul fast float %5133, %5115
  %5171 = fmul fast float %5133, %5116
  %5172 = fadd fast float %5154, %5169
  %5173 = fadd fast float %5155, %5170
  %5174 = fadd fast float %5156, %5171
  %5175 = call float @dx.op.dot3.f32(i32 55, float %5172, float %5173, float %5174, float %5172, float %5173, float %5174)  ; Dot3(ax,ay,az,bx,by,bz)
  %5176 = call float @dx.op.unary.f32(i32 25, float %5175)  ; Rsqrt(value)
  %5177 = fmul fast float %5176, %5172
  %5178 = fmul fast float %5176, %5173
  %5179 = fmul fast float %5176, %5174
  %5180 = fsub fast float %138, %5125
  %5181 = fsub fast float %139, %5126
  %5182 = fsub fast float %140, %5127
  %5183 = fsub fast float -0.000000e+00, %5180
  %5184 = fsub fast float -0.000000e+00, %5181
  %5185 = fsub fast float -0.000000e+00, %5182
  %5186 = call float @dx.op.dot3.f32(i32 55, float %5183, float %5184, float %5185, float %5114, float %5115, float %5116)  ; Dot3(ax,ay,az,bx,by,bz)
  %5187 = fcmp fast ogt float %5186, 0.000000e+00
  %5188 = uitofp i1 %5187 to float
  br label %5189

; <label>:5189                                    ; preds = %5168, %5091
  %5190 = phi float [ %5188, %5168 ], [ 1.000000e+00, %5091 ]
  %5191 = phi float [ %5177, %5168 ], [ %5160, %5091 ]
  %5192 = phi float [ %5178, %5168 ], [ %5161, %5091 ]
  %5193 = phi float [ %5179, %5168 ], [ %5162, %5091 ]
  %5194 = call float @dx.op.dot3.f32(i32 55, float %5114, float %5115, float %5116, float %5191, float %5192, float %5193)  ; Dot3(ax,ay,az,bx,by,bz)
  %5195 = fmul fast float %5194, %5194
  %5196 = call float @dx.op.unary.f32(i32 7, float %5195)  ; Saturate(value)
  %5197 = fsub fast float 1.000000e+00, %5196
  %5198 = fmul fast float %5197, 5.000000e-01
  %5199 = fcmp fast ogt float %5194, 0.000000e+00
  %5200 = fsub fast float 1.000000e+00, %5198
  %5201 = select i1 %5199, float %5198, float %5200
  %5202 = fmul fast float %5201, %5149
  %5203 = fadd fast float %5202, %5147
  %5204 = fmul fast float %5203, 0x3EF0001000000000
  %5205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %58, float %5204, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5206 = extractvalue %dx.types.ResRet.f32 %5205, 0
  %5207 = fmul fast float %5194, %5131
  %5208 = fadd fast float %5207, %5132
  %5209 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  %5210 = select i1 %5153, float 1.000000e+00, float %5209
  %5211 = select i1 %5153, float %5209, float 1.000000e+00
  %5212 = fmul fast float %5158, %5128
  %5213 = fsub fast float 1.000000e+00, %5212
  %5214 = fmul fast float %5213, %5134
  %5215 = call float @dx.op.unary.f32(i32 7, float %5214)  ; Saturate(value)
  %5216 = fmul fast float %5215, %5211
  %5217 = fmul fast float %5216, 2.000000e+00
  %5218 = fsub fast float 3.000000e+00, %5217
  %5219 = fmul fast float %5206, %5190
  %5220 = fmul fast float %5216, %5216
  %5221 = fmul fast float %5220, %5219
  %5222 = fmul fast float %5221, %5218
  %5223 = call float @dx.op.binary.f32(i32 36, float %5222, float %5222)  ; FMin(a,b)
  %5224 = call float @dx.op.binary.f32(i32 36, float %5222, float %5223)  ; FMin(a,b)
  %5225 = fcmp fast ogt float %5224, 0.000000e+00
  br i1 %5225, label %5234, label %5226, !dx.controlflow.hints !133

; <label>:5226                                    ; preds = %5726, %5334, %5189
  %5227 = phi float [ %5093, %5334 ], [ %5093, %5189 ], [ %5769, %5726 ]
  %5228 = phi float [ %5094, %5334 ], [ %5094, %5189 ], [ %5770, %5726 ]
  %5229 = phi float [ %5095, %5334 ], [ %5095, %5189 ], [ %5771, %5726 ]
  %5230 = phi float [ %5096, %5334 ], [ %5096, %5189 ], [ %5763, %5726 ]
  %5231 = phi float [ %5097, %5334 ], [ %5097, %5189 ], [ %5764, %5726 ]
  %5232 = phi float [ %5098, %5334 ], [ %5098, %5189 ], [ %5765, %5726 ]
  %5233 = icmp eq i32 %5092, %5102
  br i1 %5233, label %5772, label %5091

; <label>:5234                                    ; preds = %5189
  %5235 = icmp eq i32 %5150, 255
  br i1 %5235, label %5334, label %5236, !dx.controlflow.hints !134

; <label>:5236                                    ; preds = %5234
  %5237 = mul nuw nsw i32 %5150, 176
  %5238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5237, i32 undef)  ; BufferLoad(srv,index,wot)
  %5239 = extractvalue %dx.types.ResRet.f32 %5238, 0
  %5240 = extractvalue %dx.types.ResRet.f32 %5238, 1
  %5241 = extractvalue %dx.types.ResRet.f32 %5238, 2
  %5242 = extractvalue %dx.types.ResRet.f32 %5238, 3
  %5243 = add nuw nsw i32 %5237, 16
  %5244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5243, i32 undef)  ; BufferLoad(srv,index,wot)
  %5245 = extractvalue %dx.types.ResRet.f32 %5244, 0
  %5246 = extractvalue %dx.types.ResRet.f32 %5244, 1
  %5247 = add nuw nsw i32 %5237, 32
  %5248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5247, i32 undef)  ; BufferLoad(srv,index,wot)
  %5249 = extractvalue %dx.types.ResRet.f32 %5248, 0
  %5250 = extractvalue %dx.types.ResRet.f32 %5248, 1
  %5251 = extractvalue %dx.types.ResRet.f32 %5248, 2
  %5252 = add nuw nsw i32 %5237, 48
  %5253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5252, i32 undef)  ; BufferLoad(srv,index,wot)
  %5254 = extractvalue %dx.types.ResRet.f32 %5253, 0
  %5255 = extractvalue %dx.types.ResRet.f32 %5253, 1
  %5256 = extractvalue %dx.types.ResRet.f32 %5253, 2
  %5257 = extractvalue %dx.types.ResRet.f32 %5253, 3
  %5258 = add nuw nsw i32 %5237, 64
  %5259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5258, i32 undef)  ; BufferLoad(srv,index,wot)
  %5260 = extractvalue %dx.types.ResRet.f32 %5259, 0
  %5261 = extractvalue %dx.types.ResRet.f32 %5259, 1
  %5262 = extractvalue %dx.types.ResRet.f32 %5259, 2
  %5263 = extractvalue %dx.types.ResRet.f32 %5259, 3
  %5264 = add nuw nsw i32 %5237, 80
  %5265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5264, i32 undef)  ; BufferLoad(srv,index,wot)
  %5266 = extractvalue %dx.types.ResRet.f32 %5265, 0
  %5267 = extractvalue %dx.types.ResRet.f32 %5265, 1
  %5268 = extractvalue %dx.types.ResRet.f32 %5265, 2
  %5269 = extractvalue %dx.types.ResRet.f32 %5265, 3
  %5270 = add nuw nsw i32 %5237, 96
  %5271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5270, i32 undef)  ; BufferLoad(srv,index,wot)
  %5272 = extractvalue %dx.types.ResRet.f32 %5271, 0
  %5273 = extractvalue %dx.types.ResRet.f32 %5271, 1
  %5274 = extractvalue %dx.types.ResRet.f32 %5271, 2
  %5275 = extractvalue %dx.types.ResRet.f32 %5271, 3
  %5276 = bitcast float %5246 to i32
  %5277 = fmul fast float %5251, %70
  %5278 = fmul fast float %5251, %71
  %5279 = fmul fast float %5251, %72
  %5280 = fadd fast float %5277, %138
  %5281 = fadd fast float %5278, %139
  %5282 = fadd fast float %5279, %140
  %5283 = fmul fast float %5280, %5254
  %5284 = call float @dx.op.tertiary.f32(i32 46, float %5281, float %5260, float %5283)  ; FMad(a,b,c)
  %5285 = call float @dx.op.tertiary.f32(i32 46, float %5282, float %5266, float %5284)  ; FMad(a,b,c)
  %5286 = fadd fast float %5285, %5272
  %5287 = fmul fast float %5280, %5255
  %5288 = call float @dx.op.tertiary.f32(i32 46, float %5281, float %5261, float %5287)  ; FMad(a,b,c)
  %5289 = call float @dx.op.tertiary.f32(i32 46, float %5282, float %5267, float %5288)  ; FMad(a,b,c)
  %5290 = fadd fast float %5289, %5273
  %5291 = fmul fast float %5280, %5256
  %5292 = call float @dx.op.tertiary.f32(i32 46, float %5281, float %5262, float %5291)  ; FMad(a,b,c)
  %5293 = call float @dx.op.tertiary.f32(i32 46, float %5282, float %5268, float %5292)  ; FMad(a,b,c)
  %5294 = fadd fast float %5293, %5274
  %5295 = fmul fast float %5280, %5257
  %5296 = call float @dx.op.tertiary.f32(i32 46, float %5281, float %5263, float %5295)  ; FMad(a,b,c)
  %5297 = call float @dx.op.tertiary.f32(i32 46, float %5282, float %5269, float %5296)  ; FMad(a,b,c)
  %5298 = fadd fast float %5297, %5275
  %5299 = fdiv fast float %5286, %5298
  %5300 = fdiv fast float %5290, %5298
  %5301 = fdiv fast float %5294, %5298
  %5302 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5301)  ; FMax(a,b)
  %5303 = fmul fast float %240, 0x401921FB60000000
  %5304 = call float @dx.op.unary.f32(i32 13, float %5303)  ; Sin(value)
  %5305 = call float @dx.op.unary.f32(i32 12, float %5303)  ; Cos(value)
  %5306 = fsub fast float -0.000000e+00, %5304
  %5307 = fmul fast float %5241, 5.000000e-01
  %5308 = call float @dx.op.dot2.f32(i32 54, float %240, float %240, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %5309 = call float @dx.op.unary.f32(i32 22, float %5308)  ; Frc(value)
  %5310 = fmul fast float %5309, 0x404A7DD040000000
  %5311 = call float @dx.op.unary.f32(i32 22, float %5310)  ; Frc(value)
  %5312 = fmul fast float %5311, %5250
  %5313 = fadd fast float %5312, %5307
  %5314 = call float @dx.op.tertiary.f32(i32 46, float %5313, float %5306, float 0.000000e+00)  ; FMad(a,b,c)
  %5315 = call float @dx.op.tertiary.f32(i32 46, float %5313, float %5305, float 0.000000e+00)  ; FMad(a,b,c)
  %5316 = fadd fast float %5314, %5299
  %5317 = fadd fast float %5315, %5300
  %5318 = fmul fast float %5316, %5245
  %5319 = fmul fast float %5317, %5245
  %5320 = call float @dx.op.binary.f32(i32 35, float %5318, float %5241)  ; FMax(a,b)
  %5321 = call float @dx.op.binary.f32(i32 35, float %5319, float %5241)  ; FMax(a,b)
  %5322 = call float @dx.op.binary.f32(i32 36, float %5320, float %5242)  ; FMin(a,b)
  %5323 = call float @dx.op.binary.f32(i32 36, float %5321, float %5242)  ; FMin(a,b)
  %5324 = fadd fast float %5322, %5239
  %5325 = fadd fast float %5323, %5240
  %5326 = uitofp i32 %5276 to float
  %5327 = fadd fast float %5302, %5249
  %5328 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %60, float %5324, float %5325, float %5326, float undef, i32 0, i32 0, i32 undef, float %5327)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5329 = extractvalue %dx.types.ResRet.f32 %5328, 0
  %5330 = fadd fast float %5329, -1.000000e+00
  %5331 = fmul fast float %5330, %5210
  %5332 = fadd fast float %5331, 1.000000e+00
  %5333 = fmul fast float %5332, %5222
  br label %5334

; <label>:5334                                    ; preds = %5236, %5234
  %5335 = phi float [ %5333, %5236 ], [ %5222, %5234 ]
  %5336 = call float @dx.op.binary.f32(i32 36, float %5335, float %5335)  ; FMin(a,b)
  %5337 = call float @dx.op.binary.f32(i32 36, float %5335, float %5336)  ; FMin(a,b)
  %5338 = fcmp fast ogt float %5337, 0.000000e+00
  br i1 %5338, label %5339, label %5226, !dx.controlflow.hints !135

; <label>:5339                                    ; preds = %5334
  %5340 = fmul fast float %5335, %5143
  %5341 = fmul fast float %5335, %5144
  %5342 = fmul fast float %5335, %5145
  %5343 = fsub fast float %5127, %2126
  %5344 = fcmp fast ogt float %5343, 0.000000e+00
  %5345 = fsub fast float %140, %2126
  %5346 = fcmp fast ogt float %5345, 0.000000e+00
  %5347 = xor i1 %5346, %5344
  %5348 = fsub fast float %2126, %5127
  %5349 = fmul fast float %5348, 2.000000e+00
  %5350 = fadd fast float %5349, %5127
  %5351 = select i1 %5347, float %5127, float %5350
  %5352 = fsub fast float %5351, %140
  %5353 = call float @dx.op.dot3.f32(i32 55, float %5154, float %5155, float %5352, float %5154, float %5155, float %5352)  ; Dot3(ax,ay,az,bx,by,bz)
  %5354 = call float @dx.op.unary.f32(i32 25, float %5353)  ; Rsqrt(value)
  %5355 = fmul fast float %5354, %5154
  %5356 = fmul fast float %5354, %5155
  %5357 = fmul fast float %5354, %5352
  %5358 = fsub fast float %2126, %140
  %5359 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5358)  ; Dot3(ax,ay,az,bx,by,bz)
  %5360 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5355, float %5356, float %5357)  ; Dot3(ax,ay,az,bx,by,bz)
  %5361 = fdiv fast float 1.000000e+00, %5360
  %5362 = fmul fast float %5361, %5359
  %5363 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5345, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5364 = fcmp fast ogt float %5363, 0.000000e+00
  %5365 = fcmp fast olt float %5363, 0.000000e+00
  %5366 = zext i1 %5364 to i32
  %5367 = zext i1 %5365 to i32
  %5368 = sub nsw i32 %5366, %5367
  %5369 = sitofp i32 %5368 to float
  %5370 = fsub fast float %5351, %2126
  %5371 = call float @dx.op.dot3.f32(i32 55, float %5154, float %5155, float %5370, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5372 = fcmp fast ogt float %5371, 0.000000e+00
  %5373 = fcmp fast olt float %5371, 0.000000e+00
  %5374 = zext i1 %5372 to i32
  %5375 = zext i1 %5373 to i32
  %5376 = sub nsw i32 %5374, %5375
  %5377 = sitofp i32 %5376 to float
  %5378 = fcmp fast une float %5369, %5377
  br i1 %5378, label %5379, label %5389

; <label>:5379                                    ; preds = %5339
  %5380 = fmul fast float %5362, %5357
  %5381 = fmul fast float %5362, %5356
  %5382 = fmul fast float %5362, %5355
  %5383 = fmul fast float %5382, %5382
  %5384 = fmul fast float %5381, %5381
  %5385 = fadd fast float %5383, %5384
  %5386 = fmul fast float %5380, %5380
  %5387 = fadd fast float %5385, %5386
  %5388 = call float @dx.op.unary.f32(i32 24, float %5387)  ; Sqrt(value)
  br label %5401

; <label>:5389                                    ; preds = %5339
  %5390 = icmp slt i32 %5368, 0
  br i1 %5390, label %5391, label %5401

; <label>:5391                                    ; preds = %5389
  %5392 = fsub fast float %138, %5125
  %5393 = fsub fast float %139, %5126
  %5394 = fsub fast float %140, %5351
  %5395 = fmul fast float %5392, %5392
  %5396 = fmul fast float %5393, %5393
  %5397 = fadd fast float %5395, %5396
  %5398 = fmul fast float %5394, %5394
  %5399 = fadd fast float %5397, %5398
  %5400 = call float @dx.op.unary.f32(i32 24, float %5399)  ; Sqrt(value)
  br label %5401

; <label>:5401                                    ; preds = %5391, %5389, %5379
  %5402 = phi float [ %5388, %5379 ], [ %5400, %5391 ], [ 0.000000e+00, %5389 ]
  %5403 = and i1 %5346, %5344
  %5404 = fsub fast float -0.000000e+00, %5402
  %5405 = select i1 %5403, float -0.000000e+00, float %5404
  %5406 = fmul fast float %2127, 0x3FF7154760000000
  %5407 = fmul fast float %5406, %5405
  %5408 = fmul fast float %2128, 0x3FF7154760000000
  %5409 = fmul fast float %5408, %5405
  %5410 = fmul fast float %2129, 0x3FF7154760000000
  %5411 = fmul fast float %5410, %5405
  %5412 = call float @dx.op.unary.f32(i32 21, float %5407)  ; Exp(value)
  %5413 = call float @dx.op.unary.f32(i32 21, float %5409)  ; Exp(value)
  %5414 = call float @dx.op.unary.f32(i32 21, float %5411)  ; Exp(value)
  %5415 = call float @dx.op.unary.f32(i32 7, float %5412)  ; Saturate(value)
  %5416 = call float @dx.op.unary.f32(i32 7, float %5413)  ; Saturate(value)
  %5417 = call float @dx.op.unary.f32(i32 7, float %5414)  ; Saturate(value)
  %5418 = fmul fast float %5340, %5415
  %5419 = fmul fast float %5341, %5416
  %5420 = fmul fast float %5342, %5417
  %5421 = fsub fast float %5160, %2326
  %5422 = fsub fast float %5161, %2325
  %5423 = fsub fast float %5162, %2324
  %5424 = call float @dx.op.dot3.f32(i32 55, float %5421, float %5422, float %5423, float %5421, float %5422, float %5423)  ; Dot3(ax,ay,az,bx,by,bz)
  %5425 = call float @dx.op.unary.f32(i32 25, float %5424)  ; Rsqrt(value)
  %5426 = fmul fast float %5425, %5421
  %5427 = fmul fast float %5425, %5422
  %5428 = fmul fast float %5425, %5423
  %5429 = call float @dx.op.dot3.f32(i32 55, float %5160, float %5161, float %5162, float %2330, float %2331, float %2332)  ; Dot3(ax,ay,az,bx,by,bz)
  %5430 = call float @dx.op.dot3.f32(i32 55, float %2323, float %2322, float %2321, float %5426, float %5427, float %5428)  ; Dot3(ax,ay,az,bx,by,bz)
  %5431 = call float @dx.op.unary.f32(i32 7, float %5429)  ; Saturate(value)
  %5432 = fmul fast float %5431, %5167
  %5433 = fmul fast float %5431, %5431
  %5434 = fmul fast float %5433, %2354
  %5435 = call float @dx.op.unary.f32(i32 7, float %5434)  ; Saturate(value)
  %5436 = fmul fast float %5432, %5435
  %5437 = bitcast float %5157 to i32
  %5438 = ashr i32 %5437, 1
  %5439 = sub nsw i32 1597463007, %5438
  %5440 = bitcast i32 %5439 to float
  %5441 = fmul fast float %5440, %5154
  %5442 = fmul fast float %5440, %5155
  %5443 = fmul fast float %5440, %5156
  %5444 = fsub fast float %5441, %2326
  %5445 = fsub fast float %5442, %2325
  %5446 = fsub fast float %5443, %2324
  %5447 = call float @dx.op.dot3.f32(i32 55, float %5444, float %5445, float %5446, float %5444, float %5445, float %5446)  ; Dot3(ax,ay,az,bx,by,bz)
  %5448 = call float @dx.op.unary.f32(i32 25, float %5447)  ; Rsqrt(value)
  %5449 = fmul fast float %5444, %5448
  %5450 = fmul fast float %5445, %5448
  %5451 = fmul fast float %5446, %5448
  %5452 = call float @dx.op.dot3.f32(i32 55, float %2330, float %2331, float %2332, float %5449, float %5450, float %5451)  ; Dot3(ax,ay,az,bx,by,bz)
  %5453 = fmul fast float %5452, %5452
  %5454 = call float @dx.op.unary.f32(i32 6, float %5429)  ; FAbs(value)
  %5455 = call float @dx.op.binary.f32(i32 35, float %3770, float 0x3F847AE140000000)  ; FMax(a,b)
  %5456 = fmul fast float %5455, %5455
  %5457 = fmul fast float %5456, %5456
  %5458 = fsub fast float 1.000000e+00, %5457
  %5459 = fmul fast float %2341, %2341
  %5460 = fmul fast float %5459, %5458
  %5461 = fadd fast float %5460, %5457
  %5462 = bitcast float %5461 to i32
  %5463 = ashr i32 %5462, 1
  %5464 = add nsw i32 %5463, 532487669
  %5465 = bitcast i32 %5464 to float
  %5466 = fadd fast float %5465, %2341
  %5467 = fmul fast float %5457, %5453
  %5468 = fsub fast float 1.000000e+00, %5453
  %5469 = fadd fast float %5468, %5467
  %5470 = fmul fast float %5454, %5454
  %5471 = fmul fast float %5470, %5458
  %5472 = fadd fast float %5471, %5457
  %5473 = bitcast float %5472 to i32
  %5474 = ashr i32 %5473, 1
  %5475 = add nsw i32 %5474, 532487669
  %5476 = bitcast i32 %5475 to float
  %5477 = fadd fast float %5476, %5454
  %5478 = fmul fast float %5469, %5469
  %5479 = fmul fast float %5478, %5466
  %5480 = fmul fast float %5479, %5477
  %5481 = fdiv fast float 1.000000e+00, %5480
  %5482 = bitcast float %5457 to i32
  %5483 = sitofp i32 %5482 to float
  %5484 = fmul fast float %5483, 0x3FE7F73180000000
  %5485 = fadd fast float %5484, 0x41AFE27C40000000
  %5486 = fptosi float %5485 to i32
  %5487 = bitcast i32 %5486 to float
  %5488 = fmul fast float %5122, 0x3FD80E9D60000000
  %5489 = fmul fast float %5488, %5440
  %5490 = fadd fast float %5487, %5489
  %5491 = bitcast float %5490 to i32
  %5492 = sub nsw i32 2129859010, %5491
  %5493 = bitcast i32 %5492 to float
  %5494 = fmul fast float %5457, %5481
  %5495 = fmul fast float %5494, %5487
  %5496 = fmul fast float %5495, %5493
  %5497 = fmul fast float %3632, 0x3FF9999980000000
  %5498 = fsub fast float 5.000000e+00, %5497
  %5499 = call float @dx.op.unary.f32(i32 6, float %5430)  ; FAbs(value)
  %5500 = fsub fast float 1.000000e+00, %5499
  %5501 = fmul fast float %3632, 0x41D9660740000000
  %5502 = fadd fast float %5501, 0xC1EFBF8940000000
  %5503 = bitcast float %5500 to i32
  %5504 = sitofp i32 %5503 to float
  %5505 = fmul fast float %5504, %5498
  %5506 = fadd fast float %5502, %5505
  %5507 = fptosi float %5506 to i32
  %5508 = bitcast i32 %5507 to float
  %5509 = fsub fast float 1.000000e+00, %2327
  %5510 = fsub fast float 1.000000e+00, %2328
  %5511 = fsub fast float 1.000000e+00, %2339
  %5512 = fmul fast float %5508, %5509
  %5513 = fmul fast float %5508, %5510
  %5514 = fmul fast float %5508, %5511
  %5515 = fadd fast float %5512, %2327
  %5516 = fadd fast float %5513, %2328
  %5517 = fadd fast float %5514, %2339
  br i1 %3655, label %5518, label %5541

; <label>:5518                                    ; preds = %5401
  %5519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1672, float %5499, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5520 = extractvalue %dx.types.ResRet.f32 %5519, 0
  %5521 = extractvalue %dx.types.ResRet.f32 %5519, 1
  %5522 = extractvalue %dx.types.ResRet.f32 %5519, 2
  %5523 = fadd fast float %5520, -5.000000e-01
  %5524 = fadd fast float %5521, -5.000000e-01
  %5525 = fadd fast float %5522, -5.000000e-01
  %5526 = fmul fast float %2327, 4.000000e+00
  %5527 = fmul fast float %5526, %5509
  %5528 = fmul fast float %5527, %5523
  %5529 = fmul fast float %2328, 4.000000e+00
  %5530 = fmul fast float %5529, %5510
  %5531 = fmul fast float %5530, %5524
  %5532 = fmul fast float %2339, 4.000000e+00
  %5533 = fmul fast float %5532, %5511
  %5534 = fmul fast float %5533, %5525
  %5535 = fadd fast float %5528, %5515
  %5536 = fadd fast float %5531, %5516
  %5537 = fadd fast float %5534, %5517
  %5538 = call float @dx.op.unary.f32(i32 7, float %5535)  ; Saturate(value)
  %5539 = call float @dx.op.unary.f32(i32 7, float %5536)  ; Saturate(value)
  %5540 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  br label %5541

; <label>:5541                                    ; preds = %5518, %5401
  %5542 = phi float [ %5538, %5518 ], [ %5515, %5401 ]
  %5543 = phi float [ %5539, %5518 ], [ %5516, %5401 ]
  %5544 = phi float [ %5540, %5518 ], [ %5517, %5401 ]
  %5545 = fmul fast float %5429, 9.843750e-01
  %5546 = fadd fast float %5545, 7.812500e-03
  %5547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5546, float %3636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5548 = extractvalue %dx.types.ResRet.f32 %5547, 0
  %5549 = extractvalue %dx.types.ResRet.f32 %5547, 1
  %5550 = extractvalue %dx.types.ResRet.f32 %5547, 2
  %5551 = extractvalue %dx.types.ResRet.f32 %5547, 3
  %5552 = fsub fast float %5550, %5548
  %5553 = fsub fast float %5551, %5549
  %5554 = fmul fast float %5552, %3642
  %5555 = fmul fast float %5553, %3642
  %5556 = fadd fast float %5554, %5548
  %5557 = fadd fast float %5555, %5549
  %5558 = fmul fast float %5556, %2327
  %5559 = fmul fast float %5556, %2328
  %5560 = fmul fast float %5556, %2339
  %5561 = fadd fast float %5558, %5557
  %5562 = fadd fast float %5559, %5557
  %5563 = fadd fast float %5560, %5557
  br i1 %3655, label %5564, label %5587

; <label>:5564                                    ; preds = %5541
  %5565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1672, float %5429, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5566 = extractvalue %dx.types.ResRet.f32 %5565, 0
  %5567 = extractvalue %dx.types.ResRet.f32 %5565, 1
  %5568 = extractvalue %dx.types.ResRet.f32 %5565, 2
  %5569 = fadd fast float %5566, -5.000000e-01
  %5570 = fadd fast float %5567, -5.000000e-01
  %5571 = fadd fast float %5568, -5.000000e-01
  %5572 = fmul fast float %2327, 4.000000e+00
  %5573 = fmul fast float %5572, %5509
  %5574 = fmul fast float %5573, %5569
  %5575 = fmul fast float %2328, 4.000000e+00
  %5576 = fmul fast float %5575, %5510
  %5577 = fmul fast float %5576, %5570
  %5578 = fmul fast float %2339, 4.000000e+00
  %5579 = fmul fast float %5578, %5511
  %5580 = fmul fast float %5579, %5571
  %5581 = fadd fast float %5574, %5561
  %5582 = fadd fast float %5577, %5562
  %5583 = fadd fast float %5580, %5563
  %5584 = call float @dx.op.unary.f32(i32 7, float %5581)  ; Saturate(value)
  %5585 = call float @dx.op.unary.f32(i32 7, float %5582)  ; Saturate(value)
  %5586 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  br label %5587

; <label>:5587                                    ; preds = %5564, %5541
  %5588 = phi float [ %5584, %5564 ], [ %5561, %5541 ]
  %5589 = phi float [ %5585, %5564 ], [ %5562, %5541 ]
  %5590 = phi float [ %5586, %5564 ], [ %5563, %5541 ]
  %5591 = call float @dx.op.binary.f32(i32 35, float %5589, float %5590)  ; FMax(a,b)
  %5592 = call float @dx.op.binary.f32(i32 35, float %5588, float %5591)  ; FMax(a,b)
  %5593 = fsub fast float 1.000000e+00, %5592
  %5594 = call float @dx.op.binary.f32(i32 35, float %5454, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5595 = fdiv fast float %1078, %5594
  %5596 = fmul fast float %3710, %5595
  %5597 = fmul fast float %3712, %5595
  %5598 = fmul fast float %3714, %5595
  %5599 = call float @dx.op.unary.f32(i32 21, float %5596)  ; Exp(value)
  %5600 = call float @dx.op.unary.f32(i32 21, float %5597)  ; Exp(value)
  %5601 = call float @dx.op.unary.f32(i32 21, float %5598)  ; Exp(value)
  %5602 = call float @dx.op.unary.f32(i32 7, float %5599)  ; Saturate(value)
  %5603 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5604 = call float @dx.op.unary.f32(i32 7, float %5601)  ; Saturate(value)
  %5605 = select i1 %3707, float %5602, float 0.000000e+00
  %5606 = select i1 %3708, float %5603, float 0.000000e+00
  %5607 = select i1 %3709, float %5604, float 0.000000e+00
  %5608 = fsub fast float -0.000000e+00, %2330
  %5609 = fsub fast float -0.000000e+00, %2331
  %5610 = fsub fast float -0.000000e+00, %2332
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5160, float %5161, float %5162, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5613 = fmul fast float %5612, %5167
  %5614 = fmul fast float %5612, 9.843750e-01
  %5615 = fadd fast float %5614, 7.812500e-03
  %5616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5615, float %3636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5617 = extractvalue %dx.types.ResRet.f32 %5616, 0
  %5618 = extractvalue %dx.types.ResRet.f32 %5616, 1
  %5619 = extractvalue %dx.types.ResRet.f32 %5616, 2
  %5620 = extractvalue %dx.types.ResRet.f32 %5616, 3
  %5621 = fsub fast float %5619, %5617
  %5622 = fsub fast float %5620, %5618
  %5623 = fmul fast float %5621, %3642
  %5624 = fmul fast float %5622, %3642
  %5625 = fadd fast float %5623, %5617
  %5626 = fadd fast float %5624, %5618
  %5627 = fmul fast float %5625, %2327
  %5628 = fmul fast float %5625, %2328
  %5629 = fmul fast float %5625, %2339
  %5630 = fadd fast float %5627, %5626
  %5631 = fadd fast float %5628, %5626
  %5632 = fadd fast float %5629, %5626
  br i1 %3655, label %5633, label %5656

; <label>:5633                                    ; preds = %5587
  %5634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1672, float %5612, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5635 = extractvalue %dx.types.ResRet.f32 %5634, 0
  %5636 = extractvalue %dx.types.ResRet.f32 %5634, 1
  %5637 = extractvalue %dx.types.ResRet.f32 %5634, 2
  %5638 = fadd fast float %5635, -5.000000e-01
  %5639 = fadd fast float %5636, -5.000000e-01
  %5640 = fadd fast float %5637, -5.000000e-01
  %5641 = fmul fast float %2327, 4.000000e+00
  %5642 = fmul fast float %5641, %5509
  %5643 = fmul fast float %5642, %5638
  %5644 = fmul fast float %2328, 4.000000e+00
  %5645 = fmul fast float %5644, %5510
  %5646 = fmul fast float %5645, %5639
  %5647 = fmul fast float %2339, 4.000000e+00
  %5648 = fmul fast float %5647, %5511
  %5649 = fmul fast float %5648, %5640
  %5650 = fadd fast float %5643, %5630
  %5651 = fadd fast float %5646, %5631
  %5652 = fadd fast float %5649, %5632
  %5653 = call float @dx.op.unary.f32(i32 7, float %5650)  ; Saturate(value)
  %5654 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5655 = call float @dx.op.unary.f32(i32 7, float %5652)  ; Saturate(value)
  br label %5656

; <label>:5656                                    ; preds = %5633, %5587
  %5657 = phi float [ %5653, %5633 ], [ %5630, %5587 ]
  %5658 = phi float [ %5654, %5633 ], [ %5631, %5587 ]
  %5659 = phi float [ %5655, %5633 ], [ %5632, %5587 ]
  %5660 = call float @dx.op.binary.f32(i32 35, float %5658, float %5659)  ; FMax(a,b)
  %5661 = call float @dx.op.binary.f32(i32 35, float %5657, float %5660)  ; FMax(a,b)
  %5662 = fsub fast float 1.000000e+00, %5661
  %5663 = fmul fast float %3770, %3775
  %5664 = fadd fast float %3777, %5663
  %5665 = call float @dx.op.unary.f32(i32 7, float %5664)  ; Saturate(value)
  %5666 = fsub fast float %5441, %2347
  %5667 = fsub fast float %5442, %2348
  %5668 = fsub fast float %5443, %2349
  %5669 = call float @dx.op.dot3.f32(i32 55, float %5666, float %5667, float %5668, float %5666, float %5667, float %5668)  ; Dot3(ax,ay,az,bx,by,bz)
  %5670 = call float @dx.op.unary.f32(i32 25, float %5669)  ; Rsqrt(value)
  %5671 = fmul fast float %5666, %5670
  %5672 = fmul fast float %5667, %5670
  %5673 = fmul fast float %5668, %5670
  %5674 = call float @dx.op.dot3.f32(i32 55, float %5608, float %5609, float %5610, float %5671, float %5672, float %5673)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = fmul fast float %5674, %5674
  %5676 = call float @dx.op.unary.f32(i32 6, float %5612)  ; FAbs(value)
  %5677 = call float @dx.op.binary.f32(i32 35, float %5665, float 0x3F847AE140000000)  ; FMax(a,b)
  %5678 = fmul fast float %5677, %5677
  %5679 = fmul fast float %5678, %5678
  %5680 = fsub fast float 1.000000e+00, %5679
  %5681 = fmul fast float %5459, %5680
  %5682 = fadd fast float %5681, %5679
  %5683 = bitcast float %5682 to i32
  %5684 = ashr i32 %5683, 1
  %5685 = add nsw i32 %5684, 532487669
  %5686 = bitcast i32 %5685 to float
  %5687 = fadd fast float %5686, %2341
  %5688 = fmul fast float %5679, %5675
  %5689 = fsub fast float 1.000000e+00, %5675
  %5690 = fadd fast float %5689, %5688
  %5691 = fmul fast float %5676, %5676
  %5692 = fmul fast float %5691, %5680
  %5693 = fadd fast float %5692, %5679
  %5694 = bitcast float %5693 to i32
  %5695 = ashr i32 %5694, 1
  %5696 = add nsw i32 %5695, 532487669
  %5697 = bitcast i32 %5696 to float
  %5698 = fadd fast float %5697, %5676
  %5699 = fmul fast float %5690, %5690
  %5700 = fmul fast float %5699, %5687
  %5701 = fmul fast float %5700, %5698
  %5702 = fdiv fast float 1.000000e+00, %5701
  %5703 = bitcast float %5679 to i32
  %5704 = sitofp i32 %5703 to float
  %5705 = fmul fast float %5704, 0x3FE7F73180000000
  %5706 = fadd fast float %5705, 0x41AFE27C40000000
  %5707 = fptosi float %5706 to i32
  %5708 = bitcast i32 %5707 to float
  %5709 = fadd fast float %5708, %5489
  %5710 = bitcast float %5709 to i32
  %5711 = sub nsw i32 2129859010, %5710
  %5712 = bitcast i32 %5711 to float
  %5713 = fmul fast float %5679, %5702
  %5714 = fmul fast float %5713, %5708
  %5715 = fmul fast float %5714, %5712
  br i1 %5152, label %5716, label %5726

; <label>:5716                                    ; preds = %5656
  %5717 = fmul fast float %5613, %5605
  %5718 = fmul fast float %5613, %5606
  %5719 = fmul fast float %5613, %5607
  %5720 = fmul fast float %5717, %5662
  %5721 = fmul fast float %5720, %5715
  %5722 = fmul fast float %5718, %5662
  %5723 = fmul fast float %5722, %5715
  %5724 = fmul fast float %5719, %5662
  %5725 = fmul fast float %5724, %5715
  br label %5726

; <label>:5726                                    ; preds = %5716, %5656
  %5727 = phi float [ %5721, %5716 ], [ 0.000000e+00, %5656 ]
  %5728 = phi float [ %5723, %5716 ], [ 0.000000e+00, %5656 ]
  %5729 = phi float [ %5725, %5716 ], [ 0.000000e+00, %5656 ]
  %5730 = fmul fast float %5542, %5496
  %5731 = fmul fast float %5543, %5496
  %5732 = fmul fast float %5544, %5496
  %5733 = fsub fast float 1.000000e+00, %5430
  %5734 = bitcast float %5733 to i32
  %5735 = sitofp i32 %5734 to float
  %5736 = fmul fast float %5735, 5.000000e+00
  %5737 = fadd fast float %5736, 0xC1EFBF8940000000
  %5738 = fptosi float %5737 to i32
  %5739 = bitcast i32 %5738 to float
  %5740 = fmul fast float %5739, %1671
  %5741 = fmul fast float %5593, %5740
  %5742 = fmul fast float %5741, %3702
  %5743 = fmul fast float %5741, %3703
  %5744 = fmul fast float %5741, %3704
  %5745 = fadd fast float %5742, %5730
  %5746 = fadd fast float %5743, %5731
  %5747 = fadd fast float %5744, %5732
  %5748 = fmul fast float %5745, %5436
  %5749 = fmul fast float %5746, %5436
  %5750 = fmul fast float %5747, %5436
  %5751 = fadd fast float %5748, %5727
  %5752 = fadd fast float %5749, %5728
  %5753 = fadd fast float %5750, %5729
  %5754 = fmul fast float %5418, %1695
  %5755 = fmul fast float %5754, %5436
  %5756 = fmul fast float %5755, %5593
  %5757 = fmul fast float %5419, %1695
  %5758 = fmul fast float %5757, %5436
  %5759 = fmul fast float %5758, %5593
  %5760 = fmul fast float %5420, %1695
  %5761 = fmul fast float %5760, %5436
  %5762 = fmul fast float %5761, %5593
  %5763 = fadd fast float %5756, %5096
  %5764 = fadd fast float %5759, %5097
  %5765 = fadd fast float %5762, %5098
  %5766 = fmul fast float %5754, %5751
  %5767 = fmul fast float %5757, %5752
  %5768 = fmul fast float %5760, %5753
  %5769 = fadd fast float %5766, %5093
  %5770 = fadd fast float %5767, %5094
  %5771 = fadd fast float %5768, %5095
  br label %5226

; <label>:5772                                    ; preds = %5226
  br label %5773

; <label>:5773                                    ; preds = %5772, %5059
  %5774 = phi float [ %5061, %5059 ], [ %5227, %5772 ]
  %5775 = phi float [ %5062, %5059 ], [ %5228, %5772 ]
  %5776 = phi float [ %5063, %5059 ], [ %5229, %5772 ]
  %5777 = phi float [ %5064, %5059 ], [ %5230, %5772 ]
  %5778 = phi float [ %5065, %5059 ], [ %5231, %5772 ]
  %5779 = phi float [ %5066, %5059 ], [ %5232, %5772 ]
  %5780 = add i32 %5060, 1
  %5781 = icmp ugt i32 %5780, %5056
  br i1 %5781, label %5782, label %5059

; <label>:5782                                    ; preds = %5773
  br label %5783

; <label>:5783                                    ; preds = %5782, %5009, %4999
  %5784 = phi float [ %5000, %4999 ], [ %5000, %5009 ], [ %5774, %5782 ]
  %5785 = phi float [ %5001, %4999 ], [ %5001, %5009 ], [ %5775, %5782 ]
  %5786 = phi float [ %5002, %4999 ], [ %5002, %5009 ], [ %5776, %5782 ]
  %5787 = phi float [ %5003, %4999 ], [ %5003, %5009 ], [ %5777, %5782 ]
  %5788 = phi float [ %5004, %4999 ], [ %5004, %5009 ], [ %5778, %5782 ]
  %5789 = phi float [ %5005, %4999 ], [ %5005, %5009 ], [ %5779, %5782 ]
  %5790 = fmul fast float %1695, %3731
  %5791 = fsub fast float -0.000000e+00, %5790
  %5792 = fmul fast float %1695, %3732
  %5793 = fsub fast float -0.000000e+00, %5792
  %5794 = fmul fast float %1695, %3733
  %5795 = fsub fast float -0.000000e+00, %5794
  %5796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5797 = extractvalue %dx.types.CBufRet.f32 %5796, 0
  %5798 = fmul fast float %5797, %3737
  %5799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5799, 3
  %5801 = fsub fast float 1.000000e+00, %1667
  %5802 = call float @dx.op.unary.f32(i32 7, float %5801)  ; Saturate(value)
  %5803 = fadd fast float %5789, %1666
  %5804 = fmul fast float %5803, %1667
  %5805 = fmul fast float %5802, %5800
  %5806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5806, 3
  %5808 = fmul fast float %5787, %2333
  %5809 = fmul fast float %5788, %2334
  %5810 = fmul fast float %5789, %2335
  %5811 = fcmp fast ogt float %82, %189
  %5812 = and i1 %5811, %2132
  %5813 = or i1 %2138, %5812
  %5814 = icmp eq i32 %2131, 2
  %5815 = fcmp fast ole float %82, %189
  %5816 = and i1 %5815, %5814
  %5817 = or i1 %5816, %5813
  br i1 %5812, label %5818, label %6077

; <label>:5818                                    ; preds = %5783
  %5819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5820 = extractvalue %dx.types.CBufRet.f32 %5819, 2
  %5821 = extractvalue %dx.types.CBufRet.f32 %5819, 3
  %5822 = fmul fast float %5820, %91
  %5823 = fmul fast float %5821, %92
  %5824 = call float @dx.op.unary.f32(i32 7, float %5822)  ; Saturate(value)
  %5825 = call float @dx.op.unary.f32(i32 7, float %5823)  ; Saturate(value)
  %5826 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5824, float %5825, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5827 = extractvalue %dx.types.ResRet.f32 %5826, 0
  %5828 = extractvalue %dx.types.ResRet.f32 %5826, 1
  %5829 = extractvalue %dx.types.ResRet.f32 %5826, 2
  %5830 = extractvalue %dx.types.ResRet.f32 %5826, 3
  %5831 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5824, float %5825, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5832 = extractvalue %dx.types.ResRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.ResRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.ResRet.f32 %5831, 2
  %5835 = extractvalue %dx.types.ResRet.f32 %5831, 3
  %5836 = call float @dx.op.binary.f32(i32 35, float %5828, float %5829)  ; FMax(a,b)
  %5837 = call float @dx.op.binary.f32(i32 35, float %5827, float %5836)  ; FMax(a,b)
  %5838 = call float @dx.op.binary.f32(i32 35, float %5837, float %5830)  ; FMax(a,b)
  %5839 = call float @dx.op.binary.f32(i32 36, float %5833, float %5834)  ; FMin(a,b)
  %5840 = call float @dx.op.binary.f32(i32 36, float %5832, float %5839)  ; FMin(a,b)
  %5841 = call float @dx.op.binary.f32(i32 36, float %5840, float %5835)  ; FMin(a,b)
  %5842 = fmul fast float %5838, 2.550000e+02
  %5843 = fadd fast float %5842, 0x3F70101020000000
  %5844 = fptoui float %5843 to i32
  %5845 = fmul fast float %5841, 2.550000e+02
  %5846 = fadd fast float %5845, 0x3F70101020000000
  %5847 = fptoui float %5846 to i32
  %5848 = icmp ult i32 %5844, %5847
  br i1 %5848, label %5849, label %6017

; <label>:5849                                    ; preds = %5818
  %5850 = fcmp fast ogt float %81, 9.843750e-01
  %5851 = fadd fast float %82, -4.000000e+00
  %5852 = select i1 %5850, float -4.000000e+00, float %5851
  %5853 = call float @dx.op.binary.f32(i32 35, float %5852, float 0.000000e+00)  ; FMax(a,b)
  %5854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5854, 0
  %5856 = fadd fast float %5855, %5853
  %5857 = extractvalue %dx.types.CBufRet.f32 %5854, 2
  %5858 = fmul fast float %5856, %5857
  %5859 = call float @dx.op.unary.f32(i32 23, float %5858)  ; Log(value)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5854, 3
  %5861 = fmul fast float %5860, %5859
  %5862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5862, 2
  %5864 = fmul fast float %5861, %5863
  %5865 = call float @dx.op.unary.f32(i32 7, float %5864)  ; Saturate(value)
  %5866 = uitofp i32 %5844 to float
  %5867 = uitofp i32 %5847 to float
  %5868 = fadd fast float %5866, 5.000000e-01
  %5869 = fadd fast float %5867, 5.000000e-01
  %5870 = fmul fast float %5863, %5868
  %5871 = fmul fast float %5863, %5869
  %5872 = fadd fast float %5870, 0x3F0FFB4800000000
  %5873 = fadd fast float %5871, 0xBF0FFB4800000000
  %5874 = call float @dx.op.binary.f32(i32 35, float %5865, float %5872)  ; FMax(a,b)
  %5875 = call float @dx.op.binary.f32(i32 36, float %5874, float %5873)  ; FMin(a,b)
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 1
  %5878 = extractvalue %dx.types.CBufRet.f32 %5876, 2
  %5879 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  %5880 = fmul fast float %5877, %5875
  %5881 = fadd fast float %5879, %5880
  %5882 = fadd fast float %5879, %5878
  %5883 = fsub fast float %5877, %5878
  %5884 = fadd fast float %5883, %5879
  %5885 = call float @dx.op.binary.f32(i32 35, float %5881, float %5882)  ; FMax(a,b)
  %5886 = call float @dx.op.binary.f32(i32 36, float %5885, float %5884)  ; FMin(a,b)
  %5887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %5824, float %5825, float %5886, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 0
  %5889 = extractvalue %dx.types.ResRet.f32 %5887, 1
  %5890 = extractvalue %dx.types.ResRet.f32 %5887, 2
  %5891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5892 = extractvalue %dx.types.CBufRet.i32 %5891, 0
  %5893 = extractvalue %dx.types.CBufRet.i32 %5891, 1
  %5894 = uitofp i32 %5892 to float
  %5895 = uitofp i32 %5893 to float
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.CBufRet.f32 %5896, 1
  %5899 = fmul fast float %5894, %5824
  %5900 = fmul fast float %5895, %5825
  %5901 = fadd fast float %5899, -5.000000e-01
  %5902 = fadd fast float %5900, -5.000000e-01
  %5903 = call float @dx.op.unary.f32(i32 22, float %5901)  ; Frc(value)
  %5904 = call float @dx.op.unary.f32(i32 22, float %5902)  ; Frc(value)
  %5905 = fmul fast float %5903, %5903
  %5906 = fmul fast float %5905, %5903
  %5907 = fsub fast float 3.000000e+00, %5903
  %5908 = fmul fast float %5905, %5907
  %5909 = fmul fast float %5903, 3.000000e+00
  %5910 = fmul fast float %5906, 3.000000e+00
  %5911 = fmul fast float %5905, 6.000000e+00
  %5912 = fsub fast float %5910, %5911
  %5913 = fadd fast float %5912, 4.000000e+00
  %5914 = fmul fast float %5913, 0x3FC5555560000000
  %5915 = fmul fast float %5906, -3.000000e+00
  %5916 = fadd fast float %5905, %5903
  %5917 = fmul fast float %5916, 3.000000e+00
  %5918 = fadd fast float %5915, 1.000000e+00
  %5919 = fadd fast float %5918, %5917
  %5920 = fmul fast float %5906, 0x3FC5555560000000
  %5921 = fmul fast float %5904, %5904
  %5922 = fmul fast float %5921, %5904
  %5923 = fsub fast float 3.000000e+00, %5904
  %5924 = fmul fast float %5921, %5923
  %5925 = fmul fast float %5904, 3.000000e+00
  %5926 = fmul fast float %5922, 3.000000e+00
  %5927 = fmul fast float %5921, 6.000000e+00
  %5928 = fsub fast float %5926, %5927
  %5929 = fadd fast float %5928, 4.000000e+00
  %5930 = fmul fast float %5929, 0x3FC5555560000000
  %5931 = fmul fast float %5922, -3.000000e+00
  %5932 = fadd fast float %5921, %5904
  %5933 = fmul fast float %5932, 3.000000e+00
  %5934 = fadd fast float %5931, 1.000000e+00
  %5935 = fadd fast float %5934, %5933
  %5936 = fmul fast float %5922, 0x3FC5555560000000
  %5937 = fadd fast float %5903, 1.000000e+00
  %5938 = fsub fast float 1.000000e+00, %5909
  %5939 = fadd fast float %5938, %5908
  %5940 = fadd fast float %5939, %5913
  %5941 = fmul fast float %5940, 0x3FC5555560000000
  %5942 = fdiv fast float %5914, %5941
  %5943 = fsub fast float %5937, %5942
  %5944 = fsub fast float 1.000000e+00, %5903
  %5945 = fadd fast float %5919, %5906
  %5946 = fmul fast float %5945, 0x3FC5555560000000
  %5947 = fdiv fast float %5920, %5946
  %5948 = fadd fast float %5944, %5947
  %5949 = fadd fast float %5904, 1.000000e+00
  %5950 = fsub fast float 1.000000e+00, %5925
  %5951 = fadd fast float %5950, %5924
  %5952 = fadd fast float %5951, %5929
  %5953 = fmul fast float %5952, 0x3FC5555560000000
  %5954 = fdiv fast float %5930, %5953
  %5955 = fsub fast float %5949, %5954
  %5956 = fsub fast float 1.000000e+00, %5904
  %5957 = fadd fast float %5935, %5922
  %5958 = fmul fast float %5957, 0x3FC5555560000000
  %5959 = fdiv fast float %5936, %5958
  %5960 = fadd fast float %5959, %5956
  %5961 = fmul fast float %5943, %5897
  %5962 = fsub fast float %5824, %5961
  %5963 = fmul fast float %5948, %5897
  %5964 = fadd fast float %5963, %5824
  %5965 = fmul fast float %5960, %5898
  %5966 = fadd fast float %5965, %5825
  %5967 = fmul fast float %5955, %5898
  %5968 = fsub fast float %5825, %5967
  %5969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5962, float %5968, float %5886, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5970 = extractvalue %dx.types.ResRet.f32 %5969, 0
  %5971 = extractvalue %dx.types.ResRet.f32 %5969, 1
  %5972 = extractvalue %dx.types.ResRet.f32 %5969, 2
  %5973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5964, float %5968, float %5886, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5974 = extractvalue %dx.types.ResRet.f32 %5973, 0
  %5975 = extractvalue %dx.types.ResRet.f32 %5973, 1
  %5976 = extractvalue %dx.types.ResRet.f32 %5973, 2
  %5977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5962, float %5966, float %5886, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5978 = extractvalue %dx.types.ResRet.f32 %5977, 0
  %5979 = extractvalue %dx.types.ResRet.f32 %5977, 1
  %5980 = extractvalue %dx.types.ResRet.f32 %5977, 2
  %5981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5964, float %5966, float %5886, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5982 = extractvalue %dx.types.ResRet.f32 %5981, 0
  %5983 = extractvalue %dx.types.ResRet.f32 %5981, 1
  %5984 = extractvalue %dx.types.ResRet.f32 %5981, 2
  %5985 = fsub fast float %5978, %5970
  %5986 = fsub fast float %5979, %5971
  %5987 = fsub fast float %5980, %5972
  %5988 = fmul fast float %5985, %5958
  %5989 = fmul fast float %5986, %5958
  %5990 = fmul fast float %5987, %5958
  %5991 = fadd fast float %5988, %5970
  %5992 = fadd fast float %5989, %5971
  %5993 = fadd fast float %5990, %5972
  %5994 = fsub fast float %5982, %5974
  %5995 = fsub fast float %5983, %5975
  %5996 = fsub fast float %5984, %5976
  %5997 = fmul fast float %5994, %5958
  %5998 = fmul fast float %5995, %5958
  %5999 = fmul fast float %5996, %5958
  %6000 = fsub fast float %5974, %5991
  %6001 = fadd fast float %6000, %5997
  %6002 = fsub fast float %5975, %5992
  %6003 = fadd fast float %6002, %5998
  %6004 = fsub fast float %5976, %5993
  %6005 = fadd fast float %6004, %5999
  %6006 = fmul fast float %6001, %5946
  %6007 = fmul fast float %6003, %5946
  %6008 = fmul fast float %6005, %5946
  %6009 = fadd fast float %6006, %5991
  %6010 = fadd fast float %6007, %5992
  %6011 = fadd fast float %6008, %5993
  %6012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6013 = extractvalue %dx.types.CBufRet.f32 %6012, 1
  %6014 = fmul fast float %6009, %6013
  %6015 = fmul fast float %6010, %6013
  %6016 = fmul fast float %6011, %6013
  br label %6017

; <label>:6017                                    ; preds = %5849, %5818
  %6018 = phi float [ %5888, %5849 ], [ 1.000000e+00, %5818 ]
  %6019 = phi float [ %5889, %5849 ], [ 1.000000e+00, %5818 ]
  %6020 = phi float [ %5890, %5849 ], [ 1.000000e+00, %5818 ]
  %6021 = phi float [ %6014, %5849 ], [ 0.000000e+00, %5818 ]
  %6022 = phi float [ %6015, %5849 ], [ 0.000000e+00, %5818 ]
  %6023 = phi float [ %6016, %5849 ], [ 0.000000e+00, %5818 ]
  %6024 = fmul fast float %6021, %5791
  %6025 = fmul fast float %6022, %5793
  %6026 = fmul fast float %6023, %5795
  %6027 = call float @dx.op.dot3.f32(i32 55, float %6018, float %6019, float %6020, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6028 = call float @dx.op.dot3.f32(i32 55, float %6024, float %6025, float %6026, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6029 = select i1 %229, float %6027, float %6018
  %6030 = select i1 %229, float %6027, float %6019
  %6031 = select i1 %229, float 1.000000e+00, float %6020
  %6032 = select i1 %229, float %6028, float %6024
  %6033 = select i1 %229, float 0.000000e+00, float %6025
  %6034 = select i1 %229, float 0.000000e+00, float %6026
  %6035 = fmul fast float %6029, %5808
  %6036 = fmul fast float %6030, %5809
  %6037 = fmul fast float %6031, %5810
  %6038 = fadd fast float %6035, %6032
  %6039 = fadd fast float %6036, %6033
  %6040 = fadd fast float %6034, %6037
  %6041 = fmul fast float %6029, %5784
  %6042 = fmul fast float %6030, %5785
  %6043 = fmul fast float %6031, %5786
  %6044 = fmul fast float %91, 2.000000e+00
  %6045 = fmul fast float %6044, %5820
  %6046 = fmul fast float %92, 2.000000e+00
  %6047 = fmul fast float %6046, %5821
  %6048 = fsub fast float 1.000000e+00, %6045
  %6049 = fsub fast float 1.000000e+00, %6047
  %6050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6051 = extractvalue %dx.types.CBufRet.f32 %6050, 0
  %6052 = extractvalue %dx.types.CBufRet.f32 %6050, 1
  %6053 = extractvalue %dx.types.CBufRet.f32 %6050, 2
  %6054 = fmul fast float %6048, %6051
  %6055 = fmul fast float %6048, %6052
  %6056 = fmul fast float %6048, %6053
  %6057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6058 = extractvalue %dx.types.CBufRet.f32 %6057, 0
  %6059 = extractvalue %dx.types.CBufRet.f32 %6057, 1
  %6060 = extractvalue %dx.types.CBufRet.f32 %6057, 2
  %6061 = fmul fast float %6049, %6058
  %6062 = fmul fast float %6049, %6059
  %6063 = fmul fast float %6049, %6060
  %6064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.f32 %6064, 0
  %6066 = extractvalue %dx.types.CBufRet.f32 %6064, 1
  %6067 = extractvalue %dx.types.CBufRet.f32 %6064, 2
  %6068 = fadd fast float %6061, %6065
  %6069 = fadd fast float %6068, %6054
  %6070 = fadd fast float %6062, %6066
  %6071 = fadd fast float %6070, %6055
  %6072 = fadd fast float %6063, %6067
  %6073 = fadd fast float %6072, %6056
  %6074 = fmul fast float %6069, %189
  %6075 = fmul fast float %6071, %189
  %6076 = fmul fast float %6073, %189
  br label %6077

; <label>:6077                                    ; preds = %6017, %5783
  %6078 = phi float [ %6074, %6017 ], [ %138, %5783 ]
  %6079 = phi float [ %6075, %6017 ], [ %139, %5783 ]
  %6080 = phi float [ %6076, %6017 ], [ %140, %5783 ]
  %6081 = phi float [ %189, %6017 ], [ %82, %5783 ]
  %6082 = phi float [ %6038, %6017 ], [ %5808, %5783 ]
  %6083 = phi float [ %6039, %6017 ], [ %5809, %5783 ]
  %6084 = phi float [ %6040, %6017 ], [ %5810, %5783 ]
  %6085 = phi float [ %6041, %6017 ], [ %5784, %5783 ]
  %6086 = phi float [ %6042, %6017 ], [ %5785, %5783 ]
  %6087 = phi float [ %6043, %6017 ], [ %5786, %5783 ]
  %6088 = phi float [ %6018, %6017 ], [ 1.000000e+00, %5783 ]
  br i1 %5817, label %7243, label %6089

; <label>:6089                                    ; preds = %6077
  %6090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6091 = extractvalue %dx.types.CBufRet.f32 %6090, 0
  %6092 = extractvalue %dx.types.CBufRet.f32 %6090, 1
  %6093 = extractvalue %dx.types.CBufRet.f32 %6090, 2
  %6094 = extractvalue %dx.types.CBufRet.f32 %6090, 3
  %6095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6097 = extractvalue %dx.types.CBufRet.f32 %6095, 1
  %6098 = extractvalue %dx.types.CBufRet.f32 %6095, 2
  %6099 = extractvalue %dx.types.CBufRet.f32 %6095, 3
  %6100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6101 = extractvalue %dx.types.CBufRet.f32 %6100, 0
  %6102 = extractvalue %dx.types.CBufRet.f32 %6100, 1
  %6103 = extractvalue %dx.types.CBufRet.f32 %6100, 2
  %6104 = extractvalue %dx.types.CBufRet.f32 %6100, 3
  %6105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6106 = extractvalue %dx.types.CBufRet.f32 %6105, 0
  %6107 = extractvalue %dx.types.CBufRet.f32 %6105, 1
  %6108 = extractvalue %dx.types.CBufRet.f32 %6105, 2
  %6109 = extractvalue %dx.types.CBufRet.f32 %6105, 3
  %6110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6111 = extractvalue %dx.types.CBufRet.f32 %6110, 3
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 3
  %6114 = extractvalue %dx.types.CBufRet.f32 %6112, 0
  %6115 = extractvalue %dx.types.CBufRet.f32 %6112, 1
  %6116 = extractvalue %dx.types.CBufRet.f32 %6112, 2
  %6117 = fcmp fast olt float %6116, -5.000000e-01
  %6118 = call float @dx.op.dot3.f32(i32 55, float %6078, float %6079, float %6080, float %6078, float %6079, float %6080)  ; Dot3(ax,ay,az,bx,by,bz)
  %6119 = call float @dx.op.unary.f32(i32 25, float %6118)  ; Rsqrt(value)
  %6120 = fmul fast float %6119, %6118
  %6121 = fmul fast float %6119, %6078
  %6122 = fmul fast float %6119, %6079
  %6123 = fmul fast float %6119, %6080
  %6124 = fadd fast float %6120, %6094
  %6125 = call float @dx.op.dot3.f32(i32 55, float %6121, float %6122, float %6123, float %6091, float %6092, float %6093)  ; Dot3(ax,ay,az,bx,by,bz)
  %6126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6127 = extractvalue %dx.types.CBufRet.i32 %6126, 1
  %6128 = and i32 %6127, 1
  %6129 = icmp ne i32 %6128, 0
  %6130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6131 = extractvalue %dx.types.CBufRet.f32 %6130, 2
  %6132 = fcmp fast ogt float %6131, 0.000000e+00
  %6133 = and i1 %6129, %6132
  br i1 %6133, label %6134, label %6540, !dx.controlflow.hints !136

; <label>:6134                                    ; preds = %6089
  %6135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6135, 3
  %6137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6138 = extractvalue %dx.types.CBufRet.f32 %6137, 2
  %6139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6140 = extractvalue %dx.types.CBufRet.f32 %6139, 2
  %6141 = fsub fast float %6138, %6140
  %6142 = and i32 %6127, 2
  %6143 = extractvalue %dx.types.CBufRet.i32 %6126, 0
  %6144 = call i32 @dx.op.binary.i32(i32 40, i32 %6143, i32 3)  ; UMin(a,b)
  %6145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6146 = extractvalue %dx.types.CBufRet.f32 %6145, 0
  %6147 = extractvalue %dx.types.CBufRet.f32 %6145, 1
  %6148 = extractvalue %dx.types.CBufRet.f32 %6139, 0
  %6149 = extractvalue %dx.types.CBufRet.f32 %6139, 1
  %6150 = fsub fast float %6146, %6148
  %6151 = fsub fast float %6147, %6149
  %6152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6153 = extractvalue %dx.types.CBufRet.f32 %6152, 0
  %6154 = fcmp fast ogt float %6153, 0.000000e+00
  %6155 = fsub fast float -0.000000e+00, %6150
  %6156 = fsub fast float -0.000000e+00, %6151
  %6157 = call float @dx.op.dot2.f32(i32 54, float %6121, float %6122, float %6121, float %6122)  ; Dot2(ax,ay,bx,by)
  %6158 = call float @dx.op.dot2.f32(i32 54, float %6121, float %6122, float %6155, float %6156)  ; Dot2(ax,ay,bx,by)
  %6159 = fmul fast float %6158, 2.000000e+00
  %6160 = call float @dx.op.dot2.f32(i32 54, float %6155, float %6156, float %6155, float %6156)  ; Dot2(ax,ay,bx,by)
  %6161 = fmul fast float %6153, %6153
  %6162 = fsub fast float %6160, %6161
  %6163 = fmul fast float %6159, %6159
  %6164 = fmul fast float %6157, 4.000000e+00
  %6165 = fmul fast float %6164, %6162
  %6166 = fsub fast float %6163, %6165
  %6167 = fcmp fast ogt float %6166, 0.000000e+00
  br i1 %6167, label %6168, label %6183

; <label>:6168                                    ; preds = %6134
  %6169 = fcmp fast ogt float %6159, 0.000000e+00
  %6170 = call float @dx.op.unary.f32(i32 24, float %6166)  ; Sqrt(value)
  %6171 = fsub fast float -0.000000e+00, %6170
  %6172 = select i1 %6169, float %6170, float %6171
  %6173 = fadd fast float %6172, %6159
  %6174 = fmul float %6173, -5.000000e-01
  %6175 = fdiv fast float %6174, %6157
  %6176 = call float @dx.op.binary.f32(i32 35, float %6175, float 0.000000e+00)  ; FMax(a,b)
  %6177 = call float @dx.op.binary.f32(i32 36, float %6120, float %6176)  ; FMin(a,b)
  %6178 = fdiv fast float %6162, %6174
  %6179 = call float @dx.op.binary.f32(i32 35, float %6178, float 0.000000e+00)  ; FMax(a,b)
  %6180 = call float @dx.op.binary.f32(i32 36, float %6120, float %6179)  ; FMin(a,b)
  %6181 = call float @dx.op.binary.f32(i32 36, float %6177, float %6180)  ; FMin(a,b)
  %6182 = call float @dx.op.binary.f32(i32 35, float %6177, float %6180)  ; FMax(a,b)
  br label %6183

; <label>:6183                                    ; preds = %6168, %6134
  %6184 = phi float [ %6182, %6168 ], [ -1.000000e+00, %6134 ]
  %6185 = phi float [ %6181, %6168 ], [ -1.000000e+00, %6134 ]
  %6186 = phi i1 [ true, %6168 ], [ false, %6134 ]
  %6187 = and i1 %6154, %6186
  br i1 %6187, label %6188, label %6190

; <label>:6188                                    ; preds = %6183
  %6189 = fcmp fast oeq float %6185, %6184
  br i1 %6189, label %6493, label %6191

; <label>:6190                                    ; preds = %6183
  br i1 %6154, label %6493, label %6191

; <label>:6191                                    ; preds = %6190, %6188
  %6192 = phi float [ %6120, %6190 ], [ %6184, %6188 ]
  %6193 = phi float [ 0.000000e+00, %6190 ], [ %6185, %6188 ]
  %6194 = icmp ne i32 %6142, 0
  %6195 = fmul fast float %6192, %6123
  %6196 = fadd fast float %6195, %6136
  %6197 = fmul fast float %6196, %6192
  %6198 = select i1 %6194, float 0.000000e+00, float %6197
  %6199 = fcmp fast oeq float %6123, 0.000000e+00
  %6200 = fdiv fast float %6141, %6123
  %6201 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6200)  ; FMax(a,b)
  %6202 = select i1 %6199, float %6192, float %6201
  %6203 = call float @dx.op.binary.f32(i32 36, float %6192, float %6202)  ; FMin(a,b)
  %6204 = fcmp fast ogt float %6123, 0.000000e+00
  %6205 = fcmp fast olt float %6141, 0.000000e+00
  br i1 %6204, label %6206, label %6263

; <label>:6206                                    ; preds = %6191
  %6207 = icmp eq i32 %6142, 0
  br i1 %6205, label %6208, label %6252

; <label>:6208                                    ; preds = %6206
  %6209 = select i1 %6207, float %6192, float 0.000000e+00
  %6210 = fsub fast float -0.000000e+00, %6209
  %6211 = call float @dx.op.unary.f32(i32 6, float %6210)  ; FAbs(value)
  %6212 = fmul fast float %6209, %6123
  %6213 = fadd fast float %6212, %6136
  %6214 = fmul fast float %6211, %6213
  %6215 = fsub fast float %6198, %6214
  %6216 = fsub fast float %6192, %6211
  %6217 = select i1 %6207, float %6216, float 0.000000e+00
  %6218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6219 = extractvalue %dx.types.CBufRet.f32 %6218, 0
  %6220 = extractvalue %dx.types.CBufRet.f32 %6218, 1
  %6221 = extractvalue %dx.types.CBufRet.f32 %6218, 2
  %6222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6223 = extractvalue %dx.types.CBufRet.f32 %6222, 0
  %6224 = extractvalue %dx.types.CBufRet.f32 %6222, 1
  %6225 = extractvalue %dx.types.CBufRet.f32 %6222, 2
  %6226 = extractvalue %dx.types.CBufRet.f32 %6222, 3
  %6227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6228 = extractvalue %dx.types.CBufRet.f32 %6227, 3
  %6229 = call float @dx.op.binary.f32(i32 36, float %6215, float %6228)  ; FMin(a,b)
  %6230 = fmul fast float %6226, %6217
  %6231 = call float @dx.op.unary.f32(i32 7, float %6230)  ; Saturate(value)
  %6232 = fsub fast float %6223, %6219
  %6233 = fsub fast float %6224, %6220
  %6234 = fsub fast float %6225, %6221
  %6235 = fmul fast float %6231, %6232
  %6236 = fmul fast float %6231, %6233
  %6237 = fmul fast float %6231, %6234
  %6238 = fadd fast float %6235, %6219
  %6239 = fadd fast float %6236, %6220
  %6240 = fadd fast float %6237, %6221
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.CBufRet.f32 %6241, 1
  %6244 = fadd fast float %6243, %6242
  %6245 = call float @dx.op.unary.f32(i32 7, float %6244)  ; Saturate(value)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6241, 2
  %6247 = extractvalue %dx.types.CBufRet.f32 %6241, 3
  %6248 = fadd fast float %6247, %6246
  %6249 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  %6250 = fmul fast float %6245, %6229
  %6251 = fmul fast float %6250, %6249
  br label %6493

; <label>:6252                                    ; preds = %6206
  br i1 %6207, label %6253, label %6274

; <label>:6253                                    ; preds = %6252
  %6254 = call float @dx.op.binary.f32(i32 36, float %6203, float %6193)  ; FMin(a,b)
  %6255 = fsub fast float %6203, %6254
  %6256 = fsub fast float %6255, %6192
  %6257 = call float @dx.op.unary.f32(i32 6, float %6256)  ; FAbs(value)
  %6258 = fadd fast float %6255, %6192
  %6259 = fmul fast float %6258, %6123
  %6260 = fadd fast float %6259, %6136
  %6261 = fmul fast float %6260, %6257
  %6262 = fsub fast float %6198, %6261
  br label %6274

; <label>:6263                                    ; preds = %6191
  br i1 %6205, label %6264, label %6274

; <label>:6264                                    ; preds = %6263
  %6265 = call float @dx.op.binary.f32(i32 35, float %6193, float %6203)  ; FMax(a,b)
  %6266 = icmp eq i32 %6142, 0
  %6267 = select i1 %6266, float %6203, float 0.000000e+00
  %6268 = fsub fast float -0.000000e+00, %6267
  %6269 = call float @dx.op.unary.f32(i32 6, float %6268)  ; FAbs(value)
  %6270 = fmul fast float %6267, %6123
  %6271 = fadd fast float %6270, %6136
  %6272 = fmul fast float %6269, %6271
  %6273 = fsub fast float %6198, %6272
  br label %6274

; <label>:6274                                    ; preds = %6264, %6263, %6253, %6252
  %6275 = phi float [ %6193, %6252 ], [ %6193, %6253 ], [ %6265, %6264 ], [ %6193, %6263 ]
  %6276 = phi float [ 0.000000e+00, %6252 ], [ %6257, %6253 ], [ %6269, %6264 ], [ 0.000000e+00, %6263 ]
  %6277 = phi float [ %6198, %6252 ], [ %6262, %6253 ], [ %6273, %6264 ], [ %6198, %6263 ]
  %6278 = phi float [ %6203, %6252 ], [ %6203, %6253 ], [ %6192, %6264 ], [ %6192, %6263 ]
  %6279 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 0
  store float -1.000000e+00, float* %6279, align 4, !tbaa !137, !noalias !139
  %6280 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 1
  store float -1.000000e+00, float* %6280, align 4, !tbaa !137, !noalias !139
  %6281 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 2
  store float -1.000000e+00, float* %6281, align 4, !tbaa !137, !noalias !139
  %6282 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 0
  store float -1.000000e+00, float* %6282, align 4, !tbaa !137, !noalias !139
  %6283 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 1
  store float -1.000000e+00, float* %6283, align 4, !tbaa !137, !noalias !139
  %6284 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 2
  store float -1.000000e+00, float* %6284, align 4, !tbaa !137, !noalias !139
  %6285 = icmp sgt i32 %6144, 0
  br i1 %6285, label %6286, label %6347

; <label>:6286                                    ; preds = %6274
  br label %6287

; <label>:6287                                    ; preds = %6336, %6286
  %6288 = phi i32 [ %6337, %6336 ], [ 0, %6286 ]
  %6289 = phi i32 [ %6338, %6336 ], [ 0, %6286 ]
  %6290 = add nuw i32 %6289, 171
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %6290)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.CBufRet.f32 %6291, 1
  %6294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6295 = extractvalue %dx.types.CBufRet.f32 %6294, 0
  %6296 = extractvalue %dx.types.CBufRet.f32 %6294, 1
  %6297 = fsub fast float %6292, %6295
  %6298 = fsub fast float %6293, %6296
  %6299 = extractvalue %dx.types.CBufRet.f32 %6291, 2
  %6300 = fsub fast float -0.000000e+00, %6297
  %6301 = fsub fast float -0.000000e+00, %6298
  %6302 = call float @dx.op.dot2.f32(i32 54, float %6121, float %6122, float %6300, float %6301)  ; Dot2(ax,ay,bx,by)
  %6303 = fmul fast float %6302, 2.000000e+00
  %6304 = call float @dx.op.dot2.f32(i32 54, float %6300, float %6301, float %6300, float %6301)  ; Dot2(ax,ay,bx,by)
  %6305 = fmul fast float %6299, %6299
  %6306 = fsub fast float %6304, %6305
  %6307 = fmul fast float %6303, %6303
  %6308 = fmul fast float %6164, %6306
  %6309 = fsub fast float %6307, %6308
  %6310 = fcmp fast ogt float %6309, 0.000000e+00
  br i1 %6310, label %6311, label %6326

; <label>:6311                                    ; preds = %6287
  %6312 = fcmp fast ogt float %6303, 0.000000e+00
  %6313 = call float @dx.op.unary.f32(i32 24, float %6309)  ; Sqrt(value)
  %6314 = fsub fast float -0.000000e+00, %6313
  %6315 = select i1 %6312, float %6313, float %6314
  %6316 = fadd fast float %6315, %6303
  %6317 = fmul float %6316, -5.000000e-01
  %6318 = fdiv fast float %6317, %6157
  %6319 = call float @dx.op.binary.f32(i32 35, float %6318, float 0.000000e+00)  ; FMax(a,b)
  %6320 = call float @dx.op.binary.f32(i32 36, float %6192, float %6319)  ; FMin(a,b)
  %6321 = fdiv fast float %6306, %6317
  %6322 = call float @dx.op.binary.f32(i32 35, float %6321, float 0.000000e+00)  ; FMax(a,b)
  %6323 = call float @dx.op.binary.f32(i32 36, float %6192, float %6322)  ; FMin(a,b)
  %6324 = call float @dx.op.binary.f32(i32 36, float %6320, float %6323)  ; FMin(a,b)
  %6325 = call float @dx.op.binary.f32(i32 35, float %6320, float %6323)  ; FMax(a,b)
  br label %6326

; <label>:6326                                    ; preds = %6311, %6287
  %6327 = phi float [ %6325, %6311 ], [ -1.000000e+00, %6287 ]
  %6328 = phi float [ %6324, %6311 ], [ -1.000000e+00, %6287 ]
  %6329 = phi i1 [ true, %6311 ], [ false, %6287 ]
  br i1 %6329, label %6330, label %6336

; <label>:6330                                    ; preds = %6326
  %6331 = call float @dx.op.binary.f32(i32 35, float %6275, float %6328)  ; FMax(a,b)
  %6332 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %6289
  store float %6331, float* %6332, align 4, !tbaa !137, !noalias !139
  %6333 = call float @dx.op.binary.f32(i32 35, float %6275, float %6327)  ; FMax(a,b)
  %6334 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %6289
  store float %6333, float* %6334, align 4, !tbaa !137, !noalias !139
  %6335 = add nsw i32 %6288, 1
  br label %6336

; <label>:6336                                    ; preds = %6330, %6326
  %6337 = phi i32 [ %6335, %6330 ], [ %6288, %6326 ]
  %6338 = add nuw nsw i32 %6289, 1
  %6339 = icmp eq i32 %6338, %6144
  br i1 %6339, label %6340, label %6287

; <label>:6340                                    ; preds = %6336
  %6341 = load float, float* %6281, align 4, !tbaa !137, !alias.scope !155, !noalias !158
  %6342 = load float, float* %6280, align 4, !tbaa !137, !alias.scope !161, !noalias !162
  %6343 = load float, float* %6279, align 4, !tbaa !137, !alias.scope !163, !noalias !164
  %6344 = load float, float* %6284, align 4, !tbaa !137, !alias.scope !165, !noalias !168
  %6345 = load float, float* %6283, align 4, !tbaa !137, !alias.scope !171, !noalias !172
  %6346 = load float, float* %6282, align 4, !tbaa !137, !alias.scope !173, !noalias !174
  br label %6347

; <label>:6347                                    ; preds = %6340, %6274
  %6348 = phi float [ -1.000000e+00, %6274 ], [ %6346, %6340 ]
  %6349 = phi float [ -1.000000e+00, %6274 ], [ %6345, %6340 ]
  %6350 = phi float [ -1.000000e+00, %6274 ], [ %6344, %6340 ]
  %6351 = phi float [ -1.000000e+00, %6274 ], [ %6343, %6340 ]
  %6352 = phi float [ -1.000000e+00, %6274 ], [ %6342, %6340 ]
  %6353 = phi float [ -1.000000e+00, %6274 ], [ %6341, %6340 ]
  %6354 = phi i32 [ 0, %6274 ], [ %6337, %6340 ]
  %6355 = call float @dx.op.binary.f32(i32 36, float %6352, float %6353)  ; FMin(a,b)
  %6356 = call float @dx.op.binary.f32(i32 36, float %6351, float %6355)  ; FMin(a,b)
  %6357 = call float @dx.op.binary.f32(i32 35, float %6351, float %6352)  ; FMax(a,b)
  %6358 = call float @dx.op.binary.f32(i32 36, float %6357, float %6353)  ; FMin(a,b)
  %6359 = call float @dx.op.binary.f32(i32 36, float %6351, float %6352)  ; FMin(a,b)
  %6360 = call float @dx.op.binary.f32(i32 35, float %6359, float %6358)  ; FMax(a,b)
  %6361 = call float @dx.op.binary.f32(i32 35, float %6352, float %6353)  ; FMax(a,b)
  %6362 = call float @dx.op.binary.f32(i32 35, float %6351, float %6361)  ; FMax(a,b)
  store float %6356, float* %6279, align 4, !tbaa !137, !alias.scope !163, !noalias !164
  store float %6360, float* %6280, align 4, !tbaa !137, !alias.scope !161, !noalias !162
  store float %6362, float* %6281, align 4, !tbaa !137, !alias.scope !155, !noalias !158
  %6363 = call float @dx.op.binary.f32(i32 36, float %6349, float %6350)  ; FMin(a,b)
  %6364 = call float @dx.op.binary.f32(i32 36, float %6348, float %6363)  ; FMin(a,b)
  %6365 = call float @dx.op.binary.f32(i32 35, float %6348, float %6349)  ; FMax(a,b)
  %6366 = call float @dx.op.binary.f32(i32 36, float %6365, float %6350)  ; FMin(a,b)
  %6367 = call float @dx.op.binary.f32(i32 36, float %6348, float %6349)  ; FMin(a,b)
  %6368 = call float @dx.op.binary.f32(i32 35, float %6367, float %6366)  ; FMax(a,b)
  %6369 = call float @dx.op.binary.f32(i32 35, float %6349, float %6350)  ; FMax(a,b)
  %6370 = call float @dx.op.binary.f32(i32 35, float %6348, float %6369)  ; FMax(a,b)
  store float %6364, float* %6282, align 4, !tbaa !137, !alias.scope !173, !noalias !174
  store float %6368, float* %6283, align 4, !tbaa !137, !alias.scope !171, !noalias !172
  store float %6370, float* %6284, align 4, !tbaa !137, !alias.scope !165, !noalias !168
  %6371 = sub nsw i32 3, %6354
  %6372 = icmp sgt i32 %6371, 2
  br i1 %6372, label %6373, label %6411

; <label>:6373                                    ; preds = %6347
  %6374 = icmp eq i32 %6142, 0
  %6375 = fsub fast float %6192, %6276
  %6376 = select i1 %6374, float %6375, float %6276
  %6377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.f32 %6377, 0
  %6379 = extractvalue %dx.types.CBufRet.f32 %6377, 1
  %6380 = extractvalue %dx.types.CBufRet.f32 %6377, 2
  %6381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6382 = extractvalue %dx.types.CBufRet.f32 %6381, 0
  %6383 = extractvalue %dx.types.CBufRet.f32 %6381, 1
  %6384 = extractvalue %dx.types.CBufRet.f32 %6381, 2
  %6385 = extractvalue %dx.types.CBufRet.f32 %6381, 3
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 3
  %6388 = call float @dx.op.binary.f32(i32 36, float %6277, float %6387)  ; FMin(a,b)
  %6389 = fmul fast float %6385, %6376
  %6390 = call float @dx.op.unary.f32(i32 7, float %6389)  ; Saturate(value)
  %6391 = fsub fast float %6382, %6378
  %6392 = fsub fast float %6383, %6379
  %6393 = fsub fast float %6384, %6380
  %6394 = fmul fast float %6390, %6391
  %6395 = fmul fast float %6390, %6392
  %6396 = fmul fast float %6390, %6393
  %6397 = fadd fast float %6394, %6378
  %6398 = fadd fast float %6395, %6379
  %6399 = fadd fast float %6396, %6380
  %6400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6401 = extractvalue %dx.types.CBufRet.f32 %6400, 0
  %6402 = extractvalue %dx.types.CBufRet.f32 %6400, 1
  %6403 = fadd fast float %6402, %6401
  %6404 = call float @dx.op.unary.f32(i32 7, float %6403)  ; Saturate(value)
  %6405 = extractvalue %dx.types.CBufRet.f32 %6400, 2
  %6406 = extractvalue %dx.types.CBufRet.f32 %6400, 3
  %6407 = fadd fast float %6406, %6405
  %6408 = call float @dx.op.unary.f32(i32 7, float %6407)  ; Saturate(value)
  %6409 = fmul fast float %6404, %6388
  %6410 = fmul fast float %6409, %6408
  br label %6493

; <label>:6411                                    ; preds = %6347
  %6412 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %6371
  %6413 = load float, float* %6412, align 4, !tbaa !137, !noalias !139
  %6414 = fcmp fast olt float %6413, %6278
  %6415 = icmp sgt i32 %6354, 0
  %6416 = and i1 %6415, %6414
  br i1 %6416, label %6417, label %6454

; <label>:6417                                    ; preds = %6411
  br label %6418

; <label>:6418                                    ; preds = %6447, %6417
  %6419 = phi float [ %6448, %6447 ], [ %6276, %6417 ]
  %6420 = phi float [ %6449, %6447 ], [ %6277, %6417 ]
  %6421 = phi float [ %6429, %6447 ], [ %6413, %6417 ]
  %6422 = phi i32 [ %6426, %6447 ], [ %6371, %6417 ]
  %6423 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %6422
  %6424 = load float, float* %6423, align 4, !tbaa !137, !noalias !139
  %6425 = icmp slt i32 %6422, 2
  %6426 = add nsw i32 %6422, 1
  %6427 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %6426
  %6428 = load float, float* %6427, align 4, !tbaa !137, !noalias !139
  %6429 = select i1 %6425, float %6428, float %6192
  %6430 = call float @dx.op.binary.f32(i32 36, float %6429, float %6424)  ; FMin(a,b)
  %6431 = call float @dx.op.binary.f32(i32 36, float %6278, float %6430)  ; FMin(a,b)
  %6432 = icmp eq i32 %6142, 0
  %6433 = fadd fast float %6431, %6421
  %6434 = fmul fast float %6433, %6123
  %6435 = fadd fast float %6434, %6136
  br i1 %6432, label %6441, label %6436

; <label>:6436                                    ; preds = %6418
  %6437 = fsub fast float %6431, %6421
  %6438 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6437)  ; FMax(a,b)
  %6439 = fmul fast float %6438, %6435
  %6440 = fadd fast float %6439, %6420
  br label %6447

; <label>:6441                                    ; preds = %6418
  %6442 = fsub fast float %6421, %6431
  %6443 = call float @dx.op.unary.f32(i32 6, float %6442)  ; FAbs(value)
  %6444 = fadd fast float %6443, %6419
  %6445 = fmul fast float %6443, %6435
  %6446 = fsub fast float %6420, %6445
  br label %6447

; <label>:6447                                    ; preds = %6441, %6436
  %6448 = phi float [ %6438, %6436 ], [ %6444, %6441 ]
  %6449 = phi float [ %6440, %6436 ], [ %6446, %6441 ]
  %6450 = fcmp fast olt float %6429, %6278
  %6451 = icmp slt i32 %6426, 3
  %6452 = and i1 %6451, %6450
  br i1 %6452, label %6418, label %6453

; <label>:6453                                    ; preds = %6447
  br label %6454

; <label>:6454                                    ; preds = %6453, %6411
  %6455 = phi float [ %6276, %6411 ], [ %6448, %6453 ]
  %6456 = phi float [ %6277, %6411 ], [ %6449, %6453 ]
  %6457 = fsub fast float %6192, %6455
  %6458 = select i1 %6194, float %6455, float %6457
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 0
  %6461 = extractvalue %dx.types.CBufRet.f32 %6459, 1
  %6462 = extractvalue %dx.types.CBufRet.f32 %6459, 2
  %6463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6464 = extractvalue %dx.types.CBufRet.f32 %6463, 0
  %6465 = extractvalue %dx.types.CBufRet.f32 %6463, 1
  %6466 = extractvalue %dx.types.CBufRet.f32 %6463, 2
  %6467 = extractvalue %dx.types.CBufRet.f32 %6463, 3
  %6468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6469 = extractvalue %dx.types.CBufRet.f32 %6468, 3
  %6470 = call float @dx.op.binary.f32(i32 36, float %6456, float %6469)  ; FMin(a,b)
  %6471 = fmul fast float %6467, %6458
  %6472 = call float @dx.op.unary.f32(i32 7, float %6471)  ; Saturate(value)
  %6473 = fsub fast float %6464, %6460
  %6474 = fsub fast float %6465, %6461
  %6475 = fsub fast float %6466, %6462
  %6476 = fmul fast float %6472, %6473
  %6477 = fmul fast float %6472, %6474
  %6478 = fmul fast float %6472, %6475
  %6479 = fadd fast float %6476, %6460
  %6480 = fadd fast float %6477, %6461
  %6481 = fadd fast float %6478, %6462
  %6482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6483 = extractvalue %dx.types.CBufRet.f32 %6482, 0
  %6484 = extractvalue %dx.types.CBufRet.f32 %6482, 1
  %6485 = fadd fast float %6484, %6483
  %6486 = call float @dx.op.unary.f32(i32 7, float %6485)  ; Saturate(value)
  %6487 = extractvalue %dx.types.CBufRet.f32 %6482, 2
  %6488 = extractvalue %dx.types.CBufRet.f32 %6482, 3
  %6489 = fadd fast float %6488, %6487
  %6490 = call float @dx.op.unary.f32(i32 7, float %6489)  ; Saturate(value)
  %6491 = fmul fast float %6486, %6470
  %6492 = fmul fast float %6491, %6490
  br label %6493

; <label>:6493                                    ; preds = %6454, %6373, %6208, %6190, %6188
  %6494 = phi float [ %6217, %6208 ], [ %6376, %6373 ], [ %6458, %6454 ], [ 0.000000e+00, %6188 ], [ 0.000000e+00, %6190 ]
  %6495 = phi float [ %6251, %6208 ], [ %6410, %6373 ], [ %6492, %6454 ], [ 0.000000e+00, %6188 ], [ 0.000000e+00, %6190 ]
  %6496 = phi float [ %6238, %6208 ], [ %6397, %6373 ], [ %6479, %6454 ], [ 0.000000e+00, %6188 ], [ 0.000000e+00, %6190 ]
  %6497 = phi float [ %6239, %6208 ], [ %6398, %6373 ], [ %6480, %6454 ], [ 0.000000e+00, %6188 ], [ 0.000000e+00, %6190 ]
  %6498 = phi float [ %6240, %6208 ], [ %6399, %6373 ], [ %6481, %6454 ], [ 0.000000e+00, %6188 ], [ 0.000000e+00, %6190 ]
  %6499 = fmul fast float %6131, %6495
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 2
  %6502 = fsub fast float %6138, %6501
  %6503 = fcmp fast olt float %6499, -2.000000e+01
  %6504 = call float @dx.op.unary.f32(i32 21, float %6499)  ; Exp(value)
  %6505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6506 = extractvalue %dx.types.CBufRet.f32 %6505, 2
  %6507 = extractvalue %dx.types.CBufRet.f32 %6505, 3
  %6508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6509 = extractvalue %dx.types.CBufRet.f32 %6508, 2
  %6510 = fmul fast float %6507, %6502
  %6511 = call float @dx.op.unary.f32(i32 7, float %6510)  ; Saturate(value)
  %6512 = fsub fast float 1.000000e+00, %6511
  %6513 = fmul fast float %6123, 5.000000e-01
  %6514 = fadd fast float %6513, 5.000000e-01
  %6515 = call float @dx.op.unary.f32(i32 7, float %6514)  ; Saturate(value)
  %6516 = fsub fast float 1.000000e+00, %6515
  %6517 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6512)  ; FMax(a,b)
  %6518 = fdiv fast float %6516, %6517
  %6519 = fsub fast float %6502, %6080
  %6520 = call float @dx.op.unary.f32(i32 6, float %6519)  ; FAbs(value)
  %6521 = fmul fast float %6520, %6506
  %6522 = call float @dx.op.unary.f32(i32 7, float %6518)  ; Saturate(value)
  %6523 = fsub fast float 1.000000e+00, %6521
  %6524 = fmul fast float %6523, %6522
  %6525 = fadd fast float %6524, %6521
  %6526 = fmul fast float %6509, %6502
  %6527 = call float @dx.op.unary.f32(i32 7, float %6526)  ; Saturate(value)
  %6528 = fsub fast float 1.000000e+00, %6525
  %6529 = fmul fast float %6528, %6527
  %6530 = fadd fast float %6529, %6525
  %6531 = call float @dx.op.unary.f32(i32 7, float %6530)  ; Saturate(value)
  %6532 = fadd fast float %6504, -1.000000e+00
  %6533 = select i1 %6503, float -1.000000e+00, float %6532
  %6534 = fmul fast float %6531, %6533
  %6535 = fadd fast float %6534, 1.000000e+00
  %6536 = fsub fast float -0.000000e+00, %6534
  %6537 = fmul fast float %6496, %6536
  %6538 = fmul fast float %6497, %6536
  %6539 = fmul fast float %6498, %6536
  br label %6540

; <label>:6540                                    ; preds = %6493, %6089
  %6541 = phi float [ %6494, %6493 ], [ 0.000000e+00, %6089 ]
  %6542 = phi float [ %6535, %6493 ], [ 1.000000e+00, %6089 ]
  %6543 = phi float [ %6537, %6493 ], [ 0.000000e+00, %6089 ]
  %6544 = phi float [ %6538, %6493 ], [ 0.000000e+00, %6089 ]
  %6545 = phi float [ %6539, %6493 ], [ 0.000000e+00, %6089 ]
  %6546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6547 = extractvalue %dx.types.CBufRet.f32 %6546, 1
  %6548 = fsub fast float 1.000000e+00, %6542
  %6549 = fmul fast float %6548, %6124
  %6550 = fmul fast float %6549, %6547
  %6551 = fsub fast float %6124, %6550
  br i1 %6117, label %6552, label %6581, !dx.controlflow.hints !175

; <label>:6552                                    ; preds = %6540
  %6553 = fmul fast float %6125, %6114
  %6554 = fadd fast float %6553, %6115
  %6555 = call float @dx.op.unary.f32(i32 7, float %6554)  ; Saturate(value)
  %6556 = fmul fast float %6096, %6551
  %6557 = fsub fast float -0.000000e+00, %6556
  %6558 = fmul fast float %6097, %6551
  %6559 = fsub fast float -0.000000e+00, %6558
  %6560 = call float @dx.op.unary.f32(i32 21, float %6557)  ; Exp(value)
  %6561 = call float @dx.op.unary.f32(i32 21, float %6559)  ; Exp(value)
  %6562 = call float @dx.op.binary.f32(i32 35, float %6104, float %6560)  ; FMax(a,b)
  %6563 = call float @dx.op.binary.f32(i32 35, float %6104, float %6561)  ; FMax(a,b)
  %6564 = fsub fast float %6563, %6562
  %6565 = fmul fast float %6564, %6555
  %6566 = fadd fast float %6565, %6562
  %6567 = call float @dx.op.unary.f32(i32 7, float %6566)  ; Saturate(value)
  %6568 = fsub fast float %6101, %6106
  %6569 = fsub fast float %6102, %6107
  %6570 = fsub fast float %6103, %6108
  %6571 = fmul fast float %6555, %6568
  %6572 = fmul fast float %6555, %6569
  %6573 = fmul fast float %6555, %6570
  %6574 = fadd fast float %6571, %6106
  %6575 = fadd fast float %6572, %6107
  %6576 = fadd fast float %6573, %6108
  %6577 = fsub fast float 1.000000e+00, %6567
  %6578 = fmul fast float %6577, %6574
  %6579 = fmul fast float %6577, %6575
  %6580 = fmul fast float %6577, %6576
  br label %6640

; <label>:6581                                    ; preds = %6540
  %6582 = fmul fast float %6551, %6113
  %6583 = call float @dx.op.unary.f32(i32 7, float %6582)  ; Saturate(value)
  %6584 = fsub fast float 2.000000e+00, %6583
  %6585 = fmul fast float %6583, 9.921875e-01
  %6586 = fmul fast float %6585, %6584
  %6587 = fadd fast float %6586, 3.906250e-03
  %6588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %6587, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6589 = extractvalue %dx.types.ResRet.f32 %6588, 0
  %6590 = fsub fast float %6583, %6589
  %6591 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6590)  ; FMax(a,b)
  %6592 = fmul fast float %6099, %6080
  %6593 = call float @dx.op.unary.f32(i32 6, float %6592)  ; FAbs(value)
  %6594 = fcmp fast ogt float %6593, 0x3EB0C6F7A0000000
  br i1 %6594, label %6595, label %6601, !dx.controlflow.hints !176

; <label>:6595                                    ; preds = %6581
  %6596 = fmul fast float %6592, 0xBFF7154760000000
  %6597 = call float @dx.op.unary.f32(i32 21, float %6596)  ; Exp(value)
  %6598 = fsub fast float 1.000000e+00, %6597
  %6599 = fdiv fast float %6598, %6592
  %6600 = fmul fast float %6599, %6109
  br label %6601

; <label>:6601                                    ; preds = %6595, %6581
  %6602 = phi float [ %6600, %6595 ], [ %6109, %6581 ]
  %6603 = fadd fast float %6602, %6111
  %6604 = fmul fast float %6603, %6591
  %6605 = fmul fast float %6096, %6604
  %6606 = fsub fast float -0.000000e+00, %6605
  %6607 = fmul fast float %6097, %6604
  %6608 = fsub fast float -0.000000e+00, %6607
  %6609 = fmul fast float %6098, %6604
  %6610 = fsub fast float -0.000000e+00, %6609
  %6611 = call float @dx.op.unary.f32(i32 21, float %6606)  ; Exp(value)
  %6612 = call float @dx.op.unary.f32(i32 21, float %6608)  ; Exp(value)
  %6613 = call float @dx.op.unary.f32(i32 21, float %6610)  ; Exp(value)
  %6614 = fmul fast float %6125, %6125
  %6615 = fadd fast float %6614, 1.000000e+00
  %6616 = fmul fast float %6615, 0x3FAE8EC8A0000000
  %6617 = fmul fast float %6616, %6106
  %6618 = fmul fast float %6616, %6107
  %6619 = fmul fast float %6616, %6108
  %6620 = fmul fast float %6125, %6104
  %6621 = fsub fast float 1.000000e+00, %6620
  %6622 = fmul fast float %6104, %6104
  %6623 = fsub fast float 1.000000e+00, %6622
  %6624 = fmul fast float %6623, 0x3FB45F3060000000
  %6625 = fmul fast float %6621, %6621
  %6626 = fdiv fast float 1.000000e+00, %6625
  %6627 = fmul fast float %6624, %6626
  %6628 = fmul fast float %6627, %6101
  %6629 = fmul fast float %6627, %6102
  %6630 = fmul fast float %6627, %6103
  %6631 = fadd fast float %6628, %6617
  %6632 = fadd fast float %6629, %6618
  %6633 = fadd fast float %6630, %6619
  %6634 = fsub fast float 1.000000e+00, %6611
  %6635 = fsub fast float 1.000000e+00, %6612
  %6636 = fsub fast float 1.000000e+00, %6613
  %6637 = fmul fast float %6631, %6634
  %6638 = fmul fast float %6632, %6635
  %6639 = fmul fast float %6633, %6636
  br label %6640

; <label>:6640                                    ; preds = %6601, %6552
  %6641 = phi float [ %6578, %6552 ], [ %6637, %6601 ]
  %6642 = phi float [ %6579, %6552 ], [ %6638, %6601 ]
  %6643 = phi float [ %6580, %6552 ], [ %6639, %6601 ]
  %6644 = phi float [ %6567, %6552 ], [ %6611, %6601 ]
  %6645 = phi float [ %6567, %6552 ], [ %6612, %6601 ]
  %6646 = phi float [ %6567, %6552 ], [ %6613, %6601 ]
  br i1 %6133, label %6647, label %6845, !dx.controlflow.hints !177

; <label>:6647                                    ; preds = %6640
  %6648 = extractvalue %dx.types.CBufRet.f32 %6546, 0
  %6649 = fmul fast float %6648, %6548
  %6650 = fsub fast float %6543, %6641
  %6651 = fsub fast float %6544, %6642
  %6652 = fsub fast float %6545, %6643
  %6653 = fmul fast float %6649, %6650
  %6654 = fmul fast float %6649, %6651
  %6655 = fmul fast float %6649, %6652
  %6656 = fadd fast float %6653, %6641
  %6657 = fadd fast float %6654, %6642
  %6658 = fadd fast float %6655, %6643
  %6659 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6644)  ; FMax(a,b)
  %6660 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6645)  ; FMax(a,b)
  %6661 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6646)  ; FMax(a,b)
  %6662 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6542)  ; FMax(a,b)
  %6663 = call float @dx.op.binary.f32(i32 35, float %6541, float %6551)  ; FMax(a,b)
  %6664 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6663)  ; FMax(a,b)
  %6665 = fdiv fast float %6541, %6664
  %6666 = call float @dx.op.unary.f32(i32 7, float %6665)  ; Saturate(value)
  %6667 = fdiv fast float %6551, %6664
  %6668 = call float @dx.op.unary.f32(i32 7, float %6667)  ; Saturate(value)
  %6669 = fcmp fast une float %6662, 1.000000e+00
  br i1 %6669, label %6670, label %6683, !dx.controlflow.hints !178

; <label>:6670                                    ; preds = %6647
  %6671 = call float @dx.op.unary.f32(i32 23, float %6662)  ; Log(value)
  %6672 = fmul fast float %6671, 0x3FE62E4300000000
  %6673 = fmul fast float %6543, %6672
  %6674 = fsub fast float -0.000000e+00, %6673
  %6675 = fmul fast float %6544, %6672
  %6676 = fsub fast float -0.000000e+00, %6675
  %6677 = fmul fast float %6545, %6672
  %6678 = fsub fast float -0.000000e+00, %6677
  %6679 = fsub fast float 1.000000e+00, %6662
  %6680 = fdiv fast float %6674, %6679
  %6681 = fdiv fast float %6676, %6679
  %6682 = fdiv fast float %6678, %6679
  br label %6683

; <label>:6683                                    ; preds = %6670, %6647
  %6684 = phi float [ %6680, %6670 ], [ %6543, %6647 ]
  %6685 = phi float [ %6681, %6670 ], [ %6544, %6647 ]
  %6686 = phi float [ %6682, %6670 ], [ %6545, %6647 ]
  %6687 = phi float [ %6672, %6670 ], [ 0.000000e+00, %6647 ]
  %6688 = fcmp fast une float %6659, 1.000000e+00
  br i1 %6688, label %6689, label %6696, !dx.controlflow.hints !179

; <label>:6689                                    ; preds = %6683
  %6690 = call float @dx.op.unary.f32(i32 23, float %6659)  ; Log(value)
  %6691 = fmul fast float %6690, 0x3FE62E4300000000
  %6692 = fmul fast float %6656, %6691
  %6693 = fsub fast float -0.000000e+00, %6692
  %6694 = fsub fast float 1.000000e+00, %6659
  %6695 = fdiv fast float %6693, %6694
  br label %6696

; <label>:6696                                    ; preds = %6689, %6683
  %6697 = phi float [ %6695, %6689 ], [ %6656, %6683 ]
  %6698 = phi float [ %6691, %6689 ], [ 0.000000e+00, %6683 ]
  %6699 = fcmp fast une float %6660, 1.000000e+00
  br i1 %6699, label %6700, label %6707, !dx.controlflow.hints !179

; <label>:6700                                    ; preds = %6696
  %6701 = call float @dx.op.unary.f32(i32 23, float %6660)  ; Log(value)
  %6702 = fmul fast float %6701, 0x3FE62E4300000000
  %6703 = fmul fast float %6657, %6702
  %6704 = fsub fast float -0.000000e+00, %6703
  %6705 = fsub fast float 1.000000e+00, %6660
  %6706 = fdiv fast float %6704, %6705
  br label %6707

; <label>:6707                                    ; preds = %6700, %6696
  %6708 = phi float [ %6706, %6700 ], [ %6657, %6696 ]
  %6709 = phi float [ %6702, %6700 ], [ 0.000000e+00, %6696 ]
  %6710 = fcmp fast une float %6661, 1.000000e+00
  br i1 %6710, label %6711, label %6718, !dx.controlflow.hints !179

; <label>:6711                                    ; preds = %6707
  %6712 = call float @dx.op.unary.f32(i32 23, float %6661)  ; Log(value)
  %6713 = fmul fast float %6712, 0x3FE62E4300000000
  %6714 = fmul fast float %6658, %6713
  %6715 = fsub fast float -0.000000e+00, %6714
  %6716 = fsub fast float 1.000000e+00, %6661
  %6717 = fdiv fast float %6715, %6716
  br label %6718

; <label>:6718                                    ; preds = %6711, %6707
  %6719 = phi float [ %6717, %6711 ], [ %6658, %6707 ]
  %6720 = phi float [ %6713, %6711 ], [ 0.000000e+00, %6707 ]
  %6721 = fmul fast float %6684, %6668
  %6722 = fmul fast float %6685, %6668
  %6723 = fmul fast float %6686, %6668
  %6724 = fmul fast float %6687, %6668
  %6725 = fmul fast float %6697, %6666
  %6726 = fmul fast float %6708, %6666
  %6727 = fmul fast float %6719, %6666
  %6728 = fmul fast float %6698, %6666
  %6729 = fmul fast float %6709, %6666
  %6730 = fmul fast float %6720, %6666
  %6731 = fadd fast float %6725, %6721
  %6732 = fadd fast float %6726, %6722
  %6733 = fadd fast float %6727, %6723
  %6734 = fadd fast float %6728, %6724
  %6735 = fadd fast float %6729, %6724
  %6736 = fadd fast float %6730, %6724
  %6737 = fcmp fast une float %6734, 0.000000e+00
  br i1 %6737, label %6738, label %6745, !dx.controlflow.hints !180

; <label>:6738                                    ; preds = %6718
  %6739 = fmul fast float %6734, 0x3FF7154760000000
  %6740 = call float @dx.op.unary.f32(i32 21, float %6739)  ; Exp(value)
  %6741 = fsub fast float 1.000000e+00, %6740
  %6742 = fmul fast float %6731, %6741
  %6743 = fsub fast float -0.000000e+00, %6742
  %6744 = fdiv fast float %6743, %6734
  br label %6745

; <label>:6745                                    ; preds = %6738, %6718
  %6746 = phi float [ %6740, %6738 ], [ 1.000000e+00, %6718 ]
  %6747 = phi float [ %6744, %6738 ], [ %6731, %6718 ]
  %6748 = fcmp fast une float %6735, 0.000000e+00
  br i1 %6748, label %6749, label %6756, !dx.controlflow.hints !180

; <label>:6749                                    ; preds = %6745
  %6750 = fmul fast float %6735, 0x3FF7154760000000
  %6751 = call float @dx.op.unary.f32(i32 21, float %6750)  ; Exp(value)
  %6752 = fsub fast float 1.000000e+00, %6751
  %6753 = fmul fast float %6732, %6752
  %6754 = fsub fast float -0.000000e+00, %6753
  %6755 = fdiv fast float %6754, %6735
  br label %6756

; <label>:6756                                    ; preds = %6749, %6745
  %6757 = phi float [ %6751, %6749 ], [ 1.000000e+00, %6745 ]
  %6758 = phi float [ %6755, %6749 ], [ %6732, %6745 ]
  %6759 = fcmp fast une float %6736, 0.000000e+00
  br i1 %6759, label %6760, label %6767, !dx.controlflow.hints !180

; <label>:6760                                    ; preds = %6756
  %6761 = fmul fast float %6736, 0x3FF7154760000000
  %6762 = call float @dx.op.unary.f32(i32 21, float %6761)  ; Exp(value)
  %6763 = fsub fast float 1.000000e+00, %6762
  %6764 = fmul fast float %6733, %6763
  %6765 = fsub fast float -0.000000e+00, %6764
  %6766 = fdiv fast float %6765, %6736
  br label %6767

; <label>:6767                                    ; preds = %6760, %6756
  %6768 = phi float [ %6762, %6760 ], [ 1.000000e+00, %6756 ]
  %6769 = phi float [ %6766, %6760 ], [ %6733, %6756 ]
  %6770 = fcmp fast ogt float %6666, %6668
  br i1 %6770, label %6771, label %6791

; <label>:6771                                    ; preds = %6767
  %6772 = fsub fast float 1.000000e+00, %6668
  %6773 = fmul fast float %6684, %6772
  %6774 = fmul fast float %6685, %6772
  %6775 = fmul fast float %6686, %6772
  %6776 = fmul fast float %6687, %6772
  %6777 = fcmp fast une float %6776, 0.000000e+00
  br i1 %6777, label %6778, label %6829, !dx.controlflow.hints !181

; <label>:6778                                    ; preds = %6771
  %6779 = fmul fast float %6776, 0x3FF7154760000000
  %6780 = call float @dx.op.unary.f32(i32 21, float %6779)  ; Exp(value)
  %6781 = fsub fast float 1.000000e+00, %6780
  %6782 = fmul fast float %6773, %6781
  %6783 = fsub fast float -0.000000e+00, %6782
  %6784 = fmul fast float %6774, %6781
  %6785 = fsub fast float -0.000000e+00, %6784
  %6786 = fmul fast float %6775, %6781
  %6787 = fsub fast float -0.000000e+00, %6786
  %6788 = fdiv fast float %6783, %6776
  %6789 = fdiv fast float %6785, %6776
  %6790 = fdiv fast float %6787, %6776
  br label %6829

; <label>:6791                                    ; preds = %6767
  %6792 = fsub fast float 1.000000e+00, %6666
  %6793 = fmul fast float %6697, %6792
  %6794 = fmul fast float %6708, %6792
  %6795 = fmul fast float %6719, %6792
  %6796 = fmul fast float %6698, %6792
  %6797 = fmul fast float %6709, %6792
  %6798 = fmul fast float %6720, %6792
  %6799 = fcmp fast une float %6796, 0.000000e+00
  br i1 %6799, label %6800, label %6807, !dx.controlflow.hints !180

; <label>:6800                                    ; preds = %6791
  %6801 = fmul fast float %6796, 0x3FF7154760000000
  %6802 = call float @dx.op.unary.f32(i32 21, float %6801)  ; Exp(value)
  %6803 = fsub fast float 1.000000e+00, %6802
  %6804 = fmul fast float %6793, %6803
  %6805 = fsub fast float -0.000000e+00, %6804
  %6806 = fdiv fast float %6805, %6796
  br label %6807

; <label>:6807                                    ; preds = %6800, %6791
  %6808 = phi float [ %6806, %6800 ], [ %6793, %6791 ]
  %6809 = phi float [ %6802, %6800 ], [ 1.000000e+00, %6791 ]
  %6810 = fcmp fast une float %6797, 0.000000e+00
  br i1 %6810, label %6811, label %6818, !dx.controlflow.hints !180

; <label>:6811                                    ; preds = %6807
  %6812 = fmul fast float %6797, 0x3FF7154760000000
  %6813 = call float @dx.op.unary.f32(i32 21, float %6812)  ; Exp(value)
  %6814 = fsub fast float 1.000000e+00, %6813
  %6815 = fmul fast float %6794, %6814
  %6816 = fsub fast float -0.000000e+00, %6815
  %6817 = fdiv fast float %6816, %6797
  br label %6818

; <label>:6818                                    ; preds = %6811, %6807
  %6819 = phi float [ %6817, %6811 ], [ %6794, %6807 ]
  %6820 = phi float [ %6813, %6811 ], [ 1.000000e+00, %6807 ]
  %6821 = fcmp fast une float %6798, 0.000000e+00
  br i1 %6821, label %6822, label %6829, !dx.controlflow.hints !180

; <label>:6822                                    ; preds = %6818
  %6823 = fmul fast float %6798, 0x3FF7154760000000
  %6824 = call float @dx.op.unary.f32(i32 21, float %6823)  ; Exp(value)
  %6825 = fsub fast float 1.000000e+00, %6824
  %6826 = fmul fast float %6795, %6825
  %6827 = fsub fast float -0.000000e+00, %6826
  %6828 = fdiv fast float %6827, %6798
  br label %6829

; <label>:6829                                    ; preds = %6822, %6818, %6778, %6771
  %6830 = phi float [ %6828, %6822 ], [ %6790, %6778 ], [ %6775, %6771 ], [ %6795, %6818 ]
  %6831 = phi float [ %6819, %6822 ], [ %6789, %6778 ], [ %6774, %6771 ], [ %6819, %6818 ]
  %6832 = phi float [ %6808, %6822 ], [ %6788, %6778 ], [ %6773, %6771 ], [ %6808, %6818 ]
  %6833 = phi float [ %6824, %6822 ], [ %6780, %6778 ], [ 1.000000e+00, %6771 ], [ 1.000000e+00, %6818 ]
  %6834 = phi float [ %6820, %6822 ], [ %6780, %6778 ], [ 1.000000e+00, %6771 ], [ %6820, %6818 ]
  %6835 = phi float [ %6809, %6822 ], [ %6780, %6778 ], [ 1.000000e+00, %6771 ], [ %6809, %6818 ]
  %6836 = fmul fast float %6835, %6747
  %6837 = fmul fast float %6834, %6758
  %6838 = fmul fast float %6833, %6769
  %6839 = fadd fast float %6836, %6832
  %6840 = fadd fast float %6837, %6831
  %6841 = fadd fast float %6838, %6830
  %6842 = fmul fast float %6835, %6746
  %6843 = fmul fast float %6834, %6757
  %6844 = fmul fast float %6833, %6768
  br label %6845

; <label>:6845                                    ; preds = %6829, %6640
  %6846 = phi float [ %6844, %6829 ], [ %6646, %6640 ]
  %6847 = phi float [ %6843, %6829 ], [ %6645, %6640 ]
  %6848 = phi float [ %6842, %6829 ], [ %6644, %6640 ]
  %6849 = phi float [ %6841, %6829 ], [ %6643, %6640 ]
  %6850 = phi float [ %6840, %6829 ], [ %6642, %6640 ]
  %6851 = phi float [ %6839, %6829 ], [ %6641, %6640 ]
  %6852 = fmul fast float %6851, %5791
  %6853 = fmul fast float %6850, %5793
  %6854 = fmul fast float %6849, %5795
  %6855 = fmul fast float %6848, %6088
  %6856 = call float @dx.op.dot3.f32(i32 55, float %6848, float %6847, float %6846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6857 = call float @dx.op.dot3.f32(i32 55, float %6852, float %6853, float %6854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6858 = select i1 %229, float %6856, float %6848
  %6859 = select i1 %229, float %6856, float %6847
  %6860 = select i1 %229, float 1.000000e+00, float %6846
  %6861 = select i1 %229, float %6857, float %6852
  %6862 = select i1 %229, float 0.000000e+00, float %6853
  %6863 = select i1 %229, float 0.000000e+00, float %6854
  %6864 = fmul fast float %6858, %6082
  %6865 = fmul fast float %6859, %6083
  %6866 = fmul fast float %6860, %6084
  %6867 = fadd fast float %6864, %6861
  %6868 = fadd fast float %6865, %6862
  %6869 = fadd fast float %6863, %6866
  %6870 = fmul fast float %6858, %6085
  %6871 = fmul fast float %6859, %6086
  %6872 = fmul fast float %6860, %6087
  %6873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6874 = extractvalue %dx.types.CBufRet.i32 %6873, 0
  %6875 = icmp eq i32 %6874, 0
  br i1 %6875, label %7243, label %6876, !dx.controlflow.hints !182

; <label>:6876                                    ; preds = %6845
  %6877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6877, 2
  %6879 = extractvalue %dx.types.CBufRet.f32 %6877, 3
  %6880 = fmul fast float %6878, %91
  %6881 = fmul fast float %6879, %92
  %6882 = fmul fast float %6880, 2.000000e+00
  %6883 = fmul fast float %6881, 2.000000e+00
  %6884 = fsub fast float 1.000000e+00, %6882
  %6885 = fsub fast float 1.000000e+00, %6883
  %6886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.f32 %6886, 0
  %6888 = extractvalue %dx.types.CBufRet.f32 %6886, 1
  %6889 = extractvalue %dx.types.CBufRet.f32 %6886, 2
  %6890 = fmul fast float %6884, %6887
  %6891 = fmul fast float %6884, %6888
  %6892 = fmul fast float %6884, %6889
  %6893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6894 = extractvalue %dx.types.CBufRet.f32 %6893, 0
  %6895 = extractvalue %dx.types.CBufRet.f32 %6893, 1
  %6896 = extractvalue %dx.types.CBufRet.f32 %6893, 2
  %6897 = fmul fast float %6885, %6894
  %6898 = fmul fast float %6885, %6895
  %6899 = fmul fast float %6885, %6896
  %6900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6901 = extractvalue %dx.types.CBufRet.f32 %6900, 0
  %6902 = extractvalue %dx.types.CBufRet.f32 %6900, 1
  %6903 = extractvalue %dx.types.CBufRet.f32 %6900, 2
  %6904 = fadd fast float %6897, %6901
  %6905 = fadd fast float %6904, %6890
  %6906 = fadd fast float %6898, %6902
  %6907 = fadd fast float %6906, %6891
  %6908 = fadd fast float %6899, %6903
  %6909 = fadd fast float %6908, %6892
  %6910 = fmul fast float %6905, %6081
  %6911 = fmul fast float %6907, %6081
  %6912 = fmul fast float %6909, %6081
  %6913 = fmul fast float %6910, %6910
  %6914 = fmul fast float %6911, %6911
  %6915 = fadd fast float %6913, %6914
  %6916 = fmul fast float %6912, %6912
  %6917 = fadd fast float %6915, %6916
  %6918 = call float @dx.op.unary.f32(i32 24, float %6917)  ; Sqrt(value)
  %6919 = extractvalue %dx.types.CBufRet.f32 %5806, 0
  %6920 = fsub fast float %6918, %6919
  %6921 = extractvalue %dx.types.CBufRet.f32 %5806, 2
  %6922 = fmul fast float %6920, %6921
  %6923 = call float @dx.op.unary.f32(i32 7, float %6922)  ; Saturate(value)
  %6924 = fadd fast float %6923, -5.000000e-01
  %6925 = fmul fast float %6924, 2.000000e+00
  %6926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6927 = extractvalue %dx.types.CBufRet.f32 %6926, 2
  %6928 = call float @dx.op.binary.f32(i32 36, float %6927, float %6925)  ; FMin(a,b)
  %6929 = fsub fast float -0.000000e+00, %6927
  %6930 = fcmp fast ogt float %6928, %6929
  br i1 %6930, label %6931, label %7243, !dx.controlflow.hints !183

; <label>:6931                                    ; preds = %6876
  %6932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6933 = extractvalue %dx.types.CBufRet.f32 %6932, 3
  %6934 = fcmp fast ogt float %6933, 0.000000e+00
  br i1 %6934, label %6935, label %7010, !dx.controlflow.hints !184

; <label>:6935                                    ; preds = %6931
  %6936 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %6937 = extractvalue %dx.types.Dimensions %6936, 0
  %6938 = sitofp i32 %6937 to float
  %6939 = extractvalue %dx.types.Dimensions %6936, 1
  %6940 = sitofp i32 %6939 to float
  %6941 = fmul fast float %6880, %6938
  %6942 = fmul fast float %6881, %6940
  %6943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6944 = extractvalue %dx.types.CBufRet.f32 %6943, 1
  %6945 = fsub fast float -0.000000e+00, %6944
  %6946 = fptoui float %6945 to i32
  %6947 = fptoui float %6941 to i32
  %6948 = fptoui float %6942 to i32
  %6949 = and i32 %6946, 31
  %6950 = lshr i32 %6947, %6949
  %6951 = lshr i32 %6948, %6949
  %6952 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %6946, i32 %6950, i32 %6951, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6953 = extractvalue %dx.types.ResRet.f32 %6952, 0
  %6954 = fcmp fast olt float %6953, -1.000000e+00
  %6955 = fcmp fast ogt float %6953, -1.000000e+00
  %6956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6957 = extractvalue %dx.types.CBufRet.f32 %6956, 1
  %6958 = select i1 %6955, float %6957, float 1.000000e+00
  %6959 = fadd fast float %6953, 1.000000e+00
  %6960 = fmul fast float %6958, %6959
  %6961 = call float @dx.op.unary.f32(i32 6, float %6960)  ; FAbs(value)
  %6962 = extractvalue %dx.types.CBufRet.f32 %6956, 3
  %6963 = fcmp fast oge float %6961, %6962
  %6964 = select i1 %6963, float 0x4197782600000000, float %6961
  %6965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6966 = extractvalue %dx.types.CBufRet.f32 %6965, 0
  %6967 = extractvalue %dx.types.CBufRet.f32 %6965, 1
  %6968 = extractvalue %dx.types.CBufRet.f32 %6965, 2
  %6969 = select i1 %6954, float %6966, float %6887
  %6970 = select i1 %6954, float %6967, float %6888
  %6971 = select i1 %6954, float %6968, float %6889
  %6972 = fmul fast float %6969, %6884
  %6973 = fmul fast float %6970, %6884
  %6974 = fmul fast float %6971, %6884
  %6975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6976 = extractvalue %dx.types.CBufRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.CBufRet.f32 %6975, 1
  %6978 = extractvalue %dx.types.CBufRet.f32 %6975, 2
  %6979 = select i1 %6954, float %6976, float %6894
  %6980 = select i1 %6954, float %6977, float %6895
  %6981 = select i1 %6954, float %6978, float %6896
  %6982 = fmul fast float %6979, %6885
  %6983 = fmul fast float %6980, %6885
  %6984 = fmul fast float %6981, %6885
  %6985 = fadd fast float %6982, %6972
  %6986 = fadd fast float %6983, %6973
  %6987 = fadd fast float %6984, %6974
  %6988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6989 = extractvalue %dx.types.CBufRet.f32 %6988, 0
  %6990 = extractvalue %dx.types.CBufRet.f32 %6988, 1
  %6991 = extractvalue %dx.types.CBufRet.f32 %6988, 2
  %6992 = select i1 %6954, float %6989, float %6901
  %6993 = select i1 %6954, float %6990, float %6902
  %6994 = select i1 %6954, float %6991, float %6903
  %6995 = fadd fast float %6985, %6992
  %6996 = fadd fast float %6986, %6993
  %6997 = fadd fast float %6987, %6994
  %6998 = fmul fast float %6995, %6964
  %6999 = fmul fast float %6996, %6964
  %7000 = fmul fast float %6997, %6964
  %7001 = fmul fast float %6998, %6998
  %7002 = fmul fast float %6999, %6999
  %7003 = fadd fast float %7001, %7002
  %7004 = fmul fast float %7000, %7000
  %7005 = fadd fast float %7003, %7004
  %7006 = call float @dx.op.unary.f32(i32 24, float %7005)  ; Sqrt(value)
  %7007 = fsub fast float %7006, %6919
  %7008 = fmul fast float %7007, %6921
  %7009 = call float @dx.op.unary.f32(i32 7, float %7008)  ; Saturate(value)
  br label %7010

; <label>:7010                                    ; preds = %6935, %6931
  %7011 = phi float [ %7009, %6935 ], [ 1.000000e+00, %6931 ]
  %7012 = fmul fast float %6928, 5.000000e-01
  %7013 = fadd fast float %7012, 5.000000e-01
  %7014 = call float @dx.op.unary.f32(i32 22, float %7013)  ; Frc(value)
  %7015 = call float @dx.op.unary.f32(i32 27, float %7014)  ; Round_ni(value)
  %7016 = call float @dx.op.unary.f32(i32 22, float %7014)  ; Frc(value)
  %7017 = fmul fast float %7016, 2.000000e+00
  %7018 = fadd fast float %7017, -1.000000e+00
  %7019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %58, float %6880, float %6881, float %7015, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7020 = extractvalue %dx.types.ResRet.f32 %7019, 0
  %7021 = extractvalue %dx.types.ResRet.f32 %7019, 1
  %7022 = extractvalue %dx.types.ResRet.f32 %7019, 2
  %7023 = extractvalue %dx.types.ResRet.f32 %7019, 3
  %7024 = fadd fast float %7020, -5.000000e-01
  %7025 = fadd fast float %7022, -5.000000e-01
  %7026 = fmul fast float %7024, 0xBFD5555560000000
  %7027 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7025, float %7026)  ; FMad(a,b,c)
  %7028 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7021, float 0.000000e+00)  ; FMad(a,b,c)
  %7029 = fadd fast float %7028, %7023
  %7030 = fmul fast float %7024, -7.500000e-01
  %7031 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7025, float %7030)  ; FMad(a,b,c)
  %7032 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7021, float 0.000000e+00)  ; FMad(a,b,c)
  %7033 = fadd fast float %7032, %7023
  %7034 = call float @dx.op.binary.f32(i32 35, float %7027, float -1.000000e+00)  ; FMax(a,b)
  %7035 = call float @dx.op.binary.f32(i32 35, float %7029, float -1.000000e+00)  ; FMax(a,b)
  %7036 = call float @dx.op.binary.f32(i32 35, float %7031, float -1.000000e+00)  ; FMax(a,b)
  %7037 = call float @dx.op.binary.f32(i32 35, float %7033, float -1.000000e+00)  ; FMax(a,b)
  %7038 = call float @dx.op.binary.f32(i32 36, float %7034, float 1.000000e+00)  ; FMin(a,b)
  %7039 = call float @dx.op.binary.f32(i32 36, float %7035, float 1.000000e+00)  ; FMin(a,b)
  %7040 = call float @dx.op.binary.f32(i32 36, float %7036, float 1.000000e+00)  ; FMin(a,b)
  %7041 = call float @dx.op.binary.f32(i32 36, float %7037, float 1.000000e+00)  ; FMin(a,b)
  %7042 = fcmp fast olt float %7038, 0x3FEFFF8020000000
  br i1 %7042, label %7043, label %7158, !dx.controlflow.hints !185

; <label>:7043                                    ; preds = %7010
  %7044 = extractvalue %dx.types.CBufRet.f32 %6926, 3
  %7045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7046 = extractvalue %dx.types.CBufRet.f32 %7045, 0
  %7047 = extractvalue %dx.types.CBufRet.f32 %7045, 1
  %7048 = extractvalue %dx.types.CBufRet.f32 %7045, 2
  %7049 = extractvalue %dx.types.CBufRet.f32 %7045, 3
  %7050 = fsub fast float %7046, %7038
  %7051 = fsub fast float %7047, %7039
  %7052 = fsub fast float %7048, %7040
  %7053 = fsub fast float %7049, %7041
  %7054 = fmul fast float %7050, %7044
  %7055 = fmul fast float %7051, %7044
  %7056 = fmul fast float %7052, %7044
  %7057 = fmul fast float %7053, %7044
  %7058 = fadd fast float %7054, %7038
  %7059 = fadd fast float %7055, %7039
  %7060 = fsub fast float -0.000000e+00, %7059
  %7061 = fadd fast float %7056, %7040
  %7062 = fadd fast float %7057, %7041
  %7063 = fmul fast float %7058, %7058
  %7064 = fsub fast float %7059, %7063
  %7065 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7064)  ; FMax(a,b)
  %7066 = fdiv fast float 1.000000e+00, %7065
  %7067 = fmul fast float %7059, %7058
  %7068 = fsub fast float %7061, %7067
  %7069 = fsub fast float %7018, %7058
  %7070 = fmul fast float %7018, %7018
  %7071 = fsub fast float %7070, %7059
  %7072 = fmul fast float %7069, %7066
  %7073 = fmul fast float %7072, %7068
  %7074 = fsub fast float %7071, %7073
  %7075 = fmul fast float %7059, %7059
  %7076 = fsub fast float %7062, %7075
  %7077 = fmul fast float %7068, %7068
  %7078 = fmul fast float %7077, %7066
  %7079 = fsub fast float %7076, %7078
  %7080 = fdiv fast float %7074, %7079
  %7081 = fmul fast float %7068, %7080
  %7082 = fsub fast float %7069, %7081
  %7083 = fmul fast float %7082, %7066
  %7084 = fmul fast float %7083, %7058
  %7085 = fsub fast float 1.000000e+00, %7084
  %7086 = fmul fast float %7059, %7080
  %7087 = fsub fast float %7085, %7086
  %7088 = fmul fast float %7083, %7083
  %7089 = fmul fast float %7080, 4.000000e+00
  %7090 = fmul fast float %7089, %7087
  %7091 = fsub fast float %7088, %7090
  %7092 = call float @dx.op.unary.f32(i32 24, float %7091)  ; Sqrt(value)
  %7093 = fcmp fast oge float %7083, 0.000000e+00
  %7094 = fsub fast float -0.000000e+00, %7092
  %7095 = select i1 %7093, float %7094, float %7092
  %7096 = fsub fast float %7095, %7083
  %7097 = fdiv fast float %7096, %7080
  %7098 = fdiv fast float %7087, %7096
  %7099 = fmul fast float %7097, 5.000000e-01
  %7100 = fmul fast float %7098, 2.000000e+00
  %7101 = select i1 %7093, float %7099, float %7100
  %7102 = select i1 %7093, float %7100, float %7099
  %7103 = call float @dx.op.binary.f32(i32 35, float %7101, float %7102)  ; FMax(a,b)
  %7104 = call float @dx.op.binary.f32(i32 36, float %7101, float %7102)  ; FMin(a,b)
  %7105 = fcmp fast ogt float %7018, %7104
  br i1 %7105, label %7106, label %7116

; <label>:7106                                    ; preds = %7043
  %7107 = fsub fast float %7018, %7104
  %7108 = fsub fast float %7103, %7104
  %7109 = fmul fast float %7107, %7108
  %7110 = fmul fast float %7103, %7018
  %7111 = fadd fast float %7103, %7018
  %7112 = fmul fast float %7111, %7058
  %7113 = fadd fast float %7110, %7059
  %7114 = fsub fast float %7113, %7112
  %7115 = fdiv fast float %7114, %7109
  br label %7116

; <label>:7116                                    ; preds = %7106, %7043
  %7117 = phi float [ %7115, %7106 ], [ 0.000000e+00, %7043 ]
  %7118 = fcmp fast ogt float %7018, %7103
  %7119 = fsub fast float %7018, %7103
  br i1 %7118, label %7120, label %7130

; <label>:7120                                    ; preds = %7116
  %7121 = fsub fast float %7103, %7104
  %7122 = fmul fast float %7121, %7119
  %7123 = fmul fast float %7104, %7018
  %7124 = fadd fast float %7104, %7018
  %7125 = fmul fast float %7124, %7058
  %7126 = fsub fast float %7060, %7123
  %7127 = fadd fast float %7126, %7125
  %7128 = fdiv fast float %7127, %7122
  %7129 = fadd fast float %7128, %7117
  br label %7130

; <label>:7130                                    ; preds = %7120, %7116
  %7131 = phi float [ %7129, %7120 ], [ %7117, %7116 ]
  %7132 = fsub fast float %7018, %7104
  %7133 = fmul fast float %7132, %7119
  %7134 = fmul fast float %7104, %7103
  %7135 = fadd fast float %7104, %7103
  %7136 = fmul fast float %7135, %7058
  %7137 = fadd fast float %7134, %7059
  %7138 = fsub fast float %7137, %7136
  %7139 = fdiv fast float %7138, %7133
  %7140 = call float @dx.op.unary.f32(i32 7, float %7131)  ; Saturate(value)
  %7141 = fcmp fast oeq float %5807, 0.000000e+00
  %7142 = extractvalue %dx.types.CBufRet.f32 %6926, 0
  %7143 = fcmp fast oeq float %7142, 0.000000e+00
  %7144 = or i1 %7141, %7143
  %7145 = fmul fast float %7142, 2.000000e+00
  %7146 = fadd fast float %6927, %6928
  %7147 = fdiv fast float %7146, %7145
  %7148 = call float @dx.op.unary.f32(i32 7, float %7147)  ; Saturate(value)
  %7149 = fmul fast float %7148, 2.000000e+00
  %7150 = fsub fast float 3.000000e+00, %7149
  %7151 = fmul fast float %7148, %7148
  %7152 = fmul fast float %7151, %7150
  %7153 = select i1 %7144, float 1.000000e+00, float %7152
  %7154 = fmul fast float %7139, %5807
  %7155 = fadd fast float %7140, %7154
  %7156 = call float @dx.op.unary.f32(i32 7, float %7155)  ; Saturate(value)
  %7157 = fmul fast float %7153, %7156
  br label %7158

; <label>:7158                                    ; preds = %7130, %7010
  %7159 = phi float [ %7157, %7130 ], [ 0.000000e+00, %7010 ]
  %7160 = fsub fast float 1.000000e+00, %7159
  %7161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %58, float %6880, float %6881, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7162 = extractvalue %dx.types.ResRet.f32 %7161, 0
  %7163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7164 = extractvalue %dx.types.CBufRet.i32 %7163, 2
  %7165 = icmp eq i32 %7164, 0
  br i1 %7165, label %7171, label %7166

; <label>:7166                                    ; preds = %7158
  %7167 = call float @dx.op.unary.f32(i32 7, float %7159)  ; Saturate(value)
  %7168 = fadd fast float %7162, -1.000000e+00
  %7169 = fmul fast float %7167, %7168
  %7170 = fadd fast float %7169, 1.000000e+00
  br label %7171

; <label>:7171                                    ; preds = %7166, %7158
  %7172 = phi float [ %7170, %7166 ], [ %7160, %7158 ]
  br i1 %6934, label %7173, label %7191

; <label>:7173                                    ; preds = %7171
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 1
  %7176 = fsub fast float %7011, %7175
  %7177 = call float @dx.op.unary.f32(i32 7, float %7176)  ; Saturate(value)
  %7178 = fsub fast float %7011, %6933
  %7179 = call float @dx.op.unary.f32(i32 7, float %7178)  ; Saturate(value)
  %7180 = fsub fast float %7177, %7179
  %7181 = fsub fast float %7013, %7179
  %7182 = fdiv fast float %7181, %7180
  %7183 = call float @dx.op.unary.f32(i32 7, float %7182)  ; Saturate(value)
  %7184 = fmul fast float %7183, 2.000000e+00
  %7185 = fsub fast float 3.000000e+00, %7184
  %7186 = fsub fast float %7162, %7172
  %7187 = fmul fast float %7183, %7183
  %7188 = fmul fast float %7187, %7186
  %7189 = fmul fast float %7188, %7185
  %7190 = fadd fast float %7189, %7172
  br label %7191

; <label>:7191                                    ; preds = %7173, %7171
  %7192 = phi float [ %7190, %7173 ], [ %7172, %7171 ]
  %7193 = call float @dx.op.binary.f32(i32 35, float %7162, float %7192)  ; FMax(a,b)
  %7194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7195 = extractvalue %dx.types.CBufRet.i32 %7194, 2
  %7196 = and i32 %7195, 1
  %7197 = icmp eq i32 %7196, 0
  %7198 = fcmp fast une float %7193, 1.000000e+00
  %7199 = and i1 %7198, %7197
  br i1 %7199, label %7200, label %7219

; <label>:7200                                    ; preds = %7191
  %7201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %58, float %6880, float %6881, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7202 = extractvalue %dx.types.ResRet.f32 %7201, 0
  %7203 = extractvalue %dx.types.ResRet.f32 %7201, 1
  %7204 = extractvalue %dx.types.ResRet.f32 %7201, 2
  %7205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7206 = extractvalue %dx.types.CBufRet.f32 %7205, 1
  %7207 = fmul fast float %7206, %7202
  %7208 = fmul fast float %7206, %7203
  %7209 = fmul fast float %7206, %7204
  %7210 = fcmp fast ogt float %7162, 0x3FEFFF2E40000000
  %7211 = fsub fast float 1.000000e+00, %7193
  %7212 = fsub fast float 1.000000e+00, %7162
  %7213 = fdiv fast float %7211, %7212
  %7214 = call float @dx.op.unary.f32(i32 7, float %7213)  ; Saturate(value)
  %7215 = select i1 %7210, float 0.000000e+00, float %7214
  %7216 = fmul fast float %7207, %7215
  %7217 = fmul fast float %7208, %7215
  %7218 = fmul fast float %7209, %7215
  br label %7219

; <label>:7219                                    ; preds = %7200, %7191
  %7220 = phi float [ 0.000000e+00, %7191 ], [ %7216, %7200 ]
  %7221 = phi float [ 0.000000e+00, %7191 ], [ %7217, %7200 ]
  %7222 = phi float [ 0.000000e+00, %7191 ], [ %7218, %7200 ]
  %7223 = fmul fast float %7220, %5791
  %7224 = fmul fast float %7221, %5793
  %7225 = fmul fast float %7222, %5795
  %7226 = fmul fast float %7193, %6855
  %7227 = call float @dx.op.dot3.f32(i32 55, float %7193, float %7193, float %7193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7228 = call float @dx.op.dot3.f32(i32 55, float %7223, float %7224, float %7225, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7229 = select i1 %229, float %7227, float %7193
  %7230 = select i1 %229, float 1.000000e+00, float %7193
  %7231 = select i1 %229, float %7228, float %7223
  %7232 = select i1 %229, float 0.000000e+00, float %7224
  %7233 = select i1 %229, float 0.000000e+00, float %7225
  %7234 = fmul fast float %7229, %6867
  %7235 = fmul fast float %7229, %6868
  %7236 = fmul fast float %7230, %6869
  %7237 = fadd fast float %7234, %7231
  %7238 = fadd fast float %7235, %7232
  %7239 = fadd fast float %7233, %7236
  %7240 = fmul fast float %7229, %6870
  %7241 = fmul fast float %7229, %6871
  %7242 = fmul fast float %7230, %6872
  br label %7243

; <label>:7243                                    ; preds = %7219, %6876, %6845, %6077
  %7244 = phi float [ %6082, %6077 ], [ %6867, %6845 ], [ %7237, %7219 ], [ %6867, %6876 ]
  %7245 = phi float [ %6083, %6077 ], [ %6868, %6845 ], [ %7238, %7219 ], [ %6868, %6876 ]
  %7246 = phi float [ %6084, %6077 ], [ %6869, %6845 ], [ %7239, %7219 ], [ %6869, %6876 ]
  %7247 = phi float [ %6085, %6077 ], [ %6870, %6845 ], [ %7240, %7219 ], [ %6870, %6876 ]
  %7248 = phi float [ %6086, %6077 ], [ %6871, %6845 ], [ %7241, %7219 ], [ %6871, %6876 ]
  %7249 = phi float [ %6087, %6077 ], [ %6872, %6845 ], [ %7242, %7219 ], [ %6872, %6876 ]
  %7250 = phi float [ %6088, %6077 ], [ %6855, %6845 ], [ %7226, %7219 ], [ %6855, %6876 ]
  %7251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.f32 %7251, 2
  %7253 = extractvalue %dx.types.CBufRet.f32 %7251, 3
  %7254 = fmul fast float %7252, %91
  %7255 = fmul fast float %7253, %92
  %7256 = call float @dx.op.unary.f32(i32 7, float %7254)  ; Saturate(value)
  %7257 = call float @dx.op.unary.f32(i32 7, float %7255)  ; Saturate(value)
  %7258 = select i1 %5817, i32 2, i32 0
  %7259 = or i32 %7258, 1
  %7260 = uitofp i32 %7259 to float
  %7261 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %7256, float %7257, float %7260, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7262 = extractvalue %dx.types.ResRet.f32 %7261, 0
  %7263 = extractvalue %dx.types.ResRet.f32 %7261, 1
  %7264 = extractvalue %dx.types.ResRet.f32 %7261, 2
  %7265 = extractvalue %dx.types.ResRet.f32 %7261, 3
  %7266 = add nuw nsw i32 %7258, 2
  %7267 = uitofp i32 %7266 to float
  %7268 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %7256, float %7257, float %7267, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7269 = extractvalue %dx.types.ResRet.f32 %7268, 0
  %7270 = extractvalue %dx.types.ResRet.f32 %7268, 1
  %7271 = extractvalue %dx.types.ResRet.f32 %7268, 2
  %7272 = extractvalue %dx.types.ResRet.f32 %7268, 3
  %7273 = call float @dx.op.binary.f32(i32 35, float %7263, float %7264)  ; FMax(a,b)
  %7274 = call float @dx.op.binary.f32(i32 35, float %7262, float %7273)  ; FMax(a,b)
  %7275 = call float @dx.op.binary.f32(i32 35, float %7274, float %7265)  ; FMax(a,b)
  %7276 = call float @dx.op.binary.f32(i32 36, float %7270, float %7271)  ; FMin(a,b)
  %7277 = call float @dx.op.binary.f32(i32 36, float %7269, float %7276)  ; FMin(a,b)
  %7278 = call float @dx.op.binary.f32(i32 36, float %7277, float %7272)  ; FMin(a,b)
  %7279 = fmul fast float %7275, 2.550000e+02
  %7280 = fadd fast float %7279, 0x3F70101020000000
  %7281 = fptoui float %7280 to i32
  %7282 = fmul fast float %7278, 2.550000e+02
  %7283 = fadd fast float %7282, 0x3F70101020000000
  %7284 = fptoui float %7283 to i32
  %7285 = icmp ult i32 %7281, %7284
  br i1 %7285, label %7286, label %7455

; <label>:7286                                    ; preds = %7243
  %7287 = fcmp fast ogt float %81, 9.843750e-01
  %7288 = fadd fast float %6081, -4.000000e+00
  %7289 = select i1 %7287, float -4.000000e+00, float %7288
  %7290 = call float @dx.op.binary.f32(i32 35, float %7289, float 0.000000e+00)  ; FMax(a,b)
  %7291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7292 = extractvalue %dx.types.CBufRet.f32 %7291, 0
  %7293 = fadd fast float %7292, %7290
  %7294 = extractvalue %dx.types.CBufRet.f32 %7291, 2
  %7295 = fmul fast float %7293, %7294
  %7296 = call float @dx.op.unary.f32(i32 23, float %7295)  ; Log(value)
  %7297 = extractvalue %dx.types.CBufRet.f32 %7291, 3
  %7298 = fmul fast float %7297, %7296
  %7299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7300 = extractvalue %dx.types.CBufRet.f32 %7299, 2
  %7301 = fmul fast float %7298, %7300
  %7302 = call float @dx.op.unary.f32(i32 7, float %7301)  ; Saturate(value)
  %7303 = uitofp i32 %7281 to float
  %7304 = uitofp i32 %7284 to float
  %7305 = fadd fast float %7303, 5.000000e-01
  %7306 = fadd fast float %7304, 5.000000e-01
  %7307 = fmul fast float %7300, %7305
  %7308 = fmul fast float %7300, %7306
  %7309 = fadd fast float %7307, 0x3F0FFB4800000000
  %7310 = fadd fast float %7308, 0xBF0FFB4800000000
  %7311 = call float @dx.op.binary.f32(i32 35, float %7302, float %7309)  ; FMax(a,b)
  %7312 = call float @dx.op.binary.f32(i32 36, float %7311, float %7310)  ; FMin(a,b)
  %7313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7314 = extractvalue %dx.types.CBufRet.f32 %7313, 1
  %7315 = extractvalue %dx.types.CBufRet.f32 %7313, 2
  %7316 = extractvalue %dx.types.CBufRet.f32 %7313, 0
  %7317 = select i1 %5817, float %7316, float 0.000000e+00
  %7318 = fmul fast float %7314, %7312
  %7319 = fadd fast float %7317, %7318
  %7320 = fadd fast float %7317, %7315
  %7321 = fsub fast float %7314, %7315
  %7322 = fadd fast float %7321, %7317
  %7323 = call float @dx.op.binary.f32(i32 35, float %7319, float %7320)  ; FMax(a,b)
  %7324 = call float @dx.op.binary.f32(i32 36, float %7323, float %7322)  ; FMin(a,b)
  %7325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %7256, float %7257, float %7324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7326 = extractvalue %dx.types.ResRet.f32 %7325, 0
  %7327 = extractvalue %dx.types.ResRet.f32 %7325, 1
  %7328 = extractvalue %dx.types.ResRet.f32 %7325, 2
  %7329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7330 = extractvalue %dx.types.CBufRet.i32 %7329, 0
  %7331 = extractvalue %dx.types.CBufRet.i32 %7329, 1
  %7332 = uitofp i32 %7330 to float
  %7333 = uitofp i32 %7331 to float
  %7334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7335 = extractvalue %dx.types.CBufRet.f32 %7334, 0
  %7336 = extractvalue %dx.types.CBufRet.f32 %7334, 1
  %7337 = fmul fast float %7332, %7256
  %7338 = fmul fast float %7333, %7257
  %7339 = fadd fast float %7337, -5.000000e-01
  %7340 = fadd fast float %7338, -5.000000e-01
  %7341 = call float @dx.op.unary.f32(i32 22, float %7339)  ; Frc(value)
  %7342 = call float @dx.op.unary.f32(i32 22, float %7340)  ; Frc(value)
  %7343 = fmul fast float %7341, %7341
  %7344 = fmul fast float %7343, %7341
  %7345 = fsub fast float 3.000000e+00, %7341
  %7346 = fmul fast float %7343, %7345
  %7347 = fmul fast float %7341, 3.000000e+00
  %7348 = fmul fast float %7344, 3.000000e+00
  %7349 = fmul fast float %7343, 6.000000e+00
  %7350 = fsub fast float %7348, %7349
  %7351 = fadd fast float %7350, 4.000000e+00
  %7352 = fmul fast float %7351, 0x3FC5555560000000
  %7353 = fmul fast float %7344, -3.000000e+00
  %7354 = fadd fast float %7343, %7341
  %7355 = fmul fast float %7354, 3.000000e+00
  %7356 = fadd fast float %7353, 1.000000e+00
  %7357 = fadd fast float %7356, %7355
  %7358 = fmul fast float %7344, 0x3FC5555560000000
  %7359 = fmul fast float %7342, %7342
  %7360 = fmul fast float %7359, %7342
  %7361 = fsub fast float 3.000000e+00, %7342
  %7362 = fmul fast float %7359, %7361
  %7363 = fmul fast float %7342, 3.000000e+00
  %7364 = fmul fast float %7360, 3.000000e+00
  %7365 = fmul fast float %7359, 6.000000e+00
  %7366 = fsub fast float %7364, %7365
  %7367 = fadd fast float %7366, 4.000000e+00
  %7368 = fmul fast float %7367, 0x3FC5555560000000
  %7369 = fmul fast float %7360, -3.000000e+00
  %7370 = fadd fast float %7359, %7342
  %7371 = fmul fast float %7370, 3.000000e+00
  %7372 = fadd fast float %7369, 1.000000e+00
  %7373 = fadd fast float %7372, %7371
  %7374 = fmul fast float %7360, 0x3FC5555560000000
  %7375 = fadd fast float %7341, 1.000000e+00
  %7376 = fsub fast float 1.000000e+00, %7347
  %7377 = fadd fast float %7376, %7346
  %7378 = fadd fast float %7377, %7351
  %7379 = fmul fast float %7378, 0x3FC5555560000000
  %7380 = fdiv fast float %7352, %7379
  %7381 = fsub fast float %7375, %7380
  %7382 = fsub fast float 1.000000e+00, %7341
  %7383 = fadd fast float %7357, %7344
  %7384 = fmul fast float %7383, 0x3FC5555560000000
  %7385 = fdiv fast float %7358, %7384
  %7386 = fadd fast float %7382, %7385
  %7387 = fadd fast float %7342, 1.000000e+00
  %7388 = fsub fast float 1.000000e+00, %7363
  %7389 = fadd fast float %7388, %7362
  %7390 = fadd fast float %7389, %7367
  %7391 = fmul fast float %7390, 0x3FC5555560000000
  %7392 = fdiv fast float %7368, %7391
  %7393 = fsub fast float %7387, %7392
  %7394 = fsub fast float 1.000000e+00, %7342
  %7395 = fadd fast float %7373, %7360
  %7396 = fmul fast float %7395, 0x3FC5555560000000
  %7397 = fdiv fast float %7374, %7396
  %7398 = fadd fast float %7397, %7394
  %7399 = fmul fast float %7381, %7335
  %7400 = fsub fast float %7256, %7399
  %7401 = fmul fast float %7386, %7335
  %7402 = fadd fast float %7401, %7256
  %7403 = fmul fast float %7398, %7336
  %7404 = fadd fast float %7403, %7257
  %7405 = fmul fast float %7393, %7336
  %7406 = fsub fast float %7257, %7405
  %7407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7400, float %7406, float %7324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7408 = extractvalue %dx.types.ResRet.f32 %7407, 0
  %7409 = extractvalue %dx.types.ResRet.f32 %7407, 1
  %7410 = extractvalue %dx.types.ResRet.f32 %7407, 2
  %7411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7402, float %7406, float %7324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7412 = extractvalue %dx.types.ResRet.f32 %7411, 0
  %7413 = extractvalue %dx.types.ResRet.f32 %7411, 1
  %7414 = extractvalue %dx.types.ResRet.f32 %7411, 2
  %7415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7400, float %7404, float %7324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7416 = extractvalue %dx.types.ResRet.f32 %7415, 0
  %7417 = extractvalue %dx.types.ResRet.f32 %7415, 1
  %7418 = extractvalue %dx.types.ResRet.f32 %7415, 2
  %7419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7402, float %7404, float %7324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7420 = extractvalue %dx.types.ResRet.f32 %7419, 0
  %7421 = extractvalue %dx.types.ResRet.f32 %7419, 1
  %7422 = extractvalue %dx.types.ResRet.f32 %7419, 2
  %7423 = fsub fast float %7416, %7408
  %7424 = fsub fast float %7417, %7409
  %7425 = fsub fast float %7418, %7410
  %7426 = fmul fast float %7423, %7396
  %7427 = fmul fast float %7424, %7396
  %7428 = fmul fast float %7425, %7396
  %7429 = fadd fast float %7426, %7408
  %7430 = fadd fast float %7427, %7409
  %7431 = fadd fast float %7428, %7410
  %7432 = fsub fast float %7420, %7412
  %7433 = fsub fast float %7421, %7413
  %7434 = fsub fast float %7422, %7414
  %7435 = fmul fast float %7432, %7396
  %7436 = fmul fast float %7433, %7396
  %7437 = fmul fast float %7434, %7396
  %7438 = fsub fast float %7412, %7429
  %7439 = fadd fast float %7438, %7435
  %7440 = fsub fast float %7413, %7430
  %7441 = fadd fast float %7440, %7436
  %7442 = fsub fast float %7414, %7431
  %7443 = fadd fast float %7442, %7437
  %7444 = fmul fast float %7439, %7384
  %7445 = fmul fast float %7441, %7384
  %7446 = fmul fast float %7443, %7384
  %7447 = fadd fast float %7444, %7429
  %7448 = fadd fast float %7445, %7430
  %7449 = fadd fast float %7446, %7431
  %7450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7451 = extractvalue %dx.types.CBufRet.f32 %7450, 1
  %7452 = fmul fast float %7447, %7451
  %7453 = fmul fast float %7448, %7451
  %7454 = fmul fast float %7449, %7451
  br label %7455

; <label>:7455                                    ; preds = %7286, %7243
  %7456 = phi float [ %7326, %7286 ], [ 1.000000e+00, %7243 ]
  %7457 = phi float [ %7327, %7286 ], [ 1.000000e+00, %7243 ]
  %7458 = phi float [ %7328, %7286 ], [ 1.000000e+00, %7243 ]
  %7459 = phi float [ %7452, %7286 ], [ 0.000000e+00, %7243 ]
  %7460 = phi float [ %7453, %7286 ], [ 0.000000e+00, %7243 ]
  %7461 = phi float [ %7454, %7286 ], [ 0.000000e+00, %7243 ]
  %7462 = fmul fast float %7459, %5791
  %7463 = fmul fast float %7460, %5793
  %7464 = fmul fast float %7461, %5795
  %7465 = fmul fast float %7456, %7250
  %7466 = call float @dx.op.dot3.f32(i32 55, float %7456, float %7457, float %7458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7467 = call float @dx.op.dot3.f32(i32 55, float %7462, float %7463, float %7464, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7468 = select i1 %229, float %7466, float %7456
  %7469 = select i1 %229, float %7466, float %7457
  %7470 = select i1 %229, float 1.000000e+00, float %7458
  %7471 = select i1 %229, float %7467, float %7462
  %7472 = select i1 %229, float 0.000000e+00, float %7463
  %7473 = select i1 %229, float 0.000000e+00, float %7464
  %7474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7475 = extractvalue %dx.types.CBufRet.i32 %7474, 3
  %7476 = and i32 %7475, 3
  %7477 = icmp ne i32 %7476, 0
  %7478 = and i32 %7475, 4
  %7479 = icmp ne i32 %7478, 0
  %7480 = and i1 %7477, %7479
  %7481 = and i1 %229, %7480
  br i1 %7481, label %7482, label %7488

; <label>:7482                                    ; preds = %7455
  %7483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7484 = extractvalue %dx.types.CBufRet.f32 %7483, 1
  %7485 = fadd fast float %7465, -1.000000e+00
  %7486 = fmul fast float %7484, %7485
  %7487 = fadd fast float %7486, 1.000000e+00
  br label %7488

; <label>:7488                                    ; preds = %7482, %7455
  %7489 = phi float [ %7487, %7482 ], [ %7465, %7455 ]
  %7490 = fadd fast float %7247, %7244
  %7491 = fmul fast float %7468, %7490
  %7492 = fadd fast float %7491, %7471
  %7493 = fadd fast float %7248, %7245
  %7494 = fmul fast float %7469, %7493
  %7495 = fadd fast float %7494, %7472
  %7496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.f32 %7496, 0
  br i1 %229, label %7498, label %7513

; <label>:7498                                    ; preds = %7488
  %7499 = fadd fast float %7492, %7495
  %7500 = fmul fast float %7497, %7499
  %7501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7502 = extractvalue %dx.types.CBufRet.f32 %7501, 3
  %7503 = extractvalue %dx.types.CBufRet.f32 %5799, 1
  %7504 = fsub fast float %5804, %5798
  %7505 = fadd fast float %7504, %5805
  %7506 = fsub fast float %7505, %7503
  %7507 = extractvalue %dx.types.CBufRet.f32 %5799, 2
  %7508 = fmul fast float %7506, %7507
  %7509 = call float @dx.op.unary.f32(i32 7, float %7508)  ; Saturate(value)
  %7510 = fsub fast float %7509, %7502
  %7511 = fmul fast float %7510, %7489
  %7512 = fadd fast float %7511, %7502
  br label %7539

; <label>:7513                                    ; preds = %7488
  %7514 = fadd fast float %7249, %7246
  %7515 = fmul fast float %7470, %7514
  %7516 = fadd fast float %7515, %7473
  %7517 = fmul fast float %7497, %7492
  %7518 = fmul fast float %7497, %7495
  %7519 = fmul fast float %7497, %7516
  %7520 = call float @dx.op.binary.f32(i32 35, float %7518, float %7519)  ; FMax(a,b)
  %7521 = call float @dx.op.binary.f32(i32 35, float %7517, float %7520)  ; FMax(a,b)
  %7522 = call float @dx.op.binary.f32(i32 35, float %5793, float %5795)  ; FMax(a,b)
  %7523 = call float @dx.op.binary.f32(i32 35, float %5791, float %7522)  ; FMax(a,b)
  %7524 = call float @dx.op.binary.f32(i32 35, float %7521, float %7523)  ; FMax(a,b)
  %7525 = fcmp fast ugt float %7524, 0x3F10000000000000
  br i1 %7525, label %7527, label %7526

; <label>:7526                                    ; preds = %7513
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7527

; <label>:7527                                    ; preds = %7526, %7513
  %7528 = add i32 %65, 116
  %7529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %7528, i32 undef)  ; BufferLoad(srv,index,wot)
  %7530 = extractvalue %dx.types.ResRet.i32 %7529, 0
  %7531 = and i32 %7530, 32
  %7532 = icmp eq i32 %7531, 0
  br i1 %7532, label %7539, label %7533

; <label>:7533                                    ; preds = %7527
  %7534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7535 = extractvalue %dx.types.CBufRet.f32 %7534, 0
  %7536 = fmul fast float %7535, 0x3FE99999A0000000
  %7537 = fadd fast float %7535, %7517
  %7538 = fadd fast float %7536, %7519
  br label %7539

; <label>:7539                                    ; preds = %7533, %7527, %7498
  %7540 = phi float [ 1.000000e+00, %7498 ], [ %5793, %7533 ], [ %5793, %7527 ]
  %7541 = phi float [ 1.000000e+00, %7498 ], [ %5795, %7533 ], [ %5795, %7527 ]
  %7542 = phi float [ %7500, %7498 ], [ %7537, %7533 ], [ %7517, %7527 ]
  %7543 = phi float [ %7512, %7498 ], [ %7518, %7533 ], [ %7518, %7527 ]
  %7544 = phi float [ 1.000000e+00, %7498 ], [ %7538, %7533 ], [ %7519, %7527 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7545 = call float @dx.op.binary.f32(i32 36, float %7542, float 3.225500e+04)  ; FMin(a,b)
  %7546 = call float @dx.op.binary.f32(i32 36, float %7543, float 3.225500e+04)  ; FMin(a,b)
  %7547 = call float @dx.op.binary.f32(i32 36, float %7544, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7545)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7546)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7547)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7548 = call float @dx.op.binary.f32(i32 36, float %5791, float 3.225500e+04)  ; FMin(a,b)
  %7549 = call float @dx.op.binary.f32(i32 36, float %7540, float 3.225500e+04)  ; FMin(a,b)
  %7550 = call float @dx.op.binary.f32(i32 36, float %7541, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %7548)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %7549)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %7550)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

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
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.viewIdState = !{!78}
!dx.entryPoints = !{!79}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !67, !70}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
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
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !18}
!43 = !{i32 35, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!44 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!45 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!46 = !{i32 38, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!47 = !{i32 39, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!48 = !{i32 40, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!49 = !{i32 41, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!50 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!51 = !{i32 43, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !52}
!52 = !{i32 0, i32 14}
!53 = !{i32 44, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!54 = !{i32 45, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!55 = !{i32 46, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!56 = !{i32 47, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!57 = !{i32 48, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!58 = !{i32 49, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!59 = !{i32 50, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!60 = !{i32 51, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!61 = !{i32 52, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!62 = !{i32 53, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!63 = !{i32 54, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!64 = !{i32 55, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !52}
!65 = !{i32 56, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!66 = !{i32 57, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!67 = !{!68, !69}
!68 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!69 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!70 = !{!71, !72, !73, !74, !75, !76, !77}
!71 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!72 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!73 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!74 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!75 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!76 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!77 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!78 = !{[28 x i32] [i32 26, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 0, i32 0, i32 0, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119]}
!79 = !{void ()* @ps_main, !"ps_main", !80, !4, !100}
!80 = !{!81, !96, null}
!81 = !{!82, !85, !87, !89, !91, !92, !93, !94, !95}
!82 = !{i32 0, !"SV_Position", i8 9, i8 3, !83, i8 4, i32 1, i8 4, i32 0, i8 0, !84}
!83 = !{i32 0}
!84 = !{i32 3, i32 15}
!85 = !{i32 1, !"COLOR", i8 9, i8 0, !83, i8 2, i32 1, i8 4, i32 1, i8 0, !86}
!86 = !{i32 3, i32 1}
!87 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !83, i8 2, i32 1, i8 2, i32 2, i8 0, !88}
!88 = !{i32 3, i32 3}
!89 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !83, i8 2, i32 1, i8 3, i32 3, i8 0, !90}
!90 = !{i32 3, i32 7}
!91 = !{i32 4, !"NORMAL", i8 9, i8 0, !83, i8 2, i32 1, i8 3, i32 4, i8 0, !90}
!92 = !{i32 5, !"TANGENT", i8 9, i8 0, !83, i8 2, i32 1, i8 4, i32 5, i8 0, !84}
!93 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !83, i8 1, i32 1, i8 1, i32 6, i8 0, !86}
!94 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !83, i8 1, i32 1, i8 1, i32 6, i8 1, !86}
!95 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !83, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!96 = !{!97, !98}
!97 = !{i32 0, !"SV_Target", i8 9, i8 16, !83, i8 0, i32 1, i8 4, i32 0, i8 0, !84}
!98 = !{i32 1, !"SV_Target", i8 9, i8 16, !99, i8 0, i32 1, i8 4, i32 1, i8 0, !84}
!99 = !{i32 1}
!100 = !{i32 0, i64 16}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = !{!114, !114, i64 0}
!114 = !{!"int", !115, i64 0}
!115 = !{!"omnipotent char", !116, i64 0}
!116 = !{!"Simple C/C++ TBAA"}
!117 = !{!118, !120, !122, !124}
!118 = distinct !{!118, !119, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!119 = distinct !{!119, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!120 = distinct !{!120, !121, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!121 = distinct !{!121, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!122 = distinct !{!122, !123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!123 = distinct !{!123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!124 = distinct !{!124, !125, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!125 = distinct !{!125, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = !{!138, !138, i64 0}
!138 = !{!"float", !115, i64 0}
!139 = !{!140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!140 = distinct !{!140, !141, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!141 = distinct !{!141, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!142 = distinct !{!142, !143, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!143 = distinct !{!143, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!144 = distinct !{!144, !143, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!145 = distinct !{!145, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!146 = distinct !{!146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!147 = distinct !{!147, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!148 = distinct !{!148, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!149 = distinct !{!149, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!150 = distinct !{!150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!151 = distinct !{!151, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!152 = distinct !{!152, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!153 = distinct !{!153, !154, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!154 = distinct !{!154, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"\01?sort@@YAXAIAM00@Z: %c"}
!157 = distinct !{!157, !"\01?sort@@YAXAIAM00@Z"}
!158 = !{!159, !160, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!159 = distinct !{!159, !157, !"\01?sort@@YAXAIAM00@Z: %a"}
!160 = distinct !{!160, !157, !"\01?sort@@YAXAIAM00@Z: %b"}
!161 = !{!160}
!162 = !{!159, !156, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!163 = !{!159}
!164 = !{!160, !156, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!165 = !{!166}
!166 = distinct !{!166, !167, !"\01?sort@@YAXAIAM00@Z: %c"}
!167 = distinct !{!167, !"\01?sort@@YAXAIAM00@Z"}
!168 = !{!169, !170, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!169 = distinct !{!169, !167, !"\01?sort@@YAXAIAM00@Z: %a"}
!170 = distinct !{!170, !167, !"\01?sort@@YAXAIAM00@Z: %b"}
!171 = !{!170}
!172 = !{!169, !166, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!173 = !{!169}
!174 = !{!170, !166, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 2}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}

