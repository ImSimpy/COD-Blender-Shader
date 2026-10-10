;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xyzw        1     NONE   float   xyzw
; LMAPCOORDS               0   xyz         2     NONE   float   xyz 
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        5     NONE   float   xyzw
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
; shader hash: 79e0e5b2682297e5f6fc3098e1d0c882
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 }
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
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = alloca [12 x float], align 4
  %89 = alloca [12 x float], align 4
  %90 = alloca [3 x float], align 4
  %91 = alloca [3 x float], align 4
  %92 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %93 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = fmul fast float %95, %84
  %97 = fmul fast float %95, %85
  %98 = fmul fast float %75, %72
  %99 = fmul fast float %76, %71
  %100 = fsub fast float %98, %99
  %101 = fmul fast float %76, %70
  %102 = fmul fast float %74, %72
  %103 = fsub fast float %101, %102
  %104 = fmul fast float %74, %71
  %105 = fmul fast float %75, %70
  %106 = fsub fast float %104, %105
  %107 = fmul fast float %100, %73
  %108 = fmul fast float %103, %73
  %109 = fmul fast float %106, %73
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %113 = fmul fast float %111, 2.000000e+00
  %114 = fmul fast float %113, %96
  %115 = fmul fast float %112, 2.000000e+00
  %116 = fmul fast float %115, %97
  %117 = fsub fast float 1.000000e+00, %114
  %118 = fsub fast float 1.000000e+00, %116
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fmul fast float %117, %120
  %124 = fmul fast float %117, %121
  %125 = fmul fast float %117, %122
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %118, %127
  %131 = fmul fast float %118, %128
  %132 = fmul fast float %118, %129
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fadd fast float %130, %134
  %138 = fadd fast float %137, %123
  %139 = fadd fast float %131, %135
  %140 = fadd fast float %139, %124
  %141 = fadd fast float %132, %136
  %142 = fadd fast float %141, %125
  %143 = fmul fast float %138, %87
  %144 = fmul fast float %140, %87
  %145 = fmul fast float %142, %87
  %146 = fadd fast float %79, 5.000000e-01
  %147 = fptoui float %146 to i32
  %148 = shl i32 %147, 3
  %149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %150 = extractvalue %dx.types.ResRet.i32 %149, 0
  %151 = or i32 %148, 4
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = and i32 %150, 8191
  %155 = lshr i32 %150, 13
  %156 = and i32 %155, 8191
  %157 = lshr i32 %150, 26
  %158 = and i32 %153, 65535
  %159 = lshr i32 %153, 16
  %160 = uitofp i32 %158 to float
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %163 = uitofp i32 %159 to float
  %164 = uitofp i32 %154 to float
  %165 = fmul fast float %162, %164
  %166 = uitofp i32 %156 to float
  %167 = fmul fast float %162, %166
  %168 = fmul fast float %162, %77
  %169 = fmul fast float %168, %160
  %170 = fmul fast float %162, %78
  %171 = fmul fast float %170, %163
  %172 = fadd fast float %169, %165
  %173 = fadd fast float %167, %171
  %174 = uitofp i32 %157 to float
  %175 = fmul fast float %96, 5.000000e-01
  %176 = fmul fast float %97, 5.000000e-01
  %177 = fptosi float %175 to i32
  %178 = fptosi float %176 to i32
  %179 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %177, i32 %178, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = lshr i32 %180, 18
  %182 = uitofp i32 %181 to float
  %183 = fmul fast float %182, 0x3F4C00EBA0000000
  %184 = call float @dx.op.unary.f32(i32 21, float %183)  ; Exp(value)
  %185 = fadd fast float %184, -1.000000e+00
  %186 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %187 = extractvalue %dx.types.Dimensions %186, 0
  %188 = sitofp i32 %187 to float
  %189 = extractvalue %dx.types.Dimensions %186, 1
  %190 = sitofp i32 %189 to float
  %191 = fcmp fast oge float %175, %188
  %192 = fcmp fast oge float %176, %190
  %193 = or i1 %191, %192
  %194 = select i1 %193, float 0x4197782600000000, float %185
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 3
  %198 = fmul fast float %196, %96
  %199 = fmul fast float %197, %97
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = and i32 %201, 114688
  %203 = icmp ne i32 %202, 0
  %204 = select i1 %203, float %198, float 0.000000e+00
  %205 = select i1 %203, float %199, float 0.000000e+00
  %206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %59, float %204, float %205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = fmul fast float %207, 2.550000e+02
  %209 = fptoui float %208 to i32
  %210 = select i1 %203, i32 %209, i32 0
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.i32 %212, 3
  %214 = and i32 %213, 3
  %215 = icmp ne i32 %214, 0
  %216 = and i32 %213, 4
  %217 = icmp ne i32 %216, 0
  %218 = and i1 %215, %217
  br i1 %218, label %219, label %230

; <label>:219                                     ; preds = %0
  %220 = extractvalue %dx.types.CBufRet.f32 %211, 3
  %221 = fmul fast float %220, %97
  %222 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %223 = fmul fast float %222, %96
  %224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %58, float %223, float %221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = fsub fast float 1.000000e+00, %225
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 0
  %229 = fcmp fast olt float %226, %228
  br label %233

; <label>:230                                     ; preds = %0
  %231 = icmp eq i32 %216, 0
  %232 = and i1 %215, %231
  br label %233

; <label>:233                                     ; preds = %230, %219
  %234 = phi i1 [ %229, %219 ], [ %232, %230 ]
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 2
  %237 = fmul fast float %236, 0x3FE3C6EF40000000
  %238 = frem fast float %96, 2.560000e+02
  %239 = frem fast float %97, 2.560000e+02
  %240 = fptoui float %238 to i32
  %241 = fptoui float %239 to i32
  %242 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %240, i32 %241, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = fadd fast float %243, %237
  %245 = call float @dx.op.unary.f32(i32 22, float %244)  ; Frc(value)
  %246 = add i32 %65, 92
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = shl i32 %248, 4
  %250 = and i32 %249, 32752
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %248, 7
  %253 = and i32 %252, 32752
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = lshr i32 %248, 22
  %256 = shl nuw nsw i32 %255, 5
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = add i32 %65, 120
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 255
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = lshr i32 %260, 8
  %265 = and i32 %264, 255
  %266 = uitofp i32 %265 to float
  %267 = fmul fast float %266, 0x3F70101020000000
  %268 = lshr i32 %260, 16
  %269 = and i32 %268, 255
  %270 = uitofp i32 %269 to float
  %271 = fmul fast float %270, 0x3F70101020000000
  %272 = add i32 %65, 36
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = add i32 %65, 160
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = add i32 %65, 108
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %290 = add i32 %65, 136
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %304 = add i32 %65, 52
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = add i32 %65, 176
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = fmul fast float %315, 0x3F50624DE0000000
  %319 = fmul fast float %317, 0x3F50624DE0000000
  %320 = add i32 %65, 188
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = lshr i32 %322, 20
  %324 = and i32 %323, 3
  %325 = add nuw nsw i32 %324, 1
  %326 = add i32 %65, 24
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = add i32 %65, 28
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = or i32 %331, %328
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %1093, label %334

; <label>:334                                     ; preds = %233
  %335 = lshr i32 %277, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = fmul fast float %336, 0x3F50624DE0000000
  %338 = and i32 %277, 65535
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = fmul fast float %339, 0x3F50624DE0000000
  %341 = lshr i32 %274, 16
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = and i32 %274, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = add i32 %65, 156
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = lshr i32 %347, 16
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = fmul fast float %349, 0x3F50624DE0000000
  %351 = add i32 %65, 56
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = lshr i32 %353, 16
  %355 = and i32 %354, 255
  %356 = lshr i32 %353, 24
  %357 = add i32 %65, 164
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 65535
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %359, 16
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = add i32 %65, 32
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = lshr i32 %366, 22
  %368 = shl nuw nsw i32 %367, 5
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = shl i32 %366, 4
  %371 = and i32 %370, 32752
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = lshr i32 %366, 7
  %374 = and i32 %373, 32752
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 3
  %378 = fmul fast float %377, 1.000000e+03
  %379 = fmul fast float %340, %378
  %380 = call float @dx.op.unary.f32(i32 22, float %379)  ; Frc(value)
  %381 = fadd fast float %380, %344
  %382 = fmul fast float %337, %378
  %383 = call float @dx.op.unary.f32(i32 22, float %382)  ; Frc(value)
  %384 = fadd fast float %383, %342
  %385 = fmul fast float %350, %378
  %386 = call float @dx.op.unary.f32(i32 22, float %385)  ; Frc(value)
  %387 = fmul fast float %386, 0x401921FB60000000
  %388 = fadd fast float %387, %369
  %389 = call float @dx.op.unary.f32(i32 13, float %388)  ; Sin(value)
  %390 = call float @dx.op.unary.f32(i32 12, float %388)  ; Cos(value)
  %391 = fsub fast float -0.000000e+00, %389
  %392 = fadd fast float %80, -5.000000e-01
  %393 = fadd fast float %81, -5.000000e-01
  %394 = fmul fast float %361, %392
  %395 = fmul fast float %363, %393
  %396 = fadd fast float %394, 5.000000e-01
  %397 = fadd fast float %395, 5.000000e-01
  %398 = fmul fast float %372, %396
  %399 = fmul fast float %375, %397
  %400 = fmul fast float %390, %398
  %401 = call float @dx.op.tertiary.f32(i32 46, float %391, float %399, float %400)  ; FMad(a,b,c)
  %402 = fmul fast float %389, %398
  %403 = call float @dx.op.tertiary.f32(i32 46, float %390, float %399, float %402)  ; FMad(a,b,c)
  %404 = fadd fast float %381, %401
  %405 = fadd fast float %384, %403
  %406 = icmp ugt i32 %355, 1
  %407 = icmp ugt i32 %353, 33554431
  %408 = or i1 %407, %406
  br i1 %408, label %409, label %434

; <label>:409                                     ; preds = %334
  %410 = add i32 %65, 132
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = lshr i32 %412, 16
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = fmul fast float %377, %414
  %416 = call float @dx.op.unary.f32(i32 22, float %415)  ; Frc(value)
  %417 = mul nuw nsw i32 %355, %356
  %418 = uitofp i32 %417 to float
  %419 = fmul fast float %416, %418
  %420 = call float @dx.op.unary.f32(i32 27, float %419)  ; Round_ni(value)
  %421 = fptoui float %420 to i32
  %422 = urem i32 %421, %355
  %423 = udiv i32 %421, %356
  %424 = call float @dx.op.unary.f32(i32 22, float %404)  ; Frc(value)
  %425 = call float @dx.op.unary.f32(i32 22, float %405)  ; Frc(value)
  %426 = uitofp i32 %422 to float
  %427 = uitofp i32 %423 to float
  %428 = fadd fast float %424, %426
  %429 = fadd fast float %425, %427
  %430 = uitofp i32 %355 to float
  %431 = uitofp i32 %356 to float
  %432 = fdiv fast float %428, %430
  %433 = fdiv fast float %429, %431
  br label %434

; <label>:434                                     ; preds = %409, %334
  %435 = phi float [ %432, %409 ], [ %404, %334 ]
  %436 = phi float [ %433, %409 ], [ %405, %334 ]
  %437 = and i32 %328, 16777216
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %545, label %439

; <label>:439                                     ; preds = %434
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 0
  %442 = extractvalue %dx.types.CBufRet.f32 %440, 1
  %443 = extractvalue %dx.types.CBufRet.f32 %440, 2
  %444 = fadd fast float %441, %143
  %445 = fadd fast float %442, %144
  %446 = fadd fast float %443, %145
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 0
  %449 = call float @dx.op.unary.f32(i32 7, float %448)  ; Saturate(value)
  %450 = icmp eq i32 %64, 65535
  br i1 %450, label %545, label %451

; <label>:451                                     ; preds = %439
  %452 = lshr i32 %64, 1
  %453 = shl i32 %452, 2
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %64, 1
  %457 = icmp ne i32 %456, 0
  %458 = lshr i32 %455, 16
  %459 = and i32 %455, 65535
  %460 = select i1 %457, i32 %458, i32 %459
  %461 = icmp eq i32 %460, 65535
  br i1 %461, label %541, label %462

; <label>:462                                     ; preds = %451
  %463 = mul nuw nsw i32 %460, 40
  %464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = extractvalue %dx.types.ResRet.f32 %464, 1
  %467 = extractvalue %dx.types.ResRet.f32 %464, 2
  %468 = add nuw nsw i32 %463, 12
  %469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = extractvalue %dx.types.ResRet.f32 %469, 1
  %472 = extractvalue %dx.types.ResRet.f32 %469, 2
  %473 = add nuw nsw i32 %463, 24
  %474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = add nuw nsw i32 %463, 36
  %479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = fsub fast float %444, %465
  %482 = fsub fast float %445, %466
  %483 = fsub fast float %446, %467
  %484 = fmul fast float %480, %481
  %485 = fmul fast float %480, %482
  %486 = fmul fast float %480, %483
  %487 = call float @dx.op.unary.f32(i32 27, float %484)  ; Round_ni(value)
  %488 = call float @dx.op.unary.f32(i32 27, float %485)  ; Round_ni(value)
  %489 = call float @dx.op.unary.f32(i32 27, float %486)  ; Round_ni(value)
  %490 = fadd fast float %487, 5.000000e-01
  %491 = fadd fast float %488, 5.000000e-01
  %492 = fadd fast float %489, 5.000000e-01
  %493 = fmul fast float %490, %470
  %494 = fmul fast float %491, %471
  %495 = fmul fast float %492, %472
  %496 = shl i32 %64, 2
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = add i32 %498, 0
  %500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %499, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %501 = call float @dx.op.unary.f32(i32 22, float %493)  ; Frc(value)
  %502 = call float @dx.op.unary.f32(i32 22, float %494)  ; Frc(value)
  %503 = call float @dx.op.unary.f32(i32 22, float %495)  ; Frc(value)
  %504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %500, %dx.types.Handle %59, float %501, float %502, float %503, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = fmul fast float %505, 1.023000e+03
  %509 = fmul fast float %506, 1.023000e+03
  %510 = fmul fast float %507, 1.023000e+03
  %511 = fadd fast float %508, 5.000000e-01
  %512 = fadd fast float %509, 5.000000e-01
  %513 = fadd fast float %510, 5.000000e-01
  %514 = call float @dx.op.unary.f32(i32 27, float %511)  ; Round_ni(value)
  %515 = call float @dx.op.unary.f32(i32 27, float %512)  ; Round_ni(value)
  %516 = call float @dx.op.unary.f32(i32 27, float %513)  ; Round_ni(value)
  %517 = fsub fast float %484, %487
  %518 = fsub fast float %485, %488
  %519 = fsub fast float %486, %489
  %520 = fmul fast float %517, 7.500000e-01
  %521 = fmul fast float %518, 7.500000e-01
  %522 = fmul fast float %519, 7.500000e-01
  %523 = fadd fast float %487, 1.250000e-01
  %524 = fadd fast float %523, %520
  %525 = fadd fast float %524, %514
  %526 = fadd fast float %488, 1.250000e-01
  %527 = fadd fast float %526, %521
  %528 = fadd fast float %527, %515
  %529 = fadd fast float %489, 1.250000e-01
  %530 = fadd fast float %529, %522
  %531 = fadd fast float %530, %516
  %532 = fmul fast float %525, %475
  %533 = fmul fast float %528, %476
  %534 = fmul fast float %531, %477
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = add i32 %536, 0
  %538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %537, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %538, %dx.types.Handle %57, float %532, float %533, float %534, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  br label %541

; <label>:541                                     ; preds = %462, %451
  %542 = phi float [ %540, %462 ], [ -1.000000e+00, %451 ]
  %543 = fadd fast float %542, %449
  %544 = call float @dx.op.unary.f32(i32 7, float %543)  ; Saturate(value)
  br label %545

; <label>:545                                     ; preds = %541, %439, %434
  %546 = phi float [ 1.000000e+00, %434 ], [ %544, %541 ], [ %449, %439 ]
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = and i32 %548, 256
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %597, label %551

; <label>:551                                     ; preds = %545
  %552 = add i32 %65, 232
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = add i32 %554, 0
  %556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %555, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %556, %dx.types.Handle %93, float %435, float %436, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = add i32 %65, 68
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = shl i32 %561, 4
  %563 = and i32 %562, 32752
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = lshr i32 %561, 7
  %566 = and i32 %565, 32752
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = fsub fast float 1.000000e+00, %546
  %569 = call float @dx.op.binary.f32(i32 35, float %568, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %570 = bitcast float %546 to i32
  %571 = sitofp i32 %570 to float
  %572 = fadd fast float %571, 0xC1CFBF8940000000
  %573 = fmul fast float %567, %572
  %574 = fadd fast float %573, 0x41CFBF8940000000
  %575 = fptosi float %574 to i32
  %576 = bitcast i32 %575 to float
  %577 = bitcast float %569 to i32
  %578 = sitofp i32 %577 to float
  %579 = fadd fast float %578, 0xC1CFBF8940000000
  %580 = fmul fast float %579, %567
  %581 = fadd fast float %580, 0x41CFBF8940000000
  %582 = fptosi float %581 to i32
  %583 = bitcast i32 %582 to float
  %584 = fmul fast float %576, %564
  %585 = fmul fast float %583, %564
  %586 = fsub fast float %569, %584
  %587 = fadd fast float %585, %569
  %588 = call float @dx.op.unary.f32(i32 7, float %586)  ; Saturate(value)
  %589 = call float @dx.op.unary.f32(i32 7, float %587)  ; Saturate(value)
  %590 = fsub fast float %558, %588
  %591 = fsub fast float %589, %588
  %592 = bitcast float %591 to i32
  %593 = sub nsw i32 2129859010, %592
  %594 = bitcast i32 %593 to float
  %595 = fmul fast float %594, %590
  %596 = call float @dx.op.unary.f32(i32 7, float %595)  ; Saturate(value)
  br label %597

; <label>:597                                     ; preds = %551, %545
  %598 = phi float [ %596, %551 ], [ %546, %545 ]
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = and i32 %600, 128
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %619, label %603

; <label>:603                                     ; preds = %597
  %604 = add i32 %65, 224
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = add i32 %606, 0
  %608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %609 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %608, %dx.types.Handle %93, float %435, float %436, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = and i32 %612, 524288
  %614 = icmp ne i32 %613, 0
  %615 = fcmp fast ogt float %610, 0x3FE0101020000000
  %616 = select i1 %615, float 1.000000e+00, float 0.000000e+00
  %617 = select i1 %614, float %616, float %610
  %618 = fmul fast float %617, %598
  br label %619

; <label>:619                                     ; preds = %603, %597
  %620 = phi float [ %618, %603 ], [ %598, %597 ]
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = and i32 %622, 16
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %823, label %625

; <label>:625                                     ; preds = %619
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = add i32 %65, 200
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = add i32 %630, 0
  %632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %633 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %632, %dx.types.Handle %92, float %435, float %436, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 0
  %635 = extractvalue %dx.types.ResRet.f32 %633, 1
  %636 = extractvalue %dx.types.ResRet.f32 %633, 2
  %637 = extractvalue %dx.types.ResRet.f32 %633, 3
  %638 = and i32 %627, 255
  %639 = uitofp i32 %638 to float
  %640 = lshr i32 %627, 8
  %641 = and i32 %640, 255
  %642 = uitofp i32 %641 to float
  %643 = fmul fast float %637, %639
  %644 = fadd fast float %643, %642
  %645 = fmul fast float %644, 0x3F70101000000000
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = and i32 %647, 512
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %658, label %650

; <label>:650                                     ; preds = %625
  %651 = add i32 %65, 240
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = add i32 %653, 0
  %655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %655, %dx.types.Handle %93, float %435, float %436, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 0
  br label %658

; <label>:658                                     ; preds = %650, %625
  %659 = phi float [ %657, %650 ], [ 1.000000e+00, %625 ]
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = and i32 %661, 33554432
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %770, label %664

; <label>:664                                     ; preds = %658
  %665 = add i32 %65, 128
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = and i32 %667, 65535
  %669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %668)  ; LegacyF16ToF32(value)
  %670 = lshr i32 %667, 16
  %671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %670)  ; LegacyF16ToF32(value)
  %672 = add i32 %65, 132
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = and i32 %674, 65535
  %676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %675)  ; LegacyF16ToF32(value)
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = lshr i32 %678, 24
  %680 = uitofp i32 %679 to float
  %681 = fmul fast float %680, 0x3F70101020000000
  %682 = and i32 %678, 255
  %683 = uitofp i32 %682 to float
  %684 = fmul fast float %683, 0x3F70101020000000
  %685 = lshr i32 %678, 8
  %686 = and i32 %685, 255
  %687 = uitofp i32 %686 to float
  %688 = fmul fast float %687, 0x3F70101020000000
  %689 = lshr i32 %678, 16
  %690 = and i32 %689, 255
  %691 = uitofp i32 %690 to float
  %692 = fmul fast float %691, 0x3F70101020000000
  %693 = add i32 %65, 124
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = lshr i32 %695, 24
  %697 = uitofp i32 %696 to float
  %698 = fmul fast float %697, 0x3F70101020000000
  %699 = and i32 %695, 255
  %700 = uitofp i32 %699 to float
  %701 = fmul fast float %700, 0x3F70101020000000
  %702 = lshr i32 %695, 8
  %703 = and i32 %702, 255
  %704 = uitofp i32 %703 to float
  %705 = fmul fast float %704, 0x3F70101020000000
  %706 = lshr i32 %695, 16
  %707 = and i32 %706, 255
  %708 = uitofp i32 %707 to float
  %709 = fmul fast float %708, 0x3F70101020000000
  %710 = bitcast float %634 to i32
  %711 = ashr i32 %710, 1
  %712 = sub nsw i32 1597463174, %711
  %713 = bitcast i32 %712 to float
  %714 = fmul fast float %634, 5.000000e-01
  %715 = fmul fast float %713, %713
  %716 = fmul fast float %715, %714
  %717 = fsub fast float 1.500000e+00, %716
  %718 = fmul fast float %713, %634
  %719 = fmul fast float %718, %717
  %720 = bitcast float %635 to i32
  %721 = ashr i32 %720, 1
  %722 = sub nsw i32 1597463174, %721
  %723 = bitcast i32 %722 to float
  %724 = fmul fast float %635, 5.000000e-01
  %725 = fmul fast float %723, %723
  %726 = fmul fast float %725, %724
  %727 = fsub fast float 1.500000e+00, %726
  %728 = fmul fast float %723, %635
  %729 = fmul fast float %728, %727
  %730 = bitcast float %636 to i32
  %731 = ashr i32 %730, 1
  %732 = sub nsw i32 1597463174, %731
  %733 = bitcast i32 %732 to float
  %734 = fmul fast float %636, 5.000000e-01
  %735 = fmul fast float %733, %733
  %736 = fmul fast float %735, %734
  %737 = fsub fast float 1.500000e+00, %736
  %738 = fmul fast float %733, %636
  %739 = fmul fast float %738, %737
  %740 = fsub fast float %719, %701
  %741 = fsub fast float %729, %705
  %742 = fsub fast float %739, %709
  %743 = fmul fast float %740, %669
  %744 = fmul fast float %741, %671
  %745 = fmul fast float %742, %676
  %746 = fadd fast float %743, %684
  %747 = fadd fast float %744, %688
  %748 = fadd fast float %745, %692
  %749 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  %750 = call float @dx.op.unary.f32(i32 7, float %747)  ; Saturate(value)
  %751 = call float @dx.op.unary.f32(i32 7, float %748)  ; Saturate(value)
  %752 = fmul fast float %749, %749
  %753 = fmul fast float %750, %750
  %754 = fmul fast float %751, %751
  %755 = fsub fast float %752, %634
  %756 = fsub fast float %753, %635
  %757 = fsub fast float %754, %636
  %758 = fmul fast float %755, %659
  %759 = fmul fast float %756, %659
  %760 = fmul fast float %757, %659
  %761 = fadd fast float %758, %634
  %762 = fadd fast float %759, %635
  %763 = fadd fast float %760, %636
  %764 = fadd fast float %681, %645
  %765 = fsub fast float %764, %698
  %766 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  %767 = fsub fast float %766, %645
  %768 = fmul fast float %767, %659
  %769 = fadd fast float %768, %645
  br label %823

; <label>:770                                     ; preds = %658
  %771 = and i32 %661, 134217728
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %807, label %773

; <label>:773                                     ; preds = %770
  %774 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %775 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %776 = call float @dx.op.unary.f32(i32 24, float %271)  ; Sqrt(value)
  %777 = fadd fast float %774, -5.000000e-01
  %778 = fadd fast float %775, -5.000000e-01
  %779 = fadd fast float %776, -5.000000e-01
  %780 = fmul fast float %777, %659
  %781 = fmul fast float %778, %659
  %782 = fmul fast float %779, %659
  %783 = fadd fast float %780, 5.000000e-01
  %784 = fadd fast float %781, 5.000000e-01
  %785 = fadd fast float %782, 5.000000e-01
  %786 = call float @dx.op.unary.f32(i32 24, float %634)  ; Sqrt(value)
  %787 = call float @dx.op.unary.f32(i32 24, float %635)  ; Sqrt(value)
  %788 = call float @dx.op.unary.f32(i32 24, float %636)  ; Sqrt(value)
  %789 = fmul fast float %783, 2.000000e+00
  %790 = fsub fast float 1.000000e+00, %789
  %791 = fmul fast float %790, %786
  %792 = fadd fast float %791, %789
  %793 = fmul fast float %792, %786
  %794 = fmul fast float %784, 2.000000e+00
  %795 = fsub fast float 1.000000e+00, %794
  %796 = fmul fast float %795, %787
  %797 = fadd fast float %796, %794
  %798 = fmul fast float %797, %787
  %799 = fmul fast float %785, 2.000000e+00
  %800 = fsub fast float 1.000000e+00, %799
  %801 = fmul fast float %800, %788
  %802 = fadd fast float %801, %799
  %803 = fmul fast float %802, %788
  %804 = fmul fast float %793, %793
  %805 = fmul fast float %798, %798
  %806 = fmul fast float %803, %803
  br label %823

; <label>:807                                     ; preds = %770
  %808 = fmul fast float %263, %263
  %809 = fmul fast float %267, %267
  %810 = fmul fast float %271, %271
  %811 = fadd fast float %808, -1.000000e+00
  %812 = fadd fast float %809, -1.000000e+00
  %813 = fadd fast float %810, -1.000000e+00
  %814 = fmul fast float %659, %811
  %815 = fmul fast float %659, %812
  %816 = fmul fast float %659, %813
  %817 = fadd fast float %814, 1.000000e+00
  %818 = fadd fast float %815, 1.000000e+00
  %819 = fadd fast float %816, 1.000000e+00
  %820 = fmul fast float %817, %634
  %821 = fmul fast float %818, %635
  %822 = fmul fast float %819, %636
  br label %823

; <label>:823                                     ; preds = %807, %773, %664, %619
  %824 = phi float [ %769, %664 ], [ %645, %773 ], [ %645, %807 ], [ 0x3FA23C0BE0000000, %619 ]
  %825 = phi float [ %761, %664 ], [ %804, %773 ], [ %820, %807 ], [ 1.000000e+00, %619 ]
  %826 = phi float [ %762, %664 ], [ %805, %773 ], [ %821, %807 ], [ 1.000000e+00, %619 ]
  %827 = phi float [ %763, %664 ], [ %806, %773 ], [ %822, %807 ], [ 1.000000e+00, %619 ]
  %828 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.i32 %828, 1
  %830 = and i32 %829, 1
  %831 = icmp ne i32 %830, 0
  %832 = add i32 %65, 196
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = and i32 %834, 32
  %836 = icmp ne i32 %835, 0
  %837 = and i1 %831, %836
  %838 = select i1 %837, float 1.000000e+00, float %825
  %839 = select i1 %837, float 0x3FD3333340000000, float %826
  %840 = select i1 %837, float 0x3FD3333340000000, float %827
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = and i32 %842, 32
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %917, label %845

; <label>:845                                     ; preds = %823
  %846 = add i32 %65, 60
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %846, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = add i32 %65, 208
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %849, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = add i32 %851, 0
  %853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %852, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %854 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %853, %dx.types.Handle %92, float %435, float %436, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 2
  %858 = extractvalue %dx.types.ResRet.f32 %854, 3
  %859 = and i32 %848, 255
  %860 = uitofp i32 %859 to float
  %861 = lshr i32 %848, 8
  %862 = and i32 %861, 255
  %863 = uitofp i32 %862 to float
  %864 = lshr i32 %848, 16
  %865 = and i32 %864, 255
  %866 = uitofp i32 %865 to float
  %867 = fmul fast float %866, 0x3F70101000000000
  %868 = fmul fast float %855, %860
  %869 = fadd fast float %868, %863
  %870 = fmul fast float %869, 0x3F70101000000000
  %871 = fadd fast float %856, -5.000000e-01
  %872 = fadd fast float %858, -5.000000e-01
  %873 = fmul fast float %871, %867
  %874 = fmul fast float %872, %867
  %875 = fadd fast float %873, 5.000000e-01
  %876 = fadd fast float %874, 5.000000e-01
  %877 = fmul fast float %875, 2.000000e+00
  %878 = fadd fast float %877, -1.000000e+00
  %879 = fmul fast float %876, 2.000000e+00
  %880 = fadd fast float %879, -1.000000e+00
  %881 = fadd fast float %878, %880
  %882 = fmul fast float %881, 5.000000e-01
  %883 = fsub fast float %878, %880
  %884 = fmul fast float %883, 5.000000e-01
  %885 = call float @dx.op.unary.f32(i32 6, float %882)  ; FAbs(value)
  %886 = fsub fast float 1.000000e+00, %885
  %887 = call float @dx.op.unary.f32(i32 6, float %884)  ; FAbs(value)
  %888 = fsub fast float %886, %887
  %889 = call float @dx.op.dot3.f32(i32 55, float %882, float %884, float %888, float %882, float %884, float %888)  ; Dot3(ax,ay,az,bx,by,bz)
  %890 = call float @dx.op.unary.f32(i32 25, float %889)  ; Rsqrt(value)
  %891 = fmul fast float %882, %890
  %892 = fmul fast float %884, %890
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = and i32 %894, 67108864
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %913, label %897

; <label>:897                                     ; preds = %845
  %898 = add i32 %65, 152
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = and i32 %900, 65535
  %902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %901)  ; LegacyF16ToF32(value)
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = and i32 %904, 65535
  %906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %905)  ; LegacyF16ToF32(value)
  %907 = lshr i32 %900, 16
  %908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %907)  ; LegacyF16ToF32(value)
  %909 = fsub fast float %870, %908
  %910 = fmul fast float %909, %902
  %911 = fadd fast float %910, %906
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  br label %913

; <label>:913                                     ; preds = %897, %845
  %914 = phi float [ %912, %897 ], [ %870, %845 ]
  %915 = call float @dx.op.dot2.f32(i32 54, float %891, float %892, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %916 = call float @dx.op.dot2.f32(i32 54, float %891, float %892, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %917

; <label>:917                                     ; preds = %913, %823
  %918 = phi float [ %914, %913 ], [ 0x3FD6666660000000, %823 ]
  %919 = phi float [ %915, %913 ], [ 0.000000e+00, %823 ]
  %920 = phi float [ %916, %913 ], [ 0.000000e+00, %823 ]
  %921 = phi float [ %857, %913 ], [ 1.000000e+00, %823 ]
  %922 = add i32 %65, 96
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = lshr i32 %924, 22
  %926 = shl nuw nsw i32 %925, 5
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = and i32 %929, 64
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %965, label %932

; <label>:932                                     ; preds = %917
  %933 = add i32 %65, 216
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = add i32 %935, 0
  %937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %936, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = and i32 %939, 131072
  %941 = icmp eq i32 %940, 0
  %942 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %937, %dx.types.Handle %92, float %435, float %436, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %943 = extractvalue %dx.types.ResRet.f32 %942, 0
  %944 = extractvalue %dx.types.ResRet.f32 %942, 1
  %945 = extractvalue %dx.types.ResRet.f32 %942, 2
  %946 = fmul fast float %943, %251
  %947 = fmul fast float %944, %254
  %948 = fmul fast float %945, %257
  br i1 %941, label %955, label %949

; <label>:949                                     ; preds = %932
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 0
  %952 = fmul fast float %951, %946
  %953 = fmul fast float %951, %947
  %954 = fmul fast float %951, %948
  br label %955

; <label>:955                                     ; preds = %949, %932
  %956 = phi float [ %952, %949 ], [ %946, %932 ]
  %957 = phi float [ %953, %949 ], [ %947, %932 ]
  %958 = phi float [ %954, %949 ], [ %948, %932 ]
  %959 = fmul fast float %956, %927
  %960 = select i1 %234, float %959, float %956
  %961 = call float @dx.op.dot3.f32(i32 55, float %960, float %957, float %958, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %962 = select i1 %234, float 0.000000e+00, float %956
  %963 = select i1 %234, float %961, float %957
  %964 = select i1 %234, float 0.000000e+00, float %958
  br label %965

; <label>:965                                     ; preds = %955, %917
  %966 = phi float [ %962, %955 ], [ 0.000000e+00, %917 ]
  %967 = phi float [ %963, %955 ], [ 0.000000e+00, %917 ]
  %968 = phi float [ %964, %955 ], [ 0.000000e+00, %917 ]
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = and i32 %970, 1024
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %1003, label %973

; <label>:973                                     ; preds = %965
  %974 = add i32 %65, 88
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = and i32 %976, 255
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %978, 0x3F70101020000000
  %980 = lshr i32 %976, 8
  %981 = and i32 %980, 255
  %982 = uitofp i32 %981 to float
  %983 = fmul fast float %982, 0x3F70101020000000
  %984 = lshr i32 %976, 16
  %985 = and i32 %984, 255
  %986 = uitofp i32 %985 to float
  %987 = fmul fast float %986, 0x3F70101020000000
  %988 = fmul fast float %979, %979
  %989 = fmul fast float %983, %983
  %990 = fmul fast float %987, %987
  %991 = add i32 %65, 248
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = add i32 %993, 0
  %995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %994, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %996 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %995, %dx.types.Handle %93, float %435, float %436, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %997 = extractvalue %dx.types.ResRet.f32 %996, 0
  %998 = extractvalue %dx.types.ResRet.f32 %996, 1
  %999 = extractvalue %dx.types.ResRet.f32 %996, 2
  %1000 = fmul fast float %988, %997
  %1001 = fmul fast float %989, %998
  %1002 = fmul fast float %990, %999
  br label %1003

; <label>:1003                                    ; preds = %973, %965
  %1004 = phi float [ %1000, %973 ], [ 0.000000e+00, %965 ]
  %1005 = phi float [ %1001, %973 ], [ 0.000000e+00, %965 ]
  %1006 = phi float [ %1002, %973 ], [ 0.000000e+00, %965 ]
  %1007 = fcmp fast ogt float %1004, 0.000000e+00
  %1008 = fcmp fast ogt float %1005, 0.000000e+00
  %1009 = fcmp fast ogt float %1006, 0.000000e+00
  %1010 = call float @dx.op.unary.f32(i32 23, float %1004)  ; Log(value)
  %1011 = call float @dx.op.unary.f32(i32 23, float %1005)  ; Log(value)
  %1012 = call float @dx.op.unary.f32(i32 23, float %1006)  ; Log(value)
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = lshr i32 %1014, 7
  %1016 = and i32 %1015, 32752
  %1017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1016)  ; LegacyF16ToF32(value)
  %1018 = fmul fast float %1010, 0xBFE62E4300000000
  %1019 = fmul fast float %1018, %1017
  %1020 = fmul fast float %1011, 0xBFE62E4300000000
  %1021 = fmul fast float %1020, %1017
  %1022 = fmul fast float %1012, 0xBFE62E4300000000
  %1023 = fmul fast float %1022, %1017
  %1024 = select i1 %1007, float %1019, float 1.270000e+02
  %1025 = select i1 %1008, float %1021, float 1.270000e+02
  %1026 = select i1 %1009, float %1023, float 1.270000e+02
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = and i32 %1028, 10240
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1075, label %1031

; <label>:1031                                    ; preds = %1003
  %1032 = add i32 %65, 256
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = add i32 %1034, 0
  %1036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1037 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1036, %dx.types.Handle %93, float %435, float %436, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1038 = extractvalue %dx.types.ResRet.f32 %1037, 1
  %1039 = extractvalue %dx.types.ResRet.f32 %1037, 3
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %1041, 1048576
  %1043 = icmp ne i32 %1042, 0
  %1044 = and i32 %1041, 8192
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1061, label %1046

; <label>:1046                                    ; preds = %1031
  %1047 = extractvalue %dx.types.ResRet.f32 %1037, 2
  %1048 = select i1 %1043, float %1047, float %1038
  %1049 = extractvalue %dx.types.ResRet.f32 %1037, 0
  %1050 = select i1 %1043, float %1049, float %1038
  %1051 = add i32 %65, 64
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = lshr i32 %1053, 16
  %1055 = and i32 %1054, 255
  %1056 = uitofp i32 %1055 to float
  %1057 = fmul fast float %1056, 0x3F80101020000000
  %1058 = fmul fast float %1057, %1050
  %1059 = fmul fast float %1057, %1038
  %1060 = fmul fast float %1057, %1048
  br label %1061

; <label>:1061                                    ; preds = %1046, %1031
  %1062 = phi float [ %1058, %1046 ], [ 0.000000e+00, %1031 ]
  %1063 = phi float [ %1059, %1046 ], [ 0.000000e+00, %1031 ]
  %1064 = phi float [ %1060, %1046 ], [ 0.000000e+00, %1031 ]
  %1065 = and i32 %1041, 2048
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1075, label %1067

; <label>:1067                                    ; preds = %1061
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = shl i32 %1069, 4
  %1071 = and i32 %1070, 32752
  %1072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1071)  ; LegacyF16ToF32(value)
  %1073 = fmul fast float %1072, %1039
  %1074 = call float @dx.op.binary.f32(i32 35, float %1073, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1075

; <label>:1075                                    ; preds = %1067, %1061, %1003
  %1076 = phi float [ %1062, %1067 ], [ %1062, %1061 ], [ 0.000000e+00, %1003 ]
  %1077 = phi float [ %1063, %1067 ], [ %1063, %1061 ], [ 0.000000e+00, %1003 ]
  %1078 = phi float [ %1064, %1067 ], [ %1064, %1061 ], [ 0.000000e+00, %1003 ]
  %1079 = phi float [ %1074, %1067 ], [ 0x3F70101020000000, %1061 ], [ 0x3F70101020000000, %1003 ]
  %1080 = add i32 %65, 64
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = and i32 %1082, 255
  %1084 = uitofp i32 %1083 to float
  %1085 = lshr i32 %1082, 8
  %1086 = and i32 %1085, 255
  %1087 = uitofp i32 %1086 to float
  %1088 = call float @dx.op.dot3.f32(i32 55, float %838, float %839, float %840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1089 = fmul fast float %1087, %1088
  %1090 = fadd fast float %1089, %1084
  %1091 = fmul fast float %1090, 0x3F70101020000000
  %1092 = call float @dx.op.unary.f32(i32 7, float %1091)  ; Saturate(value)
  br label %1093

; <label>:1093                                    ; preds = %1075, %233
  %1094 = phi float [ %919, %1075 ], [ 0.000000e+00, %233 ]
  %1095 = phi float [ %920, %1075 ], [ 0.000000e+00, %233 ]
  %1096 = phi float [ %966, %1075 ], [ 0.000000e+00, %233 ]
  %1097 = phi float [ %967, %1075 ], [ 0.000000e+00, %233 ]
  %1098 = phi float [ %968, %1075 ], [ 0.000000e+00, %233 ]
  %1099 = phi float [ %838, %1075 ], [ 0.000000e+00, %233 ]
  %1100 = phi float [ %839, %1075 ], [ 0.000000e+00, %233 ]
  %1101 = phi float [ %840, %1075 ], [ 0.000000e+00, %233 ]
  %1102 = phi float [ %1076, %1075 ], [ 0.000000e+00, %233 ]
  %1103 = phi float [ %1077, %1075 ], [ 0.000000e+00, %233 ]
  %1104 = phi float [ %1078, %1075 ], [ 0.000000e+00, %233 ]
  %1105 = phi float [ %1024, %1075 ], [ 0.000000e+00, %233 ]
  %1106 = phi float [ %1025, %1075 ], [ 0.000000e+00, %233 ]
  %1107 = phi float [ %1026, %1075 ], [ 0.000000e+00, %233 ]
  %1108 = phi float [ %824, %1075 ], [ 0.000000e+00, %233 ]
  %1109 = phi float [ %620, %1075 ], [ 0.000000e+00, %233 ]
  %1110 = phi float [ %918, %1075 ], [ 0.000000e+00, %233 ]
  %1111 = phi float [ %921, %1075 ], [ 0.000000e+00, %233 ]
  %1112 = phi float [ %1079, %1075 ], [ 0.000000e+00, %233 ]
  %1113 = phi float [ %1092, %1075 ], [ 0.000000e+00, %233 ]
  %1114 = icmp ult i32 %325, 2
  %1115 = add i32 %65, 40
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = add i32 %65, 44
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = or i32 %1120, %1117
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %2139, label %1123

; <label>:1123                                    ; preds = %1093
  %1124 = add i32 %65, 172
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = lshr i32 %1126, 16
  %1128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1127)  ; LegacyF16ToF32(value)
  %1129 = fmul fast float %1128, 0x3F50624DE0000000
  %1130 = add i32 %65, 72
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1130, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = lshr i32 %1132, 16
  %1134 = and i32 %1133, 255
  %1135 = lshr i32 %1132, 24
  %1136 = add i32 %65, 180
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = and i32 %1138, 65535
  %1140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1139)  ; LegacyF16ToF32(value)
  %1141 = lshr i32 %1138, 16
  %1142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1141)  ; LegacyF16ToF32(value)
  %1143 = add i32 %65, 48
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = lshr i32 %1145, 22
  %1147 = shl nuw nsw i32 %1146, 5
  %1148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1147)  ; LegacyF16ToF32(value)
  %1149 = shl i32 %1145, 4
  %1150 = and i32 %1149, 32752
  %1151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1150)  ; LegacyF16ToF32(value)
  %1152 = lshr i32 %1145, 7
  %1153 = and i32 %1152, 32752
  %1154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1153)  ; LegacyF16ToF32(value)
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 3
  %1157 = fmul fast float %1156, 1.000000e+03
  %1158 = fmul fast float %318, %1157
  %1159 = call float @dx.op.unary.f32(i32 22, float %1158)  ; Frc(value)
  %1160 = fadd fast float %1159, %308
  %1161 = fmul fast float %319, %1157
  %1162 = call float @dx.op.unary.f32(i32 22, float %1161)  ; Frc(value)
  %1163 = fadd fast float %1162, %310
  %1164 = fmul fast float %1129, %1157
  %1165 = call float @dx.op.unary.f32(i32 22, float %1164)  ; Frc(value)
  %1166 = fmul fast float %1165, 0x401921FB60000000
  %1167 = fadd fast float %1166, %1148
  %1168 = call float @dx.op.unary.f32(i32 13, float %1167)  ; Sin(value)
  %1169 = call float @dx.op.unary.f32(i32 12, float %1167)  ; Cos(value)
  %1170 = fsub fast float -0.000000e+00, %1168
  %1171 = fadd fast float %82, -5.000000e-01
  %1172 = fadd fast float %83, -5.000000e-01
  %1173 = fmul fast float %1140, %1171
  %1174 = fmul fast float %1142, %1172
  %1175 = fadd fast float %1173, 5.000000e-01
  %1176 = fadd fast float %1174, 5.000000e-01
  %1177 = fmul fast float %1151, %1175
  %1178 = fmul fast float %1154, %1176
  %1179 = fmul fast float %1169, %1177
  %1180 = call float @dx.op.tertiary.f32(i32 46, float %1170, float %1178, float %1179)  ; FMad(a,b,c)
  %1181 = fmul fast float %1168, %1177
  %1182 = call float @dx.op.tertiary.f32(i32 46, float %1169, float %1178, float %1181)  ; FMad(a,b,c)
  %1183 = fadd fast float %1160, %1180
  %1184 = fadd fast float %1163, %1182
  %1185 = icmp ugt i32 %1134, 1
  %1186 = icmp ugt i32 %1132, 33554431
  %1187 = or i1 %1186, %1185
  br i1 %1187, label %1188, label %1213

; <label>:1188                                    ; preds = %1123
  %1189 = add i32 %65, 148
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = lshr i32 %1191, 16
  %1193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1192)  ; LegacyF16ToF32(value)
  %1194 = fmul fast float %1156, %1193
  %1195 = call float @dx.op.unary.f32(i32 22, float %1194)  ; Frc(value)
  %1196 = mul nuw nsw i32 %1134, %1135
  %1197 = uitofp i32 %1196 to float
  %1198 = fmul fast float %1195, %1197
  %1199 = call float @dx.op.unary.f32(i32 27, float %1198)  ; Round_ni(value)
  %1200 = fptoui float %1199 to i32
  %1201 = urem i32 %1200, %1134
  %1202 = udiv i32 %1200, %1135
  %1203 = call float @dx.op.unary.f32(i32 22, float %1183)  ; Frc(value)
  %1204 = call float @dx.op.unary.f32(i32 22, float %1184)  ; Frc(value)
  %1205 = uitofp i32 %1201 to float
  %1206 = uitofp i32 %1202 to float
  %1207 = fadd fast float %1203, %1205
  %1208 = fadd fast float %1204, %1206
  %1209 = uitofp i32 %1134 to float
  %1210 = uitofp i32 %1135 to float
  %1211 = fdiv fast float %1207, %1209
  %1212 = fdiv fast float %1208, %1210
  br label %1213

; <label>:1213                                    ; preds = %1188, %1123
  %1214 = phi float [ %1211, %1188 ], [ %1183, %1123 ]
  %1215 = phi float [ %1212, %1188 ], [ %1184, %1123 ]
  %1216 = and i32 %1117, 16777216
  %1217 = icmp eq i32 %1216, 0
  br i1 %1217, label %1324, label %1218

; <label>:1218                                    ; preds = %1213
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.CBufRet.f32 %1219, 1
  %1222 = extractvalue %dx.types.CBufRet.f32 %1219, 2
  %1223 = fadd fast float %1220, %143
  %1224 = fadd fast float %1221, %144
  %1225 = fadd fast float %1222, %145
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 0
  %1228 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1229 = icmp eq i32 %64, 65535
  br i1 %1229, label %1324, label %1230

; <label>:1230                                    ; preds = %1218
  %1231 = lshr i32 %64, 1
  %1232 = shl i32 %1231, 2
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = and i32 %64, 1
  %1236 = icmp ne i32 %1235, 0
  %1237 = lshr i32 %1234, 16
  %1238 = and i32 %1234, 65535
  %1239 = select i1 %1236, i32 %1237, i32 %1238
  %1240 = icmp eq i32 %1239, 65535
  br i1 %1240, label %1320, label %1241

; <label>:1241                                    ; preds = %1230
  %1242 = mul nuw nsw i32 %1239, 40
  %1243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  %1245 = extractvalue %dx.types.ResRet.f32 %1243, 1
  %1246 = extractvalue %dx.types.ResRet.f32 %1243, 2
  %1247 = add nuw nsw i32 %1242, 12
  %1248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.ResRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.ResRet.f32 %1248, 2
  %1252 = add nuw nsw i32 %1242, 24
  %1253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.f32 %1253, 0
  %1255 = extractvalue %dx.types.ResRet.f32 %1253, 1
  %1256 = extractvalue %dx.types.ResRet.f32 %1253, 2
  %1257 = add nuw nsw i32 %1242, 36
  %1258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  %1260 = fsub fast float %1223, %1244
  %1261 = fsub fast float %1224, %1245
  %1262 = fsub fast float %1225, %1246
  %1263 = fmul fast float %1259, %1260
  %1264 = fmul fast float %1259, %1261
  %1265 = fmul fast float %1259, %1262
  %1266 = call float @dx.op.unary.f32(i32 27, float %1263)  ; Round_ni(value)
  %1267 = call float @dx.op.unary.f32(i32 27, float %1264)  ; Round_ni(value)
  %1268 = call float @dx.op.unary.f32(i32 27, float %1265)  ; Round_ni(value)
  %1269 = fadd fast float %1266, 5.000000e-01
  %1270 = fadd fast float %1267, 5.000000e-01
  %1271 = fadd fast float %1268, 5.000000e-01
  %1272 = fmul fast float %1269, %1249
  %1273 = fmul fast float %1270, %1250
  %1274 = fmul fast float %1271, %1251
  %1275 = shl i32 %64, 2
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = add i32 %1277, 0
  %1279 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1278, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1280 = call float @dx.op.unary.f32(i32 22, float %1272)  ; Frc(value)
  %1281 = call float @dx.op.unary.f32(i32 22, float %1273)  ; Frc(value)
  %1282 = call float @dx.op.unary.f32(i32 22, float %1274)  ; Frc(value)
  %1283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1279, %dx.types.Handle %59, float %1280, float %1281, float %1282, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  %1285 = extractvalue %dx.types.ResRet.f32 %1283, 1
  %1286 = extractvalue %dx.types.ResRet.f32 %1283, 2
  %1287 = fmul fast float %1284, 1.023000e+03
  %1288 = fmul fast float %1285, 1.023000e+03
  %1289 = fmul fast float %1286, 1.023000e+03
  %1290 = fadd fast float %1287, 5.000000e-01
  %1291 = fadd fast float %1288, 5.000000e-01
  %1292 = fadd fast float %1289, 5.000000e-01
  %1293 = call float @dx.op.unary.f32(i32 27, float %1290)  ; Round_ni(value)
  %1294 = call float @dx.op.unary.f32(i32 27, float %1291)  ; Round_ni(value)
  %1295 = call float @dx.op.unary.f32(i32 27, float %1292)  ; Round_ni(value)
  %1296 = fsub fast float %1263, %1266
  %1297 = fsub fast float %1264, %1267
  %1298 = fsub fast float %1265, %1268
  %1299 = fmul fast float %1296, 7.500000e-01
  %1300 = fmul fast float %1297, 7.500000e-01
  %1301 = fmul fast float %1298, 7.500000e-01
  %1302 = fadd fast float %1266, 1.250000e-01
  %1303 = fadd fast float %1302, %1299
  %1304 = fadd fast float %1303, %1293
  %1305 = fadd fast float %1267, 1.250000e-01
  %1306 = fadd fast float %1305, %1300
  %1307 = fadd fast float %1306, %1294
  %1308 = fadd fast float %1268, 1.250000e-01
  %1309 = fadd fast float %1308, %1301
  %1310 = fadd fast float %1309, %1295
  %1311 = fmul fast float %1304, %1254
  %1312 = fmul fast float %1307, %1255
  %1313 = fmul fast float %1310, %1256
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = add i32 %1315, 0
  %1317 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1316, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1317, %dx.types.Handle %57, float %1311, float %1312, float %1313, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 0
  br label %1320

; <label>:1320                                    ; preds = %1241, %1230
  %1321 = phi float [ %1319, %1241 ], [ -1.000000e+00, %1230 ]
  %1322 = fadd fast float %1321, %1228
  %1323 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  br label %1324

; <label>:1324                                    ; preds = %1320, %1218, %1213
  %1325 = phi float [ 1.000000e+00, %1213 ], [ %1323, %1320 ], [ %1228, %1218 ]
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = and i32 %1327, 256
  %1329 = icmp eq i32 %1328, 0
  br i1 %1329, label %1376, label %1330

; <label>:1330                                    ; preds = %1324
  %1331 = add i32 %65, 236
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = add i32 %1333, 0
  %1335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1334, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1336 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1335, %dx.types.Handle %93, float %1214, float %1215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1337 = extractvalue %dx.types.ResRet.f32 %1336, 0
  %1338 = add i32 %65, 84
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.i32 %1339, 0
  %1341 = shl i32 %1340, 4
  %1342 = and i32 %1341, 32752
  %1343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1342)  ; LegacyF16ToF32(value)
  %1344 = lshr i32 %1340, 7
  %1345 = and i32 %1344, 32752
  %1346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1345)  ; LegacyF16ToF32(value)
  %1347 = fsub fast float 1.000000e+00, %1325
  %1348 = call float @dx.op.binary.f32(i32 35, float %1347, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1349 = bitcast float %1325 to i32
  %1350 = sitofp i32 %1349 to float
  %1351 = fadd fast float %1350, 0xC1CFBF8940000000
  %1352 = fmul fast float %1346, %1351
  %1353 = fadd fast float %1352, 0x41CFBF8940000000
  %1354 = fptosi float %1353 to i32
  %1355 = bitcast i32 %1354 to float
  %1356 = bitcast float %1348 to i32
  %1357 = sitofp i32 %1356 to float
  %1358 = fadd fast float %1357, 0xC1CFBF8940000000
  %1359 = fmul fast float %1358, %1346
  %1360 = fadd fast float %1359, 0x41CFBF8940000000
  %1361 = fptosi float %1360 to i32
  %1362 = bitcast i32 %1361 to float
  %1363 = fmul fast float %1355, %1343
  %1364 = fmul fast float %1362, %1343
  %1365 = fsub fast float %1348, %1363
  %1366 = fadd fast float %1364, %1348
  %1367 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1368 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1369 = fsub fast float %1337, %1367
  %1370 = fsub fast float %1368, %1367
  %1371 = bitcast float %1370 to i32
  %1372 = sub nsw i32 2129859010, %1371
  %1373 = bitcast i32 %1372 to float
  %1374 = fmul fast float %1373, %1369
  %1375 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  br label %1376

; <label>:1376                                    ; preds = %1330, %1324
  %1377 = phi float [ %1375, %1330 ], [ %1325, %1324 ]
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = and i32 %1379, 128
  %1381 = icmp eq i32 %1380, 0
  br i1 %1381, label %1398, label %1382

; <label>:1382                                    ; preds = %1376
  %1383 = add i32 %65, 228
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = add i32 %1385, 0
  %1387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1388 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1387, %dx.types.Handle %93, float %1214, float %1215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = and i32 %1391, 524288
  %1393 = icmp ne i32 %1392, 0
  %1394 = fcmp fast ogt float %1389, 0x3FE0101020000000
  %1395 = select i1 %1394, float 1.000000e+00, float 0.000000e+00
  %1396 = select i1 %1393, float %1395, float %1389
  %1397 = fmul fast float %1396, %1377
  br label %1398

; <label>:1398                                    ; preds = %1382, %1376
  %1399 = phi float [ %1397, %1382 ], [ %1377, %1376 ]
  %1400 = fcmp fast ult float %1399, 0x3F70101020000000
  br i1 %1400, label %2139, label %1401

; <label>:1401                                    ; preds = %1398
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = and i32 %1403, 16
  %1405 = icmp eq i32 %1404, 0
  br i1 %1405, label %1604, label %1406

; <label>:1406                                    ; preds = %1401
  %1407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1130, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.i32 %1407, 0
  %1409 = add i32 %65, 204
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = add i32 %1411, 0
  %1413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1413, %dx.types.Handle %92, float %1214, float %1215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1415 = extractvalue %dx.types.ResRet.f32 %1414, 0
  %1416 = extractvalue %dx.types.ResRet.f32 %1414, 1
  %1417 = extractvalue %dx.types.ResRet.f32 %1414, 2
  %1418 = extractvalue %dx.types.ResRet.f32 %1414, 3
  %1419 = and i32 %1408, 255
  %1420 = uitofp i32 %1419 to float
  %1421 = lshr i32 %1408, 8
  %1422 = and i32 %1421, 255
  %1423 = uitofp i32 %1422 to float
  %1424 = fmul fast float %1418, %1420
  %1425 = fadd fast float %1424, %1423
  %1426 = fmul fast float %1425, 0x3F70101000000000
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = and i32 %1428, 512
  %1430 = icmp eq i32 %1429, 0
  br i1 %1430, label %1439, label %1431

; <label>:1431                                    ; preds = %1406
  %1432 = add i32 %65, 244
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = add i32 %1434, 0
  %1436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1437 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1436, %dx.types.Handle %93, float %1214, float %1215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  br label %1439

; <label>:1439                                    ; preds = %1431, %1406
  %1440 = phi float [ %1438, %1431 ], [ 1.000000e+00, %1406 ]
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = and i32 %1442, 33554432
  %1444 = icmp eq i32 %1443, 0
  br i1 %1444, label %1551, label %1445

; <label>:1445                                    ; preds = %1439
  %1446 = add i32 %65, 144
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1446, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = and i32 %1448, 65535
  %1450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1449)  ; LegacyF16ToF32(value)
  %1451 = lshr i32 %1448, 16
  %1452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1451)  ; LegacyF16ToF32(value)
  %1453 = add i32 %65, 148
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 65535
  %1457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1456)  ; LegacyF16ToF32(value)
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = lshr i32 %1459, 24
  %1461 = uitofp i32 %1460 to float
  %1462 = fmul fast float %1461, 0x3F70101020000000
  %1463 = and i32 %1459, 255
  %1464 = uitofp i32 %1463 to float
  %1465 = fmul fast float %1464, 0x3F70101020000000
  %1466 = lshr i32 %1459, 8
  %1467 = and i32 %1466, 255
  %1468 = uitofp i32 %1467 to float
  %1469 = fmul fast float %1468, 0x3F70101020000000
  %1470 = lshr i32 %1459, 16
  %1471 = and i32 %1470, 255
  %1472 = uitofp i32 %1471 to float
  %1473 = fmul fast float %1472, 0x3F70101020000000
  %1474 = add i32 %65, 140
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = lshr i32 %1476, 24
  %1478 = uitofp i32 %1477 to float
  %1479 = fmul fast float %1478, 0x3F70101020000000
  %1480 = and i32 %1476, 255
  %1481 = uitofp i32 %1480 to float
  %1482 = fmul fast float %1481, 0x3F70101020000000
  %1483 = lshr i32 %1476, 8
  %1484 = and i32 %1483, 255
  %1485 = uitofp i32 %1484 to float
  %1486 = fmul fast float %1485, 0x3F70101020000000
  %1487 = lshr i32 %1476, 16
  %1488 = and i32 %1487, 255
  %1489 = uitofp i32 %1488 to float
  %1490 = fmul fast float %1489, 0x3F70101020000000
  %1491 = bitcast float %1415 to i32
  %1492 = ashr i32 %1491, 1
  %1493 = sub nsw i32 1597463174, %1492
  %1494 = bitcast i32 %1493 to float
  %1495 = fmul fast float %1415, 5.000000e-01
  %1496 = fmul fast float %1494, %1494
  %1497 = fmul fast float %1496, %1495
  %1498 = fsub fast float 1.500000e+00, %1497
  %1499 = fmul fast float %1494, %1415
  %1500 = fmul fast float %1499, %1498
  %1501 = bitcast float %1416 to i32
  %1502 = ashr i32 %1501, 1
  %1503 = sub nsw i32 1597463174, %1502
  %1504 = bitcast i32 %1503 to float
  %1505 = fmul fast float %1416, 5.000000e-01
  %1506 = fmul fast float %1504, %1504
  %1507 = fmul fast float %1506, %1505
  %1508 = fsub fast float 1.500000e+00, %1507
  %1509 = fmul fast float %1504, %1416
  %1510 = fmul fast float %1509, %1508
  %1511 = bitcast float %1417 to i32
  %1512 = ashr i32 %1511, 1
  %1513 = sub nsw i32 1597463174, %1512
  %1514 = bitcast i32 %1513 to float
  %1515 = fmul fast float %1417, 5.000000e-01
  %1516 = fmul fast float %1514, %1514
  %1517 = fmul fast float %1516, %1515
  %1518 = fsub fast float 1.500000e+00, %1517
  %1519 = fmul fast float %1514, %1417
  %1520 = fmul fast float %1519, %1518
  %1521 = fsub fast float %1500, %1482
  %1522 = fsub fast float %1510, %1486
  %1523 = fsub fast float %1520, %1490
  %1524 = fmul fast float %1521, %1450
  %1525 = fmul fast float %1522, %1452
  %1526 = fmul fast float %1523, %1457
  %1527 = fadd fast float %1524, %1465
  %1528 = fadd fast float %1525, %1469
  %1529 = fadd fast float %1526, %1473
  %1530 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1531 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1532 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1533 = fmul fast float %1530, %1530
  %1534 = fmul fast float %1531, %1531
  %1535 = fmul fast float %1532, %1532
  %1536 = fsub fast float %1533, %1415
  %1537 = fsub fast float %1534, %1416
  %1538 = fsub fast float %1535, %1417
  %1539 = fmul fast float %1536, %1440
  %1540 = fmul fast float %1537, %1440
  %1541 = fmul fast float %1538, %1440
  %1542 = fadd fast float %1539, %1415
  %1543 = fadd fast float %1540, %1416
  %1544 = fadd fast float %1541, %1417
  %1545 = fadd fast float %1462, %1426
  %1546 = fsub fast float %1545, %1479
  %1547 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1548 = fsub fast float %1547, %1426
  %1549 = fmul fast float %1548, %1440
  %1550 = fadd fast float %1549, %1426
  br label %1604

; <label>:1551                                    ; preds = %1439
  %1552 = and i32 %1442, 134217728
  %1553 = icmp eq i32 %1552, 0
  br i1 %1553, label %1588, label %1554

; <label>:1554                                    ; preds = %1551
  %1555 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %1556 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %1557 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %1558 = fadd fast float %1555, -5.000000e-01
  %1559 = fadd fast float %1556, -5.000000e-01
  %1560 = fadd fast float %1557, -5.000000e-01
  %1561 = fmul fast float %1558, %1440
  %1562 = fmul fast float %1559, %1440
  %1563 = fmul fast float %1560, %1440
  %1564 = fadd fast float %1561, 5.000000e-01
  %1565 = fadd fast float %1562, 5.000000e-01
  %1566 = fadd fast float %1563, 5.000000e-01
  %1567 = call float @dx.op.unary.f32(i32 24, float %1415)  ; Sqrt(value)
  %1568 = call float @dx.op.unary.f32(i32 24, float %1416)  ; Sqrt(value)
  %1569 = call float @dx.op.unary.f32(i32 24, float %1417)  ; Sqrt(value)
  %1570 = fmul fast float %1564, 2.000000e+00
  %1571 = fsub fast float 1.000000e+00, %1570
  %1572 = fmul fast float %1571, %1567
  %1573 = fadd fast float %1572, %1570
  %1574 = fmul fast float %1573, %1567
  %1575 = fmul fast float %1565, 2.000000e+00
  %1576 = fsub fast float 1.000000e+00, %1575
  %1577 = fmul fast float %1576, %1568
  %1578 = fadd fast float %1577, %1575
  %1579 = fmul fast float %1578, %1568
  %1580 = fmul fast float %1566, 2.000000e+00
  %1581 = fsub fast float 1.000000e+00, %1580
  %1582 = fmul fast float %1581, %1569
  %1583 = fadd fast float %1582, %1580
  %1584 = fmul fast float %1583, %1569
  %1585 = fmul fast float %1574, %1574
  %1586 = fmul fast float %1579, %1579
  %1587 = fmul fast float %1584, %1584
  br label %1604

; <label>:1588                                    ; preds = %1551
  %1589 = fmul fast float %295, %295
  %1590 = fmul fast float %299, %299
  %1591 = fmul fast float %303, %303
  %1592 = fadd fast float %1589, -1.000000e+00
  %1593 = fadd fast float %1590, -1.000000e+00
  %1594 = fadd fast float %1591, -1.000000e+00
  %1595 = fmul fast float %1440, %1592
  %1596 = fmul fast float %1440, %1593
  %1597 = fmul fast float %1440, %1594
  %1598 = fadd fast float %1595, 1.000000e+00
  %1599 = fadd fast float %1596, 1.000000e+00
  %1600 = fadd fast float %1597, 1.000000e+00
  %1601 = fmul fast float %1598, %1415
  %1602 = fmul fast float %1599, %1416
  %1603 = fmul fast float %1600, %1417
  br label %1604

; <label>:1604                                    ; preds = %1588, %1554, %1445, %1401
  %1605 = phi float [ %1550, %1445 ], [ %1426, %1554 ], [ %1426, %1588 ], [ 0x3FA23C0BE0000000, %1401 ]
  %1606 = phi float [ %1542, %1445 ], [ %1585, %1554 ], [ %1601, %1588 ], [ 1.000000e+00, %1401 ]
  %1607 = phi float [ %1543, %1445 ], [ %1586, %1554 ], [ %1602, %1588 ], [ 1.000000e+00, %1401 ]
  %1608 = phi float [ %1544, %1445 ], [ %1587, %1554 ], [ %1603, %1588 ], [ 1.000000e+00, %1401 ]
  %1609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1610 = extractvalue %dx.types.CBufRet.i32 %1609, 1
  %1611 = and i32 %1610, 1
  %1612 = icmp ne i32 %1611, 0
  %1613 = add i32 %65, 196
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = and i32 %1615, 32
  %1617 = icmp ne i32 %1616, 0
  %1618 = and i1 %1612, %1617
  %1619 = select i1 %1618, float 1.000000e+00, float %1606
  %1620 = select i1 %1618, float 0x3FD3333340000000, float %1607
  %1621 = select i1 %1618, float 0x3FD3333340000000, float %1608
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = and i32 %1623, 32
  %1625 = icmp eq i32 %1624, 0
  br i1 %1625, label %1698, label %1626

; <label>:1626                                    ; preds = %1604
  %1627 = add i32 %65, 76
  %1628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1627, i32 undef)  ; BufferLoad(srv,index,wot)
  %1629 = extractvalue %dx.types.ResRet.i32 %1628, 0
  %1630 = add i32 %65, 212
  %1631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1630, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.i32 %1631, 0
  %1633 = add i32 %1632, 0
  %1634 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1633, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1635 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1634, %dx.types.Handle %92, float %1214, float %1215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1636 = extractvalue %dx.types.ResRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.ResRet.f32 %1635, 1
  %1638 = extractvalue %dx.types.ResRet.f32 %1635, 2
  %1639 = extractvalue %dx.types.ResRet.f32 %1635, 3
  %1640 = and i32 %1629, 255
  %1641 = uitofp i32 %1640 to float
  %1642 = lshr i32 %1629, 8
  %1643 = and i32 %1642, 255
  %1644 = uitofp i32 %1643 to float
  %1645 = lshr i32 %1629, 16
  %1646 = and i32 %1645, 255
  %1647 = uitofp i32 %1646 to float
  %1648 = fmul fast float %1647, 0x3F70101000000000
  %1649 = fmul fast float %1636, %1641
  %1650 = fadd fast float %1649, %1644
  %1651 = fmul fast float %1650, 0x3F70101000000000
  %1652 = fadd fast float %1637, -5.000000e-01
  %1653 = fadd fast float %1639, -5.000000e-01
  %1654 = fmul fast float %1652, %1648
  %1655 = fmul fast float %1653, %1648
  %1656 = fadd fast float %1654, 5.000000e-01
  %1657 = fadd fast float %1655, 5.000000e-01
  %1658 = fmul fast float %1656, 2.000000e+00
  %1659 = fadd fast float %1658, -1.000000e+00
  %1660 = fmul fast float %1657, 2.000000e+00
  %1661 = fadd fast float %1660, -1.000000e+00
  %1662 = fadd fast float %1659, %1661
  %1663 = fmul fast float %1662, 5.000000e-01
  %1664 = fsub fast float %1659, %1661
  %1665 = fmul fast float %1664, 5.000000e-01
  %1666 = call float @dx.op.unary.f32(i32 6, float %1663)  ; FAbs(value)
  %1667 = fsub fast float 1.000000e+00, %1666
  %1668 = call float @dx.op.unary.f32(i32 6, float %1665)  ; FAbs(value)
  %1669 = fsub fast float %1667, %1668
  %1670 = call float @dx.op.dot3.f32(i32 55, float %1663, float %1665, float %1669, float %1663, float %1665, float %1669)  ; Dot3(ax,ay,az,bx,by,bz)
  %1671 = call float @dx.op.unary.f32(i32 25, float %1670)  ; Rsqrt(value)
  %1672 = fmul fast float %1663, %1671
  %1673 = fmul fast float %1665, %1671
  %1674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.i32 %1674, 0
  %1676 = and i32 %1675, 67108864
  %1677 = icmp eq i32 %1676, 0
  br i1 %1677, label %1694, label %1678

; <label>:1678                                    ; preds = %1626
  %1679 = add i32 %65, 168
  %1680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1679, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.i32 %1680, 0
  %1682 = and i32 %1681, 65535
  %1683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1682)  ; LegacyF16ToF32(value)
  %1684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1685 = extractvalue %dx.types.ResRet.i32 %1684, 0
  %1686 = and i32 %1685, 65535
  %1687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1686)  ; LegacyF16ToF32(value)
  %1688 = lshr i32 %1681, 16
  %1689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1688)  ; LegacyF16ToF32(value)
  %1690 = fsub fast float %1651, %1689
  %1691 = fmul fast float %1690, %1683
  %1692 = fadd fast float %1691, %1687
  %1693 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  br label %1694

; <label>:1694                                    ; preds = %1678, %1626
  %1695 = phi float [ %1693, %1678 ], [ %1651, %1626 ]
  %1696 = call float @dx.op.dot2.f32(i32 54, float %1672, float %1673, float %66, float %67)  ; Dot2(ax,ay,bx,by)
  %1697 = call float @dx.op.dot2.f32(i32 54, float %1672, float %1673, float %68, float %69)  ; Dot2(ax,ay,bx,by)
  br label %1698

; <label>:1698                                    ; preds = %1694, %1604
  %1699 = phi float [ %1695, %1694 ], [ 0x3FD6666660000000, %1604 ]
  %1700 = phi float [ %1696, %1694 ], [ 0.000000e+00, %1604 ]
  %1701 = phi float [ %1697, %1694 ], [ 0.000000e+00, %1604 ]
  %1702 = phi float [ %1638, %1694 ], [ 1.000000e+00, %1604 ]
  %1703 = add i32 %65, 112
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = lshr i32 %1705, 22
  %1707 = shl nuw nsw i32 %1706, 5
  %1708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1707)  ; LegacyF16ToF32(value)
  %1709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.i32 %1709, 0
  %1711 = and i32 %1710, 64
  %1712 = icmp eq i32 %1711, 0
  br i1 %1712, label %1746, label %1713

; <label>:1713                                    ; preds = %1698
  %1714 = add i32 %65, 220
  %1715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.i32 %1715, 0
  %1717 = add i32 %1716, 0
  %1718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1717, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.i32 %1719, 0
  %1721 = and i32 %1720, 131072
  %1722 = icmp eq i32 %1721, 0
  %1723 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1718, %dx.types.Handle %92, float %1214, float %1215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1724 = extractvalue %dx.types.ResRet.f32 %1723, 0
  %1725 = extractvalue %dx.types.ResRet.f32 %1723, 1
  %1726 = extractvalue %dx.types.ResRet.f32 %1723, 2
  %1727 = fmul fast float %1724, %283
  %1728 = fmul fast float %1725, %286
  %1729 = fmul fast float %1726, %289
  br i1 %1722, label %1736, label %1730

; <label>:1730                                    ; preds = %1713
  %1731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.f32 %1731, 0
  %1733 = fmul fast float %1732, %1727
  %1734 = fmul fast float %1732, %1728
  %1735 = fmul fast float %1732, %1729
  br label %1736

; <label>:1736                                    ; preds = %1730, %1713
  %1737 = phi float [ %1733, %1730 ], [ %1727, %1713 ]
  %1738 = phi float [ %1734, %1730 ], [ %1728, %1713 ]
  %1739 = phi float [ %1735, %1730 ], [ %1729, %1713 ]
  %1740 = fmul fast float %1737, %1708
  %1741 = select i1 %234, float %1740, float %1737
  %1742 = call float @dx.op.dot3.f32(i32 55, float %1741, float %1738, float %1739, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1743 = select i1 %234, float 0.000000e+00, float %1737
  %1744 = select i1 %234, float %1742, float %1738
  %1745 = select i1 %234, float 0.000000e+00, float %1739
  br label %1746

; <label>:1746                                    ; preds = %1736, %1698
  %1747 = phi float [ %1743, %1736 ], [ 0.000000e+00, %1698 ]
  %1748 = phi float [ %1744, %1736 ], [ 0.000000e+00, %1698 ]
  %1749 = phi float [ %1745, %1736 ], [ 0.000000e+00, %1698 ]
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = and i32 %1751, 1024
  %1753 = icmp eq i32 %1752, 0
  br i1 %1753, label %1784, label %1754

; <label>:1754                                    ; preds = %1746
  %1755 = add i32 %65, 104
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = and i32 %1757, 255
  %1759 = uitofp i32 %1758 to float
  %1760 = fmul fast float %1759, 0x3F70101020000000
  %1761 = lshr i32 %1757, 8
  %1762 = and i32 %1761, 255
  %1763 = uitofp i32 %1762 to float
  %1764 = fmul fast float %1763, 0x3F70101020000000
  %1765 = lshr i32 %1757, 16
  %1766 = and i32 %1765, 255
  %1767 = uitofp i32 %1766 to float
  %1768 = fmul fast float %1767, 0x3F70101020000000
  %1769 = fmul fast float %1760, %1760
  %1770 = fmul fast float %1764, %1764
  %1771 = fmul fast float %1768, %1768
  %1772 = add i32 %65, 252
  %1773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1772, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.i32 %1773, 0
  %1775 = add i32 %1774, 0
  %1776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1775, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1777 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1776, %dx.types.Handle %93, float %1214, float %1215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1778 = extractvalue %dx.types.ResRet.f32 %1777, 0
  %1779 = extractvalue %dx.types.ResRet.f32 %1777, 1
  %1780 = extractvalue %dx.types.ResRet.f32 %1777, 2
  %1781 = fmul fast float %1769, %1778
  %1782 = fmul fast float %1770, %1779
  %1783 = fmul fast float %1771, %1780
  br label %1784

; <label>:1784                                    ; preds = %1754, %1746
  %1785 = phi float [ %1781, %1754 ], [ 0.000000e+00, %1746 ]
  %1786 = phi float [ %1782, %1754 ], [ 0.000000e+00, %1746 ]
  %1787 = phi float [ %1783, %1754 ], [ 0.000000e+00, %1746 ]
  %1788 = fcmp fast ogt float %1785, 0.000000e+00
  %1789 = fcmp fast ogt float %1786, 0.000000e+00
  %1790 = fcmp fast ogt float %1787, 0.000000e+00
  %1791 = call float @dx.op.unary.f32(i32 23, float %1785)  ; Log(value)
  %1792 = call float @dx.op.unary.f32(i32 23, float %1786)  ; Log(value)
  %1793 = call float @dx.op.unary.f32(i32 23, float %1787)  ; Log(value)
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = lshr i32 %1795, 7
  %1797 = and i32 %1796, 32752
  %1798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1797)  ; LegacyF16ToF32(value)
  %1799 = fmul fast float %1791, 0xBFE62E4300000000
  %1800 = fmul fast float %1799, %1798
  %1801 = fmul fast float %1792, 0xBFE62E4300000000
  %1802 = fmul fast float %1801, %1798
  %1803 = fmul fast float %1793, 0xBFE62E4300000000
  %1804 = fmul fast float %1803, %1798
  %1805 = select i1 %1788, float %1800, float 1.270000e+02
  %1806 = select i1 %1789, float %1802, float 1.270000e+02
  %1807 = select i1 %1790, float %1804, float 1.270000e+02
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = and i32 %1809, 10240
  %1811 = icmp eq i32 %1810, 0
  br i1 %1811, label %1856, label %1812

; <label>:1812                                    ; preds = %1784
  %1813 = add i32 %65, 260
  %1814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.i32 %1814, 0
  %1816 = add i32 %1815, 0
  %1817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1816, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1818 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1817, %dx.types.Handle %93, float %1214, float %1215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1819 = extractvalue %dx.types.ResRet.f32 %1818, 1
  %1820 = extractvalue %dx.types.ResRet.f32 %1818, 3
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = and i32 %1822, 1048576
  %1824 = icmp ne i32 %1823, 0
  %1825 = and i32 %1822, 8192
  %1826 = icmp eq i32 %1825, 0
  br i1 %1826, label %1842, label %1827

; <label>:1827                                    ; preds = %1812
  %1828 = extractvalue %dx.types.ResRet.f32 %1818, 2
  %1829 = select i1 %1824, float %1828, float %1819
  %1830 = extractvalue %dx.types.ResRet.f32 %1818, 0
  %1831 = select i1 %1824, float %1830, float %1819
  %1832 = add i32 %65, 80
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = lshr i32 %1834, 16
  %1836 = and i32 %1835, 255
  %1837 = uitofp i32 %1836 to float
  %1838 = fmul fast float %1837, 0x3F80101020000000
  %1839 = fmul fast float %1838, %1831
  %1840 = fmul fast float %1838, %1819
  %1841 = fmul fast float %1838, %1829
  br label %1842

; <label>:1842                                    ; preds = %1827, %1812
  %1843 = phi float [ %1839, %1827 ], [ 0.000000e+00, %1812 ]
  %1844 = phi float [ %1840, %1827 ], [ 0.000000e+00, %1812 ]
  %1845 = phi float [ %1841, %1827 ], [ 0.000000e+00, %1812 ]
  %1846 = and i32 %1822, 2048
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1856, label %1848

; <label>:1848                                    ; preds = %1842
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = shl i32 %1850, 4
  %1852 = and i32 %1851, 32752
  %1853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1852)  ; LegacyF16ToF32(value)
  %1854 = fmul fast float %1853, %1820
  %1855 = call float @dx.op.binary.f32(i32 35, float %1854, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1856

; <label>:1856                                    ; preds = %1848, %1842, %1784
  %1857 = phi float [ %1843, %1848 ], [ %1843, %1842 ], [ 0.000000e+00, %1784 ]
  %1858 = phi float [ %1844, %1848 ], [ %1844, %1842 ], [ 0.000000e+00, %1784 ]
  %1859 = phi float [ %1845, %1848 ], [ %1845, %1842 ], [ 0.000000e+00, %1784 ]
  %1860 = phi float [ %1855, %1848 ], [ 0x3F70101020000000, %1842 ], [ 0x3F70101020000000, %1784 ]
  %1861 = add i32 %65, 80
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = and i32 %1863, 255
  %1865 = uitofp i32 %1864 to float
  %1866 = lshr i32 %1863, 8
  %1867 = and i32 %1866, 255
  %1868 = uitofp i32 %1867 to float
  %1869 = call float @dx.op.dot3.f32(i32 55, float %1619, float %1620, float %1621, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1870 = fmul fast float %1868, %1869
  %1871 = fadd fast float %1870, %1865
  %1872 = fmul fast float %1871, 0x3F70101020000000
  %1873 = call float @dx.op.unary.f32(i32 7, float %1872)  ; Saturate(value)
  br i1 %1114, label %1874, label %1909

; <label>:1874                                    ; preds = %1856
  %1875 = fmul fast float %1860, 2.000000e+00
  %1876 = fcmp fast olt float %1805, 1.270000e+02
  %1877 = fcmp fast olt float %1806, 1.270000e+02
  %1878 = fcmp fast olt float %1807, 1.270000e+02
  %1879 = fmul fast float %1805, 0xBFF7154760000000
  %1880 = fmul fast float %1879, %1875
  %1881 = fmul fast float %1806, 0xBFF7154760000000
  %1882 = fmul fast float %1881, %1875
  %1883 = fmul fast float %1807, 0xBFF7154760000000
  %1884 = fmul fast float %1883, %1875
  %1885 = call float @dx.op.unary.f32(i32 21, float %1880)  ; Exp(value)
  %1886 = call float @dx.op.unary.f32(i32 21, float %1882)  ; Exp(value)
  %1887 = call float @dx.op.unary.f32(i32 21, float %1884)  ; Exp(value)
  %1888 = call float @dx.op.unary.f32(i32 7, float %1885)  ; Saturate(value)
  %1889 = call float @dx.op.unary.f32(i32 7, float %1886)  ; Saturate(value)
  %1890 = call float @dx.op.unary.f32(i32 7, float %1887)  ; Saturate(value)
  %1891 = fadd fast float %1888, -1.000000e+00
  %1892 = select i1 %1876, float %1891, float -1.000000e+00
  %1893 = fadd fast float %1889, -1.000000e+00
  %1894 = select i1 %1877, float %1893, float -1.000000e+00
  %1895 = fadd fast float %1890, -1.000000e+00
  %1896 = select i1 %1878, float %1895, float -1.000000e+00
  %1897 = fmul fast float %1892, %1399
  %1898 = fmul fast float %1894, %1399
  %1899 = fmul fast float %1896, %1399
  %1900 = fadd fast float %1897, 1.000000e+00
  %1901 = fadd fast float %1898, 1.000000e+00
  %1902 = fadd fast float %1899, 1.000000e+00
  %1903 = fmul fast float %1900, %1099
  %1904 = fmul fast float %1901, %1100
  %1905 = fmul fast float %1902, %1101
  %1906 = fmul fast float %1900, %1096
  %1907 = fmul fast float %1901, %1097
  %1908 = fmul fast float %1902, %1098
  br label %1909

; <label>:1909                                    ; preds = %1874, %1856
  %1910 = phi float [ %1906, %1874 ], [ %1096, %1856 ]
  %1911 = phi float [ %1907, %1874 ], [ %1097, %1856 ]
  %1912 = phi float [ %1908, %1874 ], [ %1098, %1856 ]
  %1913 = phi float [ %1903, %1874 ], [ %1099, %1856 ]
  %1914 = phi float [ %1904, %1874 ], [ %1100, %1856 ]
  %1915 = phi float [ %1905, %1874 ], [ %1101, %1856 ]
  %1916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.i32 %1916, 0
  %1918 = and i32 %1917, 3
  %1919 = icmp eq i32 %1918, 3
  br i1 %1919, label %1998, label %1920

; <label>:1920                                    ; preds = %1909
  %1921 = and i32 %1917, 16
  %1922 = icmp ne i32 %1921, 0
  %1923 = select i1 %1922, float %1399, float 0.000000e+00
  %1924 = icmp eq i32 %1918, 0
  br i1 %1924, label %1925, label %1953

; <label>:1925                                    ; preds = %1920
  %1926 = and i32 %1917, 64
  %1927 = icmp ne i32 %1926, 0
  %1928 = select i1 %1927, float %1399, float 0.000000e+00
  %1929 = fsub fast float %1619, %1913
  %1930 = fsub fast float %1620, %1914
  %1931 = fsub fast float %1621, %1915
  %1932 = fmul fast float %1923, %1929
  %1933 = fmul fast float %1923, %1930
  %1934 = fmul fast float %1923, %1931
  %1935 = fadd fast float %1932, %1913
  %1936 = fadd fast float %1933, %1914
  %1937 = fadd fast float %1934, %1915
  %1938 = fsub fast float %1605, %1108
  %1939 = fmul fast float %1923, %1938
  %1940 = fadd fast float %1939, %1108
  %1941 = fsub fast float %1747, %1910
  %1942 = fsub fast float %1748, %1911
  %1943 = fsub fast float %1749, %1912
  %1944 = fmul fast float %1928, %1941
  %1945 = fmul fast float %1928, %1942
  %1946 = fmul fast float %1928, %1943
  %1947 = fadd fast float %1944, %1910
  %1948 = fadd fast float %1945, %1911
  %1949 = fadd fast float %1946, %1912
  %1950 = fsub fast float %1873, %1113
  %1951 = fmul fast float %1923, %1950
  %1952 = fadd fast float %1951, %1113
  br label %1998

; <label>:1953                                    ; preds = %1920
  %1954 = icmp eq i32 %1918, 1
  br i1 %1954, label %1955, label %1968

; <label>:1955                                    ; preds = %1953
  %1956 = fadd fast float %1619, -1.000000e+00
  %1957 = fadd fast float %1620, -1.000000e+00
  %1958 = fadd fast float %1621, -1.000000e+00
  %1959 = fmul fast float %1923, %1956
  %1960 = fmul fast float %1923, %1957
  %1961 = fmul fast float %1923, %1958
  %1962 = fadd fast float %1959, 1.000000e+00
  %1963 = fadd fast float %1960, 1.000000e+00
  %1964 = fadd fast float %1961, 1.000000e+00
  %1965 = fmul fast float %1962, %1913
  %1966 = fmul fast float %1963, %1914
  %1967 = fmul fast float %1964, %1915
  br label %1998

; <label>:1968                                    ; preds = %1953
  %1969 = icmp eq i32 %1918, 2
  br i1 %1969, label %1970, label %1998

; <label>:1970                                    ; preds = %1968
  %1971 = call float @dx.op.unary.f32(i32 24, float %1619)  ; Sqrt(value)
  %1972 = call float @dx.op.unary.f32(i32 24, float %1620)  ; Sqrt(value)
  %1973 = call float @dx.op.unary.f32(i32 24, float %1621)  ; Sqrt(value)
  %1974 = fadd fast float %1971, -5.000000e-01
  %1975 = fadd fast float %1972, -5.000000e-01
  %1976 = fadd fast float %1973, -5.000000e-01
  %1977 = fmul fast float %1974, %1923
  %1978 = fmul fast float %1975, %1923
  %1979 = fmul fast float %1976, %1923
  %1980 = fadd fast float %1977, 5.000000e-01
  %1981 = fadd fast float %1978, 5.000000e-01
  %1982 = fadd fast float %1979, 5.000000e-01
  %1983 = fmul fast float %1980, 2.000000e+00
  %1984 = fsub fast float 1.000000e+00, %1983
  %1985 = fmul fast float %1984, %1913
  %1986 = fadd fast float %1985, %1983
  %1987 = fmul fast float %1986, %1913
  %1988 = fmul fast float %1981, 2.000000e+00
  %1989 = fsub fast float 1.000000e+00, %1988
  %1990 = fmul fast float %1989, %1914
  %1991 = fadd fast float %1990, %1988
  %1992 = fmul fast float %1991, %1914
  %1993 = fmul fast float %1982, 2.000000e+00
  %1994 = fsub fast float 1.000000e+00, %1993
  %1995 = fmul fast float %1994, %1915
  %1996 = fadd fast float %1995, %1993
  %1997 = fmul fast float %1996, %1915
  br label %1998

; <label>:1998                                    ; preds = %1970, %1968, %1955, %1925, %1909
  %1999 = phi float [ %1910, %1909 ], [ %1910, %1970 ], [ %1910, %1968 ], [ %1910, %1955 ], [ %1947, %1925 ]
  %2000 = phi float [ %1911, %1909 ], [ %1911, %1970 ], [ %1911, %1968 ], [ %1911, %1955 ], [ %1948, %1925 ]
  %2001 = phi float [ %1912, %1909 ], [ %1912, %1970 ], [ %1912, %1968 ], [ %1912, %1955 ], [ %1949, %1925 ]
  %2002 = phi float [ %1913, %1909 ], [ %1987, %1970 ], [ %1913, %1968 ], [ %1965, %1955 ], [ %1935, %1925 ]
  %2003 = phi float [ %1914, %1909 ], [ %1992, %1970 ], [ %1914, %1968 ], [ %1966, %1955 ], [ %1936, %1925 ]
  %2004 = phi float [ %1915, %1909 ], [ %1997, %1970 ], [ %1915, %1968 ], [ %1967, %1955 ], [ %1937, %1925 ]
  %2005 = phi float [ %1108, %1909 ], [ %1108, %1970 ], [ %1108, %1968 ], [ %1108, %1955 ], [ %1940, %1925 ]
  %2006 = phi float [ %1113, %1909 ], [ %1113, %1970 ], [ %1113, %1968 ], [ %1113, %1955 ], [ %1952, %1925 ]
  %2007 = and i32 %1917, 12
  %2008 = icmp eq i32 %2007, 12
  br i1 %2008, label %2139, label %2009

; <label>:2009                                    ; preds = %1998
  %2010 = and i32 %1917, 2097184
  %2011 = icmp eq i32 %2010, 2097184
  %2012 = select i1 %2011, float %1399, float 0.000000e+00
  %2013 = and i32 %1917, 4194336
  %2014 = icmp eq i32 %2013, 4194336
  %2015 = select i1 %2014, float %1399, float 0.000000e+00
  %2016 = and i32 %1917, 8388640
  %2017 = icmp eq i32 %2016, 8388640
  %2018 = select i1 %2017, float %1399, float 0.000000e+00
  %2019 = and i32 %1917, 1024
  %2020 = icmp ne i32 %2019, 0
  %2021 = select i1 %2020, float %1399, float 0.000000e+00
  %2022 = and i32 %1917, 2048
  %2023 = icmp ne i32 %2022, 0
  %2024 = select i1 %2023, float %1399, float 0.000000e+00
  %2025 = and i32 %1917, 8192
  %2026 = icmp ne i32 %2025, 0
  %2027 = select i1 %2026, float %1399, float 0.000000e+00
  %2028 = icmp eq i32 %2007, 0
  br i1 %2028, label %2029, label %2063

; <label>:2029                                    ; preds = %2009
  %2030 = fsub fast float %1700, %1094
  %2031 = fsub fast float %1701, %1095
  %2032 = fmul fast float %2012, %2030
  %2033 = fmul fast float %2012, %2031
  %2034 = fadd fast float %2032, %1094
  %2035 = fadd fast float %2033, %1095
  %2036 = fsub fast float %1702, %1111
  %2037 = fmul fast float %2015, %2036
  %2038 = fadd fast float %2037, %1111
  %2039 = fsub fast float %1699, %1110
  %2040 = fmul fast float %2018, %2039
  %2041 = fadd fast float %2040, %1110
  %2042 = fsub fast float %1805, %1105
  %2043 = fsub fast float %1806, %1106
  %2044 = fsub fast float %1807, %1107
  %2045 = fmul fast float %2021, %2042
  %2046 = fmul fast float %2021, %2043
  %2047 = fmul fast float %2021, %2044
  %2048 = fadd fast float %2045, %1105
  %2049 = fadd fast float %2046, %1106
  %2050 = fadd fast float %2047, %1107
  %2051 = fsub fast float %1860, %1112
  %2052 = fmul fast float %2024, %2051
  %2053 = fadd fast float %2052, %1112
  %2054 = fsub fast float %1857, %1102
  %2055 = fsub fast float %1858, %1103
  %2056 = fsub fast float %1859, %1104
  %2057 = fmul fast float %2027, %2054
  %2058 = fmul fast float %2027, %2055
  %2059 = fmul fast float %2027, %2056
  %2060 = fadd fast float %2057, %1102
  %2061 = fadd fast float %2058, %1103
  %2062 = fadd fast float %2059, %1104
  br label %2139

; <label>:2063                                    ; preds = %2009
  %2064 = icmp eq i32 %2007, 4
  br i1 %2064, label %2065, label %2111

; <label>:2065                                    ; preds = %2063
  %2066 = fmul fast float %2012, %1700
  %2067 = fmul fast float %2012, %1701
  %2068 = fadd fast float %2066, %1094
  %2069 = fadd fast float %2067, %1095
  %2070 = call float @dx.op.binary.f32(i32 36, float %1111, float %1702)  ; FMin(a,b)
  %2071 = fsub fast float %2070, %1111
  %2072 = fmul fast float %2071, %2015
  %2073 = fadd fast float %2072, %1111
  %2074 = fadd fast float %1699, %1110
  %2075 = fmul fast float %2074, 0x3FF337FAE0000000
  %2076 = fmul fast float %1110, %1110
  %2077 = fmul fast float %1699, %1699
  %2078 = fadd fast float %2077, %2076
  %2079 = fmul fast float %2078, 0x3FE5152B00000000
  %2080 = fmul fast float %1110, 0xBFCC1F85E0000000
  %2081 = fmul fast float %2080, %1699
  %2082 = fadd fast float %2081, 0xBFE1363700000000
  %2083 = fadd fast float %2082, %2075
  %2084 = fsub fast float %2083, %2079
  %2085 = fmul fast float %2074, 0x3FBA6F0D00000000
  %2086 = fmul fast float %2078, 0x3FD0432880000000
  %2087 = fmul fast float %1110, 0xBFEF110800000000
  %2088 = fmul fast float %2087, %1699
  %2089 = fadd fast float %2088, 1.000000e+00
  %2090 = fsub fast float %2089, %2085
  %2091 = fadd fast float %2090, %2086
  %2092 = fdiv fast float %2084, %2091
  %2093 = call float @dx.op.unary.f32(i32 7, float %2092)  ; Saturate(value)
  %2094 = fsub fast float %2093, %1110
  %2095 = fmul fast float %2094, %2018
  %2096 = fadd fast float %2095, %1110
  %2097 = fmul fast float %2021, %1805
  %2098 = fmul fast float %2021, %1806
  %2099 = fmul fast float %2021, %1807
  %2100 = fadd fast float %2097, %1105
  %2101 = fadd fast float %2098, %1106
  %2102 = fadd fast float %2099, %1107
  %2103 = fmul fast float %2024, %1860
  %2104 = fadd fast float %2103, %1112
  %2105 = fmul fast float %2027, %1857
  %2106 = fmul fast float %2027, %1858
  %2107 = fmul fast float %2027, %1859
  %2108 = fadd fast float %2105, %1102
  %2109 = fadd fast float %2106, %1103
  %2110 = fadd fast float %2107, %1104
  br label %2139

; <label>:2111                                    ; preds = %2063
  %2112 = icmp eq i32 %2007, 8
  br i1 %2112, label %2113, label %2139

; <label>:2113                                    ; preds = %2111
  %2114 = fmul fast float %2012, %1700
  %2115 = fmul fast float %2012, %1701
  %2116 = fadd fast float %2114, %1094
  %2117 = fadd fast float %2115, %1095
  %2118 = call float @dx.op.binary.f32(i32 36, float %1111, float %1702)  ; FMin(a,b)
  %2119 = fsub fast float %2118, %1111
  %2120 = fmul fast float %2119, %2015
  %2121 = fadd fast float %2120, %1111
  %2122 = fsub fast float %1699, %1110
  %2123 = fmul fast float %2018, %2122
  %2124 = fadd fast float %2123, %1110
  %2125 = fmul fast float %2021, %1805
  %2126 = fmul fast float %2021, %1806
  %2127 = fmul fast float %2021, %1807
  %2128 = fadd fast float %2125, %1105
  %2129 = fadd fast float %2126, %1106
  %2130 = fadd fast float %2127, %1107
  %2131 = fmul fast float %2024, %1860
  %2132 = fadd fast float %2131, %1112
  %2133 = fmul fast float %2027, %1857
  %2134 = fmul fast float %2027, %1858
  %2135 = fmul fast float %2027, %1859
  %2136 = fadd fast float %2133, %1102
  %2137 = fadd fast float %2134, %1103
  %2138 = fadd fast float %2135, %1104
  br label %2139

; <label>:2139                                    ; preds = %2113, %2111, %2065, %2029, %1998, %1398, %1093
  %2140 = phi float [ %1094, %1998 ], [ %1094, %1398 ], [ %1094, %1093 ], [ %2034, %2029 ], [ %2068, %2065 ], [ %1094, %2111 ], [ %2116, %2113 ]
  %2141 = phi float [ %1095, %1998 ], [ %1095, %1398 ], [ %1095, %1093 ], [ %2035, %2029 ], [ %2069, %2065 ], [ %1095, %2111 ], [ %2117, %2113 ]
  %2142 = phi float [ %1999, %1998 ], [ %1096, %1398 ], [ %1096, %1093 ], [ %1999, %2029 ], [ %1999, %2065 ], [ %1999, %2111 ], [ %1999, %2113 ]
  %2143 = phi float [ %2000, %1998 ], [ %1097, %1398 ], [ %1097, %1093 ], [ %2000, %2029 ], [ %2000, %2065 ], [ %2000, %2111 ], [ %2000, %2113 ]
  %2144 = phi float [ %2001, %1998 ], [ %1098, %1398 ], [ %1098, %1093 ], [ %2001, %2029 ], [ %2001, %2065 ], [ %2001, %2111 ], [ %2001, %2113 ]
  %2145 = phi float [ %2002, %1998 ], [ %1099, %1398 ], [ %1099, %1093 ], [ %2002, %2029 ], [ %2002, %2065 ], [ %2002, %2111 ], [ %2002, %2113 ]
  %2146 = phi float [ %2003, %1998 ], [ %1100, %1398 ], [ %1100, %1093 ], [ %2003, %2029 ], [ %2003, %2065 ], [ %2003, %2111 ], [ %2003, %2113 ]
  %2147 = phi float [ %2004, %1998 ], [ %1101, %1398 ], [ %1101, %1093 ], [ %2004, %2029 ], [ %2004, %2065 ], [ %2004, %2111 ], [ %2004, %2113 ]
  %2148 = phi float [ %1102, %1998 ], [ %1102, %1398 ], [ %1102, %1093 ], [ %2060, %2029 ], [ %2108, %2065 ], [ %1102, %2111 ], [ %2136, %2113 ]
  %2149 = phi float [ %1103, %1998 ], [ %1103, %1398 ], [ %1103, %1093 ], [ %2061, %2029 ], [ %2109, %2065 ], [ %1103, %2111 ], [ %2137, %2113 ]
  %2150 = phi float [ %1104, %1998 ], [ %1104, %1398 ], [ %1104, %1093 ], [ %2062, %2029 ], [ %2110, %2065 ], [ %1104, %2111 ], [ %2138, %2113 ]
  %2151 = phi float [ %1105, %1998 ], [ %1105, %1398 ], [ %1105, %1093 ], [ %2048, %2029 ], [ %2100, %2065 ], [ %1105, %2111 ], [ %2128, %2113 ]
  %2152 = phi float [ %1106, %1998 ], [ %1106, %1398 ], [ %1106, %1093 ], [ %2049, %2029 ], [ %2101, %2065 ], [ %1106, %2111 ], [ %2129, %2113 ]
  %2153 = phi float [ %1107, %1998 ], [ %1107, %1398 ], [ %1107, %1093 ], [ %2050, %2029 ], [ %2102, %2065 ], [ %1107, %2111 ], [ %2130, %2113 ]
  %2154 = phi float [ %2005, %1998 ], [ %1108, %1398 ], [ %1108, %1093 ], [ %2005, %2029 ], [ %2005, %2065 ], [ %2005, %2111 ], [ %2005, %2113 ]
  %2155 = phi float [ %1110, %1998 ], [ %1110, %1398 ], [ %1110, %1093 ], [ %2041, %2029 ], [ %2096, %2065 ], [ %1110, %2111 ], [ %2124, %2113 ]
  %2156 = phi float [ %1111, %1998 ], [ %1111, %1398 ], [ %1111, %1093 ], [ %2038, %2029 ], [ %2073, %2065 ], [ %1111, %2111 ], [ %2121, %2113 ]
  %2157 = phi float [ %1112, %1998 ], [ %1112, %1398 ], [ %1112, %1093 ], [ %2053, %2029 ], [ %2104, %2065 ], [ %1112, %2111 ], [ %2132, %2113 ]
  %2158 = phi float [ %2006, %1998 ], [ %1113, %1398 ], [ %1113, %1093 ], [ %2006, %2029 ], [ %2006, %2065 ], [ %2006, %2111 ], [ %2006, %2113 ]
  %2159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2160 = extractvalue %dx.types.CBufRet.f32 %2159, 0
  %2161 = call float @dx.op.dot2.f32(i32 54, float %2140, float %2141, float %2140, float %2141)  ; Dot2(ax,ay,bx,by)
  %2162 = fmul fast float %2161, 0x3FE3333340000000
  %2163 = fsub fast float 1.000000e+00, %2162
  %2164 = call float @dx.op.dot3.f32(i32 55, float %2140, float %2141, float %2163, float %2140, float %2141, float %2163)  ; Dot3(ax,ay,az,bx,by,bz)
  %2165 = call float @dx.op.unary.f32(i32 25, float %2164)  ; Rsqrt(value)
  %2166 = fmul fast float %2165, %2140
  %2167 = fmul fast float %2165, %2141
  %2168 = fmul fast float %2163, %2165
  %2169 = fmul fast float %2168, %74
  %2170 = fmul fast float %2168, %75
  %2171 = fmul fast float %2168, %76
  %2172 = fmul fast float %2166, %70
  %2173 = fmul fast float %2166, %71
  %2174 = fmul fast float %2166, %72
  %2175 = fadd fast float %2169, %2172
  %2176 = fadd fast float %2170, %2173
  %2177 = fadd fast float %2171, %2174
  %2178 = fmul fast float %2167, %107
  %2179 = fmul fast float %2167, %108
  %2180 = fmul fast float %2167, %109
  %2181 = fadd fast float %2175, %2178
  %2182 = fadd fast float %2176, %2179
  %2183 = fadd fast float %2177, %2180
  %2184 = call float @dx.op.dot3.f32(i32 55, float %2181, float %2182, float %2183, float %2181, float %2182, float %2183)  ; Dot3(ax,ay,az,bx,by,bz)
  %2185 = call float @dx.op.unary.f32(i32 25, float %2184)  ; Rsqrt(value)
  %2186 = fmul fast float %2181, %2185
  %2187 = fmul fast float %2182, %2185
  %2188 = fmul fast float %2183, %2185
  %2189 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %2190 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %2191 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %2192 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %2193 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %2194 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %2195 = fadd fast float %2189, %143
  %2196 = fadd fast float %2190, %144
  %2197 = fadd fast float %2191, %145
  %2198 = fadd fast float %2192, %143
  %2199 = fadd fast float %2193, %144
  %2200 = fadd fast float %2194, %145
  %2201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.f32 %2201, 0
  %2203 = extractvalue %dx.types.CBufRet.f32 %2201, 1
  %2204 = extractvalue %dx.types.CBufRet.f32 %2201, 2
  %2205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2206 = extractvalue %dx.types.CBufRet.f32 %2205, 2
  %2207 = extractvalue %dx.types.CBufRet.f32 %2205, 3
  %2208 = fmul fast float %2202, %96
  %2209 = fmul fast float %2208, %2206
  %2210 = fmul fast float %2203, %97
  %2211 = fmul fast float %2210, %2207
  %2212 = fptoui float %2209 to i32
  %2213 = fptoui float %2211 to i32
  %2214 = fadd fast float %2202, -1.000000e+00
  %2215 = fadd fast float %2203, -1.000000e+00
  %2216 = fptoui float %2214 to i32
  %2217 = fptoui float %2215 to i32
  %2218 = call i32 @dx.op.binary.i32(i32 40, i32 %2212, i32 %2216)  ; UMin(a,b)
  %2219 = call i32 @dx.op.binary.i32(i32 40, i32 %2213, i32 %2217)  ; UMin(a,b)
  %2220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.f32 %2220, 2
  %2222 = extractvalue %dx.types.CBufRet.f32 %2220, 3
  %2223 = fmul fast float %2221, %87
  %2224 = fsub fast float %2223, %2222
  %2225 = fadd fast float %2204, -1.000000e+00
  %2226 = call float @dx.op.binary.f32(i32 36, float %2224, float %2225)  ; FMin(a,b)
  %2227 = fptoui float %2226 to i32
  %2228 = fptoui float %2202 to i32
  %2229 = fptoui float %2203 to i32
  %2230 = mul i32 %2227, %2229
  %2231 = add i32 %2230, %2219
  %2232 = mul i32 %2231, %2228
  %2233 = add i32 %2232, %2218
  %2234 = shl i32 %2233, 2
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2234, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 1023
  %2238 = lshr i32 %2236, 10
  %2239 = icmp eq i32 %2237, 0
  br i1 %2239, label %2743, label %2240

; <label>:2240                                    ; preds = %2139
  %2241 = and i32 %2236, 1023
  br label %2242

; <label>:2242                                    ; preds = %2374, %2240
  %2243 = phi i32 [ %2324, %2374 ], [ 0, %2240 ]
  %2244 = phi float [ %2375, %2374 ], [ 0.000000e+00, %2240 ]
  %2245 = phi float [ %2376, %2374 ], [ %2160, %2240 ]
  %2246 = phi float [ %2377, %2374 ], [ %2158, %2240 ]
  %2247 = phi float [ %2378, %2374 ], [ %2151, %2240 ]
  %2248 = phi float [ %2379, %2374 ], [ %2152, %2240 ]
  %2249 = phi float [ %2380, %2374 ], [ %2153, %2240 ]
  %2250 = phi float [ %2381, %2374 ], [ 0.000000e+00, %2240 ]
  %2251 = phi float [ %2382, %2374 ], [ 0.000000e+00, %2240 ]
  %2252 = phi float [ %2383, %2374 ], [ %2148, %2240 ]
  %2253 = phi float [ %2384, %2374 ], [ %2149, %2240 ]
  %2254 = phi float [ %2385, %2374 ], [ %2150, %2240 ]
  %2255 = phi float [ %2386, %2374 ], [ %2142, %2240 ]
  %2256 = phi float [ %2387, %2374 ], [ %2143, %2240 ]
  %2257 = phi float [ %2388, %2374 ], [ %2144, %2240 ]
  %2258 = phi float [ %2389, %2374 ], [ %2186, %2240 ]
  %2259 = phi float [ %2390, %2374 ], [ %2187, %2240 ]
  %2260 = phi float [ %2391, %2374 ], [ %2188, %2240 ]
  %2261 = phi float [ %2392, %2374 ], [ %2156, %2240 ]
  %2262 = phi float [ %2393, %2374 ], [ %2155, %2240 ]
  %2263 = phi float [ %2394, %2374 ], [ 0.000000e+00, %2240 ]
  %2264 = phi float [ %2395, %2374 ], [ %2154, %2240 ]
  %2265 = phi float [ %2396, %2374 ], [ %2145, %2240 ]
  %2266 = phi float [ %2397, %2374 ], [ %2146, %2240 ]
  %2267 = phi float [ %2398, %2374 ], [ %2147, %2240 ]
  %2268 = add nuw nsw i32 %2243, %2238
  %2269 = shl i32 %2268, 2
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = shl i32 %2271, 8
  %2273 = or i32 %2272, 48
  %2274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.f32 %2274, 0
  %2276 = extractvalue %dx.types.ResRet.f32 %2274, 1
  %2277 = extractvalue %dx.types.ResRet.f32 %2274, 2
  %2278 = extractvalue %dx.types.ResRet.f32 %2274, 3
  %2279 = or i32 %2272, 64
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = extractvalue %dx.types.ResRet.i32 %2280, 1
  %2283 = or i32 %2272, 80
  %2284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.f32 %2284, 2
  %2286 = extractvalue %dx.types.ResRet.f32 %2284, 3
  %2287 = or i32 %2272, 96
  %2288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2287, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.f32 %2288, 0
  %2290 = extractvalue %dx.types.ResRet.f32 %2288, 1
  %2291 = extractvalue %dx.types.ResRet.f32 %2288, 2
  %2292 = extractvalue %dx.types.ResRet.f32 %2288, 3
  %2293 = or i32 %2272, 112
  %2294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2293, i32 undef)  ; BufferLoad(srv,index,wot)
  %2295 = extractvalue %dx.types.ResRet.f32 %2294, 2
  %2296 = or i32 %2272, 128
  %2297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.f32 %2297, 0
  %2299 = extractvalue %dx.types.ResRet.f32 %2297, 1
  %2300 = extractvalue %dx.types.ResRet.f32 %2297, 2
  %2301 = extractvalue %dx.types.ResRet.f32 %2297, 3
  %2302 = or i32 %2272, 144
  %2303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.f32 %2303, 0
  %2305 = extractvalue %dx.types.ResRet.f32 %2303, 1
  %2306 = extractvalue %dx.types.ResRet.f32 %2303, 2
  %2307 = extractvalue %dx.types.ResRet.f32 %2303, 3
  %2308 = or i32 %2272, 160
  %2309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.ResRet.f32 %2309, 1
  %2312 = extractvalue %dx.types.ResRet.f32 %2309, 2
  %2313 = extractvalue %dx.types.ResRet.f32 %2309, 3
  %2314 = or i32 %2272, 192
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = or i32 %2272, 208
  %2318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.f32 %2318, 0
  %2320 = or i32 %2272, 248
  %2321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.f32 %2321, 0
  %2323 = extractvalue %dx.types.ResRet.f32 %2321, 1
  %2324 = add nuw nsw i32 %2243, 1
  %2325 = bitcast float %2278 to i32
  %2326 = and i32 %2325, 2560
  %2327 = icmp eq i32 %2326, 0
  %2328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.f32 %2328, 0
  %2330 = extractvalue %dx.types.ResRet.f32 %2328, 1
  %2331 = extractvalue %dx.types.ResRet.f32 %2328, 2
  %2332 = extractvalue %dx.types.ResRet.f32 %2328, 3
  %2333 = call float @dx.op.dot4.f32(i32 56, float %2329, float %2330, float %2331, float %2332, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2334 = or i32 %2272, 16
  %2335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.f32 %2335, 0
  %2337 = extractvalue %dx.types.ResRet.f32 %2335, 1
  %2338 = extractvalue %dx.types.ResRet.f32 %2335, 2
  %2339 = extractvalue %dx.types.ResRet.f32 %2335, 3
  %2340 = call float @dx.op.dot4.f32(i32 56, float %2336, float %2337, float %2338, float %2339, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2341 = or i32 %2272, 32
  %2342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.f32 %2342, 0
  %2344 = extractvalue %dx.types.ResRet.f32 %2342, 1
  %2345 = extractvalue %dx.types.ResRet.f32 %2342, 2
  %2346 = extractvalue %dx.types.ResRet.f32 %2342, 3
  %2347 = call float @dx.op.dot4.f32(i32 56, float %2343, float %2344, float %2345, float %2346, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2348 = call float @dx.op.unary.f32(i32 27, float %2333)  ; Round_ni(value)
  %2349 = call float @dx.op.unary.f32(i32 6, float %2348)  ; FAbs(value)
  %2350 = call float @dx.op.unary.f32(i32 27, float %2340)  ; Round_ni(value)
  %2351 = call float @dx.op.unary.f32(i32 6, float %2350)  ; FAbs(value)
  %2352 = call float @dx.op.unary.f32(i32 6, float %2347)  ; FAbs(value)
  %2353 = call float @dx.op.unary.f32(i32 27, float %2352)  ; Round_ni(value)
  %2354 = fadd fast float %2351, %2349
  %2355 = fadd fast float %2354, %2353
  %2356 = fcmp fast oeq float %2355, 0.000000e+00
  %2357 = call float @dx.op.dot4.f32(i32 56, float %2329, float %2330, float %2331, float %2332, float %2195, float %2196, float %2197, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2358 = call float @dx.op.dot4.f32(i32 56, float %2336, float %2337, float %2338, float %2339, float %2195, float %2196, float %2197, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2359 = call float @dx.op.dot4.f32(i32 56, float %2329, float %2330, float %2331, float %2332, float %2198, float %2199, float %2200, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2360 = call float @dx.op.dot4.f32(i32 56, float %2336, float %2337, float %2338, float %2339, float %2198, float %2199, float %2200, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2361 = fsub fast float %2357, %2333
  %2362 = fsub fast float %2359, %2333
  %2363 = fsub fast float %2358, %2340
  %2364 = fsub fast float %2360, %2340
  %2365 = call float @dx.op.dot3.f32(i32 55, float %2275, float %2276, float %2277, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %2366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2367 = extractvalue %dx.types.CBufRet.f32 %2366, 2
  %2368 = fadd fast float %2367, %2365
  %2369 = call float @dx.op.unary.f32(i32 7, float %2368)  ; Saturate(value)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2366, 0
  %2371 = fcmp fast ogt float %2369, %2370
  %2372 = and i1 %2356, %2371
  %2373 = and i1 %2327, %2372
  br i1 %2373, label %2400, label %2374

; <label>:2374                                    ; preds = %2729, %2481, %2400, %2242
  %2375 = phi float [ %2244, %2400 ], [ %2484, %2481 ], [ %2484, %2729 ], [ %2244, %2242 ]
  %2376 = phi float [ %2245, %2400 ], [ %2245, %2481 ], [ %2705, %2729 ], [ %2245, %2242 ]
  %2377 = phi float [ %2246, %2400 ], [ %2246, %2481 ], [ %2703, %2729 ], [ %2246, %2242 ]
  %2378 = phi float [ %2247, %2400 ], [ %2247, %2481 ], [ %2681, %2729 ], [ %2247, %2242 ]
  %2379 = phi float [ %2248, %2400 ], [ %2248, %2481 ], [ %2682, %2729 ], [ %2248, %2242 ]
  %2380 = phi float [ %2249, %2400 ], [ %2249, %2481 ], [ %2683, %2729 ], [ %2249, %2242 ]
  %2381 = phi float [ %2250, %2400 ], [ %2250, %2481 ], [ %2608, %2729 ], [ %2250, %2242 ]
  %2382 = phi float [ %2251, %2400 ], [ %2251, %2481 ], [ %2606, %2729 ], [ %2251, %2242 ]
  %2383 = phi float [ %2252, %2400 ], [ %2252, %2481 ], [ %2651, %2729 ], [ %2252, %2242 ]
  %2384 = phi float [ %2253, %2400 ], [ %2253, %2481 ], [ %2652, %2729 ], [ %2253, %2242 ]
  %2385 = phi float [ %2254, %2400 ], [ %2254, %2481 ], [ %2653, %2729 ], [ %2254, %2242 ]
  %2386 = phi float [ %2255, %2400 ], [ %2255, %2481 ], [ %2739, %2729 ], [ %2255, %2242 ]
  %2387 = phi float [ %2256, %2400 ], [ %2256, %2481 ], [ %2740, %2729 ], [ %2256, %2242 ]
  %2388 = phi float [ %2257, %2400 ], [ %2257, %2481 ], [ %2741, %2729 ], [ %2257, %2242 ]
  %2389 = phi float [ %2258, %2400 ], [ %2258, %2481 ], [ %2587, %2729 ], [ %2258, %2242 ]
  %2390 = phi float [ %2259, %2400 ], [ %2259, %2481 ], [ %2588, %2729 ], [ %2259, %2242 ]
  %2391 = phi float [ %2260, %2400 ], [ %2260, %2481 ], [ %2589, %2729 ], [ %2260, %2242 ]
  %2392 = phi float [ %2261, %2400 ], [ %2261, %2481 ], [ %2661, %2729 ], [ %2261, %2242 ]
  %2393 = phi float [ %2262, %2400 ], [ %2262, %2481 ], [ %2658, %2729 ], [ %2262, %2242 ]
  %2394 = phi float [ %2263, %2400 ], [ %2263, %2481 ], [ %2655, %2729 ], [ %2263, %2242 ]
  %2395 = phi float [ %2264, %2400 ], [ %2264, %2481 ], [ %2604, %2729 ], [ %2264, %2242 ]
  %2396 = phi float [ %2265, %2400 ], [ %2265, %2481 ], [ %2599, %2729 ], [ %2265, %2242 ]
  %2397 = phi float [ %2266, %2400 ], [ %2266, %2481 ], [ %2600, %2729 ], [ %2266, %2242 ]
  %2398 = phi float [ %2267, %2400 ], [ %2267, %2481 ], [ %2601, %2729 ], [ %2267, %2242 ]
  %2399 = icmp eq i32 %2324, %2241
  br i1 %2399, label %2742, label %2242

; <label>:2400                                    ; preds = %2242
  %2401 = extractvalue %dx.types.ResRet.f32 %2294, 3
  %2402 = extractvalue %dx.types.ResRet.f32 %2294, 1
  %2403 = extractvalue %dx.types.ResRet.f32 %2294, 0
  %2404 = extractvalue %dx.types.ResRet.f32 %2284, 1
  %2405 = extractvalue %dx.types.ResRet.f32 %2284, 0
  %2406 = extractvalue %dx.types.ResRet.i32 %2280, 3
  %2407 = extractvalue %dx.types.ResRet.i32 %2280, 2
  %2408 = add i32 %2406, 0
  %2409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2408, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2411 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2409, %dx.types.Handle %2410, float %2333, float %2340, float undef, float undef, i32 0, i32 0, i32 undef, float %2361, float %2363, float undef, float %2362, float %2364, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2412 = extractvalue %dx.types.ResRet.f32 %2411, 0
  %2413 = fmul fast float %2412, %2405
  %2414 = fadd fast float %2413, %2404
  %2415 = call float @dx.op.unary.f32(i32 7, float %2414)  ; Saturate(value)
  %2416 = fmul fast float %2333, %2289
  %2417 = call float @dx.op.tertiary.f32(i32 46, float %2290, float %2340, float %2416)  ; FMad(a,b,c)
  %2418 = fadd fast float %2417, %2403
  %2419 = fmul fast float %2333, %2291
  %2420 = call float @dx.op.tertiary.f32(i32 46, float %2292, float %2340, float %2419)  ; FMad(a,b,c)
  %2421 = fadd fast float %2420, %2402
  %2422 = fmul fast float %2361, %2289
  %2423 = call float @dx.op.tertiary.f32(i32 46, float %2290, float %2363, float %2422)  ; FMad(a,b,c)
  %2424 = fmul fast float %2361, %2291
  %2425 = call float @dx.op.tertiary.f32(i32 46, float %2292, float %2363, float %2424)  ; FMad(a,b,c)
  %2426 = fmul fast float %2362, %2289
  %2427 = call float @dx.op.tertiary.f32(i32 46, float %2290, float %2364, float %2426)  ; FMad(a,b,c)
  %2428 = fmul fast float %2362, %2291
  %2429 = call float @dx.op.tertiary.f32(i32 46, float %2292, float %2364, float %2428)  ; FMad(a,b,c)
  %2430 = add i32 %2407, 0
  %2431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2430, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2432 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2431, %dx.types.Handle %2410, float %2418, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float %2423, float %2425, float undef, float %2427, float %2429, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2433 = extractvalue %dx.types.ResRet.f32 %2432, 0
  %2434 = and i32 %2325, 1024
  %2435 = icmp ne i32 %2434, 0
  %2436 = fcmp fast ogt float %2433, 0x3FE0101020000000
  %2437 = uitofp i1 %2436 to float
  %2438 = select i1 %2435, float %2437, float %2433
  %2439 = and i32 %2325, 8192
  %2440 = icmp ne i32 %2439, 0
  %2441 = select i1 %2440, float %2401, float 1.000000e+00
  %2442 = fmul fast float %2333, 2.000000e+00
  %2443 = fadd fast float %2442, -1.000000e+00
  %2444 = call float @dx.op.unary.f32(i32 6, float %2443)  ; FAbs(value)
  %2445 = fmul fast float %2444, %2322
  %2446 = fsub fast float %2445, %2322
  %2447 = call float @dx.op.unary.f32(i32 7, float %2446)  ; Saturate(value)
  %2448 = fmul fast float %2340, 2.000000e+00
  %2449 = fadd fast float %2448, -1.000000e+00
  %2450 = call float @dx.op.unary.f32(i32 6, float %2449)  ; FAbs(value)
  %2451 = fmul fast float %2450, %2323
  %2452 = fsub fast float %2451, %2323
  %2453 = call float @dx.op.unary.f32(i32 7, float %2452)  ; Saturate(value)
  %2454 = fmul fast float %2352, %2285
  %2455 = fsub fast float %2454, %2285
  %2456 = call float @dx.op.unary.f32(i32 7, float %2455)  ; Saturate(value)
  %2457 = fmul fast float %2415, %2441
  %2458 = fmul fast float %2457, %2412
  %2459 = fmul fast float %2458, %2447
  %2460 = fmul fast float %2459, %2438
  %2461 = fmul fast float %2460, %2453
  %2462 = fmul fast float %2461, %2456
  %2463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2464 = extractvalue %dx.types.CBufRet.f32 %2463, 1
  %2465 = extractvalue %dx.types.CBufRet.f32 %2463, 0
  %2466 = fsub fast float %2369, %2465
  %2467 = fmul fast float %2466, %2464
  %2468 = call float @dx.op.unary.f32(i32 7, float %2467)  ; Saturate(value)
  %2469 = fmul fast float %2462, %2286
  %2470 = fadd fast float %2462, %2286
  %2471 = fmul fast float %2470, %2295
  %2472 = fsub fast float %2471, %2295
  %2473 = call float @dx.op.unary.f32(i32 7, float %2472)  ; Saturate(value)
  %2474 = and i32 %2325, 128
  %2475 = icmp ne i32 %2474, 0
  %2476 = select i1 %2475, float %2473, float %2469
  %2477 = fmul fast float %2476, %2468
  %2478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2479 = extractvalue %dx.types.CBufRet.f32 %2478, 0
  %2480 = fcmp fast ugt float %2477, %2479
  br i1 %2480, label %2481, label %2374

; <label>:2481                                    ; preds = %2400
  %2482 = select i1 %2440, float %2477, float 0.000000e+00
  %2483 = fadd fast float %2482, %2244
  %2484 = call float @dx.op.unary.f32(i32 7, float %2483)  ; Saturate(value)
  br i1 %2440, label %2374, label %2485

; <label>:2485                                    ; preds = %2481
  %2486 = and i32 %2325, 4
  %2487 = and i32 %2325, 8
  %2488 = add i32 %2281, 0
  %2489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2488, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2491 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2489, %dx.types.Handle %2490, float %2418, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float %2423, float %2425, float undef, float %2427, float %2429, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2492 = extractvalue %dx.types.ResRet.f32 %2491, 0
  %2493 = extractvalue %dx.types.ResRet.f32 %2491, 1
  %2494 = extractvalue %dx.types.ResRet.f32 %2491, 2
  %2495 = extractvalue %dx.types.ResRet.f32 %2491, 3
  %2496 = bitcast float %2307 to i32
  %2497 = and i32 %2496, 255
  %2498 = uitofp i32 %2497 to float
  %2499 = lshr i32 %2496, 8
  %2500 = and i32 %2499, 255
  %2501 = uitofp i32 %2500 to float
  %2502 = fmul fast float %2495, %2498
  %2503 = fadd fast float %2502, %2501
  %2504 = fmul fast float %2503, 0x3F70101000000000
  %2505 = add i32 %2282, 0
  %2506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2505, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2507 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2506, %dx.types.Handle %2490, float %2418, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float %2423, float %2425, float undef, float %2427, float %2429, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2508 = extractvalue %dx.types.ResRet.f32 %2507, 0
  %2509 = extractvalue %dx.types.ResRet.f32 %2507, 1
  %2510 = extractvalue %dx.types.ResRet.f32 %2507, 2
  %2511 = extractvalue %dx.types.ResRet.f32 %2507, 3
  %2512 = bitcast float %2301 to i32
  %2513 = and i32 %2512, 255
  %2514 = uitofp i32 %2513 to float
  %2515 = lshr i32 %2512, 8
  %2516 = and i32 %2515, 255
  %2517 = uitofp i32 %2516 to float
  %2518 = lshr i32 %2512, 16
  %2519 = and i32 %2518, 255
  %2520 = uitofp i32 %2519 to float
  %2521 = fmul fast float %2520, 0x3F70101000000000
  %2522 = fmul fast float %2508, %2514
  %2523 = fadd fast float %2522, %2517
  %2524 = fmul fast float %2523, 0x3F70101000000000
  %2525 = fadd fast float %2509, -5.000000e-01
  %2526 = fadd fast float %2511, -5.000000e-01
  %2527 = fmul fast float %2525, %2521
  %2528 = fmul fast float %2526, %2521
  %2529 = fadd fast float %2527, 5.000000e-01
  %2530 = fadd fast float %2528, 5.000000e-01
  %2531 = fmul fast float %2492, %2310
  %2532 = fmul fast float %2493, %2311
  %2533 = fmul fast float %2494, %2312
  %2534 = fmul fast float %2529, 2.000000e+00
  %2535 = fadd fast float %2534, -1.000000e+00
  %2536 = fmul fast float %2530, 2.000000e+00
  %2537 = fadd fast float %2536, -1.000000e+00
  %2538 = fadd fast float %2535, %2537
  %2539 = fmul fast float %2538, 5.000000e-01
  %2540 = fsub fast float %2535, %2537
  %2541 = fmul fast float %2540, 5.000000e-01
  %2542 = call float @dx.op.unary.f32(i32 6, float %2539)  ; FAbs(value)
  %2543 = fsub fast float 1.000000e+00, %2542
  %2544 = call float @dx.op.unary.f32(i32 6, float %2541)  ; FAbs(value)
  %2545 = fsub fast float %2543, %2544
  %2546 = call float @dx.op.dot3.f32(i32 55, float %2539, float %2541, float %2545, float %2539, float %2541, float %2545)  ; Dot3(ax,ay,az,bx,by,bz)
  %2547 = call float @dx.op.unary.f32(i32 25, float %2546)  ; Rsqrt(value)
  %2548 = fmul fast float %2539, %2547
  %2549 = fmul fast float %2541, %2547
  %2550 = fmul fast float %2547, %2545
  %2551 = fmul fast float %2550, %2275
  %2552 = fmul fast float %2550, %2276
  %2553 = fmul fast float %2550, %2277
  %2554 = fmul fast float %2548, %2298
  %2555 = fmul fast float %2548, %2299
  %2556 = fmul fast float %2548, %2300
  %2557 = fadd fast float %2554, %2551
  %2558 = fadd fast float %2555, %2552
  %2559 = fadd fast float %2556, %2553
  %2560 = fmul fast float %2549, %2304
  %2561 = fmul fast float %2549, %2305
  %2562 = fmul fast float %2549, %2306
  %2563 = fadd fast float %2557, %2560
  %2564 = fadd fast float %2558, %2561
  %2565 = fadd fast float %2559, %2562
  %2566 = call float @dx.op.dot3.f32(i32 55, float %2563, float %2564, float %2565, float %2563, float %2564, float %2565)  ; Dot3(ax,ay,az,bx,by,bz)
  %2567 = call float @dx.op.unary.f32(i32 25, float %2566)  ; Rsqrt(value)
  %2568 = fmul fast float %2563, %2567
  %2569 = fmul fast float %2564, %2567
  %2570 = fmul fast float %2565, %2567
  %2571 = icmp ne i32 %2487, 0
  %2572 = select i1 %2571, float 1.000000e+00, float 0.000000e+00
  %2573 = fmul fast float %2477, %2572
  %2574 = and i32 %2325, 1
  %2575 = icmp eq i32 %2574, 0
  br i1 %2575, label %2576, label %2580

; <label>:2576                                    ; preds = %2485
  %2577 = fsub fast float %2568, %2258
  %2578 = fsub fast float %2569, %2259
  %2579 = fsub fast float %2570, %2260
  br label %2580

; <label>:2580                                    ; preds = %2576, %2485
  %2581 = phi float [ %2577, %2576 ], [ %2568, %2485 ]
  %2582 = phi float [ %2578, %2576 ], [ %2569, %2485 ]
  %2583 = phi float [ %2579, %2576 ], [ %2570, %2485 ]
  %2584 = fmul float %2583, %2573
  %2585 = fmul float %2582, %2573
  %2586 = fmul float %2581, %2573
  %2587 = fadd fast float %2586, %2258
  %2588 = fadd fast float %2585, %2259
  %2589 = fadd fast float %2584, %2260
  %2590 = icmp ne i32 %2486, 0
  %2591 = select i1 %2590, float 1.000000e+00, float 0.000000e+00
  %2592 = fmul fast float %2477, %2591
  %2593 = fsub fast float %2531, %2265
  %2594 = fsub fast float %2532, %2266
  %2595 = fsub fast float %2533, %2267
  %2596 = fmul fast float %2593, %2592
  %2597 = fmul fast float %2594, %2592
  %2598 = fmul fast float %2595, %2592
  %2599 = fadd fast float %2596, %2265
  %2600 = fadd fast float %2597, %2266
  %2601 = fadd fast float %2598, %2267
  %2602 = fsub fast float %2504, %2264
  %2603 = fmul fast float %2602, %2592
  %2604 = fadd fast float %2603, %2264
  %2605 = fmul fast float %2592, %2251
  %2606 = fsub fast float %2251, %2605
  %2607 = fmul fast float %2592, %2250
  %2608 = fsub fast float %2250, %2607
  %2609 = bitcast float %2319 to i32
  %2610 = lshr i32 %2609, 16
  %2611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2610)  ; LegacyF16ToF32(value)
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = and i32 %2613, 1
  %2615 = icmp eq i32 %2614, 0
  br i1 %2615, label %2616, label %2641

; <label>:2616                                    ; preds = %2580
  %2617 = fadd fast float %2504, 0xBFB99999A0000000
  %2618 = call float @dx.op.unary.f32(i32 7, float %2617)  ; Saturate(value)
  %2619 = fmul fast float %2618, 0x3FF1C71C80000000
  %2620 = fsub fast float 1.000000e+00, %2619
  %2621 = call float @dx.op.unary.f32(i32 7, float %2620)  ; Saturate(value)
  %2622 = fmul fast float %2621, %2531
  %2623 = fmul fast float %2621, %2532
  %2624 = fmul fast float %2621, %2533
  %2625 = call float @dx.op.unary.f32(i32 7, float %2622)  ; Saturate(value)
  %2626 = call float @dx.op.unary.f32(i32 7, float %2623)  ; Saturate(value)
  %2627 = call float @dx.op.unary.f32(i32 7, float %2624)  ; Saturate(value)
  %2628 = call float @dx.op.binary.f32(i32 35, float %2626, float %2627)  ; FMax(a,b)
  %2629 = call float @dx.op.binary.f32(i32 35, float %2625, float %2628)  ; FMax(a,b)
  %2630 = fcmp fast ogt float %2629, 0.000000e+00
  %2631 = bitcast float %2629 to i32
  %2632 = sub nsw i32 2129859010, %2631
  %2633 = bitcast i32 %2632 to float
  %2634 = select i1 %2630, float %2633, float 0.000000e+00
  %2635 = fmul fast float %2625, %2611
  %2636 = fmul fast float %2626, %2611
  %2637 = fmul fast float %2627, %2611
  %2638 = fmul fast float %2635, %2634
  %2639 = fmul fast float %2636, %2634
  %2640 = fmul fast float %2637, %2634
  br label %2641

; <label>:2641                                    ; preds = %2616, %2580
  %2642 = phi float [ %2611, %2580 ], [ %2638, %2616 ]
  %2643 = phi float [ %2611, %2580 ], [ %2639, %2616 ]
  %2644 = phi float [ %2611, %2580 ], [ %2640, %2616 ]
  %2645 = fsub fast float %2642, %2252
  %2646 = fsub fast float %2643, %2253
  %2647 = fsub fast float %2644, %2254
  %2648 = fmul fast float %2645, %2592
  %2649 = fmul fast float %2646, %2592
  %2650 = fmul fast float %2647, %2592
  %2651 = fadd fast float %2648, %2252
  %2652 = fadd fast float %2649, %2253
  %2653 = fadd fast float %2650, %2254
  %2654 = fadd fast float %2477, %2263
  %2655 = call float @dx.op.unary.f32(i32 7, float %2654)  ; Saturate(value)
  %2656 = fsub fast float %2524, %2262
  %2657 = fmul fast float %2656, %2573
  %2658 = fadd fast float %2657, %2262
  %2659 = fsub fast float %2510, %2261
  %2660 = fmul fast float %2659, %2573
  %2661 = fadd fast float %2660, %2261
  br i1 %2575, label %2670, label %2662

; <label>:2662                                    ; preds = %2641
  %2663 = and i32 %2325, 32768
  %2664 = icmp eq i32 %2663, 0
  br i1 %2664, label %2680, label %2665

; <label>:2665                                    ; preds = %2662
  %2666 = fmul fast float %2573, 1.270000e+02
  %2667 = fadd fast float %2666, %2247
  %2668 = fadd fast float %2666, %2248
  %2669 = fadd fast float %2666, %2249
  br label %2680

; <label>:2670                                    ; preds = %2641
  %2671 = fsub fast float 1.270000e+02, %2247
  %2672 = fsub fast float 1.270000e+02, %2248
  %2673 = fsub fast float 1.270000e+02, %2249
  %2674 = fmul fast float %2573, %2671
  %2675 = fmul fast float %2573, %2672
  %2676 = fmul fast float %2573, %2673
  %2677 = fadd fast float %2674, %2247
  %2678 = fadd fast float %2675, %2248
  %2679 = fadd fast float %2676, %2249
  br label %2680

; <label>:2680                                    ; preds = %2670, %2665, %2662
  %2681 = phi float [ %2667, %2665 ], [ %2247, %2662 ], [ %2677, %2670 ]
  %2682 = phi float [ %2668, %2665 ], [ %2248, %2662 ], [ %2678, %2670 ]
  %2683 = phi float [ %2669, %2665 ], [ %2249, %2662 ], [ %2679, %2670 ]
  %2684 = call float @dx.op.dot3.f32(i32 55, float %2531, float %2532, float %2533, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2686 = extractvalue %dx.types.CBufRet.f32 %2685, 0
  %2687 = extractvalue %dx.types.CBufRet.f32 %2685, 1
  %2688 = fmul fast float %2687, %2684
  %2689 = fadd fast float %2688, %2686
  %2690 = call float @dx.op.unary.f32(i32 7, float %2689)  ; Saturate(value)
  %2691 = bitcast float %2313 to i32
  %2692 = and i32 %2691, 65535
  %2693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2692)  ; LegacyF16ToF32(value)
  %2694 = lshr i32 %2691, 16
  %2695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2694)  ; LegacyF16ToF32(value)
  %2696 = fcmp fast oge float %2693, 0.000000e+00
  %2697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2698 = extractvalue %dx.types.CBufRet.f32 %2697, 0
  %2699 = select i1 %2696, float %2693, float %2698
  %2700 = fadd fast float %2699, %2695
  %2701 = fsub fast float %2690, %2246
  %2702 = fmul fast float %2701, %2477
  %2703 = fadd fast float %2702, %2246
  %2704 = fmul fast float %2700, %2477
  %2705 = call float @dx.op.binary.f32(i32 35, float %2245, float %2704)  ; FMax(a,b)
  %2706 = and i32 %2325, 16
  %2707 = icmp eq i32 %2706, 0
  br i1 %2707, label %2729, label %2708

; <label>:2708                                    ; preds = %2680
  %2709 = add i32 %2316, 0
  %2710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2709, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2711 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2710, %dx.types.Handle %2490, float %2418, float %2421, float undef, float undef, i32 0, i32 0, i32 undef, float %2423, float %2425, float undef, float %2427, float %2429, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2712 = extractvalue %dx.types.ResRet.f32 %2711, 0
  %2713 = extractvalue %dx.types.ResRet.f32 %2711, 1
  %2714 = extractvalue %dx.types.ResRet.f32 %2711, 2
  %2715 = and i32 %2609, 65535
  %2716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2715)  ; LegacyF16ToF32(value)
  %2717 = fmul fast float %2712, %2310
  %2718 = fmul fast float %2713, %2311
  %2719 = fmul fast float %2714, %2312
  %2720 = and i32 %2325, 16384
  %2721 = icmp ne i32 %2720, 0
  %2722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2723 = extractvalue %dx.types.CBufRet.f32 %2722, 0
  %2724 = select i1 %2721, float %2723, float 1.000000e+00
  %2725 = fmul fast float %2724, %2716
  %2726 = fmul fast float %2717, %2725
  %2727 = fmul fast float %2718, %2725
  %2728 = fmul fast float %2719, %2725
  br label %2729

; <label>:2729                                    ; preds = %2708, %2680
  %2730 = phi float [ %2726, %2708 ], [ 0.000000e+00, %2680 ]
  %2731 = phi float [ %2727, %2708 ], [ 0.000000e+00, %2680 ]
  %2732 = phi float [ %2728, %2708 ], [ 0.000000e+00, %2680 ]
  %2733 = fsub fast float %2730, %2255
  %2734 = fsub fast float %2731, %2256
  %2735 = fsub fast float %2732, %2257
  %2736 = fmul fast float %2733, %2477
  %2737 = fmul fast float %2734, %2477
  %2738 = fmul fast float %2735, %2477
  %2739 = fadd fast float %2736, %2255
  %2740 = fadd fast float %2737, %2256
  %2741 = fadd fast float %2738, %2257
  br label %2374

; <label>:2742                                    ; preds = %2374
  br label %2743

; <label>:2743                                    ; preds = %2742, %2139
  %2744 = phi float [ 0.000000e+00, %2139 ], [ %2375, %2742 ]
  %2745 = phi float [ %2160, %2139 ], [ %2376, %2742 ]
  %2746 = phi float [ %2158, %2139 ], [ %2377, %2742 ]
  %2747 = phi float [ %2151, %2139 ], [ %2378, %2742 ]
  %2748 = phi float [ %2152, %2139 ], [ %2379, %2742 ]
  %2749 = phi float [ %2153, %2139 ], [ %2380, %2742 ]
  %2750 = phi float [ 0.000000e+00, %2139 ], [ %2381, %2742 ]
  %2751 = phi float [ 0.000000e+00, %2139 ], [ %2382, %2742 ]
  %2752 = phi float [ %2148, %2139 ], [ %2383, %2742 ]
  %2753 = phi float [ %2149, %2139 ], [ %2384, %2742 ]
  %2754 = phi float [ %2150, %2139 ], [ %2385, %2742 ]
  %2755 = phi float [ %2142, %2139 ], [ %2386, %2742 ]
  %2756 = phi float [ %2143, %2139 ], [ %2387, %2742 ]
  %2757 = phi float [ %2144, %2139 ], [ %2388, %2742 ]
  %2758 = phi float [ %2186, %2139 ], [ %2389, %2742 ]
  %2759 = phi float [ %2187, %2139 ], [ %2390, %2742 ]
  %2760 = phi float [ %2188, %2139 ], [ %2391, %2742 ]
  %2761 = phi float [ %2156, %2139 ], [ %2392, %2742 ]
  %2762 = phi float [ %2155, %2139 ], [ %2393, %2742 ]
  %2763 = phi float [ 0.000000e+00, %2139 ], [ %2394, %2742 ]
  %2764 = phi float [ %2154, %2139 ], [ %2395, %2742 ]
  %2765 = phi float [ %2145, %2139 ], [ %2396, %2742 ]
  %2766 = phi float [ %2146, %2139 ], [ %2397, %2742 ]
  %2767 = phi float [ %2147, %2139 ], [ %2398, %2742 ]
  %2768 = call float @dx.op.dot3.f32(i32 55, float %2758, float %2759, float %2760, float %2758, float %2759, float %2760)  ; Dot3(ax,ay,az,bx,by,bz)
  %2769 = call float @dx.op.unary.f32(i32 25, float %2768)  ; Rsqrt(value)
  %2770 = fmul fast float %2769, %2758
  %2771 = fmul fast float %2769, %2759
  %2772 = fmul fast float %2769, %2760
  %2773 = fadd fast float %2763, %1109
  %2774 = call float @dx.op.unary.f32(i32 7, float %2773)  ; Saturate(value)
  %2775 = call float @dx.op.dot3.f32(i32 55, float %2770, float %2771, float %2772, float %2770, float %2771, float %2772)  ; Dot3(ax,ay,az,bx,by,bz)
  %2776 = call float @dx.op.unary.f32(i32 25, float %2775)  ; Rsqrt(value)
  %2777 = fmul fast float %2776, %2770
  %2778 = fmul fast float %2776, %2771
  %2779 = fmul fast float %2776, %2772
  %2780 = fadd fast float %2764, 0xBFB99999A0000000
  %2781 = call float @dx.op.unary.f32(i32 7, float %2780)  ; Saturate(value)
  %2782 = fmul fast float %2781, 0x3FF1C71C80000000
  %2783 = call float @dx.op.binary.f32(i32 36, float %2764, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2784 = fsub fast float 1.000000e+00, %2782
  %2785 = call float @dx.op.unary.f32(i32 7, float %2784)  ; Saturate(value)
  %2786 = fmul fast float %2785, %2765
  %2787 = fmul fast float %2785, %2766
  %2788 = fmul fast float %2785, %2767
  %2789 = call float @dx.op.unary.f32(i32 7, float %2786)  ; Saturate(value)
  %2790 = call float @dx.op.unary.f32(i32 7, float %2787)  ; Saturate(value)
  %2791 = call float @dx.op.unary.f32(i32 7, float %2788)  ; Saturate(value)
  %2792 = fmul fast float %2782, %2765
  %2793 = fmul fast float %2782, %2766
  %2794 = fmul fast float %2782, %2767
  %2795 = fadd fast float %2792, %2783
  %2796 = fadd fast float %2793, %2783
  %2797 = fadd fast float %2794, %2783
  %2798 = call float @dx.op.unary.f32(i32 7, float %2795)  ; Saturate(value)
  %2799 = call float @dx.op.unary.f32(i32 7, float %2796)  ; Saturate(value)
  %2800 = call float @dx.op.unary.f32(i32 7, float %2797)  ; Saturate(value)
  %2801 = call float @dx.op.unary.f32(i32 7, float %2762)  ; Saturate(value)
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = and i32 %2803, 1
  %2805 = icmp eq i32 %2804, 0
  br i1 %2805, label %2820, label %2806

; <label>:2806                                    ; preds = %2743
  %2807 = call float @dx.op.binary.f32(i32 35, float %2790, float %2791)  ; FMax(a,b)
  %2808 = call float @dx.op.binary.f32(i32 35, float %2789, float %2807)  ; FMax(a,b)
  %2809 = fcmp fast ogt float %2808, 0.000000e+00
  %2810 = bitcast float %2808 to i32
  %2811 = sub nsw i32 2129859010, %2810
  %2812 = bitcast i32 %2811 to float
  %2813 = select i1 %2809, float %2812, float 0.000000e+00
  %2814 = fmul fast float %2789, %2752
  %2815 = fmul fast float %2790, %2753
  %2816 = fmul fast float %2791, %2754
  %2817 = fmul fast float %2814, %2813
  %2818 = fmul fast float %2815, %2813
  %2819 = fmul fast float %2816, %2813
  br label %2820

; <label>:2820                                    ; preds = %2806, %2743
  %2821 = phi float [ %2817, %2806 ], [ %2752, %2743 ]
  %2822 = phi float [ %2818, %2806 ], [ %2753, %2743 ]
  %2823 = phi float [ %2819, %2806 ], [ %2754, %2743 ]
  %2824 = call float @dx.op.binary.f32(i32 36, float %2747, float 1.270000e+02)  ; FMin(a,b)
  %2825 = call float @dx.op.binary.f32(i32 36, float %2748, float 1.270000e+02)  ; FMin(a,b)
  %2826 = call float @dx.op.binary.f32(i32 36, float %2749, float 1.270000e+02)  ; FMin(a,b)
  %2827 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2828 = extractvalue %dx.types.CBufRet.i32 %2827, 3
  %2829 = and i32 %2828, 8
  %2830 = icmp ne i32 %2829, 0
  %2831 = call float @dx.op.binary.f32(i32 35, float %2789, float %2765)  ; FMax(a,b)
  %2832 = call float @dx.op.binary.f32(i32 35, float %2790, float %2765)  ; FMax(a,b)
  %2833 = call float @dx.op.binary.f32(i32 35, float %2791, float %2765)  ; FMax(a,b)
  %2834 = call float @dx.op.dot3.f32(i32 55, float %2789, float %2790, float %2791, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2835 = select i1 %234, float %2765, float %2789
  %2836 = select i1 %234, float %2834, float %2790
  %2837 = select i1 %234, float 1.000000e+00, float %2791
  %2838 = select i1 %2830, float %2831, float %2835
  %2839 = select i1 %2830, float %2832, float %2836
  %2840 = select i1 %2830, float %2833, float %2837
  %2841 = call float @dx.op.dot3.f32(i32 55, float %2821, float %2822, float %2823, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2842 = select i1 %234, float %2841, float %2821
  %2843 = select i1 %234, float %2841, float %2822
  %2844 = select i1 %234, float %2841, float %2823
  %2845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2846 = extractvalue %dx.types.CBufRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.CBufRet.f32 %2845, 1
  %2848 = extractvalue %dx.types.CBufRet.f32 %2845, 2
  %2849 = fadd fast float %2846, %143
  %2850 = fadd fast float %2847, %144
  %2851 = fadd fast float %2848, %145
  %2852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2853 = extractvalue %dx.types.CBufRet.f32 %2852, 0
  %2854 = extractvalue %dx.types.CBufRet.f32 %2852, 1
  %2855 = fsub fast float %2849, %2853
  %2856 = fsub fast float %2850, %2854
  %2857 = fmul fast float %2855, %2855
  %2858 = fmul fast float %2856, %2856
  %2859 = fadd fast float %2857, %2858
  %2860 = call float @dx.op.unary.f32(i32 24, float %2859)  ; Sqrt(value)
  %2861 = extractvalue %dx.types.CBufRet.f32 %2852, 2
  %2862 = fcmp fast olt float %2860, %2861
  br i1 %2862, label %2863, label %2930

; <label>:2863                                    ; preds = %2820
  %2864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2865 = extractvalue %dx.types.CBufRet.f32 %2864, 0
  %2866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2867 = extractvalue %dx.types.CBufRet.f32 %2866, 0
  %2868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2869 = extractvalue %dx.types.CBufRet.f32 %2868, 0
  %2870 = extractvalue %dx.types.CBufRet.f32 %2864, 1
  %2871 = extractvalue %dx.types.CBufRet.f32 %2866, 1
  %2872 = extractvalue %dx.types.CBufRet.f32 %2868, 1
  %2873 = extractvalue %dx.types.CBufRet.f32 %2864, 3
  %2874 = extractvalue %dx.types.CBufRet.f32 %2866, 3
  %2875 = extractvalue %dx.types.CBufRet.f32 %2868, 3
  %2876 = fadd fast float %2873, %2849
  %2877 = fadd fast float %2874, %2850
  %2878 = fadd fast float %2875, %2851
  %2879 = fmul fast float %2876, %2865
  %2880 = call float @dx.op.tertiary.f32(i32 46, float %2877, float %2867, float %2879)  ; FMad(a,b,c)
  %2881 = call float @dx.op.tertiary.f32(i32 46, float %2878, float %2869, float %2880)  ; FMad(a,b,c)
  %2882 = fmul fast float %2876, %2870
  %2883 = call float @dx.op.tertiary.f32(i32 46, float %2877, float %2871, float %2882)  ; FMad(a,b,c)
  %2884 = call float @dx.op.tertiary.f32(i32 46, float %2878, float %2872, float %2883)  ; FMad(a,b,c)
  %2885 = fsub fast float %2881, %2873
  %2886 = fsub fast float %2884, %2874
  %2887 = fsub fast float %2885, %2853
  %2888 = fadd fast float %2887, %2861
  %2889 = fsub fast float %2886, %2854
  %2890 = fadd fast float %2889, %2861
  %2891 = extractvalue %dx.types.CBufRet.f32 %2852, 3
  %2892 = fmul fast float %2888, %2891
  %2893 = fmul fast float %2890, %2891
  %2894 = call float @dx.op.unary.f32(i32 7, float %2892)  ; Saturate(value)
  %2895 = call float @dx.op.unary.f32(i32 7, float %2893)  ; Saturate(value)
  %2896 = fsub fast float 1.000000e+00, %2894
  %2897 = fsub fast float 1.000000e+00, %2895
  %2898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %58, float %2896, float %2897, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2899 = extractvalue %dx.types.ResRet.f32 %2898, 0
  %2900 = fcmp fast ugt float %2899, 0.000000e+00
  br i1 %2900, label %2901, label %3204

; <label>:2901                                    ; preds = %2863
  %2902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2903 = extractvalue %dx.types.CBufRet.f32 %2902, 2
  %2904 = fmul fast float %2903, %2899
  %2905 = extractvalue %dx.types.CBufRet.f32 %2902, 3
  %2906 = fadd fast float %2905, %2904
  %2907 = extractvalue %dx.types.CBufRet.f32 %2868, 2
  %2908 = fadd fast float %2906, %2875
  %2909 = fmul fast float %2881, %2869
  %2910 = call float @dx.op.tertiary.f32(i32 46, float %2884, float %2872, float %2909)  ; FMad(a,b,c)
  %2911 = call float @dx.op.tertiary.f32(i32 46, float %2908, float %2907, float %2910)  ; FMad(a,b,c)
  %2912 = fsub fast float %2911, %2875
  %2913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2914 = extractvalue %dx.types.CBufRet.f32 %2913, 2
  %2915 = fsub fast float %2912, %2914
  %2916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %2896, float %2897, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2917 = extractvalue %dx.types.ResRet.f32 %2916, 0
  %2918 = extractvalue %dx.types.ResRet.f32 %2916, 1
  %2919 = extractvalue %dx.types.ResRet.f32 %2916, 2
  %2920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %2896, float %2897, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2921 = extractvalue %dx.types.ResRet.f32 %2920, 0
  %2922 = extractvalue %dx.types.ResRet.f32 %2920, 1
  %2923 = extractvalue %dx.types.ResRet.f32 %2920, 2
  %2924 = fadd fast float %2921, %2917
  %2925 = fmul fast float %2924, 0x3F847AE140000000
  %2926 = fadd fast float %2922, %2918
  %2927 = fmul fast float %2926, 0x3F847AE140000000
  %2928 = fadd fast float %2923, %2919
  %2929 = fmul fast float %2928, 0x3F847AE140000000
  br label %3204

; <label>:2930                                    ; preds = %2820
  %2931 = and i32 %210, 1
  %2932 = icmp eq i32 %2931, 0
  br i1 %2932, label %3204, label %2933

; <label>:2933                                    ; preds = %2930
  %2934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2935 = extractvalue %dx.types.CBufRet.f32 %2934, 0
  %2936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.f32 %2936, 0
  %2938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2939 = extractvalue %dx.types.CBufRet.f32 %2938, 0
  %2940 = extractvalue %dx.types.CBufRet.f32 %2934, 1
  %2941 = extractvalue %dx.types.CBufRet.f32 %2936, 1
  %2942 = extractvalue %dx.types.CBufRet.f32 %2938, 1
  %2943 = extractvalue %dx.types.CBufRet.f32 %2934, 3
  %2944 = extractvalue %dx.types.CBufRet.f32 %2936, 3
  %2945 = extractvalue %dx.types.CBufRet.f32 %2938, 3
  %2946 = fadd fast float %2943, %2849
  %2947 = fadd fast float %2944, %2850
  %2948 = fadd fast float %2945, %2851
  %2949 = fmul fast float %2946, %2935
  %2950 = call float @dx.op.tertiary.f32(i32 46, float %2947, float %2937, float %2949)  ; FMad(a,b,c)
  %2951 = call float @dx.op.tertiary.f32(i32 46, float %2948, float %2939, float %2950)  ; FMad(a,b,c)
  %2952 = fmul fast float %2946, %2940
  %2953 = call float @dx.op.tertiary.f32(i32 46, float %2947, float %2941, float %2952)  ; FMad(a,b,c)
  %2954 = call float @dx.op.tertiary.f32(i32 46, float %2948, float %2942, float %2953)  ; FMad(a,b,c)
  %2955 = fsub fast float %2951, %2943
  %2956 = fsub fast float %2954, %2944
  %2957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2958 = extractvalue %dx.types.CBufRet.f32 %2957, 0
  %2959 = extractvalue %dx.types.CBufRet.f32 %2957, 1
  %2960 = extractvalue %dx.types.CBufRet.f32 %2957, 2
  %2961 = extractvalue %dx.types.CBufRet.f32 %2957, 3
  %2962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2963 = extractvalue %dx.types.CBufRet.f32 %2962, 3
  %2964 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2965 = extractvalue %dx.types.CBufRet.i32 %2964, 0
  %2966 = extractvalue %dx.types.CBufRet.i32 %2964, 1
  %2967 = udiv i32 %2966, %2965
  %2968 = fsub fast float %2955, %2958
  %2969 = fsub fast float %2956, %2959
  %2970 = call float @dx.op.binary.f32(i32 35, float %2968, float 0.000000e+00)  ; FMax(a,b)
  %2971 = call float @dx.op.binary.f32(i32 35, float %2969, float 0.000000e+00)  ; FMax(a,b)
  %2972 = call float @dx.op.binary.f32(i32 36, float %2970, float %2960)  ; FMin(a,b)
  %2973 = call float @dx.op.binary.f32(i32 36, float %2971, float %2961)  ; FMin(a,b)
  %2974 = add i32 %2965, -1
  %2975 = add i32 %2967, -1
  %2976 = fmul fast float %2972, %2963
  %2977 = fmul fast float %2973, %2963
  %2978 = fptoui float %2976 to i32
  %2979 = fptoui float %2977 to i32
  %2980 = call i32 @dx.op.binary.i32(i32 40, i32 %2978, i32 %2974)  ; UMin(a,b)
  %2981 = call i32 @dx.op.binary.i32(i32 40, i32 %2979, i32 %2975)  ; UMin(a,b)
  %2982 = mul i32 %2981, %2965
  %2983 = add i32 %2982, %2980
  %2984 = shl i32 %2983, 2
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = icmp eq i32 %2986, -1
  br i1 %2987, label %3204, label %2988

; <label>:2988                                    ; preds = %2933
  %2989 = mul i32 %2986, 148
  %2990 = add i32 %2989, 4
  %2991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.f32 %2991, 0
  %2993 = add i32 %2989, 8
  %2994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.f32 %2994, 0
  %2996 = add i32 %2989, 36
  %2997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.f32 %2997, 0
  %2999 = add i32 %2989, 60
  %3000 = add i32 %2989, 92
  %3001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.i32 %3001, 0
  %3003 = add i32 %2989, 116
  %3004 = fsub fast float %2955, %2992
  %3005 = fsub fast float %2956, %2995
  %3006 = fmul fast float %2963, %3004
  %3007 = fmul fast float %2963, %3005
  %3008 = call float @dx.op.unary.f32(i32 7, float %3006)  ; Saturate(value)
  %3009 = call float @dx.op.unary.f32(i32 7, float %3007)  ; Saturate(value)
  %3010 = fsub fast float 1.000000e+00, %3009
  %3011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3012 = extractvalue %dx.types.CBufRet.f32 %3011, 2
  %3013 = call float @dx.op.unary.f32(i32 83, float %3008)  ; DerivCoarseX(value)
  %3014 = call float @dx.op.unary.f32(i32 83, float %3010)  ; DerivCoarseX(value)
  %3015 = call float @dx.op.unary.f32(i32 84, float %3008)  ; DerivCoarseY(value)
  %3016 = call float @dx.op.unary.f32(i32 84, float %3010)  ; DerivCoarseY(value)
  %3017 = fmul fast float %3013, %3012
  %3018 = fmul fast float %3014, %3012
  %3019 = fmul fast float %3015, %3012
  %3020 = fmul fast float %3016, %3012
  %3021 = call float @dx.op.dot2.f32(i32 54, float %3019, float %3020, float %3019, float %3020)  ; Dot2(ax,ay,bx,by)
  %3022 = call float @dx.op.dot2.f32(i32 54, float %3017, float %3018, float %3017, float %3018)  ; Dot2(ax,ay,bx,by)
  %3023 = call float @dx.op.binary.f32(i32 35, float %3022, float %3021)  ; FMax(a,b)
  %3024 = call float @dx.op.unary.f32(i32 23, float %3023)  ; Log(value)
  %3025 = fmul fast float %3024, 5.000000e-01
  %3026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3027 = extractvalue %dx.types.CBufRet.f32 %3026, 1
  %3028 = fadd fast float %3027, %3025
  %3029 = call float @dx.op.binary.f32(i32 35, float %3028, float 0.000000e+00)  ; FMax(a,b)
  %3030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3031 = extractvalue %dx.types.CBufRet.f32 %3030, 3
  %3032 = fadd fast float %3031, %3029
  %3033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3034 = extractvalue %dx.types.CBufRet.f32 %3033, 3
  %3035 = fadd fast float %3032, %3034
  %3036 = add i32 %3002, 0
  %3037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3036, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3038 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3037, i32 0)  ; GetDimensions(handle,mipLevel)
  %3039 = extractvalue %dx.types.Dimensions %3038, 0
  %3040 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3039)  ; FirstbitLo(value)
  %3041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3042 = extractvalue %dx.types.CBufRet.i32 %3041, 1
  %3043 = sub nsw i32 %3042, %3040
  %3044 = sitofp i32 %3043 to float
  %3045 = fsub fast float %3035, %3044
  %3046 = call float @dx.op.binary.f32(i32 35, float %3045, float 0.000000e+00)  ; FMax(a,b)
  %3047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3037, %dx.types.Handle %56, float %3008, float %3010, float %2998, float undef, i32 0, i32 0, i32 undef, float %3046)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3048 = extractvalue %dx.types.ResRet.f32 %3047, 0
  %3049 = fcmp ule float %3048, 0x3FE0101020000000
  %3050 = extractvalue %dx.types.CBufRet.i32 %3041, 0
  %3051 = and i32 %3050, 128
  %3052 = icmp ne i32 %3051, 0
  %3053 = and i1 %3049, %3052
  br i1 %3053, label %3204, label %3054

; <label>:3054                                    ; preds = %2988
  %3055 = add i32 %2989, 20
  %3056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.f32 %3056, 0
  %3058 = add i32 %2989, 24
  %3059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3058, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.f32 %3059, 0
  %3061 = add i32 %2989, 40
  %3062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3061, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.f32 %3062, 0
  %3064 = add i32 %2989, 96
  %3065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3064, i32 undef)  ; BufferLoad(srv,index,wot)
  %3066 = extractvalue %dx.types.ResRet.i32 %3065, 0
  %3067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3068 = extractvalue %dx.types.CBufRet.f32 %3067, 2
  %3069 = fmul fast float %3068, %3008
  %3070 = fmul fast float %3068, %3010
  %3071 = extractvalue %dx.types.CBufRet.f32 %3067, 3
  %3072 = fadd fast float %3069, %3071
  %3073 = fadd fast float %3070, %3071
  %3074 = add i32 %3066, 0
  %3075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3074, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3076 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3075, i32 0)  ; GetDimensions(handle,mipLevel)
  %3077 = extractvalue %dx.types.Dimensions %3076, 0
  %3078 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3077)  ; FirstbitLo(value)
  %3079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3080 = extractvalue %dx.types.CBufRet.i32 %3079, 1
  %3081 = sub nsw i32 %3080, %3078
  %3082 = sitofp i32 %3081 to float
  %3083 = fsub fast float %3032, %3082
  %3084 = call float @dx.op.binary.f32(i32 35, float %3083, float 0.000000e+00)  ; FMax(a,b)
  %3085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3075, %dx.types.Handle %56, float %3072, float %3073, float %3063, float undef, i32 0, i32 0, i32 undef, float %3084)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3086 = extractvalue %dx.types.ResRet.f32 %3085, 0
  %3087 = fmul fast float %3086, %3057
  %3088 = fadd fast float %3087, %3060
  %3089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3090 = extractvalue %dx.types.CBufRet.f32 %3089, 0
  %3091 = extractvalue %dx.types.CBufRet.f32 %3089, 1
  %3092 = extractvalue %dx.types.CBufRet.f32 %3089, 2
  %3093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3094 = extractvalue %dx.types.CBufRet.f32 %3093, 3
  %3095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3096 = extractvalue %dx.types.CBufRet.f32 %3095, 3
  %3097 = extractvalue %dx.types.CBufRet.f32 %3089, 3
  %3098 = fadd fast float %3094, %2955
  %3099 = fadd fast float %3096, %2956
  %3100 = fadd fast float %3088, %3097
  %3101 = fmul fast float %3098, %3090
  %3102 = call float @dx.op.tertiary.f32(i32 46, float %3099, float %3091, float %3101)  ; FMad(a,b,c)
  %3103 = call float @dx.op.tertiary.f32(i32 46, float %3100, float %3092, float %3102)  ; FMad(a,b,c)
  %3104 = fsub fast float %3103, %3097
  %3105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3106 = extractvalue %dx.types.CBufRet.f32 %3105, 2
  %3107 = fsub fast float %3104, %3106
  %3108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3109 = extractvalue %dx.types.CBufRet.i32 %3108, 0
  %3110 = call i32 @dx.op.binary.i32(i32 40, i32 %2986, i32 %3109)  ; UMin(a,b)
  %3111 = mul i32 %3110, 36
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3111, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = add i32 %3111, 4
  %3115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3116 = extractvalue %dx.types.CBufRet.f32 %3115, 0
  %3117 = fmul fast float %3116, %3008
  %3118 = fmul fast float %3116, %3010
  %3119 = extractvalue %dx.types.CBufRet.f32 %3115, 1
  %3120 = fadd fast float %3117, %3119
  %3121 = fadd fast float %3118, %3119
  %3122 = icmp eq i32 %3113, 0
  br i1 %3122, label %3191, label %3123

; <label>:3123                                    ; preds = %3054
  br label %3124

; <label>:3124                                    ; preds = %3181, %3123
  %3125 = phi float [ %3182, %3181 ], [ 0.000000e+00, %3123 ]
  %3126 = phi float [ %3183, %3181 ], [ 0.000000e+00, %3123 ]
  %3127 = phi float [ %3184, %3181 ], [ 0.000000e+00, %3123 ]
  %3128 = phi float [ %3185, %3181 ], [ 0.000000e+00, %3123 ]
  %3129 = phi float [ %3186, %3181 ], [ 0.000000e+00, %3123 ]
  %3130 = phi float [ %3187, %3181 ], [ 0.000000e+00, %3123 ]
  %3131 = phi i32 [ %3188, %3181 ], [ 0, %3123 ]
  %3132 = shl i32 %3131, 2
  %3133 = add i32 %2999, %3132
  %3134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.f32 %3134, 0
  %3136 = add i32 %3003, %3132
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = add i32 %3138, 0
  %3140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3139, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3141 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3140, i32 0)  ; GetDimensions(handle,mipLevel)
  %3142 = extractvalue %dx.types.Dimensions %3141, 0
  %3143 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3142)  ; FirstbitLo(value)
  %3144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3145 = extractvalue %dx.types.CBufRet.i32 %3144, 1
  %3146 = sub nsw i32 %3145, %3143
  %3147 = sitofp i32 %3146 to float
  %3148 = fsub fast float %3032, %3147
  %3149 = call float @dx.op.binary.f32(i32 35, float %3148, float 0.000000e+00)  ; FMax(a,b)
  %3150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3140, %dx.types.Handle %56, float %3120, float %3121, float %3135, float undef, i32 0, i32 0, i32 undef, float %3149)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3151 = extractvalue %dx.types.ResRet.f32 %3150, 0
  %3152 = fcmp fast ogt float %3151, 0.000000e+00
  br i1 %3152, label %3153, label %3181

; <label>:3153                                    ; preds = %3124
  %3154 = add i32 %3114, %3132
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = and i32 %3156, 32767
  %3158 = mul nuw nsw i32 %3157, 928
  %3159 = add nuw nsw i32 %3158, 48
  %3160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3159, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.f32 %3160, 0
  %3162 = extractvalue %dx.types.ResRet.f32 %3160, 1
  %3163 = extractvalue %dx.types.ResRet.f32 %3160, 2
  %3164 = add nuw nsw i32 %3158, 60
  %3165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3164, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.f32 %3165, 0
  %3167 = extractvalue %dx.types.ResRet.f32 %3165, 1
  %3168 = extractvalue %dx.types.ResRet.f32 %3165, 2
  %3169 = fmul fast float %3161, %3151
  %3170 = fmul fast float %3162, %3151
  %3171 = fmul fast float %3163, %3151
  %3172 = fadd fast float %3169, %3125
  %3173 = fadd fast float %3170, %3126
  %3174 = fadd fast float %3171, %3127
  %3175 = fmul fast float %3166, %3151
  %3176 = fmul fast float %3167, %3151
  %3177 = fmul fast float %3168, %3151
  %3178 = fadd fast float %3175, %3128
  %3179 = fadd fast float %3176, %3129
  %3180 = fadd fast float %3177, %3130
  br label %3181

; <label>:3181                                    ; preds = %3153, %3124
  %3182 = phi float [ %3172, %3153 ], [ %3125, %3124 ]
  %3183 = phi float [ %3173, %3153 ], [ %3126, %3124 ]
  %3184 = phi float [ %3174, %3153 ], [ %3127, %3124 ]
  %3185 = phi float [ %3178, %3153 ], [ %3128, %3124 ]
  %3186 = phi float [ %3179, %3153 ], [ %3129, %3124 ]
  %3187 = phi float [ %3180, %3153 ], [ %3130, %3124 ]
  %3188 = add nuw i32 %3131, 1
  %3189 = icmp eq i32 %3188, %3113
  br i1 %3189, label %3190, label %3124

; <label>:3190                                    ; preds = %3181
  br label %3191

; <label>:3191                                    ; preds = %3190, %3054
  %3192 = phi float [ 0.000000e+00, %3054 ], [ %3182, %3190 ]
  %3193 = phi float [ 0.000000e+00, %3054 ], [ %3183, %3190 ]
  %3194 = phi float [ 0.000000e+00, %3054 ], [ %3184, %3190 ]
  %3195 = phi float [ 0.000000e+00, %3054 ], [ %3185, %3190 ]
  %3196 = phi float [ 0.000000e+00, %3054 ], [ %3186, %3190 ]
  %3197 = phi float [ 0.000000e+00, %3054 ], [ %3187, %3190 ]
  %3198 = fadd fast float %3195, %3192
  %3199 = fmul fast float %3198, 0x3F847AE140000000
  %3200 = fadd fast float %3196, %3193
  %3201 = fmul fast float %3200, 0x3F847AE140000000
  %3202 = fadd fast float %3197, %3194
  %3203 = fmul fast float %3202, 0x3F847AE140000000
  br label %3204

; <label>:3204                                    ; preds = %3191, %2988, %2933, %2930, %2901, %2863
  %3205 = phi float [ %2915, %2901 ], [ -1.310720e+05, %2863 ], [ %3107, %3191 ], [ -1.310720e+05, %2933 ], [ -1.310720e+05, %2988 ], [ -1.310720e+05, %2930 ]
  %3206 = phi float [ %2925, %2901 ], [ 0.000000e+00, %2863 ], [ %3199, %3191 ], [ 0.000000e+00, %2933 ], [ 0.000000e+00, %2988 ], [ 0.000000e+00, %2930 ]
  %3207 = phi float [ %2927, %2901 ], [ 0.000000e+00, %2863 ], [ %3201, %3191 ], [ 0.000000e+00, %2933 ], [ 0.000000e+00, %2988 ], [ 0.000000e+00, %2930 ]
  %3208 = phi float [ %2929, %2901 ], [ 0.000000e+00, %2863 ], [ %3203, %3191 ], [ 0.000000e+00, %2933 ], [ 0.000000e+00, %2988 ], [ 0.000000e+00, %2930 ]
  %3209 = phi i1 [ true, %2901 ], [ false, %2863 ], [ true, %3191 ], [ false, %2933 ], [ false, %2988 ], [ false, %2930 ]
  %3210 = and i32 %210, 3
  %3211 = icmp eq i32 %3210, 1
  %3212 = select i1 %3211, float 1.000000e+00, float 0.000000e+00
  %3213 = fsub fast float %3205, %145
  %3214 = call float @dx.op.unary.f32(i32 7, float %3213)  ; Saturate(value)
  %3215 = select i1 %3209, float %3214, float 1.000000e+00
  %3216 = fmul fast float %3215, %3212
  %3217 = icmp eq i32 %3210, 3
  %3218 = select i1 %3217, float 1.000000e+00, float %3216
  %3219 = call float @dx.op.binary.f32(i32 35, float %2744, float %3218)  ; FMax(a,b)
  %3220 = call float @dx.op.unary.f32(i32 7, float %3219)  ; Saturate(value)
  %3221 = fcmp fast une float %3220, 0.000000e+00
  %3222 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %3223 = call float @dx.op.unary.f32(i32 25, float %3222)  ; Rsqrt(value)
  br i1 %3221, label %3231, label %3224

; <label>:3224                                    ; preds = %3204
  %3225 = fmul fast float %3223, %143
  %3226 = fmul fast float %3223, %144
  %3227 = fmul fast float %3223, %145
  %3228 = fsub fast float -0.000000e+00, %3225
  %3229 = fsub fast float -0.000000e+00, %3226
  %3230 = fsub fast float -0.000000e+00, %3227
  br label %3399

; <label>:3231                                    ; preds = %3204
  %3232 = fmul fast float %143, %3223
  %3233 = fsub fast float -0.000000e+00, %3232
  %3234 = fmul fast float %144, %3223
  %3235 = fsub fast float -0.000000e+00, %3234
  %3236 = fmul fast float %145, %3223
  %3237 = fsub fast float -0.000000e+00, %3236
  %3238 = call float @dx.op.dot3.f32(i32 55, float %3233, float %3235, float %3237, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %3239 = fmul fast float %3220, 2.500000e+00
  %3240 = call float @dx.op.unary.f32(i32 7, float %3239)  ; Saturate(value)
  %3241 = fmul fast float %3220, 0x4013FFFFE0000000
  %3242 = fadd fast float %3241, 0xBFFFFFFFE0000000
  %3243 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  %3244 = fmul fast float %3220, 0x4004000020000000
  %3245 = fadd fast float %3244, 0xBFF8000040000000
  %3246 = call float @dx.op.unary.f32(i32 7, float %3245)  ; Saturate(value)
  %3247 = call float @dx.op.unary.f32(i32 7, float %3240)  ; Saturate(value)
  %3248 = fmul fast float %2780, 1.000000e+01
  %3249 = call float @dx.op.unary.f32(i32 7, float %3248)  ; Saturate(value)
  %3250 = fmul fast float %3249, 2.000000e+00
  %3251 = fsub fast float 3.000000e+00, %3250
  %3252 = fmul fast float %3249, %3249
  %3253 = fmul fast float %3252, %3251
  %3254 = fsub fast float 1.000000e+00, %3253
  %3255 = fsub fast float 0x3FE3333340000000, %2801
  %3256 = fmul fast float %3255, 0x400AAAAAA0000000
  %3257 = call float @dx.op.unary.f32(i32 7, float %3256)  ; Saturate(value)
  %3258 = fmul fast float %3254, %3257
  %3259 = fmul fast float %2838, 0x3FEA2B8620000000
  %3260 = fmul fast float %2839, 0x3FEA2B8620000000
  %3261 = fmul fast float %2840, 0x3FEA2B8620000000
  %3262 = fadd fast float %3259, 0x3FC81DFBA0000000
  %3263 = fmul fast float %3262, %2838
  %3264 = fadd fast float %3263, 0x3F910E6020000000
  %3265 = fadd fast float %3260, 0x3FC81DFBA0000000
  %3266 = fmul fast float %3265, %2839
  %3267 = fadd fast float %3266, 0x3F910E6020000000
  %3268 = fadd fast float %3261, 0x3FC81DFBA0000000
  %3269 = fmul fast float %3268, %2840
  %3270 = fadd fast float %3269, 0x3F910E6020000000
  %3271 = call float @dx.op.unary.f32(i32 7, float %3264)  ; Saturate(value)
  %3272 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  %3273 = call float @dx.op.unary.f32(i32 7, float %3270)  ; Saturate(value)
  %3274 = fsub fast float %3271, %2838
  %3275 = fsub fast float %3272, %2839
  %3276 = fsub fast float %3273, %2840
  %3277 = fmul fast float %3274, %3247
  %3278 = fmul fast float %3277, %3258
  %3279 = fmul fast float %3275, %3247
  %3280 = fmul fast float %3279, %3258
  %3281 = fmul fast float %3276, %3247
  %3282 = fmul fast float %3281, %3258
  %3283 = fadd fast float %3278, %2838
  %3284 = fadd fast float %3280, %2839
  %3285 = fadd fast float %3282, %2840
  %3286 = fmul fast float %2761, %2761
  %3287 = fmul fast float %3286, %3286
  %3288 = fadd fast float %3243, 1.000000e+00
  %3289 = fsub fast float %3288, %3258
  %3290 = call float @dx.op.unary.f32(i32 7, float %3289)  ; Saturate(value)
  %3291 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3292 = call float @dx.op.unary.f32(i32 7, float %3291)  ; Saturate(value)
  %3293 = fsub fast float 1.000000e+00, %3287
  %3294 = call float @dx.op.binary.f32(i32 36, float %3290, float %3293)  ; FMin(a,b)
  %3295 = call float @dx.op.unary.f32(i32 7, float %3246)  ; Saturate(value)
  %3296 = call float @dx.op.binary.f32(i32 35, float %3294, float %3295)  ; FMax(a,b)
  %3297 = fadd fast float %3292, 0xBFE4CCCCC0000000
  %3298 = fmul fast float %3297, 0x4006DB6DA0000000
  %3299 = call float @dx.op.unary.f32(i32 7, float %3298)  ; Saturate(value)
  %3300 = fmul fast float %3299, 2.000000e+00
  %3301 = fsub fast float 3.000000e+00, %3300
  %3302 = bitcast float %2798 to i32
  %3303 = ashr i32 %3302, 1
  %3304 = add nsw i32 %3303, 532487669
  %3305 = bitcast i32 %3304 to float
  %3306 = fsub fast float 1.000000e+00, %3305
  %3307 = bitcast float %3306 to i32
  %3308 = sub nsw i32 2129859010, %3307
  %3309 = bitcast i32 %3308 to float
  %3310 = fmul fast float %3309, 2.000000e+00
  %3311 = bitcast float %2799 to i32
  %3312 = ashr i32 %3311, 1
  %3313 = add nsw i32 %3312, 532487669
  %3314 = bitcast i32 %3313 to float
  %3315 = fsub fast float 1.000000e+00, %3314
  %3316 = bitcast float %3315 to i32
  %3317 = sub nsw i32 2129859010, %3316
  %3318 = bitcast i32 %3317 to float
  %3319 = fmul fast float %3318, 2.000000e+00
  %3320 = bitcast float %2800 to i32
  %3321 = ashr i32 %3320, 1
  %3322 = add nsw i32 %3321, 532487669
  %3323 = bitcast i32 %3322 to float
  %3324 = fsub fast float 1.000000e+00, %3323
  %3325 = bitcast float %3324 to i32
  %3326 = sub nsw i32 2129859010, %3325
  %3327 = bitcast i32 %3326 to float
  %3328 = fmul fast float %3327, 2.000000e+00
  %3329 = fsub fast float 0x4002A9FBE0000000, %3310
  %3330 = fadd fast float %3310, 0x3FD54FDF00000000
  %3331 = bitcast float %3330 to i32
  %3332 = sub nsw i32 2129859010, %3331
  %3333 = bitcast i32 %3332 to float
  %3334 = fmul fast float %3333, %3329
  %3335 = fmul fast float %3334, %3334
  %3336 = fsub fast float 0x4002A9FBE0000000, %3319
  %3337 = fadd fast float %3319, 0x3FD54FDF00000000
  %3338 = bitcast float %3337 to i32
  %3339 = sub nsw i32 2129859010, %3338
  %3340 = bitcast i32 %3339 to float
  %3341 = fmul fast float %3340, %3336
  %3342 = fmul fast float %3341, %3341
  %3343 = fsub fast float 0x4002A9FBE0000000, %3328
  %3344 = fadd fast float %3328, 0x3FD54FDF00000000
  %3345 = bitcast float %3344 to i32
  %3346 = sub nsw i32 2129859010, %3345
  %3347 = bitcast i32 %3346 to float
  %3348 = fmul fast float %3347, %3343
  %3349 = fmul fast float %3348, %3348
  %3350 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3335)  ; FMax(a,b)
  %3351 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3342)  ; FMax(a,b)
  %3352 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3349)  ; FMax(a,b)
  %3353 = fsub fast float 1.000000e+00, %3238
  %3354 = fadd fast float %3353, %3254
  %3355 = call float @dx.op.unary.f32(i32 7, float %3354)  ; Saturate(value)
  %3356 = fsub fast float 1.000000e+00, %3218
  %3357 = fmul fast float %3296, %3356
  %3358 = fmul fast float %3299, %3299
  %3359 = fmul fast float %3358, %3357
  %3360 = fmul fast float %3359, %3301
  %3361 = fmul fast float %3356, 0xBFE99999A0000000
  %3362 = fmul fast float %3361, %3247
  %3363 = fmul fast float %3362, %3258
  %3364 = fadd fast float %3363, 1.000000e+00
  %3365 = fadd fast float %2801, -1.000000e+00
  %3366 = fmul fast float %3364, %3365
  %3367 = fadd fast float %3366, 1.000000e+00
  %3368 = fsub fast float %3350, %2798
  %3369 = fsub fast float %3351, %2799
  %3370 = fsub fast float %3352, %2800
  %3371 = fmul fast float %3360, %3368
  %3372 = fmul fast float %3360, %3369
  %3373 = fmul fast float %3360, %3370
  %3374 = fadd fast float %3371, %2798
  %3375 = fadd fast float %3372, %2799
  %3376 = fadd fast float %3373, %2800
  %3377 = fsub fast float %74, %2777
  %3378 = fsub fast float %75, %2778
  %3379 = fsub fast float %76, %2779
  %3380 = fmul fast float %3360, %3377
  %3381 = fmul fast float %3360, %3378
  %3382 = fmul fast float %3360, %3379
  %3383 = fadd fast float %3380, %2777
  %3384 = fadd fast float %3381, %2778
  %3385 = fadd fast float %3382, %2779
  %3386 = fmul fast float %3360, %3355
  %3387 = call float @dx.op.unary.f32(i32 7, float %3367)  ; Saturate(value)
  %3388 = fsub fast float 1.000000e+00, %3387
  %3389 = fmul fast float %3386, %3388
  %3390 = fadd fast float %3389, %3387
  %3391 = fsub fast float 1.000000e+00, %2761
  %3392 = fmul fast float %3360, %3391
  %3393 = fadd fast float %3392, %2761
  %3394 = call float @dx.op.dot3.f32(i32 55, float %3383, float %3384, float %3385, float %3383, float %3384, float %3385)  ; Dot3(ax,ay,az,bx,by,bz)
  %3395 = call float @dx.op.unary.f32(i32 25, float %3394)  ; Rsqrt(value)
  %3396 = fmul fast float %3383, %3395
  %3397 = fmul fast float %3384, %3395
  %3398 = fmul fast float %3385, %3395
  br label %3399

; <label>:3399                                    ; preds = %3231, %3224
  %3400 = phi float [ %3230, %3224 ], [ %3237, %3231 ]
  %3401 = phi float [ %3229, %3224 ], [ %3235, %3231 ]
  %3402 = phi float [ %3228, %3224 ], [ %3233, %3231 ]
  %3403 = phi float [ %3227, %3224 ], [ %3236, %3231 ]
  %3404 = phi float [ %3226, %3224 ], [ %3234, %3231 ]
  %3405 = phi float [ %3225, %3224 ], [ %3232, %3231 ]
  %3406 = phi float [ %2798, %3224 ], [ %3374, %3231 ]
  %3407 = phi float [ %2799, %3224 ], [ %3375, %3231 ]
  %3408 = phi float [ %2800, %3224 ], [ %3376, %3231 ]
  %3409 = phi float [ %2777, %3224 ], [ %3396, %3231 ]
  %3410 = phi float [ %2778, %3224 ], [ %3397, %3231 ]
  %3411 = phi float [ %2779, %3224 ], [ %3398, %3231 ]
  %3412 = phi float [ %2838, %3224 ], [ %3283, %3231 ]
  %3413 = phi float [ %2839, %3224 ], [ %3284, %3231 ]
  %3414 = phi float [ %2840, %3224 ], [ %3285, %3231 ]
  %3415 = phi float [ %2801, %3224 ], [ %3390, %3231 ]
  %3416 = phi float [ %2761, %3224 ], [ %3393, %3231 ]
  %3417 = fsub fast float -0.000000e+00, %145
  %3418 = select i1 %234, float 0.000000e+00, float %3408
  %3419 = call float @dx.op.dot3.f32(i32 55, float %3409, float %3410, float %3411, float %3402, float %3401, float %3400)  ; Dot3(ax,ay,az,bx,by,bz)
  %3420 = call float @dx.op.unary.f32(i32 7, float %3419)  ; Saturate(value)
  %3421 = call float @dx.op.dot3.f32(i32 55, float %3405, float %3404, float %3403, float %3409, float %3410, float %3411)  ; Dot3(ax,ay,az,bx,by,bz)
  %3422 = fmul fast float %3421, 2.000000e+00
  %3423 = fmul fast float %3422, %3409
  %3424 = fmul fast float %3422, %3410
  %3425 = fmul fast float %3422, %3411
  %3426 = fsub fast float %3405, %3423
  %3427 = fsub fast float %3404, %3424
  %3428 = fsub fast float %3403, %3425
  %3429 = call float @dx.op.binary.f32(i32 36, float %3416, float 1.000000e+00)  ; FMin(a,b)
  %3430 = fsub fast float 1.000000e+00, %3416
  %3431 = bitcast float %3430 to i32
  %3432 = sub nsw i32 2129859010, %3431
  %3433 = bitcast i32 %3432 to float
  %3434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3435 = extractvalue %dx.types.CBufRet.f32 %3434, 0
  %3436 = extractvalue %dx.types.CBufRet.f32 %3434, 1
  %3437 = fadd fast float %3435, %143
  %3438 = fadd fast float %3436, %144
  %3439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %3440 = extractvalue %dx.types.CBufRet.i32 %3439, 0
  %3441 = icmp eq i32 %3440, 1
  br i1 %3441, label %3442, label %3477

; <label>:3442                                    ; preds = %3399
  %3443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3444 = extractvalue %dx.types.CBufRet.f32 %3443, 0
  %3445 = extractvalue %dx.types.CBufRet.f32 %3443, 1
  %3446 = fsub fast float %3437, %3444
  %3447 = fsub fast float %3438, %3445
  %3448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3449 = extractvalue %dx.types.CBufRet.f32 %3448, 0
  %3450 = extractvalue %dx.types.CBufRet.f32 %3448, 1
  %3451 = fmul fast float %3446, %3449
  %3452 = fmul fast float %3447, %3450
  %3453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %3451, float %3452, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3454 = extractvalue %dx.types.ResRet.f32 %3453, 0
  %3455 = fcmp fast ogt float %3454, 0.000000e+00
  %3456 = extractvalue %dx.types.CBufRet.i32 %3439, 3
  %3457 = icmp ne i32 %3456, 0
  %3458 = and i1 %3455, %3457
  br i1 %3458, label %3459, label %3477, !dx.controlflow.hints !100

; <label>:3459                                    ; preds = %3442
  %3460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3461 = extractvalue %dx.types.CBufRet.f32 %3460, 0
  %3462 = extractvalue %dx.types.CBufRet.f32 %3460, 1
  %3463 = fsub fast float %3437, %3461
  %3464 = fsub fast float %3438, %3462
  %3465 = fmul fast float %3463, %3463
  %3466 = fmul fast float %3464, %3464
  %3467 = fadd fast float %3465, %3466
  %3468 = uitofp i32 %3456 to float
  %3469 = fmul fast float %3468, %3468
  %3470 = fcmp fast ogt float %3467, %3469
  br i1 %3470, label %3477, label %3471

; <label>:3471                                    ; preds = %3459
  %3472 = call float @dx.op.unary.f32(i32 24, float %3467)  ; Sqrt(value)
  %3473 = fsub fast float %3468, %3472
  %3474 = fmul fast float %3473, 0x3F75555560000000
  %3475 = call float @dx.op.unary.f32(i32 7, float %3474)  ; Saturate(value)
  %3476 = call float @dx.op.binary.f32(i32 36, float %3475, float %3454)  ; FMin(a,b)
  br label %3477

; <label>:3477                                    ; preds = %3471, %3459, %3442, %3399
  %3478 = phi float [ 1.000000e+00, %3399 ], [ %3476, %3471 ], [ %3454, %3442 ], [ 0.000000e+00, %3459 ]
  %3479 = fcmp fast ogt float %3478, 0.000000e+00
  br i1 %3479, label %3480, label %3578, !dx.controlflow.hints !101

; <label>:3480                                    ; preds = %3477
  %3481 = fadd fast float %174, 5.000000e-01
  %3482 = call float @dx.op.unary.f32(i32 27, float %3481)  ; Round_ni(value)
  %3483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %58, float %172, float %173, float %3482, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3483, 2
  %3487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3488 = extractvalue %dx.types.CBufRet.f32 %3487, 3
  %3489 = fmul fast float %3488, %3484
  %3490 = fmul fast float %3488, %3485
  %3491 = fmul fast float %3488, %3486
  %3492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %58, float %172, float %173, float %3482, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3493 = extractvalue %dx.types.ResRet.f32 %3492, 0
  %3494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %58, float %172, float %173, float %3482, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3495 = extractvalue %dx.types.ResRet.f32 %3494, 0
  %3496 = extractvalue %dx.types.ResRet.f32 %3494, 1
  %3497 = fmul fast float %3495, 2.000000e+00
  %3498 = fmul fast float %3496, 2.000000e+00
  %3499 = fadd fast float %3497, -1.000000e+00
  %3500 = fadd fast float %3498, -1.000000e+00
  %3501 = fadd fast float %3499, %3500
  %3502 = fmul fast float %3501, 5.000000e-01
  %3503 = fsub fast float %3499, %3500
  %3504 = fmul fast float %3503, 5.000000e-01
  %3505 = call float @dx.op.unary.f32(i32 6, float %3502)  ; FAbs(value)
  %3506 = fsub fast float 1.000000e+00, %3505
  %3507 = call float @dx.op.unary.f32(i32 6, float %3504)  ; FAbs(value)
  %3508 = fsub fast float %3506, %3507
  %3509 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %3508)  ; FMax(a,b)
  %3510 = call float @dx.op.dot3.f32(i32 55, float %3502, float %3504, float %3509, float %3502, float %3504, float %3509)  ; Dot3(ax,ay,az,bx,by,bz)
  %3511 = bitcast float %3510 to i32
  %3512 = ashr i32 %3511, 1
  %3513 = sub nsw i32 1597250115, %3512
  %3514 = bitcast i32 %3513 to float
  %3515 = fmul fast float %3514, %3502
  %3516 = fmul fast float %3514, %3504
  %3517 = fmul fast float %3514, %3509
  %3518 = fsub fast float 1.000000e+00, %3493
  %3519 = fdiv fast float %3518, %3517
  %3520 = fmul fast float %3517, %74
  %3521 = fmul fast float %3517, %75
  %3522 = fmul fast float %3517, %76
  %3523 = fmul fast float %3515, %70
  %3524 = fmul fast float %3515, %71
  %3525 = fmul fast float %3515, %72
  %3526 = fadd fast float %3520, %3523
  %3527 = fadd fast float %3521, %3524
  %3528 = fadd fast float %3522, %3525
  %3529 = fmul fast float %3516, %107
  %3530 = fmul fast float %3516, %108
  %3531 = fmul fast float %3516, %109
  %3532 = fadd fast float %3526, %3529
  %3533 = fadd fast float %3527, %3530
  %3534 = fadd fast float %3528, %3531
  %3535 = call float @dx.op.dot3.f32(i32 55, float %3532, float %3533, float %3534, float %3532, float %3533, float %3534)  ; Dot3(ax,ay,az,bx,by,bz)
  %3536 = call float @dx.op.unary.f32(i32 25, float %3535)  ; Rsqrt(value)
  %3537 = fmul fast float %3532, %3536
  %3538 = fmul fast float %3533, %3536
  %3539 = fmul fast float %3534, %3536
  %3540 = call float @dx.op.dot3.f32(i32 55, float %3409, float %3410, float %3411, float %3409, float %3410, float %3411)  ; Dot3(ax,ay,az,bx,by,bz)
  %3541 = call float @dx.op.unary.f32(i32 7, float %3540)  ; Saturate(value)
  %3542 = fmul fast float %3541, 5.000000e-01
  %3543 = fadd fast float %3542, 5.000000e-01
  %3544 = fmul fast float %3543, %3493
  %3545 = call float @dx.op.dot3.f32(i32 55, float %3409, float %3410, float %3411, float %3537, float %3538, float %3539)  ; Dot3(ax,ay,az,bx,by,bz)
  %3546 = call float @dx.op.unary.f32(i32 7, float %3545)  ; Saturate(value)
  %3547 = fmul fast float %3546, %3519
  %3548 = fadd fast float %3544, %3547
  %3549 = fsub fast float 5.000000e-01, %3542
  %3550 = fmul fast float %3549, %3412
  %3551 = fmul fast float %3549, %3413
  %3552 = fmul fast float %3549, %3414
  %3553 = fadd fast float %3548, %3550
  %3554 = fmul fast float %3553, %3489
  %3555 = fadd fast float %3548, %3551
  %3556 = fmul fast float %3555, %3490
  %3557 = fadd fast float %3548, %3552
  %3558 = fmul fast float %3557, %3491
  %3559 = call float @dx.op.dot3.f32(i32 55, float %3426, float %3427, float %3428, float %3409, float %3410, float %3411)  ; Dot3(ax,ay,az,bx,by,bz)
  %3560 = call float @dx.op.unary.f32(i32 7, float %3559)  ; Saturate(value)
  %3561 = fmul fast float %3560, 5.000000e-01
  %3562 = fadd fast float %3561, 5.000000e-01
  %3563 = fmul fast float %3562, %3493
  %3564 = call float @dx.op.dot3.f32(i32 55, float %3426, float %3427, float %3428, float %3537, float %3538, float %3539)  ; Dot3(ax,ay,az,bx,by,bz)
  %3565 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3566 = fmul fast float %3565, %3519
  %3567 = fadd fast float %3563, %3566
  %3568 = fsub fast float 5.000000e-01, %3561
  %3569 = fmul fast float %3568, %3412
  %3570 = fmul fast float %3568, %3413
  %3571 = fmul fast float %3568, %3414
  %3572 = fadd fast float %3567, %3569
  %3573 = fmul fast float %3572, %3489
  %3574 = fadd fast float %3567, %3570
  %3575 = fmul fast float %3574, %3490
  %3576 = fadd fast float %3567, %3571
  %3577 = fmul fast float %3576, %3491
  br label %3578

; <label>:3578                                    ; preds = %3480, %3477
  %3579 = phi float [ %3573, %3480 ], [ 0.000000e+00, %3477 ]
  %3580 = phi float [ %3575, %3480 ], [ 0.000000e+00, %3477 ]
  %3581 = phi float [ %3577, %3480 ], [ 0.000000e+00, %3477 ]
  %3582 = phi float [ %3554, %3480 ], [ 0.000000e+00, %3477 ]
  %3583 = phi float [ %3556, %3480 ], [ 0.000000e+00, %3477 ]
  %3584 = phi float [ %3558, %3480 ], [ 0.000000e+00, %3477 ]
  %3585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3586 = extractvalue %dx.types.CBufRet.f32 %3585, 0
  %3587 = fcmp fast ogt float %3586, 0.000000e+00
  %3588 = and i1 %3479, %3587
  br i1 %3588, label %3589, label %3793, !dx.controlflow.hints !102

; <label>:3589                                    ; preds = %3578
  %3590 = extractvalue %dx.types.CBufRet.f32 %3434, 2
  %3591 = fadd fast float %3590, %145
  %3592 = fmul fast float %3409, 3.200000e+01
  %3593 = fmul fast float %3410, 3.200000e+01
  %3594 = fadd fast float %3437, %3592
  %3595 = fadd fast float %3438, %3593
  %3596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3597 = extractvalue %dx.types.CBufRet.f32 %3596, 0
  %3598 = extractvalue %dx.types.CBufRet.f32 %3596, 1
  %3599 = fsub fast float %3594, %3597
  %3600 = fsub fast float %3595, %3598
  %3601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.CBufRet.f32 %3601, 1
  %3604 = fmul fast float %3599, %3602
  %3605 = fmul fast float %3600, %3603
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.CBufRet.f32 %3606, 1
  %3609 = fsub fast float %3437, %3607
  %3610 = fsub fast float %3438, %3608
  %3611 = fmul fast float %3609, %3609
  %3612 = fmul fast float %3610, %3610
  %3613 = fadd fast float %3611, %3612
  %3614 = call float @dx.op.unary.f32(i32 24, float %3613)  ; Sqrt(value)
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.CBufRet.f32 %3615, 1
  %3618 = fsub fast float %3614, %3616
  %3619 = fdiv fast float %3618, %3617
  %3620 = call float @dx.op.unary.f32(i32 7, float %3619)  ; Saturate(value)
  %3621 = fmul fast float %3620, 2.000000e+00
  %3622 = fsub fast float 3.000000e+00, %3621
  %3623 = fmul fast float %3620, %3620
  %3624 = fmul fast float %3623, %3622
  %3625 = fcmp fast oge float %3604, 0.000000e+00
  %3626 = fcmp fast ole float %3604, 1.000000e+00
  %3627 = and i1 %3626, %3625
  %3628 = fcmp fast oge float %3605, 0.000000e+00
  %3629 = and i1 %3628, %3627
  %3630 = fcmp fast ole float %3605, 1.000000e+00
  %3631 = and i1 %3630, %3629
  %3632 = fcmp fast ogt float %3624, 0.000000e+00
  %3633 = and i1 %3632, %3631
  br i1 %3633, label %3634, label %3757, !dx.controlflow.hints !103

; <label>:3634                                    ; preds = %3589
  %3635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3636 = extractvalue %dx.types.CBufRet.f32 %3635, 2
  %3637 = extractvalue %dx.types.CBufRet.f32 %3635, 3
  %3638 = fmul fast float %3636, %3604
  %3639 = fmul fast float %3637, %3605
  %3640 = call float @dx.op.unary.f32(i32 27, float %3638)  ; Round_ni(value)
  %3641 = call float @dx.op.unary.f32(i32 27, float %3639)  ; Round_ni(value)
  %3642 = fptosi float %3640 to i32
  %3643 = fptosi float %3641 to i32
  %3644 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %3642, i32 %3643, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = lshr i32 %3645, 16
  %3647 = icmp eq i32 %3646, 65535
  br i1 %3647, label %3757, label %3648

; <label>:3648                                    ; preds = %3634
  %3649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3650 = extractvalue %dx.types.CBufRet.f32 %3649, 0
  %3651 = fmul fast float %3650, %3604
  %3652 = extractvalue %dx.types.CBufRet.f32 %3649, 1
  %3653 = fadd fast float %3651, %3652
  %3654 = extractvalue %dx.types.CBufRet.f32 %3649, 2
  %3655 = fmul fast float %3654, %3605
  %3656 = extractvalue %dx.types.CBufRet.f32 %3649, 3
  %3657 = fadd fast float %3655, %3656
  %3658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %3653, float %3657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3659 = extractvalue %dx.types.ResRet.f32 %3658, 0
  %3660 = extractvalue %dx.types.ResRet.f32 %3658, 1
  %3661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3662 = extractvalue %dx.types.CBufRet.f32 %3661, 1
  %3663 = extractvalue %dx.types.CBufRet.f32 %3661, 0
  %3664 = fsub fast float %3662, %3663
  %3665 = fmul fast float %3664, %3659
  %3666 = fadd fast float %3665, %3663
  %3667 = extractvalue %dx.types.CBufRet.f32 %3661, 3
  %3668 = extractvalue %dx.types.CBufRet.f32 %3661, 2
  %3669 = fsub fast float %3667, %3668
  %3670 = fmul fast float %3669, %3660
  %3671 = fadd fast float %3670, %3668
  %3672 = fsub fast float %3591, %3666
  %3673 = fsub fast float %3671, %3666
  %3674 = fdiv fast float %3672, %3673
  %3675 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3676 = extractvalue %dx.types.CBufRet.f32 %3585, 1
  %3677 = extractvalue %dx.types.CBufRet.f32 %3635, 0
  %3678 = extractvalue %dx.types.CBufRet.f32 %3635, 1
  %3679 = fmul fast float %3677, %3604
  %3680 = fmul fast float %3678, %3605
  %3681 = fmul fast float %3679, 1.250000e-01
  %3682 = fmul fast float %3680, 1.250000e-01
  %3683 = call float @dx.op.unary.f32(i32 27, float %3681)  ; Round_ni(value)
  %3684 = call float @dx.op.unary.f32(i32 27, float %3682)  ; Round_ni(value)
  %3685 = fmul fast float %3683, 8.000000e+00
  %3686 = fmul fast float %3684, 8.000000e+00
  %3687 = fsub fast float %3679, %3685
  %3688 = fsub fast float %3680, %3686
  %3689 = fadd fast float %3687, 5.000000e-01
  %3690 = fadd fast float %3688, 5.000000e-01
  %3691 = and i32 %3646, 255
  %3692 = lshr i32 %3645, 24
  %3693 = mul nuw nsw i32 %3691, 9
  %3694 = uitofp i32 %3693 to float
  %3695 = mul nuw nsw i32 %3692, 9
  %3696 = uitofp i32 %3695 to float
  %3697 = fadd fast float %3689, %3694
  %3698 = fadd fast float %3690, %3696
  %3699 = fdiv fast float %3697, %3586
  %3700 = fdiv fast float %3698, %3676
  %3701 = fmul fast float %3675, 4.375000e-01
  %3702 = fadd fast float %3701, 3.125000e-02
  %3703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3699, float %3700, float %3702, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3704 = extractvalue %dx.types.ResRet.f32 %3703, 0
  %3705 = extractvalue %dx.types.ResRet.f32 %3703, 1
  %3706 = extractvalue %dx.types.ResRet.f32 %3703, 2
  %3707 = fadd fast float %3701, 5.312500e-01
  %3708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3699, float %3700, float %3707, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.ResRet.f32 %3708, 1
  %3711 = extractvalue %dx.types.ResRet.f32 %3708, 2
  %3712 = fmul fast float %3709, 2.000000e+00
  %3713 = fmul fast float %3710, 2.000000e+00
  %3714 = fmul fast float %3711, 2.000000e+00
  %3715 = fadd fast float %3712, -1.000000e+00
  %3716 = fadd fast float %3713, -1.000000e+00
  %3717 = fadd fast float %3714, -1.000000e+00
  %3718 = fmul fast float %3715, %3715
  %3719 = fmul fast float %3716, %3716
  %3720 = fadd fast float %3718, %3719
  %3721 = fmul fast float %3717, %3717
  %3722 = fadd fast float %3720, %3721
  %3723 = call float @dx.op.unary.f32(i32 24, float %3722)  ; Sqrt(value)
  %3724 = fcmp fast ogt float %3723, 0.000000e+00
  br i1 %3724, label %3725, label %3729

; <label>:3725                                    ; preds = %3648
  %3726 = fdiv fast float %3715, %3723
  %3727 = fdiv fast float %3716, %3723
  %3728 = fdiv fast float %3717, %3723
  br label %3729

; <label>:3729                                    ; preds = %3725, %3648
  %3730 = phi float [ %3726, %3725 ], [ 0.000000e+00, %3648 ]
  %3731 = phi float [ %3727, %3725 ], [ 0.000000e+00, %3648 ]
  %3732 = phi float [ %3728, %3725 ], [ 0.000000e+00, %3648 ]
  %3733 = call float @dx.op.dot3.f32(i32 55, float %3730, float %3731, float %3732, float %3409, float %3410, float %3411)  ; Dot3(ax,ay,az,bx,by,bz)
  %3734 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3733)  ; FMax(a,b)
  %3735 = fmul fast float %3734, 0x400C5BF8A0000000
  %3736 = fmul fast float %3704, %3624
  %3737 = fmul fast float %3736, %3735
  %3738 = fmul fast float %3705, %3624
  %3739 = fmul fast float %3738, %3735
  %3740 = fmul fast float %3706, %3624
  %3741 = fmul fast float %3740, %3735
  %3742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3743 = extractvalue %dx.types.CBufRet.f32 %3742, 3
  %3744 = fmul fast float %3737, %3743
  %3745 = fmul fast float %3739, %3743
  %3746 = fmul fast float %3741, %3743
  %3747 = fcmp fast ogt float %3591, %3671
  br i1 %3747, label %3748, label %3757

; <label>:3748                                    ; preds = %3729
  %3749 = fmul fast float %3673, 0x3FC24924A0000000
  %3750 = fsub fast float %3591, %3671
  %3751 = fdiv fast float %3750, %3749
  %3752 = call float @dx.op.unary.f32(i32 7, float %3751)  ; Saturate(value)
  %3753 = fsub fast float 1.000000e+00, %3752
  %3754 = fmul fast float %3753, %3744
  %3755 = fmul fast float %3753, %3745
  %3756 = fmul fast float %3753, %3746
  br label %3757

; <label>:3757                                    ; preds = %3748, %3729, %3634, %3589
  %3758 = phi float [ %3756, %3748 ], [ %3746, %3729 ], [ 0.000000e+00, %3634 ], [ 0.000000e+00, %3589 ]
  %3759 = phi float [ %3755, %3748 ], [ %3745, %3729 ], [ 0.000000e+00, %3634 ], [ 0.000000e+00, %3589 ]
  %3760 = phi float [ %3754, %3748 ], [ %3744, %3729 ], [ 0.000000e+00, %3634 ], [ 0.000000e+00, %3589 ]
  %3761 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3760)  ; FMax(a,b)
  %3762 = fmul fast float %3761, 0x3FD20DD760000000
  %3763 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3426, float %3427, float %3428)  ; Dot3(ax,ay,az,bx,by,bz)
  %3764 = fmul fast float %3763, 0x3FDF454380000000
  %3765 = fmul fast float %3763, %3763
  %3766 = fmul fast float %3765, 0x3FEE471020000000
  %3767 = fadd fast float %3766, 0xBFD42F6020000000
  %3768 = call float @dx.op.dot3.f32(i32 55, float %3761, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3764, float %3767)  ; Dot3(ax,ay,az,bx,by,bz)
  %3769 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3759)  ; FMax(a,b)
  %3770 = fmul fast float %3769, 0x3FD20DD760000000
  %3771 = call float @dx.op.dot3.f32(i32 55, float %3769, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3764, float %3767)  ; Dot3(ax,ay,az,bx,by,bz)
  %3772 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3758)  ; FMax(a,b)
  %3773 = fmul fast float %3772, 0x3FD20DD760000000
  %3774 = call float @dx.op.dot3.f32(i32 55, float %3772, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3764, float %3767)  ; Dot3(ax,ay,az,bx,by,bz)
  %3775 = call float @dx.op.binary.f32(i32 35, float %3762, float 0.000000e+00)  ; FMax(a,b)
  %3776 = call float @dx.op.binary.f32(i32 35, float %3770, float 0.000000e+00)  ; FMax(a,b)
  %3777 = call float @dx.op.binary.f32(i32 35, float %3773, float 0.000000e+00)  ; FMax(a,b)
  %3778 = call float @dx.op.binary.f32(i32 35, float %3768, float 0.000000e+00)  ; FMax(a,b)
  %3779 = call float @dx.op.binary.f32(i32 35, float %3771, float 0.000000e+00)  ; FMax(a,b)
  %3780 = call float @dx.op.binary.f32(i32 35, float %3774, float 0.000000e+00)  ; FMax(a,b)
  %3781 = fmul fast float %3775, %3478
  %3782 = fmul fast float %3776, %3478
  %3783 = fmul fast float %3777, %3478
  %3784 = fadd fast float %3781, %3582
  %3785 = fadd fast float %3782, %3583
  %3786 = fadd fast float %3783, %3584
  %3787 = fmul fast float %3778, %3478
  %3788 = fmul fast float %3779, %3478
  %3789 = fmul fast float %3780, %3478
  %3790 = fadd fast float %3787, %3579
  %3791 = fadd fast float %3788, %3580
  %3792 = fadd fast float %3789, %3581
  br label %3793

; <label>:3793                                    ; preds = %3757, %3578
  %3794 = phi float [ %3790, %3757 ], [ %3579, %3578 ]
  %3795 = phi float [ %3791, %3757 ], [ %3580, %3578 ]
  %3796 = phi float [ %3792, %3757 ], [ %3581, %3578 ]
  %3797 = phi float [ %3781, %3757 ], [ 0.000000e+00, %3578 ]
  %3798 = phi float [ %3782, %3757 ], [ 0.000000e+00, %3578 ]
  %3799 = phi float [ %3783, %3757 ], [ 0.000000e+00, %3578 ]
  %3800 = phi float [ %3784, %3757 ], [ %3582, %3578 ]
  %3801 = phi float [ %3785, %3757 ], [ %3583, %3578 ]
  %3802 = phi float [ %3786, %3757 ], [ %3584, %3578 ]
  %3803 = fcmp fast olt float %3478, 1.000000e+00
  br i1 %3803, label %3804, label %4637, !dx.controlflow.hints !104

; <label>:3804                                    ; preds = %3793
  %3805 = extractvalue %dx.types.CBufRet.f32 %3434, 2
  %3806 = fadd fast float %3805, %145
  %3807 = fmul fast float %3409, 3.200000e+01
  %3808 = fmul fast float %3410, 3.200000e+01
  %3809 = fadd fast float %3437, %3807
  %3810 = fadd fast float %3438, %3808
  %3811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3812 = extractvalue %dx.types.CBufRet.f32 %3811, 0
  %3813 = extractvalue %dx.types.CBufRet.f32 %3811, 1
  %3814 = fsub fast float %3809, %3812
  %3815 = fsub fast float %3810, %3813
  %3816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3817 = extractvalue %dx.types.CBufRet.f32 %3816, 0
  %3818 = extractvalue %dx.types.CBufRet.f32 %3816, 1
  %3819 = fmul fast float %3814, %3817
  %3820 = fmul fast float %3815, %3818
  %3821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3822 = extractvalue %dx.types.CBufRet.f32 %3821, 0
  %3823 = fmul fast float %3819, %3822
  %3824 = extractvalue %dx.types.CBufRet.f32 %3821, 1
  %3825 = fadd fast float %3823, %3824
  %3826 = extractvalue %dx.types.CBufRet.f32 %3821, 2
  %3827 = fmul fast float %3826, %3820
  %3828 = extractvalue %dx.types.CBufRet.f32 %3821, 3
  %3829 = fadd fast float %3827, %3828
  %3830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %3825, float %3829, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3831 = extractvalue %dx.types.ResRet.f32 %3830, 0
  %3832 = extractvalue %dx.types.ResRet.f32 %3830, 1
  %3833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3834 = extractvalue %dx.types.CBufRet.f32 %3833, 1
  %3835 = extractvalue %dx.types.CBufRet.f32 %3833, 0
  %3836 = fsub fast float %3834, %3835
  %3837 = fmul fast float %3836, %3831
  %3838 = fadd fast float %3837, %3835
  %3839 = extractvalue %dx.types.CBufRet.f32 %3833, 3
  %3840 = extractvalue %dx.types.CBufRet.f32 %3833, 2
  %3841 = fsub fast float %3839, %3840
  %3842 = fmul fast float %3841, %3832
  %3843 = fadd fast float %3842, %3840
  %3844 = fsub fast float %3806, %3838
  %3845 = fsub fast float %3843, %3838
  %3846 = fdiv fast float %3844, %3845
  %3847 = call float @dx.op.unary.f32(i32 7, float %3846)  ; Saturate(value)
  %3848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3849 = extractvalue %dx.types.CBufRet.f32 %3848, 0
  %3850 = fmul fast float %3849, %3847
  %3851 = extractvalue %dx.types.CBufRet.f32 %3848, 1
  %3852 = fadd fast float %3850, %3851
  %3853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %58, float %3825, float %3829, float %3852, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3854 = extractvalue %dx.types.ResRet.f32 %3853, 0
  %3855 = extractvalue %dx.types.ResRet.f32 %3853, 1
  %3856 = extractvalue %dx.types.ResRet.f32 %3853, 2
  %3857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3858 = extractvalue %dx.types.CBufRet.f32 %3857, 0
  %3859 = extractvalue %dx.types.CBufRet.f32 %3857, 1
  %3860 = extractvalue %dx.types.CBufRet.f32 %3857, 2
  %3861 = fmul fast float %3858, %3854
  %3862 = fmul fast float %3859, %3855
  %3863 = fmul fast float %3860, %3856
  %3864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3865 = extractvalue %dx.types.CBufRet.f32 %3864, 0
  %3866 = extractvalue %dx.types.CBufRet.f32 %3864, 1
  %3867 = extractvalue %dx.types.CBufRet.f32 %3864, 2
  %3868 = fadd fast float %3861, %3865
  %3869 = fadd fast float %3862, %3866
  %3870 = fadd fast float %3863, %3867
  %3871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3872 = extractvalue %dx.types.CBufRet.f32 %3871, 0
  %3873 = fmul fast float %3872, %3819
  %3874 = extractvalue %dx.types.CBufRet.f32 %3871, 1
  %3875 = fadd fast float %3873, %3874
  %3876 = extractvalue %dx.types.CBufRet.f32 %3871, 2
  %3877 = fmul fast float %3876, %3820
  %3878 = extractvalue %dx.types.CBufRet.f32 %3871, 3
  %3879 = fadd fast float %3877, %3878
  %3880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3881 = extractvalue %dx.types.CBufRet.f32 %3880, 0
  %3882 = extractvalue %dx.types.CBufRet.f32 %3880, 1
  %3883 = extractvalue %dx.types.CBufRet.f32 %3880, 2
  %3884 = extractvalue %dx.types.CBufRet.f32 %3880, 3
  %3885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3886 = extractvalue %dx.types.CBufRet.f32 %3885, 0
  %3887 = extractvalue %dx.types.CBufRet.f32 %3885, 1
  %3888 = extractvalue %dx.types.CBufRet.f32 %3885, 2
  %3889 = extractvalue %dx.types.CBufRet.f32 %3885, 3
  %3890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %3875, float %3879, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3891 = extractvalue %dx.types.ResRet.f32 %3890, 0
  %3892 = extractvalue %dx.types.ResRet.f32 %3890, 1
  %3893 = extractvalue %dx.types.ResRet.f32 %3890, 2
  %3894 = extractvalue %dx.types.ResRet.f32 %3890, 3
  %3895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %3875, float %3879, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3896 = extractvalue %dx.types.ResRet.f32 %3895, 0
  %3897 = extractvalue %dx.types.ResRet.f32 %3895, 1
  %3898 = extractvalue %dx.types.ResRet.f32 %3895, 2
  %3899 = extractvalue %dx.types.ResRet.f32 %3895, 3
  %3900 = fmul fast float %3891, %3868
  %3901 = fmul fast float %3896, %3868
  %3902 = fmul fast float %3898, %3868
  %3903 = fmul fast float %3894, %3868
  %3904 = fadd fast float %3900, %3881
  %3905 = fadd fast float %3901, %3882
  %3906 = fadd fast float %3902, %3883
  %3907 = fadd fast float %3903, %3884
  %3908 = fmul fast float %3892, %3868
  %3909 = fmul fast float %3897, %3868
  %3910 = fadd fast float %3908, %3886
  %3911 = fadd fast float %3909, %3887
  %3912 = fmul fast float %3893, %3868
  %3913 = fmul fast float %3899, %3868
  %3914 = fadd fast float %3912, %3888
  %3915 = fadd fast float %3913, %3889
  %3916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %3875, float %3879, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3917 = extractvalue %dx.types.ResRet.f32 %3916, 0
  %3918 = extractvalue %dx.types.ResRet.f32 %3916, 1
  %3919 = extractvalue %dx.types.ResRet.f32 %3916, 2
  %3920 = extractvalue %dx.types.ResRet.f32 %3916, 3
  %3921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %3875, float %3879, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3922 = extractvalue %dx.types.ResRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.ResRet.f32 %3921, 1
  %3924 = extractvalue %dx.types.ResRet.f32 %3921, 2
  %3925 = extractvalue %dx.types.ResRet.f32 %3921, 3
  %3926 = fmul fast float %3917, %3869
  %3927 = fmul fast float %3922, %3869
  %3928 = fmul fast float %3924, %3869
  %3929 = fmul fast float %3920, %3869
  %3930 = fadd fast float %3904, %3926
  %3931 = fadd fast float %3905, %3927
  %3932 = fadd fast float %3906, %3928
  %3933 = fadd fast float %3907, %3929
  %3934 = fmul fast float %3918, %3869
  %3935 = fmul fast float %3923, %3869
  %3936 = fadd fast float %3910, %3934
  %3937 = fadd fast float %3911, %3935
  %3938 = fmul fast float %3919, %3869
  %3939 = fmul fast float %3925, %3869
  %3940 = fadd fast float %3914, %3938
  %3941 = fadd fast float %3915, %3939
  %3942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %3875, float %3879, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3943 = extractvalue %dx.types.ResRet.f32 %3942, 0
  %3944 = extractvalue %dx.types.ResRet.f32 %3942, 1
  %3945 = extractvalue %dx.types.ResRet.f32 %3942, 2
  %3946 = extractvalue %dx.types.ResRet.f32 %3942, 3
  %3947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %3875, float %3879, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.ResRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.ResRet.f32 %3947, 2
  %3951 = extractvalue %dx.types.ResRet.f32 %3947, 3
  %3952 = fmul fast float %3943, %3870
  %3953 = fmul fast float %3948, %3870
  %3954 = fmul fast float %3950, %3870
  %3955 = fmul fast float %3946, %3870
  %3956 = fadd fast float %3930, %3952
  %3957 = fadd fast float %3931, %3953
  %3958 = fadd fast float %3932, %3954
  %3959 = fadd fast float %3933, %3955
  %3960 = fmul fast float %3944, %3870
  %3961 = fmul fast float %3949, %3870
  %3962 = fadd fast float %3936, %3960
  %3963 = fadd fast float %3937, %3961
  %3964 = fmul fast float %3945, %3870
  %3965 = fmul fast float %3951, %3870
  %3966 = fadd fast float %3940, %3964
  %3967 = fadd fast float %3941, %3965
  %3968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3969 = extractvalue %dx.types.CBufRet.f32 %3968, 0
  %3970 = fsub fast float %3437, %3969
  %3971 = fsub fast float %3812, %3437
  %3972 = call float @dx.op.binary.f32(i32 35, float %3971, float %3970)  ; FMax(a,b)
  %3973 = extractvalue %dx.types.CBufRet.f32 %3968, 1
  %3974 = fsub fast float %3438, %3973
  %3975 = fsub fast float %3813, %3438
  %3976 = call float @dx.op.binary.f32(i32 35, float %3975, float %3974)  ; FMax(a,b)
  %3977 = call float @dx.op.binary.f32(i32 35, float %3972, float %3976)  ; FMax(a,b)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3816, 3
  %3979 = fmul fast float %3978, %3977
  %3980 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3982 = extractvalue %dx.types.CBufRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.CBufRet.f32 %3981, 1
  %3984 = extractvalue %dx.types.CBufRet.f32 %3981, 2
  %3985 = extractvalue %dx.types.CBufRet.f32 %3981, 3
  %3986 = fsub fast float %3982, %3956
  %3987 = fsub fast float %3983, %3957
  %3988 = fsub fast float %3984, %3958
  %3989 = fsub fast float %3985, %3959
  %3990 = fmul fast float %3986, %3980
  %3991 = fmul fast float %3987, %3980
  %3992 = fmul fast float %3988, %3980
  %3993 = fmul fast float %3989, %3980
  %3994 = fadd fast float %3990, %3956
  %3995 = fadd fast float %3991, %3957
  %3996 = fadd fast float %3992, %3958
  %3997 = fadd fast float %3993, %3959
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 0
  %4000 = extractvalue %dx.types.CBufRet.f32 %3998, 1
  %4001 = fsub fast float %3999, %3962
  %4002 = fsub fast float %4000, %3963
  %4003 = fmul fast float %4001, %3980
  %4004 = fmul fast float %4002, %3980
  %4005 = fadd fast float %4003, %3962
  %4006 = fadd fast float %4004, %3963
  %4007 = extractvalue %dx.types.CBufRet.f32 %3998, 2
  %4008 = extractvalue %dx.types.CBufRet.f32 %3998, 3
  %4009 = fsub fast float %4007, %3966
  %4010 = fsub fast float %4008, %3967
  %4011 = fmul fast float %4009, %3980
  %4012 = fmul fast float %4010, %3980
  %4013 = fadd fast float %4011, %3966
  %4014 = fadd fast float %4012, %3967
  %4015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4016 = extractvalue %dx.types.CBufRet.f32 %4015, 0
  %4017 = fmul fast float %4016, %3994
  %4018 = fmul fast float %4016, %3995
  %4019 = fmul fast float %4016, %3996
  %4020 = fmul fast float %4016, %3997
  %4021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4021, 0
  %4023 = fmul fast float %4022, %4005
  %4024 = fmul fast float %4022, %4006
  %4025 = fadd fast float %4023, %4017
  %4026 = fadd fast float %4024, %4019
  %4027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4028 = extractvalue %dx.types.CBufRet.f32 %4027, 0
  %4029 = fmul fast float %4028, %4013
  %4030 = fmul fast float %4028, %4014
  %4031 = fadd fast float %4025, %4029
  %4032 = fadd fast float %4026, %4030
  %4033 = extractvalue %dx.types.CBufRet.f32 %4015, 1
  %4034 = fmul fast float %4033, %3994
  %4035 = fmul fast float %4033, %3995
  %4036 = fmul fast float %4033, %3996
  %4037 = fmul fast float %4033, %3997
  %4038 = extractvalue %dx.types.CBufRet.f32 %4021, 1
  %4039 = fmul fast float %4038, %4005
  %4040 = fmul fast float %4038, %4006
  %4041 = fadd fast float %4039, %4034
  %4042 = fadd fast float %4040, %4036
  %4043 = extractvalue %dx.types.CBufRet.f32 %4027, 1
  %4044 = fmul fast float %4043, %4013
  %4045 = fmul fast float %4043, %4014
  %4046 = fadd fast float %4041, %4044
  %4047 = fadd fast float %4042, %4045
  %4048 = extractvalue %dx.types.CBufRet.f32 %4015, 2
  %4049 = fmul fast float %4048, %3994
  %4050 = fmul fast float %4048, %3995
  %4051 = fmul fast float %4048, %3996
  %4052 = fmul fast float %4048, %3997
  %4053 = extractvalue %dx.types.CBufRet.f32 %4021, 2
  %4054 = fmul fast float %4053, %4005
  %4055 = fmul fast float %4053, %4006
  %4056 = fadd fast float %4054, %4049
  %4057 = fadd fast float %4055, %4051
  %4058 = extractvalue %dx.types.CBufRet.f32 %4027, 2
  %4059 = fmul fast float %4058, %4013
  %4060 = fmul fast float %4058, %4014
  %4061 = fadd fast float %4056, %4059
  %4062 = fadd fast float %4057, %4060
  %4063 = fmul fast float %4050, %4050
  %4064 = fmul fast float %4062, %4062
  %4065 = fmul fast float %4052, %4052
  %4066 = fadd fast float %4065, %4063
  %4067 = fadd fast float %4066, %4064
  %4068 = call float @dx.op.unary.f32(i32 24, float %4067)  ; Sqrt(value)
  %4069 = fcmp fast ugt float %4068, 0.000000e+00
  br i1 %4069, label %4070, label %4085

; <label>:4070                                    ; preds = %3804
  %4071 = fsub fast float -0.000000e+00, %4052
  %4072 = fdiv fast float %4071, %4068
  %4073 = fsub fast float -0.000000e+00, %4050
  %4074 = fdiv fast float %4073, %4068
  %4075 = fdiv fast float %4062, %4068
  %4076 = fmul fast float %4061, 0x3FE279A760000000
  %4077 = fmul fast float %4074, %4050
  %4078 = fmul fast float %4075, %4062
  %4079 = fmul fast float %4072, %4052
  %4080 = fadd fast float %4077, %4079
  %4081 = fsub fast float %4080, %4078
  %4082 = call float @dx.op.unary.f32(i32 6, float %4081)  ; FAbs(value)
  %4083 = fadd fast float %4082, 0x3DDB7CDFE0000000
  %4084 = fdiv fast float %4076, %4083
  br label %4085

; <label>:4085                                    ; preds = %4070, %3804
  %4086 = phi float [ %4084, %4070 ], [ 1.000000e+00, %3804 ]
  %4087 = fmul fast float %4035, %4035
  %4088 = fmul fast float %4047, %4047
  %4089 = fmul fast float %4037, %4037
  %4090 = fadd fast float %4089, %4087
  %4091 = fadd fast float %4090, %4088
  %4092 = call float @dx.op.unary.f32(i32 24, float %4091)  ; Sqrt(value)
  %4093 = fcmp fast ugt float %4092, 0.000000e+00
  br i1 %4093, label %4094, label %4109

; <label>:4094                                    ; preds = %4085
  %4095 = fsub fast float -0.000000e+00, %4037
  %4096 = fdiv fast float %4095, %4092
  %4097 = fsub fast float -0.000000e+00, %4035
  %4098 = fdiv fast float %4097, %4092
  %4099 = fdiv fast float %4047, %4092
  %4100 = fmul fast float %4046, 0x3FE279A760000000
  %4101 = fmul fast float %4098, %4035
  %4102 = fmul fast float %4099, %4047
  %4103 = fmul fast float %4096, %4037
  %4104 = fadd fast float %4101, %4103
  %4105 = fsub fast float %4104, %4102
  %4106 = call float @dx.op.unary.f32(i32 6, float %4105)  ; FAbs(value)
  %4107 = fadd fast float %4106, 0x3DDB7CDFE0000000
  %4108 = fdiv fast float %4100, %4107
  br label %4109

; <label>:4109                                    ; preds = %4094, %4085
  %4110 = phi float [ %4108, %4094 ], [ 1.000000e+00, %4085 ]
  %4111 = call float @dx.op.binary.f32(i32 36, float %4110, float %4086)  ; FMin(a,b)
  %4112 = fmul fast float %4018, %4018
  %4113 = fmul fast float %4032, %4032
  %4114 = fmul fast float %4020, %4020
  %4115 = fadd fast float %4114, %4112
  %4116 = fadd fast float %4115, %4113
  %4117 = call float @dx.op.unary.f32(i32 24, float %4116)  ; Sqrt(value)
  %4118 = fcmp fast ugt float %4117, 0.000000e+00
  br i1 %4118, label %4119, label %4134

; <label>:4119                                    ; preds = %4109
  %4120 = fsub fast float -0.000000e+00, %4020
  %4121 = fdiv fast float %4120, %4117
  %4122 = fsub fast float -0.000000e+00, %4018
  %4123 = fdiv fast float %4122, %4117
  %4124 = fdiv fast float %4032, %4117
  %4125 = fmul fast float %4031, 0x3FE279A760000000
  %4126 = fmul fast float %4123, %4018
  %4127 = fmul fast float %4124, %4032
  %4128 = fmul fast float %4121, %4020
  %4129 = fadd fast float %4126, %4128
  %4130 = fsub fast float %4129, %4127
  %4131 = call float @dx.op.unary.f32(i32 6, float %4130)  ; FAbs(value)
  %4132 = fadd fast float %4131, 0x3DDB7CDFE0000000
  %4133 = fdiv fast float %4125, %4132
  br label %4134

; <label>:4134                                    ; preds = %4119, %4109
  %4135 = phi float [ %4133, %4119 ], [ 1.000000e+00, %4109 ]
  %4136 = call float @dx.op.binary.f32(i32 36, float %4135, float %4111)  ; FMin(a,b)
  %4137 = call float @dx.op.unary.f32(i32 7, float %4136)  ; Saturate(value)
  %4138 = fcmp fast olt float %4137, 1.000000e+00
  br i1 %4138, label %4139, label %4149

; <label>:4139                                    ; preds = %4134
  %4140 = fmul fast float %4137, %4018
  %4141 = fmul fast float %4137, %4032
  %4142 = fmul fast float %4137, %4020
  %4143 = fmul fast float %4137, %4035
  %4144 = fmul fast float %4137, %4047
  %4145 = fmul fast float %4137, %4037
  %4146 = fmul fast float %4137, %4050
  %4147 = fmul fast float %4137, %4062
  %4148 = fmul fast float %4137, %4052
  br label %4149

; <label>:4149                                    ; preds = %4139, %4134
  %4150 = phi float [ %4146, %4139 ], [ %4050, %4134 ]
  %4151 = phi float [ %4147, %4139 ], [ %4062, %4134 ]
  %4152 = phi float [ %4148, %4139 ], [ %4052, %4134 ]
  %4153 = phi float [ %4143, %4139 ], [ %4035, %4134 ]
  %4154 = phi float [ %4144, %4139 ], [ %4047, %4134 ]
  %4155 = phi float [ %4145, %4139 ], [ %4037, %4134 ]
  %4156 = phi float [ %4140, %4139 ], [ %4018, %4134 ]
  %4157 = phi float [ %4141, %4139 ], [ %4032, %4134 ]
  %4158 = phi float [ %4142, %4139 ], [ %4020, %4134 ]
  %4159 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4031)  ; FMax(a,b)
  %4160 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4046)  ; FMax(a,b)
  %4161 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4061)  ; FMax(a,b)
  %4162 = fcmp fast oge float %3819, 0.000000e+00
  %4163 = and i1 %4162, %3587
  %4164 = fcmp fast ole float %3819, 1.000000e+00
  %4165 = and i1 %4164, %4163
  %4166 = fcmp fast oge float %3820, 0.000000e+00
  %4167 = and i1 %4166, %4165
  %4168 = fcmp fast ole float %3820, 1.000000e+00
  %4169 = and i1 %4168, %4167
  br i1 %4169, label %4170, label %4315, !dx.controlflow.hints !105

; <label>:4170                                    ; preds = %4149
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 2
  %4173 = extractvalue %dx.types.CBufRet.f32 %4171, 3
  %4174 = fmul fast float %4172, %3819
  %4175 = fmul fast float %4173, %3820
  %4176 = call float @dx.op.unary.f32(i32 27, float %4174)  ; Round_ni(value)
  %4177 = call float @dx.op.unary.f32(i32 27, float %4175)  ; Round_ni(value)
  %4178 = fptosi float %4176 to i32
  %4179 = fptosi float %4177 to i32
  %4180 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %4178, i32 %4179, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4181 = extractvalue %dx.types.ResRet.i32 %4180, 0
  %4182 = and i32 %4181, 65535
  %4183 = lshr i32 %4181, 16
  %4184 = icmp eq i32 %4182, 65535
  br i1 %4184, label %4221, label %4185

; <label>:4185                                    ; preds = %4170
  %4186 = extractvalue %dx.types.CBufRet.f32 %3585, 1
  %4187 = extractvalue %dx.types.CBufRet.f32 %4171, 0
  %4188 = extractvalue %dx.types.CBufRet.f32 %4171, 1
  %4189 = fmul fast float %4187, %3819
  %4190 = fmul fast float %4188, %3820
  %4191 = fmul fast float %4189, 1.250000e-01
  %4192 = fmul fast float %4190, 1.250000e-01
  %4193 = call float @dx.op.unary.f32(i32 27, float %4191)  ; Round_ni(value)
  %4194 = call float @dx.op.unary.f32(i32 27, float %4192)  ; Round_ni(value)
  %4195 = fmul fast float %4193, 8.000000e+00
  %4196 = fmul fast float %4194, 8.000000e+00
  %4197 = and i32 %4181, 255
  %4198 = lshr i32 %4181, 8
  %4199 = and i32 %4198, 255
  %4200 = mul nuw nsw i32 %4197, 9
  %4201 = uitofp i32 %4200 to float
  %4202 = mul nuw nsw i32 %4199, 9
  %4203 = uitofp i32 %4202 to float
  %4204 = fadd fast float %4201, 5.000000e-01
  %4205 = fadd fast float %4204, %4189
  %4206 = fsub fast float %4205, %4195
  %4207 = fadd fast float %4203, 5.000000e-01
  %4208 = fadd fast float %4207, %4190
  %4209 = fsub fast float %4208, %4196
  %4210 = fdiv fast float %4206, %3586
  %4211 = fdiv fast float %4209, %4186
  %4212 = fmul fast float %3847, 4.375000e-01
  %4213 = fadd fast float %4212, 3.125000e-02
  %4214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %4210, float %4211, float %4213, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.ResRet.f32 %4214, 1
  %4217 = extractvalue %dx.types.ResRet.f32 %4214, 2
  %4218 = fadd fast float %4215, %4159
  %4219 = fadd fast float %4216, %4160
  %4220 = fadd fast float %4217, %4161
  br label %4221

; <label>:4221                                    ; preds = %4185, %4170
  %4222 = phi float [ %4220, %4185 ], [ %4161, %4170 ]
  %4223 = phi float [ %4219, %4185 ], [ %4160, %4170 ]
  %4224 = phi float [ %4218, %4185 ], [ %4159, %4170 ]
  %4225 = icmp eq i32 %4183, 65535
  br i1 %4225, label %4315, label %4226

; <label>:4226                                    ; preds = %4221
  %4227 = extractvalue %dx.types.CBufRet.f32 %3585, 1
  %4228 = extractvalue %dx.types.CBufRet.f32 %4171, 0
  %4229 = extractvalue %dx.types.CBufRet.f32 %4171, 1
  %4230 = fmul fast float %4228, %3819
  %4231 = fmul fast float %4229, %3820
  %4232 = fmul fast float %4230, 1.250000e-01
  %4233 = fmul fast float %4231, 1.250000e-01
  %4234 = call float @dx.op.unary.f32(i32 27, float %4232)  ; Round_ni(value)
  %4235 = call float @dx.op.unary.f32(i32 27, float %4233)  ; Round_ni(value)
  %4236 = fmul fast float %4234, 8.000000e+00
  %4237 = fmul fast float %4235, 8.000000e+00
  %4238 = fsub fast float %4230, %4236
  %4239 = fsub fast float %4231, %4237
  %4240 = fadd fast float %4238, 5.000000e-01
  %4241 = fadd fast float %4239, 5.000000e-01
  %4242 = and i32 %4183, 255
  %4243 = lshr i32 %4181, 24
  %4244 = mul nuw nsw i32 %4242, 9
  %4245 = uitofp i32 %4244 to float
  %4246 = mul nuw nsw i32 %4243, 9
  %4247 = uitofp i32 %4246 to float
  %4248 = fadd fast float %4240, %4245
  %4249 = fadd fast float %4241, %4247
  %4250 = fdiv fast float %4248, %3586
  %4251 = fdiv fast float %4249, %4227
  %4252 = fmul fast float %3847, 4.375000e-01
  %4253 = fadd fast float %4252, 3.125000e-02
  %4254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %4250, float %4251, float %4253, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4255 = extractvalue %dx.types.ResRet.f32 %4254, 0
  %4256 = extractvalue %dx.types.ResRet.f32 %4254, 1
  %4257 = extractvalue %dx.types.ResRet.f32 %4254, 2
  %4258 = fadd fast float %4252, 5.312500e-01
  %4259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %4250, float %4251, float %4258, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4260 = extractvalue %dx.types.ResRet.f32 %4259, 0
  %4261 = extractvalue %dx.types.ResRet.f32 %4259, 1
  %4262 = extractvalue %dx.types.ResRet.f32 %4259, 2
  %4263 = fmul fast float %4260, 2.000000e+00
  %4264 = fmul fast float %4261, 2.000000e+00
  %4265 = fmul fast float %4262, 2.000000e+00
  %4266 = fadd fast float %4263, -1.000000e+00
  %4267 = fadd fast float %4264, -1.000000e+00
  %4268 = fadd fast float %4265, -1.000000e+00
  %4269 = fmul fast float %4266, %4266
  %4270 = fmul fast float %4267, %4267
  %4271 = fadd fast float %4269, %4270
  %4272 = fmul fast float %4268, %4268
  %4273 = fadd fast float %4271, %4272
  %4274 = call float @dx.op.unary.f32(i32 24, float %4273)  ; Sqrt(value)
  %4275 = fcmp fast ogt float %4274, 0.000000e+00
  br i1 %4275, label %4276, label %4280

; <label>:4276                                    ; preds = %4226
  %4277 = fdiv fast float %4266, %4274
  %4278 = fdiv fast float %4267, %4274
  %4279 = fdiv fast float %4268, %4274
  br label %4280

; <label>:4280                                    ; preds = %4276, %4226
  %4281 = phi float [ %4277, %4276 ], [ 0.000000e+00, %4226 ]
  %4282 = phi float [ %4278, %4276 ], [ 0.000000e+00, %4226 ]
  %4283 = phi float [ %4279, %4276 ], [ 0.000000e+00, %4226 ]
  %4284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.f32 %4284, 0
  %4286 = extractvalue %dx.types.CBufRet.f32 %4284, 1
  %4287 = fsub fast float %3437, %4285
  %4288 = fsub fast float %3438, %4286
  %4289 = fmul fast float %4287, %4287
  %4290 = fmul fast float %4288, %4288
  %4291 = fadd fast float %4289, %4290
  %4292 = call float @dx.op.unary.f32(i32 24, float %4291)  ; Sqrt(value)
  %4293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4294 = extractvalue %dx.types.CBufRet.f32 %4293, 0
  %4295 = extractvalue %dx.types.CBufRet.f32 %4293, 1
  %4296 = fsub fast float %4292, %4294
  %4297 = fdiv fast float %4296, %4295
  %4298 = call float @dx.op.unary.f32(i32 7, float %4297)  ; Saturate(value)
  %4299 = fmul fast float %4298, 2.000000e+00
  %4300 = fsub fast float 3.000000e+00, %4299
  %4301 = fmul fast float %4298, %4298
  %4302 = fmul fast float %4301, %4300
  %4303 = call float @dx.op.dot3.f32(i32 55, float %4281, float %4282, float %4283, float %3409, float %3410, float %3411)  ; Dot3(ax,ay,az,bx,by,bz)
  %4304 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4303)  ; FMax(a,b)
  %4305 = fmul fast float %4304, 0x400C5BF8A0000000
  %4306 = fmul fast float %4302, %4255
  %4307 = fmul fast float %4306, %4305
  %4308 = fadd fast float %4307, %4224
  %4309 = fmul fast float %4302, %4256
  %4310 = fmul fast float %4309, %4305
  %4311 = fadd fast float %4310, %4223
  %4312 = fmul fast float %4302, %4257
  %4313 = fmul fast float %4312, %4305
  %4314 = fadd fast float %4313, %4222
  br label %4315

; <label>:4315                                    ; preds = %4280, %4221, %4149
  %4316 = phi float [ %4314, %4280 ], [ %4222, %4221 ], [ %4161, %4149 ]
  %4317 = phi float [ %4311, %4280 ], [ %4223, %4221 ], [ %4160, %4149 ]
  %4318 = phi float [ %4308, %4280 ], [ %4224, %4221 ], [ %4159, %4149 ]
  %4319 = fcmp fast ogt float %3806, %3843
  %4320 = and i1 %4162, %4319
  %4321 = and i1 %4164, %4320
  %4322 = and i1 %4166, %4321
  %4323 = and i1 %4168, %4322
  br i1 %4323, label %4324, label %4381, !dx.controlflow.hints !106

; <label>:4324                                    ; preds = %4315
  %4325 = fmul fast float %3845, 0x3FC24924A0000000
  %4326 = fsub fast float %3806, %3843
  %4327 = fdiv fast float %4326, %4325
  %4328 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  %4329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.f32 %4329, 0
  %4331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %4332 = extractvalue %dx.types.CBufRet.f32 %4331, 0
  %4333 = extractvalue %dx.types.CBufRet.f32 %4331, 1
  %4334 = extractvalue %dx.types.CBufRet.f32 %4331, 2
  %4335 = fsub fast float %4330, %4318
  %4336 = fsub fast float %4332, %4156
  %4337 = fsub fast float %4333, %4157
  %4338 = fsub fast float %4334, %4158
  %4339 = fmul fast float %4335, %4328
  %4340 = fmul fast float %4336, %4328
  %4341 = fmul fast float %4337, %4328
  %4342 = fmul fast float %4338, %4328
  %4343 = fadd fast float %4339, %4318
  %4344 = fadd fast float %4340, %4156
  %4345 = fadd fast float %4341, %4157
  %4346 = fadd fast float %4342, %4158
  %4347 = extractvalue %dx.types.CBufRet.f32 %4329, 1
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 0
  %4350 = extractvalue %dx.types.CBufRet.f32 %4348, 1
  %4351 = extractvalue %dx.types.CBufRet.f32 %4348, 2
  %4352 = fsub fast float %4347, %4317
  %4353 = fsub fast float %4349, %4153
  %4354 = fsub fast float %4350, %4154
  %4355 = fsub fast float %4351, %4155
  %4356 = fmul fast float %4352, %4328
  %4357 = fmul fast float %4353, %4328
  %4358 = fmul fast float %4354, %4328
  %4359 = fmul fast float %4355, %4328
  %4360 = fadd fast float %4356, %4317
  %4361 = fadd fast float %4357, %4153
  %4362 = fadd fast float %4358, %4154
  %4363 = fadd fast float %4359, %4155
  %4364 = extractvalue %dx.types.CBufRet.f32 %4329, 2
  %4365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.f32 %4365, 0
  %4367 = extractvalue %dx.types.CBufRet.f32 %4365, 1
  %4368 = extractvalue %dx.types.CBufRet.f32 %4365, 2
  %4369 = fsub fast float %4364, %4316
  %4370 = fsub fast float %4366, %4150
  %4371 = fsub fast float %4367, %4151
  %4372 = fsub fast float %4368, %4152
  %4373 = fmul fast float %4369, %4328
  %4374 = fmul fast float %4370, %4328
  %4375 = fmul fast float %4371, %4328
  %4376 = fmul fast float %4372, %4328
  %4377 = fadd fast float %4373, %4316
  %4378 = fadd fast float %4374, %4150
  %4379 = fadd fast float %4375, %4151
  %4380 = fadd fast float %4376, %4152
  br label %4381

; <label>:4381                                    ; preds = %4324, %4315
  %4382 = phi float [ %4377, %4324 ], [ %4316, %4315 ]
  %4383 = phi float [ %4378, %4324 ], [ %4150, %4315 ]
  %4384 = phi float [ %4379, %4324 ], [ %4151, %4315 ]
  %4385 = phi float [ %4380, %4324 ], [ %4152, %4315 ]
  %4386 = phi float [ %4360, %4324 ], [ %4317, %4315 ]
  %4387 = phi float [ %4361, %4324 ], [ %4153, %4315 ]
  %4388 = phi float [ %4362, %4324 ], [ %4154, %4315 ]
  %4389 = phi float [ %4363, %4324 ], [ %4155, %4315 ]
  %4390 = phi float [ %4343, %4324 ], [ %4318, %4315 ]
  %4391 = phi float [ %4344, %4324 ], [ %4156, %4315 ]
  %4392 = phi float [ %4345, %4324 ], [ %4157, %4315 ]
  %4393 = phi float [ %4346, %4324 ], [ %4158, %4315 ]
  %4394 = extractvalue %dx.types.CBufRet.f32 %3968, 3
  %4395 = fmul fast float %4394, %4390
  %4396 = fmul fast float %4394, %4386
  %4397 = fmul fast float %4394, %4382
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 3
  %4400 = fmul fast float %4395, %4399
  %4401 = fmul fast float %4396, %4399
  %4402 = fmul fast float %4397, %4399
  %4403 = fmul fast float %4391, 1.500000e+00
  %4404 = fmul fast float %4403, %4394
  %4405 = fmul fast float %4404, %4399
  %4406 = fmul fast float %4392, 1.500000e+00
  %4407 = fmul fast float %4406, %4394
  %4408 = fmul fast float %4407, %4399
  %4409 = fmul fast float %4393, 1.500000e+00
  %4410 = fmul fast float %4409, %4394
  %4411 = fmul fast float %4410, %4399
  %4412 = fmul fast float %4387, 1.500000e+00
  %4413 = fmul fast float %4412, %4394
  %4414 = fmul fast float %4413, %4399
  %4415 = fmul fast float %4388, 1.500000e+00
  %4416 = fmul fast float %4415, %4394
  %4417 = fmul fast float %4416, %4399
  %4418 = fmul fast float %4389, 1.500000e+00
  %4419 = fmul fast float %4418, %4394
  %4420 = fmul fast float %4419, %4399
  %4421 = fmul fast float %4383, 1.500000e+00
  %4422 = fmul fast float %4421, %4394
  %4423 = fmul fast float %4422, %4399
  %4424 = fmul fast float %4384, 1.500000e+00
  %4425 = fmul fast float %4424, %4394
  %4426 = fmul fast float %4425, %4399
  %4427 = fmul fast float %4385, 1.500000e+00
  %4428 = fmul fast float %4427, %4394
  %4429 = fmul fast float %4428, %4399
  %4430 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4400)  ; FMax(a,b)
  %4431 = call float @dx.op.dot3.f32(i32 55, float %4405, float %4408, float %4411, float %4405, float %4408, float %4411)  ; Dot3(ax,ay,az,bx,by,bz)
  %4432 = fcmp fast oeq float %4431, 0.000000e+00
  %4433 = fcmp fast oeq float %4430, 0.000000e+00
  %4434 = or i1 %4433, %4432
  br i1 %4434, label %4464, label %4435

; <label>:4435                                    ; preds = %4381
  %4436 = fsub fast float -0.000000e+00, %4411
  %4437 = fsub fast float -0.000000e+00, %4405
  %4438 = call float @dx.op.unary.f32(i32 24, float %4431)  ; Sqrt(value)
  %4439 = fdiv fast float %4438, %4430
  %4440 = fcmp fast ogt float %4439, 0x3FFB6F8900000000
  %4441 = select i1 %4440, float 0x3FFB6F8900000000, float %4439
  %4442 = fmul fast float %4441, 0x3FE8A23460000000
  %4443 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4444 = call float @dx.op.binary.f32(i32 35, float %4441, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4445 = fmul fast float %4443, %4430
  %4446 = fmul fast float %4444, 0x3FF279A740000000
  %4447 = fadd fast float %4446, -1.000000e+00
  %4448 = call float @dx.op.dot3.f32(i32 55, float %4436, float %4437, float %4408, float %4436, float %4437, float %4408)  ; Dot3(ax,ay,az,bx,by,bz)
  %4449 = call float @dx.op.unary.f32(i32 25, float %4448)  ; Rsqrt(value)
  %4450 = fmul fast float %4449, %4436
  %4451 = fmul fast float %4449, %4437
  %4452 = fmul fast float %4449, %4408
  %4453 = fmul fast float %4447, %4447
  %4454 = fsub fast float 1.000000e+00, %4453
  %4455 = fmul fast float %4444, 0x40005F8BE0000000
  %4456 = fsub fast float 0x400C5BF8A0000000, %4455
  %4457 = fdiv fast float %4445, %4456
  %4458 = fmul fast float %4457, 0x3FEE31C3C0000000
  %4459 = fmul fast float %4458, %4454
  %4460 = fmul fast float %4444, 0x3FDACB7480000000
  %4461 = fadd fast float %4460, 0xBFD7347680000000
  %4462 = fmul fast float %4461, %4457
  %4463 = fmul fast float %4462, %4454
  br label %4464

; <label>:4464                                    ; preds = %4435, %4381
  %4465 = phi float [ %4450, %4435 ], [ 0.000000e+00, %4381 ]
  %4466 = phi float [ %4451, %4435 ], [ 0.000000e+00, %4381 ]
  %4467 = phi float [ %4452, %4435 ], [ 0.000000e+00, %4381 ]
  %4468 = phi float [ %4459, %4435 ], [ 0.000000e+00, %4381 ]
  %4469 = phi float [ %4463, %4435 ], [ 0.000000e+00, %4381 ]
  %4470 = call float @dx.op.dot3.f32(i32 55, float %4465, float %4466, float %4467, float %3409, float %3410, float %3411)  ; Dot3(ax,ay,az,bx,by,bz)
  %4471 = fmul fast float %4470, 0x3FDF454380000000
  %4472 = fmul fast float %4470, %4470
  %4473 = fmul fast float %4472, 0x3FEE471020000000
  %4474 = fadd fast float %4473, 0xBFD42F6020000000
  %4475 = fmul fast float %4430, 0x3FD20DD760000000
  %4476 = fmul fast float %4474, %4469
  %4477 = fadd fast float %4476, %4475
  %4478 = fmul fast float %4471, %4468
  %4479 = fadd fast float %4477, %4478
  %4480 = fsub fast float %4477, %4478
  %4481 = call float @dx.op.dot3.f32(i32 55, float %4465, float %4466, float %4467, float %3426, float %3427, float %3428)  ; Dot3(ax,ay,az,bx,by,bz)
  %4482 = fmul fast float %4481, 0x3FDF454380000000
  %4483 = fmul fast float %4481, %4481
  %4484 = fmul fast float %4483, 0x3FEE471020000000
  %4485 = fadd fast float %4484, 0xBFD42F6020000000
  %4486 = call float @dx.op.dot3.f32(i32 55, float %4430, float %4468, float %4469, float 0x3FD20DD760000000, float %4482, float %4485)  ; Dot3(ax,ay,az,bx,by,bz)
  %4487 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4401)  ; FMax(a,b)
  %4488 = call float @dx.op.dot3.f32(i32 55, float %4414, float %4417, float %4420, float %4414, float %4417, float %4420)  ; Dot3(ax,ay,az,bx,by,bz)
  %4489 = fcmp fast oeq float %4488, 0.000000e+00
  %4490 = fcmp fast oeq float %4487, 0.000000e+00
  %4491 = or i1 %4490, %4489
  br i1 %4491, label %4521, label %4492

; <label>:4492                                    ; preds = %4464
  %4493 = fsub fast float -0.000000e+00, %4420
  %4494 = fsub fast float -0.000000e+00, %4414
  %4495 = call float @dx.op.unary.f32(i32 24, float %4488)  ; Sqrt(value)
  %4496 = fdiv fast float %4495, %4487
  %4497 = fcmp fast ogt float %4496, 0x3FFB6F8900000000
  %4498 = select i1 %4497, float 0x3FFB6F8900000000, float %4496
  %4499 = fmul fast float %4498, 0x3FE8A23460000000
  %4500 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4501 = call float @dx.op.binary.f32(i32 35, float %4498, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4502 = fmul fast float %4500, %4487
  %4503 = fmul fast float %4501, 0x3FF279A740000000
  %4504 = fadd fast float %4503, -1.000000e+00
  %4505 = call float @dx.op.dot3.f32(i32 55, float %4493, float %4494, float %4417, float %4493, float %4494, float %4417)  ; Dot3(ax,ay,az,bx,by,bz)
  %4506 = call float @dx.op.unary.f32(i32 25, float %4505)  ; Rsqrt(value)
  %4507 = fmul fast float %4506, %4493
  %4508 = fmul fast float %4506, %4494
  %4509 = fmul fast float %4506, %4417
  %4510 = fmul fast float %4504, %4504
  %4511 = fsub fast float 1.000000e+00, %4510
  %4512 = fmul fast float %4501, 0x40005F8BE0000000
  %4513 = fsub fast float 0x400C5BF8A0000000, %4512
  %4514 = fdiv fast float %4502, %4513
  %4515 = fmul fast float %4514, 0x3FEE31C3C0000000
  %4516 = fmul fast float %4515, %4511
  %4517 = fmul fast float %4501, 0x3FDACB7480000000
  %4518 = fadd fast float %4517, 0xBFD7347680000000
  %4519 = fmul fast float %4518, %4514
  %4520 = fmul fast float %4519, %4511
  br label %4521

; <label>:4521                                    ; preds = %4492, %4464
  %4522 = phi float [ %4507, %4492 ], [ 0.000000e+00, %4464 ]
  %4523 = phi float [ %4508, %4492 ], [ 0.000000e+00, %4464 ]
  %4524 = phi float [ %4509, %4492 ], [ 0.000000e+00, %4464 ]
  %4525 = phi float [ %4516, %4492 ], [ 0.000000e+00, %4464 ]
  %4526 = phi float [ %4520, %4492 ], [ 0.000000e+00, %4464 ]
  %4527 = call float @dx.op.dot3.f32(i32 55, float %4522, float %4523, float %4524, float %3409, float %3410, float %3411)  ; Dot3(ax,ay,az,bx,by,bz)
  %4528 = fmul fast float %4527, 0x3FDF454380000000
  %4529 = fmul fast float %4527, %4527
  %4530 = fmul fast float %4529, 0x3FEE471020000000
  %4531 = fadd fast float %4530, 0xBFD42F6020000000
  %4532 = fmul fast float %4487, 0x3FD20DD760000000
  %4533 = fmul fast float %4531, %4526
  %4534 = fadd fast float %4533, %4532
  %4535 = fmul fast float %4528, %4525
  %4536 = fadd fast float %4534, %4535
  %4537 = fsub fast float %4534, %4535
  %4538 = call float @dx.op.dot3.f32(i32 55, float %4522, float %4523, float %4524, float %3426, float %3427, float %3428)  ; Dot3(ax,ay,az,bx,by,bz)
  %4539 = fmul fast float %4538, 0x3FDF454380000000
  %4540 = fmul fast float %4538, %4538
  %4541 = fmul fast float %4540, 0x3FEE471020000000
  %4542 = fadd fast float %4541, 0xBFD42F6020000000
  %4543 = call float @dx.op.dot3.f32(i32 55, float %4487, float %4525, float %4526, float 0x3FD20DD760000000, float %4539, float %4542)  ; Dot3(ax,ay,az,bx,by,bz)
  %4544 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4402)  ; FMax(a,b)
  %4545 = call float @dx.op.dot3.f32(i32 55, float %4423, float %4426, float %4429, float %4423, float %4426, float %4429)  ; Dot3(ax,ay,az,bx,by,bz)
  %4546 = fcmp fast oeq float %4545, 0.000000e+00
  %4547 = fcmp fast oeq float %4544, 0.000000e+00
  %4548 = or i1 %4547, %4546
  br i1 %4548, label %4578, label %4549

; <label>:4549                                    ; preds = %4521
  %4550 = fsub fast float -0.000000e+00, %4429
  %4551 = fsub fast float -0.000000e+00, %4423
  %4552 = call float @dx.op.unary.f32(i32 24, float %4545)  ; Sqrt(value)
  %4553 = fdiv fast float %4552, %4544
  %4554 = fcmp fast ogt float %4553, 0x3FFB6F8900000000
  %4555 = select i1 %4554, float 0x3FFB6F8900000000, float %4553
  %4556 = fmul fast float %4555, 0x3FE8A23460000000
  %4557 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4558 = call float @dx.op.binary.f32(i32 35, float %4555, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4559 = fmul fast float %4557, %4544
  %4560 = fmul fast float %4558, 0x3FF279A740000000
  %4561 = fadd fast float %4560, -1.000000e+00
  %4562 = call float @dx.op.dot3.f32(i32 55, float %4550, float %4551, float %4426, float %4550, float %4551, float %4426)  ; Dot3(ax,ay,az,bx,by,bz)
  %4563 = call float @dx.op.unary.f32(i32 25, float %4562)  ; Rsqrt(value)
  %4564 = fmul fast float %4563, %4550
  %4565 = fmul fast float %4563, %4551
  %4566 = fmul fast float %4563, %4426
  %4567 = fmul fast float %4561, %4561
  %4568 = fsub fast float 1.000000e+00, %4567
  %4569 = fmul fast float %4558, 0x40005F8BE0000000
  %4570 = fsub fast float 0x400C5BF8A0000000, %4569
  %4571 = fdiv fast float %4559, %4570
  %4572 = fmul fast float %4571, 0x3FEE31C3C0000000
  %4573 = fmul fast float %4572, %4568
  %4574 = fmul fast float %4558, 0x3FDACB7480000000
  %4575 = fadd fast float %4574, 0xBFD7347680000000
  %4576 = fmul fast float %4575, %4571
  %4577 = fmul fast float %4576, %4568
  br label %4578

; <label>:4578                                    ; preds = %4549, %4521
  %4579 = phi float [ %4564, %4549 ], [ 0.000000e+00, %4521 ]
  %4580 = phi float [ %4565, %4549 ], [ 0.000000e+00, %4521 ]
  %4581 = phi float [ %4566, %4549 ], [ 0.000000e+00, %4521 ]
  %4582 = phi float [ %4573, %4549 ], [ 0.000000e+00, %4521 ]
  %4583 = phi float [ %4577, %4549 ], [ 0.000000e+00, %4521 ]
  %4584 = call float @dx.op.dot3.f32(i32 55, float %4579, float %4580, float %4581, float %3409, float %3410, float %3411)  ; Dot3(ax,ay,az,bx,by,bz)
  %4585 = fmul fast float %4584, 0x3FDF454380000000
  %4586 = fmul fast float %4584, %4584
  %4587 = fmul fast float %4586, 0x3FEE471020000000
  %4588 = fadd fast float %4587, 0xBFD42F6020000000
  %4589 = fmul fast float %4544, 0x3FD20DD760000000
  %4590 = fmul fast float %4588, %4583
  %4591 = fadd fast float %4590, %4589
  %4592 = fmul fast float %4585, %4582
  %4593 = fadd fast float %4591, %4592
  %4594 = fsub fast float %4591, %4592
  %4595 = call float @dx.op.dot3.f32(i32 55, float %4579, float %4580, float %4581, float %3426, float %3427, float %3428)  ; Dot3(ax,ay,az,bx,by,bz)
  %4596 = fmul fast float %4595, 0x3FDF454380000000
  %4597 = fmul fast float %4595, %4595
  %4598 = fmul fast float %4597, 0x3FEE471020000000
  %4599 = fadd fast float %4598, 0xBFD42F6020000000
  %4600 = call float @dx.op.dot3.f32(i32 55, float %4544, float %4582, float %4583, float 0x3FD20DD760000000, float %4596, float %4599)  ; Dot3(ax,ay,az,bx,by,bz)
  %4601 = call float @dx.op.binary.f32(i32 35, float %4479, float 0.000000e+00)  ; FMax(a,b)
  %4602 = call float @dx.op.binary.f32(i32 35, float %4536, float 0.000000e+00)  ; FMax(a,b)
  %4603 = call float @dx.op.binary.f32(i32 35, float %4593, float 0.000000e+00)  ; FMax(a,b)
  %4604 = call float @dx.op.binary.f32(i32 35, float %4480, float 0.000000e+00)  ; FMax(a,b)
  %4605 = call float @dx.op.binary.f32(i32 35, float %4537, float 0.000000e+00)  ; FMax(a,b)
  %4606 = call float @dx.op.binary.f32(i32 35, float %4594, float 0.000000e+00)  ; FMax(a,b)
  %4607 = call float @dx.op.binary.f32(i32 35, float %4486, float 0.000000e+00)  ; FMax(a,b)
  %4608 = call float @dx.op.binary.f32(i32 35, float %4543, float 0.000000e+00)  ; FMax(a,b)
  %4609 = call float @dx.op.binary.f32(i32 35, float %4600, float 0.000000e+00)  ; FMax(a,b)
  %4610 = fsub fast float %3800, %4601
  %4611 = fsub fast float %3801, %4602
  %4612 = fsub fast float %3802, %4603
  %4613 = fmul fast float %4610, %3478
  %4614 = fmul fast float %4611, %3478
  %4615 = fmul fast float %4612, %3478
  %4616 = fadd fast float %4613, %4601
  %4617 = fadd fast float %4614, %4602
  %4618 = fadd fast float %4615, %4603
  %4619 = fsub fast float %3797, %4604
  %4620 = fsub fast float %3798, %4605
  %4621 = fsub fast float %3799, %4606
  %4622 = fmul fast float %4619, %3478
  %4623 = fmul fast float %4620, %3478
  %4624 = fmul fast float %4621, %3478
  %4625 = fadd fast float %4622, %4604
  %4626 = fadd fast float %4623, %4605
  %4627 = fadd fast float %4624, %4606
  %4628 = fsub fast float %3794, %4607
  %4629 = fsub fast float %3795, %4608
  %4630 = fsub fast float %3796, %4609
  %4631 = fmul fast float %4628, %3478
  %4632 = fmul fast float %4629, %3478
  %4633 = fmul fast float %4630, %3478
  %4634 = fadd fast float %4631, %4607
  %4635 = fadd fast float %4632, %4608
  %4636 = fadd fast float %4633, %4609
  br label %4637

; <label>:4637                                    ; preds = %4578, %3793
  %4638 = phi float [ %4634, %4578 ], [ %3794, %3793 ]
  %4639 = phi float [ %4635, %4578 ], [ %3795, %3793 ]
  %4640 = phi float [ %4636, %4578 ], [ %3796, %3793 ]
  %4641 = phi float [ %4625, %4578 ], [ %3797, %3793 ]
  %4642 = phi float [ %4626, %4578 ], [ %3798, %3793 ]
  %4643 = phi float [ %4627, %4578 ], [ %3799, %3793 ]
  %4644 = phi float [ %4616, %4578 ], [ %3800, %3793 ]
  %4645 = phi float [ %4617, %4578 ], [ %3801, %3793 ]
  %4646 = phi float [ %4618, %4578 ], [ %3802, %3793 ]
  %4647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4648 = extractvalue %dx.types.CBufRet.f32 %4647, 0
  %4649 = call float @dx.op.binary.f32(i32 36, float %3412, float %4648)  ; FMin(a,b)
  %4650 = fsub fast float 1.000000e+00, %3429
  %4651 = fmul fast float %4649, %4650
  %4652 = fsub fast float 1.000000e+00, %4651
  %4653 = bitcast float %4652 to i32
  %4654 = sub nsw i32 2129859010, %4653
  %4655 = bitcast i32 %4654 to float
  %4656 = call float @dx.op.binary.f32(i32 36, float %3413, float %4648)  ; FMin(a,b)
  %4657 = fmul fast float %4656, %4650
  %4658 = fsub fast float 1.000000e+00, %4657
  %4659 = bitcast float %4658 to i32
  %4660 = sub nsw i32 2129859010, %4659
  %4661 = bitcast i32 %4660 to float
  %4662 = call float @dx.op.binary.f32(i32 36, float %3414, float %4648)  ; FMin(a,b)
  %4663 = fmul fast float %4662, %4650
  %4664 = fsub fast float 1.000000e+00, %4663
  %4665 = bitcast float %4664 to i32
  %4666 = sub nsw i32 2129859010, %4665
  %4667 = bitcast i32 %4666 to float
  %4668 = fmul fast float %4644, %3429
  %4669 = fmul fast float %4668, %4655
  %4670 = fmul fast float %4645, %3429
  %4671 = fmul fast float %4670, %4661
  %4672 = fmul fast float %4646, %3429
  %4673 = fmul fast float %4672, %4667
  %4674 = call float @dx.op.binary.f32(i32 36, float %3406, float %4648)  ; FMin(a,b)
  %4675 = fmul fast float %4674, %4650
  %4676 = fsub fast float 1.000000e+00, %4675
  %4677 = bitcast float %4676 to i32
  %4678 = sub nsw i32 2129859010, %4677
  %4679 = bitcast i32 %4678 to float
  %4680 = call float @dx.op.binary.f32(i32 36, float %3407, float %4648)  ; FMin(a,b)
  %4681 = fmul fast float %4680, %4650
  %4682 = fsub fast float 1.000000e+00, %4681
  %4683 = bitcast float %4682 to i32
  %4684 = sub nsw i32 2129859010, %4683
  %4685 = bitcast i32 %4684 to float
  %4686 = call float @dx.op.binary.f32(i32 36, float %3418, float %4648)  ; FMin(a,b)
  %4687 = fmul fast float %4686, %4650
  %4688 = fsub fast float 1.000000e+00, %4687
  %4689 = bitcast float %4688 to i32
  %4690 = sub nsw i32 2129859010, %4689
  %4691 = bitcast i32 %4690 to float
  %4692 = fmul fast float %4638, %3429
  %4693 = fmul fast float %4692, %4679
  %4694 = fmul fast float %4639, %3429
  %4695 = fmul fast float %4694, %4685
  %4696 = fmul fast float %4640, %3429
  %4697 = fmul fast float %4696, %4691
  %4698 = call float @dx.op.dot3.f32(i32 55, float %4669, float %4671, float %4673, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = select i1 %234, float 0.000000e+00, float %4669
  %4700 = select i1 %234, float %4698, float %4671
  %4701 = select i1 %234, float 0.000000e+00, float %4673
  %4702 = call float @dx.op.dot3.f32(i32 55, float %4641, float %4642, float %4643, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4703 = select i1 %234, float 0.000000e+00, float %4641
  %4704 = select i1 %234, float %4702, float %4642
  %4705 = select i1 %234, float 0.000000e+00, float %4643
  %4706 = call float @dx.op.dot3.f32(i32 55, float %4693, float %4695, float %4697, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4707 = select i1 %234, float 0.000000e+00, float %4693
  %4708 = select i1 %234, float %4706, float %4695
  %4709 = select i1 %234, float 0.000000e+00, float %4697
  %4710 = fmul fast float %2157, %2157
  %4711 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4712 = fmul fast float %3420, 9.843750e-01
  %4713 = fmul fast float %3415, 9.843750e-01
  %4714 = fadd fast float %4712, 7.812500e-03
  %4715 = fadd fast float %4713, 7.812500e-03
  %4716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4714, float %4715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4717 = extractvalue %dx.types.ResRet.f32 %4716, 0
  %4718 = extractvalue %dx.types.ResRet.f32 %4716, 1
  %4719 = extractvalue %dx.types.ResRet.f32 %4716, 2
  %4720 = extractvalue %dx.types.ResRet.f32 %4716, 3
  %4721 = fsub fast float 1.000000e+00, %4711
  %4722 = fsub fast float %4719, %4717
  %4723 = fsub fast float %4720, %4718
  %4724 = fmul fast float %4722, %4721
  %4725 = fmul fast float %4723, %4721
  %4726 = fadd fast float %4724, %4717
  %4727 = fadd fast float %4725, %4718
  %4728 = fmul fast float %4726, %3406
  %4729 = fmul fast float %4726, %3407
  %4730 = fmul fast float %4726, %3418
  %4731 = fadd fast float %4728, %4727
  %4732 = fadd fast float %4729, %4727
  %4733 = fadd fast float %4730, %4727
  %4734 = fcmp fast ogt float %2751, 0.000000e+00
  br i1 %4734, label %4735, label %4761

; <label>:4735                                    ; preds = %4637
  %4736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %2751, float %3420, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4737 = extractvalue %dx.types.ResRet.f32 %4736, 0
  %4738 = extractvalue %dx.types.ResRet.f32 %4736, 1
  %4739 = extractvalue %dx.types.ResRet.f32 %4736, 2
  %4740 = fadd fast float %4737, -5.000000e-01
  %4741 = fadd fast float %4738, -5.000000e-01
  %4742 = fadd fast float %4739, -5.000000e-01
  %4743 = fsub fast float 1.000000e+00, %3406
  %4744 = fsub fast float 1.000000e+00, %3407
  %4745 = fsub fast float 1.000000e+00, %3418
  %4746 = fmul fast float %3406, 4.000000e+00
  %4747 = fmul fast float %4746, %4743
  %4748 = fmul fast float %4747, %4740
  %4749 = fmul fast float %3407, 4.000000e+00
  %4750 = fmul fast float %4749, %4744
  %4751 = fmul fast float %4750, %4741
  %4752 = fmul fast float %3418, 4.000000e+00
  %4753 = fmul fast float %4752, %4745
  %4754 = fmul fast float %4753, %4742
  %4755 = fadd fast float %4748, %4731
  %4756 = fadd fast float %4751, %4732
  %4757 = fadd fast float %4754, %4733
  %4758 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4759 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4760 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  br label %4761

; <label>:4761                                    ; preds = %4735, %4637
  %4762 = phi float [ %4758, %4735 ], [ %4731, %4637 ]
  %4763 = phi float [ %4759, %4735 ], [ %4732, %4637 ]
  %4764 = phi float [ %4760, %4735 ], [ %4733, %4637 ]
  %4765 = call float @dx.op.binary.f32(i32 35, float %4763, float %4764)  ; FMax(a,b)
  %4766 = call float @dx.op.binary.f32(i32 35, float %4762, float %4765)  ; FMax(a,b)
  %4767 = fsub fast float 1.000000e+00, %4766
  %4768 = call float @dx.op.dot3.f32(i32 55, float %3412, float %3413, float %3414, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4769 = fcmp fast ogt float %4768, 0x3E7FF19E20000000
  %4770 = fdiv fast float 1.000000e+00, %4768
  %4771 = select i1 %4769, float %4770, float 0.000000e+00
  %4772 = fmul fast float %4771, %3412
  %4773 = fmul fast float %4771, %3413
  %4774 = fmul fast float %4771, %3414
  %4775 = fadd fast float %4772, -1.000000e+00
  %4776 = fadd fast float %4773, -1.000000e+00
  %4777 = fadd fast float %4774, -1.000000e+00
  %4778 = fmul fast float %4775, 5.000000e-01
  %4779 = fmul fast float %4776, 5.000000e-01
  %4780 = fmul fast float %4777, 5.000000e-01
  %4781 = fadd fast float %4778, 1.000000e+00
  %4782 = fadd fast float %4779, 1.000000e+00
  %4783 = fadd fast float %4780, 1.000000e+00
  %4784 = call float @dx.op.binary.f32(i32 35, float %3420, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4785 = fdiv fast float %2157, %4784
  %4786 = fcmp fast olt float %2824, 1.270000e+02
  %4787 = fcmp fast olt float %2825, 1.270000e+02
  %4788 = fcmp fast olt float %2826, 1.270000e+02
  %4789 = fmul fast float %2824, 0xBFF7154760000000
  %4790 = fmul fast float %4789, %4785
  %4791 = fmul fast float %2825, 0xBFF7154760000000
  %4792 = fmul fast float %4791, %4785
  %4793 = fmul fast float %2826, 0xBFF7154760000000
  %4794 = fmul fast float %4793, %4785
  %4795 = call float @dx.op.unary.f32(i32 21, float %4790)  ; Exp(value)
  %4796 = call float @dx.op.unary.f32(i32 21, float %4792)  ; Exp(value)
  %4797 = call float @dx.op.unary.f32(i32 21, float %4794)  ; Exp(value)
  %4798 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4799 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4800 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4801 = select i1 %4786, float %4798, float 0.000000e+00
  %4802 = select i1 %4787, float %4799, float 0.000000e+00
  %4803 = select i1 %4788, float %4800, float 0.000000e+00
  %4804 = fmul fast float %4801, %4767
  %4805 = fmul fast float %4802, %4767
  %4806 = fmul fast float %4803, %4767
  %4807 = fadd fast float %4804, -1.000000e+00
  %4808 = fadd fast float %4805, -1.000000e+00
  %4809 = fadd fast float %4806, -1.000000e+00
  %4810 = fmul fast float %4807, %2774
  %4811 = fmul fast float %4808, %2774
  %4812 = fmul fast float %4809, %2774
  %4813 = fmul fast float %4762, %4707
  %4814 = fmul fast float %4763, %4708
  %4815 = fmul fast float %4764, %4709
  %4816 = fsub fast float 1.000000e+00, %3420
  %4817 = bitcast float %4816 to i32
  %4818 = sitofp i32 %4817 to float
  %4819 = fmul fast float %4818, 5.000000e+00
  %4820 = fadd fast float %4819, 0xC1EFBF8940000000
  %4821 = fptosi float %4820 to i32
  %4822 = bitcast i32 %4821 to float
  %4823 = fmul fast float %4822, %2750
  %4824 = fmul fast float %4699, %4823
  %4825 = fmul fast float %4824, %4767
  %4826 = fmul fast float %4825, %4781
  %4827 = fmul fast float %4700, %4823
  %4828 = fmul fast float %4827, %4767
  %4829 = fmul fast float %4828, %4782
  %4830 = fmul fast float %4701, %4823
  %4831 = fmul fast float %4830, %4767
  %4832 = fmul fast float %4831, %4783
  %4833 = fadd fast float %4813, %2755
  %4834 = fadd fast float %4833, %4826
  %4835 = fmul fast float %4834, %2774
  %4836 = fadd fast float %4814, %2756
  %4837 = fadd fast float %4836, %4829
  %4838 = fmul fast float %4837, %2774
  %4839 = fadd fast float %4815, %2757
  %4840 = fadd fast float %4839, %4832
  %4841 = fmul fast float %4840, %2774
  %4842 = fmul fast float %3407, 0x4012D0A400000000
  %4843 = fadd fast float %4812, 1.000000e+00
  %4844 = fadd fast float %4811, 1.000000e+00
  %4845 = fadd fast float %4810, 1.000000e+00
  %4846 = fmul fast float %4767, %4701
  %4847 = fmul fast float %4767, %4700
  %4848 = fmul fast float %4767, %4699
  %4849 = fsub fast float 1.000000e+00, %3415
  %4850 = fmul fast float %4849, %2774
  %4851 = fsub fast float 1.000000e+00, %4850
  %4852 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4853 = fsub fast float 1.000000e+00, %4852
  %4854 = fadd fast float %4842, 0x3FDB6377A0000000
  %4855 = fmul fast float %4853, %4854
  %4856 = call float @dx.op.dot3.f32(i32 55, float %2842, float %2843, float %2844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4857 = fadd fast float %4855, %4856
  %4858 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4859 = call float @dx.op.binary.f32(i32 35, float %4858, float 0x3F847AE140000000)  ; FMax(a,b)
  %4860 = fmul fast float %4859, %4859
  %4861 = fmul fast float %4860, %4860
  %4862 = fmul fast float %4861, 0xC00A935000000000
  %4863 = call float @dx.op.unary.f32(i32 21, float %4862)  ; Exp(value)
  %4864 = fsub fast float 1.000000e+00, %4863
  %4865 = fmul fast float %4845, %4703
  %4866 = fmul fast float %4865, %4864
  %4867 = fmul fast float %4844, %4704
  %4868 = fmul fast float %4867, %4864
  %4869 = fmul fast float %4843, %4705
  %4870 = fmul fast float %4869, %4864
  %4871 = fadd fast float %4866, %4848
  %4872 = fmul fast float %4871, %2774
  %4873 = fadd fast float %4868, %4847
  %4874 = fmul fast float %4873, %2774
  %4875 = fadd fast float %4870, %4846
  %4876 = fmul fast float %4875, %2774
  %4877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.f32 %4877, 3
  %4879 = fcmp fast oeq float %4878, 0.000000e+00
  br i1 %4879, label %6078, label %4880

; <label>:4880                                    ; preds = %4761
  %4881 = extractvalue %dx.types.CBufRet.f32 %4877, 0
  %4882 = extractvalue %dx.types.CBufRet.f32 %4877, 1
  %4883 = extractvalue %dx.types.CBufRet.f32 %4877, 2
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.CBufRet.f32 %4884, 1
  %4887 = extractvalue %dx.types.CBufRet.f32 %4884, 2
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 0
  %4890 = extractvalue %dx.types.CBufRet.f32 %4888, 1
  %4891 = call float @dx.op.dot3.f32(i32 55, float %4885, float %4886, float %4887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = select i1 %234, float %4889, float %4885
  %4893 = select i1 %234, float %4891, float %4886
  %4894 = select i1 %234, float %4890, float %4887
  %4895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4896 = extractvalue %dx.types.CBufRet.f32 %4895, 2
  %4897 = fmul fast float %4896, %74
  %4898 = fmul fast float %4896, %75
  %4899 = fmul fast float %4896, %76
  %4900 = fadd fast float %4897, %143
  %4901 = fadd fast float %4898, %144
  %4902 = fadd fast float %4899, %145
  %4903 = fcmp fast olt float %4878, 0.000000e+00
  br i1 %4903, label %5525, label %4904

; <label>:4904                                    ; preds = %4880
  %4905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4906 = extractvalue %dx.types.CBufRet.f32 %4905, 0
  %4907 = extractvalue %dx.types.CBufRet.f32 %4905, 1
  %4908 = extractvalue %dx.types.CBufRet.f32 %4905, 2
  %4909 = extractvalue %dx.types.CBufRet.f32 %4905, 3
  %4910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4911 = extractvalue %dx.types.CBufRet.f32 %4910, 0
  %4912 = extractvalue %dx.types.CBufRet.f32 %4910, 1
  %4913 = extractvalue %dx.types.CBufRet.f32 %4910, 2
  %4914 = extractvalue %dx.types.CBufRet.f32 %4910, 3
  %4915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4916 = extractvalue %dx.types.CBufRet.f32 %4915, 0
  %4917 = extractvalue %dx.types.CBufRet.f32 %4915, 1
  %4918 = extractvalue %dx.types.CBufRet.f32 %4915, 2
  %4919 = extractvalue %dx.types.CBufRet.f32 %4915, 3
  %4920 = fmul fast float %4906, %4900
  %4921 = call float @dx.op.tertiary.f32(i32 46, float %4901, float %4907, float %4920)  ; FMad(a,b,c)
  %4922 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %4908, float %4921)  ; FMad(a,b,c)
  %4923 = fadd fast float %4922, %4909
  %4924 = fmul fast float %4911, %4900
  %4925 = call float @dx.op.tertiary.f32(i32 46, float %4901, float %4912, float %4924)  ; FMad(a,b,c)
  %4926 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %4913, float %4925)  ; FMad(a,b,c)
  %4927 = fadd fast float %4926, %4914
  %4928 = fmul fast float %4916, %4900
  %4929 = call float @dx.op.tertiary.f32(i32 46, float %4901, float %4917, float %4928)  ; FMad(a,b,c)
  %4930 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %4918, float %4929)  ; FMad(a,b,c)
  %4931 = fadd fast float %4930, %4919
  %4932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4933 = extractvalue %dx.types.CBufRet.f32 %4932, 0
  %4934 = extractvalue %dx.types.CBufRet.f32 %4932, 1
  %4935 = extractvalue %dx.types.CBufRet.f32 %4932, 3
  %4936 = fmul fast float %4935, %4923
  %4937 = fmul fast float %4935, %4927
  %4938 = fadd fast float %4936, %4933
  %4939 = fadd fast float %4937, %4934
  %4940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4941 = extractvalue %dx.types.CBufRet.f32 %4940, 0
  %4942 = extractvalue %dx.types.CBufRet.f32 %4940, 1
  %4943 = extractvalue %dx.types.CBufRet.f32 %4940, 3
  %4944 = fmul fast float %4943, %4923
  %4945 = fmul fast float %4943, %4927
  %4946 = fadd fast float %4944, %4941
  %4947 = fadd fast float %4945, %4942
  %4948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.f32 %4948, 1
  %4950 = fsub fast float %4949, %4931
  %4951 = extractvalue %dx.types.CBufRet.f32 %4948, 2
  %4952 = fmul fast float %4950, %4951
  %4953 = fsub fast float 1.000000e+00, %4952
  %4954 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4955 = extractvalue %dx.types.CBufRet.f32 %4940, 2
  %4956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4957 = extractvalue %dx.types.CBufRet.f32 %4956, 2
  %4958 = fadd fast float %4957, %4955
  %4959 = fcmp fast ogt float %4958, 0.000000e+00
  br i1 %4959, label %4960, label %4984

; <label>:4960                                    ; preds = %4904
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4963 = extractvalue %dx.types.CBufRet.f32 %4961, 1
  %4964 = fsub fast float %4946, %4962
  %4965 = fsub fast float %4947, %4963
  %4966 = fcmp fast olt float %4964, 0.000000e+00
  %4967 = fcmp fast olt float %4965, 0.000000e+00
  %4968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4969 = extractvalue %dx.types.CBufRet.f32 %4968, 0
  %4970 = extractvalue %dx.types.CBufRet.f32 %4968, 1
  %4971 = extractvalue %dx.types.CBufRet.f32 %4968, 2
  %4972 = extractvalue %dx.types.CBufRet.f32 %4968, 3
  %4973 = select i1 %4966, float %4969, float %4971
  %4974 = select i1 %4967, float %4970, float %4972
  %4975 = fmul fast float %4973, %4964
  %4976 = fmul fast float %4974, %4965
  %4977 = call float @dx.op.unary.f32(i32 6, float %4975)  ; FAbs(value)
  %4978 = call float @dx.op.unary.f32(i32 6, float %4976)  ; FAbs(value)
  %4979 = extractvalue %dx.types.CBufRet.f32 %4895, 0
  %4980 = call float @dx.op.binary.f32(i32 35, float %4977, float %4978)  ; FMax(a,b)
  %4981 = fsub fast float %4979, %4980
  %4982 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4983 = fmul fast float %4982, %4954
  br label %4984

; <label>:4984                                    ; preds = %4960, %4904
  %4985 = phi float [ %4983, %4960 ], [ 0.000000e+00, %4904 ]
  %4986 = extractvalue %dx.types.CBufRet.f32 %4932, 2
  %4987 = extractvalue %dx.types.CBufRet.f32 %4956, 1
  %4988 = fadd fast float %4987, %4986
  %4989 = fcmp fast ogt float %4988, 0.000000e+00
  %4990 = extractvalue %dx.types.CBufRet.f32 %4895, 0
  br i1 %4989, label %4991, label %5014

; <label>:4991                                    ; preds = %4984
  %4992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4993 = extractvalue %dx.types.CBufRet.f32 %4992, 0
  %4994 = extractvalue %dx.types.CBufRet.f32 %4992, 1
  %4995 = fsub fast float %4938, %4993
  %4996 = fsub fast float %4939, %4994
  %4997 = fcmp fast olt float %4995, 0.000000e+00
  %4998 = fcmp fast olt float %4996, 0.000000e+00
  %4999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.CBufRet.f32 %4999, 1
  %5002 = extractvalue %dx.types.CBufRet.f32 %4999, 2
  %5003 = extractvalue %dx.types.CBufRet.f32 %4999, 3
  %5004 = select i1 %4997, float %5000, float %5002
  %5005 = select i1 %4998, float %5001, float %5003
  %5006 = fmul fast float %5004, %4995
  %5007 = fmul fast float %5005, %4996
  %5008 = call float @dx.op.unary.f32(i32 6, float %5006)  ; FAbs(value)
  %5009 = call float @dx.op.unary.f32(i32 6, float %5007)  ; FAbs(value)
  %5010 = call float @dx.op.binary.f32(i32 35, float %5008, float %5009)  ; FMax(a,b)
  %5011 = fsub fast float %4990, %5010
  %5012 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5013 = fmul fast float %5012, %4954
  br label %5014

; <label>:5014                                    ; preds = %4991, %4984
  %5015 = phi float [ %5013, %4991 ], [ 0.000000e+00, %4984 ]
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.f32 %5016, 1
  %5018 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 0
  %5021 = extractvalue %dx.types.CBufRet.f32 %5019, 1
  %5022 = fsub fast float %4923, %5020
  %5023 = fsub fast float %4927, %5021
  %5024 = fcmp fast olt float %5022, 0.000000e+00
  %5025 = fcmp fast olt float %5023, 0.000000e+00
  %5026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5027 = extractvalue %dx.types.CBufRet.f32 %5026, 0
  %5028 = extractvalue %dx.types.CBufRet.f32 %5026, 1
  %5029 = extractvalue %dx.types.CBufRet.f32 %5026, 2
  %5030 = extractvalue %dx.types.CBufRet.f32 %5026, 3
  %5031 = select i1 %5024, float %5027, float %5029
  %5032 = select i1 %5025, float %5028, float %5030
  %5033 = fmul fast float %5031, %5022
  %5034 = fmul fast float %5032, %5023
  %5035 = call float @dx.op.unary.f32(i32 6, float %5033)  ; FAbs(value)
  %5036 = call float @dx.op.unary.f32(i32 6, float %5034)  ; FAbs(value)
  %5037 = call float @dx.op.binary.f32(i32 35, float %5035, float %5036)  ; FMax(a,b)
  %5038 = fsub fast float %4990, %5037
  %5039 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5040 = call float @dx.op.binary.f32(i32 36, float %5039, float %5018)  ; FMin(a,b)
  %5041 = fmul fast float %5040, %4954
  %5042 = fsub fast float %5015, %5041
  %5043 = fsub fast float %4985, %5015
  %5044 = fsub fast float %5043, %5041
  %5045 = call float @dx.op.binary.f32(i32 35, float %5015, float %4985)  ; FMax(a,b)
  %5046 = call float @dx.op.binary.f32(i32 35, float %5041, float %5045)  ; FMax(a,b)
  %5047 = fcmp fast olt float %5046, 1.000000e+00
  br i1 %5047, label %5048, label %5446, !dx.controlflow.hints !107

; <label>:5048                                    ; preds = %5014
  %5049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5050 = extractvalue %dx.types.CBufRet.f32 %5049, 0
  %5051 = fcmp fast une float %5050, 0.000000e+00
  br i1 %5051, label %5052, label %5446, !dx.controlflow.hints !108

; <label>:5052                                    ; preds = %5048
  %5053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5054 = extractvalue %dx.types.CBufRet.f32 %5053, 0
  %5055 = extractvalue %dx.types.CBufRet.f32 %5053, 1
  %5056 = extractvalue %dx.types.CBufRet.f32 %5053, 2
  %5057 = extractvalue %dx.types.CBufRet.f32 %5053, 3
  %5058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5059 = extractvalue %dx.types.CBufRet.f32 %5058, 0
  %5060 = extractvalue %dx.types.CBufRet.f32 %5058, 1
  %5061 = extractvalue %dx.types.CBufRet.f32 %5058, 2
  %5062 = extractvalue %dx.types.CBufRet.f32 %5058, 3
  %5063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5064 = extractvalue %dx.types.CBufRet.f32 %5063, 0
  %5065 = extractvalue %dx.types.CBufRet.f32 %5063, 1
  %5066 = extractvalue %dx.types.CBufRet.f32 %5063, 2
  %5067 = extractvalue %dx.types.CBufRet.f32 %5063, 3
  %5068 = fmul fast float %5054, %4900
  %5069 = call float @dx.op.tertiary.f32(i32 46, float %4901, float %5055, float %5068)  ; FMad(a,b,c)
  %5070 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %5056, float %5069)  ; FMad(a,b,c)
  %5071 = fadd fast float %5070, %5057
  %5072 = fmul fast float %5059, %4900
  %5073 = call float @dx.op.tertiary.f32(i32 46, float %4901, float %5060, float %5072)  ; FMad(a,b,c)
  %5074 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %5061, float %5073)  ; FMad(a,b,c)
  %5075 = fadd fast float %5074, %5062
  %5076 = fmul fast float %5064, %4900
  %5077 = call float @dx.op.tertiary.f32(i32 46, float %4901, float %5065, float %5076)  ; FMad(a,b,c)
  %5078 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %5066, float %5077)  ; FMad(a,b,c)
  %5079 = fadd fast float %5078, %5067
  %5080 = fcmp fast oge float %5071, 1.000000e+00
  %5081 = fcmp fast oge float %5075, 1.000000e+00
  %5082 = or i1 %5080, %5081
  %5083 = fcmp fast olt float %5071, 0.000000e+00
  %5084 = fcmp fast olt float %5075, 0.000000e+00
  %5085 = or i1 %5083, %5084
  %5086 = or i1 %5082, %5085
  br i1 %5086, label %5446, label %5087, !dx.controlflow.hints !109

; <label>:5087                                    ; preds = %5052
  %5088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5089 = extractvalue %dx.types.CBufRet.f32 %5088, 0
  %5090 = extractvalue %dx.types.CBufRet.f32 %5088, 1
  %5091 = extractvalue %dx.types.CBufRet.f32 %5088, 2
  %5092 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5093 = extractvalue %dx.types.CBufRet.i32 %5092, 2
  %5094 = uitofp i32 %5093 to float
  %5095 = extractvalue %dx.types.CBufRet.i32 %5092, 3
  %5096 = uitofp i32 %5095 to float
  %5097 = extractvalue %dx.types.CBufRet.f32 %5088, 3
  %5098 = fmul fast float %5097, 2.000000e+00
  %5099 = fsub fast float %5071, %5089
  %5100 = fsub fast float %5075, %5090
  %5101 = fmul fast float %5098, %5099
  %5102 = fmul fast float %5098, %5100
  %5103 = fdiv fast float 1.000000e+00, %4883
  %5104 = fmul fast float %5102, %5103
  %5105 = call float @dx.op.unary.f32(i32 6, float %5104)  ; FAbs(value)
  %5106 = fmul fast float %5091, %4902
  %5107 = fmul fast float %5106, %5098
  %5108 = call float @dx.op.unary.f32(i32 6, float %5107)  ; FAbs(value)
  %5109 = call float @dx.op.unary.f32(i32 6, float %5101)  ; FAbs(value)
  %5110 = call float @dx.op.binary.f32(i32 35, float %5108, float %5105)  ; FMax(a,b)
  %5111 = call float @dx.op.binary.f32(i32 35, float %5109, float %5110)  ; FMax(a,b)
  %5112 = fmul fast float %5111, 2.000000e+00
  %5113 = call float @dx.op.unary.f32(i32 23, float %5112)  ; Log(value)
  %5114 = call float @dx.op.binary.f32(i32 35, float %5113, float %5094)  ; FMax(a,b)
  %5115 = call float @dx.op.unary.f32(i32 22, float %5114)  ; Frc(value)
  %5116 = fadd fast float %5115, 0xBFEA666660000000
  %5117 = fmul fast float %5116, 8.000000e+00
  %5118 = call float @dx.op.unary.f32(i32 7, float %5117)  ; Saturate(value)
  %5119 = call float @dx.op.unary.f32(i32 27, float %5114)  ; Round_ni(value)
  %5120 = fadd fast float %5119, %5118
  %5121 = call float @dx.op.binary.f32(i32 36, float %5120, float %5096)  ; FMin(a,b)
  %5122 = call float @dx.op.unary.f32(i32 27, float %5121)  ; Round_ni(value)
  %5123 = fsub fast float -0.000000e+00, %5122
  %5124 = call float @dx.op.unary.f32(i32 21, float %5123)  ; Exp(value)
  %5125 = fmul fast float %5124, %5098
  %5126 = fmul fast float %5125, %5071
  %5127 = fmul fast float %5125, %5075
  %5128 = fmul fast float %5126, 2.500000e-01
  %5129 = fmul fast float %5127, 2.500000e-01
  %5130 = fadd fast float %5128, 5.000000e-01
  %5131 = fadd fast float %5129, 5.000000e-01
  %5132 = fsub fast float %5096, %5094
  %5133 = fptoui float %5132 to i32
  %5134 = add i32 %5133, 320
  %5135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %5134)  ; CBufferLoadLegacy(handle,regIndex)
  %5136 = extractvalue %dx.types.CBufRet.f32 %5135, 0
  %5137 = extractvalue %dx.types.CBufRet.f32 %5135, 1
  %5138 = fcmp fast une float %5121, %5096
  %5139 = fsub fast float %5071, %5136
  %5140 = fsub fast float %5075, %5137
  %5141 = call float @dx.op.unary.f32(i32 6, float %5139)  ; FAbs(value)
  %5142 = call float @dx.op.unary.f32(i32 6, float %5140)  ; FAbs(value)
  %5143 = fmul fast float %5141, %5125
  %5144 = fmul fast float %5142, %5125
  %5145 = fcmp fast olt float %5143, 1.000000e+00
  %5146 = fcmp fast olt float %5144, 1.000000e+00
  %5147 = and i1 %5145, %5146
  %5148 = or i1 %5138, %5147
  br i1 %5148, label %5149, label %5446, !dx.controlflow.hints !110

; <label>:5149                                    ; preds = %5087
  %5150 = fmul fast float %5127, 5.000000e-01
  %5151 = fmul fast float %5126, 5.000000e-01
  %5152 = fadd fast float %5150, 5.000000e-01
  %5153 = fadd fast float %5151, 5.000000e-01
  %5154 = sitofp i32 %5093 to float
  %5155 = fsub fast float %5121, %5154
  %5156 = call float @dx.op.unary.f32(i32 27, float %5155)  ; Round_ni(value)
  %5157 = call float @dx.op.unary.f32(i32 22, float %5121)  ; Frc(value)
  %5158 = call float @dx.op.unary.f32(i32 22, float %5153)  ; Frc(value)
  %5159 = call float @dx.op.unary.f32(i32 22, float %5152)  ; Frc(value)
  %5160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %5158, float %5159, float %5156, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5161 = extractvalue %dx.types.ResRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.ResRet.f32 %5160, 1
  %5163 = extractvalue %dx.types.ResRet.f32 %5160, 2
  %5164 = extractvalue %dx.types.ResRet.f32 %5160, 3
  %5165 = fcmp fast ogt float %5157, 0.000000e+00
  br i1 %5165, label %5166, label %5187, !dx.controlflow.hints !111

; <label>:5166                                    ; preds = %5149
  %5167 = fadd fast float %5156, 1.000000e+00
  %5168 = call float @dx.op.unary.f32(i32 22, float %5130)  ; Frc(value)
  %5169 = call float @dx.op.unary.f32(i32 22, float %5131)  ; Frc(value)
  %5170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %5168, float %5169, float %5167, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5171 = extractvalue %dx.types.ResRet.f32 %5170, 0
  %5172 = extractvalue %dx.types.ResRet.f32 %5170, 1
  %5173 = extractvalue %dx.types.ResRet.f32 %5170, 2
  %5174 = extractvalue %dx.types.ResRet.f32 %5170, 3
  %5175 = fsub fast float %5171, %5161
  %5176 = fsub fast float %5172, %5162
  %5177 = fsub fast float %5173, %5163
  %5178 = fsub fast float %5174, %5164
  %5179 = fmul fast float %5175, %5157
  %5180 = fmul fast float %5176, %5157
  %5181 = fmul fast float %5177, %5157
  %5182 = fmul fast float %5178, %5157
  %5183 = fadd fast float %5179, %5161
  %5184 = fadd fast float %5180, %5162
  %5185 = fadd fast float %5181, %5163
  %5186 = fadd fast float %5182, %5164
  br label %5187

; <label>:5187                                    ; preds = %5166, %5149
  %5188 = phi float [ %5183, %5166 ], [ %5161, %5149 ]
  %5189 = phi float [ %5184, %5166 ], [ %5162, %5149 ]
  %5190 = phi float [ %5185, %5166 ], [ %5163, %5149 ]
  %5191 = phi float [ %5186, %5166 ], [ %5164, %5149 ]
  %5192 = fadd fast float %5188, -5.000000e-01
  %5193 = fadd fast float %5190, -5.000000e-01
  %5194 = fmul fast float %5192, 0xBFD5555560000000
  %5195 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5193, float %5194)  ; FMad(a,b,c)
  %5196 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5189, float 0.000000e+00)  ; FMad(a,b,c)
  %5197 = fadd fast float %5196, %5191
  %5198 = fmul fast float %5192, -7.500000e-01
  %5199 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5193, float %5198)  ; FMad(a,b,c)
  %5200 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5189, float 0.000000e+00)  ; FMad(a,b,c)
  %5201 = fadd fast float %5200, %5191
  %5202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5203 = extractvalue %dx.types.CBufRet.f32 %5202, 0
  %5204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5205 = extractvalue %dx.types.CBufRet.f32 %5204, 0
  %5206 = extractvalue %dx.types.CBufRet.f32 %5204, 1
  %5207 = extractvalue %dx.types.CBufRet.f32 %5204, 2
  %5208 = extractvalue %dx.types.CBufRet.f32 %5204, 3
  %5209 = fsub fast float %5205, %5195
  %5210 = fsub fast float %5206, %5197
  %5211 = fsub fast float %5207, %5199
  %5212 = fsub fast float %5208, %5201
  %5213 = fmul fast float %5209, %5203
  %5214 = fmul fast float %5210, %5203
  %5215 = fmul fast float %5211, %5203
  %5216 = fmul fast float %5212, %5203
  %5217 = fadd fast float %5213, %5195
  %5218 = fadd fast float %5214, %5197
  %5219 = fadd fast float %5215, %5199
  %5220 = fadd fast float %5216, %5201
  %5221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5222 = extractvalue %dx.types.ResRet.i32 %5221, 0
  %5223 = and i32 %5222, 536870911
  %5224 = uitofp i32 %5223 to float
  %5225 = fmul fast float %5224, %5071
  %5226 = fmul fast float %5224, %5075
  %5227 = fptoui float %5225 to i32
  %5228 = fptoui float %5226 to i32
  %5229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5230 = extractvalue %dx.types.ResRet.i32 %5229, 0
  %5231 = and i32 %5230, 31
  %5232 = lshr i32 %5227, %5231
  %5233 = lshr i32 %5228, %5231
  %5234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5235 = extractvalue %dx.types.ResRet.i32 %5234, 0
  %5236 = and i32 %5235, 31
  %5237 = shl i32 1, %5236
  %5238 = call i32 @dx.op.binary.i32(i32 40, i32 %5237, i32 4)  ; UMin(a,b)
  %5239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5240 = extractvalue %dx.types.ResRet.i32 %5239, 0
  %5241 = extractvalue %dx.types.ResRet.i32 %5239, 1
  %5242 = icmp eq i32 %5238, 0
  br i1 %5242, label %5284, label %5243

; <label>:5243                                    ; preds = %5187
  br label %5244

; <label>:5244                                    ; preds = %5272, %5243
  %5245 = phi i32 [ %5275, %5272 ], [ 0, %5243 ]
  %5246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5247 = extractvalue %dx.types.ResRet.i32 %5246, 0
  %5248 = lshr i32 %5247, 16
  %5249 = and i32 %5248, 31
  %5250 = shl i32 %5233, %5249
  %5251 = add i32 %5250, %5232
  %5252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5253 = extractvalue %dx.types.ResRet.i32 %5252, 0
  %5254 = and i32 %5253, 31
  %5255 = shl i32 %5251, %5254
  %5256 = add i32 %5255, %5245
  %5257 = shl i32 %5256, 2
  %5258 = add i32 %5257, 32
  %5259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5258, i32 undef)  ; BufferLoad(srv,index,wot)
  %5260 = extractvalue %dx.types.ResRet.i32 %5259, 0
  %5261 = icmp slt i32 %5260, 0
  %5262 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5245
  %5263 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %5245
  %5264 = bitcast float* %5262 to i32*
  %5265 = bitcast float* %5263 to i32*
  br i1 %5261, label %5266, label %5272

; <label>:5266                                    ; preds = %5244
  %5267 = and i32 %5260, 1073741823
  %5268 = add nuw nsw i32 %5267, 20
  %5269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5268, i32 undef)  ; BufferLoad(srv,index,wot)
  %5270 = extractvalue %dx.types.ResRet.i32 %5269, 0
  %5271 = extractvalue %dx.types.ResRet.i32 %5269, 1
  br label %5272

; <label>:5272                                    ; preds = %5266, %5244
  %5273 = phi i32 [ %5270, %5266 ], [ %5240, %5244 ]
  %5274 = phi i32 [ %5271, %5266 ], [ %5241, %5244 ]
  store i32 %5273, i32* %5264, align 4
  store i32 %5274, i32* %5265, align 4
  %5275 = add nuw i32 %5245, 1
  %5276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5277 = extractvalue %dx.types.CBufRet.i32 %5276, 2
  %5278 = icmp eq i32 %5277, 0
  %5279 = icmp ugt i32 %5260, -1073741825
  %5280 = and i1 %5279, %5278
  %5281 = icmp ult i32 %5275, %5238
  %5282 = and i1 %5280, %5281
  br i1 %5282, label %5244, label %5283

; <label>:5283                                    ; preds = %5272
  br label %5284

; <label>:5284                                    ; preds = %5283, %5187
  %5285 = phi i32 [ 0, %5187 ], [ %5275, %5283 ]
  %5286 = extractvalue %dx.types.CBufRet.f32 %5049, 2
  %5287 = fptoui float %5286 to i32
  %5288 = icmp eq i32 %5287, 0
  br i1 %5288, label %5340, label %5289

; <label>:5289                                    ; preds = %5284
  br label %5290

; <label>:5290                                    ; preds = %5335, %5289
  %5291 = phi i32 [ %5336, %5335 ], [ %5285, %5289 ]
  %5292 = phi i32 [ %5337, %5335 ], [ 0, %5289 ]
  %5293 = lshr i32 %5292, 2
  %5294 = and i32 %5292, 3
  %5295 = add nuw nsw i32 %5293, 83
  %5296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %5295)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.i32 %5296, 0
  %5298 = extractvalue %dx.types.CBufRet.i32 %5296, 1
  %5299 = extractvalue %dx.types.CBufRet.i32 %5296, 2
  %5300 = extractvalue %dx.types.CBufRet.i32 %5296, 3
  %5301 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 0
  store i32 %5297, i32* %5301, align 4
  %5302 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 1
  store i32 %5298, i32* %5302, align 4
  %5303 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 2
  store i32 %5299, i32* %5303, align 4
  %5304 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 3
  store i32 %5300, i32* %5304, align 4
  %5305 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 %5294
  %5306 = load i32, i32* %5305, align 4, !tbaa !112, !noalias !116
  %5307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5308 = extractvalue %dx.types.ResRet.i32 %5307, 0
  %5309 = lshr i32 %5308, 16
  %5310 = and i32 %5309, 31
  %5311 = shl i32 %5233, %5310
  %5312 = add i32 %5311, %5232
  %5313 = shl i32 %5312, 2
  %5314 = add i32 %5313, %5306
  %5315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5314, i32 undef)  ; BufferLoad(srv,index,wot)
  %5316 = extractvalue %dx.types.ResRet.i32 %5315, 0
  %5317 = icmp eq i32 %5316, 0
  br i1 %5317, label %5335, label %5318

; <label>:5318                                    ; preds = %5290
  %5319 = icmp slt i32 %5316, 0
  %5320 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5291
  %5321 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %5291
  %5322 = bitcast float* %5320 to i32*
  %5323 = bitcast float* %5321 to i32*
  br i1 %5319, label %5324, label %5331

; <label>:5324                                    ; preds = %5318
  %5325 = and i32 %5316, 1073741823
  %5326 = add i32 %5306, 20
  %5327 = add i32 %5326, %5325
  %5328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5327, i32 undef)  ; BufferLoad(srv,index,wot)
  %5329 = extractvalue %dx.types.ResRet.i32 %5328, 0
  %5330 = extractvalue %dx.types.ResRet.i32 %5328, 1
  br label %5331

; <label>:5331                                    ; preds = %5324, %5318
  %5332 = phi i32 [ %5329, %5324 ], [ %5240, %5318 ]
  %5333 = phi i32 [ %5330, %5324 ], [ %5241, %5318 ]
  store i32 %5332, i32* %5322, align 4
  store i32 %5333, i32* %5323, align 4
  %5334 = add i32 %5291, 1
  br label %5335

; <label>:5335                                    ; preds = %5331, %5290
  %5336 = phi i32 [ %5291, %5290 ], [ %5334, %5331 ]
  %5337 = add nuw i32 %5292, 1
  %5338 = icmp eq i32 %5337, %5287
  br i1 %5338, label %5339, label %5290

; <label>:5339                                    ; preds = %5335
  br label %5340

; <label>:5340                                    ; preds = %5339, %5284
  %5341 = phi i32 [ %5285, %5284 ], [ %5336, %5339 ]
  %5342 = icmp eq i32 %5341, 1
  %5343 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %5344 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %5342, label %5345, label %5348

; <label>:5345                                    ; preds = %5340
  %5346 = load float, float* %5343, align 4
  %5347 = load float, float* %5344, align 4
  br label %5375

; <label>:5348                                    ; preds = %5340
  %5349 = load float, float* %5343, align 4
  %5350 = load float, float* %5344, align 4
  %5351 = fdiv fast float 1.000000e+00, %5350
  %5352 = fsub fast float %5349, %5351
  %5353 = icmp ugt i32 %5341, 1
  br i1 %5353, label %5354, label %5370

; <label>:5354                                    ; preds = %5348
  br label %5355

; <label>:5355                                    ; preds = %5355, %5354
  %5356 = phi float [ %5365, %5355 ], [ %5352, %5354 ]
  %5357 = phi float [ %5366, %5355 ], [ %5349, %5354 ]
  %5358 = phi i32 [ %5367, %5355 ], [ 1, %5354 ]
  %5359 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5358
  %5360 = load float, float* %5359, align 4
  %5361 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %5358
  %5362 = load float, float* %5361, align 4
  %5363 = fdiv fast float 1.000000e+00, %5362
  %5364 = fsub fast float %5360, %5363
  %5365 = call float @dx.op.binary.f32(i32 36, float %5356, float %5364)  ; FMin(a,b)
  %5366 = call float @dx.op.binary.f32(i32 35, float %5357, float %5360)  ; FMax(a,b)
  %5367 = add nuw i32 %5358, 1
  %5368 = icmp eq i32 %5367, %5341
  br i1 %5368, label %5369, label %5355

; <label>:5369                                    ; preds = %5355
  br label %5370

; <label>:5370                                    ; preds = %5369, %5348
  %5371 = phi float [ %5352, %5348 ], [ %5365, %5369 ]
  %5372 = phi float [ %5349, %5348 ], [ %5366, %5369 ]
  %5373 = fsub fast float %5372, %5371
  %5374 = fdiv fast float 1.000000e+00, %5373
  br label %5375

; <label>:5375                                    ; preds = %5370, %5345
  %5376 = phi float [ %5346, %5345 ], [ %5372, %5370 ]
  %5377 = phi float [ %5347, %5345 ], [ %5374, %5370 ]
  %5378 = fadd fast float %5079, %5376
  %5379 = fmul fast float %5378, %5377
  %5380 = call float @dx.op.unary.f32(i32 7, float %5379)  ; Saturate(value)
  %5381 = fmul fast float %5380, 2.000000e+00
  %5382 = fsub fast float 1.000000e+00, %5381
  %5383 = fmul fast float %5217, %5217
  %5384 = fsub fast float %5218, %5383
  %5385 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5384)  ; FMax(a,b)
  %5386 = fdiv fast float 1.000000e+00, %5385
  %5387 = fmul fast float %5218, %5217
  %5388 = fsub fast float %5219, %5387
  %5389 = fsub fast float %5382, %5217
  %5390 = fmul fast float %5382, %5382
  %5391 = fsub fast float %5390, %5218
  %5392 = fmul fast float %5386, %5388
  %5393 = fmul fast float %5392, %5389
  %5394 = fsub fast float %5391, %5393
  %5395 = fmul fast float %5218, %5218
  %5396 = fsub fast float %5220, %5395
  %5397 = fmul fast float %5388, %5388
  %5398 = fmul fast float %5397, %5386
  %5399 = fsub fast float %5396, %5398
  %5400 = fdiv fast float %5394, %5399
  %5401 = fmul fast float %5400, %5388
  %5402 = fsub fast float %5389, %5401
  %5403 = fmul fast float %5402, %5386
  %5404 = fmul fast float %5403, %5217
  %5405 = fsub fast float 1.000000e+00, %5404
  %5406 = fmul fast float %5400, %5218
  %5407 = fsub fast float %5405, %5406
  %5408 = fmul fast float %5403, %5403
  %5409 = fmul fast float %5400, 4.000000e+00
  %5410 = fmul fast float %5409, %5407
  %5411 = fsub fast float %5408, %5410
  %5412 = call float @dx.op.unary.f32(i32 24, float %5411)  ; Sqrt(value)
  %5413 = fcmp fast oge float %5403, 0.000000e+00
  %5414 = fsub fast float -0.000000e+00, %5412
  %5415 = select i1 %5413, float %5414, float %5412
  %5416 = fsub fast float %5415, %5403
  %5417 = fdiv fast float %5416, %5400
  %5418 = fdiv fast float %5407, %5416
  %5419 = fmul fast float %5417, 5.000000e-01
  %5420 = fmul fast float %5418, 2.000000e+00
  %5421 = select i1 %5413, float %5419, float %5420
  %5422 = select i1 %5413, float %5420, float %5419
  %5423 = call float @dx.op.binary.f32(i32 35, float %5421, float %5422)  ; FMax(a,b)
  %5424 = call float @dx.op.binary.f32(i32 36, float %5421, float %5422)  ; FMin(a,b)
  %5425 = fcmp fast ogt float %5382, %5423
  %5426 = fsub fast float %5382, %5424
  %5427 = fsub fast float %5382, %5423
  %5428 = fsub fast float %5423, %5424
  %5429 = select i1 %5425, float %5427, float %5428
  %5430 = fmul float %5426, %5429
  %5431 = select i1 %5425, float %5424, float %5382
  %5432 = fcmp fast ogt float %5382, %5424
  %5433 = fmul fast float %5431, %5423
  %5434 = fadd fast float %5431, %5423
  %5435 = fmul fast float %5434, %5217
  %5436 = fadd fast float %5433, %5218
  %5437 = fsub fast float %5436, %5435
  %5438 = fdiv fast float %5437, %5430
  %5439 = select i1 %5432, float %5438, float 0.000000e+00
  %5440 = fsub fast float 1.000000e+00, %5439
  %5441 = select i1 %5425, float %5440, float %5439
  %5442 = call float @dx.op.unary.f32(i32 7, float %5441)  ; Saturate(value)
  %5443 = extractvalue %dx.types.CBufRet.f32 %5202, 3
  %5444 = fmul fast float %5443, %5442
  %5445 = fsub fast float 1.000000e+00, %5444
  br label %5446

; <label>:5446                                    ; preds = %5375, %5087, %5052, %5048, %5014
  %5447 = phi float [ 1.000000e+00, %5014 ], [ %5445, %5375 ], [ 1.000000e+00, %5052 ], [ 1.000000e+00, %5087 ], [ 1.000000e+00, %5048 ]
  %5448 = fcmp fast ogt float %5044, 0.000000e+00
  br i1 %5448, label %5449, label %5455, !dx.controlflow.hints !125

; <label>:5449                                    ; preds = %5446
  %5450 = fadd fast float %4957, %4931
  %5451 = call float @dx.op.binary.f32(i32 35, float %5450, float 0.000000e+00)  ; FMax(a,b)
  %5452 = fadd fast float %5451, 0x3F10000000000000
  %5453 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4946, float %4947, float undef, float undef, i32 0, i32 0, i32 undef, float %5452)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5454 = extractvalue %dx.types.ResRet.f32 %5453, 0
  br label %5455

; <label>:5455                                    ; preds = %5449, %5446
  %5456 = phi float [ %5454, %5449 ], [ 1.000000e+00, %5446 ]
  %5457 = fcmp fast ogt float %5042, 0.000000e+00
  br i1 %5457, label %5458, label %5464, !dx.controlflow.hints !126

; <label>:5458                                    ; preds = %5455
  %5459 = fadd fast float %4987, %4931
  %5460 = call float @dx.op.binary.f32(i32 35, float %5459, float 0.000000e+00)  ; FMax(a,b)
  %5461 = fadd fast float %5460, 0x3F10000000000000
  %5462 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4938, float %4939, float undef, float undef, i32 0, i32 0, i32 undef, float %5461)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5463 = extractvalue %dx.types.ResRet.f32 %5462, 0
  br label %5464

; <label>:5464                                    ; preds = %5458, %5455
  %5465 = phi float [ %5463, %5458 ], [ 1.000000e+00, %5455 ]
  %5466 = fcmp fast ogt float %5041, 0.000000e+00
  br i1 %5466, label %5467, label %5474, !dx.controlflow.hints !127

; <label>:5467                                    ; preds = %5464
  %5468 = extractvalue %dx.types.CBufRet.f32 %4956, 0
  %5469 = fadd fast float %5468, %4931
  %5470 = call float @dx.op.binary.f32(i32 35, float %5469, float 0.000000e+00)  ; FMax(a,b)
  %5471 = fadd fast float %5470, 0x3F10000000000000
  %5472 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %4923, float %4927, float undef, float undef, i32 0, i32 0, i32 undef, float %5471)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5473 = extractvalue %dx.types.ResRet.f32 %5472, 0
  br label %5474

; <label>:5474                                    ; preds = %5467, %5464
  %5475 = phi float [ %5473, %5467 ], [ 1.000000e+00, %5464 ]
  %5476 = fsub fast float %5456, %5447
  %5477 = fmul fast float %5476, %4985
  %5478 = fadd fast float %5477, %5447
  %5479 = fsub fast float %5465, %5478
  %5480 = fmul fast float %5479, %5015
  %5481 = fadd fast float %5480, %5478
  %5482 = fsub fast float %5475, %5481
  %5483 = fmul fast float %5482, %5041
  %5484 = fadd fast float %5483, %5481
  %5485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5486 = extractvalue %dx.types.CBufRet.f32 %5485, 2
  %5487 = fcmp fast ogt float %5486, 0.000000e+00
  br i1 %5487, label %5488, label %5525, !dx.controlflow.hints !128

; <label>:5488                                    ; preds = %5474
  %5489 = fcmp fast ugt float %5486, 0.000000e+00
  br i1 %5489, label %5490, label %5522

; <label>:5490                                    ; preds = %5488
  %5491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5492 = extractvalue %dx.types.CBufRet.f32 %5491, 0
  %5493 = extractvalue %dx.types.CBufRet.f32 %5491, 1
  %5494 = extractvalue %dx.types.CBufRet.f32 %5491, 2
  %5495 = extractvalue %dx.types.CBufRet.f32 %5491, 3
  %5496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5497 = extractvalue %dx.types.CBufRet.f32 %5496, 0
  %5498 = extractvalue %dx.types.CBufRet.f32 %5496, 1
  %5499 = extractvalue %dx.types.CBufRet.f32 %5496, 2
  %5500 = extractvalue %dx.types.CBufRet.f32 %5496, 3
  %5501 = extractvalue %dx.types.CBufRet.f32 %5485, 0
  %5502 = extractvalue %dx.types.CBufRet.f32 %5485, 1
  %5503 = extractvalue %dx.types.CBufRet.f32 %3434, 2
  %5504 = fadd fast float %3435, %4900
  %5505 = fadd fast float %3436, %4901
  %5506 = fadd fast float %5503, %4902
  %5507 = fmul fast float %5504, %5492
  %5508 = call float @dx.op.tertiary.f32(i32 46, float %5493, float %5505, float %5507)  ; FMad(a,b,c)
  %5509 = call float @dx.op.tertiary.f32(i32 46, float %5494, float %5506, float %5508)  ; FMad(a,b,c)
  %5510 = fadd fast float %5509, %5495
  %5511 = fmul fast float %5504, %5497
  %5512 = call float @dx.op.tertiary.f32(i32 46, float %5498, float %5505, float %5511)  ; FMad(a,b,c)
  %5513 = call float @dx.op.tertiary.f32(i32 46, float %5499, float %5506, float %5512)  ; FMad(a,b,c)
  %5514 = fadd fast float %5513, %5500
  %5515 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %5510, float %5514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5516 = extractvalue %dx.types.ResRet.f32 %5515, 0
  %5517 = fmul fast float %5516, %5502
  %5518 = fadd fast float %5517, %5501
  %5519 = call float @dx.op.unary.f32(i32 7, float %5518)  ; Saturate(value)
  %5520 = fmul fast float %5519, %5486
  %5521 = fsub fast float 1.000000e+00, %5520
  br label %5522

; <label>:5522                                    ; preds = %5490, %5488
  %5523 = phi float [ %5521, %5490 ], [ 1.000000e+00, %5488 ]
  %5524 = fmul fast float %5523, %5484
  br label %5525

; <label>:5525                                    ; preds = %5522, %5474, %4880
  %5526 = phi float [ 1.000000e+00, %4880 ], [ %5524, %5522 ], [ %5484, %5474 ]
  %5527 = call float @dx.op.binary.f32(i32 36, float %5526, float %5526)  ; FMin(a,b)
  %5528 = call float @dx.op.binary.f32(i32 36, float %5526, float %5527)  ; FMin(a,b)
  %5529 = fcmp fast ogt float %5528, 0.000000e+00
  br i1 %5529, label %5530, label %5687, !dx.controlflow.hints !129

; <label>:5530                                    ; preds = %5525
  %5531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5532 = extractvalue %dx.types.CBufRet.f32 %5531, 0
  %5533 = extractvalue %dx.types.CBufRet.f32 %5531, 1
  %5534 = extractvalue %dx.types.CBufRet.f32 %5531, 2
  %5535 = extractvalue %dx.types.CBufRet.f32 %5531, 3
  %5536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5537 = extractvalue %dx.types.CBufRet.f32 %5536, 0
  %5538 = extractvalue %dx.types.CBufRet.f32 %5536, 1
  %5539 = extractvalue %dx.types.CBufRet.f32 %5536, 2
  %5540 = extractvalue %dx.types.CBufRet.f32 %5536, 3
  %5541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5542 = extractvalue %dx.types.CBufRet.f32 %5541, 0
  %5543 = extractvalue %dx.types.CBufRet.f32 %5541, 1
  %5544 = extractvalue %dx.types.CBufRet.f32 %5541, 2
  %5545 = extractvalue %dx.types.CBufRet.f32 %5541, 3
  %5546 = fmul fast float %5532, %4900
  %5547 = call float @dx.op.tertiary.f32(i32 46, float %4901, float %5533, float %5546)  ; FMad(a,b,c)
  %5548 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %5534, float %5547)  ; FMad(a,b,c)
  %5549 = fadd fast float %5548, %5535
  %5550 = fmul fast float %5537, %4900
  %5551 = call float @dx.op.tertiary.f32(i32 46, float %4901, float %5538, float %5550)  ; FMad(a,b,c)
  %5552 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %5539, float %5551)  ; FMad(a,b,c)
  %5553 = fadd fast float %5552, %5540
  %5554 = fmul fast float %5542, %4900
  %5555 = call float @dx.op.tertiary.f32(i32 46, float %4901, float %5543, float %5554)  ; FMad(a,b,c)
  %5556 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %5544, float %5555)  ; FMad(a,b,c)
  %5557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5558 = extractvalue %dx.types.CBufRet.f32 %5557, 0
  %5559 = extractvalue %dx.types.CBufRet.f32 %5557, 1
  %5560 = extractvalue %dx.types.CBufRet.f32 %5557, 3
  %5561 = fmul fast float %5560, %5549
  %5562 = fmul fast float %5560, %5553
  %5563 = fadd fast float %5561, %5558
  %5564 = fadd fast float %5562, %5559
  %5565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5566 = extractvalue %dx.types.CBufRet.f32 %5565, 0
  %5567 = extractvalue %dx.types.CBufRet.f32 %5565, 1
  %5568 = fsub fast float %5563, %5566
  %5569 = fsub fast float %5564, %5567
  %5570 = fcmp fast olt float %5568, 0.000000e+00
  %5571 = fcmp fast olt float %5569, 0.000000e+00
  %5572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5573 = extractvalue %dx.types.CBufRet.f32 %5572, 0
  %5574 = extractvalue %dx.types.CBufRet.f32 %5572, 1
  %5575 = extractvalue %dx.types.CBufRet.f32 %5572, 2
  %5576 = extractvalue %dx.types.CBufRet.f32 %5572, 3
  %5577 = select i1 %5570, float %5573, float %5575
  %5578 = select i1 %5571, float %5574, float %5576
  %5579 = fmul fast float %5577, %5568
  %5580 = fmul fast float %5578, %5569
  %5581 = call float @dx.op.unary.f32(i32 6, float %5579)  ; FAbs(value)
  %5582 = call float @dx.op.unary.f32(i32 6, float %5580)  ; FAbs(value)
  %5583 = extractvalue %dx.types.CBufRet.f32 %4895, 0
  %5584 = call float @dx.op.binary.f32(i32 35, float %5581, float %5582)  ; FMax(a,b)
  %5585 = fsub fast float %5583, %5584
  %5586 = call float @dx.op.unary.f32(i32 7, float %5585)  ; Saturate(value)
  %5587 = fcmp fast ogt float %5586, 0.000000e+00
  br i1 %5587, label %5588, label %5629, !dx.controlflow.hints !130

; <label>:5588                                    ; preds = %5530
  %5589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %5563, float %5564, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5590 = extractvalue %dx.types.ResRet.f32 %5589, 1
  %5591 = fcmp fast ogt float %5590, 0.000000e+00
  br i1 %5591, label %5592, label %5624

; <label>:5592                                    ; preds = %5588
  %5593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %5563, float %5564, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5594 = extractvalue %dx.types.ResRet.f32 %5593, 0
  %5595 = extractvalue %dx.types.ResRet.f32 %5593, 1
  %5596 = extractvalue %dx.types.ResRet.f32 %5593, 2
  %5597 = extractvalue %dx.types.ResRet.f32 %5593, 3
  %5598 = fsub fast float 1.000000e+00, %5545
  %5599 = fsub fast float %5598, %5556
  %5600 = fmul fast float %5599, 0x400921FB60000000
  %5601 = fadd fast float %5600, 0x3FF921FB60000000
  %5602 = call float @dx.op.unary.f32(i32 13, float %5601)  ; Sin(value)
  %5603 = fadd fast float %5602, -1.000000e+00
  %5604 = fmul fast float %5603, 0x3FD45F3060000000
  %5605 = fmul fast float %5599, 0x401921FB60000000
  %5606 = fadd fast float %5605, 0x400921FB60000000
  %5607 = call float @dx.op.unary.f32(i32 13, float %5606)  ; Sin(value)
  %5608 = fadd fast float %5607, 0x3E7777A5C0000000
  %5609 = fmul fast float %5608, 0x3FC45F3060000000
  %5610 = fmul fast float %5599, 0x4022D97C80000000
  %5611 = fadd fast float %5610, 0x4012D97C80000000
  %5612 = call float @dx.op.unary.f32(i32 13, float %5611)  ; Sin(value)
  %5613 = fadd fast float %5612, 1.000000e+00
  %5614 = fmul fast float %5613, 0x3FBB2995E0000000
  %5615 = fmul fast float %5599, 0x402921FB60000000
  %5616 = fadd fast float %5615, 0x401921FB60000000
  %5617 = call float @dx.op.unary.f32(i32 13, float %5616)  ; Sin(value)
  %5618 = fadd fast float %5617, 0xBE8777A5C0000000
  %5619 = fmul fast float %5618, 0x3FB45F3060000000
  %5620 = call float @dx.op.dot4.f32(i32 56, float %5594, float %5595, float %5596, float %5597, float %5604, float %5609, float %5614, float %5619)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5621 = fmul fast float %5620, 0xBFF7154760000000
  %5622 = call float @dx.op.unary.f32(i32 21, float %5621)  ; Exp(value)
  %5623 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  br label %5624

; <label>:5624                                    ; preds = %5592, %5588
  %5625 = phi float [ %5623, %5592 ], [ 1.000000e+00, %5588 ]
  %5626 = fadd fast float %5625, -1.000000e+00
  %5627 = fmul fast float %5626, %5586
  %5628 = fadd fast float %5627, 1.000000e+00
  br label %5629

; <label>:5629                                    ; preds = %5624, %5530
  %5630 = phi float [ %5628, %5624 ], [ 1.000000e+00, %5530 ]
  %5631 = fmul fast float %5630, %5526
  %5632 = extractvalue %dx.types.CBufRet.f32 %3434, 2
  %5633 = fadd fast float %3435, %143
  %5634 = fadd fast float %3436, %144
  %5635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5636 = extractvalue %dx.types.CBufRet.f32 %5635, 1
  %5637 = fsub fast float -0.000000e+00, %5633
  %5638 = fsub fast float -0.000000e+00, %5634
  %5639 = fsub fast float %3417, %5632
  %5640 = fadd fast float %5639, %5636
  %5641 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5637, float %5638, float %5640)  ; Dot3(ax,ay,az,bx,by,bz)
  %5642 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4881, float %4882, float %4883)  ; Dot3(ax,ay,az,bx,by,bz)
  %5643 = fdiv fast float 1.000000e+00, %5642
  %5644 = fmul fast float %5643, %5641
  %5645 = fmul fast float %4881, %5644
  %5646 = fmul fast float %4882, %5644
  %5647 = fadd fast float %5645, %5633
  %5648 = fadd fast float %5646, %5634
  %5649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5650 = extractvalue %dx.types.CBufRet.f32 %5649, 0
  %5651 = extractvalue %dx.types.CBufRet.f32 %5649, 1
  %5652 = fsub fast float %5647, %5650
  %5653 = fsub fast float %5648, %5651
  %5654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5655 = extractvalue %dx.types.CBufRet.f32 %5654, 2
  %5656 = extractvalue %dx.types.CBufRet.f32 %5654, 3
  %5657 = fmul fast float %5652, %5655
  %5658 = fmul fast float %5653, %5656
  %5659 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5660 = extractvalue %dx.types.CBufRet.i32 %5659, 3
  %5661 = icmp eq i32 %5660, 0
  br i1 %5661, label %5667, label %5662

; <label>:5662                                    ; preds = %5629
  %5663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %5657, float %5658, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5664 = extractvalue %dx.types.ResRet.f32 %5663, 0
  %5665 = extractvalue %dx.types.ResRet.f32 %5663, 1
  %5666 = extractvalue %dx.types.ResRet.f32 %5663, 2
  br label %5672

; <label>:5667                                    ; preds = %5629
  %5668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %5657, float %5658, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5669 = extractvalue %dx.types.ResRet.f32 %5668, 0
  %5670 = extractvalue %dx.types.ResRet.f32 %5668, 1
  %5671 = extractvalue %dx.types.ResRet.f32 %5668, 2
  br label %5672

; <label>:5672                                    ; preds = %5667, %5662
  %5673 = phi float [ %5664, %5662 ], [ %5669, %5667 ]
  %5674 = phi float [ %5665, %5662 ], [ %5670, %5667 ]
  %5675 = phi float [ %5666, %5662 ], [ %5671, %5667 ]
  %5676 = extractvalue %dx.types.CBufRet.f32 %5635, 2
  %5677 = fmul fast float %5676, %5673
  %5678 = extractvalue %dx.types.CBufRet.f32 %5635, 0
  %5679 = fsub fast float %5644, %5678
  %5680 = fsub fast float %5679, %5677
  %5681 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5680)  ; FMax(a,b)
  %5682 = fmul fast float %5681, %5674
  %5683 = call float @dx.op.binary.f32(i32 36, float %5675, float %5682)  ; FMin(a,b)
  %5684 = fmul fast float %5683, 0xBFF7154760000000
  %5685 = call float @dx.op.unary.f32(i32 21, float %5684)  ; Exp(value)
  %5686 = fmul fast float %5631, %5685
  br label %5687

; <label>:5687                                    ; preds = %5672, %5525
  %5688 = phi float [ %5686, %5672 ], [ %5526, %5525 ]
  %5689 = call float @dx.op.binary.f32(i32 36, float %5688, float %5688)  ; FMin(a,b)
  %5690 = call float @dx.op.binary.f32(i32 36, float %5688, float %5689)  ; FMin(a,b)
  %5691 = fcmp fast ogt float %5690, 0.000000e+00
  br i1 %5691, label %5692, label %6078, !dx.controlflow.hints !131

; <label>:5692                                    ; preds = %5687
  %5693 = fmul fast float %5688, %4892
  %5694 = fmul fast float %5688, %4893
  %5695 = fmul fast float %5688, %4894
  %5696 = fsub fast float %145, %3205
  %5697 = fcmp fast ogt float %5696, 0.000000e+00
  %5698 = fmul fast float %4881, 5.120000e+02
  %5699 = fmul fast float %4882, 5.120000e+02
  %5700 = fmul fast float %4883, 5.120000e+02
  %5701 = fadd fast float %5700, %145
  %5702 = fsub fast float %3205, %5701
  %5703 = fmul fast float %5702, 2.000000e+00
  %5704 = fadd fast float %5703, %5701
  %5705 = select i1 %5697, float %5704, float %5701
  %5706 = fsub fast float %5705, %145
  %5707 = call float @dx.op.dot3.f32(i32 55, float %5698, float %5699, float %5706, float %5698, float %5699, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %5708 = call float @dx.op.unary.f32(i32 25, float %5707)  ; Rsqrt(value)
  %5709 = fmul fast float %5708, %5698
  %5710 = fmul fast float %5708, %5699
  %5711 = fmul fast float %5708, %5706
  %5712 = fsub fast float %3205, %145
  %5713 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5712)  ; Dot3(ax,ay,az,bx,by,bz)
  %5714 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5709, float %5710, float %5711)  ; Dot3(ax,ay,az,bx,by,bz)
  %5715 = fdiv fast float 1.000000e+00, %5714
  %5716 = fmul fast float %5715, %5713
  %5717 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5696, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5718 = fcmp fast ogt float %5717, 0.000000e+00
  %5719 = fcmp fast olt float %5717, 0.000000e+00
  %5720 = zext i1 %5718 to i32
  %5721 = zext i1 %5719 to i32
  %5722 = sub nsw i32 %5720, %5721
  %5723 = sitofp i32 %5722 to float
  %5724 = fsub fast float %5705, %3205
  %5725 = call float @dx.op.dot3.f32(i32 55, float %5698, float %5699, float %5724, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5726 = fcmp fast ogt float %5725, 0.000000e+00
  %5727 = fcmp fast olt float %5725, 0.000000e+00
  %5728 = zext i1 %5726 to i32
  %5729 = zext i1 %5727 to i32
  %5730 = sub nsw i32 %5728, %5729
  %5731 = sitofp i32 %5730 to float
  %5732 = fcmp fast une float %5723, %5731
  br i1 %5732, label %5733, label %5743

; <label>:5733                                    ; preds = %5692
  %5734 = fmul fast float %5716, %5711
  %5735 = fmul fast float %5716, %5710
  %5736 = fmul fast float %5716, %5709
  %5737 = fmul fast float %5736, %5736
  %5738 = fmul fast float %5735, %5735
  %5739 = fadd fast float %5737, %5738
  %5740 = fmul fast float %5734, %5734
  %5741 = fadd fast float %5739, %5740
  %5742 = call float @dx.op.unary.f32(i32 24, float %5741)  ; Sqrt(value)
  br label %5753

; <label>:5743                                    ; preds = %5692
  %5744 = icmp slt i32 %5722, 0
  br i1 %5744, label %5745, label %5753

; <label>:5745                                    ; preds = %5743
  %5746 = fsub fast float %145, %5705
  %5747 = fmul fast float %5698, %5698
  %5748 = fmul fast float %5699, %5699
  %5749 = fadd fast float %5747, %5748
  %5750 = fmul fast float %5746, %5746
  %5751 = fadd fast float %5749, %5750
  %5752 = call float @dx.op.unary.f32(i32 24, float %5751)  ; Sqrt(value)
  br label %5753

; <label>:5753                                    ; preds = %5745, %5743, %5733
  %5754 = phi float [ %5742, %5733 ], [ %5752, %5745 ], [ 0.000000e+00, %5743 ]
  %5755 = fsub fast float -0.000000e+00, %5754
  %5756 = select i1 %5697, float -0.000000e+00, float %5755
  %5757 = fmul fast float %3206, 0x3FF7154760000000
  %5758 = fmul fast float %5757, %5756
  %5759 = fmul fast float %3207, 0x3FF7154760000000
  %5760 = fmul fast float %5759, %5756
  %5761 = fmul fast float %3208, 0x3FF7154760000000
  %5762 = fmul fast float %5761, %5756
  %5763 = call float @dx.op.unary.f32(i32 21, float %5758)  ; Exp(value)
  %5764 = call float @dx.op.unary.f32(i32 21, float %5760)  ; Exp(value)
  %5765 = call float @dx.op.unary.f32(i32 21, float %5762)  ; Exp(value)
  %5766 = call float @dx.op.unary.f32(i32 7, float %5763)  ; Saturate(value)
  %5767 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5768 = call float @dx.op.unary.f32(i32 7, float %5765)  ; Saturate(value)
  %5769 = fmul fast float %5693, %5766
  %5770 = fmul fast float %5694, %5767
  %5771 = fmul fast float %5695, %5768
  %5772 = fsub fast float %4881, %3405
  %5773 = fsub fast float %4882, %3404
  %5774 = fsub fast float %4883, %3403
  %5775 = call float @dx.op.dot3.f32(i32 55, float %5772, float %5773, float %5774, float %5772, float %5773, float %5774)  ; Dot3(ax,ay,az,bx,by,bz)
  %5776 = call float @dx.op.unary.f32(i32 25, float %5775)  ; Rsqrt(value)
  %5777 = fmul fast float %5776, %5772
  %5778 = fmul fast float %5776, %5773
  %5779 = fmul fast float %5776, %5774
  %5780 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4882, float %4883, float %3409, float %3410, float %3411)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = call float @dx.op.dot3.f32(i32 55, float %3402, float %3401, float %3400, float %5777, float %5778, float %5779)  ; Dot3(ax,ay,az,bx,by,bz)
  %5782 = call float @dx.op.unary.f32(i32 7, float %5780)  ; Saturate(value)
  %5783 = fmul fast float %5782, %5782
  %5784 = fmul fast float %5783, %3433
  %5785 = call float @dx.op.unary.f32(i32 7, float %5784)  ; Saturate(value)
  %5786 = fmul fast float %5785, %5782
  %5787 = call float @dx.op.dot3.f32(i32 55, float %3409, float %3410, float %3411, float %5777, float %5778, float %5779)  ; Dot3(ax,ay,az,bx,by,bz)
  %5788 = fmul fast float %5787, %5787
  %5789 = call float @dx.op.unary.f32(i32 6, float %5780)  ; FAbs(value)
  %5790 = call float @dx.op.binary.f32(i32 35, float %4849, float 0x3F847AE140000000)  ; FMax(a,b)
  %5791 = fmul fast float %5790, %5790
  %5792 = fmul fast float %5791, %5791
  %5793 = fsub fast float 1.000000e+00, %5792
  %5794 = fmul fast float %3420, %3420
  %5795 = fmul fast float %5794, %5793
  %5796 = fadd fast float %5795, %5792
  %5797 = bitcast float %5796 to i32
  %5798 = ashr i32 %5797, 1
  %5799 = add nsw i32 %5798, 532487669
  %5800 = bitcast i32 %5799 to float
  %5801 = fadd fast float %5800, %3420
  %5802 = fmul fast float %5792, %5788
  %5803 = fsub fast float 1.000000e+00, %5788
  %5804 = fadd fast float %5803, %5802
  %5805 = fmul fast float %5789, %5789
  %5806 = fmul fast float %5805, %5793
  %5807 = fadd fast float %5806, %5792
  %5808 = bitcast float %5807 to i32
  %5809 = ashr i32 %5808, 1
  %5810 = add nsw i32 %5809, 532487669
  %5811 = bitcast i32 %5810 to float
  %5812 = fadd fast float %5811, %5789
  %5813 = fmul fast float %5804, %5804
  %5814 = fmul fast float %5813, %5801
  %5815 = fmul fast float %5814, %5812
  %5816 = fdiv fast float 0x3FF0A00000000000, %5815
  %5817 = fmul fast float %5816, %5792
  %5818 = fmul fast float %4711, 0x3FF9999980000000
  %5819 = fsub fast float 5.000000e+00, %5818
  %5820 = call float @dx.op.unary.f32(i32 6, float %5781)  ; FAbs(value)
  %5821 = fsub fast float 1.000000e+00, %5820
  %5822 = fmul fast float %4711, 0x41D9660740000000
  %5823 = fadd fast float %5822, 0xC1EFBF8940000000
  %5824 = bitcast float %5821 to i32
  %5825 = sitofp i32 %5824 to float
  %5826 = fmul fast float %5825, %5819
  %5827 = fadd fast float %5823, %5826
  %5828 = fptosi float %5827 to i32
  %5829 = bitcast i32 %5828 to float
  %5830 = fsub fast float 1.000000e+00, %3406
  %5831 = fsub fast float 1.000000e+00, %3407
  %5832 = fsub fast float 1.000000e+00, %3418
  %5833 = fmul fast float %5829, %5830
  %5834 = fmul fast float %5829, %5831
  %5835 = fmul fast float %5829, %5832
  %5836 = fadd fast float %5833, %3406
  %5837 = fadd fast float %5834, %3407
  %5838 = fadd fast float %5835, %3418
  br i1 %4734, label %5839, label %5862

; <label>:5839                                    ; preds = %5753
  %5840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %2751, float %5820, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5841 = extractvalue %dx.types.ResRet.f32 %5840, 0
  %5842 = extractvalue %dx.types.ResRet.f32 %5840, 1
  %5843 = extractvalue %dx.types.ResRet.f32 %5840, 2
  %5844 = fadd fast float %5841, -5.000000e-01
  %5845 = fadd fast float %5842, -5.000000e-01
  %5846 = fadd fast float %5843, -5.000000e-01
  %5847 = fmul fast float %3406, 4.000000e+00
  %5848 = fmul fast float %5847, %5830
  %5849 = fmul fast float %5848, %5844
  %5850 = fmul fast float %3407, 4.000000e+00
  %5851 = fmul fast float %5850, %5831
  %5852 = fmul fast float %5851, %5845
  %5853 = fmul fast float %3418, 4.000000e+00
  %5854 = fmul fast float %5853, %5832
  %5855 = fmul fast float %5854, %5846
  %5856 = fadd fast float %5849, %5836
  %5857 = fadd fast float %5852, %5837
  %5858 = fadd fast float %5855, %5838
  %5859 = call float @dx.op.unary.f32(i32 7, float %5856)  ; Saturate(value)
  %5860 = call float @dx.op.unary.f32(i32 7, float %5857)  ; Saturate(value)
  %5861 = call float @dx.op.unary.f32(i32 7, float %5858)  ; Saturate(value)
  br label %5862

; <label>:5862                                    ; preds = %5839, %5753
  %5863 = phi float [ %5859, %5839 ], [ %5836, %5753 ]
  %5864 = phi float [ %5860, %5839 ], [ %5837, %5753 ]
  %5865 = phi float [ %5861, %5839 ], [ %5838, %5753 ]
  %5866 = fmul fast float %5780, 9.843750e-01
  %5867 = fadd fast float %5866, 7.812500e-03
  %5868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5867, float %4715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5869 = extractvalue %dx.types.ResRet.f32 %5868, 0
  %5870 = extractvalue %dx.types.ResRet.f32 %5868, 1
  %5871 = extractvalue %dx.types.ResRet.f32 %5868, 2
  %5872 = extractvalue %dx.types.ResRet.f32 %5868, 3
  %5873 = fsub fast float %5871, %5869
  %5874 = fsub fast float %5872, %5870
  %5875 = fmul fast float %5873, %4721
  %5876 = fmul fast float %5874, %4721
  %5877 = fadd fast float %5875, %5869
  %5878 = fadd fast float %5876, %5870
  %5879 = fmul fast float %5877, %3406
  %5880 = fmul fast float %5877, %3407
  %5881 = fmul fast float %5877, %3418
  %5882 = fadd fast float %5879, %5878
  %5883 = fadd fast float %5880, %5878
  %5884 = fadd fast float %5881, %5878
  br i1 %4734, label %5885, label %5908

; <label>:5885                                    ; preds = %5862
  %5886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %2751, float %5780, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5887 = extractvalue %dx.types.ResRet.f32 %5886, 0
  %5888 = extractvalue %dx.types.ResRet.f32 %5886, 1
  %5889 = extractvalue %dx.types.ResRet.f32 %5886, 2
  %5890 = fadd fast float %5887, -5.000000e-01
  %5891 = fadd fast float %5888, -5.000000e-01
  %5892 = fadd fast float %5889, -5.000000e-01
  %5893 = fmul fast float %3406, 4.000000e+00
  %5894 = fmul fast float %5893, %5830
  %5895 = fmul fast float %5894, %5890
  %5896 = fmul fast float %3407, 4.000000e+00
  %5897 = fmul fast float %5896, %5831
  %5898 = fmul fast float %5897, %5891
  %5899 = fmul fast float %3418, 4.000000e+00
  %5900 = fmul fast float %5899, %5832
  %5901 = fmul fast float %5900, %5892
  %5902 = fadd fast float %5895, %5882
  %5903 = fadd fast float %5898, %5883
  %5904 = fadd fast float %5901, %5884
  %5905 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5906 = call float @dx.op.unary.f32(i32 7, float %5903)  ; Saturate(value)
  %5907 = call float @dx.op.unary.f32(i32 7, float %5904)  ; Saturate(value)
  br label %5908

; <label>:5908                                    ; preds = %5885, %5862
  %5909 = phi float [ %5905, %5885 ], [ %5882, %5862 ]
  %5910 = phi float [ %5906, %5885 ], [ %5883, %5862 ]
  %5911 = phi float [ %5907, %5885 ], [ %5884, %5862 ]
  %5912 = call float @dx.op.binary.f32(i32 35, float %5910, float %5911)  ; FMax(a,b)
  %5913 = call float @dx.op.binary.f32(i32 35, float %5909, float %5912)  ; FMax(a,b)
  %5914 = fsub fast float 1.000000e+00, %5913
  %5915 = call float @dx.op.binary.f32(i32 35, float %5789, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5916 = fdiv fast float %2157, %5915
  %5917 = fmul fast float %4789, %5916
  %5918 = fmul fast float %4791, %5916
  %5919 = fmul fast float %4793, %5916
  %5920 = call float @dx.op.unary.f32(i32 21, float %5917)  ; Exp(value)
  %5921 = call float @dx.op.unary.f32(i32 21, float %5918)  ; Exp(value)
  %5922 = call float @dx.op.unary.f32(i32 21, float %5919)  ; Exp(value)
  %5923 = call float @dx.op.unary.f32(i32 7, float %5920)  ; Saturate(value)
  %5924 = call float @dx.op.unary.f32(i32 7, float %5921)  ; Saturate(value)
  %5925 = call float @dx.op.unary.f32(i32 7, float %5922)  ; Saturate(value)
  %5926 = select i1 %4786, float %5923, float 0.000000e+00
  %5927 = select i1 %4787, float %5924, float 0.000000e+00
  %5928 = select i1 %4788, float %5925, float 0.000000e+00
  %5929 = fsub fast float -0.000000e+00, %3409
  %5930 = fsub fast float -0.000000e+00, %3410
  %5931 = fsub fast float -0.000000e+00, %3411
  %5932 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4882, float %4883, float %5929, float %5930, float %5931)  ; Dot3(ax,ay,az,bx,by,bz)
  %5933 = call float @dx.op.unary.f32(i32 7, float %5932)  ; Saturate(value)
  %5934 = fmul fast float %5933, 9.843750e-01
  %5935 = fadd fast float %5934, 7.812500e-03
  %5936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5935, float %4715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5937 = extractvalue %dx.types.ResRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.ResRet.f32 %5936, 1
  %5939 = extractvalue %dx.types.ResRet.f32 %5936, 2
  %5940 = extractvalue %dx.types.ResRet.f32 %5936, 3
  %5941 = fsub fast float %5939, %5937
  %5942 = fsub fast float %5940, %5938
  %5943 = fmul fast float %5941, %4721
  %5944 = fmul fast float %5942, %4721
  %5945 = fadd fast float %5943, %5937
  %5946 = fadd fast float %5944, %5938
  %5947 = fmul fast float %5945, %3406
  %5948 = fmul fast float %5945, %3407
  %5949 = fmul fast float %5945, %3418
  %5950 = fadd fast float %5947, %5946
  %5951 = fadd fast float %5948, %5946
  %5952 = fadd fast float %5949, %5946
  br i1 %4734, label %5953, label %5976

; <label>:5953                                    ; preds = %5908
  %5954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %2751, float %5933, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5955 = extractvalue %dx.types.ResRet.f32 %5954, 0
  %5956 = extractvalue %dx.types.ResRet.f32 %5954, 1
  %5957 = extractvalue %dx.types.ResRet.f32 %5954, 2
  %5958 = fadd fast float %5955, -5.000000e-01
  %5959 = fadd fast float %5956, -5.000000e-01
  %5960 = fadd fast float %5957, -5.000000e-01
  %5961 = fmul fast float %3406, 4.000000e+00
  %5962 = fmul fast float %5961, %5830
  %5963 = fmul fast float %5962, %5958
  %5964 = fmul fast float %3407, 4.000000e+00
  %5965 = fmul fast float %5964, %5831
  %5966 = fmul fast float %5965, %5959
  %5967 = fmul fast float %3418, 4.000000e+00
  %5968 = fmul fast float %5967, %5832
  %5969 = fmul fast float %5968, %5960
  %5970 = fadd fast float %5963, %5950
  %5971 = fadd fast float %5966, %5951
  %5972 = fadd fast float %5969, %5952
  %5973 = call float @dx.op.unary.f32(i32 7, float %5970)  ; Saturate(value)
  %5974 = call float @dx.op.unary.f32(i32 7, float %5971)  ; Saturate(value)
  %5975 = call float @dx.op.unary.f32(i32 7, float %5972)  ; Saturate(value)
  br label %5976

; <label>:5976                                    ; preds = %5953, %5908
  %5977 = phi float [ %5973, %5953 ], [ %5950, %5908 ]
  %5978 = phi float [ %5974, %5953 ], [ %5951, %5908 ]
  %5979 = phi float [ %5975, %5953 ], [ %5952, %5908 ]
  %5980 = call float @dx.op.binary.f32(i32 35, float %5978, float %5979)  ; FMax(a,b)
  %5981 = call float @dx.op.binary.f32(i32 35, float %5977, float %5980)  ; FMax(a,b)
  %5982 = fsub fast float 1.000000e+00, %5981
  %5983 = fmul fast float %4849, %4854
  %5984 = fadd fast float %4856, %5983
  %5985 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  %5986 = fsub fast float %4881, %3426
  %5987 = fsub fast float %4882, %3427
  %5988 = fsub fast float %4883, %3428
  %5989 = call float @dx.op.dot3.f32(i32 55, float %5986, float %5987, float %5988, float %5986, float %5987, float %5988)  ; Dot3(ax,ay,az,bx,by,bz)
  %5990 = call float @dx.op.unary.f32(i32 25, float %5989)  ; Rsqrt(value)
  %5991 = fmul fast float %5990, %5986
  %5992 = fmul fast float %5990, %5987
  %5993 = fmul fast float %5990, %5988
  %5994 = call float @dx.op.dot3.f32(i32 55, float %5929, float %5930, float %5931, float %5991, float %5992, float %5993)  ; Dot3(ax,ay,az,bx,by,bz)
  %5995 = fmul fast float %5994, %5994
  %5996 = call float @dx.op.unary.f32(i32 6, float %5933)  ; FAbs(value)
  %5997 = call float @dx.op.binary.f32(i32 35, float %5985, float 0x3F847AE140000000)  ; FMax(a,b)
  %5998 = fmul fast float %5997, %5997
  %5999 = fmul fast float %5998, %5998
  %6000 = fsub fast float 1.000000e+00, %5999
  %6001 = fmul fast float %5794, %6000
  %6002 = fadd fast float %6001, %5999
  %6003 = bitcast float %6002 to i32
  %6004 = ashr i32 %6003, 1
  %6005 = add nsw i32 %6004, 532487669
  %6006 = bitcast i32 %6005 to float
  %6007 = fadd fast float %6006, %3420
  %6008 = fmul fast float %5999, %5995
  %6009 = fsub fast float 1.000000e+00, %5995
  %6010 = fadd fast float %6009, %6008
  %6011 = fmul fast float %5996, %5996
  %6012 = fmul fast float %6011, %6000
  %6013 = fadd fast float %6012, %5999
  %6014 = bitcast float %6013 to i32
  %6015 = ashr i32 %6014, 1
  %6016 = add nsw i32 %6015, 532487669
  %6017 = bitcast i32 %6016 to float
  %6018 = fadd fast float %6017, %5996
  %6019 = fmul fast float %6010, %6010
  %6020 = fmul fast float %6019, %6007
  %6021 = fmul fast float %6020, %6018
  %6022 = fdiv fast float 0x3FF0A00000000000, %6021
  %6023 = fmul fast float %6022, %5999
  %6024 = fmul fast float %5933, %5926
  %6025 = fmul fast float %5933, %5927
  %6026 = fmul fast float %5933, %5928
  %6027 = fmul fast float %6024, %5982
  %6028 = fmul fast float %6027, %6023
  %6029 = fmul fast float %6025, %5982
  %6030 = fmul fast float %6029, %6023
  %6031 = fmul fast float %6026, %5982
  %6032 = fmul fast float %6031, %6023
  %6033 = fmul fast float %5863, %5817
  %6034 = fmul fast float %5864, %5817
  %6035 = fmul fast float %5865, %5817
  %6036 = fsub fast float 1.000000e+00, %5781
  %6037 = bitcast float %6036 to i32
  %6038 = sitofp i32 %6037 to float
  %6039 = fmul fast float %6038, 5.000000e+00
  %6040 = fadd fast float %6039, 0xC1EFBF8940000000
  %6041 = fptosi float %6040 to i32
  %6042 = bitcast i32 %6041 to float
  %6043 = fmul fast float %6042, %2750
  %6044 = fmul fast float %5914, %6043
  %6045 = fmul fast float %6044, %4781
  %6046 = fmul fast float %6044, %4782
  %6047 = fmul fast float %6044, %4783
  %6048 = fadd fast float %6045, %6033
  %6049 = fadd fast float %6046, %6034
  %6050 = fadd fast float %6047, %6035
  %6051 = fmul fast float %6048, %5786
  %6052 = fmul fast float %6049, %5786
  %6053 = fmul fast float %6050, %5786
  %6054 = fmul fast float %5786, %5769
  %6055 = fmul fast float %6054, %5914
  %6056 = fmul fast float %5786, %5770
  %6057 = fmul fast float %6056, %5914
  %6058 = fmul fast float %5786, %5771
  %6059 = fmul fast float %6058, %5914
  %6060 = fadd fast float %6051, %6028
  %6061 = fadd fast float %6052, %6030
  %6062 = fadd fast float %6053, %6032
  %6063 = fmul fast float %6060, %5769
  %6064 = fmul fast float %6061, %5770
  %6065 = fmul fast float %6062, %5771
  %6066 = fadd fast float %6055, %4871
  %6067 = fmul fast float %6066, %2774
  %6068 = fadd fast float %6057, %4873
  %6069 = fmul fast float %6068, %2774
  %6070 = fadd fast float %6059, %4875
  %6071 = fmul fast float %6070, %2774
  %6072 = fadd fast float %6063, %4834
  %6073 = fmul fast float %6072, %2774
  %6074 = fadd fast float %6064, %4837
  %6075 = fmul fast float %6074, %2774
  %6076 = fadd fast float %6065, %4840
  %6077 = fmul fast float %6076, %2774
  br label %6078

; <label>:6078                                    ; preds = %5976, %5687, %4761
  %6079 = phi float [ %4835, %4761 ], [ %4835, %5687 ], [ %6073, %5976 ]
  %6080 = phi float [ %4838, %4761 ], [ %4838, %5687 ], [ %6075, %5976 ]
  %6081 = phi float [ %4841, %4761 ], [ %4841, %5687 ], [ %6077, %5976 ]
  %6082 = phi float [ %4872, %4761 ], [ %4872, %5687 ], [ %6067, %5976 ]
  %6083 = phi float [ %4874, %4761 ], [ %4874, %5687 ], [ %6069, %5976 ]
  %6084 = phi float [ %4876, %4761 ], [ %4876, %5687 ], [ %6071, %5976 ]
  %6085 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6086 = extractvalue %dx.types.CBufRet.i32 %6085, 0
  %6087 = icmp eq i32 %6086, 0
  br i1 %6087, label %6862, label %6088

; <label>:6088                                    ; preds = %6078
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 2
  %6091 = extractvalue %dx.types.CBufRet.f32 %6089, 3
  %6092 = fmul fast float %6090, %96
  %6093 = fmul fast float %6091, %97
  %6094 = fptoui float %6092 to i32
  %6095 = fptoui float %6093 to i32
  %6096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6097 = extractvalue %dx.types.CBufRet.f32 %6096, 0
  %6098 = extractvalue %dx.types.CBufRet.f32 %6096, 2
  %6099 = extractvalue %dx.types.CBufRet.f32 %6096, 3
  %6100 = fadd fast float %87, -4.000000e+00
  %6101 = call float @dx.op.binary.f32(i32 35, float %6100, float 0.000000e+00)  ; FMax(a,b)
  %6102 = fadd fast float %6101, %6097
  %6103 = fmul fast float %6102, %6098
  %6104 = call float @dx.op.unary.f32(i32 23, float %6103)  ; Log(value)
  %6105 = fmul fast float %6104, %6099
  %6106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6107 = extractvalue %dx.types.CBufRet.f32 %6106, 2
  %6108 = fmul fast float %6105, %6107
  %6109 = call float @dx.op.unary.f32(i32 7, float %6108)  ; Saturate(value)
  %6110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6111 = extractvalue %dx.types.CBufRet.i32 %6110, 1
  %6112 = add i32 %6111, -1
  %6113 = uitofp i32 %6111 to float
  %6114 = fmul fast float %6113, %6109
  %6115 = fptoui float %6114 to i32
  %6116 = call i32 @dx.op.binary.i32(i32 40, i32 %6115, i32 %6112)  ; UMin(a,b)
  %6117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.i32 %6117, 2
  %6119 = extractvalue %dx.types.CBufRet.i32 %6117, 3
  %6120 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6095, i32 %6118, i32 %6094)  ; UMad(a,b,c)
  %6121 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6116, i32 %6119, i32 %6120)  ; UMad(a,b,c)
  %6122 = add nsw i32 %6086, -1
  %6123 = call i32 @dx.op.binary.i32(i32 37, i32 %6122, i32 0)  ; IMax(a,b)
  %6124 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %6125 = fptoui float %6124 to i32
  %6126 = lshr i32 %6125, 5
  %6127 = call i32 @dx.op.binary.i32(i32 40, i32 %6126, i32 8191)  ; UMin(a,b)
  %6128 = shl i32 %6127, 2
  %6129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6128, i32 undef)  ; BufferLoad(srv,index,wot)
  %6130 = extractvalue %dx.types.ResRet.i32 %6129, 0
  %6131 = lshr i32 %6130, 16
  %6132 = and i32 %6130, 65535
  %6133 = lshr i32 %6130, 21
  %6134 = lshr i32 %6132, 5
  %6135 = call i32 @dx.op.binary.i32(i32 40, i32 %6134, i32 %6123)  ; UMin(a,b)
  %6136 = icmp ugt i32 %6133, %6135
  br i1 %6136, label %6862, label %6137

; <label>:6137                                    ; preds = %6088
  br label %6138

; <label>:6138                                    ; preds = %6852, %6137
  %6139 = phi i32 [ %6859, %6852 ], [ %6133, %6137 ]
  %6140 = phi float [ %6853, %6852 ], [ %6079, %6137 ]
  %6141 = phi float [ %6854, %6852 ], [ %6080, %6137 ]
  %6142 = phi float [ %6855, %6852 ], [ %6081, %6137 ]
  %6143 = phi float [ %6856, %6852 ], [ %6082, %6137 ]
  %6144 = phi float [ %6857, %6852 ], [ %6083, %6137 ]
  %6145 = phi float [ %6858, %6852 ], [ %6084, %6137 ]
  %6146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6147 = extractvalue %dx.types.CBufRet.i32 %6146, 0
  %6148 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6121, i32 %6147, i32 %6139)  ; UMad(a,b,c)
  %6149 = shl i32 %6148, 2
  %6150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6149, i32 undef)  ; BufferLoad(srv,index,wot)
  %6151 = extractvalue %dx.types.ResRet.i32 %6150, 0
  %6152 = shl i32 %6139, 5
  %6153 = sub nsw i32 %6131, %6152
  %6154 = call i32 @dx.op.binary.i32(i32 37, i32 %6153, i32 0)  ; IMax(a,b)
  %6155 = call i32 @dx.op.binary.i32(i32 38, i32 %6154, i32 31)  ; IMin(a,b)
  %6156 = sub nsw i32 1, %6131
  %6157 = add nsw i32 %6156, %6132
  %6158 = call i32 @dx.op.binary.i32(i32 37, i32 %6157, i32 0)  ; IMax(a,b)
  %6159 = call i32 @dx.op.binary.i32(i32 38, i32 %6158, i32 32)  ; IMin(a,b)
  %6160 = and i32 %6159, 31
  %6161 = shl i32 -1, %6160
  %6162 = xor i32 %6161, -1
  %6163 = and i32 %6155, 31
  %6164 = shl i32 %6162, %6163
  %6165 = icmp eq i32 %6159, 32
  %6166 = select i1 %6165, i32 -1, i32 %6164
  %6167 = and i32 %6166, %6151
  %6168 = icmp eq i32 %6167, 0
  br i1 %6168, label %6852, label %6169

; <label>:6169                                    ; preds = %6138
  br label %6170

; <label>:6170                                    ; preds = %6305, %6169
  %6171 = phi i32 [ %6182, %6305 ], [ %6167, %6169 ]
  %6172 = phi float [ %6306, %6305 ], [ %6140, %6169 ]
  %6173 = phi float [ %6307, %6305 ], [ %6141, %6169 ]
  %6174 = phi float [ %6308, %6305 ], [ %6142, %6169 ]
  %6175 = phi float [ %6309, %6305 ], [ %6143, %6169 ]
  %6176 = phi float [ %6310, %6305 ], [ %6144, %6169 ]
  %6177 = phi float [ %6311, %6305 ], [ %6145, %6169 ]
  %6178 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6171)  ; FirstbitLo(value)
  %6179 = add i32 %6178, %6152
  %6180 = and i32 %6178, 31
  %6181 = shl i32 1, %6180
  %6182 = xor i32 %6181, %6171
  %6183 = mul i32 %6179, 112
  %6184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6183, i32 undef)  ; BufferLoad(srv,index,wot)
  %6185 = extractvalue %dx.types.ResRet.f32 %6184, 0
  %6186 = extractvalue %dx.types.ResRet.f32 %6184, 1
  %6187 = extractvalue %dx.types.ResRet.f32 %6184, 2
  %6188 = or i32 %6183, 12
  %6189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6188, i32 undef)  ; BufferLoad(srv,index,wot)
  %6190 = extractvalue %dx.types.ResRet.f32 %6189, 0
  %6191 = add i32 %6183, 16
  %6192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6191, i32 undef)  ; BufferLoad(srv,index,wot)
  %6193 = extractvalue %dx.types.ResRet.f32 %6192, 0
  %6194 = extractvalue %dx.types.ResRet.f32 %6192, 1
  %6195 = extractvalue %dx.types.ResRet.f32 %6192, 2
  %6196 = add i32 %6183, 28
  %6197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6196, i32 undef)  ; BufferLoad(srv,index,wot)
  %6198 = extractvalue %dx.types.ResRet.i32 %6197, 0
  %6199 = add i32 %6183, 44
  %6200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6199, i32 undef)  ; BufferLoad(srv,index,wot)
  %6201 = extractvalue %dx.types.ResRet.f32 %6200, 0
  %6202 = add i32 %6183, 48
  %6203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6202, i32 undef)  ; BufferLoad(srv,index,wot)
  %6204 = extractvalue %dx.types.ResRet.f32 %6203, 0
  %6205 = extractvalue %dx.types.ResRet.f32 %6203, 1
  %6206 = extractvalue %dx.types.ResRet.f32 %6203, 2
  %6207 = extractvalue %dx.types.ResRet.f32 %6203, 3
  %6208 = add i32 %6183, 64
  %6209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6208, i32 undef)  ; BufferLoad(srv,index,wot)
  %6210 = extractvalue %dx.types.ResRet.f32 %6209, 0
  %6211 = extractvalue %dx.types.ResRet.f32 %6209, 1
  %6212 = extractvalue %dx.types.ResRet.f32 %6209, 2
  %6213 = extractvalue %dx.types.ResRet.f32 %6209, 3
  %6214 = add i32 %6183, 80
  %6215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6214, i32 undef)  ; BufferLoad(srv,index,wot)
  %6216 = extractvalue %dx.types.ResRet.f32 %6215, 1
  %6217 = extractvalue %dx.types.ResRet.f32 %6215, 2
  %6218 = add i32 %6183, 92
  %6219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6218, i32 undef)  ; BufferLoad(srv,index,wot)
  %6220 = extractvalue %dx.types.ResRet.i32 %6219, 0
  %6221 = call float @dx.op.dot3.f32(i32 55, float %6185, float %6186, float %6187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6222 = select i1 %234, float %6216, float %6185
  %6223 = select i1 %234, float %6221, float %6186
  %6224 = select i1 %234, float %6217, float %6187
  %6225 = and i32 %6220, 65535
  %6226 = uitofp i32 %6225 to float
  %6227 = lshr i32 %6220, 16
  %6228 = uitofp i32 %6227 to float
  %6229 = and i32 %6198, 65535
  %6230 = and i32 %6198, 50331648
  %6231 = icmp slt i32 %6198, 0
  %6232 = icmp eq i32 %6230, 33554432
  %6233 = fsub fast float %6204, %143
  %6234 = fsub fast float %6205, %144
  %6235 = fsub fast float %6206, %145
  %6236 = call float @dx.op.dot3.f32(i32 55, float %6233, float %6234, float %6235, float %6233, float %6234, float %6235)  ; Dot3(ax,ay,az,bx,by,bz)
  %6237 = call float @dx.op.unary.f32(i32 24, float %6236)  ; Sqrt(value)
  %6238 = fdiv fast float 1.000000e+00, %6237
  %6239 = fmul fast float %6238, %6233
  %6240 = fmul fast float %6238, %6234
  %6241 = fmul fast float %6238, %6235
  %6242 = fadd fast float %6237, %6190
  %6243 = fdiv fast float 1.000000e+00, %6242
  %6244 = fmul float %6201, %6243
  %6245 = fmul float %6244, %6244
  %6246 = call float @dx.op.unary.f32(i32 7, float %6245)  ; Saturate(value)
  br i1 %6232, label %6247, label %6268

; <label>:6247                                    ; preds = %6170
  %6248 = fmul fast float %6212, %6193
  %6249 = fmul fast float %6212, %6194
  %6250 = fmul fast float %6212, %6195
  %6251 = fadd fast float %6233, %6248
  %6252 = fadd fast float %6234, %6249
  %6253 = fadd fast float %6235, %6250
  %6254 = call float @dx.op.dot3.f32(i32 55, float %6251, float %6252, float %6253, float %6251, float %6252, float %6253)  ; Dot3(ax,ay,az,bx,by,bz)
  %6255 = call float @dx.op.unary.f32(i32 25, float %6254)  ; Rsqrt(value)
  %6256 = fmul fast float %6255, %6251
  %6257 = fmul fast float %6255, %6252
  %6258 = fmul fast float %6255, %6253
  %6259 = fsub fast float %143, %6204
  %6260 = fsub fast float %144, %6205
  %6261 = fsub fast float %145, %6206
  %6262 = fsub fast float -0.000000e+00, %6259
  %6263 = fsub fast float -0.000000e+00, %6260
  %6264 = fsub fast float -0.000000e+00, %6261
  %6265 = call float @dx.op.dot3.f32(i32 55, float %6262, float %6263, float %6264, float %6193, float %6194, float %6195)  ; Dot3(ax,ay,az,bx,by,bz)
  %6266 = fcmp fast ogt float %6265, 0.000000e+00
  %6267 = uitofp i1 %6266 to float
  br label %6268

; <label>:6268                                    ; preds = %6247, %6170
  %6269 = phi float [ %6267, %6247 ], [ 1.000000e+00, %6170 ]
  %6270 = phi float [ %6256, %6247 ], [ %6239, %6170 ]
  %6271 = phi float [ %6257, %6247 ], [ %6240, %6170 ]
  %6272 = phi float [ %6258, %6247 ], [ %6241, %6170 ]
  %6273 = call float @dx.op.dot3.f32(i32 55, float %6193, float %6194, float %6195, float %6270, float %6271, float %6272)  ; Dot3(ax,ay,az,bx,by,bz)
  %6274 = fmul fast float %6273, %6273
  %6275 = call float @dx.op.unary.f32(i32 7, float %6274)  ; Saturate(value)
  %6276 = fsub fast float 1.000000e+00, %6275
  %6277 = fmul fast float %6276, 5.000000e-01
  %6278 = fcmp fast ogt float %6273, 0.000000e+00
  %6279 = fsub fast float 1.000000e+00, %6277
  %6280 = select i1 %6278, float %6277, float %6279
  %6281 = fmul fast float %6280, %6228
  %6282 = fadd fast float %6281, %6226
  %6283 = fmul fast float %6282, 0x3EF0001000000000
  %6284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %58, float %6283, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6285 = extractvalue %dx.types.ResRet.f32 %6284, 0
  %6286 = fmul fast float %6273, %6210
  %6287 = fadd fast float %6286, %6211
  %6288 = call float @dx.op.unary.f32(i32 7, float %6287)  ; Saturate(value)
  %6289 = select i1 %6232, float 1.000000e+00, float %6288
  %6290 = select i1 %6232, float %6288, float 1.000000e+00
  %6291 = fmul fast float %6237, %6207
  %6292 = fsub fast float 1.000000e+00, %6291
  %6293 = fmul fast float %6292, %6213
  %6294 = call float @dx.op.unary.f32(i32 7, float %6293)  ; Saturate(value)
  %6295 = fmul fast float %6294, %6290
  %6296 = fmul fast float %6295, 2.000000e+00
  %6297 = fsub fast float 3.000000e+00, %6296
  %6298 = fmul fast float %6285, %6269
  %6299 = fmul fast float %6295, %6295
  %6300 = fmul fast float %6299, %6298
  %6301 = fmul fast float %6300, %6297
  %6302 = call float @dx.op.binary.f32(i32 36, float %6301, float %6301)  ; FMin(a,b)
  %6303 = call float @dx.op.binary.f32(i32 36, float %6301, float %6302)  ; FMin(a,b)
  %6304 = fcmp fast ogt float %6303, 0.000000e+00
  br i1 %6304, label %6313, label %6305, !dx.controlflow.hints !132

; <label>:6305                                    ; preds = %6805, %6413, %6268
  %6306 = phi float [ %6172, %6413 ], [ %6172, %6268 ], [ %6848, %6805 ]
  %6307 = phi float [ %6173, %6413 ], [ %6173, %6268 ], [ %6849, %6805 ]
  %6308 = phi float [ %6174, %6413 ], [ %6174, %6268 ], [ %6850, %6805 ]
  %6309 = phi float [ %6175, %6413 ], [ %6175, %6268 ], [ %6842, %6805 ]
  %6310 = phi float [ %6176, %6413 ], [ %6176, %6268 ], [ %6843, %6805 ]
  %6311 = phi float [ %6177, %6413 ], [ %6177, %6268 ], [ %6844, %6805 ]
  %6312 = icmp eq i32 %6171, %6181
  br i1 %6312, label %6851, label %6170

; <label>:6313                                    ; preds = %6268
  %6314 = icmp eq i32 %6229, 255
  br i1 %6314, label %6413, label %6315, !dx.controlflow.hints !133

; <label>:6315                                    ; preds = %6313
  %6316 = mul nuw nsw i32 %6229, 176
  %6317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6316, i32 undef)  ; BufferLoad(srv,index,wot)
  %6318 = extractvalue %dx.types.ResRet.f32 %6317, 0
  %6319 = extractvalue %dx.types.ResRet.f32 %6317, 1
  %6320 = extractvalue %dx.types.ResRet.f32 %6317, 2
  %6321 = extractvalue %dx.types.ResRet.f32 %6317, 3
  %6322 = add nuw nsw i32 %6316, 16
  %6323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6322, i32 undef)  ; BufferLoad(srv,index,wot)
  %6324 = extractvalue %dx.types.ResRet.f32 %6323, 0
  %6325 = extractvalue %dx.types.ResRet.f32 %6323, 1
  %6326 = add nuw nsw i32 %6316, 32
  %6327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6326, i32 undef)  ; BufferLoad(srv,index,wot)
  %6328 = extractvalue %dx.types.ResRet.f32 %6327, 0
  %6329 = extractvalue %dx.types.ResRet.f32 %6327, 1
  %6330 = extractvalue %dx.types.ResRet.f32 %6327, 2
  %6331 = add nuw nsw i32 %6316, 48
  %6332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6331, i32 undef)  ; BufferLoad(srv,index,wot)
  %6333 = extractvalue %dx.types.ResRet.f32 %6332, 0
  %6334 = extractvalue %dx.types.ResRet.f32 %6332, 1
  %6335 = extractvalue %dx.types.ResRet.f32 %6332, 2
  %6336 = extractvalue %dx.types.ResRet.f32 %6332, 3
  %6337 = add nuw nsw i32 %6316, 64
  %6338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6337, i32 undef)  ; BufferLoad(srv,index,wot)
  %6339 = extractvalue %dx.types.ResRet.f32 %6338, 0
  %6340 = extractvalue %dx.types.ResRet.f32 %6338, 1
  %6341 = extractvalue %dx.types.ResRet.f32 %6338, 2
  %6342 = extractvalue %dx.types.ResRet.f32 %6338, 3
  %6343 = add nuw nsw i32 %6316, 80
  %6344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6343, i32 undef)  ; BufferLoad(srv,index,wot)
  %6345 = extractvalue %dx.types.ResRet.f32 %6344, 0
  %6346 = extractvalue %dx.types.ResRet.f32 %6344, 1
  %6347 = extractvalue %dx.types.ResRet.f32 %6344, 2
  %6348 = extractvalue %dx.types.ResRet.f32 %6344, 3
  %6349 = add nuw nsw i32 %6316, 96
  %6350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6349, i32 undef)  ; BufferLoad(srv,index,wot)
  %6351 = extractvalue %dx.types.ResRet.f32 %6350, 0
  %6352 = extractvalue %dx.types.ResRet.f32 %6350, 1
  %6353 = extractvalue %dx.types.ResRet.f32 %6350, 2
  %6354 = extractvalue %dx.types.ResRet.f32 %6350, 3
  %6355 = bitcast float %6325 to i32
  %6356 = fmul fast float %6330, %74
  %6357 = fmul fast float %6330, %75
  %6358 = fmul fast float %6330, %76
  %6359 = fadd fast float %6356, %143
  %6360 = fadd fast float %6357, %144
  %6361 = fadd fast float %6358, %145
  %6362 = fmul fast float %6359, %6333
  %6363 = call float @dx.op.tertiary.f32(i32 46, float %6360, float %6339, float %6362)  ; FMad(a,b,c)
  %6364 = call float @dx.op.tertiary.f32(i32 46, float %6361, float %6345, float %6363)  ; FMad(a,b,c)
  %6365 = fadd fast float %6364, %6351
  %6366 = fmul fast float %6359, %6334
  %6367 = call float @dx.op.tertiary.f32(i32 46, float %6360, float %6340, float %6366)  ; FMad(a,b,c)
  %6368 = call float @dx.op.tertiary.f32(i32 46, float %6361, float %6346, float %6367)  ; FMad(a,b,c)
  %6369 = fadd fast float %6368, %6352
  %6370 = fmul fast float %6359, %6335
  %6371 = call float @dx.op.tertiary.f32(i32 46, float %6360, float %6341, float %6370)  ; FMad(a,b,c)
  %6372 = call float @dx.op.tertiary.f32(i32 46, float %6361, float %6347, float %6371)  ; FMad(a,b,c)
  %6373 = fadd fast float %6372, %6353
  %6374 = fmul fast float %6359, %6336
  %6375 = call float @dx.op.tertiary.f32(i32 46, float %6360, float %6342, float %6374)  ; FMad(a,b,c)
  %6376 = call float @dx.op.tertiary.f32(i32 46, float %6361, float %6348, float %6375)  ; FMad(a,b,c)
  %6377 = fadd fast float %6376, %6354
  %6378 = fdiv fast float %6365, %6377
  %6379 = fdiv fast float %6369, %6377
  %6380 = fdiv fast float %6373, %6377
  %6381 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6380)  ; FMax(a,b)
  %6382 = fmul fast float %245, 0x401921FB60000000
  %6383 = call float @dx.op.unary.f32(i32 13, float %6382)  ; Sin(value)
  %6384 = call float @dx.op.unary.f32(i32 12, float %6382)  ; Cos(value)
  %6385 = fsub fast float -0.000000e+00, %6383
  %6386 = fmul fast float %6320, 5.000000e-01
  %6387 = call float @dx.op.dot2.f32(i32 54, float %245, float %245, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6388 = call float @dx.op.unary.f32(i32 22, float %6387)  ; Frc(value)
  %6389 = fmul fast float %6388, 0x404A7DD040000000
  %6390 = call float @dx.op.unary.f32(i32 22, float %6389)  ; Frc(value)
  %6391 = fmul fast float %6390, %6329
  %6392 = fadd fast float %6391, %6386
  %6393 = call float @dx.op.tertiary.f32(i32 46, float %6392, float %6385, float 0.000000e+00)  ; FMad(a,b,c)
  %6394 = call float @dx.op.tertiary.f32(i32 46, float %6392, float %6384, float 0.000000e+00)  ; FMad(a,b,c)
  %6395 = fadd fast float %6393, %6378
  %6396 = fadd fast float %6394, %6379
  %6397 = fmul fast float %6395, %6324
  %6398 = fmul fast float %6396, %6324
  %6399 = call float @dx.op.binary.f32(i32 35, float %6397, float %6320)  ; FMax(a,b)
  %6400 = call float @dx.op.binary.f32(i32 35, float %6398, float %6320)  ; FMax(a,b)
  %6401 = call float @dx.op.binary.f32(i32 36, float %6399, float %6321)  ; FMin(a,b)
  %6402 = call float @dx.op.binary.f32(i32 36, float %6400, float %6321)  ; FMin(a,b)
  %6403 = fadd fast float %6401, %6318
  %6404 = fadd fast float %6402, %6319
  %6405 = uitofp i32 %6355 to float
  %6406 = fadd fast float %6381, %6328
  %6407 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %60, float %6403, float %6404, float %6405, float undef, i32 0, i32 0, i32 undef, float %6406)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6408 = extractvalue %dx.types.ResRet.f32 %6407, 0
  %6409 = fadd fast float %6408, -1.000000e+00
  %6410 = fmul fast float %6409, %6289
  %6411 = fadd fast float %6410, 1.000000e+00
  %6412 = fmul fast float %6411, %6301
  br label %6413

; <label>:6413                                    ; preds = %6315, %6313
  %6414 = phi float [ %6412, %6315 ], [ %6301, %6313 ]
  %6415 = call float @dx.op.binary.f32(i32 36, float %6414, float %6414)  ; FMin(a,b)
  %6416 = call float @dx.op.binary.f32(i32 36, float %6414, float %6415)  ; FMin(a,b)
  %6417 = fcmp fast ogt float %6416, 0.000000e+00
  br i1 %6417, label %6418, label %6305, !dx.controlflow.hints !134

; <label>:6418                                    ; preds = %6413
  %6419 = fmul fast float %6414, %6222
  %6420 = fmul fast float %6414, %6223
  %6421 = fmul fast float %6414, %6224
  %6422 = fsub fast float %6206, %3205
  %6423 = fcmp fast ogt float %6422, 0.000000e+00
  %6424 = fsub fast float %145, %3205
  %6425 = fcmp fast ogt float %6424, 0.000000e+00
  %6426 = xor i1 %6425, %6423
  %6427 = fsub fast float %3205, %6206
  %6428 = fmul fast float %6427, 2.000000e+00
  %6429 = fadd fast float %6428, %6206
  %6430 = select i1 %6426, float %6206, float %6429
  %6431 = fsub fast float %6430, %145
  %6432 = call float @dx.op.dot3.f32(i32 55, float %6233, float %6234, float %6431, float %6233, float %6234, float %6431)  ; Dot3(ax,ay,az,bx,by,bz)
  %6433 = call float @dx.op.unary.f32(i32 25, float %6432)  ; Rsqrt(value)
  %6434 = fmul fast float %6433, %6233
  %6435 = fmul fast float %6433, %6234
  %6436 = fmul fast float %6433, %6431
  %6437 = fsub fast float %3205, %145
  %6438 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6437)  ; Dot3(ax,ay,az,bx,by,bz)
  %6439 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6434, float %6435, float %6436)  ; Dot3(ax,ay,az,bx,by,bz)
  %6440 = fdiv fast float 1.000000e+00, %6439
  %6441 = fmul fast float %6440, %6438
  %6442 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6424, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6443 = fcmp fast ogt float %6442, 0.000000e+00
  %6444 = fcmp fast olt float %6442, 0.000000e+00
  %6445 = zext i1 %6443 to i32
  %6446 = zext i1 %6444 to i32
  %6447 = sub nsw i32 %6445, %6446
  %6448 = sitofp i32 %6447 to float
  %6449 = fsub fast float %6430, %3205
  %6450 = call float @dx.op.dot3.f32(i32 55, float %6233, float %6234, float %6449, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6451 = fcmp fast ogt float %6450, 0.000000e+00
  %6452 = fcmp fast olt float %6450, 0.000000e+00
  %6453 = zext i1 %6451 to i32
  %6454 = zext i1 %6452 to i32
  %6455 = sub nsw i32 %6453, %6454
  %6456 = sitofp i32 %6455 to float
  %6457 = fcmp fast une float %6448, %6456
  br i1 %6457, label %6458, label %6468

; <label>:6458                                    ; preds = %6418
  %6459 = fmul fast float %6441, %6436
  %6460 = fmul fast float %6441, %6435
  %6461 = fmul fast float %6441, %6434
  %6462 = fmul fast float %6461, %6461
  %6463 = fmul fast float %6460, %6460
  %6464 = fadd fast float %6462, %6463
  %6465 = fmul fast float %6459, %6459
  %6466 = fadd fast float %6464, %6465
  %6467 = call float @dx.op.unary.f32(i32 24, float %6466)  ; Sqrt(value)
  br label %6480

; <label>:6468                                    ; preds = %6418
  %6469 = icmp slt i32 %6447, 0
  br i1 %6469, label %6470, label %6480

; <label>:6470                                    ; preds = %6468
  %6471 = fsub fast float %143, %6204
  %6472 = fsub fast float %144, %6205
  %6473 = fsub fast float %145, %6430
  %6474 = fmul fast float %6471, %6471
  %6475 = fmul fast float %6472, %6472
  %6476 = fadd fast float %6474, %6475
  %6477 = fmul fast float %6473, %6473
  %6478 = fadd fast float %6476, %6477
  %6479 = call float @dx.op.unary.f32(i32 24, float %6478)  ; Sqrt(value)
  br label %6480

; <label>:6480                                    ; preds = %6470, %6468, %6458
  %6481 = phi float [ %6467, %6458 ], [ %6479, %6470 ], [ 0.000000e+00, %6468 ]
  %6482 = and i1 %6425, %6423
  %6483 = fsub fast float -0.000000e+00, %6481
  %6484 = select i1 %6482, float -0.000000e+00, float %6483
  %6485 = fmul fast float %3206, 0x3FF7154760000000
  %6486 = fmul fast float %6485, %6484
  %6487 = fmul fast float %3207, 0x3FF7154760000000
  %6488 = fmul fast float %6487, %6484
  %6489 = fmul fast float %3208, 0x3FF7154760000000
  %6490 = fmul fast float %6489, %6484
  %6491 = call float @dx.op.unary.f32(i32 21, float %6486)  ; Exp(value)
  %6492 = call float @dx.op.unary.f32(i32 21, float %6488)  ; Exp(value)
  %6493 = call float @dx.op.unary.f32(i32 21, float %6490)  ; Exp(value)
  %6494 = call float @dx.op.unary.f32(i32 7, float %6491)  ; Saturate(value)
  %6495 = call float @dx.op.unary.f32(i32 7, float %6492)  ; Saturate(value)
  %6496 = call float @dx.op.unary.f32(i32 7, float %6493)  ; Saturate(value)
  %6497 = fmul fast float %6419, %6494
  %6498 = fmul fast float %6420, %6495
  %6499 = fmul fast float %6421, %6496
  %6500 = fsub fast float %6239, %3405
  %6501 = fsub fast float %6240, %3404
  %6502 = fsub fast float %6241, %3403
  %6503 = call float @dx.op.dot3.f32(i32 55, float %6500, float %6501, float %6502, float %6500, float %6501, float %6502)  ; Dot3(ax,ay,az,bx,by,bz)
  %6504 = call float @dx.op.unary.f32(i32 25, float %6503)  ; Rsqrt(value)
  %6505 = fmul fast float %6504, %6500
  %6506 = fmul fast float %6504, %6501
  %6507 = fmul fast float %6504, %6502
  %6508 = call float @dx.op.dot3.f32(i32 55, float %6239, float %6240, float %6241, float %3409, float %3410, float %3411)  ; Dot3(ax,ay,az,bx,by,bz)
  %6509 = call float @dx.op.dot3.f32(i32 55, float %3402, float %3401, float %3400, float %6505, float %6506, float %6507)  ; Dot3(ax,ay,az,bx,by,bz)
  %6510 = call float @dx.op.unary.f32(i32 7, float %6508)  ; Saturate(value)
  %6511 = fmul fast float %6510, %6246
  %6512 = fmul fast float %6510, %6510
  %6513 = fmul fast float %6512, %3433
  %6514 = call float @dx.op.unary.f32(i32 7, float %6513)  ; Saturate(value)
  %6515 = fmul fast float %6511, %6514
  %6516 = bitcast float %6236 to i32
  %6517 = ashr i32 %6516, 1
  %6518 = sub nsw i32 1597463007, %6517
  %6519 = bitcast i32 %6518 to float
  %6520 = fmul fast float %6519, %6233
  %6521 = fmul fast float %6519, %6234
  %6522 = fmul fast float %6519, %6235
  %6523 = fsub fast float %6520, %3405
  %6524 = fsub fast float %6521, %3404
  %6525 = fsub fast float %6522, %3403
  %6526 = call float @dx.op.dot3.f32(i32 55, float %6523, float %6524, float %6525, float %6523, float %6524, float %6525)  ; Dot3(ax,ay,az,bx,by,bz)
  %6527 = call float @dx.op.unary.f32(i32 25, float %6526)  ; Rsqrt(value)
  %6528 = fmul fast float %6523, %6527
  %6529 = fmul fast float %6524, %6527
  %6530 = fmul fast float %6525, %6527
  %6531 = call float @dx.op.dot3.f32(i32 55, float %3409, float %3410, float %3411, float %6528, float %6529, float %6530)  ; Dot3(ax,ay,az,bx,by,bz)
  %6532 = fmul fast float %6531, %6531
  %6533 = call float @dx.op.unary.f32(i32 6, float %6508)  ; FAbs(value)
  %6534 = call float @dx.op.binary.f32(i32 35, float %4849, float 0x3F847AE140000000)  ; FMax(a,b)
  %6535 = fmul fast float %6534, %6534
  %6536 = fmul fast float %6535, %6535
  %6537 = fsub fast float 1.000000e+00, %6536
  %6538 = fmul fast float %3420, %3420
  %6539 = fmul fast float %6538, %6537
  %6540 = fadd fast float %6539, %6536
  %6541 = bitcast float %6540 to i32
  %6542 = ashr i32 %6541, 1
  %6543 = add nsw i32 %6542, 532487669
  %6544 = bitcast i32 %6543 to float
  %6545 = fadd fast float %6544, %3420
  %6546 = fmul fast float %6536, %6532
  %6547 = fsub fast float 1.000000e+00, %6532
  %6548 = fadd fast float %6547, %6546
  %6549 = fmul fast float %6533, %6533
  %6550 = fmul fast float %6549, %6537
  %6551 = fadd fast float %6550, %6536
  %6552 = bitcast float %6551 to i32
  %6553 = ashr i32 %6552, 1
  %6554 = add nsw i32 %6553, 532487669
  %6555 = bitcast i32 %6554 to float
  %6556 = fadd fast float %6555, %6533
  %6557 = fmul fast float %6548, %6548
  %6558 = fmul fast float %6557, %6545
  %6559 = fmul fast float %6558, %6556
  %6560 = fdiv fast float 1.000000e+00, %6559
  %6561 = bitcast float %6536 to i32
  %6562 = sitofp i32 %6561 to float
  %6563 = fmul fast float %6562, 0x3FE7F73180000000
  %6564 = fadd fast float %6563, 0x41AFE27C40000000
  %6565 = fptosi float %6564 to i32
  %6566 = bitcast i32 %6565 to float
  %6567 = fmul fast float %6201, 0x3FD80E9D60000000
  %6568 = fmul fast float %6567, %6519
  %6569 = fadd fast float %6566, %6568
  %6570 = bitcast float %6569 to i32
  %6571 = sub nsw i32 2129859010, %6570
  %6572 = bitcast i32 %6571 to float
  %6573 = fmul fast float %6536, %6560
  %6574 = fmul fast float %6573, %6566
  %6575 = fmul fast float %6574, %6572
  %6576 = fmul fast float %4711, 0x3FF9999980000000
  %6577 = fsub fast float 5.000000e+00, %6576
  %6578 = call float @dx.op.unary.f32(i32 6, float %6509)  ; FAbs(value)
  %6579 = fsub fast float 1.000000e+00, %6578
  %6580 = fmul fast float %4711, 0x41D9660740000000
  %6581 = fadd fast float %6580, 0xC1EFBF8940000000
  %6582 = bitcast float %6579 to i32
  %6583 = sitofp i32 %6582 to float
  %6584 = fmul fast float %6583, %6577
  %6585 = fadd fast float %6581, %6584
  %6586 = fptosi float %6585 to i32
  %6587 = bitcast i32 %6586 to float
  %6588 = fsub fast float 1.000000e+00, %3406
  %6589 = fsub fast float 1.000000e+00, %3407
  %6590 = fsub fast float 1.000000e+00, %3418
  %6591 = fmul fast float %6587, %6588
  %6592 = fmul fast float %6587, %6589
  %6593 = fmul fast float %6587, %6590
  %6594 = fadd fast float %6591, %3406
  %6595 = fadd fast float %6592, %3407
  %6596 = fadd fast float %6593, %3418
  br i1 %4734, label %6597, label %6620

; <label>:6597                                    ; preds = %6480
  %6598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %2751, float %6578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6599 = extractvalue %dx.types.ResRet.f32 %6598, 0
  %6600 = extractvalue %dx.types.ResRet.f32 %6598, 1
  %6601 = extractvalue %dx.types.ResRet.f32 %6598, 2
  %6602 = fadd fast float %6599, -5.000000e-01
  %6603 = fadd fast float %6600, -5.000000e-01
  %6604 = fadd fast float %6601, -5.000000e-01
  %6605 = fmul fast float %3406, 4.000000e+00
  %6606 = fmul fast float %6605, %6588
  %6607 = fmul fast float %6606, %6602
  %6608 = fmul fast float %3407, 4.000000e+00
  %6609 = fmul fast float %6608, %6589
  %6610 = fmul fast float %6609, %6603
  %6611 = fmul fast float %3418, 4.000000e+00
  %6612 = fmul fast float %6611, %6590
  %6613 = fmul fast float %6612, %6604
  %6614 = fadd fast float %6607, %6594
  %6615 = fadd fast float %6610, %6595
  %6616 = fadd fast float %6613, %6596
  %6617 = call float @dx.op.unary.f32(i32 7, float %6614)  ; Saturate(value)
  %6618 = call float @dx.op.unary.f32(i32 7, float %6615)  ; Saturate(value)
  %6619 = call float @dx.op.unary.f32(i32 7, float %6616)  ; Saturate(value)
  br label %6620

; <label>:6620                                    ; preds = %6597, %6480
  %6621 = phi float [ %6617, %6597 ], [ %6594, %6480 ]
  %6622 = phi float [ %6618, %6597 ], [ %6595, %6480 ]
  %6623 = phi float [ %6619, %6597 ], [ %6596, %6480 ]
  %6624 = fmul fast float %6508, 9.843750e-01
  %6625 = fadd fast float %6624, 7.812500e-03
  %6626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %6625, float %4715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6627 = extractvalue %dx.types.ResRet.f32 %6626, 0
  %6628 = extractvalue %dx.types.ResRet.f32 %6626, 1
  %6629 = extractvalue %dx.types.ResRet.f32 %6626, 2
  %6630 = extractvalue %dx.types.ResRet.f32 %6626, 3
  %6631 = fsub fast float %6629, %6627
  %6632 = fsub fast float %6630, %6628
  %6633 = fmul fast float %6631, %4721
  %6634 = fmul fast float %6632, %4721
  %6635 = fadd fast float %6633, %6627
  %6636 = fadd fast float %6634, %6628
  %6637 = fmul fast float %6635, %3406
  %6638 = fmul fast float %6635, %3407
  %6639 = fmul fast float %6635, %3418
  %6640 = fadd fast float %6637, %6636
  %6641 = fadd fast float %6638, %6636
  %6642 = fadd fast float %6639, %6636
  br i1 %4734, label %6643, label %6666

; <label>:6643                                    ; preds = %6620
  %6644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %2751, float %6508, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6645 = extractvalue %dx.types.ResRet.f32 %6644, 0
  %6646 = extractvalue %dx.types.ResRet.f32 %6644, 1
  %6647 = extractvalue %dx.types.ResRet.f32 %6644, 2
  %6648 = fadd fast float %6645, -5.000000e-01
  %6649 = fadd fast float %6646, -5.000000e-01
  %6650 = fadd fast float %6647, -5.000000e-01
  %6651 = fmul fast float %3406, 4.000000e+00
  %6652 = fmul fast float %6651, %6588
  %6653 = fmul fast float %6652, %6648
  %6654 = fmul fast float %3407, 4.000000e+00
  %6655 = fmul fast float %6654, %6589
  %6656 = fmul fast float %6655, %6649
  %6657 = fmul fast float %3418, 4.000000e+00
  %6658 = fmul fast float %6657, %6590
  %6659 = fmul fast float %6658, %6650
  %6660 = fadd fast float %6653, %6640
  %6661 = fadd fast float %6656, %6641
  %6662 = fadd fast float %6659, %6642
  %6663 = call float @dx.op.unary.f32(i32 7, float %6660)  ; Saturate(value)
  %6664 = call float @dx.op.unary.f32(i32 7, float %6661)  ; Saturate(value)
  %6665 = call float @dx.op.unary.f32(i32 7, float %6662)  ; Saturate(value)
  br label %6666

; <label>:6666                                    ; preds = %6643, %6620
  %6667 = phi float [ %6663, %6643 ], [ %6640, %6620 ]
  %6668 = phi float [ %6664, %6643 ], [ %6641, %6620 ]
  %6669 = phi float [ %6665, %6643 ], [ %6642, %6620 ]
  %6670 = call float @dx.op.binary.f32(i32 35, float %6668, float %6669)  ; FMax(a,b)
  %6671 = call float @dx.op.binary.f32(i32 35, float %6667, float %6670)  ; FMax(a,b)
  %6672 = fsub fast float 1.000000e+00, %6671
  %6673 = call float @dx.op.binary.f32(i32 35, float %6533, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6674 = fdiv fast float %2157, %6673
  %6675 = fmul fast float %4789, %6674
  %6676 = fmul fast float %4791, %6674
  %6677 = fmul fast float %4793, %6674
  %6678 = call float @dx.op.unary.f32(i32 21, float %6675)  ; Exp(value)
  %6679 = call float @dx.op.unary.f32(i32 21, float %6676)  ; Exp(value)
  %6680 = call float @dx.op.unary.f32(i32 21, float %6677)  ; Exp(value)
  %6681 = call float @dx.op.unary.f32(i32 7, float %6678)  ; Saturate(value)
  %6682 = call float @dx.op.unary.f32(i32 7, float %6679)  ; Saturate(value)
  %6683 = call float @dx.op.unary.f32(i32 7, float %6680)  ; Saturate(value)
  %6684 = select i1 %4786, float %6681, float 0.000000e+00
  %6685 = select i1 %4787, float %6682, float 0.000000e+00
  %6686 = select i1 %4788, float %6683, float 0.000000e+00
  %6687 = fsub fast float -0.000000e+00, %3409
  %6688 = fsub fast float -0.000000e+00, %3410
  %6689 = fsub fast float -0.000000e+00, %3411
  %6690 = call float @dx.op.dot3.f32(i32 55, float %6239, float %6240, float %6241, float %6687, float %6688, float %6689)  ; Dot3(ax,ay,az,bx,by,bz)
  %6691 = call float @dx.op.unary.f32(i32 7, float %6690)  ; Saturate(value)
  %6692 = fmul fast float %6691, %6246
  %6693 = fmul fast float %6691, 9.843750e-01
  %6694 = fadd fast float %6693, 7.812500e-03
  %6695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %6694, float %4715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6696 = extractvalue %dx.types.ResRet.f32 %6695, 0
  %6697 = extractvalue %dx.types.ResRet.f32 %6695, 1
  %6698 = extractvalue %dx.types.ResRet.f32 %6695, 2
  %6699 = extractvalue %dx.types.ResRet.f32 %6695, 3
  %6700 = fsub fast float %6698, %6696
  %6701 = fsub fast float %6699, %6697
  %6702 = fmul fast float %6700, %4721
  %6703 = fmul fast float %6701, %4721
  %6704 = fadd fast float %6702, %6696
  %6705 = fadd fast float %6703, %6697
  %6706 = fmul fast float %6704, %3406
  %6707 = fmul fast float %6704, %3407
  %6708 = fmul fast float %6704, %3418
  %6709 = fadd fast float %6706, %6705
  %6710 = fadd fast float %6707, %6705
  %6711 = fadd fast float %6708, %6705
  br i1 %4734, label %6712, label %6735

; <label>:6712                                    ; preds = %6666
  %6713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %2751, float %6691, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6714 = extractvalue %dx.types.ResRet.f32 %6713, 0
  %6715 = extractvalue %dx.types.ResRet.f32 %6713, 1
  %6716 = extractvalue %dx.types.ResRet.f32 %6713, 2
  %6717 = fadd fast float %6714, -5.000000e-01
  %6718 = fadd fast float %6715, -5.000000e-01
  %6719 = fadd fast float %6716, -5.000000e-01
  %6720 = fmul fast float %3406, 4.000000e+00
  %6721 = fmul fast float %6720, %6588
  %6722 = fmul fast float %6721, %6717
  %6723 = fmul fast float %3407, 4.000000e+00
  %6724 = fmul fast float %6723, %6589
  %6725 = fmul fast float %6724, %6718
  %6726 = fmul fast float %3418, 4.000000e+00
  %6727 = fmul fast float %6726, %6590
  %6728 = fmul fast float %6727, %6719
  %6729 = fadd fast float %6722, %6709
  %6730 = fadd fast float %6725, %6710
  %6731 = fadd fast float %6728, %6711
  %6732 = call float @dx.op.unary.f32(i32 7, float %6729)  ; Saturate(value)
  %6733 = call float @dx.op.unary.f32(i32 7, float %6730)  ; Saturate(value)
  %6734 = call float @dx.op.unary.f32(i32 7, float %6731)  ; Saturate(value)
  br label %6735

; <label>:6735                                    ; preds = %6712, %6666
  %6736 = phi float [ %6732, %6712 ], [ %6709, %6666 ]
  %6737 = phi float [ %6733, %6712 ], [ %6710, %6666 ]
  %6738 = phi float [ %6734, %6712 ], [ %6711, %6666 ]
  %6739 = call float @dx.op.binary.f32(i32 35, float %6737, float %6738)  ; FMax(a,b)
  %6740 = call float @dx.op.binary.f32(i32 35, float %6736, float %6739)  ; FMax(a,b)
  %6741 = fsub fast float 1.000000e+00, %6740
  %6742 = fmul fast float %4849, %4854
  %6743 = fadd fast float %4856, %6742
  %6744 = call float @dx.op.unary.f32(i32 7, float %6743)  ; Saturate(value)
  %6745 = fsub fast float %6520, %3426
  %6746 = fsub fast float %6521, %3427
  %6747 = fsub fast float %6522, %3428
  %6748 = call float @dx.op.dot3.f32(i32 55, float %6745, float %6746, float %6747, float %6745, float %6746, float %6747)  ; Dot3(ax,ay,az,bx,by,bz)
  %6749 = call float @dx.op.unary.f32(i32 25, float %6748)  ; Rsqrt(value)
  %6750 = fmul fast float %6745, %6749
  %6751 = fmul fast float %6746, %6749
  %6752 = fmul fast float %6747, %6749
  %6753 = call float @dx.op.dot3.f32(i32 55, float %6687, float %6688, float %6689, float %6750, float %6751, float %6752)  ; Dot3(ax,ay,az,bx,by,bz)
  %6754 = fmul fast float %6753, %6753
  %6755 = call float @dx.op.unary.f32(i32 6, float %6691)  ; FAbs(value)
  %6756 = call float @dx.op.binary.f32(i32 35, float %6744, float 0x3F847AE140000000)  ; FMax(a,b)
  %6757 = fmul fast float %6756, %6756
  %6758 = fmul fast float %6757, %6757
  %6759 = fsub fast float 1.000000e+00, %6758
  %6760 = fmul fast float %6538, %6759
  %6761 = fadd fast float %6760, %6758
  %6762 = bitcast float %6761 to i32
  %6763 = ashr i32 %6762, 1
  %6764 = add nsw i32 %6763, 532487669
  %6765 = bitcast i32 %6764 to float
  %6766 = fadd fast float %6765, %3420
  %6767 = fmul fast float %6758, %6754
  %6768 = fsub fast float 1.000000e+00, %6754
  %6769 = fadd fast float %6768, %6767
  %6770 = fmul fast float %6755, %6755
  %6771 = fmul fast float %6770, %6759
  %6772 = fadd fast float %6771, %6758
  %6773 = bitcast float %6772 to i32
  %6774 = ashr i32 %6773, 1
  %6775 = add nsw i32 %6774, 532487669
  %6776 = bitcast i32 %6775 to float
  %6777 = fadd fast float %6776, %6755
  %6778 = fmul fast float %6769, %6769
  %6779 = fmul fast float %6778, %6766
  %6780 = fmul fast float %6779, %6777
  %6781 = fdiv fast float 1.000000e+00, %6780
  %6782 = bitcast float %6758 to i32
  %6783 = sitofp i32 %6782 to float
  %6784 = fmul fast float %6783, 0x3FE7F73180000000
  %6785 = fadd fast float %6784, 0x41AFE27C40000000
  %6786 = fptosi float %6785 to i32
  %6787 = bitcast i32 %6786 to float
  %6788 = fadd fast float %6787, %6568
  %6789 = bitcast float %6788 to i32
  %6790 = sub nsw i32 2129859010, %6789
  %6791 = bitcast i32 %6790 to float
  %6792 = fmul fast float %6758, %6781
  %6793 = fmul fast float %6792, %6787
  %6794 = fmul fast float %6793, %6791
  br i1 %6231, label %6795, label %6805

; <label>:6795                                    ; preds = %6735
  %6796 = fmul fast float %6692, %6684
  %6797 = fmul fast float %6692, %6685
  %6798 = fmul fast float %6692, %6686
  %6799 = fmul fast float %6796, %6741
  %6800 = fmul fast float %6799, %6794
  %6801 = fmul fast float %6797, %6741
  %6802 = fmul fast float %6801, %6794
  %6803 = fmul fast float %6798, %6741
  %6804 = fmul fast float %6803, %6794
  br label %6805

; <label>:6805                                    ; preds = %6795, %6735
  %6806 = phi float [ %6800, %6795 ], [ 0.000000e+00, %6735 ]
  %6807 = phi float [ %6802, %6795 ], [ 0.000000e+00, %6735 ]
  %6808 = phi float [ %6804, %6795 ], [ 0.000000e+00, %6735 ]
  %6809 = fmul fast float %6621, %6575
  %6810 = fmul fast float %6622, %6575
  %6811 = fmul fast float %6623, %6575
  %6812 = fsub fast float 1.000000e+00, %6509
  %6813 = bitcast float %6812 to i32
  %6814 = sitofp i32 %6813 to float
  %6815 = fmul fast float %6814, 5.000000e+00
  %6816 = fadd fast float %6815, 0xC1EFBF8940000000
  %6817 = fptosi float %6816 to i32
  %6818 = bitcast i32 %6817 to float
  %6819 = fmul fast float %6818, %2750
  %6820 = fmul fast float %6672, %6819
  %6821 = fmul fast float %6820, %4781
  %6822 = fmul fast float %6820, %4782
  %6823 = fmul fast float %6820, %4783
  %6824 = fadd fast float %6821, %6809
  %6825 = fadd fast float %6822, %6810
  %6826 = fadd fast float %6823, %6811
  %6827 = fmul fast float %6824, %6515
  %6828 = fmul fast float %6825, %6515
  %6829 = fmul fast float %6826, %6515
  %6830 = fadd fast float %6827, %6806
  %6831 = fadd fast float %6828, %6807
  %6832 = fadd fast float %6829, %6808
  %6833 = fmul fast float %6497, %2774
  %6834 = fmul fast float %6833, %6515
  %6835 = fmul fast float %6834, %6672
  %6836 = fmul fast float %6498, %2774
  %6837 = fmul fast float %6836, %6515
  %6838 = fmul fast float %6837, %6672
  %6839 = fmul fast float %6499, %2774
  %6840 = fmul fast float %6839, %6515
  %6841 = fmul fast float %6840, %6672
  %6842 = fadd fast float %6835, %6175
  %6843 = fadd fast float %6838, %6176
  %6844 = fadd fast float %6841, %6177
  %6845 = fmul fast float %6833, %6830
  %6846 = fmul fast float %6836, %6831
  %6847 = fmul fast float %6839, %6832
  %6848 = fadd fast float %6845, %6172
  %6849 = fadd fast float %6846, %6173
  %6850 = fadd fast float %6847, %6174
  br label %6305

; <label>:6851                                    ; preds = %6305
  br label %6852

; <label>:6852                                    ; preds = %6851, %6138
  %6853 = phi float [ %6140, %6138 ], [ %6306, %6851 ]
  %6854 = phi float [ %6141, %6138 ], [ %6307, %6851 ]
  %6855 = phi float [ %6142, %6138 ], [ %6308, %6851 ]
  %6856 = phi float [ %6143, %6138 ], [ %6309, %6851 ]
  %6857 = phi float [ %6144, %6138 ], [ %6310, %6851 ]
  %6858 = phi float [ %6145, %6138 ], [ %6311, %6851 ]
  %6859 = add i32 %6139, 1
  %6860 = icmp ugt i32 %6859, %6135
  br i1 %6860, label %6861, label %6138

; <label>:6861                                    ; preds = %6852
  br label %6862

; <label>:6862                                    ; preds = %6861, %6088, %6078
  %6863 = phi float [ %6079, %6078 ], [ %6079, %6088 ], [ %6853, %6861 ]
  %6864 = phi float [ %6080, %6078 ], [ %6080, %6088 ], [ %6854, %6861 ]
  %6865 = phi float [ %6081, %6078 ], [ %6081, %6088 ], [ %6855, %6861 ]
  %6866 = phi float [ %6082, %6078 ], [ %6082, %6088 ], [ %6856, %6861 ]
  %6867 = phi float [ %6083, %6078 ], [ %6083, %6088 ], [ %6857, %6861 ]
  %6868 = phi float [ %6084, %6078 ], [ %6084, %6088 ], [ %6858, %6861 ]
  %6869 = fmul fast float %2774, %4810
  %6870 = fsub fast float -0.000000e+00, %6869
  %6871 = fmul fast float %2774, %4811
  %6872 = fsub fast float -0.000000e+00, %6871
  %6873 = fmul fast float %2774, %4812
  %6874 = fsub fast float -0.000000e+00, %6873
  %6875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6876 = extractvalue %dx.types.CBufRet.f32 %6875, 0
  %6877 = fmul fast float %6876, %4816
  %6878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6879 = extractvalue %dx.types.CBufRet.f32 %6878, 3
  %6880 = fsub fast float 1.000000e+00, %2746
  %6881 = call float @dx.op.unary.f32(i32 7, float %6880)  ; Saturate(value)
  %6882 = fadd fast float %6868, %2745
  %6883 = fmul fast float %6882, %2746
  %6884 = fmul fast float %6881, %6879
  %6885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6886 = extractvalue %dx.types.CBufRet.f32 %6885, 3
  %6887 = fmul fast float %6866, %3412
  %6888 = fmul fast float %6867, %3413
  %6889 = fmul fast float %6868, %3414
  %6890 = fcmp fast ogt float %87, %194
  %6891 = and i1 %6890, %3211
  %6892 = or i1 %3217, %6891
  %6893 = icmp eq i32 %3210, 2
  %6894 = fcmp fast ole float %87, %194
  %6895 = and i1 %6894, %6893
  %6896 = or i1 %6895, %6892
  br i1 %6891, label %6897, label %7156

; <label>:6897                                    ; preds = %6862
  %6898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6899 = extractvalue %dx.types.CBufRet.f32 %6898, 2
  %6900 = extractvalue %dx.types.CBufRet.f32 %6898, 3
  %6901 = fmul fast float %6899, %96
  %6902 = fmul fast float %6900, %97
  %6903 = call float @dx.op.unary.f32(i32 7, float %6901)  ; Saturate(value)
  %6904 = call float @dx.op.unary.f32(i32 7, float %6902)  ; Saturate(value)
  %6905 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6903, float %6904, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6906 = extractvalue %dx.types.ResRet.f32 %6905, 0
  %6907 = extractvalue %dx.types.ResRet.f32 %6905, 1
  %6908 = extractvalue %dx.types.ResRet.f32 %6905, 2
  %6909 = extractvalue %dx.types.ResRet.f32 %6905, 3
  %6910 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6903, float %6904, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6911 = extractvalue %dx.types.ResRet.f32 %6910, 0
  %6912 = extractvalue %dx.types.ResRet.f32 %6910, 1
  %6913 = extractvalue %dx.types.ResRet.f32 %6910, 2
  %6914 = extractvalue %dx.types.ResRet.f32 %6910, 3
  %6915 = call float @dx.op.binary.f32(i32 35, float %6907, float %6908)  ; FMax(a,b)
  %6916 = call float @dx.op.binary.f32(i32 35, float %6906, float %6915)  ; FMax(a,b)
  %6917 = call float @dx.op.binary.f32(i32 35, float %6916, float %6909)  ; FMax(a,b)
  %6918 = call float @dx.op.binary.f32(i32 36, float %6912, float %6913)  ; FMin(a,b)
  %6919 = call float @dx.op.binary.f32(i32 36, float %6911, float %6918)  ; FMin(a,b)
  %6920 = call float @dx.op.binary.f32(i32 36, float %6919, float %6914)  ; FMin(a,b)
  %6921 = fmul fast float %6917, 2.550000e+02
  %6922 = fadd fast float %6921, 0x3F70101020000000
  %6923 = fptoui float %6922 to i32
  %6924 = fmul fast float %6920, 2.550000e+02
  %6925 = fadd fast float %6924, 0x3F70101020000000
  %6926 = fptoui float %6925 to i32
  %6927 = icmp ult i32 %6923, %6926
  br i1 %6927, label %6928, label %7096

; <label>:6928                                    ; preds = %6897
  %6929 = fcmp fast ogt float %86, 9.843750e-01
  %6930 = fadd fast float %87, -4.000000e+00
  %6931 = select i1 %6929, float -4.000000e+00, float %6930
  %6932 = call float @dx.op.binary.f32(i32 35, float %6931, float 0.000000e+00)  ; FMax(a,b)
  %6933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6934 = extractvalue %dx.types.CBufRet.f32 %6933, 0
  %6935 = fadd fast float %6934, %6932
  %6936 = extractvalue %dx.types.CBufRet.f32 %6933, 2
  %6937 = fmul fast float %6935, %6936
  %6938 = call float @dx.op.unary.f32(i32 23, float %6937)  ; Log(value)
  %6939 = extractvalue %dx.types.CBufRet.f32 %6933, 3
  %6940 = fmul fast float %6939, %6938
  %6941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6942 = extractvalue %dx.types.CBufRet.f32 %6941, 2
  %6943 = fmul fast float %6940, %6942
  %6944 = call float @dx.op.unary.f32(i32 7, float %6943)  ; Saturate(value)
  %6945 = uitofp i32 %6923 to float
  %6946 = uitofp i32 %6926 to float
  %6947 = fadd fast float %6945, 5.000000e-01
  %6948 = fadd fast float %6946, 5.000000e-01
  %6949 = fmul fast float %6942, %6947
  %6950 = fmul fast float %6942, %6948
  %6951 = fadd fast float %6949, 0x3F0FFB4800000000
  %6952 = fadd fast float %6950, 0xBF0FFB4800000000
  %6953 = call float @dx.op.binary.f32(i32 35, float %6944, float %6951)  ; FMax(a,b)
  %6954 = call float @dx.op.binary.f32(i32 36, float %6953, float %6952)  ; FMin(a,b)
  %6955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6956 = extractvalue %dx.types.CBufRet.f32 %6955, 1
  %6957 = extractvalue %dx.types.CBufRet.f32 %6955, 2
  %6958 = extractvalue %dx.types.CBufRet.f32 %6955, 0
  %6959 = fmul fast float %6956, %6954
  %6960 = fadd fast float %6958, %6959
  %6961 = fadd fast float %6958, %6957
  %6962 = fsub fast float %6956, %6957
  %6963 = fadd fast float %6962, %6958
  %6964 = call float @dx.op.binary.f32(i32 35, float %6960, float %6961)  ; FMax(a,b)
  %6965 = call float @dx.op.binary.f32(i32 36, float %6964, float %6963)  ; FMin(a,b)
  %6966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %6903, float %6904, float %6965, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6967 = extractvalue %dx.types.ResRet.f32 %6966, 0
  %6968 = extractvalue %dx.types.ResRet.f32 %6966, 1
  %6969 = extractvalue %dx.types.ResRet.f32 %6966, 2
  %6970 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6971 = extractvalue %dx.types.CBufRet.i32 %6970, 0
  %6972 = extractvalue %dx.types.CBufRet.i32 %6970, 1
  %6973 = uitofp i32 %6971 to float
  %6974 = uitofp i32 %6972 to float
  %6975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6976 = extractvalue %dx.types.CBufRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.CBufRet.f32 %6975, 1
  %6978 = fmul fast float %6973, %6903
  %6979 = fmul fast float %6974, %6904
  %6980 = fadd fast float %6978, -5.000000e-01
  %6981 = fadd fast float %6979, -5.000000e-01
  %6982 = call float @dx.op.unary.f32(i32 22, float %6980)  ; Frc(value)
  %6983 = call float @dx.op.unary.f32(i32 22, float %6981)  ; Frc(value)
  %6984 = fmul fast float %6982, %6982
  %6985 = fmul fast float %6984, %6982
  %6986 = fsub fast float 3.000000e+00, %6982
  %6987 = fmul fast float %6984, %6986
  %6988 = fmul fast float %6982, 3.000000e+00
  %6989 = fmul fast float %6985, 3.000000e+00
  %6990 = fmul fast float %6984, 6.000000e+00
  %6991 = fsub fast float %6989, %6990
  %6992 = fadd fast float %6991, 4.000000e+00
  %6993 = fmul fast float %6992, 0x3FC5555560000000
  %6994 = fmul fast float %6985, -3.000000e+00
  %6995 = fadd fast float %6984, %6982
  %6996 = fmul fast float %6995, 3.000000e+00
  %6997 = fadd fast float %6994, 1.000000e+00
  %6998 = fadd fast float %6997, %6996
  %6999 = fmul fast float %6985, 0x3FC5555560000000
  %7000 = fmul fast float %6983, %6983
  %7001 = fmul fast float %7000, %6983
  %7002 = fsub fast float 3.000000e+00, %6983
  %7003 = fmul fast float %7000, %7002
  %7004 = fmul fast float %6983, 3.000000e+00
  %7005 = fmul fast float %7001, 3.000000e+00
  %7006 = fmul fast float %7000, 6.000000e+00
  %7007 = fsub fast float %7005, %7006
  %7008 = fadd fast float %7007, 4.000000e+00
  %7009 = fmul fast float %7008, 0x3FC5555560000000
  %7010 = fmul fast float %7001, -3.000000e+00
  %7011 = fadd fast float %7000, %6983
  %7012 = fmul fast float %7011, 3.000000e+00
  %7013 = fadd fast float %7010, 1.000000e+00
  %7014 = fadd fast float %7013, %7012
  %7015 = fmul fast float %7001, 0x3FC5555560000000
  %7016 = fadd fast float %6982, 1.000000e+00
  %7017 = fsub fast float 1.000000e+00, %6988
  %7018 = fadd fast float %7017, %6987
  %7019 = fadd fast float %7018, %6992
  %7020 = fmul fast float %7019, 0x3FC5555560000000
  %7021 = fdiv fast float %6993, %7020
  %7022 = fsub fast float %7016, %7021
  %7023 = fsub fast float 1.000000e+00, %6982
  %7024 = fadd fast float %6998, %6985
  %7025 = fmul fast float %7024, 0x3FC5555560000000
  %7026 = fdiv fast float %6999, %7025
  %7027 = fadd fast float %7023, %7026
  %7028 = fadd fast float %6983, 1.000000e+00
  %7029 = fsub fast float 1.000000e+00, %7004
  %7030 = fadd fast float %7029, %7003
  %7031 = fadd fast float %7030, %7008
  %7032 = fmul fast float %7031, 0x3FC5555560000000
  %7033 = fdiv fast float %7009, %7032
  %7034 = fsub fast float %7028, %7033
  %7035 = fsub fast float 1.000000e+00, %6983
  %7036 = fadd fast float %7014, %7001
  %7037 = fmul fast float %7036, 0x3FC5555560000000
  %7038 = fdiv fast float %7015, %7037
  %7039 = fadd fast float %7038, %7035
  %7040 = fmul fast float %7022, %6976
  %7041 = fsub fast float %6903, %7040
  %7042 = fmul fast float %7027, %6976
  %7043 = fadd fast float %7042, %6903
  %7044 = fmul fast float %7039, %6977
  %7045 = fadd fast float %7044, %6904
  %7046 = fmul fast float %7034, %6977
  %7047 = fsub fast float %6904, %7046
  %7048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7041, float %7047, float %6965, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7049 = extractvalue %dx.types.ResRet.f32 %7048, 0
  %7050 = extractvalue %dx.types.ResRet.f32 %7048, 1
  %7051 = extractvalue %dx.types.ResRet.f32 %7048, 2
  %7052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7043, float %7047, float %6965, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7053 = extractvalue %dx.types.ResRet.f32 %7052, 0
  %7054 = extractvalue %dx.types.ResRet.f32 %7052, 1
  %7055 = extractvalue %dx.types.ResRet.f32 %7052, 2
  %7056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7041, float %7045, float %6965, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7057 = extractvalue %dx.types.ResRet.f32 %7056, 0
  %7058 = extractvalue %dx.types.ResRet.f32 %7056, 1
  %7059 = extractvalue %dx.types.ResRet.f32 %7056, 2
  %7060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7043, float %7045, float %6965, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7061 = extractvalue %dx.types.ResRet.f32 %7060, 0
  %7062 = extractvalue %dx.types.ResRet.f32 %7060, 1
  %7063 = extractvalue %dx.types.ResRet.f32 %7060, 2
  %7064 = fsub fast float %7057, %7049
  %7065 = fsub fast float %7058, %7050
  %7066 = fsub fast float %7059, %7051
  %7067 = fmul fast float %7064, %7037
  %7068 = fmul fast float %7065, %7037
  %7069 = fmul fast float %7066, %7037
  %7070 = fadd fast float %7067, %7049
  %7071 = fadd fast float %7068, %7050
  %7072 = fadd fast float %7069, %7051
  %7073 = fsub fast float %7061, %7053
  %7074 = fsub fast float %7062, %7054
  %7075 = fsub fast float %7063, %7055
  %7076 = fmul fast float %7073, %7037
  %7077 = fmul fast float %7074, %7037
  %7078 = fmul fast float %7075, %7037
  %7079 = fsub fast float %7053, %7070
  %7080 = fadd fast float %7079, %7076
  %7081 = fsub fast float %7054, %7071
  %7082 = fadd fast float %7081, %7077
  %7083 = fsub fast float %7055, %7072
  %7084 = fadd fast float %7083, %7078
  %7085 = fmul fast float %7080, %7025
  %7086 = fmul fast float %7082, %7025
  %7087 = fmul fast float %7084, %7025
  %7088 = fadd fast float %7085, %7070
  %7089 = fadd fast float %7086, %7071
  %7090 = fadd fast float %7087, %7072
  %7091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7092 = extractvalue %dx.types.CBufRet.f32 %7091, 1
  %7093 = fmul fast float %7088, %7092
  %7094 = fmul fast float %7089, %7092
  %7095 = fmul fast float %7090, %7092
  br label %7096

; <label>:7096                                    ; preds = %6928, %6897
  %7097 = phi float [ %6967, %6928 ], [ 1.000000e+00, %6897 ]
  %7098 = phi float [ %6968, %6928 ], [ 1.000000e+00, %6897 ]
  %7099 = phi float [ %6969, %6928 ], [ 1.000000e+00, %6897 ]
  %7100 = phi float [ %7093, %6928 ], [ 0.000000e+00, %6897 ]
  %7101 = phi float [ %7094, %6928 ], [ 0.000000e+00, %6897 ]
  %7102 = phi float [ %7095, %6928 ], [ 0.000000e+00, %6897 ]
  %7103 = fmul fast float %7100, %6870
  %7104 = fmul fast float %7101, %6872
  %7105 = fmul fast float %7102, %6874
  %7106 = call float @dx.op.dot3.f32(i32 55, float %7097, float %7098, float %7099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7107 = call float @dx.op.dot3.f32(i32 55, float %7103, float %7104, float %7105, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7108 = select i1 %234, float %7106, float %7097
  %7109 = select i1 %234, float %7106, float %7098
  %7110 = select i1 %234, float 1.000000e+00, float %7099
  %7111 = select i1 %234, float %7107, float %7103
  %7112 = select i1 %234, float 0.000000e+00, float %7104
  %7113 = select i1 %234, float 0.000000e+00, float %7105
  %7114 = fmul fast float %7108, %6887
  %7115 = fmul fast float %7109, %6888
  %7116 = fmul fast float %7110, %6889
  %7117 = fadd fast float %7114, %7111
  %7118 = fadd fast float %7115, %7112
  %7119 = fadd fast float %7113, %7116
  %7120 = fmul fast float %7108, %6863
  %7121 = fmul fast float %7109, %6864
  %7122 = fmul fast float %7110, %6865
  %7123 = fmul fast float %96, 2.000000e+00
  %7124 = fmul fast float %7123, %6899
  %7125 = fmul fast float %97, 2.000000e+00
  %7126 = fmul fast float %7125, %6900
  %7127 = fsub fast float 1.000000e+00, %7124
  %7128 = fsub fast float 1.000000e+00, %7126
  %7129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7130 = extractvalue %dx.types.CBufRet.f32 %7129, 0
  %7131 = extractvalue %dx.types.CBufRet.f32 %7129, 1
  %7132 = extractvalue %dx.types.CBufRet.f32 %7129, 2
  %7133 = fmul fast float %7127, %7130
  %7134 = fmul fast float %7127, %7131
  %7135 = fmul fast float %7127, %7132
  %7136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7137 = extractvalue %dx.types.CBufRet.f32 %7136, 0
  %7138 = extractvalue %dx.types.CBufRet.f32 %7136, 1
  %7139 = extractvalue %dx.types.CBufRet.f32 %7136, 2
  %7140 = fmul fast float %7128, %7137
  %7141 = fmul fast float %7128, %7138
  %7142 = fmul fast float %7128, %7139
  %7143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7144 = extractvalue %dx.types.CBufRet.f32 %7143, 0
  %7145 = extractvalue %dx.types.CBufRet.f32 %7143, 1
  %7146 = extractvalue %dx.types.CBufRet.f32 %7143, 2
  %7147 = fadd fast float %7140, %7144
  %7148 = fadd fast float %7147, %7133
  %7149 = fadd fast float %7141, %7145
  %7150 = fadd fast float %7149, %7134
  %7151 = fadd fast float %7142, %7146
  %7152 = fadd fast float %7151, %7135
  %7153 = fmul fast float %7148, %194
  %7154 = fmul fast float %7150, %194
  %7155 = fmul fast float %7152, %194
  br label %7156

; <label>:7156                                    ; preds = %7096, %6862
  %7157 = phi float [ %7153, %7096 ], [ %143, %6862 ]
  %7158 = phi float [ %7154, %7096 ], [ %144, %6862 ]
  %7159 = phi float [ %7155, %7096 ], [ %145, %6862 ]
  %7160 = phi float [ %194, %7096 ], [ %87, %6862 ]
  %7161 = phi float [ %7117, %7096 ], [ %6887, %6862 ]
  %7162 = phi float [ %7118, %7096 ], [ %6888, %6862 ]
  %7163 = phi float [ %7119, %7096 ], [ %6889, %6862 ]
  %7164 = phi float [ %7120, %7096 ], [ %6863, %6862 ]
  %7165 = phi float [ %7121, %7096 ], [ %6864, %6862 ]
  %7166 = phi float [ %7122, %7096 ], [ %6865, %6862 ]
  %7167 = phi float [ %7097, %7096 ], [ 1.000000e+00, %6862 ]
  br i1 %6896, label %8322, label %7168

; <label>:7168                                    ; preds = %7156
  %7169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7170 = extractvalue %dx.types.CBufRet.f32 %7169, 0
  %7171 = extractvalue %dx.types.CBufRet.f32 %7169, 1
  %7172 = extractvalue %dx.types.CBufRet.f32 %7169, 2
  %7173 = extractvalue %dx.types.CBufRet.f32 %7169, 3
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 0
  %7176 = extractvalue %dx.types.CBufRet.f32 %7174, 1
  %7177 = extractvalue %dx.types.CBufRet.f32 %7174, 2
  %7178 = extractvalue %dx.types.CBufRet.f32 %7174, 3
  %7179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7180 = extractvalue %dx.types.CBufRet.f32 %7179, 0
  %7181 = extractvalue %dx.types.CBufRet.f32 %7179, 1
  %7182 = extractvalue %dx.types.CBufRet.f32 %7179, 2
  %7183 = extractvalue %dx.types.CBufRet.f32 %7179, 3
  %7184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7185 = extractvalue %dx.types.CBufRet.f32 %7184, 0
  %7186 = extractvalue %dx.types.CBufRet.f32 %7184, 1
  %7187 = extractvalue %dx.types.CBufRet.f32 %7184, 2
  %7188 = extractvalue %dx.types.CBufRet.f32 %7184, 3
  %7189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7190 = extractvalue %dx.types.CBufRet.f32 %7189, 3
  %7191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7192 = extractvalue %dx.types.CBufRet.f32 %7191, 3
  %7193 = extractvalue %dx.types.CBufRet.f32 %7191, 0
  %7194 = extractvalue %dx.types.CBufRet.f32 %7191, 1
  %7195 = extractvalue %dx.types.CBufRet.f32 %7191, 2
  %7196 = fcmp fast olt float %7195, -5.000000e-01
  %7197 = call float @dx.op.dot3.f32(i32 55, float %7157, float %7158, float %7159, float %7157, float %7158, float %7159)  ; Dot3(ax,ay,az,bx,by,bz)
  %7198 = call float @dx.op.unary.f32(i32 25, float %7197)  ; Rsqrt(value)
  %7199 = fmul fast float %7198, %7197
  %7200 = fmul fast float %7198, %7157
  %7201 = fmul fast float %7198, %7158
  %7202 = fmul fast float %7198, %7159
  %7203 = fadd fast float %7199, %7173
  %7204 = call float @dx.op.dot3.f32(i32 55, float %7200, float %7201, float %7202, float %7170, float %7171, float %7172)  ; Dot3(ax,ay,az,bx,by,bz)
  %7205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7206 = extractvalue %dx.types.CBufRet.i32 %7205, 1
  %7207 = and i32 %7206, 1
  %7208 = icmp ne i32 %7207, 0
  %7209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7210 = extractvalue %dx.types.CBufRet.f32 %7209, 2
  %7211 = fcmp fast ogt float %7210, 0.000000e+00
  %7212 = and i1 %7208, %7211
  br i1 %7212, label %7213, label %7619, !dx.controlflow.hints !135

; <label>:7213                                    ; preds = %7168
  %7214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7215 = extractvalue %dx.types.CBufRet.f32 %7214, 3
  %7216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7217 = extractvalue %dx.types.CBufRet.f32 %7216, 2
  %7218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7219 = extractvalue %dx.types.CBufRet.f32 %7218, 2
  %7220 = fsub fast float %7217, %7219
  %7221 = and i32 %7206, 2
  %7222 = extractvalue %dx.types.CBufRet.i32 %7205, 0
  %7223 = call i32 @dx.op.binary.i32(i32 40, i32 %7222, i32 3)  ; UMin(a,b)
  %7224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7225 = extractvalue %dx.types.CBufRet.f32 %7224, 0
  %7226 = extractvalue %dx.types.CBufRet.f32 %7224, 1
  %7227 = extractvalue %dx.types.CBufRet.f32 %7218, 0
  %7228 = extractvalue %dx.types.CBufRet.f32 %7218, 1
  %7229 = fsub fast float %7225, %7227
  %7230 = fsub fast float %7226, %7228
  %7231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7232 = extractvalue %dx.types.CBufRet.f32 %7231, 0
  %7233 = fcmp fast ogt float %7232, 0.000000e+00
  %7234 = fsub fast float -0.000000e+00, %7229
  %7235 = fsub fast float -0.000000e+00, %7230
  %7236 = call float @dx.op.dot2.f32(i32 54, float %7200, float %7201, float %7200, float %7201)  ; Dot2(ax,ay,bx,by)
  %7237 = call float @dx.op.dot2.f32(i32 54, float %7200, float %7201, float %7234, float %7235)  ; Dot2(ax,ay,bx,by)
  %7238 = fmul fast float %7237, 2.000000e+00
  %7239 = call float @dx.op.dot2.f32(i32 54, float %7234, float %7235, float %7234, float %7235)  ; Dot2(ax,ay,bx,by)
  %7240 = fmul fast float %7232, %7232
  %7241 = fsub fast float %7239, %7240
  %7242 = fmul fast float %7238, %7238
  %7243 = fmul fast float %7236, 4.000000e+00
  %7244 = fmul fast float %7243, %7241
  %7245 = fsub fast float %7242, %7244
  %7246 = fcmp fast ogt float %7245, 0.000000e+00
  br i1 %7246, label %7247, label %7262

; <label>:7247                                    ; preds = %7213
  %7248 = fcmp fast ogt float %7238, 0.000000e+00
  %7249 = call float @dx.op.unary.f32(i32 24, float %7245)  ; Sqrt(value)
  %7250 = fsub fast float -0.000000e+00, %7249
  %7251 = select i1 %7248, float %7249, float %7250
  %7252 = fadd fast float %7251, %7238
  %7253 = fmul float %7252, -5.000000e-01
  %7254 = fdiv fast float %7253, %7236
  %7255 = call float @dx.op.binary.f32(i32 35, float %7254, float 0.000000e+00)  ; FMax(a,b)
  %7256 = call float @dx.op.binary.f32(i32 36, float %7199, float %7255)  ; FMin(a,b)
  %7257 = fdiv fast float %7241, %7253
  %7258 = call float @dx.op.binary.f32(i32 35, float %7257, float 0.000000e+00)  ; FMax(a,b)
  %7259 = call float @dx.op.binary.f32(i32 36, float %7199, float %7258)  ; FMin(a,b)
  %7260 = call float @dx.op.binary.f32(i32 36, float %7256, float %7259)  ; FMin(a,b)
  %7261 = call float @dx.op.binary.f32(i32 35, float %7256, float %7259)  ; FMax(a,b)
  br label %7262

; <label>:7262                                    ; preds = %7247, %7213
  %7263 = phi float [ %7261, %7247 ], [ -1.000000e+00, %7213 ]
  %7264 = phi float [ %7260, %7247 ], [ -1.000000e+00, %7213 ]
  %7265 = phi i1 [ true, %7247 ], [ false, %7213 ]
  %7266 = and i1 %7233, %7265
  br i1 %7266, label %7267, label %7269

; <label>:7267                                    ; preds = %7262
  %7268 = fcmp fast oeq float %7264, %7263
  br i1 %7268, label %7572, label %7270

; <label>:7269                                    ; preds = %7262
  br i1 %7233, label %7572, label %7270

; <label>:7270                                    ; preds = %7269, %7267
  %7271 = phi float [ %7199, %7269 ], [ %7263, %7267 ]
  %7272 = phi float [ 0.000000e+00, %7269 ], [ %7264, %7267 ]
  %7273 = icmp ne i32 %7221, 0
  %7274 = fmul fast float %7271, %7202
  %7275 = fadd fast float %7274, %7215
  %7276 = fmul fast float %7275, %7271
  %7277 = select i1 %7273, float 0.000000e+00, float %7276
  %7278 = fcmp fast oeq float %7202, 0.000000e+00
  %7279 = fdiv fast float %7220, %7202
  %7280 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7279)  ; FMax(a,b)
  %7281 = select i1 %7278, float %7271, float %7280
  %7282 = call float @dx.op.binary.f32(i32 36, float %7271, float %7281)  ; FMin(a,b)
  %7283 = fcmp fast ogt float %7202, 0.000000e+00
  %7284 = fcmp fast olt float %7220, 0.000000e+00
  br i1 %7283, label %7285, label %7342

; <label>:7285                                    ; preds = %7270
  %7286 = icmp eq i32 %7221, 0
  br i1 %7284, label %7287, label %7331

; <label>:7287                                    ; preds = %7285
  %7288 = select i1 %7286, float %7271, float 0.000000e+00
  %7289 = fsub fast float -0.000000e+00, %7288
  %7290 = call float @dx.op.unary.f32(i32 6, float %7289)  ; FAbs(value)
  %7291 = fmul fast float %7288, %7202
  %7292 = fadd fast float %7291, %7215
  %7293 = fmul fast float %7290, %7292
  %7294 = fsub fast float %7277, %7293
  %7295 = fsub fast float %7271, %7290
  %7296 = select i1 %7286, float %7295, float 0.000000e+00
  %7297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7298 = extractvalue %dx.types.CBufRet.f32 %7297, 0
  %7299 = extractvalue %dx.types.CBufRet.f32 %7297, 1
  %7300 = extractvalue %dx.types.CBufRet.f32 %7297, 2
  %7301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7302 = extractvalue %dx.types.CBufRet.f32 %7301, 0
  %7303 = extractvalue %dx.types.CBufRet.f32 %7301, 1
  %7304 = extractvalue %dx.types.CBufRet.f32 %7301, 2
  %7305 = extractvalue %dx.types.CBufRet.f32 %7301, 3
  %7306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7307 = extractvalue %dx.types.CBufRet.f32 %7306, 3
  %7308 = call float @dx.op.binary.f32(i32 36, float %7294, float %7307)  ; FMin(a,b)
  %7309 = fmul fast float %7305, %7296
  %7310 = call float @dx.op.unary.f32(i32 7, float %7309)  ; Saturate(value)
  %7311 = fsub fast float %7302, %7298
  %7312 = fsub fast float %7303, %7299
  %7313 = fsub fast float %7304, %7300
  %7314 = fmul fast float %7310, %7311
  %7315 = fmul fast float %7310, %7312
  %7316 = fmul fast float %7310, %7313
  %7317 = fadd fast float %7314, %7298
  %7318 = fadd fast float %7315, %7299
  %7319 = fadd fast float %7316, %7300
  %7320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7321 = extractvalue %dx.types.CBufRet.f32 %7320, 0
  %7322 = extractvalue %dx.types.CBufRet.f32 %7320, 1
  %7323 = fadd fast float %7322, %7321
  %7324 = call float @dx.op.unary.f32(i32 7, float %7323)  ; Saturate(value)
  %7325 = extractvalue %dx.types.CBufRet.f32 %7320, 2
  %7326 = extractvalue %dx.types.CBufRet.f32 %7320, 3
  %7327 = fadd fast float %7326, %7325
  %7328 = call float @dx.op.unary.f32(i32 7, float %7327)  ; Saturate(value)
  %7329 = fmul fast float %7324, %7308
  %7330 = fmul fast float %7329, %7328
  br label %7572

; <label>:7331                                    ; preds = %7285
  br i1 %7286, label %7332, label %7353

; <label>:7332                                    ; preds = %7331
  %7333 = call float @dx.op.binary.f32(i32 36, float %7282, float %7272)  ; FMin(a,b)
  %7334 = fsub fast float %7282, %7333
  %7335 = fsub fast float %7334, %7271
  %7336 = call float @dx.op.unary.f32(i32 6, float %7335)  ; FAbs(value)
  %7337 = fadd fast float %7334, %7271
  %7338 = fmul fast float %7337, %7202
  %7339 = fadd fast float %7338, %7215
  %7340 = fmul fast float %7339, %7336
  %7341 = fsub fast float %7277, %7340
  br label %7353

; <label>:7342                                    ; preds = %7270
  br i1 %7284, label %7343, label %7353

; <label>:7343                                    ; preds = %7342
  %7344 = call float @dx.op.binary.f32(i32 35, float %7272, float %7282)  ; FMax(a,b)
  %7345 = icmp eq i32 %7221, 0
  %7346 = select i1 %7345, float %7282, float 0.000000e+00
  %7347 = fsub fast float -0.000000e+00, %7346
  %7348 = call float @dx.op.unary.f32(i32 6, float %7347)  ; FAbs(value)
  %7349 = fmul fast float %7346, %7202
  %7350 = fadd fast float %7349, %7215
  %7351 = fmul fast float %7348, %7350
  %7352 = fsub fast float %7277, %7351
  br label %7353

; <label>:7353                                    ; preds = %7343, %7342, %7332, %7331
  %7354 = phi float [ %7272, %7331 ], [ %7272, %7332 ], [ %7344, %7343 ], [ %7272, %7342 ]
  %7355 = phi float [ 0.000000e+00, %7331 ], [ %7336, %7332 ], [ %7348, %7343 ], [ 0.000000e+00, %7342 ]
  %7356 = phi float [ %7277, %7331 ], [ %7341, %7332 ], [ %7352, %7343 ], [ %7277, %7342 ]
  %7357 = phi float [ %7282, %7331 ], [ %7282, %7332 ], [ %7271, %7343 ], [ %7271, %7342 ]
  %7358 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 0
  store float -1.000000e+00, float* %7358, align 4, !tbaa !136, !noalias !138
  %7359 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 1
  store float -1.000000e+00, float* %7359, align 4, !tbaa !136, !noalias !138
  %7360 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 2
  store float -1.000000e+00, float* %7360, align 4, !tbaa !136, !noalias !138
  %7361 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %7361, align 4, !tbaa !136, !noalias !138
  %7362 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %7362, align 4, !tbaa !136, !noalias !138
  %7363 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %7363, align 4, !tbaa !136, !noalias !138
  %7364 = icmp sgt i32 %7223, 0
  br i1 %7364, label %7365, label %7426

; <label>:7365                                    ; preds = %7353
  br label %7366

; <label>:7366                                    ; preds = %7415, %7365
  %7367 = phi i32 [ %7416, %7415 ], [ 0, %7365 ]
  %7368 = phi i32 [ %7417, %7415 ], [ 0, %7365 ]
  %7369 = add nuw i32 %7368, 171
  %7370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %7369)  ; CBufferLoadLegacy(handle,regIndex)
  %7371 = extractvalue %dx.types.CBufRet.f32 %7370, 0
  %7372 = extractvalue %dx.types.CBufRet.f32 %7370, 1
  %7373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7374 = extractvalue %dx.types.CBufRet.f32 %7373, 0
  %7375 = extractvalue %dx.types.CBufRet.f32 %7373, 1
  %7376 = fsub fast float %7371, %7374
  %7377 = fsub fast float %7372, %7375
  %7378 = extractvalue %dx.types.CBufRet.f32 %7370, 2
  %7379 = fsub fast float -0.000000e+00, %7376
  %7380 = fsub fast float -0.000000e+00, %7377
  %7381 = call float @dx.op.dot2.f32(i32 54, float %7200, float %7201, float %7379, float %7380)  ; Dot2(ax,ay,bx,by)
  %7382 = fmul fast float %7381, 2.000000e+00
  %7383 = call float @dx.op.dot2.f32(i32 54, float %7379, float %7380, float %7379, float %7380)  ; Dot2(ax,ay,bx,by)
  %7384 = fmul fast float %7378, %7378
  %7385 = fsub fast float %7383, %7384
  %7386 = fmul fast float %7382, %7382
  %7387 = fmul fast float %7243, %7385
  %7388 = fsub fast float %7386, %7387
  %7389 = fcmp fast ogt float %7388, 0.000000e+00
  br i1 %7389, label %7390, label %7405

; <label>:7390                                    ; preds = %7366
  %7391 = fcmp fast ogt float %7382, 0.000000e+00
  %7392 = call float @dx.op.unary.f32(i32 24, float %7388)  ; Sqrt(value)
  %7393 = fsub fast float -0.000000e+00, %7392
  %7394 = select i1 %7391, float %7392, float %7393
  %7395 = fadd fast float %7394, %7382
  %7396 = fmul float %7395, -5.000000e-01
  %7397 = fdiv fast float %7396, %7236
  %7398 = call float @dx.op.binary.f32(i32 35, float %7397, float 0.000000e+00)  ; FMax(a,b)
  %7399 = call float @dx.op.binary.f32(i32 36, float %7271, float %7398)  ; FMin(a,b)
  %7400 = fdiv fast float %7385, %7396
  %7401 = call float @dx.op.binary.f32(i32 35, float %7400, float 0.000000e+00)  ; FMax(a,b)
  %7402 = call float @dx.op.binary.f32(i32 36, float %7271, float %7401)  ; FMin(a,b)
  %7403 = call float @dx.op.binary.f32(i32 36, float %7399, float %7402)  ; FMin(a,b)
  %7404 = call float @dx.op.binary.f32(i32 35, float %7399, float %7402)  ; FMax(a,b)
  br label %7405

; <label>:7405                                    ; preds = %7390, %7366
  %7406 = phi float [ %7404, %7390 ], [ -1.000000e+00, %7366 ]
  %7407 = phi float [ %7403, %7390 ], [ -1.000000e+00, %7366 ]
  %7408 = phi i1 [ true, %7390 ], [ false, %7366 ]
  br i1 %7408, label %7409, label %7415

; <label>:7409                                    ; preds = %7405
  %7410 = call float @dx.op.binary.f32(i32 35, float %7354, float %7407)  ; FMax(a,b)
  %7411 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7368
  store float %7410, float* %7411, align 4, !tbaa !136, !noalias !138
  %7412 = call float @dx.op.binary.f32(i32 35, float %7354, float %7406)  ; FMax(a,b)
  %7413 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7368
  store float %7412, float* %7413, align 4, !tbaa !136, !noalias !138
  %7414 = add nsw i32 %7367, 1
  br label %7415

; <label>:7415                                    ; preds = %7409, %7405
  %7416 = phi i32 [ %7414, %7409 ], [ %7367, %7405 ]
  %7417 = add nuw nsw i32 %7368, 1
  %7418 = icmp eq i32 %7417, %7223
  br i1 %7418, label %7419, label %7366

; <label>:7419                                    ; preds = %7415
  %7420 = load float, float* %7360, align 4, !tbaa !136, !alias.scope !154, !noalias !157
  %7421 = load float, float* %7359, align 4, !tbaa !136, !alias.scope !160, !noalias !161
  %7422 = load float, float* %7358, align 4, !tbaa !136, !alias.scope !162, !noalias !163
  %7423 = load float, float* %7363, align 4, !tbaa !136, !alias.scope !164, !noalias !167
  %7424 = load float, float* %7362, align 4, !tbaa !136, !alias.scope !170, !noalias !171
  %7425 = load float, float* %7361, align 4, !tbaa !136, !alias.scope !172, !noalias !173
  br label %7426

; <label>:7426                                    ; preds = %7419, %7353
  %7427 = phi float [ -1.000000e+00, %7353 ], [ %7425, %7419 ]
  %7428 = phi float [ -1.000000e+00, %7353 ], [ %7424, %7419 ]
  %7429 = phi float [ -1.000000e+00, %7353 ], [ %7423, %7419 ]
  %7430 = phi float [ -1.000000e+00, %7353 ], [ %7422, %7419 ]
  %7431 = phi float [ -1.000000e+00, %7353 ], [ %7421, %7419 ]
  %7432 = phi float [ -1.000000e+00, %7353 ], [ %7420, %7419 ]
  %7433 = phi i32 [ 0, %7353 ], [ %7416, %7419 ]
  %7434 = call float @dx.op.binary.f32(i32 36, float %7431, float %7432)  ; FMin(a,b)
  %7435 = call float @dx.op.binary.f32(i32 36, float %7430, float %7434)  ; FMin(a,b)
  %7436 = call float @dx.op.binary.f32(i32 35, float %7430, float %7431)  ; FMax(a,b)
  %7437 = call float @dx.op.binary.f32(i32 36, float %7436, float %7432)  ; FMin(a,b)
  %7438 = call float @dx.op.binary.f32(i32 36, float %7430, float %7431)  ; FMin(a,b)
  %7439 = call float @dx.op.binary.f32(i32 35, float %7438, float %7437)  ; FMax(a,b)
  %7440 = call float @dx.op.binary.f32(i32 35, float %7431, float %7432)  ; FMax(a,b)
  %7441 = call float @dx.op.binary.f32(i32 35, float %7430, float %7440)  ; FMax(a,b)
  store float %7435, float* %7358, align 4, !tbaa !136, !alias.scope !162, !noalias !163
  store float %7439, float* %7359, align 4, !tbaa !136, !alias.scope !160, !noalias !161
  store float %7441, float* %7360, align 4, !tbaa !136, !alias.scope !154, !noalias !157
  %7442 = call float @dx.op.binary.f32(i32 36, float %7428, float %7429)  ; FMin(a,b)
  %7443 = call float @dx.op.binary.f32(i32 36, float %7427, float %7442)  ; FMin(a,b)
  %7444 = call float @dx.op.binary.f32(i32 35, float %7427, float %7428)  ; FMax(a,b)
  %7445 = call float @dx.op.binary.f32(i32 36, float %7444, float %7429)  ; FMin(a,b)
  %7446 = call float @dx.op.binary.f32(i32 36, float %7427, float %7428)  ; FMin(a,b)
  %7447 = call float @dx.op.binary.f32(i32 35, float %7446, float %7445)  ; FMax(a,b)
  %7448 = call float @dx.op.binary.f32(i32 35, float %7428, float %7429)  ; FMax(a,b)
  %7449 = call float @dx.op.binary.f32(i32 35, float %7427, float %7448)  ; FMax(a,b)
  store float %7443, float* %7361, align 4, !tbaa !136, !alias.scope !172, !noalias !173
  store float %7447, float* %7362, align 4, !tbaa !136, !alias.scope !170, !noalias !171
  store float %7449, float* %7363, align 4, !tbaa !136, !alias.scope !164, !noalias !167
  %7450 = sub nsw i32 3, %7433
  %7451 = icmp sgt i32 %7450, 2
  br i1 %7451, label %7452, label %7490

; <label>:7452                                    ; preds = %7426
  %7453 = icmp eq i32 %7221, 0
  %7454 = fsub fast float %7271, %7355
  %7455 = select i1 %7453, float %7454, float %7355
  %7456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7457 = extractvalue %dx.types.CBufRet.f32 %7456, 0
  %7458 = extractvalue %dx.types.CBufRet.f32 %7456, 1
  %7459 = extractvalue %dx.types.CBufRet.f32 %7456, 2
  %7460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7461 = extractvalue %dx.types.CBufRet.f32 %7460, 0
  %7462 = extractvalue %dx.types.CBufRet.f32 %7460, 1
  %7463 = extractvalue %dx.types.CBufRet.f32 %7460, 2
  %7464 = extractvalue %dx.types.CBufRet.f32 %7460, 3
  %7465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7466 = extractvalue %dx.types.CBufRet.f32 %7465, 3
  %7467 = call float @dx.op.binary.f32(i32 36, float %7356, float %7466)  ; FMin(a,b)
  %7468 = fmul fast float %7464, %7455
  %7469 = call float @dx.op.unary.f32(i32 7, float %7468)  ; Saturate(value)
  %7470 = fsub fast float %7461, %7457
  %7471 = fsub fast float %7462, %7458
  %7472 = fsub fast float %7463, %7459
  %7473 = fmul fast float %7469, %7470
  %7474 = fmul fast float %7469, %7471
  %7475 = fmul fast float %7469, %7472
  %7476 = fadd fast float %7473, %7457
  %7477 = fadd fast float %7474, %7458
  %7478 = fadd fast float %7475, %7459
  %7479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7480 = extractvalue %dx.types.CBufRet.f32 %7479, 0
  %7481 = extractvalue %dx.types.CBufRet.f32 %7479, 1
  %7482 = fadd fast float %7481, %7480
  %7483 = call float @dx.op.unary.f32(i32 7, float %7482)  ; Saturate(value)
  %7484 = extractvalue %dx.types.CBufRet.f32 %7479, 2
  %7485 = extractvalue %dx.types.CBufRet.f32 %7479, 3
  %7486 = fadd fast float %7485, %7484
  %7487 = call float @dx.op.unary.f32(i32 7, float %7486)  ; Saturate(value)
  %7488 = fmul fast float %7483, %7467
  %7489 = fmul fast float %7488, %7487
  br label %7572

; <label>:7490                                    ; preds = %7426
  %7491 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7450
  %7492 = load float, float* %7491, align 4, !tbaa !136, !noalias !138
  %7493 = fcmp fast olt float %7492, %7357
  %7494 = icmp sgt i32 %7433, 0
  %7495 = and i1 %7494, %7493
  br i1 %7495, label %7496, label %7533

; <label>:7496                                    ; preds = %7490
  br label %7497

; <label>:7497                                    ; preds = %7526, %7496
  %7498 = phi float [ %7527, %7526 ], [ %7355, %7496 ]
  %7499 = phi float [ %7528, %7526 ], [ %7356, %7496 ]
  %7500 = phi float [ %7508, %7526 ], [ %7492, %7496 ]
  %7501 = phi i32 [ %7505, %7526 ], [ %7450, %7496 ]
  %7502 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7501
  %7503 = load float, float* %7502, align 4, !tbaa !136, !noalias !138
  %7504 = icmp slt i32 %7501, 2
  %7505 = add nsw i32 %7501, 1
  %7506 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7505
  %7507 = load float, float* %7506, align 4, !tbaa !136, !noalias !138
  %7508 = select i1 %7504, float %7507, float %7271
  %7509 = call float @dx.op.binary.f32(i32 36, float %7508, float %7503)  ; FMin(a,b)
  %7510 = call float @dx.op.binary.f32(i32 36, float %7357, float %7509)  ; FMin(a,b)
  %7511 = icmp eq i32 %7221, 0
  %7512 = fadd fast float %7510, %7500
  %7513 = fmul fast float %7512, %7202
  %7514 = fadd fast float %7513, %7215
  br i1 %7511, label %7520, label %7515

; <label>:7515                                    ; preds = %7497
  %7516 = fsub fast float %7510, %7500
  %7517 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7516)  ; FMax(a,b)
  %7518 = fmul fast float %7517, %7514
  %7519 = fadd fast float %7518, %7499
  br label %7526

; <label>:7520                                    ; preds = %7497
  %7521 = fsub fast float %7500, %7510
  %7522 = call float @dx.op.unary.f32(i32 6, float %7521)  ; FAbs(value)
  %7523 = fadd fast float %7522, %7498
  %7524 = fmul fast float %7522, %7514
  %7525 = fsub fast float %7499, %7524
  br label %7526

; <label>:7526                                    ; preds = %7520, %7515
  %7527 = phi float [ %7517, %7515 ], [ %7523, %7520 ]
  %7528 = phi float [ %7519, %7515 ], [ %7525, %7520 ]
  %7529 = fcmp fast olt float %7508, %7357
  %7530 = icmp slt i32 %7505, 3
  %7531 = and i1 %7530, %7529
  br i1 %7531, label %7497, label %7532

; <label>:7532                                    ; preds = %7526
  br label %7533

; <label>:7533                                    ; preds = %7532, %7490
  %7534 = phi float [ %7355, %7490 ], [ %7527, %7532 ]
  %7535 = phi float [ %7356, %7490 ], [ %7528, %7532 ]
  %7536 = fsub fast float %7271, %7534
  %7537 = select i1 %7273, float %7534, float %7536
  %7538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7539 = extractvalue %dx.types.CBufRet.f32 %7538, 0
  %7540 = extractvalue %dx.types.CBufRet.f32 %7538, 1
  %7541 = extractvalue %dx.types.CBufRet.f32 %7538, 2
  %7542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7543 = extractvalue %dx.types.CBufRet.f32 %7542, 0
  %7544 = extractvalue %dx.types.CBufRet.f32 %7542, 1
  %7545 = extractvalue %dx.types.CBufRet.f32 %7542, 2
  %7546 = extractvalue %dx.types.CBufRet.f32 %7542, 3
  %7547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7548 = extractvalue %dx.types.CBufRet.f32 %7547, 3
  %7549 = call float @dx.op.binary.f32(i32 36, float %7535, float %7548)  ; FMin(a,b)
  %7550 = fmul fast float %7546, %7537
  %7551 = call float @dx.op.unary.f32(i32 7, float %7550)  ; Saturate(value)
  %7552 = fsub fast float %7543, %7539
  %7553 = fsub fast float %7544, %7540
  %7554 = fsub fast float %7545, %7541
  %7555 = fmul fast float %7551, %7552
  %7556 = fmul fast float %7551, %7553
  %7557 = fmul fast float %7551, %7554
  %7558 = fadd fast float %7555, %7539
  %7559 = fadd fast float %7556, %7540
  %7560 = fadd fast float %7557, %7541
  %7561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7562 = extractvalue %dx.types.CBufRet.f32 %7561, 0
  %7563 = extractvalue %dx.types.CBufRet.f32 %7561, 1
  %7564 = fadd fast float %7563, %7562
  %7565 = call float @dx.op.unary.f32(i32 7, float %7564)  ; Saturate(value)
  %7566 = extractvalue %dx.types.CBufRet.f32 %7561, 2
  %7567 = extractvalue %dx.types.CBufRet.f32 %7561, 3
  %7568 = fadd fast float %7567, %7566
  %7569 = call float @dx.op.unary.f32(i32 7, float %7568)  ; Saturate(value)
  %7570 = fmul fast float %7565, %7549
  %7571 = fmul fast float %7570, %7569
  br label %7572

; <label>:7572                                    ; preds = %7533, %7452, %7287, %7269, %7267
  %7573 = phi float [ %7296, %7287 ], [ %7455, %7452 ], [ %7537, %7533 ], [ 0.000000e+00, %7267 ], [ 0.000000e+00, %7269 ]
  %7574 = phi float [ %7330, %7287 ], [ %7489, %7452 ], [ %7571, %7533 ], [ 0.000000e+00, %7267 ], [ 0.000000e+00, %7269 ]
  %7575 = phi float [ %7317, %7287 ], [ %7476, %7452 ], [ %7558, %7533 ], [ 0.000000e+00, %7267 ], [ 0.000000e+00, %7269 ]
  %7576 = phi float [ %7318, %7287 ], [ %7477, %7452 ], [ %7559, %7533 ], [ 0.000000e+00, %7267 ], [ 0.000000e+00, %7269 ]
  %7577 = phi float [ %7319, %7287 ], [ %7478, %7452 ], [ %7560, %7533 ], [ 0.000000e+00, %7267 ], [ 0.000000e+00, %7269 ]
  %7578 = fmul fast float %7210, %7574
  %7579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7580 = extractvalue %dx.types.CBufRet.f32 %7579, 2
  %7581 = fsub fast float %7217, %7580
  %7582 = fcmp fast olt float %7578, -2.000000e+01
  %7583 = call float @dx.op.unary.f32(i32 21, float %7578)  ; Exp(value)
  %7584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7585 = extractvalue %dx.types.CBufRet.f32 %7584, 2
  %7586 = extractvalue %dx.types.CBufRet.f32 %7584, 3
  %7587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7588 = extractvalue %dx.types.CBufRet.f32 %7587, 2
  %7589 = fmul fast float %7586, %7581
  %7590 = call float @dx.op.unary.f32(i32 7, float %7589)  ; Saturate(value)
  %7591 = fsub fast float 1.000000e+00, %7590
  %7592 = fmul fast float %7202, 5.000000e-01
  %7593 = fadd fast float %7592, 5.000000e-01
  %7594 = call float @dx.op.unary.f32(i32 7, float %7593)  ; Saturate(value)
  %7595 = fsub fast float 1.000000e+00, %7594
  %7596 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7591)  ; FMax(a,b)
  %7597 = fdiv fast float %7595, %7596
  %7598 = fsub fast float %7581, %7159
  %7599 = call float @dx.op.unary.f32(i32 6, float %7598)  ; FAbs(value)
  %7600 = fmul fast float %7599, %7585
  %7601 = call float @dx.op.unary.f32(i32 7, float %7597)  ; Saturate(value)
  %7602 = fsub fast float 1.000000e+00, %7600
  %7603 = fmul fast float %7602, %7601
  %7604 = fadd fast float %7603, %7600
  %7605 = fmul fast float %7588, %7581
  %7606 = call float @dx.op.unary.f32(i32 7, float %7605)  ; Saturate(value)
  %7607 = fsub fast float 1.000000e+00, %7604
  %7608 = fmul fast float %7607, %7606
  %7609 = fadd fast float %7608, %7604
  %7610 = call float @dx.op.unary.f32(i32 7, float %7609)  ; Saturate(value)
  %7611 = fadd fast float %7583, -1.000000e+00
  %7612 = select i1 %7582, float -1.000000e+00, float %7611
  %7613 = fmul fast float %7610, %7612
  %7614 = fadd fast float %7613, 1.000000e+00
  %7615 = fsub fast float -0.000000e+00, %7613
  %7616 = fmul fast float %7575, %7615
  %7617 = fmul fast float %7576, %7615
  %7618 = fmul fast float %7577, %7615
  br label %7619

; <label>:7619                                    ; preds = %7572, %7168
  %7620 = phi float [ %7573, %7572 ], [ 0.000000e+00, %7168 ]
  %7621 = phi float [ %7614, %7572 ], [ 1.000000e+00, %7168 ]
  %7622 = phi float [ %7616, %7572 ], [ 0.000000e+00, %7168 ]
  %7623 = phi float [ %7617, %7572 ], [ 0.000000e+00, %7168 ]
  %7624 = phi float [ %7618, %7572 ], [ 0.000000e+00, %7168 ]
  %7625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7626 = extractvalue %dx.types.CBufRet.f32 %7625, 1
  %7627 = fsub fast float 1.000000e+00, %7621
  %7628 = fmul fast float %7627, %7203
  %7629 = fmul fast float %7628, %7626
  %7630 = fsub fast float %7203, %7629
  br i1 %7196, label %7631, label %7660, !dx.controlflow.hints !174

; <label>:7631                                    ; preds = %7619
  %7632 = fmul fast float %7204, %7193
  %7633 = fadd fast float %7632, %7194
  %7634 = call float @dx.op.unary.f32(i32 7, float %7633)  ; Saturate(value)
  %7635 = fmul fast float %7175, %7630
  %7636 = fsub fast float -0.000000e+00, %7635
  %7637 = fmul fast float %7176, %7630
  %7638 = fsub fast float -0.000000e+00, %7637
  %7639 = call float @dx.op.unary.f32(i32 21, float %7636)  ; Exp(value)
  %7640 = call float @dx.op.unary.f32(i32 21, float %7638)  ; Exp(value)
  %7641 = call float @dx.op.binary.f32(i32 35, float %7183, float %7639)  ; FMax(a,b)
  %7642 = call float @dx.op.binary.f32(i32 35, float %7183, float %7640)  ; FMax(a,b)
  %7643 = fsub fast float %7642, %7641
  %7644 = fmul fast float %7643, %7634
  %7645 = fadd fast float %7644, %7641
  %7646 = call float @dx.op.unary.f32(i32 7, float %7645)  ; Saturate(value)
  %7647 = fsub fast float %7180, %7185
  %7648 = fsub fast float %7181, %7186
  %7649 = fsub fast float %7182, %7187
  %7650 = fmul fast float %7634, %7647
  %7651 = fmul fast float %7634, %7648
  %7652 = fmul fast float %7634, %7649
  %7653 = fadd fast float %7650, %7185
  %7654 = fadd fast float %7651, %7186
  %7655 = fadd fast float %7652, %7187
  %7656 = fsub fast float 1.000000e+00, %7646
  %7657 = fmul fast float %7656, %7653
  %7658 = fmul fast float %7656, %7654
  %7659 = fmul fast float %7656, %7655
  br label %7719

; <label>:7660                                    ; preds = %7619
  %7661 = fmul fast float %7630, %7192
  %7662 = call float @dx.op.unary.f32(i32 7, float %7661)  ; Saturate(value)
  %7663 = fsub fast float 2.000000e+00, %7662
  %7664 = fmul fast float %7662, 9.921875e-01
  %7665 = fmul fast float %7664, %7663
  %7666 = fadd fast float %7665, 3.906250e-03
  %7667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %7666, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7668 = extractvalue %dx.types.ResRet.f32 %7667, 0
  %7669 = fsub fast float %7662, %7668
  %7670 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7669)  ; FMax(a,b)
  %7671 = fmul fast float %7178, %7159
  %7672 = call float @dx.op.unary.f32(i32 6, float %7671)  ; FAbs(value)
  %7673 = fcmp fast ogt float %7672, 0x3EB0C6F7A0000000
  br i1 %7673, label %7674, label %7680, !dx.controlflow.hints !175

; <label>:7674                                    ; preds = %7660
  %7675 = fmul fast float %7671, 0xBFF7154760000000
  %7676 = call float @dx.op.unary.f32(i32 21, float %7675)  ; Exp(value)
  %7677 = fsub fast float 1.000000e+00, %7676
  %7678 = fdiv fast float %7677, %7671
  %7679 = fmul fast float %7678, %7188
  br label %7680

; <label>:7680                                    ; preds = %7674, %7660
  %7681 = phi float [ %7679, %7674 ], [ %7188, %7660 ]
  %7682 = fadd fast float %7681, %7190
  %7683 = fmul fast float %7682, %7670
  %7684 = fmul fast float %7175, %7683
  %7685 = fsub fast float -0.000000e+00, %7684
  %7686 = fmul fast float %7176, %7683
  %7687 = fsub fast float -0.000000e+00, %7686
  %7688 = fmul fast float %7177, %7683
  %7689 = fsub fast float -0.000000e+00, %7688
  %7690 = call float @dx.op.unary.f32(i32 21, float %7685)  ; Exp(value)
  %7691 = call float @dx.op.unary.f32(i32 21, float %7687)  ; Exp(value)
  %7692 = call float @dx.op.unary.f32(i32 21, float %7689)  ; Exp(value)
  %7693 = fmul fast float %7204, %7204
  %7694 = fadd fast float %7693, 1.000000e+00
  %7695 = fmul fast float %7694, 0x3FAE8EC8A0000000
  %7696 = fmul fast float %7695, %7185
  %7697 = fmul fast float %7695, %7186
  %7698 = fmul fast float %7695, %7187
  %7699 = fmul fast float %7204, %7183
  %7700 = fsub fast float 1.000000e+00, %7699
  %7701 = fmul fast float %7183, %7183
  %7702 = fsub fast float 1.000000e+00, %7701
  %7703 = fmul fast float %7702, 0x3FB45F3060000000
  %7704 = fmul fast float %7700, %7700
  %7705 = fdiv fast float 1.000000e+00, %7704
  %7706 = fmul fast float %7703, %7705
  %7707 = fmul fast float %7706, %7180
  %7708 = fmul fast float %7706, %7181
  %7709 = fmul fast float %7706, %7182
  %7710 = fadd fast float %7707, %7696
  %7711 = fadd fast float %7708, %7697
  %7712 = fadd fast float %7709, %7698
  %7713 = fsub fast float 1.000000e+00, %7690
  %7714 = fsub fast float 1.000000e+00, %7691
  %7715 = fsub fast float 1.000000e+00, %7692
  %7716 = fmul fast float %7710, %7713
  %7717 = fmul fast float %7711, %7714
  %7718 = fmul fast float %7712, %7715
  br label %7719

; <label>:7719                                    ; preds = %7680, %7631
  %7720 = phi float [ %7657, %7631 ], [ %7716, %7680 ]
  %7721 = phi float [ %7658, %7631 ], [ %7717, %7680 ]
  %7722 = phi float [ %7659, %7631 ], [ %7718, %7680 ]
  %7723 = phi float [ %7646, %7631 ], [ %7690, %7680 ]
  %7724 = phi float [ %7646, %7631 ], [ %7691, %7680 ]
  %7725 = phi float [ %7646, %7631 ], [ %7692, %7680 ]
  br i1 %7212, label %7726, label %7924, !dx.controlflow.hints !176

; <label>:7726                                    ; preds = %7719
  %7727 = extractvalue %dx.types.CBufRet.f32 %7625, 0
  %7728 = fmul fast float %7727, %7627
  %7729 = fsub fast float %7622, %7720
  %7730 = fsub fast float %7623, %7721
  %7731 = fsub fast float %7624, %7722
  %7732 = fmul fast float %7728, %7729
  %7733 = fmul fast float %7728, %7730
  %7734 = fmul fast float %7728, %7731
  %7735 = fadd fast float %7732, %7720
  %7736 = fadd fast float %7733, %7721
  %7737 = fadd fast float %7734, %7722
  %7738 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7723)  ; FMax(a,b)
  %7739 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7724)  ; FMax(a,b)
  %7740 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7725)  ; FMax(a,b)
  %7741 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7621)  ; FMax(a,b)
  %7742 = call float @dx.op.binary.f32(i32 35, float %7620, float %7630)  ; FMax(a,b)
  %7743 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7742)  ; FMax(a,b)
  %7744 = fdiv fast float %7620, %7743
  %7745 = call float @dx.op.unary.f32(i32 7, float %7744)  ; Saturate(value)
  %7746 = fdiv fast float %7630, %7743
  %7747 = call float @dx.op.unary.f32(i32 7, float %7746)  ; Saturate(value)
  %7748 = fcmp fast une float %7741, 1.000000e+00
  br i1 %7748, label %7749, label %7762, !dx.controlflow.hints !177

; <label>:7749                                    ; preds = %7726
  %7750 = call float @dx.op.unary.f32(i32 23, float %7741)  ; Log(value)
  %7751 = fmul fast float %7750, 0x3FE62E4300000000
  %7752 = fmul fast float %7622, %7751
  %7753 = fsub fast float -0.000000e+00, %7752
  %7754 = fmul fast float %7623, %7751
  %7755 = fsub fast float -0.000000e+00, %7754
  %7756 = fmul fast float %7624, %7751
  %7757 = fsub fast float -0.000000e+00, %7756
  %7758 = fsub fast float 1.000000e+00, %7741
  %7759 = fdiv fast float %7753, %7758
  %7760 = fdiv fast float %7755, %7758
  %7761 = fdiv fast float %7757, %7758
  br label %7762

; <label>:7762                                    ; preds = %7749, %7726
  %7763 = phi float [ %7759, %7749 ], [ %7622, %7726 ]
  %7764 = phi float [ %7760, %7749 ], [ %7623, %7726 ]
  %7765 = phi float [ %7761, %7749 ], [ %7624, %7726 ]
  %7766 = phi float [ %7751, %7749 ], [ 0.000000e+00, %7726 ]
  %7767 = fcmp fast une float %7738, 1.000000e+00
  br i1 %7767, label %7768, label %7775, !dx.controlflow.hints !178

; <label>:7768                                    ; preds = %7762
  %7769 = call float @dx.op.unary.f32(i32 23, float %7738)  ; Log(value)
  %7770 = fmul fast float %7769, 0x3FE62E4300000000
  %7771 = fmul fast float %7735, %7770
  %7772 = fsub fast float -0.000000e+00, %7771
  %7773 = fsub fast float 1.000000e+00, %7738
  %7774 = fdiv fast float %7772, %7773
  br label %7775

; <label>:7775                                    ; preds = %7768, %7762
  %7776 = phi float [ %7774, %7768 ], [ %7735, %7762 ]
  %7777 = phi float [ %7770, %7768 ], [ 0.000000e+00, %7762 ]
  %7778 = fcmp fast une float %7739, 1.000000e+00
  br i1 %7778, label %7779, label %7786, !dx.controlflow.hints !178

; <label>:7779                                    ; preds = %7775
  %7780 = call float @dx.op.unary.f32(i32 23, float %7739)  ; Log(value)
  %7781 = fmul fast float %7780, 0x3FE62E4300000000
  %7782 = fmul fast float %7736, %7781
  %7783 = fsub fast float -0.000000e+00, %7782
  %7784 = fsub fast float 1.000000e+00, %7739
  %7785 = fdiv fast float %7783, %7784
  br label %7786

; <label>:7786                                    ; preds = %7779, %7775
  %7787 = phi float [ %7785, %7779 ], [ %7736, %7775 ]
  %7788 = phi float [ %7781, %7779 ], [ 0.000000e+00, %7775 ]
  %7789 = fcmp fast une float %7740, 1.000000e+00
  br i1 %7789, label %7790, label %7797, !dx.controlflow.hints !178

; <label>:7790                                    ; preds = %7786
  %7791 = call float @dx.op.unary.f32(i32 23, float %7740)  ; Log(value)
  %7792 = fmul fast float %7791, 0x3FE62E4300000000
  %7793 = fmul fast float %7737, %7792
  %7794 = fsub fast float -0.000000e+00, %7793
  %7795 = fsub fast float 1.000000e+00, %7740
  %7796 = fdiv fast float %7794, %7795
  br label %7797

; <label>:7797                                    ; preds = %7790, %7786
  %7798 = phi float [ %7796, %7790 ], [ %7737, %7786 ]
  %7799 = phi float [ %7792, %7790 ], [ 0.000000e+00, %7786 ]
  %7800 = fmul fast float %7763, %7747
  %7801 = fmul fast float %7764, %7747
  %7802 = fmul fast float %7765, %7747
  %7803 = fmul fast float %7766, %7747
  %7804 = fmul fast float %7776, %7745
  %7805 = fmul fast float %7787, %7745
  %7806 = fmul fast float %7798, %7745
  %7807 = fmul fast float %7777, %7745
  %7808 = fmul fast float %7788, %7745
  %7809 = fmul fast float %7799, %7745
  %7810 = fadd fast float %7804, %7800
  %7811 = fadd fast float %7805, %7801
  %7812 = fadd fast float %7806, %7802
  %7813 = fadd fast float %7807, %7803
  %7814 = fadd fast float %7808, %7803
  %7815 = fadd fast float %7809, %7803
  %7816 = fcmp fast une float %7813, 0.000000e+00
  br i1 %7816, label %7817, label %7824, !dx.controlflow.hints !179

; <label>:7817                                    ; preds = %7797
  %7818 = fmul fast float %7813, 0x3FF7154760000000
  %7819 = call float @dx.op.unary.f32(i32 21, float %7818)  ; Exp(value)
  %7820 = fsub fast float 1.000000e+00, %7819
  %7821 = fmul fast float %7810, %7820
  %7822 = fsub fast float -0.000000e+00, %7821
  %7823 = fdiv fast float %7822, %7813
  br label %7824

; <label>:7824                                    ; preds = %7817, %7797
  %7825 = phi float [ %7819, %7817 ], [ 1.000000e+00, %7797 ]
  %7826 = phi float [ %7823, %7817 ], [ %7810, %7797 ]
  %7827 = fcmp fast une float %7814, 0.000000e+00
  br i1 %7827, label %7828, label %7835, !dx.controlflow.hints !179

; <label>:7828                                    ; preds = %7824
  %7829 = fmul fast float %7814, 0x3FF7154760000000
  %7830 = call float @dx.op.unary.f32(i32 21, float %7829)  ; Exp(value)
  %7831 = fsub fast float 1.000000e+00, %7830
  %7832 = fmul fast float %7811, %7831
  %7833 = fsub fast float -0.000000e+00, %7832
  %7834 = fdiv fast float %7833, %7814
  br label %7835

; <label>:7835                                    ; preds = %7828, %7824
  %7836 = phi float [ %7830, %7828 ], [ 1.000000e+00, %7824 ]
  %7837 = phi float [ %7834, %7828 ], [ %7811, %7824 ]
  %7838 = fcmp fast une float %7815, 0.000000e+00
  br i1 %7838, label %7839, label %7846, !dx.controlflow.hints !179

; <label>:7839                                    ; preds = %7835
  %7840 = fmul fast float %7815, 0x3FF7154760000000
  %7841 = call float @dx.op.unary.f32(i32 21, float %7840)  ; Exp(value)
  %7842 = fsub fast float 1.000000e+00, %7841
  %7843 = fmul fast float %7812, %7842
  %7844 = fsub fast float -0.000000e+00, %7843
  %7845 = fdiv fast float %7844, %7815
  br label %7846

; <label>:7846                                    ; preds = %7839, %7835
  %7847 = phi float [ %7841, %7839 ], [ 1.000000e+00, %7835 ]
  %7848 = phi float [ %7845, %7839 ], [ %7812, %7835 ]
  %7849 = fcmp fast ogt float %7745, %7747
  br i1 %7849, label %7850, label %7870

; <label>:7850                                    ; preds = %7846
  %7851 = fsub fast float 1.000000e+00, %7747
  %7852 = fmul fast float %7763, %7851
  %7853 = fmul fast float %7764, %7851
  %7854 = fmul fast float %7765, %7851
  %7855 = fmul fast float %7766, %7851
  %7856 = fcmp fast une float %7855, 0.000000e+00
  br i1 %7856, label %7857, label %7908, !dx.controlflow.hints !180

; <label>:7857                                    ; preds = %7850
  %7858 = fmul fast float %7855, 0x3FF7154760000000
  %7859 = call float @dx.op.unary.f32(i32 21, float %7858)  ; Exp(value)
  %7860 = fsub fast float 1.000000e+00, %7859
  %7861 = fmul fast float %7852, %7860
  %7862 = fsub fast float -0.000000e+00, %7861
  %7863 = fmul fast float %7853, %7860
  %7864 = fsub fast float -0.000000e+00, %7863
  %7865 = fmul fast float %7854, %7860
  %7866 = fsub fast float -0.000000e+00, %7865
  %7867 = fdiv fast float %7862, %7855
  %7868 = fdiv fast float %7864, %7855
  %7869 = fdiv fast float %7866, %7855
  br label %7908

; <label>:7870                                    ; preds = %7846
  %7871 = fsub fast float 1.000000e+00, %7745
  %7872 = fmul fast float %7776, %7871
  %7873 = fmul fast float %7787, %7871
  %7874 = fmul fast float %7798, %7871
  %7875 = fmul fast float %7777, %7871
  %7876 = fmul fast float %7788, %7871
  %7877 = fmul fast float %7799, %7871
  %7878 = fcmp fast une float %7875, 0.000000e+00
  br i1 %7878, label %7879, label %7886, !dx.controlflow.hints !179

; <label>:7879                                    ; preds = %7870
  %7880 = fmul fast float %7875, 0x3FF7154760000000
  %7881 = call float @dx.op.unary.f32(i32 21, float %7880)  ; Exp(value)
  %7882 = fsub fast float 1.000000e+00, %7881
  %7883 = fmul fast float %7872, %7882
  %7884 = fsub fast float -0.000000e+00, %7883
  %7885 = fdiv fast float %7884, %7875
  br label %7886

; <label>:7886                                    ; preds = %7879, %7870
  %7887 = phi float [ %7885, %7879 ], [ %7872, %7870 ]
  %7888 = phi float [ %7881, %7879 ], [ 1.000000e+00, %7870 ]
  %7889 = fcmp fast une float %7876, 0.000000e+00
  br i1 %7889, label %7890, label %7897, !dx.controlflow.hints !179

; <label>:7890                                    ; preds = %7886
  %7891 = fmul fast float %7876, 0x3FF7154760000000
  %7892 = call float @dx.op.unary.f32(i32 21, float %7891)  ; Exp(value)
  %7893 = fsub fast float 1.000000e+00, %7892
  %7894 = fmul fast float %7873, %7893
  %7895 = fsub fast float -0.000000e+00, %7894
  %7896 = fdiv fast float %7895, %7876
  br label %7897

; <label>:7897                                    ; preds = %7890, %7886
  %7898 = phi float [ %7896, %7890 ], [ %7873, %7886 ]
  %7899 = phi float [ %7892, %7890 ], [ 1.000000e+00, %7886 ]
  %7900 = fcmp fast une float %7877, 0.000000e+00
  br i1 %7900, label %7901, label %7908, !dx.controlflow.hints !179

; <label>:7901                                    ; preds = %7897
  %7902 = fmul fast float %7877, 0x3FF7154760000000
  %7903 = call float @dx.op.unary.f32(i32 21, float %7902)  ; Exp(value)
  %7904 = fsub fast float 1.000000e+00, %7903
  %7905 = fmul fast float %7874, %7904
  %7906 = fsub fast float -0.000000e+00, %7905
  %7907 = fdiv fast float %7906, %7877
  br label %7908

; <label>:7908                                    ; preds = %7901, %7897, %7857, %7850
  %7909 = phi float [ %7907, %7901 ], [ %7869, %7857 ], [ %7854, %7850 ], [ %7874, %7897 ]
  %7910 = phi float [ %7898, %7901 ], [ %7868, %7857 ], [ %7853, %7850 ], [ %7898, %7897 ]
  %7911 = phi float [ %7887, %7901 ], [ %7867, %7857 ], [ %7852, %7850 ], [ %7887, %7897 ]
  %7912 = phi float [ %7903, %7901 ], [ %7859, %7857 ], [ 1.000000e+00, %7850 ], [ 1.000000e+00, %7897 ]
  %7913 = phi float [ %7899, %7901 ], [ %7859, %7857 ], [ 1.000000e+00, %7850 ], [ %7899, %7897 ]
  %7914 = phi float [ %7888, %7901 ], [ %7859, %7857 ], [ 1.000000e+00, %7850 ], [ %7888, %7897 ]
  %7915 = fmul fast float %7914, %7826
  %7916 = fmul fast float %7913, %7837
  %7917 = fmul fast float %7912, %7848
  %7918 = fadd fast float %7915, %7911
  %7919 = fadd fast float %7916, %7910
  %7920 = fadd fast float %7917, %7909
  %7921 = fmul fast float %7914, %7825
  %7922 = fmul fast float %7913, %7836
  %7923 = fmul fast float %7912, %7847
  br label %7924

; <label>:7924                                    ; preds = %7908, %7719
  %7925 = phi float [ %7923, %7908 ], [ %7725, %7719 ]
  %7926 = phi float [ %7922, %7908 ], [ %7724, %7719 ]
  %7927 = phi float [ %7921, %7908 ], [ %7723, %7719 ]
  %7928 = phi float [ %7920, %7908 ], [ %7722, %7719 ]
  %7929 = phi float [ %7919, %7908 ], [ %7721, %7719 ]
  %7930 = phi float [ %7918, %7908 ], [ %7720, %7719 ]
  %7931 = fmul fast float %7930, %6870
  %7932 = fmul fast float %7929, %6872
  %7933 = fmul fast float %7928, %6874
  %7934 = fmul fast float %7927, %7167
  %7935 = call float @dx.op.dot3.f32(i32 55, float %7927, float %7926, float %7925, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7936 = call float @dx.op.dot3.f32(i32 55, float %7931, float %7932, float %7933, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7937 = select i1 %234, float %7935, float %7927
  %7938 = select i1 %234, float %7935, float %7926
  %7939 = select i1 %234, float 1.000000e+00, float %7925
  %7940 = select i1 %234, float %7936, float %7931
  %7941 = select i1 %234, float 0.000000e+00, float %7932
  %7942 = select i1 %234, float 0.000000e+00, float %7933
  %7943 = fmul fast float %7937, %7161
  %7944 = fmul fast float %7938, %7162
  %7945 = fmul fast float %7939, %7163
  %7946 = fadd fast float %7943, %7940
  %7947 = fadd fast float %7944, %7941
  %7948 = fadd fast float %7942, %7945
  %7949 = fmul fast float %7937, %7164
  %7950 = fmul fast float %7938, %7165
  %7951 = fmul fast float %7939, %7166
  %7952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7953 = extractvalue %dx.types.CBufRet.i32 %7952, 0
  %7954 = icmp eq i32 %7953, 0
  br i1 %7954, label %8322, label %7955, !dx.controlflow.hints !181

; <label>:7955                                    ; preds = %7924
  %7956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7957 = extractvalue %dx.types.CBufRet.f32 %7956, 2
  %7958 = extractvalue %dx.types.CBufRet.f32 %7956, 3
  %7959 = fmul fast float %7957, %96
  %7960 = fmul fast float %7958, %97
  %7961 = fmul fast float %7959, 2.000000e+00
  %7962 = fmul fast float %7960, 2.000000e+00
  %7963 = fsub fast float 1.000000e+00, %7961
  %7964 = fsub fast float 1.000000e+00, %7962
  %7965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7966 = extractvalue %dx.types.CBufRet.f32 %7965, 0
  %7967 = extractvalue %dx.types.CBufRet.f32 %7965, 1
  %7968 = extractvalue %dx.types.CBufRet.f32 %7965, 2
  %7969 = fmul fast float %7963, %7966
  %7970 = fmul fast float %7963, %7967
  %7971 = fmul fast float %7963, %7968
  %7972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7973 = extractvalue %dx.types.CBufRet.f32 %7972, 0
  %7974 = extractvalue %dx.types.CBufRet.f32 %7972, 1
  %7975 = extractvalue %dx.types.CBufRet.f32 %7972, 2
  %7976 = fmul fast float %7964, %7973
  %7977 = fmul fast float %7964, %7974
  %7978 = fmul fast float %7964, %7975
  %7979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7980 = extractvalue %dx.types.CBufRet.f32 %7979, 0
  %7981 = extractvalue %dx.types.CBufRet.f32 %7979, 1
  %7982 = extractvalue %dx.types.CBufRet.f32 %7979, 2
  %7983 = fadd fast float %7976, %7980
  %7984 = fadd fast float %7983, %7969
  %7985 = fadd fast float %7977, %7981
  %7986 = fadd fast float %7985, %7970
  %7987 = fadd fast float %7978, %7982
  %7988 = fadd fast float %7987, %7971
  %7989 = fmul fast float %7984, %7160
  %7990 = fmul fast float %7986, %7160
  %7991 = fmul fast float %7988, %7160
  %7992 = fmul fast float %7989, %7989
  %7993 = fmul fast float %7990, %7990
  %7994 = fadd fast float %7992, %7993
  %7995 = fmul fast float %7991, %7991
  %7996 = fadd fast float %7994, %7995
  %7997 = call float @dx.op.unary.f32(i32 24, float %7996)  ; Sqrt(value)
  %7998 = extractvalue %dx.types.CBufRet.f32 %6885, 0
  %7999 = fsub fast float %7997, %7998
  %8000 = extractvalue %dx.types.CBufRet.f32 %6885, 2
  %8001 = fmul fast float %7999, %8000
  %8002 = call float @dx.op.unary.f32(i32 7, float %8001)  ; Saturate(value)
  %8003 = fadd fast float %8002, -5.000000e-01
  %8004 = fmul fast float %8003, 2.000000e+00
  %8005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8006 = extractvalue %dx.types.CBufRet.f32 %8005, 2
  %8007 = call float @dx.op.binary.f32(i32 36, float %8006, float %8004)  ; FMin(a,b)
  %8008 = fsub fast float -0.000000e+00, %8006
  %8009 = fcmp fast ogt float %8007, %8008
  br i1 %8009, label %8010, label %8322, !dx.controlflow.hints !182

; <label>:8010                                    ; preds = %7955
  %8011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8012 = extractvalue %dx.types.CBufRet.f32 %8011, 3
  %8013 = fcmp fast ogt float %8012, 0.000000e+00
  br i1 %8013, label %8014, label %8089, !dx.controlflow.hints !183

; <label>:8014                                    ; preds = %8010
  %8015 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %8016 = extractvalue %dx.types.Dimensions %8015, 0
  %8017 = sitofp i32 %8016 to float
  %8018 = extractvalue %dx.types.Dimensions %8015, 1
  %8019 = sitofp i32 %8018 to float
  %8020 = fmul fast float %7959, %8017
  %8021 = fmul fast float %7960, %8019
  %8022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8023 = extractvalue %dx.types.CBufRet.f32 %8022, 1
  %8024 = fsub fast float -0.000000e+00, %8023
  %8025 = fptoui float %8024 to i32
  %8026 = fptoui float %8020 to i32
  %8027 = fptoui float %8021 to i32
  %8028 = and i32 %8025, 31
  %8029 = lshr i32 %8026, %8028
  %8030 = lshr i32 %8027, %8028
  %8031 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %8025, i32 %8029, i32 %8030, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8032 = extractvalue %dx.types.ResRet.f32 %8031, 0
  %8033 = fcmp fast olt float %8032, -1.000000e+00
  %8034 = fcmp fast ogt float %8032, -1.000000e+00
  %8035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8036 = extractvalue %dx.types.CBufRet.f32 %8035, 1
  %8037 = select i1 %8034, float %8036, float 1.000000e+00
  %8038 = fadd fast float %8032, 1.000000e+00
  %8039 = fmul fast float %8037, %8038
  %8040 = call float @dx.op.unary.f32(i32 6, float %8039)  ; FAbs(value)
  %8041 = extractvalue %dx.types.CBufRet.f32 %8035, 3
  %8042 = fcmp fast oge float %8040, %8041
  %8043 = select i1 %8042, float 0x4197782600000000, float %8040
  %8044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8045 = extractvalue %dx.types.CBufRet.f32 %8044, 0
  %8046 = extractvalue %dx.types.CBufRet.f32 %8044, 1
  %8047 = extractvalue %dx.types.CBufRet.f32 %8044, 2
  %8048 = select i1 %8033, float %8045, float %7966
  %8049 = select i1 %8033, float %8046, float %7967
  %8050 = select i1 %8033, float %8047, float %7968
  %8051 = fmul fast float %8048, %7963
  %8052 = fmul fast float %8049, %7963
  %8053 = fmul fast float %8050, %7963
  %8054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8055 = extractvalue %dx.types.CBufRet.f32 %8054, 0
  %8056 = extractvalue %dx.types.CBufRet.f32 %8054, 1
  %8057 = extractvalue %dx.types.CBufRet.f32 %8054, 2
  %8058 = select i1 %8033, float %8055, float %7973
  %8059 = select i1 %8033, float %8056, float %7974
  %8060 = select i1 %8033, float %8057, float %7975
  %8061 = fmul fast float %8058, %7964
  %8062 = fmul fast float %8059, %7964
  %8063 = fmul fast float %8060, %7964
  %8064 = fadd fast float %8061, %8051
  %8065 = fadd fast float %8062, %8052
  %8066 = fadd fast float %8063, %8053
  %8067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8068 = extractvalue %dx.types.CBufRet.f32 %8067, 0
  %8069 = extractvalue %dx.types.CBufRet.f32 %8067, 1
  %8070 = extractvalue %dx.types.CBufRet.f32 %8067, 2
  %8071 = select i1 %8033, float %8068, float %7980
  %8072 = select i1 %8033, float %8069, float %7981
  %8073 = select i1 %8033, float %8070, float %7982
  %8074 = fadd fast float %8064, %8071
  %8075 = fadd fast float %8065, %8072
  %8076 = fadd fast float %8066, %8073
  %8077 = fmul fast float %8074, %8043
  %8078 = fmul fast float %8075, %8043
  %8079 = fmul fast float %8076, %8043
  %8080 = fmul fast float %8077, %8077
  %8081 = fmul fast float %8078, %8078
  %8082 = fadd fast float %8080, %8081
  %8083 = fmul fast float %8079, %8079
  %8084 = fadd fast float %8082, %8083
  %8085 = call float @dx.op.unary.f32(i32 24, float %8084)  ; Sqrt(value)
  %8086 = fsub fast float %8085, %7998
  %8087 = fmul fast float %8086, %8000
  %8088 = call float @dx.op.unary.f32(i32 7, float %8087)  ; Saturate(value)
  br label %8089

; <label>:8089                                    ; preds = %8014, %8010
  %8090 = phi float [ %8088, %8014 ], [ 1.000000e+00, %8010 ]
  %8091 = fmul fast float %8007, 5.000000e-01
  %8092 = fadd fast float %8091, 5.000000e-01
  %8093 = call float @dx.op.unary.f32(i32 22, float %8092)  ; Frc(value)
  %8094 = call float @dx.op.unary.f32(i32 27, float %8093)  ; Round_ni(value)
  %8095 = call float @dx.op.unary.f32(i32 22, float %8093)  ; Frc(value)
  %8096 = fmul fast float %8095, 2.000000e+00
  %8097 = fadd fast float %8096, -1.000000e+00
  %8098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %58, float %7959, float %7960, float %8094, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8099 = extractvalue %dx.types.ResRet.f32 %8098, 0
  %8100 = extractvalue %dx.types.ResRet.f32 %8098, 1
  %8101 = extractvalue %dx.types.ResRet.f32 %8098, 2
  %8102 = extractvalue %dx.types.ResRet.f32 %8098, 3
  %8103 = fadd fast float %8099, -5.000000e-01
  %8104 = fadd fast float %8101, -5.000000e-01
  %8105 = fmul fast float %8103, 0xBFD5555560000000
  %8106 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8104, float %8105)  ; FMad(a,b,c)
  %8107 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8100, float 0.000000e+00)  ; FMad(a,b,c)
  %8108 = fadd fast float %8107, %8102
  %8109 = fmul fast float %8103, -7.500000e-01
  %8110 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8104, float %8109)  ; FMad(a,b,c)
  %8111 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8100, float 0.000000e+00)  ; FMad(a,b,c)
  %8112 = fadd fast float %8111, %8102
  %8113 = call float @dx.op.binary.f32(i32 35, float %8106, float -1.000000e+00)  ; FMax(a,b)
  %8114 = call float @dx.op.binary.f32(i32 35, float %8108, float -1.000000e+00)  ; FMax(a,b)
  %8115 = call float @dx.op.binary.f32(i32 35, float %8110, float -1.000000e+00)  ; FMax(a,b)
  %8116 = call float @dx.op.binary.f32(i32 35, float %8112, float -1.000000e+00)  ; FMax(a,b)
  %8117 = call float @dx.op.binary.f32(i32 36, float %8113, float 1.000000e+00)  ; FMin(a,b)
  %8118 = call float @dx.op.binary.f32(i32 36, float %8114, float 1.000000e+00)  ; FMin(a,b)
  %8119 = call float @dx.op.binary.f32(i32 36, float %8115, float 1.000000e+00)  ; FMin(a,b)
  %8120 = call float @dx.op.binary.f32(i32 36, float %8116, float 1.000000e+00)  ; FMin(a,b)
  %8121 = fcmp fast olt float %8117, 0x3FEFFF8020000000
  br i1 %8121, label %8122, label %8237, !dx.controlflow.hints !184

; <label>:8122                                    ; preds = %8089
  %8123 = extractvalue %dx.types.CBufRet.f32 %8005, 3
  %8124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8125 = extractvalue %dx.types.CBufRet.f32 %8124, 0
  %8126 = extractvalue %dx.types.CBufRet.f32 %8124, 1
  %8127 = extractvalue %dx.types.CBufRet.f32 %8124, 2
  %8128 = extractvalue %dx.types.CBufRet.f32 %8124, 3
  %8129 = fsub fast float %8125, %8117
  %8130 = fsub fast float %8126, %8118
  %8131 = fsub fast float %8127, %8119
  %8132 = fsub fast float %8128, %8120
  %8133 = fmul fast float %8129, %8123
  %8134 = fmul fast float %8130, %8123
  %8135 = fmul fast float %8131, %8123
  %8136 = fmul fast float %8132, %8123
  %8137 = fadd fast float %8133, %8117
  %8138 = fadd fast float %8134, %8118
  %8139 = fsub fast float -0.000000e+00, %8138
  %8140 = fadd fast float %8135, %8119
  %8141 = fadd fast float %8136, %8120
  %8142 = fmul fast float %8137, %8137
  %8143 = fsub fast float %8138, %8142
  %8144 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8143)  ; FMax(a,b)
  %8145 = fdiv fast float 1.000000e+00, %8144
  %8146 = fmul fast float %8138, %8137
  %8147 = fsub fast float %8140, %8146
  %8148 = fsub fast float %8097, %8137
  %8149 = fmul fast float %8097, %8097
  %8150 = fsub fast float %8149, %8138
  %8151 = fmul fast float %8148, %8145
  %8152 = fmul fast float %8151, %8147
  %8153 = fsub fast float %8150, %8152
  %8154 = fmul fast float %8138, %8138
  %8155 = fsub fast float %8141, %8154
  %8156 = fmul fast float %8147, %8147
  %8157 = fmul fast float %8156, %8145
  %8158 = fsub fast float %8155, %8157
  %8159 = fdiv fast float %8153, %8158
  %8160 = fmul fast float %8147, %8159
  %8161 = fsub fast float %8148, %8160
  %8162 = fmul fast float %8161, %8145
  %8163 = fmul fast float %8162, %8137
  %8164 = fsub fast float 1.000000e+00, %8163
  %8165 = fmul fast float %8138, %8159
  %8166 = fsub fast float %8164, %8165
  %8167 = fmul fast float %8162, %8162
  %8168 = fmul fast float %8159, 4.000000e+00
  %8169 = fmul fast float %8168, %8166
  %8170 = fsub fast float %8167, %8169
  %8171 = call float @dx.op.unary.f32(i32 24, float %8170)  ; Sqrt(value)
  %8172 = fcmp fast oge float %8162, 0.000000e+00
  %8173 = fsub fast float -0.000000e+00, %8171
  %8174 = select i1 %8172, float %8173, float %8171
  %8175 = fsub fast float %8174, %8162
  %8176 = fdiv fast float %8175, %8159
  %8177 = fdiv fast float %8166, %8175
  %8178 = fmul fast float %8176, 5.000000e-01
  %8179 = fmul fast float %8177, 2.000000e+00
  %8180 = select i1 %8172, float %8178, float %8179
  %8181 = select i1 %8172, float %8179, float %8178
  %8182 = call float @dx.op.binary.f32(i32 35, float %8180, float %8181)  ; FMax(a,b)
  %8183 = call float @dx.op.binary.f32(i32 36, float %8180, float %8181)  ; FMin(a,b)
  %8184 = fcmp fast ogt float %8097, %8183
  br i1 %8184, label %8185, label %8195

; <label>:8185                                    ; preds = %8122
  %8186 = fsub fast float %8097, %8183
  %8187 = fsub fast float %8182, %8183
  %8188 = fmul fast float %8186, %8187
  %8189 = fmul fast float %8182, %8097
  %8190 = fadd fast float %8182, %8097
  %8191 = fmul fast float %8190, %8137
  %8192 = fadd fast float %8189, %8138
  %8193 = fsub fast float %8192, %8191
  %8194 = fdiv fast float %8193, %8188
  br label %8195

; <label>:8195                                    ; preds = %8185, %8122
  %8196 = phi float [ %8194, %8185 ], [ 0.000000e+00, %8122 ]
  %8197 = fcmp fast ogt float %8097, %8182
  %8198 = fsub fast float %8097, %8182
  br i1 %8197, label %8199, label %8209

; <label>:8199                                    ; preds = %8195
  %8200 = fsub fast float %8182, %8183
  %8201 = fmul fast float %8200, %8198
  %8202 = fmul fast float %8183, %8097
  %8203 = fadd fast float %8183, %8097
  %8204 = fmul fast float %8203, %8137
  %8205 = fsub fast float %8139, %8202
  %8206 = fadd fast float %8205, %8204
  %8207 = fdiv fast float %8206, %8201
  %8208 = fadd fast float %8207, %8196
  br label %8209

; <label>:8209                                    ; preds = %8199, %8195
  %8210 = phi float [ %8208, %8199 ], [ %8196, %8195 ]
  %8211 = fsub fast float %8097, %8183
  %8212 = fmul fast float %8211, %8198
  %8213 = fmul fast float %8183, %8182
  %8214 = fadd fast float %8183, %8182
  %8215 = fmul fast float %8214, %8137
  %8216 = fadd fast float %8213, %8138
  %8217 = fsub fast float %8216, %8215
  %8218 = fdiv fast float %8217, %8212
  %8219 = call float @dx.op.unary.f32(i32 7, float %8210)  ; Saturate(value)
  %8220 = fcmp fast oeq float %6886, 0.000000e+00
  %8221 = extractvalue %dx.types.CBufRet.f32 %8005, 0
  %8222 = fcmp fast oeq float %8221, 0.000000e+00
  %8223 = or i1 %8220, %8222
  %8224 = fmul fast float %8221, 2.000000e+00
  %8225 = fadd fast float %8006, %8007
  %8226 = fdiv fast float %8225, %8224
  %8227 = call float @dx.op.unary.f32(i32 7, float %8226)  ; Saturate(value)
  %8228 = fmul fast float %8227, 2.000000e+00
  %8229 = fsub fast float 3.000000e+00, %8228
  %8230 = fmul fast float %8227, %8227
  %8231 = fmul fast float %8230, %8229
  %8232 = select i1 %8223, float 1.000000e+00, float %8231
  %8233 = fmul fast float %8218, %6886
  %8234 = fadd fast float %8219, %8233
  %8235 = call float @dx.op.unary.f32(i32 7, float %8234)  ; Saturate(value)
  %8236 = fmul fast float %8232, %8235
  br label %8237

; <label>:8237                                    ; preds = %8209, %8089
  %8238 = phi float [ %8236, %8209 ], [ 0.000000e+00, %8089 ]
  %8239 = fsub fast float 1.000000e+00, %8238
  %8240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %58, float %7959, float %7960, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8241 = extractvalue %dx.types.ResRet.f32 %8240, 0
  %8242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8243 = extractvalue %dx.types.CBufRet.i32 %8242, 2
  %8244 = icmp eq i32 %8243, 0
  br i1 %8244, label %8250, label %8245

; <label>:8245                                    ; preds = %8237
  %8246 = call float @dx.op.unary.f32(i32 7, float %8238)  ; Saturate(value)
  %8247 = fadd fast float %8241, -1.000000e+00
  %8248 = fmul fast float %8246, %8247
  %8249 = fadd fast float %8248, 1.000000e+00
  br label %8250

; <label>:8250                                    ; preds = %8245, %8237
  %8251 = phi float [ %8249, %8245 ], [ %8239, %8237 ]
  br i1 %8013, label %8252, label %8270

; <label>:8252                                    ; preds = %8250
  %8253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8254 = extractvalue %dx.types.CBufRet.f32 %8253, 1
  %8255 = fsub fast float %8090, %8254
  %8256 = call float @dx.op.unary.f32(i32 7, float %8255)  ; Saturate(value)
  %8257 = fsub fast float %8090, %8012
  %8258 = call float @dx.op.unary.f32(i32 7, float %8257)  ; Saturate(value)
  %8259 = fsub fast float %8256, %8258
  %8260 = fsub fast float %8092, %8258
  %8261 = fdiv fast float %8260, %8259
  %8262 = call float @dx.op.unary.f32(i32 7, float %8261)  ; Saturate(value)
  %8263 = fmul fast float %8262, 2.000000e+00
  %8264 = fsub fast float 3.000000e+00, %8263
  %8265 = fsub fast float %8241, %8251
  %8266 = fmul fast float %8262, %8262
  %8267 = fmul fast float %8266, %8265
  %8268 = fmul fast float %8267, %8264
  %8269 = fadd fast float %8268, %8251
  br label %8270

; <label>:8270                                    ; preds = %8252, %8250
  %8271 = phi float [ %8269, %8252 ], [ %8251, %8250 ]
  %8272 = call float @dx.op.binary.f32(i32 35, float %8241, float %8271)  ; FMax(a,b)
  %8273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8274 = extractvalue %dx.types.CBufRet.i32 %8273, 2
  %8275 = and i32 %8274, 1
  %8276 = icmp eq i32 %8275, 0
  %8277 = fcmp fast une float %8272, 1.000000e+00
  %8278 = and i1 %8277, %8276
  br i1 %8278, label %8279, label %8298

; <label>:8279                                    ; preds = %8270
  %8280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %58, float %7959, float %7960, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8281 = extractvalue %dx.types.ResRet.f32 %8280, 0
  %8282 = extractvalue %dx.types.ResRet.f32 %8280, 1
  %8283 = extractvalue %dx.types.ResRet.f32 %8280, 2
  %8284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8285 = extractvalue %dx.types.CBufRet.f32 %8284, 1
  %8286 = fmul fast float %8285, %8281
  %8287 = fmul fast float %8285, %8282
  %8288 = fmul fast float %8285, %8283
  %8289 = fcmp fast ogt float %8241, 0x3FEFFF2E40000000
  %8290 = fsub fast float 1.000000e+00, %8272
  %8291 = fsub fast float 1.000000e+00, %8241
  %8292 = fdiv fast float %8290, %8291
  %8293 = call float @dx.op.unary.f32(i32 7, float %8292)  ; Saturate(value)
  %8294 = select i1 %8289, float 0.000000e+00, float %8293
  %8295 = fmul fast float %8286, %8294
  %8296 = fmul fast float %8287, %8294
  %8297 = fmul fast float %8288, %8294
  br label %8298

; <label>:8298                                    ; preds = %8279, %8270
  %8299 = phi float [ 0.000000e+00, %8270 ], [ %8295, %8279 ]
  %8300 = phi float [ 0.000000e+00, %8270 ], [ %8296, %8279 ]
  %8301 = phi float [ 0.000000e+00, %8270 ], [ %8297, %8279 ]
  %8302 = fmul fast float %8299, %6870
  %8303 = fmul fast float %8300, %6872
  %8304 = fmul fast float %8301, %6874
  %8305 = fmul fast float %8272, %7934
  %8306 = call float @dx.op.dot3.f32(i32 55, float %8272, float %8272, float %8272, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8307 = call float @dx.op.dot3.f32(i32 55, float %8302, float %8303, float %8304, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8308 = select i1 %234, float %8306, float %8272
  %8309 = select i1 %234, float 1.000000e+00, float %8272
  %8310 = select i1 %234, float %8307, float %8302
  %8311 = select i1 %234, float 0.000000e+00, float %8303
  %8312 = select i1 %234, float 0.000000e+00, float %8304
  %8313 = fmul fast float %8308, %7946
  %8314 = fmul fast float %8308, %7947
  %8315 = fmul fast float %8309, %7948
  %8316 = fadd fast float %8313, %8310
  %8317 = fadd fast float %8314, %8311
  %8318 = fadd fast float %8312, %8315
  %8319 = fmul fast float %8308, %7949
  %8320 = fmul fast float %8308, %7950
  %8321 = fmul fast float %8309, %7951
  br label %8322

; <label>:8322                                    ; preds = %8298, %7955, %7924, %7156
  %8323 = phi float [ %7161, %7156 ], [ %7946, %7924 ], [ %8316, %8298 ], [ %7946, %7955 ]
  %8324 = phi float [ %7162, %7156 ], [ %7947, %7924 ], [ %8317, %8298 ], [ %7947, %7955 ]
  %8325 = phi float [ %7163, %7156 ], [ %7948, %7924 ], [ %8318, %8298 ], [ %7948, %7955 ]
  %8326 = phi float [ %7164, %7156 ], [ %7949, %7924 ], [ %8319, %8298 ], [ %7949, %7955 ]
  %8327 = phi float [ %7165, %7156 ], [ %7950, %7924 ], [ %8320, %8298 ], [ %7950, %7955 ]
  %8328 = phi float [ %7166, %7156 ], [ %7951, %7924 ], [ %8321, %8298 ], [ %7951, %7955 ]
  %8329 = phi float [ %7167, %7156 ], [ %7934, %7924 ], [ %8305, %8298 ], [ %7934, %7955 ]
  %8330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8331 = extractvalue %dx.types.CBufRet.f32 %8330, 2
  %8332 = extractvalue %dx.types.CBufRet.f32 %8330, 3
  %8333 = fmul fast float %8331, %96
  %8334 = fmul fast float %8332, %97
  %8335 = call float @dx.op.unary.f32(i32 7, float %8333)  ; Saturate(value)
  %8336 = call float @dx.op.unary.f32(i32 7, float %8334)  ; Saturate(value)
  %8337 = select i1 %6896, i32 2, i32 0
  %8338 = or i32 %8337, 1
  %8339 = uitofp i32 %8338 to float
  %8340 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %8335, float %8336, float %8339, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8341 = extractvalue %dx.types.ResRet.f32 %8340, 0
  %8342 = extractvalue %dx.types.ResRet.f32 %8340, 1
  %8343 = extractvalue %dx.types.ResRet.f32 %8340, 2
  %8344 = extractvalue %dx.types.ResRet.f32 %8340, 3
  %8345 = add nuw nsw i32 %8337, 2
  %8346 = uitofp i32 %8345 to float
  %8347 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %8335, float %8336, float %8346, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8348 = extractvalue %dx.types.ResRet.f32 %8347, 0
  %8349 = extractvalue %dx.types.ResRet.f32 %8347, 1
  %8350 = extractvalue %dx.types.ResRet.f32 %8347, 2
  %8351 = extractvalue %dx.types.ResRet.f32 %8347, 3
  %8352 = call float @dx.op.binary.f32(i32 35, float %8342, float %8343)  ; FMax(a,b)
  %8353 = call float @dx.op.binary.f32(i32 35, float %8341, float %8352)  ; FMax(a,b)
  %8354 = call float @dx.op.binary.f32(i32 35, float %8353, float %8344)  ; FMax(a,b)
  %8355 = call float @dx.op.binary.f32(i32 36, float %8349, float %8350)  ; FMin(a,b)
  %8356 = call float @dx.op.binary.f32(i32 36, float %8348, float %8355)  ; FMin(a,b)
  %8357 = call float @dx.op.binary.f32(i32 36, float %8356, float %8351)  ; FMin(a,b)
  %8358 = fmul fast float %8354, 2.550000e+02
  %8359 = fadd fast float %8358, 0x3F70101020000000
  %8360 = fptoui float %8359 to i32
  %8361 = fmul fast float %8357, 2.550000e+02
  %8362 = fadd fast float %8361, 0x3F70101020000000
  %8363 = fptoui float %8362 to i32
  %8364 = icmp ult i32 %8360, %8363
  br i1 %8364, label %8365, label %8534

; <label>:8365                                    ; preds = %8322
  %8366 = fcmp fast ogt float %86, 9.843750e-01
  %8367 = fadd fast float %7160, -4.000000e+00
  %8368 = select i1 %8366, float -4.000000e+00, float %8367
  %8369 = call float @dx.op.binary.f32(i32 35, float %8368, float 0.000000e+00)  ; FMax(a,b)
  %8370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8371 = extractvalue %dx.types.CBufRet.f32 %8370, 0
  %8372 = fadd fast float %8371, %8369
  %8373 = extractvalue %dx.types.CBufRet.f32 %8370, 2
  %8374 = fmul fast float %8372, %8373
  %8375 = call float @dx.op.unary.f32(i32 23, float %8374)  ; Log(value)
  %8376 = extractvalue %dx.types.CBufRet.f32 %8370, 3
  %8377 = fmul fast float %8376, %8375
  %8378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8379 = extractvalue %dx.types.CBufRet.f32 %8378, 2
  %8380 = fmul fast float %8377, %8379
  %8381 = call float @dx.op.unary.f32(i32 7, float %8380)  ; Saturate(value)
  %8382 = uitofp i32 %8360 to float
  %8383 = uitofp i32 %8363 to float
  %8384 = fadd fast float %8382, 5.000000e-01
  %8385 = fadd fast float %8383, 5.000000e-01
  %8386 = fmul fast float %8379, %8384
  %8387 = fmul fast float %8379, %8385
  %8388 = fadd fast float %8386, 0x3F0FFB4800000000
  %8389 = fadd fast float %8387, 0xBF0FFB4800000000
  %8390 = call float @dx.op.binary.f32(i32 35, float %8381, float %8388)  ; FMax(a,b)
  %8391 = call float @dx.op.binary.f32(i32 36, float %8390, float %8389)  ; FMin(a,b)
  %8392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8393 = extractvalue %dx.types.CBufRet.f32 %8392, 1
  %8394 = extractvalue %dx.types.CBufRet.f32 %8392, 2
  %8395 = extractvalue %dx.types.CBufRet.f32 %8392, 0
  %8396 = select i1 %6896, float %8395, float 0.000000e+00
  %8397 = fmul fast float %8393, %8391
  %8398 = fadd fast float %8396, %8397
  %8399 = fadd fast float %8396, %8394
  %8400 = fsub fast float %8393, %8394
  %8401 = fadd fast float %8400, %8396
  %8402 = call float @dx.op.binary.f32(i32 35, float %8398, float %8399)  ; FMax(a,b)
  %8403 = call float @dx.op.binary.f32(i32 36, float %8402, float %8401)  ; FMin(a,b)
  %8404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %8335, float %8336, float %8403, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8405 = extractvalue %dx.types.ResRet.f32 %8404, 0
  %8406 = extractvalue %dx.types.ResRet.f32 %8404, 1
  %8407 = extractvalue %dx.types.ResRet.f32 %8404, 2
  %8408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8409 = extractvalue %dx.types.CBufRet.i32 %8408, 0
  %8410 = extractvalue %dx.types.CBufRet.i32 %8408, 1
  %8411 = uitofp i32 %8409 to float
  %8412 = uitofp i32 %8410 to float
  %8413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8414 = extractvalue %dx.types.CBufRet.f32 %8413, 0
  %8415 = extractvalue %dx.types.CBufRet.f32 %8413, 1
  %8416 = fmul fast float %8411, %8335
  %8417 = fmul fast float %8412, %8336
  %8418 = fadd fast float %8416, -5.000000e-01
  %8419 = fadd fast float %8417, -5.000000e-01
  %8420 = call float @dx.op.unary.f32(i32 22, float %8418)  ; Frc(value)
  %8421 = call float @dx.op.unary.f32(i32 22, float %8419)  ; Frc(value)
  %8422 = fmul fast float %8420, %8420
  %8423 = fmul fast float %8422, %8420
  %8424 = fsub fast float 3.000000e+00, %8420
  %8425 = fmul fast float %8422, %8424
  %8426 = fmul fast float %8420, 3.000000e+00
  %8427 = fmul fast float %8423, 3.000000e+00
  %8428 = fmul fast float %8422, 6.000000e+00
  %8429 = fsub fast float %8427, %8428
  %8430 = fadd fast float %8429, 4.000000e+00
  %8431 = fmul fast float %8430, 0x3FC5555560000000
  %8432 = fmul fast float %8423, -3.000000e+00
  %8433 = fadd fast float %8422, %8420
  %8434 = fmul fast float %8433, 3.000000e+00
  %8435 = fadd fast float %8432, 1.000000e+00
  %8436 = fadd fast float %8435, %8434
  %8437 = fmul fast float %8423, 0x3FC5555560000000
  %8438 = fmul fast float %8421, %8421
  %8439 = fmul fast float %8438, %8421
  %8440 = fsub fast float 3.000000e+00, %8421
  %8441 = fmul fast float %8438, %8440
  %8442 = fmul fast float %8421, 3.000000e+00
  %8443 = fmul fast float %8439, 3.000000e+00
  %8444 = fmul fast float %8438, 6.000000e+00
  %8445 = fsub fast float %8443, %8444
  %8446 = fadd fast float %8445, 4.000000e+00
  %8447 = fmul fast float %8446, 0x3FC5555560000000
  %8448 = fmul fast float %8439, -3.000000e+00
  %8449 = fadd fast float %8438, %8421
  %8450 = fmul fast float %8449, 3.000000e+00
  %8451 = fadd fast float %8448, 1.000000e+00
  %8452 = fadd fast float %8451, %8450
  %8453 = fmul fast float %8439, 0x3FC5555560000000
  %8454 = fadd fast float %8420, 1.000000e+00
  %8455 = fsub fast float 1.000000e+00, %8426
  %8456 = fadd fast float %8455, %8425
  %8457 = fadd fast float %8456, %8430
  %8458 = fmul fast float %8457, 0x3FC5555560000000
  %8459 = fdiv fast float %8431, %8458
  %8460 = fsub fast float %8454, %8459
  %8461 = fsub fast float 1.000000e+00, %8420
  %8462 = fadd fast float %8436, %8423
  %8463 = fmul fast float %8462, 0x3FC5555560000000
  %8464 = fdiv fast float %8437, %8463
  %8465 = fadd fast float %8461, %8464
  %8466 = fadd fast float %8421, 1.000000e+00
  %8467 = fsub fast float 1.000000e+00, %8442
  %8468 = fadd fast float %8467, %8441
  %8469 = fadd fast float %8468, %8446
  %8470 = fmul fast float %8469, 0x3FC5555560000000
  %8471 = fdiv fast float %8447, %8470
  %8472 = fsub fast float %8466, %8471
  %8473 = fsub fast float 1.000000e+00, %8421
  %8474 = fadd fast float %8452, %8439
  %8475 = fmul fast float %8474, 0x3FC5555560000000
  %8476 = fdiv fast float %8453, %8475
  %8477 = fadd fast float %8476, %8473
  %8478 = fmul fast float %8460, %8414
  %8479 = fsub fast float %8335, %8478
  %8480 = fmul fast float %8465, %8414
  %8481 = fadd fast float %8480, %8335
  %8482 = fmul fast float %8477, %8415
  %8483 = fadd fast float %8482, %8336
  %8484 = fmul fast float %8472, %8415
  %8485 = fsub fast float %8336, %8484
  %8486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %8479, float %8485, float %8403, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8487 = extractvalue %dx.types.ResRet.f32 %8486, 0
  %8488 = extractvalue %dx.types.ResRet.f32 %8486, 1
  %8489 = extractvalue %dx.types.ResRet.f32 %8486, 2
  %8490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %8481, float %8485, float %8403, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8491 = extractvalue %dx.types.ResRet.f32 %8490, 0
  %8492 = extractvalue %dx.types.ResRet.f32 %8490, 1
  %8493 = extractvalue %dx.types.ResRet.f32 %8490, 2
  %8494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %8479, float %8483, float %8403, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8495 = extractvalue %dx.types.ResRet.f32 %8494, 0
  %8496 = extractvalue %dx.types.ResRet.f32 %8494, 1
  %8497 = extractvalue %dx.types.ResRet.f32 %8494, 2
  %8498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %8481, float %8483, float %8403, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8499 = extractvalue %dx.types.ResRet.f32 %8498, 0
  %8500 = extractvalue %dx.types.ResRet.f32 %8498, 1
  %8501 = extractvalue %dx.types.ResRet.f32 %8498, 2
  %8502 = fsub fast float %8495, %8487
  %8503 = fsub fast float %8496, %8488
  %8504 = fsub fast float %8497, %8489
  %8505 = fmul fast float %8502, %8475
  %8506 = fmul fast float %8503, %8475
  %8507 = fmul fast float %8504, %8475
  %8508 = fadd fast float %8505, %8487
  %8509 = fadd fast float %8506, %8488
  %8510 = fadd fast float %8507, %8489
  %8511 = fsub fast float %8499, %8491
  %8512 = fsub fast float %8500, %8492
  %8513 = fsub fast float %8501, %8493
  %8514 = fmul fast float %8511, %8475
  %8515 = fmul fast float %8512, %8475
  %8516 = fmul fast float %8513, %8475
  %8517 = fsub fast float %8491, %8508
  %8518 = fadd fast float %8517, %8514
  %8519 = fsub fast float %8492, %8509
  %8520 = fadd fast float %8519, %8515
  %8521 = fsub fast float %8493, %8510
  %8522 = fadd fast float %8521, %8516
  %8523 = fmul fast float %8518, %8463
  %8524 = fmul fast float %8520, %8463
  %8525 = fmul fast float %8522, %8463
  %8526 = fadd fast float %8523, %8508
  %8527 = fadd fast float %8524, %8509
  %8528 = fadd fast float %8525, %8510
  %8529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8530 = extractvalue %dx.types.CBufRet.f32 %8529, 1
  %8531 = fmul fast float %8526, %8530
  %8532 = fmul fast float %8527, %8530
  %8533 = fmul fast float %8528, %8530
  br label %8534

; <label>:8534                                    ; preds = %8365, %8322
  %8535 = phi float [ %8405, %8365 ], [ 1.000000e+00, %8322 ]
  %8536 = phi float [ %8406, %8365 ], [ 1.000000e+00, %8322 ]
  %8537 = phi float [ %8407, %8365 ], [ 1.000000e+00, %8322 ]
  %8538 = phi float [ %8531, %8365 ], [ 0.000000e+00, %8322 ]
  %8539 = phi float [ %8532, %8365 ], [ 0.000000e+00, %8322 ]
  %8540 = phi float [ %8533, %8365 ], [ 0.000000e+00, %8322 ]
  %8541 = fmul fast float %8538, %6870
  %8542 = fmul fast float %8539, %6872
  %8543 = fmul fast float %8540, %6874
  %8544 = fmul fast float %8535, %8329
  %8545 = call float @dx.op.dot3.f32(i32 55, float %8535, float %8536, float %8537, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8546 = call float @dx.op.dot3.f32(i32 55, float %8541, float %8542, float %8543, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8547 = select i1 %234, float %8545, float %8535
  %8548 = select i1 %234, float %8545, float %8536
  %8549 = select i1 %234, float 1.000000e+00, float %8537
  %8550 = select i1 %234, float %8546, float %8541
  %8551 = select i1 %234, float 0.000000e+00, float %8542
  %8552 = select i1 %234, float 0.000000e+00, float %8543
  %8553 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8554 = extractvalue %dx.types.CBufRet.i32 %8553, 3
  %8555 = and i32 %8554, 3
  %8556 = icmp ne i32 %8555, 0
  %8557 = and i32 %8554, 4
  %8558 = icmp ne i32 %8557, 0
  %8559 = and i1 %8556, %8558
  %8560 = and i1 %234, %8559
  br i1 %8560, label %8561, label %8567

; <label>:8561                                    ; preds = %8534
  %8562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8563 = extractvalue %dx.types.CBufRet.f32 %8562, 1
  %8564 = fadd fast float %8544, -1.000000e+00
  %8565 = fmul fast float %8563, %8564
  %8566 = fadd fast float %8565, 1.000000e+00
  br label %8567

; <label>:8567                                    ; preds = %8561, %8534
  %8568 = phi float [ %8566, %8561 ], [ %8544, %8534 ]
  %8569 = fadd fast float %8326, %8323
  %8570 = fmul fast float %8547, %8569
  %8571 = fadd fast float %8570, %8550
  %8572 = fadd fast float %8327, %8324
  %8573 = fmul fast float %8548, %8572
  %8574 = fadd fast float %8573, %8551
  %8575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8576 = extractvalue %dx.types.CBufRet.f32 %8575, 0
  br i1 %234, label %8577, label %8592

; <label>:8577                                    ; preds = %8567
  %8578 = fadd fast float %8571, %8574
  %8579 = fmul fast float %8576, %8578
  %8580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8581 = extractvalue %dx.types.CBufRet.f32 %8580, 3
  %8582 = extractvalue %dx.types.CBufRet.f32 %6878, 1
  %8583 = fsub fast float %6883, %6877
  %8584 = fadd fast float %8583, %6884
  %8585 = fsub fast float %8584, %8582
  %8586 = extractvalue %dx.types.CBufRet.f32 %6878, 2
  %8587 = fmul fast float %8585, %8586
  %8588 = call float @dx.op.unary.f32(i32 7, float %8587)  ; Saturate(value)
  %8589 = fsub fast float %8588, %8581
  %8590 = fmul fast float %8589, %8568
  %8591 = fadd fast float %8590, %8581
  br label %8618

; <label>:8592                                    ; preds = %8567
  %8593 = fadd fast float %8328, %8325
  %8594 = fmul fast float %8549, %8593
  %8595 = fadd fast float %8594, %8552
  %8596 = fmul fast float %8576, %8571
  %8597 = fmul fast float %8576, %8574
  %8598 = fmul fast float %8576, %8595
  %8599 = call float @dx.op.binary.f32(i32 35, float %8597, float %8598)  ; FMax(a,b)
  %8600 = call float @dx.op.binary.f32(i32 35, float %8596, float %8599)  ; FMax(a,b)
  %8601 = call float @dx.op.binary.f32(i32 35, float %6872, float %6874)  ; FMax(a,b)
  %8602 = call float @dx.op.binary.f32(i32 35, float %6870, float %8601)  ; FMax(a,b)
  %8603 = call float @dx.op.binary.f32(i32 35, float %8600, float %8602)  ; FMax(a,b)
  %8604 = fcmp fast ugt float %8603, 0x3F10000000000000
  br i1 %8604, label %8606, label %8605

; <label>:8605                                    ; preds = %8592
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8606

; <label>:8606                                    ; preds = %8605, %8592
  %8607 = add i32 %65, 196
  %8608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %8607, i32 undef)  ; BufferLoad(srv,index,wot)
  %8609 = extractvalue %dx.types.ResRet.i32 %8608, 0
  %8610 = and i32 %8609, 32
  %8611 = icmp eq i32 %8610, 0
  br i1 %8611, label %8618, label %8612

; <label>:8612                                    ; preds = %8606
  %8613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8614 = extractvalue %dx.types.CBufRet.f32 %8613, 0
  %8615 = fmul fast float %8614, 0x3FE99999A0000000
  %8616 = fadd fast float %8614, %8596
  %8617 = fadd fast float %8615, %8598
  br label %8618

; <label>:8618                                    ; preds = %8612, %8606, %8577
  %8619 = phi float [ 1.000000e+00, %8577 ], [ %6872, %8612 ], [ %6872, %8606 ]
  %8620 = phi float [ 1.000000e+00, %8577 ], [ %6874, %8612 ], [ %6874, %8606 ]
  %8621 = phi float [ %8579, %8577 ], [ %8616, %8612 ], [ %8596, %8606 ]
  %8622 = phi float [ %8591, %8577 ], [ %8597, %8612 ], [ %8597, %8606 ]
  %8623 = phi float [ 1.000000e+00, %8577 ], [ %8617, %8612 ], [ %8598, %8606 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8624 = call float @dx.op.binary.f32(i32 36, float %8621, float 3.225500e+04)  ; FMin(a,b)
  %8625 = call float @dx.op.binary.f32(i32 36, float %8622, float 3.225500e+04)  ; FMin(a,b)
  %8626 = call float @dx.op.binary.f32(i32 36, float %8623, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8624)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8625)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8626)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8627 = call float @dx.op.binary.f32(i32 36, float %6870, float 3.225500e+04)  ; FMin(a,b)
  %8628 = call float @dx.op.binary.f32(i32 36, float %8619, float 3.225500e+04)  ; FMin(a,b)
  %8629 = call float @dx.op.binary.f32(i32 36, float %8620, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8627)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8628)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8629)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!78 = !{[28 x i32] [i32 26, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 7, i32 7, i32 7, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119]}
!79 = !{void ()* @ps_main, !"ps_main", !80, !4, !99}
!80 = !{!81, !96, null}
!81 = !{!82, !85, !86, !88, !89, !90, !92, !94, !95}
!82 = !{i32 0, !"SV_Position", i8 9, i8 3, !83, i8 4, i32 1, i8 4, i32 0, i8 0, !84}
!83 = !{i32 0}
!84 = !{i32 3, i32 15}
!85 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !83, i8 2, i32 1, i8 4, i32 1, i8 0, !84}
!86 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !83, i8 2, i32 1, i8 3, i32 2, i8 0, !87}
!87 = !{i32 3, i32 7}
!88 = !{i32 3, !"NORMAL", i8 9, i8 0, !83, i8 2, i32 1, i8 3, i32 3, i8 0, !87}
!89 = !{i32 4, !"TANGENT", i8 9, i8 0, !83, i8 2, i32 1, i8 4, i32 4, i8 0, !84}
!90 = !{i32 5, !"NORMAL_TRANSFORM", i8 9, i8 0, !91, i8 2, i32 1, i8 4, i32 5, i8 0, !84}
!91 = !{i32 1}
!92 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !83, i8 1, i32 1, i8 1, i32 6, i8 0, !93}
!93 = !{i32 3, i32 1}
!94 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !83, i8 1, i32 1, i8 1, i32 6, i8 1, !93}
!95 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !83, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!96 = !{!97, !98}
!97 = !{i32 0, !"SV_Target", i8 9, i8 16, !83, i8 0, i32 1, i8 4, i32 0, i8 0, !84}
!98 = !{i32 1, !"SV_Target", i8 9, i8 16, !91, i8 0, i32 1, i8 4, i32 1, i8 0, !84}
!99 = !{i32 0, i64 16}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
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
!112 = !{!113, !113, i64 0}
!113 = !{!"int", !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !{!117, !119, !121, !123}
!117 = distinct !{!117, !118, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!118 = distinct !{!118, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!119 = distinct !{!119, !120, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!120 = distinct !{!120, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!121 = distinct !{!121, !122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!122 = distinct !{!122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!123 = distinct !{!123, !124, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!124 = distinct !{!124, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
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
!136 = !{!137, !137, i64 0}
!137 = !{!"float", !114, i64 0}
!138 = !{!139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!139 = distinct !{!139, !140, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!140 = distinct !{!140, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!141 = distinct !{!141, !142, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!142 = distinct !{!142, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!143 = distinct !{!143, !142, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!144 = distinct !{!144, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!145 = distinct !{!145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!146 = distinct !{!146, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!147 = distinct !{!147, !145, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!148 = distinct !{!148, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!149 = distinct !{!149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!150 = distinct !{!150, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!151 = distinct !{!151, !149, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!152 = distinct !{!152, !153, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!153 = distinct !{!153, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"\01?sort@@YAXAIAM00@Z: %c"}
!156 = distinct !{!156, !"\01?sort@@YAXAIAM00@Z"}
!157 = !{!158, !159, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!158 = distinct !{!158, !156, !"\01?sort@@YAXAIAM00@Z: %a"}
!159 = distinct !{!159, !156, !"\01?sort@@YAXAIAM00@Z: %b"}
!160 = !{!159}
!161 = !{!158, !155, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!162 = !{!158}
!163 = !{!159, !155, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!164 = !{!165}
!165 = distinct !{!165, !166, !"\01?sort@@YAXAIAM00@Z: %c"}
!166 = distinct !{!166, !"\01?sort@@YAXAIAM00@Z"}
!167 = !{!168, !169, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!168 = distinct !{!168, !166, !"\01?sort@@YAXAIAM00@Z: %a"}
!169 = distinct !{!169, !166, !"\01?sort@@YAXAIAM00@Z: %b"}
!170 = !{!169}
!171 = !{!168, !165, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!172 = !{!168}
!173 = !{!169, !165, !139, !141, !143, !144, !146, !147, !148, !150, !151, !152}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 2}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}

